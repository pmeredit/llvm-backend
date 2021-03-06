target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%mpz = type { i32, i32, i64* }
%blockheader = type { i64 }
%block = type { %blockheader, [0 x i64*] }
%map = type { i64, i8*, i8* }

@int_0 = global %mpz { i32 0, i32 0, i64* getelementptr inbounds ([0 x i64], [0 x i64]* @int_0_limbs, i32 0, i32 0) }
@int_0_limbs = global [0 x i64] zeroinitializer
@int_1 = global %mpz { i32 1, i32 1, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @int_1_limbs, i32 0, i32 0) }
@int_1_limbs = global [1 x i64] [i64 1]
@"token_$PGM" = global { %blockheader, [4 x i8] } { %blockheader { i64 4 }, [4 x i8] c"$PGM" }

declare %block* @parseConfiguration(i8*)

define %block* @apply_rule_0(%block* %K2) {
entry:
  ret %block* %K2
}

define %block* @apply_rule_1(%block* %K1, %block* %K2, %block* %K3) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %1 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %K1, %block** %1
  %2 = call %block* @"eval_append{SortK{},SortK{}}"(%block* %K2, %block* %K3)
  %3 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %2, %block** %3
  %4 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %4
}

declare noalias i8* @malloc(i64)

declare %block* @"eval_append{SortK{},SortK{}}"(%block*, %block*)

define %block* @apply_rule_2(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK0) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarHOLE, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq5
  %malloccall6 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %8 = bitcast i8* %malloccall6 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'Hash'freezer'UndsSlshUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp0'Unds'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 0
  store %blockheader { i64 562958543355915 }, %blockheader* %"Lbl'Hash'freezer'UndsSlshUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp0'Unds'"
  %malloccall7 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %9 = bitcast i8* %malloccall7 to { %blockheader, [0 x i64], %block* }*
  %inj8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj8
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 2
  store %block* %VarK0, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %9 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block* }* %8 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %13, %block** %14
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %VarDotVar1, %block** %15
  %16 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %17 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %16, %block** %17
  %18 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %19 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %18, %block** %19
  %20 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %21 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %20, %block** %21
  %22 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %22
  %23 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %23
}

define i1 @apply_rule_3() {
entry:
  ret i1 true
}

define %block* @apply_rule_4(%block* %VarB2) {
entry:
  ret %block* %VarB2
}

define i1 @apply_rule_5() {
entry:
  ret i1 true
}

define %mpz* @apply_rule_6(%mpz* %VarI1, %mpz* %VarI2) {
entry:
  %0 = call %mpz* @hook_INT_abs(%mpz* %VarI2)
  %1 = call %mpz* @hook_INT_tmod(%mpz* %VarI1, %mpz* %0)
  %2 = call %mpz* @hook_INT_abs(%mpz* %VarI2)
  %3 = call %mpz* @hook_INT_add(%mpz* %1, %mpz* %2)
  %4 = call %mpz* @hook_INT_abs(%mpz* %VarI2)
  %5 = call %mpz* @hook_INT_tmod(%mpz* %3, %mpz* %4)
  ret %mpz* %5
}

declare %mpz* @hook_INT_abs(%mpz*)

declare %mpz* @hook_INT_tmod(%mpz*, %mpz*)

declare %mpz* @hook_INT_add(%mpz*, %mpz*)

define i1 @apply_rule_7() {
entry:
  ret i1 true
}

define i1 @apply_rule_8() {
entry:
  ret i1 false
}

define i1 @apply_rule_9(i1 %VarB1, i1 %VarB2) {
entry:
  %hook_BOOL_eq = icmp eq i1 %VarB1, %VarB2
  %hook_BOOL_not = xor i1 %hook_BOOL_eq, true
  ret i1 %hook_BOOL_not
}

define i1 @apply_rule_10() {
entry:
  ret i1 false
}

define i1 @apply_rule_11() {
entry:
  ret i1 true
}

define i1 @apply_rule_12() {
entry:
  ret i1 true
}

define %mpz* @apply_rule_13(%mpz* %VarI1, %mpz* %VarI2) {
entry:
  %0 = call %mpz* @hook_INT_emod(%mpz* %VarI1, %mpz* %VarI2)
  %1 = call %mpz* @hook_INT_sub(%mpz* %VarI1, %mpz* %0)
  %2 = call %mpz* @hook_INT_tdiv(%mpz* %1, %mpz* %VarI2)
  ret %mpz* %2
}

declare %mpz* @hook_INT_emod(%mpz*, %mpz*)

declare %mpz* @hook_INT_sub(%mpz*, %mpz*)

declare %mpz* @hook_INT_tdiv(%mpz*, %mpz*)

define %block* @apply_rule_14(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK1, %block* %VarK2) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355998 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarHOLE, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq5
  %malloccall6 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %8 = bitcast i8* %malloccall6 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'Hash'freezerif'LParUndsRParUnds'else'UndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'Block'Unds'Block1'Unds'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %8, i64 0, i32 0
  store %blockheader { i64 281487861612557 }, %blockheader* %"Lbl'Hash'freezerif'LParUndsRParUnds'else'UndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'Block'Unds'Block1'Unds'"
  %malloccall7 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %9 = bitcast i8* %malloccall7 to { %blockheader, [0 x i64], %block* }*
  %inj8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 0
  store %blockheader { i64 562958543356007 }, %blockheader* %inj8
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 2
  store %block* %VarK1, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %9 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %8, i64 0, i32 2
  store %block* %11, %block** %12
  %malloccall9 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %13 = bitcast i8* %malloccall9 to { %blockheader, [0 x i64], %block* }*
  %inj10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %13, i64 0, i32 0
  store %blockheader { i64 562958543356007 }, %blockheader* %inj10
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %13, i64 0, i32 2
  store %block* %VarK2, %block** %14
  %15 = bitcast { %blockheader, [0 x i64], %block* }* %13 to %block*
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %8, i64 0, i32 3
  store %block* %15, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %8 to %block*
  %18 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %17, %block** %18
  %19 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %VarDotVar1, %block** %19
  %20 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %21 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %20, %block** %21
  %22 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %23 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %22, %block** %23
  %24 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %25 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %24, %block** %25
  %26 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %26
  %27 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %27
}

