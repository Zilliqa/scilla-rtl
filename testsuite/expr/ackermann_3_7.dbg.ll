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

%"$TyDescrTy_PrimTyp_95" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_125" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_124"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_124" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_126"**, %"$TyDescrTy_ADTTyp_125"* }
%"$TyDescrTy_ADTTyp_Constr_126" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>
%"$ParamDescr_1292" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1293" = type { %ParamDescrString, i32, %"$ParamDescr_1292"* }
%"$$fundef_93_env_143" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_91_env_144" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_89_env_145" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_87_env_146" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat* }
%"$$fundef_85_env_147" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_83_env_148" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_81_env_149" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { i8*, i8* }* }
%"$$fundef_79_env_150" = type { { i8*, i8* }* }
%"$$fundef_77_env_151" = type { { i8*, i8* }* }
%"$$fundef_75_env_152" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_73_env_153" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_71_env_154" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_69_env_155" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { i8*, i8* }* }
%"$$fundef_67_env_156" = type { { i8*, i8* }* }
%"$$fundef_65_env_157" = type { { i8*, i8* }* }
%"$$fundef_63_env_158" = type {}
%"$$fundef_60_env_159" = type { %Uint32, %Uint32 }
%"$$fundef_58_env_160" = type { %Uint32 }
%"$$fundef_56_env_161" = type { { i8*, i8* }* }
%"$$fundef_54_env_162" = type { %Uint32, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_52_env_163" = type { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_50_env_164" = type {}
%"$$fundef_48_env_165" = type {}
%"$$fundef_46_env_166" = type { %TName_Nat*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_44_env_167" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_42_env_168" = type {}
%"$$fundef_40_env_169" = type {}
%"$$fundef_38_env_170" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_36_env_171" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_34_env_172" = type {}
%"$$fundef_32_env_173" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_96" = global %"$TyDescrTy_PrimTyp_95" zeroinitializer
@"$TyDescr_Int32_97" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Int32_Prim_96" to i8*) }
@"$TyDescr_Uint32_Prim_98" = global %"$TyDescrTy_PrimTyp_95" { i32 1, i32 0 }
@"$TyDescr_Uint32_99" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Uint32_Prim_98" to i8*) }
@"$TyDescr_Int64_Prim_100" = global %"$TyDescrTy_PrimTyp_95" { i32 0, i32 1 }
@"$TyDescr_Int64_101" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Int64_Prim_100" to i8*) }
@"$TyDescr_Uint64_Prim_102" = global %"$TyDescrTy_PrimTyp_95" { i32 1, i32 1 }
@"$TyDescr_Uint64_103" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Uint64_Prim_102" to i8*) }
@"$TyDescr_Int128_Prim_104" = global %"$TyDescrTy_PrimTyp_95" { i32 0, i32 2 }
@"$TyDescr_Int128_105" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Int128_Prim_104" to i8*) }
@"$TyDescr_Uint128_Prim_106" = global %"$TyDescrTy_PrimTyp_95" { i32 1, i32 2 }
@"$TyDescr_Uint128_107" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Uint128_Prim_106" to i8*) }
@"$TyDescr_Int256_Prim_108" = global %"$TyDescrTy_PrimTyp_95" { i32 0, i32 3 }
@"$TyDescr_Int256_109" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Int256_Prim_108" to i8*) }
@"$TyDescr_Uint256_Prim_110" = global %"$TyDescrTy_PrimTyp_95" { i32 1, i32 3 }
@"$TyDescr_Uint256_111" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Uint256_Prim_110" to i8*) }
@"$TyDescr_String_Prim_112" = global %"$TyDescrTy_PrimTyp_95" { i32 2, i32 0 }
@"$TyDescr_String_113" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_String_Prim_112" to i8*) }
@"$TyDescr_Bnum_Prim_114" = global %"$TyDescrTy_PrimTyp_95" { i32 3, i32 0 }
@"$TyDescr_Bnum_115" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Bnum_Prim_114" to i8*) }
@"$TyDescr_Message_Prim_116" = global %"$TyDescrTy_PrimTyp_95" { i32 4, i32 0 }
@"$TyDescr_Message_117" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Message_Prim_116" to i8*) }
@"$TyDescr_Event_Prim_118" = global %"$TyDescrTy_PrimTyp_95" { i32 5, i32 0 }
@"$TyDescr_Event_119" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Event_Prim_118" to i8*) }
@"$TyDescr_Exception_Prim_120" = global %"$TyDescrTy_PrimTyp_95" { i32 6, i32 0 }
@"$TyDescr_Exception_121" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Exception_Prim_120" to i8*) }
@"$TyDescr_Bystr_Prim_122" = global %"$TyDescrTy_PrimTyp_95" { i32 7, i32 0 }
@"$TyDescr_Bystr_123" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Bystr_Prim_122" to i8*) }
@"$TyDescr_ADT_Nat_127" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_124"* @"$TyDescr_Nat_ADTTyp_Specl_140" to i8*) }
@"$TyDescr_Nat_ADTTyp_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_125" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_142", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_124"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_124"*], [1 x %"$TyDescrTy_ADTTyp_Specl_124"*]* @"$TyDescr_Nat_ADTTyp_m_specls_141", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_132" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_133" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_134" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_126" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_133", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_132", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_135" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_127"]
@"$TyDescr_ADT_Succ_136" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_137" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_126" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_136", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_135", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_138" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_126"*] [%"$TyDescrTy_ADTTyp_Constr_126"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_134", %"$TyDescrTy_ADTTyp_Constr_126"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_137"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_139" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_140" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_124" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_139", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_126"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_126"*], [2 x %"$TyDescrTy_ADTTyp_Constr_126"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_138", i32 0, i32 0), %"$TyDescrTy_ADTTyp_125"* @"$TyDescr_Nat_ADTTyp_131" }
@"$TyDescr_Nat_ADTTyp_m_specls_141" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_124"*] [%"$TyDescrTy_ADTTyp_Specl_124"* @"$TyDescr_Nat_ADTTyp_Specl_140"]
@"$TyDescr_ADT_Nat_142" = unnamed_addr constant [3 x i8] c"Nat"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@nat_fold = global { i8*, i8* }* null
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@NatUtils.nat_to_int = global { %Uint32 (i8*, %TName_Nat*)*, i8* } zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_119", %_TyDescrTy_Typ* @"$TyDescr_Int64_101", %_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_127", %_TyDescrTy_Typ* @"$TyDescr_Uint256_111", %_TyDescrTy_Typ* @"$TyDescr_Uint32_99", %_TyDescrTy_Typ* @"$TyDescr_Uint64_103", %_TyDescrTy_Typ* @"$TyDescr_Bnum_115", %_TyDescrTy_Typ* @"$TyDescr_Uint128_107", %_TyDescrTy_Typ* @"$TyDescr_Exception_121", %_TyDescrTy_Typ* @"$TyDescr_String_113", %_TyDescrTy_Typ* @"$TyDescr_Int256_109", %_TyDescrTy_Typ* @"$TyDescr_Int128_105", %_TyDescrTy_Typ* @"$TyDescr_Bystr_123", %_TyDescrTy_Typ* @"$TyDescr_Message_117", %_TyDescrTy_Typ* @"$TyDescr_Int32_97"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_1292"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1293"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_93"(%"$$fundef_93_env_143"* %0, %TName_Nat* %1) !dbg !4 {
entry:
  %"$$fundef_93_env_f_963" = getelementptr inbounds %"$$fundef_93_env_143", %"$$fundef_93_env_143"* %0, i32 0, i32 0
  %"$f_envload_964" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_93_env_f_963", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_964", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_93_env_iter_nat_nat_965" = getelementptr inbounds %"$$fundef_93_env_143", %"$$fundef_93_env_143"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_966" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_93_env_iter_nat_nat_965", align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_966", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$$fundef_93_env_nat_succ_967" = getelementptr inbounds %"$$fundef_93_env_143", %"$$fundef_93_env_143"* %0, i32 0, i32 2
  %"$nat_succ_envload_968" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_93_env_nat_succ_967", align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_968", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$retval_94" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_970" = icmp ugt i64 1, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %entry
  %"$consume_973" = sub i64 %"$gasrem_969", 1
  store i64 %"$consume_973", i64* @_gasrem, align 8
  %"$iter_nat_nat_26" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_nat_974" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$iter_nat_nat_fptr_975" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_974", 0
  %"$iter_nat_nat_envptr_976" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_974", 1
  %"$f_977" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$iter_nat_nat_call_978" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_975"(i8* %"$iter_nat_nat_envptr_976", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_977"), !dbg !8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_978", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_26", align 8, !dbg !8
  %"$iter_nat_nat_27" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$$iter_nat_nat_26_979" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_26", align 8
  %"$$iter_nat_nat_26_fptr_980" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_26_979", 0
  %"$$iter_nat_nat_26_envptr_981" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_26_979", 1
  %"$$iter_nat_nat_26_call_982" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_26_fptr_980"(i8* %"$$iter_nat_nat_26_envptr_981", %TName_Nat* %1), !dbg !8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_26_call_982", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_27", align 8, !dbg !8
  %"$iter_nat_nat_28" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_nat_27_983" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_27", align 8
  %"$$iter_nat_nat_27_fptr_984" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_27_983", 0
  %"$$iter_nat_nat_27_envptr_985" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_27_983", 1
  %"$nat_succ_986" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$$iter_nat_nat_27_call_987" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_27_fptr_984"(i8* %"$$iter_nat_nat_27_envptr_985", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_986"), !dbg !8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_27_call_987", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_28", align 8, !dbg !8
  %"$$iter_nat_nat_28_988" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_28", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_28_988", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_94", align 8, !dbg !8
  %"$$retval_94_989" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_94", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_94_989"
}

define internal %TName_Nat* @"$fundef_91"(%"$$fundef_91_env_144"* %0, %TName_Nat* %1) !dbg !9 {
entry:
  %"$$fundef_91_env_ack_936" = getelementptr inbounds %"$$fundef_91_env_144", %"$$fundef_91_env_144"* %0, i32 0, i32 0
  %"$ack_envload_937" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_91_env_ack_936", align 8
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_937", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$$fundef_91_env_iter_nat_938" = getelementptr inbounds %"$$fundef_91_env_144", %"$$fundef_91_env_144"* %0, i32 0, i32 1
  %"$iter_nat_envload_939" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_91_env_iter_nat_938", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_939", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_91_env_x0_940" = getelementptr inbounds %"$$fundef_91_env_144", %"$$fundef_91_env_144"* %0, i32 0, i32 2
  %"$x0_envload_941" = load %TName_Nat*, %TName_Nat** %"$$fundef_91_env_x0_940", align 8
  %x0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x0_envload_941", %TName_Nat** %x0, align 8
  %"$retval_92" = alloca %TName_Nat*, align 8
  %"$gasrem_942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_943" = icmp ugt i64 1, %"$gasrem_942"
  br i1 %"$gascmp_943", label %"$out_of_gas_944", label %"$have_gas_945"

"$out_of_gas_944":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_945"

"$have_gas_945":                                  ; preds = %"$out_of_gas_944", %entry
  %"$consume_946" = sub i64 %"$gasrem_942", 1
  store i64 %"$consume_946", i64* @_gasrem, align 8
  %"$iter_nat_23" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_947" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$iter_nat_fptr_948" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_947", 0
  %"$iter_nat_envptr_949" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_947", 1
  %"$ack_950" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$iter_nat_call_951" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_948"(i8* %"$iter_nat_envptr_949", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_950"), !dbg !10
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_951", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_23", align 8, !dbg !10
  %"$iter_nat_24" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_23_952" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_23", align 8
  %"$$iter_nat_23_fptr_953" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_952", 0
  %"$$iter_nat_23_envptr_954" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_952", 1
  %"$$iter_nat_23_call_955" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_fptr_953"(i8* %"$$iter_nat_23_envptr_954", %TName_Nat* %1), !dbg !10
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_call_955", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_24", align 8, !dbg !10
  %"$iter_nat_25" = alloca %TName_Nat*, align 8
  %"$$iter_nat_24_956" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_24", align 8
  %"$$iter_nat_24_fptr_957" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_24_956", 0
  %"$$iter_nat_24_envptr_958" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_24_956", 1
  %"$x0_959" = load %TName_Nat*, %TName_Nat** %x0, align 8
  %"$$iter_nat_24_call_960" = call %TName_Nat* %"$$iter_nat_24_fptr_957"(i8* %"$$iter_nat_24_envptr_958", %TName_Nat* %"$x0_959"), !dbg !10
  store %TName_Nat* %"$$iter_nat_24_call_960", %TName_Nat** %"$iter_nat_25", align 8, !dbg !10
  %"$$iter_nat_25_961" = load %TName_Nat*, %TName_Nat** %"$iter_nat_25", align 8
  store %TName_Nat* %"$$iter_nat_25_961", %TName_Nat** %"$retval_92", align 8, !dbg !10
  %"$$retval_92_962" = load %TName_Nat*, %TName_Nat** %"$retval_92", align 8
  ret %TName_Nat* %"$$retval_92_962"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_89"(%"$$fundef_89_env_145"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !11 {
entry:
  %"$$fundef_89_env_iter_nat_902" = getelementptr inbounds %"$$fundef_89_env_145", %"$$fundef_89_env_145"* %0, i32 0, i32 0
  %"$iter_nat_envload_903" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_89_env_iter_nat_902", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_903", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_89_env_one_904" = getelementptr inbounds %"$$fundef_89_env_145", %"$$fundef_89_env_145"* %0, i32 0, i32 1
  %"$one_envload_905" = load %TName_Nat*, %TName_Nat** %"$$fundef_89_env_one_904", align 8
  %one = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$one_envload_905", %TName_Nat** %one, align 8
  %"$retval_90" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_907" = icmp ugt i64 1, %"$gasrem_906"
  br i1 %"$gascmp_907", label %"$out_of_gas_908", label %"$have_gas_909"

"$out_of_gas_908":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_909"

"$have_gas_909":                                  ; preds = %"$out_of_gas_908", %entry
  %"$consume_910" = sub i64 %"$gasrem_906", 1
  store i64 %"$consume_910", i64* @_gasrem, align 8
  %x0 = alloca %TName_Nat*, align 8
  %"$gasrem_911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_912" = icmp ugt i64 1, %"$gasrem_911"
  br i1 %"$gascmp_912", label %"$out_of_gas_913", label %"$have_gas_914"

"$out_of_gas_913":                                ; preds = %"$have_gas_909"
  call void @_out_of_gas()
  br label %"$have_gas_914"

"$have_gas_914":                                  ; preds = %"$out_of_gas_913", %"$have_gas_909"
  %"$consume_915" = sub i64 %"$gasrem_911", 1
  store i64 %"$consume_915", i64* @_gasrem, align 8
  %"$ack_22" = alloca %TName_Nat*, align 8
  %"$ack_fptr_916" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_917" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_918" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$ack_call_919" = call %TName_Nat* %"$ack_fptr_916"(i8* %"$ack_envptr_917", %TName_Nat* %"$one_918"), !dbg !12
  store %TName_Nat* %"$ack_call_919", %TName_Nat** %"$ack_22", align 8, !dbg !12
  %"$$ack_22_920" = load %TName_Nat*, %TName_Nat** %"$ack_22", align 8
  store %TName_Nat* %"$$ack_22_920", %TName_Nat** %x0, align 8, !dbg !12
  %"$gasrem_921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_922" = icmp ugt i64 1, %"$gasrem_921"
  br i1 %"$gascmp_922", label %"$out_of_gas_923", label %"$have_gas_924"

"$out_of_gas_923":                                ; preds = %"$have_gas_914"
  call void @_out_of_gas()
  br label %"$have_gas_924"

"$have_gas_924":                                  ; preds = %"$out_of_gas_923", %"$have_gas_914"
  %"$consume_925" = sub i64 %"$gasrem_921", 1
  store i64 %"$consume_925", i64* @_gasrem, align 8
  %"$$fundef_91_envp_926_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_91_envp_926_salloc" = call i8* @_salloc(i8* %"$$fundef_91_envp_926_load", i64 40)
  %"$$fundef_91_envp_926" = bitcast i8* %"$$fundef_91_envp_926_salloc" to %"$$fundef_91_env_144"*
  %"$$fundef_91_env_voidp_928" = bitcast %"$$fundef_91_env_144"* %"$$fundef_91_envp_926" to i8*
  %"$$fundef_91_cloval_929" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_91_env_144"*, %TName_Nat*)* @"$fundef_91" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_91_env_voidp_928", 1
  %"$$fundef_91_env_ack_930" = getelementptr inbounds %"$$fundef_91_env_144", %"$$fundef_91_env_144"* %"$$fundef_91_envp_926", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_91_env_ack_930", align 8
  %"$$fundef_91_env_iter_nat_931" = getelementptr inbounds %"$$fundef_91_env_144", %"$$fundef_91_env_144"* %"$$fundef_91_envp_926", i32 0, i32 1
  %"$iter_nat_932" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_932", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_91_env_iter_nat_931", align 8
  %"$$fundef_91_env_x0_933" = getelementptr inbounds %"$$fundef_91_env_144", %"$$fundef_91_env_144"* %"$$fundef_91_envp_926", i32 0, i32 2
  %"$x0_934" = load %TName_Nat*, %TName_Nat** %x0, align 8
  store %TName_Nat* %"$x0_934", %TName_Nat** %"$$fundef_91_env_x0_933", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_91_cloval_929", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_90", align 8, !dbg !13
  %"$$retval_90_935" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_90", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_90_935"
}

define internal %TName_Nat* @"$fundef_87"(%"$$fundef_87_env_146"* %0, %TName_Nat* %1) !dbg !14 {
entry:
  %"$$fundef_87_env_f_886" = getelementptr inbounds %"$$fundef_87_env_146", %"$$fundef_87_env_146"* %0, i32 0, i32 0
  %"$f_envload_887" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_87_env_f_886", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_887", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_87_env_x_888" = getelementptr inbounds %"$$fundef_87_env_146", %"$$fundef_87_env_146"* %0, i32 0, i32 1
  %"$x_envload_889" = load %TName_Nat*, %TName_Nat** %"$$fundef_87_env_x_888", align 8
  %x = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x_envload_889", %TName_Nat** %x, align 8
  %"$retval_88" = alloca %TName_Nat*, align 8
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 1, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %entry
  %"$consume_894" = sub i64 %"$gasrem_890", 1
  store i64 %"$consume_894", i64* @_gasrem, align 8
  %"$f_18" = alloca %TName_Nat*, align 8
  %"$f_895" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$f_fptr_896" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_895", 0
  %"$f_envptr_897" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_895", 1
  %"$x_898" = load %TName_Nat*, %TName_Nat** %x, align 8
  %"$f_call_899" = call %TName_Nat* %"$f_fptr_896"(i8* %"$f_envptr_897", %TName_Nat* %"$x_898"), !dbg !15
  store %TName_Nat* %"$f_call_899", %TName_Nat** %"$f_18", align 8, !dbg !15
  %"$$f_18_900" = load %TName_Nat*, %TName_Nat** %"$f_18", align 8
  store %TName_Nat* %"$$f_18_900", %TName_Nat** %"$retval_88", align 8, !dbg !15
  %"$$retval_88_901" = load %TName_Nat*, %TName_Nat** %"$retval_88", align 8
  ret %TName_Nat* %"$$retval_88_901"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_85"(%"$$fundef_85_env_147"* %0, %TName_Nat* %1) !dbg !16 {
entry:
  %"$$fundef_85_env_f_871" = getelementptr inbounds %"$$fundef_85_env_147", %"$$fundef_85_env_147"* %0, i32 0, i32 0
  %"$f_envload_872" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_85_env_f_871", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_872", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$retval_86" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %entry
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %"$$fundef_87_envp_878_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_87_envp_878_salloc" = call i8* @_salloc(i8* %"$$fundef_87_envp_878_load", i64 24)
  %"$$fundef_87_envp_878" = bitcast i8* %"$$fundef_87_envp_878_salloc" to %"$$fundef_87_env_146"*
  %"$$fundef_87_env_voidp_880" = bitcast %"$$fundef_87_env_146"* %"$$fundef_87_envp_878" to i8*
  %"$$fundef_87_cloval_881" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_87_env_146"*, %TName_Nat*)* @"$fundef_87" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_87_env_voidp_880", 1
  %"$$fundef_87_env_f_882" = getelementptr inbounds %"$$fundef_87_env_146", %"$$fundef_87_env_146"* %"$$fundef_87_envp_878", i32 0, i32 0
  %"$f_883" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_883", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_87_env_f_882", align 8
  %"$$fundef_87_env_x_884" = getelementptr inbounds %"$$fundef_87_env_146", %"$$fundef_87_env_146"* %"$$fundef_87_envp_878", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_87_env_x_884", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_87_cloval_881", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_86", align 8, !dbg !17
  %"$$retval_86_885" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_86", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_86_885"
}

define internal %TName_Nat* @"$fundef_83"(%"$$fundef_83_env_148"* %0, %TName_Nat* %1) !dbg !18 {
entry:
  %"$$fundef_83_env_f_811" = getelementptr inbounds %"$$fundef_83_env_148", %"$$fundef_83_env_148"* %0, i32 0, i32 0
  %"$f_envload_812" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_83_env_f_811", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_812", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_83_env_n_813" = getelementptr inbounds %"$$fundef_83_env_148", %"$$fundef_83_env_148"* %0, i32 0, i32 1
  %"$n_envload_814" = load %TName_Nat*, %TName_Nat** %"$$fundef_83_env_n_813", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_814", %TName_Nat** %n, align 8
  %"$$fundef_83_env_nat_fold_815" = getelementptr inbounds %"$$fundef_83_env_148", %"$$fundef_83_env_148"* %0, i32 0, i32 2
  %"$nat_fold_envload_816" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_83_env_nat_fold_815", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_816", { i8*, i8* }** %nat_fold, align 8
  %"$retval_84" = alloca %TName_Nat*, align 8
  %"$gasrem_817" = load i64, i64* @_gasrem, align 8
  %"$gascmp_818" = icmp ugt i64 1, %"$gasrem_817"
  br i1 %"$gascmp_818", label %"$out_of_gas_819", label %"$have_gas_820"

"$out_of_gas_819":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_820"

"$have_gas_820":                                  ; preds = %"$out_of_gas_819", %entry
  %"$consume_821" = sub i64 %"$gasrem_817", 1
  store i64 %"$consume_821", i64* @_gasrem, align 8
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_823" = icmp ugt i64 1, %"$gasrem_822"
  br i1 %"$gascmp_823", label %"$out_of_gas_824", label %"$have_gas_825"

"$out_of_gas_824":                                ; preds = %"$have_gas_820"
  call void @_out_of_gas()
  br label %"$have_gas_825"

"$have_gas_825":                                  ; preds = %"$out_of_gas_824", %"$have_gas_820"
  %"$consume_826" = sub i64 %"$gasrem_822", 1
  store i64 %"$consume_826", i64* @_gasrem, align 8
  %"$nat_fold_827" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_828" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_827", i32 2
  %"$nat_fold_829" = bitcast { i8*, i8* }* %"$nat_fold_828" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_830" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_829", align 8
  %"$nat_fold_fptr_831" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_830", 0
  %"$nat_fold_envptr_832" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_830", 1
  %"$nat_fold_call_833" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_831"(i8* %"$nat_fold_envptr_832"), !dbg !19
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_833", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8, !dbg !20
  %"$gasrem_834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_835" = icmp ugt i64 1, %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %"$have_gas_825"
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %"$have_gas_825"
  %"$consume_838" = sub i64 %"$gasrem_834", 1
  store i64 %"$consume_838", i64* @_gasrem, align 8
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_840" = icmp ugt i64 1, %"$gasrem_839"
  br i1 %"$gascmp_840", label %"$out_of_gas_841", label %"$have_gas_842"

"$out_of_gas_841":                                ; preds = %"$have_gas_837"
  call void @_out_of_gas()
  br label %"$have_gas_842"

"$have_gas_842":                                  ; preds = %"$out_of_gas_841", %"$have_gas_837"
  %"$consume_843" = sub i64 %"$gasrem_839", 1
  store i64 %"$consume_843", i64* @_gasrem, align 8
  %"$$fundef_85_envp_844_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_85_envp_844_salloc" = call i8* @_salloc(i8* %"$$fundef_85_envp_844_load", i64 16)
  %"$$fundef_85_envp_844" = bitcast i8* %"$$fundef_85_envp_844_salloc" to %"$$fundef_85_env_147"*
  %"$$fundef_85_env_voidp_846" = bitcast %"$$fundef_85_env_147"* %"$$fundef_85_envp_844" to i8*
  %"$$fundef_85_cloval_847" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_85_env_147"*, %TName_Nat*)* @"$fundef_85" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_85_env_voidp_846", 1
  %"$$fundef_85_env_f_848" = getelementptr inbounds %"$$fundef_85_env_147", %"$$fundef_85_env_147"* %"$$fundef_85_envp_844", i32 0, i32 0
  %"$f_849" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_849", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_85_env_f_848", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_85_cloval_847", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8, !dbg !21
  %"$gasrem_850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_851" = icmp ugt i64 1, %"$gasrem_850"
  br i1 %"$gascmp_851", label %"$out_of_gas_852", label %"$have_gas_853"

"$out_of_gas_852":                                ; preds = %"$have_gas_842"
  call void @_out_of_gas()
  br label %"$have_gas_853"

"$have_gas_853":                                  ; preds = %"$out_of_gas_852", %"$have_gas_842"
  %"$consume_854" = sub i64 %"$gasrem_850", 1
  store i64 %"$consume_854", i64* @_gasrem, align 8
  %"$folder_19" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$folder_855" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_856" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_855", 0
  %"$folder_envptr_857" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_855", 1
  %"$step_858" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$folder_call_859" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_856"(i8* %"$folder_envptr_857", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_858"), !dbg !22
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_859", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_19", align 8, !dbg !22
  %"$folder_20" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_19_860" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_19", align 8
  %"$$folder_19_fptr_861" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_860", 0
  %"$$folder_19_envptr_862" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_860", 1
  %"$$folder_19_call_863" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_19_fptr_861"(i8* %"$$folder_19_envptr_862", %TName_Nat* %1), !dbg !22
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_19_call_863", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8, !dbg !22
  %"$folder_21" = alloca %TName_Nat*, align 8
  %"$$folder_20_864" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8
  %"$$folder_20_fptr_865" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_864", 0
  %"$$folder_20_envptr_866" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_864", 1
  %"$n_867" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_20_call_868" = call %TName_Nat* %"$$folder_20_fptr_865"(i8* %"$$folder_20_envptr_866", %TName_Nat* %"$n_867"), !dbg !22
  store %TName_Nat* %"$$folder_20_call_868", %TName_Nat** %"$folder_21", align 8, !dbg !22
  %"$$folder_21_869" = load %TName_Nat*, %TName_Nat** %"$folder_21", align 8
  store %TName_Nat* %"$$folder_21_869", %TName_Nat** %"$retval_84", align 8, !dbg !22
  %"$$retval_84_870" = load %TName_Nat*, %TName_Nat** %"$retval_84", align 8
  ret %TName_Nat* %"$$retval_84_870"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_81"(%"$$fundef_81_env_149"* %0, %TName_Nat* %1) !dbg !23 {
entry:
  %"$$fundef_81_env_f_792" = getelementptr inbounds %"$$fundef_81_env_149", %"$$fundef_81_env_149"* %0, i32 0, i32 0
  %"$f_envload_793" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_81_env_f_792", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_793", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_81_env_nat_fold_794" = getelementptr inbounds %"$$fundef_81_env_149", %"$$fundef_81_env_149"* %0, i32 0, i32 1
  %"$nat_fold_envload_795" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_81_env_nat_fold_794", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_795", { i8*, i8* }** %nat_fold, align 8
  %"$retval_82" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_796" = load i64, i64* @_gasrem, align 8
  %"$gascmp_797" = icmp ugt i64 1, %"$gasrem_796"
  br i1 %"$gascmp_797", label %"$out_of_gas_798", label %"$have_gas_799"

"$out_of_gas_798":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_799"

"$have_gas_799":                                  ; preds = %"$out_of_gas_798", %entry
  %"$consume_800" = sub i64 %"$gasrem_796", 1
  store i64 %"$consume_800", i64* @_gasrem, align 8
  %"$$fundef_83_envp_801_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_83_envp_801_salloc" = call i8* @_salloc(i8* %"$$fundef_83_envp_801_load", i64 32)
  %"$$fundef_83_envp_801" = bitcast i8* %"$$fundef_83_envp_801_salloc" to %"$$fundef_83_env_148"*
  %"$$fundef_83_env_voidp_803" = bitcast %"$$fundef_83_env_148"* %"$$fundef_83_envp_801" to i8*
  %"$$fundef_83_cloval_804" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_83_env_148"*, %TName_Nat*)* @"$fundef_83" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_83_env_voidp_803", 1
  %"$$fundef_83_env_f_805" = getelementptr inbounds %"$$fundef_83_env_148", %"$$fundef_83_env_148"* %"$$fundef_83_envp_801", i32 0, i32 0
  %"$f_806" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_806", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_83_env_f_805", align 8
  %"$$fundef_83_env_n_807" = getelementptr inbounds %"$$fundef_83_env_148", %"$$fundef_83_env_148"* %"$$fundef_83_envp_801", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_83_env_n_807", align 8
  %"$$fundef_83_env_nat_fold_808" = getelementptr inbounds %"$$fundef_83_env_148", %"$$fundef_83_env_148"* %"$$fundef_83_envp_801", i32 0, i32 2
  %"$nat_fold_809" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_809", { i8*, i8* }** %"$$fundef_83_env_nat_fold_808", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_83_cloval_804", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_82", align 8, !dbg !24
  %"$$retval_82_810" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_82", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_82_810"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_79"(%"$$fundef_79_env_150"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !25 {
entry:
  %"$$fundef_79_env_nat_fold_777" = getelementptr inbounds %"$$fundef_79_env_150", %"$$fundef_79_env_150"* %0, i32 0, i32 0
  %"$nat_fold_envload_778" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_79_env_nat_fold_777", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_778", { i8*, i8* }** %nat_fold, align 8
  %"$retval_80" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_780" = icmp ugt i64 1, %"$gasrem_779"
  br i1 %"$gascmp_780", label %"$out_of_gas_781", label %"$have_gas_782"

"$out_of_gas_781":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_782"

"$have_gas_782":                                  ; preds = %"$out_of_gas_781", %entry
  %"$consume_783" = sub i64 %"$gasrem_779", 1
  store i64 %"$consume_783", i64* @_gasrem, align 8
  %"$$fundef_81_envp_784_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_81_envp_784_salloc" = call i8* @_salloc(i8* %"$$fundef_81_envp_784_load", i64 24)
  %"$$fundef_81_envp_784" = bitcast i8* %"$$fundef_81_envp_784_salloc" to %"$$fundef_81_env_149"*
  %"$$fundef_81_env_voidp_786" = bitcast %"$$fundef_81_env_149"* %"$$fundef_81_envp_784" to i8*
  %"$$fundef_81_cloval_787" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_81_env_149"*, %TName_Nat*)* @"$fundef_81" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_81_env_voidp_786", 1
  %"$$fundef_81_env_f_788" = getelementptr inbounds %"$$fundef_81_env_149", %"$$fundef_81_env_149"* %"$$fundef_81_envp_784", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_81_env_f_788", align 8
  %"$$fundef_81_env_nat_fold_789" = getelementptr inbounds %"$$fundef_81_env_149", %"$$fundef_81_env_149"* %"$$fundef_81_envp_784", i32 0, i32 1
  %"$nat_fold_790" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_790", { i8*, i8* }** %"$$fundef_81_env_nat_fold_789", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_81_cloval_787", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_80", align 8, !dbg !26
  %"$$retval_80_791" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_80", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_80_791"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_77"(%"$$fundef_77_env_151"* %0) !dbg !27 {
entry:
  %"$$fundef_77_env_nat_fold_763" = getelementptr inbounds %"$$fundef_77_env_151", %"$$fundef_77_env_151"* %0, i32 0, i32 0
  %"$nat_fold_envload_764" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_77_env_nat_fold_763", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_764", { i8*, i8* }** %nat_fold, align 8
  %"$retval_78" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_766" = icmp ugt i64 1, %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %entry
  %"$consume_769" = sub i64 %"$gasrem_765", 1
  store i64 %"$consume_769", i64* @_gasrem, align 8
  %"$$fundef_79_envp_770_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_79_envp_770_salloc" = call i8* @_salloc(i8* %"$$fundef_79_envp_770_load", i64 8)
  %"$$fundef_79_envp_770" = bitcast i8* %"$$fundef_79_envp_770_salloc" to %"$$fundef_79_env_150"*
  %"$$fundef_79_env_voidp_772" = bitcast %"$$fundef_79_env_150"* %"$$fundef_79_envp_770" to i8*
  %"$$fundef_79_cloval_773" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_79_env_150"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_79" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_79_env_voidp_772", 1
  %"$$fundef_79_env_nat_fold_774" = getelementptr inbounds %"$$fundef_79_env_150", %"$$fundef_79_env_150"* %"$$fundef_79_envp_770", i32 0, i32 0
  %"$nat_fold_775" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_775", { i8*, i8* }** %"$$fundef_79_env_nat_fold_774", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_79_cloval_773", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_78", align 8, !dbg !28
  %"$$retval_78_776" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_78", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_78_776"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_75"(%"$$fundef_75_env_152"* %0, %TName_Nat* %1) !dbg !29 {
entry:
  %"$$fundef_75_env_f_747" = getelementptr inbounds %"$$fundef_75_env_152", %"$$fundef_75_env_152"* %0, i32 0, i32 0
  %"$f_envload_748" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_75_env_f_747", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_748", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_75_env_x_749" = getelementptr inbounds %"$$fundef_75_env_152", %"$$fundef_75_env_152"* %0, i32 0, i32 1
  %"$x_envload_750" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_75_env_x_749", align 8
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_750", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$retval_76" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_752" = icmp ugt i64 1, %"$gasrem_751"
  br i1 %"$gascmp_752", label %"$out_of_gas_753", label %"$have_gas_754"

"$out_of_gas_753":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_754"

"$have_gas_754":                                  ; preds = %"$out_of_gas_753", %entry
  %"$consume_755" = sub i64 %"$gasrem_751", 1
  store i64 %"$consume_755", i64* @_gasrem, align 8
  %"$f_18" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$f_756" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$f_fptr_757" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_756", 0
  %"$f_envptr_758" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_756", 1
  %"$x_759" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$f_call_760" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_757"(i8* %"$f_envptr_758", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_759"), !dbg !30
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_760", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_18", align 8, !dbg !30
  %"$$f_18_761" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_18", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_18_761", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_76", align 8, !dbg !30
  %"$$retval_76_762" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_76", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_76_762"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_73"(%"$$fundef_73_env_153"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !31 {
entry:
  %"$$fundef_73_env_f_732" = getelementptr inbounds %"$$fundef_73_env_153", %"$$fundef_73_env_153"* %0, i32 0, i32 0
  %"$f_envload_733" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_73_env_f_732", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_733", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$retval_74" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_735" = icmp ugt i64 1, %"$gasrem_734"
  br i1 %"$gascmp_735", label %"$out_of_gas_736", label %"$have_gas_737"

"$out_of_gas_736":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_737"

"$have_gas_737":                                  ; preds = %"$out_of_gas_736", %entry
  %"$consume_738" = sub i64 %"$gasrem_734", 1
  store i64 %"$consume_738", i64* @_gasrem, align 8
  %"$$fundef_75_envp_739_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_75_envp_739_salloc" = call i8* @_salloc(i8* %"$$fundef_75_envp_739_load", i64 32)
  %"$$fundef_75_envp_739" = bitcast i8* %"$$fundef_75_envp_739_salloc" to %"$$fundef_75_env_152"*
  %"$$fundef_75_env_voidp_741" = bitcast %"$$fundef_75_env_152"* %"$$fundef_75_envp_739" to i8*
  %"$$fundef_75_cloval_742" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_75_env_152"*, %TName_Nat*)* @"$fundef_75" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_75_env_voidp_741", 1
  %"$$fundef_75_env_f_743" = getelementptr inbounds %"$$fundef_75_env_152", %"$$fundef_75_env_152"* %"$$fundef_75_envp_739", i32 0, i32 0
  %"$f_744" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_744", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_75_env_f_743", align 8
  %"$$fundef_75_env_x_745" = getelementptr inbounds %"$$fundef_75_env_152", %"$$fundef_75_env_152"* %"$$fundef_75_envp_739", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_75_env_x_745", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_75_cloval_742", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_74", align 8, !dbg !32
  %"$$retval_74_746" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_74", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_74_746"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_71"(%"$$fundef_71_env_154"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !33 {
entry:
  %"$$fundef_71_env_f_672" = getelementptr inbounds %"$$fundef_71_env_154", %"$$fundef_71_env_154"* %0, i32 0, i32 0
  %"$f_envload_673" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_71_env_f_672", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_673", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_71_env_n_674" = getelementptr inbounds %"$$fundef_71_env_154", %"$$fundef_71_env_154"* %0, i32 0, i32 1
  %"$n_envload_675" = load %TName_Nat*, %TName_Nat** %"$$fundef_71_env_n_674", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_675", %TName_Nat** %n, align 8
  %"$$fundef_71_env_nat_fold_676" = getelementptr inbounds %"$$fundef_71_env_154", %"$$fundef_71_env_154"* %0, i32 0, i32 2
  %"$nat_fold_envload_677" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_71_env_nat_fold_676", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_677", { i8*, i8* }** %nat_fold, align 8
  %"$retval_72" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_679" = icmp ugt i64 1, %"$gasrem_678"
  br i1 %"$gascmp_679", label %"$out_of_gas_680", label %"$have_gas_681"

"$out_of_gas_680":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_681"

"$have_gas_681":                                  ; preds = %"$out_of_gas_680", %entry
  %"$consume_682" = sub i64 %"$gasrem_678", 1
  store i64 %"$consume_682", i64* @_gasrem, align 8
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_684" = icmp ugt i64 1, %"$gasrem_683"
  br i1 %"$gascmp_684", label %"$out_of_gas_685", label %"$have_gas_686"

"$out_of_gas_685":                                ; preds = %"$have_gas_681"
  call void @_out_of_gas()
  br label %"$have_gas_686"

"$have_gas_686":                                  ; preds = %"$out_of_gas_685", %"$have_gas_681"
  %"$consume_687" = sub i64 %"$gasrem_683", 1
  store i64 %"$consume_687", i64* @_gasrem, align 8
  %"$nat_fold_688" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_689" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_688", i32 1
  %"$nat_fold_690" = bitcast { i8*, i8* }* %"$nat_fold_689" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_691" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_690", align 8
  %"$nat_fold_fptr_692" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_691", 0
  %"$nat_fold_envptr_693" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_691", 1
  %"$nat_fold_call_694" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_692"(i8* %"$nat_fold_envptr_693"), !dbg !34
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_694", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8, !dbg !35
  %"$gasrem_695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_696" = icmp ugt i64 1, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %"$have_gas_686"
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %"$have_gas_686"
  %"$consume_699" = sub i64 %"$gasrem_695", 1
  store i64 %"$consume_699", i64* @_gasrem, align 8
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_701" = icmp ugt i64 1, %"$gasrem_700"
  br i1 %"$gascmp_701", label %"$out_of_gas_702", label %"$have_gas_703"

"$out_of_gas_702":                                ; preds = %"$have_gas_698"
  call void @_out_of_gas()
  br label %"$have_gas_703"

"$have_gas_703":                                  ; preds = %"$out_of_gas_702", %"$have_gas_698"
  %"$consume_704" = sub i64 %"$gasrem_700", 1
  store i64 %"$consume_704", i64* @_gasrem, align 8
  %"$$fundef_73_envp_705_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_73_envp_705_salloc" = call i8* @_salloc(i8* %"$$fundef_73_envp_705_load", i64 16)
  %"$$fundef_73_envp_705" = bitcast i8* %"$$fundef_73_envp_705_salloc" to %"$$fundef_73_env_153"*
  %"$$fundef_73_env_voidp_707" = bitcast %"$$fundef_73_env_153"* %"$$fundef_73_envp_705" to i8*
  %"$$fundef_73_cloval_708" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_73_env_153"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_73" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_73_env_voidp_707", 1
  %"$$fundef_73_env_f_709" = getelementptr inbounds %"$$fundef_73_env_153", %"$$fundef_73_env_153"* %"$$fundef_73_envp_705", i32 0, i32 0
  %"$f_710" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_710", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_73_env_f_709", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_73_cloval_708", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8, !dbg !36
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 1, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %"$have_gas_703"
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %"$have_gas_703"
  %"$consume_715" = sub i64 %"$gasrem_711", 1
  store i64 %"$consume_715", i64* @_gasrem, align 8
  %"$folder_19" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$folder_716" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_717" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_716", 0
  %"$folder_envptr_718" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_716", 1
  %"$step_719" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$folder_call_720" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_717"(i8* %"$folder_envptr_718", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_719"), !dbg !37
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_720", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_19", align 8, !dbg !37
  %"$folder_20" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_19_721" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_19", align 8
  %"$$folder_19_fptr_722" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_19_721", 0
  %"$$folder_19_envptr_723" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_19_721", 1
  %"$$folder_19_call_724" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_fptr_722"(i8* %"$$folder_19_envptr_723", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1), !dbg !37
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_call_724", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8, !dbg !37
  %"$folder_21" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_20_725" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8
  %"$$folder_20_fptr_726" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_20_725", 0
  %"$$folder_20_envptr_727" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_20_725", 1
  %"$n_728" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_20_call_729" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_fptr_726"(i8* %"$$folder_20_envptr_727", %TName_Nat* %"$n_728"), !dbg !37
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_call_729", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_21", align 8, !dbg !37
  %"$$folder_21_730" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_21", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_21_730", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_72", align 8, !dbg !37
  %"$$retval_72_731" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_72", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_72_731"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_69"(%"$$fundef_69_env_155"* %0, %TName_Nat* %1) !dbg !38 {
entry:
  %"$$fundef_69_env_f_653" = getelementptr inbounds %"$$fundef_69_env_155", %"$$fundef_69_env_155"* %0, i32 0, i32 0
  %"$f_envload_654" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_69_env_f_653", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_654", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_69_env_nat_fold_655" = getelementptr inbounds %"$$fundef_69_env_155", %"$$fundef_69_env_155"* %0, i32 0, i32 1
  %"$nat_fold_envload_656" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_69_env_nat_fold_655", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_656", { i8*, i8* }** %nat_fold, align 8
  %"$retval_70" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_658" = icmp ugt i64 1, %"$gasrem_657"
  br i1 %"$gascmp_658", label %"$out_of_gas_659", label %"$have_gas_660"

"$out_of_gas_659":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_660"

"$have_gas_660":                                  ; preds = %"$out_of_gas_659", %entry
  %"$consume_661" = sub i64 %"$gasrem_657", 1
  store i64 %"$consume_661", i64* @_gasrem, align 8
  %"$$fundef_71_envp_662_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_71_envp_662_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_662_load", i64 32)
  %"$$fundef_71_envp_662" = bitcast i8* %"$$fundef_71_envp_662_salloc" to %"$$fundef_71_env_154"*
  %"$$fundef_71_env_voidp_664" = bitcast %"$$fundef_71_env_154"* %"$$fundef_71_envp_662" to i8*
  %"$$fundef_71_cloval_665" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_71_env_154"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_71" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_71_env_voidp_664", 1
  %"$$fundef_71_env_f_666" = getelementptr inbounds %"$$fundef_71_env_154", %"$$fundef_71_env_154"* %"$$fundef_71_envp_662", i32 0, i32 0
  %"$f_667" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_667", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_71_env_f_666", align 8
  %"$$fundef_71_env_n_668" = getelementptr inbounds %"$$fundef_71_env_154", %"$$fundef_71_env_154"* %"$$fundef_71_envp_662", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_71_env_n_668", align 8
  %"$$fundef_71_env_nat_fold_669" = getelementptr inbounds %"$$fundef_71_env_154", %"$$fundef_71_env_154"* %"$$fundef_71_envp_662", i32 0, i32 2
  %"$nat_fold_670" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_670", { i8*, i8* }** %"$$fundef_71_env_nat_fold_669", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_71_cloval_665", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_70", align 8, !dbg !39
  %"$$retval_70_671" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_70", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_70_671"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_67"(%"$$fundef_67_env_156"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !40 {
entry:
  %"$$fundef_67_env_nat_fold_638" = getelementptr inbounds %"$$fundef_67_env_156", %"$$fundef_67_env_156"* %0, i32 0, i32 0
  %"$nat_fold_envload_639" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_nat_fold_638", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_639", { i8*, i8* }** %nat_fold, align 8
  %"$retval_68" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %entry
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  %"$$fundef_69_envp_645_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_69_envp_645_salloc" = call i8* @_salloc(i8* %"$$fundef_69_envp_645_load", i64 24)
  %"$$fundef_69_envp_645" = bitcast i8* %"$$fundef_69_envp_645_salloc" to %"$$fundef_69_env_155"*
  %"$$fundef_69_env_voidp_647" = bitcast %"$$fundef_69_env_155"* %"$$fundef_69_envp_645" to i8*
  %"$$fundef_69_cloval_648" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_69_env_155"*, %TName_Nat*)* @"$fundef_69" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_69_env_voidp_647", 1
  %"$$fundef_69_env_f_649" = getelementptr inbounds %"$$fundef_69_env_155", %"$$fundef_69_env_155"* %"$$fundef_69_envp_645", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_69_env_f_649", align 8
  %"$$fundef_69_env_nat_fold_650" = getelementptr inbounds %"$$fundef_69_env_155", %"$$fundef_69_env_155"* %"$$fundef_69_envp_645", i32 0, i32 1
  %"$nat_fold_651" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_651", { i8*, i8* }** %"$$fundef_69_env_nat_fold_650", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_69_cloval_648", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_68", align 8, !dbg !41
  %"$$retval_68_652" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_68", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_68_652"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_65"(%"$$fundef_65_env_157"* %0) !dbg !42 {
entry:
  %"$$fundef_65_env_nat_fold_624" = getelementptr inbounds %"$$fundef_65_env_157", %"$$fundef_65_env_157"* %0, i32 0, i32 0
  %"$nat_fold_envload_625" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_nat_fold_624", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_625", { i8*, i8* }** %nat_fold, align 8
  %"$retval_66" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_627" = icmp ugt i64 1, %"$gasrem_626"
  br i1 %"$gascmp_627", label %"$out_of_gas_628", label %"$have_gas_629"

"$out_of_gas_628":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_629"

"$have_gas_629":                                  ; preds = %"$out_of_gas_628", %entry
  %"$consume_630" = sub i64 %"$gasrem_626", 1
  store i64 %"$consume_630", i64* @_gasrem, align 8
  %"$$fundef_67_envp_631_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_67_envp_631_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_631_load", i64 8)
  %"$$fundef_67_envp_631" = bitcast i8* %"$$fundef_67_envp_631_salloc" to %"$$fundef_67_env_156"*
  %"$$fundef_67_env_voidp_633" = bitcast %"$$fundef_67_env_156"* %"$$fundef_67_envp_631" to i8*
  %"$$fundef_67_cloval_634" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_67_env_156"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_67" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_67_env_voidp_633", 1
  %"$$fundef_67_env_nat_fold_635" = getelementptr inbounds %"$$fundef_67_env_156", %"$$fundef_67_env_156"* %"$$fundef_67_envp_631", i32 0, i32 0
  %"$nat_fold_636" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_636", { i8*, i8* }** %"$$fundef_67_env_nat_fold_635", align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_67_cloval_634", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_66", align 8, !dbg !43
  %"$$retval_66_637" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_66", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_66_637"
}

define internal %TName_Nat* @"$fundef_63"(%"$$fundef_63_env_158"* %0, %TName_Nat* %1) !dbg !44 {
entry:
  %"$retval_64" = alloca %TName_Nat*, align 8
  %"$gasrem_614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_615" = icmp ugt i64 1, %"$gasrem_614"
  br i1 %"$gascmp_615", label %"$out_of_gas_616", label %"$have_gas_617"

"$out_of_gas_616":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_617"

"$have_gas_617":                                  ; preds = %"$out_of_gas_616", %entry
  %"$consume_618" = sub i64 %"$gasrem_614", 1
  store i64 %"$consume_618", i64* @_gasrem, align 8
  %"$adtval_619_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_619_salloc" = call i8* @_salloc(i8* %"$adtval_619_load", i64 9)
  %"$adtval_619" = bitcast i8* %"$adtval_619_salloc" to %CName_Succ*
  %"$adtgep_620" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_619", i32 0, i32 0
  store i8 1, i8* %"$adtgep_620", align 1
  %"$adtgep_621" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_619", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_621", align 8
  %"$adtptr_622" = bitcast %CName_Succ* %"$adtval_619" to %TName_Nat*
  store %TName_Nat* %"$adtptr_622", %TName_Nat** %"$retval_64", align 8, !dbg !45
  %"$$retval_64_623" = load %TName_Nat*, %TName_Nat** %"$retval_64", align 8
  ret %TName_Nat* %"$$retval_64_623"
}

define internal %Uint32 @"$fundef_60"(%"$$fundef_60_env_159"* %0, %TName_Nat* %1) !dbg !46 {
entry:
  %"$$fundef_60_env_one_int_601" = getelementptr inbounds %"$$fundef_60_env_159", %"$$fundef_60_env_159"* %0, i32 0, i32 0
  %"$one_int_envload_602" = load %Uint32, %Uint32* %"$$fundef_60_env_one_int_601", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_602", %Uint32* %one_int, align 4
  %"$$fundef_60_env_z_603" = getelementptr inbounds %"$$fundef_60_env_159", %"$$fundef_60_env_159"* %0, i32 0, i32 1
  %"$z_envload_604" = load %Uint32, %Uint32* %"$$fundef_60_env_z_603", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_604", %Uint32* %z, align 4
  %"$retval_61" = alloca %Uint32, align 8
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 4, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %entry
  %"$consume_609" = sub i64 %"$gasrem_605", 4
  store i64 %"$consume_609", i64* @_gasrem, align 8
  %"$z_610" = load %Uint32, %Uint32* %z, align 4
  %"$one_int_611" = load %Uint32, %Uint32* %one_int, align 4
  %"$add_call_612" = call %Uint32 @_add_Uint32(%Uint32 %"$z_610", %Uint32 %"$one_int_611"), !dbg !48
  store %Uint32 %"$add_call_612", %Uint32* %"$retval_61", align 4, !dbg !48
  %"$$retval_61_613" = load %Uint32, %Uint32* %"$retval_61", align 4
  ret %Uint32 %"$$retval_61_613"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_58"(%"$$fundef_58_env_160"* %0, %Uint32 %1) !dbg !49 {
entry:
  %"$$fundef_58_env_one_int_586" = getelementptr inbounds %"$$fundef_58_env_160", %"$$fundef_58_env_160"* %0, i32 0, i32 0
  %"$one_int_envload_587" = load %Uint32, %Uint32* %"$$fundef_58_env_one_int_586", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_587", %Uint32* %one_int, align 4
  %"$retval_59" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %entry
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem, align 8
  %"$$fundef_60_envp_593_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_60_envp_593_salloc" = call i8* @_salloc(i8* %"$$fundef_60_envp_593_load", i64 8)
  %"$$fundef_60_envp_593" = bitcast i8* %"$$fundef_60_envp_593_salloc" to %"$$fundef_60_env_159"*
  %"$$fundef_60_env_voidp_595" = bitcast %"$$fundef_60_env_159"* %"$$fundef_60_envp_593" to i8*
  %"$$fundef_60_cloval_596" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_60_env_159"*, %TName_Nat*)* @"$fundef_60" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_60_env_voidp_595", 1
  %"$$fundef_60_env_one_int_597" = getelementptr inbounds %"$$fundef_60_env_159", %"$$fundef_60_env_159"* %"$$fundef_60_envp_593", i32 0, i32 0
  %"$one_int_598" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_598", %Uint32* %"$$fundef_60_env_one_int_597", align 4
  %"$$fundef_60_env_z_599" = getelementptr inbounds %"$$fundef_60_env_159", %"$$fundef_60_env_159"* %"$$fundef_60_envp_593", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_60_env_z_599", align 4
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_60_cloval_596", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_59", align 8, !dbg !50
  %"$$retval_59_600" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_59", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_59_600"
}

define internal %Uint32 @"$fundef_56"(%"$$fundef_56_env_161"* %0, %TName_Nat* %1) !dbg !51 {
entry:
  %"$$fundef_56_env_$nat_fold_6_510" = getelementptr inbounds %"$$fundef_56_env_161", %"$$fundef_56_env_161"* %0, i32 0, i32 0
  %"$$nat_fold_6_envload_511" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_56_env_$nat_fold_6_510", align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$$nat_fold_6_envload_511", { i8*, i8* }** %"$nat_fold_6", align 8
  %"$retval_57" = alloca %Uint32, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %entry
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 1, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_515"
  %"$consume_521" = sub i64 %"$gasrem_517", 1
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %"$$nat_fold_6_522" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  %"$$nat_fold_6_523" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$$nat_fold_6_522", i32 0
  %"$$nat_fold_6_524" = bitcast { i8*, i8* }* %"$$nat_fold_6_523" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$$nat_fold_6_525" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$$nat_fold_6_524", align 8
  %"$$nat_fold_6_fptr_526" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_525", 0
  %"$$nat_fold_6_envptr_527" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_525", 1
  %"$$nat_fold_6_call_528" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_fptr_526"(i8* %"$$nat_fold_6_envptr_527"), !dbg !52
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_call_528", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8, !dbg !53
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_520"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %one_int = alloca %Uint32, align 8
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 1, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_532"
  %"$consume_538" = sub i64 %"$gasrem_534", 1
  store i64 %"$consume_538", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one_int, align 4, !dbg !54
  %"$gasrem_539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_540" = icmp ugt i64 1, %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_537"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_537"
  %"$consume_543" = sub i64 %"$gasrem_539", 1
  store i64 %"$consume_543", i64* @_gasrem, align 8
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %"$have_gas_542"
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %"$have_gas_542"
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  %"$$fundef_58_envp_549_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_58_envp_549_salloc" = call i8* @_salloc(i8* %"$$fundef_58_envp_549_load", i64 4)
  %"$$fundef_58_envp_549" = bitcast i8* %"$$fundef_58_envp_549_salloc" to %"$$fundef_58_env_160"*
  %"$$fundef_58_env_voidp_551" = bitcast %"$$fundef_58_env_160"* %"$$fundef_58_envp_549" to i8*
  %"$$fundef_58_cloval_552" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_58_env_160"*, %Uint32)* @"$fundef_58" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_58_env_voidp_551", 1
  %"$$fundef_58_env_one_int_553" = getelementptr inbounds %"$$fundef_58_env_160", %"$$fundef_58_env_160"* %"$$fundef_58_envp_549", i32 0, i32 0
  %"$one_int_554" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_554", %Uint32* %"$$fundef_58_env_one_int_553", align 4
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_58_cloval_552", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8, !dbg !55
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$have_gas_547"
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  %zero_int = alloca %Uint32, align 8
  %"$gasrem_560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_561" = icmp ugt i64 1, %"$gasrem_560"
  br i1 %"$gascmp_561", label %"$out_of_gas_562", label %"$have_gas_563"

"$out_of_gas_562":                                ; preds = %"$have_gas_558"
  call void @_out_of_gas()
  br label %"$have_gas_563"

"$have_gas_563":                                  ; preds = %"$out_of_gas_562", %"$have_gas_558"
  %"$consume_564" = sub i64 %"$gasrem_560", 1
  store i64 %"$consume_564", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero_int, align 4, !dbg !56
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 1, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %"$have_gas_563"
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %"$have_gas_563"
  %"$consume_569" = sub i64 %"$gasrem_565", 1
  store i64 %"$consume_569", i64* @_gasrem, align 8
  %"$fold_15" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$fold_570" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$fold_fptr_571" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_570", 0
  %"$fold_envptr_572" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_570", 1
  %"$f_573" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$fold_call_574" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_571"(i8* %"$fold_envptr_572", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_573"), !dbg !57
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_574", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_15", align 8, !dbg !57
  %"$fold_16" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fold_15_575" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_15", align 8
  %"$$fold_15_fptr_576" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_15_575", 0
  %"$$fold_15_envptr_577" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_15_575", 1
  %"$zero_int_578" = load %Uint32, %Uint32* %zero_int, align 4
  %"$$fold_15_call_579" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_15_fptr_576"(i8* %"$$fold_15_envptr_577", %Uint32 %"$zero_int_578"), !dbg !57
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_15_call_579", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_16", align 8, !dbg !57
  %"$fold_17" = alloca %Uint32, align 8
  %"$$fold_16_580" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_16", align 8
  %"$$fold_16_fptr_581" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_16_580", 0
  %"$$fold_16_envptr_582" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_16_580", 1
  %"$$fold_16_call_583" = call %Uint32 %"$$fold_16_fptr_581"(i8* %"$$fold_16_envptr_582", %TName_Nat* %1), !dbg !57
  store %Uint32 %"$$fold_16_call_583", %Uint32* %"$fold_17", align 4, !dbg !57
  %"$$fold_17_584" = load %Uint32, %Uint32* %"$fold_17", align 4
  store %Uint32 %"$$fold_17_584", %Uint32* %"$retval_57", align 4, !dbg !57
  %"$$retval_57_585" = load %Uint32, %Uint32* %"$retval_57", align 4
  ret %Uint32 %"$$retval_57_585"
}

define internal %Uint32 @"$fundef_54"(%"$$fundef_54_env_162"* %0, %TName_Nat* %1) !dbg !58 {
entry:
  %"$$fundef_54_env_f0_445" = getelementptr inbounds %"$$fundef_54_env_162", %"$$fundef_54_env_162"* %0, i32 0, i32 0
  %"$f0_envload_446" = load %Uint32, %Uint32* %"$$fundef_54_env_f0_445", align 4
  %f0 = alloca %Uint32, align 8
  store %Uint32 %"$f0_envload_446", %Uint32* %f0, align 4
  %"$$fundef_54_env_fn_447" = getelementptr inbounds %"$$fundef_54_env_162", %"$$fundef_54_env_162"* %0, i32 0, i32 1
  %"$fn_envload_448" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_fn_447", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_448", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_54_env_g_449" = getelementptr inbounds %"$$fundef_54_env_162", %"$$fundef_54_env_162"* %0, i32 0, i32 2
  %"$g_envload_450" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_g_449", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_450", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_55" = alloca %Uint32, align 8
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 2, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %entry
  %"$consume_455" = sub i64 %"$gasrem_451", 2
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$n_tag_457" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_458" = load i8, i8* %"$n_tag_457", align 1
  switch i8 %"$n_tag_458", label %"$empty_default_459" [
    i8 1, label %"$Succ_460"
    i8 0, label %"$Zero_501"
  ], !dbg !60

"$Succ_460":                                      ; preds = %"$have_gas_454"
  %"$n_461" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_462" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_461", i32 0, i32 1
  %"$n1_load_463" = load %TName_Nat*, %TName_Nat** %"$n1_gep_462", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_463", %TName_Nat** %n1, align 8
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$Succ_460"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$Succ_460"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_467"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$fn_11" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_474" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$fn_fptr_475" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_474", 0
  %"$fn_envptr_476" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_474", 1
  %"$f0_477" = load %Uint32, %Uint32* %f0, align 4
  %"$fn_call_478" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_475"(i8* %"$fn_envptr_476", %Uint32 %"$f0_477"), !dbg !61
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_478", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_11", align 8, !dbg !61
  %"$fn_12" = alloca %Uint32, align 8
  %"$$fn_11_479" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_11", align 8
  %"$$fn_11_fptr_480" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_11_479", 0
  %"$$fn_11_envptr_481" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_11_479", 1
  %"$n1_482" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_11_call_483" = call %Uint32 %"$$fn_11_fptr_480"(i8* %"$$fn_11_envptr_481", %TName_Nat* %"$n1_482"), !dbg !61
  store %Uint32 %"$$fn_11_call_483", %Uint32* %"$fn_12", align 4, !dbg !61
  %"$$fn_12_484" = load %Uint32, %Uint32* %"$fn_12", align 4
  store %Uint32 %"$$fn_12_484", %Uint32* %res, align 4, !dbg !61
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_472"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %"$g_13" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_490" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_491" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_490", 0
  %"$g_envptr_492" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_490", 1
  %"$res_493" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_494" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_491"(i8* %"$g_envptr_492", %Uint32 %"$res_493"), !dbg !64
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_494", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_13", align 8, !dbg !64
  %"$g_14" = alloca %Uint32, align 8
  %"$$g_13_495" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_13", align 8
  %"$$g_13_fptr_496" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_13_495", 0
  %"$$g_13_envptr_497" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_13_495", 1
  %"$n1_498" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_13_call_499" = call %Uint32 %"$$g_13_fptr_496"(i8* %"$$g_13_envptr_497", %TName_Nat* %"$n1_498"), !dbg !64
  store %Uint32 %"$$g_13_call_499", %Uint32* %"$g_14", align 4, !dbg !64
  %"$$g_14_500" = load %Uint32, %Uint32* %"$g_14", align 4
  store %Uint32 %"$$g_14_500", %Uint32* %"$retval_55", align 4, !dbg !64
  br label %"$matchsucc_456"

"$Zero_501":                                      ; preds = %"$have_gas_454"
  %"$n_502" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$Zero_501"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$Zero_501"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %"$f0_508" = load %Uint32, %Uint32* %f0, align 4
  store %Uint32 %"$f0_508", %Uint32* %"$retval_55", align 4, !dbg !65
  br label %"$matchsucc_456"

"$empty_default_459":                             ; preds = %"$have_gas_454"
  br label %"$matchsucc_456"

"$matchsucc_456":                                 ; preds = %"$have_gas_506", %"$have_gas_488", %"$empty_default_459"
  %"$$retval_55_509" = load %Uint32, %Uint32* %"$retval_55", align 4
  ret %Uint32 %"$$retval_55_509"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_52"(%"$$fundef_52_env_163"* %0, %Uint32 %1) !dbg !67 {
entry:
  %"$$fundef_52_env_fn_421" = getelementptr inbounds %"$$fundef_52_env_163", %"$$fundef_52_env_163"* %0, i32 0, i32 0
  %"$fn_envload_422" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_fn_421", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_422", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_52_env_g_423" = getelementptr inbounds %"$$fundef_52_env_163", %"$$fundef_52_env_163"* %0, i32 0, i32 1
  %"$g_envload_424" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_g_423", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_424", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_53" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %entry
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %"$$fundef_54_envp_435_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_54_envp_435_salloc" = call i8* @_salloc(i8* %"$$fundef_54_envp_435_load", i64 40)
  %"$$fundef_54_envp_435" = bitcast i8* %"$$fundef_54_envp_435_salloc" to %"$$fundef_54_env_162"*
  %"$$fundef_54_env_voidp_437" = bitcast %"$$fundef_54_env_162"* %"$$fundef_54_envp_435" to i8*
  %"$$fundef_54_cloval_438" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_54_env_162"*, %TName_Nat*)* @"$fundef_54" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_54_env_voidp_437", 1
  %"$$fundef_54_env_f0_439" = getelementptr inbounds %"$$fundef_54_env_162", %"$$fundef_54_env_162"* %"$$fundef_54_envp_435", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_54_env_f0_439", align 4
  %"$$fundef_54_env_fn_440" = getelementptr inbounds %"$$fundef_54_env_162", %"$$fundef_54_env_162"* %"$$fundef_54_envp_435", i32 0, i32 1
  %"$fn_441" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_441", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_fn_440", align 8
  %"$$fundef_54_env_g_442" = getelementptr inbounds %"$$fundef_54_env_162", %"$$fundef_54_env_162"* %"$$fundef_54_envp_435", i32 0, i32 2
  %"$g_443" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_443", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_g_442", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_54_cloval_438", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_53", align 8, !dbg !68
  %"$$retval_53_444" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_53", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_53_444"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_50"(%"$$fundef_50_env_164"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !69 {
entry:
  %"$retval_51" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %entry
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %"$$fundef_52_envp_412_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_52_envp_412_salloc" = call i8* @_salloc(i8* %"$$fundef_52_envp_412_load", i64 32)
  %"$$fundef_52_envp_412" = bitcast i8* %"$$fundef_52_envp_412_salloc" to %"$$fundef_52_env_163"*
  %"$$fundef_52_env_voidp_414" = bitcast %"$$fundef_52_env_163"* %"$$fundef_52_envp_412" to i8*
  %"$$fundef_52_cloval_415" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_52_env_163"*, %Uint32)* @"$fundef_52" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_52_env_voidp_414", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_52_cloval_415", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !70
  %"$$fundef_52_env_fn_416" = getelementptr inbounds %"$$fundef_52_env_163", %"$$fundef_52_env_163"* %"$$fundef_52_envp_412", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_fn_416", align 8
  %"$$fundef_52_env_g_417" = getelementptr inbounds %"$$fundef_52_env_163", %"$$fundef_52_env_163"* %"$$fundef_52_envp_412", i32 0, i32 1
  %"$g_418" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_418", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_g_417", align 8
  %"$g_419" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_419", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_51", align 8, !dbg !70
  %"$$retval_51_420" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_51", align 8
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_51_420"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_48"(%"$$fundef_48_env_165"* %0) !dbg !71 {
entry:
  %"$retval_49" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %entry
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_50_env_164"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_50" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_49", align 8, !dbg !72
  %"$$retval_49_406" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_49", align 8
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_49_406"
}

define internal %TName_Nat* @"$fundef_46"(%"$$fundef_46_env_166"* %0, %TName_Nat* %1) !dbg !73 {
entry:
  %"$$fundef_46_env_f0_333" = getelementptr inbounds %"$$fundef_46_env_166", %"$$fundef_46_env_166"* %0, i32 0, i32 0
  %"$f0_envload_334" = load %TName_Nat*, %TName_Nat** %"$$fundef_46_env_f0_333", align 8
  %f0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$f0_envload_334", %TName_Nat** %f0, align 8
  %"$$fundef_46_env_fn_335" = getelementptr inbounds %"$$fundef_46_env_166", %"$$fundef_46_env_166"* %0, i32 0, i32 1
  %"$fn_envload_336" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_fn_335", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_336", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_46_env_g_337" = getelementptr inbounds %"$$fundef_46_env_166", %"$$fundef_46_env_166"* %0, i32 0, i32 2
  %"$g_envload_338" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_g_337", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_338", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_47" = alloca %TName_Nat*, align 8
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 2, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %entry
  %"$consume_343" = sub i64 %"$gasrem_339", 2
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %"$n_tag_345" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_346" = load i8, i8* %"$n_tag_345", align 1
  switch i8 %"$n_tag_346", label %"$empty_default_347" [
    i8 1, label %"$Succ_348"
    i8 0, label %"$Zero_389"
  ], !dbg !74

"$Succ_348":                                      ; preds = %"$have_gas_342"
  %"$n_349" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_350" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_349", i32 0, i32 1
  %"$n1_load_351" = load %TName_Nat*, %TName_Nat** %"$n1_gep_350", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_351", %TName_Nat** %n1, align 8
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$Succ_348"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$Succ_348"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %res = alloca %TName_Nat*, align 8
  %"$gasrem_357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_358" = icmp ugt i64 1, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %"$have_gas_355"
  %"$consume_361" = sub i64 %"$gasrem_357", 1
  store i64 %"$consume_361", i64* @_gasrem, align 8
  %"$fn_7" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_362" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$fn_fptr_363" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_362", 0
  %"$fn_envptr_364" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_362", 1
  %"$f0_365" = load %TName_Nat*, %TName_Nat** %f0, align 8
  %"$fn_call_366" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_363"(i8* %"$fn_envptr_364", %TName_Nat* %"$f0_365"), !dbg !75
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_366", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8, !dbg !75
  %"$fn_8" = alloca %TName_Nat*, align 8
  %"$$fn_7_367" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8
  %"$$fn_7_fptr_368" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_367", 0
  %"$$fn_7_envptr_369" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_367", 1
  %"$n1_370" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_7_call_371" = call %TName_Nat* %"$$fn_7_fptr_368"(i8* %"$$fn_7_envptr_369", %TName_Nat* %"$n1_370"), !dbg !75
  store %TName_Nat* %"$$fn_7_call_371", %TName_Nat** %"$fn_8", align 8, !dbg !75
  %"$$fn_8_372" = load %TName_Nat*, %TName_Nat** %"$fn_8", align 8
  store %TName_Nat* %"$$fn_8_372", %TName_Nat** %res, align 8, !dbg !75
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_360"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_360"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$g_9" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_378" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$g_fptr_379" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_378", 0
  %"$g_envptr_380" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_378", 1
  %"$res_381" = load %TName_Nat*, %TName_Nat** %res, align 8
  %"$g_call_382" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_379"(i8* %"$g_envptr_380", %TName_Nat* %"$res_381"), !dbg !78
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_382", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8, !dbg !78
  %"$g_10" = alloca %TName_Nat*, align 8
  %"$$g_9_383" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8
  %"$$g_9_fptr_384" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_383", 0
  %"$$g_9_envptr_385" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_383", 1
  %"$n1_386" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_9_call_387" = call %TName_Nat* %"$$g_9_fptr_384"(i8* %"$$g_9_envptr_385", %TName_Nat* %"$n1_386"), !dbg !78
  store %TName_Nat* %"$$g_9_call_387", %TName_Nat** %"$g_10", align 8, !dbg !78
  %"$$g_10_388" = load %TName_Nat*, %TName_Nat** %"$g_10", align 8
  store %TName_Nat* %"$$g_10_388", %TName_Nat** %"$retval_47", align 8, !dbg !78
  br label %"$matchsucc_344"

"$Zero_389":                                      ; preds = %"$have_gas_342"
  %"$n_390" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 1, %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$Zero_389"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$Zero_389"
  %"$consume_395" = sub i64 %"$gasrem_391", 1
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %"$f0_396" = load %TName_Nat*, %TName_Nat** %f0, align 8
  store %TName_Nat* %"$f0_396", %TName_Nat** %"$retval_47", align 8, !dbg !79
  br label %"$matchsucc_344"

"$empty_default_347":                             ; preds = %"$have_gas_342"
  br label %"$matchsucc_344"

"$matchsucc_344":                                 ; preds = %"$have_gas_394", %"$have_gas_376", %"$empty_default_347"
  %"$$retval_47_397" = load %TName_Nat*, %TName_Nat** %"$retval_47", align 8
  ret %TName_Nat* %"$$retval_47_397"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_44"(%"$$fundef_44_env_167"* %0, %TName_Nat* %1) !dbg !81 {
entry:
  %"$$fundef_44_env_fn_309" = getelementptr inbounds %"$$fundef_44_env_167", %"$$fundef_44_env_167"* %0, i32 0, i32 0
  %"$fn_envload_310" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_fn_309", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_310", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_44_env_g_311" = getelementptr inbounds %"$$fundef_44_env_167", %"$$fundef_44_env_167"* %0, i32 0, i32 1
  %"$g_envload_312" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_g_311", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_312", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_45" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %entry
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_316"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$$fundef_46_envp_323_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_46_envp_323_salloc" = call i8* @_salloc(i8* %"$$fundef_46_envp_323_load", i64 40)
  %"$$fundef_46_envp_323" = bitcast i8* %"$$fundef_46_envp_323_salloc" to %"$$fundef_46_env_166"*
  %"$$fundef_46_env_voidp_325" = bitcast %"$$fundef_46_env_166"* %"$$fundef_46_envp_323" to i8*
  %"$$fundef_46_cloval_326" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_46_env_166"*, %TName_Nat*)* @"$fundef_46" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_46_env_voidp_325", 1
  %"$$fundef_46_env_f0_327" = getelementptr inbounds %"$$fundef_46_env_166", %"$$fundef_46_env_166"* %"$$fundef_46_envp_323", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_46_env_f0_327", align 8
  %"$$fundef_46_env_fn_328" = getelementptr inbounds %"$$fundef_46_env_166", %"$$fundef_46_env_166"* %"$$fundef_46_envp_323", i32 0, i32 1
  %"$fn_329" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_329", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_fn_328", align 8
  %"$$fundef_46_env_g_330" = getelementptr inbounds %"$$fundef_46_env_166", %"$$fundef_46_env_166"* %"$$fundef_46_envp_323", i32 0, i32 2
  %"$g_331" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_331", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_g_330", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_46_cloval_326", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_45", align 8, !dbg !82
  %"$$retval_45_332" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_45", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_45_332"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_42"(%"$$fundef_42_env_168"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) !dbg !83 {
entry:
  %"$retval_43" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %entry
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %"$$fundef_44_envp_300_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_44_envp_300_salloc" = call i8* @_salloc(i8* %"$$fundef_44_envp_300_load", i64 32)
  %"$$fundef_44_envp_300" = bitcast i8* %"$$fundef_44_envp_300_salloc" to %"$$fundef_44_env_167"*
  %"$$fundef_44_env_voidp_302" = bitcast %"$$fundef_44_env_167"* %"$$fundef_44_envp_300" to i8*
  %"$$fundef_44_cloval_303" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_44_env_167"*, %TName_Nat*)* @"$fundef_44" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_44_env_voidp_302", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_44_cloval_303", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8, !dbg !84
  %"$$fundef_44_env_fn_304" = getelementptr inbounds %"$$fundef_44_env_167", %"$$fundef_44_env_167"* %"$$fundef_44_envp_300", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_fn_304", align 8
  %"$$fundef_44_env_g_305" = getelementptr inbounds %"$$fundef_44_env_167", %"$$fundef_44_env_167"* %"$$fundef_44_envp_300", i32 0, i32 1
  %"$g_306" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_306", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_g_305", align 8
  %"$g_307" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_307", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_43", align 8, !dbg !84
  %"$$retval_43_308" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_43", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_43_308"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_40"(%"$$fundef_40_env_169"* %0) !dbg !85 {
entry:
  %"$retval_41" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %entry
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_42_env_168"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_42" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_41", align 8, !dbg !86
  %"$$retval_41_294" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_41", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_41_294"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_170"* %0, %TName_Nat* %1) !dbg !87 {
entry:
  %"$$fundef_38_env_f0_221" = getelementptr inbounds %"$$fundef_38_env_170", %"$$fundef_38_env_170"* %0, i32 0, i32 0
  %"$f0_envload_222" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_38_env_f0_221", align 8
  %f0 = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_envload_222", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$$fundef_38_env_fn_223" = getelementptr inbounds %"$$fundef_38_env_170", %"$$fundef_38_env_170"* %0, i32 0, i32 1
  %"$fn_envload_224" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_38_env_fn_223", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_224", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_38_env_g_225" = getelementptr inbounds %"$$fundef_38_env_170", %"$$fundef_38_env_170"* %0, i32 0, i32 2
  %"$g_envload_226" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_38_env_g_225", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_226", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_39" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 2, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %entry
  %"$consume_231" = sub i64 %"$gasrem_227", 2
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %"$n_tag_233" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_234" = load i8, i8* %"$n_tag_233", align 1
  switch i8 %"$n_tag_234", label %"$empty_default_235" [
    i8 1, label %"$Succ_236"
    i8 0, label %"$Zero_277"
  ], !dbg !88

"$Succ_236":                                      ; preds = %"$have_gas_230"
  %"$n_237" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_238" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_237", i32 0, i32 1
  %"$n1_load_239" = load %TName_Nat*, %TName_Nat** %"$n1_gep_238", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_239", %TName_Nat** %n1, align 8
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$Succ_236"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$Succ_236"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %res = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_243"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %"$fn_7" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_250" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$fn_fptr_251" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_250", 0
  %"$fn_envptr_252" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_250", 1
  %"$f0_253" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$fn_call_254" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_251"(i8* %"$fn_envptr_252", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_253"), !dbg !89
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_254", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8, !dbg !89
  %"$fn_8" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fn_7_255" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8
  %"$$fn_7_fptr_256" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_7_255", 0
  %"$$fn_7_envptr_257" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_7_255", 1
  %"$n1_258" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_7_call_259" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_fptr_256"(i8* %"$$fn_7_envptr_257", %TName_Nat* %"$n1_258"), !dbg !89
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_call_259", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_8", align 8, !dbg !89
  %"$$fn_8_260" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_8", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_8_260", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8, !dbg !89
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_248"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$g_9" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_266" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$g_fptr_267" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_266", 0
  %"$g_envptr_268" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_266", 1
  %"$res_269" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8
  %"$g_call_270" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_267"(i8* %"$g_envptr_268", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_269"), !dbg !92
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_270", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8, !dbg !92
  %"$g_10" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$g_9_271" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8
  %"$$g_9_fptr_272" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_9_271", 0
  %"$$g_9_envptr_273" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_9_271", 1
  %"$n1_274" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_9_call_275" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_fptr_272"(i8* %"$$g_9_envptr_273", %TName_Nat* %"$n1_274"), !dbg !92
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_call_275", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_10", align 8, !dbg !92
  %"$$g_10_276" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_10", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_10_276", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_39", align 8, !dbg !92
  br label %"$matchsucc_232"

"$Zero_277":                                      ; preds = %"$have_gas_230"
  %"$n_278" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$Zero_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$Zero_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$f0_284" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_284", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_39", align 8, !dbg !93
  br label %"$matchsucc_232"

"$empty_default_235":                             ; preds = %"$have_gas_230"
  br label %"$matchsucc_232"

"$matchsucc_232":                                 ; preds = %"$have_gas_282", %"$have_gas_264", %"$empty_default_235"
  %"$$retval_39_285" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_39", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_39_285"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_171"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !95 {
entry:
  %"$$fundef_36_env_fn_197" = getelementptr inbounds %"$$fundef_36_env_171", %"$$fundef_36_env_171"* %0, i32 0, i32 0
  %"$fn_envload_198" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_36_env_fn_197", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_198", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_36_env_g_199" = getelementptr inbounds %"$$fundef_36_env_171", %"$$fundef_36_env_171"* %0, i32 0, i32 1
  %"$g_envload_200" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_36_env_g_199", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_200", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_37" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 1, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %entry
  %"$consume_205" = sub i64 %"$gasrem_201", 1
  store i64 %"$consume_205", i64* @_gasrem, align 8
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_204"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %"$$fundef_38_envp_211_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_211_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_211_load", i64 48)
  %"$$fundef_38_envp_211" = bitcast i8* %"$$fundef_38_envp_211_salloc" to %"$$fundef_38_env_170"*
  %"$$fundef_38_env_voidp_213" = bitcast %"$$fundef_38_env_170"* %"$$fundef_38_envp_211" to i8*
  %"$$fundef_38_cloval_214" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_38_env_170"*, %TName_Nat*)* @"$fundef_38" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_213", 1
  %"$$fundef_38_env_f0_215" = getelementptr inbounds %"$$fundef_38_env_170", %"$$fundef_38_env_170"* %"$$fundef_38_envp_211", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_38_env_f0_215", align 8
  %"$$fundef_38_env_fn_216" = getelementptr inbounds %"$$fundef_38_env_170", %"$$fundef_38_env_170"* %"$$fundef_38_envp_211", i32 0, i32 1
  %"$fn_217" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_217", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_38_env_fn_216", align 8
  %"$$fundef_38_env_g_218" = getelementptr inbounds %"$$fundef_38_env_170", %"$$fundef_38_env_170"* %"$$fundef_38_envp_211", i32 0, i32 2
  %"$g_219" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_219", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_38_env_g_218", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_38_cloval_214", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_37", align 8, !dbg !96
  %"$$retval_37_220" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_37", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_37_220"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_34"(%"$$fundef_34_env_172"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !97 {
entry:
  %"$retval_35" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %entry
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  %"$$fundef_36_envp_188_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_36_envp_188_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_188_load", i64 32)
  %"$$fundef_36_envp_188" = bitcast i8* %"$$fundef_36_envp_188_salloc" to %"$$fundef_36_env_171"*
  %"$$fundef_36_env_voidp_190" = bitcast %"$$fundef_36_env_171"* %"$$fundef_36_envp_188" to i8*
  %"$$fundef_36_cloval_191" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_36_env_171"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_36" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_36_env_voidp_190", 1
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_36_cloval_191", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8, !dbg !98
  %"$$fundef_36_env_fn_192" = getelementptr inbounds %"$$fundef_36_env_171", %"$$fundef_36_env_171"* %"$$fundef_36_envp_188", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_36_env_fn_192", align 8
  %"$$fundef_36_env_g_193" = getelementptr inbounds %"$$fundef_36_env_171", %"$$fundef_36_env_171"* %"$$fundef_36_envp_188", i32 0, i32 1
  %"$g_194" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_194", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_36_env_g_193", align 8
  %"$g_195" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_195", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_35", align 8, !dbg !98
  %"$$retval_35_196" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_35", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_35_196"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_32"(%"$$fundef_32_env_173"* %0) !dbg !99 {
entry:
  %"$retval_33" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %entry
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_34_env_172"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_34" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_33", align 8, !dbg !100
  %"$$retval_33_182" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_33", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_33_182"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !101 {
entry:
  %"$gasrem_990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_991" = icmp ugt i64 4, %"$gasrem_990"
  br i1 %"$gascmp_991", label %"$out_of_gas_992", label %"$have_gas_993"

"$out_of_gas_992":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_993"

"$have_gas_993":                                  ; preds = %"$out_of_gas_992", %entry
  %"$consume_994" = sub i64 %"$gasrem_990", 4
  store i64 %"$consume_994", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !103
  %"$gasrem_995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_996" = icmp ugt i64 1, %"$gasrem_995"
  br i1 %"$gascmp_996", label %"$out_of_gas_997", label %"$have_gas_998"

"$out_of_gas_997":                                ; preds = %"$have_gas_993"
  call void @_out_of_gas()
  br label %"$have_gas_998"

"$have_gas_998":                                  ; preds = %"$out_of_gas_997", %"$have_gas_993"
  %"$consume_999" = sub i64 %"$gasrem_995", 1
  store i64 %"$consume_999", i64* @_gasrem, align 8
  %"$dyndisp_table_1006_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1006_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1006_salloc_load", i64 48)
  %"$dyndisp_table_1006_salloc" = bitcast i8* %"$dyndisp_table_1006_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1006" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1006_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1007" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1006", i32 1
  %"$dyndisp_pcast_1008" = bitcast { i8*, i8* }* %"$dyndisp_gep_1007" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_32_env_173"*)* @"$fundef_32" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1008", align 8
  %"$dyndisp_gep_1009" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1006", i32 2
  %"$dyndisp_pcast_1010" = bitcast { i8*, i8* }* %"$dyndisp_gep_1009" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_40_env_169"*)* @"$fundef_40" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1010", align 8
  store { i8*, i8* }* %"$dyndisp_table_1006", { i8*, i8* }** @nat_fold, align 8, !dbg !104
  %"$gasrem_1011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1012" = icmp ugt i64 8, %"$gasrem_1011"
  br i1 %"$gascmp_1012", label %"$out_of_gas_1013", label %"$have_gas_1014"

"$out_of_gas_1013":                               ; preds = %"$have_gas_998"
  call void @_out_of_gas()
  br label %"$have_gas_1014"

"$have_gas_1014":                                 ; preds = %"$out_of_gas_1013", %"$have_gas_998"
  %"$consume_1015" = sub i64 %"$gasrem_1011", 8
  store i64 %"$consume_1015", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !103
  %"$gasrem_1016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1017" = icmp ugt i64 196, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %"$have_gas_1014"
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %"$have_gas_1014"
  %"$consume_1020" = sub i64 %"$gasrem_1016", 196
  store i64 %"$consume_1020", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !103
  %"$gasrem_1021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1022" = icmp ugt i64 20, %"$gasrem_1021"
  br i1 %"$gascmp_1022", label %"$out_of_gas_1023", label %"$have_gas_1024"

"$out_of_gas_1023":                               ; preds = %"$have_gas_1019"
  call void @_out_of_gas()
  br label %"$have_gas_1024"

"$have_gas_1024":                                 ; preds = %"$out_of_gas_1023", %"$have_gas_1019"
  %"$consume_1025" = sub i64 %"$gasrem_1021", 20
  store i64 %"$consume_1025", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !103
  %"$gasrem_1026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1027" = icmp ugt i64 11, %"$gasrem_1026"
  br i1 %"$gascmp_1027", label %"$out_of_gas_1028", label %"$have_gas_1029"

"$out_of_gas_1028":                               ; preds = %"$have_gas_1024"
  call void @_out_of_gas()
  br label %"$have_gas_1029"

"$have_gas_1029":                                 ; preds = %"$out_of_gas_1028", %"$have_gas_1024"
  %"$consume_1030" = sub i64 %"$gasrem_1026", 11
  store i64 %"$consume_1030", i64* @_gasrem, align 8
  store %Int32 { i32 11 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !103
  %"$gasrem_1031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1032" = icmp ugt i64 1, %"$gasrem_1031"
  br i1 %"$gascmp_1032", label %"$out_of_gas_1033", label %"$have_gas_1034"

"$out_of_gas_1033":                               ; preds = %"$have_gas_1029"
  call void @_out_of_gas()
  br label %"$have_gas_1034"

"$have_gas_1034":                                 ; preds = %"$out_of_gas_1033", %"$have_gas_1029"
  %"$consume_1035" = sub i64 %"$gasrem_1031", 1
  store i64 %"$consume_1035", i64* @_gasrem, align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_1039_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1039_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1039_salloc_load", i64 48)
  %"$dyndisp_table_1039_salloc" = bitcast i8* %"$dyndisp_table_1039_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1039" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1039_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1040" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1039", i32 0
  %"$dyndisp_pcast_1041" = bitcast { i8*, i8* }* %"$dyndisp_gep_1040" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_48_env_165"*)* @"$fundef_48" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1041", align 8
  store { i8*, i8* }* %"$dyndisp_table_1039", { i8*, i8* }** %"$nat_fold_6", align 8, !dbg !104
  %"$$fundef_56_envp_1042_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_56_envp_1042_salloc" = call i8* @_salloc(i8* %"$$fundef_56_envp_1042_load", i64 8)
  %"$$fundef_56_envp_1042" = bitcast i8* %"$$fundef_56_envp_1042_salloc" to %"$$fundef_56_env_161"*
  %"$$fundef_56_env_voidp_1044" = bitcast %"$$fundef_56_env_161"* %"$$fundef_56_envp_1042" to i8*
  %"$$fundef_56_cloval_1045" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_56_env_161"*, %TName_Nat*)* @"$fundef_56" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_56_env_voidp_1044", 1
  %"$$fundef_56_env_$nat_fold_6_1046" = getelementptr inbounds %"$$fundef_56_env_161", %"$$fundef_56_env_161"* %"$$fundef_56_envp_1042", i32 0, i32 0
  %"$$nat_fold_6_1047" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  store { i8*, i8* }* %"$$nat_fold_6_1047", { i8*, i8* }** %"$$fundef_56_env_$nat_fold_6_1046", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_56_cloval_1045", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8, !dbg !105
  %"$gasrem_1048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1049" = icmp ugt i64 2, %"$gasrem_1048"
  br i1 %"$gascmp_1049", label %"$out_of_gas_1050", label %"$have_gas_1051"

"$out_of_gas_1050":                               ; preds = %"$have_gas_1034"
  call void @_out_of_gas()
  br label %"$have_gas_1051"

"$have_gas_1051":                                 ; preds = %"$out_of_gas_1050", %"$have_gas_1034"
  %"$consume_1052" = sub i64 %"$gasrem_1048", 2
  store i64 %"$consume_1052", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !103
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !106 {
entry:
  %"$expr_62" = alloca %Uint32, align 8
  %"$gasrem_1053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1054" = icmp ugt i64 1, %"$gasrem_1053"
  br i1 %"$gascmp_1054", label %"$out_of_gas_1055", label %"$have_gas_1056"

"$out_of_gas_1055":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1056"

"$have_gas_1056":                                 ; preds = %"$out_of_gas_1055", %entry
  %"$consume_1057" = sub i64 %"$gasrem_1053", 1
  store i64 %"$consume_1057", i64* @_gasrem, align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1058" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1059" = icmp ugt i64 1, %"$gasrem_1058"
  br i1 %"$gascmp_1059", label %"$out_of_gas_1060", label %"$have_gas_1061"

"$out_of_gas_1060":                               ; preds = %"$have_gas_1056"
  call void @_out_of_gas()
  br label %"$have_gas_1061"

"$have_gas_1061":                                 ; preds = %"$out_of_gas_1060", %"$have_gas_1056"
  %"$consume_1062" = sub i64 %"$gasrem_1058", 1
  store i64 %"$consume_1062", i64* @_gasrem, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_63_env_158"*, %TName_Nat*)* @"$fundef_63" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8, !dbg !107
  %"$gasrem_1066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1067" = icmp ugt i64 1, %"$gasrem_1066"
  br i1 %"$gascmp_1067", label %"$out_of_gas_1068", label %"$have_gas_1069"

"$out_of_gas_1068":                               ; preds = %"$have_gas_1061"
  call void @_out_of_gas()
  br label %"$have_gas_1069"

"$have_gas_1069":                                 ; preds = %"$out_of_gas_1068", %"$have_gas_1061"
  %"$consume_1070" = sub i64 %"$gasrem_1066", 1
  store i64 %"$consume_1070", i64* @_gasrem, align 8
  %nat_iter = alloca { i8*, i8* }*, align 8
  %"$gasrem_1071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1072" = icmp ugt i64 1, %"$gasrem_1071"
  br i1 %"$gascmp_1072", label %"$out_of_gas_1073", label %"$have_gas_1074"

"$out_of_gas_1073":                               ; preds = %"$have_gas_1069"
  call void @_out_of_gas()
  br label %"$have_gas_1074"

"$have_gas_1074":                                 ; preds = %"$out_of_gas_1073", %"$have_gas_1069"
  %"$consume_1075" = sub i64 %"$gasrem_1071", 1
  store i64 %"$consume_1075", i64* @_gasrem, align 8
  %"$$fundef_65_envp_1076_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_65_envp_1076_salloc" = call i8* @_salloc(i8* %"$$fundef_65_envp_1076_load", i64 8)
  %"$$fundef_65_envp_1076" = bitcast i8* %"$$fundef_65_envp_1076_salloc" to %"$$fundef_65_env_157"*
  %"$$fundef_65_env_voidp_1078" = bitcast %"$$fundef_65_env_157"* %"$$fundef_65_envp_1076" to i8*
  %"$$fundef_65_cloval_1079" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_65_env_157"*)* @"$fundef_65" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_65_env_voidp_1078", 1
  %"$$fundef_65_env_nat_fold_1080" = getelementptr inbounds %"$$fundef_65_env_157", %"$$fundef_65_env_157"* %"$$fundef_65_envp_1076", i32 0, i32 0
  %"$nat_fold_1081" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1081", { i8*, i8* }** %"$$fundef_65_env_nat_fold_1080", align 8
  %"$$fundef_77_env_voidp_1083" = bitcast %"$$fundef_65_env_157"* %"$$fundef_65_envp_1076" to i8*
  %"$$fundef_77_cloval_1084" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_77_env_151"*)* @"$fundef_77" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_77_env_voidp_1083", 1
  %"$dyndisp_table_1085_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1085_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1085_salloc_load", i64 48)
  %"$dyndisp_table_1085_salloc" = bitcast i8* %"$dyndisp_table_1085_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1085" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1085_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1086" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1085", i32 1
  %"$dyndisp_pcast_1087" = bitcast { i8*, i8* }* %"$dyndisp_gep_1086" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_65_cloval_1079", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1087", align 8
  %"$dyndisp_gep_1088" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1085", i32 2
  %"$dyndisp_pcast_1089" = bitcast { i8*, i8* }* %"$dyndisp_gep_1088" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_77_cloval_1084", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1089", align 8
  store { i8*, i8* }* %"$dyndisp_table_1085", { i8*, i8* }** %nat_iter, align 8, !dbg !108
  %"$gasrem_1090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1091" = icmp ugt i64 1, %"$gasrem_1090"
  br i1 %"$gascmp_1091", label %"$out_of_gas_1092", label %"$have_gas_1093"

"$out_of_gas_1092":                               ; preds = %"$have_gas_1074"
  call void @_out_of_gas()
  br label %"$have_gas_1093"

"$have_gas_1093":                                 ; preds = %"$out_of_gas_1092", %"$have_gas_1074"
  %"$consume_1094" = sub i64 %"$gasrem_1090", 1
  store i64 %"$consume_1094", i64* @_gasrem, align 8
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1095" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1096" = icmp ugt i64 1, %"$gasrem_1095"
  br i1 %"$gascmp_1096", label %"$out_of_gas_1097", label %"$have_gas_1098"

"$out_of_gas_1097":                               ; preds = %"$have_gas_1093"
  call void @_out_of_gas()
  br label %"$have_gas_1098"

"$have_gas_1098":                                 ; preds = %"$out_of_gas_1097", %"$have_gas_1093"
  %"$consume_1099" = sub i64 %"$gasrem_1095", 1
  store i64 %"$consume_1099", i64* @_gasrem, align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1101" = icmp ugt i64 1, %"$gasrem_1100"
  br i1 %"$gascmp_1101", label %"$out_of_gas_1102", label %"$have_gas_1103"

"$out_of_gas_1102":                               ; preds = %"$have_gas_1098"
  call void @_out_of_gas()
  br label %"$have_gas_1103"

"$have_gas_1103":                                 ; preds = %"$out_of_gas_1102", %"$have_gas_1098"
  %"$consume_1104" = sub i64 %"$gasrem_1100", 1
  store i64 %"$consume_1104", i64* @_gasrem, align 8
  %"$nat_iter_1105" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1106" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1105", i32 2
  %"$nat_iter_1107" = bitcast { i8*, i8* }* %"$nat_iter_1106" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1108" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1107", align 8
  %"$nat_iter_fptr_1109" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1108", 0
  %"$nat_iter_envptr_1110" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1108", 1
  %"$nat_iter_call_1111" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1109"(i8* %"$nat_iter_envptr_1110"), !dbg !109
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1111", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8, !dbg !110
  %"$gasrem_1112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1113" = icmp ugt i64 1, %"$gasrem_1112"
  br i1 %"$gascmp_1113", label %"$out_of_gas_1114", label %"$have_gas_1115"

"$out_of_gas_1114":                               ; preds = %"$have_gas_1103"
  call void @_out_of_gas()
  br label %"$have_gas_1115"

"$have_gas_1115":                                 ; preds = %"$out_of_gas_1114", %"$have_gas_1103"
  %"$consume_1116" = sub i64 %"$gasrem_1112", 1
  store i64 %"$consume_1116", i64* @_gasrem, align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_1117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1118" = icmp ugt i64 1, %"$gasrem_1117"
  br i1 %"$gascmp_1118", label %"$out_of_gas_1119", label %"$have_gas_1120"

"$out_of_gas_1119":                               ; preds = %"$have_gas_1115"
  call void @_out_of_gas()
  br label %"$have_gas_1120"

"$have_gas_1120":                                 ; preds = %"$out_of_gas_1119", %"$have_gas_1115"
  %"$consume_1121" = sub i64 %"$gasrem_1117", 1
  store i64 %"$consume_1121", i64* @_gasrem, align 8
  %"$nat_iter_1122" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1123" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1122", i32 1
  %"$nat_iter_1124" = bitcast { i8*, i8* }* %"$nat_iter_1123" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1125" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1124", align 8
  %"$nat_iter_fptr_1126" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1125", 0
  %"$nat_iter_envptr_1127" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1125", 1
  %"$nat_iter_call_1128" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1126"(i8* %"$nat_iter_envptr_1127"), !dbg !111
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1128", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8, !dbg !112
  %"$gasrem_1129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1130" = icmp ugt i64 1, %"$gasrem_1129"
  br i1 %"$gascmp_1130", label %"$out_of_gas_1131", label %"$have_gas_1132"

"$out_of_gas_1131":                               ; preds = %"$have_gas_1120"
  call void @_out_of_gas()
  br label %"$have_gas_1132"

"$have_gas_1132":                                 ; preds = %"$out_of_gas_1131", %"$have_gas_1120"
  %"$consume_1133" = sub i64 %"$gasrem_1129", 1
  store i64 %"$consume_1133", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_1134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1135" = icmp ugt i64 1, %"$gasrem_1134"
  br i1 %"$gascmp_1135", label %"$out_of_gas_1136", label %"$have_gas_1137"

"$out_of_gas_1136":                               ; preds = %"$have_gas_1132"
  call void @_out_of_gas()
  br label %"$have_gas_1137"

"$have_gas_1137":                                 ; preds = %"$out_of_gas_1136", %"$have_gas_1132"
  %"$consume_1138" = sub i64 %"$gasrem_1134", 1
  store i64 %"$consume_1138", i64* @_gasrem, align 8
  %"$adtval_1139_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1139_salloc" = call i8* @_salloc(i8* %"$adtval_1139_load", i64 1)
  %"$adtval_1139" = bitcast i8* %"$adtval_1139_salloc" to %CName_Zero*
  %"$adtgep_1140" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1139", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1140", align 1
  %"$adtptr_1141" = bitcast %CName_Zero* %"$adtval_1139" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1141", %TName_Nat** %zero, align 8, !dbg !113
  %"$gasrem_1142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1143" = icmp ugt i64 1, %"$gasrem_1142"
  br i1 %"$gascmp_1143", label %"$out_of_gas_1144", label %"$have_gas_1145"

"$out_of_gas_1144":                               ; preds = %"$have_gas_1137"
  call void @_out_of_gas()
  br label %"$have_gas_1145"

"$have_gas_1145":                                 ; preds = %"$out_of_gas_1144", %"$have_gas_1137"
  %"$consume_1146" = sub i64 %"$gasrem_1142", 1
  store i64 %"$consume_1146", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_1147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1148" = icmp ugt i64 1, %"$gasrem_1147"
  br i1 %"$gascmp_1148", label %"$out_of_gas_1149", label %"$have_gas_1150"

"$out_of_gas_1149":                               ; preds = %"$have_gas_1145"
  call void @_out_of_gas()
  br label %"$have_gas_1150"

"$have_gas_1150":                                 ; preds = %"$out_of_gas_1149", %"$have_gas_1145"
  %"$consume_1151" = sub i64 %"$gasrem_1147", 1
  store i64 %"$consume_1151", i64* @_gasrem, align 8
  %"$zero_1152" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_1153_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1153_salloc" = call i8* @_salloc(i8* %"$adtval_1153_load", i64 9)
  %"$adtval_1153" = bitcast i8* %"$adtval_1153_salloc" to %CName_Succ*
  %"$adtgep_1154" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1153", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1154", align 1
  %"$adtgep_1155" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1153", i32 0, i32 1
  store %TName_Nat* %"$zero_1152", %TName_Nat** %"$adtgep_1155", align 8
  %"$adtptr_1156" = bitcast %CName_Succ* %"$adtval_1153" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1156", %TName_Nat** %one, align 8, !dbg !114
  %"$gasrem_1157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1158" = icmp ugt i64 1, %"$gasrem_1157"
  br i1 %"$gascmp_1158", label %"$out_of_gas_1159", label %"$have_gas_1160"

"$out_of_gas_1159":                               ; preds = %"$have_gas_1150"
  call void @_out_of_gas()
  br label %"$have_gas_1160"

"$have_gas_1160":                                 ; preds = %"$out_of_gas_1159", %"$have_gas_1150"
  %"$consume_1161" = sub i64 %"$gasrem_1157", 1
  store i64 %"$consume_1161", i64* @_gasrem, align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1163" = icmp ugt i64 1, %"$gasrem_1162"
  br i1 %"$gascmp_1163", label %"$out_of_gas_1164", label %"$have_gas_1165"

"$out_of_gas_1164":                               ; preds = %"$have_gas_1160"
  call void @_out_of_gas()
  br label %"$have_gas_1165"

"$have_gas_1165":                                 ; preds = %"$out_of_gas_1164", %"$have_gas_1160"
  %"$consume_1166" = sub i64 %"$gasrem_1162", 1
  store i64 %"$consume_1166", i64* @_gasrem, align 8
  %"$$fundef_89_envp_1167_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_89_envp_1167_salloc" = call i8* @_salloc(i8* %"$$fundef_89_envp_1167_load", i64 24)
  %"$$fundef_89_envp_1167" = bitcast i8* %"$$fundef_89_envp_1167_salloc" to %"$$fundef_89_env_145"*
  %"$$fundef_89_env_voidp_1169" = bitcast %"$$fundef_89_env_145"* %"$$fundef_89_envp_1167" to i8*
  %"$$fundef_89_cloval_1170" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_89_env_145"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_89" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_89_env_voidp_1169", 1
  %"$$fundef_89_env_iter_nat_1171" = getelementptr inbounds %"$$fundef_89_env_145", %"$$fundef_89_env_145"* %"$$fundef_89_envp_1167", i32 0, i32 0
  %"$iter_nat_1172" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1172", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_89_env_iter_nat_1171", align 8
  %"$$fundef_89_env_one_1173" = getelementptr inbounds %"$$fundef_89_env_145", %"$$fundef_89_env_145"* %"$$fundef_89_envp_1167", i32 0, i32 1
  %"$one_1174" = load %TName_Nat*, %TName_Nat** %one, align 8
  store %TName_Nat* %"$one_1174", %TName_Nat** %"$$fundef_89_env_one_1173", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_89_cloval_1170", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8, !dbg !115
  %"$gasrem_1175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1176" = icmp ugt i64 1, %"$gasrem_1175"
  br i1 %"$gascmp_1176", label %"$out_of_gas_1177", label %"$have_gas_1178"

"$out_of_gas_1177":                               ; preds = %"$have_gas_1165"
  call void @_out_of_gas()
  br label %"$have_gas_1178"

"$have_gas_1178":                                 ; preds = %"$out_of_gas_1177", %"$have_gas_1165"
  %"$consume_1179" = sub i64 %"$gasrem_1175", 1
  store i64 %"$consume_1179", i64* @_gasrem, align 8
  %"$$fundef_93_envp_1180_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_93_envp_1180_salloc" = call i8* @_salloc(i8* %"$$fundef_93_envp_1180_load", i64 48)
  %"$$fundef_93_envp_1180" = bitcast i8* %"$$fundef_93_envp_1180_salloc" to %"$$fundef_93_env_143"*
  %"$$fundef_93_env_voidp_1182" = bitcast %"$$fundef_93_env_143"* %"$$fundef_93_envp_1180" to i8*
  %"$$fundef_93_cloval_1183" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_93_env_143"*, %TName_Nat*)* @"$fundef_93" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_93_env_voidp_1182", 1
  %"$$fundef_93_env_f_1184" = getelementptr inbounds %"$$fundef_93_env_143", %"$$fundef_93_env_143"* %"$$fundef_93_envp_1180", i32 0, i32 0
  %"$f_1185" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1185", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_93_env_f_1184", align 8
  %"$$fundef_93_env_iter_nat_nat_1186" = getelementptr inbounds %"$$fundef_93_env_143", %"$$fundef_93_env_143"* %"$$fundef_93_envp_1180", i32 0, i32 1
  %"$iter_nat_nat_1187" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1187", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_93_env_iter_nat_nat_1186", align 8
  %"$$fundef_93_env_nat_succ_1188" = getelementptr inbounds %"$$fundef_93_env_143", %"$$fundef_93_env_143"* %"$$fundef_93_envp_1180", i32 0, i32 2
  %"$nat_succ_1189" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1189", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_93_env_nat_succ_1188", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_93_cloval_1183", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8, !dbg !116
  %"$gasrem_1190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1191" = icmp ugt i64 1, %"$gasrem_1190"
  br i1 %"$gascmp_1191", label %"$out_of_gas_1192", label %"$have_gas_1193"

"$out_of_gas_1192":                               ; preds = %"$have_gas_1178"
  call void @_out_of_gas()
  br label %"$have_gas_1193"

"$have_gas_1193":                                 ; preds = %"$out_of_gas_1192", %"$have_gas_1178"
  %"$consume_1194" = sub i64 %"$gasrem_1190", 1
  store i64 %"$consume_1194", i64* @_gasrem, align 8
  %uintM = alloca %Uint32, align 8
  %"$gasrem_1195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1196" = icmp ugt i64 1, %"$gasrem_1195"
  br i1 %"$gascmp_1196", label %"$out_of_gas_1197", label %"$have_gas_1198"

"$out_of_gas_1197":                               ; preds = %"$have_gas_1193"
  call void @_out_of_gas()
  br label %"$have_gas_1198"

"$have_gas_1198":                                 ; preds = %"$out_of_gas_1197", %"$have_gas_1193"
  %"$consume_1199" = sub i64 %"$gasrem_1195", 1
  store i64 %"$consume_1199", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %uintM, align 4, !dbg !117
  %"$gasrem_1200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1201" = icmp ugt i64 1, %"$gasrem_1200"
  br i1 %"$gascmp_1201", label %"$out_of_gas_1202", label %"$have_gas_1203"

"$out_of_gas_1202":                               ; preds = %"$have_gas_1198"
  call void @_out_of_gas()
  br label %"$have_gas_1203"

"$have_gas_1203":                                 ; preds = %"$out_of_gas_1202", %"$have_gas_1198"
  %"$consume_1204" = sub i64 %"$gasrem_1200", 1
  store i64 %"$consume_1204", i64* @_gasrem, align 8
  %uintN = alloca %Uint32, align 8
  %"$gasrem_1205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1206" = icmp ugt i64 1, %"$gasrem_1205"
  br i1 %"$gascmp_1206", label %"$out_of_gas_1207", label %"$have_gas_1208"

"$out_of_gas_1207":                               ; preds = %"$have_gas_1203"
  call void @_out_of_gas()
  br label %"$have_gas_1208"

"$have_gas_1208":                                 ; preds = %"$out_of_gas_1207", %"$have_gas_1203"
  %"$consume_1209" = sub i64 %"$gasrem_1205", 1
  store i64 %"$consume_1209", i64* @_gasrem, align 8
  store %Uint32 { i32 7 }, %Uint32* %uintN, align 4, !dbg !118
  %"$gasrem_1210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1211" = icmp ugt i64 1, %"$gasrem_1210"
  br i1 %"$gascmp_1211", label %"$out_of_gas_1212", label %"$have_gas_1213"

"$out_of_gas_1212":                               ; preds = %"$have_gas_1208"
  call void @_out_of_gas()
  br label %"$have_gas_1213"

"$have_gas_1213":                                 ; preds = %"$out_of_gas_1212", %"$have_gas_1208"
  %"$consume_1214" = sub i64 %"$gasrem_1210", 1
  store i64 %"$consume_1214", i64* @_gasrem, align 8
  %m = alloca %TName_Nat*, align 8
  %"$uintM_1215" = load %Uint32, %Uint32* %uintM, align 4
  %"$valueof_1216" = extractvalue %Uint32 %"$uintM_1215", 0
  %"$valueof_1217" = zext i32 %"$valueof_1216" to i64
  %"$gasrem_1218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1219" = icmp ugt i64 %"$valueof_1217", %"$gasrem_1218"
  br i1 %"$gascmp_1219", label %"$out_of_gas_1220", label %"$have_gas_1221"

"$out_of_gas_1220":                               ; preds = %"$have_gas_1213"
  call void @_out_of_gas()
  br label %"$have_gas_1221"

"$have_gas_1221":                                 ; preds = %"$out_of_gas_1220", %"$have_gas_1213"
  %"$consume_1222" = sub i64 %"$gasrem_1218", %"$valueof_1217"
  store i64 %"$consume_1222", i64* @_gasrem, align 8
  %"$execptr_load_1223" = load i8*, i8** @_execptr, align 8
  %"$uintM_1224" = load %Uint32, %Uint32* %uintM, align 4
  %"$to_nat_call_1225" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1223", %Uint32 %"$uintM_1224"), !dbg !119
  store %TName_Nat* %"$to_nat_call_1225", %TName_Nat** %m, align 8, !dbg !119
  %"$gasrem_1227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1228" = icmp ugt i64 1, %"$gasrem_1227"
  br i1 %"$gascmp_1228", label %"$out_of_gas_1229", label %"$have_gas_1230"

"$out_of_gas_1229":                               ; preds = %"$have_gas_1221"
  call void @_out_of_gas()
  br label %"$have_gas_1230"

"$have_gas_1230":                                 ; preds = %"$out_of_gas_1229", %"$have_gas_1221"
  %"$consume_1231" = sub i64 %"$gasrem_1227", 1
  store i64 %"$consume_1231", i64* @_gasrem, align 8
  %n = alloca %TName_Nat*, align 8
  %"$uintN_1232" = load %Uint32, %Uint32* %uintN, align 4
  %"$valueof_1233" = extractvalue %Uint32 %"$uintN_1232", 0
  %"$valueof_1234" = zext i32 %"$valueof_1233" to i64
  %"$gasrem_1235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1236" = icmp ugt i64 %"$valueof_1234", %"$gasrem_1235"
  br i1 %"$gascmp_1236", label %"$out_of_gas_1237", label %"$have_gas_1238"

"$out_of_gas_1237":                               ; preds = %"$have_gas_1230"
  call void @_out_of_gas()
  br label %"$have_gas_1238"

"$have_gas_1238":                                 ; preds = %"$out_of_gas_1237", %"$have_gas_1230"
  %"$consume_1239" = sub i64 %"$gasrem_1235", %"$valueof_1234"
  store i64 %"$consume_1239", i64* @_gasrem, align 8
  %"$execptr_load_1240" = load i8*, i8** @_execptr, align 8
  %"$uintN_1241" = load %Uint32, %Uint32* %uintN, align 4
  %"$to_nat_call_1242" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1240", %Uint32 %"$uintN_1241"), !dbg !120
  store %TName_Nat* %"$to_nat_call_1242", %TName_Nat** %n, align 8, !dbg !120
  %"$gasrem_1244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1245" = icmp ugt i64 1, %"$gasrem_1244"
  br i1 %"$gascmp_1245", label %"$out_of_gas_1246", label %"$have_gas_1247"

"$out_of_gas_1246":                               ; preds = %"$have_gas_1238"
  call void @_out_of_gas()
  br label %"$have_gas_1247"

"$have_gas_1247":                                 ; preds = %"$out_of_gas_1246", %"$have_gas_1238"
  %"$consume_1248" = sub i64 %"$gasrem_1244", 1
  store i64 %"$consume_1248", i64* @_gasrem, align 8
  %ack00 = alloca %TName_Nat*, align 8
  %"$gasrem_1249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1250" = icmp ugt i64 1, %"$gasrem_1249"
  br i1 %"$gascmp_1250", label %"$out_of_gas_1251", label %"$have_gas_1252"

"$out_of_gas_1251":                               ; preds = %"$have_gas_1247"
  call void @_out_of_gas()
  br label %"$have_gas_1252"

"$have_gas_1252":                                 ; preds = %"$out_of_gas_1251", %"$have_gas_1247"
  %"$consume_1253" = sub i64 %"$gasrem_1249", 1
  store i64 %"$consume_1253", i64* @_gasrem, align 8
  %"$ackermann_29" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1254" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1255" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1254", 0
  %"$ackermann_envptr_1256" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1254", 1
  %"$m_1257" = load %TName_Nat*, %TName_Nat** %m, align 8
  %"$ackermann_call_1258" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1255"(i8* %"$ackermann_envptr_1256", %TName_Nat* %"$m_1257"), !dbg !121
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1258", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_29", align 8, !dbg !121
  %"$ackermann_30" = alloca %TName_Nat*, align 8
  %"$$ackermann_29_1259" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_29", align 8
  %"$$ackermann_29_fptr_1260" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_29_1259", 0
  %"$$ackermann_29_envptr_1261" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_29_1259", 1
  %"$n_1262" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$ackermann_29_call_1263" = call %TName_Nat* %"$$ackermann_29_fptr_1260"(i8* %"$$ackermann_29_envptr_1261", %TName_Nat* %"$n_1262"), !dbg !121
  store %TName_Nat* %"$$ackermann_29_call_1263", %TName_Nat** %"$ackermann_30", align 8, !dbg !121
  %"$$ackermann_30_1264" = load %TName_Nat*, %TName_Nat** %"$ackermann_30", align 8
  store %TName_Nat* %"$$ackermann_30_1264", %TName_Nat** %ack00, align 8, !dbg !121
  %"$gasrem_1265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1266" = icmp ugt i64 1, %"$gasrem_1265"
  br i1 %"$gascmp_1266", label %"$out_of_gas_1267", label %"$have_gas_1268"

"$out_of_gas_1267":                               ; preds = %"$have_gas_1252"
  call void @_out_of_gas()
  br label %"$have_gas_1268"

"$have_gas_1268":                                 ; preds = %"$out_of_gas_1267", %"$have_gas_1252"
  %"$consume_1269" = sub i64 %"$gasrem_1265", 1
  store i64 %"$consume_1269", i64* @_gasrem, align 8
  %int01 = alloca %Uint32, align 8
  %"$gasrem_1270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1271" = icmp ugt i64 1, %"$gasrem_1270"
  br i1 %"$gascmp_1271", label %"$out_of_gas_1272", label %"$have_gas_1273"

"$out_of_gas_1272":                               ; preds = %"$have_gas_1268"
  call void @_out_of_gas()
  br label %"$have_gas_1273"

"$have_gas_1273":                                 ; preds = %"$out_of_gas_1272", %"$have_gas_1268"
  %"$consume_1274" = sub i64 %"$gasrem_1270", 1
  store i64 %"$consume_1274", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_31" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1275" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1276" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1275", 0
  %"$NatUtils.nat_to_int_envptr_1277" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1275", 1
  %"$ack00_1278" = load %TName_Nat*, %TName_Nat** %ack00, align 8
  %"$NatUtils.nat_to_int_call_1279" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1276"(i8* %"$NatUtils.nat_to_int_envptr_1277", %TName_Nat* %"$ack00_1278"), !dbg !122
  store %Uint32 %"$NatUtils.nat_to_int_call_1279", %Uint32* %"$NatUtils.nat_to_int_31", align 4, !dbg !122
  %"$$NatUtils.nat_to_int_31_1280" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_31", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_31_1280", %Uint32* %int01, align 4, !dbg !122
  %"$gasrem_1281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1282" = icmp ugt i64 1, %"$gasrem_1281"
  br i1 %"$gascmp_1282", label %"$out_of_gas_1283", label %"$have_gas_1284"

"$out_of_gas_1283":                               ; preds = %"$have_gas_1273"
  call void @_out_of_gas()
  br label %"$have_gas_1284"

"$have_gas_1284":                                 ; preds = %"$out_of_gas_1283", %"$have_gas_1273"
  %"$consume_1285" = sub i64 %"$gasrem_1281", 1
  store i64 %"$consume_1285", i64* @_gasrem, align 8
  %"$int01_1286" = load %Uint32, %Uint32* %int01, align 4
  store %Uint32 %"$int01_1286", %Uint32* %"$expr_62", align 4, !dbg !123
  %"$$expr_62_1287" = load %Uint32, %Uint32* %"$expr_62", align 4
  ret %Uint32 %"$$expr_62_1287"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1288" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1289" = alloca %Uint32, align 8
  %"$memvoidcast_1290" = bitcast %Uint32* %"$pval_1289" to i8*
  store %Uint32 %"$exprval_1288", %Uint32* %"$pval_1289", align 4
  %"$execptr_load_1291" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1291", %_TyDescrTy_Typ* @"$TyDescr_Uint32_99", i8* %"$memvoidcast_1290")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "ackermann_3_7.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_93", linkageName: "$fundef_93", scope: !2, file: !2, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 25, column: 23, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_91", linkageName: "$fundef_91", scope: !2, file: !2, line: 24, type: !5, scopeLine: 24, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 24, column: 22, scope: !9)
!11 = distinct !DISubprogram(name: "$fundef_89", linkageName: "$fundef_89", scope: !2, file: !2, line: 23, type: !5, scopeLine: 23, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 23, column: 14, scope: !11)
!13 = !DILocation(line: 24, column: 22, scope: !11)
!14 = distinct !DISubprogram(name: "$fundef_87", linkageName: "$fundef_87", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 13, column: 52, scope: !14)
!16 = distinct !DISubprogram(name: "$fundef_85", linkageName: "$fundef_85", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 13, column: 52, scope: !16)
!18 = distinct !DISubprogram(name: "$fundef_83", linkageName: "$fundef_83", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DILocation(line: 12, column: 17, scope: !18)
!20 = !DILocation(line: 12, column: 16, scope: !18)
!21 = !DILocation(line: 13, column: 30, scope: !18)
!22 = !DILocation(line: 14, column: 3, scope: !18)
!23 = distinct !DISubprogram(name: "$fundef_81", linkageName: "$fundef_81", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 12, column: 3, scope: !23)
!25 = distinct !DISubprogram(name: "$fundef_79", linkageName: "$fundef_79", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 11, column: 3, scope: !25)
!27 = distinct !DISubprogram(name: "$fundef_77", linkageName: "$fundef_77", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 10, column: 3, scope: !27)
!29 = distinct !DISubprogram(name: "$fundef_75", linkageName: "$fundef_75", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 13, column: 52, scope: !29)
!31 = distinct !DISubprogram(name: "$fundef_73", linkageName: "$fundef_73", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 13, column: 52, scope: !31)
!33 = distinct !DISubprogram(name: "$fundef_71", linkageName: "$fundef_71", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DILocation(line: 12, column: 17, scope: !33)
!35 = !DILocation(line: 12, column: 16, scope: !33)
!36 = !DILocation(line: 13, column: 30, scope: !33)
!37 = !DILocation(line: 14, column: 3, scope: !33)
!38 = distinct !DISubprogram(name: "$fundef_69", linkageName: "$fundef_69", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!39 = !DILocation(line: 12, column: 3, scope: !38)
!40 = distinct !DISubprogram(name: "$fundef_67", linkageName: "$fundef_67", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!41 = !DILocation(line: 11, column: 3, scope: !40)
!42 = distinct !DISubprogram(name: "$fundef_65", linkageName: "$fundef_65", scope: !2, file: !2, line: 10, type: !5, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!43 = !DILocation(line: 10, column: 3, scope: !42)
!44 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!45 = !DILocation(line: 3, column: 20, scope: !44)
!46 = distinct !DISubprogram(name: "$fundef_60", linkageName: "$fundef_60", scope: !47, file: !47, line: 55, type: !5, scopeLine: 55, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!47 = !DIFile(filename: "NatUtils.scillib", directory: "../src/stdlib")
!48 = !DILocation(line: 55, column: 7, scope: !46)
!49 = distinct !DISubprogram(name: "$fundef_58", linkageName: "$fundef_58", scope: !47, file: !47, line: 54, type: !5, scopeLine: 54, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!50 = !DILocation(line: 55, column: 7, scope: !49)
!51 = distinct !DISubprogram(name: "$fundef_56", linkageName: "$fundef_56", scope: !47, file: !47, line: 52, type: !5, scopeLine: 52, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!52 = !DILocation(line: 52, column: 17, scope: !51)
!53 = !DILocation(line: 52, column: 16, scope: !51)
!54 = !DILocation(line: 53, column: 19, scope: !51)
!55 = !DILocation(line: 54, column: 33, scope: !51)
!56 = !DILocation(line: 56, column: 20, scope: !51)
!57 = !DILocation(line: 57, column: 5, scope: !51)
!58 = distinct !DISubprogram(name: "$fundef_54", linkageName: "$fundef_54", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!59 = !DIFile(filename: "Prelude", directory: ".")
!60 = !DILocation(line: 1, column: 34, scope: !58)
!61 = !DILocation(line: 1, column: 71, scope: !62)
!62 = distinct !DILexicalBlock(scope: !63, file: !59, line: 1, column: 50)
!63 = distinct !DILexicalBlock(scope: !58, file: !59, line: 1, column: 34)
!64 = !DILocation(line: 1, column: 86, scope: !62)
!65 = !DILocation(line: 1, column: 106, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !59, line: 1, column: 98)
!67 = distinct !DISubprogram(name: "$fundef_52", linkageName: "$fundef_52", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 1, column: 34, scope: !67)
!69 = distinct !DISubprogram(name: "$fundef_50", linkageName: "$fundef_50", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 1, column: 18, scope: !69)
!71 = distinct !DISubprogram(name: "$fundef_48", linkageName: "$fundef_48", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = !DILocation(line: 1, column: 18, scope: !71)
!73 = distinct !DISubprogram(name: "$fundef_46", linkageName: "$fundef_46", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!74 = !DILocation(line: 1, column: 34, scope: !73)
!75 = !DILocation(line: 1, column: 71, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !59, line: 1, column: 50)
!77 = distinct !DILexicalBlock(scope: !73, file: !59, line: 1, column: 34)
!78 = !DILocation(line: 1, column: 86, scope: !76)
!79 = !DILocation(line: 1, column: 106, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !59, line: 1, column: 98)
!81 = distinct !DISubprogram(name: "$fundef_44", linkageName: "$fundef_44", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!82 = !DILocation(line: 1, column: 34, scope: !81)
!83 = distinct !DISubprogram(name: "$fundef_42", linkageName: "$fundef_42", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!84 = !DILocation(line: 1, column: 18, scope: !83)
!85 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!86 = !DILocation(line: 1, column: 18, scope: !85)
!87 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!88 = !DILocation(line: 1, column: 34, scope: !87)
!89 = !DILocation(line: 1, column: 71, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !59, line: 1, column: 50)
!91 = distinct !DILexicalBlock(scope: !87, file: !59, line: 1, column: 34)
!92 = !DILocation(line: 1, column: 86, scope: !90)
!93 = !DILocation(line: 1, column: 106, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !59, line: 1, column: 98)
!95 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!96 = !DILocation(line: 1, column: 34, scope: !95)
!97 = distinct !DISubprogram(name: "$fundef_34", linkageName: "$fundef_34", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!98 = !DILocation(line: 1, column: 18, scope: !97)
!99 = distinct !DISubprogram(name: "$fundef_32", linkageName: "$fundef_32", scope: !59, file: !59, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!100 = !DILocation(line: 1, column: 18, scope: !99)
!101 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !102, file: !102, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!102 = !DIFile(filename: ".", directory: ".")
!103 = !DILocation(line: 0, scope: !101)
!104 = !DILocation(line: 1, column: 18, scope: !101)
!105 = !DILocation(line: 52, column: 5, scope: !101)
!106 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!107 = !DILocation(line: 3, column: 20, scope: !106)
!108 = !DILocation(line: 8, column: 3, scope: !106)
!109 = !DILocation(line: 18, column: 19, scope: !106)
!110 = !DILocation(line: 18, column: 18, scope: !106)
!111 = !DILocation(line: 19, column: 23, scope: !106)
!112 = !DILocation(line: 19, column: 22, scope: !106)
!113 = !DILocation(line: 20, column: 14, scope: !106)
!114 = !DILocation(line: 21, column: 13, scope: !106)
!115 = !DILocation(line: 23, column: 5, scope: !106)
!116 = !DILocation(line: 25, column: 23, scope: !106)
!117 = !DILocation(line: 29, column: 13, scope: !106)
!118 = !DILocation(line: 30, column: 13, scope: !106)
!119 = !DILocation(line: 32, column: 9, scope: !106)
!120 = !DILocation(line: 33, column: 9, scope: !106)
!121 = !DILocation(line: 35, column: 13, scope: !106)
!122 = !DILocation(line: 36, column: 13, scope: !106)
!123 = !DILocation(line: 37, column: 1, scope: !106)
