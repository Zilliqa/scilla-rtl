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

%"$TyDescrTy_PrimTyp_95" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_127" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_126"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_126" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_128"**, %"$TyDescrTy_ADTTyp_127"* }
%"$TyDescrTy_ADTTyp_Constr_128" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>
%"$ParamDescr_1294" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1295" = type { %ParamDescrString, i32, %"$ParamDescr_1294"* }
%"$$fundef_93_env_145" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_91_env_146" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_89_env_147" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat* }
%"$$fundef_87_env_148" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat* }
%"$$fundef_85_env_149" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_83_env_150" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_81_env_151" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { i8*, i8* }* }
%"$$fundef_79_env_152" = type { { i8*, i8* }* }
%"$$fundef_77_env_153" = type { { i8*, i8* }* }
%"$$fundef_75_env_154" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_73_env_155" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_71_env_156" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, %TName_Nat*, { i8*, i8* }* }
%"$$fundef_69_env_157" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { i8*, i8* }* }
%"$$fundef_67_env_158" = type { { i8*, i8* }* }
%"$$fundef_65_env_159" = type { { i8*, i8* }* }
%"$$fundef_63_env_160" = type {}
%"$$fundef_60_env_161" = type { %Uint32, %Uint32 }
%"$$fundef_58_env_162" = type { %Uint32 }
%"$$fundef_56_env_163" = type { { i8*, i8* }* }
%"$$fundef_54_env_164" = type { %Uint32, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_52_env_165" = type { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } }
%"$$fundef_50_env_166" = type {}
%"$$fundef_48_env_167" = type {}
%"$$fundef_46_env_168" = type { %TName_Nat*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_44_env_169" = type { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } }
%"$$fundef_42_env_170" = type {}
%"$$fundef_40_env_171" = type {}
%"$$fundef_38_env_172" = type { { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_36_env_173" = type { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } }
%"$$fundef_34_env_174" = type {}
%"$$fundef_32_env_175" = type {}

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
@"$TyDescr_ReplicateContr_Prim_122" = global %"$TyDescrTy_PrimTyp_95" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_123" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_ReplicateContr_Prim_122" to i8*) }
@"$TyDescr_Bystr_Prim_124" = global %"$TyDescrTy_PrimTyp_95" { i32 7, i32 0 }
@"$TyDescr_Bystr_125" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_95"* @"$TyDescr_Bystr_Prim_124" to i8*) }
@"$TyDescr_ADT_Nat_129" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_126"* @"$TyDescr_Nat_ADTTyp_Specl_142" to i8*) }
@"$TyDescr_Nat_ADTTyp_133" = unnamed_addr constant %"$TyDescrTy_ADTTyp_127" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_144", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_126"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_126"*], [1 x %"$TyDescrTy_ADTTyp_Specl_126"*]* @"$TyDescr_Nat_ADTTyp_m_specls_143", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_134" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_135" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_136" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_128" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_135", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_134", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_137" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_129"]
@"$TyDescr_ADT_Succ_138" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_139" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_128" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_138", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_137", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_140" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_128"*] [%"$TyDescrTy_ADTTyp_Constr_128"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_136", %"$TyDescrTy_ADTTyp_Constr_128"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_139"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_141" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_142" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_126" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_141", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_128"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_128"*], [2 x %"$TyDescrTy_ADTTyp_Constr_128"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_140", i32 0, i32 0), %"$TyDescrTy_ADTTyp_127"* @"$TyDescr_Nat_ADTTyp_133" }
@"$TyDescr_Nat_ADTTyp_m_specls_143" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_126"*] [%"$TyDescrTy_ADTTyp_Specl_126"* @"$TyDescr_Nat_ADTTyp_Specl_142"]
@"$TyDescr_ADT_Nat_144" = unnamed_addr constant [3 x i8] c"Nat"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@nat_fold = global { i8*, i8* }* null
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@NatUtils.nat_to_int = global { %Uint32 (i8*, %TName_Nat*)*, i8* } zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_119", %_TyDescrTy_Typ* @"$TyDescr_Int64_101", %_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_129", %_TyDescrTy_Typ* @"$TyDescr_Uint256_111", %_TyDescrTy_Typ* @"$TyDescr_Uint32_99", %_TyDescrTy_Typ* @"$TyDescr_Uint64_103", %_TyDescrTy_Typ* @"$TyDescr_Bnum_115", %_TyDescrTy_Typ* @"$TyDescr_Uint128_107", %_TyDescrTy_Typ* @"$TyDescr_Exception_121", %_TyDescrTy_Typ* @"$TyDescr_String_113", %_TyDescrTy_Typ* @"$TyDescr_Int256_109", %_TyDescrTy_Typ* @"$TyDescr_Int128_105", %_TyDescrTy_Typ* @"$TyDescr_Bystr_125", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_123", %_TyDescrTy_Typ* @"$TyDescr_Message_117", %_TyDescrTy_Typ* @"$TyDescr_Int32_97"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_1294"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1295"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_93"(%"$$fundef_93_env_145"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_93_env_f_965" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %0, i32 0, i32 0
  %"$f_envload_966" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_93_env_f_965", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_966", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_93_env_iter_nat_nat_967" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_968" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_93_env_iter_nat_nat_967", align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_968", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$$fundef_93_env_nat_succ_969" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %0, i32 0, i32 2
  %"$nat_succ_envload_970" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_93_env_nat_succ_969", align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_970", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$retval_94" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_972" = icmp ugt i64 1, %"$gasrem_971"
  br i1 %"$gascmp_972", label %"$out_of_gas_973", label %"$have_gas_974"

"$out_of_gas_973":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_974"

"$have_gas_974":                                  ; preds = %"$out_of_gas_973", %entry
  %"$consume_975" = sub i64 %"$gasrem_971", 1
  store i64 %"$consume_975", i64* @_gasrem, align 8
  %"$iter_nat_nat_26" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_nat_976" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$iter_nat_nat_fptr_977" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_976", 0
  %"$iter_nat_nat_envptr_978" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_976", 1
  %"$f_979" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$iter_nat_nat_call_980" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_977"(i8* %"$iter_nat_nat_envptr_978", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_979")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_980", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_26", align 8
  %"$iter_nat_nat_27" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$$iter_nat_nat_26_981" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_26", align 8
  %"$$iter_nat_nat_26_fptr_982" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_26_981", 0
  %"$$iter_nat_nat_26_envptr_983" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_26_981", 1
  %"$$iter_nat_nat_26_call_984" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_26_fptr_982"(i8* %"$$iter_nat_nat_26_envptr_983", %TName_Nat* %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_26_call_984", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_27", align 8
  %"$iter_nat_nat_28" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_nat_27_985" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_27", align 8
  %"$$iter_nat_nat_27_fptr_986" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_27_985", 0
  %"$$iter_nat_nat_27_envptr_987" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_27_985", 1
  %"$nat_succ_988" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$$iter_nat_nat_27_call_989" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_27_fptr_986"(i8* %"$$iter_nat_nat_27_envptr_987", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_988")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_27_call_989", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_28", align 8
  %"$$iter_nat_nat_28_990" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_28", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_28_990", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_94", align 8
  %"$$retval_94_991" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_94", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_94_991"
}

define internal %TName_Nat* @"$fundef_91"(%"$$fundef_91_env_146"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_91_env_ack_938" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %0, i32 0, i32 0
  %"$ack_envload_939" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_91_env_ack_938", align 8
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_939", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$$fundef_91_env_iter_nat_940" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %0, i32 0, i32 1
  %"$iter_nat_envload_941" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_91_env_iter_nat_940", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_941", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_91_env_x0_942" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %0, i32 0, i32 2
  %"$x0_envload_943" = load %TName_Nat*, %TName_Nat** %"$$fundef_91_env_x0_942", align 8
  %x0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x0_envload_943", %TName_Nat** %x0, align 8
  %"$retval_92" = alloca %TName_Nat*, align 8
  %"$gasrem_944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_945" = icmp ugt i64 1, %"$gasrem_944"
  br i1 %"$gascmp_945", label %"$out_of_gas_946", label %"$have_gas_947"

"$out_of_gas_946":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_947"

"$have_gas_947":                                  ; preds = %"$out_of_gas_946", %entry
  %"$consume_948" = sub i64 %"$gasrem_944", 1
  store i64 %"$consume_948", i64* @_gasrem, align 8
  %"$iter_nat_23" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_949" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$iter_nat_fptr_950" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_949", 0
  %"$iter_nat_envptr_951" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_949", 1
  %"$ack_952" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$iter_nat_call_953" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_950"(i8* %"$iter_nat_envptr_951", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_952")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_953", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_23", align 8
  %"$iter_nat_24" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_23_954" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_23", align 8
  %"$$iter_nat_23_fptr_955" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_954", 0
  %"$$iter_nat_23_envptr_956" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_954", 1
  %"$$iter_nat_23_call_957" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_fptr_955"(i8* %"$$iter_nat_23_envptr_956", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_call_957", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_24", align 8
  %"$iter_nat_25" = alloca %TName_Nat*, align 8
  %"$$iter_nat_24_958" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_24", align 8
  %"$$iter_nat_24_fptr_959" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_24_958", 0
  %"$$iter_nat_24_envptr_960" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_24_958", 1
  %"$x0_961" = load %TName_Nat*, %TName_Nat** %x0, align 8
  %"$$iter_nat_24_call_962" = call %TName_Nat* %"$$iter_nat_24_fptr_959"(i8* %"$$iter_nat_24_envptr_960", %TName_Nat* %"$x0_961")
  store %TName_Nat* %"$$iter_nat_24_call_962", %TName_Nat** %"$iter_nat_25", align 8
  %"$$iter_nat_25_963" = load %TName_Nat*, %TName_Nat** %"$iter_nat_25", align 8
  store %TName_Nat* %"$$iter_nat_25_963", %TName_Nat** %"$retval_92", align 8
  %"$$retval_92_964" = load %TName_Nat*, %TName_Nat** %"$retval_92", align 8
  ret %TName_Nat* %"$$retval_92_964"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_89"(%"$$fundef_89_env_147"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_89_env_iter_nat_904" = getelementptr inbounds %"$$fundef_89_env_147", %"$$fundef_89_env_147"* %0, i32 0, i32 0
  %"$iter_nat_envload_905" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_89_env_iter_nat_904", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_905", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_89_env_one_906" = getelementptr inbounds %"$$fundef_89_env_147", %"$$fundef_89_env_147"* %0, i32 0, i32 1
  %"$one_envload_907" = load %TName_Nat*, %TName_Nat** %"$$fundef_89_env_one_906", align 8
  %one = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$one_envload_907", %TName_Nat** %one, align 8
  %"$retval_90" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_909" = icmp ugt i64 1, %"$gasrem_908"
  br i1 %"$gascmp_909", label %"$out_of_gas_910", label %"$have_gas_911"

"$out_of_gas_910":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_911"

"$have_gas_911":                                  ; preds = %"$out_of_gas_910", %entry
  %"$consume_912" = sub i64 %"$gasrem_908", 1
  store i64 %"$consume_912", i64* @_gasrem, align 8
  %x0 = alloca %TName_Nat*, align 8
  %"$gasrem_913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_914" = icmp ugt i64 1, %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$have_gas_911"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$have_gas_911"
  %"$consume_917" = sub i64 %"$gasrem_913", 1
  store i64 %"$consume_917", i64* @_gasrem, align 8
  %"$ack_22" = alloca %TName_Nat*, align 8
  %"$ack_fptr_918" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_919" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_920" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$ack_call_921" = call %TName_Nat* %"$ack_fptr_918"(i8* %"$ack_envptr_919", %TName_Nat* %"$one_920")
  store %TName_Nat* %"$ack_call_921", %TName_Nat** %"$ack_22", align 8
  %"$$ack_22_922" = load %TName_Nat*, %TName_Nat** %"$ack_22", align 8
  store %TName_Nat* %"$$ack_22_922", %TName_Nat** %x0, align 8
  %"$gasrem_923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_924" = icmp ugt i64 1, %"$gasrem_923"
  br i1 %"$gascmp_924", label %"$out_of_gas_925", label %"$have_gas_926"

"$out_of_gas_925":                                ; preds = %"$have_gas_916"
  call void @_out_of_gas()
  br label %"$have_gas_926"

"$have_gas_926":                                  ; preds = %"$out_of_gas_925", %"$have_gas_916"
  %"$consume_927" = sub i64 %"$gasrem_923", 1
  store i64 %"$consume_927", i64* @_gasrem, align 8
  %"$$fundef_91_envp_928_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_91_envp_928_salloc" = call i8* @_salloc(i8* %"$$fundef_91_envp_928_load", i64 40)
  %"$$fundef_91_envp_928" = bitcast i8* %"$$fundef_91_envp_928_salloc" to %"$$fundef_91_env_146"*
  %"$$fundef_91_env_voidp_930" = bitcast %"$$fundef_91_env_146"* %"$$fundef_91_envp_928" to i8*
  %"$$fundef_91_cloval_931" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_91_env_146"*, %TName_Nat*)* @"$fundef_91" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_91_env_voidp_930", 1
  %"$$fundef_91_env_ack_932" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %"$$fundef_91_envp_928", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_91_env_ack_932", align 8
  %"$$fundef_91_env_iter_nat_933" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %"$$fundef_91_envp_928", i32 0, i32 1
  %"$iter_nat_934" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_934", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_91_env_iter_nat_933", align 8
  %"$$fundef_91_env_x0_935" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %"$$fundef_91_envp_928", i32 0, i32 2
  %"$x0_936" = load %TName_Nat*, %TName_Nat** %x0, align 8
  store %TName_Nat* %"$x0_936", %TName_Nat** %"$$fundef_91_env_x0_935", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_91_cloval_931", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_90", align 8
  %"$$retval_90_937" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_90", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_90_937"
}

define internal %TName_Nat* @"$fundef_87"(%"$$fundef_87_env_148"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_87_env_f_888" = getelementptr inbounds %"$$fundef_87_env_148", %"$$fundef_87_env_148"* %0, i32 0, i32 0
  %"$f_envload_889" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_87_env_f_888", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_889", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_87_env_x_890" = getelementptr inbounds %"$$fundef_87_env_148", %"$$fundef_87_env_148"* %0, i32 0, i32 1
  %"$x_envload_891" = load %TName_Nat*, %TName_Nat** %"$$fundef_87_env_x_890", align 8
  %x = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x_envload_891", %TName_Nat** %x, align 8
  %"$retval_88" = alloca %TName_Nat*, align 8
  %"$gasrem_892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_893" = icmp ugt i64 1, %"$gasrem_892"
  br i1 %"$gascmp_893", label %"$out_of_gas_894", label %"$have_gas_895"

"$out_of_gas_894":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_895"

"$have_gas_895":                                  ; preds = %"$out_of_gas_894", %entry
  %"$consume_896" = sub i64 %"$gasrem_892", 1
  store i64 %"$consume_896", i64* @_gasrem, align 8
  %"$f_18" = alloca %TName_Nat*, align 8
  %"$f_897" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$f_fptr_898" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_897", 0
  %"$f_envptr_899" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_897", 1
  %"$x_900" = load %TName_Nat*, %TName_Nat** %x, align 8
  %"$f_call_901" = call %TName_Nat* %"$f_fptr_898"(i8* %"$f_envptr_899", %TName_Nat* %"$x_900")
  store %TName_Nat* %"$f_call_901", %TName_Nat** %"$f_18", align 8
  %"$$f_18_902" = load %TName_Nat*, %TName_Nat** %"$f_18", align 8
  store %TName_Nat* %"$$f_18_902", %TName_Nat** %"$retval_88", align 8
  %"$$retval_88_903" = load %TName_Nat*, %TName_Nat** %"$retval_88", align 8
  ret %TName_Nat* %"$$retval_88_903"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_85"(%"$$fundef_85_env_149"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_85_env_f_873" = getelementptr inbounds %"$$fundef_85_env_149", %"$$fundef_85_env_149"* %0, i32 0, i32 0
  %"$f_envload_874" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_85_env_f_873", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_874", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$retval_86" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_876" = icmp ugt i64 1, %"$gasrem_875"
  br i1 %"$gascmp_876", label %"$out_of_gas_877", label %"$have_gas_878"

"$out_of_gas_877":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_878"

"$have_gas_878":                                  ; preds = %"$out_of_gas_877", %entry
  %"$consume_879" = sub i64 %"$gasrem_875", 1
  store i64 %"$consume_879", i64* @_gasrem, align 8
  %"$$fundef_87_envp_880_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_87_envp_880_salloc" = call i8* @_salloc(i8* %"$$fundef_87_envp_880_load", i64 24)
  %"$$fundef_87_envp_880" = bitcast i8* %"$$fundef_87_envp_880_salloc" to %"$$fundef_87_env_148"*
  %"$$fundef_87_env_voidp_882" = bitcast %"$$fundef_87_env_148"* %"$$fundef_87_envp_880" to i8*
  %"$$fundef_87_cloval_883" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_87_env_148"*, %TName_Nat*)* @"$fundef_87" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_87_env_voidp_882", 1
  %"$$fundef_87_env_f_884" = getelementptr inbounds %"$$fundef_87_env_148", %"$$fundef_87_env_148"* %"$$fundef_87_envp_880", i32 0, i32 0
  %"$f_885" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_885", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_87_env_f_884", align 8
  %"$$fundef_87_env_x_886" = getelementptr inbounds %"$$fundef_87_env_148", %"$$fundef_87_env_148"* %"$$fundef_87_envp_880", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_87_env_x_886", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_87_cloval_883", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_86", align 8
  %"$$retval_86_887" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_86", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_86_887"
}

define internal %TName_Nat* @"$fundef_83"(%"$$fundef_83_env_150"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_83_env_f_813" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %0, i32 0, i32 0
  %"$f_envload_814" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_83_env_f_813", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_814", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_83_env_n_815" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %0, i32 0, i32 1
  %"$n_envload_816" = load %TName_Nat*, %TName_Nat** %"$$fundef_83_env_n_815", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_816", %TName_Nat** %n, align 8
  %"$$fundef_83_env_nat_fold_817" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %0, i32 0, i32 2
  %"$nat_fold_envload_818" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_83_env_nat_fold_817", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_818", { i8*, i8* }** %nat_fold, align 8
  %"$retval_84" = alloca %TName_Nat*, align 8
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 1, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %entry
  %"$consume_823" = sub i64 %"$gasrem_819", 1
  store i64 %"$consume_823", i64* @_gasrem, align 8
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 1, %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_822"
  %"$consume_828" = sub i64 %"$gasrem_824", 1
  store i64 %"$consume_828", i64* @_gasrem, align 8
  %"$nat_fold_829" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_830" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_829", i32 2
  %"$nat_fold_831" = bitcast { i8*, i8* }* %"$nat_fold_830" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_832" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_831", align 8
  %"$nat_fold_fptr_833" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_832", 0
  %"$nat_fold_envptr_834" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_832", 1
  %"$nat_fold_call_835" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_833"(i8* %"$nat_fold_envptr_834")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_835", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 1, %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %"$have_gas_827"
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %"$have_gas_827"
  %"$consume_840" = sub i64 %"$gasrem_836", 1
  store i64 %"$consume_840", i64* @_gasrem, align 8
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_842" = icmp ugt i64 1, %"$gasrem_841"
  br i1 %"$gascmp_842", label %"$out_of_gas_843", label %"$have_gas_844"

"$out_of_gas_843":                                ; preds = %"$have_gas_839"
  call void @_out_of_gas()
  br label %"$have_gas_844"

"$have_gas_844":                                  ; preds = %"$out_of_gas_843", %"$have_gas_839"
  %"$consume_845" = sub i64 %"$gasrem_841", 1
  store i64 %"$consume_845", i64* @_gasrem, align 8
  %"$$fundef_85_envp_846_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_85_envp_846_salloc" = call i8* @_salloc(i8* %"$$fundef_85_envp_846_load", i64 16)
  %"$$fundef_85_envp_846" = bitcast i8* %"$$fundef_85_envp_846_salloc" to %"$$fundef_85_env_149"*
  %"$$fundef_85_env_voidp_848" = bitcast %"$$fundef_85_env_149"* %"$$fundef_85_envp_846" to i8*
  %"$$fundef_85_cloval_849" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_85_env_149"*, %TName_Nat*)* @"$fundef_85" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_85_env_voidp_848", 1
  %"$$fundef_85_env_f_850" = getelementptr inbounds %"$$fundef_85_env_149", %"$$fundef_85_env_149"* %"$$fundef_85_envp_846", i32 0, i32 0
  %"$f_851" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_851", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_85_env_f_850", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_85_cloval_849", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$gasrem_852" = load i64, i64* @_gasrem, align 8
  %"$gascmp_853" = icmp ugt i64 1, %"$gasrem_852"
  br i1 %"$gascmp_853", label %"$out_of_gas_854", label %"$have_gas_855"

"$out_of_gas_854":                                ; preds = %"$have_gas_844"
  call void @_out_of_gas()
  br label %"$have_gas_855"

"$have_gas_855":                                  ; preds = %"$out_of_gas_854", %"$have_gas_844"
  %"$consume_856" = sub i64 %"$gasrem_852", 1
  store i64 %"$consume_856", i64* @_gasrem, align 8
  %"$folder_19" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$folder_857" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_858" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_857", 0
  %"$folder_envptr_859" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_857", 1
  %"$step_860" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$folder_call_861" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_858"(i8* %"$folder_envptr_859", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_860")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_861", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_19", align 8
  %"$folder_20" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_19_862" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_19", align 8
  %"$$folder_19_fptr_863" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_862", 0
  %"$$folder_19_envptr_864" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_862", 1
  %"$$folder_19_call_865" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_19_fptr_863"(i8* %"$$folder_19_envptr_864", %TName_Nat* %1)
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_19_call_865", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8
  %"$folder_21" = alloca %TName_Nat*, align 8
  %"$$folder_20_866" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8
  %"$$folder_20_fptr_867" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_866", 0
  %"$$folder_20_envptr_868" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_866", 1
  %"$n_869" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_20_call_870" = call %TName_Nat* %"$$folder_20_fptr_867"(i8* %"$$folder_20_envptr_868", %TName_Nat* %"$n_869")
  store %TName_Nat* %"$$folder_20_call_870", %TName_Nat** %"$folder_21", align 8
  %"$$folder_21_871" = load %TName_Nat*, %TName_Nat** %"$folder_21", align 8
  store %TName_Nat* %"$$folder_21_871", %TName_Nat** %"$retval_84", align 8
  %"$$retval_84_872" = load %TName_Nat*, %TName_Nat** %"$retval_84", align 8
  ret %TName_Nat* %"$$retval_84_872"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_81"(%"$$fundef_81_env_151"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_81_env_f_794" = getelementptr inbounds %"$$fundef_81_env_151", %"$$fundef_81_env_151"* %0, i32 0, i32 0
  %"$f_envload_795" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_81_env_f_794", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_795", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_81_env_nat_fold_796" = getelementptr inbounds %"$$fundef_81_env_151", %"$$fundef_81_env_151"* %0, i32 0, i32 1
  %"$nat_fold_envload_797" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_81_env_nat_fold_796", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_797", { i8*, i8* }** %nat_fold, align 8
  %"$retval_82" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_799" = icmp ugt i64 1, %"$gasrem_798"
  br i1 %"$gascmp_799", label %"$out_of_gas_800", label %"$have_gas_801"

"$out_of_gas_800":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_801"

"$have_gas_801":                                  ; preds = %"$out_of_gas_800", %entry
  %"$consume_802" = sub i64 %"$gasrem_798", 1
  store i64 %"$consume_802", i64* @_gasrem, align 8
  %"$$fundef_83_envp_803_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_83_envp_803_salloc" = call i8* @_salloc(i8* %"$$fundef_83_envp_803_load", i64 32)
  %"$$fundef_83_envp_803" = bitcast i8* %"$$fundef_83_envp_803_salloc" to %"$$fundef_83_env_150"*
  %"$$fundef_83_env_voidp_805" = bitcast %"$$fundef_83_env_150"* %"$$fundef_83_envp_803" to i8*
  %"$$fundef_83_cloval_806" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_83_env_150"*, %TName_Nat*)* @"$fundef_83" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_83_env_voidp_805", 1
  %"$$fundef_83_env_f_807" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %"$$fundef_83_envp_803", i32 0, i32 0
  %"$f_808" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_808", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_83_env_f_807", align 8
  %"$$fundef_83_env_n_809" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %"$$fundef_83_envp_803", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_83_env_n_809", align 8
  %"$$fundef_83_env_nat_fold_810" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %"$$fundef_83_envp_803", i32 0, i32 2
  %"$nat_fold_811" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_811", { i8*, i8* }** %"$$fundef_83_env_nat_fold_810", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_83_cloval_806", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_82", align 8
  %"$$retval_82_812" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_82", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_82_812"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_79"(%"$$fundef_79_env_152"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_79_env_nat_fold_779" = getelementptr inbounds %"$$fundef_79_env_152", %"$$fundef_79_env_152"* %0, i32 0, i32 0
  %"$nat_fold_envload_780" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_79_env_nat_fold_779", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_780", { i8*, i8* }** %nat_fold, align 8
  %"$retval_80" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_782" = icmp ugt i64 1, %"$gasrem_781"
  br i1 %"$gascmp_782", label %"$out_of_gas_783", label %"$have_gas_784"

"$out_of_gas_783":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_784"

"$have_gas_784":                                  ; preds = %"$out_of_gas_783", %entry
  %"$consume_785" = sub i64 %"$gasrem_781", 1
  store i64 %"$consume_785", i64* @_gasrem, align 8
  %"$$fundef_81_envp_786_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_81_envp_786_salloc" = call i8* @_salloc(i8* %"$$fundef_81_envp_786_load", i64 24)
  %"$$fundef_81_envp_786" = bitcast i8* %"$$fundef_81_envp_786_salloc" to %"$$fundef_81_env_151"*
  %"$$fundef_81_env_voidp_788" = bitcast %"$$fundef_81_env_151"* %"$$fundef_81_envp_786" to i8*
  %"$$fundef_81_cloval_789" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_81_env_151"*, %TName_Nat*)* @"$fundef_81" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_81_env_voidp_788", 1
  %"$$fundef_81_env_f_790" = getelementptr inbounds %"$$fundef_81_env_151", %"$$fundef_81_env_151"* %"$$fundef_81_envp_786", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_81_env_f_790", align 8
  %"$$fundef_81_env_nat_fold_791" = getelementptr inbounds %"$$fundef_81_env_151", %"$$fundef_81_env_151"* %"$$fundef_81_envp_786", i32 0, i32 1
  %"$nat_fold_792" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_792", { i8*, i8* }** %"$$fundef_81_env_nat_fold_791", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_81_cloval_789", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_80", align 8
  %"$$retval_80_793" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_80", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_80_793"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_77"(%"$$fundef_77_env_153"* %0) {
entry:
  %"$$fundef_77_env_nat_fold_765" = getelementptr inbounds %"$$fundef_77_env_153", %"$$fundef_77_env_153"* %0, i32 0, i32 0
  %"$nat_fold_envload_766" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_77_env_nat_fold_765", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_766", { i8*, i8* }** %nat_fold, align 8
  %"$retval_78" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %entry
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem, align 8
  %"$$fundef_79_envp_772_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_79_envp_772_salloc" = call i8* @_salloc(i8* %"$$fundef_79_envp_772_load", i64 8)
  %"$$fundef_79_envp_772" = bitcast i8* %"$$fundef_79_envp_772_salloc" to %"$$fundef_79_env_152"*
  %"$$fundef_79_env_voidp_774" = bitcast %"$$fundef_79_env_152"* %"$$fundef_79_envp_772" to i8*
  %"$$fundef_79_cloval_775" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_79_env_152"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_79" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_79_env_voidp_774", 1
  %"$$fundef_79_env_nat_fold_776" = getelementptr inbounds %"$$fundef_79_env_152", %"$$fundef_79_env_152"* %"$$fundef_79_envp_772", i32 0, i32 0
  %"$nat_fold_777" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_777", { i8*, i8* }** %"$$fundef_79_env_nat_fold_776", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_79_cloval_775", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_78", align 8
  %"$$retval_78_778" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_78", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_78_778"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_75"(%"$$fundef_75_env_154"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_75_env_f_749" = getelementptr inbounds %"$$fundef_75_env_154", %"$$fundef_75_env_154"* %0, i32 0, i32 0
  %"$f_envload_750" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_75_env_f_749", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_750", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_75_env_x_751" = getelementptr inbounds %"$$fundef_75_env_154", %"$$fundef_75_env_154"* %0, i32 0, i32 1
  %"$x_envload_752" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_75_env_x_751", align 8
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_752", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$retval_76" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_754" = icmp ugt i64 1, %"$gasrem_753"
  br i1 %"$gascmp_754", label %"$out_of_gas_755", label %"$have_gas_756"

"$out_of_gas_755":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_756"

"$have_gas_756":                                  ; preds = %"$out_of_gas_755", %entry
  %"$consume_757" = sub i64 %"$gasrem_753", 1
  store i64 %"$consume_757", i64* @_gasrem, align 8
  %"$f_18" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$f_758" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$f_fptr_759" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_758", 0
  %"$f_envptr_760" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_758", 1
  %"$x_761" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$f_call_762" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_759"(i8* %"$f_envptr_760", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_761")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_762", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_18", align 8
  %"$$f_18_763" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_18", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_18_763", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_76", align 8
  %"$$retval_76_764" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_76", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_76_764"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_73"(%"$$fundef_73_env_155"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_73_env_f_734" = getelementptr inbounds %"$$fundef_73_env_155", %"$$fundef_73_env_155"* %0, i32 0, i32 0
  %"$f_envload_735" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_73_env_f_734", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_735", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$retval_74" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_737" = icmp ugt i64 1, %"$gasrem_736"
  br i1 %"$gascmp_737", label %"$out_of_gas_738", label %"$have_gas_739"

"$out_of_gas_738":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_739"

"$have_gas_739":                                  ; preds = %"$out_of_gas_738", %entry
  %"$consume_740" = sub i64 %"$gasrem_736", 1
  store i64 %"$consume_740", i64* @_gasrem, align 8
  %"$$fundef_75_envp_741_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_75_envp_741_salloc" = call i8* @_salloc(i8* %"$$fundef_75_envp_741_load", i64 32)
  %"$$fundef_75_envp_741" = bitcast i8* %"$$fundef_75_envp_741_salloc" to %"$$fundef_75_env_154"*
  %"$$fundef_75_env_voidp_743" = bitcast %"$$fundef_75_env_154"* %"$$fundef_75_envp_741" to i8*
  %"$$fundef_75_cloval_744" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_75_env_154"*, %TName_Nat*)* @"$fundef_75" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_75_env_voidp_743", 1
  %"$$fundef_75_env_f_745" = getelementptr inbounds %"$$fundef_75_env_154", %"$$fundef_75_env_154"* %"$$fundef_75_envp_741", i32 0, i32 0
  %"$f_746" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_746", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_75_env_f_745", align 8
  %"$$fundef_75_env_x_747" = getelementptr inbounds %"$$fundef_75_env_154", %"$$fundef_75_env_154"* %"$$fundef_75_envp_741", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_75_env_x_747", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_75_cloval_744", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_74", align 8
  %"$$retval_74_748" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_74", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_74_748"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_71"(%"$$fundef_71_env_156"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_71_env_f_674" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %0, i32 0, i32 0
  %"$f_envload_675" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_71_env_f_674", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_675", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_71_env_n_676" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %0, i32 0, i32 1
  %"$n_envload_677" = load %TName_Nat*, %TName_Nat** %"$$fundef_71_env_n_676", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_677", %TName_Nat** %n, align 8
  %"$$fundef_71_env_nat_fold_678" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %0, i32 0, i32 2
  %"$nat_fold_envload_679" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_71_env_nat_fold_678", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_679", { i8*, i8* }** %nat_fold, align 8
  %"$retval_72" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_681" = icmp ugt i64 1, %"$gasrem_680"
  br i1 %"$gascmp_681", label %"$out_of_gas_682", label %"$have_gas_683"

"$out_of_gas_682":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_683"

"$have_gas_683":                                  ; preds = %"$out_of_gas_682", %entry
  %"$consume_684" = sub i64 %"$gasrem_680", 1
  store i64 %"$consume_684", i64* @_gasrem, align 8
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_686" = icmp ugt i64 1, %"$gasrem_685"
  br i1 %"$gascmp_686", label %"$out_of_gas_687", label %"$have_gas_688"

"$out_of_gas_687":                                ; preds = %"$have_gas_683"
  call void @_out_of_gas()
  br label %"$have_gas_688"

"$have_gas_688":                                  ; preds = %"$out_of_gas_687", %"$have_gas_683"
  %"$consume_689" = sub i64 %"$gasrem_685", 1
  store i64 %"$consume_689", i64* @_gasrem, align 8
  %"$nat_fold_690" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_691" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_690", i32 1
  %"$nat_fold_692" = bitcast { i8*, i8* }* %"$nat_fold_691" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_693" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_692", align 8
  %"$nat_fold_fptr_694" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_693", 0
  %"$nat_fold_envptr_695" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_693", 1
  %"$nat_fold_call_696" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_694"(i8* %"$nat_fold_envptr_695")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_696", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 1, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %"$have_gas_688"
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %"$have_gas_688"
  %"$consume_701" = sub i64 %"$gasrem_697", 1
  store i64 %"$consume_701", i64* @_gasrem, align 8
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_703" = icmp ugt i64 1, %"$gasrem_702"
  br i1 %"$gascmp_703", label %"$out_of_gas_704", label %"$have_gas_705"

"$out_of_gas_704":                                ; preds = %"$have_gas_700"
  call void @_out_of_gas()
  br label %"$have_gas_705"

"$have_gas_705":                                  ; preds = %"$out_of_gas_704", %"$have_gas_700"
  %"$consume_706" = sub i64 %"$gasrem_702", 1
  store i64 %"$consume_706", i64* @_gasrem, align 8
  %"$$fundef_73_envp_707_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_73_envp_707_salloc" = call i8* @_salloc(i8* %"$$fundef_73_envp_707_load", i64 16)
  %"$$fundef_73_envp_707" = bitcast i8* %"$$fundef_73_envp_707_salloc" to %"$$fundef_73_env_155"*
  %"$$fundef_73_env_voidp_709" = bitcast %"$$fundef_73_env_155"* %"$$fundef_73_envp_707" to i8*
  %"$$fundef_73_cloval_710" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_73_env_155"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_73" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_73_env_voidp_709", 1
  %"$$fundef_73_env_f_711" = getelementptr inbounds %"$$fundef_73_env_155", %"$$fundef_73_env_155"* %"$$fundef_73_envp_707", i32 0, i32 0
  %"$f_712" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_712", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_73_env_f_711", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_73_cloval_710", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$gasrem_713" = load i64, i64* @_gasrem, align 8
  %"$gascmp_714" = icmp ugt i64 1, %"$gasrem_713"
  br i1 %"$gascmp_714", label %"$out_of_gas_715", label %"$have_gas_716"

"$out_of_gas_715":                                ; preds = %"$have_gas_705"
  call void @_out_of_gas()
  br label %"$have_gas_716"

"$have_gas_716":                                  ; preds = %"$out_of_gas_715", %"$have_gas_705"
  %"$consume_717" = sub i64 %"$gasrem_713", 1
  store i64 %"$consume_717", i64* @_gasrem, align 8
  %"$folder_19" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$folder_718" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_719" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_718", 0
  %"$folder_envptr_720" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_718", 1
  %"$step_721" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$folder_call_722" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_719"(i8* %"$folder_envptr_720", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_721")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_722", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_19", align 8
  %"$folder_20" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_19_723" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_19", align 8
  %"$$folder_19_fptr_724" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_19_723", 0
  %"$$folder_19_envptr_725" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_19_723", 1
  %"$$folder_19_call_726" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_fptr_724"(i8* %"$$folder_19_envptr_725", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1)
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_call_726", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8
  %"$folder_21" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_20_727" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8
  %"$$folder_20_fptr_728" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_20_727", 0
  %"$$folder_20_envptr_729" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_20_727", 1
  %"$n_730" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_20_call_731" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_fptr_728"(i8* %"$$folder_20_envptr_729", %TName_Nat* %"$n_730")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_call_731", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_21", align 8
  %"$$folder_21_732" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_21", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_21_732", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_72", align 8
  %"$$retval_72_733" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_72", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_72_733"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_69"(%"$$fundef_69_env_157"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_69_env_f_655" = getelementptr inbounds %"$$fundef_69_env_157", %"$$fundef_69_env_157"* %0, i32 0, i32 0
  %"$f_envload_656" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_69_env_f_655", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_656", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_69_env_nat_fold_657" = getelementptr inbounds %"$$fundef_69_env_157", %"$$fundef_69_env_157"* %0, i32 0, i32 1
  %"$nat_fold_envload_658" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_69_env_nat_fold_657", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_658", { i8*, i8* }** %nat_fold, align 8
  %"$retval_70" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_660" = icmp ugt i64 1, %"$gasrem_659"
  br i1 %"$gascmp_660", label %"$out_of_gas_661", label %"$have_gas_662"

"$out_of_gas_661":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_662"

"$have_gas_662":                                  ; preds = %"$out_of_gas_661", %entry
  %"$consume_663" = sub i64 %"$gasrem_659", 1
  store i64 %"$consume_663", i64* @_gasrem, align 8
  %"$$fundef_71_envp_664_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_71_envp_664_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_664_load", i64 32)
  %"$$fundef_71_envp_664" = bitcast i8* %"$$fundef_71_envp_664_salloc" to %"$$fundef_71_env_156"*
  %"$$fundef_71_env_voidp_666" = bitcast %"$$fundef_71_env_156"* %"$$fundef_71_envp_664" to i8*
  %"$$fundef_71_cloval_667" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_71_env_156"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_71" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_71_env_voidp_666", 1
  %"$$fundef_71_env_f_668" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %"$$fundef_71_envp_664", i32 0, i32 0
  %"$f_669" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_669", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_71_env_f_668", align 8
  %"$$fundef_71_env_n_670" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %"$$fundef_71_envp_664", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_71_env_n_670", align 8
  %"$$fundef_71_env_nat_fold_671" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %"$$fundef_71_envp_664", i32 0, i32 2
  %"$nat_fold_672" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_672", { i8*, i8* }** %"$$fundef_71_env_nat_fold_671", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_71_cloval_667", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_70", align 8
  %"$$retval_70_673" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_70", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_70_673"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_67"(%"$$fundef_67_env_158"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_67_env_nat_fold_640" = getelementptr inbounds %"$$fundef_67_env_158", %"$$fundef_67_env_158"* %0, i32 0, i32 0
  %"$nat_fold_envload_641" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_nat_fold_640", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_641", { i8*, i8* }** %nat_fold, align 8
  %"$retval_68" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 1, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %entry
  %"$consume_646" = sub i64 %"$gasrem_642", 1
  store i64 %"$consume_646", i64* @_gasrem, align 8
  %"$$fundef_69_envp_647_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_69_envp_647_salloc" = call i8* @_salloc(i8* %"$$fundef_69_envp_647_load", i64 24)
  %"$$fundef_69_envp_647" = bitcast i8* %"$$fundef_69_envp_647_salloc" to %"$$fundef_69_env_157"*
  %"$$fundef_69_env_voidp_649" = bitcast %"$$fundef_69_env_157"* %"$$fundef_69_envp_647" to i8*
  %"$$fundef_69_cloval_650" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_69_env_157"*, %TName_Nat*)* @"$fundef_69" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_69_env_voidp_649", 1
  %"$$fundef_69_env_f_651" = getelementptr inbounds %"$$fundef_69_env_157", %"$$fundef_69_env_157"* %"$$fundef_69_envp_647", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_69_env_f_651", align 8
  %"$$fundef_69_env_nat_fold_652" = getelementptr inbounds %"$$fundef_69_env_157", %"$$fundef_69_env_157"* %"$$fundef_69_envp_647", i32 0, i32 1
  %"$nat_fold_653" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_653", { i8*, i8* }** %"$$fundef_69_env_nat_fold_652", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_69_cloval_650", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_68", align 8
  %"$$retval_68_654" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_68", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_68_654"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_65"(%"$$fundef_65_env_159"* %0) {
entry:
  %"$$fundef_65_env_nat_fold_626" = getelementptr inbounds %"$$fundef_65_env_159", %"$$fundef_65_env_159"* %0, i32 0, i32 0
  %"$nat_fold_envload_627" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_nat_fold_626", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_627", { i8*, i8* }** %nat_fold, align 8
  %"$retval_66" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_629" = icmp ugt i64 1, %"$gasrem_628"
  br i1 %"$gascmp_629", label %"$out_of_gas_630", label %"$have_gas_631"

"$out_of_gas_630":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_631"

"$have_gas_631":                                  ; preds = %"$out_of_gas_630", %entry
  %"$consume_632" = sub i64 %"$gasrem_628", 1
  store i64 %"$consume_632", i64* @_gasrem, align 8
  %"$$fundef_67_envp_633_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_67_envp_633_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_633_load", i64 8)
  %"$$fundef_67_envp_633" = bitcast i8* %"$$fundef_67_envp_633_salloc" to %"$$fundef_67_env_158"*
  %"$$fundef_67_env_voidp_635" = bitcast %"$$fundef_67_env_158"* %"$$fundef_67_envp_633" to i8*
  %"$$fundef_67_cloval_636" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_67_env_158"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_67" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_67_env_voidp_635", 1
  %"$$fundef_67_env_nat_fold_637" = getelementptr inbounds %"$$fundef_67_env_158", %"$$fundef_67_env_158"* %"$$fundef_67_envp_633", i32 0, i32 0
  %"$nat_fold_638" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_638", { i8*, i8* }** %"$$fundef_67_env_nat_fold_637", align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_67_cloval_636", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_66", align 8
  %"$$retval_66_639" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_66", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_66_639"
}

define internal %TName_Nat* @"$fundef_63"(%"$$fundef_63_env_160"* %0, %TName_Nat* %1) {
entry:
  %"$retval_64" = alloca %TName_Nat*, align 8
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %entry
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %"$adtval_621_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_621_salloc" = call i8* @_salloc(i8* %"$adtval_621_load", i64 9)
  %"$adtval_621" = bitcast i8* %"$adtval_621_salloc" to %CName_Succ*
  %"$adtgep_622" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_621", i32 0, i32 0
  store i8 1, i8* %"$adtgep_622", align 1
  %"$adtgep_623" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_621", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_623", align 8
  %"$adtptr_624" = bitcast %CName_Succ* %"$adtval_621" to %TName_Nat*
  store %TName_Nat* %"$adtptr_624", %TName_Nat** %"$retval_64", align 8
  %"$$retval_64_625" = load %TName_Nat*, %TName_Nat** %"$retval_64", align 8
  ret %TName_Nat* %"$$retval_64_625"
}

define internal %Uint32 @"$fundef_60"(%"$$fundef_60_env_161"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_60_env_one_int_603" = getelementptr inbounds %"$$fundef_60_env_161", %"$$fundef_60_env_161"* %0, i32 0, i32 0
  %"$one_int_envload_604" = load %Uint32, %Uint32* %"$$fundef_60_env_one_int_603", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_604", %Uint32* %one_int, align 4
  %"$$fundef_60_env_z_605" = getelementptr inbounds %"$$fundef_60_env_161", %"$$fundef_60_env_161"* %0, i32 0, i32 1
  %"$z_envload_606" = load %Uint32, %Uint32* %"$$fundef_60_env_z_605", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_606", %Uint32* %z, align 4
  %"$retval_61" = alloca %Uint32, align 8
  %"$gasrem_607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_608" = icmp ugt i64 4, %"$gasrem_607"
  br i1 %"$gascmp_608", label %"$out_of_gas_609", label %"$have_gas_610"

"$out_of_gas_609":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_610"

"$have_gas_610":                                  ; preds = %"$out_of_gas_609", %entry
  %"$consume_611" = sub i64 %"$gasrem_607", 4
  store i64 %"$consume_611", i64* @_gasrem, align 8
  %"$z_612" = load %Uint32, %Uint32* %z, align 4
  %"$one_int_613" = load %Uint32, %Uint32* %one_int, align 4
  %"$add_call_614" = call %Uint32 @_add_Uint32(%Uint32 %"$z_612", %Uint32 %"$one_int_613")
  store %Uint32 %"$add_call_614", %Uint32* %"$retval_61", align 4
  %"$$retval_61_615" = load %Uint32, %Uint32* %"$retval_61", align 4
  ret %Uint32 %"$$retval_61_615"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_58"(%"$$fundef_58_env_162"* %0, %Uint32 %1) {
entry:
  %"$$fundef_58_env_one_int_588" = getelementptr inbounds %"$$fundef_58_env_162", %"$$fundef_58_env_162"* %0, i32 0, i32 0
  %"$one_int_envload_589" = load %Uint32, %Uint32* %"$$fundef_58_env_one_int_588", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_589", %Uint32* %one_int, align 4
  %"$retval_59" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_591" = icmp ugt i64 1, %"$gasrem_590"
  br i1 %"$gascmp_591", label %"$out_of_gas_592", label %"$have_gas_593"

"$out_of_gas_592":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_593"

"$have_gas_593":                                  ; preds = %"$out_of_gas_592", %entry
  %"$consume_594" = sub i64 %"$gasrem_590", 1
  store i64 %"$consume_594", i64* @_gasrem, align 8
  %"$$fundef_60_envp_595_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_60_envp_595_salloc" = call i8* @_salloc(i8* %"$$fundef_60_envp_595_load", i64 8)
  %"$$fundef_60_envp_595" = bitcast i8* %"$$fundef_60_envp_595_salloc" to %"$$fundef_60_env_161"*
  %"$$fundef_60_env_voidp_597" = bitcast %"$$fundef_60_env_161"* %"$$fundef_60_envp_595" to i8*
  %"$$fundef_60_cloval_598" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_60_env_161"*, %TName_Nat*)* @"$fundef_60" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_60_env_voidp_597", 1
  %"$$fundef_60_env_one_int_599" = getelementptr inbounds %"$$fundef_60_env_161", %"$$fundef_60_env_161"* %"$$fundef_60_envp_595", i32 0, i32 0
  %"$one_int_600" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_600", %Uint32* %"$$fundef_60_env_one_int_599", align 4
  %"$$fundef_60_env_z_601" = getelementptr inbounds %"$$fundef_60_env_161", %"$$fundef_60_env_161"* %"$$fundef_60_envp_595", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_60_env_z_601", align 4
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_60_cloval_598", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_59", align 8
  %"$$retval_59_602" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_59", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_59_602"
}

define internal %Uint32 @"$fundef_56"(%"$$fundef_56_env_163"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_56_env_$nat_fold_6_512" = getelementptr inbounds %"$$fundef_56_env_163", %"$$fundef_56_env_163"* %0, i32 0, i32 0
  %"$$nat_fold_6_envload_513" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_56_env_$nat_fold_6_512", align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$$nat_fold_6_envload_513", { i8*, i8* }** %"$nat_fold_6", align 8
  %"$retval_57" = alloca %Uint32, align 8
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %entry
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 1, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %"$have_gas_517"
  %"$consume_523" = sub i64 %"$gasrem_519", 1
  store i64 %"$consume_523", i64* @_gasrem, align 8
  %"$$nat_fold_6_524" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  %"$$nat_fold_6_525" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$$nat_fold_6_524", i32 0
  %"$$nat_fold_6_526" = bitcast { i8*, i8* }* %"$$nat_fold_6_525" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$$nat_fold_6_527" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$$nat_fold_6_526", align 8
  %"$$nat_fold_6_fptr_528" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_527", 0
  %"$$nat_fold_6_envptr_529" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_527", 1
  %"$$nat_fold_6_call_530" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_fptr_528"(i8* %"$$nat_fold_6_envptr_529")
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_call_530", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_522"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %one_int = alloca %Uint32, align 8
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_534"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one_int, align 4
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$have_gas_539"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_544"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %"$$fundef_58_envp_551_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_58_envp_551_salloc" = call i8* @_salloc(i8* %"$$fundef_58_envp_551_load", i64 4)
  %"$$fundef_58_envp_551" = bitcast i8* %"$$fundef_58_envp_551_salloc" to %"$$fundef_58_env_162"*
  %"$$fundef_58_env_voidp_553" = bitcast %"$$fundef_58_env_162"* %"$$fundef_58_envp_551" to i8*
  %"$$fundef_58_cloval_554" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_58_env_162"*, %Uint32)* @"$fundef_58" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_58_env_voidp_553", 1
  %"$$fundef_58_env_one_int_555" = getelementptr inbounds %"$$fundef_58_env_162", %"$$fundef_58_env_162"* %"$$fundef_58_envp_551", i32 0, i32 0
  %"$one_int_556" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_556", %Uint32* %"$$fundef_58_env_one_int_555", align 4
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_58_cloval_554", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_549"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  %zero_int = alloca %Uint32, align 8
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_560"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero_int, align 4
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_565"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem, align 8
  %"$fold_15" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$fold_572" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$fold_fptr_573" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_572", 0
  %"$fold_envptr_574" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_572", 1
  %"$f_575" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$fold_call_576" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_573"(i8* %"$fold_envptr_574", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_575")
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_576", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_15", align 8
  %"$fold_16" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fold_15_577" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_15", align 8
  %"$$fold_15_fptr_578" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_15_577", 0
  %"$$fold_15_envptr_579" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_15_577", 1
  %"$zero_int_580" = load %Uint32, %Uint32* %zero_int, align 4
  %"$$fold_15_call_581" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_15_fptr_578"(i8* %"$$fold_15_envptr_579", %Uint32 %"$zero_int_580")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_15_call_581", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_16", align 8
  %"$fold_17" = alloca %Uint32, align 8
  %"$$fold_16_582" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_16", align 8
  %"$$fold_16_fptr_583" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_16_582", 0
  %"$$fold_16_envptr_584" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_16_582", 1
  %"$$fold_16_call_585" = call %Uint32 %"$$fold_16_fptr_583"(i8* %"$$fold_16_envptr_584", %TName_Nat* %1)
  store %Uint32 %"$$fold_16_call_585", %Uint32* %"$fold_17", align 4
  %"$$fold_17_586" = load %Uint32, %Uint32* %"$fold_17", align 4
  store %Uint32 %"$$fold_17_586", %Uint32* %"$retval_57", align 4
  %"$$retval_57_587" = load %Uint32, %Uint32* %"$retval_57", align 4
  ret %Uint32 %"$$retval_57_587"
}

define internal %Uint32 @"$fundef_54"(%"$$fundef_54_env_164"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_54_env_f0_447" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %0, i32 0, i32 0
  %"$f0_envload_448" = load %Uint32, %Uint32* %"$$fundef_54_env_f0_447", align 4
  %f0 = alloca %Uint32, align 8
  store %Uint32 %"$f0_envload_448", %Uint32* %f0, align 4
  %"$$fundef_54_env_fn_449" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %0, i32 0, i32 1
  %"$fn_envload_450" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_fn_449", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_450", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_54_env_g_451" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %0, i32 0, i32 2
  %"$g_envload_452" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_g_451", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_452", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_55" = alloca %Uint32, align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 2, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %entry
  %"$consume_457" = sub i64 %"$gasrem_453", 2
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$n_tag_459" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_460" = load i8, i8* %"$n_tag_459", align 1
  switch i8 %"$n_tag_460", label %"$empty_default_461" [
    i8 1, label %"$Succ_462"
    i8 0, label %"$Zero_503"
  ]

"$Succ_462":                                      ; preds = %"$have_gas_456"
  %"$n_463" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_464" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_463", i32 0, i32 1
  %"$n1_load_465" = load %TName_Nat*, %TName_Nat** %"$n1_gep_464", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_465", %TName_Nat** %n1, align 8
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$Succ_462"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$Succ_462"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_469"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  %"$fn_11" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_476" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$fn_fptr_477" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_476", 0
  %"$fn_envptr_478" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_476", 1
  %"$f0_479" = load %Uint32, %Uint32* %f0, align 4
  %"$fn_call_480" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_477"(i8* %"$fn_envptr_478", %Uint32 %"$f0_479")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_480", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_11", align 8
  %"$fn_12" = alloca %Uint32, align 8
  %"$$fn_11_481" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_11", align 8
  %"$$fn_11_fptr_482" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_11_481", 0
  %"$$fn_11_envptr_483" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_11_481", 1
  %"$n1_484" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_11_call_485" = call %Uint32 %"$$fn_11_fptr_482"(i8* %"$$fn_11_envptr_483", %TName_Nat* %"$n1_484")
  store %Uint32 %"$$fn_11_call_485", %Uint32* %"$fn_12", align 4
  %"$$fn_12_486" = load %Uint32, %Uint32* %"$fn_12", align 4
  store %Uint32 %"$$fn_12_486", %Uint32* %res, align 4
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_474"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %"$g_13" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_492" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_493" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_492", 0
  %"$g_envptr_494" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_492", 1
  %"$res_495" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_496" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_493"(i8* %"$g_envptr_494", %Uint32 %"$res_495")
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_496", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_13", align 8
  %"$g_14" = alloca %Uint32, align 8
  %"$$g_13_497" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_13", align 8
  %"$$g_13_fptr_498" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_13_497", 0
  %"$$g_13_envptr_499" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_13_497", 1
  %"$n1_500" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_13_call_501" = call %Uint32 %"$$g_13_fptr_498"(i8* %"$$g_13_envptr_499", %TName_Nat* %"$n1_500")
  store %Uint32 %"$$g_13_call_501", %Uint32* %"$g_14", align 4
  %"$$g_14_502" = load %Uint32, %Uint32* %"$g_14", align 4
  store %Uint32 %"$$g_14_502", %Uint32* %"$retval_55", align 4
  br label %"$matchsucc_458"

"$Zero_503":                                      ; preds = %"$have_gas_456"
  %"$n_504" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_506" = icmp ugt i64 1, %"$gasrem_505"
  br i1 %"$gascmp_506", label %"$out_of_gas_507", label %"$have_gas_508"

"$out_of_gas_507":                                ; preds = %"$Zero_503"
  call void @_out_of_gas()
  br label %"$have_gas_508"

"$have_gas_508":                                  ; preds = %"$out_of_gas_507", %"$Zero_503"
  %"$consume_509" = sub i64 %"$gasrem_505", 1
  store i64 %"$consume_509", i64* @_gasrem, align 8
  %"$f0_510" = load %Uint32, %Uint32* %f0, align 4
  store %Uint32 %"$f0_510", %Uint32* %"$retval_55", align 4
  br label %"$matchsucc_458"

"$empty_default_461":                             ; preds = %"$have_gas_456"
  br label %"$matchsucc_458"

"$matchsucc_458":                                 ; preds = %"$have_gas_508", %"$have_gas_490", %"$empty_default_461"
  %"$$retval_55_511" = load %Uint32, %Uint32* %"$retval_55", align 4
  ret %Uint32 %"$$retval_55_511"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_52"(%"$$fundef_52_env_165"* %0, %Uint32 %1) {
entry:
  %"$$fundef_52_env_fn_423" = getelementptr inbounds %"$$fundef_52_env_165", %"$$fundef_52_env_165"* %0, i32 0, i32 0
  %"$fn_envload_424" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_fn_423", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_424", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_52_env_g_425" = getelementptr inbounds %"$$fundef_52_env_165", %"$$fundef_52_env_165"* %0, i32 0, i32 1
  %"$g_envload_426" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_g_425", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_426", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_53" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %entry
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %"$gasrem_432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_433" = icmp ugt i64 1, %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %"$have_gas_430"
  %"$consume_436" = sub i64 %"$gasrem_432", 1
  store i64 %"$consume_436", i64* @_gasrem, align 8
  %"$$fundef_54_envp_437_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_54_envp_437_salloc" = call i8* @_salloc(i8* %"$$fundef_54_envp_437_load", i64 40)
  %"$$fundef_54_envp_437" = bitcast i8* %"$$fundef_54_envp_437_salloc" to %"$$fundef_54_env_164"*
  %"$$fundef_54_env_voidp_439" = bitcast %"$$fundef_54_env_164"* %"$$fundef_54_envp_437" to i8*
  %"$$fundef_54_cloval_440" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_54_env_164"*, %TName_Nat*)* @"$fundef_54" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_54_env_voidp_439", 1
  %"$$fundef_54_env_f0_441" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %"$$fundef_54_envp_437", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_54_env_f0_441", align 4
  %"$$fundef_54_env_fn_442" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %"$$fundef_54_envp_437", i32 0, i32 1
  %"$fn_443" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_443", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_fn_442", align 8
  %"$$fundef_54_env_g_444" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %"$$fundef_54_envp_437", i32 0, i32 2
  %"$g_445" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_445", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_g_444", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_54_cloval_440", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_53", align 8
  %"$$retval_53_446" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_53", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_53_446"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_50"(%"$$fundef_50_env_166"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_51" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %entry
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$$fundef_52_envp_414_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_52_envp_414_salloc" = call i8* @_salloc(i8* %"$$fundef_52_envp_414_load", i64 32)
  %"$$fundef_52_envp_414" = bitcast i8* %"$$fundef_52_envp_414_salloc" to %"$$fundef_52_env_165"*
  %"$$fundef_52_env_voidp_416" = bitcast %"$$fundef_52_env_165"* %"$$fundef_52_envp_414" to i8*
  %"$$fundef_52_cloval_417" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_52_env_165"*, %Uint32)* @"$fundef_52" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_52_env_voidp_416", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_52_cloval_417", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$$fundef_52_env_fn_418" = getelementptr inbounds %"$$fundef_52_env_165", %"$$fundef_52_env_165"* %"$$fundef_52_envp_414", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_fn_418", align 8
  %"$$fundef_52_env_g_419" = getelementptr inbounds %"$$fundef_52_env_165", %"$$fundef_52_env_165"* %"$$fundef_52_envp_414", i32 0, i32 1
  %"$g_420" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_420", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_g_419", align 8
  %"$g_421" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_421", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_51", align 8
  %"$$retval_51_422" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_51", align 8
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_51_422"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_48"(%"$$fundef_48_env_167"* %0) {
entry:
  %"$retval_49" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %entry
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_50_env_166"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_50" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_49", align 8
  %"$$retval_49_408" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_49", align 8
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_49_408"
}

define internal %TName_Nat* @"$fundef_46"(%"$$fundef_46_env_168"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_46_env_f0_335" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %0, i32 0, i32 0
  %"$f0_envload_336" = load %TName_Nat*, %TName_Nat** %"$$fundef_46_env_f0_335", align 8
  %f0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$f0_envload_336", %TName_Nat** %f0, align 8
  %"$$fundef_46_env_fn_337" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %0, i32 0, i32 1
  %"$fn_envload_338" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_fn_337", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_338", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_46_env_g_339" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %0, i32 0, i32 2
  %"$g_envload_340" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_g_339", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_340", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_47" = alloca %TName_Nat*, align 8
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 2, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %entry
  %"$consume_345" = sub i64 %"$gasrem_341", 2
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %"$n_tag_347" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_348" = load i8, i8* %"$n_tag_347", align 1
  switch i8 %"$n_tag_348", label %"$empty_default_349" [
    i8 1, label %"$Succ_350"
    i8 0, label %"$Zero_391"
  ]

"$Succ_350":                                      ; preds = %"$have_gas_344"
  %"$n_351" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_352" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_351", i32 0, i32 1
  %"$n1_load_353" = load %TName_Nat*, %TName_Nat** %"$n1_gep_352", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_353", %TName_Nat** %n1, align 8
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$Succ_350"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$Succ_350"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %res = alloca %TName_Nat*, align 8
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_357"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %"$fn_7" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_364" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$fn_fptr_365" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_364", 0
  %"$fn_envptr_366" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_364", 1
  %"$f0_367" = load %TName_Nat*, %TName_Nat** %f0, align 8
  %"$fn_call_368" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_365"(i8* %"$fn_envptr_366", %TName_Nat* %"$f0_367")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_368", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8
  %"$fn_8" = alloca %TName_Nat*, align 8
  %"$$fn_7_369" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8
  %"$$fn_7_fptr_370" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_369", 0
  %"$$fn_7_envptr_371" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_369", 1
  %"$n1_372" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_7_call_373" = call %TName_Nat* %"$$fn_7_fptr_370"(i8* %"$$fn_7_envptr_371", %TName_Nat* %"$n1_372")
  store %TName_Nat* %"$$fn_7_call_373", %TName_Nat** %"$fn_8", align 8
  %"$$fn_8_374" = load %TName_Nat*, %TName_Nat** %"$fn_8", align 8
  store %TName_Nat* %"$$fn_8_374", %TName_Nat** %res, align 8
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_362"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$g_9" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_380" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$g_fptr_381" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_380", 0
  %"$g_envptr_382" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_380", 1
  %"$res_383" = load %TName_Nat*, %TName_Nat** %res, align 8
  %"$g_call_384" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_381"(i8* %"$g_envptr_382", %TName_Nat* %"$res_383")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_384", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8
  %"$g_10" = alloca %TName_Nat*, align 8
  %"$$g_9_385" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8
  %"$$g_9_fptr_386" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_385", 0
  %"$$g_9_envptr_387" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_385", 1
  %"$n1_388" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_9_call_389" = call %TName_Nat* %"$$g_9_fptr_386"(i8* %"$$g_9_envptr_387", %TName_Nat* %"$n1_388")
  store %TName_Nat* %"$$g_9_call_389", %TName_Nat** %"$g_10", align 8
  %"$$g_10_390" = load %TName_Nat*, %TName_Nat** %"$g_10", align 8
  store %TName_Nat* %"$$g_10_390", %TName_Nat** %"$retval_47", align 8
  br label %"$matchsucc_346"

"$Zero_391":                                      ; preds = %"$have_gas_344"
  %"$n_392" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$Zero_391"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$Zero_391"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %"$f0_398" = load %TName_Nat*, %TName_Nat** %f0, align 8
  store %TName_Nat* %"$f0_398", %TName_Nat** %"$retval_47", align 8
  br label %"$matchsucc_346"

"$empty_default_349":                             ; preds = %"$have_gas_344"
  br label %"$matchsucc_346"

"$matchsucc_346":                                 ; preds = %"$have_gas_396", %"$have_gas_378", %"$empty_default_349"
  %"$$retval_47_399" = load %TName_Nat*, %TName_Nat** %"$retval_47", align 8
  ret %TName_Nat* %"$$retval_47_399"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_44"(%"$$fundef_44_env_169"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_44_env_fn_311" = getelementptr inbounds %"$$fundef_44_env_169", %"$$fundef_44_env_169"* %0, i32 0, i32 0
  %"$fn_envload_312" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_fn_311", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_312", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_44_env_g_313" = getelementptr inbounds %"$$fundef_44_env_169", %"$$fundef_44_env_169"* %0, i32 0, i32 1
  %"$g_envload_314" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_g_313", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_314", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_45" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %entry
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$$fundef_46_envp_325_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_46_envp_325_salloc" = call i8* @_salloc(i8* %"$$fundef_46_envp_325_load", i64 40)
  %"$$fundef_46_envp_325" = bitcast i8* %"$$fundef_46_envp_325_salloc" to %"$$fundef_46_env_168"*
  %"$$fundef_46_env_voidp_327" = bitcast %"$$fundef_46_env_168"* %"$$fundef_46_envp_325" to i8*
  %"$$fundef_46_cloval_328" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_46_env_168"*, %TName_Nat*)* @"$fundef_46" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_46_env_voidp_327", 1
  %"$$fundef_46_env_f0_329" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %"$$fundef_46_envp_325", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_46_env_f0_329", align 8
  %"$$fundef_46_env_fn_330" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %"$$fundef_46_envp_325", i32 0, i32 1
  %"$fn_331" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_331", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_fn_330", align 8
  %"$$fundef_46_env_g_332" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %"$$fundef_46_envp_325", i32 0, i32 2
  %"$g_333" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_333", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_g_332", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_46_cloval_328", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_45", align 8
  %"$$retval_45_334" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_45", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_45_334"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_42"(%"$$fundef_42_env_170"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$retval_43" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %entry
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %"$$fundef_44_envp_302_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_44_envp_302_salloc" = call i8* @_salloc(i8* %"$$fundef_44_envp_302_load", i64 32)
  %"$$fundef_44_envp_302" = bitcast i8* %"$$fundef_44_envp_302_salloc" to %"$$fundef_44_env_169"*
  %"$$fundef_44_env_voidp_304" = bitcast %"$$fundef_44_env_169"* %"$$fundef_44_envp_302" to i8*
  %"$$fundef_44_cloval_305" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_44_env_169"*, %TName_Nat*)* @"$fundef_44" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_44_env_voidp_304", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_44_cloval_305", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$$fundef_44_env_fn_306" = getelementptr inbounds %"$$fundef_44_env_169", %"$$fundef_44_env_169"* %"$$fundef_44_envp_302", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_fn_306", align 8
  %"$$fundef_44_env_g_307" = getelementptr inbounds %"$$fundef_44_env_169", %"$$fundef_44_env_169"* %"$$fundef_44_envp_302", i32 0, i32 1
  %"$g_308" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_308", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_g_307", align 8
  %"$g_309" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_309", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_43", align 8
  %"$$retval_43_310" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_43", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_43_310"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_40"(%"$$fundef_40_env_171"* %0) {
entry:
  %"$retval_41" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %entry
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_42_env_170"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_42" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_41", align 8
  %"$$retval_41_296" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_41", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_41_296"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_172"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_38_env_f0_223" = getelementptr inbounds %"$$fundef_38_env_172", %"$$fundef_38_env_172"* %0, i32 0, i32 0
  %"$f0_envload_224" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_38_env_f0_223", align 8
  %f0 = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_envload_224", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$$fundef_38_env_fn_225" = getelementptr inbounds %"$$fundef_38_env_172", %"$$fundef_38_env_172"* %0, i32 0, i32 1
  %"$fn_envload_226" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_38_env_fn_225", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_226", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_38_env_g_227" = getelementptr inbounds %"$$fundef_38_env_172", %"$$fundef_38_env_172"* %0, i32 0, i32 2
  %"$g_envload_228" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_38_env_g_227", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_228", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_39" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 2, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %entry
  %"$consume_233" = sub i64 %"$gasrem_229", 2
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %"$n_tag_235" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_236" = load i8, i8* %"$n_tag_235", align 1
  switch i8 %"$n_tag_236", label %"$empty_default_237" [
    i8 1, label %"$Succ_238"
    i8 0, label %"$Zero_279"
  ]

"$Succ_238":                                      ; preds = %"$have_gas_232"
  %"$n_239" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_240" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_239", i32 0, i32 1
  %"$n1_load_241" = load %TName_Nat*, %TName_Nat** %"$n1_gep_240", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_241", %TName_Nat** %n1, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$Succ_238"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$Succ_238"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %res = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$fn_7" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_252" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$fn_fptr_253" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_252", 0
  %"$fn_envptr_254" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_252", 1
  %"$f0_255" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  %"$fn_call_256" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_253"(i8* %"$fn_envptr_254", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_255")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_256", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8
  %"$fn_8" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fn_7_257" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8
  %"$$fn_7_fptr_258" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_7_257", 0
  %"$$fn_7_envptr_259" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_7_257", 1
  %"$n1_260" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_7_call_261" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_fptr_258"(i8* %"$$fn_7_envptr_259", %TName_Nat* %"$n1_260")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_call_261", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_8", align 8
  %"$$fn_8_262" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_8", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_8_262", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_250"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$g_9" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_268" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$g_fptr_269" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_268", 0
  %"$g_envptr_270" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_268", 1
  %"$res_271" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8
  %"$g_call_272" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_269"(i8* %"$g_envptr_270", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_271")
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_272", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8
  %"$g_10" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$g_9_273" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8
  %"$$g_9_fptr_274" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_9_273", 0
  %"$$g_9_envptr_275" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_9_273", 1
  %"$n1_276" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_9_call_277" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_fptr_274"(i8* %"$$g_9_envptr_275", %TName_Nat* %"$n1_276")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_call_277", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_10", align 8
  %"$$g_10_278" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_10", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_10_278", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_39", align 8
  br label %"$matchsucc_234"

"$Zero_279":                                      ; preds = %"$have_gas_232"
  %"$n_280" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$Zero_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$Zero_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %"$f0_286" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f0, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_286", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_39", align 8
  br label %"$matchsucc_234"

"$empty_default_237":                             ; preds = %"$have_gas_232"
  br label %"$matchsucc_234"

"$matchsucc_234":                                 ; preds = %"$have_gas_284", %"$have_gas_266", %"$empty_default_237"
  %"$$retval_39_287" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_39", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_39_287"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_173"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) {
entry:
  %"$$fundef_36_env_fn_199" = getelementptr inbounds %"$$fundef_36_env_173", %"$$fundef_36_env_173"* %0, i32 0, i32 0
  %"$fn_envload_200" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_36_env_fn_199", align 8
  %fn = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_envload_200", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  %"$$fundef_36_env_g_201" = getelementptr inbounds %"$$fundef_36_env_173", %"$$fundef_36_env_173"* %0, i32 0, i32 1
  %"$g_envload_202" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_36_env_g_201", align 8
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_envload_202", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$retval_37" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %entry
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_206"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %"$$fundef_38_envp_213_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_38_envp_213_salloc" = call i8* @_salloc(i8* %"$$fundef_38_envp_213_load", i64 48)
  %"$$fundef_38_envp_213" = bitcast i8* %"$$fundef_38_envp_213_salloc" to %"$$fundef_38_env_172"*
  %"$$fundef_38_env_voidp_215" = bitcast %"$$fundef_38_env_172"* %"$$fundef_38_envp_213" to i8*
  %"$$fundef_38_cloval_216" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_38_env_172"*, %TName_Nat*)* @"$fundef_38" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_38_env_voidp_215", 1
  %"$$fundef_38_env_f0_217" = getelementptr inbounds %"$$fundef_38_env_172", %"$$fundef_38_env_172"* %"$$fundef_38_envp_213", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_38_env_f0_217", align 8
  %"$$fundef_38_env_fn_218" = getelementptr inbounds %"$$fundef_38_env_172", %"$$fundef_38_env_172"* %"$$fundef_38_envp_213", i32 0, i32 1
  %"$fn_219" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %fn, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$fn_219", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_38_env_fn_218", align 8
  %"$$fundef_38_env_g_220" = getelementptr inbounds %"$$fundef_38_env_172", %"$$fundef_38_env_172"* %"$$fundef_38_envp_213", i32 0, i32 2
  %"$g_221" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_221", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_38_env_g_220", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_38_cloval_216", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_37", align 8
  %"$$retval_37_222" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_37", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_37_222"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_34"(%"$$fundef_34_env_174"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) {
entry:
  %"$retval_35" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %entry
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$$fundef_36_envp_190_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_36_envp_190_salloc" = call i8* @_salloc(i8* %"$$fundef_36_envp_190_load", i64 32)
  %"$$fundef_36_envp_190" = bitcast i8* %"$$fundef_36_envp_190_salloc" to %"$$fundef_36_env_173"*
  %"$$fundef_36_env_voidp_192" = bitcast %"$$fundef_36_env_173"* %"$$fundef_36_envp_190" to i8*
  %"$$fundef_36_cloval_193" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_36_env_173"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_36" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_36_env_voidp_192", 1
  %g = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_36_cloval_193", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  %"$$fundef_36_env_fn_194" = getelementptr inbounds %"$$fundef_36_env_173", %"$$fundef_36_env_173"* %"$$fundef_36_envp_190", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_36_env_fn_194", align 8
  %"$$fundef_36_env_g_195" = getelementptr inbounds %"$$fundef_36_env_173", %"$$fundef_36_env_173"* %"$$fundef_36_envp_190", i32 0, i32 1
  %"$g_196" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_196", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_36_env_g_195", align 8
  %"$g_197" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_197", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_35", align 8
  %"$$retval_35_198" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_35", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_35_198"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_32"(%"$$fundef_32_env_175"* %0) {
entry:
  %"$retval_33" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %entry
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_34_env_174"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_34" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_33", align 8
  %"$$retval_33_184" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_33", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_33_184"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  %"$gasrem_992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_993" = icmp ugt i64 4, %"$gasrem_992"
  br i1 %"$gascmp_993", label %"$out_of_gas_994", label %"$have_gas_995"

"$out_of_gas_994":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_995"

"$have_gas_995":                                  ; preds = %"$out_of_gas_994", %entry
  %"$consume_996" = sub i64 %"$gasrem_992", 4
  store i64 %"$consume_996", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_998" = icmp ugt i64 1, %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %"$have_gas_995"
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %"$have_gas_995"
  %"$consume_1001" = sub i64 %"$gasrem_997", 1
  store i64 %"$consume_1001", i64* @_gasrem, align 8
  %"$dyndisp_table_1008_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1008_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1008_salloc_load", i64 48)
  %"$dyndisp_table_1008_salloc" = bitcast i8* %"$dyndisp_table_1008_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1008" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1008_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1009" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1008", i32 1
  %"$dyndisp_pcast_1010" = bitcast { i8*, i8* }* %"$dyndisp_gep_1009" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_32_env_175"*)* @"$fundef_32" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1010", align 8
  %"$dyndisp_gep_1011" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1008", i32 2
  %"$dyndisp_pcast_1012" = bitcast { i8*, i8* }* %"$dyndisp_gep_1011" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_40_env_171"*)* @"$fundef_40" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1012", align 8
  store { i8*, i8* }* %"$dyndisp_table_1008", { i8*, i8* }** @nat_fold, align 8
  %"$gasrem_1013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1014" = icmp ugt i64 8, %"$gasrem_1013"
  br i1 %"$gascmp_1014", label %"$out_of_gas_1015", label %"$have_gas_1016"

"$out_of_gas_1015":                               ; preds = %"$have_gas_1000"
  call void @_out_of_gas()
  br label %"$have_gas_1016"

"$have_gas_1016":                                 ; preds = %"$out_of_gas_1015", %"$have_gas_1000"
  %"$consume_1017" = sub i64 %"$gasrem_1013", 8
  store i64 %"$consume_1017", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_1018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1019" = icmp ugt i64 196, %"$gasrem_1018"
  br i1 %"$gascmp_1019", label %"$out_of_gas_1020", label %"$have_gas_1021"

"$out_of_gas_1020":                               ; preds = %"$have_gas_1016"
  call void @_out_of_gas()
  br label %"$have_gas_1021"

"$have_gas_1021":                                 ; preds = %"$out_of_gas_1020", %"$have_gas_1016"
  %"$consume_1022" = sub i64 %"$gasrem_1018", 196
  store i64 %"$consume_1022", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_1023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1024" = icmp ugt i64 20, %"$gasrem_1023"
  br i1 %"$gascmp_1024", label %"$out_of_gas_1025", label %"$have_gas_1026"

"$out_of_gas_1025":                               ; preds = %"$have_gas_1021"
  call void @_out_of_gas()
  br label %"$have_gas_1026"

"$have_gas_1026":                                 ; preds = %"$out_of_gas_1025", %"$have_gas_1021"
  %"$consume_1027" = sub i64 %"$gasrem_1023", 20
  store i64 %"$consume_1027", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_1028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1029" = icmp ugt i64 11, %"$gasrem_1028"
  br i1 %"$gascmp_1029", label %"$out_of_gas_1030", label %"$have_gas_1031"

"$out_of_gas_1030":                               ; preds = %"$have_gas_1026"
  call void @_out_of_gas()
  br label %"$have_gas_1031"

"$have_gas_1031":                                 ; preds = %"$out_of_gas_1030", %"$have_gas_1026"
  %"$consume_1032" = sub i64 %"$gasrem_1028", 11
  store i64 %"$consume_1032", i64* @_gasrem, align 8
  store %Int32 { i32 11 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_1033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1034" = icmp ugt i64 1, %"$gasrem_1033"
  br i1 %"$gascmp_1034", label %"$out_of_gas_1035", label %"$have_gas_1036"

"$out_of_gas_1035":                               ; preds = %"$have_gas_1031"
  call void @_out_of_gas()
  br label %"$have_gas_1036"

"$have_gas_1036":                                 ; preds = %"$out_of_gas_1035", %"$have_gas_1031"
  %"$consume_1037" = sub i64 %"$gasrem_1033", 1
  store i64 %"$consume_1037", i64* @_gasrem, align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_1041_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1041_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1041_salloc_load", i64 48)
  %"$dyndisp_table_1041_salloc" = bitcast i8* %"$dyndisp_table_1041_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1041" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1041_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1042" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1041", i32 0
  %"$dyndisp_pcast_1043" = bitcast { i8*, i8* }* %"$dyndisp_gep_1042" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_48_env_167"*)* @"$fundef_48" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1043", align 8
  store { i8*, i8* }* %"$dyndisp_table_1041", { i8*, i8* }** %"$nat_fold_6", align 8
  %"$$fundef_56_envp_1044_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_56_envp_1044_salloc" = call i8* @_salloc(i8* %"$$fundef_56_envp_1044_load", i64 8)
  %"$$fundef_56_envp_1044" = bitcast i8* %"$$fundef_56_envp_1044_salloc" to %"$$fundef_56_env_163"*
  %"$$fundef_56_env_voidp_1046" = bitcast %"$$fundef_56_env_163"* %"$$fundef_56_envp_1044" to i8*
  %"$$fundef_56_cloval_1047" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_56_env_163"*, %TName_Nat*)* @"$fundef_56" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_56_env_voidp_1046", 1
  %"$$fundef_56_env_$nat_fold_6_1048" = getelementptr inbounds %"$$fundef_56_env_163", %"$$fundef_56_env_163"* %"$$fundef_56_envp_1044", i32 0, i32 0
  %"$$nat_fold_6_1049" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  store { i8*, i8* }* %"$$nat_fold_6_1049", { i8*, i8* }** %"$$fundef_56_env_$nat_fold_6_1048", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_56_cloval_1047", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$gasrem_1050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1051" = icmp ugt i64 2, %"$gasrem_1050"
  br i1 %"$gascmp_1051", label %"$out_of_gas_1052", label %"$have_gas_1053"

"$out_of_gas_1052":                               ; preds = %"$have_gas_1036"
  call void @_out_of_gas()
  br label %"$have_gas_1053"

"$have_gas_1053":                                 ; preds = %"$out_of_gas_1052", %"$have_gas_1036"
  %"$consume_1054" = sub i64 %"$gasrem_1050", 2
  store i64 %"$consume_1054", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_62" = alloca %Uint32, align 8
  %"$gasrem_1055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1056" = icmp ugt i64 1, %"$gasrem_1055"
  br i1 %"$gascmp_1056", label %"$out_of_gas_1057", label %"$have_gas_1058"

"$out_of_gas_1057":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1058"

"$have_gas_1058":                                 ; preds = %"$out_of_gas_1057", %entry
  %"$consume_1059" = sub i64 %"$gasrem_1055", 1
  store i64 %"$consume_1059", i64* @_gasrem, align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1061" = icmp ugt i64 1, %"$gasrem_1060"
  br i1 %"$gascmp_1061", label %"$out_of_gas_1062", label %"$have_gas_1063"

"$out_of_gas_1062":                               ; preds = %"$have_gas_1058"
  call void @_out_of_gas()
  br label %"$have_gas_1063"

"$have_gas_1063":                                 ; preds = %"$out_of_gas_1062", %"$have_gas_1058"
  %"$consume_1064" = sub i64 %"$gasrem_1060", 1
  store i64 %"$consume_1064", i64* @_gasrem, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_63_env_160"*, %TName_Nat*)* @"$fundef_63" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$gasrem_1068" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1069" = icmp ugt i64 1, %"$gasrem_1068"
  br i1 %"$gascmp_1069", label %"$out_of_gas_1070", label %"$have_gas_1071"

"$out_of_gas_1070":                               ; preds = %"$have_gas_1063"
  call void @_out_of_gas()
  br label %"$have_gas_1071"

"$have_gas_1071":                                 ; preds = %"$out_of_gas_1070", %"$have_gas_1063"
  %"$consume_1072" = sub i64 %"$gasrem_1068", 1
  store i64 %"$consume_1072", i64* @_gasrem, align 8
  %nat_iter = alloca { i8*, i8* }*, align 8
  %"$gasrem_1073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1074" = icmp ugt i64 1, %"$gasrem_1073"
  br i1 %"$gascmp_1074", label %"$out_of_gas_1075", label %"$have_gas_1076"

"$out_of_gas_1075":                               ; preds = %"$have_gas_1071"
  call void @_out_of_gas()
  br label %"$have_gas_1076"

"$have_gas_1076":                                 ; preds = %"$out_of_gas_1075", %"$have_gas_1071"
  %"$consume_1077" = sub i64 %"$gasrem_1073", 1
  store i64 %"$consume_1077", i64* @_gasrem, align 8
  %"$$fundef_65_envp_1078_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_65_envp_1078_salloc" = call i8* @_salloc(i8* %"$$fundef_65_envp_1078_load", i64 8)
  %"$$fundef_65_envp_1078" = bitcast i8* %"$$fundef_65_envp_1078_salloc" to %"$$fundef_65_env_159"*
  %"$$fundef_65_env_voidp_1080" = bitcast %"$$fundef_65_env_159"* %"$$fundef_65_envp_1078" to i8*
  %"$$fundef_65_cloval_1081" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_65_env_159"*)* @"$fundef_65" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_65_env_voidp_1080", 1
  %"$$fundef_65_env_nat_fold_1082" = getelementptr inbounds %"$$fundef_65_env_159", %"$$fundef_65_env_159"* %"$$fundef_65_envp_1078", i32 0, i32 0
  %"$nat_fold_1083" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1083", { i8*, i8* }** %"$$fundef_65_env_nat_fold_1082", align 8
  %"$$fundef_77_env_voidp_1085" = bitcast %"$$fundef_65_env_159"* %"$$fundef_65_envp_1078" to i8*
  %"$$fundef_77_cloval_1086" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_77_env_153"*)* @"$fundef_77" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_77_env_voidp_1085", 1
  %"$dyndisp_table_1087_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1087_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1087_salloc_load", i64 48)
  %"$dyndisp_table_1087_salloc" = bitcast i8* %"$dyndisp_table_1087_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1087" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1087_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1088" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1087", i32 1
  %"$dyndisp_pcast_1089" = bitcast { i8*, i8* }* %"$dyndisp_gep_1088" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_65_cloval_1081", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1089", align 8
  %"$dyndisp_gep_1090" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1087", i32 2
  %"$dyndisp_pcast_1091" = bitcast { i8*, i8* }* %"$dyndisp_gep_1090" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_77_cloval_1086", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1091", align 8
  store { i8*, i8* }* %"$dyndisp_table_1087", { i8*, i8* }** %nat_iter, align 8
  %"$gasrem_1092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1093" = icmp ugt i64 1, %"$gasrem_1092"
  br i1 %"$gascmp_1093", label %"$out_of_gas_1094", label %"$have_gas_1095"

"$out_of_gas_1094":                               ; preds = %"$have_gas_1076"
  call void @_out_of_gas()
  br label %"$have_gas_1095"

"$have_gas_1095":                                 ; preds = %"$out_of_gas_1094", %"$have_gas_1076"
  %"$consume_1096" = sub i64 %"$gasrem_1092", 1
  store i64 %"$consume_1096", i64* @_gasrem, align 8
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1098" = icmp ugt i64 1, %"$gasrem_1097"
  br i1 %"$gascmp_1098", label %"$out_of_gas_1099", label %"$have_gas_1100"

"$out_of_gas_1099":                               ; preds = %"$have_gas_1095"
  call void @_out_of_gas()
  br label %"$have_gas_1100"

"$have_gas_1100":                                 ; preds = %"$out_of_gas_1099", %"$have_gas_1095"
  %"$consume_1101" = sub i64 %"$gasrem_1097", 1
  store i64 %"$consume_1101", i64* @_gasrem, align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1103" = icmp ugt i64 1, %"$gasrem_1102"
  br i1 %"$gascmp_1103", label %"$out_of_gas_1104", label %"$have_gas_1105"

"$out_of_gas_1104":                               ; preds = %"$have_gas_1100"
  call void @_out_of_gas()
  br label %"$have_gas_1105"

"$have_gas_1105":                                 ; preds = %"$out_of_gas_1104", %"$have_gas_1100"
  %"$consume_1106" = sub i64 %"$gasrem_1102", 1
  store i64 %"$consume_1106", i64* @_gasrem, align 8
  %"$nat_iter_1107" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1108" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1107", i32 2
  %"$nat_iter_1109" = bitcast { i8*, i8* }* %"$nat_iter_1108" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1110" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1109", align 8
  %"$nat_iter_fptr_1111" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1110", 0
  %"$nat_iter_envptr_1112" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1110", 1
  %"$nat_iter_call_1113" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1111"(i8* %"$nat_iter_envptr_1112")
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1113", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$gasrem_1114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1115" = icmp ugt i64 1, %"$gasrem_1114"
  br i1 %"$gascmp_1115", label %"$out_of_gas_1116", label %"$have_gas_1117"

"$out_of_gas_1116":                               ; preds = %"$have_gas_1105"
  call void @_out_of_gas()
  br label %"$have_gas_1117"

"$have_gas_1117":                                 ; preds = %"$out_of_gas_1116", %"$have_gas_1105"
  %"$consume_1118" = sub i64 %"$gasrem_1114", 1
  store i64 %"$consume_1118", i64* @_gasrem, align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_1119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1120" = icmp ugt i64 1, %"$gasrem_1119"
  br i1 %"$gascmp_1120", label %"$out_of_gas_1121", label %"$have_gas_1122"

"$out_of_gas_1121":                               ; preds = %"$have_gas_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1122"

"$have_gas_1122":                                 ; preds = %"$out_of_gas_1121", %"$have_gas_1117"
  %"$consume_1123" = sub i64 %"$gasrem_1119", 1
  store i64 %"$consume_1123", i64* @_gasrem, align 8
  %"$nat_iter_1124" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1125" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1124", i32 1
  %"$nat_iter_1126" = bitcast { i8*, i8* }* %"$nat_iter_1125" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1127" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1126", align 8
  %"$nat_iter_fptr_1128" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1127", 0
  %"$nat_iter_envptr_1129" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1127", 1
  %"$nat_iter_call_1130" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1128"(i8* %"$nat_iter_envptr_1129")
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1130", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$gasrem_1131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1132" = icmp ugt i64 1, %"$gasrem_1131"
  br i1 %"$gascmp_1132", label %"$out_of_gas_1133", label %"$have_gas_1134"

"$out_of_gas_1133":                               ; preds = %"$have_gas_1122"
  call void @_out_of_gas()
  br label %"$have_gas_1134"

"$have_gas_1134":                                 ; preds = %"$out_of_gas_1133", %"$have_gas_1122"
  %"$consume_1135" = sub i64 %"$gasrem_1131", 1
  store i64 %"$consume_1135", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_1136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1137" = icmp ugt i64 1, %"$gasrem_1136"
  br i1 %"$gascmp_1137", label %"$out_of_gas_1138", label %"$have_gas_1139"

"$out_of_gas_1138":                               ; preds = %"$have_gas_1134"
  call void @_out_of_gas()
  br label %"$have_gas_1139"

"$have_gas_1139":                                 ; preds = %"$out_of_gas_1138", %"$have_gas_1134"
  %"$consume_1140" = sub i64 %"$gasrem_1136", 1
  store i64 %"$consume_1140", i64* @_gasrem, align 8
  %"$adtval_1141_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1141_salloc" = call i8* @_salloc(i8* %"$adtval_1141_load", i64 1)
  %"$adtval_1141" = bitcast i8* %"$adtval_1141_salloc" to %CName_Zero*
  %"$adtgep_1142" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1141", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1142", align 1
  %"$adtptr_1143" = bitcast %CName_Zero* %"$adtval_1141" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1143", %TName_Nat** %zero, align 8
  %"$gasrem_1144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1145" = icmp ugt i64 1, %"$gasrem_1144"
  br i1 %"$gascmp_1145", label %"$out_of_gas_1146", label %"$have_gas_1147"

"$out_of_gas_1146":                               ; preds = %"$have_gas_1139"
  call void @_out_of_gas()
  br label %"$have_gas_1147"

"$have_gas_1147":                                 ; preds = %"$out_of_gas_1146", %"$have_gas_1139"
  %"$consume_1148" = sub i64 %"$gasrem_1144", 1
  store i64 %"$consume_1148", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_1149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1150" = icmp ugt i64 1, %"$gasrem_1149"
  br i1 %"$gascmp_1150", label %"$out_of_gas_1151", label %"$have_gas_1152"

"$out_of_gas_1151":                               ; preds = %"$have_gas_1147"
  call void @_out_of_gas()
  br label %"$have_gas_1152"

"$have_gas_1152":                                 ; preds = %"$out_of_gas_1151", %"$have_gas_1147"
  %"$consume_1153" = sub i64 %"$gasrem_1149", 1
  store i64 %"$consume_1153", i64* @_gasrem, align 8
  %"$zero_1154" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_1155_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1155_salloc" = call i8* @_salloc(i8* %"$adtval_1155_load", i64 9)
  %"$adtval_1155" = bitcast i8* %"$adtval_1155_salloc" to %CName_Succ*
  %"$adtgep_1156" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1155", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1156", align 1
  %"$adtgep_1157" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1155", i32 0, i32 1
  store %TName_Nat* %"$zero_1154", %TName_Nat** %"$adtgep_1157", align 8
  %"$adtptr_1158" = bitcast %CName_Succ* %"$adtval_1155" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1158", %TName_Nat** %one, align 8
  %"$gasrem_1159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1160" = icmp ugt i64 1, %"$gasrem_1159"
  br i1 %"$gascmp_1160", label %"$out_of_gas_1161", label %"$have_gas_1162"

"$out_of_gas_1161":                               ; preds = %"$have_gas_1152"
  call void @_out_of_gas()
  br label %"$have_gas_1162"

"$have_gas_1162":                                 ; preds = %"$out_of_gas_1161", %"$have_gas_1152"
  %"$consume_1163" = sub i64 %"$gasrem_1159", 1
  store i64 %"$consume_1163", i64* @_gasrem, align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1165" = icmp ugt i64 1, %"$gasrem_1164"
  br i1 %"$gascmp_1165", label %"$out_of_gas_1166", label %"$have_gas_1167"

"$out_of_gas_1166":                               ; preds = %"$have_gas_1162"
  call void @_out_of_gas()
  br label %"$have_gas_1167"

"$have_gas_1167":                                 ; preds = %"$out_of_gas_1166", %"$have_gas_1162"
  %"$consume_1168" = sub i64 %"$gasrem_1164", 1
  store i64 %"$consume_1168", i64* @_gasrem, align 8
  %"$$fundef_89_envp_1169_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_89_envp_1169_salloc" = call i8* @_salloc(i8* %"$$fundef_89_envp_1169_load", i64 24)
  %"$$fundef_89_envp_1169" = bitcast i8* %"$$fundef_89_envp_1169_salloc" to %"$$fundef_89_env_147"*
  %"$$fundef_89_env_voidp_1171" = bitcast %"$$fundef_89_env_147"* %"$$fundef_89_envp_1169" to i8*
  %"$$fundef_89_cloval_1172" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_89_env_147"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_89" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_89_env_voidp_1171", 1
  %"$$fundef_89_env_iter_nat_1173" = getelementptr inbounds %"$$fundef_89_env_147", %"$$fundef_89_env_147"* %"$$fundef_89_envp_1169", i32 0, i32 0
  %"$iter_nat_1174" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1174", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_89_env_iter_nat_1173", align 8
  %"$$fundef_89_env_one_1175" = getelementptr inbounds %"$$fundef_89_env_147", %"$$fundef_89_env_147"* %"$$fundef_89_envp_1169", i32 0, i32 1
  %"$one_1176" = load %TName_Nat*, %TName_Nat** %one, align 8
  store %TName_Nat* %"$one_1176", %TName_Nat** %"$$fundef_89_env_one_1175", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_89_cloval_1172", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$gasrem_1177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1178" = icmp ugt i64 1, %"$gasrem_1177"
  br i1 %"$gascmp_1178", label %"$out_of_gas_1179", label %"$have_gas_1180"

"$out_of_gas_1179":                               ; preds = %"$have_gas_1167"
  call void @_out_of_gas()
  br label %"$have_gas_1180"

"$have_gas_1180":                                 ; preds = %"$out_of_gas_1179", %"$have_gas_1167"
  %"$consume_1181" = sub i64 %"$gasrem_1177", 1
  store i64 %"$consume_1181", i64* @_gasrem, align 8
  %"$$fundef_93_envp_1182_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_93_envp_1182_salloc" = call i8* @_salloc(i8* %"$$fundef_93_envp_1182_load", i64 48)
  %"$$fundef_93_envp_1182" = bitcast i8* %"$$fundef_93_envp_1182_salloc" to %"$$fundef_93_env_145"*
  %"$$fundef_93_env_voidp_1184" = bitcast %"$$fundef_93_env_145"* %"$$fundef_93_envp_1182" to i8*
  %"$$fundef_93_cloval_1185" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_93_env_145"*, %TName_Nat*)* @"$fundef_93" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_93_env_voidp_1184", 1
  %"$$fundef_93_env_f_1186" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %"$$fundef_93_envp_1182", i32 0, i32 0
  %"$f_1187" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1187", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_93_env_f_1186", align 8
  %"$$fundef_93_env_iter_nat_nat_1188" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %"$$fundef_93_envp_1182", i32 0, i32 1
  %"$iter_nat_nat_1189" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1189", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_93_env_iter_nat_nat_1188", align 8
  %"$$fundef_93_env_nat_succ_1190" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %"$$fundef_93_envp_1182", i32 0, i32 2
  %"$nat_succ_1191" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1191", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_93_env_nat_succ_1190", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_93_cloval_1185", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$gasrem_1192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1193" = icmp ugt i64 1, %"$gasrem_1192"
  br i1 %"$gascmp_1193", label %"$out_of_gas_1194", label %"$have_gas_1195"

"$out_of_gas_1194":                               ; preds = %"$have_gas_1180"
  call void @_out_of_gas()
  br label %"$have_gas_1195"

"$have_gas_1195":                                 ; preds = %"$out_of_gas_1194", %"$have_gas_1180"
  %"$consume_1196" = sub i64 %"$gasrem_1192", 1
  store i64 %"$consume_1196", i64* @_gasrem, align 8
  %uintM = alloca %Uint32, align 8
  %"$gasrem_1197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1198" = icmp ugt i64 1, %"$gasrem_1197"
  br i1 %"$gascmp_1198", label %"$out_of_gas_1199", label %"$have_gas_1200"

"$out_of_gas_1199":                               ; preds = %"$have_gas_1195"
  call void @_out_of_gas()
  br label %"$have_gas_1200"

"$have_gas_1200":                                 ; preds = %"$out_of_gas_1199", %"$have_gas_1195"
  %"$consume_1201" = sub i64 %"$gasrem_1197", 1
  store i64 %"$consume_1201", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %uintM, align 4
  %"$gasrem_1202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1203" = icmp ugt i64 1, %"$gasrem_1202"
  br i1 %"$gascmp_1203", label %"$out_of_gas_1204", label %"$have_gas_1205"

"$out_of_gas_1204":                               ; preds = %"$have_gas_1200"
  call void @_out_of_gas()
  br label %"$have_gas_1205"

"$have_gas_1205":                                 ; preds = %"$out_of_gas_1204", %"$have_gas_1200"
  %"$consume_1206" = sub i64 %"$gasrem_1202", 1
  store i64 %"$consume_1206", i64* @_gasrem, align 8
  %uintN = alloca %Uint32, align 8
  %"$gasrem_1207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1208" = icmp ugt i64 1, %"$gasrem_1207"
  br i1 %"$gascmp_1208", label %"$out_of_gas_1209", label %"$have_gas_1210"

"$out_of_gas_1209":                               ; preds = %"$have_gas_1205"
  call void @_out_of_gas()
  br label %"$have_gas_1210"

"$have_gas_1210":                                 ; preds = %"$out_of_gas_1209", %"$have_gas_1205"
  %"$consume_1211" = sub i64 %"$gasrem_1207", 1
  store i64 %"$consume_1211", i64* @_gasrem, align 8
  store %Uint32 { i32 7 }, %Uint32* %uintN, align 4
  %"$gasrem_1212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1213" = icmp ugt i64 1, %"$gasrem_1212"
  br i1 %"$gascmp_1213", label %"$out_of_gas_1214", label %"$have_gas_1215"

"$out_of_gas_1214":                               ; preds = %"$have_gas_1210"
  call void @_out_of_gas()
  br label %"$have_gas_1215"

"$have_gas_1215":                                 ; preds = %"$out_of_gas_1214", %"$have_gas_1210"
  %"$consume_1216" = sub i64 %"$gasrem_1212", 1
  store i64 %"$consume_1216", i64* @_gasrem, align 8
  %m = alloca %TName_Nat*, align 8
  %"$uintM_1217" = load %Uint32, %Uint32* %uintM, align 4
  %"$valueof_1218" = extractvalue %Uint32 %"$uintM_1217", 0
  %"$valueof_1219" = zext i32 %"$valueof_1218" to i64
  %"$gasrem_1220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1221" = icmp ugt i64 %"$valueof_1219", %"$gasrem_1220"
  br i1 %"$gascmp_1221", label %"$out_of_gas_1222", label %"$have_gas_1223"

"$out_of_gas_1222":                               ; preds = %"$have_gas_1215"
  call void @_out_of_gas()
  br label %"$have_gas_1223"

"$have_gas_1223":                                 ; preds = %"$out_of_gas_1222", %"$have_gas_1215"
  %"$consume_1224" = sub i64 %"$gasrem_1220", %"$valueof_1219"
  store i64 %"$consume_1224", i64* @_gasrem, align 8
  %"$execptr_load_1225" = load i8*, i8** @_execptr, align 8
  %"$uintM_1226" = load %Uint32, %Uint32* %uintM, align 4
  %"$to_nat_call_1227" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1225", %Uint32 %"$uintM_1226")
  store %TName_Nat* %"$to_nat_call_1227", %TName_Nat** %m, align 8
  %"$gasrem_1229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1230" = icmp ugt i64 1, %"$gasrem_1229"
  br i1 %"$gascmp_1230", label %"$out_of_gas_1231", label %"$have_gas_1232"

"$out_of_gas_1231":                               ; preds = %"$have_gas_1223"
  call void @_out_of_gas()
  br label %"$have_gas_1232"

"$have_gas_1232":                                 ; preds = %"$out_of_gas_1231", %"$have_gas_1223"
  %"$consume_1233" = sub i64 %"$gasrem_1229", 1
  store i64 %"$consume_1233", i64* @_gasrem, align 8
  %n = alloca %TName_Nat*, align 8
  %"$uintN_1234" = load %Uint32, %Uint32* %uintN, align 4
  %"$valueof_1235" = extractvalue %Uint32 %"$uintN_1234", 0
  %"$valueof_1236" = zext i32 %"$valueof_1235" to i64
  %"$gasrem_1237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1238" = icmp ugt i64 %"$valueof_1236", %"$gasrem_1237"
  br i1 %"$gascmp_1238", label %"$out_of_gas_1239", label %"$have_gas_1240"

"$out_of_gas_1239":                               ; preds = %"$have_gas_1232"
  call void @_out_of_gas()
  br label %"$have_gas_1240"

"$have_gas_1240":                                 ; preds = %"$out_of_gas_1239", %"$have_gas_1232"
  %"$consume_1241" = sub i64 %"$gasrem_1237", %"$valueof_1236"
  store i64 %"$consume_1241", i64* @_gasrem, align 8
  %"$execptr_load_1242" = load i8*, i8** @_execptr, align 8
  %"$uintN_1243" = load %Uint32, %Uint32* %uintN, align 4
  %"$to_nat_call_1244" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1242", %Uint32 %"$uintN_1243")
  store %TName_Nat* %"$to_nat_call_1244", %TName_Nat** %n, align 8
  %"$gasrem_1246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1247" = icmp ugt i64 1, %"$gasrem_1246"
  br i1 %"$gascmp_1247", label %"$out_of_gas_1248", label %"$have_gas_1249"

"$out_of_gas_1248":                               ; preds = %"$have_gas_1240"
  call void @_out_of_gas()
  br label %"$have_gas_1249"

"$have_gas_1249":                                 ; preds = %"$out_of_gas_1248", %"$have_gas_1240"
  %"$consume_1250" = sub i64 %"$gasrem_1246", 1
  store i64 %"$consume_1250", i64* @_gasrem, align 8
  %ack00 = alloca %TName_Nat*, align 8
  %"$gasrem_1251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1252" = icmp ugt i64 1, %"$gasrem_1251"
  br i1 %"$gascmp_1252", label %"$out_of_gas_1253", label %"$have_gas_1254"

"$out_of_gas_1253":                               ; preds = %"$have_gas_1249"
  call void @_out_of_gas()
  br label %"$have_gas_1254"

"$have_gas_1254":                                 ; preds = %"$out_of_gas_1253", %"$have_gas_1249"
  %"$consume_1255" = sub i64 %"$gasrem_1251", 1
  store i64 %"$consume_1255", i64* @_gasrem, align 8
  %"$ackermann_29" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1256" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1257" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1256", 0
  %"$ackermann_envptr_1258" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1256", 1
  %"$m_1259" = load %TName_Nat*, %TName_Nat** %m, align 8
  %"$ackermann_call_1260" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1257"(i8* %"$ackermann_envptr_1258", %TName_Nat* %"$m_1259")
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1260", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_29", align 8
  %"$ackermann_30" = alloca %TName_Nat*, align 8
  %"$$ackermann_29_1261" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_29", align 8
  %"$$ackermann_29_fptr_1262" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_29_1261", 0
  %"$$ackermann_29_envptr_1263" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_29_1261", 1
  %"$n_1264" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$ackermann_29_call_1265" = call %TName_Nat* %"$$ackermann_29_fptr_1262"(i8* %"$$ackermann_29_envptr_1263", %TName_Nat* %"$n_1264")
  store %TName_Nat* %"$$ackermann_29_call_1265", %TName_Nat** %"$ackermann_30", align 8
  %"$$ackermann_30_1266" = load %TName_Nat*, %TName_Nat** %"$ackermann_30", align 8
  store %TName_Nat* %"$$ackermann_30_1266", %TName_Nat** %ack00, align 8
  %"$gasrem_1267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1268" = icmp ugt i64 1, %"$gasrem_1267"
  br i1 %"$gascmp_1268", label %"$out_of_gas_1269", label %"$have_gas_1270"

"$out_of_gas_1269":                               ; preds = %"$have_gas_1254"
  call void @_out_of_gas()
  br label %"$have_gas_1270"

"$have_gas_1270":                                 ; preds = %"$out_of_gas_1269", %"$have_gas_1254"
  %"$consume_1271" = sub i64 %"$gasrem_1267", 1
  store i64 %"$consume_1271", i64* @_gasrem, align 8
  %int01 = alloca %Uint32, align 8
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 1, %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$have_gas_1270"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$have_gas_1270"
  %"$consume_1276" = sub i64 %"$gasrem_1272", 1
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_31" = alloca %Uint32, align 8
  %"$NatUtils.nat_to_int_1277" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1278" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1277", 0
  %"$NatUtils.nat_to_int_envptr_1279" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1277", 1
  %"$ack00_1280" = load %TName_Nat*, %TName_Nat** %ack00, align 8
  %"$NatUtils.nat_to_int_call_1281" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1278"(i8* %"$NatUtils.nat_to_int_envptr_1279", %TName_Nat* %"$ack00_1280")
  store %Uint32 %"$NatUtils.nat_to_int_call_1281", %Uint32* %"$NatUtils.nat_to_int_31", align 4
  %"$$NatUtils.nat_to_int_31_1282" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_31", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_31_1282", %Uint32* %int01, align 4
  %"$gasrem_1283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1284" = icmp ugt i64 1, %"$gasrem_1283"
  br i1 %"$gascmp_1284", label %"$out_of_gas_1285", label %"$have_gas_1286"

"$out_of_gas_1285":                               ; preds = %"$have_gas_1275"
  call void @_out_of_gas()
  br label %"$have_gas_1286"

"$have_gas_1286":                                 ; preds = %"$out_of_gas_1285", %"$have_gas_1275"
  %"$consume_1287" = sub i64 %"$gasrem_1283", 1
  store i64 %"$consume_1287", i64* @_gasrem, align 8
  %"$int01_1288" = load %Uint32, %Uint32* %int01, align 4
  store %Uint32 %"$int01_1288", %Uint32* %"$expr_62", align 4
  %"$$expr_62_1289" = load %Uint32, %Uint32* %"$expr_62", align 4
  ret %Uint32 %"$$expr_62_1289"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1290" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1291" = alloca %Uint32, align 8
  %"$memvoidcast_1292" = bitcast %Uint32* %"$pval_1291" to i8*
  store %Uint32 %"$exprval_1290", %Uint32* %"$pval_1291", align 4
  %"$execptr_load_1293" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1293", %_TyDescrTy_Typ* @"$TyDescr_Uint32_99", i8* %"$memvoidcast_1292")
  ret void
}