define %block* @apply_rule_15(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarS) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543356007 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarS, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %7
  %8 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %8, %block** %9
  %10 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %10, %block** %11
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %13
}

define i1 @apply_rule_16() {
entry:
  ret i1 true
}

define i1 @apply_rule_17() {
entry:
  ret i1 false
}

define i1 @apply_rule_18() {
entry:
  ret i1 false
}

define i1 @apply_rule_19() {
entry:
  ret i1 true
}

define %block* @apply_rule_20(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355998 }, %blockheader* %inj
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %4 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'Unds-LT-EqlsUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 0
  store %blockheader { i64 281487861612578 }, %blockheader* %"Lbl'Unds-LT-EqlsUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp"
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 2
  store %block* %VarHOLE, %block** %5
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 3
  store %block* %VarK1, %block** %6
  %7 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %4 to %block*
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %7, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %11
  %12 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %12, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %14, %block** %15
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %17
}

define i1 @apply_rule_21() {
entry:
  ret i1 true
}

define %block* @apply_rule_22(%block* %VarDotVar0, %block* %VarDotVar1, %mpz* %VarI1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %mpz* }* getelementptr ({ %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %mpz* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* %3, i64 0, i32 0
  store %blockheader { i64 2533283380330595 }, %blockheader* %inj
  %4 = call %mpz* @hook_INT_sub(%mpz* @int_0, %mpz* %VarI1)
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* %3, i64 0, i32 2
  store %mpz* %4, %mpz** %5
  %6 = bitcast { %blockheader, [0 x i64], %mpz* }* %3 to %block*
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %6, %block** %7
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %14
}

define i1 @apply_rule_23() {
entry:
  ret i1 true
}

define i1 @apply_rule_24() {
entry:
  ret i1 true
}

define i1 @apply_rule_25() {
entry:
  ret i1 true
}

define i1 @apply_rule_26() {
entry:
  ret i1 true
}

define i1 @apply_rule_27() {
entry:
  ret i1 true
}

define i1 @apply_rule_28() {
entry:
  ret i1 false
}

define i1 @apply_rule_29() {
entry:
  ret i1 true
}

define %block* @apply_rule_30(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarHOLE, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq5
  %malloccall6 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %8 = bitcast i8* %malloccall6 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'Hash'freezer'UndsPlusUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp1'Unds'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 0
  store %blockheader { i64 562958543355914 }, %blockheader* %"Lbl'Hash'freezer'UndsPlusUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp1'Unds'"
  %malloccall7 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %9 = bitcast i8* %malloccall7 to { %blockheader, [0 x i64], %block* }*
  %inj8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj8
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 2
  store %block* %VarK1, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %9 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block* }* %8 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %13, %block** %14
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %VarDotVar1, %block** %15
  %16 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %17 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %16, %block** %17
  %18 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %19 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %18, %block** %19
  %20 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %21 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %20, %block** %21
  %22 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %22
  %23 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %23
}

define %block* @apply_rule_31(%block* %VarB, %block* %VarDotVar0, %block* %VarDotVar1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355998 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarB, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %7
  %8 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %8, %block** %9
  %10 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %10, %block** %11
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %13
}

define i1 @apply_rule_32() {
entry:
  ret i1 false
}

define %block* @apply_rule_33(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK1, %block* %VarK2) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543356006 }, %blockheader* %inj
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block*, %block* }, { %blockheader, [0 x i64], %block*, %block*, %block* }* null, i32 1) to i64))
  %4 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block*, %block* }*
  %"Lblif'LParUndsRParUnds'else'UndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'Block'Unds'Block" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block*, %block* }, { %blockheader, [0 x i64], %block*, %block*, %block* }* %4, i64 0, i32 0
  store %blockheader { i64 3659191877107767 }, %blockheader* %"Lblif'LParUndsRParUnds'else'UndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'Block'Unds'Block"
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block*, %block* }, { %blockheader, [0 x i64], %block*, %block*, %block* }* %4, i64 0, i32 2
  store %block* %VarHOLE, %block** %5
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block*, %block* }, { %blockheader, [0 x i64], %block*, %block*, %block* }* %4, i64 0, i32 3
  store %block* %VarK1, %block** %6
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block*, %block* }, { %blockheader, [0 x i64], %block*, %block*, %block* }* %4, i64 0, i32 4
  store %block* %VarK2, %block** %7
  %8 = bitcast { %blockheader, [0 x i64], %block*, %block*, %block* }* %4 to %block*
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %8, %block** %9
  %10 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %10, %block** %11
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %13, %block** %14
  %15 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %15, %block** %16
  %17 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %17
  %18 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %18
}

define %mpz* @apply_rule_34(%mpz* %VarI1) {
entry:
  ret %mpz* %VarI1
}

define i1 @apply_rule_35() {
entry:
  ret i1 true
}

define %mpz* @apply_rule_36(%mpz* %VarI, %mpz* %VarIDX, %mpz* %VarLEN) {
entry:
  %0 = call %mpz* @hook_INT_bitRange(%mpz* %VarI, %mpz* %VarIDX, %mpz* %VarLEN)
  %1 = call %mpz* @hook_INT_sub(%mpz* %VarLEN, %mpz* @int_1)
  %2 = call %mpz* @hook_INT_shl(%mpz* @int_1, %mpz* %1)
  %3 = call %mpz* @hook_INT_add(%mpz* %0, %mpz* %2)
  %4 = call %mpz* @hook_INT_shl(%mpz* @int_1, %mpz* %VarLEN)
  %5 = call %mpz* @hook_INT_emod(%mpz* %3, %mpz* %4)
  %6 = call %mpz* @hook_INT_sub(%mpz* %VarLEN, %mpz* @int_1)
  %7 = call %mpz* @hook_INT_shl(%mpz* @int_1, %mpz* %6)
  %8 = call %mpz* @hook_INT_sub(%mpz* %5, %mpz* %7)
  ret %mpz* %8
}

declare %mpz* @hook_INT_bitRange(%mpz*, %mpz*, %mpz*)

declare %mpz* @hook_INT_shl(%mpz*, %mpz*)

define i1 @apply_rule_37() {
entry:
  ret i1 false
}

