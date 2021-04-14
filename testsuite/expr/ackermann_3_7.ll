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
target triple = "x86_64-unknown-linux-gnu"

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
@_gasrem = global i64 0
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
@NatUtils.nat_to_int = global { %Uint32 (i8*, %TName_Nat*)*, i8* } zeroinitializer

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_82"(%"$$fundef_82_env_130"* %0, %TName_Nat* %1) !dbg !4 {
entry:
  %"$$fundef_82_env_f_945" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %0, i32 0, i32 0
  %"$f_envload_946" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_82_env_f_945", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_946", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_82_env_iter_nat_nat_947" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_948" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_82_env_iter_nat_nat_947", align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_948", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$$fundef_82_env_nat_succ_949" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %0, i32 0, i32 2
  %"$nat_succ_envload_950" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_82_env_nat_succ_949", align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_950", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$retval_83" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_952" = icmp ugt i64 1, %"$gasrem_951"
  br i1 %"$gascmp_952", label %"$out_of_gas_953", label %"$have_gas_954"

"$out_of_gas_953":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_954"

"$have_gas_954":                                  ; preds = %"$out_of_gas_953", %entry
  %"$consume_955" = sub i64 %"$gasrem_951", 1
  store i64 %"$consume_955", i64* @_gasrem, align 8
  %"$iter_nat_nat_15" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_nat_956" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$iter_nat_nat_fptr_957" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_956", 0
  %"$iter_nat_nat_envptr_958" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_956", 1
  %"$f_959" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$iter_nat_nat_call_960" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_957"(i8* %"$iter_nat_nat_envptr_958", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_959"), !dbg !8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_960", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_15", align 8, !dbg !8
  %"$iter_nat_nat_16" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$$iter_nat_nat_15_961" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_15", align 8
  %"$$iter_nat_nat_15_fptr_962" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_15_961", 0
  %"$$iter_nat_nat_15_envptr_963" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_15_961", 1
  %"$$iter_nat_nat_15_call_964" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_15_fptr_962"(i8* %"$$iter_nat_nat_15_envptr_963", %TName_Nat* %1), !dbg !8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_15_call_964", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_16", align 8, !dbg !8
  %"$iter_nat_nat_17" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_nat_16_965" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_16", align 8
  %"$$iter_nat_nat_16_fptr_966" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_16_965", 0
  %"$$iter_nat_nat_16_envptr_967" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_16_965", 1
  %"$nat_succ_968" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$$iter_nat_nat_16_call_969" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_16_fptr_966"(i8* %"$$iter_nat_nat_16_envptr_967", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_968"), !dbg !8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_16_call_969", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_17", align 8, !dbg !8
  %"$$iter_nat_nat_17_970" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_17", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_17_970", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_83", align 8, !dbg !8
  %"$$retval_83_971" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_83", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_83_971"
}

define internal %TName_Nat* @"$fundef_80"(%"$$fundef_80_env_131"* %0, %TName_Nat* %1) !dbg !9 {
entry:
  %"$$fundef_80_env_ack_918" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %0, i32 0, i32 0
  %"$ack_envload_919" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_80_env_ack_918", align 8
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_919", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$$fundef_80_env_iter_nat_920" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %0, i32 0, i32 1
  %"$iter_nat_envload_921" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_80_env_iter_nat_920", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_921", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_80_env_x0_922" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %0, i32 0, i32 2
  %"$x0_envload_923" = load %TName_Nat*, %TName_Nat** %"$$fundef_80_env_x0_922", align 8
  %x0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x0_envload_923", %TName_Nat** %x0, align 8
  %"$retval_81" = alloca %TName_Nat*, align 8
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 1, %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %entry
  %"$consume_928" = sub i64 %"$gasrem_924", 1
  store i64 %"$consume_928", i64* @_gasrem, align 8
  %"$iter_nat_12" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_929" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$iter_nat_fptr_930" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_929", 0
  %"$iter_nat_envptr_931" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_929", 1
  %"$ack_932" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$iter_nat_call_933" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_930"(i8* %"$iter_nat_envptr_931", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_932"), !dbg !10
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_933", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_12", align 8, !dbg !10
  %"$iter_nat_13" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_12_934" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_12", align 8
  %"$$iter_nat_12_fptr_935" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_934", 0
  %"$$iter_nat_12_envptr_936" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_934", 1
  %"$$iter_nat_12_call_937" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_fptr_935"(i8* %"$$iter_nat_12_envptr_936", %TName_Nat* %1), !dbg !10
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_call_937", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_13", align 8, !dbg !10
  %"$iter_nat_14" = alloca %TName_Nat*, align 8
  %"$$iter_nat_13_938" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_13", align 8
  %"$$iter_nat_13_fptr_939" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_13_938", 0
  %"$$iter_nat_13_envptr_940" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_13_938", 1
  %"$x0_941" = load %TName_Nat*, %TName_Nat** %x0, align 8
  %"$$iter_nat_13_call_942" = call %TName_Nat* %"$$iter_nat_13_fptr_939"(i8* %"$$iter_nat_13_envptr_940", %TName_Nat* %"$x0_941"), !dbg !10
  store %TName_Nat* %"$$iter_nat_13_call_942", %TName_Nat** %"$iter_nat_14", align 8, !dbg !10
  %"$$iter_nat_14_943" = load %TName_Nat*, %TName_Nat** %"$iter_nat_14", align 8
  store %TName_Nat* %"$$iter_nat_14_943", %TName_Nat** %"$retval_81", align 8, !dbg !10
  %"$$retval_81_944" = load %TName_Nat*, %TName_Nat** %"$retval_81", align 8
  ret %TName_Nat* %"$$retval_81_944"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_78"(%"$$fundef_78_env_132"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !11 {
entry:
  %"$$fundef_78_env_iter_nat_884" = getelementptr inbounds %"$$fundef_78_env_132", %"$$fundef_78_env_132"* %0, i32 0, i32 0
  %"$iter_nat_envload_885" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_78_env_iter_nat_884", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_885", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_78_env_one_886" = getelementptr inbounds %"$$fundef_78_env_132", %"$$fundef_78_env_132"* %0, i32 0, i32 1
  %"$one_envload_887" = load %TName_Nat*, %TName_Nat** %"$$fundef_78_env_one_886", align 8
  %one = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$one_envload_887", %TName_Nat** %one, align 8
  %"$retval_79" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 1, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %entry
  %"$consume_892" = sub i64 %"$gasrem_888", 1
  store i64 %"$consume_892", i64* @_gasrem, align 8
  %x0 = alloca %TName_Nat*, align 8
  %"$gasrem_893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_894" = icmp ugt i64 1, %"$gasrem_893"
  br i1 %"$gascmp_894", label %"$out_of_gas_895", label %"$have_gas_896"

"$out_of_gas_895":                                ; preds = %"$have_gas_891"
  call void @_out_of_gas()
  br label %"$have_gas_896"

"$have_gas_896":                                  ; preds = %"$out_of_gas_895", %"$have_gas_891"
  %"$consume_897" = sub i64 %"$gasrem_893", 1
  store i64 %"$consume_897", i64* @_gasrem, align 8
  %"$ack_11" = alloca %TName_Nat*, align 8
  %"$ack_fptr_898" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_899" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_900" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$ack_call_901" = call %TName_Nat* %"$ack_fptr_898"(i8* %"$ack_envptr_899", %TName_Nat* %"$one_900"), !dbg !12
  store %TName_Nat* %"$ack_call_901", %TName_Nat** %"$ack_11", align 8, !dbg !12
  %"$$ack_11_902" = load %TName_Nat*, %TName_Nat** %"$ack_11", align 8
  store %TName_Nat* %"$$ack_11_902", %TName_Nat** %x0, align 8, !dbg !12
  %"$gasrem_903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_904" = icmp ugt i64 1, %"$gasrem_903"
  br i1 %"$gascmp_904", label %"$out_of_gas_905", label %"$have_gas_906"

"$out_of_gas_905":                                ; preds = %"$have_gas_896"
  call void @_out_of_gas()
  br label %"$have_gas_906"

"$have_gas_906":                                  ; preds = %"$out_of_gas_905", %"$have_gas_896"
  %"$consume_907" = sub i64 %"$gasrem_903", 1
  store i64 %"$consume_907", i64* @_gasrem, align 8
  %"$$fundef_80_envp_908_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_80_envp_908_salloc" = call i8* @_salloc(i8* %"$$fundef_80_envp_908_load", i64 40)
  %"$$fundef_80_envp_908" = bitcast i8* %"$$fundef_80_envp_908_salloc" to %"$$fundef_80_env_131"*
  %"$$fundef_80_env_voidp_910" = bitcast %"$$fundef_80_env_131"* %"$$fundef_80_envp_908" to i8*
  %"$$fundef_80_cloval_911" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_80_env_131"*, %TName_Nat*)* @"$fundef_80" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_80_env_voidp_910", 1
  %"$$fundef_80_env_ack_912" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %"$$fundef_80_envp_908", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_80_env_ack_912", align 8
  %"$$fundef_80_env_iter_nat_913" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %"$$fundef_80_envp_908", i32 0, i32 1
  %"$iter_nat_914" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_914", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_80_env_iter_nat_913", align 8
  %"$$fundef_80_env_x0_915" = getelementptr inbounds %"$$fundef_80_env_131", %"$$fundef_80_env_131"* %"$$fundef_80_envp_908", i32 0, i32 2
  %"$x0_916" = load %TName_Nat*, %TName_Nat** %x0, align 8
  store %TName_Nat* %"$x0_916", %TName_Nat** %"$$fundef_80_env_x0_915", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_80_cloval_911", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_79", align 8, !dbg !13
  %"$$retval_79_917" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_79", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_79_917"
}

define internal %TName_Nat* @"$fundef_76"(%"$$fundef_76_env_133"* %0, %TName_Nat* %1) !dbg !14 {
entry:
  %"$$fundef_76_env_f_868" = getelementptr inbounds %"$$fundef_76_env_133", %"$$fundef_76_env_133"* %0, i32 0, i32 0
  %"$f_envload_869" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_76_env_f_868", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_869", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_76_env_x_870" = getelementptr inbounds %"$$fundef_76_env_133", %"$$fundef_76_env_133"* %0, i32 0, i32 1
  %"$x_envload_871" = load %TName_Nat*, %TName_Nat** %"$$fundef_76_env_x_870", align 8
  %x = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x_envload_871", %TName_Nat** %x, align 8
  %"$retval_77" = alloca %TName_Nat*, align 8
  %"$gasrem_872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_873" = icmp ugt i64 1, %"$gasrem_872"
  br i1 %"$gascmp_873", label %"$out_of_gas_874", label %"$have_gas_875"

"$out_of_gas_874":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_875"

"$have_gas_875":                                  ; preds = %"$out_of_gas_874", %entry
  %"$consume_876" = sub i64 %"$gasrem_872", 1
  store i64 %"$consume_876", i64* @_gasrem, align 8
  %"$f_7" = alloca %TName_Nat*, align 8
  %"$f_877" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$f_fptr_878" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_877", 0
  %"$f_envptr_879" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_877", 1
  %"$x_880" = load %TName_Nat*, %TName_Nat** %x, align 8
  %"$f_call_881" = call %TName_Nat* %"$f_fptr_878"(i8* %"$f_envptr_879", %TName_Nat* %"$x_880"), !dbg !15
  store %TName_Nat* %"$f_call_881", %TName_Nat** %"$f_7", align 8, !dbg !15
  %"$$f_7_882" = load %TName_Nat*, %TName_Nat** %"$f_7", align 8
  store %TName_Nat* %"$$f_7_882", %TName_Nat** %"$retval_77", align 8, !dbg !15
  %"$$retval_77_883" = load %TName_Nat*, %TName_Nat** %"$retval_77", align 8
  ret %TName_Nat* %"$$retval_77_883"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_74"(%"$$fundef_74_env_134"* %0, %TName_Nat* %1) !dbg !16 {
entry:
  %"$$fundef_74_env_f_853" = getelementptr inbounds %"$$fundef_74_env_134", %"$$fundef_74_env_134"* %0, i32 0, i32 0
  %"$f_envload_854" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_74_env_f_853", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_854", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$retval_75" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_856" = icmp ugt i64 1, %"$gasrem_855"
  br i1 %"$gascmp_856", label %"$out_of_gas_857", label %"$have_gas_858"

"$out_of_gas_857":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_858"

"$have_gas_858":                                  ; preds = %"$out_of_gas_857", %entry
  %"$consume_859" = sub i64 %"$gasrem_855", 1
  store i64 %"$consume_859", i64* @_gasrem, align 8
  %"$$fundef_76_envp_860_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_76_envp_860_salloc" = call i8* @_salloc(i8* %"$$fundef_76_envp_860_load", i64 24)
  %"$$fundef_76_envp_860" = bitcast i8* %"$$fundef_76_envp_860_salloc" to %"$$fundef_76_env_133"*
  %"$$fundef_76_env_voidp_862" = bitcast %"$$fundef_76_env_133"* %"$$fundef_76_envp_860" to i8*
  %"$$fundef_76_cloval_863" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_76_env_133"*, %TName_Nat*)* @"$fundef_76" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_76_env_voidp_862", 1
  %"$$fundef_76_env_f_864" = getelementptr inbounds %"$$fundef_76_env_133", %"$$fundef_76_env_133"* %"$$fundef_76_envp_860", i32 0, i32 0
  %"$f_865" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_865", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_76_env_f_864", align 8
  %"$$fundef_76_env_x_866" = getelementptr inbounds %"$$fundef_76_env_133", %"$$fundef_76_env_133"* %"$$fundef_76_envp_860", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_76_env_x_866", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_76_cloval_863", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_75", align 8, !dbg !17
  %"$$retval_75_867" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_75", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_75_867"
}

define internal %TName_Nat* @"$fundef_72"(%"$$fundef_72_env_135"* %0, %TName_Nat* %1) !dbg !18 {
entry:
  %"$$fundef_72_env_f_793" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %0, i32 0, i32 0
  %"$f_envload_794" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_72_env_f_793", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_794", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_72_env_n_795" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %0, i32 0, i32 1
  %"$n_envload_796" = load %TName_Nat*, %TName_Nat** %"$$fundef_72_env_n_795", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_796", %TName_Nat** %n, align 8
  %"$$fundef_72_env_nat_fold_797" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %0, i32 0, i32 2
  %"$nat_fold_envload_798" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_72_env_nat_fold_797", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_798", { i8*, i8* }** %nat_fold, align 8
  %"$retval_73" = alloca %TName_Nat*, align 8
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 1, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %entry
  %"$consume_803" = sub i64 %"$gasrem_799", 1
  store i64 %"$consume_803", i64* @_gasrem, align 8
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_805" = icmp ugt i64 1, %"$gasrem_804"
  br i1 %"$gascmp_805", label %"$out_of_gas_806", label %"$have_gas_807"

"$out_of_gas_806":                                ; preds = %"$have_gas_802"
  call void @_out_of_gas()
  br label %"$have_gas_807"

"$have_gas_807":                                  ; preds = %"$out_of_gas_806", %"$have_gas_802"
  %"$consume_808" = sub i64 %"$gasrem_804", 1
  store i64 %"$consume_808", i64* @_gasrem, align 8
  %"$nat_fold_809" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_810" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_809", i32 2
  %"$nat_fold_811" = bitcast { i8*, i8* }* %"$nat_fold_810" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_812" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_811", align 8
  %"$nat_fold_fptr_813" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_812", 0
  %"$nat_fold_envptr_814" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_812", 1
  %"$nat_fold_call_815" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_813"(i8* %"$nat_fold_envptr_814"), !dbg !19
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_815", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8, !dbg !20
  %"$gasrem_816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_817" = icmp ugt i64 1, %"$gasrem_816"
  br i1 %"$gascmp_817", label %"$out_of_gas_818", label %"$have_gas_819"

"$out_of_gas_818":                                ; preds = %"$have_gas_807"
  call void @_out_of_gas()
  br label %"$have_gas_819"

"$have_gas_819":                                  ; preds = %"$out_of_gas_818", %"$have_gas_807"
  %"$consume_820" = sub i64 %"$gasrem_816", 1
  store i64 %"$consume_820", i64* @_gasrem, align 8
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 1, %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %"$have_gas_819"
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %"$have_gas_819"
  %"$consume_825" = sub i64 %"$gasrem_821", 1
  store i64 %"$consume_825", i64* @_gasrem, align 8
  %"$$fundef_74_envp_826_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_74_envp_826_salloc" = call i8* @_salloc(i8* %"$$fundef_74_envp_826_load", i64 16)
  %"$$fundef_74_envp_826" = bitcast i8* %"$$fundef_74_envp_826_salloc" to %"$$fundef_74_env_134"*
  %"$$fundef_74_env_voidp_828" = bitcast %"$$fundef_74_env_134"* %"$$fundef_74_envp_826" to i8*
  %"$$fundef_74_cloval_829" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_74_env_134"*, %TName_Nat*)* @"$fundef_74" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_74_env_voidp_828", 1
  %"$$fundef_74_env_f_830" = getelementptr inbounds %"$$fundef_74_env_134", %"$$fundef_74_env_134"* %"$$fundef_74_envp_826", i32 0, i32 0
  %"$f_831" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_831", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_74_env_f_830", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_74_cloval_829", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8, !dbg !21
  %"$gasrem_832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_833" = icmp ugt i64 1, %"$gasrem_832"
  br i1 %"$gascmp_833", label %"$out_of_gas_834", label %"$have_gas_835"

"$out_of_gas_834":                                ; preds = %"$have_gas_824"
  call void @_out_of_gas()
  br label %"$have_gas_835"

"$have_gas_835":                                  ; preds = %"$out_of_gas_834", %"$have_gas_824"
  %"$consume_836" = sub i64 %"$gasrem_832", 1
  store i64 %"$consume_836", i64* @_gasrem, align 8
  %"$folder_8" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$folder_837" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_838" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_837", 0
  %"$folder_envptr_839" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_837", 1
  %"$step_840" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$folder_call_841" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_838"(i8* %"$folder_envptr_839", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_840"), !dbg !22
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_841", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_8", align 8, !dbg !22
  %"$folder_9" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_8_842" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_8", align 8
  %"$$folder_8_fptr_843" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_842", 0
  %"$$folder_8_envptr_844" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_842", 1
  %"$$folder_8_call_845" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_8_fptr_843"(i8* %"$$folder_8_envptr_844", %TName_Nat* %1), !dbg !22
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_8_call_845", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_9", align 8, !dbg !22
  %"$folder_10" = alloca %TName_Nat*, align 8
  %"$$folder_9_846" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_9", align 8
  %"$$folder_9_fptr_847" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_846", 0
  %"$$folder_9_envptr_848" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_846", 1
  %"$n_849" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_9_call_850" = call %TName_Nat* %"$$folder_9_fptr_847"(i8* %"$$folder_9_envptr_848", %TName_Nat* %"$n_849"), !dbg !22
  store %TName_Nat* %"$$folder_9_call_850", %TName_Nat** %"$folder_10", align 8, !dbg !22
  %"$$folder_10_851" = load %TName_Nat*, %TName_Nat** %"$folder_10", align 8
  store %TName_Nat* %"$$folder_10_851", %TName_Nat** %"$retval_73", align 8, !dbg !22
  %"$$retval_73_852" = load %TName_Nat*, %TName_Nat** %"$retval_73", align 8
  ret %TName_Nat* %"$$retval_73_852"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_70"(%"$$fundef_70_env_136"* %0, %TName_Nat* %1) !dbg !23 {
entry:
  %"$$fundef_70_env_f_774" = getelementptr inbounds %"$$fundef_70_env_136", %"$$fundef_70_env_136"* %0, i32 0, i32 0
  %"$f_envload_775" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_70_env_f_774", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_775", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_70_env_nat_fold_776" = getelementptr inbounds %"$$fundef_70_env_136", %"$$fundef_70_env_136"* %0, i32 0, i32 1
  %"$nat_fold_envload_777" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_70_env_nat_fold_776", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_777", { i8*, i8* }** %nat_fold, align 8
  %"$retval_71" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %entry
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %"$$fundef_72_envp_783_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_72_envp_783_salloc" = call i8* @_salloc(i8* %"$$fundef_72_envp_783_load", i64 32)
  %"$$fundef_72_envp_783" = bitcast i8* %"$$fundef_72_envp_783_salloc" to %"$$fundef_72_env_135"*
  %"$$fundef_72_env_voidp_785" = bitcast %"$$fundef_72_env_135"* %"$$fundef_72_envp_783" to i8*
  %"$$fundef_72_cloval_786" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_72_env_135"*, %TName_Nat*)* @"$fundef_72" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_72_env_voidp_785", 1
  %"$$fundef_72_env_f_787" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %"$$fundef_72_envp_783", i32 0, i32 0
  %"$f_788" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_788", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_72_env_f_787", align 8
  %"$$fundef_72_env_n_789" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %"$$fundef_72_envp_783", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_72_env_n_789", align 8
  %"$$fundef_72_env_nat_fold_790" = getelementptr inbounds %"$$fundef_72_env_135", %"$$fundef_72_env_135"* %"$$fundef_72_envp_783", i32 0, i32 2
  %"$nat_fold_791" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_791", { i8*, i8* }** %"$$fundef_72_env_nat_fold_790", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_72_cloval_786", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_71", align 8, !dbg !24
  %"$$retval_71_792" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_71", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_71_792"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_68"(%"$$fundef_68_env_137"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !25 {
entry:
  %"$$fundef_68_env_nat_fold_759" = getelementptr inbounds %"$$fundef_68_env_137", %"$$fundef_68_env_137"* %0, i32 0, i32 0
  %"$nat_fold_envload_760" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_68_env_nat_fold_759", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_760", { i8*, i8* }** %nat_fold, align 8
  %"$retval_69" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_761" = load i64, i64* @_gasrem, align 8
  %"$gascmp_762" = icmp ugt i64 1, %"$gasrem_761"
  br i1 %"$gascmp_762", label %"$out_of_gas_763", label %"$have_gas_764"

"$out_of_gas_763":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_764"

"$have_gas_764":                                  ; preds = %"$out_of_gas_763", %entry
  %"$consume_765" = sub i64 %"$gasrem_761", 1
  store i64 %"$consume_765", i64* @_gasrem, align 8
  %"$$fundef_70_envp_766_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_70_envp_766_salloc" = call i8* @_salloc(i8* %"$$fundef_70_envp_766_load", i64 24)
  %"$$fundef_70_envp_766" = bitcast i8* %"$$fundef_70_envp_766_salloc" to %"$$fundef_70_env_136"*
  %"$$fundef_70_env_voidp_768" = bitcast %"$$fundef_70_env_136"* %"$$fundef_70_envp_766" to i8*
  %"$$fundef_70_cloval_769" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_70_env_136"*, %TName_Nat*)* @"$fundef_70" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_70_env_voidp_768", 1
  %"$$fundef_70_env_f_770" = getelementptr inbounds %"$$fundef_70_env_136", %"$$fundef_70_env_136"* %"$$fundef_70_envp_766", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_70_env_f_770", align 8
  %"$$fundef_70_env_nat_fold_771" = getelementptr inbounds %"$$fundef_70_env_136", %"$$fundef_70_env_136"* %"$$fundef_70_envp_766", i32 0, i32 1
  %"$nat_fold_772" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_772", { i8*, i8* }** %"$$fundef_70_env_nat_fold_771", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_70_cloval_769", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_69", align 8, !dbg !26
  %"$$retval_69_773" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_69", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_69_773"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_66"(%"$$fundef_66_env_138"* %0) !dbg !27 {
entry:
  %"$$fundef_66_env_nat_fold_745" = getelementptr inbounds %"$$fundef_66_env_138", %"$$fundef_66_env_138"* %0, i32 0, i32 0
  %"$nat_fold_envload_746" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_66_env_nat_fold_745", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_746", { i8*, i8* }** %nat_fold, align 8
  %"$retval_67" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_748" = icmp ugt i64 1, %"$gasrem_747"
  br i1 %"$gascmp_748", label %"$out_of_gas_749", label %"$have_gas_750"

"$out_of_gas_749":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_750"

"$have_gas_750":                                  ; preds = %"$out_of_gas_749", %entry
  %"$consume_751" = sub i64 %"$gasrem_747", 1
  store i64 %"$consume_751", i64* @_gasrem, align 8
  %"$$fundef_68_envp_752_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_68_envp_752_salloc" = call i8* @_salloc(i8* %"$$fundef_68_envp_752_load", i64 8)
  %"$$fundef_68_envp_752" = bitcast i8* %"$$fundef_68_envp_752_salloc" to %"$$fundef_68_env_137"*
  %"$$fundef_68_env_voidp_754" = bitcast %"$$fundef_68_env_137"* %"$$fundef_68_envp_752" to i8*
  %"$$fundef_68_cloval_755" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_68_env_137"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_68" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_68_env_voidp_754", 1
  %"$$fundef_68_env_nat_fold_756" = getelementptr inbounds %"$$fundef_68_env_137", %"$$fundef_68_env_137"* %"$$fundef_68_envp_752", i32 0, i32 0
  %"$nat_fold_757" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_757", { i8*, i8* }** %"$$fundef_68_env_nat_fold_756", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_68_cloval_755", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_67", align 8, !dbg !28
  %"$$retval_67_758" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_67", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_67_758"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_64"(%"$$fundef_64_env_139"* %0, %TName_Nat* %1) !dbg !29 {
entry:
  %"$$fundef_64_env_f_729" = getelementptr inbounds %"$$fundef_64_env_139", %"$$fundef_64_env_139"* %0, i32 0, i32 0
  %"$f_envload_730" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_64_env_f_729", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_730", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_64_env_x_731" = getelementptr inbounds %"$$fundef_64_env_139", %"$$fundef_64_env_139"* %0, i32 0, i32 1
  %"$x_envload_732" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_64_env_x_731", align 8
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_732", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$retval_65" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %entry
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %"$f_7" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$f_738" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$f_fptr_739" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_738", 0
  %"$f_envptr_740" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_738", 1
  %"$x_741" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$f_call_742" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_739"(i8* %"$f_envptr_740", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_741"), !dbg !30
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_742", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_7", align 8, !dbg !30
  %"$$f_7_743" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_7", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_7_743", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_65", align 8, !dbg !30
  %"$$retval_65_744" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_65", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_65_744"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_62"(%"$$fundef_62_env_140"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !31 {
entry:
  %"$$fundef_62_env_f_714" = getelementptr inbounds %"$$fundef_62_env_140", %"$$fundef_62_env_140"* %0, i32 0, i32 0
  %"$f_envload_715" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_62_env_f_714", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_715", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$retval_63" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_717" = icmp ugt i64 1, %"$gasrem_716"
  br i1 %"$gascmp_717", label %"$out_of_gas_718", label %"$have_gas_719"

"$out_of_gas_718":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_719"

"$have_gas_719":                                  ; preds = %"$out_of_gas_718", %entry
  %"$consume_720" = sub i64 %"$gasrem_716", 1
  store i64 %"$consume_720", i64* @_gasrem, align 8
  %"$$fundef_64_envp_721_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_64_envp_721_salloc" = call i8* @_salloc(i8* %"$$fundef_64_envp_721_load", i64 32)
  %"$$fundef_64_envp_721" = bitcast i8* %"$$fundef_64_envp_721_salloc" to %"$$fundef_64_env_139"*
  %"$$fundef_64_env_voidp_723" = bitcast %"$$fundef_64_env_139"* %"$$fundef_64_envp_721" to i8*
  %"$$fundef_64_cloval_724" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_64_env_139"*, %TName_Nat*)* @"$fundef_64" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_64_env_voidp_723", 1
  %"$$fundef_64_env_f_725" = getelementptr inbounds %"$$fundef_64_env_139", %"$$fundef_64_env_139"* %"$$fundef_64_envp_721", i32 0, i32 0
  %"$f_726" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_726", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_64_env_f_725", align 8
  %"$$fundef_64_env_x_727" = getelementptr inbounds %"$$fundef_64_env_139", %"$$fundef_64_env_139"* %"$$fundef_64_envp_721", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_64_env_x_727", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_64_cloval_724", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_63", align 8, !dbg !32
  %"$$retval_63_728" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_63", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_63_728"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_60"(%"$$fundef_60_env_141"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !33 {
entry:
  %"$$fundef_60_env_f_654" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %0, i32 0, i32 0
  %"$f_envload_655" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_60_env_f_654", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_655", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_60_env_n_656" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %0, i32 0, i32 1
  %"$n_envload_657" = load %TName_Nat*, %TName_Nat** %"$$fundef_60_env_n_656", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_657", %TName_Nat** %n, align 8
  %"$$fundef_60_env_nat_fold_658" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %0, i32 0, i32 2
  %"$nat_fold_envload_659" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_60_env_nat_fold_658", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_659", { i8*, i8* }** %nat_fold, align 8
  %"$retval_61" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 1, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %entry
  %"$consume_664" = sub i64 %"$gasrem_660", 1
  store i64 %"$consume_664", i64* @_gasrem, align 8
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_666" = icmp ugt i64 1, %"$gasrem_665"
  br i1 %"$gascmp_666", label %"$out_of_gas_667", label %"$have_gas_668"

"$out_of_gas_667":                                ; preds = %"$have_gas_663"
  call void @_out_of_gas()
  br label %"$have_gas_668"

"$have_gas_668":                                  ; preds = %"$out_of_gas_667", %"$have_gas_663"
  %"$consume_669" = sub i64 %"$gasrem_665", 1
  store i64 %"$consume_669", i64* @_gasrem, align 8
  %"$nat_fold_670" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_671" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_670", i32 1
  %"$nat_fold_672" = bitcast { i8*, i8* }* %"$nat_fold_671" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_673" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_672", align 8
  %"$nat_fold_fptr_674" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_673", 0
  %"$nat_fold_envptr_675" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_673", 1
  %"$nat_fold_call_676" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_674"(i8* %"$nat_fold_envptr_675"), !dbg !34
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_676", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8, !dbg !35
  %"$gasrem_677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_678" = icmp ugt i64 1, %"$gasrem_677"
  br i1 %"$gascmp_678", label %"$out_of_gas_679", label %"$have_gas_680"

"$out_of_gas_679":                                ; preds = %"$have_gas_668"
  call void @_out_of_gas()
  br label %"$have_gas_680"

"$have_gas_680":                                  ; preds = %"$out_of_gas_679", %"$have_gas_668"
  %"$consume_681" = sub i64 %"$gasrem_677", 1
  store i64 %"$consume_681", i64* @_gasrem, align 8
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_683" = icmp ugt i64 1, %"$gasrem_682"
  br i1 %"$gascmp_683", label %"$out_of_gas_684", label %"$have_gas_685"

"$out_of_gas_684":                                ; preds = %"$have_gas_680"
  call void @_out_of_gas()
  br label %"$have_gas_685"

"$have_gas_685":                                  ; preds = %"$out_of_gas_684", %"$have_gas_680"
  %"$consume_686" = sub i64 %"$gasrem_682", 1
  store i64 %"$consume_686", i64* @_gasrem, align 8
  %"$$fundef_62_envp_687_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_62_envp_687_salloc" = call i8* @_salloc(i8* %"$$fundef_62_envp_687_load", i64 16)
  %"$$fundef_62_envp_687" = bitcast i8* %"$$fundef_62_envp_687_salloc" to %"$$fundef_62_env_140"*
  %"$$fundef_62_env_voidp_689" = bitcast %"$$fundef_62_env_140"* %"$$fundef_62_envp_687" to i8*
  %"$$fundef_62_cloval_690" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_62_env_140"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_62" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_62_env_voidp_689", 1
  %"$$fundef_62_env_f_691" = getelementptr inbounds %"$$fundef_62_env_140", %"$$fundef_62_env_140"* %"$$fundef_62_envp_687", i32 0, i32 0
  %"$f_692" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_692", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_62_env_f_691", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_62_cloval_690", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8, !dbg !36
  %"$gasrem_693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_694" = icmp ugt i64 1, %"$gasrem_693"
  br i1 %"$gascmp_694", label %"$out_of_gas_695", label %"$have_gas_696"

"$out_of_gas_695":                                ; preds = %"$have_gas_685"
  call void @_out_of_gas()
  br label %"$have_gas_696"

"$have_gas_696":                                  ; preds = %"$out_of_gas_695", %"$have_gas_685"
  %"$consume_697" = sub i64 %"$gasrem_693", 1
  store i64 %"$consume_697", i64* @_gasrem, align 8
  %"$folder_8" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$folder_698" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_699" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_698", 0
  %"$folder_envptr_700" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_698", 1
  %"$step_701" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$folder_call_702" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_699"(i8* %"$folder_envptr_700", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_701"), !dbg !37
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_702", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_8", align 8, !dbg !37
  %"$folder_9" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_8_703" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_8", align 8
  %"$$folder_8_fptr_704" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_8_703", 0
  %"$$folder_8_envptr_705" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_8_703", 1
  %"$$folder_8_call_706" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_fptr_704"(i8* %"$$folder_8_envptr_705", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1), !dbg !37
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_call_706", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_9", align 8, !dbg !37
  %"$folder_10" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_9_707" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_9", align 8
  %"$$folder_9_fptr_708" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_9_707", 0
  %"$$folder_9_envptr_709" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_9_707", 1
  %"$n_710" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_9_call_711" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_fptr_708"(i8* %"$$folder_9_envptr_709", %TName_Nat* %"$n_710"), !dbg !37
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_call_711", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_10", align 8, !dbg !37
  %"$$folder_10_712" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_10", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_10_712", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_61", align 8, !dbg !37
  %"$$retval_61_713" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_61", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_61_713"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_58"(%"$$fundef_58_env_142"* %0, %TName_Nat* %1) !dbg !38 {
entry:
  %"$$fundef_58_env_f_635" = getelementptr inbounds %"$$fundef_58_env_142", %"$$fundef_58_env_142"* %0, i32 0, i32 0
  %"$f_envload_636" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_58_env_f_635", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_636", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_58_env_nat_fold_637" = getelementptr inbounds %"$$fundef_58_env_142", %"$$fundef_58_env_142"* %0, i32 0, i32 1
  %"$nat_fold_envload_638" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_58_env_nat_fold_637", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_638", { i8*, i8* }** %nat_fold, align 8
  %"$retval_59" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_640" = icmp ugt i64 1, %"$gasrem_639"
  br i1 %"$gascmp_640", label %"$out_of_gas_641", label %"$have_gas_642"

"$out_of_gas_641":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_642"

"$have_gas_642":                                  ; preds = %"$out_of_gas_641", %entry
  %"$consume_643" = sub i64 %"$gasrem_639", 1
  store i64 %"$consume_643", i64* @_gasrem, align 8
  %"$$fundef_60_envp_644_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_60_envp_644_salloc" = call i8* @_salloc(i8* %"$$fundef_60_envp_644_load", i64 32)
  %"$$fundef_60_envp_644" = bitcast i8* %"$$fundef_60_envp_644_salloc" to %"$$fundef_60_env_141"*
  %"$$fundef_60_env_voidp_646" = bitcast %"$$fundef_60_env_141"* %"$$fundef_60_envp_644" to i8*
  %"$$fundef_60_cloval_647" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_60_env_141"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_60" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_60_env_voidp_646", 1
  %"$$fundef_60_env_f_648" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %"$$fundef_60_envp_644", i32 0, i32 0
  %"$f_649" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_649", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_60_env_f_648", align 8
  %"$$fundef_60_env_n_650" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %"$$fundef_60_envp_644", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_60_env_n_650", align 8
  %"$$fundef_60_env_nat_fold_651" = getelementptr inbounds %"$$fundef_60_env_141", %"$$fundef_60_env_141"* %"$$fundef_60_envp_644", i32 0, i32 2
  %"$nat_fold_652" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_652", { i8*, i8* }** %"$$fundef_60_env_nat_fold_651", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_60_cloval_647", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_59", align 8, !dbg !39
  %"$$retval_59_653" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_59", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_59_653"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_56"(%"$$fundef_56_env_143"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !40 {
entry:
  %"$$fundef_56_env_nat_fold_620" = getelementptr inbounds %"$$fundef_56_env_143", %"$$fundef_56_env_143"* %0, i32 0, i32 0
  %"$nat_fold_envload_621" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_56_env_nat_fold_620", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_621", { i8*, i8* }** %nat_fold, align 8
  %"$retval_57" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %entry
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem, align 8
  %"$$fundef_58_envp_627_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_58_envp_627_salloc" = call i8* @_salloc(i8* %"$$fundef_58_envp_627_load", i64 24)
  %"$$fundef_58_envp_627" = bitcast i8* %"$$fundef_58_envp_627_salloc" to %"$$fundef_58_env_142"*
  %"$$fundef_58_env_voidp_629" = bitcast %"$$fundef_58_env_142"* %"$$fundef_58_envp_627" to i8*
  %"$$fundef_58_cloval_630" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_58_env_142"*, %TName_Nat*)* @"$fundef_58" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_58_env_voidp_629", 1
  %"$$fundef_58_env_f_631" = getelementptr inbounds %"$$fundef_58_env_142", %"$$fundef_58_env_142"* %"$$fundef_58_envp_627", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_58_env_f_631", align 8
  %"$$fundef_58_env_nat_fold_632" = getelementptr inbounds %"$$fundef_58_env_142", %"$$fundef_58_env_142"* %"$$fundef_58_envp_627", i32 0, i32 1
  %"$nat_fold_633" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_633", { i8*, i8* }** %"$$fundef_58_env_nat_fold_632", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_58_cloval_630", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_57", align 8, !dbg !41
  %"$$retval_57_634" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_57", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_57_634"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_54"(%"$$fundef_54_env_144"* %0) !dbg !42 {
entry:
  %"$$fundef_54_env_nat_fold_606" = getelementptr inbounds %"$$fundef_54_env_144", %"$$fundef_54_env_144"* %0, i32 0, i32 0
  %"$nat_fold_envload_607" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_54_env_nat_fold_606", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_607", { i8*, i8* }** %nat_fold, align 8
  %"$retval_55" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 1, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %entry
  %"$consume_612" = sub i64 %"$gasrem_608", 1
  store i64 %"$consume_612", i64* @_gasrem, align 8
  %"$$fundef_56_envp_613_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_56_envp_613_salloc" = call i8* @_salloc(i8* %"$$fundef_56_envp_613_load", i64 8)
  %"$$fundef_56_envp_613" = bitcast i8* %"$$fundef_56_envp_613_salloc" to %"$$fundef_56_env_143"*
  %"$$fundef_56_env_voidp_615" = bitcast %"$$fundef_56_env_143"* %"$$fundef_56_envp_613" to i8*
  %"$$fundef_56_cloval_616" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_56_env_143"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_56" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_56_env_voidp_615", 1
  %"$$fundef_56_env_nat_fold_617" = getelementptr inbounds %"$$fundef_56_env_143", %"$$fundef_56_env_143"* %"$$fundef_56_envp_613", i32 0, i32 0
  %"$nat_fold_618" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_618", { i8*, i8* }** %"$$fundef_56_env_nat_fold_617", align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_56_cloval_616", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_55", align 8, !dbg !43
  %"$$retval_55_619" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_55", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_55_619"
}

define internal %TName_Nat* @"$fundef_52"(%"$$fundef_52_env_145"* %0, %TName_Nat* %1) !dbg !44 {
entry:
  %"$retval_53" = alloca %TName_Nat*, align 8
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 1, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %entry
  %"$consume_600" = sub i64 %"$gasrem_596", 1
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %"$adtval_601_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_601_salloc" = call i8* @_salloc(i8* %"$adtval_601_load", i64 9)
  %"$adtval_601" = bitcast i8* %"$adtval_601_salloc" to %CName_Succ*
  %"$adtgep_602" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_601", i32 0, i32 0
  store i8 1, i8* %"$adtgep_602", align 1
  %"$adtgep_603" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_601", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_603", align 8
  %"$adtptr_604" = bitcast %CName_Succ* %"$adtval_601" to %TName_Nat*
  store %TName_Nat* %"$adtptr_604", %TName_Nat** %"$retval_53", align 8, !dbg !45
  %"$$retval_53_605" = load %TName_Nat*, %TName_Nat** %"$retval_53", align 8
  ret %TName_Nat* %"$$retval_53_605"
}

define internal %Uint32 @"$fundef_49"(%"$$fundef_49_env_146"* %0, %TName_Nat* %1) !dbg !46 {
entry:
  %"$$fundef_49_env_one_int_588" = getelementptr inbounds %"$$fundef_49_env_146", %"$$fundef_49_env_146"* %0, i32 0, i32 0
  %"$one_int_envload_589" = load %Uint32, %Uint32* %"$$fundef_49_env_one_int_588", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_589", %Uint32* %one_int, align 4
  %"$$fundef_49_env_z_590" = getelementptr inbounds %"$$fundef_49_env_146", %"$$fundef_49_env_146"* %0, i32 0, i32 1
  %"$z_envload_591" = load %Uint32, %Uint32* %"$$fundef_49_env_z_590", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_591", %Uint32* %z, align 4
  %"$retval_50" = alloca %Uint32, align 8
  %"$z_592" = load %Uint32, %Uint32* %z, align 4
  %"$one_int_593" = load %Uint32, %Uint32* %one_int, align 4
  %"$add_call_594" = call %Uint32 @_add_Uint32(%Uint32 %"$z_592", %Uint32 %"$one_int_593")
  store %Uint32 %"$add_call_594", %Uint32* %"$retval_50", align 4, !dbg !47
  %"$$retval_50_595" = load %Uint32, %Uint32* %"$retval_50", align 4
  ret %Uint32 %"$$retval_50_595"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_47"(%"$$fundef_47_env_147"* %0, %Uint32 %1) !dbg !48 {
entry:
  %"$$fundef_47_env_one_int_573" = getelementptr inbounds %"$$fundef_47_env_147", %"$$fundef_47_env_147"* %0, i32 0, i32 0
  %"$one_int_envload_574" = load %Uint32, %Uint32* %"$$fundef_47_env_one_int_573", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_574", %Uint32* %one_int, align 4
  %"$retval_48" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 1, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %entry
  %"$consume_579" = sub i64 %"$gasrem_575", 1
  store i64 %"$consume_579", i64* @_gasrem, align 8
  %"$$fundef_49_envp_580_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_49_envp_580_salloc" = call i8* @_salloc(i8* %"$$fundef_49_envp_580_load", i64 8)
  %"$$fundef_49_envp_580" = bitcast i8* %"$$fundef_49_envp_580_salloc" to %"$$fundef_49_env_146"*
  %"$$fundef_49_env_voidp_582" = bitcast %"$$fundef_49_env_146"* %"$$fundef_49_envp_580" to i8*
  %"$$fundef_49_cloval_583" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_49_env_146"*, %TName_Nat*)* @"$fundef_49" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_49_env_voidp_582", 1
  %"$$fundef_49_env_one_int_584" = getelementptr inbounds %"$$fundef_49_env_146", %"$$fundef_49_env_146"* %"$$fundef_49_envp_580", i32 0, i32 0
  %"$one_int_585" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_585", %Uint32* %"$$fundef_49_env_one_int_584", align 4
  %"$$fundef_49_env_z_586" = getelementptr inbounds %"$$fundef_49_env_146", %"$$fundef_49_env_146"* %"$$fundef_49_envp_580", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_49_env_z_586", align 4
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_49_cloval_583", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_48", align 8, !dbg !49
  %"$$retval_48_587" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_48", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_48_587"
}

define internal %Uint32 @"$fundef_45"(%"$$fundef_45_env_148"* %0, %TName_Nat* %1) !dbg !50 {
entry:
  %"$$fundef_45_env_nat_fold_497" = getelementptr inbounds %"$$fundef_45_env_148", %"$$fundef_45_env_148"* %0, i32 0, i32 0
  %"$nat_fold_envload_498" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_45_env_nat_fold_497", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_498", { i8*, i8* }** %nat_fold, align 8
  %"$retval_46" = alloca %Uint32, align 8
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %entry
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 1, %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %"$have_gas_502"
  %"$consume_508" = sub i64 %"$gasrem_504", 1
  store i64 %"$consume_508", i64* @_gasrem, align 8
  %"$nat_fold_509" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_510" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_509", i32 0
  %"$nat_fold_511" = bitcast { i8*, i8* }* %"$nat_fold_510" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_512" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_511", align 8
  %"$nat_fold_fptr_513" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_512", 0
  %"$nat_fold_envptr_514" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_512", 1
  %"$nat_fold_call_515" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_fptr_513"(i8* %"$nat_fold_envptr_514"), !dbg !51
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_call_515", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8, !dbg !52
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 1, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_507"
  %"$consume_520" = sub i64 %"$gasrem_516", 1
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %one_int = alloca %Uint32, align 8
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 1, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$have_gas_519"
  %"$consume_525" = sub i64 %"$gasrem_521", 1
  store i64 %"$consume_525", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one_int, align 4, !dbg !53
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_524"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_529"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$$fundef_47_envp_536_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_47_envp_536_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_536_load", i64 4)
  %"$$fundef_47_envp_536" = bitcast i8* %"$$fundef_47_envp_536_salloc" to %"$$fundef_47_env_147"*
  %"$$fundef_47_env_voidp_538" = bitcast %"$$fundef_47_env_147"* %"$$fundef_47_envp_536" to i8*
  %"$$fundef_47_cloval_539" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_47_env_147"*, %Uint32)* @"$fundef_47" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_47_env_voidp_538", 1
  %"$$fundef_47_env_one_int_540" = getelementptr inbounds %"$$fundef_47_env_147", %"$$fundef_47_env_147"* %"$$fundef_47_envp_536", i32 0, i32 0
  %"$one_int_541" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_541", %Uint32* %"$$fundef_47_env_one_int_540", align 4
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_47_cloval_539", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8, !dbg !54
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_534"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %zero_int = alloca %Uint32, align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero_int, align 4, !dbg !55
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_550"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$fold_4" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$fold_557" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$fold_fptr_558" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_557", 0
  %"$fold_envptr_559" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_557", 1
  %"$f_560" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$fold_call_561" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_558"(i8* %"$fold_envptr_559", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_560"), !dbg !56
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_561", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_4", align 8, !dbg !56
  %"$fold_5" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fold_4_562" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_4", align 8
  %"$$fold_4_fptr_563" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_4_562", 0
  %"$$fold_4_envptr_564" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_4_562", 1
  %"$zero_int_565" = load %Uint32, %Uint32* %zero_int, align 4
  %"$$fold_4_call_566" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_4_fptr_563"(i8* %"$$fold_4_envptr_564", %Uint32 %"$zero_int_565"), !dbg !56
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_4_call_566", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_5", align 8, !dbg !56
  %"$fold_6" = alloca %Uint32, align 8
  %"$$fold_5_567" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_5", align 8
  %"$$fold_5_fptr_568" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_5_567", 0
  %"$$fold_5_envptr_569" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_5_567", 1
  %"$$fold_5_call_570" = call %Uint32 %"$$fold_5_fptr_568"(i8* %"$$fold_5_envptr_569", %TName_Nat* %1), !dbg !56
  store %Uint32 %"$$fold_5_call_570", %Uint32* %"$fold_6", align 4, !dbg !56
  %"$$fold_6_571" = load %Uint32, %Uint32* %"$fold_6", align 4
  store %Uint32 %"$$fold_6_571", %Uint32* %"$retval_46", align 4, !dbg !56
  %"$$retval_46_572" = load %Uint32, %Uint32* %"$retval_46", align 4
  ret %Uint32 %"$$retval_46_572"
}

define internal %TName_Nat* @"$fundef_43"(%"$$fundef_43_env_149"* %0, %TName_Nat* %1) !dbg !57 {
entry:
  %"$$fundef_43_env_f0_432" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %0, i32 0, i32 0
  %"$f0_envload_433" = load %TName_Nat*, %TName_Nat** %"$$fundef_43_env_f0_432", align 8
  %f0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$f0_envload_433", %TName_Nat** %f0, align 8
  %"$$fundef_43_env_fn_434" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %0, i32 0, i32 1
  %"$fn_envload_435" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_fn_434", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_435", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_43_env_g_436" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %0, i32 0, i32 2
  %"$g_envload_437" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_g_436", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_437", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_44" = alloca %TName_Nat*, align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 2, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %entry
  %"$consume_442" = sub i64 %"$gasrem_438", 2
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$n_tag_444" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_445" = load i8, i8* %"$n_tag_444", align 1
  switch i8 %"$n_tag_445", label %"$empty_default_446" [
    i8 1, label %"$Succ_447"
    i8 0, label %"$Zero_488"
  ], !dbg !58

"$Succ_447":                                      ; preds = %"$have_gas_441"
  %"$n_448" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_449" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_448", i32 0, i32 1
  %"$n1_load_450" = load %TName_Nat*, %TName_Nat** %"$n1_gep_449", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_450", %TName_Nat** %n1, align 8
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$Succ_447"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$Succ_447"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %res = alloca %TName_Nat*, align 8
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_454"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$fn_0" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_461" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$fn_fptr_462" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_461", 0
  %"$fn_envptr_463" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_461", 1
  %"$f0_464" = load %TName_Nat*, %TName_Nat** %f0, align 8
  %"$fn_call_465" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_462"(i8* %"$fn_envptr_463", %TName_Nat* %"$f0_464"), !dbg !59
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_465", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8, !dbg !59
  %"$fn_1" = alloca %TName_Nat*, align 8
  %"$$fn_0_466" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8
  %"$$fn_0_fptr_467" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_466", 0
  %"$$fn_0_envptr_468" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_466", 1
  %"$n1_469" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_0_call_470" = call %TName_Nat* %"$$fn_0_fptr_467"(i8* %"$$fn_0_envptr_468", %TName_Nat* %"$n1_469"), !dbg !59
  store %TName_Nat* %"$$fn_0_call_470", %TName_Nat** %"$fn_1", align 8, !dbg !59
  %"$$fn_1_471" = load %TName_Nat*, %TName_Nat** %"$fn_1", align 8
  store %TName_Nat* %"$$fn_1_471", %TName_Nat** %res, align 8, !dbg !59
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_459"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %"$g_2" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_477" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$g_fptr_478" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_477", 0
  %"$g_envptr_479" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_477", 1
  %"$res_480" = load %TName_Nat*, %TName_Nat** %res, align 8
  %"$g_call_481" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_478"(i8* %"$g_envptr_479", %TName_Nat* %"$res_480"), !dbg !62
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_481", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8, !dbg !62
  %"$g_3" = alloca %TName_Nat*, align 8
  %"$$g_2_482" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_483" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_482", 0
  %"$$g_2_envptr_484" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_482", 1
  %"$n1_485" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_2_call_486" = call %TName_Nat* %"$$g_2_fptr_483"(i8* %"$$g_2_envptr_484", %TName_Nat* %"$n1_485"), !dbg !62
  store %TName_Nat* %"$$g_2_call_486", %TName_Nat** %"$g_3", align 8, !dbg !62
  %"$$g_3_487" = load %TName_Nat*, %TName_Nat** %"$g_3", align 8
  store %TName_Nat* %"$$g_3_487", %TName_Nat** %"$retval_44", align 8, !dbg !62
  br label %"$matchsucc_443"

"$Zero_488":                                      ; preds = %"$have_gas_441"
  %"$n_489" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_491" = icmp ugt i64 1, %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %"$Zero_488"
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %"$Zero_488"
  %"$consume_494" = sub i64 %"$gasrem_490", 1
  store i64 %"$consume_494", i64* @_gasrem, align 8
  %"$f0_495" = load %TName_Nat*, %TName_Nat** %f0, align 8
  store %TName_Nat* %"$f0_495", %TName_Nat** %"$retval_44", align 8, !dbg !63
  br label %"$matchsucc_443"

"$empty_default_446":                             ; preds = %"$have_gas_441"
  br label %"$matchsucc_443"

"$matchsucc_443":                                 ; preds = %"$have_gas_493", %"$have_gas_475", %"$empty_default_446"
  %"$$retval_44_496" = load %TName_Nat*, %TName_Nat** %"$retval_44", align 8
  ret %TName_Nat* %"$$retval_44_496"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_41"(%"$$fundef_41_env_150"* %0, %TName_Nat* %1) !dbg !65 {
entry:
  %"$$fundef_41_env_fn_413" = getelementptr inbounds %"$$fundef_41_env_150", %"$$fundef_41_env_150"* %0, i32 0, i32 0
  %"$fn_envload_414" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_fn_413", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_414", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_41_env_g_415" = getelementptr inbounds %"$$fundef_41_env_150", %"$$fundef_41_env_150"* %0, i32 0, i32 1
  %"$g_envload_416" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_g_415", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_416", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_42" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %entry
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$$fundef_43_envp_422_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_43_envp_422_salloc" = call i8* @_salloc(i8* %"$$fundef_43_envp_422_load", i64 40)
  %"$$fundef_43_envp_422" = bitcast i8* %"$$fundef_43_envp_422_salloc" to %"$$fundef_43_env_149"*
  %"$$fundef_43_env_voidp_424" = bitcast %"$$fundef_43_env_149"* %"$$fundef_43_envp_422" to i8*
  %"$$fundef_43_cloval_425" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_43_env_149"*, %TName_Nat*)* @"$fundef_43" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_43_env_voidp_424", 1
  %"$$fundef_43_env_f0_426" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %"$$fundef_43_envp_422", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_43_env_f0_426", align 8
  %"$$fundef_43_env_fn_427" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %"$$fundef_43_envp_422", i32 0, i32 1
  %"$fn_428" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_428", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_fn_427", align 8
  %"$$fundef_43_env_g_429" = getelementptr inbounds %"$$fundef_43_env_149", %"$$fundef_43_env_149"* %"$$fundef_43_envp_422", i32 0, i32 2
  %"$g_430" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_430", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_g_429", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_43_cloval_425", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_42", align 8, !dbg !66
  %"$$retval_42_431" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_42", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_42_431"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_39"(%"$$fundef_39_env_151"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) !dbg !67 {
entry:
  %"$retval_40" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %entry
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_397"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$$fundef_41_envp_404_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_41_envp_404_salloc" = call i8* @_salloc(i8* %"$$fundef_41_envp_404_load", i64 32)
  %"$$fundef_41_envp_404" = bitcast i8* %"$$fundef_41_envp_404_salloc" to %"$$fundef_41_env_150"*
  %"$$fundef_41_env_voidp_406" = bitcast %"$$fundef_41_env_150"* %"$$fundef_41_envp_404" to i8*
  %"$$fundef_41_cloval_407" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_41_env_150"*, %TName_Nat*)* @"$fundef_41" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_41_env_voidp_406", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_41_cloval_407", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8, !dbg !68
  %"$$fundef_41_env_fn_408" = getelementptr inbounds %"$$fundef_41_env_150", %"$$fundef_41_env_150"* %"$$fundef_41_envp_404", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_fn_408", align 8
  %"$$fundef_41_env_g_409" = getelementptr inbounds %"$$fundef_41_env_150", %"$$fundef_41_env_150"* %"$$fundef_41_envp_404", i32 0, i32 1
  %"$g_410" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_410", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_g_409", align 8
  %"$g_411" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_411", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_40", align 8, !dbg !68
  %"$$retval_40_412" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_40", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_40_412"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_37"(%"$$fundef_37_env_152"* %0) !dbg !69 {
entry:
  %"$retval_38" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %entry
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_39_env_151"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_39" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_38", align 8, !dbg !70
  %"$$retval_38_393" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_38", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_38_393"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_35"(%"$$fundef_35_env_153"* %0, %TName_Nat* %1) !dbg !71 {
entry:
  %"$$fundef_35_env_f0_320" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %0, i32 0, i32 0
  %"$f0_envload_321" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_35_env_f0_320", align 8
  %f0 = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_envload_321", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$$fundef_35_env_fn_322" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %0, i32 0, i32 1
  %"$fn_envload_323" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_fn_322", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_323", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_35_env_g_324" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %0, i32 0, i32 2
  %"$g_envload_325" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_g_324", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_325", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_36" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 2, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %entry
  %"$consume_330" = sub i64 %"$gasrem_326", 2
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %"$n_tag_332" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_333" = load i8, i8* %"$n_tag_332", align 1
  switch i8 %"$n_tag_333", label %"$empty_default_334" [
    i8 1, label %"$Succ_335"
    i8 0, label %"$Zero_376"
  ], !dbg !72

"$Succ_335":                                      ; preds = %"$have_gas_329"
  %"$n_336" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_337" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_336", i32 0, i32 1
  %"$n1_load_338" = load %TName_Nat*, %TName_Nat** %"$n1_gep_337", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_338", %TName_Nat** %n1, align 8
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$Succ_335"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$Succ_335"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %res = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_342"
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$fn_0" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_349" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$fn_fptr_350" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_349", 0
  %"$fn_envptr_351" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_349", 1
  %"$f0_352" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$fn_call_353" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_350"(i8* %"$fn_envptr_351", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_352"), !dbg !73
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_353", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8, !dbg !73
  %"$fn_1" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fn_0_354" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8
  %"$$fn_0_fptr_355" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_0_354", 0
  %"$$fn_0_envptr_356" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_0_354", 1
  %"$n1_357" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_0_call_358" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_fptr_355"(i8* %"$$fn_0_envptr_356", %TName_Nat* %"$n1_357"), !dbg !73
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_call_358", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_1", align 8, !dbg !73
  %"$$fn_1_359" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_1", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_1_359", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8, !dbg !73
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_347"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %"$g_2" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_365" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$g_fptr_366" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_365", 0
  %"$g_envptr_367" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_365", 1
  %"$res_368" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8
  %"$g_call_369" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_366"(i8* %"$g_envptr_367", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_368"), !dbg !76
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_369", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8, !dbg !76
  %"$g_3" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$g_2_370" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_371" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_2_370", 0
  %"$$g_2_envptr_372" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_2_370", 1
  %"$n1_373" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_2_call_374" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_fptr_371"(i8* %"$$g_2_envptr_372", %TName_Nat* %"$n1_373"), !dbg !76
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_call_374", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_3", align 8, !dbg !76
  %"$$g_3_375" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_3", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_3_375", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_36", align 8, !dbg !76
  br label %"$matchsucc_331"

"$Zero_376":                                      ; preds = %"$have_gas_329"
  %"$n_377" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$Zero_376"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$Zero_376"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %"$f0_383" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_383", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_36", align 8, !dbg !77
  br label %"$matchsucc_331"

"$empty_default_334":                             ; preds = %"$have_gas_329"
  br label %"$matchsucc_331"

"$matchsucc_331":                                 ; preds = %"$have_gas_381", %"$have_gas_363", %"$empty_default_334"
  %"$$retval_36_384" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_36", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_36_384"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_33"(%"$$fundef_33_env_154"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !79 {
entry:
  %"$$fundef_33_env_fn_301" = getelementptr inbounds %"$$fundef_33_env_154", %"$$fundef_33_env_154"* %0, i32 0, i32 0
  %"$fn_envload_302" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_fn_301", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_302", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_33_env_g_303" = getelementptr inbounds %"$$fundef_33_env_154", %"$$fundef_33_env_154"* %0, i32 0, i32 1
  %"$g_envload_304" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_g_303", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_304", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_34" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %entry
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$$fundef_35_envp_310_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_35_envp_310_salloc" = call i8* @_salloc(i8* %"$$fundef_35_envp_310_load", i64 48)
  %"$$fundef_35_envp_310" = bitcast i8* %"$$fundef_35_envp_310_salloc" to %"$$fundef_35_env_153"*
  %"$$fundef_35_env_voidp_312" = bitcast %"$$fundef_35_env_153"* %"$$fundef_35_envp_310" to i8*
  %"$$fundef_35_cloval_313" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_35_env_153"*, %TName_Nat*)* @"$fundef_35" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_35_env_voidp_312", 1
  %"$$fundef_35_env_f0_314" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %"$$fundef_35_envp_310", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_35_env_f0_314", align 8
  %"$$fundef_35_env_fn_315" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %"$$fundef_35_envp_310", i32 0, i32 1
  %"$fn_316" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_316", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_fn_315", align 8
  %"$$fundef_35_env_g_317" = getelementptr inbounds %"$$fundef_35_env_153", %"$$fundef_35_env_153"* %"$$fundef_35_envp_310", i32 0, i32 2
  %"$g_318" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_318", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_g_317", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_35_cloval_313", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_34", align 8, !dbg !80
  %"$$retval_34_319" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_34", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_34_319"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_31"(%"$$fundef_31_env_155"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !81 {
entry:
  %"$retval_32" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %entry
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$$fundef_33_envp_292_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_33_envp_292_salloc" = call i8* @_salloc(i8* %"$$fundef_33_envp_292_load", i64 32)
  %"$$fundef_33_envp_292" = bitcast i8* %"$$fundef_33_envp_292_salloc" to %"$$fundef_33_env_154"*
  %"$$fundef_33_env_voidp_294" = bitcast %"$$fundef_33_env_154"* %"$$fundef_33_envp_292" to i8*
  %"$$fundef_33_cloval_295" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_33_env_154"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_33" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_33_env_voidp_294", 1
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_33_cloval_295", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8, !dbg !82
  %"$$fundef_33_env_fn_296" = getelementptr inbounds %"$$fundef_33_env_154", %"$$fundef_33_env_154"* %"$$fundef_33_envp_292", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_fn_296", align 8
  %"$$fundef_33_env_g_297" = getelementptr inbounds %"$$fundef_33_env_154", %"$$fundef_33_env_154"* %"$$fundef_33_envp_292", i32 0, i32 1
  %"$g_298" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_298", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_g_297", align 8
  %"$g_299" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_299", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_32", align 8, !dbg !82
  %"$$retval_32_300" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_32", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_32_300"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_29"(%"$$fundef_29_env_156"* %0) !dbg !83 {
entry:
  %"$retval_30" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_274" = icmp ugt i64 1, %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %entry
  %"$consume_277" = sub i64 %"$gasrem_273", 1
  store i64 %"$consume_277", i64* @_gasrem, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_31_env_155"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_31" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_30", align 8, !dbg !84
  %"$$retval_30_281" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_30", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_30_281"
}

define internal %Uint32 @"$fundef_27"(%"$$fundef_27_env_157"* %0, %TName_Nat* %1) !dbg !85 {
entry:
  %"$$fundef_27_env_f0_208" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %0, i32 0, i32 0
  %"$f0_envload_209" = load %Uint32, %Uint32* %"$$fundef_27_env_f0_208", align 4
  %f0 = alloca %Uint32, align 8
  store %Uint32 %"$f0_envload_209", %Uint32* %f0, align 4
  %"$$fundef_27_env_fn_210" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %0, i32 0, i32 1
  %"$fn_envload_211" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_fn_210", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_211", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_27_env_g_212" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %0, i32 0, i32 2
  %"$g_envload_213" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_g_212", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_213", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_28" = alloca %Uint32, align 8
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 2, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %entry
  %"$consume_218" = sub i64 %"$gasrem_214", 2
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %"$n_tag_220" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_221" = load i8, i8* %"$n_tag_220", align 1
  switch i8 %"$n_tag_221", label %"$empty_default_222" [
    i8 1, label %"$Succ_223"
    i8 0, label %"$Zero_264"
  ], !dbg !86

"$Succ_223":                                      ; preds = %"$have_gas_217"
  %"$n_224" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_225" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_224", i32 0, i32 1
  %"$n1_load_226" = load %TName_Nat*, %TName_Nat** %"$n1_gep_225", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_226", %TName_Nat** %n1, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$Succ_223"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$Succ_223"
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_230"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %"$fn_0" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_237" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$fn_fptr_238" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_237", 0
  %"$fn_envptr_239" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_237", 1
  %"$f0_240" = load %Uint32, %Uint32* %f0, align 4
  %"$fn_call_241" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_238"(i8* %"$fn_envptr_239", %Uint32 %"$f0_240"), !dbg !87
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_241", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8, !dbg !87
  %"$fn_1" = alloca %Uint32, align 8
  %"$$fn_0_242" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8
  %"$$fn_0_fptr_243" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_0_242", 0
  %"$$fn_0_envptr_244" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_0_242", 1
  %"$n1_245" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_0_call_246" = call %Uint32 %"$$fn_0_fptr_243"(i8* %"$$fn_0_envptr_244", %TName_Nat* %"$n1_245"), !dbg !87
  store %Uint32 %"$$fn_0_call_246", %Uint32* %"$fn_1", align 4, !dbg !87
  %"$$fn_1_247" = load %Uint32, %Uint32* %"$fn_1", align 4
  store %Uint32 %"$$fn_1_247", %Uint32* %res, align 4, !dbg !87
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_235"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$g_2" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_253" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_254" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_253", 0
  %"$g_envptr_255" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_253", 1
  %"$res_256" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_257" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_254"(i8* %"$g_envptr_255", %Uint32 %"$res_256"), !dbg !90
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_257", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8, !dbg !90
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_258" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_259" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_2_258", 0
  %"$$g_2_envptr_260" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_2_258", 1
  %"$n1_261" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_2_call_262" = call %Uint32 %"$$g_2_fptr_259"(i8* %"$$g_2_envptr_260", %TName_Nat* %"$n1_261"), !dbg !90
  store %Uint32 %"$$g_2_call_262", %Uint32* %"$g_3", align 4, !dbg !90
  %"$$g_3_263" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_263", %Uint32* %"$retval_28", align 4, !dbg !90
  br label %"$matchsucc_219"

"$Zero_264":                                      ; preds = %"$have_gas_217"
  %"$n_265" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$Zero_264"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$Zero_264"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$f0_271" = load %Uint32, %Uint32* %f0, align 4
  store %Uint32 %"$f0_271", %Uint32* %"$retval_28", align 4, !dbg !91
  br label %"$matchsucc_219"

"$empty_default_222":                             ; preds = %"$have_gas_217"
  br label %"$matchsucc_219"

"$matchsucc_219":                                 ; preds = %"$have_gas_269", %"$have_gas_251", %"$empty_default_222"
  %"$$retval_28_272" = load %Uint32, %Uint32* %"$retval_28", align 4
  ret %Uint32 %"$$retval_28_272"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_25"(%"$$fundef_25_env_158"* %0, %Uint32 %1) !dbg !93 {
entry:
  %"$$fundef_25_env_fn_189" = getelementptr inbounds %"$$fundef_25_env_158", %"$$fundef_25_env_158"* %0, i32 0, i32 0
  %"$fn_envload_190" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_fn_189", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_190", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_25_env_g_191" = getelementptr inbounds %"$$fundef_25_env_158", %"$$fundef_25_env_158"* %0, i32 0, i32 1
  %"$g_envload_192" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_g_191", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_192", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_26" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %entry
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %"$$fundef_27_envp_198_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_198_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_198_load", i64 40)
  %"$$fundef_27_envp_198" = bitcast i8* %"$$fundef_27_envp_198_salloc" to %"$$fundef_27_env_157"*
  %"$$fundef_27_env_voidp_200" = bitcast %"$$fundef_27_env_157"* %"$$fundef_27_envp_198" to i8*
  %"$$fundef_27_cloval_201" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_27_env_157"*, %TName_Nat*)* @"$fundef_27" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_200", 1
  %"$$fundef_27_env_f0_202" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %"$$fundef_27_envp_198", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_27_env_f0_202", align 4
  %"$$fundef_27_env_fn_203" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %"$$fundef_27_envp_198", i32 0, i32 1
  %"$fn_204" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_204", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_fn_203", align 8
  %"$$fundef_27_env_g_205" = getelementptr inbounds %"$$fundef_27_env_157", %"$$fundef_27_env_157"* %"$$fundef_27_envp_198", i32 0, i32 2
  %"$g_206" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_206", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_g_205", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_27_cloval_201", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_26", align 8, !dbg !94
  %"$$retval_26_207" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_26", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_26_207"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_23"(%"$$fundef_23_env_159"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !95 {
entry:
  %"$retval_24" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %entry
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %"$$fundef_25_envp_180_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_180_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_180_load", i64 32)
  %"$$fundef_25_envp_180" = bitcast i8* %"$$fundef_25_envp_180_salloc" to %"$$fundef_25_env_158"*
  %"$$fundef_25_env_voidp_182" = bitcast %"$$fundef_25_env_158"* %"$$fundef_25_envp_180" to i8*
  %"$$fundef_25_cloval_183" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_25_env_158"*, %Uint32)* @"$fundef_25" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_25_env_voidp_182", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_25_cloval_183", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !96
  %"$$fundef_25_env_fn_184" = getelementptr inbounds %"$$fundef_25_env_158", %"$$fundef_25_env_158"* %"$$fundef_25_envp_180", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_fn_184", align 8
  %"$$fundef_25_env_g_185" = getelementptr inbounds %"$$fundef_25_env_158", %"$$fundef_25_env_158"* %"$$fundef_25_envp_180", i32 0, i32 1
  %"$g_186" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_186", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_g_185", align 8
  %"$g_187" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_187", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24", align 8, !dbg !96
  %"$$retval_24_188" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24", align 8
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_24_188"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_21"(%"$$fundef_21_env_160"* %0) !dbg !97 {
entry:
  %"$retval_22" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %entry
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_23_env_159"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_23" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_22", align 8, !dbg !98
  %"$$retval_22_169" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_22", align 8
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_22_169"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !99 {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_972"(i8* %0) !dbg !100 {
entry:
  %"$gasrem_973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_974" = icmp ugt i64 1, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %entry
  %"$consume_977" = sub i64 %"$gasrem_973", 1
  store i64 %"$consume_977", i64* @_gasrem, align 8
  %"$dyndisp_table_987_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_987_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_987_salloc_load", i64 48)
  %"$dyndisp_table_987_salloc" = bitcast i8* %"$dyndisp_table_987_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_987" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_987_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_988" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_987", i32 0
  %"$dyndisp_pcast_989" = bitcast { i8*, i8* }* %"$dyndisp_gep_988" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_21_env_160"*)* @"$fundef_21" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_989", align 8
  %"$dyndisp_gep_990" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_987", i32 1
  %"$dyndisp_pcast_991" = bitcast { i8*, i8* }* %"$dyndisp_gep_990" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_29_env_156"*)* @"$fundef_29" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_991", align 8
  %"$dyndisp_gep_992" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_987", i32 2
  %"$dyndisp_pcast_993" = bitcast { i8*, i8* }* %"$dyndisp_gep_992" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_37_env_152"*)* @"$fundef_37" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_993", align 8
  store { i8*, i8* }* %"$dyndisp_table_987", { i8*, i8* }** @nat_fold, align 8, !dbg !101
  %"$gasrem_994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_995" = icmp ugt i64 1, %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$have_gas_976"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$have_gas_976"
  %"$consume_998" = sub i64 %"$gasrem_994", 1
  store i64 %"$consume_998", i64* @_gasrem, align 8
  %"$$fundef_45_envp_999_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_45_envp_999_salloc" = call i8* @_salloc(i8* %"$$fundef_45_envp_999_load", i64 8)
  %"$$fundef_45_envp_999" = bitcast i8* %"$$fundef_45_envp_999_salloc" to %"$$fundef_45_env_148"*
  %"$$fundef_45_env_voidp_1001" = bitcast %"$$fundef_45_env_148"* %"$$fundef_45_envp_999" to i8*
  %"$$fundef_45_cloval_1002" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_45_env_148"*, %TName_Nat*)* @"$fundef_45" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_45_env_voidp_1001", 1
  %"$$fundef_45_env_nat_fold_1003" = getelementptr inbounds %"$$fundef_45_env_148", %"$$fundef_45_env_148"* %"$$fundef_45_envp_999", i32 0, i32 0
  %"$nat_fold_1004" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1004", { i8*, i8* }** %"$$fundef_45_env_nat_fold_1003", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_45_cloval_1002", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8, !dbg !102
  %"$expr_51" = alloca %Uint32, align 8
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$have_gas_997"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$have_gas_997"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$have_gas_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_52_env_145"*, %TName_Nat*)* @"$fundef_52" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8, !dbg !103
  %"$gasrem_1018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1019" = icmp ugt i64 1, %"$gasrem_1018"
  br i1 %"$gascmp_1019", label %"$out_of_gas_1020", label %"$have_gas_1021"

"$out_of_gas_1020":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1021"

"$have_gas_1021":                                 ; preds = %"$out_of_gas_1020", %"$have_gas_1013"
  %"$consume_1022" = sub i64 %"$gasrem_1018", 1
  store i64 %"$consume_1022", i64* @_gasrem, align 8
  %nat_iter = alloca { i8*, i8* }*, align 8
  %"$gasrem_1023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1024" = icmp ugt i64 1, %"$gasrem_1023"
  br i1 %"$gascmp_1024", label %"$out_of_gas_1025", label %"$have_gas_1026"

"$out_of_gas_1025":                               ; preds = %"$have_gas_1021"
  call void @_out_of_gas()
  br label %"$have_gas_1026"

"$have_gas_1026":                                 ; preds = %"$out_of_gas_1025", %"$have_gas_1021"
  %"$consume_1027" = sub i64 %"$gasrem_1023", 1
  store i64 %"$consume_1027", i64* @_gasrem, align 8
  %"$$fundef_54_envp_1028_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_54_envp_1028_salloc" = call i8* @_salloc(i8* %"$$fundef_54_envp_1028_load", i64 8)
  %"$$fundef_54_envp_1028" = bitcast i8* %"$$fundef_54_envp_1028_salloc" to %"$$fundef_54_env_144"*
  %"$$fundef_54_env_voidp_1030" = bitcast %"$$fundef_54_env_144"* %"$$fundef_54_envp_1028" to i8*
  %"$$fundef_54_cloval_1031" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_54_env_144"*)* @"$fundef_54" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_54_env_voidp_1030", 1
  %"$$fundef_54_env_nat_fold_1032" = getelementptr inbounds %"$$fundef_54_env_144", %"$$fundef_54_env_144"* %"$$fundef_54_envp_1028", i32 0, i32 0
  %"$nat_fold_1033" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1033", { i8*, i8* }** %"$$fundef_54_env_nat_fold_1032", align 8
  %"$$fundef_66_env_voidp_1035" = bitcast %"$$fundef_54_env_144"* %"$$fundef_54_envp_1028" to i8*
  %"$$fundef_66_cloval_1036" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_66_env_138"*)* @"$fundef_66" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_66_env_voidp_1035", 1
  %"$dyndisp_table_1037_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1037_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1037_salloc_load", i64 48)
  %"$dyndisp_table_1037_salloc" = bitcast i8* %"$dyndisp_table_1037_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1037" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1037_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1038" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1037", i32 1
  %"$dyndisp_pcast_1039" = bitcast { i8*, i8* }* %"$dyndisp_gep_1038" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_54_cloval_1031", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1039", align 8
  %"$dyndisp_gep_1040" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1037", i32 2
  %"$dyndisp_pcast_1041" = bitcast { i8*, i8* }* %"$dyndisp_gep_1040" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_66_cloval_1036", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1041", align 8
  store { i8*, i8* }* %"$dyndisp_table_1037", { i8*, i8* }** %nat_iter, align 8, !dbg !104
  %"$gasrem_1042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1043" = icmp ugt i64 1, %"$gasrem_1042"
  br i1 %"$gascmp_1043", label %"$out_of_gas_1044", label %"$have_gas_1045"

"$out_of_gas_1044":                               ; preds = %"$have_gas_1026"
  call void @_out_of_gas()
  br label %"$have_gas_1045"

"$have_gas_1045":                                 ; preds = %"$out_of_gas_1044", %"$have_gas_1026"
  %"$consume_1046" = sub i64 %"$gasrem_1042", 1
  store i64 %"$consume_1046", i64* @_gasrem, align 8
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1048" = icmp ugt i64 1, %"$gasrem_1047"
  br i1 %"$gascmp_1048", label %"$out_of_gas_1049", label %"$have_gas_1050"

"$out_of_gas_1049":                               ; preds = %"$have_gas_1045"
  call void @_out_of_gas()
  br label %"$have_gas_1050"

"$have_gas_1050":                                 ; preds = %"$out_of_gas_1049", %"$have_gas_1045"
  %"$consume_1051" = sub i64 %"$gasrem_1047", 1
  store i64 %"$consume_1051", i64* @_gasrem, align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1053" = icmp ugt i64 1, %"$gasrem_1052"
  br i1 %"$gascmp_1053", label %"$out_of_gas_1054", label %"$have_gas_1055"

"$out_of_gas_1054":                               ; preds = %"$have_gas_1050"
  call void @_out_of_gas()
  br label %"$have_gas_1055"

"$have_gas_1055":                                 ; preds = %"$out_of_gas_1054", %"$have_gas_1050"
  %"$consume_1056" = sub i64 %"$gasrem_1052", 1
  store i64 %"$consume_1056", i64* @_gasrem, align 8
  %"$nat_iter_1057" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1058" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1057", i32 2
  %"$nat_iter_1059" = bitcast { i8*, i8* }* %"$nat_iter_1058" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1060" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1059", align 8
  %"$nat_iter_fptr_1061" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1060", 0
  %"$nat_iter_envptr_1062" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1060", 1
  %"$nat_iter_call_1063" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1061"(i8* %"$nat_iter_envptr_1062"), !dbg !105
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1063", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8, !dbg !106
  %"$gasrem_1064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1065" = icmp ugt i64 1, %"$gasrem_1064"
  br i1 %"$gascmp_1065", label %"$out_of_gas_1066", label %"$have_gas_1067"

"$out_of_gas_1066":                               ; preds = %"$have_gas_1055"
  call void @_out_of_gas()
  br label %"$have_gas_1067"

"$have_gas_1067":                                 ; preds = %"$out_of_gas_1066", %"$have_gas_1055"
  %"$consume_1068" = sub i64 %"$gasrem_1064", 1
  store i64 %"$consume_1068", i64* @_gasrem, align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_1069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1070" = icmp ugt i64 1, %"$gasrem_1069"
  br i1 %"$gascmp_1070", label %"$out_of_gas_1071", label %"$have_gas_1072"

"$out_of_gas_1071":                               ; preds = %"$have_gas_1067"
  call void @_out_of_gas()
  br label %"$have_gas_1072"

"$have_gas_1072":                                 ; preds = %"$out_of_gas_1071", %"$have_gas_1067"
  %"$consume_1073" = sub i64 %"$gasrem_1069", 1
  store i64 %"$consume_1073", i64* @_gasrem, align 8
  %"$nat_iter_1074" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1075" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1074", i32 1
  %"$nat_iter_1076" = bitcast { i8*, i8* }* %"$nat_iter_1075" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1077" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1076", align 8
  %"$nat_iter_fptr_1078" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1077", 0
  %"$nat_iter_envptr_1079" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1077", 1
  %"$nat_iter_call_1080" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1078"(i8* %"$nat_iter_envptr_1079"), !dbg !107
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1080", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8, !dbg !108
  %"$gasrem_1081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1082" = icmp ugt i64 1, %"$gasrem_1081"
  br i1 %"$gascmp_1082", label %"$out_of_gas_1083", label %"$have_gas_1084"

"$out_of_gas_1083":                               ; preds = %"$have_gas_1072"
  call void @_out_of_gas()
  br label %"$have_gas_1084"

"$have_gas_1084":                                 ; preds = %"$out_of_gas_1083", %"$have_gas_1072"
  %"$consume_1085" = sub i64 %"$gasrem_1081", 1
  store i64 %"$consume_1085", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_1086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1087" = icmp ugt i64 1, %"$gasrem_1086"
  br i1 %"$gascmp_1087", label %"$out_of_gas_1088", label %"$have_gas_1089"

"$out_of_gas_1088":                               ; preds = %"$have_gas_1084"
  call void @_out_of_gas()
  br label %"$have_gas_1089"

"$have_gas_1089":                                 ; preds = %"$out_of_gas_1088", %"$have_gas_1084"
  %"$consume_1090" = sub i64 %"$gasrem_1086", 1
  store i64 %"$consume_1090", i64* @_gasrem, align 8
  %"$adtval_1091_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1091_salloc" = call i8* @_salloc(i8* %"$adtval_1091_load", i64 1)
  %"$adtval_1091" = bitcast i8* %"$adtval_1091_salloc" to %CName_Zero*
  %"$adtgep_1092" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1091", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1092", align 1
  %"$adtptr_1093" = bitcast %CName_Zero* %"$adtval_1091" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1093", %TName_Nat** %zero, align 8, !dbg !109
  %"$gasrem_1094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1095" = icmp ugt i64 1, %"$gasrem_1094"
  br i1 %"$gascmp_1095", label %"$out_of_gas_1096", label %"$have_gas_1097"

"$out_of_gas_1096":                               ; preds = %"$have_gas_1089"
  call void @_out_of_gas()
  br label %"$have_gas_1097"

"$have_gas_1097":                                 ; preds = %"$out_of_gas_1096", %"$have_gas_1089"
  %"$consume_1098" = sub i64 %"$gasrem_1094", 1
  store i64 %"$consume_1098", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_1099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1100" = icmp ugt i64 1, %"$gasrem_1099"
  br i1 %"$gascmp_1100", label %"$out_of_gas_1101", label %"$have_gas_1102"

"$out_of_gas_1101":                               ; preds = %"$have_gas_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1102"

"$have_gas_1102":                                 ; preds = %"$out_of_gas_1101", %"$have_gas_1097"
  %"$consume_1103" = sub i64 %"$gasrem_1099", 1
  store i64 %"$consume_1103", i64* @_gasrem, align 8
  %"$zero_1104" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_1105_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1105_salloc" = call i8* @_salloc(i8* %"$adtval_1105_load", i64 9)
  %"$adtval_1105" = bitcast i8* %"$adtval_1105_salloc" to %CName_Succ*
  %"$adtgep_1106" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1105", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1106", align 1
  %"$adtgep_1107" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1105", i32 0, i32 1
  store %TName_Nat* %"$zero_1104", %TName_Nat** %"$adtgep_1107", align 8
  %"$adtptr_1108" = bitcast %CName_Succ* %"$adtval_1105" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1108", %TName_Nat** %one, align 8, !dbg !110
  %"$gasrem_1109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1110" = icmp ugt i64 1, %"$gasrem_1109"
  br i1 %"$gascmp_1110", label %"$out_of_gas_1111", label %"$have_gas_1112"

"$out_of_gas_1111":                               ; preds = %"$have_gas_1102"
  call void @_out_of_gas()
  br label %"$have_gas_1112"

"$have_gas_1112":                                 ; preds = %"$out_of_gas_1111", %"$have_gas_1102"
  %"$consume_1113" = sub i64 %"$gasrem_1109", 1
  store i64 %"$consume_1113", i64* @_gasrem, align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1115" = icmp ugt i64 1, %"$gasrem_1114"
  br i1 %"$gascmp_1115", label %"$out_of_gas_1116", label %"$have_gas_1117"

"$out_of_gas_1116":                               ; preds = %"$have_gas_1112"
  call void @_out_of_gas()
  br label %"$have_gas_1117"

"$have_gas_1117":                                 ; preds = %"$out_of_gas_1116", %"$have_gas_1112"
  %"$consume_1118" = sub i64 %"$gasrem_1114", 1
  store i64 %"$consume_1118", i64* @_gasrem, align 8
  %"$$fundef_78_envp_1119_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_78_envp_1119_salloc" = call i8* @_salloc(i8* %"$$fundef_78_envp_1119_load", i64 24)
  %"$$fundef_78_envp_1119" = bitcast i8* %"$$fundef_78_envp_1119_salloc" to %"$$fundef_78_env_132"*
  %"$$fundef_78_env_voidp_1121" = bitcast %"$$fundef_78_env_132"* %"$$fundef_78_envp_1119" to i8*
  %"$$fundef_78_cloval_1122" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_78_env_132"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_78" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_78_env_voidp_1121", 1
  %"$$fundef_78_env_iter_nat_1123" = getelementptr inbounds %"$$fundef_78_env_132", %"$$fundef_78_env_132"* %"$$fundef_78_envp_1119", i32 0, i32 0
  %"$iter_nat_1124" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1124", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_78_env_iter_nat_1123", align 8
  %"$$fundef_78_env_one_1125" = getelementptr inbounds %"$$fundef_78_env_132", %"$$fundef_78_env_132"* %"$$fundef_78_envp_1119", i32 0, i32 1
  %"$one_1126" = load %TName_Nat*, %TName_Nat** %one, align 8
  store %TName_Nat* %"$one_1126", %TName_Nat** %"$$fundef_78_env_one_1125", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_78_cloval_1122", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8, !dbg !111
  %"$gasrem_1127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1128" = icmp ugt i64 1, %"$gasrem_1127"
  br i1 %"$gascmp_1128", label %"$out_of_gas_1129", label %"$have_gas_1130"

"$out_of_gas_1129":                               ; preds = %"$have_gas_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1130"

"$have_gas_1130":                                 ; preds = %"$out_of_gas_1129", %"$have_gas_1117"
  %"$consume_1131" = sub i64 %"$gasrem_1127", 1
  store i64 %"$consume_1131", i64* @_gasrem, align 8
  %"$$fundef_82_envp_1132_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_82_envp_1132_salloc" = call i8* @_salloc(i8* %"$$fundef_82_envp_1132_load", i64 48)
  %"$$fundef_82_envp_1132" = bitcast i8* %"$$fundef_82_envp_1132_salloc" to %"$$fundef_82_env_130"*
  %"$$fundef_82_env_voidp_1134" = bitcast %"$$fundef_82_env_130"* %"$$fundef_82_envp_1132" to i8*
  %"$$fundef_82_cloval_1135" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_82_env_130"*, %TName_Nat*)* @"$fundef_82" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_82_env_voidp_1134", 1
  %"$$fundef_82_env_f_1136" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %"$$fundef_82_envp_1132", i32 0, i32 0
  %"$f_1137" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1137", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_82_env_f_1136", align 8
  %"$$fundef_82_env_iter_nat_nat_1138" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %"$$fundef_82_envp_1132", i32 0, i32 1
  %"$iter_nat_nat_1139" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1139", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_82_env_iter_nat_nat_1138", align 8
  %"$$fundef_82_env_nat_succ_1140" = getelementptr inbounds %"$$fundef_82_env_130", %"$$fundef_82_env_130"* %"$$fundef_82_envp_1132", i32 0, i32 2
  %"$nat_succ_1141" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1141", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_82_env_nat_succ_1140", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_82_cloval_1135", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8, !dbg !112
  %"$gasrem_1142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1143" = icmp ugt i64 1, %"$gasrem_1142"
  br i1 %"$gascmp_1143", label %"$out_of_gas_1144", label %"$have_gas_1145"

"$out_of_gas_1144":                               ; preds = %"$have_gas_1130"
  call void @_out_of_gas()
  br label %"$have_gas_1145"

"$have_gas_1145":                                 ; preds = %"$out_of_gas_1144", %"$have_gas_1130"
  %"$consume_1146" = sub i64 %"$gasrem_1142", 1
  store i64 %"$consume_1146", i64* @_gasrem, align 8
  %uintM = alloca %Uint32, align 8
  %"$gasrem_1147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1148" = icmp ugt i64 1, %"$gasrem_1147"
  br i1 %"$gascmp_1148", label %"$out_of_gas_1149", label %"$have_gas_1150"

"$out_of_gas_1149":                               ; preds = %"$have_gas_1145"
  call void @_out_of_gas()
  br label %"$have_gas_1150"

"$have_gas_1150":                                 ; preds = %"$out_of_gas_1149", %"$have_gas_1145"
  %"$consume_1151" = sub i64 %"$gasrem_1147", 1
  store i64 %"$consume_1151", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %uintM, align 4, !dbg !113
  %"$gasrem_1152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1153" = icmp ugt i64 1, %"$gasrem_1152"
  br i1 %"$gascmp_1153", label %"$out_of_gas_1154", label %"$have_gas_1155"

"$out_of_gas_1154":                               ; preds = %"$have_gas_1150"
  call void @_out_of_gas()
  br label %"$have_gas_1155"

"$have_gas_1155":                                 ; preds = %"$out_of_gas_1154", %"$have_gas_1150"
  %"$consume_1156" = sub i64 %"$gasrem_1152", 1
  store i64 %"$consume_1156", i64* @_gasrem, align 8
  %uintN = alloca %Uint32, align 8
  %"$gasrem_1157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1158" = icmp ugt i64 1, %"$gasrem_1157"
  br i1 %"$gascmp_1158", label %"$out_of_gas_1159", label %"$have_gas_1160"

"$out_of_gas_1159":                               ; preds = %"$have_gas_1155"
  call void @_out_of_gas()
  br label %"$have_gas_1160"

"$have_gas_1160":                                 ; preds = %"$out_of_gas_1159", %"$have_gas_1155"
  %"$consume_1161" = sub i64 %"$gasrem_1157", 1
  store i64 %"$consume_1161", i64* @_gasrem, align 8
  store %Uint32 { i32 7 }, %Uint32* %uintN, align 4, !dbg !114
  %"$gasrem_1162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1163" = icmp ugt i64 1, %"$gasrem_1162"
  br i1 %"$gascmp_1163", label %"$out_of_gas_1164", label %"$have_gas_1165"

"$out_of_gas_1164":                               ; preds = %"$have_gas_1160"
  call void @_out_of_gas()
  br label %"$have_gas_1165"

"$have_gas_1165":                                 ; preds = %"$out_of_gas_1164", %"$have_gas_1160"
  %"$consume_1166" = sub i64 %"$gasrem_1162", 1
  store i64 %"$consume_1166", i64* @_gasrem, align 8
  %m = alloca %TName_Nat*, align 8
  %"$execptr_load_1167" = load i8*, i8** @_execptr, align 8
  %"$uintM_1168" = load %Uint32, %Uint32* %uintM, align 4
  %"$to_nat_call_1169" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1167", %Uint32 %"$uintM_1168")
  store %TName_Nat* %"$to_nat_call_1169", %TName_Nat** %m, align 8, !dbg !115
  %"$gasrem_1170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1171" = icmp ugt i64 1, %"$gasrem_1170"
  br i1 %"$gascmp_1171", label %"$out_of_gas_1172", label %"$have_gas_1173"

"$out_of_gas_1172":                               ; preds = %"$have_gas_1165"
  call void @_out_of_gas()
  br label %"$have_gas_1173"

"$have_gas_1173":                                 ; preds = %"$out_of_gas_1172", %"$have_gas_1165"
  %"$consume_1174" = sub i64 %"$gasrem_1170", 1
  store i64 %"$consume_1174", i64* @_gasrem, align 8
  %n = alloca %TName_Nat*, align 8
  %"$execptr_load_1175" = load i8*, i8** @_execptr, align 8
  %"$uintN_1176" = load %Uint32, %Uint32* %uintN, align 4
  %"$to_nat_call_1177" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1175", %Uint32 %"$uintN_1176")
  store %TName_Nat* %"$to_nat_call_1177", %TName_Nat** %n, align 8, !dbg !116
  %"$gasrem_1178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1179" = icmp ugt i64 1, %"$gasrem_1178"
  br i1 %"$gascmp_1179", label %"$out_of_gas_1180", label %"$have_gas_1181"

"$out_of_gas_1180":                               ; preds = %"$have_gas_1173"
  call void @_out_of_gas()
  br label %"$have_gas_1181"

"$have_gas_1181":                                 ; preds = %"$out_of_gas_1180", %"$have_gas_1173"
  %"$consume_1182" = sub i64 %"$gasrem_1178", 1
  store i64 %"$consume_1182", i64* @_gasrem, align 8
  %ack00 = alloca %TName_Nat*, align 8
  %"$gasrem_1183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1184" = icmp ugt i64 1, %"$gasrem_1183"
  br i1 %"$gascmp_1184", label %"$out_of_gas_1185", label %"$have_gas_1186"

"$out_of_gas_1185":                               ; preds = %"$have_gas_1181"
  call void @_out_of_gas()
  br label %"$have_gas_1186"

"$have_gas_1186":                                 ; preds = %"$out_of_gas_1185", %"$have_gas_1181"
  %"$consume_1187" = sub i64 %"$gasrem_1183", 1
  store i64 %"$consume_1187", i64* @_gasrem, align 8
  %"$ackermann_18" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1188" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1189" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1188", 0
  %"$ackermann_envptr_1190" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1188", 1
  %"$m_1191" = load %TName_Nat*, %TName_Nat** %m, align 8
  %"$ackermann_call_1192" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1189"(i8* %"$ackermann_envptr_1190", %TName_Nat* %"$m_1191"), !dbg !117
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1192", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_18", align 8, !dbg !117
  %"$ackermann_19" = alloca %TName_Nat*, align 8
  %"$$ackermann_18_1193" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_18", align 8
  %"$$ackermann_18_fptr_1194" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_18_1193", 0
  %"$$ackermann_18_envptr_1195" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_18_1193", 1
  %"$n_1196" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$ackermann_18_call_1197" = call %TName_Nat* %"$$ackermann_18_fptr_1194"(i8* %"$$ackermann_18_envptr_1195", %TName_Nat* %"$n_1196"), !dbg !117
  store %TName_Nat* %"$$ackermann_18_call_1197", %TName_Nat** %"$ackermann_19", align 8, !dbg !117
  %"$$ackermann_19_1198" = load %TName_Nat*, %TName_Nat** %"$ackermann_19", align 8
  store %TName_Nat* %"$$ackermann_19_1198", %TName_Nat** %ack00, align 8, !dbg !117
  %"$gasrem_1199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1200" = icmp ugt i64 1, %"$gasrem_1199"
  br i1 %"$gascmp_1200", label %"$out_of_gas_1201", label %"$have_gas_1202"

"$out_of_gas_1201":                               ; preds = %"$have_gas_1186"
  call void @_out_of_gas()
  br label %"$have_gas_1202"

"$have_gas_1202":                                 ; preds = %"$out_of_gas_1201", %"$have_gas_1186"
  %"$consume_1203" = sub i64 %"$gasrem_1199", 1
  store i64 %"$consume_1203", i64* @_gasrem, align 8
  %int01 = alloca %Uint32, align 8
  %"$gasrem_1204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1205" = icmp ugt i64 1, %"$gasrem_1204"
  br i1 %"$gascmp_1205", label %"$out_of_gas_1206", label %"$have_gas_1207"

"$out_of_gas_1206":                               ; preds = %"$have_gas_1202"
  call void @_out_of_gas()
  br label %"$have_gas_1207"

"$have_gas_1207":                                 ; preds = %"$out_of_gas_1206", %"$have_gas_1202"
  %"$consume_1208" = sub i64 %"$gasrem_1204", 1
  store i64 %"$consume_1208", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_20" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1209" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1210" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1209", 0
  %"$NatUtils.nat_to_int_envptr_1211" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1209", 1
  %"$ack00_1212" = load %TName_Nat*, %TName_Nat** %ack00, align 8
  %"$NatUtils.nat_to_int_call_1213" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1210"(i8* %"$NatUtils.nat_to_int_envptr_1211", %TName_Nat* %"$ack00_1212"), !dbg !118
  store %Uint32 %"$NatUtils.nat_to_int_call_1213", %Uint32* %"$NatUtils.nat_to_int_20", align 4, !dbg !118
  %"$$NatUtils.nat_to_int_20_1214" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_20", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_20_1214", %Uint32* %int01, align 4, !dbg !118
  %"$gasrem_1215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1216" = icmp ugt i64 1, %"$gasrem_1215"
  br i1 %"$gascmp_1216", label %"$out_of_gas_1217", label %"$have_gas_1218"

"$out_of_gas_1217":                               ; preds = %"$have_gas_1207"
  call void @_out_of_gas()
  br label %"$have_gas_1218"

"$have_gas_1218":                                 ; preds = %"$out_of_gas_1217", %"$have_gas_1207"
  %"$consume_1219" = sub i64 %"$gasrem_1215", 1
  store i64 %"$consume_1219", i64* @_gasrem, align 8
  %"$int01_1220" = load %Uint32, %Uint32* %int01, align 4
  store %Uint32 %"$int01_1220", %Uint32* %"$expr_51", align 4, !dbg !119
  %"$$expr_51_1221" = load %Uint32, %Uint32* %"$expr_51", align 4
  ret %Uint32 %"$$expr_51_1221"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1222" = call %Uint32 @"$scilla_expr_972"(i8* null)
  %"$pval_1223" = alloca %Uint32, align 8
  %"$memvoidcast_1224" = bitcast %Uint32* %"$pval_1223" to i8*
  store %Uint32 %"$exprval_1222", %Uint32* %"$pval_1223", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_88", i8* %"$memvoidcast_1224")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "ackermann_3_7.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_82", linkageName: "$fundef_82", scope: !2, file: !2, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 25, column: 23, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_80", linkageName: "$fundef_80", scope: !2, file: !2, line: 24, type: !5, scopeLine: 24, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 24, column: 22, scope: !9)
!11 = distinct !DISubprogram(name: "$fundef_78", linkageName: "$fundef_78", scope: !2, file: !2, line: 23, type: !5, scopeLine: 23, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 23, column: 14, scope: !11)
!13 = !DILocation(line: 24, column: 22, scope: !11)
!14 = distinct !DISubprogram(name: "$fundef_76", linkageName: "$fundef_76", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 13, column: 52, scope: !14)
!16 = distinct !DISubprogram(name: "$fundef_74", linkageName: "$fundef_74", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 13, column: 52, scope: !16)
!18 = distinct !DISubprogram(name: "$fundef_72", linkageName: "$fundef_72", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DILocation(line: 12, column: 17, scope: !18)
!20 = !DILocation(line: 12, column: 16, scope: !18)
!21 = !DILocation(line: 13, column: 30, scope: !18)
!22 = !DILocation(line: 14, column: 3, scope: !18)
!23 = distinct !DISubprogram(name: "$fundef_70", linkageName: "$fundef_70", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 12, column: 3, scope: !23)
!25 = distinct !DISubprogram(name: "$fundef_68", linkageName: "$fundef_68", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 11, column: 3, scope: !25)
!27 = distinct !DISubprogram(name: "$fundef_66", linkageName: "$fundef_66", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 10, column: 3, scope: !27)
!29 = distinct !DISubprogram(name: "$fundef_64", linkageName: "$fundef_64", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 13, column: 52, scope: !29)
!31 = distinct !DISubprogram(name: "$fundef_62", linkageName: "$fundef_62", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 13, column: 52, scope: !31)
!33 = distinct !DISubprogram(name: "$fundef_60", linkageName: "$fundef_60", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DILocation(line: 12, column: 17, scope: !33)
!35 = !DILocation(line: 12, column: 16, scope: !33)
!36 = !DILocation(line: 13, column: 30, scope: !33)
!37 = !DILocation(line: 14, column: 3, scope: !33)
!38 = distinct !DISubprogram(name: "$fundef_58", linkageName: "$fundef_58", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!39 = !DILocation(line: 12, column: 3, scope: !38)
!40 = distinct !DISubprogram(name: "$fundef_56", linkageName: "$fundef_56", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!41 = !DILocation(line: 11, column: 3, scope: !40)
!42 = distinct !DISubprogram(name: "$fundef_54", linkageName: "$fundef_54", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!43 = !DILocation(line: 10, column: 3, scope: !42)
!44 = distinct !DISubprogram(name: "$fundef_52", linkageName: "$fundef_52", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!45 = !DILocation(line: 3, column: 20, scope: !44)
!46 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !2, file: !2, line: 55, type: !5, scopeLine: 55, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!47 = !DILocation(line: 55, column: 7, scope: !46)
!48 = distinct !DISubprogram(name: "$fundef_47", linkageName: "$fundef_47", scope: !2, file: !2, line: 54, type: !5, scopeLine: 54, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!49 = !DILocation(line: 55, column: 7, scope: !48)
!50 = distinct !DISubprogram(name: "$fundef_45", linkageName: "$fundef_45", scope: !2, file: !2, line: 52, type: !5, scopeLine: 52, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!51 = !DILocation(line: 52, column: 17, scope: !50)
!52 = !DILocation(line: 52, column: 16, scope: !50)
!53 = !DILocation(line: 53, column: 19, scope: !50)
!54 = !DILocation(line: 54, column: 33, scope: !50)
!55 = !DILocation(line: 56, column: 20, scope: !50)
!56 = !DILocation(line: 57, column: 5, scope: !50)
!57 = distinct !DISubprogram(name: "$fundef_43", linkageName: "$fundef_43", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!58 = !DILocation(line: 1, column: 34, scope: !57)
!59 = !DILocation(line: 1, column: 71, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !2, line: 1, column: 50)
!61 = distinct !DILexicalBlock(scope: !57, file: !2, line: 1, column: 34)
!62 = !DILocation(line: 1, column: 86, scope: !60)
!63 = !DILocation(line: 1, column: 106, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !2, line: 1, column: 98)
!65 = distinct !DISubprogram(name: "$fundef_41", linkageName: "$fundef_41", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!66 = !DILocation(line: 1, column: 34, scope: !65)
!67 = distinct !DISubprogram(name: "$fundef_39", linkageName: "$fundef_39", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 1, column: 18, scope: !67)
!69 = distinct !DISubprogram(name: "$fundef_37", linkageName: "$fundef_37", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 1, column: 18, scope: !69)
!71 = distinct !DISubprogram(name: "$fundef_35", linkageName: "$fundef_35", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = !DILocation(line: 1, column: 34, scope: !71)
!73 = !DILocation(line: 1, column: 71, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !2, line: 1, column: 50)
!75 = distinct !DILexicalBlock(scope: !71, file: !2, line: 1, column: 34)
!76 = !DILocation(line: 1, column: 86, scope: !74)
!77 = !DILocation(line: 1, column: 106, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !2, line: 1, column: 98)
!79 = distinct !DISubprogram(name: "$fundef_33", linkageName: "$fundef_33", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!80 = !DILocation(line: 1, column: 34, scope: !79)
!81 = distinct !DISubprogram(name: "$fundef_31", linkageName: "$fundef_31", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!82 = !DILocation(line: 1, column: 18, scope: !81)
!83 = distinct !DISubprogram(name: "$fundef_29", linkageName: "$fundef_29", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!84 = !DILocation(line: 1, column: 18, scope: !83)
!85 = distinct !DISubprogram(name: "$fundef_27", linkageName: "$fundef_27", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!86 = !DILocation(line: 1, column: 34, scope: !85)
!87 = !DILocation(line: 1, column: 71, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 1, column: 50)
!89 = distinct !DILexicalBlock(scope: !85, file: !2, line: 1, column: 34)
!90 = !DILocation(line: 1, column: 86, scope: !88)
!91 = !DILocation(line: 1, column: 106, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !2, line: 1, column: 98)
!93 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!94 = !DILocation(line: 1, column: 34, scope: !93)
!95 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!96 = !DILocation(line: 1, column: 18, scope: !95)
!97 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!98 = !DILocation(line: 1, column: 18, scope: !97)
!99 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !2, file: !2, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!100 = distinct !DISubprogram(name: "$scilla_expr_972", linkageName: "$scilla_expr_972", scope: !2, file: !2, type: !5, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!101 = !DILocation(line: 1, column: 18, scope: !100)
!102 = !DILocation(line: 52, column: 5, scope: !100)
!103 = !DILocation(line: 3, column: 20, scope: !100)
!104 = !DILocation(line: 8, column: 3, scope: !100)
!105 = !DILocation(line: 18, column: 19, scope: !100)
!106 = !DILocation(line: 18, column: 18, scope: !100)
!107 = !DILocation(line: 19, column: 23, scope: !100)
!108 = !DILocation(line: 19, column: 22, scope: !100)
!109 = !DILocation(line: 20, column: 14, scope: !100)
!110 = !DILocation(line: 21, column: 13, scope: !100)
!111 = !DILocation(line: 23, column: 5, scope: !100)
!112 = !DILocation(line: 25, column: 23, scope: !100)
!113 = !DILocation(line: 29, column: 13, scope: !100)
!114 = !DILocation(line: 30, column: 13, scope: !100)
!115 = !DILocation(line: 32, column: 9, scope: !100)
!116 = !DILocation(line: 33, column: 9, scope: !100)
!117 = !DILocation(line: 35, column: 13, scope: !100)
!118 = !DILocation(line: 36, column: 13, scope: !100)
!119 = !DILocation(line: 37, column: 1, scope: !100)
