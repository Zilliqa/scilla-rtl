; (* some helper functions one would hope to find in stdlib *)
; let nat_succ : Nat -> Nat =
; fun (n : Nat) => Succ n
; in
; 
; (* [nat_iter 'A f n] = f^n -- functional power operator *)
; let nat_iter : forall 'A. ('A -> 'A) -> Nat -> ('A -> 'A) =
; tfun 'A =>
; fun (f : 'A -> 'A) =>
; fun (n : Nat) =>
; fun (x0 : 'A) =>
; let folder = @nat_fold 'A in
; let step = fun (x : 'A) => fun (unused : Nat) => f x in
; folder step x0 n
; in
; 
; let ackermann : Nat -> Nat -> Nat =
; let iter_nat = @nat_iter Nat in
; let iter_nat_nat = @nat_iter (Nat -> Nat) in
; let zero = Zero in
; let one = Succ zero in
; let f = fun (ack : Nat -> Nat) =>
; let x0 = ack one in
; fun (n : Nat) => iter_nat ack n x0
; in fun (n : Nat) => iter_nat_nat f n nat_succ
; in
; 
; (* tests *)
; let uintM = Uint32 3 in
; let uintN = Uint32 7 in
; 
; let m = builtin to_nat uintM in
; let n = builtin to_nat uintN in
; 
; let ack00 = ackermann m n in
; let int01 = nat_to_int ack00 in
; int01
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_84" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_106" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_105"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_105" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_107"**, %"$TyDescrTy_ADTTyp_106"* }
%"$TyDescrTy_ADTTyp_Constr_107" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Uint32 = type { i32 }
%Nat = type { i8, %Zero*, %Succ* }
%Zero = type <{ i8 }>
%Succ = type <{ i8, %Nat* }>
%"$$fundef_82_env_122" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { %Nat* (i8*, %Nat*)*, i8* } }
%"$$fundef_80_env_123" = type { { %Nat* (i8*, %Nat*)*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, %Nat* }
%"$$fundef_78_env_124" = type { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, %Nat* }
%"$$fundef_76_env_125" = type { { %Nat* (i8*, %Nat*)*, i8* }, %Nat* }
%"$$fundef_74_env_126" = type { { %Nat* (i8*, %Nat*)*, i8* } }
%"$$fundef_72_env_127" = type { { %Nat* (i8*, %Nat*)*, i8* }, %Nat*, { i8*, i8* }* }
%"$$fundef_70_env_128" = type { { %Nat* (i8*, %Nat*)*, i8* }, { i8*, i8* }* }
%"$$fundef_68_env_129" = type { { i8*, i8* }* }
%"$$fundef_66_env_130" = type { { i8*, i8* }* }
%"$$fundef_64_env_131" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { %Nat* (i8*, %Nat*)*, i8* } }
%"$$fundef_62_env_132" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } }
%"$$fundef_60_env_133" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, %Nat*, { i8*, i8* }* }
%"$$fundef_58_env_134" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { i8*, i8* }* }
%"$$fundef_56_env_135" = type { { i8*, i8* }* }
%"$$fundef_54_env_136" = type { { i8*, i8* }* }
%"$$fundef_52_env_137" = type {}
%"$$fundef_49_env_138" = type { %Uint32, %Uint32 }
%"$$fundef_47_env_139" = type { %Uint32 }
%"$$fundef_45_env_140" = type { { i8*, i8* }* }
%"$$fundef_43_env_141" = type { %Nat*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } }
%"$$fundef_41_env_142" = type { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } }
%"$$fundef_39_env_143" = type {}
%"$$fundef_37_env_144" = type {}
%"$$fundef_35_env_145" = type { { %Nat* (i8*, %Nat*)*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } }
%"$$fundef_33_env_146" = type { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } }
%"$$fundef_31_env_147" = type {}
%"$$fundef_29_env_148" = type {}
%"$$fundef_27_env_149" = type { %Uint32, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_25_env_150" = type { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_23_env_151" = type {}
%"$$fundef_21_env_152" = type {}

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_85" = global %"$TyDescrTy_PrimTyp_84" zeroinitializer
@"$TyDescr_Int32_86" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Int32_Prim_85" to i8*) }
@"$TyDescr_Uint32_Prim_87" = global %"$TyDescrTy_PrimTyp_84" { i32 1, i32 0 }
@"$TyDescr_Uint32_88" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Uint32_Prim_87" to i8*) }
@"$TyDescr_Int64_Prim_89" = global %"$TyDescrTy_PrimTyp_84" { i32 0, i32 1 }
@"$TyDescr_Int64_90" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Int64_Prim_89" to i8*) }
@"$TyDescr_Uint64_Prim_91" = global %"$TyDescrTy_PrimTyp_84" { i32 1, i32 1 }
@"$TyDescr_Uint64_92" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Uint64_Prim_91" to i8*) }
@"$TyDescr_Int128_Prim_93" = global %"$TyDescrTy_PrimTyp_84" { i32 0, i32 2 }
@"$TyDescr_Int128_94" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Int128_Prim_93" to i8*) }
@"$TyDescr_Uint128_Prim_95" = global %"$TyDescrTy_PrimTyp_84" { i32 1, i32 2 }
@"$TyDescr_Uint128_96" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Uint128_Prim_95" to i8*) }
@"$TyDescr_Int256_Prim_97" = global %"$TyDescrTy_PrimTyp_84" { i32 0, i32 3 }
@"$TyDescr_Int256_98" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Int256_Prim_97" to i8*) }
@"$TyDescr_Uint256_Prim_99" = global %"$TyDescrTy_PrimTyp_84" { i32 1, i32 3 }
@"$TyDescr_Uint256_100" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Uint256_Prim_99" to i8*) }
@"$TyDescr_String_Prim_101" = global %"$TyDescrTy_PrimTyp_84" { i32 2, i32 0 }
@"$TyDescr_String_102" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_String_Prim_101" to i8*) }
@"$TyDescr_Bystr_Prim_103" = global %"$TyDescrTy_PrimTyp_84" { i32 7, i32 0 }
@"$TyDescr_Bystr_104" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Bystr_Prim_103" to i8*) }
@"$TyDescr_ADT_Nat_108" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_105"* @"$TyDescr_Nat_ADTTyp_Specl_119" to i8*) }
@"$TyDescr_Nat_ADTTyp_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_106" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_121", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_105"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_105"*], [1 x %"$TyDescrTy_ADTTyp_Specl_105"*]* @"$TyDescr_Nat_ADTTyp_m_specls_120", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_111" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_112" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_107" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_112", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_111", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_114" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_108"]
@"$TyDescr_ADT_Succ_115" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_107" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_115", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_114", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_117" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_107"*] [%"$TyDescrTy_ADTTyp_Constr_107"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_113", %"$TyDescrTy_ADTTyp_Constr_107"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_116"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_118" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_105" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_118", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_107"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_107"*], [2 x %"$TyDescrTy_ADTTyp_Constr_107"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_117", i32 0, i32 0), %"$TyDescrTy_ADTTyp_106"* @"$TyDescr_Nat_ADTTyp_110" }
@"$TyDescr_Nat_ADTTyp_m_specls_120" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_105"*] [%"$TyDescrTy_ADTTyp_Specl_105"* @"$TyDescr_Nat_ADTTyp_Specl_119"]
@"$TyDescr_ADT_Nat_121" = unnamed_addr constant [3 x i8] c"Nat"
@nat_fold = global { i8*, i8* }* null
@nat_to_int = global { %Uint32 (i8*, %Nat*)*, i8* } zeroinitializer

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_82"(%"$$fundef_82_env_122"* %0, %Nat* %1) {
entry:
  %"$$fundef_82_env_f_627" = getelementptr inbounds %"$$fundef_82_env_122", %"$$fundef_82_env_122"* %0, i32 0, i32 0
  %"$f_envload_628" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_82_env_f_627"
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_envload_628", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_82_env_iter_nat_nat_629" = getelementptr inbounds %"$$fundef_82_env_122", %"$$fundef_82_env_122"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_630" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_82_env_iter_nat_nat_629"
  %iter_nat_nat = alloca { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_630", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %"$$fundef_82_env_nat_succ_631" = getelementptr inbounds %"$$fundef_82_env_122", %"$$fundef_82_env_122"* %0, i32 0, i32 2
  %"$nat_succ_envload_632" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_82_env_nat_succ_631"
  %nat_succ = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$nat_succ_envload_632", { %Nat* (i8*, %Nat*)*, i8* }* %nat_succ
  %"$retval_83" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$iter_nat_nat_15" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }
  %"$iter_nat_nat_633" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %"$iter_nat_nat_fptr_634" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_633", 0
  %"$iter_nat_nat_envptr_635" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_633", 1
  %"$f_636" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$iter_nat_nat_call_637" = call { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$iter_nat_nat_fptr_634"(i8* %"$iter_nat_nat_envptr_635", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_636")
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$iter_nat_nat_call_637", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }* %"$iter_nat_nat_15"
  %"$iter_nat_nat_16" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$iter_nat_nat_15_638" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }* %"$iter_nat_nat_15"
  %"$$iter_nat_nat_15_fptr_639" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$$iter_nat_nat_15_638", 0
  %"$$iter_nat_nat_15_envptr_640" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$$iter_nat_nat_15_638", 1
  %"$$iter_nat_nat_15_call_641" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_15_fptr_639"(i8* %"$$iter_nat_nat_15_envptr_640", %Nat* %1)
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_15_call_641", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_16"
  %"$iter_nat_nat_17" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$iter_nat_nat_16_642" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_16"
  %"$$iter_nat_nat_16_fptr_643" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_16_642", 0
  %"$$iter_nat_nat_16_envptr_644" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_16_642", 1
  %"$nat_succ_645" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %nat_succ
  %"$$iter_nat_nat_16_call_646" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_nat_16_fptr_643"(i8* %"$$iter_nat_nat_16_envptr_644", { %Nat* (i8*, %Nat*)*, i8* } %"$nat_succ_645")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_nat_16_call_646", { %Nat* (i8*, %Nat*)*, i8* }* %"$iter_nat_nat_17"
  %"$$iter_nat_nat_17_647" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$iter_nat_nat_17"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_nat_17_647", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_83"
  %"$$retval_83_648" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_83"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_83_648"
}

define internal %Nat* @"$fundef_80"(%"$$fundef_80_env_123"* %0, %Nat* %1) {
entry:
  %"$$fundef_80_env_ack_605" = getelementptr inbounds %"$$fundef_80_env_123", %"$$fundef_80_env_123"* %0, i32 0, i32 0
  %"$ack_envload_606" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_80_env_ack_605"
  %ack = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ack_envload_606", { %Nat* (i8*, %Nat*)*, i8* }* %ack
  %"$$fundef_80_env_iter_nat_607" = getelementptr inbounds %"$$fundef_80_env_123", %"$$fundef_80_env_123"* %0, i32 0, i32 1
  %"$iter_nat_envload_608" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_80_env_iter_nat_607"
  %iter_nat = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_envload_608", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  %"$$fundef_80_env_x0_609" = getelementptr inbounds %"$$fundef_80_env_123", %"$$fundef_80_env_123"* %0, i32 0, i32 2
  %"$x0_envload_610" = load %Nat*, %Nat** %"$$fundef_80_env_x0_609"
  %x0 = alloca %Nat*
  store %Nat* %"$x0_envload_610", %Nat** %x0
  %"$retval_81" = alloca %Nat*
  %"$iter_nat_12" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$iter_nat_611" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  %"$iter_nat_fptr_612" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_611", 0
  %"$iter_nat_envptr_613" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_611", 1
  %"$ack_614" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %ack
  %"$iter_nat_call_615" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$iter_nat_fptr_612"(i8* %"$iter_nat_envptr_613", { %Nat* (i8*, %Nat*)*, i8* } %"$ack_614")
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$iter_nat_call_615", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$iter_nat_12"
  %"$iter_nat_13" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$iter_nat_12_616" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$iter_nat_12"
  %"$$iter_nat_12_fptr_617" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$iter_nat_12_616", 0
  %"$$iter_nat_12_envptr_618" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$iter_nat_12_616", 1
  %"$$iter_nat_12_call_619" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_12_fptr_617"(i8* %"$$iter_nat_12_envptr_618", %Nat* %1)
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_12_call_619", { %Nat* (i8*, %Nat*)*, i8* }* %"$iter_nat_13"
  %"$iter_nat_14" = alloca %Nat*
  %"$$iter_nat_13_620" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$iter_nat_13"
  %"$$iter_nat_13_fptr_621" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_13_620", 0
  %"$$iter_nat_13_envptr_622" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$iter_nat_13_620", 1
  %"$x0_623" = load %Nat*, %Nat** %x0
  %"$$iter_nat_13_call_624" = call %Nat* %"$$iter_nat_13_fptr_621"(i8* %"$$iter_nat_13_envptr_622", %Nat* %"$x0_623")
  store %Nat* %"$$iter_nat_13_call_624", %Nat** %"$iter_nat_14"
  %"$$iter_nat_14_625" = load %Nat*, %Nat** %"$iter_nat_14"
  store %Nat* %"$$iter_nat_14_625", %Nat** %"$retval_81"
  %"$$retval_81_626" = load %Nat*, %Nat** %"$retval_81"
  ret %Nat* %"$$retval_81_626"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_78"(%"$$fundef_78_env_124"* %0, { %Nat* (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$$fundef_78_env_iter_nat_586" = getelementptr inbounds %"$$fundef_78_env_124", %"$$fundef_78_env_124"* %0, i32 0, i32 0
  %"$iter_nat_envload_587" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_78_env_iter_nat_586"
  %iter_nat = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_envload_587", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  %"$$fundef_78_env_one_588" = getelementptr inbounds %"$$fundef_78_env_124", %"$$fundef_78_env_124"* %0, i32 0, i32 1
  %"$one_envload_589" = load %Nat*, %Nat** %"$$fundef_78_env_one_588"
  %one = alloca %Nat*
  store %Nat* %"$one_envload_589", %Nat** %one
  %"$retval_79" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %x0 = alloca %Nat*
  %"$ack_11" = alloca %Nat*
  %"$ack_fptr_590" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %1, 0
  %"$ack_envptr_591" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %1, 1
  %"$one_592" = load %Nat*, %Nat** %one
  %"$ack_call_593" = call %Nat* %"$ack_fptr_590"(i8* %"$ack_envptr_591", %Nat* %"$one_592")
  store %Nat* %"$ack_call_593", %Nat** %"$ack_11"
  %"$$ack_11_594" = load %Nat*, %Nat** %"$ack_11"
  store %Nat* %"$$ack_11_594", %Nat** %x0
  %"$$fundef_80_envp_595_load" = load i8*, i8** @_execptr
  %"$$fundef_80_envp_595_salloc" = call i8* @_salloc(i8* %"$$fundef_80_envp_595_load", i64 40)
  %"$$fundef_80_envp_595" = bitcast i8* %"$$fundef_80_envp_595_salloc" to %"$$fundef_80_env_123"*
  %"$$fundef_80_env_voidp_597" = bitcast %"$$fundef_80_env_123"* %"$$fundef_80_envp_595" to i8*
  %"$$fundef_80_cloval_598" = insertvalue { %Nat* (i8*, %Nat*)*, i8* } { %Nat* (i8*, %Nat*)* bitcast (%Nat* (%"$$fundef_80_env_123"*, %Nat*)* @"$fundef_80" to %Nat* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_80_env_voidp_597", 1
  %"$$fundef_80_env_ack_599" = getelementptr inbounds %"$$fundef_80_env_123", %"$$fundef_80_env_123"* %"$$fundef_80_envp_595", i32 0, i32 0
  store { %Nat* (i8*, %Nat*)*, i8* } %1, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_80_env_ack_599"
  %"$$fundef_80_env_iter_nat_600" = getelementptr inbounds %"$$fundef_80_env_123", %"$$fundef_80_env_123"* %"$$fundef_80_envp_595", i32 0, i32 1
  %"$iter_nat_601" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_601", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_80_env_iter_nat_600"
  %"$$fundef_80_env_x0_602" = getelementptr inbounds %"$$fundef_80_env_123", %"$$fundef_80_env_123"* %"$$fundef_80_envp_595", i32 0, i32 2
  %"$x0_603" = load %Nat*, %Nat** %x0
  store %Nat* %"$x0_603", %Nat** %"$$fundef_80_env_x0_602"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fundef_80_cloval_598", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_79"
  %"$$retval_79_604" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_79"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_79_604"
}

define internal %Nat* @"$fundef_76"(%"$$fundef_76_env_125"* %0, %Nat* %1) {
entry:
  %"$$fundef_76_env_f_575" = getelementptr inbounds %"$$fundef_76_env_125", %"$$fundef_76_env_125"* %0, i32 0, i32 0
  %"$f_envload_576" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_76_env_f_575"
  %f = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_envload_576", { %Nat* (i8*, %Nat*)*, i8* }* %f
  %"$$fundef_76_env_x_577" = getelementptr inbounds %"$$fundef_76_env_125", %"$$fundef_76_env_125"* %0, i32 0, i32 1
  %"$x_envload_578" = load %Nat*, %Nat** %"$$fundef_76_env_x_577"
  %x = alloca %Nat*
  store %Nat* %"$x_envload_578", %Nat** %x
  %"$retval_77" = alloca %Nat*
  %"$f_7" = alloca %Nat*
  %"$f_579" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f
  %"$f_fptr_580" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$f_579", 0
  %"$f_envptr_581" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$f_579", 1
  %"$x_582" = load %Nat*, %Nat** %x
  %"$f_call_583" = call %Nat* %"$f_fptr_580"(i8* %"$f_envptr_581", %Nat* %"$x_582")
  store %Nat* %"$f_call_583", %Nat** %"$f_7"
  %"$$f_7_584" = load %Nat*, %Nat** %"$f_7"
  store %Nat* %"$$f_7_584", %Nat** %"$retval_77"
  %"$$retval_77_585" = load %Nat*, %Nat** %"$retval_77"
  ret %Nat* %"$$retval_77_585"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_74"(%"$$fundef_74_env_126"* %0, %Nat* %1) {
entry:
  %"$$fundef_74_env_f_565" = getelementptr inbounds %"$$fundef_74_env_126", %"$$fundef_74_env_126"* %0, i32 0, i32 0
  %"$f_envload_566" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_74_env_f_565"
  %f = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_envload_566", { %Nat* (i8*, %Nat*)*, i8* }* %f
  %"$retval_75" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$fundef_76_envp_567_load" = load i8*, i8** @_execptr
  %"$$fundef_76_envp_567_salloc" = call i8* @_salloc(i8* %"$$fundef_76_envp_567_load", i64 24)
  %"$$fundef_76_envp_567" = bitcast i8* %"$$fundef_76_envp_567_salloc" to %"$$fundef_76_env_125"*
  %"$$fundef_76_env_voidp_569" = bitcast %"$$fundef_76_env_125"* %"$$fundef_76_envp_567" to i8*
  %"$$fundef_76_cloval_570" = insertvalue { %Nat* (i8*, %Nat*)*, i8* } { %Nat* (i8*, %Nat*)* bitcast (%Nat* (%"$$fundef_76_env_125"*, %Nat*)* @"$fundef_76" to %Nat* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_76_env_voidp_569", 1
  %"$$fundef_76_env_f_571" = getelementptr inbounds %"$$fundef_76_env_125", %"$$fundef_76_env_125"* %"$$fundef_76_envp_567", i32 0, i32 0
  %"$f_572" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_572", { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_76_env_f_571"
  %"$$fundef_76_env_x_573" = getelementptr inbounds %"$$fundef_76_env_125", %"$$fundef_76_env_125"* %"$$fundef_76_envp_567", i32 0, i32 1
  store %Nat* %1, %Nat** %"$$fundef_76_env_x_573"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fundef_76_cloval_570", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_75"
  %"$$retval_75_574" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_75"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_75_574"
}

define internal %Nat* @"$fundef_72"(%"$$fundef_72_env_127"* %0, %Nat* %1) {
entry:
  %"$$fundef_72_env_f_530" = getelementptr inbounds %"$$fundef_72_env_127", %"$$fundef_72_env_127"* %0, i32 0, i32 0
  %"$f_envload_531" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_72_env_f_530"
  %f = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_envload_531", { %Nat* (i8*, %Nat*)*, i8* }* %f
  %"$$fundef_72_env_n_532" = getelementptr inbounds %"$$fundef_72_env_127", %"$$fundef_72_env_127"* %0, i32 0, i32 1
  %"$n_envload_533" = load %Nat*, %Nat** %"$$fundef_72_env_n_532"
  %n = alloca %Nat*
  store %Nat* %"$n_envload_533", %Nat** %n
  %"$$fundef_72_env_nat_fold_534" = getelementptr inbounds %"$$fundef_72_env_127", %"$$fundef_72_env_127"* %0, i32 0, i32 2
  %"$nat_fold_envload_535" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_72_env_nat_fold_534"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_535", { i8*, i8* }** %nat_fold
  %"$retval_73" = alloca %Nat*
  %folder = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }
  %"$nat_fold_536" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_537" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_536", i32 2
  %"$nat_fold_538" = bitcast { i8*, i8* }* %"$nat_fold_537" to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_539" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_538"
  %"$nat_fold_fptr_540" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_539", 0
  %"$nat_fold_envptr_541" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_539", 1
  %"$nat_fold_call_542" = call { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_540"(i8* %"$nat_fold_envptr_541")
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } %"$nat_fold_call_542", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }* %folder
  %step = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_74_envp_543_load" = load i8*, i8** @_execptr
  %"$$fundef_74_envp_543_salloc" = call i8* @_salloc(i8* %"$$fundef_74_envp_543_load", i64 16)
  %"$$fundef_74_envp_543" = bitcast i8* %"$$fundef_74_envp_543_salloc" to %"$$fundef_74_env_126"*
  %"$$fundef_74_env_voidp_545" = bitcast %"$$fundef_74_env_126"* %"$$fundef_74_envp_543" to i8*
  %"$$fundef_74_cloval_546" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_74_env_126"*, %Nat*)* @"$fundef_74" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_74_env_voidp_545", 1
  %"$$fundef_74_env_f_547" = getelementptr inbounds %"$$fundef_74_env_126", %"$$fundef_74_env_126"* %"$$fundef_74_envp_543", i32 0, i32 0
  %"$f_548" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_548", { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_74_env_f_547"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_74_cloval_546", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %step
  %"$folder_8" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$folder_549" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }* %folder
  %"$folder_fptr_550" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } %"$folder_549", 0
  %"$folder_envptr_551" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } %"$folder_549", 1
  %"$step_552" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %step
  %"$folder_call_553" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$folder_fptr_550"(i8* %"$folder_envptr_551", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$step_552")
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$folder_call_553", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$folder_8"
  %"$folder_9" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$folder_8_554" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$folder_8"
  %"$$folder_8_fptr_555" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_8_554", 0
  %"$$folder_8_envptr_556" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_8_554", 1
  %"$$folder_8_call_557" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_8_fptr_555"(i8* %"$$folder_8_envptr_556", %Nat* %1)
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_8_call_557", { %Nat* (i8*, %Nat*)*, i8* }* %"$folder_9"
  %"$folder_10" = alloca %Nat*
  %"$$folder_9_558" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$folder_9"
  %"$$folder_9_fptr_559" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_9_558", 0
  %"$$folder_9_envptr_560" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_9_558", 1
  %"$n_561" = load %Nat*, %Nat** %n
  %"$$folder_9_call_562" = call %Nat* %"$$folder_9_fptr_559"(i8* %"$$folder_9_envptr_560", %Nat* %"$n_561")
  store %Nat* %"$$folder_9_call_562", %Nat** %"$folder_10"
  %"$$folder_10_563" = load %Nat*, %Nat** %"$folder_10"
  store %Nat* %"$$folder_10_563", %Nat** %"$retval_73"
  %"$$retval_73_564" = load %Nat*, %Nat** %"$retval_73"
  ret %Nat* %"$$retval_73_564"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_70"(%"$$fundef_70_env_128"* %0, %Nat* %1) {
entry:
  %"$$fundef_70_env_f_516" = getelementptr inbounds %"$$fundef_70_env_128", %"$$fundef_70_env_128"* %0, i32 0, i32 0
  %"$f_envload_517" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_70_env_f_516"
  %f = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_envload_517", { %Nat* (i8*, %Nat*)*, i8* }* %f
  %"$$fundef_70_env_nat_fold_518" = getelementptr inbounds %"$$fundef_70_env_128", %"$$fundef_70_env_128"* %0, i32 0, i32 1
  %"$nat_fold_envload_519" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_70_env_nat_fold_518"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_519", { i8*, i8* }** %nat_fold
  %"$retval_71" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$fundef_72_envp_520_load" = load i8*, i8** @_execptr
  %"$$fundef_72_envp_520_salloc" = call i8* @_salloc(i8* %"$$fundef_72_envp_520_load", i64 32)
  %"$$fundef_72_envp_520" = bitcast i8* %"$$fundef_72_envp_520_salloc" to %"$$fundef_72_env_127"*
  %"$$fundef_72_env_voidp_522" = bitcast %"$$fundef_72_env_127"* %"$$fundef_72_envp_520" to i8*
  %"$$fundef_72_cloval_523" = insertvalue { %Nat* (i8*, %Nat*)*, i8* } { %Nat* (i8*, %Nat*)* bitcast (%Nat* (%"$$fundef_72_env_127"*, %Nat*)* @"$fundef_72" to %Nat* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_72_env_voidp_522", 1
  %"$$fundef_72_env_f_524" = getelementptr inbounds %"$$fundef_72_env_127", %"$$fundef_72_env_127"* %"$$fundef_72_envp_520", i32 0, i32 0
  %"$f_525" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_525", { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_72_env_f_524"
  %"$$fundef_72_env_n_526" = getelementptr inbounds %"$$fundef_72_env_127", %"$$fundef_72_env_127"* %"$$fundef_72_envp_520", i32 0, i32 1
  store %Nat* %1, %Nat** %"$$fundef_72_env_n_526"
  %"$$fundef_72_env_nat_fold_527" = getelementptr inbounds %"$$fundef_72_env_127", %"$$fundef_72_env_127"* %"$$fundef_72_envp_520", i32 0, i32 2
  %"$nat_fold_528" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_528", { i8*, i8* }** %"$$fundef_72_env_nat_fold_527"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fundef_72_cloval_523", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_71"
  %"$$retval_71_529" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_71"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_71_529"
}

define internal { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } @"$fundef_68"(%"$$fundef_68_env_129"* %0, { %Nat* (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$$fundef_68_env_nat_fold_506" = getelementptr inbounds %"$$fundef_68_env_129", %"$$fundef_68_env_129"* %0, i32 0, i32 0
  %"$nat_fold_envload_507" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_68_env_nat_fold_506"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_507", { i8*, i8* }** %nat_fold
  %"$retval_69" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_70_envp_508_load" = load i8*, i8** @_execptr
  %"$$fundef_70_envp_508_salloc" = call i8* @_salloc(i8* %"$$fundef_70_envp_508_load", i64 24)
  %"$$fundef_70_envp_508" = bitcast i8* %"$$fundef_70_envp_508_salloc" to %"$$fundef_70_env_128"*
  %"$$fundef_70_env_voidp_510" = bitcast %"$$fundef_70_env_128"* %"$$fundef_70_envp_508" to i8*
  %"$$fundef_70_cloval_511" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_70_env_128"*, %Nat*)* @"$fundef_70" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_70_env_voidp_510", 1
  %"$$fundef_70_env_f_512" = getelementptr inbounds %"$$fundef_70_env_128", %"$$fundef_70_env_128"* %"$$fundef_70_envp_508", i32 0, i32 0
  store { %Nat* (i8*, %Nat*)*, i8* } %1, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_70_env_f_512"
  %"$$fundef_70_env_nat_fold_513" = getelementptr inbounds %"$$fundef_70_env_128", %"$$fundef_70_env_128"* %"$$fundef_70_envp_508", i32 0, i32 1
  %"$nat_fold_514" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_514", { i8*, i8* }** %"$$fundef_70_env_nat_fold_513"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_70_cloval_511", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_69"
  %"$$retval_69_515" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_69"
  ret { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$retval_69_515"
}

define internal { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } @"$fundef_66"(%"$$fundef_66_env_130"* %0) {
entry:
  %"$$fundef_66_env_nat_fold_497" = getelementptr inbounds %"$$fundef_66_env_130", %"$$fundef_66_env_130"* %0, i32 0, i32 0
  %"$nat_fold_envload_498" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_66_env_nat_fold_497"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_498", { i8*, i8* }** %nat_fold
  %"$retval_67" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$fundef_68_envp_499_load" = load i8*, i8** @_execptr
  %"$$fundef_68_envp_499_salloc" = call i8* @_salloc(i8* %"$$fundef_68_envp_499_load", i64 8)
  %"$$fundef_68_envp_499" = bitcast i8* %"$$fundef_68_envp_499_salloc" to %"$$fundef_68_env_129"*
  %"$$fundef_68_env_voidp_501" = bitcast %"$$fundef_68_env_129"* %"$$fundef_68_envp_499" to i8*
  %"$$fundef_68_cloval_502" = insertvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })* bitcast ({ { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (%"$$fundef_68_env_129"*, { %Nat* (i8*, %Nat*)*, i8* })* @"$fundef_68" to { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_68_env_voidp_501", 1
  %"$$fundef_68_env_nat_fold_503" = getelementptr inbounds %"$$fundef_68_env_129", %"$$fundef_68_env_129"* %"$$fundef_68_envp_499", i32 0, i32 0
  %"$nat_fold_504" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_504", { i8*, i8* }** %"$$fundef_68_env_nat_fold_503"
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$fundef_68_cloval_502", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_67"
  %"$$retval_67_505" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_67"
  ret { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$retval_67_505"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_64"(%"$$fundef_64_env_131"* %0, %Nat* %1) {
entry:
  %"$$fundef_64_env_f_486" = getelementptr inbounds %"$$fundef_64_env_131", %"$$fundef_64_env_131"* %0, i32 0, i32 0
  %"$f_envload_487" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_64_env_f_486"
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_envload_487", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_64_env_x_488" = getelementptr inbounds %"$$fundef_64_env_131", %"$$fundef_64_env_131"* %0, i32 0, i32 1
  %"$x_envload_489" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_64_env_x_488"
  %x = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$x_envload_489", { %Nat* (i8*, %Nat*)*, i8* }* %x
  %"$retval_65" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$f_7" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$f_490" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$f_fptr_491" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_490", 0
  %"$f_envptr_492" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_490", 1
  %"$x_493" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %x
  %"$f_call_494" = call { %Nat* (i8*, %Nat*)*, i8* } %"$f_fptr_491"(i8* %"$f_envptr_492", { %Nat* (i8*, %Nat*)*, i8* } %"$x_493")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f_call_494", { %Nat* (i8*, %Nat*)*, i8* }* %"$f_7"
  %"$$f_7_495" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$f_7"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$f_7_495", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_65"
  %"$$retval_65_496" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_65"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_65_496"
}

define internal { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } @"$fundef_62"(%"$$fundef_62_env_132"* %0, { %Nat* (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$$fundef_62_env_f_476" = getelementptr inbounds %"$$fundef_62_env_132", %"$$fundef_62_env_132"* %0, i32 0, i32 0
  %"$f_envload_477" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_62_env_f_476"
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_envload_477", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$retval_63" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_64_envp_478_load" = load i8*, i8** @_execptr
  %"$$fundef_64_envp_478_salloc" = call i8* @_salloc(i8* %"$$fundef_64_envp_478_load", i64 32)
  %"$$fundef_64_envp_478" = bitcast i8* %"$$fundef_64_envp_478_salloc" to %"$$fundef_64_env_131"*
  %"$$fundef_64_env_voidp_480" = bitcast %"$$fundef_64_env_131"* %"$$fundef_64_envp_478" to i8*
  %"$$fundef_64_cloval_481" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_64_env_131"*, %Nat*)* @"$fundef_64" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_64_env_voidp_480", 1
  %"$$fundef_64_env_f_482" = getelementptr inbounds %"$$fundef_64_env_131", %"$$fundef_64_env_131"* %"$$fundef_64_envp_478", i32 0, i32 0
  %"$f_483" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_483", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_64_env_f_482"
  %"$$fundef_64_env_x_484" = getelementptr inbounds %"$$fundef_64_env_131", %"$$fundef_64_env_131"* %"$$fundef_64_envp_478", i32 0, i32 1
  store { %Nat* (i8*, %Nat*)*, i8* } %1, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_64_env_x_484"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_64_cloval_481", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_63"
  %"$$retval_63_485" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_63"
  ret { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$retval_63_485"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_60"(%"$$fundef_60_env_133"* %0, { %Nat* (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$$fundef_60_env_f_441" = getelementptr inbounds %"$$fundef_60_env_133", %"$$fundef_60_env_133"* %0, i32 0, i32 0
  %"$f_envload_442" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_60_env_f_441"
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_envload_442", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_60_env_n_443" = getelementptr inbounds %"$$fundef_60_env_133", %"$$fundef_60_env_133"* %0, i32 0, i32 1
  %"$n_envload_444" = load %Nat*, %Nat** %"$$fundef_60_env_n_443"
  %n = alloca %Nat*
  store %Nat* %"$n_envload_444", %Nat** %n
  %"$$fundef_60_env_nat_fold_445" = getelementptr inbounds %"$$fundef_60_env_133", %"$$fundef_60_env_133"* %0, i32 0, i32 2
  %"$nat_fold_envload_446" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_60_env_nat_fold_445"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_446", { i8*, i8* }** %nat_fold
  %"$retval_61" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %folder = alloca { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }
  %"$nat_fold_447" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_448" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_447", i32 1
  %"$nat_fold_449" = bitcast { i8*, i8* }* %"$nat_fold_448" to { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_450" = load { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_449"
  %"$nat_fold_fptr_451" = extractvalue { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_450", 0
  %"$nat_fold_envptr_452" = extractvalue { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_450", 1
  %"$nat_fold_call_453" = call { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_451"(i8* %"$nat_fold_envptr_452")
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_453", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %folder
  %step = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$fundef_62_envp_454_load" = load i8*, i8** @_execptr
  %"$$fundef_62_envp_454_salloc" = call i8* @_salloc(i8* %"$$fundef_62_envp_454_load", i64 16)
  %"$$fundef_62_envp_454" = bitcast i8* %"$$fundef_62_envp_454_salloc" to %"$$fundef_62_env_132"*
  %"$$fundef_62_env_voidp_456" = bitcast %"$$fundef_62_env_132"* %"$$fundef_62_envp_454" to i8*
  %"$$fundef_62_cloval_457" = insertvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })* bitcast ({ { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (%"$$fundef_62_env_132"*, { %Nat* (i8*, %Nat*)*, i8* })* @"$fundef_62" to { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_62_env_voidp_456", 1
  %"$$fundef_62_env_f_458" = getelementptr inbounds %"$$fundef_62_env_132", %"$$fundef_62_env_132"* %"$$fundef_62_envp_454", i32 0, i32 0
  %"$f_459" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_459", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_62_env_f_458"
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$fundef_62_cloval_457", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %step
  %"$folder_8" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$folder_460" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %folder
  %"$folder_fptr_461" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$folder_460", 0
  %"$folder_envptr_462" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$folder_460", 1
  %"$step_463" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %step
  %"$folder_call_464" = call { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$folder_fptr_461"(i8* %"$folder_envptr_462", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$step_463")
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$folder_call_464", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$folder_8"
  %"$folder_9" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$folder_8_465" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$folder_8"
  %"$$folder_8_fptr_466" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$folder_8_465", 0
  %"$$folder_8_envptr_467" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$folder_8_465", 1
  %"$$folder_8_call_468" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_8_fptr_466"(i8* %"$$folder_8_envptr_467", { %Nat* (i8*, %Nat*)*, i8* } %1)
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_8_call_468", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$folder_9"
  %"$folder_10" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$folder_9_469" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$folder_9"
  %"$$folder_9_fptr_470" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_9_469", 0
  %"$$folder_9_envptr_471" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$folder_9_469", 1
  %"$n_472" = load %Nat*, %Nat** %n
  %"$$folder_9_call_473" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_9_fptr_470"(i8* %"$$folder_9_envptr_471", %Nat* %"$n_472")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_9_call_473", { %Nat* (i8*, %Nat*)*, i8* }* %"$folder_10"
  %"$$folder_10_474" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$folder_10"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$folder_10_474", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_61"
  %"$$retval_61_475" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_61"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_61_475"
}

define internal { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } @"$fundef_58"(%"$$fundef_58_env_134"* %0, %Nat* %1) {
entry:
  %"$$fundef_58_env_f_427" = getelementptr inbounds %"$$fundef_58_env_134", %"$$fundef_58_env_134"* %0, i32 0, i32 0
  %"$f_envload_428" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_58_env_f_427"
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_envload_428", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_58_env_nat_fold_429" = getelementptr inbounds %"$$fundef_58_env_134", %"$$fundef_58_env_134"* %0, i32 0, i32 1
  %"$nat_fold_envload_430" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_58_env_nat_fold_429"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_430", { i8*, i8* }** %nat_fold
  %"$retval_59" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$fundef_60_envp_431_load" = load i8*, i8** @_execptr
  %"$$fundef_60_envp_431_salloc" = call i8* @_salloc(i8* %"$$fundef_60_envp_431_load", i64 32)
  %"$$fundef_60_envp_431" = bitcast i8* %"$$fundef_60_envp_431_salloc" to %"$$fundef_60_env_133"*
  %"$$fundef_60_env_voidp_433" = bitcast %"$$fundef_60_env_133"* %"$$fundef_60_envp_431" to i8*
  %"$$fundef_60_cloval_434" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_60_env_133"*, { %Nat* (i8*, %Nat*)*, i8* })* @"$fundef_60" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_60_env_voidp_433", 1
  %"$$fundef_60_env_f_435" = getelementptr inbounds %"$$fundef_60_env_133", %"$$fundef_60_env_133"* %"$$fundef_60_envp_431", i32 0, i32 0
  %"$f_436" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_436", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_60_env_f_435"
  %"$$fundef_60_env_n_437" = getelementptr inbounds %"$$fundef_60_env_133", %"$$fundef_60_env_133"* %"$$fundef_60_envp_431", i32 0, i32 1
  store %Nat* %1, %Nat** %"$$fundef_60_env_n_437"
  %"$$fundef_60_env_nat_fold_438" = getelementptr inbounds %"$$fundef_60_env_133", %"$$fundef_60_env_133"* %"$$fundef_60_envp_431", i32 0, i32 2
  %"$nat_fold_439" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_439", { i8*, i8* }** %"$$fundef_60_env_nat_fold_438"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$fundef_60_cloval_434", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_59"
  %"$$retval_59_440" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_59"
  ret { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$retval_59_440"
}

define internal { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } @"$fundef_56"(%"$$fundef_56_env_135"* %0, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_56_env_nat_fold_417" = getelementptr inbounds %"$$fundef_56_env_135", %"$$fundef_56_env_135"* %0, i32 0, i32 0
  %"$nat_fold_envload_418" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_56_env_nat_fold_417"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_418", { i8*, i8* }** %nat_fold
  %"$retval_57" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_58_envp_419_load" = load i8*, i8** @_execptr
  %"$$fundef_58_envp_419_salloc" = call i8* @_salloc(i8* %"$$fundef_58_envp_419_load", i64 24)
  %"$$fundef_58_envp_419" = bitcast i8* %"$$fundef_58_envp_419_salloc" to %"$$fundef_58_env_134"*
  %"$$fundef_58_env_voidp_421" = bitcast %"$$fundef_58_env_134"* %"$$fundef_58_envp_419" to i8*
  %"$$fundef_58_cloval_422" = insertvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)* bitcast ({ { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (%"$$fundef_58_env_134"*, %Nat*)* @"$fundef_58" to { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_58_env_voidp_421", 1
  %"$$fundef_58_env_f_423" = getelementptr inbounds %"$$fundef_58_env_134", %"$$fundef_58_env_134"* %"$$fundef_58_envp_419", i32 0, i32 0
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %1, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_58_env_f_423"
  %"$$fundef_58_env_nat_fold_424" = getelementptr inbounds %"$$fundef_58_env_134", %"$$fundef_58_env_134"* %"$$fundef_58_envp_419", i32 0, i32 1
  %"$nat_fold_425" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_425", { i8*, i8* }** %"$$fundef_58_env_nat_fold_424"
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_58_cloval_422", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_57"
  %"$$retval_57_426" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_57"
  ret { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } %"$$retval_57_426"
}

define internal { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_54"(%"$$fundef_54_env_136"* %0) {
entry:
  %"$$fundef_54_env_nat_fold_408" = getelementptr inbounds %"$$fundef_54_env_136", %"$$fundef_54_env_136"* %0, i32 0, i32 0
  %"$nat_fold_envload_409" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_54_env_nat_fold_408"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_409", { i8*, i8* }** %nat_fold
  %"$retval_55" = alloca { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }
  %"$$fundef_56_envp_410_load" = load i8*, i8** @_execptr
  %"$$fundef_56_envp_410_salloc" = call i8* @_salloc(i8* %"$$fundef_56_envp_410_load", i64 8)
  %"$$fundef_56_envp_410" = bitcast i8* %"$$fundef_56_envp_410_salloc" to %"$$fundef_56_env_135"*
  %"$$fundef_56_env_voidp_412" = bitcast %"$$fundef_56_env_135"* %"$$fundef_56_envp_410" to i8*
  %"$$fundef_56_cloval_413" = insertvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })* bitcast ({ { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (%"$$fundef_56_env_135"*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })* @"$fundef_56" to { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_56_env_voidp_412", 1
  %"$$fundef_56_env_nat_fold_414" = getelementptr inbounds %"$$fundef_56_env_135", %"$$fundef_56_env_135"* %"$$fundef_56_envp_410", i32 0, i32 0
  %"$nat_fold_415" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_415", { i8*, i8* }** %"$$fundef_56_env_nat_fold_414"
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_56_cloval_413", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_55"
  %"$$retval_55_416" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_55"
  ret { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_55_416"
}

define internal %Nat* @"$fundef_52"(%"$$fundef_52_env_137"* %0, %Nat* %1) {
entry:
  %"$retval_53" = alloca %Nat*
  %"$adtval_403_load" = load i8*, i8** @_execptr
  %"$adtval_403_salloc" = call i8* @_salloc(i8* %"$adtval_403_load", i64 9)
  %"$adtval_403" = bitcast i8* %"$adtval_403_salloc" to %Succ*
  %"$adtgep_404" = getelementptr inbounds %Succ, %Succ* %"$adtval_403", i32 0, i32 0
  store i8 1, i8* %"$adtgep_404"
  %"$adtgep_405" = getelementptr inbounds %Succ, %Succ* %"$adtval_403", i32 0, i32 1
  store %Nat* %1, %Nat** %"$adtgep_405"
  %"$adtptr_406" = bitcast %Succ* %"$adtval_403" to %Nat*
  store %Nat* %"$adtptr_406", %Nat** %"$retval_53"
  %"$$retval_53_407" = load %Nat*, %Nat** %"$retval_53"
  ret %Nat* %"$$retval_53_407"
}

define internal %Uint32 @"$fundef_49"(%"$$fundef_49_env_138"* %0, %Nat* %1) {
entry:
  %"$$fundef_49_env_one_int_395" = getelementptr inbounds %"$$fundef_49_env_138", %"$$fundef_49_env_138"* %0, i32 0, i32 0
  %"$one_int_envload_396" = load %Uint32, %Uint32* %"$$fundef_49_env_one_int_395"
  %one_int = alloca %Uint32
  store %Uint32 %"$one_int_envload_396", %Uint32* %one_int
  %"$$fundef_49_env_z_397" = getelementptr inbounds %"$$fundef_49_env_138", %"$$fundef_49_env_138"* %0, i32 0, i32 1
  %"$z_envload_398" = load %Uint32, %Uint32* %"$$fundef_49_env_z_397"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_398", %Uint32* %z
  %"$retval_50" = alloca %Uint32
  %"$z_399" = load %Uint32, %Uint32* %z
  %"$one_int_400" = load %Uint32, %Uint32* %one_int
  %"$add_call_401" = call %Uint32 @_add_Uint32(%Uint32 %"$z_399", %Uint32 %"$one_int_400")
  store %Uint32 %"$add_call_401", %Uint32* %"$retval_50"
  %"$$retval_50_402" = load %Uint32, %Uint32* %"$retval_50"
  ret %Uint32 %"$$retval_50_402"
}

define internal { %Uint32 (i8*, %Nat*)*, i8* } @"$fundef_47"(%"$$fundef_47_env_139"* %0, %Uint32 %1) {
entry:
  %"$$fundef_47_env_one_int_385" = getelementptr inbounds %"$$fundef_47_env_139", %"$$fundef_47_env_139"* %0, i32 0, i32 0
  %"$one_int_envload_386" = load %Uint32, %Uint32* %"$$fundef_47_env_one_int_385"
  %one_int = alloca %Uint32
  store %Uint32 %"$one_int_envload_386", %Uint32* %one_int
  %"$retval_48" = alloca { %Uint32 (i8*, %Nat*)*, i8* }
  %"$$fundef_49_envp_387_load" = load i8*, i8** @_execptr
  %"$$fundef_49_envp_387_salloc" = call i8* @_salloc(i8* %"$$fundef_49_envp_387_load", i64 8)
  %"$$fundef_49_envp_387" = bitcast i8* %"$$fundef_49_envp_387_salloc" to %"$$fundef_49_env_138"*
  %"$$fundef_49_env_voidp_389" = bitcast %"$$fundef_49_env_138"* %"$$fundef_49_envp_387" to i8*
  %"$$fundef_49_cloval_390" = insertvalue { %Uint32 (i8*, %Nat*)*, i8* } { %Uint32 (i8*, %Nat*)* bitcast (%Uint32 (%"$$fundef_49_env_138"*, %Nat*)* @"$fundef_49" to %Uint32 (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_49_env_voidp_389", 1
  %"$$fundef_49_env_one_int_391" = getelementptr inbounds %"$$fundef_49_env_138", %"$$fundef_49_env_138"* %"$$fundef_49_envp_387", i32 0, i32 0
  %"$one_int_392" = load %Uint32, %Uint32* %one_int
  store %Uint32 %"$one_int_392", %Uint32* %"$$fundef_49_env_one_int_391"
  %"$$fundef_49_env_z_393" = getelementptr inbounds %"$$fundef_49_env_138", %"$$fundef_49_env_138"* %"$$fundef_49_envp_387", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_49_env_z_393"
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$$fundef_49_cloval_390", { %Uint32 (i8*, %Nat*)*, i8* }* %"$retval_48"
  %"$$retval_48_394" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* %"$retval_48"
  ret { %Uint32 (i8*, %Nat*)*, i8* } %"$$retval_48_394"
}

define internal %Uint32 @"$fundef_45"(%"$$fundef_45_env_140"* %0, %Nat* %1) {
entry:
  %"$$fundef_45_env_nat_fold_354" = getelementptr inbounds %"$$fundef_45_env_140", %"$$fundef_45_env_140"* %0, i32 0, i32 0
  %"$nat_fold_envload_355" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_45_env_nat_fold_354"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_355", { i8*, i8* }** %nat_fold
  %"$retval_46" = alloca %Uint32
  %fold = alloca { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$nat_fold_356" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_357" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_356", i32 0
  %"$nat_fold_358" = bitcast { i8*, i8* }* %"$nat_fold_357" to { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_359" = load { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_358"
  %"$nat_fold_fptr_360" = extractvalue { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_359", 0
  %"$nat_fold_envptr_361" = extractvalue { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_359", 1
  %"$nat_fold_call_362" = call { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_fptr_360"(i8* %"$nat_fold_envptr_361")
  store { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_call_362", { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold
  %one_int = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one_int
  %f = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_47_envp_363_load" = load i8*, i8** @_execptr
  %"$$fundef_47_envp_363_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_363_load", i64 4)
  %"$$fundef_47_envp_363" = bitcast i8* %"$$fundef_47_envp_363_salloc" to %"$$fundef_47_env_139"*
  %"$$fundef_47_env_voidp_365" = bitcast %"$$fundef_47_env_139"* %"$$fundef_47_envp_363" to i8*
  %"$$fundef_47_cloval_366" = insertvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Nat*)*, i8* } (%"$$fundef_47_env_139"*, %Uint32)* @"$fundef_47" to { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_47_env_voidp_365", 1
  %"$$fundef_47_env_one_int_367" = getelementptr inbounds %"$$fundef_47_env_139", %"$$fundef_47_env_139"* %"$$fundef_47_envp_363", i32 0, i32 0
  %"$one_int_368" = load %Uint32, %Uint32* %one_int
  store %Uint32 %"$one_int_368", %Uint32* %"$$fundef_47_env_one_int_367"
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_47_cloval_366", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %zero_int = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero_int
  %"$fold_4" = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$fold_369" = load { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold
  %"$fold_fptr_370" = extractvalue { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_369", 0
  %"$fold_envptr_371" = extractvalue { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_369", 1
  %"$f_372" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$fold_call_373" = call { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_370"(i8* %"$fold_envptr_371", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_372")
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_373", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_4"
  %"$fold_5" = alloca { %Uint32 (i8*, %Nat*)*, i8* }
  %"$$fold_4_374" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_4"
  %"$$fold_4_fptr_375" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_4_374", 0
  %"$$fold_4_envptr_376" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_4_374", 1
  %"$zero_int_377" = load %Uint32, %Uint32* %zero_int
  %"$$fold_4_call_378" = call { %Uint32 (i8*, %Nat*)*, i8* } %"$$fold_4_fptr_375"(i8* %"$$fold_4_envptr_376", %Uint32 %"$zero_int_377")
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$$fold_4_call_378", { %Uint32 (i8*, %Nat*)*, i8* }* %"$fold_5"
  %"$fold_6" = alloca %Uint32
  %"$$fold_5_379" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* %"$fold_5"
  %"$$fold_5_fptr_380" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$fold_5_379", 0
  %"$$fold_5_envptr_381" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$fold_5_379", 1
  %"$$fold_5_call_382" = call %Uint32 %"$$fold_5_fptr_380"(i8* %"$$fold_5_envptr_381", %Nat* %1)
  store %Uint32 %"$$fold_5_call_382", %Uint32* %"$fold_6"
  %"$$fold_6_383" = load %Uint32, %Uint32* %"$fold_6"
  store %Uint32 %"$$fold_6_383", %Uint32* %"$retval_46"
  %"$$retval_46_384" = load %Uint32, %Uint32* %"$retval_46"
  ret %Uint32 %"$$retval_46_384"
}

define internal %Nat* @"$fundef_43"(%"$$fundef_43_env_141"* %0, %Nat* %1) {
entry:
  %"$$fundef_43_env_f0_314" = getelementptr inbounds %"$$fundef_43_env_141", %"$$fundef_43_env_141"* %0, i32 0, i32 0
  %"$f0_envload_315" = load %Nat*, %Nat** %"$$fundef_43_env_f0_314"
  %f0 = alloca %Nat*
  store %Nat* %"$f0_envload_315", %Nat** %f0
  %"$$fundef_43_env_fn_316" = getelementptr inbounds %"$$fundef_43_env_141", %"$$fundef_43_env_141"* %0, i32 0, i32 1
  %"$fn_envload_317" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_43_env_fn_316"
  %fn = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_envload_317", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %fn
  %"$$fundef_43_env_g_318" = getelementptr inbounds %"$$fundef_43_env_141", %"$$fundef_43_env_141"* %0, i32 0, i32 2
  %"$g_envload_319" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_43_env_g_318"
  %g = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_envload_319", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  %"$retval_44" = alloca %Nat*
  %"$n_tag_321" = getelementptr inbounds %Nat, %Nat* %1, i32 0, i32 0
  %"$n_tag_322" = load i8, i8* %"$n_tag_321"
  switch i8 %"$n_tag_322", label %"$empty_default_323" [
    i8 1, label %"$Succ_324"
    i8 0, label %"$Zero_350"
  ]

"$Succ_324":                                      ; preds = %entry
  %"$n_325" = bitcast %Nat* %1 to %Succ*
  %"$n1_gep_326" = getelementptr inbounds %Succ, %Succ* %"$n_325", i32 0, i32 1
  %"$n1_load_327" = load %Nat*, %Nat** %"$n1_gep_326"
  %n1 = alloca %Nat*
  store %Nat* %"$n1_load_327", %Nat** %n1
  %res = alloca %Nat*
  %"$fn_0" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$fn_328" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %fn
  %"$fn_fptr_329" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_328", 0
  %"$fn_envptr_330" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_328", 1
  %"$f0_331" = load %Nat*, %Nat** %f0
  %"$fn_call_332" = call { %Nat* (i8*, %Nat*)*, i8* } %"$fn_fptr_329"(i8* %"$fn_envptr_330", %Nat* %"$f0_331")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$fn_call_332", { %Nat* (i8*, %Nat*)*, i8* }* %"$fn_0"
  %"$fn_1" = alloca %Nat*
  %"$$fn_0_333" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$fn_0"
  %"$$fn_0_fptr_334" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$fn_0_333", 0
  %"$$fn_0_envptr_335" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$fn_0_333", 1
  %"$n1_336" = load %Nat*, %Nat** %n1
  %"$$fn_0_call_337" = call %Nat* %"$$fn_0_fptr_334"(i8* %"$$fn_0_envptr_335", %Nat* %"$n1_336")
  store %Nat* %"$$fn_0_call_337", %Nat** %"$fn_1"
  %"$$fn_1_338" = load %Nat*, %Nat** %"$fn_1"
  store %Nat* %"$$fn_1_338", %Nat** %res
  %"$g_2" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$g_339" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  %"$g_fptr_340" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_339", 0
  %"$g_envptr_341" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_339", 1
  %"$res_342" = load %Nat*, %Nat** %res
  %"$g_call_343" = call { %Nat* (i8*, %Nat*)*, i8* } %"$g_fptr_340"(i8* %"$g_envptr_341", %Nat* %"$res_342")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$g_call_343", { %Nat* (i8*, %Nat*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Nat*
  %"$$g_2_344" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_345" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$g_2_344", 0
  %"$$g_2_envptr_346" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$g_2_344", 1
  %"$n1_347" = load %Nat*, %Nat** %n1
  %"$$g_2_call_348" = call %Nat* %"$$g_2_fptr_345"(i8* %"$$g_2_envptr_346", %Nat* %"$n1_347")
  store %Nat* %"$$g_2_call_348", %Nat** %"$g_3"
  %"$$g_3_349" = load %Nat*, %Nat** %"$g_3"
  store %Nat* %"$$g_3_349", %Nat** %"$retval_44"
  br label %"$matchsucc_320"

"$Zero_350":                                      ; preds = %entry
  %"$n_351" = bitcast %Nat* %1 to %Zero*
  %"$f0_352" = load %Nat*, %Nat** %f0
  store %Nat* %"$f0_352", %Nat** %"$retval_44"
  br label %"$matchsucc_320"

"$empty_default_323":                             ; preds = %entry
  br label %"$matchsucc_320"

"$matchsucc_320":                                 ; preds = %"$Zero_350", %"$Succ_324", %"$empty_default_323"
  %"$$retval_44_353" = load %Nat*, %Nat** %"$retval_44"
  ret %Nat* %"$$retval_44_353"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_41"(%"$$fundef_41_env_142"* %0, %Nat* %1) {
entry:
  %"$$fundef_41_env_fn_300" = getelementptr inbounds %"$$fundef_41_env_142", %"$$fundef_41_env_142"* %0, i32 0, i32 0
  %"$fn_envload_301" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_41_env_fn_300"
  %fn = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_envload_301", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %fn
  %"$$fundef_41_env_g_302" = getelementptr inbounds %"$$fundef_41_env_142", %"$$fundef_41_env_142"* %0, i32 0, i32 1
  %"$g_envload_303" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_41_env_g_302"
  %g = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_envload_303", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  %"$retval_42" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$fundef_43_envp_304_load" = load i8*, i8** @_execptr
  %"$$fundef_43_envp_304_salloc" = call i8* @_salloc(i8* %"$$fundef_43_envp_304_load", i64 40)
  %"$$fundef_43_envp_304" = bitcast i8* %"$$fundef_43_envp_304_salloc" to %"$$fundef_43_env_141"*
  %"$$fundef_43_env_voidp_306" = bitcast %"$$fundef_43_env_141"* %"$$fundef_43_envp_304" to i8*
  %"$$fundef_43_cloval_307" = insertvalue { %Nat* (i8*, %Nat*)*, i8* } { %Nat* (i8*, %Nat*)* bitcast (%Nat* (%"$$fundef_43_env_141"*, %Nat*)* @"$fundef_43" to %Nat* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_43_env_voidp_306", 1
  %"$$fundef_43_env_f0_308" = getelementptr inbounds %"$$fundef_43_env_141", %"$$fundef_43_env_141"* %"$$fundef_43_envp_304", i32 0, i32 0
  store %Nat* %1, %Nat** %"$$fundef_43_env_f0_308"
  %"$$fundef_43_env_fn_309" = getelementptr inbounds %"$$fundef_43_env_141", %"$$fundef_43_env_141"* %"$$fundef_43_envp_304", i32 0, i32 1
  %"$fn_310" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %fn
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_310", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_43_env_fn_309"
  %"$$fundef_43_env_g_311" = getelementptr inbounds %"$$fundef_43_env_141", %"$$fundef_43_env_141"* %"$$fundef_43_envp_304", i32 0, i32 2
  %"$g_312" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_312", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_43_env_g_311"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fundef_43_cloval_307", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_42"
  %"$$retval_42_313" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_42"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_42_313"
}

define internal { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } @"$fundef_39"(%"$$fundef_39_env_143"* %0, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$retval_40" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_41_envp_291_load" = load i8*, i8** @_execptr
  %"$$fundef_41_envp_291_salloc" = call i8* @_salloc(i8* %"$$fundef_41_envp_291_load", i64 32)
  %"$$fundef_41_envp_291" = bitcast i8* %"$$fundef_41_envp_291_salloc" to %"$$fundef_41_env_142"*
  %"$$fundef_41_env_voidp_293" = bitcast %"$$fundef_41_env_142"* %"$$fundef_41_envp_291" to i8*
  %"$$fundef_41_cloval_294" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_41_env_142"*, %Nat*)* @"$fundef_41" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_41_env_voidp_293", 1
  %g = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_41_cloval_294", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  %"$$fundef_41_env_fn_295" = getelementptr inbounds %"$$fundef_41_env_142", %"$$fundef_41_env_142"* %"$$fundef_41_envp_291", i32 0, i32 0
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %1, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_41_env_fn_295"
  %"$$fundef_41_env_g_296" = getelementptr inbounds %"$$fundef_41_env_142", %"$$fundef_41_env_142"* %"$$fundef_41_envp_291", i32 0, i32 1
  %"$g_297" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_297", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$$fundef_41_env_g_296"
  %"$g_298" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %g
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_298", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_40"
  %"$$retval_40_299" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_40"
  ret { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$retval_40_299"
}

define internal { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } @"$fundef_37"(%"$$fundef_37_env_144"* %0) {
entry:
  %"$retval_38" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })* bitcast ({ { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (%"$$fundef_39_env_143"*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })* @"$fundef_39" to { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*), i8* null }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_38"
  %"$$retval_38_290" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_38"
  ret { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } %"$$retval_38_290"
}

define internal { %Nat* (i8*, %Nat*)*, i8* } @"$fundef_35"(%"$$fundef_35_env_145"* %0, %Nat* %1) {
entry:
  %"$$fundef_35_env_f0_247" = getelementptr inbounds %"$$fundef_35_env_145", %"$$fundef_35_env_145"* %0, i32 0, i32 0
  %"$f0_envload_248" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_35_env_f0_247"
  %f0 = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f0_envload_248", { %Nat* (i8*, %Nat*)*, i8* }* %f0
  %"$$fundef_35_env_fn_249" = getelementptr inbounds %"$$fundef_35_env_145", %"$$fundef_35_env_145"* %0, i32 0, i32 1
  %"$fn_envload_250" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_fn_249"
  %fn = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$fn_envload_250", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %fn
  %"$$fundef_35_env_g_251" = getelementptr inbounds %"$$fundef_35_env_145", %"$$fundef_35_env_145"* %0, i32 0, i32 2
  %"$g_envload_252" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_g_251"
  %g = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_envload_252", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  %"$retval_36" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$n_tag_254" = getelementptr inbounds %Nat, %Nat* %1, i32 0, i32 0
  %"$n_tag_255" = load i8, i8* %"$n_tag_254"
  switch i8 %"$n_tag_255", label %"$empty_default_256" [
    i8 1, label %"$Succ_257"
    i8 0, label %"$Zero_283"
  ]

"$Succ_257":                                      ; preds = %entry
  %"$n_258" = bitcast %Nat* %1 to %Succ*
  %"$n1_gep_259" = getelementptr inbounds %Succ, %Succ* %"$n_258", i32 0, i32 1
  %"$n1_load_260" = load %Nat*, %Nat** %"$n1_gep_259"
  %n1 = alloca %Nat*
  store %Nat* %"$n1_load_260", %Nat** %n1
  %res = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$fn_0" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$fn_261" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %fn
  %"$fn_fptr_262" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$fn_261", 0
  %"$fn_envptr_263" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$fn_261", 1
  %"$f0_264" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f0
  %"$fn_call_265" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_fptr_262"(i8* %"$fn_envptr_263", { %Nat* (i8*, %Nat*)*, i8* } %"$f0_264")
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$fn_call_265", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$fn_0"
  %"$fn_1" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$fn_0_266" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$fn_0"
  %"$$fn_0_fptr_267" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fn_0_266", 0
  %"$$fn_0_envptr_268" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fn_0_266", 1
  %"$n1_269" = load %Nat*, %Nat** %n1
  %"$$fn_0_call_270" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$fn_0_fptr_267"(i8* %"$$fn_0_envptr_268", %Nat* %"$n1_269")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fn_0_call_270", { %Nat* (i8*, %Nat*)*, i8* }* %"$fn_1"
  %"$$fn_1_271" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$fn_1"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$fn_1_271", { %Nat* (i8*, %Nat*)*, i8* }* %res
  %"$g_2" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$g_272" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  %"$g_fptr_273" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_272", 0
  %"$g_envptr_274" = extractvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_272", 1
  %"$res_275" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %res
  %"$g_call_276" = call { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_fptr_273"(i8* %"$g_envptr_274", { %Nat* (i8*, %Nat*)*, i8* } %"$res_275")
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$g_call_276", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$g_2"
  %"$g_3" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$$g_2_277" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_278" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$g_2_277", 0
  %"$$g_2_envptr_279" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$g_2_277", 1
  %"$n1_280" = load %Nat*, %Nat** %n1
  %"$$g_2_call_281" = call { %Nat* (i8*, %Nat*)*, i8* } %"$$g_2_fptr_278"(i8* %"$$g_2_envptr_279", %Nat* %"$n1_280")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$g_2_call_281", { %Nat* (i8*, %Nat*)*, i8* }* %"$g_3"
  %"$$g_3_282" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$g_3"
  store { %Nat* (i8*, %Nat*)*, i8* } %"$$g_3_282", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_36"
  br label %"$matchsucc_253"

"$Zero_283":                                      ; preds = %entry
  %"$n_284" = bitcast %Nat* %1 to %Zero*
  %"$f0_285" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %f0
  store { %Nat* (i8*, %Nat*)*, i8* } %"$f0_285", { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_36"
  br label %"$matchsucc_253"

"$empty_default_256":                             ; preds = %entry
  br label %"$matchsucc_253"

"$matchsucc_253":                                 ; preds = %"$Zero_283", %"$Succ_257", %"$empty_default_256"
  %"$$retval_36_286" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$retval_36"
  ret { %Nat* (i8*, %Nat*)*, i8* } %"$$retval_36_286"
}

define internal { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } @"$fundef_33"(%"$$fundef_33_env_146"* %0, { %Nat* (i8*, %Nat*)*, i8* } %1) {
entry:
  %"$$fundef_33_env_fn_233" = getelementptr inbounds %"$$fundef_33_env_146", %"$$fundef_33_env_146"* %0, i32 0, i32 0
  %"$fn_envload_234" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_fn_233"
  %fn = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$fn_envload_234", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %fn
  %"$$fundef_33_env_g_235" = getelementptr inbounds %"$$fundef_33_env_146", %"$$fundef_33_env_146"* %0, i32 0, i32 1
  %"$g_envload_236" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_g_235"
  %g = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_envload_236", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  %"$retval_34" = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %"$$fundef_35_envp_237_load" = load i8*, i8** @_execptr
  %"$$fundef_35_envp_237_salloc" = call i8* @_salloc(i8* %"$$fundef_35_envp_237_load", i64 48)
  %"$$fundef_35_envp_237" = bitcast i8* %"$$fundef_35_envp_237_salloc" to %"$$fundef_35_env_145"*
  %"$$fundef_35_env_voidp_239" = bitcast %"$$fundef_35_env_145"* %"$$fundef_35_envp_237" to i8*
  %"$$fundef_35_cloval_240" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_35_env_145"*, %Nat*)* @"$fundef_35" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_35_env_voidp_239", 1
  %"$$fundef_35_env_f0_241" = getelementptr inbounds %"$$fundef_35_env_145", %"$$fundef_35_env_145"* %"$$fundef_35_envp_237", i32 0, i32 0
  store { %Nat* (i8*, %Nat*)*, i8* } %1, { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_35_env_f0_241"
  %"$$fundef_35_env_fn_242" = getelementptr inbounds %"$$fundef_35_env_145", %"$$fundef_35_env_145"* %"$$fundef_35_envp_237", i32 0, i32 1
  %"$fn_243" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %fn
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$fn_243", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_fn_242"
  %"$$fundef_35_env_g_244" = getelementptr inbounds %"$$fundef_35_env_145", %"$$fundef_35_env_145"* %"$$fundef_35_envp_237", i32 0, i32 2
  %"$g_245" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_245", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_g_244"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_35_cloval_240", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_34"
  %"$$retval_34_246" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %"$retval_34"
  ret { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$retval_34_246"
}

define internal { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } @"$fundef_31"(%"$$fundef_31_env_147"* %0, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$retval_32" = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$fundef_33_envp_224_load" = load i8*, i8** @_execptr
  %"$$fundef_33_envp_224_salloc" = call i8* @_salloc(i8* %"$$fundef_33_envp_224_load", i64 32)
  %"$$fundef_33_envp_224" = bitcast i8* %"$$fundef_33_envp_224_salloc" to %"$$fundef_33_env_146"*
  %"$$fundef_33_env_voidp_226" = bitcast %"$$fundef_33_env_146"* %"$$fundef_33_envp_224" to i8*
  %"$$fundef_33_cloval_227" = insertvalue { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })* bitcast ({ { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (%"$$fundef_33_env_146"*, { %Nat* (i8*, %Nat*)*, i8* })* @"$fundef_33" to { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_33_env_voidp_226", 1
  %g = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$fundef_33_cloval_227", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  %"$$fundef_33_env_fn_228" = getelementptr inbounds %"$$fundef_33_env_146", %"$$fundef_33_env_146"* %"$$fundef_33_envp_224", i32 0, i32 0
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %1, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_fn_228"
  %"$$fundef_33_env_g_229" = getelementptr inbounds %"$$fundef_33_env_146", %"$$fundef_33_env_146"* %"$$fundef_33_envp_224", i32 0, i32 1
  %"$g_230" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_230", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_g_229"
  %"$g_231" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %g
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$g_231", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_32"
  %"$$retval_32_232" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$retval_32"
  ret { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$retval_32_232"
}

define internal { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_29"(%"$$fundef_29_env_148"* %0) {
entry:
  %"$retval_30" = alloca { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })* bitcast ({ { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (%"$$fundef_31_env_147"*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })* @"$fundef_31" to { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_30"
  %"$$retval_30_223" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_30"
  ret { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_30_223"
}

define internal %Uint32 @"$fundef_27"(%"$$fundef_27_env_149"* %0, %Nat* %1) {
entry:
  %"$$fundef_27_env_f0_180" = getelementptr inbounds %"$$fundef_27_env_149", %"$$fundef_27_env_149"* %0, i32 0, i32 0
  %"$f0_envload_181" = load %Uint32, %Uint32* %"$$fundef_27_env_f0_180"
  %f0 = alloca %Uint32
  store %Uint32 %"$f0_envload_181", %Uint32* %f0
  %"$$fundef_27_env_fn_182" = getelementptr inbounds %"$$fundef_27_env_149", %"$$fundef_27_env_149"* %0, i32 0, i32 1
  %"$fn_envload_183" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_fn_182"
  %fn = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_183", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$$fundef_27_env_g_184" = getelementptr inbounds %"$$fundef_27_env_149", %"$$fundef_27_env_149"* %0, i32 0, i32 2
  %"$g_envload_185" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_g_184"
  %g = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_185", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_28" = alloca %Uint32
  %"$n_tag_187" = getelementptr inbounds %Nat, %Nat* %1, i32 0, i32 0
  %"$n_tag_188" = load i8, i8* %"$n_tag_187"
  switch i8 %"$n_tag_188", label %"$empty_default_189" [
    i8 1, label %"$Succ_190"
    i8 0, label %"$Zero_216"
  ]

"$Succ_190":                                      ; preds = %entry
  %"$n_191" = bitcast %Nat* %1 to %Succ*
  %"$n1_gep_192" = getelementptr inbounds %Succ, %Succ* %"$n_191", i32 0, i32 1
  %"$n1_load_193" = load %Nat*, %Nat** %"$n1_gep_192"
  %n1 = alloca %Nat*
  store %Nat* %"$n1_load_193", %Nat** %n1
  %res = alloca %Uint32
  %"$fn_0" = alloca { %Uint32 (i8*, %Nat*)*, i8* }
  %"$fn_194" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$fn_fptr_195" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_194", 0
  %"$fn_envptr_196" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_194", 1
  %"$f0_197" = load %Uint32, %Uint32* %f0
  %"$fn_call_198" = call { %Uint32 (i8*, %Nat*)*, i8* } %"$fn_fptr_195"(i8* %"$fn_envptr_196", %Uint32 %"$f0_197")
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$fn_call_198", { %Uint32 (i8*, %Nat*)*, i8* }* %"$fn_0"
  %"$fn_1" = alloca %Uint32
  %"$$fn_0_199" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* %"$fn_0"
  %"$$fn_0_fptr_200" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$fn_0_199", 0
  %"$$fn_0_envptr_201" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$fn_0_199", 1
  %"$n1_202" = load %Nat*, %Nat** %n1
  %"$$fn_0_call_203" = call %Uint32 %"$$fn_0_fptr_200"(i8* %"$$fn_0_envptr_201", %Nat* %"$n1_202")
  store %Uint32 %"$$fn_0_call_203", %Uint32* %"$fn_1"
  %"$$fn_1_204" = load %Uint32, %Uint32* %"$fn_1"
  store %Uint32 %"$$fn_1_204", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %Nat*)*, i8* }
  %"$g_205" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_206" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_205", 0
  %"$g_envptr_207" = extractvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_205", 1
  %"$res_208" = load %Uint32, %Uint32* %res
  %"$g_call_209" = call { %Uint32 (i8*, %Nat*)*, i8* } %"$g_fptr_206"(i8* %"$g_envptr_207", %Uint32 %"$res_208")
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$g_call_209", { %Uint32 (i8*, %Nat*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_210" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_211" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$g_2_210", 0
  %"$$g_2_envptr_212" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$$g_2_210", 1
  %"$n1_213" = load %Nat*, %Nat** %n1
  %"$$g_2_call_214" = call %Uint32 %"$$g_2_fptr_211"(i8* %"$$g_2_envptr_212", %Nat* %"$n1_213")
  store %Uint32 %"$$g_2_call_214", %Uint32* %"$g_3"
  %"$$g_3_215" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_215", %Uint32* %"$retval_28"
  br label %"$matchsucc_186"

"$Zero_216":                                      ; preds = %entry
  %"$n_217" = bitcast %Nat* %1 to %Zero*
  %"$f0_218" = load %Uint32, %Uint32* %f0
  store %Uint32 %"$f0_218", %Uint32* %"$retval_28"
  br label %"$matchsucc_186"

"$empty_default_189":                             ; preds = %entry
  br label %"$matchsucc_186"

"$matchsucc_186":                                 ; preds = %"$Zero_216", %"$Succ_190", %"$empty_default_189"
  %"$$retval_28_219" = load %Uint32, %Uint32* %"$retval_28"
  ret %Uint32 %"$$retval_28_219"
}

define internal { %Uint32 (i8*, %Nat*)*, i8* } @"$fundef_25"(%"$$fundef_25_env_150"* %0, %Uint32 %1) {
entry:
  %"$$fundef_25_env_fn_166" = getelementptr inbounds %"$$fundef_25_env_150", %"$$fundef_25_env_150"* %0, i32 0, i32 0
  %"$fn_envload_167" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_fn_166"
  %fn = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_167", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$$fundef_25_env_g_168" = getelementptr inbounds %"$$fundef_25_env_150", %"$$fundef_25_env_150"* %0, i32 0, i32 1
  %"$g_envload_169" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_g_168"
  %g = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_169", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_26" = alloca { %Uint32 (i8*, %Nat*)*, i8* }
  %"$$fundef_27_envp_170_load" = load i8*, i8** @_execptr
  %"$$fundef_27_envp_170_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_170_load", i64 40)
  %"$$fundef_27_envp_170" = bitcast i8* %"$$fundef_27_envp_170_salloc" to %"$$fundef_27_env_149"*
  %"$$fundef_27_env_voidp_172" = bitcast %"$$fundef_27_env_149"* %"$$fundef_27_envp_170" to i8*
  %"$$fundef_27_cloval_173" = insertvalue { %Uint32 (i8*, %Nat*)*, i8* } { %Uint32 (i8*, %Nat*)* bitcast (%Uint32 (%"$$fundef_27_env_149"*, %Nat*)* @"$fundef_27" to %Uint32 (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_172", 1
  %"$$fundef_27_env_f0_174" = getelementptr inbounds %"$$fundef_27_env_149", %"$$fundef_27_env_149"* %"$$fundef_27_envp_170", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_27_env_f0_174"
  %"$$fundef_27_env_fn_175" = getelementptr inbounds %"$$fundef_27_env_149", %"$$fundef_27_env_149"* %"$$fundef_27_envp_170", i32 0, i32 1
  %"$fn_176" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_176", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_fn_175"
  %"$$fundef_27_env_g_177" = getelementptr inbounds %"$$fundef_27_env_149", %"$$fundef_27_env_149"* %"$$fundef_27_envp_170", i32 0, i32 2
  %"$g_178" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_178", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_g_177"
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$$fundef_27_cloval_173", { %Uint32 (i8*, %Nat*)*, i8* }* %"$retval_26"
  %"$$retval_26_179" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* %"$retval_26"
  ret { %Uint32 (i8*, %Nat*)*, i8* } %"$$retval_26_179"
}

define internal { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_23"(%"$$fundef_23_env_151"* %0, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_24" = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_25_envp_157_load" = load i8*, i8** @_execptr
  %"$$fundef_25_envp_157_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_157_load", i64 32)
  %"$$fundef_25_envp_157" = bitcast i8* %"$$fundef_25_envp_157_salloc" to %"$$fundef_25_env_150"*
  %"$$fundef_25_env_voidp_159" = bitcast %"$$fundef_25_env_150"* %"$$fundef_25_envp_157" to i8*
  %"$$fundef_25_cloval_160" = insertvalue { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %Nat*)*, i8* } (%"$$fundef_25_env_150"*, %Uint32)* @"$fundef_25" to { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_25_env_voidp_159", 1
  %g = alloca { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_25_cloval_160", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_25_env_fn_161" = getelementptr inbounds %"$$fundef_25_env_150", %"$$fundef_25_env_150"* %"$$fundef_25_envp_157", i32 0, i32 0
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_fn_161"
  %"$$fundef_25_env_g_162" = getelementptr inbounds %"$$fundef_25_env_150", %"$$fundef_25_env_150"* %"$$fundef_25_envp_157", i32 0, i32 1
  %"$g_163" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_163", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_g_162"
  %"$g_164" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_164", { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24"
  %"$$retval_24_165" = load { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24"
  ret { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_24_165"
}

define internal { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_21"(%"$$fundef_21_env_152"* %0) {
entry:
  %"$retval_22" = alloca { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_23_env_151"*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_23" to { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_22"
  %"$$retval_22_156" = load { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_22"
  ret { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_22_156"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_649"(i8* %0) {
entry:
  %"$dyndisp_table_659_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_659_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_659_salloc_load", i64 48)
  %"$dyndisp_table_659_salloc" = bitcast i8* %"$dyndisp_table_659_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_659" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_659_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_660" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_659", i32 0
  %"$dyndisp_pcast_661" = bitcast { i8*, i8* }* %"$dyndisp_gep_660" to { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_21_env_152"*)* @"$fundef_21" to { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_661"
  %"$dyndisp_gep_662" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_659", i32 1
  %"$dyndisp_pcast_663" = bitcast { i8*, i8* }* %"$dyndisp_gep_662" to { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_29_env_148"*)* @"$fundef_29" to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_663"
  %"$dyndisp_gep_664" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_659", i32 2
  %"$dyndisp_pcast_665" = bitcast { i8*, i8* }* %"$dyndisp_gep_664" to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (%"$$fundef_37_env_144"*)* @"$fundef_37" to { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_665"
  store { i8*, i8* }* %"$dyndisp_table_659", { i8*, i8* }** @nat_fold
  %"$$fundef_45_envp_666_load" = load i8*, i8** @_execptr
  %"$$fundef_45_envp_666_salloc" = call i8* @_salloc(i8* %"$$fundef_45_envp_666_load", i64 8)
  %"$$fundef_45_envp_666" = bitcast i8* %"$$fundef_45_envp_666_salloc" to %"$$fundef_45_env_140"*
  %"$$fundef_45_env_voidp_668" = bitcast %"$$fundef_45_env_140"* %"$$fundef_45_envp_666" to i8*
  %"$$fundef_45_cloval_669" = insertvalue { %Uint32 (i8*, %Nat*)*, i8* } { %Uint32 (i8*, %Nat*)* bitcast (%Uint32 (%"$$fundef_45_env_140"*, %Nat*)* @"$fundef_45" to %Uint32 (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_45_env_voidp_668", 1
  %"$$fundef_45_env_nat_fold_670" = getelementptr inbounds %"$$fundef_45_env_140", %"$$fundef_45_env_140"* %"$$fundef_45_envp_666", i32 0, i32 0
  %"$nat_fold_671" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_671", { i8*, i8* }** %"$$fundef_45_env_nat_fold_670"
  store { %Uint32 (i8*, %Nat*)*, i8* } %"$$fundef_45_cloval_669", { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$expr_51" = alloca %Uint32
  %nat_succ = alloca { %Nat* (i8*, %Nat*)*, i8* }
  store { %Nat* (i8*, %Nat*)*, i8* } { %Nat* (i8*, %Nat*)* bitcast (%Nat* (%"$$fundef_52_env_137"*, %Nat*)* @"$fundef_52" to %Nat* (i8*, %Nat*)*), i8* null }, { %Nat* (i8*, %Nat*)*, i8* }* %nat_succ
  %nat_iter = alloca { i8*, i8* }*
  %"$$fundef_54_envp_675_load" = load i8*, i8** @_execptr
  %"$$fundef_54_envp_675_salloc" = call i8* @_salloc(i8* %"$$fundef_54_envp_675_load", i64 8)
  %"$$fundef_54_envp_675" = bitcast i8* %"$$fundef_54_envp_675_salloc" to %"$$fundef_54_env_136"*
  %"$$fundef_54_env_voidp_677" = bitcast %"$$fundef_54_env_136"* %"$$fundef_54_envp_675" to i8*
  %"$$fundef_54_cloval_678" = insertvalue { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_54_env_136"*)* @"$fundef_54" to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_54_env_voidp_677", 1
  %"$$fundef_54_env_nat_fold_679" = getelementptr inbounds %"$$fundef_54_env_136", %"$$fundef_54_env_136"* %"$$fundef_54_envp_675", i32 0, i32 0
  %"$nat_fold_680" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_680", { i8*, i8* }** %"$$fundef_54_env_nat_fold_679"
  %"$$fundef_66_env_voidp_682" = bitcast %"$$fundef_54_env_136"* %"$$fundef_54_envp_675" to i8*
  %"$$fundef_66_cloval_683" = insertvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (%"$$fundef_66_env_130"*)* @"$fundef_66" to { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_66_env_voidp_682", 1
  %"$dyndisp_table_684_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_684_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_684_salloc_load", i64 48)
  %"$dyndisp_table_684_salloc" = bitcast i8* %"$dyndisp_table_684_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_684" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_684_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_685" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_684", i32 1
  %"$dyndisp_pcast_686" = bitcast { i8*, i8* }* %"$dyndisp_gep_685" to { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_54_cloval_678", { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_686"
  %"$dyndisp_gep_687" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_684", i32 2
  %"$dyndisp_pcast_688" = bitcast { i8*, i8* }* %"$dyndisp_gep_687" to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_66_cloval_683", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_688"
  store { i8*, i8* }* %"$dyndisp_table_684", { i8*, i8* }** %nat_iter
  %ackermann = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }
  %iter_nat = alloca { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$nat_iter_689" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter
  %"$nat_iter_690" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_689", i32 2
  %"$nat_iter_691" = bitcast { i8*, i8* }* %"$nat_iter_690" to { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_692" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_691"
  %"$nat_iter_fptr_693" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_692", 0
  %"$nat_iter_envptr_694" = extractvalue { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_692", 1
  %"$nat_iter_call_695" = call { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_693"(i8* %"$nat_iter_envptr_694")
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$nat_iter_call_695", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  %iter_nat_nat = alloca { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }
  %"$nat_iter_696" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter
  %"$nat_iter_697" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_696", i32 1
  %"$nat_iter_698" = bitcast { i8*, i8* }* %"$nat_iter_697" to { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_699" = load { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_698"
  %"$nat_iter_fptr_700" = extractvalue { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_699", 0
  %"$nat_iter_envptr_701" = extractvalue { { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_699", 1
  %"$nat_iter_call_702" = call { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_700"(i8* %"$nat_iter_envptr_701")
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_702", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %zero = alloca %Nat*
  %"$adtval_703_load" = load i8*, i8** @_execptr
  %"$adtval_703_salloc" = call i8* @_salloc(i8* %"$adtval_703_load", i64 1)
  %"$adtval_703" = bitcast i8* %"$adtval_703_salloc" to %Zero*
  %"$adtgep_704" = getelementptr inbounds %Zero, %Zero* %"$adtval_703", i32 0, i32 0
  store i8 0, i8* %"$adtgep_704"
  %"$adtptr_705" = bitcast %Zero* %"$adtval_703" to %Nat*
  store %Nat* %"$adtptr_705", %Nat** %zero
  %one = alloca %Nat*
  %"$zero_706" = load %Nat*, %Nat** %zero
  %"$adtval_707_load" = load i8*, i8** @_execptr
  %"$adtval_707_salloc" = call i8* @_salloc(i8* %"$adtval_707_load", i64 9)
  %"$adtval_707" = bitcast i8* %"$adtval_707_salloc" to %Succ*
  %"$adtgep_708" = getelementptr inbounds %Succ, %Succ* %"$adtval_707", i32 0, i32 0
  store i8 1, i8* %"$adtgep_708"
  %"$adtgep_709" = getelementptr inbounds %Succ, %Succ* %"$adtval_707", i32 0, i32 1
  store %Nat* %"$zero_706", %Nat** %"$adtgep_709"
  %"$adtptr_710" = bitcast %Succ* %"$adtval_707" to %Nat*
  store %Nat* %"$adtptr_710", %Nat** %one
  %f = alloca { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }
  %"$$fundef_78_envp_711_load" = load i8*, i8** @_execptr
  %"$$fundef_78_envp_711_salloc" = call i8* @_salloc(i8* %"$$fundef_78_envp_711_load", i64 24)
  %"$$fundef_78_envp_711" = bitcast i8* %"$$fundef_78_envp_711_salloc" to %"$$fundef_78_env_124"*
  %"$$fundef_78_env_voidp_713" = bitcast %"$$fundef_78_env_124"* %"$$fundef_78_envp_711" to i8*
  %"$$fundef_78_cloval_714" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_78_env_124"*, { %Nat* (i8*, %Nat*)*, i8* })* @"$fundef_78" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_78_env_voidp_713", 1
  %"$$fundef_78_env_iter_nat_715" = getelementptr inbounds %"$$fundef_78_env_124", %"$$fundef_78_env_124"* %"$$fundef_78_envp_711", i32 0, i32 0
  %"$iter_nat_716" = load { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %iter_nat
  store { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$iter_nat_716", { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_78_env_iter_nat_715"
  %"$$fundef_78_env_one_717" = getelementptr inbounds %"$$fundef_78_env_124", %"$$fundef_78_env_124"* %"$$fundef_78_envp_711", i32 0, i32 1
  %"$one_718" = load %Nat*, %Nat** %one
  store %Nat* %"$one_718", %Nat** %"$$fundef_78_env_one_717"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$$fundef_78_cloval_714", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_82_envp_719_load" = load i8*, i8** @_execptr
  %"$$fundef_82_envp_719_salloc" = call i8* @_salloc(i8* %"$$fundef_82_envp_719_load", i64 48)
  %"$$fundef_82_envp_719" = bitcast i8* %"$$fundef_82_envp_719_salloc" to %"$$fundef_82_env_122"*
  %"$$fundef_82_env_voidp_721" = bitcast %"$$fundef_82_env_122"* %"$$fundef_82_envp_719" to i8*
  %"$$fundef_82_cloval_722" = insertvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)* bitcast ({ %Nat* (i8*, %Nat*)*, i8* } (%"$$fundef_82_env_122"*, %Nat*)* @"$fundef_82" to { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_82_env_voidp_721", 1
  %"$$fundef_82_env_f_723" = getelementptr inbounds %"$$fundef_82_env_122", %"$$fundef_82_env_122"* %"$$fundef_82_envp_719", i32 0, i32 0
  %"$f_724" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %f
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } %"$f_724", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* }* %"$$fundef_82_env_f_723"
  %"$$fundef_82_env_iter_nat_nat_725" = getelementptr inbounds %"$$fundef_82_env_122", %"$$fundef_82_env_122"* %"$$fundef_82_envp_719", i32 0, i32 1
  %"$iter_nat_nat_726" = load { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }, { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  store { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_726", { { { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* } (i8*, %Nat*)*, i8* } (i8*, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, { %Nat* (i8*, %Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_82_env_iter_nat_nat_725"
  %"$$fundef_82_env_nat_succ_727" = getelementptr inbounds %"$$fundef_82_env_122", %"$$fundef_82_env_122"* %"$$fundef_82_envp_719", i32 0, i32 2
  %"$nat_succ_728" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %nat_succ
  store { %Nat* (i8*, %Nat*)*, i8* } %"$nat_succ_728", { %Nat* (i8*, %Nat*)*, i8* }* %"$$fundef_82_env_nat_succ_727"
  store { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$$fundef_82_cloval_722", { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %uintM = alloca %Uint32
  store %Uint32 { i32 3 }, %Uint32* %uintM
  %uintN = alloca %Uint32
  store %Uint32 { i32 7 }, %Uint32* %uintN
  %m = alloca %Nat*
  %"$to_nat_load_729" = load i8*, i8** @_execptr
  %"$uintM_730" = load %Uint32, %Uint32* %uintM
  %"$to_nat_call_731" = call %Nat* @_to_nat(i8* %"$to_nat_load_729", %Uint32 %"$uintM_730")
  store %Nat* %"$to_nat_call_731", %Nat** %m
  %n = alloca %Nat*
  %"$to_nat_load_732" = load i8*, i8** @_execptr
  %"$uintN_733" = load %Uint32, %Uint32* %uintN
  %"$to_nat_call_734" = call %Nat* @_to_nat(i8* %"$to_nat_load_732", %Uint32 %"$uintN_733")
  store %Nat* %"$to_nat_call_734", %Nat** %n
  %ack00 = alloca %Nat*
  %"$ackermann_18" = alloca { %Nat* (i8*, %Nat*)*, i8* }
  %"$ackermann_735" = load { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }, { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_736" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_735", 0
  %"$ackermann_envptr_737" = extractvalue { { %Nat* (i8*, %Nat*)*, i8* } (i8*, %Nat*)*, i8* } %"$ackermann_735", 1
  %"$m_738" = load %Nat*, %Nat** %m
  %"$ackermann_call_739" = call { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_fptr_736"(i8* %"$ackermann_envptr_737", %Nat* %"$m_738")
  store { %Nat* (i8*, %Nat*)*, i8* } %"$ackermann_call_739", { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_18"
  %"$ackermann_19" = alloca %Nat*
  %"$$ackermann_18_740" = load { %Nat* (i8*, %Nat*)*, i8* }, { %Nat* (i8*, %Nat*)*, i8* }* %"$ackermann_18"
  %"$$ackermann_18_fptr_741" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_18_740", 0
  %"$$ackermann_18_envptr_742" = extractvalue { %Nat* (i8*, %Nat*)*, i8* } %"$$ackermann_18_740", 1
  %"$n_743" = load %Nat*, %Nat** %n
  %"$$ackermann_18_call_744" = call %Nat* %"$$ackermann_18_fptr_741"(i8* %"$$ackermann_18_envptr_742", %Nat* %"$n_743")
  store %Nat* %"$$ackermann_18_call_744", %Nat** %"$ackermann_19"
  %"$$ackermann_19_745" = load %Nat*, %Nat** %"$ackermann_19"
  store %Nat* %"$$ackermann_19_745", %Nat** %ack00
  %int01 = alloca %Uint32
  %"$nat_to_int_20" = alloca %Uint32
  %"$nat_to_int_746" = load { %Uint32 (i8*, %Nat*)*, i8* }, { %Uint32 (i8*, %Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_747" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_746", 0
  %"$nat_to_int_envptr_748" = extractvalue { %Uint32 (i8*, %Nat*)*, i8* } %"$nat_to_int_746", 1
  %"$ack00_749" = load %Nat*, %Nat** %ack00
  %"$nat_to_int_call_750" = call %Uint32 %"$nat_to_int_fptr_747"(i8* %"$nat_to_int_envptr_748", %Nat* %"$ack00_749")
  store %Uint32 %"$nat_to_int_call_750", %Uint32* %"$nat_to_int_20"
  %"$$nat_to_int_20_751" = load %Uint32, %Uint32* %"$nat_to_int_20"
  store %Uint32 %"$$nat_to_int_20_751", %Uint32* %int01
  %"$int01_752" = load %Uint32, %Uint32* %int01
  store %Uint32 %"$int01_752", %Uint32* %"$expr_51"
  %"$$expr_51_753" = load %Uint32, %Uint32* %"$expr_51"
  ret %Uint32 %"$$expr_51_753"
}

declare %Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_754" = call %Uint32 @"$scilla_expr_649"(i8* null)
  %"$pval_755" = alloca %Uint32
  %"$memvoidcast_756" = bitcast %Uint32* %"$pval_755" to i8*
  store %Uint32 %"$exprval_754", %Uint32* %"$pval_755"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_88", i8* %"$memvoidcast_756")
  ret void
}