define %block* @apply_rule_38(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %4 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'UndsPlusUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 0
  store %blockheader { i64 281487861612589 }, %blockheader* %"Lbl'UndsPlusUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp"
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 2
  store %block* %VarHOLE, %block** %5
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 3
  store %block* %VarK1, %block** %6
  %7 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %4 to %block*
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %7, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %11
  %12 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %12, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %14, %block** %15
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %17
}

define %block* @apply_rule_39(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK0) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarHOLE, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq5
  %malloccall6 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %8 = bitcast i8* %malloccall6 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'Hash'freezer'UndsEqlsUndsSClnUnds'IMP-SYNTAX'UndsUnds'Id'Unds'AExp0'Unds'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 0
  store %blockheader { i64 562958543355912 }, %blockheader* %"Lbl'Hash'freezer'UndsEqlsUndsSClnUnds'IMP-SYNTAX'UndsUnds'Id'Unds'AExp0'Unds'"
  %malloccall7 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %9 = bitcast i8* %malloccall7 to { %blockheader, [0 x i64], %block* }*
  %inj8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 0
  store %blockheader { i64 562958543356016 }, %blockheader* %inj8
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 2
  store %block* %VarK0, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %9 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block* }* %8 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %13, %block** %14
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %VarDotVar1, %block** %15
  %16 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %17 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %16, %block** %17
  %18 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %19 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %18, %block** %19
  %20 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %21 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %20, %block** %21
  %22 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %22
  %23 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %23
}

define i1 @apply_rule_40() {
entry:
  ret i1 true
}

define i1 @apply_rule_41(%mpz* %VarI1, %mpz* %VarI2) {
entry:
  %0 = call %mpz* @hook_INT_tmod(%mpz* %VarI2, %mpz* %VarI1)
  %1 = call i1 @hook_INT_eq(%mpz* %0, %mpz* @int_0)
  ret i1 %1
}

declare i1 @hook_INT_eq(%mpz*, %mpz*)

define i1 @apply_rule_42() {
entry:
  ret i1 true
}

define i1 @apply_rule_43() {
entry:
  ret i1 false
}

define i1 @apply_rule_44() {
entry:
  ret i1 true
}

define i1 @apply_rule_45() {
entry:
  ret i1 false
}

define i1 @apply_rule_46() {
entry:
  ret i1 true
}

define %block* @apply_rule_47(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355998 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarHOLE, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq5
  %8 = inttoptr i64 17179869185 to %block*
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %8, %block** %9
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %VarDotVar1, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %11, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %13, %block** %14
  %15 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %15, %block** %16
  %17 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %17
  %18 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %18
}

define i1 @apply_rule_48(i1 %VarB1, i1 %VarB2) {
entry:
  %hook_BOOL_eq = icmp eq i1 %VarB1, %VarB2
  %hook_BOOL_not = xor i1 %hook_BOOL_eq, true
  ret i1 %hook_BOOL_not
}

define %mpz* @apply_rule_49(%mpz* %VarI) {
entry:
  ret %mpz* %VarI
}

define i1 @apply_rule_50() {
entry:
  ret i1 true
}

define i1 @apply_rule_51() {
entry:
  ret i1 false
}

define %block* @apply_rule_52(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarS1, %block* %VarS2) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543356006 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarS1, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq5
  %malloccall6 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %8 = bitcast i8* %malloccall6 to { %blockheader, [0 x i64], %block* }*
  %inj7 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 0
  store %blockheader { i64 562958543356006 }, %blockheader* %inj7
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 2
  store %block* %VarS2, %block** %9
  %10 = bitcast { %blockheader, [0 x i64], %block* }* %8 to %block*
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %10, %block** %11
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %VarDotVar1, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %13, %block** %14
  %15 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %15, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %18 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %17, %block** %18
  %19 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %19
  %20 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %20
}

define %block* @apply_rule_53(%block* %VarB, %block* %VarDotVar0, %block* %VarDotVar1, %block* %VarS) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543356006 }, %blockheader* %inj
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block*, %block* }, { %blockheader, [0 x i64], %block*, %block*, %block* }* null, i32 1) to i64))
  %4 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block*, %block* }*
  %"Lblif'LParUndsRParUnds'else'UndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'Block'Unds'Block" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block*, %block* }, { %blockheader, [0 x i64], %block*, %block*, %block* }* %4, i64 0, i32 0
  store %blockheader { i64 3659191877107767 }, %blockheader* %"Lblif'LParUndsRParUnds'else'UndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'Block'Unds'Block"
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block*, %block* }, { %blockheader, [0 x i64], %block*, %block*, %block* }* %4, i64 0, i32 2
  store %block* %VarB, %block** %5
  %malloccall5 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %6 = bitcast i8* %malloccall5 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'LBraUndsRBraUnds'IMP-SYNTAX'UndsUnds'Stmt" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %6, i64 0, i32 0
  store %blockheader { i64 562958543355920 }, %blockheader* %"Lbl'LBraUndsRBraUnds'IMP-SYNTAX'UndsUnds'Stmt"
  %malloccall6 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall6 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'UndsUndsUnds'IMP-SYNTAX'UndsUnds'Stmt'Unds'Stmt" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612592 }, %blockheader* %"Lbl'UndsUndsUnds'IMP-SYNTAX'UndsUnds'Stmt'Unds'Stmt"
  %malloccall7 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %8 = bitcast i8* %malloccall7 to { %blockheader, [0 x i64], %block* }*
  %inj8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 0
  store %blockheader { i64 562958543356007 }, %blockheader* %inj8
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 2
  store %block* %VarS, %block** %9
  %10 = bitcast { %blockheader, [0 x i64], %block* }* %8 to %block*
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %10, %block** %11
  %malloccall9 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %12 = bitcast i8* %malloccall9 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lblwhile'LParUndsRParUndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'Block" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %12, i64 0, i32 0
  store %blockheader { i64 281487861612632 }, %blockheader* %"Lblwhile'LParUndsRParUndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'Block"
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %12, i64 0, i32 2
  store %block* %VarB, %block** %13
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %12, i64 0, i32 3
  store %block* %VarS, %block** %14
  %15 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %12 to %block*
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %15, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %18 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %6, i64 0, i32 2
  store %block* %17, %block** %18
  %19 = bitcast { %blockheader, [0 x i64], %block* }* %6 to %block*
  %20 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block*, %block* }, { %blockheader, [0 x i64], %block*, %block*, %block* }* %4, i64 0, i32 3
  store %block* %19, %block** %20
  %21 = inttoptr i64 64424509441 to %block*
  %22 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block*, %block* }, { %blockheader, [0 x i64], %block*, %block*, %block* }* %4, i64 0, i32 4
  store %block* %21, %block** %22
  %23 = bitcast { %blockheader, [0 x i64], %block*, %block*, %block* }* %4 to %block*
  %24 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %23, %block** %24
  %25 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %26 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %25, %block** %26
  %27 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %27
  %28 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %29 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %28, %block** %29
  %30 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %31 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %30, %block** %31
  %32 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %32
  %33 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %33
}

