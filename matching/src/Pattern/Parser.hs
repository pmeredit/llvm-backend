{-# LANGUAGE GADTs      #-}
{-# LANGUAGE LambdaCase #-}
module Pattern.Parser where

import           Data.Functor.Foldable      (Fix (..), para)
import           Data.Map                   (Map, findWithDefault, insert, assocs)
import qualified Data.Map                   as Map (empty)
import           Data.Maybe                 (catMaybes)

import           Data.Functor.Impredicative (Rotate31 (..))
import           Kore.AST.Common            (And (..), Application (..),
                                             Ceil (..), Equals (..),
                                             Exists (..), Floor (..),
                                             Forall (..), Iff (..),
                                             Implies (..), In (..), Next (..),
                                             Not (..), Or (..), Pattern (..),
                                             Rewrites (..), Symbol (..), SymbolOrAlias (..),
                                             Id (..),
                                             Variable)
import           Kore.AST.Kore              (CommonKorePattern,
                                             UnifiedPattern (..), UnifiedSort,
                                             UnifiedSortVariable)
import           Kore.AST.MetaOrObject      (Meta (..), Object (..),
                                             Unified (..),
                                             asUnified)
import           Kore.AST.Sentence          (Definition (..), KoreDefinition,
                                             Module (..), Sentence (..),
                                             SentenceAxiom (..),
                                             SentenceSymbol (..),
                                             UnifiedSentence,
                                             Attributes (..),
                                             applyUnifiedSentence)
import           Kore.Parser.Parser         (fromKore)

--[ Metadata ]--

data SymLib = SymLib
  { symCs :: Map (Unified Symbol) ([UnifiedSort], UnifiedSort, Attributes)
  , symSt :: Map UnifiedSort [(Unified Symbol)]
  } deriving (Show, Eq)

parseSymbolSentence :: UnifiedSentence UnifiedSortVariable UnifiedPattern Variable
                    -> Maybe (Unified Symbol, ([UnifiedSort], UnifiedSort, Attributes))
parseSymbolSentence = applyUnifiedSentence metaT objectT
  where
    metaT   = \case
      SentenceSymbolSentence s ->
        Just (asUnified $ sentenceSymbolSymbol s,
              (asUnified <$> sentenceSymbolSorts s,
               asUnified $ sentenceSymbolResultSort s,
         sentenceSymbolAttributes s))
      _ -> Nothing
    objectT = \case
      SentenceSymbolSentence s ->
        Just (asUnified $ sentenceSymbolSymbol s,
              (asUnified <$> sentenceSymbolSorts s,
               asUnified $ sentenceSymbolResultSort s,
         sentenceSymbolAttributes s))
      _ -> Nothing

mkSymLib :: [(Unified Symbol, ([UnifiedSort], UnifiedSort, Attributes))]
         -> SymLib
mkSymLib = foldl go (SymLib Map.empty Map.empty)
  where
    go (SymLib dIx rIx) (symbol, (args, result, attrs)) =
      SymLib { symCs = insert symbol (args, result, attrs) dIx
             , symSt = insert result (symbol : (findWithDefault [] result rIx)) rIx
             }

parseSymbols :: KoreDefinition -> SymLib
parseSymbols koreDefinition =
  let modules   = definitionModules koreDefinition
      sentences = mconcat (moduleSentences <$> modules)
      symbols   = catMaybes (parseSymbolSentence <$> sentences)
  in mkSymLib symbols

--[ Patterns ]--

parseAxiomSentence :: UnifiedSentence UnifiedSortVariable UnifiedPattern Variable
                   -> [Rewrites Object (Fix (UnifiedPattern Variable))]
parseAxiomSentence = applyUnifiedSentence metaT (const [])
  where
    metaT :: Sentence Meta UnifiedSortVariable UnifiedPattern Variable
          -> [Rewrites Object (Fix (UnifiedPattern Variable))]
    metaT = \case
      SentenceAxiomSentence s ->
        findRewrites (sentenceAxiomPattern s)
      _ -> []

unifiedPatternRAlgebra :: (Pattern Meta variable (CommonKorePattern, b) -> b)
                       -> (Pattern Object variable (CommonKorePattern, b) -> b)
                       -> (UnifiedPattern variable (CommonKorePattern, b) -> b)
unifiedPatternRAlgebra metaT _ (UnifiedPattern (UnifiedMeta meta)) =
  metaT (unRotate31 meta)
unifiedPatternRAlgebra _ objectT (UnifiedPattern (UnifiedObject object)) =
  objectT (unRotate31 object)

findRewrites :: CommonKorePattern
             -> [Rewrites Object CommonKorePattern]
findRewrites = para (unifiedPatternRAlgebra rAlgebra rAlgebra)
  where
    rAlgebra :: Pattern lvl Variable (CommonKorePattern,
                                      [Rewrites Object CommonKorePattern])
             -> [Rewrites Object CommonKorePattern]
    rAlgebra (RewritesPattern (Rewrites sort (first, _) (second, _))) =
      [Rewrites sort first second]
    rAlgebra (AndPattern (And _ (_, p₀) (_, p₁)))         = p₀ ++ p₁
    rAlgebra (ApplicationPattern (Application _ ps))      = mconcat $ map snd ps
    rAlgebra (CeilPattern (Ceil _ _ (_, p)))              = p
    rAlgebra (EqualsPattern (Equals _ _ (_, p₀) (_, p₁))) = p₀ ++ p₁
    rAlgebra (ExistsPattern (Exists _ _ (_, p)))          = p
    rAlgebra (FloorPattern (Floor _ _ (_, p)))            = p
    rAlgebra (ForallPattern (Forall _ _ (_, p)))          = p
    rAlgebra (IffPattern (Iff _ (_, p₀) (_, p₁)))         = p₀ ++ p₁
    rAlgebra (ImpliesPattern (Implies _ (_, p₀) (_, p₁))) = p₀ ++ p₁
    rAlgebra (InPattern (In _ _ (_, p₀) (_, p₁)))         = p₀ ++ p₁
    rAlgebra (NextPattern (Next _ (_, p)))                = p
    rAlgebra (NotPattern (Not _ (_, p)))                  = p
    rAlgebra (OrPattern (Or _ (_, p₀) (_, p₁)))           = p₀ ++ p₁
    rAlgebra _                                            = []


-- Return True if this CommonKorePattern represents a function attribute.
isFunction :: CommonKorePattern
           -> Bool
isFunction = para (unifiedPatternRAlgebra rAlgebra rAlgebra)
  where
    rAlgebra :: Pattern lvl Variable (CommonKorePattern, Bool)
             -> Bool
    rAlgebra (ApplicationPattern (Application (SymbolOrAlias (Id "function" _) _) _)) = True
    rAlgebra _ = False

parseRewrites :: KoreDefinition -> [Rewrites Object CommonKorePattern]
parseRewrites koreDefinition =
  let modules   = definitionModules koreDefinition
      sentences = mconcat (moduleSentences <$> modules)
  in mconcat (parseAxiomSentence <$> sentences)

parseDefinition :: FilePath -> IO KoreDefinition
parseDefinition fileName = do
  contents  <- readFile fileName
  let result = fromKore fileName contents
  case result of
    Left err         -> error err
    Right definition -> return definition

-- Return the function symbol and whether or not the symbol is actually a function.
getPossibleFunction :: (Unified Symbol, ([UnifiedSort], UnifiedSort, Attributes)) -> (Unified Symbol, Bool)
getPossibleFunction (k, (_,_,attrs)) =  (k, any (\x -> x) $ fmap isFunction $ getAttributes attrs)

-- Return the list of symbols that are actually functions.
getFunctions :: Map (Unified Symbol) ([UnifiedSort], UnifiedSort, Attributes)
    -> [Unified Symbol]

getFunctions = (fmap (\(sym, _) -> sym)) . (filter (\(_, isFun) -> isFun)) . (fmap getPossibleFunction) . assocs

-- useful for testing definitions in ghci that are loaded from a file.
driver :: FilePath -> IO ()
driver fileName = do
  contents  <- readFile fileName
  let result = fromKore fileName contents
  case result of
    Left _         -> putStrLn "ERROR"
    Right definition -> putStrLn $ show $ getFunctions $ symCs $ parseSymbols definition
