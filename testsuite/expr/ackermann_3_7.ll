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
%"$TyDescrTy_ADTTyp_114" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_113"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_113" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_115"**, %"$TyDescrTy_ADTTyp_114"* }
%"$TyDescrTy_ADTTyp_Constr_115" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Uint32 = type { i32 }
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>
%"$$fundef_82_env_130" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_80_env_131" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_78_env_132" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_76_env_133" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat* }
%"$$fundef_74_env_134" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_72_env_135" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_70_env_136" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { i8*, i8* }* }
%"$$fundef_68_env_137" = type { { i8*, i8* }* }
%"$$fundef_66_env_138" = type { { i8*, i8* }* }
%"$$fundef_64_env_139" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_62_env_140" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_60_env_141" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_58_env_142" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { i8*, i8* }* }
%"$$fundef_56_env_143" = type { { i8*, i8* }* }
%"$$fundef_54_env_144" = type { { i8*, i8* }* }
%"$$fundef_52_env_145" = type {}
%"$$fundef_49_env_146" = type { %Uint32, %Uint32 }
%"$$fundef_47_env_147" = type { %Uint32 }
%"$$fundef_45_env_148" = type { { i8*, i8* }* }
%"$$fundef_43_env_149" = type { %TName_Nat*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_41_env_150" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_39_env_151" = type {}
%"$$fundef_37_env_152" = type {}
%"$$fundef_35_env_153" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_33_env_154" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_31_env_155" = type {}
%"$$fundef_29_env_156" = type {}
%"$$fundef_27_env_157" = type { %Uint32, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_25_env_158" = type { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_23_env_159" = type {}
%"$$fundef_21_env_160" = type {}

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
@"$TyDescr_Bnum_Prim_103" = global %"$TyDescrTy_PrimTyp_84" { i32 3, i32 0 }
@"$TyDescr_Bnum_104" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Bnum_Prim_103" to i8*) }
@"$TyDescr_Message_Prim_105" = global %"$TyDescrTy_PrimTyp_84" { i32 4, i32 0 }
@"$TyDescr_Message_106" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Message_Prim_105" to i8*) }
@"$TyDescr_Event_Prim_107" = global %"$TyDescrTy_PrimTyp_84" { i32 5, i32 0 }
@"$TyDescr_Event_108" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Event_Prim_107" to i8*) }
@"$TyDescr_Exception_Prim_109" = global %"$TyDescrTy_PrimTyp_84" { i32 6, i32 0 }
@"$TyDescr_Exception_110" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Exception_Prim_109" to i8*) }
@"$TyDescr_Bystr_Prim_111" = global %"$TyDescrTy_PrimTyp_84" { i32 7, i32 0 }
@"$TyDescr_Bystr_112" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_84"* @"$TyDescr_Bystr_Prim_111" to i8*) }
@"$TyDescr_ADT_Nat_116" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_113"* @"$TyDescr_Nat_ADTTyp_Specl_127" to i8*) }
@"$TyDescr_Nat_ADTTyp_118" = unnamed_addr constant %"$TyDescrTy_ADTTyp_114" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_129", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_113"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_113"*], [1 x %"$TyDescrTy_ADTTyp_Specl_113"*]* @"$TyDescr_Nat_ADTTyp_m_specls_128", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_119" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_120" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_121" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_115" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_120", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_119", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_122" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_116"]
@"$TyDescr_ADT_Succ_123" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_124" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_115" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_123", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_122", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_125" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_115"*] [%"$TyDescrTy_ADTTyp_Constr_115"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_121", %"$TyDescrTy_ADTTyp_Constr_115"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_124"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_126" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_127" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_113" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_126", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_115"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_115"*], [2 x %"$TyDescrTy_ADTTyp_Constr_115"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_125", i32 0, i32 0), %"$TyDescrTy_ADTTyp_114"* @"$TyDescr_Nat_ADTTyp_118" }
@"$TyDescr_Nat_ADTTyp_m_specls_128" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_113"*] [%"$TyDescrTy_ADTTyp_Specl_113"* @"$TyDescr_Nat_ADTTyp_Specl_127"]
@"$TyDescr_ADT_Nat_129" = unnamed_addr constant [3 x i8] c"Nat"
@nat_fold = global { i8*, i8* }* null
@nat_to_int = global { %Uint32 (i8*, %TName_Nat*)*, i8* } zeroinitializer

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_82"(%"$$fundef_82_env_130"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_82_env_f_635" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %0, i32 0, i32 0
  %"$f_envload_636" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_82_env_f_635"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_636", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_82_env_iter_nat_nat_637" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_638" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_82_env_iter_nat_nat_637"
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_638", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %"$$fundef_82_env_nat_succ_639" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %0, i32 0, i32 2
  %"$nat_succ_envload_640" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_82_env_nat_succ_639"
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_640", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  %"$retval_83" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$iter_nat_nat_15" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$iter_nat_nat_641" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %"$iter_nat_nat_fptr_642" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_641", 0
  %"$iter_nat_nat_envptr_643" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_641", 1
  %"$f_644" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$iter_nat_nat_call_645" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_642"(i8* %"$iter_nat_nat_envptr_643", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_644")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_645", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_15"
  %"$iter_nat_nat_16" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$iter_nat_nat_15_646" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_15"
  %"$$iter_nat_nat_15_fptr_647" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_15_646", 0
  %"$$iter_nat_nat_15_envptr_648" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_15_646", 1
  %"$$iter_nat_nat_15_call_649" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_15_fptr_647"(i8* %"$$iter_nat_nat_15_envptr_648", %TName_Nat* %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_15_call_649", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_16"
  %"$iter_nat_nat_17" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$iter_nat_nat_16_650" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_16"
  %"$$iter_nat_nat_16_fptr_651" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_16_650", 0
  %"$$iter_nat_nat_16_envptr_652" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_16_650", 1
  %"$nat_succ_653" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  %"$$iter_nat_nat_16_call_654" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_16_fptr_651"(i8* %"$$iter_nat_nat_16_envptr_652", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_653")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_16_call_654", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_17"
  %"$$iter_nat_nat_17_655" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_17"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_17_655", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_83"
  %"$$retval_83_656" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_83"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_83_656"
}

define internal %TName_Nat* @"$fundef_80"(%"$$fundef_80_env_131"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_80_env_ack_613" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %0, i32 0, i32 0
  %"$ack_envload_614" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_80_env_ack_613"
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_614", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack
  %"$$fundef_80_env_iter_nat_615" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %0, i32 0, i32 1
  %"$iter_nat_envload_616" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_80_env_iter_nat_615"
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_616", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %"$$fundef_80_env_x0_617" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %0, i32 0, i32 2
  %"$x0_envload_618" = load %TName_Nat*, %TName_Nat** %"$$fundef_80_env_x0_617"
  %x0 = alloca %TName_Nat*
  store %TName_Nat* %"$x0_envload_618", %TName_Nat** %x0
  %"$retval_81" = alloca %TName_Nat*
  %"$iter_nat_12" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$iter_nat_619" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %"$iter_nat_fptr_620" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_619", 0
  %"$iter_nat_envptr_621" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_619", 1
  %"$ack_622" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack
  %"$iter_nat_call_623" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_620"(i8* %"$iter_nat_envptr_621", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_622")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_623", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_12"
  %"$iter_nat_13" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$iter_nat_12_624" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_12"
  %"$$iter_nat_12_fptr_625" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_624", 0
  %"$$iter_nat_12_envptr_626" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_624", 1
  %"$$iter_nat_12_call_627" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_fptr_625"(i8* %"$$iter_nat_12_envptr_626", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_call_627", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_13"
  %"$iter_nat_14" = alloca %TName_Nat*
  %"$$iter_nat_13_628" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_13"
  %"$$iter_nat_13_fptr_629" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_13_628", 0
  %"$$iter_nat_13_envptr_630" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_13_628", 1
  %"$x0_631" = load %TName_Nat*, %TName_Nat** %x0
  %"$$iter_nat_13_call_632" = call %TName_Nat* %"$$iter_nat_13_fptr_629"(i8* %"$$iter_nat_13_envptr_630", %TName_Nat* %"$x0_631")
  store %TName_Nat* %"$$iter_nat_13_call_632", %TName_Nat** %"$iter_nat_14"
  %"$$iter_nat_14_633" = load %TName_Nat*, %TName_Nat** %"$iter_nat_14"
  store %TName_Nat* %"$$iter_nat_14_633", %TName_Nat** %"$retval_81"
  %"$$retval_81_634" = load %TName_Nat*, %TName_Nat** %"$retval_81"
  ret %TName_Nat* %"$$retval_81_634"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_78"(%"$$fundef_78_env_132"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_78_env_iter_nat_594" = getelementptr inbounds %"$$fundef_78_env_132", %"$$fundef_78_env_132"* %0, i32 0, i32 0
  %"$iter_nat_envload_595" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_78_env_iter_nat_594"
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_595", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %"$$fundef_78_env_one_596" = getelementptr inbounds %"$$fundef_78_env_132", %"$$fundef_78_env_132"* %0, i32 0, i32 1
  %"$one_envload_597" = load %TName_Nat*, %TName_Nat** %"$$fundef_78_env_one_596"
  %one = alloca %TName_Nat*
  store %TName_Nat* %"$one_envload_597", %TName_Nat** %one
  %"$retval_79" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %x0 = alloca %TName_Nat*
  %"$ack_11" = alloca %TName_Nat*
  %"$ack_fptr_598" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_599" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_600" = load %TName_Nat*, %TName_Nat** %one
  %"$ack_call_601" = call %TName_Nat* %"$ack_fptr_598"(i8* %"$ack_envptr_599", %TName_Nat* %"$one_600")
  store %TName_Nat* %"$ack_call_601", %TName_Nat** %"$ack_11"
  %"$$ack_11_602" = load %TName_Nat*, %TName_Nat** %"$ack_11"
  store %TName_Nat* %"$$ack_11_602", %TName_Nat** %x0
  %"$$fundef_80_envp_603_load" = load i8*, i8** @_execptr
  %"$$fundef_80_envp_603_salloc" = call i8* @_salloc(i8* %"$$fundef_80_envp_603_load", i64 40)
  %"$$fundef_80_envp_603" = bitcast i8* %"$$fundef_80_envp_603_salloc" to %"$$fundef_80_env_131"*
  %"$$fundef_80_env_voidp_605" = bitcast %"$$fundef_80_env_131"* %"$$fundef_80_envp_603" to i8*
  %"$$fundef_80_cloval_606" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_80_env_131"*, %TName_Nat*)* @"$fundef_80" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_80_env_voidp_605", 1
  %"$$fundef_80_env_ack_607" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %"$$fundef_80_envp_603", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_80_env_ack_607"
  %"$$fundef_80_env_iter_nat_608" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %"$$fundef_80_envp_603", i32 0, i32 1
  %"$iter_nat_609" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_609", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_80_env_iter_nat_608"
  %"$$fundef_80_env_x0_610" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %"$$fundef_80_envp_603", i32 0, i32 2
  %"$x0_611" = load %TName_Nat*, %TName_Nat** %x0
  store %TName_Nat* %"$x0_611", %TName_Nat** %"$$fundef_80_env_x0_610"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_80_cloval_606", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_79"
  %"$$retval_79_612" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_79"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_79_612"
}

