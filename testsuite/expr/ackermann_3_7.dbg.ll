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
%"$ParamDescr_1250" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1251" = type { %ParamDescrString, i32, %"$ParamDescr_1250"* }
%"$$fundef_82_env_132" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_80_env_133" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_78_env_134" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_76_env_135" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat* }
%"$$fundef_74_env_136" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_72_env_137" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_70_env_138" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { i8*, i8* }* }
%"$$fundef_68_env_139" = type { { i8*, i8* }* }
%"$$fundef_66_env_140" = type { { i8*, i8* }* }
%"$$fundef_64_env_141" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_62_env_142" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_60_env_143" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_58_env_144" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { i8*, i8* }* }
%"$$fundef_56_env_145" = type { { i8*, i8* }* }
%"$$fundef_54_env_146" = type { { i8*, i8* }* }
%"$$fundef_52_env_147" = type {}
%"$$fundef_49_env_148" = type { %Uint32, %Uint32 }
%"$$fundef_47_env_149" = type { %Uint32 }
%"$$fundef_45_env_150" = type { { i8*, i8* }* }
%"$$fundef_43_env_151" = type { %TName_Nat*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_41_env_152" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_39_env_153" = type {}
%"$$fundef_37_env_154" = type {}
%"$$fundef_35_env_155" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_33_env_156" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_31_env_157" = type {}
%"$$fundef_29_env_158" = type {}
%"$$fundef_27_env_159" = type { %Uint32, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_25_env_160" = type { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_23_env_161" = type {}
%"$$fundef_21_env_162" = type {}

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
@"$TyDescr_ADT_Nat_116" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_113"* @"$TyDescr_Nat_ADTTyp_Specl_129" to i8*) }
@"$TyDescr_Nat_ADTTyp_120" = unnamed_addr constant %"$TyDescrTy_ADTTyp_114" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_131", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_113"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_113"*], [1 x %"$TyDescrTy_ADTTyp_Specl_113"*]* @"$TyDescr_Nat_ADTTyp_m_specls_130", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_121" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_122" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_123" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_115" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_122", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_121", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_124" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_116"]
@"$TyDescr_ADT_Succ_125" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_126" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_115" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_125", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_124", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_127" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_115"*] [%"$TyDescrTy_ADTTyp_Constr_115"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_123", %"$TyDescrTy_ADTTyp_Constr_115"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_126"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_128" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_129" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_113" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_128", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_115"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_115"*], [2 x %"$TyDescrTy_ADTTyp_Constr_115"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_127", i32 0, i32 0), %"$TyDescrTy_ADTTyp_114"* @"$TyDescr_Nat_ADTTyp_120" }
@"$TyDescr_Nat_ADTTyp_m_specls_130" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_113"*] [%"$TyDescrTy_ADTTyp_Specl_113"* @"$TyDescr_Nat_ADTTyp_Specl_129"]
@"$TyDescr_ADT_Nat_131" = unnamed_addr constant [3 x i8] c"Nat"
@nat_fold = global { i8*, i8* }* null
@NatUtils.nat_to_int = global { %Uint32 (i8*, %TName_Nat*)*, i8* } zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_108", %_TyDescrTy_Typ* @"$TyDescr_Int64_90", %_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_116", %_TyDescrTy_Typ* @"$TyDescr_Uint256_100", %_TyDescrTy_Typ* @"$TyDescr_Uint32_88", %_TyDescrTy_Typ* @"$TyDescr_Uint64_92", %_TyDescrTy_Typ* @"$TyDescr_Bnum_104", %_TyDescrTy_Typ* @"$TyDescr_Uint128_96", %_TyDescrTy_Typ* @"$TyDescr_Exception_110", %_TyDescrTy_Typ* @"$TyDescr_String_102", %_TyDescrTy_Typ* @"$TyDescr_Int256_98", %_TyDescrTy_Typ* @"$TyDescr_Int128_94", %_TyDescrTy_Typ* @"$TyDescr_Bystr_112", %_TyDescrTy_Typ* @"$TyDescr_Message_106", %_TyDescrTy_Typ* @"$TyDescr_Int32_86"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_1250"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1251"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_82"(%"$$fundef_82_env_132"* %0, %TName_Nat* %1) !dbg !4 {
entry:
  %"$$fundef_82_env_f_952" = getelementptr inbounds %"$$fundef_82_env_132", %"$$fundef_82_env_132"* %0, i32 0, i32 0
  %"$f_envload_953" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_82_env_f_952", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_953", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_82_env_iter_nat_nat_954" = getelementptr inbounds %"$$fundef_82_env_132", %"$$fundef_82_env_132"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_955" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_82_env_iter_nat_nat_954", align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_955", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$$fundef_82_env_nat_succ_956" = getelementptr inbounds %"$$fundef_82_env_132", %"$$fundef_82_env_132"* %0, i32 0, i32 2
  %"$nat_succ_envload_957" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_82_env_nat_succ_956", align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_957", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$retval_83" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_959" = icmp ugt i64 1, %"$gasrem_958"
  br i1 %"$gascmp_959", label %"$out_of_gas_960", label %"$have_gas_961"

"$out_of_gas_960":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_961"

"$have_gas_961":                                  ; preds = %"$out_of_gas_960", %entry
  %"$consume_962" = sub i64 %"$gasrem_958", 1
  store i64 %"$consume_962", i64* @_gasrem, align 8
  %"$iter_nat_nat_15" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_nat_963" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$iter_nat_nat_fptr_964" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_963", 0
  %"$iter_nat_nat_envptr_965" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_963", 1
  %"$f_966" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$iter_nat_nat_call_967" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_964"(i8* %"$iter_nat_nat_envptr_965", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_966"), !dbg !8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_967", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_15", align 8, !dbg !8
  %"$iter_nat_nat_16" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$$iter_nat_nat_15_968" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_15", align 8
  %"$$iter_nat_nat_15_fptr_969" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_15_968", 0
  %"$$iter_nat_nat_15_envptr_970" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_15_968", 1
  %"$$iter_nat_nat_15_call_971" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_15_fptr_969"(i8* %"$$iter_nat_nat_15_envptr_970", %TName_Nat* %1), !dbg !8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_15_call_971", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_16", align 8, !dbg !8
  %"$iter_nat_nat_17" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_nat_16_972" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_16", align 8
  %"$$iter_nat_nat_16_fptr_973" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_16_972", 0
  %"$$iter_nat_nat_16_envptr_974" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_16_972", 1
  %"$nat_succ_975" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$$iter_nat_nat_16_call_976" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_16_fptr_973"(i8* %"$$iter_nat_nat_16_envptr_974", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_975"), !dbg !8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_16_call_976", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_17", align 8, !dbg !8
  %"$$iter_nat_nat_17_977" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_17", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_17_977", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_83", align 8, !dbg !8
  %"$$retval_83_978" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_83", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_83_978"
}

define internal %TName_Nat* @"$fundef_80"(%"$$fundef_80_env_133"* %0, %TName_Nat* %1) !dbg !9 {
entry:
  %"$$fundef_80_env_ack_925" = getelementptr inbounds %"$$fundef_80_env_133", %"$$fundef_80_env_133"* %0, i32 0, i32 0
  %"$ack_envload_926" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_80_env_ack_925", align 8
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_926", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$$fundef_80_env_iter_nat_927" = getelementptr inbounds %"$$fundef_80_env_133", %"$$fundef_80_env_133"* %0, i32 0, i32 1
  %"$iter_nat_envload_928" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_80_env_iter_nat_927", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_928", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_80_env_x0_929" = getelementptr inbounds %"$$fundef_80_env_133", %"$$fundef_80_env_133"* %0, i32 0, i32 2
  %"$x0_envload_930" = load %TName_Nat*, %TName_Nat** %"$$fundef_80_env_x0_929", align 8
  %x0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x0_envload_930", %TName_Nat** %x0, align 8
  %"$retval_81" = alloca %TName_Nat*, align 8
  %"$gasrem_931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_932" = icmp ugt i64 1, %"$gasrem_931"
  br i1 %"$gascmp_932", label %"$out_of_gas_933", label %"$have_gas_934"

"$out_of_gas_933":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_934"

"$have_gas_934":                                  ; preds = %"$out_of_gas_933", %entry
  %"$consume_935" = sub i64 %"$gasrem_931", 1
  store i64 %"$consume_935", i64* @_gasrem, align 8
  %"$iter_nat_12" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_936" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$iter_nat_fptr_937" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_936", 0
  %"$iter_nat_envptr_938" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_936", 1
  %"$ack_939" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$iter_nat_call_940" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_937"(i8* %"$iter_nat_envptr_938", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_939"), !dbg !10
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_940", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_12", align 8, !dbg !10
  %"$iter_nat_13" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_12_941" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_12", align 8
  %"$$iter_nat_12_fptr_942" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_941", 0
  %"$$iter_nat_12_envptr_943" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_941", 1
  %"$$iter_nat_12_call_944" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_fptr_942"(i8* %"$$iter_nat_12_envptr_943", %TName_Nat* %1), !dbg !10
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_12_call_944", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_13", align 8, !dbg !10
  %"$iter_nat_14" = alloca %TName_Nat*, align 8
  %"$$iter_nat_13_945" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_13", align 8
  %"$$iter_nat_13_fptr_946" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_13_945", 0
  %"$$iter_nat_13_envptr_947" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_13_945", 1
  %"$x0_948" = load %TName_Nat*, %TName_Nat** %x0, align 8
  %"$$iter_nat_13_call_949" = call %TName_Nat* %"$$iter_nat_13_fptr_946"(i8* %"$$iter_nat_13_envptr_947", %TName_Nat* %"$x0_948"), !dbg !10
  store %TName_Nat* %"$$iter_nat_13_call_949", %TName_Nat** %"$iter_nat_14", align 8, !dbg !10
  %"$$iter_nat_14_950" = load %TName_Nat*, %TName_Nat** %"$iter_nat_14", align 8
  store %TName_Nat* %"$$iter_nat_14_950", %TName_Nat** %"$retval_81", align 8, !dbg !10
  %"$$retval_81_951" = load %TName_Nat*, %TName_Nat** %"$retval_81", align 8
  ret %TName_Nat* %"$$retval_81_951"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_78"(%"$$fundef_78_env_134"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !11 {
entry:
  %"$$fundef_78_env_iter_nat_891" = getelementptr inbounds %"$$fundef_78_env_134", %"$$fundef_78_env_134"* %0, i32 0, i32 0
  %"$iter_nat_envload_892" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_78_env_iter_nat_891", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_892", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_78_env_one_893" = getelementptr inbounds %"$$fundef_78_env_134", %"$$fundef_78_env_134"* %0, i32 0, i32 1
  %"$one_envload_894" = load %TName_Nat*, %TName_Nat** %"$$fundef_78_env_one_893", align 8
  %one = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$one_envload_894", %TName_Nat** %one, align 8
  %"$retval_79" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_896" = icmp ugt i64 1, %"$gasrem_895"
  br i1 %"$gascmp_896", label %"$out_of_gas_897", label %"$have_gas_898"

"$out_of_gas_897":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_898"

"$have_gas_898":                                  ; preds = %"$out_of_gas_897", %entry
  %"$consume_899" = sub i64 %"$gasrem_895", 1
  store i64 %"$consume_899", i64* @_gasrem, align 8
  %x0 = alloca %TName_Nat*, align 8
  %"$gasrem_900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_901" = icmp ugt i64 1, %"$gasrem_900"
  br i1 %"$gascmp_901", label %"$out_of_gas_902", label %"$have_gas_903"

"$out_of_gas_902":                                ; preds = %"$have_gas_898"
  call void @_out_of_gas()
  br label %"$have_gas_903"

"$have_gas_903":                                  ; preds = %"$out_of_gas_902", %"$have_gas_898"
  %"$consume_904" = sub i64 %"$gasrem_900", 1
  store i64 %"$consume_904", i64* @_gasrem, align 8
  %"$ack_11" = alloca %TName_Nat*, align 8
  %"$ack_fptr_905" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_906" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_907" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$ack_call_908" = call %TName_Nat* %"$ack_fptr_905"(i8* %"$ack_envptr_906", %TName_Nat* %"$one_907"), !dbg !12
  store %TName_Nat* %"$ack_call_908", %TName_Nat** %"$ack_11", align 8, !dbg !12
  %"$$ack_11_909" = load %TName_Nat*, %TName_Nat** %"$ack_11", align 8
  store %TName_Nat* %"$$ack_11_909", %TName_Nat** %x0, align 8, !dbg !12
  %"$gasrem_910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_911" = icmp ugt i64 1, %"$gasrem_910"
  br i1 %"$gascmp_911", label %"$out_of_gas_912", label %"$have_gas_913"

"$out_of_gas_912":                                ; preds = %"$have_gas_903"
  call void @_out_of_gas()
  br label %"$have_gas_913"

"$have_gas_913":                                  ; preds = %"$out_of_gas_912", %"$have_gas_903"
  %"$consume_914" = sub i64 %"$gasrem_910", 1
  store i64 %"$consume_914", i64* @_gasrem, align 8
  %"$$fundef_80_envp_915_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_80_envp_915_salloc" = call i8* @_salloc(i8* %"$$fundef_80_envp_915_load", i64 40)
  %"$$fundef_80_envp_915" = bitcast i8* %"$$fundef_80_envp_915_salloc" to %"$$fundef_80_env_133"*
  %"$$fundef_80_env_voidp_917" = bitcast %"$$fundef_80_env_133"* %"$$fundef_80_envp_915" to i8*
  %"$$fundef_80_cloval_918" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_80_env_133"*, %TName_Nat*)* @"$fundef_80" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_80_env_voidp_917", 1
  %"$$fundef_80_env_ack_919" = getelementptr inbounds %"$$fundef_80_env_133", %"$$fundef_80_env_133"* %"$$fundef_80_envp_915", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_80_env_ack_919", align 8
  %"$$fundef_80_env_iter_nat_920" = getelementptr inbounds %"$$fundef_80_env_133", %"$$fundef_80_env_133"* %"$$fundef_80_envp_915", i32 0, i32 1
  %"$iter_nat_921" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_921", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_80_env_iter_nat_920", align 8
  %"$$fundef_80_env_x0_922" = getelementptr inbounds %"$$fundef_80_env_133", %"$$fundef_80_env_133"* %"$$fundef_80_envp_915", i32 0, i32 2
  %"$x0_923" = load %TName_Nat*, %TName_Nat** %x0, align 8
  store %TName_Nat* %"$x0_923", %TName_Nat** %"$$fundef_80_env_x0_922", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_80_cloval_918", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_79", align 8, !dbg !13
  %"$$retval_79_924" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_79", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_79_924"
}

define internal %TName_Nat* @"$fundef_76"(%"$$fundef_76_env_135"* %0, %TName_Nat* %1) !dbg !14 {
entry:
  %"$$fundef_76_env_f_875" = getelementptr inbounds %"$$fundef_76_env_135", %"$$fundef_76_env_135"* %0, i32 0, i32 0
  %"$f_envload_876" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_76_env_f_875", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_876", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_76_env_x_877" = getelementptr inbounds %"$$fundef_76_env_135", %"$$fundef_76_env_135"* %0, i32 0, i32 1
  %"$x_envload_878" = load %TName_Nat*, %TName_Nat** %"$$fundef_76_env_x_877", align 8
  %x = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x_envload_878", %TName_Nat** %x, align 8
  %"$retval_77" = alloca %TName_Nat*, align 8
  %"$gasrem_879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_880" = icmp ugt i64 1, %"$gasrem_879"
  br i1 %"$gascmp_880", label %"$out_of_gas_881", label %"$have_gas_882"

"$out_of_gas_881":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_882"

"$have_gas_882":                                  ; preds = %"$out_of_gas_881", %entry
  %"$consume_883" = sub i64 %"$gasrem_879", 1
  store i64 %"$consume_883", i64* @_gasrem, align 8
  %"$f_7" = alloca %TName_Nat*, align 8
  %"$f_884" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$f_fptr_885" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_884", 0
  %"$f_envptr_886" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_884", 1
  %"$x_887" = load %TName_Nat*, %TName_Nat** %x, align 8
  %"$f_call_888" = call %TName_Nat* %"$f_fptr_885"(i8* %"$f_envptr_886", %TName_Nat* %"$x_887"), !dbg !15
  store %TName_Nat* %"$f_call_888", %TName_Nat** %"$f_7", align 8, !dbg !15
  %"$$f_7_889" = load %TName_Nat*, %TName_Nat** %"$f_7", align 8
  store %TName_Nat* %"$$f_7_889", %TName_Nat** %"$retval_77", align 8, !dbg !15
  %"$$retval_77_890" = load %TName_Nat*, %TName_Nat** %"$retval_77", align 8
  ret %TName_Nat* %"$$retval_77_890"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_74"(%"$$fundef_74_env_136"* %0, %TName_Nat* %1) !dbg !16 {
entry:
  %"$$fundef_74_env_f_860" = getelementptr inbounds %"$$fundef_74_env_136", %"$$fundef_74_env_136"* %0, i32 0, i32 0
  %"$f_envload_861" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_74_env_f_860", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_861", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$retval_75" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_863" = icmp ugt i64 1, %"$gasrem_862"
  br i1 %"$gascmp_863", label %"$out_of_gas_864", label %"$have_gas_865"

"$out_of_gas_864":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_865"

"$have_gas_865":                                  ; preds = %"$out_of_gas_864", %entry
  %"$consume_866" = sub i64 %"$gasrem_862", 1
  store i64 %"$consume_866", i64* @_gasrem, align 8
  %"$$fundef_76_envp_867_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_76_envp_867_salloc" = call i8* @_salloc(i8* %"$$fundef_76_envp_867_load", i64 24)
  %"$$fundef_76_envp_867" = bitcast i8* %"$$fundef_76_envp_867_salloc" to %"$$fundef_76_env_135"*
  %"$$fundef_76_env_voidp_869" = bitcast %"$$fundef_76_env_135"* %"$$fundef_76_envp_867" to i8*
  %"$$fundef_76_cloval_870" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_76_env_135"*, %TName_Nat*)* @"$fundef_76" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_76_env_voidp_869", 1
  %"$$fundef_76_env_f_871" = getelementptr inbounds %"$$fundef_76_env_135", %"$$fundef_76_env_135"* %"$$fundef_76_envp_867", i32 0, i32 0
  %"$f_872" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_872", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_76_env_f_871", align 8
  %"$$fundef_76_env_x_873" = getelementptr inbounds %"$$fundef_76_env_135", %"$$fundef_76_env_135"* %"$$fundef_76_envp_867", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_76_env_x_873", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_76_cloval_870", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_75", align 8, !dbg !17
  %"$$retval_75_874" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_75", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_75_874"
}

define internal %TName_Nat* @"$fundef_72"(%"$$fundef_72_env_137"* %0, %TName_Nat* %1) !dbg !18 {
entry:
  %"$$fundef_72_env_f_800" = getelementptr inbounds %"$$fundef_72_env_137", %"$$fundef_72_env_137"* %0, i32 0, i32 0
  %"$f_envload_801" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_72_env_f_800", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_801", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_72_env_n_802" = getelementptr inbounds %"$$fundef_72_env_137", %"$$fundef_72_env_137"* %0, i32 0, i32 1
  %"$n_envload_803" = load %TName_Nat*, %TName_Nat** %"$$fundef_72_env_n_802", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_803", %TName_Nat** %n, align 8
  %"$$fundef_72_env_nat_fold_804" = getelementptr inbounds %"$$fundef_72_env_137", %"$$fundef_72_env_137"* %0, i32 0, i32 2
  %"$nat_fold_envload_805" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_72_env_nat_fold_804", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_805", { i8*, i8* }** %nat_fold, align 8
  %"$retval_73" = alloca %TName_Nat*, align 8
  %"$gasrem_806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_807" = icmp ugt i64 1, %"$gasrem_806"
  br i1 %"$gascmp_807", label %"$out_of_gas_808", label %"$have_gas_809"

"$out_of_gas_808":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_809"

"$have_gas_809":                                  ; preds = %"$out_of_gas_808", %entry
  %"$consume_810" = sub i64 %"$gasrem_806", 1
  store i64 %"$consume_810", i64* @_gasrem, align 8
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_812" = icmp ugt i64 1, %"$gasrem_811"
  br i1 %"$gascmp_812", label %"$out_of_gas_813", label %"$have_gas_814"

"$out_of_gas_813":                                ; preds = %"$have_gas_809"
  call void @_out_of_gas()
  br label %"$have_gas_814"

"$have_gas_814":                                  ; preds = %"$out_of_gas_813", %"$have_gas_809"
  %"$consume_815" = sub i64 %"$gasrem_811", 1
  store i64 %"$consume_815", i64* @_gasrem, align 8
  %"$nat_fold_816" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_817" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_816", i32 2
  %"$nat_fold_818" = bitcast { i8*, i8* }* %"$nat_fold_817" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_819" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_818", align 8
  %"$nat_fold_fptr_820" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_819", 0
  %"$nat_fold_envptr_821" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_819", 1
  %"$nat_fold_call_822" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_820"(i8* %"$nat_fold_envptr_821"), !dbg !19
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_822", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8, !dbg !20
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 1, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %"$have_gas_814"
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %"$have_gas_814"
  %"$consume_827" = sub i64 %"$gasrem_823", 1
  store i64 %"$consume_827", i64* @_gasrem, align 8
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$have_gas_826"
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  %"$$fundef_74_envp_833_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_74_envp_833_salloc" = call i8* @_salloc(i8* %"$$fundef_74_envp_833_load", i64 16)
  %"$$fundef_74_envp_833" = bitcast i8* %"$$fundef_74_envp_833_salloc" to %"$$fundef_74_env_136"*
  %"$$fundef_74_env_voidp_835" = bitcast %"$$fundef_74_env_136"* %"$$fundef_74_envp_833" to i8*
  %"$$fundef_74_cloval_836" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_74_env_136"*, %TName_Nat*)* @"$fundef_74" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_74_env_voidp_835", 1
  %"$$fundef_74_env_f_837" = getelementptr inbounds %"$$fundef_74_env_136", %"$$fundef_74_env_136"* %"$$fundef_74_envp_833", i32 0, i32 0
  %"$f_838" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_838", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_74_env_f_837", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_74_cloval_836", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8, !dbg !21
  %"$gasrem_839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_840" = icmp ugt i64 1, %"$gasrem_839"
  br i1 %"$gascmp_840", label %"$out_of_gas_841", label %"$have_gas_842"

"$out_of_gas_841":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_842"

"$have_gas_842":                                  ; preds = %"$out_of_gas_841", %"$have_gas_831"
  %"$consume_843" = sub i64 %"$gasrem_839", 1
  store i64 %"$consume_843", i64* @_gasrem, align 8
  %"$folder_8" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$folder_844" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_845" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_844", 0
  %"$folder_envptr_846" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_844", 1
  %"$step_847" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$folder_call_848" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_845"(i8* %"$folder_envptr_846", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_847"), !dbg !22
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_848", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_8", align 8, !dbg !22
  %"$folder_9" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_8_849" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_8", align 8
  %"$$folder_8_fptr_850" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_849", 0
  %"$$folder_8_envptr_851" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_849", 1
  %"$$folder_8_call_852" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_8_fptr_850"(i8* %"$$folder_8_envptr_851", %TName_Nat* %1), !dbg !22
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_8_call_852", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_9", align 8, !dbg !22
  %"$folder_10" = alloca %TName_Nat*, align 8
  %"$$folder_9_853" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_9", align 8
  %"$$folder_9_fptr_854" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_853", 0
  %"$$folder_9_envptr_855" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_853", 1
  %"$n_856" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_9_call_857" = call %TName_Nat* %"$$folder_9_fptr_854"(i8* %"$$folder_9_envptr_855", %TName_Nat* %"$n_856"), !dbg !22
  store %TName_Nat* %"$$folder_9_call_857", %TName_Nat** %"$folder_10", align 8, !dbg !22
  %"$$folder_10_858" = load %TName_Nat*, %TName_Nat** %"$folder_10", align 8
  store %TName_Nat* %"$$folder_10_858", %TName_Nat** %"$retval_73", align 8, !dbg !22
  %"$$retval_73_859" = load %TName_Nat*, %TName_Nat** %"$retval_73", align 8
  ret %TName_Nat* %"$$retval_73_859"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_70"(%"$$fundef_70_env_138"* %0, %TName_Nat* %1) !dbg !23 {
entry:
  %"$$fundef_70_env_f_781" = getelementptr inbounds %"$$fundef_70_env_138", %"$$fundef_70_env_138"* %0, i32 0, i32 0
  %"$f_envload_782" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_70_env_f_781", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_782", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_70_env_nat_fold_783" = getelementptr inbounds %"$$fundef_70_env_138", %"$$fundef_70_env_138"* %0, i32 0, i32 1
  %"$nat_fold_envload_784" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_70_env_nat_fold_783", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_784", { i8*, i8* }** %nat_fold, align 8
  %"$retval_71" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_786" = icmp ugt i64 1, %"$gasrem_785"
  br i1 %"$gascmp_786", label %"$out_of_gas_787", label %"$have_gas_788"

"$out_of_gas_787":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_788"

"$have_gas_788":                                  ; preds = %"$out_of_gas_787", %entry
  %"$consume_789" = sub i64 %"$gasrem_785", 1
  store i64 %"$consume_789", i64* @_gasrem, align 8
  %"$$fundef_72_envp_790_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_72_envp_790_salloc" = call i8* @_salloc(i8* %"$$fundef_72_envp_790_load", i64 32)
  %"$$fundef_72_envp_790" = bitcast i8* %"$$fundef_72_envp_790_salloc" to %"$$fundef_72_env_137"*
  %"$$fundef_72_env_voidp_792" = bitcast %"$$fundef_72_env_137"* %"$$fundef_72_envp_790" to i8*
  %"$$fundef_72_cloval_793" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_72_env_137"*, %TName_Nat*)* @"$fundef_72" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_72_env_voidp_792", 1
  %"$$fundef_72_env_f_794" = getelementptr inbounds %"$$fundef_72_env_137", %"$$fundef_72_env_137"* %"$$fundef_72_envp_790", i32 0, i32 0
  %"$f_795" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_795", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_72_env_f_794", align 8
  %"$$fundef_72_env_n_796" = getelementptr inbounds %"$$fundef_72_env_137", %"$$fundef_72_env_137"* %"$$fundef_72_envp_790", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_72_env_n_796", align 8
  %"$$fundef_72_env_nat_fold_797" = getelementptr inbounds %"$$fundef_72_env_137", %"$$fundef_72_env_137"* %"$$fundef_72_envp_790", i32 0, i32 2
  %"$nat_fold_798" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_798", { i8*, i8* }** %"$$fundef_72_env_nat_fold_797", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_72_cloval_793", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_71", align 8, !dbg !24
  %"$$retval_71_799" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_71", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_71_799"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_68"(%"$$fundef_68_env_139"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !25 {
entry:
  %"$$fundef_68_env_nat_fold_766" = getelementptr inbounds %"$$fundef_68_env_139", %"$$fundef_68_env_139"* %0, i32 0, i32 0
  %"$nat_fold_envload_767" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_68_env_nat_fold_766", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_767", { i8*, i8* }** %nat_fold, align 8
  %"$retval_69" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_769" = icmp ugt i64 1, %"$gasrem_768"
  br i1 %"$gascmp_769", label %"$out_of_gas_770", label %"$have_gas_771"

"$out_of_gas_770":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_771"

"$have_gas_771":                                  ; preds = %"$out_of_gas_770", %entry
  %"$consume_772" = sub i64 %"$gasrem_768", 1
  store i64 %"$consume_772", i64* @_gasrem, align 8
  %"$$fundef_70_envp_773_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_70_envp_773_salloc" = call i8* @_salloc(i8* %"$$fundef_70_envp_773_load", i64 24)
  %"$$fundef_70_envp_773" = bitcast i8* %"$$fundef_70_envp_773_salloc" to %"$$fundef_70_env_138"*
  %"$$fundef_70_env_voidp_775" = bitcast %"$$fundef_70_env_138"* %"$$fundef_70_envp_773" to i8*
  %"$$fundef_70_cloval_776" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_70_env_138"*, %TName_Nat*)* @"$fundef_70" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_70_env_voidp_775", 1
  %"$$fundef_70_env_f_777" = getelementptr inbounds %"$$fundef_70_env_138", %"$$fundef_70_env_138"* %"$$fundef_70_envp_773", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_70_env_f_777", align 8
  %"$$fundef_70_env_nat_fold_778" = getelementptr inbounds %"$$fundef_70_env_138", %"$$fundef_70_env_138"* %"$$fundef_70_envp_773", i32 0, i32 1
  %"$nat_fold_779" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_779", { i8*, i8* }** %"$$fundef_70_env_nat_fold_778", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_70_cloval_776", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_69", align 8, !dbg !26
  %"$$retval_69_780" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_69", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_69_780"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_66"(%"$$fundef_66_env_140"* %0) !dbg !27 {
entry:
  %"$$fundef_66_env_nat_fold_752" = getelementptr inbounds %"$$fundef_66_env_140", %"$$fundef_66_env_140"* %0, i32 0, i32 0
  %"$nat_fold_envload_753" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_66_env_nat_fold_752", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_753", { i8*, i8* }** %nat_fold, align 8
  %"$retval_67" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 1, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %entry
  %"$consume_758" = sub i64 %"$gasrem_754", 1
  store i64 %"$consume_758", i64* @_gasrem, align 8
  %"$$fundef_68_envp_759_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_68_envp_759_salloc" = call i8* @_salloc(i8* %"$$fundef_68_envp_759_load", i64 8)
  %"$$fundef_68_envp_759" = bitcast i8* %"$$fundef_68_envp_759_salloc" to %"$$fundef_68_env_139"*
  %"$$fundef_68_env_voidp_761" = bitcast %"$$fundef_68_env_139"* %"$$fundef_68_envp_759" to i8*
  %"$$fundef_68_cloval_762" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_68_env_139"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_68" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_68_env_voidp_761", 1
  %"$$fundef_68_env_nat_fold_763" = getelementptr inbounds %"$$fundef_68_env_139", %"$$fundef_68_env_139"* %"$$fundef_68_envp_759", i32 0, i32 0
  %"$nat_fold_764" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_764", { i8*, i8* }** %"$$fundef_68_env_nat_fold_763", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_68_cloval_762", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_67", align 8, !dbg !28
  %"$$retval_67_765" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_67", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_67_765"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_64"(%"$$fundef_64_env_141"* %0, %TName_Nat* %1) !dbg !29 {
entry:
  %"$$fundef_64_env_f_736" = getelementptr inbounds %"$$fundef_64_env_141", %"$$fundef_64_env_141"* %0, i32 0, i32 0
  %"$f_envload_737" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_64_env_f_736", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_737", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_64_env_x_738" = getelementptr inbounds %"$$fundef_64_env_141", %"$$fundef_64_env_141"* %0, i32 0, i32 1
  %"$x_envload_739" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_64_env_x_738", align 8
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_739", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$retval_65" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %entry
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %"$f_7" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$f_745" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$f_fptr_746" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_745", 0
  %"$f_envptr_747" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_745", 1
  %"$x_748" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$f_call_749" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_746"(i8* %"$f_envptr_747", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_748"), !dbg !30
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_749", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_7", align 8, !dbg !30
  %"$$f_7_750" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_7", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_7_750", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_65", align 8, !dbg !30
  %"$$retval_65_751" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_65", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_65_751"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_62"(%"$$fundef_62_env_142"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !31 {
entry:
  %"$$fundef_62_env_f_721" = getelementptr inbounds %"$$fundef_62_env_142", %"$$fundef_62_env_142"* %0, i32 0, i32 0
  %"$f_envload_722" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_62_env_f_721", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_722", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$retval_63" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_724" = icmp ugt i64 1, %"$gasrem_723"
  br i1 %"$gascmp_724", label %"$out_of_gas_725", label %"$have_gas_726"

"$out_of_gas_725":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_726"

"$have_gas_726":                                  ; preds = %"$out_of_gas_725", %entry
  %"$consume_727" = sub i64 %"$gasrem_723", 1
  store i64 %"$consume_727", i64* @_gasrem, align 8
  %"$$fundef_64_envp_728_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_64_envp_728_salloc" = call i8* @_salloc(i8* %"$$fundef_64_envp_728_load", i64 32)
  %"$$fundef_64_envp_728" = bitcast i8* %"$$fundef_64_envp_728_salloc" to %"$$fundef_64_env_141"*
  %"$$fundef_64_env_voidp_730" = bitcast %"$$fundef_64_env_141"* %"$$fundef_64_envp_728" to i8*
  %"$$fundef_64_cloval_731" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_64_env_141"*, %TName_Nat*)* @"$fundef_64" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_64_env_voidp_730", 1
  %"$$fundef_64_env_f_732" = getelementptr inbounds %"$$fundef_64_env_141", %"$$fundef_64_env_141"* %"$$fundef_64_envp_728", i32 0, i32 0
  %"$f_733" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_733", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_64_env_f_732", align 8
  %"$$fundef_64_env_x_734" = getelementptr inbounds %"$$fundef_64_env_141", %"$$fundef_64_env_141"* %"$$fundef_64_envp_728", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_64_env_x_734", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_64_cloval_731", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_63", align 8, !dbg !32
  %"$$retval_63_735" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_63", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_63_735"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_60"(%"$$fundef_60_env_143"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !33 {
entry:
  %"$$fundef_60_env_f_661" = getelementptr inbounds %"$$fundef_60_env_143", %"$$fundef_60_env_143"* %0, i32 0, i32 0
  %"$f_envload_662" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_60_env_f_661", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_662", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_60_env_n_663" = getelementptr inbounds %"$$fundef_60_env_143", %"$$fundef_60_env_143"* %0, i32 0, i32 1
  %"$n_envload_664" = load %TName_Nat*, %TName_Nat** %"$$fundef_60_env_n_663", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_664", %TName_Nat** %n, align 8
  %"$$fundef_60_env_nat_fold_665" = getelementptr inbounds %"$$fundef_60_env_143", %"$$fundef_60_env_143"* %0, i32 0, i32 2
  %"$nat_fold_envload_666" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_60_env_nat_fold_665", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_666", { i8*, i8* }** %nat_fold, align 8
  %"$retval_61" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_668" = icmp ugt i64 1, %"$gasrem_667"
  br i1 %"$gascmp_668", label %"$out_of_gas_669", label %"$have_gas_670"

"$out_of_gas_669":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_670"

"$have_gas_670":                                  ; preds = %"$out_of_gas_669", %entry
  %"$consume_671" = sub i64 %"$gasrem_667", 1
  store i64 %"$consume_671", i64* @_gasrem, align 8
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_673" = icmp ugt i64 1, %"$gasrem_672"
  br i1 %"$gascmp_673", label %"$out_of_gas_674", label %"$have_gas_675"

"$out_of_gas_674":                                ; preds = %"$have_gas_670"
  call void @_out_of_gas()
  br label %"$have_gas_675"

"$have_gas_675":                                  ; preds = %"$out_of_gas_674", %"$have_gas_670"
  %"$consume_676" = sub i64 %"$gasrem_672", 1
  store i64 %"$consume_676", i64* @_gasrem, align 8
  %"$nat_fold_677" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_678" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_677", i32 1
  %"$nat_fold_679" = bitcast { i8*, i8* }* %"$nat_fold_678" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_680" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_679", align 8
  %"$nat_fold_fptr_681" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_680", 0
  %"$nat_fold_envptr_682" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_680", 1
  %"$nat_fold_call_683" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_681"(i8* %"$nat_fold_envptr_682"), !dbg !34
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_683", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8, !dbg !35
  %"$gasrem_684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_685" = icmp ugt i64 1, %"$gasrem_684"
  br i1 %"$gascmp_685", label %"$out_of_gas_686", label %"$have_gas_687"

"$out_of_gas_686":                                ; preds = %"$have_gas_675"
  call void @_out_of_gas()
  br label %"$have_gas_687"

"$have_gas_687":                                  ; preds = %"$out_of_gas_686", %"$have_gas_675"
  %"$consume_688" = sub i64 %"$gasrem_684", 1
  store i64 %"$consume_688", i64* @_gasrem, align 8
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_690" = icmp ugt i64 1, %"$gasrem_689"
  br i1 %"$gascmp_690", label %"$out_of_gas_691", label %"$have_gas_692"

"$out_of_gas_691":                                ; preds = %"$have_gas_687"
  call void @_out_of_gas()
  br label %"$have_gas_692"

"$have_gas_692":                                  ; preds = %"$out_of_gas_691", %"$have_gas_687"
  %"$consume_693" = sub i64 %"$gasrem_689", 1
  store i64 %"$consume_693", i64* @_gasrem, align 8
  %"$$fundef_62_envp_694_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_62_envp_694_salloc" = call i8* @_salloc(i8* %"$$fundef_62_envp_694_load", i64 16)
  %"$$fundef_62_envp_694" = bitcast i8* %"$$fundef_62_envp_694_salloc" to %"$$fundef_62_env_142"*
  %"$$fundef_62_env_voidp_696" = bitcast %"$$fundef_62_env_142"* %"$$fundef_62_envp_694" to i8*
  %"$$fundef_62_cloval_697" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_62_env_142"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_62" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_62_env_voidp_696", 1
  %"$$fundef_62_env_f_698" = getelementptr inbounds %"$$fundef_62_env_142", %"$$fundef_62_env_142"* %"$$fundef_62_envp_694", i32 0, i32 0
  %"$f_699" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_699", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_62_env_f_698", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_62_cloval_697", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8, !dbg !36
  %"$gasrem_700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_701" = icmp ugt i64 1, %"$gasrem_700"
  br i1 %"$gascmp_701", label %"$out_of_gas_702", label %"$have_gas_703"

"$out_of_gas_702":                                ; preds = %"$have_gas_692"
  call void @_out_of_gas()
  br label %"$have_gas_703"

"$have_gas_703":                                  ; preds = %"$out_of_gas_702", %"$have_gas_692"
  %"$consume_704" = sub i64 %"$gasrem_700", 1
  store i64 %"$consume_704", i64* @_gasrem, align 8
  %"$folder_8" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$folder_705" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_706" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_705", 0
  %"$folder_envptr_707" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_705", 1
  %"$step_708" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$folder_call_709" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_706"(i8* %"$folder_envptr_707", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_708"), !dbg !37
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_709", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_8", align 8, !dbg !37
  %"$folder_9" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_8_710" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_8", align 8
  %"$$folder_8_fptr_711" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_8_710", 0
  %"$$folder_8_envptr_712" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_8_710", 1
  %"$$folder_8_call_713" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_fptr_711"(i8* %"$$folder_8_envptr_712", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1), !dbg !37
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_8_call_713", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_9", align 8, !dbg !37
  %"$folder_10" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_9_714" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_9", align 8
  %"$$folder_9_fptr_715" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_9_714", 0
  %"$$folder_9_envptr_716" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_9_714", 1
  %"$n_717" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_9_call_718" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_fptr_715"(i8* %"$$folder_9_envptr_716", %TName_Nat* %"$n_717"), !dbg !37
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_9_call_718", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_10", align 8, !dbg !37
  %"$$folder_10_719" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_10", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_10_719", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_61", align 8, !dbg !37
  %"$$retval_61_720" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_61", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_61_720"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_58"(%"$$fundef_58_env_144"* %0, %TName_Nat* %1) !dbg !38 {
entry:
  %"$$fundef_58_env_f_642" = getelementptr inbounds %"$$fundef_58_env_144", %"$$fundef_58_env_144"* %0, i32 0, i32 0
  %"$f_envload_643" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_58_env_f_642", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_643", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_58_env_nat_fold_644" = getelementptr inbounds %"$$fundef_58_env_144", %"$$fundef_58_env_144"* %0, i32 0, i32 1
  %"$nat_fold_envload_645" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_58_env_nat_fold_644", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_645", { i8*, i8* }** %nat_fold, align 8
  %"$retval_59" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_647" = icmp ugt i64 1, %"$gasrem_646"
  br i1 %"$gascmp_647", label %"$out_of_gas_648", label %"$have_gas_649"

"$out_of_gas_648":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_649"

"$have_gas_649":                                  ; preds = %"$out_of_gas_648", %entry
  %"$consume_650" = sub i64 %"$gasrem_646", 1
  store i64 %"$consume_650", i64* @_gasrem, align 8
  %"$$fundef_60_envp_651_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_60_envp_651_salloc" = call i8* @_salloc(i8* %"$$fundef_60_envp_651_load", i64 32)
  %"$$fundef_60_envp_651" = bitcast i8* %"$$fundef_60_envp_651_salloc" to %"$$fundef_60_env_143"*
  %"$$fundef_60_env_voidp_653" = bitcast %"$$fundef_60_env_143"* %"$$fundef_60_envp_651" to i8*
  %"$$fundef_60_cloval_654" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_60_env_143"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_60" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_60_env_voidp_653", 1
  %"$$fundef_60_env_f_655" = getelementptr inbounds %"$$fundef_60_env_143", %"$$fundef_60_env_143"* %"$$fundef_60_envp_651", i32 0, i32 0
  %"$f_656" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_656", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_60_env_f_655", align 8
  %"$$fundef_60_env_n_657" = getelementptr inbounds %"$$fundef_60_env_143", %"$$fundef_60_env_143"* %"$$fundef_60_envp_651", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_60_env_n_657", align 8
  %"$$fundef_60_env_nat_fold_658" = getelementptr inbounds %"$$fundef_60_env_143", %"$$fundef_60_env_143"* %"$$fundef_60_envp_651", i32 0, i32 2
  %"$nat_fold_659" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_659", { i8*, i8* }** %"$$fundef_60_env_nat_fold_658", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_60_cloval_654", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_59", align 8, !dbg !39
  %"$$retval_59_660" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_59", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_59_660"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_56"(%"$$fundef_56_env_145"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !40 {
entry:
  %"$$fundef_56_env_nat_fold_627" = getelementptr inbounds %"$$fundef_56_env_145", %"$$fundef_56_env_145"* %0, i32 0, i32 0
  %"$nat_fold_envload_628" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_56_env_nat_fold_627", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_628", { i8*, i8* }** %nat_fold, align 8
  %"$retval_57" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_630" = icmp ugt i64 1, %"$gasrem_629"
  br i1 %"$gascmp_630", label %"$out_of_gas_631", label %"$have_gas_632"

"$out_of_gas_631":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_632"

"$have_gas_632":                                  ; preds = %"$out_of_gas_631", %entry
  %"$consume_633" = sub i64 %"$gasrem_629", 1
  store i64 %"$consume_633", i64* @_gasrem, align 8
  %"$$fundef_58_envp_634_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_58_envp_634_salloc" = call i8* @_salloc(i8* %"$$fundef_58_envp_634_load", i64 24)
  %"$$fundef_58_envp_634" = bitcast i8* %"$$fundef_58_envp_634_salloc" to %"$$fundef_58_env_144"*
  %"$$fundef_58_env_voidp_636" = bitcast %"$$fundef_58_env_144"* %"$$fundef_58_envp_634" to i8*
  %"$$fundef_58_cloval_637" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_58_env_144"*, %TName_Nat*)* @"$fundef_58" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_58_env_voidp_636", 1
  %"$$fundef_58_env_f_638" = getelementptr inbounds %"$$fundef_58_env_144", %"$$fundef_58_env_144"* %"$$fundef_58_envp_634", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_58_env_f_638", align 8
  %"$$fundef_58_env_nat_fold_639" = getelementptr inbounds %"$$fundef_58_env_144", %"$$fundef_58_env_144"* %"$$fundef_58_envp_634", i32 0, i32 1
  %"$nat_fold_640" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_640", { i8*, i8* }** %"$$fundef_58_env_nat_fold_639", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_58_cloval_637", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_57", align 8, !dbg !41
  %"$$retval_57_641" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_57", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_57_641"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_54"(%"$$fundef_54_env_146"* %0) !dbg !42 {
entry:
  %"$$fundef_54_env_nat_fold_613" = getelementptr inbounds %"$$fundef_54_env_146", %"$$fundef_54_env_146"* %0, i32 0, i32 0
  %"$nat_fold_envload_614" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_54_env_nat_fold_613", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_614", { i8*, i8* }** %nat_fold, align 8
  %"$retval_55" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %entry
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %"$$fundef_56_envp_620_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_56_envp_620_salloc" = call i8* @_salloc(i8* %"$$fundef_56_envp_620_load", i64 8)
  %"$$fundef_56_envp_620" = bitcast i8* %"$$fundef_56_envp_620_salloc" to %"$$fundef_56_env_145"*
  %"$$fundef_56_env_voidp_622" = bitcast %"$$fundef_56_env_145"* %"$$fundef_56_envp_620" to i8*
  %"$$fundef_56_cloval_623" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_56_env_145"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_56" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_56_env_voidp_622", 1
  %"$$fundef_56_env_nat_fold_624" = getelementptr inbounds %"$$fundef_56_env_145", %"$$fundef_56_env_145"* %"$$fundef_56_envp_620", i32 0, i32 0
  %"$nat_fold_625" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_625", { i8*, i8* }** %"$$fundef_56_env_nat_fold_624", align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_56_cloval_623", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_55", align 8, !dbg !43
  %"$$retval_55_626" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_55", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_55_626"
}

define internal %TName_Nat* @"$fundef_52"(%"$$fundef_52_env_147"* %0, %TName_Nat* %1) !dbg !44 {
entry:
  %"$retval_53" = alloca %TName_Nat*, align 8
  %"$gasrem_603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_604" = icmp ugt i64 1, %"$gasrem_603"
  br i1 %"$gascmp_604", label %"$out_of_gas_605", label %"$have_gas_606"

"$out_of_gas_605":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_606"

"$have_gas_606":                                  ; preds = %"$out_of_gas_605", %entry
  %"$consume_607" = sub i64 %"$gasrem_603", 1
  store i64 %"$consume_607", i64* @_gasrem, align 8
  %"$adtval_608_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_608_salloc" = call i8* @_salloc(i8* %"$adtval_608_load", i64 9)
  %"$adtval_608" = bitcast i8* %"$adtval_608_salloc" to %CName_Succ*
  %"$adtgep_609" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_608", i32 0, i32 0
  store i8 1, i8* %"$adtgep_609", align 1
  %"$adtgep_610" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_608", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_610", align 8
  %"$adtptr_611" = bitcast %CName_Succ* %"$adtval_608" to %TName_Nat*
  store %TName_Nat* %"$adtptr_611", %TName_Nat** %"$retval_53", align 8, !dbg !45
  %"$$retval_53_612" = load %TName_Nat*, %TName_Nat** %"$retval_53", align 8
  ret %TName_Nat* %"$$retval_53_612"
}

define internal %Uint32 @"$fundef_49"(%"$$fundef_49_env_148"* %0, %TName_Nat* %1) !dbg !46 {
entry:
  %"$$fundef_49_env_one_int_590" = getelementptr inbounds %"$$fundef_49_env_148", %"$$fundef_49_env_148"* %0, i32 0, i32 0
  %"$one_int_envload_591" = load %Uint32, %Uint32* %"$$fundef_49_env_one_int_590", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_591", %Uint32* %one_int, align 4
  %"$$fundef_49_env_z_592" = getelementptr inbounds %"$$fundef_49_env_148", %"$$fundef_49_env_148"* %0, i32 0, i32 1
  %"$z_envload_593" = load %Uint32, %Uint32* %"$$fundef_49_env_z_592", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_593", %Uint32* %z, align 4
  %"$retval_50" = alloca %Uint32, align 8
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 4, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %entry
  %"$consume_598" = sub i64 %"$gasrem_594", 4
  store i64 %"$consume_598", i64* @_gasrem, align 8
  %"$z_599" = load %Uint32, %Uint32* %z, align 4
  %"$one_int_600" = load %Uint32, %Uint32* %one_int, align 4
  %"$add_call_601" = call %Uint32 @_add_Uint32(%Uint32 %"$z_599", %Uint32 %"$one_int_600"), !dbg !48
  store %Uint32 %"$add_call_601", %Uint32* %"$retval_50", align 4, !dbg !48
  %"$$retval_50_602" = load %Uint32, %Uint32* %"$retval_50", align 4
  ret %Uint32 %"$$retval_50_602"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_47"(%"$$fundef_47_env_149"* %0, %Uint32 %1) !dbg !49 {
entry:
  %"$$fundef_47_env_one_int_575" = getelementptr inbounds %"$$fundef_47_env_149", %"$$fundef_47_env_149"* %0, i32 0, i32 0
  %"$one_int_envload_576" = load %Uint32, %Uint32* %"$$fundef_47_env_one_int_575", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_576", %Uint32* %one_int, align 4
  %"$retval_48" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_578" = icmp ugt i64 1, %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %entry
  %"$consume_581" = sub i64 %"$gasrem_577", 1
  store i64 %"$consume_581", i64* @_gasrem, align 8
  %"$$fundef_49_envp_582_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_49_envp_582_salloc" = call i8* @_salloc(i8* %"$$fundef_49_envp_582_load", i64 8)
  %"$$fundef_49_envp_582" = bitcast i8* %"$$fundef_49_envp_582_salloc" to %"$$fundef_49_env_148"*
  %"$$fundef_49_env_voidp_584" = bitcast %"$$fundef_49_env_148"* %"$$fundef_49_envp_582" to i8*
  %"$$fundef_49_cloval_585" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_49_env_148"*, %TName_Nat*)* @"$fundef_49" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_49_env_voidp_584", 1
  %"$$fundef_49_env_one_int_586" = getelementptr inbounds %"$$fundef_49_env_148", %"$$fundef_49_env_148"* %"$$fundef_49_envp_582", i32 0, i32 0
  %"$one_int_587" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_587", %Uint32* %"$$fundef_49_env_one_int_586", align 4
  %"$$fundef_49_env_z_588" = getelementptr inbounds %"$$fundef_49_env_148", %"$$fundef_49_env_148"* %"$$fundef_49_envp_582", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_49_env_z_588", align 4
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_49_cloval_585", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_48", align 8, !dbg !50
  %"$$retval_48_589" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_48", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_48_589"
}

define internal %Uint32 @"$fundef_45"(%"$$fundef_45_env_150"* %0, %TName_Nat* %1) !dbg !51 {
entry:
  %"$$fundef_45_env_nat_fold_499" = getelementptr inbounds %"$$fundef_45_env_150", %"$$fundef_45_env_150"* %0, i32 0, i32 0
  %"$nat_fold_envload_500" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_45_env_nat_fold_499", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_500", { i8*, i8* }** %nat_fold, align 8
  %"$retval_46" = alloca %Uint32, align 8
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %entry
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_504"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$nat_fold_511" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_512" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_511", i32 0
  %"$nat_fold_513" = bitcast { i8*, i8* }* %"$nat_fold_512" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_514" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_513", align 8
  %"$nat_fold_fptr_515" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_514", 0
  %"$nat_fold_envptr_516" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_514", 1
  %"$nat_fold_call_517" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_fptr_515"(i8* %"$nat_fold_envptr_516"), !dbg !52
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$nat_fold_call_517", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8, !dbg !53
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_509"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  %one_int = alloca %Uint32, align 8
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_521"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one_int, align 4, !dbg !54
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_526"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_534" = icmp ugt i64 1, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %"$have_gas_531"
  %"$consume_537" = sub i64 %"$gasrem_533", 1
  store i64 %"$consume_537", i64* @_gasrem, align 8
  %"$$fundef_47_envp_538_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_47_envp_538_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_538_load", i64 4)
  %"$$fundef_47_envp_538" = bitcast i8* %"$$fundef_47_envp_538_salloc" to %"$$fundef_47_env_149"*
  %"$$fundef_47_env_voidp_540" = bitcast %"$$fundef_47_env_149"* %"$$fundef_47_envp_538" to i8*
  %"$$fundef_47_cloval_541" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_47_env_149"*, %Uint32)* @"$fundef_47" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_47_env_voidp_540", 1
  %"$$fundef_47_env_one_int_542" = getelementptr inbounds %"$$fundef_47_env_149", %"$$fundef_47_env_149"* %"$$fundef_47_envp_538", i32 0, i32 0
  %"$one_int_543" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_543", %Uint32* %"$$fundef_47_env_one_int_542", align 4
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_47_cloval_541", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8, !dbg !55
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %"$have_gas_536"
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %"$have_gas_536"
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  %zero_int = alloca %Uint32, align 8
  %"$gasrem_549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_550" = icmp ugt i64 1, %"$gasrem_549"
  br i1 %"$gascmp_550", label %"$out_of_gas_551", label %"$have_gas_552"

"$out_of_gas_551":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_552"

"$have_gas_552":                                  ; preds = %"$out_of_gas_551", %"$have_gas_547"
  %"$consume_553" = sub i64 %"$gasrem_549", 1
  store i64 %"$consume_553", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero_int, align 4, !dbg !56
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 1, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_552"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_552"
  %"$consume_558" = sub i64 %"$gasrem_554", 1
  store i64 %"$consume_558", i64* @_gasrem, align 8
  %"$fold_4" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$fold_559" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$fold_fptr_560" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_559", 0
  %"$fold_envptr_561" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_559", 1
  %"$f_562" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$fold_call_563" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_560"(i8* %"$fold_envptr_561", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_562"), !dbg !57
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_563", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_4", align 8, !dbg !57
  %"$fold_5" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fold_4_564" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_4", align 8
  %"$$fold_4_fptr_565" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_4_564", 0
  %"$$fold_4_envptr_566" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_4_564", 1
  %"$zero_int_567" = load %Uint32, %Uint32* %zero_int, align 4
  %"$$fold_4_call_568" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_4_fptr_565"(i8* %"$$fold_4_envptr_566", %Uint32 %"$zero_int_567"), !dbg !57
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_4_call_568", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_5", align 8, !dbg !57
  %"$fold_6" = alloca %Uint32, align 8
  %"$$fold_5_569" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_5", align 8
  %"$$fold_5_fptr_570" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_5_569", 0
  %"$$fold_5_envptr_571" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_5_569", 1
  %"$$fold_5_call_572" = call %Uint32 %"$$fold_5_fptr_570"(i8* %"$$fold_5_envptr_571", %TName_Nat* %1), !dbg !57
  store %Uint32 %"$$fold_5_call_572", %Uint32* %"$fold_6", align 4, !dbg !57
  %"$$fold_6_573" = load %Uint32, %Uint32* %"$fold_6", align 4
  store %Uint32 %"$$fold_6_573", %Uint32* %"$retval_46", align 4, !dbg !57
  %"$$retval_46_574" = load %Uint32, %Uint32* %"$retval_46", align 4
  ret %Uint32 %"$$retval_46_574"
}

define internal %TName_Nat* @"$fundef_43"(%"$$fundef_43_env_151"* %0, %TName_Nat* %1) !dbg !58 {
entry:
  %"$$fundef_43_env_f0_434" = getelementptr inbounds %"$$fundef_43_env_151", %"$$fundef_43_env_151"* %0, i32 0, i32 0
  %"$f0_envload_435" = load %TName_Nat*, %TName_Nat** %"$$fundef_43_env_f0_434", align 8
  %f0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$f0_envload_435", %TName_Nat** %f0, align 8
  %"$$fundef_43_env_fn_436" = getelementptr inbounds %"$$fundef_43_env_151", %"$$fundef_43_env_151"* %0, i32 0, i32 1
  %"$fn_envload_437" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_fn_436", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_437", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_43_env_g_438" = getelementptr inbounds %"$$fundef_43_env_151", %"$$fundef_43_env_151"* %0, i32 0, i32 2
  %"$g_envload_439" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_g_438", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_439", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_44" = alloca %TName_Nat*, align 8
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 2, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %entry
  %"$consume_444" = sub i64 %"$gasrem_440", 2
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %"$n_tag_446" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_447" = load i8, i8* %"$n_tag_446", align 1
  switch i8 %"$n_tag_447", label %"$empty_default_448" [
    i8 1, label %"$Succ_449"
    i8 0, label %"$Zero_490"
  ], !dbg !60

"$Succ_449":                                      ; preds = %"$have_gas_443"
  %"$n_450" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_451" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_450", i32 0, i32 1
  %"$n1_load_452" = load %TName_Nat*, %TName_Nat** %"$n1_gep_451", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_452", %TName_Nat** %n1, align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$Succ_449"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$Succ_449"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %res = alloca %TName_Nat*, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %"$fn_0" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_463" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$fn_fptr_464" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_463", 0
  %"$fn_envptr_465" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_463", 1
  %"$f0_466" = load %TName_Nat*, %TName_Nat** %f0, align 8
  %"$fn_call_467" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_464"(i8* %"$fn_envptr_465", %TName_Nat* %"$f0_466"), !dbg !61
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_467", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8, !dbg !61
  %"$fn_1" = alloca %TName_Nat*, align 8
  %"$$fn_0_468" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8
  %"$$fn_0_fptr_469" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_468", 0
  %"$$fn_0_envptr_470" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_468", 1
  %"$n1_471" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_0_call_472" = call %TName_Nat* %"$$fn_0_fptr_469"(i8* %"$$fn_0_envptr_470", %TName_Nat* %"$n1_471"), !dbg !61
  store %TName_Nat* %"$$fn_0_call_472", %TName_Nat** %"$fn_1", align 8, !dbg !61
  %"$$fn_1_473" = load %TName_Nat*, %TName_Nat** %"$fn_1", align 8
  store %TName_Nat* %"$$fn_1_473", %TName_Nat** %res, align 8, !dbg !61
  %"$gasrem_474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_475" = icmp ugt i64 1, %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %"$have_gas_461"
  %"$consume_478" = sub i64 %"$gasrem_474", 1
  store i64 %"$consume_478", i64* @_gasrem, align 8
  %"$g_2" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_479" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$g_fptr_480" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_479", 0
  %"$g_envptr_481" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_479", 1
  %"$res_482" = load %TName_Nat*, %TName_Nat** %res, align 8
  %"$g_call_483" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_480"(i8* %"$g_envptr_481", %TName_Nat* %"$res_482"), !dbg !64
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_483", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8, !dbg !64
  %"$g_3" = alloca %TName_Nat*, align 8
  %"$$g_2_484" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_485" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_484", 0
  %"$$g_2_envptr_486" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_484", 1
  %"$n1_487" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_2_call_488" = call %TName_Nat* %"$$g_2_fptr_485"(i8* %"$$g_2_envptr_486", %TName_Nat* %"$n1_487"), !dbg !64
  store %TName_Nat* %"$$g_2_call_488", %TName_Nat** %"$g_3", align 8, !dbg !64
  %"$$g_3_489" = load %TName_Nat*, %TName_Nat** %"$g_3", align 8
  store %TName_Nat* %"$$g_3_489", %TName_Nat** %"$retval_44", align 8, !dbg !64
  br label %"$matchsucc_445"

"$Zero_490":                                      ; preds = %"$have_gas_443"
  %"$n_491" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 1, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$Zero_490"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$Zero_490"
  %"$consume_496" = sub i64 %"$gasrem_492", 1
  store i64 %"$consume_496", i64* @_gasrem, align 8
  %"$f0_497" = load %TName_Nat*, %TName_Nat** %f0, align 8
  store %TName_Nat* %"$f0_497", %TName_Nat** %"$retval_44", align 8, !dbg !65
  br label %"$matchsucc_445"

"$empty_default_448":                             ; preds = %"$have_gas_443"
  br label %"$matchsucc_445"

"$matchsucc_445":                                 ; preds = %"$have_gas_495", %"$have_gas_477", %"$empty_default_448"
  %"$$retval_44_498" = load %TName_Nat*, %TName_Nat** %"$retval_44", align 8
  ret %TName_Nat* %"$$retval_44_498"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_41"(%"$$fundef_41_env_152"* %0, %TName_Nat* %1) !dbg !67 {
entry:
  %"$$fundef_41_env_fn_415" = getelementptr inbounds %"$$fundef_41_env_152", %"$$fundef_41_env_152"* %0, i32 0, i32 0
  %"$fn_envload_416" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_fn_415", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_416", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_41_env_g_417" = getelementptr inbounds %"$$fundef_41_env_152", %"$$fundef_41_env_152"* %0, i32 0, i32 1
  %"$g_envload_418" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_g_417", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_418", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_42" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %entry
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$$fundef_43_envp_424_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_43_envp_424_salloc" = call i8* @_salloc(i8* %"$$fundef_43_envp_424_load", i64 40)
  %"$$fundef_43_envp_424" = bitcast i8* %"$$fundef_43_envp_424_salloc" to %"$$fundef_43_env_151"*
  %"$$fundef_43_env_voidp_426" = bitcast %"$$fundef_43_env_151"* %"$$fundef_43_envp_424" to i8*
  %"$$fundef_43_cloval_427" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_43_env_151"*, %TName_Nat*)* @"$fundef_43" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_43_env_voidp_426", 1
  %"$$fundef_43_env_f0_428" = getelementptr inbounds %"$$fundef_43_env_151", %"$$fundef_43_env_151"* %"$$fundef_43_envp_424", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_43_env_f0_428", align 8
  %"$$fundef_43_env_fn_429" = getelementptr inbounds %"$$fundef_43_env_151", %"$$fundef_43_env_151"* %"$$fundef_43_envp_424", i32 0, i32 1
  %"$fn_430" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_430", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_fn_429", align 8
  %"$$fundef_43_env_g_431" = getelementptr inbounds %"$$fundef_43_env_151", %"$$fundef_43_env_151"* %"$$fundef_43_envp_424", i32 0, i32 2
  %"$g_432" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_432", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_43_env_g_431", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_43_cloval_427", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_42", align 8, !dbg !68
  %"$$retval_42_433" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_42", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_42_433"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_39"(%"$$fundef_39_env_153"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) !dbg !69 {
entry:
  %"$retval_40" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 1, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %entry
  %"$consume_400" = sub i64 %"$gasrem_396", 1
  store i64 %"$consume_400", i64* @_gasrem, align 8
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 1, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$have_gas_399"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$have_gas_399"
  %"$consume_405" = sub i64 %"$gasrem_401", 1
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %"$$fundef_41_envp_406_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_41_envp_406_salloc" = call i8* @_salloc(i8* %"$$fundef_41_envp_406_load", i64 32)
  %"$$fundef_41_envp_406" = bitcast i8* %"$$fundef_41_envp_406_salloc" to %"$$fundef_41_env_152"*
  %"$$fundef_41_env_voidp_408" = bitcast %"$$fundef_41_env_152"* %"$$fundef_41_envp_406" to i8*
  %"$$fundef_41_cloval_409" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_41_env_152"*, %TName_Nat*)* @"$fundef_41" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_41_env_voidp_408", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_41_cloval_409", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8, !dbg !70
  %"$$fundef_41_env_fn_410" = getelementptr inbounds %"$$fundef_41_env_152", %"$$fundef_41_env_152"* %"$$fundef_41_envp_406", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_fn_410", align 8
  %"$$fundef_41_env_g_411" = getelementptr inbounds %"$$fundef_41_env_152", %"$$fundef_41_env_152"* %"$$fundef_41_envp_406", i32 0, i32 1
  %"$g_412" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_412", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_41_env_g_411", align 8
  %"$g_413" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_413", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_40", align 8, !dbg !70
  %"$$retval_40_414" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_40", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_40_414"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_37"(%"$$fundef_37_env_154"* %0) !dbg !71 {
entry:
  %"$retval_38" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %entry
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_39_env_153"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_39" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_38", align 8, !dbg !72
  %"$$retval_38_395" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_38", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_38_395"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_35"(%"$$fundef_35_env_155"* %0, %TName_Nat* %1) !dbg !73 {
entry:
  %"$$fundef_35_env_f0_322" = getelementptr inbounds %"$$fundef_35_env_155", %"$$fundef_35_env_155"* %0, i32 0, i32 0
  %"$f0_envload_323" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_35_env_f0_322", align 8
  %f0 = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_envload_323", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$$fundef_35_env_fn_324" = getelementptr inbounds %"$$fundef_35_env_155", %"$$fundef_35_env_155"* %0, i32 0, i32 1
  %"$fn_envload_325" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_fn_324", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_325", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_35_env_g_326" = getelementptr inbounds %"$$fundef_35_env_155", %"$$fundef_35_env_155"* %0, i32 0, i32 2
  %"$g_envload_327" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_g_326", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_327", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_36" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 2, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %entry
  %"$consume_332" = sub i64 %"$gasrem_328", 2
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %"$n_tag_334" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_335" = load i8, i8* %"$n_tag_334", align 1
  switch i8 %"$n_tag_335", label %"$empty_default_336" [
    i8 1, label %"$Succ_337"
    i8 0, label %"$Zero_378"
  ], !dbg !74

"$Succ_337":                                      ; preds = %"$have_gas_331"
  %"$n_338" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_339" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_338", i32 0, i32 1
  %"$n1_load_340" = load %TName_Nat*, %TName_Nat** %"$n1_gep_339", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_340", %TName_Nat** %n1, align 8
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$Succ_337"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$Succ_337"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %res = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$fn_0" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_351" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$fn_fptr_352" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_351", 0
  %"$fn_envptr_353" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_351", 1
  %"$f0_354" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$fn_call_355" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_352"(i8* %"$fn_envptr_353", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_354"), !dbg !75
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_355", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8, !dbg !75
  %"$fn_1" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fn_0_356" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8
  %"$$fn_0_fptr_357" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_0_356", 0
  %"$$fn_0_envptr_358" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_0_356", 1
  %"$n1_359" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_0_call_360" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_fptr_357"(i8* %"$$fn_0_envptr_358", %TName_Nat* %"$n1_359"), !dbg !75
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_0_call_360", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_1", align 8, !dbg !75
  %"$$fn_1_361" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_1", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_1_361", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8, !dbg !75
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_349"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$g_2" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_367" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$g_fptr_368" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_367", 0
  %"$g_envptr_369" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_367", 1
  %"$res_370" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8
  %"$g_call_371" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_368"(i8* %"$g_envptr_369", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_370"), !dbg !78
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_371", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8, !dbg !78
  %"$g_3" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$g_2_372" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_373" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_2_372", 0
  %"$$g_2_envptr_374" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_2_372", 1
  %"$n1_375" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_2_call_376" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_fptr_373"(i8* %"$$g_2_envptr_374", %TName_Nat* %"$n1_375"), !dbg !78
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_2_call_376", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_3", align 8, !dbg !78
  %"$$g_3_377" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_3", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_3_377", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_36", align 8, !dbg !78
  br label %"$matchsucc_333"

"$Zero_378":                                      ; preds = %"$have_gas_331"
  %"$n_379" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$Zero_378"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$Zero_378"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$f0_385" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_385", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_36", align 8, !dbg !79
  br label %"$matchsucc_333"

"$empty_default_336":                             ; preds = %"$have_gas_331"
  br label %"$matchsucc_333"

"$matchsucc_333":                                 ; preds = %"$have_gas_383", %"$have_gas_365", %"$empty_default_336"
  %"$$retval_36_386" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_36", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_36_386"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_33"(%"$$fundef_33_env_156"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !81 {
entry:
  %"$$fundef_33_env_fn_303" = getelementptr inbounds %"$$fundef_33_env_156", %"$$fundef_33_env_156"* %0, i32 0, i32 0
  %"$fn_envload_304" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_fn_303", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_304", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_33_env_g_305" = getelementptr inbounds %"$$fundef_33_env_156", %"$$fundef_33_env_156"* %0, i32 0, i32 1
  %"$g_envload_306" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_g_305", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_306", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_34" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %entry
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$$fundef_35_envp_312_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_35_envp_312_salloc" = call i8* @_salloc(i8* %"$$fundef_35_envp_312_load", i64 48)
  %"$$fundef_35_envp_312" = bitcast i8* %"$$fundef_35_envp_312_salloc" to %"$$fundef_35_env_155"*
  %"$$fundef_35_env_voidp_314" = bitcast %"$$fundef_35_env_155"* %"$$fundef_35_envp_312" to i8*
  %"$$fundef_35_cloval_315" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_35_env_155"*, %TName_Nat*)* @"$fundef_35" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_35_env_voidp_314", 1
  %"$$fundef_35_env_f0_316" = getelementptr inbounds %"$$fundef_35_env_155", %"$$fundef_35_env_155"* %"$$fundef_35_envp_312", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_35_env_f0_316", align 8
  %"$$fundef_35_env_fn_317" = getelementptr inbounds %"$$fundef_35_env_155", %"$$fundef_35_env_155"* %"$$fundef_35_envp_312", i32 0, i32 1
  %"$fn_318" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_318", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_fn_317", align 8
  %"$$fundef_35_env_g_319" = getelementptr inbounds %"$$fundef_35_env_155", %"$$fundef_35_env_155"* %"$$fundef_35_envp_312", i32 0, i32 2
  %"$g_320" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_320", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_35_env_g_319", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_35_cloval_315", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_34", align 8, !dbg !82
  %"$$retval_34_321" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_34", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_34_321"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_31"(%"$$fundef_31_env_157"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !83 {
entry:
  %"$retval_32" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %entry
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$$fundef_33_envp_294_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_33_envp_294_salloc" = call i8* @_salloc(i8* %"$$fundef_33_envp_294_load", i64 32)
  %"$$fundef_33_envp_294" = bitcast i8* %"$$fundef_33_envp_294_salloc" to %"$$fundef_33_env_156"*
  %"$$fundef_33_env_voidp_296" = bitcast %"$$fundef_33_env_156"* %"$$fundef_33_envp_294" to i8*
  %"$$fundef_33_cloval_297" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_33_env_156"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_33" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_33_env_voidp_296", 1
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_33_cloval_297", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8, !dbg !84
  %"$$fundef_33_env_fn_298" = getelementptr inbounds %"$$fundef_33_env_156", %"$$fundef_33_env_156"* %"$$fundef_33_envp_294", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_fn_298", align 8
  %"$$fundef_33_env_g_299" = getelementptr inbounds %"$$fundef_33_env_156", %"$$fundef_33_env_156"* %"$$fundef_33_envp_294", i32 0, i32 1
  %"$g_300" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_300", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_33_env_g_299", align 8
  %"$g_301" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_301", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_32", align 8, !dbg !84
  %"$$retval_32_302" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_32", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_32_302"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_29"(%"$$fundef_29_env_158"* %0) !dbg !85 {
entry:
  %"$retval_30" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %entry
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_31_env_157"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_31" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_30", align 8, !dbg !86
  %"$$retval_30_283" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_30", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_30_283"
}

define internal %Uint32 @"$fundef_27"(%"$$fundef_27_env_159"* %0, %TName_Nat* %1) !dbg !87 {
entry:
  %"$$fundef_27_env_f0_210" = getelementptr inbounds %"$$fundef_27_env_159", %"$$fundef_27_env_159"* %0, i32 0, i32 0
  %"$f0_envload_211" = load %Uint32, %Uint32* %"$$fundef_27_env_f0_210", align 4
  %f0 = alloca %Uint32, align 8
  store %Uint32 %"$f0_envload_211", %Uint32* %f0, align 4
  %"$$fundef_27_env_fn_212" = getelementptr inbounds %"$$fundef_27_env_159", %"$$fundef_27_env_159"* %0, i32 0, i32 1
  %"$fn_envload_213" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_fn_212", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_213", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_27_env_g_214" = getelementptr inbounds %"$$fundef_27_env_159", %"$$fundef_27_env_159"* %0, i32 0, i32 2
  %"$g_envload_215" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_g_214", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_215", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_28" = alloca %Uint32, align 8
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 2, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %entry
  %"$consume_220" = sub i64 %"$gasrem_216", 2
  store i64 %"$consume_220", i64* @_gasrem, align 8
  %"$n_tag_222" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_223" = load i8, i8* %"$n_tag_222", align 1
  switch i8 %"$n_tag_223", label %"$empty_default_224" [
    i8 1, label %"$Succ_225"
    i8 0, label %"$Zero_266"
  ], !dbg !88

"$Succ_225":                                      ; preds = %"$have_gas_219"
  %"$n_226" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_227" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_226", i32 0, i32 1
  %"$n1_load_228" = load %TName_Nat*, %TName_Nat** %"$n1_gep_227", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_228", %TName_Nat** %n1, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$Succ_225"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$Succ_225"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$fn_0" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_239" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$fn_fptr_240" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_239", 0
  %"$fn_envptr_241" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_239", 1
  %"$f0_242" = load %Uint32, %Uint32* %f0, align 4
  %"$fn_call_243" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_240"(i8* %"$fn_envptr_241", %Uint32 %"$f0_242"), !dbg !89
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_243", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8, !dbg !89
  %"$fn_1" = alloca %Uint32, align 8
  %"$$fn_0_244" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_0", align 8
  %"$$fn_0_fptr_245" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_0_244", 0
  %"$$fn_0_envptr_246" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_0_244", 1
  %"$n1_247" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_0_call_248" = call %Uint32 %"$$fn_0_fptr_245"(i8* %"$$fn_0_envptr_246", %TName_Nat* %"$n1_247"), !dbg !89
  store %Uint32 %"$$fn_0_call_248", %Uint32* %"$fn_1", align 4, !dbg !89
  %"$$fn_1_249" = load %Uint32, %Uint32* %"$fn_1", align 4
  store %Uint32 %"$$fn_1_249", %Uint32* %res, align 4, !dbg !89
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_237"
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %"$g_2" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_255" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_256" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_255", 0
  %"$g_envptr_257" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_255", 1
  %"$res_258" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_259" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_256"(i8* %"$g_envptr_257", %Uint32 %"$res_258"), !dbg !92
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_259", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8, !dbg !92
  %"$g_3" = alloca %Uint32, align 8
  %"$$g_2_260" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_2", align 8
  %"$$g_2_fptr_261" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_2_260", 0
  %"$$g_2_envptr_262" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_2_260", 1
  %"$n1_263" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_2_call_264" = call %Uint32 %"$$g_2_fptr_261"(i8* %"$$g_2_envptr_262", %TName_Nat* %"$n1_263"), !dbg !92
  store %Uint32 %"$$g_2_call_264", %Uint32* %"$g_3", align 4, !dbg !92
  %"$$g_3_265" = load %Uint32, %Uint32* %"$g_3", align 4
  store %Uint32 %"$$g_3_265", %Uint32* %"$retval_28", align 4, !dbg !92
  br label %"$matchsucc_221"

"$Zero_266":                                      ; preds = %"$have_gas_219"
  %"$n_267" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_269" = icmp ugt i64 1, %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %"$Zero_266"
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %"$Zero_266"
  %"$consume_272" = sub i64 %"$gasrem_268", 1
  store i64 %"$consume_272", i64* @_gasrem, align 8
  %"$f0_273" = load %Uint32, %Uint32* %f0, align 4
  store %Uint32 %"$f0_273", %Uint32* %"$retval_28", align 4, !dbg !93
  br label %"$matchsucc_221"

"$empty_default_224":                             ; preds = %"$have_gas_219"
  br label %"$matchsucc_221"

"$matchsucc_221":                                 ; preds = %"$have_gas_271", %"$have_gas_253", %"$empty_default_224"
  %"$$retval_28_274" = load %Uint32, %Uint32* %"$retval_28", align 4
  ret %Uint32 %"$$retval_28_274"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_25"(%"$$fundef_25_env_160"* %0, %Uint32 %1) !dbg !95 {
entry:
  %"$$fundef_25_env_fn_191" = getelementptr inbounds %"$$fundef_25_env_160", %"$$fundef_25_env_160"* %0, i32 0, i32 0
  %"$fn_envload_192" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_fn_191", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_192", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_25_env_g_193" = getelementptr inbounds %"$$fundef_25_env_160", %"$$fundef_25_env_160"* %0, i32 0, i32 1
  %"$g_envload_194" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_g_193", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_194", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_26" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %entry
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %"$$fundef_27_envp_200_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_200_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_200_load", i64 40)
  %"$$fundef_27_envp_200" = bitcast i8* %"$$fundef_27_envp_200_salloc" to %"$$fundef_27_env_159"*
  %"$$fundef_27_env_voidp_202" = bitcast %"$$fundef_27_env_159"* %"$$fundef_27_envp_200" to i8*
  %"$$fundef_27_cloval_203" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_27_env_159"*, %TName_Nat*)* @"$fundef_27" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_202", 1
  %"$$fundef_27_env_f0_204" = getelementptr inbounds %"$$fundef_27_env_159", %"$$fundef_27_env_159"* %"$$fundef_27_envp_200", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_27_env_f0_204", align 4
  %"$$fundef_27_env_fn_205" = getelementptr inbounds %"$$fundef_27_env_159", %"$$fundef_27_env_159"* %"$$fundef_27_envp_200", i32 0, i32 1
  %"$fn_206" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_206", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_fn_205", align 8
  %"$$fundef_27_env_g_207" = getelementptr inbounds %"$$fundef_27_env_159", %"$$fundef_27_env_159"* %"$$fundef_27_envp_200", i32 0, i32 2
  %"$g_208" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_208", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_27_env_g_207", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_27_cloval_203", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_26", align 8, !dbg !96
  %"$$retval_26_209" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_26", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_26_209"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_23"(%"$$fundef_23_env_161"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !97 {
entry:
  %"$retval_24" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %entry
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %"$$fundef_25_envp_182_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_182_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_182_load", i64 32)
  %"$$fundef_25_envp_182" = bitcast i8* %"$$fundef_25_envp_182_salloc" to %"$$fundef_25_env_160"*
  %"$$fundef_25_env_voidp_184" = bitcast %"$$fundef_25_env_160"* %"$$fundef_25_envp_182" to i8*
  %"$$fundef_25_cloval_185" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_25_env_160"*, %Uint32)* @"$fundef_25" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_25_env_voidp_184", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_25_cloval_185", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !98
  %"$$fundef_25_env_fn_186" = getelementptr inbounds %"$$fundef_25_env_160", %"$$fundef_25_env_160"* %"$$fundef_25_envp_182", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_fn_186", align 8
  %"$$fundef_25_env_g_187" = getelementptr inbounds %"$$fundef_25_env_160", %"$$fundef_25_env_160"* %"$$fundef_25_envp_182", i32 0, i32 1
  %"$g_188" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_188", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_25_env_g_187", align 8
  %"$g_189" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_189", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24", align 8, !dbg !98
  %"$$retval_24_190" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24", align 8
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_24_190"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_21"(%"$$fundef_21_env_162"* %0) !dbg !99 {
entry:
  %"$retval_22" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %entry
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_23_env_161"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_23" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_22", align 8, !dbg !100
  %"$$retval_22_171" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_22", align 8
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_22_171"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !101 {
entry:
  %"$gasrem_979" = load i64, i64* @_gasrem, align 8
  %"$gascmp_980" = icmp ugt i64 1, %"$gasrem_979"
  br i1 %"$gascmp_980", label %"$out_of_gas_981", label %"$have_gas_982"

"$out_of_gas_981":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_982"

"$have_gas_982":                                  ; preds = %"$out_of_gas_981", %entry
  %"$consume_983" = sub i64 %"$gasrem_979", 1
  store i64 %"$consume_983", i64* @_gasrem, align 8
  %"$dyndisp_table_993_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_993_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_993_salloc_load", i64 48)
  %"$dyndisp_table_993_salloc" = bitcast i8* %"$dyndisp_table_993_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_993" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_993_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_994" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_993", i32 0
  %"$dyndisp_pcast_995" = bitcast { i8*, i8* }* %"$dyndisp_gep_994" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_21_env_162"*)* @"$fundef_21" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_995", align 8
  %"$dyndisp_gep_996" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_993", i32 1
  %"$dyndisp_pcast_997" = bitcast { i8*, i8* }* %"$dyndisp_gep_996" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_29_env_158"*)* @"$fundef_29" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_997", align 8
  %"$dyndisp_gep_998" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_993", i32 2
  %"$dyndisp_pcast_999" = bitcast { i8*, i8* }* %"$dyndisp_gep_998" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_37_env_154"*)* @"$fundef_37" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_999", align 8
  store { i8*, i8* }* %"$dyndisp_table_993", { i8*, i8* }** @nat_fold, align 8, !dbg !103
  %"$gasrem_1000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1001" = icmp ugt i64 1, %"$gasrem_1000"
  br i1 %"$gascmp_1001", label %"$out_of_gas_1002", label %"$have_gas_1003"

"$out_of_gas_1002":                               ; preds = %"$have_gas_982"
  call void @_out_of_gas()
  br label %"$have_gas_1003"

"$have_gas_1003":                                 ; preds = %"$out_of_gas_1002", %"$have_gas_982"
  %"$consume_1004" = sub i64 %"$gasrem_1000", 1
  store i64 %"$consume_1004", i64* @_gasrem, align 8
  %"$$fundef_45_envp_1005_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_45_envp_1005_salloc" = call i8* @_salloc(i8* %"$$fundef_45_envp_1005_load", i64 8)
  %"$$fundef_45_envp_1005" = bitcast i8* %"$$fundef_45_envp_1005_salloc" to %"$$fundef_45_env_150"*
  %"$$fundef_45_env_voidp_1007" = bitcast %"$$fundef_45_env_150"* %"$$fundef_45_envp_1005" to i8*
  %"$$fundef_45_cloval_1008" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_45_env_150"*, %TName_Nat*)* @"$fundef_45" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_45_env_voidp_1007", 1
  %"$$fundef_45_env_nat_fold_1009" = getelementptr inbounds %"$$fundef_45_env_150", %"$$fundef_45_env_150"* %"$$fundef_45_envp_1005", i32 0, i32 0
  %"$nat_fold_1010" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1010", { i8*, i8* }** %"$$fundef_45_env_nat_fold_1009", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_45_cloval_1008", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8, !dbg !104
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !105 {
entry:
  %"$expr_51" = alloca %Uint32, align 8
  %"$gasrem_1011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1012" = icmp ugt i64 1, %"$gasrem_1011"
  br i1 %"$gascmp_1012", label %"$out_of_gas_1013", label %"$have_gas_1014"

"$out_of_gas_1013":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1014"

"$have_gas_1014":                                 ; preds = %"$out_of_gas_1013", %entry
  %"$consume_1015" = sub i64 %"$gasrem_1011", 1
  store i64 %"$consume_1015", i64* @_gasrem, align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1017" = icmp ugt i64 1, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %"$have_gas_1014"
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %"$have_gas_1014"
  %"$consume_1020" = sub i64 %"$gasrem_1016", 1
  store i64 %"$consume_1020", i64* @_gasrem, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_52_env_147"*, %TName_Nat*)* @"$fundef_52" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8, !dbg !106
  %"$gasrem_1024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1025" = icmp ugt i64 1, %"$gasrem_1024"
  br i1 %"$gascmp_1025", label %"$out_of_gas_1026", label %"$have_gas_1027"

"$out_of_gas_1026":                               ; preds = %"$have_gas_1019"
  call void @_out_of_gas()
  br label %"$have_gas_1027"

"$have_gas_1027":                                 ; preds = %"$out_of_gas_1026", %"$have_gas_1019"
  %"$consume_1028" = sub i64 %"$gasrem_1024", 1
  store i64 %"$consume_1028", i64* @_gasrem, align 8
  %nat_iter = alloca { i8*, i8* }*, align 8
  %"$gasrem_1029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1030" = icmp ugt i64 1, %"$gasrem_1029"
  br i1 %"$gascmp_1030", label %"$out_of_gas_1031", label %"$have_gas_1032"

"$out_of_gas_1031":                               ; preds = %"$have_gas_1027"
  call void @_out_of_gas()
  br label %"$have_gas_1032"

"$have_gas_1032":                                 ; preds = %"$out_of_gas_1031", %"$have_gas_1027"
  %"$consume_1033" = sub i64 %"$gasrem_1029", 1
  store i64 %"$consume_1033", i64* @_gasrem, align 8
  %"$$fundef_54_envp_1034_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_54_envp_1034_salloc" = call i8* @_salloc(i8* %"$$fundef_54_envp_1034_load", i64 8)
  %"$$fundef_54_envp_1034" = bitcast i8* %"$$fundef_54_envp_1034_salloc" to %"$$fundef_54_env_146"*
  %"$$fundef_54_env_voidp_1036" = bitcast %"$$fundef_54_env_146"* %"$$fundef_54_envp_1034" to i8*
  %"$$fundef_54_cloval_1037" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_54_env_146"*)* @"$fundef_54" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_54_env_voidp_1036", 1
  %"$$fundef_54_env_nat_fold_1038" = getelementptr inbounds %"$$fundef_54_env_146", %"$$fundef_54_env_146"* %"$$fundef_54_envp_1034", i32 0, i32 0
  %"$nat_fold_1039" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1039", { i8*, i8* }** %"$$fundef_54_env_nat_fold_1038", align 8
  %"$$fundef_66_env_voidp_1041" = bitcast %"$$fundef_54_env_146"* %"$$fundef_54_envp_1034" to i8*
  %"$$fundef_66_cloval_1042" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_66_env_140"*)* @"$fundef_66" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_66_env_voidp_1041", 1
  %"$dyndisp_table_1043_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1043_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1043_salloc_load", i64 48)
  %"$dyndisp_table_1043_salloc" = bitcast i8* %"$dyndisp_table_1043_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1043" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1043_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1044" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1043", i32 1
  %"$dyndisp_pcast_1045" = bitcast { i8*, i8* }* %"$dyndisp_gep_1044" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_54_cloval_1037", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1045", align 8
  %"$dyndisp_gep_1046" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1043", i32 2
  %"$dyndisp_pcast_1047" = bitcast { i8*, i8* }* %"$dyndisp_gep_1046" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_66_cloval_1042", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1047", align 8
  store { i8*, i8* }* %"$dyndisp_table_1043", { i8*, i8* }** %nat_iter, align 8, !dbg !107
  %"$gasrem_1048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1049" = icmp ugt i64 1, %"$gasrem_1048"
  br i1 %"$gascmp_1049", label %"$out_of_gas_1050", label %"$have_gas_1051"

"$out_of_gas_1050":                               ; preds = %"$have_gas_1032"
  call void @_out_of_gas()
  br label %"$have_gas_1051"

"$have_gas_1051":                                 ; preds = %"$out_of_gas_1050", %"$have_gas_1032"
  %"$consume_1052" = sub i64 %"$gasrem_1048", 1
  store i64 %"$consume_1052", i64* @_gasrem, align 8
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1054" = icmp ugt i64 1, %"$gasrem_1053"
  br i1 %"$gascmp_1054", label %"$out_of_gas_1055", label %"$have_gas_1056"

"$out_of_gas_1055":                               ; preds = %"$have_gas_1051"
  call void @_out_of_gas()
  br label %"$have_gas_1056"

"$have_gas_1056":                                 ; preds = %"$out_of_gas_1055", %"$have_gas_1051"
  %"$consume_1057" = sub i64 %"$gasrem_1053", 1
  store i64 %"$consume_1057", i64* @_gasrem, align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1058" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1059" = icmp ugt i64 1, %"$gasrem_1058"
  br i1 %"$gascmp_1059", label %"$out_of_gas_1060", label %"$have_gas_1061"

"$out_of_gas_1060":                               ; preds = %"$have_gas_1056"
  call void @_out_of_gas()
  br label %"$have_gas_1061"

"$have_gas_1061":                                 ; preds = %"$out_of_gas_1060", %"$have_gas_1056"
  %"$consume_1062" = sub i64 %"$gasrem_1058", 1
  store i64 %"$consume_1062", i64* @_gasrem, align 8
  %"$nat_iter_1063" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1064" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1063", i32 2
  %"$nat_iter_1065" = bitcast { i8*, i8* }* %"$nat_iter_1064" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1066" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1065", align 8
  %"$nat_iter_fptr_1067" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1066", 0
  %"$nat_iter_envptr_1068" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1066", 1
  %"$nat_iter_call_1069" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1067"(i8* %"$nat_iter_envptr_1068"), !dbg !108
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1069", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8, !dbg !109
  %"$gasrem_1070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1071" = icmp ugt i64 1, %"$gasrem_1070"
  br i1 %"$gascmp_1071", label %"$out_of_gas_1072", label %"$have_gas_1073"

"$out_of_gas_1072":                               ; preds = %"$have_gas_1061"
  call void @_out_of_gas()
  br label %"$have_gas_1073"

"$have_gas_1073":                                 ; preds = %"$out_of_gas_1072", %"$have_gas_1061"
  %"$consume_1074" = sub i64 %"$gasrem_1070", 1
  store i64 %"$consume_1074", i64* @_gasrem, align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_1075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1076" = icmp ugt i64 1, %"$gasrem_1075"
  br i1 %"$gascmp_1076", label %"$out_of_gas_1077", label %"$have_gas_1078"

"$out_of_gas_1077":                               ; preds = %"$have_gas_1073"
  call void @_out_of_gas()
  br label %"$have_gas_1078"

"$have_gas_1078":                                 ; preds = %"$out_of_gas_1077", %"$have_gas_1073"
  %"$consume_1079" = sub i64 %"$gasrem_1075", 1
  store i64 %"$consume_1079", i64* @_gasrem, align 8
  %"$nat_iter_1080" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1081" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1080", i32 1
  %"$nat_iter_1082" = bitcast { i8*, i8* }* %"$nat_iter_1081" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1083" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1082", align 8
  %"$nat_iter_fptr_1084" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1083", 0
  %"$nat_iter_envptr_1085" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1083", 1
  %"$nat_iter_call_1086" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1084"(i8* %"$nat_iter_envptr_1085"), !dbg !110
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1086", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8, !dbg !111
  %"$gasrem_1087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1088" = icmp ugt i64 1, %"$gasrem_1087"
  br i1 %"$gascmp_1088", label %"$out_of_gas_1089", label %"$have_gas_1090"

"$out_of_gas_1089":                               ; preds = %"$have_gas_1078"
  call void @_out_of_gas()
  br label %"$have_gas_1090"

"$have_gas_1090":                                 ; preds = %"$out_of_gas_1089", %"$have_gas_1078"
  %"$consume_1091" = sub i64 %"$gasrem_1087", 1
  store i64 %"$consume_1091", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_1092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1093" = icmp ugt i64 1, %"$gasrem_1092"
  br i1 %"$gascmp_1093", label %"$out_of_gas_1094", label %"$have_gas_1095"

"$out_of_gas_1094":                               ; preds = %"$have_gas_1090"
  call void @_out_of_gas()
  br label %"$have_gas_1095"

"$have_gas_1095":                                 ; preds = %"$out_of_gas_1094", %"$have_gas_1090"
  %"$consume_1096" = sub i64 %"$gasrem_1092", 1
  store i64 %"$consume_1096", i64* @_gasrem, align 8
  %"$adtval_1097_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1097_salloc" = call i8* @_salloc(i8* %"$adtval_1097_load", i64 1)
  %"$adtval_1097" = bitcast i8* %"$adtval_1097_salloc" to %CName_Zero*
  %"$adtgep_1098" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1097", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1098", align 1
  %"$adtptr_1099" = bitcast %CName_Zero* %"$adtval_1097" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1099", %TName_Nat** %zero, align 8, !dbg !112
  %"$gasrem_1100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1101" = icmp ugt i64 1, %"$gasrem_1100"
  br i1 %"$gascmp_1101", label %"$out_of_gas_1102", label %"$have_gas_1103"

"$out_of_gas_1102":                               ; preds = %"$have_gas_1095"
  call void @_out_of_gas()
  br label %"$have_gas_1103"

"$have_gas_1103":                                 ; preds = %"$out_of_gas_1102", %"$have_gas_1095"
  %"$consume_1104" = sub i64 %"$gasrem_1100", 1
  store i64 %"$consume_1104", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_1105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1106" = icmp ugt i64 1, %"$gasrem_1105"
  br i1 %"$gascmp_1106", label %"$out_of_gas_1107", label %"$have_gas_1108"

"$out_of_gas_1107":                               ; preds = %"$have_gas_1103"
  call void @_out_of_gas()
  br label %"$have_gas_1108"

"$have_gas_1108":                                 ; preds = %"$out_of_gas_1107", %"$have_gas_1103"
  %"$consume_1109" = sub i64 %"$gasrem_1105", 1
  store i64 %"$consume_1109", i64* @_gasrem, align 8
  %"$zero_1110" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_1111_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1111_salloc" = call i8* @_salloc(i8* %"$adtval_1111_load", i64 9)
  %"$adtval_1111" = bitcast i8* %"$adtval_1111_salloc" to %CName_Succ*
  %"$adtgep_1112" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1111", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1112", align 1
  %"$adtgep_1113" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1111", i32 0, i32 1
  store %TName_Nat* %"$zero_1110", %TName_Nat** %"$adtgep_1113", align 8
  %"$adtptr_1114" = bitcast %CName_Succ* %"$adtval_1111" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1114", %TName_Nat** %one, align 8, !dbg !113
  %"$gasrem_1115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1116" = icmp ugt i64 1, %"$gasrem_1115"
  br i1 %"$gascmp_1116", label %"$out_of_gas_1117", label %"$have_gas_1118"

"$out_of_gas_1117":                               ; preds = %"$have_gas_1108"
  call void @_out_of_gas()
  br label %"$have_gas_1118"

"$have_gas_1118":                                 ; preds = %"$out_of_gas_1117", %"$have_gas_1108"
  %"$consume_1119" = sub i64 %"$gasrem_1115", 1
  store i64 %"$consume_1119", i64* @_gasrem, align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1121" = icmp ugt i64 1, %"$gasrem_1120"
  br i1 %"$gascmp_1121", label %"$out_of_gas_1122", label %"$have_gas_1123"

"$out_of_gas_1122":                               ; preds = %"$have_gas_1118"
  call void @_out_of_gas()
  br label %"$have_gas_1123"

"$have_gas_1123":                                 ; preds = %"$out_of_gas_1122", %"$have_gas_1118"
  %"$consume_1124" = sub i64 %"$gasrem_1120", 1
  store i64 %"$consume_1124", i64* @_gasrem, align 8
  %"$$fundef_78_envp_1125_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_78_envp_1125_salloc" = call i8* @_salloc(i8* %"$$fundef_78_envp_1125_load", i64 24)
  %"$$fundef_78_envp_1125" = bitcast i8* %"$$fundef_78_envp_1125_salloc" to %"$$fundef_78_env_134"*
  %"$$fundef_78_env_voidp_1127" = bitcast %"$$fundef_78_env_134"* %"$$fundef_78_envp_1125" to i8*
  %"$$fundef_78_cloval_1128" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_78_env_134"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_78" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_78_env_voidp_1127", 1
  %"$$fundef_78_env_iter_nat_1129" = getelementptr inbounds %"$$fundef_78_env_134", %"$$fundef_78_env_134"* %"$$fundef_78_envp_1125", i32 0, i32 0
  %"$iter_nat_1130" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1130", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_78_env_iter_nat_1129", align 8
  %"$$fundef_78_env_one_1131" = getelementptr inbounds %"$$fundef_78_env_134", %"$$fundef_78_env_134"* %"$$fundef_78_envp_1125", i32 0, i32 1
  %"$one_1132" = load %TName_Nat*, %TName_Nat** %one, align 8
  store %TName_Nat* %"$one_1132", %TName_Nat** %"$$fundef_78_env_one_1131", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_78_cloval_1128", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8, !dbg !114
  %"$gasrem_1133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1134" = icmp ugt i64 1, %"$gasrem_1133"
  br i1 %"$gascmp_1134", label %"$out_of_gas_1135", label %"$have_gas_1136"

"$out_of_gas_1135":                               ; preds = %"$have_gas_1123"
  call void @_out_of_gas()
  br label %"$have_gas_1136"

"$have_gas_1136":                                 ; preds = %"$out_of_gas_1135", %"$have_gas_1123"
  %"$consume_1137" = sub i64 %"$gasrem_1133", 1
  store i64 %"$consume_1137", i64* @_gasrem, align 8
  %"$$fundef_82_envp_1138_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_82_envp_1138_salloc" = call i8* @_salloc(i8* %"$$fundef_82_envp_1138_load", i64 48)
  %"$$fundef_82_envp_1138" = bitcast i8* %"$$fundef_82_envp_1138_salloc" to %"$$fundef_82_env_132"*
  %"$$fundef_82_env_voidp_1140" = bitcast %"$$fundef_82_env_132"* %"$$fundef_82_envp_1138" to i8*
  %"$$fundef_82_cloval_1141" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_82_env_132"*, %TName_Nat*)* @"$fundef_82" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_82_env_voidp_1140", 1
  %"$$fundef_82_env_f_1142" = getelementptr inbounds %"$$fundef_82_env_132", %"$$fundef_82_env_132"* %"$$fundef_82_envp_1138", i32 0, i32 0
  %"$f_1143" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1143", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_82_env_f_1142", align 8
  %"$$fundef_82_env_iter_nat_nat_1144" = getelementptr inbounds %"$$fundef_82_env_132", %"$$fundef_82_env_132"* %"$$fundef_82_envp_1138", i32 0, i32 1
  %"$iter_nat_nat_1145" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1145", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_82_env_iter_nat_nat_1144", align 8
  %"$$fundef_82_env_nat_succ_1146" = getelementptr inbounds %"$$fundef_82_env_132", %"$$fundef_82_env_132"* %"$$fundef_82_envp_1138", i32 0, i32 2
  %"$nat_succ_1147" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1147", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_82_env_nat_succ_1146", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_82_cloval_1141", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8, !dbg !115
  %"$gasrem_1148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1149" = icmp ugt i64 1, %"$gasrem_1148"
  br i1 %"$gascmp_1149", label %"$out_of_gas_1150", label %"$have_gas_1151"

"$out_of_gas_1150":                               ; preds = %"$have_gas_1136"
  call void @_out_of_gas()
  br label %"$have_gas_1151"

"$have_gas_1151":                                 ; preds = %"$out_of_gas_1150", %"$have_gas_1136"
  %"$consume_1152" = sub i64 %"$gasrem_1148", 1
  store i64 %"$consume_1152", i64* @_gasrem, align 8
  %uintM = alloca %Uint32, align 8
  %"$gasrem_1153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1154" = icmp ugt i64 1, %"$gasrem_1153"
  br i1 %"$gascmp_1154", label %"$out_of_gas_1155", label %"$have_gas_1156"

"$out_of_gas_1155":                               ; preds = %"$have_gas_1151"
  call void @_out_of_gas()
  br label %"$have_gas_1156"

"$have_gas_1156":                                 ; preds = %"$out_of_gas_1155", %"$have_gas_1151"
  %"$consume_1157" = sub i64 %"$gasrem_1153", 1
  store i64 %"$consume_1157", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %uintM, align 4, !dbg !116
  %"$gasrem_1158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1159" = icmp ugt i64 1, %"$gasrem_1158"
  br i1 %"$gascmp_1159", label %"$out_of_gas_1160", label %"$have_gas_1161"

"$out_of_gas_1160":                               ; preds = %"$have_gas_1156"
  call void @_out_of_gas()
  br label %"$have_gas_1161"

"$have_gas_1161":                                 ; preds = %"$out_of_gas_1160", %"$have_gas_1156"
  %"$consume_1162" = sub i64 %"$gasrem_1158", 1
  store i64 %"$consume_1162", i64* @_gasrem, align 8
  %uintN = alloca %Uint32, align 8
  %"$gasrem_1163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1164" = icmp ugt i64 1, %"$gasrem_1163"
  br i1 %"$gascmp_1164", label %"$out_of_gas_1165", label %"$have_gas_1166"

"$out_of_gas_1165":                               ; preds = %"$have_gas_1161"
  call void @_out_of_gas()
  br label %"$have_gas_1166"

"$have_gas_1166":                                 ; preds = %"$out_of_gas_1165", %"$have_gas_1161"
  %"$consume_1167" = sub i64 %"$gasrem_1163", 1
  store i64 %"$consume_1167", i64* @_gasrem, align 8
  store %Uint32 { i32 7 }, %Uint32* %uintN, align 4, !dbg !117
  %"$gasrem_1168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1169" = icmp ugt i64 1, %"$gasrem_1168"
  br i1 %"$gascmp_1169", label %"$out_of_gas_1170", label %"$have_gas_1171"

"$out_of_gas_1170":                               ; preds = %"$have_gas_1166"
  call void @_out_of_gas()
  br label %"$have_gas_1171"

"$have_gas_1171":                                 ; preds = %"$out_of_gas_1170", %"$have_gas_1166"
  %"$consume_1172" = sub i64 %"$gasrem_1168", 1
  store i64 %"$consume_1172", i64* @_gasrem, align 8
  %m = alloca %TName_Nat*, align 8
  %"$uintM_1173" = load %Uint32, %Uint32* %uintM, align 4
  %"$valueof_1174" = extractvalue %Uint32 %"$uintM_1173", 0
  %"$valueof_1175" = zext i32 %"$valueof_1174" to i64
  %"$gasrem_1176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1177" = icmp ugt i64 %"$valueof_1175", %"$gasrem_1176"
  br i1 %"$gascmp_1177", label %"$out_of_gas_1178", label %"$have_gas_1179"

"$out_of_gas_1178":                               ; preds = %"$have_gas_1171"
  call void @_out_of_gas()
  br label %"$have_gas_1179"

"$have_gas_1179":                                 ; preds = %"$out_of_gas_1178", %"$have_gas_1171"
  %"$consume_1180" = sub i64 %"$gasrem_1176", %"$valueof_1175"
  store i64 %"$consume_1180", i64* @_gasrem, align 8
  %"$execptr_load_1181" = load i8*, i8** @_execptr, align 8
  %"$uintM_1182" = load %Uint32, %Uint32* %uintM, align 4
  %"$to_nat_call_1183" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1181", %Uint32 %"$uintM_1182"), !dbg !118
  store %TName_Nat* %"$to_nat_call_1183", %TName_Nat** %m, align 8, !dbg !118
  %"$gasrem_1185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1186" = icmp ugt i64 1, %"$gasrem_1185"
  br i1 %"$gascmp_1186", label %"$out_of_gas_1187", label %"$have_gas_1188"

"$out_of_gas_1187":                               ; preds = %"$have_gas_1179"
  call void @_out_of_gas()
  br label %"$have_gas_1188"

"$have_gas_1188":                                 ; preds = %"$out_of_gas_1187", %"$have_gas_1179"
  %"$consume_1189" = sub i64 %"$gasrem_1185", 1
  store i64 %"$consume_1189", i64* @_gasrem, align 8
  %n = alloca %TName_Nat*, align 8
  %"$uintN_1190" = load %Uint32, %Uint32* %uintN, align 4
  %"$valueof_1191" = extractvalue %Uint32 %"$uintN_1190", 0
  %"$valueof_1192" = zext i32 %"$valueof_1191" to i64
  %"$gasrem_1193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1194" = icmp ugt i64 %"$valueof_1192", %"$gasrem_1193"
  br i1 %"$gascmp_1194", label %"$out_of_gas_1195", label %"$have_gas_1196"

"$out_of_gas_1195":                               ; preds = %"$have_gas_1188"
  call void @_out_of_gas()
  br label %"$have_gas_1196"

"$have_gas_1196":                                 ; preds = %"$out_of_gas_1195", %"$have_gas_1188"
  %"$consume_1197" = sub i64 %"$gasrem_1193", %"$valueof_1192"
  store i64 %"$consume_1197", i64* @_gasrem, align 8
  %"$execptr_load_1198" = load i8*, i8** @_execptr, align 8
  %"$uintN_1199" = load %Uint32, %Uint32* %uintN, align 4
  %"$to_nat_call_1200" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1198", %Uint32 %"$uintN_1199"), !dbg !119
  store %TName_Nat* %"$to_nat_call_1200", %TName_Nat** %n, align 8, !dbg !119
  %"$gasrem_1202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1203" = icmp ugt i64 1, %"$gasrem_1202"
  br i1 %"$gascmp_1203", label %"$out_of_gas_1204", label %"$have_gas_1205"

"$out_of_gas_1204":                               ; preds = %"$have_gas_1196"
  call void @_out_of_gas()
  br label %"$have_gas_1205"

"$have_gas_1205":                                 ; preds = %"$out_of_gas_1204", %"$have_gas_1196"
  %"$consume_1206" = sub i64 %"$gasrem_1202", 1
  store i64 %"$consume_1206", i64* @_gasrem, align 8
  %ack00 = alloca %TName_Nat*, align 8
  %"$gasrem_1207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1208" = icmp ugt i64 1, %"$gasrem_1207"
  br i1 %"$gascmp_1208", label %"$out_of_gas_1209", label %"$have_gas_1210"

"$out_of_gas_1209":                               ; preds = %"$have_gas_1205"
  call void @_out_of_gas()
  br label %"$have_gas_1210"

"$have_gas_1210":                                 ; preds = %"$out_of_gas_1209", %"$have_gas_1205"
  %"$consume_1211" = sub i64 %"$gasrem_1207", 1
  store i64 %"$consume_1211", i64* @_gasrem, align 8
  %"$ackermann_18" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1212" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1213" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1212", 0
  %"$ackermann_envptr_1214" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1212", 1
  %"$m_1215" = load %TName_Nat*, %TName_Nat** %m, align 8
  %"$ackermann_call_1216" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1213"(i8* %"$ackermann_envptr_1214", %TName_Nat* %"$m_1215"), !dbg !120
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1216", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_18", align 8, !dbg !120
  %"$ackermann_19" = alloca %TName_Nat*, align 8
  %"$$ackermann_18_1217" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_18", align 8
  %"$$ackermann_18_fptr_1218" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_18_1217", 0
  %"$$ackermann_18_envptr_1219" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_18_1217", 1
  %"$n_1220" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$ackermann_18_call_1221" = call %TName_Nat* %"$$ackermann_18_fptr_1218"(i8* %"$$ackermann_18_envptr_1219", %TName_Nat* %"$n_1220"), !dbg !120
  store %TName_Nat* %"$$ackermann_18_call_1221", %TName_Nat** %"$ackermann_19", align 8, !dbg !120
  %"$$ackermann_19_1222" = load %TName_Nat*, %TName_Nat** %"$ackermann_19", align 8
  store %TName_Nat* %"$$ackermann_19_1222", %TName_Nat** %ack00, align 8, !dbg !120
  %"$gasrem_1223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1224" = icmp ugt i64 1, %"$gasrem_1223"
  br i1 %"$gascmp_1224", label %"$out_of_gas_1225", label %"$have_gas_1226"

"$out_of_gas_1225":                               ; preds = %"$have_gas_1210"
  call void @_out_of_gas()
  br label %"$have_gas_1226"

"$have_gas_1226":                                 ; preds = %"$out_of_gas_1225", %"$have_gas_1210"
  %"$consume_1227" = sub i64 %"$gasrem_1223", 1
  store i64 %"$consume_1227", i64* @_gasrem, align 8
  %int01 = alloca %Uint32, align 8
  %"$gasrem_1228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1229" = icmp ugt i64 1, %"$gasrem_1228"
  br i1 %"$gascmp_1229", label %"$out_of_gas_1230", label %"$have_gas_1231"

"$out_of_gas_1230":                               ; preds = %"$have_gas_1226"
  call void @_out_of_gas()
  br label %"$have_gas_1231"

"$have_gas_1231":                                 ; preds = %"$out_of_gas_1230", %"$have_gas_1226"
  %"$consume_1232" = sub i64 %"$gasrem_1228", 1
  store i64 %"$consume_1232", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_20" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1233" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1234" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1233", 0
  %"$NatUtils.nat_to_int_envptr_1235" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1233", 1
  %"$ack00_1236" = load %TName_Nat*, %TName_Nat** %ack00, align 8
  %"$NatUtils.nat_to_int_call_1237" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1234"(i8* %"$NatUtils.nat_to_int_envptr_1235", %TName_Nat* %"$ack00_1236"), !dbg !121
  store %Uint32 %"$NatUtils.nat_to_int_call_1237", %Uint32* %"$NatUtils.nat_to_int_20", align 4, !dbg !121
  %"$$NatUtils.nat_to_int_20_1238" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_20", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_20_1238", %Uint32* %int01, align 4, !dbg !121
  %"$gasrem_1239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1240" = icmp ugt i64 1, %"$gasrem_1239"
  br i1 %"$gascmp_1240", label %"$out_of_gas_1241", label %"$have_gas_1242"

"$out_of_gas_1241":                               ; preds = %"$have_gas_1231"
  call void @_out_of_gas()
  br label %"$have_gas_1242"

"$have_gas_1242":                                 ; preds = %"$out_of_gas_1241", %"$have_gas_1231"
  %"$consume_1243" = sub i64 %"$gasrem_1239", 1
  store i64 %"$consume_1243", i64* @_gasrem, align 8
  %"$int01_1244" = load %Uint32, %Uint32* %int01, align 4
  store %Uint32 %"$int01_1244", %Uint32* %"$expr_51", align 4, !dbg !122
  %"$$expr_51_1245" = load %Uint32, %Uint32* %"$expr_51", align 4
  ret %Uint32 %"$$expr_51_1245"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1246" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1247" = alloca %Uint32, align 8
  %"$memvoidcast_1248" = bitcast %Uint32* %"$pval_1247" to i8*
  store %Uint32 %"$exprval_1246", %Uint32* %"$pval_1247", align 4
  %"$execptr_load_1249" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1249", %_TyDescrTy_Typ* @"$TyDescr_Uint32_88", i8* %"$memvoidcast_1248")
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
!46 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !47, file: !47, line: 55, type: !5, scopeLine: 55, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!47 = !DIFile(filename: "NatUtils.scillib", directory: "../src/stdlib")
!48 = !DILocation(line: 55, column: 7, scope: !46)
!49 = distinct !DISubprogram(name: "$fundef_47", linkageName: "$fundef_47", scope: !47, file: !47, line: 54, type: !5, scopeLine: 54, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!50 = !DILocation(line: 55, column: 7, scope: !49)
!51 = distinct !DISubprogram(name: "$fundef_45", linkageName: "$fundef_45", scope: !47, file: !47, line: 52, type: !5, scopeLine: 52, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!52 = !DILocation(line: 52, column: 17, scope: !51)
!53 = !DILocation(line: 52, column: 16, scope: !51)
!54 = !DILocation(line: 53, column: 19, scope: !51)
!55 = !DILocation(line: 54, column: 33, scope: !51)
!56 = !DILocation(line: 56, column: 20, scope: !51)
!57 = !DILocation(line: 57, column: 5, scope: !51)
!58 = distinct !DISubprogram(name: "$fundef_43", linkageName: "$fundef_43", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!59 = !DIFile(filename: "Prelude", directory: ".")
!60 = !DILocation(line: 1, column: 34, scope: !58)
!61 = !DILocation(line: 1, column: 71, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !59, line: 1, column: 50)
!63 = distinct !DILexicalBlock(scope: !58, file: !59, line: 1, column: 34)
!64 = !DILocation(line: 1, column: 86, scope: !62)
!65 = !DILocation(line: 1, column: 106, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !59, line: 1, column: 98)
!67 = distinct !DISubprogram(name: "$fundef_41", linkageName: "$fundef_41", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 1, column: 34, scope: !67)
!69 = distinct !DISubprogram(name: "$fundef_39", linkageName: "$fundef_39", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 1, column: 18, scope: !69)
!71 = distinct !DISubprogram(name: "$fundef_37", linkageName: "$fundef_37", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = !DILocation(line: 1, column: 18, scope: !71)
!73 = distinct !DISubprogram(name: "$fundef_35", linkageName: "$fundef_35", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!74 = !DILocation(line: 1, column: 34, scope: !73)
!75 = !DILocation(line: 1, column: 71, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !59, line: 1, column: 50)
!77 = distinct !DILexicalBlock(scope: !73, file: !59, line: 1, column: 34)
!78 = !DILocation(line: 1, column: 86, scope: !76)
!79 = !DILocation(line: 1, column: 106, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !59, line: 1, column: 98)
!81 = distinct !DISubprogram(name: "$fundef_33", linkageName: "$fundef_33", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!82 = !DILocation(line: 1, column: 34, scope: !81)
!83 = distinct !DISubprogram(name: "$fundef_31", linkageName: "$fundef_31", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!84 = !DILocation(line: 1, column: 18, scope: !83)
!85 = distinct !DISubprogram(name: "$fundef_29", linkageName: "$fundef_29", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!86 = !DILocation(line: 1, column: 18, scope: !85)
!87 = distinct !DISubprogram(name: "$fundef_27", linkageName: "$fundef_27", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!88 = !DILocation(line: 1, column: 34, scope: !87)
!89 = !DILocation(line: 1, column: 71, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !59, line: 1, column: 50)
!91 = distinct !DILexicalBlock(scope: !87, file: !59, line: 1, column: 34)
!92 = !DILocation(line: 1, column: 86, scope: !90)
!93 = !DILocation(line: 1, column: 106, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !59, line: 1, column: 98)
!95 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!96 = !DILocation(line: 1, column: 34, scope: !95)
!97 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!98 = !DILocation(line: 1, column: 18, scope: !97)
!99 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!100 = !DILocation(line: 1, column: 18, scope: !99)
!101 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !102, file: !102, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!102 = !DIFile(filename: ".", directory: ".")
!103 = !DILocation(line: 1, column: 18, scope: !101)
!104 = !DILocation(line: 52, column: 5, scope: !101)
!105 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!106 = !DILocation(line: 3, column: 20, scope: !105)
!107 = !DILocation(line: 8, column: 3, scope: !105)
!108 = !DILocation(line: 18, column: 19, scope: !105)
!109 = !DILocation(line: 18, column: 18, scope: !105)
!110 = !DILocation(line: 19, column: 23, scope: !105)
!111 = !DILocation(line: 19, column: 22, scope: !105)
!112 = !DILocation(line: 20, column: 14, scope: !105)
!113 = !DILocation(line: 21, column: 13, scope: !105)
!114 = !DILocation(line: 23, column: 5, scope: !105)
!115 = !DILocation(line: 25, column: 23, scope: !105)
!116 = !DILocation(line: 29, column: 13, scope: !105)
!117 = !DILocation(line: 30, column: 13, scope: !105)
!118 = !DILocation(line: 32, column: 9, scope: !105)
!119 = !DILocation(line: 33, column: 9, scope: !105)
!120 = !DILocation(line: 35, column: 13, scope: !105)
!121 = !DILocation(line: 36, column: 13, scope: !105)
!122 = !DILocation(line: 37, column: 1, scope: !105)