define %block* @apply_rule_54(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK0) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543356006 }, %blockheader* %inj
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %4 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'UndsEqlsUndsSClnUnds'IMP-SYNTAX'UndsUnds'Id'Unds'AExp" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 0
  store %blockheader { i64 281487861612585 }, %blockheader* %"Lbl'UndsEqlsUndsSClnUnds'IMP-SYNTAX'UndsUnds'Id'Unds'AExp"
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 2
  store %block* %VarK0, %block** %5
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 3
  store %block* %VarHOLE, %block** %6
  %7 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %4 to %block*
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %7, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %11
  %12 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %12, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %14, %block** %15
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %17
}

define i1 @apply_rule_55(i1 %VarB) {
entry:
  ret i1 %VarB
}

define i1 @apply_rule_56() {
entry:
  ret i1 true
}

define i1 @apply_rule_57() {
entry:
  ret i1 false
}

define %block* @apply_rule_58(%block* %VarDotVar1, %map %VarDotVar2, %mpz* %VarI, %block* %VarX) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %2 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %VarDotVar1, %block** %2
  %3 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %3, %block** %4
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %map }* getelementptr ({ %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* null, i32 1) to i64))
  %5 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %map }*
  %"Lbl'-LT-'state'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* %5, i64 0, i32 0
  store %blockheader { i64 844442110001154 }, %blockheader* %"Lbl'-LT-'state'-GT-'"
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %6 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %6, i64 0, i32 0
  store %blockheader { i64 562958543356016 }, %blockheader* %inj
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %6, i64 0, i32 2
  store %block* %VarX, %block** %7
  %8 = bitcast { %blockheader, [0 x i64], %block* }* %6 to %block*
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %mpz* }* getelementptr ({ %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* null, i32 1) to i64))
  %9 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %mpz* }*
  %inj5 = getelementptr inbounds { %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* %9, i64 0, i32 0
  store %blockheader { i64 2533283380330595 }, %blockheader* %inj5
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* %9, i64 0, i32 2
  store %mpz* %VarI, %mpz** %10
  %11 = bitcast { %blockheader, [0 x i64], %mpz* }* %9 to %block*
  %12 = call %map @hook_MAP_element(%block* %8, %block* %11)
  %13 = alloca %map
  store %map %12, %map* %13
  %14 = alloca %map
  store %map %VarDotVar2, %map* %14
  %15 = call %map @hook_MAP_concat(%map* %13, %map* %14)
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* %5, i64 0, i32 2
  store %map %15, %map* %16
  %17 = bitcast { %blockheader, [0 x i64], %map }* %5 to %block*
  %18 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %17, %block** %18
  %19 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %19
}

declare %map @hook_MAP_element(%block*, %block*)

declare %map @hook_MAP_concat(%map*, %map*)

define i1 @apply_rule_59() {
entry:
  ret i1 false
}

define %block* @apply_rule_60(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarHOLE, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq5
  %malloccall6 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %8 = bitcast i8* %malloccall6 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'Hash'freezer'Unds-LT-EqlsUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp1'Unds'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 0
  store %blockheader { i64 562958543355910 }, %blockheader* %"Lbl'Hash'freezer'Unds-LT-EqlsUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp1'Unds'"
  %malloccall7 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %9 = bitcast i8* %malloccall7 to { %blockheader, [0 x i64], %block* }*
  %inj8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj8
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 2
  store %block* %VarK1, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %9 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block* }* %8 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %13, %block** %14
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %VarDotVar1, %block** %15
  %16 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %17 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %16, %block** %17
  %18 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %19 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %18, %block** %19
  %20 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %21 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %20, %block** %21
  %22 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %22
  %23 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %23
}

define i1 @apply_rule_61() {
entry:
  ret i1 false
}

define i1 @apply_rule_62() {
entry:
  ret i1 false
}

define %block* @apply_rule_63(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355998 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarHOLE, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq5
  %malloccall6 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %8 = bitcast i8* %malloccall6 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'Hash'freezer'UndsAndAndUndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'BExp1'Unds'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 0
  store %blockheader { i64 562958543355911 }, %blockheader* %"Lbl'Hash'freezer'UndsAndAndUndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'BExp1'Unds'"
  %malloccall7 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %9 = bitcast i8* %malloccall7 to { %blockheader, [0 x i64], %block* }*
  %inj8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 0
  store %blockheader { i64 562958543355998 }, %blockheader* %inj8
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 2
  store %block* %VarK1, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %9 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block* }* %8 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %13, %block** %14
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %VarDotVar1, %block** %15
  %16 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %17 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %16, %block** %17
  %18 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %19 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %18, %block** %19
  %20 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %21 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %20, %block** %21
  %22 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %22
  %23 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %23
}

define i1 @apply_rule_64() {
entry:
  ret i1 false
}

define i1 @apply_rule_65() {
entry:
  ret i1 true
}

define i1 @apply_rule_66() {
entry:
  ret i1 true
}

define i1 @apply_rule_67(i1 %VarK) {
entry:
  ret i1 %VarK
}

define i1 @apply_rule_68() {
entry:
  ret i1 true
}

define i1 @apply_rule_69() {
entry:
  ret i1 true
}