define internal %TName_Nat* @"$fundef_76"(%"$$fundef_76_env_133"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_76_env_f_583" = getelementptr inbounds %"$$fundef_76_env_133", %"$$fundef_76_env_133"* %0, i32 0, i32 0
  %"$f_envload_584" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_76_env_f_583"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_584", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$$fundef_76_env_x_585" = getelementptr inbounds %"$$fundef_76_env_133", %"$$fundef_76_env_133"* %0, i32 0, i32 1
  %"$x_envload_586" = load %TName_Nat*, %TName_Nat** %"$$fundef_76_env_x_585"
  %x = alloca %TName_Nat*
  store %TName_Nat* %"$x_envload_586", %TName_Nat** %x
  %"$retval_77" = alloca %TName_Nat*
  %"$f_7" = alloca %TName_Nat*
  %"$f_587" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$f_fptr_588" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_587", 0
  %"$f_envptr_589" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_587", 1
  %"$x_590" = load %TName_Nat*, %TName_Nat** %x
  %"$f_call_591" = call %TName_Nat* %"$f_fptr_588"(i8* %"$f_envptr_589", %TName_Nat* %"$x_590")
  store %TName_Nat* %"$f_call_591", %TName_Nat** %"$f_7"
  %"$$f_7_592" = load %TName_Nat*, %TName_Nat** %"$f_7"
  store %TName_Nat* %"$$f_7_592", %TName_Nat** %"$retval_77"
  %"$$retval_77_593" = load %TName_Nat*, %TName_Nat** %"$retval_77"
  ret %TName_Nat* %"$$retval_77_593"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_74"(%"$$fundef_74_env_134"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_74_env_f_573" = getelementptr inbounds %"$$fundef_74_env_134", %"$$fundef_74_env_134"* %0, i32 0, i32 0
  %"$f_envload_574" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_74_env_f_573"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_574", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$retval_75" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_76_envp_575_load" = load i8*, i8** @_execptr
  %"$$fundef_76_envp_575_salloc" = call i8* @_salloc(i8* %"$$fundef_76_envp_575_load", i64 24)
  %"$$fundef_76_envp_575" = bitcast i8* %"$$fundef_76_envp_575_salloc" to %"$$fundef_76_env_133"*
  %"$$fundef_76_env_voidp_577" = bitcast %"$$fundef_76_env_133"* %"$$fundef_76_envp_575" to i8*
  %"$$fundef_76_cloval_578" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_76_env_133"*, %TName_Nat*)* @"$fundef_76" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_76_env_voidp_577", 1
  %"$$fundef_76_env_f_579" = getelementptr inbounds %"$$fundef_76_env_133", %"$$fundef_76_env_133"* %"$$fundef_76_envp_575", i32 0, i32 0
  %"$f_580" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_580", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_76_env_f_579"
  %"$$fundef_76_env_x_581" = getelementptr inbounds %"$$fundef_76_env_133", %"$$fundef_76_env_133"* %"$$fundef_76_envp_575", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_76_env_x_581"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_76_cloval_578", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_75"
  %"$$retval_75_582" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_75"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_75_582"
}

define internal %TName_Nat* @"$fundef_72"(%"$$fundef_72_env_135"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_72_env_f_538" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %0, i32 0, i32 0
  %"$f_envload_539" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_72_env_f_538"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_539", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$$fundef_72_env_n_540" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %0, i32 0, i32 1
  %"$n_envload_541" = load %TName_Nat*, %TName_Nat** %"$$fundef_72_env_n_540"
  %n = alloca %TName_Nat*
  store %TName_Nat* %"$n_envload_541", %TName_Nat** %n
  %"$$fundef_72_env_nat_fold_542" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %0, i32 0, i32 2
  %"$nat_fold_envload_543" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_72_env_nat_fold_542"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_543", { i8*, i8* }** %nat_fold
  %"$retval_73" = alloca %TName_Nat*
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$nat_fold_544" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_545" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_544", i32 2
  %"$nat_fold_546" = bitcast { i8*, i8* }* %"$nat_fold_545" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_547" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_546"
  %"$nat_fold_fptr_548" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_547", 0
  %"$nat_fold_envptr_549" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_547", 1
  %"$nat_fold_call_550" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_548"(i8* %"$nat_fold_envptr_549")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_550", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_74_envp_551_load" = load i8*, i8** @_execptr
  %"$$fundef_74_envp_551_salloc" = call i8* @_salloc(i8* %"$$fundef_74_envp_551_load", i64 16)
  %"$$fundef_74_envp_551" = bitcast i8* %"$$fundef_74_envp_551_salloc" to %"$$fundef_74_env_134"*
  %"$$fundef_74_env_voidp_553" = bitcast %"$$fundef_74_env_134"* %"$$fundef_74_envp_551" to i8*
  %"$$fundef_74_cloval_554" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_74_env_134"*, %TName_Nat*)* @"$fundef_74" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_74_env_voidp_553", 1
  %"$$fundef_74_env_f_555" = getelementptr inbounds %"$$fundef_74_env_134", %"$$fundef_74_env_134"* %"$$fundef_74_envp_551", i32 0, i32 0
  %"$f_556" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_556", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_74_env_f_555"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_74_cloval_554", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step
  %"$folder_8" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$folder_557" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder
  %"$folder_fptr_558" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_557", 0
  %"$folder_envptr_559" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_557", 1
  %"$step_560" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step
  %"$folder_call_561" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_558"(i8* %"$folder_envptr_559", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_560")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_561", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_8"
  %"$folder_9" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$folder_8_562" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_8"
  %"$$folder_8_fptr_563" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_562", 0
  %"$$folder_8_envptr_564" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_562", 1
  %"$$folder_8_call_565" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_8_fptr_563"(i8* %"$$folder_8_envptr_564", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_8_call_565", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_9"
  %"$folder_10" = alloca %TName_Nat*
  %"$$folder_9_566" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_9"
  %"$$folder_9_fptr_567" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_566", 0
  %"$$folder_9_envptr_568" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_566", 1
  %"$n_569" = load %TName_Nat*, %TName_Nat** %n
  %"$$folder_9_call_570" = call %TName_Nat* %"$$folder_9_fptr_567"(i8* %"$$folder_9_envptr_568", %TName_Nat* %"$n_569")
  store %TName_Nat* %"$$folder_9_call_570", %TName_Nat** %"$folder_10"
  %"$$folder_10_571" = load %TName_Nat*, %TName_Nat** %"$folder_10"
  store %TName_Nat* %"$$folder_10_571", %TName_Nat** %"$retval_73"
  %"$$retval_73_572" = load %TName_Nat*, %TName_Nat** %"$retval_73"
  ret %TName_Nat* %"$$retval_73_572"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_70"(%"$$fundef_70_env_136"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_70_env_f_524" = getelementptr inbounds %"$$fundef_70_env_136", %"$$fundef_70_env_136"* %0, i32 0, i32 0
  %"$f_envload_525" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_70_env_f_524"
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_525", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  %"$$fundef_70_env_nat_fold_526" = getelementptr inbounds %"$$fundef_70_env_136", %"$$fundef_70_env_136"* %0, i32 0, i32 1
  %"$nat_fold_envload_527" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_70_env_nat_fold_526"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_527", { i8*, i8* }** %nat_fold
  %"$retval_71" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_72_envp_528_load" = load i8*, i8** @_execptr
  %"$$fundef_72_envp_528_salloc" = call i8* @_salloc(i8* %"$$fundef_72_envp_528_load", i64 32)
  %"$$fundef_72_envp_528" = bitcast i8* %"$$fundef_72_envp_528_salloc" to %"$$fundef_72_env_135"*
  %"$$fundef_72_env_voidp_530" = bitcast %"$$fundef_72_env_135"* %"$$fundef_72_envp_528" to i8*
  %"$$fundef_72_cloval_531" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_72_env_135"*, %TName_Nat*)* @"$fundef_72" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_72_env_voidp_530", 1
  %"$$fundef_72_env_f_532" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %"$$fundef_72_envp_528", i32 0, i32 0
  %"$f_533" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_533", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_72_env_f_532"
  %"$$fundef_72_env_n_534" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %"$$fundef_72_envp_528", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_72_env_n_534"
  %"$$fundef_72_env_nat_fold_535" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %"$$fundef_72_envp_528", i32 0, i32 2
  %"$nat_fold_536" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_536", { i8*, i8* }** %"$$fundef_72_env_nat_fold_535"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_72_cloval_531", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_71"
  %"$$retval_71_537" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_71"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_71_537"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_68"(%"$$fundef_68_env_137"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_68_env_nat_fold_514" = getelementptr inbounds %"$$fundef_68_env_137", %"$$fundef_68_env_137"* %0, i32 0, i32 0
  %"$nat_fold_envload_515" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_68_env_nat_fold_514"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_515", { i8*, i8* }** %nat_fold
  %"$retval_69" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_70_envp_516_load" = load i8*, i8** @_execptr
  %"$$fundef_70_envp_516_salloc" = call i8* @_salloc(i8* %"$$fundef_70_envp_516_load", i64 24)
  %"$$fundef_70_envp_516" = bitcast i8* %"$$fundef_70_envp_516_salloc" to %"$$fundef_70_env_136"*
  %"$$fundef_70_env_voidp_518" = bitcast %"$$fundef_70_env_136"* %"$$fundef_70_envp_516" to i8*
  %"$$fundef_70_cloval_519" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_70_env_136"*, %TName_Nat*)* @"$fundef_70" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_70_env_voidp_518", 1
  %"$$fundef_70_env_f_520" = getelementptr inbounds %"$$fundef_70_env_136", %"$$fundef_70_env_136"* %"$$fundef_70_envp_516", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_70_env_f_520"
  %"$$fundef_70_env_nat_fold_521" = getelementptr inbounds %"$$fundef_70_env_136", %"$$fundef_70_env_136"* %"$$fundef_70_envp_516", i32 0, i32 1
  %"$nat_fold_522" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_522", { i8*, i8* }** %"$$fundef_70_env_nat_fold_521"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_70_cloval_519", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_69"
  %"$$retval_69_523" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_69"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_69_523"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_66"(%"$$fundef_66_env_138"* %0) {
