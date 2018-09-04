{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE InstanceSigs      #-}

module Main where

import           Data.Functor.Foldable (Fix (..))
import           Data.List             (transpose)
import           Data.Proxy            (Proxy (..))


import           Pattern               hiding (getMetadata)
import           Pattern.Class

import           Kore.Parser.Parser (koreParser)
import           Kore.Parser.ParserUtils (parseOnly)
import           System.Environment (getArgs)

import qualified Data.ByteString.Char8 as S

data Lst  = Cns Lst -- index 1
          | Nil     -- index 0
          | Wld     -- wildcard
          deriving (Show, Eq)

cNil :: Index
cNil = 0

cCons :: Index
cCons = 1

instance IsPattern Lst where
  toPattern :: Lst -> Fix Pattern
  toPattern (Cns l) = Fix (Pattern cCons [Fix Wildcard, toPattern l])
  toPattern Nil     = Fix (Pattern cNil  [])
  toPattern Wld     = Fix Wildcard

instance HasMetadata Lst where
  getMetadata :: Proxy Lst -> Metadata
  getMetadata _ = Metadata
                    [ Metadata [] -- Nil
                    , Metadata [ Metadata []
                               , getMetadata (Proxy :: Proxy Lst)
                               ] -- Cns Lst (1)
                    ]

mkLstPattern :: [[Lst]] -> ClauseMatrix
mkLstPattern ls =
  let as = take (length ls) [1..]
      md = getMetadata (Proxy :: Proxy Lst)
      cs = fmap (Column md . (toPattern <$>)) (transpose ls)
  in case mkClauseMatrix cs as of
       Right matrix -> matrix
       Left  msg    -> error $ "Invalid definition: " ++ show msg

defaultPattern :: ClauseMatrix
defaultPattern =
  mkLstPattern [ [Nil, Wld]
               , [Wld, Nil]
               , [Wld, Wld] ]

appendPattern :: ClauseMatrix
appendPattern =
  mkLstPattern [ [Nil, Wld]
               , [Wld, Nil]
               , [Cns Wld, Cns Wld] ]

--main :: IO ()
--main = let out = compilePattern appendPattern in 
--    do putStrLn$ show out 
--       putStrLn ""  
--       S.putStrLn $ serializeToYaml $ out


main :: IO ()
main = do
    (fileName:_) <- getArgs
    contents <- readFile fileName
    print (parseOnly koreParser fileName contents)
    -- or --
    -- print (parse koreParser fileName contents)
    -- or --
    -- print (parseOnly koreParser fileName contents)