define %block* @apply_rule_70(%block* %VarDotVar0, %block* %VarDotVar1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], i1 }* getelementptr ({ %blockheader, [0 x i64], i1 }, { %blockheader, [0 x i64], i1 }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], i1 }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], i1 }, { %blockheader, [0 x i64], i1 }* %3, i64 0, i32 0
  store %blockheader { i64 3940658263883876 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], i1 }, { %blockheader, [0 x i64], i1 }* %3, i64 0, i32 2
  store i1 false, i1* %4
  %5 = bitcast { %blockheader, [0 x i64], i1 }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %7
  %8 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %8, %block** %9
  %10 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %10, %block** %11
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %13
}

define i1 @apply_rule_71() {
entry:
  ret i1 false
}

define i1 @apply_rule_72(i1 %VarK) {
entry:
  ret i1 %VarK
}

define i1 @apply_rule_73() {
entry:
  ret i1 true
}

define i1 @apply_rule_74() {
entry:
  ret i1 true
}

define i1 @apply_rule_75(i1 %VarB) {
entry:
  ret i1 %VarB
}

define %block* @apply_rule_76(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %4 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'UndsSlshUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 0
  store %blockheader { i64 281487861612591 }, %blockheader* %"Lbl'UndsSlshUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp"
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 2
  store %block* %VarHOLE, %block** %5
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 3
  store %block* %VarK1, %block** %6
  %7 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %4 to %block*
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %7, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %11
  %12 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %12, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %14, %block** %15
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %17
}

define i1 @apply_rule_77() {
entry:
  ret i1 false
}

define i1 @apply_rule_78() {
entry:
  ret i1 true
}

define i1 @apply_rule_79() {
entry:
  ret i1 true
}

define %block* @apply_rule_80(%block* %"Var'Unds'14", %map %VarRho, %block* %VarX, %block* %VarXs) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %2, i64 0, i32 0
  store %blockheader { i64 562958543356011 }, %blockheader* %inj
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lblint'UndsSClnUndsUnds'IMP-SYNTAX'UndsUnds'Ids'Unds'Stmt" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %3, i64 0, i32 0
  store %blockheader { i64 281487861612603 }, %blockheader* %"Lblint'UndsSClnUndsUnds'IMP-SYNTAX'UndsUnds'Ids'Unds'Stmt"
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %3, i64 0, i32 2
  store %block* %VarXs, %block** %4
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %3, i64 0, i32 3
  store %block* %"Var'Unds'14", %block** %5
  %6 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %3 to %block*
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %2, i64 0, i32 2
  store %block* %6, %block** %7
  %8 = bitcast { %blockheader, [0 x i64], %block* }* %2 to %block*
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %8, %block** %9
  %10 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %10, %block** %11
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %map }* getelementptr ({ %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* null, i32 1) to i64))
  %12 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %map }*
  %"Lbl'-LT-'state'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* %12, i64 0, i32 0
  store %blockheader { i64 844442110001154 }, %blockheader* %"Lbl'-LT-'state'-GT-'"
  %13 = alloca %map
  store %map %VarRho, %map* %13
  %malloccall5 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %14 = bitcast i8* %malloccall5 to { %blockheader, [0 x i64], %block* }*
  %inj6 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %14, i64 0, i32 0
  store %blockheader { i64 562958543356016 }, %blockheader* %inj6
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %14, i64 0, i32 2
  store %block* %VarX, %block** %15
  %16 = bitcast { %blockheader, [0 x i64], %block* }* %14 to %block*
  %malloccall7 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %mpz* }* getelementptr ({ %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* null, i32 1) to i64))
  %17 = bitcast i8* %malloccall7 to { %blockheader, [0 x i64], %mpz* }*
  %inj8 = getelementptr inbounds { %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* %17, i64 0, i32 0
  store %blockheader { i64 2533283380330595 }, %blockheader* %inj8
  %18 = getelementptr inbounds { %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* %17, i64 0, i32 2
  store %mpz* @int_0, %mpz** %18
  %19 = bitcast { %blockheader, [0 x i64], %mpz* }* %17 to %block*
  %20 = call %map @hook_MAP_element(%block* %16, %block* %19)
  %21 = alloca %map
  store %map %20, %map* %21
  %22 = call %map @hook_MAP_concat(%map* %13, %map* %21)
  %23 = getelementptr inbounds { %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* %12, i64 0, i32 2
  store %map %22, %map* %23
  %24 = bitcast { %blockheader, [0 x i64], %map }* %12 to %block*
  %25 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %24, %block** %25
  %26 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %26
}

define i1 @apply_rule_81() {
entry:
  ret i1 true
}

define i1 @apply_rule_82() {
entry:
  ret i1 false
}

define i1 @apply_rule_83() {
entry:
  ret i1 true
}

define %block* @apply_rule_84(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355998 }, %blockheader* %inj
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %4 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'BangUndsUnds'IMP-SYNTAX'UndsUnds'BExp" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %4, i64 0, i32 0
  store %blockheader { i64 562958543355907 }, %blockheader* %"Lbl'BangUndsUnds'IMP-SYNTAX'UndsUnds'BExp"
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %4, i64 0, i32 2
  store %block* %VarHOLE, %block** %5
  %6 = bitcast { %blockheader, [0 x i64], %block* }* %4 to %block*
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %6, %block** %7
  %8 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %8, %block** %9
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %13, %block** %14
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %15
  %16 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %16
}

define i1 @apply_rule_85() {
entry:
  ret i1 true
}

define i1 @apply_rule_86() {
entry:
  ret i1 true
}

define %block* @apply_rule_87(%block* %VarDotVar1, %map %VarDotVar2, %block* %VarI, %block* %VarX) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %2 = call %block* @"eval_append{SortK{},SortK{}}"(%block* %VarI, %block* %VarDotVar1)
  %3 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %2, %block** %3
  %4 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %4, %block** %5
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %map }* getelementptr ({ %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* null, i32 1) to i64))
  %6 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %map }*
  %"Lbl'-LT-'state'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* %6, i64 0, i32 0
  store %blockheader { i64 844442110001154 }, %blockheader* %"Lbl'-LT-'state'-GT-'"
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %7, i64 0, i32 0
  store %blockheader { i64 562958543356016 }, %blockheader* %inj
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %7, i64 0, i32 2
  store %block* %VarX, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block* }* %7 to %block*
  %10 = call %map @hook_MAP_element(%block* %9, %block* %VarI)
  %11 = alloca %map
  store %map %10, %map* %11
  %12 = alloca %map
  store %map %VarDotVar2, %map* %12
  %13 = call %map @hook_MAP_concat(%map* %11, %map* %12)
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* %6, i64 0, i32 2
  store %map %13, %map* %14
  %15 = bitcast { %blockheader, [0 x i64], %map }* %6 to %block*
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %15, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %17
}