entry:
  %"$$fundef_66_env_nat_fold_505" = getelementptr inbounds %"$$fundef_66_env_138", %"$$fundef_66_env_138"* %0, i32 0, i32 0
  %"$nat_fold_envload_506" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_66_env_nat_fold_505"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_506", { i8*, i8* }** %nat_fold
  %"$retval_67" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$fundef_68_envp_507_load" = load i8*, i8** @_execptr
  %"$$fundef_68_envp_507_salloc" = call i8* @_salloc(i8* %"$$fundef_68_envp_507_load", i64 8)
  %"$$fundef_68_envp_507" = bitcast i8* %"$$fundef_68_envp_507_salloc" to %"$$fundef_68_env_137"*
  %"$$fundef_68_env_voidp_509" = bitcast %"$$fundef_68_env_137"* %"$$fundef_68_envp_507" to i8*
  %"$$fundef_68_cloval_510" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_68_env_137"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_68" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_68_env_voidp_509", 1
  %"$$fundef_68_env_nat_fold_511" = getelementptr inbounds %"$$fundef_68_env_137", %"$$fundef_68_env_137"* %"$$fundef_68_envp_507", i32 0, i32 0
  %"$nat_fold_512" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_512", { i8*, i8* }** %"$$fundef_68_env_nat_fold_511"
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_68_cloval_510", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_67"
  %"$$retval_67_513" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_67"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_67_513"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_64"(%"$$fundef_64_env_139"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_64_env_f_494" = getelementptr inbounds %"$$fundef_64_env_139", %"$$fundef_64_env_139"* %0, i32 0, i32 0
  %"$f_envload_495" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_64_env_f_494"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_495", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_64_env_x_496" = getelementptr inbounds %"$$fundef_64_env_139", %"$$fundef_64_env_139"* %0, i32 0, i32 1
  %"$x_envload_497" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_64_env_x_496"
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_497", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x
  %"$retval_65" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$f_7" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$f_498" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$f_fptr_499" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_498", 0
  %"$f_envptr_500" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_498", 1
  %"$x_501" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x
  %"$f_call_502" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_499"(i8* %"$f_envptr_500", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_501")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_502", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_7"
  %"$$f_7_503" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_7"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_7_503", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_65"
  %"$$retval_65_504" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_65"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_65_504"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_62"(%"$$fundef_62_env_140"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_62_env_f_484" = getelementptr inbounds %"$$fundef_62_env_140", %"$$fundef_62_env_140"* %0, i32 0, i32 0
  %"$f_envload_485" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_62_env_f_484"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_485", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$retval_63" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_64_envp_486_load" = load i8*, i8** @_execptr
  %"$$fundef_64_envp_486_salloc" = call i8* @_salloc(i8* %"$$fundef_64_envp_486_load", i64 32)
  %"$$fundef_64_envp_486" = bitcast i8* %"$$fundef_64_envp_486_salloc" to %"$$fundef_64_env_139"*
  %"$$fundef_64_env_voidp_488" = bitcast %"$$fundef_64_env_139"* %"$$fundef_64_envp_486" to i8*
  %"$$fundef_64_cloval_489" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_64_env_139"*, %TName_Nat*)* @"$fundef_64" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_64_env_voidp_488", 1
  %"$$fundef_64_env_f_490" = getelementptr inbounds %"$$fundef_64_env_139", %"$$fundef_64_env_139"* %"$$fundef_64_envp_486", i32 0, i32 0
  %"$f_491" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_491", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_64_env_f_490"
  %"$$fundef_64_env_x_492" = getelementptr inbounds %"$$fundef_64_env_139", %"$$fundef_64_env_139"* %"$$fundef_64_envp_486", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_64_env_x_492"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_64_cloval_489", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_63"
  %"$$retval_63_493" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_63"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_63_493"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_60"(%"$$fundef_60_env_141"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_60_env_f_449" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %0, i32 0, i32 0
  %"$f_envload_450" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_60_env_f_449"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_450", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_60_env_n_451" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %0, i32 0, i32 1
  %"$n_envload_452" = load %TName_Nat*, %TName_Nat** %"$$fundef_60_env_n_451"
  %n = alloca %TName_Nat*
  store %TName_Nat* %"$n_envload_452", %TName_Nat** %n
  %"$$fundef_60_env_nat_fold_453" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %0, i32 0, i32 2
  %"$nat_fold_envload_454" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_60_env_nat_fold_453"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_454", { i8*, i8* }** %nat_fold
  %"$retval_61" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  %"$nat_fold_455" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_456" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_455", i32 1
  %"$nat_fold_457" = bitcast { i8*, i8* }* %"$nat_fold_456" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_458" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_457"
  %"$nat_fold_fptr_459" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_458", 0
  %"$nat_fold_envptr_460" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_458", 1
  %"$nat_fold_call_461" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_459"(i8* %"$nat_fold_envptr_460")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_461", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$fundef_62_envp_462_load" = load i8*, i8** @_execptr
  %"$$fundef_62_envp_462_salloc" = call i8* @_salloc(i8* %"$$fundef_62_envp_462_load", i64 16)
  %"$$fundef_62_envp_462" = bitcast i8* %"$$fundef_62_envp_462_salloc" to %"$$fundef_62_env_140"*
  %"$$fundef_62_env_voidp_464" = bitcast %"$$fundef_62_env_140"* %"$$fundef_62_envp_462" to i8*
  %"$$fundef_62_cloval_465" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_62_env_140"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_62" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_62_env_voidp_464", 1
  %"$$fundef_62_env_f_466" = getelementptr inbounds %"$$fundef_62_env_140", %"$$fundef_62_env_140"* %"$$fundef_62_envp_462", i32 0, i32 0
  %"$f_467" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_467", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_62_env_f_466"
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_62_cloval_465", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step
  %"$folder_8" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$folder_468" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder
  %"$folder_fptr_469" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_468", 0
  %"$folder_envptr_470" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_468", 1
  %"$step_471" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step
  %"$folder_call_472" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_469"(i8* %"$folder_envptr_470", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_471")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_472", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_8"
  %"$folder_9" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$folder_8_473" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_8"
  %"$$folder_8_fptr_474" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_8_473", 0
  %"$$folder_8_envptr_475" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_8_473", 1
  %"$$folder_8_call_476" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_fptr_474"(i8* %"$$folder_8_envptr_475", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_call_476", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_9"
  %"$folder_10" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$folder_9_477" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_9"
  %"$$folder_9_fptr_478" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_9_477", 0
  %"$$folder_9_envptr_479" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_9_477", 1
  %"$n_480" = load %TName_Nat*, %TName_Nat** %n
  %"$$folder_9_call_481" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_fptr_478"(i8* %"$$folder_9_envptr_479", %TName_Nat* %"$n_480")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_call_481", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_10"
  %"$$folder_10_482" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_10"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_10_482", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_61"
  %"$$retval_61_483" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_61"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_61_483"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_58"(%"$$fundef_58_env_142"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_58_env_f_435" = getelementptr inbounds %"$$fundef_58_env_142", %"$$fundef_58_env_142"* %0, i32 0, i32 0
  %"$f_envload_436" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_58_env_f_435"
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_436", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_58_env_nat_fold_437" = getelementptr inbounds %"$$fundef_58_env_142", %"$$fundef_58_env_142"* %0, i32 0, i32 1
  %"$nat_fold_envload_438" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_58_env_nat_fold_437"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_438", { i8*, i8* }** %nat_fold
  %"$retval_59" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$fundef_60_envp_439_load" = load i8*, i8** @_execptr
  %"$$fundef_60_envp_439_salloc" = call i8* @_salloc(i8* %"$$fundef_60_envp_439_load", i64 32)
  %"$$fundef_60_envp_439" = bitcast i8* %"$$fundef_60_envp_439_salloc" to %"$$fundef_60_env_141"*
  %"$$fundef_60_env_voidp_441" = bitcast %"$$fundef_60_env_141"* %"$$fundef_60_envp_439" to i8*
  %"$$fundef_60_cloval_442" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_60_env_141"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_60" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_60_env_voidp_441", 1
  %"$$fundef_60_env_f_443" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %"$$fundef_60_envp_439", i32 0, i32 0
  %"$f_444" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_444", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_60_env_f_443"
  %"$$fundef_60_env_n_445" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %"$$fundef_60_envp_439", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_60_env_n_445"
  %"$$fundef_60_env_nat_fold_446" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %"$$fundef_60_envp_439", i32 0, i32 2
  %"$nat_fold_447" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_447", { i8*, i8* }** %"$$fundef_60_env_nat_fold_446"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_60_cloval_442", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_59"
  %"$$retval_59_448" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_59"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_59_448"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_56"(%"$$fundef_56_env_143"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_56_env_nat_fold_425" = getelementptr inbounds %"$$fundef_56_env_143", %"$$fundef_56_env_143"* %0, i32 0, i32 0
  %"$nat_fold_envload_426" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_56_env_nat_fold_425"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_426", { i8*, i8* }** %nat_fold
  %"$retval_57" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_58_envp_427_load" = load i8*, i8** @_execptr
  %"$$fundef_58_envp_427_salloc" = call i8* @_salloc(i8* %"$$fundef_58_envp_427_load", i64 24)
  %"$$fundef_58_envp_427" = bitcast i8* %"$$fundef_58_envp_427_salloc" to %"$$fundef_58_env_142"*
  %"$$fundef_58_env_voidp_429" = bitcast %"$$fundef_58_env_142"* %"$$fundef_58_envp_427" to i8*
  %"$$fundef_58_cloval_430" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_58_env_142"*, %TName_Nat*)* @"$fundef_58" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_58_env_voidp_429", 1
  %"$$fundef_58_env_f_431" = getelementptr inbounds %"$$fundef_58_env_142", %"$$fundef_58_env_142"* %"$$fundef_58_envp_427", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_58_env_f_431"
  %"$$fundef_58_env_nat_fold_432" = getelementptr inbounds %"$$fundef_58_env_142", %"$$fundef_58_env_142"* %"$$fundef_58_envp_427", i32 0, i32 1
  %"$nat_fold_433" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_433", { i8*, i8* }** %"$$fundef_58_env_nat_fold_432"
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_58_cloval_430", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_57"
  %"$$retval_57_434" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_57"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_57_434"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_54"(%"$$fundef_54_env_144"* %0) {
