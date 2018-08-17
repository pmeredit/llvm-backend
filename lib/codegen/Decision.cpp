#include "kllvm/codegen/Decision.h"
#include "kllvm/codegen/CreateTerm.h"

#include "llvm/IR/Constants.h"
#include "llvm/IR/Instructions.h" 

namespace kllvm {

static std::string BLOCK_STRUCT = "block";

FailNode FailNode::instance;

void Decision::operator()(DecisionNode *entry, llvm::StringMap<llvm::Value *> substitution) {
  entry->codegen(this, substitution);
}

void SwitchNode::codegen(Decision *d, llvm::StringMap<llvm::Value *> substitution) {
  llvm::Value *val = substitution.lookup(name);
  llvm::BasicBlock *_default = d->StuckBlock;
  const DecisionCase *defaultCase = nullptr;
  std::vector<std::pair<llvm::BasicBlock *, const DecisionCase *>> caseData;
  int idx = 0;
  bool isInt = false;
  for (auto &_case : cases) {
    llvm::BasicBlock *CaseBlock;
    if (_case.getChild() == FailNode::get()) {
      CaseBlock = d->StuckBlock;
    } else {
      CaseBlock = llvm::BasicBlock::Create(d->Ctx, 
          name + "_case_" + std::to_string(idx++),
          d->CurrentBlock->getParent());
    }
    if (auto sym = _case.getConstructor()) {
      isInt = isInt || sym->getName() == "\\dv";
      caseData.push_back(std::make_pair(CaseBlock, &_case));
    } else {
      _default = CaseBlock;
      defaultCase = &_case;
    }
  }
  if (isInt) {
    auto _switch = llvm::SwitchInst::Create(val, _default, cases.size(), d->CurrentBlock);
    for (auto &_case : caseData) {
      _switch->addCase(llvm::ConstantInt::get(d->Ctx, _case.second->getLiteral()), _case.first);
    }
  } else { 
    llvm::Value *tagVal = d->getTag(val);
    auto _switch = llvm::SwitchInst::Create(tagVal, _default, cases.size(), d->CurrentBlock);
    for (auto &_case : caseData) {
      _switch->addCase(llvm::ConstantInt::get(llvm::Type::getInt32Ty(d->Ctx), _case.second->getConstructor()->getTag()), _case.first); 
    }
  }
  for (auto &entry : caseData) {
    auto &_case = *entry.second;
    d->CurrentBlock = entry.first;
    if (!isInt) {
      int offset = 2;
      llvm::StructType *BlockType = getBlockType(d->Module, d->Definition, _case.getConstructor());
      llvm::BitCastInst *Cast = new llvm::BitCastInst(val, llvm::PointerType::getUnqual(BlockType), "", d->CurrentBlock);
      for (std::string binding : _case.getBindings()) {
        llvm::Value *ChildPtr = llvm::GetElementPtrInst::CreateInBounds(BlockType, Cast, {llvm::ConstantInt::get(llvm::Type::getInt64Ty(d->Ctx), 0), llvm::ConstantInt::get(llvm::Type::getInt32Ty(d->Ctx), offset++)}, "", d->CurrentBlock);
        substitution[binding] = new llvm::LoadInst(ChildPtr, binding, d->CurrentBlock);
      }
    }
    _case.getChild()->codegen(d, substitution);
  }
}

void FunctionNode::codegen(Decision *d, llvm::StringMap<llvm::Value *> substitution) {
  std::vector<llvm::Value *> args;
  std::vector<llvm::Type *> types;
  for (auto arg : bindings) {
    auto val = substitution.lookup(arg);
    args.push_back(val);
    types.push_back(val->getType());
  }
  auto Call = llvm::CallInst::Create(d->Module->getOrInsertFunction(function, llvm::FunctionType::get(getValueType(cat, d->Module), types, false)), args, name, d->CurrentBlock);
  substitution[name] = Call;
  child->codegen(d, substitution);
}

void LeafNode::codegen(Decision *d, llvm::StringMap<llvm::Value *> substitution) {
  std::vector<llvm::Value *> args;
  std::vector<llvm::Type *> types;
  for (auto arg : bindings) {
    auto val = substitution.lookup(arg);
    args.push_back(val);
    types.push_back(val->getType());
  }
  auto Call = llvm::CallInst::Create(d->Module->getOrInsertFunction(name, llvm::FunctionType::get(getValueType(d->Cat, d->Module), types, false)), args, "", d->CurrentBlock);
  llvm::ReturnInst::Create(d->Ctx, Call, d->CurrentBlock);
}

llvm::Value *Decision::getTag(llvm::Value *val) {
  auto Int = new llvm::PtrToIntInst(val, llvm::Type::getInt64Ty(Ctx), "", CurrentBlock);
  auto isConstant = new llvm::TruncInst(Int, llvm::Type::getInt1Ty(Ctx), "", CurrentBlock);
  llvm::BasicBlock *CondBlock = CurrentBlock;
  llvm::BasicBlock *TrueBlock = llvm::BasicBlock::Create(Ctx, "constant", CurrentBlock->getParent());
  llvm::BasicBlock *FalseBlock = llvm::BasicBlock::Create(Ctx, "block", CurrentBlock->getParent());
  llvm::BasicBlock *MergeBlock = llvm::BasicBlock::Create(Ctx, "getTag", CurrentBlock->getParent());
  llvm::BranchInst *Branch = llvm::BranchInst::Create(TrueBlock, FalseBlock, isConstant, CurrentBlock);
  CurrentBlock = TrueBlock;
  auto shifted = llvm::BinaryOperator::Create(llvm::Instruction::LShr, Int, llvm::ConstantInt::get(llvm::Type::getInt64Ty(Ctx), 32), "", CurrentBlock);
  Branch = llvm::BranchInst::Create(MergeBlock, CurrentBlock);
  CurrentBlock = FalseBlock;
  auto zero = llvm::ConstantInt::get(llvm::Type::getInt32Ty(Ctx), 0);
  llvm::Value *BlockHeaderPtr = llvm::GetElementPtrInst::CreateInBounds(Module->getTypeByName(BLOCK_STRUCT), val, {llvm::ConstantInt::get(llvm::Type::getInt64Ty(Ctx), 0), zero, zero}, "", CurrentBlock);
  llvm::Value *BlockHeader = new llvm::LoadInst(BlockHeaderPtr, "", CurrentBlock);
  Branch = llvm::BranchInst::Create(MergeBlock, CurrentBlock);
  llvm::PHINode *Phi = llvm::PHINode::Create(llvm::Type::getInt64Ty(Ctx), 2, "phi", MergeBlock);
  Phi->addIncoming(BlockHeader, FalseBlock);
  Phi->addIncoming(shifted, TrueBlock);
  CurrentBlock = MergeBlock;
  llvm::Value *Tag = new llvm::TruncInst(Phi, llvm::Type::getInt32Ty(Ctx), "", CurrentBlock);
  return Tag;


}

void makeEvalFunction(KOREObjectSymbol *function, KOREDefinition *definition, llvm::Module *module, DecisionNode *dt) {
  auto returnSort = dynamic_cast<KOREObjectCompositeSort *>(function->getSort())->getCategory(definition);
  auto returnType = getValueType(returnSort, module);
  std::vector<llvm::Type *> args;
  for (auto sort : function->getArguments()) {
    auto cat = dynamic_cast<KOREObjectCompositeSort *>(sort)->getCategory(definition);
    args.push_back(getValueType(cat, module));
  }
  llvm::FunctionType *funcType = llvm::FunctionType::get(returnType, args, false);
  std::string name = "eval_" + function->getName();
  llvm::Constant *func = module->getOrInsertFunction(name, funcType);
  llvm::Function *matchFunc = llvm::cast<llvm::Function>(func);
  llvm::StringMap<llvm::Value *> subst;
  int i = 0;
  for (auto val = matchFunc->arg_begin(); val != matchFunc->arg_end(); ++val, ++i) {
    val->setName("subject" + std::to_string(i));
    subst.insert({val->getName(), val});
  }
  llvm::BasicBlock *block = llvm::BasicBlock::Create(module->getContext(), "entry", matchFunc);
  llvm::BasicBlock *stuck = llvm::BasicBlock::Create(module->getContext(), "stuck", matchFunc);
  llvm::FunctionType *AbortType = llvm::FunctionType::get(llvm::Type::getVoidTy(module->getContext()), false);
  llvm::Function *AbortFunc = llvm::dyn_cast<llvm::Function>(module->getOrInsertFunction("abort", AbortType));
  AbortFunc->addFnAttr(llvm::Attribute::NoReturn);
  llvm::CallInst *Abort = llvm::CallInst::Create(AbortFunc, "", stuck);
  llvm::UnreachableInst *Unreachable = new llvm::UnreachableInst(module->getContext(), stuck);

  Decision codegen(definition, block, stuck, module, returnSort);
  codegen(dt, subst);
}

}