define %block* @apply_rule_88(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK0) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarHOLE, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq5
  %malloccall6 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %8 = bitcast i8* %malloccall6 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'Hash'freezer'Unds-LT-EqlsUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp0'Unds'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 0
  store %blockheader { i64 562958543355909 }, %blockheader* %"Lbl'Hash'freezer'Unds-LT-EqlsUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp0'Unds'"
  %malloccall7 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %9 = bitcast i8* %malloccall7 to { %blockheader, [0 x i64], %block* }*
  %inj8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj8
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 2
  store %block* %VarK0, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %9 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block* }* %8 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %13, %block** %14
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %VarDotVar1, %block** %15
  %16 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %17 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %16, %block** %17
  %18 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %19 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %18, %block** %19
  %20 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %21 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %20, %block** %21
  %22 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %22
  %23 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %23
}

define i1 @apply_rule_89() {
entry:
  ret i1 true
}

define i1 @apply_rule_90() {
entry:
  ret i1 false
}

define i1 @apply_rule_91() {
entry:
  ret i1 true
}

define %block* @apply_rule_92(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK0) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %4 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'UndsSlshUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 0
  store %blockheader { i64 281487861612591 }, %blockheader* %"Lbl'UndsSlshUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp"
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 2
  store %block* %VarK0, %block** %5
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 3
  store %block* %VarHOLE, %block** %6
  %7 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %4 to %block*
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %7, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %11
  %12 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %12, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %14, %block** %15
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %17
}

define %mpz* @apply_rule_93(%mpz* %VarI, %mpz* %VarIDX, %mpz* %VarLEN) {
entry:
  %0 = call %mpz* @hook_INT_shr(%mpz* %VarI, %mpz* %VarIDX)
  %1 = call %mpz* @hook_INT_shl(%mpz* @int_1, %mpz* %VarLEN)
  %2 = call %mpz* @hook_INT_emod(%mpz* %0, %mpz* %1)
  ret %mpz* %2
}

declare %mpz* @hook_INT_shr(%mpz*, %mpz*)

define i1 @apply_rule_94() {
entry:
  ret i1 true
}

define i1 @apply_rule_95() {
entry:
  ret i1 true
}

define i1 @apply_rule_96() {
entry:
  ret i1 true
}

define i1 @apply_rule_97() {
entry:
  ret i1 true
}

define i1 @apply_rule_98() {
entry:
  ret i1 false
}

define i1 @apply_rule_99(i1 %VarK) {
entry:
  ret i1 %VarK
}

define %block* @apply_rule_100(%block* %VarDotVar0, %block* %VarDotVar1, i1 %VarT) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], i1 }* getelementptr ({ %blockheader, [0 x i64], i1 }, { %blockheader, [0 x i64], i1 }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], i1 }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], i1 }, { %blockheader, [0 x i64], i1 }* %3, i64 0, i32 0
  store %blockheader { i64 3940658263883876 }, %blockheader* %inj
  %hook_BOOL_not = xor i1 %VarT, true
  %4 = getelementptr inbounds { %blockheader, [0 x i64], i1 }, { %blockheader, [0 x i64], i1 }* %3, i64 0, i32 2
  store i1 %hook_BOOL_not, i1* %4
  %5 = bitcast { %blockheader, [0 x i64], i1 }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %7
  %8 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %8, %block** %9
  %10 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %10, %block** %11
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %13
}

define %block* @apply_rule_101(%map %VarInit) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %0, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %1 = alloca %map
  store %map %VarInit, %map* %1
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %2, i64 0, i32 0
  store %blockheader { i64 562958543356017 }, %blockheader* %inj
  %3 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %2, i64 0, i32 2
  store %block* bitcast ({ %blockheader, [4 x i8] }* @"token_$PGM" to %block*), %block** %3
  %4 = bitcast { %blockheader, [0 x i64], %block* }* %2 to %block*
  %5 = call %block* @hook_MAP_lookup(%map* %1, %block* %4)
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %0, i64 0, i32 2
  store %block* %5, %block** %6
  %7 = bitcast { %blockheader, [0 x i64], %block* }* %0 to %block*
  ret %block* %7
}

declare %block* @hook_MAP_lookup(%map*, %block*)

define i1 @apply_rule_102() {
entry:
  ret i1 true
}

define i1 @apply_rule_103() {
entry:
  ret i1 true
}

define i1 @apply_rule_104() {
entry:
  ret i1 true
}

define %block* @apply_rule_105() {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %map }* getelementptr ({ %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %map }*
  %"Lbl'-LT-'state'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* %0, i64 0, i32 0
  store %blockheader { i64 844442110001154 }, %blockheader* %"Lbl'-LT-'state'-GT-'"
  %1 = call %map @hook_MAP_unit()
  %2 = getelementptr inbounds { %blockheader, [0 x i64], %map }, { %blockheader, [0 x i64], %map }* %0, i64 0, i32 2
  store %map %1, %map* %2
  %3 = bitcast { %blockheader, [0 x i64], %map }* %0 to %block*
  ret %block* %3
}

declare %map @hook_MAP_unit()

define i1 @apply_rule_106() {
entry:
  ret i1 true
}

define i1 @apply_rule_107() {
entry:
  ret i1 true
}

define %block* @apply_rule_108(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarS) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543356006 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarS, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %7
  %8 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %8, %block** %9
  %10 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %10, %block** %11
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %13
}

define i1 @apply_rule_109() {
entry:
  ret i1 true
}

define i1 @apply_rule_110(i1 %VarB) {
entry:
  ret i1 %VarB
}