entry:
  %"$$fundef_54_env_nat_fold_416" = getelementptr inbounds %"$$fundef_54_env_144", %"$$fundef_54_env_144"* %0, i32 0, i32 0
  %"$nat_fold_envload_417" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_54_env_nat_fold_416"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_417", { i8*, i8* }** %nat_fold
  %"$retval_55" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  %"$$fundef_56_envp_418_load" = load i8*, i8** @_execptr
  %"$$fundef_56_envp_418_salloc" = call i8* @_salloc(i8* %"$$fundef_56_envp_418_load", i64 8)
  %"$$fundef_56_envp_418" = bitcast i8* %"$$fundef_56_envp_418_salloc" to %"$$fundef_56_env_143"*
  %"$$fundef_56_env_voidp_420" = bitcast %"$$fundef_56_env_143"* %"$$fundef_56_envp_418" to i8*
  %"$$fundef_56_cloval_421" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_56_env_143"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_56" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_56_env_voidp_420", 1
  %"$$fundef_56_env_nat_fold_422" = getelementptr inbounds %"$$fundef_56_env_143", %"$$fundef_56_env_143"* %"$$fundef_56_envp_418", i32 0, i32 0
  %"$nat_fold_423" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  store { i8*, i8* }* %"$nat_fold_423", { i8*, i8* }** %"$$fundef_56_env_nat_fold_422"
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_56_cloval_421", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_55"
  %"$$retval_55_424" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_55"
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_55_424"
}

define internal %TName_Nat* @"$fundef_52"(%"$$fundef_52_env_145"* %0, %TName_Nat* %1) {
entry:
  %"$retval_53" = alloca %TName_Nat*
  %"$adtval_411_load" = load i8*, i8** @_execptr
  %"$adtval_411_salloc" = call i8* @_salloc(i8* %"$adtval_411_load", i64 9)
  %"$adtval_411" = bitcast i8* %"$adtval_411_salloc" to %CName_Succ*
  %"$adtgep_412" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_411", i32 0, i32 0
  store i8 1, i8* %"$adtgep_412"
  %"$adtgep_413" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_411", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_413"
  %"$adtptr_414" = bitcast %CName_Succ* %"$adtval_411" to %TName_Nat*
  store %TName_Nat* %"$adtptr_414", %TName_Nat** %"$retval_53"
  %"$$retval_53_415" = load %TName_Nat*, %TName_Nat** %"$retval_53"
  ret %TName_Nat* %"$$retval_53_415"
}

define internal %Uint32 @"$fundef_49"(%"$$fundef_49_env_146"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_49_env_one_int_403" = getelementptr inbounds %"$$fundef_49_env_146", %"$$fundef_49_env_146"* %0, i32 0, i32 0
  %"$one_int_envload_404" = load %Uint32, %Uint32* %"$$fundef_49_env_one_int_403"
  %one_int = alloca %Uint32
  store %Uint32 %"$one_int_envload_404", %Uint32* %one_int
  %"$$fundef_49_env_z_405" = getelementptr inbounds %"$$fundef_49_env_146", %"$$fundef_49_env_146"* %0, i32 0, i32 1
  %"$z_envload_406" = load %Uint32, %Uint32* %"$$fundef_49_env_z_405"
  %z = alloca %Uint32
  store %Uint32 %"$z_envload_406", %Uint32* %z
  %"$retval_50" = alloca %Uint32
  %"$z_407" = load %Uint32, %Uint32* %z
  %"$one_int_408" = load %Uint32, %Uint32* %one_int
  %"$add_call_409" = call %Uint32 @_add_Uint32(%Uint32 %"$z_407", %Uint32 %"$one_int_408")
  store %Uint32 %"$add_call_409", %Uint32* %"$retval_50"
  %"$$retval_50_410" = load %Uint32, %Uint32* %"$retval_50"
  ret %Uint32 %"$$retval_50_410"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_47"(%"$$fundef_47_env_147"* %0, %Uint32 %1) {
entry:
  %"$$fundef_47_env_one_int_393" = getelementptr inbounds %"$$fundef_47_env_147", %"$$fundef_47_env_147"* %0, i32 0, i32 0
  %"$one_int_envload_394" = load %Uint32, %Uint32* %"$$fundef_47_env_one_int_393"
  %one_int = alloca %Uint32
  store %Uint32 %"$one_int_envload_394", %Uint32* %one_int
  %"$retval_48" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_49_envp_395_load" = load i8*, i8** @_execptr
  %"$$fundef_49_envp_395_salloc" = call i8* @_salloc(i8* %"$$fundef_49_envp_395_load", i64 8)
  %"$$fundef_49_envp_395" = bitcast i8* %"$$fundef_49_envp_395_salloc" to %"$$fundef_49_env_146"*
  %"$$fundef_49_env_voidp_397" = bitcast %"$$fundef_49_env_146"* %"$$fundef_49_envp_395" to i8*
  %"$$fundef_49_cloval_398" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_49_env_146"*, %TName_Nat*)* @"$fundef_49" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_49_env_voidp_397", 1
  %"$$fundef_49_env_one_int_399" = getelementptr inbounds %"$$fundef_49_env_146", %"$$fundef_49_env_146"* %"$$fundef_49_envp_395", i32 0, i32 0
  %"$one_int_400" = load %Uint32, %Uint32* %one_int
  store %Uint32 %"$one_int_400", %Uint32* %"$$fundef_49_env_one_int_399"
  %"$$fundef_49_env_z_401" = getelementptr inbounds %"$$fundef_49_env_146", %"$$fundef_49_env_146"* %"$$fundef_49_envp_395", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_49_env_z_401"
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_49_cloval_398", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_48"
  %"$$retval_48_402" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_48"
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_48_402"
}