define %block* @apply_rule_111(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK0) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355998 }, %blockheader* %inj
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %4 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'Unds-LT-EqlsUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 0
  store %blockheader { i64 281487861612578 }, %blockheader* %"Lbl'Unds-LT-EqlsUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp"
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 2
  store %block* %VarK0, %block** %5
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 3
  store %block* %VarHOLE, %block** %6
  %7 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %4 to %block*
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %7, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %11
  %12 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %12, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %14, %block** %15
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %17
}

define i1 @apply_rule_112() {
entry:
  ret i1 false
}

define i1 @apply_rule_113() {
entry:
  ret i1 true
}

define i1 @apply_rule_114() {
entry:
  ret i1 true
}

define i1 @apply_rule_115() {
entry:
  ret i1 true
}

define %block* @apply_rule_116(%block* %VarDotVar0, %block* %VarDotVar1, %mpz* %VarI1, %mpz* %VarI2) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %mpz* }* getelementptr ({ %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %mpz* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* %3, i64 0, i32 0
  store %blockheader { i64 2533283380330595 }, %blockheader* %inj
  %4 = call %mpz* @hook_INT_tdiv(%mpz* %VarI1, %mpz* %VarI2)
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* %3, i64 0, i32 2
  store %mpz* %4, %mpz** %5
  %6 = bitcast { %blockheader, [0 x i64], %mpz* }* %3 to %block*
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %6, %block** %7
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %14
}

define i1 @apply_rule_117(%mpz* %VarI1, %mpz* %VarI2) {
entry:
  %0 = call i1 @hook_INT_eq(%mpz* %VarI1, %mpz* %VarI2)
  %hook_BOOL_not = xor i1 %0, true
  ret i1 %hook_BOOL_not
}

define i1 @apply_rule_118() {
entry:
  ret i1 false
}

define i1 @apply_rule_119() {
entry:
  ret i1 true
}

define i1 @apply_rule_120() {
entry:
  ret i1 false
}

define i1 @apply_rule_121(i1 %VarB) {
entry:
  ret i1 %VarB
}

define i1 @apply_rule_122(i1 %VarB) {
entry:
  %hook_BOOL_not = xor i1 %VarB, true
  ret i1 %hook_BOOL_not
}

define %block* @apply_rule_123(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarS) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543356006 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarS, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %7
  %8 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %8, %block** %9
  %10 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %10, %block** %11
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %13
}

define %mpz* @apply_rule_124(%mpz* %VarI2) {
entry:
  ret %mpz* %VarI2
}

define %block* @apply_rule_125(%block* %VarDotVar0, %block* %VarDotVar1, %mpz* %VarI1, %mpz* %VarI2) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], i1 }* getelementptr ({ %blockheader, [0 x i64], i1 }, { %blockheader, [0 x i64], i1 }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], i1 }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], i1 }, { %blockheader, [0 x i64], i1 }* %3, i64 0, i32 0
  store %blockheader { i64 3940658263883876 }, %blockheader* %inj
  %4 = call i1 @hook_INT_le(%mpz* %VarI1, %mpz* %VarI2)
  %5 = getelementptr inbounds { %blockheader, [0 x i64], i1 }, { %blockheader, [0 x i64], i1 }* %3, i64 0, i32 2
  store i1 %4, i1* %5
  %6 = bitcast { %blockheader, [0 x i64], i1 }* %3 to %block*
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %6, %block** %7
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %14
}

declare i1 @hook_INT_le(%mpz*, %mpz*)

define i1 @apply_rule_126() {
entry:
  ret i1 false
}

define %block* @apply_rule_127(%block* %VarDotVar0, %block* %VarDotVar1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %2 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %VarDotVar1, %block** %2
  %3 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %3, %block** %4
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %5
  %6 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %6
}

define i1 @apply_rule_128() {
entry:
  ret i1 true
}

define i1 @apply_rule_129() {
entry:
  ret i1 false
}

define i1 @apply_rule_130() {
entry:
  ret i1 true
}

define %block* @apply_rule_131(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK0) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarHOLE, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq5
  %malloccall6 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %8 = bitcast i8* %malloccall6 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'Hash'freezer'UndsPlusUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp0'Unds'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 0
  store %blockheader { i64 562958543355913 }, %blockheader* %"Lbl'Hash'freezer'UndsPlusUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp0'Unds'"
  %malloccall7 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %9 = bitcast i8* %malloccall7 to { %blockheader, [0 x i64], %block* }*
  %inj8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj8
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 2
  store %block* %VarK0, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %9 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block* }* %8 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %13, %block** %14
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %VarDotVar1, %block** %15
  %16 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %17 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %16, %block** %17
  %18 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %19 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %18, %block** %19
  %20 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %21 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %20, %block** %21
  %22 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %22
  %23 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %23
}

define %block* @apply_rule_132(%map %VarInit) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %1 = alloca %map
  store %map %VarInit, %map* %1
  %2 = call %block* @"eval_LblinitKCell{SortMap{}}"(%map* %1)
  %3 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %2, %block** %3
  %4 = call %block* @"eval_LblinitStateCell{}"()
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %4, %block** %5
  %6 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %6
}

declare %block* @"eval_LblinitKCell{SortMap{}}"(%map*)

declare %block* @"eval_LblinitStateCell{}"()

define i1 @apply_rule_133() {
entry:
  ret i1 true
}

define i1 @apply_rule_134() {
entry:
  ret i1 true
}

define %block* @apply_rule_135(%block* %VarB1) {
entry:
  ret %block* %VarB1
}

define i1 @apply_rule_136() {
entry:
  ret i1 true
}

define i1 @apply_rule_137() {
entry:
  ret i1 true
}

define i1 @apply_rule_138() {
entry:
  ret i1 true
}

define i1 @apply_rule_139() {
entry:
  ret i1 false
}

define i1 @apply_rule_140() {
entry:
  ret i1 true
}

define i1 @apply_rule_141() {
entry:
  ret i1 true
}

define i1 @apply_rule_142() {
entry:
  ret i1 true
}

define i1 @apply_rule_143(i1 %VarB) {
entry:
  ret i1 %VarB
}

define %block* @apply_rule_144(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK0) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %4 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'UndsPlusUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 0
  store %blockheader { i64 281487861612589 }, %blockheader* %"Lbl'UndsPlusUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp"
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 2
  store %block* %VarK0, %block** %5
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 3
  store %block* %VarHOLE, %block** %6
  %7 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %4 to %block*
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %7, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %11
  %12 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %12, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %14, %block** %15
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %17
}