define internal %Uint32 @"$fundef_45"(%"$$fundef_45_env_148"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_45_env_nat_fold_362" = getelementptr inbounds %"$$fundef_45_env_148", %"$$fundef_45_env_148"* %0, i32 0, i32 0
  %"$nat_fold_envload_363" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_45_env_nat_fold_362"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_363", { i8*, i8* }** %nat_fold
  %"$retval_46" = alloca %Uint32
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  %"$nat_fold_364" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_365" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_364", i32 0
  %"$nat_fold_366" = bitcast { i8*, i8* }* %"$nat_fold_365" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_367" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_366"
  %"$nat_fold_fptr_368" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_367", 0
  %"$nat_fold_envptr_369" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_367", 1
  %"$nat_fold_call_370" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_fptr_368"(i8* %"$nat_fold_envptr_369")
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_call_370", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold
  %one_int = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one_int
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_47_envp_371_load" = load i8*, i8** @_execptr
  %"$$fundef_47_envp_371_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_371_load", i64 4)
  %"$$fundef_47_envp_371" = bitcast i8* %"$$fundef_47_envp_371_salloc" to %"$$fundef_47_env_147"*
  %"$$fundef_47_env_voidp_373" = bitcast %"$$fundef_47_env_147"* %"$$fundef_47_envp_371" to i8*
  %"$$fundef_47_cloval_374" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_47_env_147"*, %Uint32)* @"$fundef_47" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_47_env_voidp_373", 1
  %"$$fundef_47_env_one_int_375" = getelementptr inbounds %"$$fundef_47_env_147", %"$$fundef_47_env_147"* %"$$fundef_47_envp_371", i32 0, i32 0
  %"$one_int_376" = load %Uint32, %Uint32* %one_int
  store %Uint32 %"$one_int_376", %Uint32* %"$$fundef_47_env_one_int_375"
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_47_cloval_374", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %zero_int = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero_int
  %"$fold_4" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$fold_377" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold
  %"$fold_fptr_378" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_377", 0
  %"$fold_envptr_379" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_377", 1
  %"$f_380" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f
  %"$fold_call_381" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_378"(i8* %"$fold_envptr_379", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_380")
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_381", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_4"
  %"$fold_5" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$$fold_4_382" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_4"
  %"$$fold_4_fptr_383" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_4_382", 0
  %"$$fold_4_envptr_384" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_4_382", 1
  %"$zero_int_385" = load %Uint32, %Uint32* %zero_int
  %"$$fold_4_call_386" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_4_fptr_383"(i8* %"$$fold_4_envptr_384", %Uint32 %"$zero_int_385")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_4_call_386", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_5"
  %"$fold_6" = alloca %Uint32
  %"$$fold_5_387" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_5"
  %"$$fold_5_fptr_388" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_5_387", 0
  %"$$fold_5_envptr_389" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_5_387", 1
  %"$$fold_5_call_390" = call %Uint32 %"$$fold_5_fptr_388"(i8* %"$$fold_5_envptr_389", %TName_Nat* %1)
  store %Uint32 %"$$fold_5_call_390", %Uint32* %"$fold_6"
  %"$$fold_6_391" = load %Uint32, %Uint32* %"$fold_6"
  store %Uint32 %"$$fold_6_391", %Uint32* %"$retval_46"
  %"$$retval_46_392" = load %Uint32, %Uint32* %"$retval_46"
  ret %Uint32 %"$$retval_46_392"
}

define internal %TName_Nat* @"$fundef_43"(%"$$fundef_43_env_149"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_43_env_f0_322" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %0, i32 0, i32 0
  %"$f0_envload_323" = load %TName_Nat*, %TName_Nat** %"$$fundef_43_env_f0_322"
  %f0 = alloca %TName_Nat*
  store %TName_Nat* %"$f0_envload_323", %TName_Nat** %f0
  %"$$fundef_43_env_fn_324" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %0, i32 0, i32 1
  %"$fn_envload_325" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_fn_324"
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_325", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  %"$$fundef_43_env_g_326" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %0, i32 0, i32 2
  %"$g_envload_327" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_g_326"
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_327", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$retval_44" = alloca %TName_Nat*
  %"$n_tag_329" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_330" = load i8, i8* %"$n_tag_329"
  switch i8 %"$n_tag_330", label %"$empty_default_331" [
    i8 1, label %"$Succ_332"
    i8 0, label %"$Zero_358"
  ]

"$Succ_332":                                      ; preds = %entry
  %"$n_333" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_334" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_333", i32 0, i32 1
  %"$n1_load_335" = load %TName_Nat*, %TName_Nat** %"$n1_gep_334"
  %n1 = alloca %TName_Nat*
  store %TName_Nat* %"$n1_load_335", %TName_Nat** %n1
  %res = alloca %TName_Nat*
  %"$fn_0" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$fn_336" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  %"$fn_fptr_337" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_336", 0
  %"$fn_envptr_338" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_336", 1
  %"$f0_339" = load %TName_Nat*, %TName_Nat** %f0
  %"$fn_call_340" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_337"(i8* %"$fn_envptr_338", %TName_Nat* %"$f0_339")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_340", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_0"
  %"$fn_1" = alloca %TName_Nat*
  %"$$fn_0_341" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_0"
  %"$$fn_0_fptr_342" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_341", 0
  %"$$fn_0_envptr_343" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_341", 1
  %"$n1_344" = load %TName_Nat*, %TName_Nat** %n1
  %"$$fn_0_call_345" = call %TName_Nat* %"$$fn_0_fptr_342"(i8* %"$$fn_0_envptr_343", %TName_Nat* %"$n1_344")
  store %TName_Nat* %"$$fn_0_call_345", %TName_Nat** %"$fn_1"
  %"$$fn_1_346" = load %TName_Nat*, %TName_Nat** %"$fn_1"
  store %TName_Nat* %"$$fn_1_346", %TName_Nat** %res
  %"$g_2" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$g_347" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$g_fptr_348" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_347", 0
  %"$g_envptr_349" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_347", 1
  %"$res_350" = load %TName_Nat*, %TName_Nat** %res
  %"$g_call_351" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_348"(i8* %"$g_envptr_349", %TName_Nat* %"$res_350")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_351", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %TName_Nat*
  %"$$g_2_352" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_353" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_352", 0
  %"$$g_2_envptr_354" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_352", 1
  %"$n1_355" = load %TName_Nat*, %TName_Nat** %n1
  %"$$g_2_call_356" = call %TName_Nat* %"$$g_2_fptr_353"(i8* %"$$g_2_envptr_354", %TName_Nat* %"$n1_355")
  store %TName_Nat* %"$$g_2_call_356", %TName_Nat** %"$g_3"
  %"$$g_3_357" = load %TName_Nat*, %TName_Nat** %"$g_3"
  store %TName_Nat* %"$$g_3_357", %TName_Nat** %"$retval_44"
  br label %"$matchsucc_328"

"$Zero_358":                                      ; preds = %entry
  %"$n_359" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$f0_360" = load %TName_Nat*, %TName_Nat** %f0
  store %TName_Nat* %"$f0_360", %TName_Nat** %"$retval_44"
  br label %"$matchsucc_328"

"$empty_default_331":                             ; preds = %entry
  br label %"$matchsucc_328"

"$matchsucc_328":                                 ; preds = %"$Zero_358", %"$Succ_332", %"$empty_default_331"
  %"$$retval_44_361" = load %TName_Nat*, %TName_Nat** %"$retval_44"
  ret %TName_Nat* %"$$retval_44_361"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_41"(%"$$fundef_41_env_150"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_41_env_fn_308" = getelementptr inbounds %"$$fundef_41_env_150", %"$$fundef_41_env_150"* %0, i32 0, i32 0
  %"$fn_envload_309" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_fn_308"
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_309", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  %"$$fundef_41_env_g_310" = getelementptr inbounds %"$$fundef_41_env_150", %"$$fundef_41_env_150"* %0, i32 0, i32 1
  %"$g_envload_311" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_g_310"
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_311", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$retval_42" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_43_envp_312_load" = load i8*, i8** @_execptr
  %"$$fundef_43_envp_312_salloc" = call i8* @_salloc(i8* %"$$fundef_43_envp_312_load", i64 40)
  %"$$fundef_43_envp_312" = bitcast i8* %"$$fundef_43_envp_312_salloc" to %"$$fundef_43_env_149"*
  %"$$fundef_43_env_voidp_314" = bitcast %"$$fundef_43_env_149"* %"$$fundef_43_envp_312" to i8*
  %"$$fundef_43_cloval_315" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_43_env_149"*, %TName_Nat*)* @"$fundef_43" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_43_env_voidp_314", 1
  %"$$fundef_43_env_f0_316" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %"$$fundef_43_envp_312", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_43_env_f0_316"
  %"$$fundef_43_env_fn_317" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %"$$fundef_43_envp_312", i32 0, i32 1
  %"$fn_318" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_318", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_fn_317"
  %"$$fundef_43_env_g_319" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %"$$fundef_43_envp_312", i32 0, i32 2
  %"$g_320" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_320", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_g_319"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_43_cloval_315", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_42"
  %"$$retval_42_321" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_42"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_42_321"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_39"(%"$$fundef_39_env_151"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$retval_40" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_41_envp_299_load" = load i8*, i8** @_execptr
  %"$$fundef_41_envp_299_salloc" = call i8* @_salloc(i8* %"$$fundef_41_envp_299_load", i64 32)
  %"$$fundef_41_envp_299" = bitcast i8* %"$$fundef_41_envp_299_salloc" to %"$$fundef_41_env_150"*
  %"$$fundef_41_env_voidp_301" = bitcast %"$$fundef_41_env_150"* %"$$fundef_41_envp_299" to i8*
  %"$$fundef_41_cloval_302" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_41_env_150"*, %TName_Nat*)* @"$fundef_41" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_41_env_voidp_301", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_41_cloval_302", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  %"$$fundef_41_env_fn_303" = getelementptr inbounds %"$$fundef_41_env_150", %"$$fundef_41_env_150"* %"$$fundef_41_envp_299", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_fn_303"
  %"$$fundef_41_env_g_304" = getelementptr inbounds %"$$fundef_41_env_150", %"$$fundef_41_env_150"* %"$$fundef_41_envp_299", i32 0, i32 1
  %"$g_305" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_305", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_g_304"
  %"$g_306" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_306", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_40"
  %"$$retval_40_307" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_40"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_40_307"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_37"(%"$$fundef_37_env_152"* %0) {
entry:
  %"$retval_38" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_39_env_151"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_39" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_38"
  %"$$retval_38_298" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_38"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_38_298"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_35"(%"$$fundef_35_env_153"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_35_env_f0_255" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %0, i32 0, i32 0
  %"$f0_envload_256" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_35_env_f0_255"
  %f0 = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_envload_256", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0
  %"$$fundef_35_env_fn_257" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %0, i32 0, i32 1
  %"$fn_envload_258" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_fn_257"
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_258", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  %"$$fundef_35_env_g_259" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %0, i32 0, i32 2
  %"$g_envload_260" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_g_259"
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_260", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$retval_36" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$n_tag_262" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_263" = load i8, i8* %"$n_tag_262"
  switch i8 %"$n_tag_263", label %"$empty_default_264" [
    i8 1, label %"$Succ_265"
    i8 0, label %"$Zero_291"
  ]

"$Succ_265":                                      ; preds = %entry
  %"$n_266" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_267" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_266", i32 0, i32 1
  %"$n1_load_268" = load %TName_Nat*, %TName_Nat** %"$n1_gep_267"
  %n1 = alloca %TName_Nat*
  store %TName_Nat* %"$n1_load_268", %TName_Nat** %n1
  %res = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$fn_0" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$fn_269" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  %"$fn_fptr_270" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_269", 0
  %"$fn_envptr_271" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_269", 1
  %"$f0_272" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0
  %"$fn_call_273" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_270"(i8* %"$fn_envptr_271", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_272")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_273", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_0"
  %"$fn_1" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$fn_0_274" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_0"
  %"$$fn_0_fptr_275" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_0_274", 0
  %"$$fn_0_envptr_276" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_0_274", 1
  %"$n1_277" = load %TName_Nat*, %TName_Nat** %n1
  %"$$fn_0_call_278" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_fptr_275"(i8* %"$$fn_0_envptr_276", %TName_Nat* %"$n1_277")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_call_278", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_1"
  %"$$fn_1_279" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_1"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_1_279", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res
  %"$g_2" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$g_280" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$g_fptr_281" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_280", 0
  %"$g_envptr_282" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_280", 1
  %"$res_283" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res
  %"$g_call_284" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_281"(i8* %"$g_envptr_282", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_283")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_284", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_2"
  %"$g_3" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$$g_2_285" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_286" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_2_285", 0
  %"$$g_2_envptr_287" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_2_285", 1
  %"$n1_288" = load %TName_Nat*, %TName_Nat** %n1
  %"$$g_2_call_289" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_fptr_286"(i8* %"$$g_2_envptr_287", %TName_Nat* %"$n1_288")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_call_289", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_3"
  %"$$g_3_290" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_3"
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_3_290", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_36"
  br label %"$matchsucc_261"

"$Zero_291":                                      ; preds = %entry
  %"$n_292" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$f0_293" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_293", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_36"
  br label %"$matchsucc_261"

"$empty_default_264":                             ; preds = %entry
  br label %"$matchsucc_261"

"$matchsucc_261":                                 ; preds = %"$Zero_291", %"$Succ_265", %"$empty_default_264"
  %"$$retval_36_294" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_36"
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_36_294"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_33"(%"$$fundef_33_env_154"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_33_env_fn_241" = getelementptr inbounds %"$$fundef_33_env_154", %"$$fundef_33_env_154"* %0, i32 0, i32 0
  %"$fn_envload_242" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_fn_241"
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_242", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  %"$$fundef_33_env_g_243" = getelementptr inbounds %"$$fundef_33_env_154", %"$$fundef_33_env_154"* %0, i32 0, i32 1
  %"$g_envload_244" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_g_243"
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_244", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$retval_34" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_35_envp_245_load" = load i8*, i8** @_execptr
  %"$$fundef_35_envp_245_salloc" = call i8* @_salloc(i8* %"$$fundef_35_envp_245_load", i64 48)
  %"$$fundef_35_envp_245" = bitcast i8* %"$$fundef_35_envp_245_salloc" to %"$$fundef_35_env_153"*
  %"$$fundef_35_env_voidp_247" = bitcast %"$$fundef_35_env_153"* %"$$fundef_35_envp_245" to i8*
  %"$$fundef_35_cloval_248" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_35_env_153"*, %TName_Nat*)* @"$fundef_35" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_35_env_voidp_247", 1
  %"$$fundef_35_env_f0_249" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %"$$fundef_35_envp_245", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_35_env_f0_249"
  %"$$fundef_35_env_fn_250" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %"$$fundef_35_envp_245", i32 0, i32 1
  %"$fn_251" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_251", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_fn_250"
  %"$$fundef_35_env_g_252" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %"$$fundef_35_envp_245", i32 0, i32 2
  %"$g_253" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_253", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_g_252"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_35_cloval_248", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_34"
  %"$$retval_34_254" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_34"
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_34_254"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_31"(%"$$fundef_31_env_155"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$retval_32" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$fundef_33_envp_232_load" = load i8*, i8** @_execptr
  %"$$fundef_33_envp_232_salloc" = call i8* @_salloc(i8* %"$$fundef_33_envp_232_load", i64 32)
  %"$$fundef_33_envp_232" = bitcast i8* %"$$fundef_33_envp_232_salloc" to %"$$fundef_33_env_154"*
  %"$$fundef_33_env_voidp_234" = bitcast %"$$fundef_33_env_154"* %"$$fundef_33_envp_232" to i8*
  %"$$fundef_33_cloval_235" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_33_env_154"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_33" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_33_env_voidp_234", 1
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_33_cloval_235", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  %"$$fundef_33_env_fn_236" = getelementptr inbounds %"$$fundef_33_env_154", %"$$fundef_33_env_154"* %"$$fundef_33_envp_232", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_fn_236"
  %"$$fundef_33_env_g_237" = getelementptr inbounds %"$$fundef_33_env_154", %"$$fundef_33_env_154"* %"$$fundef_33_envp_232", i32 0, i32 1
  %"$g_238" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_238", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_g_237"
  %"$g_239" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_239", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_32"
  %"$$retval_32_240" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_32"
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_32_240"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_29"(%"$$fundef_29_env_156"* %0) {
entry:
  %"$retval_30" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_31_env_155"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_31" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_30"
  %"$$retval_30_231" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_30"
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_30_231"
}

define internal %Uint32 @"$fundef_27"(%"$$fundef_27_env_157"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_27_env_f0_188" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %0, i32 0, i32 0
  %"$f0_envload_189" = load %Uint32, %Uint32* %"$$fundef_27_env_f0_188"
  %f0 = alloca %Uint32
  store %Uint32 %"$f0_envload_189", %Uint32* %f0
  %"$$fundef_27_env_fn_190" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %0, i32 0, i32 1
  %"$fn_envload_191" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_fn_190"
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_191", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$$fundef_27_env_g_192" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %0, i32 0, i32 2
  %"$g_envload_193" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_g_192"
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_193", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_28" = alloca %Uint32
  %"$n_tag_195" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_196" = load i8, i8* %"$n_tag_195"
  switch i8 %"$n_tag_196", label %"$empty_default_197" [
    i8 1, label %"$Succ_198"
    i8 0, label %"$Zero_224"
  ]

"$Succ_198":                                      ; preds = %entry
  %"$n_199" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_200" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_199", i32 0, i32 1
  %"$n1_load_201" = load %TName_Nat*, %TName_Nat** %"$n1_gep_200"
  %n1 = alloca %TName_Nat*
  store %TName_Nat* %"$n1_load_201", %TName_Nat** %n1
  %res = alloca %Uint32
  %"$fn_0" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$fn_202" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$fn_fptr_203" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_202", 0
  %"$fn_envptr_204" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_202", 1
  %"$f0_205" = load %Uint32, %Uint32* %f0
  %"$fn_call_206" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_203"(i8* %"$fn_envptr_204", %Uint32 %"$f0_205")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_206", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_0"
  %"$fn_1" = alloca %Uint32
  %"$$fn_0_207" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_0"
  %"$$fn_0_fptr_208" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_0_207", 0
  %"$$fn_0_envptr_209" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_0_207", 1
  %"$n1_210" = load %TName_Nat*, %TName_Nat** %n1
  %"$$fn_0_call_211" = call %Uint32 %"$$fn_0_fptr_208"(i8* %"$$fn_0_envptr_209", %TName_Nat* %"$n1_210")
  store %Uint32 %"$$fn_0_call_211", %Uint32* %"$fn_1"
  %"$$fn_1_212" = load %Uint32, %Uint32* %"$fn_1"
  store %Uint32 %"$$fn_1_212", %Uint32* %res
  %"$g_2" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$g_213" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$g_fptr_214" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_213", 0
  %"$g_envptr_215" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_213", 1
  %"$res_216" = load %Uint32, %Uint32* %res
  %"$g_call_217" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_214"(i8* %"$g_envptr_215", %Uint32 %"$res_216")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_217", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_2"
  %"$g_3" = alloca %Uint32
  %"$$g_2_218" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_2"
  %"$$g_2_fptr_219" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_2_218", 0
  %"$$g_2_envptr_220" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_2_218", 1
  %"$n1_221" = load %TName_Nat*, %TName_Nat** %n1
  %"$$g_2_call_222" = call %Uint32 %"$$g_2_fptr_219"(i8* %"$$g_2_envptr_220", %TName_Nat* %"$n1_221")
  store %Uint32 %"$$g_2_call_222", %Uint32* %"$g_3"
  %"$$g_3_223" = load %Uint32, %Uint32* %"$g_3"
  store %Uint32 %"$$g_3_223", %Uint32* %"$retval_28"
  br label %"$matchsucc_194"

"$Zero_224":                                      ; preds = %entry
  %"$n_225" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$f0_226" = load %Uint32, %Uint32* %f0
  store %Uint32 %"$f0_226", %Uint32* %"$retval_28"
  br label %"$matchsucc_194"

"$empty_default_197":                             ; preds = %entry
  br label %"$matchsucc_194"

"$matchsucc_194":                                 ; preds = %"$Zero_224", %"$Succ_198", %"$empty_default_197"
  %"$$retval_28_227" = load %Uint32, %Uint32* %"$retval_28"
  ret %Uint32 %"$$retval_28_227"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_25"(%"$$fundef_25_env_158"* %0, %Uint32 %1) {
entry:
  %"$$fundef_25_env_fn_174" = getelementptr inbounds %"$$fundef_25_env_158", %"$$fundef_25_env_158"* %0, i32 0, i32 0
  %"$fn_envload_175" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_fn_174"
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_175", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  %"$$fundef_25_env_g_176" = getelementptr inbounds %"$$fundef_25_env_158", %"$$fundef_25_env_158"* %0, i32 0, i32 1
  %"$g_envload_177" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_g_176"
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_177", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$retval_26" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }
  %"$$fundef_27_envp_178_load" = load i8*, i8** @_execptr
  %"$$fundef_27_envp_178_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_178_load", i64 40)
  %"$$fundef_27_envp_178" = bitcast i8* %"$$fundef_27_envp_178_salloc" to %"$$fundef_27_env_157"*
  %"$$fundef_27_env_voidp_180" = bitcast %"$$fundef_27_env_157"* %"$$fundef_27_envp_178" to i8*
  %"$$fundef_27_cloval_181" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_27_env_157"*, %TName_Nat*)* @"$fundef_27" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_180", 1
  %"$$fundef_27_env_f0_182" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %"$$fundef_27_envp_178", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_27_env_f0_182"
  %"$$fundef_27_env_fn_183" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %"$$fundef_27_envp_178", i32 0, i32 1
  %"$fn_184" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_184", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_fn_183"
  %"$$fundef_27_env_g_185" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %"$$fundef_27_envp_178", i32 0, i32 2
  %"$g_186" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_186", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_g_185"
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_27_cloval_181", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_26"
  %"$$retval_26_187" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_26"
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_26_187"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_23"(%"$$fundef_23_env_159"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_24" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  %"$$fundef_25_envp_165_load" = load i8*, i8** @_execptr
  %"$$fundef_25_envp_165_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_165_load", i64 32)
  %"$$fundef_25_envp_165" = bitcast i8* %"$$fundef_25_envp_165_salloc" to %"$$fundef_25_env_158"*
  %"$$fundef_25_env_voidp_167" = bitcast %"$$fundef_25_env_158"* %"$$fundef_25_envp_165" to i8*
  %"$$fundef_25_cloval_168" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_25_env_158"*, %Uint32)* @"$fundef_25" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_25_env_voidp_167", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_25_cloval_168", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  %"$$fundef_25_env_fn_169" = getelementptr inbounds %"$$fundef_25_env_158", %"$$fundef_25_env_158"* %"$$fundef_25_envp_165", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_fn_169"
  %"$$fundef_25_env_g_170" = getelementptr inbounds %"$$fundef_25_env_158", %"$$fundef_25_env_158"* %"$$fundef_25_envp_165", i32 0, i32 1
  %"$g_171" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_171", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_g_170"
  %"$g_172" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_172", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24"
  %"$$retval_24_173" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24"
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_24_173"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_21"(%"$$fundef_21_env_160"* %0) {
entry:
  %"$retval_22" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_23_env_159"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_23" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_22"
  %"$$retval_22_164" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_22"
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_22_164"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_657"(i8* %0) {
entry:
  %"$dyndisp_table_667_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_667_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_667_salloc_load", i64 48)
  %"$dyndisp_table_667_salloc" = bitcast i8* %"$dyndisp_table_667_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_667" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_667_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_668" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_667", i32 0
  %"$dyndisp_pcast_669" = bitcast { i8*, i8* }* %"$dyndisp_gep_668" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_21_env_160"*)* @"$fundef_21" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_669"
  %"$dyndisp_gep_670" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_667", i32 1
  %"$dyndisp_pcast_671" = bitcast { i8*, i8* }* %"$dyndisp_gep_670" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_29_env_156"*)* @"$fundef_29" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_671"
  %"$dyndisp_gep_672" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_667", i32 2
  %"$dyndisp_pcast_673" = bitcast { i8*, i8* }* %"$dyndisp_gep_672" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_37_env_152"*)* @"$fundef_37" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_673"
  store { i8*, i8* }* %"$dyndisp_table_667", { i8*, i8* }** @nat_fold
  %"$$fundef_45_envp_674_load" = load i8*, i8** @_execptr
  %"$$fundef_45_envp_674_salloc" = call i8* @_salloc(i8* %"$$fundef_45_envp_674_load", i64 8)
  %"$$fundef_45_envp_674" = bitcast i8* %"$$fundef_45_envp_674_salloc" to %"$$fundef_45_env_148"*
  %"$$fundef_45_env_voidp_676" = bitcast %"$$fundef_45_env_148"* %"$$fundef_45_envp_674" to i8*
  %"$$fundef_45_cloval_677" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_45_env_148"*, %TName_Nat*)* @"$fundef_45" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_45_env_voidp_676", 1
  %"$$fundef_45_env_nat_fold_678" = getelementptr inbounds %"$$fundef_45_env_148", %"$$fundef_45_env_148"* %"$$fundef_45_envp_674", i32 0, i32 0
  %"$nat_fold_679" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_679", { i8*, i8* }** %"$$fundef_45_env_nat_fold_678"
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_45_cloval_677", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$expr_51" = alloca %Uint32
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_52_env_145"*, %TName_Nat*)* @"$fundef_52" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  %nat_iter = alloca { i8*, i8* }*
  %"$$fundef_54_envp_683_load" = load i8*, i8** @_execptr
  %"$$fundef_54_envp_683_salloc" = call i8* @_salloc(i8* %"$$fundef_54_envp_683_load", i64 8)
  %"$$fundef_54_envp_683" = bitcast i8* %"$$fundef_54_envp_683_salloc" to %"$$fundef_54_env_144"*
  %"$$fundef_54_env_voidp_685" = bitcast %"$$fundef_54_env_144"* %"$$fundef_54_envp_683" to i8*
  %"$$fundef_54_cloval_686" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_54_env_144"*)* @"$fundef_54" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_54_env_voidp_685", 1
  %"$$fundef_54_env_nat_fold_687" = getelementptr inbounds %"$$fundef_54_env_144", %"$$fundef_54_env_144"* %"$$fundef_54_envp_683", i32 0, i32 0
  %"$nat_fold_688" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_688", { i8*, i8* }** %"$$fundef_54_env_nat_fold_687"
  %"$$fundef_66_env_voidp_690" = bitcast %"$$fundef_54_env_144"* %"$$fundef_54_envp_683" to i8*
  %"$$fundef_66_cloval_691" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_66_env_138"*)* @"$fundef_66" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_66_env_voidp_690", 1
  %"$dyndisp_table_692_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_692_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_692_salloc_load", i64 48)
  %"$dyndisp_table_692_salloc" = bitcast i8* %"$dyndisp_table_692_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_692" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_692_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_693" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_692", i32 1
  %"$dyndisp_pcast_694" = bitcast { i8*, i8* }* %"$dyndisp_gep_693" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_54_cloval_686", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_694"
  %"$dyndisp_gep_695" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_692", i32 2
  %"$dyndisp_pcast_696" = bitcast { i8*, i8* }* %"$dyndisp_gep_695" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_66_cloval_691", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_696"
  store { i8*, i8* }* %"$dyndisp_table_692", { i8*, i8* }** %nat_iter
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$nat_iter_697" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter
  %"$nat_iter_698" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_697", i32 2
  %"$nat_iter_699" = bitcast { i8*, i8* }* %"$nat_iter_698" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_700" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_699"
  %"$nat_iter_fptr_701" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_700", 0
  %"$nat_iter_envptr_702" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_700", 1
  %"$nat_iter_call_703" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_701"(i8* %"$nat_iter_envptr_702")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_703", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }
  %"$nat_iter_704" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter
  %"$nat_iter_705" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_704", i32 1
  %"$nat_iter_706" = bitcast { i8*, i8* }* %"$nat_iter_705" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_707" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_706"
  %"$nat_iter_fptr_708" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_707", 0
  %"$nat_iter_envptr_709" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_707", 1
  %"$nat_iter_call_710" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_708"(i8* %"$nat_iter_envptr_709")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_710", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  %zero = alloca %TName_Nat*
  %"$adtval_711_load" = load i8*, i8** @_execptr
  %"$adtval_711_salloc" = call i8* @_salloc(i8* %"$adtval_711_load", i64 1)
  %"$adtval_711" = bitcast i8* %"$adtval_711_salloc" to %CName_Zero*
  %"$adtgep_712" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_711", i32 0, i32 0
  store i8 0, i8* %"$adtgep_712"
  %"$adtptr_713" = bitcast %CName_Zero* %"$adtval_711" to %TName_Nat*
  store %TName_Nat* %"$adtptr_713", %TName_Nat** %zero
  %one = alloca %TName_Nat*
  %"$zero_714" = load %TName_Nat*, %TName_Nat** %zero
  %"$adtval_715_load" = load i8*, i8** @_execptr
  %"$adtval_715_salloc" = call i8* @_salloc(i8* %"$adtval_715_load", i64 9)
  %"$adtval_715" = bitcast i8* %"$adtval_715_salloc" to %CName_Succ*
  %"$adtgep_716" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_715", i32 0, i32 0
  store i8 1, i8* %"$adtgep_716"
  %"$adtgep_717" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_715", i32 0, i32 1
  store %TName_Nat* %"$zero_714", %TName_Nat** %"$adtgep_717"
  %"$adtptr_718" = bitcast %CName_Succ* %"$adtval_715" to %TName_Nat*
  store %TName_Nat* %"$adtptr_718", %TName_Nat** %one
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }
  %"$$fundef_78_envp_719_load" = load i8*, i8** @_execptr
  %"$$fundef_78_envp_719_salloc" = call i8* @_salloc(i8* %"$$fundef_78_envp_719_load", i64 24)
  %"$$fundef_78_envp_719" = bitcast i8* %"$$fundef_78_envp_719_salloc" to %"$$fundef_78_env_132"*
  %"$$fundef_78_env_voidp_721" = bitcast %"$$fundef_78_env_132"* %"$$fundef_78_envp_719" to i8*
  %"$$fundef_78_cloval_722" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_78_env_132"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_78" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_78_env_voidp_721", 1
  %"$$fundef_78_env_iter_nat_723" = getelementptr inbounds %"$$fundef_78_env_132", %"$$fundef_78_env_132"* %"$$fundef_78_envp_719", i32 0, i32 0
  %"$iter_nat_724" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_724", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_78_env_iter_nat_723"
  %"$$fundef_78_env_one_725" = getelementptr inbounds %"$$fundef_78_env_132", %"$$fundef_78_env_132"* %"$$fundef_78_envp_719", i32 0, i32 1
  %"$one_726" = load %TName_Nat*, %TName_Nat** %one
  store %TName_Nat* %"$one_726", %TName_Nat** %"$$fundef_78_env_one_725"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_78_cloval_722", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  %"$$fundef_82_envp_727_load" = load i8*, i8** @_execptr
  %"$$fundef_82_envp_727_salloc" = call i8* @_salloc(i8* %"$$fundef_82_envp_727_load", i64 48)
  %"$$fundef_82_envp_727" = bitcast i8* %"$$fundef_82_envp_727_salloc" to %"$$fundef_82_env_130"*
  %"$$fundef_82_env_voidp_729" = bitcast %"$$fundef_82_env_130"* %"$$fundef_82_envp_727" to i8*
  %"$$fundef_82_cloval_730" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_82_env_130"*, %TName_Nat*)* @"$fundef_82" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_82_env_voidp_729", 1
  %"$$fundef_82_env_f_731" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %"$$fundef_82_envp_727", i32 0, i32 0
  %"$f_732" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_732", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_82_env_f_731"
  %"$$fundef_82_env_iter_nat_nat_733" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %"$$fundef_82_envp_727", i32 0, i32 1
  %"$iter_nat_nat_734" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_734", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_82_env_iter_nat_nat_733"
  %"$$fundef_82_env_nat_succ_735" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %"$$fundef_82_envp_727", i32 0, i32 2
  %"$nat_succ_736" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_736", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_82_env_nat_succ_735"
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_82_cloval_730", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %uintM = alloca %Uint32
  store %Uint32 { i32 3 }, %Uint32* %uintM
  %uintN = alloca %Uint32
  store %Uint32 { i32 7 }, %Uint32* %uintN
  %m = alloca %TName_Nat*
  %"$execptr_load_737" = load i8*, i8** @_execptr
  %"$uintM_738" = load %Uint32, %Uint32* %uintM
  %"$to_nat_call_739" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_737", %Uint32 %"$uintM_738")
  store %TName_Nat* %"$to_nat_call_739", %TName_Nat** %m
  %n = alloca %TName_Nat*
  %"$execptr_load_740" = load i8*, i8** @_execptr
  %"$uintN_741" = load %Uint32, %Uint32* %uintN
  %"$to_nat_call_742" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_740", %Uint32 %"$uintN_741")
  store %TName_Nat* %"$to_nat_call_742", %TName_Nat** %n
  %ack00 = alloca %TName_Nat*
  %"$ackermann_18" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }
  %"$ackermann_743" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann
  %"$ackermann_fptr_744" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_743", 0
  %"$ackermann_envptr_745" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_743", 1
  %"$m_746" = load %TName_Nat*, %TName_Nat** %m
  %"$ackermann_call_747" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_744"(i8* %"$ackermann_envptr_745", %TName_Nat* %"$m_746")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_747", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_18"
  %"$ackermann_19" = alloca %TName_Nat*
  %"$$ackermann_18_748" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_18"
  %"$$ackermann_18_fptr_749" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_18_748", 0
  %"$$ackermann_18_envptr_750" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_18_748", 1
  %"$n_751" = load %TName_Nat*, %TName_Nat** %n
  %"$$ackermann_18_call_752" = call %TName_Nat* %"$$ackermann_18_fptr_749"(i8* %"$$ackermann_18_envptr_750", %TName_Nat* %"$n_751")
  store %TName_Nat* %"$$ackermann_18_call_752", %TName_Nat** %"$ackermann_19"
  %"$$ackermann_19_753" = load %TName_Nat*, %TName_Nat** %"$ackermann_19"
  store %TName_Nat* %"$$ackermann_19_753", %TName_Nat** %ack00
  %int01 = alloca %Uint32
  %"$nat_to_int_20" = alloca %Uint32
  %"$nat_to_int_754" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @nat_to_int
  %"$nat_to_int_fptr_755" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_754", 0
  %"$nat_to_int_envptr_756" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$nat_to_int_754", 1
  %"$ack00_757" = load %TName_Nat*, %TName_Nat** %ack00
  %"$nat_to_int_call_758" = call %Uint32 %"$nat_to_int_fptr_755"(i8* %"$nat_to_int_envptr_756", %TName_Nat* %"$ack00_757")
  store %Uint32 %"$nat_to_int_call_758", %Uint32* %"$nat_to_int_20"
  %"$$nat_to_int_20_759" = load %Uint32, %Uint32* %"$nat_to_int_20"
  store %Uint32 %"$$nat_to_int_20_759", %Uint32* %int01
  %"$int01_760" = load %Uint32, %Uint32* %int01
  store %Uint32 %"$int01_760", %Uint32* %"$expr_51"
  %"$$expr_51_761" = load %Uint32, %Uint32* %"$expr_51"
  ret %Uint32 %"$$expr_51_761"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_762" = call %Uint32 @"$scilla_expr_657"(i8* null)
  %"$pval_763" = alloca %Uint32
  %"$memvoidcast_764" = bitcast %Uint32* %"$pval_763" to i8*
  store %Uint32 %"$exprval_762", %Uint32* %"$pval_763"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_88", i8* %"$memvoidcast_764")
  ret void
}