define i1 @apply_rule_145() {
entry:
  ret i1 true
}

define %block* @apply_rule_146(%block* %VarDotVar0, %block* %VarDotVar1, %mpz* %VarI1, %mpz* %VarI2) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %mpz* }* getelementptr ({ %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %mpz* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* %3, i64 0, i32 0
  store %blockheader { i64 2533283380330595 }, %blockheader* %inj
  %4 = call %mpz* @hook_INT_add(%mpz* %VarI1, %mpz* %VarI2)
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %mpz* }, { %blockheader, [0 x i64], %mpz* }* %3, i64 0, i32 2
  store %mpz* %4, %mpz** %5
  %6 = bitcast { %blockheader, [0 x i64], %mpz* }* %3 to %block*
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %6, %block** %7
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %14
}

define i1 @apply_rule_147() {
entry:
  ret i1 false
}

define i1 @apply_rule_148() {
entry:
  ret i1 false
}

define i1 @apply_rule_149() {
entry:
  ret i1 true
}

define i1 @apply_rule_150() {
entry:
  ret i1 false
}

define i1 @apply_rule_151(i1 %VarK) {
entry:
  ret i1 %VarK
}

define %block* @apply_rule_152(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarS) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543356007 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarS, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %7 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %7
  %8 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %9 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %8, %block** %9
  %10 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %10, %block** %11
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %13
}

define i1 @apply_rule_153() {
entry:
  ret i1 true
}

define i1 @apply_rule_154(i1 %VarB) {
entry:
  ret i1 %VarB
}

define %block* @apply_rule_155(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355998 }, %blockheader* %inj
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %4 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'UndsAndAndUndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'BExp" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 0
  store %blockheader { i64 281487861612579 }, %blockheader* %"Lbl'UndsAndAndUndsUnds'IMP-SYNTAX'UndsUnds'BExp'Unds'BExp"
  %5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 2
  store %block* %VarHOLE, %block** %5
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %4, i64 0, i32 3
  store %block* %VarK1, %block** %6
  %7 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %4 to %block*
  %8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %7, %block** %8
  %9 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %9, %block** %10
  %11 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %VarDotVar1, %block** %11
  %12 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %13 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %12, %block** %13
  %14 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %14, %block** %15
  %16 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %16
  %17 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %17
}

define %block* @apply_rule_156(%block* %VarDotVar0, %block* %VarDotVar1, %block* %VarHOLE, %block* %VarK1) {
entry:
  %malloccall = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %0 = bitcast i8* %malloccall to { %blockheader, [0 x i64], %block*, %block* }*
  %"Lbl'-LT-'T'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 0
  store %blockheader { i64 281487861612544 }, %blockheader* %"Lbl'-LT-'T'-GT-'"
  %malloccall1 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %1 = bitcast i8* %malloccall1 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'-LT-'k'-GT-'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 0
  store %blockheader { i64 562958543355905 }, %blockheader* %"Lbl'-LT-'k'-GT-'"
  %malloccall2 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %2 = bitcast i8* %malloccall2 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq
  %malloccall3 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %3 = bitcast i8* %malloccall3 to { %blockheader, [0 x i64], %block* }*
  %inj = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj
  %4 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %3, i64 0, i32 2
  store %block* %VarHOLE, %block** %4
  %5 = bitcast { %blockheader, [0 x i64], %block* }* %3 to %block*
  %6 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 2
  store %block* %5, %block** %6
  %malloccall4 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block*, %block* }* getelementptr ({ %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* null, i32 1) to i64))
  %7 = bitcast i8* %malloccall4 to { %blockheader, [0 x i64], %block*, %block* }*
  %kseq5 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 0
  store %blockheader { i64 281487861612658 }, %blockheader* %kseq5
  %malloccall6 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %8 = bitcast i8* %malloccall6 to { %blockheader, [0 x i64], %block* }*
  %"Lbl'Hash'freezer'UndsSlshUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp1'Unds'" = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 0
  store %blockheader { i64 562958543355916 }, %blockheader* %"Lbl'Hash'freezer'UndsSlshUndsUnds'IMP-SYNTAX'UndsUnds'AExp'Unds'AExp1'Unds'"
  %malloccall7 = tail call i8* @malloc(i64 ptrtoint ({ %blockheader, [0 x i64], %block* }* getelementptr ({ %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* null, i32 1) to i64))
  %9 = bitcast i8* %malloccall7 to { %blockheader, [0 x i64], %block* }*
  %inj8 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 0
  store %blockheader { i64 562958543355995 }, %blockheader* %inj8
  %10 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %9, i64 0, i32 2
  store %block* %VarK1, %block** %10
  %11 = bitcast { %blockheader, [0 x i64], %block* }* %9 to %block*
  %12 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %8, i64 0, i32 2
  store %block* %11, %block** %12
  %13 = bitcast { %blockheader, [0 x i64], %block* }* %8 to %block*
  %14 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 2
  store %block* %13, %block** %14
  %15 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %7, i64 0, i32 3
  store %block* %VarDotVar1, %block** %15
  %16 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %7 to %block*
  %17 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %2, i64 0, i32 3
  store %block* %16, %block** %17
  %18 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %2 to %block*
  %19 = getelementptr inbounds { %blockheader, [0 x i64], %block* }, { %blockheader, [0 x i64], %block* }* %1, i64 0, i32 2
  store %block* %18, %block** %19
  %20 = bitcast { %blockheader, [0 x i64], %block* }* %1 to %block*
  %21 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 2
  store %block* %20, %block** %21
  %22 = getelementptr inbounds { %blockheader, [0 x i64], %block*, %block* }, { %blockheader, [0 x i64], %block*, %block* }* %0, i64 0, i32 3
  store %block* %VarDotVar0, %block** %22
  %23 = bitcast { %blockheader, [0 x i64], %block*, %block* }* %0 to %block*
  ret %block* %23
}

define i1 @apply_rule_157() {
entry:
  ret i1 true
}

define i1 @apply_rule_158(i1 %VarB) {
entry:
  ret i1 %VarB
}
