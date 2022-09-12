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
%"$TyDescrTy_ADTTyp_127" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_126"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_126" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_128"**, %"$TyDescrTy_ADTTyp_127"* }
%"$TyDescrTy_ADTTyp_Constr_128" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>
%"$ParamDescr_1311" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1312" = type { %ParamDescrString, i32, %"$ParamDescr_1311"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_1311"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1312"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_93"(%"$$fundef_93_env_145"* %0, %TName_Nat* %1) !dbg !3 {
entry:
  %"$n_1008" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_1008", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_1008", metadata !8, metadata !DIExpression()), !dbg !11
  %"$$fundef_93_env_f_981" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %0, i32 0, i32 0
  %"$f_envload_982" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_93_env_f_981", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_982", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_93_env_iter_nat_nat_983" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %0, i32 0, i32 1
  %"$iter_nat_nat_envload_984" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_93_env_iter_nat_nat_983", align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_envload_984", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$$fundef_93_env_nat_succ_985" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %0, i32 0, i32 2
  %"$nat_succ_envload_986" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_93_env_nat_succ_985", align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_envload_986", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$retval_94" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_988" = icmp ugt i64 1, %"$gasrem_987"
  br i1 %"$gascmp_988", label %"$out_of_gas_989", label %"$have_gas_990"

"$out_of_gas_989":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_990"

"$have_gas_990":                                  ; preds = %"$out_of_gas_989", %entry
  %"$consume_991" = sub i64 %"$gasrem_987", 1
  store i64 %"$consume_991", i64* @_gasrem, align 8
  %"$iter_nat_nat_26" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_nat_992" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  %"$iter_nat_nat_fptr_993" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_992", 0
  %"$iter_nat_nat_envptr_994" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_992", 1
  %"$f_995" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$iter_nat_nat_call_996" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_fptr_993"(i8* %"$iter_nat_nat_envptr_994", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_995"), !dbg !12
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_nat_call_996", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_26", align 8, !dbg !12
  %"$iter_nat_nat_27" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$$iter_nat_nat_26_997" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_26", align 8
  %"$$iter_nat_nat_26_fptr_998" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_26_997", 0
  %"$$iter_nat_nat_26_envptr_999" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_26_997", 1
  %"$$iter_nat_nat_26_call_1000" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_26_fptr_998"(i8* %"$$iter_nat_nat_26_envptr_999", %TName_Nat* %1), !dbg !12
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_26_call_1000", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_27", align 8, !dbg !12
  %"$iter_nat_nat_28" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_nat_27_1001" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$iter_nat_nat_27", align 8
  %"$$iter_nat_nat_27_fptr_1002" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_27_1001", 0
  %"$$iter_nat_nat_27_envptr_1003" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$iter_nat_nat_27_1001", 1
  %"$nat_succ_1004" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  %"$$iter_nat_nat_27_call_1005" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_27_fptr_1002"(i8* %"$$iter_nat_nat_27_envptr_1003", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1004"), !dbg !12
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_27_call_1005", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_28", align 8, !dbg !12
  %"$$iter_nat_nat_28_1006" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_nat_28", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_nat_28_1006", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_94", align 8, !dbg !12
  %"$$retval_94_1007" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_94", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_94_1007"
}

define internal %TName_Nat* @"$fundef_91"(%"$$fundef_91_env_146"* %0, %TName_Nat* %1) !dbg !13 {
entry:
  %"$n_980" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_980", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_980", metadata !14, metadata !DIExpression()), !dbg !15
  %"$$fundef_91_env_ack_953" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %0, i32 0, i32 0
  %"$ack_envload_954" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_91_env_ack_953", align 8
  %ack = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_envload_954", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$$fundef_91_env_iter_nat_955" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %0, i32 0, i32 1
  %"$iter_nat_envload_956" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_91_env_iter_nat_955", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_956", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_91_env_x0_957" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %0, i32 0, i32 2
  %"$x0_envload_958" = load %TName_Nat*, %TName_Nat** %"$$fundef_91_env_x0_957", align 8
  %x0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x0_envload_958", %TName_Nat** %x0, align 8
  %"$retval_92" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$retval_92", metadata !16, metadata !DIExpression()), !dbg !17
  %"$gasrem_959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_960" = icmp ugt i64 1, %"$gasrem_959"
  br i1 %"$gascmp_960", label %"$out_of_gas_961", label %"$have_gas_962"

"$out_of_gas_961":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_962"

"$have_gas_962":                                  ; preds = %"$out_of_gas_961", %entry
  %"$consume_963" = sub i64 %"$gasrem_959", 1
  store i64 %"$consume_963", i64* @_gasrem, align 8
  %"$iter_nat_23" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$iter_nat_964" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$iter_nat_fptr_965" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_964", 0
  %"$iter_nat_envptr_966" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_964", 1
  %"$ack_967" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %ack, align 8
  %"$iter_nat_call_968" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_fptr_965"(i8* %"$iter_nat_envptr_966", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ack_967"), !dbg !17
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$iter_nat_call_968", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_23", align 8, !dbg !17
  %"$iter_nat_24" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$iter_nat_23_969" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_23", align 8
  %"$$iter_nat_23_fptr_970" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_969", 0
  %"$$iter_nat_23_envptr_971" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_969", 1
  %"$$iter_nat_23_call_972" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_fptr_970"(i8* %"$$iter_nat_23_envptr_971", %TName_Nat* %1), !dbg !17
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_23_call_972", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_24", align 8, !dbg !17
  %"$iter_nat_25" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$iter_nat_25", metadata !18, metadata !DIExpression()), !dbg !17
  %"$$iter_nat_24_973" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$iter_nat_24", align 8
  %"$$iter_nat_24_fptr_974" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_24_973", 0
  %"$$iter_nat_24_envptr_975" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$iter_nat_24_973", 1
  %"$x0_976" = load %TName_Nat*, %TName_Nat** %x0, align 8
  %"$$iter_nat_24_call_977" = call %TName_Nat* %"$$iter_nat_24_fptr_974"(i8* %"$$iter_nat_24_envptr_975", %TName_Nat* %"$x0_976"), !dbg !17
  store %TName_Nat* %"$$iter_nat_24_call_977", %TName_Nat** %"$iter_nat_25", align 8, !dbg !17
  %"$$iter_nat_25_978" = load %TName_Nat*, %TName_Nat** %"$iter_nat_25", align 8
  store %TName_Nat* %"$$iter_nat_25_978", %TName_Nat** %"$retval_92", align 8, !dbg !17
  %"$$retval_92_979" = load %TName_Nat*, %TName_Nat** %"$retval_92", align 8
  ret %TName_Nat* %"$$retval_92_979"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_89"(%"$$fundef_89_env_147"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !19 {
entry:
  %"$$fundef_89_env_iter_nat_919" = getelementptr inbounds %"$$fundef_89_env_147", %"$$fundef_89_env_147"* %0, i32 0, i32 0
  %"$iter_nat_envload_920" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_89_env_iter_nat_919", align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_envload_920", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  %"$$fundef_89_env_one_921" = getelementptr inbounds %"$$fundef_89_env_147", %"$$fundef_89_env_147"* %0, i32 0, i32 1
  %"$one_envload_922" = load %TName_Nat*, %TName_Nat** %"$$fundef_89_env_one_921", align 8
  %one = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$one_envload_922", %TName_Nat** %one, align 8
  %"$retval_90" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_924" = icmp ugt i64 1, %"$gasrem_923"
  br i1 %"$gascmp_924", label %"$out_of_gas_925", label %"$have_gas_926"

"$out_of_gas_925":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_926"

"$have_gas_926":                                  ; preds = %"$out_of_gas_925", %entry
  %"$consume_927" = sub i64 %"$gasrem_923", 1
  store i64 %"$consume_927", i64* @_gasrem, align 8
  %x0 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %x0, metadata !20, metadata !DIExpression()), !dbg !21
  %"$gasrem_928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_929" = icmp ugt i64 1, %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %"$have_gas_926"
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %"$have_gas_926"
  %"$consume_932" = sub i64 %"$gasrem_928", 1
  store i64 %"$consume_932", i64* @_gasrem, align 8
  %"$ack_22" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ack_22", metadata !22, metadata !DIExpression()), !dbg !23
  %"$ack_fptr_933" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 0
  %"$ack_envptr_934" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, 1
  %"$one_935" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$ack_call_936" = call %TName_Nat* %"$ack_fptr_933"(i8* %"$ack_envptr_934", %TName_Nat* %"$one_935"), !dbg !23
  store %TName_Nat* %"$ack_call_936", %TName_Nat** %"$ack_22", align 8, !dbg !23
  %"$$ack_22_937" = load %TName_Nat*, %TName_Nat** %"$ack_22", align 8
  store %TName_Nat* %"$$ack_22_937", %TName_Nat** %x0, align 8, !dbg !23
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_931"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_931"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %"$$fundef_91_envp_943_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_91_envp_943_salloc" = call i8* @_salloc(i8* %"$$fundef_91_envp_943_load", i64 40)
  %"$$fundef_91_envp_943" = bitcast i8* %"$$fundef_91_envp_943_salloc" to %"$$fundef_91_env_146"*
  %"$$fundef_91_env_voidp_945" = bitcast %"$$fundef_91_env_146"* %"$$fundef_91_envp_943" to i8*
  %"$$fundef_91_cloval_946" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_91_env_146"*, %TName_Nat*)* @"$fundef_91" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_91_env_voidp_945", 1
  %"$$fundef_91_env_ack_947" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %"$$fundef_91_envp_943", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_91_env_ack_947", align 8
  %"$$fundef_91_env_iter_nat_948" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %"$$fundef_91_envp_943", i32 0, i32 1
  %"$iter_nat_949" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_949", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_91_env_iter_nat_948", align 8
  %"$$fundef_91_env_x0_950" = getelementptr inbounds %"$$fundef_91_env_146", %"$$fundef_91_env_146"* %"$$fundef_91_envp_943", i32 0, i32 2
  %"$x0_951" = load %TName_Nat*, %TName_Nat** %x0, align 8
  store %TName_Nat* %"$x0_951", %TName_Nat** %"$$fundef_91_env_x0_950", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_91_cloval_946", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_90", align 8, !dbg !24
  %"$$retval_90_952" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_90", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_90_952"
}

define internal %TName_Nat* @"$fundef_87"(%"$$fundef_87_env_148"* %0, %TName_Nat* %1) !dbg !25 {
entry:
  %"$unused_918" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$unused_918", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$unused_918", metadata !26, metadata !DIExpression()), !dbg !27
  %"$$fundef_87_env_f_902" = getelementptr inbounds %"$$fundef_87_env_148", %"$$fundef_87_env_148"* %0, i32 0, i32 0
  %"$f_envload_903" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_87_env_f_902", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_903", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_87_env_x_904" = getelementptr inbounds %"$$fundef_87_env_148", %"$$fundef_87_env_148"* %0, i32 0, i32 1
  %"$x_envload_905" = load %TName_Nat*, %TName_Nat** %"$$fundef_87_env_x_904", align 8
  %x = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$x_envload_905", %TName_Nat** %x, align 8
  %"$retval_88" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$retval_88", metadata !28, metadata !DIExpression()), !dbg !29
  %"$gasrem_906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_907" = icmp ugt i64 1, %"$gasrem_906"
  br i1 %"$gascmp_907", label %"$out_of_gas_908", label %"$have_gas_909"

"$out_of_gas_908":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_909"

"$have_gas_909":                                  ; preds = %"$out_of_gas_908", %entry
  %"$consume_910" = sub i64 %"$gasrem_906", 1
  store i64 %"$consume_910", i64* @_gasrem, align 8
  %"$f_18" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$f_18", metadata !30, metadata !DIExpression()), !dbg !29
  %"$f_911" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$f_fptr_912" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_911", 0
  %"$f_envptr_913" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_911", 1
  %"$x_914" = load %TName_Nat*, %TName_Nat** %x, align 8
  %"$f_call_915" = call %TName_Nat* %"$f_fptr_912"(i8* %"$f_envptr_913", %TName_Nat* %"$x_914"), !dbg !29
  store %TName_Nat* %"$f_call_915", %TName_Nat** %"$f_18", align 8, !dbg !29
  %"$$f_18_916" = load %TName_Nat*, %TName_Nat** %"$f_18", align 8
  store %TName_Nat* %"$$f_18_916", %TName_Nat** %"$retval_88", align 8, !dbg !29
  %"$$retval_88_917" = load %TName_Nat*, %TName_Nat** %"$retval_88", align 8
  ret %TName_Nat* %"$$retval_88_917"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_85"(%"$$fundef_85_env_149"* %0, %TName_Nat* %1) !dbg !31 {
entry:
  %"$x_901" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$x_901", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$x_901", metadata !32, metadata !DIExpression()), !dbg !33
  %"$$fundef_85_env_f_886" = getelementptr inbounds %"$$fundef_85_env_149", %"$$fundef_85_env_149"* %0, i32 0, i32 0
  %"$f_envload_887" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_85_env_f_886", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_887", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$retval_86" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 1, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %entry
  %"$consume_892" = sub i64 %"$gasrem_888", 1
  store i64 %"$consume_892", i64* @_gasrem, align 8
  %"$$fundef_87_envp_893_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_87_envp_893_salloc" = call i8* @_salloc(i8* %"$$fundef_87_envp_893_load", i64 24)
  %"$$fundef_87_envp_893" = bitcast i8* %"$$fundef_87_envp_893_salloc" to %"$$fundef_87_env_148"*
  %"$$fundef_87_env_voidp_895" = bitcast %"$$fundef_87_env_148"* %"$$fundef_87_envp_893" to i8*
  %"$$fundef_87_cloval_896" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_87_env_148"*, %TName_Nat*)* @"$fundef_87" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_87_env_voidp_895", 1
  %"$$fundef_87_env_f_897" = getelementptr inbounds %"$$fundef_87_env_148", %"$$fundef_87_env_148"* %"$$fundef_87_envp_893", i32 0, i32 0
  %"$f_898" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_898", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_87_env_f_897", align 8
  %"$$fundef_87_env_x_899" = getelementptr inbounds %"$$fundef_87_env_148", %"$$fundef_87_env_148"* %"$$fundef_87_envp_893", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_87_env_x_899", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_87_cloval_896", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_86", align 8, !dbg !34
  %"$$retval_86_900" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_86", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_86_900"
}

define internal %TName_Nat* @"$fundef_83"(%"$$fundef_83_env_150"* %0, %TName_Nat* %1) !dbg !35 {
entry:
  %"$x0_885" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$x0_885", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$x0_885", metadata !36, metadata !DIExpression()), !dbg !37
  %"$$fundef_83_env_f_825" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %0, i32 0, i32 0
  %"$f_envload_826" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_83_env_f_825", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_826", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_83_env_n_827" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %0, i32 0, i32 1
  %"$n_envload_828" = load %TName_Nat*, %TName_Nat** %"$$fundef_83_env_n_827", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_828", %TName_Nat** %n, align 8
  %"$$fundef_83_env_nat_fold_829" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %0, i32 0, i32 2
  %"$nat_fold_envload_830" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_83_env_nat_fold_829", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_830", { i8*, i8* }** %nat_fold, align 8
  %"$retval_84" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$retval_84", metadata !38, metadata !DIExpression()), !dbg !39
  %"$gasrem_831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_832" = icmp ugt i64 1, %"$gasrem_831"
  br i1 %"$gascmp_832", label %"$out_of_gas_833", label %"$have_gas_834"

"$out_of_gas_833":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_834"

"$have_gas_834":                                  ; preds = %"$out_of_gas_833", %entry
  %"$consume_835" = sub i64 %"$gasrem_831", 1
  store i64 %"$consume_835", i64* @_gasrem, align 8
  %folder = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 1, %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %"$have_gas_834"
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %"$have_gas_834"
  %"$consume_840" = sub i64 %"$gasrem_836", 1
  store i64 %"$consume_840", i64* @_gasrem, align 8
  %"$nat_fold_841" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_842" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_841", i32 2
  %"$nat_fold_843" = bitcast { i8*, i8* }* %"$nat_fold_842" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_844" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_843", align 8
  %"$nat_fold_fptr_845" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_844", 0
  %"$nat_fold_envptr_846" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_844", 1
  %"$nat_fold_call_847" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_fptr_845"(i8* %"$nat_fold_envptr_846"), !dbg !40
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_fold_call_847", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8, !dbg !41
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 1, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %"$have_gas_839"
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %"$have_gas_839"
  %"$consume_852" = sub i64 %"$gasrem_848", 1
  store i64 %"$consume_852", i64* @_gasrem, align 8
  %step = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 1, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$have_gas_851"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$have_gas_851"
  %"$consume_857" = sub i64 %"$gasrem_853", 1
  store i64 %"$consume_857", i64* @_gasrem, align 8
  %"$$fundef_85_envp_858_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_85_envp_858_salloc" = call i8* @_salloc(i8* %"$$fundef_85_envp_858_load", i64 16)
  %"$$fundef_85_envp_858" = bitcast i8* %"$$fundef_85_envp_858_salloc" to %"$$fundef_85_env_149"*
  %"$$fundef_85_env_voidp_860" = bitcast %"$$fundef_85_env_149"* %"$$fundef_85_envp_858" to i8*
  %"$$fundef_85_cloval_861" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_85_env_149"*, %TName_Nat*)* @"$fundef_85" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_85_env_voidp_860", 1
  %"$$fundef_85_env_f_862" = getelementptr inbounds %"$$fundef_85_env_149", %"$$fundef_85_env_149"* %"$$fundef_85_envp_858", i32 0, i32 0
  %"$f_863" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_863", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_85_env_f_862", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_85_cloval_861", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8, !dbg !42
  %"$gasrem_864" = load i64, i64* @_gasrem, align 8
  %"$gascmp_865" = icmp ugt i64 1, %"$gasrem_864"
  br i1 %"$gascmp_865", label %"$out_of_gas_866", label %"$have_gas_867"

"$out_of_gas_866":                                ; preds = %"$have_gas_856"
  call void @_out_of_gas()
  br label %"$have_gas_867"

"$have_gas_867":                                  ; preds = %"$out_of_gas_866", %"$have_gas_856"
  %"$consume_868" = sub i64 %"$gasrem_864", 1
  store i64 %"$consume_868", i64* @_gasrem, align 8
  %"$folder_19" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$folder_869" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_870" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_869", 0
  %"$folder_envptr_871" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_869", 1
  %"$step_872" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %step, align 8
  %"$folder_call_873" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_fptr_870"(i8* %"$folder_envptr_871", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$step_872"), !dbg !43
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$folder_call_873", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_19", align 8, !dbg !43
  %"$folder_20" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_19_874" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_19", align 8
  %"$$folder_19_fptr_875" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_874", 0
  %"$$folder_19_envptr_876" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_874", 1
  %"$$folder_19_call_877" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_19_fptr_875"(i8* %"$$folder_19_envptr_876", %TName_Nat* %1), !dbg !43
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_19_call_877", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8, !dbg !43
  %"$folder_21" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$folder_21", metadata !44, metadata !DIExpression()), !dbg !43
  %"$$folder_20_878" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8
  %"$$folder_20_fptr_879" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_878", 0
  %"$$folder_20_envptr_880" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_878", 1
  %"$n_881" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_20_call_882" = call %TName_Nat* %"$$folder_20_fptr_879"(i8* %"$$folder_20_envptr_880", %TName_Nat* %"$n_881"), !dbg !43
  store %TName_Nat* %"$$folder_20_call_882", %TName_Nat** %"$folder_21", align 8, !dbg !43
  %"$$folder_21_883" = load %TName_Nat*, %TName_Nat** %"$folder_21", align 8
  store %TName_Nat* %"$$folder_21_883", %TName_Nat** %"$retval_84", align 8, !dbg !43
  %"$$retval_84_884" = load %TName_Nat*, %TName_Nat** %"$retval_84", align 8
  ret %TName_Nat* %"$$retval_84_884"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_81"(%"$$fundef_81_env_151"* %0, %TName_Nat* %1) !dbg !45 {
entry:
  %"$n_824" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_824", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_824", metadata !46, metadata !DIExpression()), !dbg !47
  %"$$fundef_81_env_f_805" = getelementptr inbounds %"$$fundef_81_env_151", %"$$fundef_81_env_151"* %0, i32 0, i32 0
  %"$f_envload_806" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_81_env_f_805", align 8
  %f = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_envload_806", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  %"$$fundef_81_env_nat_fold_807" = getelementptr inbounds %"$$fundef_81_env_151", %"$$fundef_81_env_151"* %0, i32 0, i32 1
  %"$nat_fold_envload_808" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_81_env_nat_fold_807", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_808", { i8*, i8* }** %nat_fold, align 8
  %"$retval_82" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_810" = icmp ugt i64 1, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %entry
  %"$consume_813" = sub i64 %"$gasrem_809", 1
  store i64 %"$consume_813", i64* @_gasrem, align 8
  %"$$fundef_83_envp_814_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_83_envp_814_salloc" = call i8* @_salloc(i8* %"$$fundef_83_envp_814_load", i64 32)
  %"$$fundef_83_envp_814" = bitcast i8* %"$$fundef_83_envp_814_salloc" to %"$$fundef_83_env_150"*
  %"$$fundef_83_env_voidp_816" = bitcast %"$$fundef_83_env_150"* %"$$fundef_83_envp_814" to i8*
  %"$$fundef_83_cloval_817" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_83_env_150"*, %TName_Nat*)* @"$fundef_83" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_83_env_voidp_816", 1
  %"$$fundef_83_env_f_818" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %"$$fundef_83_envp_814", i32 0, i32 0
  %"$f_819" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %f, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_819", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_83_env_f_818", align 8
  %"$$fundef_83_env_n_820" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %"$$fundef_83_envp_814", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_83_env_n_820", align 8
  %"$$fundef_83_env_nat_fold_821" = getelementptr inbounds %"$$fundef_83_env_150", %"$$fundef_83_env_150"* %"$$fundef_83_envp_814", i32 0, i32 2
  %"$nat_fold_822" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_822", { i8*, i8* }** %"$$fundef_83_env_nat_fold_821", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_83_cloval_817", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_82", align 8, !dbg !48
  %"$$retval_82_823" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_82", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_82_823"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_79"(%"$$fundef_79_env_152"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !49 {
entry:
  %"$$fundef_79_env_nat_fold_790" = getelementptr inbounds %"$$fundef_79_env_152", %"$$fundef_79_env_152"* %0, i32 0, i32 0
  %"$nat_fold_envload_791" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_79_env_nat_fold_790", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_791", { i8*, i8* }** %nat_fold, align 8
  %"$retval_80" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 1, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %entry
  %"$consume_796" = sub i64 %"$gasrem_792", 1
  store i64 %"$consume_796", i64* @_gasrem, align 8
  %"$$fundef_81_envp_797_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_81_envp_797_salloc" = call i8* @_salloc(i8* %"$$fundef_81_envp_797_load", i64 24)
  %"$$fundef_81_envp_797" = bitcast i8* %"$$fundef_81_envp_797_salloc" to %"$$fundef_81_env_151"*
  %"$$fundef_81_env_voidp_799" = bitcast %"$$fundef_81_env_151"* %"$$fundef_81_envp_797" to i8*
  %"$$fundef_81_cloval_800" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_81_env_151"*, %TName_Nat*)* @"$fundef_81" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_81_env_voidp_799", 1
  %"$$fundef_81_env_f_801" = getelementptr inbounds %"$$fundef_81_env_151", %"$$fundef_81_env_151"* %"$$fundef_81_envp_797", i32 0, i32 0
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_81_env_f_801", align 8
  %"$$fundef_81_env_nat_fold_802" = getelementptr inbounds %"$$fundef_81_env_151", %"$$fundef_81_env_151"* %"$$fundef_81_envp_797", i32 0, i32 1
  %"$nat_fold_803" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_803", { i8*, i8* }** %"$$fundef_81_env_nat_fold_802", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_81_cloval_800", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_80", align 8, !dbg !50
  %"$$retval_80_804" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_80", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_80_804"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_77"(%"$$fundef_77_env_153"* %0) !dbg !51 {
entry:
  %"$$fundef_77_env_nat_fold_776" = getelementptr inbounds %"$$fundef_77_env_153", %"$$fundef_77_env_153"* %0, i32 0, i32 0
  %"$nat_fold_envload_777" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_77_env_nat_fold_776", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_777", { i8*, i8* }** %nat_fold, align 8
  %"$retval_78" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %entry
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %"$$fundef_79_envp_783_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_79_envp_783_salloc" = call i8* @_salloc(i8* %"$$fundef_79_envp_783_load", i64 8)
  %"$$fundef_79_envp_783" = bitcast i8* %"$$fundef_79_envp_783_salloc" to %"$$fundef_79_env_152"*
  %"$$fundef_79_env_voidp_785" = bitcast %"$$fundef_79_env_152"* %"$$fundef_79_envp_783" to i8*
  %"$$fundef_79_cloval_786" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_79_env_152"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_79" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_79_env_voidp_785", 1
  %"$$fundef_79_env_nat_fold_787" = getelementptr inbounds %"$$fundef_79_env_152", %"$$fundef_79_env_152"* %"$$fundef_79_envp_783", i32 0, i32 0
  %"$nat_fold_788" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_788", { i8*, i8* }** %"$$fundef_79_env_nat_fold_787", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_79_cloval_786", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_78", align 8, !dbg !52
  %"$$retval_78_789" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_78", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_78_789"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_75"(%"$$fundef_75_env_154"* %0, %TName_Nat* %1) !dbg !53 {
entry:
  %"$unused_775" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$unused_775", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$unused_775", metadata !54, metadata !DIExpression()), !dbg !55
  %"$$fundef_75_env_f_759" = getelementptr inbounds %"$$fundef_75_env_154", %"$$fundef_75_env_154"* %0, i32 0, i32 0
  %"$f_envload_760" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_75_env_f_759", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_760", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_75_env_x_761" = getelementptr inbounds %"$$fundef_75_env_154", %"$$fundef_75_env_154"* %0, i32 0, i32 1
  %"$x_envload_762" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_75_env_x_761", align 8
  %x = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_envload_762", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$retval_76" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_764" = icmp ugt i64 1, %"$gasrem_763"
  br i1 %"$gascmp_764", label %"$out_of_gas_765", label %"$have_gas_766"

"$out_of_gas_765":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_766"

"$have_gas_766":                                  ; preds = %"$out_of_gas_765", %entry
  %"$consume_767" = sub i64 %"$gasrem_763", 1
  store i64 %"$consume_767", i64* @_gasrem, align 8
  %"$f_18" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$f_768" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$f_fptr_769" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_768", 0
  %"$f_envptr_770" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_768", 1
  %"$x_771" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %x, align 8
  %"$f_call_772" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_fptr_769"(i8* %"$f_envptr_770", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$x_771"), !dbg !56
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f_call_772", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_18", align 8, !dbg !56
  %"$$f_18_773" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$f_18", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$f_18_773", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_76", align 8, !dbg !56
  %"$$retval_76_774" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_76", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_76_774"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_73"(%"$$fundef_73_env_155"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !57 {
entry:
  %"$$fundef_73_env_f_744" = getelementptr inbounds %"$$fundef_73_env_155", %"$$fundef_73_env_155"* %0, i32 0, i32 0
  %"$f_envload_745" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_73_env_f_744", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_745", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$retval_74" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_747" = icmp ugt i64 1, %"$gasrem_746"
  br i1 %"$gascmp_747", label %"$out_of_gas_748", label %"$have_gas_749"

"$out_of_gas_748":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_749"

"$have_gas_749":                                  ; preds = %"$out_of_gas_748", %entry
  %"$consume_750" = sub i64 %"$gasrem_746", 1
  store i64 %"$consume_750", i64* @_gasrem, align 8
  %"$$fundef_75_envp_751_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_75_envp_751_salloc" = call i8* @_salloc(i8* %"$$fundef_75_envp_751_load", i64 32)
  %"$$fundef_75_envp_751" = bitcast i8* %"$$fundef_75_envp_751_salloc" to %"$$fundef_75_env_154"*
  %"$$fundef_75_env_voidp_753" = bitcast %"$$fundef_75_env_154"* %"$$fundef_75_envp_751" to i8*
  %"$$fundef_75_cloval_754" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_75_env_154"*, %TName_Nat*)* @"$fundef_75" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_75_env_voidp_753", 1
  %"$$fundef_75_env_f_755" = getelementptr inbounds %"$$fundef_75_env_154", %"$$fundef_75_env_154"* %"$$fundef_75_envp_751", i32 0, i32 0
  %"$f_756" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_756", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_75_env_f_755", align 8
  %"$$fundef_75_env_x_757" = getelementptr inbounds %"$$fundef_75_env_154", %"$$fundef_75_env_154"* %"$$fundef_75_envp_751", i32 0, i32 1
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_75_env_x_757", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_75_cloval_754", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_74", align 8, !dbg !58
  %"$$retval_74_758" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_74", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_74_758"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_71"(%"$$fundef_71_env_156"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !59 {
entry:
  %"$$fundef_71_env_f_684" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %0, i32 0, i32 0
  %"$f_envload_685" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_71_env_f_684", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_685", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_71_env_n_686" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %0, i32 0, i32 1
  %"$n_envload_687" = load %TName_Nat*, %TName_Nat** %"$$fundef_71_env_n_686", align 8
  %n = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n_envload_687", %TName_Nat** %n, align 8
  %"$$fundef_71_env_nat_fold_688" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %0, i32 0, i32 2
  %"$nat_fold_envload_689" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_71_env_nat_fold_688", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_689", { i8*, i8* }** %nat_fold, align 8
  %"$retval_72" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_691" = icmp ugt i64 1, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %entry
  %"$consume_694" = sub i64 %"$gasrem_690", 1
  store i64 %"$consume_694", i64* @_gasrem, align 8
  %folder = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_696" = icmp ugt i64 1, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %"$have_gas_693"
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %"$have_gas_693"
  %"$consume_699" = sub i64 %"$gasrem_695", 1
  store i64 %"$consume_699", i64* @_gasrem, align 8
  %"$nat_fold_700" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_701" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_700", i32 1
  %"$nat_fold_702" = bitcast { i8*, i8* }* %"$nat_fold_701" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_703" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_702", align 8
  %"$nat_fold_fptr_704" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_703", 0
  %"$nat_fold_envptr_705" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_703", 1
  %"$nat_fold_call_706" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_fptr_704"(i8* %"$nat_fold_envptr_705"), !dbg !60
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_fold_call_706", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8, !dbg !61
  %"$gasrem_707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_708" = icmp ugt i64 1, %"$gasrem_707"
  br i1 %"$gascmp_708", label %"$out_of_gas_709", label %"$have_gas_710"

"$out_of_gas_709":                                ; preds = %"$have_gas_698"
  call void @_out_of_gas()
  br label %"$have_gas_710"

"$have_gas_710":                                  ; preds = %"$out_of_gas_709", %"$have_gas_698"
  %"$consume_711" = sub i64 %"$gasrem_707", 1
  store i64 %"$consume_711", i64* @_gasrem, align 8
  %step = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_710"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_710"
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem, align 8
  %"$$fundef_73_envp_717_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_73_envp_717_salloc" = call i8* @_salloc(i8* %"$$fundef_73_envp_717_load", i64 16)
  %"$$fundef_73_envp_717" = bitcast i8* %"$$fundef_73_envp_717_salloc" to %"$$fundef_73_env_155"*
  %"$$fundef_73_env_voidp_719" = bitcast %"$$fundef_73_env_155"* %"$$fundef_73_envp_717" to i8*
  %"$$fundef_73_cloval_720" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_73_env_155"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_73" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_73_env_voidp_719", 1
  %"$$fundef_73_env_f_721" = getelementptr inbounds %"$$fundef_73_env_155", %"$$fundef_73_env_155"* %"$$fundef_73_envp_717", i32 0, i32 0
  %"$f_722" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_722", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_73_env_f_721", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_73_cloval_720", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8, !dbg !62
  %"$gasrem_723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_724" = icmp ugt i64 1, %"$gasrem_723"
  br i1 %"$gascmp_724", label %"$out_of_gas_725", label %"$have_gas_726"

"$out_of_gas_725":                                ; preds = %"$have_gas_715"
  call void @_out_of_gas()
  br label %"$have_gas_726"

"$have_gas_726":                                  ; preds = %"$out_of_gas_725", %"$have_gas_715"
  %"$consume_727" = sub i64 %"$gasrem_723", 1
  store i64 %"$consume_727", i64* @_gasrem, align 8
  %"$folder_19" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$folder_728" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %folder, align 8
  %"$folder_fptr_729" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_728", 0
  %"$folder_envptr_730" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$folder_728", 1
  %"$step_731" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %step, align 8
  %"$folder_call_732" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_fptr_729"(i8* %"$folder_envptr_730", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$step_731"), !dbg !63
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$folder_call_732", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_19", align 8, !dbg !63
  %"$folder_20" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_19_733" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$folder_19", align 8
  %"$$folder_19_fptr_734" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_19_733", 0
  %"$$folder_19_envptr_735" = extractvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$folder_19_733", 1
  %"$$folder_19_call_736" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_fptr_734"(i8* %"$$folder_19_envptr_735", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1), !dbg !63
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_19_call_736", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8, !dbg !63
  %"$folder_21" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$folder_20_737" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$folder_20", align 8
  %"$$folder_20_fptr_738" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_20_737", 0
  %"$$folder_20_envptr_739" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$folder_20_737", 1
  %"$n_740" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$folder_20_call_741" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_fptr_738"(i8* %"$$folder_20_envptr_739", %TName_Nat* %"$n_740"), !dbg !63
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_20_call_741", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_21", align 8, !dbg !63
  %"$$folder_21_742" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$folder_21", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$folder_21_742", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_72", align 8, !dbg !63
  %"$$retval_72_743" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_72", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_72_743"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_69"(%"$$fundef_69_env_157"* %0, %TName_Nat* %1) !dbg !64 {
entry:
  %"$n_683" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_683", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_683", metadata !65, metadata !DIExpression()), !dbg !66
  %"$$fundef_69_env_f_664" = getelementptr inbounds %"$$fundef_69_env_157", %"$$fundef_69_env_157"* %0, i32 0, i32 0
  %"$f_envload_665" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_69_env_f_664", align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_envload_665", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  %"$$fundef_69_env_nat_fold_666" = getelementptr inbounds %"$$fundef_69_env_157", %"$$fundef_69_env_157"* %0, i32 0, i32 1
  %"$nat_fold_envload_667" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_69_env_nat_fold_666", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_667", { i8*, i8* }** %nat_fold, align 8
  %"$retval_70" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 1, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %entry
  %"$consume_672" = sub i64 %"$gasrem_668", 1
  store i64 %"$consume_672", i64* @_gasrem, align 8
  %"$$fundef_71_envp_673_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_71_envp_673_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_673_load", i64 32)
  %"$$fundef_71_envp_673" = bitcast i8* %"$$fundef_71_envp_673_salloc" to %"$$fundef_71_env_156"*
  %"$$fundef_71_env_voidp_675" = bitcast %"$$fundef_71_env_156"* %"$$fundef_71_envp_673" to i8*
  %"$$fundef_71_cloval_676" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_71_env_156"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_71" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_71_env_voidp_675", 1
  %"$$fundef_71_env_f_677" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %"$$fundef_71_envp_673", i32 0, i32 0
  %"$f_678" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_678", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_71_env_f_677", align 8
  %"$$fundef_71_env_n_679" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %"$$fundef_71_envp_673", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_71_env_n_679", align 8
  %"$$fundef_71_env_nat_fold_680" = getelementptr inbounds %"$$fundef_71_env_156", %"$$fundef_71_env_156"* %"$$fundef_71_envp_673", i32 0, i32 2
  %"$nat_fold_681" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_681", { i8*, i8* }** %"$$fundef_71_env_nat_fold_680", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_71_cloval_676", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_70", align 8, !dbg !67
  %"$$retval_70_682" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_70", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_70_682"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_67"(%"$$fundef_67_env_158"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !68 {
entry:
  %"$$fundef_67_env_nat_fold_649" = getelementptr inbounds %"$$fundef_67_env_158", %"$$fundef_67_env_158"* %0, i32 0, i32 0
  %"$nat_fold_envload_650" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_nat_fold_649", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_650", { i8*, i8* }** %nat_fold, align 8
  %"$retval_68" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_652" = icmp ugt i64 1, %"$gasrem_651"
  br i1 %"$gascmp_652", label %"$out_of_gas_653", label %"$have_gas_654"

"$out_of_gas_653":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_654"

"$have_gas_654":                                  ; preds = %"$out_of_gas_653", %entry
  %"$consume_655" = sub i64 %"$gasrem_651", 1
  store i64 %"$consume_655", i64* @_gasrem, align 8
  %"$$fundef_69_envp_656_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_69_envp_656_salloc" = call i8* @_salloc(i8* %"$$fundef_69_envp_656_load", i64 24)
  %"$$fundef_69_envp_656" = bitcast i8* %"$$fundef_69_envp_656_salloc" to %"$$fundef_69_env_157"*
  %"$$fundef_69_env_voidp_658" = bitcast %"$$fundef_69_env_157"* %"$$fundef_69_envp_656" to i8*
  %"$$fundef_69_cloval_659" = insertvalue { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_69_env_157"*, %TName_Nat*)* @"$fundef_69" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_69_env_voidp_658", 1
  %"$$fundef_69_env_f_660" = getelementptr inbounds %"$$fundef_69_env_157", %"$$fundef_69_env_157"* %"$$fundef_69_envp_656", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_69_env_f_660", align 8
  %"$$fundef_69_env_nat_fold_661" = getelementptr inbounds %"$$fundef_69_env_157", %"$$fundef_69_env_157"* %"$$fundef_69_envp_656", i32 0, i32 1
  %"$nat_fold_662" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_662", { i8*, i8* }** %"$$fundef_69_env_nat_fold_661", align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_69_cloval_659", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_68", align 8, !dbg !69
  %"$$retval_68_663" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_68", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_68_663"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_65"(%"$$fundef_65_env_159"* %0) !dbg !70 {
entry:
  %"$$fundef_65_env_nat_fold_635" = getelementptr inbounds %"$$fundef_65_env_159", %"$$fundef_65_env_159"* %0, i32 0, i32 0
  %"$nat_fold_envload_636" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_nat_fold_635", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_636", { i8*, i8* }** %nat_fold, align 8
  %"$retval_66" = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 1, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %entry
  %"$consume_641" = sub i64 %"$gasrem_637", 1
  store i64 %"$consume_641", i64* @_gasrem, align 8
  %"$$fundef_67_envp_642_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_67_envp_642_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_642_load", i64 8)
  %"$$fundef_67_envp_642" = bitcast i8* %"$$fundef_67_envp_642_salloc" to %"$$fundef_67_env_158"*
  %"$$fundef_67_env_voidp_644" = bitcast %"$$fundef_67_env_158"* %"$$fundef_67_envp_642" to i8*
  %"$$fundef_67_cloval_645" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_67_env_158"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_67" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_67_env_voidp_644", 1
  %"$$fundef_67_env_nat_fold_646" = getelementptr inbounds %"$$fundef_67_env_158", %"$$fundef_67_env_158"* %"$$fundef_67_envp_642", i32 0, i32 0
  %"$nat_fold_647" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_647", { i8*, i8* }** %"$$fundef_67_env_nat_fold_646", align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$fundef_67_cloval_645", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_66", align 8, !dbg !71
  %"$$retval_66_648" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_66", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_66_648"
}

define internal %TName_Nat* @"$fundef_63"(%"$$fundef_63_env_160"* %0, %TName_Nat* %1) !dbg !72 {
entry:
  %"$n_634" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_634", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_634", metadata !73, metadata !DIExpression()), !dbg !74
  %"$retval_64" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$retval_64", metadata !75, metadata !DIExpression()), !dbg !76
  %"$gasrem_624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_625" = icmp ugt i64 1, %"$gasrem_624"
  br i1 %"$gascmp_625", label %"$out_of_gas_626", label %"$have_gas_627"

"$out_of_gas_626":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_627"

"$have_gas_627":                                  ; preds = %"$out_of_gas_626", %entry
  %"$consume_628" = sub i64 %"$gasrem_624", 1
  store i64 %"$consume_628", i64* @_gasrem, align 8
  %"$adtval_629_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_629_salloc" = call i8* @_salloc(i8* %"$adtval_629_load", i64 9)
  %"$adtval_629" = bitcast i8* %"$adtval_629_salloc" to %CName_Succ*
  %"$adtgep_630" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_629", i32 0, i32 0
  store i8 1, i8* %"$adtgep_630", align 1
  %"$adtgep_631" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_629", i32 0, i32 1
  store %TName_Nat* %1, %TName_Nat** %"$adtgep_631", align 8
  %"$adtptr_632" = bitcast %CName_Succ* %"$adtval_629" to %TName_Nat*
  store %TName_Nat* %"$adtptr_632", %TName_Nat** %"$retval_64", align 8, !dbg !76
  %"$$retval_64_633" = load %TName_Nat*, %TName_Nat** %"$retval_64", align 8
  ret %TName_Nat* %"$$retval_64_633"
}

define internal %Uint32 @"$fundef_60"(%"$$fundef_60_env_161"* %0, %TName_Nat* %1) !dbg !77 {
entry:
  %"$ignore_623" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$ignore_623", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ignore_623", metadata !79, metadata !DIExpression()), !dbg !80
  %"$$fundef_60_env_one_int_610" = getelementptr inbounds %"$$fundef_60_env_161", %"$$fundef_60_env_161"* %0, i32 0, i32 0
  %"$one_int_envload_611" = load %Uint32, %Uint32* %"$$fundef_60_env_one_int_610", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_611", %Uint32* %one_int, align 4
  %"$$fundef_60_env_z_612" = getelementptr inbounds %"$$fundef_60_env_161", %"$$fundef_60_env_161"* %0, i32 0, i32 1
  %"$z_envload_613" = load %Uint32, %Uint32* %"$$fundef_60_env_z_612", align 4
  %z = alloca %Uint32, align 8
  store %Uint32 %"$z_envload_613", %Uint32* %z, align 4
  %"$retval_61" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_61", metadata !81, metadata !DIExpression()), !dbg !83
  %"$gasrem_614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_615" = icmp ugt i64 4, %"$gasrem_614"
  br i1 %"$gascmp_615", label %"$out_of_gas_616", label %"$have_gas_617"

"$out_of_gas_616":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_617"

"$have_gas_617":                                  ; preds = %"$out_of_gas_616", %entry
  %"$consume_618" = sub i64 %"$gasrem_614", 4
  store i64 %"$consume_618", i64* @_gasrem, align 8
  %"$z_619" = load %Uint32, %Uint32* %z, align 4
  %"$one_int_620" = load %Uint32, %Uint32* %one_int, align 4
  %"$add_call_621" = call %Uint32 @_add_Uint32(%Uint32 %"$z_619", %Uint32 %"$one_int_620"), !dbg !83
  store %Uint32 %"$add_call_621", %Uint32* %"$retval_61", align 4, !dbg !83
  %"$$retval_61_622" = load %Uint32, %Uint32* %"$retval_61", align 4
  ret %Uint32 %"$$retval_61_622"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_58"(%"$$fundef_58_env_162"* %0, %Uint32 %1) !dbg !84 {
entry:
  %"$z_609" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_609", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_609", metadata !85, metadata !DIExpression()), !dbg !86
  %"$$fundef_58_env_one_int_594" = getelementptr inbounds %"$$fundef_58_env_162", %"$$fundef_58_env_162"* %0, i32 0, i32 0
  %"$one_int_envload_595" = load %Uint32, %Uint32* %"$$fundef_58_env_one_int_594", align 4
  %one_int = alloca %Uint32, align 8
  store %Uint32 %"$one_int_envload_595", %Uint32* %one_int, align 4
  %"$retval_59" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 1, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %entry
  %"$consume_600" = sub i64 %"$gasrem_596", 1
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %"$$fundef_60_envp_601_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_60_envp_601_salloc" = call i8* @_salloc(i8* %"$$fundef_60_envp_601_load", i64 8)
  %"$$fundef_60_envp_601" = bitcast i8* %"$$fundef_60_envp_601_salloc" to %"$$fundef_60_env_161"*
  %"$$fundef_60_env_voidp_603" = bitcast %"$$fundef_60_env_161"* %"$$fundef_60_envp_601" to i8*
  %"$$fundef_60_cloval_604" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_60_env_161"*, %TName_Nat*)* @"$fundef_60" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_60_env_voidp_603", 1
  %"$$fundef_60_env_one_int_605" = getelementptr inbounds %"$$fundef_60_env_161", %"$$fundef_60_env_161"* %"$$fundef_60_envp_601", i32 0, i32 0
  %"$one_int_606" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_606", %Uint32* %"$$fundef_60_env_one_int_605", align 4
  %"$$fundef_60_env_z_607" = getelementptr inbounds %"$$fundef_60_env_161", %"$$fundef_60_env_161"* %"$$fundef_60_envp_601", i32 0, i32 1
  store %Uint32 %1, %Uint32* %"$$fundef_60_env_z_607", align 4
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_60_cloval_604", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_59", align 8, !dbg !87
  %"$$retval_59_608" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_59", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_59_608"
}

define internal %Uint32 @"$fundef_56"(%"$$fundef_56_env_163"* %0, %TName_Nat* %1) !dbg !88 {
entry:
  %"$n_593" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_593", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_593", metadata !89, metadata !DIExpression()), !dbg !90
  %"$$fundef_56_env_$nat_fold_6_517" = getelementptr inbounds %"$$fundef_56_env_163", %"$$fundef_56_env_163"* %0, i32 0, i32 0
  %"$$nat_fold_6_envload_518" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_56_env_$nat_fold_6_517", align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$$nat_fold_6_envload_518", { i8*, i8* }** %"$nat_fold_6", align 8
  %"$retval_57" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_57", metadata !91, metadata !DIExpression()), !dbg !92
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 1, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %entry
  %"$consume_523" = sub i64 %"$gasrem_519", 1
  store i64 %"$consume_523", i64* @_gasrem, align 8
  %fold = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_522"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %"$$nat_fold_6_529" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  %"$$nat_fold_6_530" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$$nat_fold_6_529", i32 0
  %"$$nat_fold_6_531" = bitcast { i8*, i8* }* %"$$nat_fold_6_530" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$$nat_fold_6_532" = load { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$$nat_fold_6_531", align 8
  %"$$nat_fold_6_fptr_533" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_532", 0
  %"$$nat_fold_6_envptr_534" = extractvalue { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$nat_fold_6_532", 1
  %"$$nat_fold_6_call_535" = call { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_fptr_533"(i8* %"$$nat_fold_6_envptr_534"), !dbg !93
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$nat_fold_6_call_535", { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8, !dbg !94
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_527"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %one_int = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one_int, metadata !95, metadata !DIExpression()), !dbg !96
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$have_gas_539"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one_int, align 4, !dbg !97
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_544"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %f = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_549"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %"$$fundef_58_envp_556_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_58_envp_556_salloc" = call i8* @_salloc(i8* %"$$fundef_58_envp_556_load", i64 4)
  %"$$fundef_58_envp_556" = bitcast i8* %"$$fundef_58_envp_556_salloc" to %"$$fundef_58_env_162"*
  %"$$fundef_58_env_voidp_558" = bitcast %"$$fundef_58_env_162"* %"$$fundef_58_envp_556" to i8*
  %"$$fundef_58_cloval_559" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_58_env_162"*, %Uint32)* @"$fundef_58" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_58_env_voidp_558", 1
  %"$$fundef_58_env_one_int_560" = getelementptr inbounds %"$$fundef_58_env_162", %"$$fundef_58_env_162"* %"$$fundef_58_envp_556", i32 0, i32 0
  %"$one_int_561" = load %Uint32, %Uint32* %one_int, align 4
  store %Uint32 %"$one_int_561", %Uint32* %"$$fundef_58_env_one_int_560", align 4
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_58_cloval_559", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8, !dbg !98
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_554"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  %zero_int = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero_int, metadata !99, metadata !DIExpression()), !dbg !100
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_565"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero_int, align 4, !dbg !101
  %"$gasrem_572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_573" = icmp ugt i64 1, %"$gasrem_572"
  br i1 %"$gascmp_573", label %"$out_of_gas_574", label %"$have_gas_575"

"$out_of_gas_574":                                ; preds = %"$have_gas_570"
  call void @_out_of_gas()
  br label %"$have_gas_575"

"$have_gas_575":                                  ; preds = %"$out_of_gas_574", %"$have_gas_570"
  %"$consume_576" = sub i64 %"$gasrem_572", 1
  store i64 %"$consume_576", i64* @_gasrem, align 8
  %"$fold_15" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$fold_577" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %fold, align 8
  %"$fold_fptr_578" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_577", 0
  %"$fold_envptr_579" = extractvalue { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$fold_577", 1
  %"$f_580" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %f, align 8
  %"$fold_call_581" = call { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_fptr_578"(i8* %"$fold_envptr_579", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$f_580"), !dbg !102
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fold_call_581", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_15", align 8, !dbg !102
  %"$fold_16" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fold_15_582" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$fold_15", align 8
  %"$$fold_15_fptr_583" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_15_582", 0
  %"$$fold_15_envptr_584" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fold_15_582", 1
  %"$zero_int_585" = load %Uint32, %Uint32* %zero_int, align 4
  %"$$fold_15_call_586" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_15_fptr_583"(i8* %"$$fold_15_envptr_584", %Uint32 %"$zero_int_585"), !dbg !102
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_15_call_586", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_16", align 8, !dbg !102
  %"$fold_17" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$fold_17", metadata !103, metadata !DIExpression()), !dbg !102
  %"$$fold_16_587" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fold_16", align 8
  %"$$fold_16_fptr_588" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_16_587", 0
  %"$$fold_16_envptr_589" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fold_16_587", 1
  %"$$fold_16_call_590" = call %Uint32 %"$$fold_16_fptr_588"(i8* %"$$fold_16_envptr_589", %TName_Nat* %1), !dbg !102
  store %Uint32 %"$$fold_16_call_590", %Uint32* %"$fold_17", align 4, !dbg !102
  %"$$fold_17_591" = load %Uint32, %Uint32* %"$fold_17", align 4
  store %Uint32 %"$$fold_17_591", %Uint32* %"$retval_57", align 4, !dbg !102
  %"$$retval_57_592" = load %Uint32, %Uint32* %"$retval_57", align 4
  ret %Uint32 %"$$retval_57_592"
}

define internal %Uint32 @"$fundef_54"(%"$$fundef_54_env_164"* %0, %TName_Nat* %1) !dbg !104 {
entry:
  %"$n_516" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_516", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_516", metadata !106, metadata !DIExpression()), !dbg !107
  %"$$fundef_54_env_f0_451" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %0, i32 0, i32 0
  %"$f0_envload_452" = load %Uint32, %Uint32* %"$$fundef_54_env_f0_451", align 4
  %f0 = alloca %Uint32, align 8
  store %Uint32 %"$f0_envload_452", %Uint32* %f0, align 4
  %"$$fundef_54_env_fn_453" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %0, i32 0, i32 1
  %"$fn_envload_454" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_fn_453", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_454", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_54_env_g_455" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %0, i32 0, i32 2
  %"$g_envload_456" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_g_455", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_456", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_55" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_55", metadata !108, metadata !DIExpression()), !dbg !109
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 2, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %entry
  %"$consume_461" = sub i64 %"$gasrem_457", 2
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %"$n_tag_463" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_464" = load i8, i8* %"$n_tag_463", align 1
  switch i8 %"$n_tag_464", label %"$empty_default_465" [
    i8 1, label %"$Succ_466"
    i8 0, label %"$Zero_507"
  ], !dbg !109

"$Succ_466":                                      ; preds = %"$have_gas_460"
  %"$n_467" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_468" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_467", i32 0, i32 1
  %"$n1_load_469" = load %TName_Nat*, %TName_Nat** %"$n1_gep_468", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_469", %TName_Nat** %n1, align 8
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$Succ_466"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$Succ_466"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res, metadata !110, metadata !DIExpression()), !dbg !113
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_473"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$fn_11" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_480" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$fn_fptr_481" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_480", 0
  %"$fn_envptr_482" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_480", 1
  %"$f0_483" = load %Uint32, %Uint32* %f0, align 4
  %"$fn_call_484" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_481"(i8* %"$fn_envptr_482", %Uint32 %"$f0_483"), !dbg !114
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$fn_call_484", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_11", align 8, !dbg !114
  %"$fn_12" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$fn_12", metadata !115, metadata !DIExpression()), !dbg !114
  %"$$fn_11_485" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$fn_11", align 8
  %"$$fn_11_fptr_486" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_11_485", 0
  %"$$fn_11_envptr_487" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fn_11_485", 1
  %"$n1_488" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_11_call_489" = call %Uint32 %"$$fn_11_fptr_486"(i8* %"$$fn_11_envptr_487", %TName_Nat* %"$n1_488"), !dbg !114
  store %Uint32 %"$$fn_11_call_489", %Uint32* %"$fn_12", align 4, !dbg !114
  %"$$fn_12_490" = load %Uint32, %Uint32* %"$fn_12", align 4
  store %Uint32 %"$$fn_12_490", %Uint32* %res, align 4, !dbg !114
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 1, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$have_gas_478"
  %"$consume_495" = sub i64 %"$gasrem_491", 1
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %"$g_13" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_496" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$g_fptr_497" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_496", 0
  %"$g_envptr_498" = extractvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_496", 1
  %"$res_499" = load %Uint32, %Uint32* %res, align 4
  %"$g_call_500" = call { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_fptr_497"(i8* %"$g_envptr_498", %Uint32 %"$res_499"), !dbg !116
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$g_call_500", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_13", align 8, !dbg !116
  %"$g_14" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$g_14", metadata !117, metadata !DIExpression()), !dbg !116
  %"$$g_13_501" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$g_13", align 8
  %"$$g_13_fptr_502" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_13_501", 0
  %"$$g_13_envptr_503" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$g_13_501", 1
  %"$n1_504" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_13_call_505" = call %Uint32 %"$$g_13_fptr_502"(i8* %"$$g_13_envptr_503", %TName_Nat* %"$n1_504"), !dbg !116
  store %Uint32 %"$$g_13_call_505", %Uint32* %"$g_14", align 4, !dbg !116
  %"$$g_14_506" = load %Uint32, %Uint32* %"$g_14", align 4
  store %Uint32 %"$$g_14_506", %Uint32* %"$retval_55", align 4, !dbg !116
  br label %"$matchsucc_462"

"$Zero_507":                                      ; preds = %"$have_gas_460"
  %"$n_508" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$Zero_507"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$Zero_507"
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$f0_514" = load %Uint32, %Uint32* %f0, align 4
  store %Uint32 %"$f0_514", %Uint32* %"$retval_55", align 4, !dbg !118
  br label %"$matchsucc_462"

"$empty_default_465":                             ; preds = %"$have_gas_460"
  br label %"$matchsucc_462"

"$matchsucc_462":                                 ; preds = %"$have_gas_512", %"$have_gas_494", %"$empty_default_465"
  %"$$retval_55_515" = load %Uint32, %Uint32* %"$retval_55", align 4
  ret %Uint32 %"$$retval_55_515"
}

define internal { %Uint32 (i8*, %TName_Nat*)*, i8* } @"$fundef_52"(%"$$fundef_52_env_165"* %0, %Uint32 %1) !dbg !120 {
entry:
  %"$f0_450" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$f0_450", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$f0_450", metadata !121, metadata !DIExpression()), !dbg !122
  %"$$fundef_52_env_fn_426" = getelementptr inbounds %"$$fundef_52_env_165", %"$$fundef_52_env_165"* %0, i32 0, i32 0
  %"$fn_envload_427" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_fn_426", align 8
  %fn = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_envload_427", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  %"$$fundef_52_env_g_428" = getelementptr inbounds %"$$fundef_52_env_165", %"$$fundef_52_env_165"* %0, i32 0, i32 1
  %"$g_envload_429" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_g_428", align 8
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_envload_429", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  %"$retval_53" = alloca { %Uint32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %entry
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_433"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %"$$fundef_54_envp_440_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_54_envp_440_salloc" = call i8* @_salloc(i8* %"$$fundef_54_envp_440_load", i64 40)
  %"$$fundef_54_envp_440" = bitcast i8* %"$$fundef_54_envp_440_salloc" to %"$$fundef_54_env_164"*
  %"$$fundef_54_env_voidp_442" = bitcast %"$$fundef_54_env_164"* %"$$fundef_54_envp_440" to i8*
  %"$$fundef_54_cloval_443" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_54_env_164"*, %TName_Nat*)* @"$fundef_54" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_54_env_voidp_442", 1
  %"$$fundef_54_env_f0_444" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %"$$fundef_54_envp_440", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_54_env_f0_444", align 4
  %"$$fundef_54_env_fn_445" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %"$$fundef_54_envp_440", i32 0, i32 1
  %"$fn_446" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %fn, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$fn_446", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_fn_445", align 8
  %"$$fundef_54_env_g_447" = getelementptr inbounds %"$$fundef_54_env_164", %"$$fundef_54_env_164"* %"$$fundef_54_envp_440", i32 0, i32 2
  %"$g_448" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_448", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_54_env_g_447", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_54_cloval_443", { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_53", align 8, !dbg !123
  %"$$retval_53_449" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* %"$retval_53", align 8
  ret { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$retval_53_449"
}

define internal { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_50"(%"$$fundef_50_env_166"* %0, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1) !dbg !124 {
entry:
  %"$retval_51" = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %entry
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  %"$$fundef_52_envp_417_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_52_envp_417_salloc" = call i8* @_salloc(i8* %"$$fundef_52_envp_417_load", i64 32)
  %"$$fundef_52_envp_417" = bitcast i8* %"$$fundef_52_envp_417_salloc" to %"$$fundef_52_env_165"*
  %"$$fundef_52_env_voidp_419" = bitcast %"$$fundef_52_env_165"* %"$$fundef_52_envp_417" to i8*
  %"$$fundef_52_cloval_420" = insertvalue { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)* bitcast ({ %Uint32 (i8*, %TName_Nat*)*, i8* } (%"$$fundef_52_env_165"*, %Uint32)* @"$fundef_52" to { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_52_env_voidp_419", 1
  %g = alloca { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$fundef_52_cloval_420", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8, !dbg !125
  %"$$fundef_52_env_fn_421" = getelementptr inbounds %"$$fundef_52_env_165", %"$$fundef_52_env_165"* %"$$fundef_52_envp_417", i32 0, i32 0
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %1, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_fn_421", align 8
  %"$$fundef_52_env_g_422" = getelementptr inbounds %"$$fundef_52_env_165", %"$$fundef_52_env_165"* %"$$fundef_52_envp_417", i32 0, i32 1
  %"$g_423" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_423", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$$fundef_52_env_g_422", align 8
  %"$g_424" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %g, align 8
  store { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$g_424", { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_51", align 8, !dbg !125
  %"$$retval_51_425" = load { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_51", align 8
  ret { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_51_425"
}

define internal { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_48"(%"$$fundef_48_env_167"* %0) !dbg !126 {
entry:
  %"$retval_49" = alloca { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %entry
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* bitcast ({ { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_50_env_166"*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })* @"$fundef_50" to { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*), i8* null }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_49", align 8, !dbg !127
  %"$$retval_49_411" = load { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }, { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_49", align 8
  ret { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_49_411"
}

define internal %TName_Nat* @"$fundef_46"(%"$$fundef_46_env_168"* %0, %TName_Nat* %1) !dbg !128 {
entry:
  %"$n_402" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_402", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_402", metadata !129, metadata !DIExpression()), !dbg !130
  %"$$fundef_46_env_f0_337" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %0, i32 0, i32 0
  %"$f0_envload_338" = load %TName_Nat*, %TName_Nat** %"$$fundef_46_env_f0_337", align 8
  %f0 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$f0_envload_338", %TName_Nat** %f0, align 8
  %"$$fundef_46_env_fn_339" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %0, i32 0, i32 1
  %"$fn_envload_340" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_fn_339", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_340", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_46_env_g_341" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %0, i32 0, i32 2
  %"$g_envload_342" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_g_341", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_342", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_47" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$retval_47", metadata !131, metadata !DIExpression()), !dbg !132
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 2, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %entry
  %"$consume_347" = sub i64 %"$gasrem_343", 2
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %"$n_tag_349" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_350" = load i8, i8* %"$n_tag_349", align 1
  switch i8 %"$n_tag_350", label %"$empty_default_351" [
    i8 1, label %"$Succ_352"
    i8 0, label %"$Zero_393"
  ], !dbg !132

"$Succ_352":                                      ; preds = %"$have_gas_346"
  %"$n_353" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_354" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_353", i32 0, i32 1
  %"$n1_load_355" = load %TName_Nat*, %TName_Nat** %"$n1_gep_354", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_355", %TName_Nat** %n1, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$Succ_352"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$Succ_352"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %res = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %res, metadata !133, metadata !DIExpression()), !dbg !136
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_359"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %"$fn_7" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_366" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$fn_fptr_367" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_366", 0
  %"$fn_envptr_368" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_366", 1
  %"$f0_369" = load %TName_Nat*, %TName_Nat** %f0, align 8
  %"$fn_call_370" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_367"(i8* %"$fn_envptr_368", %TName_Nat* %"$f0_369"), !dbg !137
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$fn_call_370", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8, !dbg !137
  %"$fn_8" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$fn_8", metadata !138, metadata !DIExpression()), !dbg !137
  %"$$fn_7_371" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8
  %"$$fn_7_fptr_372" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_371", 0
  %"$$fn_7_envptr_373" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_371", 1
  %"$n1_374" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_7_call_375" = call %TName_Nat* %"$$fn_7_fptr_372"(i8* %"$$fn_7_envptr_373", %TName_Nat* %"$n1_374"), !dbg !137
  store %TName_Nat* %"$$fn_7_call_375", %TName_Nat** %"$fn_8", align 8, !dbg !137
  %"$$fn_8_376" = load %TName_Nat*, %TName_Nat** %"$fn_8", align 8
  store %TName_Nat* %"$$fn_8_376", %TName_Nat** %res, align 8, !dbg !137
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_364"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %"$g_9" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_382" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$g_fptr_383" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_382", 0
  %"$g_envptr_384" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_382", 1
  %"$res_385" = load %TName_Nat*, %TName_Nat** %res, align 8
  %"$g_call_386" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_383"(i8* %"$g_envptr_384", %TName_Nat* %"$res_385"), !dbg !139
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$g_call_386", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8, !dbg !139
  %"$g_10" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$g_10", metadata !140, metadata !DIExpression()), !dbg !139
  %"$$g_9_387" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8
  %"$$g_9_fptr_388" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_387", 0
  %"$$g_9_envptr_389" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_387", 1
  %"$n1_390" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_9_call_391" = call %TName_Nat* %"$$g_9_fptr_388"(i8* %"$$g_9_envptr_389", %TName_Nat* %"$n1_390"), !dbg !139
  store %TName_Nat* %"$$g_9_call_391", %TName_Nat** %"$g_10", align 8, !dbg !139
  %"$$g_10_392" = load %TName_Nat*, %TName_Nat** %"$g_10", align 8
  store %TName_Nat* %"$$g_10_392", %TName_Nat** %"$retval_47", align 8, !dbg !139
  br label %"$matchsucc_348"

"$Zero_393":                                      ; preds = %"$have_gas_346"
  %"$n_394" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$Zero_393"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$Zero_393"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %"$f0_400" = load %TName_Nat*, %TName_Nat** %f0, align 8
  store %TName_Nat* %"$f0_400", %TName_Nat** %"$retval_47", align 8, !dbg !141
  br label %"$matchsucc_348"

"$empty_default_351":                             ; preds = %"$have_gas_346"
  br label %"$matchsucc_348"

"$matchsucc_348":                                 ; preds = %"$have_gas_398", %"$have_gas_380", %"$empty_default_351"
  %"$$retval_47_401" = load %TName_Nat*, %TName_Nat** %"$retval_47", align 8
  ret %TName_Nat* %"$$retval_47_401"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_44"(%"$$fundef_44_env_169"* %0, %TName_Nat* %1) !dbg !143 {
entry:
  %"$f0_336" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$f0_336", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$f0_336", metadata !144, metadata !DIExpression()), !dbg !145
  %"$$fundef_44_env_fn_312" = getelementptr inbounds %"$$fundef_44_env_169", %"$$fundef_44_env_169"* %0, i32 0, i32 0
  %"$fn_envload_313" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_fn_312", align 8
  %fn = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_envload_313", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  %"$$fundef_44_env_g_314" = getelementptr inbounds %"$$fundef_44_env_169", %"$$fundef_44_env_169"* %0, i32 0, i32 1
  %"$g_envload_315" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_g_314", align 8
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_envload_315", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  %"$retval_45" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %entry
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_319"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_319"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %"$$fundef_46_envp_326_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_46_envp_326_salloc" = call i8* @_salloc(i8* %"$$fundef_46_envp_326_load", i64 40)
  %"$$fundef_46_envp_326" = bitcast i8* %"$$fundef_46_envp_326_salloc" to %"$$fundef_46_env_168"*
  %"$$fundef_46_env_voidp_328" = bitcast %"$$fundef_46_env_168"* %"$$fundef_46_envp_326" to i8*
  %"$$fundef_46_cloval_329" = insertvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_46_env_168"*, %TName_Nat*)* @"$fundef_46" to %TName_Nat* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_46_env_voidp_328", 1
  %"$$fundef_46_env_f0_330" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %"$$fundef_46_envp_326", i32 0, i32 0
  store %TName_Nat* %1, %TName_Nat** %"$$fundef_46_env_f0_330", align 8
  %"$$fundef_46_env_fn_331" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %"$$fundef_46_envp_326", i32 0, i32 1
  %"$fn_332" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %fn, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_332", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_fn_331", align 8
  %"$$fundef_46_env_g_333" = getelementptr inbounds %"$$fundef_46_env_168", %"$$fundef_46_env_168"* %"$$fundef_46_envp_326", i32 0, i32 2
  %"$g_334" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_334", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_46_env_g_333", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fundef_46_cloval_329", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_45", align 8, !dbg !146
  %"$$retval_45_335" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_45", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_45_335"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_42"(%"$$fundef_42_env_170"* %0, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1) !dbg !147 {
entry:
  %"$retval_43" = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %entry
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$$fundef_44_envp_303_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_44_envp_303_salloc" = call i8* @_salloc(i8* %"$$fundef_44_envp_303_load", i64 32)
  %"$$fundef_44_envp_303" = bitcast i8* %"$$fundef_44_envp_303_salloc" to %"$$fundef_44_env_169"*
  %"$$fundef_44_env_voidp_305" = bitcast %"$$fundef_44_env_169"* %"$$fundef_44_envp_303" to i8*
  %"$$fundef_44_cloval_306" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_44_env_169"*, %TName_Nat*)* @"$fundef_44" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_44_env_voidp_305", 1
  %g = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_44_cloval_306", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8, !dbg !148
  %"$$fundef_44_env_fn_307" = getelementptr inbounds %"$$fundef_44_env_169", %"$$fundef_44_env_169"* %"$$fundef_44_envp_303", i32 0, i32 0
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %1, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_fn_307", align 8
  %"$$fundef_44_env_g_308" = getelementptr inbounds %"$$fundef_44_env_169", %"$$fundef_44_env_169"* %"$$fundef_44_envp_303", i32 0, i32 1
  %"$g_309" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_309", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$$fundef_44_env_g_308", align 8
  %"$g_310" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %g, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_310", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_43", align 8, !dbg !148
  %"$$retval_43_311" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_43", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_43_311"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_40"(%"$$fundef_40_env_171"* %0) !dbg !149 {
entry:
  %"$retval_41" = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %entry
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* bitcast ({ { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (%"$$fundef_42_env_170"*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })* @"$fundef_42" to { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*), i8* null }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_41", align 8, !dbg !150
  %"$$retval_41_297" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_41", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_41_297"
}

define internal { %TName_Nat* (i8*, %TName_Nat*)*, i8* } @"$fundef_38"(%"$$fundef_38_env_172"* %0, %TName_Nat* %1) !dbg !151 {
entry:
  %"$n_288" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_288", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_288", metadata !152, metadata !DIExpression()), !dbg !153
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
  ], !dbg !154

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
  %"$fn_call_256" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_253"(i8* %"$fn_envptr_254", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_255"), !dbg !155
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$fn_call_256", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8, !dbg !155
  %"$fn_8" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$fn_7_257" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$fn_7", align 8
  %"$$fn_7_fptr_258" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_7_257", 0
  %"$$fn_7_envptr_259" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fn_7_257", 1
  %"$n1_260" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_7_call_261" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_fptr_258"(i8* %"$$fn_7_envptr_259", %TName_Nat* %"$n1_260"), !dbg !155
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_7_call_261", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_8", align 8, !dbg !155
  %"$$fn_8_262" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$fn_8", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$fn_8_262", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %res, align 8, !dbg !155
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
  %"$g_call_272" = call { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_fptr_269"(i8* %"$g_envptr_270", { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$res_271"), !dbg !158
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$g_call_272", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8, !dbg !158
  %"$g_10" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$g_9_273" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$g_9", align 8
  %"$$g_9_fptr_274" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_9_273", 0
  %"$$g_9_envptr_275" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$g_9_273", 1
  %"$n1_276" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_9_call_277" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_fptr_274"(i8* %"$$g_9_envptr_275", %TName_Nat* %"$n1_276"), !dbg !158
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_9_call_277", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_10", align 8, !dbg !158
  %"$$g_10_278" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$g_10", align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$g_10_278", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_39", align 8, !dbg !158
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
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$f0_286", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_39", align 8, !dbg !159
  br label %"$matchsucc_234"

"$empty_default_237":                             ; preds = %"$have_gas_232"
  br label %"$matchsucc_234"

"$matchsucc_234":                                 ; preds = %"$have_gas_284", %"$have_gas_266", %"$empty_default_237"
  %"$$retval_39_287" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$retval_39", align 8
  ret { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$retval_39_287"
}

define internal { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } @"$fundef_36"(%"$$fundef_36_env_173"* %0, { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %1) !dbg !161 {
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
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_38_cloval_216", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_37", align 8, !dbg !162
  %"$$retval_37_222" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %"$retval_37", align 8
  ret { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$retval_37_222"
}

define internal { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } @"$fundef_34"(%"$$fundef_34_env_174"* %0, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1) !dbg !163 {
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
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_36_cloval_193", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8, !dbg !164
  %"$$fundef_36_env_fn_194" = getelementptr inbounds %"$$fundef_36_env_173", %"$$fundef_36_env_173"* %"$$fundef_36_envp_190", i32 0, i32 0
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %1, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_36_env_fn_194", align 8
  %"$$fundef_36_env_g_195" = getelementptr inbounds %"$$fundef_36_env_173", %"$$fundef_36_env_173"* %"$$fundef_36_envp_190", i32 0, i32 1
  %"$g_196" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_196", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_36_env_g_195", align 8
  %"$g_197" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %g, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$g_197", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_35", align 8, !dbg !164
  %"$$retval_35_198" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$retval_35", align 8
  ret { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$retval_35_198"
}

define internal { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } @"$fundef_32"(%"$$fundef_32_env_175"* %0) !dbg !165 {
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
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_34_env_174"*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })* @"$fundef_34" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_33", align 8, !dbg !166
  %"$$retval_33_184" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$retval_33", align 8
  ret { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$$retval_33_184"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !167 {
entry:
  %"$gasrem_1009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1010" = icmp ugt i64 4, %"$gasrem_1009"
  br i1 %"$gascmp_1010", label %"$out_of_gas_1011", label %"$have_gas_1012"

"$out_of_gas_1011":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1012"

"$have_gas_1012":                                 ; preds = %"$out_of_gas_1011", %entry
  %"$consume_1013" = sub i64 %"$gasrem_1009", 4
  store i64 %"$consume_1013", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !169
  %"$gasrem_1014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1015" = icmp ugt i64 1, %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$have_gas_1012"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$have_gas_1012"
  %"$consume_1018" = sub i64 %"$gasrem_1014", 1
  store i64 %"$consume_1018", i64* @_gasrem, align 8
  %"$dyndisp_table_1025_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1025_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1025_salloc_load", i64 48)
  %"$dyndisp_table_1025_salloc" = bitcast i8* %"$dyndisp_table_1025_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1025" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1025_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1026" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1025", i32 1
  %"$dyndisp_pcast_1027" = bitcast { i8*, i8* }* %"$dyndisp_gep_1026" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_32_env_175"*)* @"$fundef_32" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* null }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1027", align 8
  %"$dyndisp_gep_1028" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1025", i32 2
  %"$dyndisp_pcast_1029" = bitcast { i8*, i8* }* %"$dyndisp_gep_1028" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_40_env_171"*)* @"$fundef_40" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1029", align 8
  store { i8*, i8* }* %"$dyndisp_table_1025", { i8*, i8* }** @nat_fold, align 8, !dbg !170
  %"$gasrem_1030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1031" = icmp ugt i64 8, %"$gasrem_1030"
  br i1 %"$gascmp_1031", label %"$out_of_gas_1032", label %"$have_gas_1033"

"$out_of_gas_1032":                               ; preds = %"$have_gas_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1033"

"$have_gas_1033":                                 ; preds = %"$out_of_gas_1032", %"$have_gas_1017"
  %"$consume_1034" = sub i64 %"$gasrem_1030", 8
  store i64 %"$consume_1034", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !169
  %"$gasrem_1035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1036" = icmp ugt i64 196, %"$gasrem_1035"
  br i1 %"$gascmp_1036", label %"$out_of_gas_1037", label %"$have_gas_1038"

"$out_of_gas_1037":                               ; preds = %"$have_gas_1033"
  call void @_out_of_gas()
  br label %"$have_gas_1038"

"$have_gas_1038":                                 ; preds = %"$out_of_gas_1037", %"$have_gas_1033"
  %"$consume_1039" = sub i64 %"$gasrem_1035", 196
  store i64 %"$consume_1039", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !169
  %"$gasrem_1040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1041" = icmp ugt i64 20, %"$gasrem_1040"
  br i1 %"$gascmp_1041", label %"$out_of_gas_1042", label %"$have_gas_1043"

"$out_of_gas_1042":                               ; preds = %"$have_gas_1038"
  call void @_out_of_gas()
  br label %"$have_gas_1043"

"$have_gas_1043":                                 ; preds = %"$out_of_gas_1042", %"$have_gas_1038"
  %"$consume_1044" = sub i64 %"$gasrem_1040", 20
  store i64 %"$consume_1044", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !169
  %"$gasrem_1045" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1046" = icmp ugt i64 11, %"$gasrem_1045"
  br i1 %"$gascmp_1046", label %"$out_of_gas_1047", label %"$have_gas_1048"

"$out_of_gas_1047":                               ; preds = %"$have_gas_1043"
  call void @_out_of_gas()
  br label %"$have_gas_1048"

"$have_gas_1048":                                 ; preds = %"$out_of_gas_1047", %"$have_gas_1043"
  %"$consume_1049" = sub i64 %"$gasrem_1045", 11
  store i64 %"$consume_1049", i64* @_gasrem, align 8
  store %Int32 { i32 11 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !169
  %"$gasrem_1050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1051" = icmp ugt i64 1, %"$gasrem_1050"
  br i1 %"$gascmp_1051", label %"$out_of_gas_1052", label %"$have_gas_1053"

"$out_of_gas_1052":                               ; preds = %"$have_gas_1048"
  call void @_out_of_gas()
  br label %"$have_gas_1053"

"$have_gas_1053":                                 ; preds = %"$out_of_gas_1052", %"$have_gas_1048"
  %"$consume_1054" = sub i64 %"$gasrem_1050", 1
  store i64 %"$consume_1054", i64* @_gasrem, align 8
  %"$nat_fold_6" = alloca { i8*, i8* }*, align 8
  %"$dyndisp_table_1058_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1058_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1058_salloc_load", i64 48)
  %"$dyndisp_table_1058_salloc" = bitcast i8* %"$dyndisp_table_1058_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1058" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1058_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1059" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1058", i32 0
  %"$dyndisp_pcast_1060" = bitcast { i8*, i8* }* %"$dyndisp_gep_1059" to { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_48_env_167"*)* @"$fundef_48" to { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* } (i8*, { { %Uint32 (i8*, %TName_Nat*)*, i8* } (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1060", align 8
  store { i8*, i8* }* %"$dyndisp_table_1058", { i8*, i8* }** %"$nat_fold_6", align 8, !dbg !170
  %"$$fundef_56_envp_1061_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_56_envp_1061_salloc" = call i8* @_salloc(i8* %"$$fundef_56_envp_1061_load", i64 8)
  %"$$fundef_56_envp_1061" = bitcast i8* %"$$fundef_56_envp_1061_salloc" to %"$$fundef_56_env_163"*
  %"$$fundef_56_env_voidp_1063" = bitcast %"$$fundef_56_env_163"* %"$$fundef_56_envp_1061" to i8*
  %"$$fundef_56_cloval_1064" = insertvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } { %Uint32 (i8*, %TName_Nat*)* bitcast (%Uint32 (%"$$fundef_56_env_163"*, %TName_Nat*)* @"$fundef_56" to %Uint32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_56_env_voidp_1063", 1
  %"$$fundef_56_env_$nat_fold_6_1065" = getelementptr inbounds %"$$fundef_56_env_163", %"$$fundef_56_env_163"* %"$$fundef_56_envp_1061", i32 0, i32 0
  %"$$nat_fold_6_1066" = load { i8*, i8* }*, { i8*, i8* }** %"$nat_fold_6", align 8
  store { i8*, i8* }* %"$$nat_fold_6_1066", { i8*, i8* }** %"$$fundef_56_env_$nat_fold_6_1065", align 8
  store { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_56_cloval_1064", { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8, !dbg !171
  %"$gasrem_1067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1068" = icmp ugt i64 2, %"$gasrem_1067"
  br i1 %"$gascmp_1068", label %"$out_of_gas_1069", label %"$have_gas_1070"

"$out_of_gas_1069":                               ; preds = %"$have_gas_1053"
  call void @_out_of_gas()
  br label %"$have_gas_1070"

"$have_gas_1070":                                 ; preds = %"$out_of_gas_1069", %"$have_gas_1053"
  %"$consume_1071" = sub i64 %"$gasrem_1067", 2
  store i64 %"$consume_1071", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !169
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !172 {
entry:
  %"$expr_62" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$expr_62", metadata !173, metadata !DIExpression()), !dbg !174
  %"$gasrem_1072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1073" = icmp ugt i64 1, %"$gasrem_1072"
  br i1 %"$gascmp_1073", label %"$out_of_gas_1074", label %"$have_gas_1075"

"$out_of_gas_1074":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1075"

"$have_gas_1075":                                 ; preds = %"$out_of_gas_1074", %entry
  %"$consume_1076" = sub i64 %"$gasrem_1072", 1
  store i64 %"$consume_1076", i64* @_gasrem, align 8
  %nat_succ = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1077" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1078" = icmp ugt i64 1, %"$gasrem_1077"
  br i1 %"$gascmp_1078", label %"$out_of_gas_1079", label %"$have_gas_1080"

"$out_of_gas_1079":                               ; preds = %"$have_gas_1075"
  call void @_out_of_gas()
  br label %"$have_gas_1080"

"$have_gas_1080":                                 ; preds = %"$out_of_gas_1079", %"$have_gas_1075"
  %"$consume_1081" = sub i64 %"$gasrem_1077", 1
  store i64 %"$consume_1081", i64* @_gasrem, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } { %TName_Nat* (i8*, %TName_Nat*)* bitcast (%TName_Nat* (%"$$fundef_63_env_160"*, %TName_Nat*)* @"$fundef_63" to %TName_Nat* (i8*, %TName_Nat*)*), i8* null }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8, !dbg !175
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 1, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$have_gas_1080"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$have_gas_1080"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 1
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %nat_iter = alloca { i8*, i8* }*, align 8
  %"$gasrem_1090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1091" = icmp ugt i64 1, %"$gasrem_1090"
  br i1 %"$gascmp_1091", label %"$out_of_gas_1092", label %"$have_gas_1093"

"$out_of_gas_1092":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1093"

"$have_gas_1093":                                 ; preds = %"$out_of_gas_1092", %"$have_gas_1088"
  %"$consume_1094" = sub i64 %"$gasrem_1090", 1
  store i64 %"$consume_1094", i64* @_gasrem, align 8
  %"$$fundef_65_envp_1095_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_65_envp_1095_salloc" = call i8* @_salloc(i8* %"$$fundef_65_envp_1095_load", i64 8)
  %"$$fundef_65_envp_1095" = bitcast i8* %"$$fundef_65_envp_1095_salloc" to %"$$fundef_65_env_159"*
  %"$$fundef_65_env_voidp_1097" = bitcast %"$$fundef_65_env_159"* %"$$fundef_65_envp_1095" to i8*
  %"$$fundef_65_cloval_1098" = insertvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)* bitcast ({ { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (%"$$fundef_65_env_159"*)* @"$fundef_65" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_65_env_voidp_1097", 1
  %"$$fundef_65_env_nat_fold_1099" = getelementptr inbounds %"$$fundef_65_env_159", %"$$fundef_65_env_159"* %"$$fundef_65_envp_1095", i32 0, i32 0
  %"$nat_fold_1100" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_1100", { i8*, i8* }** %"$$fundef_65_env_nat_fold_1099", align 8
  %"$$fundef_77_env_voidp_1102" = bitcast %"$$fundef_65_env_159"* %"$$fundef_65_envp_1095" to i8*
  %"$$fundef_77_cloval_1103" = insertvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (%"$$fundef_77_env_153"*)* @"$fundef_77" to { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_77_env_voidp_1102", 1
  %"$dyndisp_table_1104_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_1104_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_1104_salloc_load", i64 48)
  %"$dyndisp_table_1104_salloc" = bitcast i8* %"$dyndisp_table_1104_salloc_salloc" to [3 x { i8*, i8* }]*
  %"$dyndisp_table_1104" = bitcast [3 x { i8*, i8* }]* %"$dyndisp_table_1104_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_1105" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1104", i32 1
  %"$dyndisp_pcast_1106" = bitcast { i8*, i8* }* %"$dyndisp_gep_1105" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_65_cloval_1098", { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1106", align 8
  %"$dyndisp_gep_1107" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_1104", i32 2
  %"$dyndisp_pcast_1108" = bitcast { i8*, i8* }* %"$dyndisp_gep_1107" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_77_cloval_1103", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_1108", align 8
  store { i8*, i8* }* %"$dyndisp_table_1104", { i8*, i8* }** %nat_iter, align 8, !dbg !176
  %"$gasrem_1109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1110" = icmp ugt i64 1, %"$gasrem_1109"
  br i1 %"$gascmp_1110", label %"$out_of_gas_1111", label %"$have_gas_1112"

"$out_of_gas_1111":                               ; preds = %"$have_gas_1093"
  call void @_out_of_gas()
  br label %"$have_gas_1112"

"$have_gas_1112":                                 ; preds = %"$out_of_gas_1111", %"$have_gas_1093"
  %"$consume_1113" = sub i64 %"$gasrem_1109", 1
  store i64 %"$consume_1113", i64* @_gasrem, align 8
  %ackermann = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_1114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1115" = icmp ugt i64 1, %"$gasrem_1114"
  br i1 %"$gascmp_1115", label %"$out_of_gas_1116", label %"$have_gas_1117"

"$out_of_gas_1116":                               ; preds = %"$have_gas_1112"
  call void @_out_of_gas()
  br label %"$have_gas_1117"

"$have_gas_1117":                                 ; preds = %"$out_of_gas_1116", %"$have_gas_1112"
  %"$consume_1118" = sub i64 %"$gasrem_1114", 1
  store i64 %"$consume_1118", i64* @_gasrem, align 8
  %iter_nat = alloca { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
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
  %"$nat_iter_1125" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1124", i32 2
  %"$nat_iter_1126" = bitcast { i8*, i8* }* %"$nat_iter_1125" to { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1127" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1126", align 8
  %"$nat_iter_fptr_1128" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1127", 0
  %"$nat_iter_envptr_1129" = extractvalue { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1127", 1
  %"$nat_iter_call_1130" = call { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_fptr_1128"(i8* %"$nat_iter_envptr_1129"), !dbg !177
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$nat_iter_call_1130", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8, !dbg !178
  %"$gasrem_1131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1132" = icmp ugt i64 1, %"$gasrem_1131"
  br i1 %"$gascmp_1132", label %"$out_of_gas_1133", label %"$have_gas_1134"

"$out_of_gas_1133":                               ; preds = %"$have_gas_1122"
  call void @_out_of_gas()
  br label %"$have_gas_1134"

"$have_gas_1134":                                 ; preds = %"$out_of_gas_1133", %"$have_gas_1122"
  %"$consume_1135" = sub i64 %"$gasrem_1131", 1
  store i64 %"$consume_1135", i64* @_gasrem, align 8
  %iter_nat_nat = alloca { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_1136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1137" = icmp ugt i64 1, %"$gasrem_1136"
  br i1 %"$gascmp_1137", label %"$out_of_gas_1138", label %"$have_gas_1139"

"$out_of_gas_1138":                               ; preds = %"$have_gas_1134"
  call void @_out_of_gas()
  br label %"$have_gas_1139"

"$have_gas_1139":                                 ; preds = %"$out_of_gas_1138", %"$have_gas_1134"
  %"$consume_1140" = sub i64 %"$gasrem_1136", 1
  store i64 %"$consume_1140", i64* @_gasrem, align 8
  %"$nat_iter_1141" = load { i8*, i8* }*, { i8*, i8* }** %nat_iter, align 8
  %"$nat_iter_1142" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_iter_1141", i32 1
  %"$nat_iter_1143" = bitcast { i8*, i8* }* %"$nat_iter_1142" to { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_iter_1144" = load { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }, { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_iter_1143", align 8
  %"$nat_iter_fptr_1145" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1144", 0
  %"$nat_iter_envptr_1146" = extractvalue { { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } (i8*)*, i8* } %"$nat_iter_1144", 1
  %"$nat_iter_call_1147" = call { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_fptr_1145"(i8* %"$nat_iter_envptr_1146"), !dbg !179
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$nat_iter_call_1147", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8, !dbg !180
  %"$gasrem_1148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1149" = icmp ugt i64 1, %"$gasrem_1148"
  br i1 %"$gascmp_1149", label %"$out_of_gas_1150", label %"$have_gas_1151"

"$out_of_gas_1150":                               ; preds = %"$have_gas_1139"
  call void @_out_of_gas()
  br label %"$have_gas_1151"

"$have_gas_1151":                                 ; preds = %"$out_of_gas_1150", %"$have_gas_1139"
  %"$consume_1152" = sub i64 %"$gasrem_1148", 1
  store i64 %"$consume_1152", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %zero, metadata !181, metadata !DIExpression()), !dbg !182
  %"$gasrem_1153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1154" = icmp ugt i64 1, %"$gasrem_1153"
  br i1 %"$gascmp_1154", label %"$out_of_gas_1155", label %"$have_gas_1156"

"$out_of_gas_1155":                               ; preds = %"$have_gas_1151"
  call void @_out_of_gas()
  br label %"$have_gas_1156"

"$have_gas_1156":                                 ; preds = %"$out_of_gas_1155", %"$have_gas_1151"
  %"$consume_1157" = sub i64 %"$gasrem_1153", 1
  store i64 %"$consume_1157", i64* @_gasrem, align 8
  %"$adtval_1158_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1158_salloc" = call i8* @_salloc(i8* %"$adtval_1158_load", i64 1)
  %"$adtval_1158" = bitcast i8* %"$adtval_1158_salloc" to %CName_Zero*
  %"$adtgep_1159" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_1158", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1159", align 1
  %"$adtptr_1160" = bitcast %CName_Zero* %"$adtval_1158" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1160", %TName_Nat** %zero, align 8, !dbg !183
  %"$gasrem_1161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1162" = icmp ugt i64 1, %"$gasrem_1161"
  br i1 %"$gascmp_1162", label %"$out_of_gas_1163", label %"$have_gas_1164"

"$out_of_gas_1163":                               ; preds = %"$have_gas_1156"
  call void @_out_of_gas()
  br label %"$have_gas_1164"

"$have_gas_1164":                                 ; preds = %"$out_of_gas_1163", %"$have_gas_1156"
  %"$consume_1165" = sub i64 %"$gasrem_1161", 1
  store i64 %"$consume_1165", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %one, metadata !184, metadata !DIExpression()), !dbg !185
  %"$gasrem_1166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1167" = icmp ugt i64 1, %"$gasrem_1166"
  br i1 %"$gascmp_1167", label %"$out_of_gas_1168", label %"$have_gas_1169"

"$out_of_gas_1168":                               ; preds = %"$have_gas_1164"
  call void @_out_of_gas()
  br label %"$have_gas_1169"

"$have_gas_1169":                                 ; preds = %"$out_of_gas_1168", %"$have_gas_1164"
  %"$consume_1170" = sub i64 %"$gasrem_1166", 1
  store i64 %"$consume_1170", i64* @_gasrem, align 8
  %"$zero_1171" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_1172_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1172_salloc" = call i8* @_salloc(i8* %"$adtval_1172_load", i64 9)
  %"$adtval_1172" = bitcast i8* %"$adtval_1172_salloc" to %CName_Succ*
  %"$adtgep_1173" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1172", i32 0, i32 0
  store i8 1, i8* %"$adtgep_1173", align 1
  %"$adtgep_1174" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_1172", i32 0, i32 1
  store %TName_Nat* %"$zero_1171", %TName_Nat** %"$adtgep_1174", align 8
  %"$adtptr_1175" = bitcast %CName_Succ* %"$adtval_1172" to %TName_Nat*
  store %TName_Nat* %"$adtptr_1175", %TName_Nat** %one, align 8, !dbg !186
  %"$gasrem_1176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1177" = icmp ugt i64 1, %"$gasrem_1176"
  br i1 %"$gascmp_1177", label %"$out_of_gas_1178", label %"$have_gas_1179"

"$out_of_gas_1178":                               ; preds = %"$have_gas_1169"
  call void @_out_of_gas()
  br label %"$have_gas_1179"

"$have_gas_1179":                                 ; preds = %"$out_of_gas_1178", %"$have_gas_1169"
  %"$consume_1180" = sub i64 %"$gasrem_1176", 1
  store i64 %"$consume_1180", i64* @_gasrem, align 8
  %f = alloca { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, align 8
  %"$gasrem_1181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1182" = icmp ugt i64 1, %"$gasrem_1181"
  br i1 %"$gascmp_1182", label %"$out_of_gas_1183", label %"$have_gas_1184"

"$out_of_gas_1183":                               ; preds = %"$have_gas_1179"
  call void @_out_of_gas()
  br label %"$have_gas_1184"

"$have_gas_1184":                                 ; preds = %"$out_of_gas_1183", %"$have_gas_1179"
  %"$consume_1185" = sub i64 %"$gasrem_1181", 1
  store i64 %"$consume_1185", i64* @_gasrem, align 8
  %"$$fundef_89_envp_1186_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_89_envp_1186_salloc" = call i8* @_salloc(i8* %"$$fundef_89_envp_1186_load", i64 24)
  %"$$fundef_89_envp_1186" = bitcast i8* %"$$fundef_89_envp_1186_salloc" to %"$$fundef_89_env_147"*
  %"$$fundef_89_env_voidp_1188" = bitcast %"$$fundef_89_env_147"* %"$$fundef_89_envp_1186" to i8*
  %"$$fundef_89_cloval_1189" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_89_env_147"*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })* @"$fundef_89" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*), i8* undef }, i8* %"$$fundef_89_env_voidp_1188", 1
  %"$$fundef_89_env_iter_nat_1190" = getelementptr inbounds %"$$fundef_89_env_147", %"$$fundef_89_env_147"* %"$$fundef_89_envp_1186", i32 0, i32 0
  %"$iter_nat_1191" = load { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %iter_nat, align 8
  store { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$iter_nat_1191", { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_89_env_iter_nat_1190", align 8
  %"$$fundef_89_env_one_1192" = getelementptr inbounds %"$$fundef_89_env_147", %"$$fundef_89_env_147"* %"$$fundef_89_envp_1186", i32 0, i32 1
  %"$one_1193" = load %TName_Nat*, %TName_Nat** %one, align 8
  store %TName_Nat* %"$one_1193", %TName_Nat** %"$$fundef_89_env_one_1192", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$$fundef_89_cloval_1189", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8, !dbg !187
  %"$gasrem_1194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1195" = icmp ugt i64 1, %"$gasrem_1194"
  br i1 %"$gascmp_1195", label %"$out_of_gas_1196", label %"$have_gas_1197"

"$out_of_gas_1196":                               ; preds = %"$have_gas_1184"
  call void @_out_of_gas()
  br label %"$have_gas_1197"

"$have_gas_1197":                                 ; preds = %"$out_of_gas_1196", %"$have_gas_1184"
  %"$consume_1198" = sub i64 %"$gasrem_1194", 1
  store i64 %"$consume_1198", i64* @_gasrem, align 8
  %"$$fundef_93_envp_1199_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_93_envp_1199_salloc" = call i8* @_salloc(i8* %"$$fundef_93_envp_1199_load", i64 48)
  %"$$fundef_93_envp_1199" = bitcast i8* %"$$fundef_93_envp_1199_salloc" to %"$$fundef_93_env_145"*
  %"$$fundef_93_env_voidp_1201" = bitcast %"$$fundef_93_env_145"* %"$$fundef_93_envp_1199" to i8*
  %"$$fundef_93_cloval_1202" = insertvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)* bitcast ({ %TName_Nat* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_93_env_145"*, %TName_Nat*)* @"$fundef_93" to { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_93_env_voidp_1201", 1
  %"$$fundef_93_env_f_1203" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %"$$fundef_93_envp_1199", i32 0, i32 0
  %"$f_1204" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %f, align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } %"$f_1204", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* }* %"$$fundef_93_env_f_1203", align 8
  %"$$fundef_93_env_iter_nat_nat_1205" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %"$$fundef_93_envp_1199", i32 0, i32 1
  %"$iter_nat_nat_1206" = load { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }, { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %iter_nat_nat, align 8
  store { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* } %"$iter_nat_nat_1206", { { { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* } (i8*, %TName_Nat*)*, i8* } (i8*, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, { %TName_Nat* (i8*, %TName_Nat*)*, i8* })*, i8* })*, i8* }* %"$$fundef_93_env_iter_nat_nat_1205", align 8
  %"$$fundef_93_env_nat_succ_1207" = getelementptr inbounds %"$$fundef_93_env_145", %"$$fundef_93_env_145"* %"$$fundef_93_envp_1199", i32 0, i32 2
  %"$nat_succ_1208" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %nat_succ, align 8
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$nat_succ_1208", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$$fundef_93_env_nat_succ_1207", align 8
  store { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$$fundef_93_cloval_1202", { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8, !dbg !188
  %"$gasrem_1209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1210" = icmp ugt i64 1, %"$gasrem_1209"
  br i1 %"$gascmp_1210", label %"$out_of_gas_1211", label %"$have_gas_1212"

"$out_of_gas_1211":                               ; preds = %"$have_gas_1197"
  call void @_out_of_gas()
  br label %"$have_gas_1212"

"$have_gas_1212":                                 ; preds = %"$out_of_gas_1211", %"$have_gas_1197"
  %"$consume_1213" = sub i64 %"$gasrem_1209", 1
  store i64 %"$consume_1213", i64* @_gasrem, align 8
  %uintM = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %uintM, metadata !189, metadata !DIExpression()), !dbg !190
  %"$gasrem_1214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1215" = icmp ugt i64 1, %"$gasrem_1214"
  br i1 %"$gascmp_1215", label %"$out_of_gas_1216", label %"$have_gas_1217"

"$out_of_gas_1216":                               ; preds = %"$have_gas_1212"
  call void @_out_of_gas()
  br label %"$have_gas_1217"

"$have_gas_1217":                                 ; preds = %"$out_of_gas_1216", %"$have_gas_1212"
  %"$consume_1218" = sub i64 %"$gasrem_1214", 1
  store i64 %"$consume_1218", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %uintM, align 4, !dbg !191
  %"$gasrem_1219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1220" = icmp ugt i64 1, %"$gasrem_1219"
  br i1 %"$gascmp_1220", label %"$out_of_gas_1221", label %"$have_gas_1222"

"$out_of_gas_1221":                               ; preds = %"$have_gas_1217"
  call void @_out_of_gas()
  br label %"$have_gas_1222"

"$have_gas_1222":                                 ; preds = %"$out_of_gas_1221", %"$have_gas_1217"
  %"$consume_1223" = sub i64 %"$gasrem_1219", 1
  store i64 %"$consume_1223", i64* @_gasrem, align 8
  %uintN = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %uintN, metadata !192, metadata !DIExpression()), !dbg !193
  %"$gasrem_1224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1225" = icmp ugt i64 1, %"$gasrem_1224"
  br i1 %"$gascmp_1225", label %"$out_of_gas_1226", label %"$have_gas_1227"

"$out_of_gas_1226":                               ; preds = %"$have_gas_1222"
  call void @_out_of_gas()
  br label %"$have_gas_1227"

"$have_gas_1227":                                 ; preds = %"$out_of_gas_1226", %"$have_gas_1222"
  %"$consume_1228" = sub i64 %"$gasrem_1224", 1
  store i64 %"$consume_1228", i64* @_gasrem, align 8
  store %Uint32 { i32 7 }, %Uint32* %uintN, align 4, !dbg !194
  %"$gasrem_1229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1230" = icmp ugt i64 1, %"$gasrem_1229"
  br i1 %"$gascmp_1230", label %"$out_of_gas_1231", label %"$have_gas_1232"

"$out_of_gas_1231":                               ; preds = %"$have_gas_1227"
  call void @_out_of_gas()
  br label %"$have_gas_1232"

"$have_gas_1232":                                 ; preds = %"$out_of_gas_1231", %"$have_gas_1227"
  %"$consume_1233" = sub i64 %"$gasrem_1229", 1
  store i64 %"$consume_1233", i64* @_gasrem, align 8
  %m = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %m, metadata !195, metadata !DIExpression()), !dbg !196
  %"$uintM_1234" = load %Uint32, %Uint32* %uintM, align 4
  %"$valueof_1235" = extractvalue %Uint32 %"$uintM_1234", 0
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
  %"$uintM_1243" = load %Uint32, %Uint32* %uintM, align 4
  %"$to_nat_call_1244" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1242", %Uint32 %"$uintM_1243"), !dbg !197
  store %TName_Nat* %"$to_nat_call_1244", %TName_Nat** %m, align 8, !dbg !197
  %"$gasrem_1246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1247" = icmp ugt i64 1, %"$gasrem_1246"
  br i1 %"$gascmp_1247", label %"$out_of_gas_1248", label %"$have_gas_1249"

"$out_of_gas_1248":                               ; preds = %"$have_gas_1240"
  call void @_out_of_gas()
  br label %"$have_gas_1249"

"$have_gas_1249":                                 ; preds = %"$out_of_gas_1248", %"$have_gas_1240"
  %"$consume_1250" = sub i64 %"$gasrem_1246", 1
  store i64 %"$consume_1250", i64* @_gasrem, align 8
  %n = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %n, metadata !198, metadata !DIExpression()), !dbg !199
  %"$uintN_1251" = load %Uint32, %Uint32* %uintN, align 4
  %"$valueof_1252" = extractvalue %Uint32 %"$uintN_1251", 0
  %"$valueof_1253" = zext i32 %"$valueof_1252" to i64
  %"$gasrem_1254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1255" = icmp ugt i64 %"$valueof_1253", %"$gasrem_1254"
  br i1 %"$gascmp_1255", label %"$out_of_gas_1256", label %"$have_gas_1257"

"$out_of_gas_1256":                               ; preds = %"$have_gas_1249"
  call void @_out_of_gas()
  br label %"$have_gas_1257"

"$have_gas_1257":                                 ; preds = %"$out_of_gas_1256", %"$have_gas_1249"
  %"$consume_1258" = sub i64 %"$gasrem_1254", %"$valueof_1253"
  store i64 %"$consume_1258", i64* @_gasrem, align 8
  %"$execptr_load_1259" = load i8*, i8** @_execptr, align 8
  %"$uintN_1260" = load %Uint32, %Uint32* %uintN, align 4
  %"$to_nat_call_1261" = call %TName_Nat* @_to_nat(i8* %"$execptr_load_1259", %Uint32 %"$uintN_1260"), !dbg !200
  store %TName_Nat* %"$to_nat_call_1261", %TName_Nat** %n, align 8, !dbg !200
  %"$gasrem_1263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1264" = icmp ugt i64 1, %"$gasrem_1263"
  br i1 %"$gascmp_1264", label %"$out_of_gas_1265", label %"$have_gas_1266"

"$out_of_gas_1265":                               ; preds = %"$have_gas_1257"
  call void @_out_of_gas()
  br label %"$have_gas_1266"

"$have_gas_1266":                                 ; preds = %"$out_of_gas_1265", %"$have_gas_1257"
  %"$consume_1267" = sub i64 %"$gasrem_1263", 1
  store i64 %"$consume_1267", i64* @_gasrem, align 8
  %ack00 = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %ack00, metadata !201, metadata !DIExpression()), !dbg !202
  %"$gasrem_1268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1269" = icmp ugt i64 1, %"$gasrem_1268"
  br i1 %"$gascmp_1269", label %"$out_of_gas_1270", label %"$have_gas_1271"

"$out_of_gas_1270":                               ; preds = %"$have_gas_1266"
  call void @_out_of_gas()
  br label %"$have_gas_1271"

"$have_gas_1271":                                 ; preds = %"$out_of_gas_1270", %"$have_gas_1266"
  %"$consume_1272" = sub i64 %"$gasrem_1268", 1
  store i64 %"$consume_1272", i64* @_gasrem, align 8
  %"$ackermann_29" = alloca { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$ackermann_1273" = load { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }, { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* }* %ackermann, align 8
  %"$ackermann_fptr_1274" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1273", 0
  %"$ackermann_envptr_1275" = extractvalue { { %TName_Nat* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Nat*)*, i8* } %"$ackermann_1273", 1
  %"$m_1276" = load %TName_Nat*, %TName_Nat** %m, align 8
  %"$ackermann_call_1277" = call { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_fptr_1274"(i8* %"$ackermann_envptr_1275", %TName_Nat* %"$m_1276"), !dbg !203
  store { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$ackermann_call_1277", { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_29", align 8, !dbg !203
  %"$ackermann_30" = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$ackermann_30", metadata !204, metadata !DIExpression()), !dbg !203
  %"$$ackermann_29_1278" = load { %TName_Nat* (i8*, %TName_Nat*)*, i8* }, { %TName_Nat* (i8*, %TName_Nat*)*, i8* }* %"$ackermann_29", align 8
  %"$$ackermann_29_fptr_1279" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_29_1278", 0
  %"$$ackermann_29_envptr_1280" = extractvalue { %TName_Nat* (i8*, %TName_Nat*)*, i8* } %"$$ackermann_29_1278", 1
  %"$n_1281" = load %TName_Nat*, %TName_Nat** %n, align 8
  %"$$ackermann_29_call_1282" = call %TName_Nat* %"$$ackermann_29_fptr_1279"(i8* %"$$ackermann_29_envptr_1280", %TName_Nat* %"$n_1281"), !dbg !203
  store %TName_Nat* %"$$ackermann_29_call_1282", %TName_Nat** %"$ackermann_30", align 8, !dbg !203
  %"$$ackermann_30_1283" = load %TName_Nat*, %TName_Nat** %"$ackermann_30", align 8
  store %TName_Nat* %"$$ackermann_30_1283", %TName_Nat** %ack00, align 8, !dbg !203
  %"$gasrem_1284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1285" = icmp ugt i64 1, %"$gasrem_1284"
  br i1 %"$gascmp_1285", label %"$out_of_gas_1286", label %"$have_gas_1287"

"$out_of_gas_1286":                               ; preds = %"$have_gas_1271"
  call void @_out_of_gas()
  br label %"$have_gas_1287"

"$have_gas_1287":                                 ; preds = %"$out_of_gas_1286", %"$have_gas_1271"
  %"$consume_1288" = sub i64 %"$gasrem_1284", 1
  store i64 %"$consume_1288", i64* @_gasrem, align 8
  %int01 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %int01, metadata !205, metadata !DIExpression()), !dbg !206
  %"$gasrem_1289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1290" = icmp ugt i64 1, %"$gasrem_1289"
  br i1 %"$gascmp_1290", label %"$out_of_gas_1291", label %"$have_gas_1292"

"$out_of_gas_1291":                               ; preds = %"$have_gas_1287"
  call void @_out_of_gas()
  br label %"$have_gas_1292"

"$have_gas_1292":                                 ; preds = %"$out_of_gas_1291", %"$have_gas_1287"
  %"$consume_1293" = sub i64 %"$gasrem_1289", 1
  store i64 %"$consume_1293", i64* @_gasrem, align 8
  %"$NatUtils.nat_to_int_31" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$NatUtils.nat_to_int_31", metadata !207, metadata !DIExpression()), !dbg !208
  %"$NatUtils.nat_to_int_1294" = load { %Uint32 (i8*, %TName_Nat*)*, i8* }, { %Uint32 (i8*, %TName_Nat*)*, i8* }* @NatUtils.nat_to_int, align 8
  %"$NatUtils.nat_to_int_fptr_1295" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1294", 0
  %"$NatUtils.nat_to_int_envptr_1296" = extractvalue { %Uint32 (i8*, %TName_Nat*)*, i8* } %"$NatUtils.nat_to_int_1294", 1
  %"$ack00_1297" = load %TName_Nat*, %TName_Nat** %ack00, align 8
  %"$NatUtils.nat_to_int_call_1298" = call %Uint32 %"$NatUtils.nat_to_int_fptr_1295"(i8* %"$NatUtils.nat_to_int_envptr_1296", %TName_Nat* %"$ack00_1297"), !dbg !208
  store %Uint32 %"$NatUtils.nat_to_int_call_1298", %Uint32* %"$NatUtils.nat_to_int_31", align 4, !dbg !208
  %"$$NatUtils.nat_to_int_31_1299" = load %Uint32, %Uint32* %"$NatUtils.nat_to_int_31", align 4
  store %Uint32 %"$$NatUtils.nat_to_int_31_1299", %Uint32* %int01, align 4, !dbg !208
  %"$gasrem_1300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1301" = icmp ugt i64 1, %"$gasrem_1300"
  br i1 %"$gascmp_1301", label %"$out_of_gas_1302", label %"$have_gas_1303"

"$out_of_gas_1302":                               ; preds = %"$have_gas_1292"
  call void @_out_of_gas()
  br label %"$have_gas_1303"

"$have_gas_1303":                                 ; preds = %"$out_of_gas_1302", %"$have_gas_1292"
  %"$consume_1304" = sub i64 %"$gasrem_1300", 1
  store i64 %"$consume_1304", i64* @_gasrem, align 8
  %"$int01_1305" = load %Uint32, %Uint32* %int01, align 4
  store %Uint32 %"$int01_1305", %Uint32* %"$expr_62", align 4, !dbg !209
  %"$$expr_62_1306" = load %Uint32, %Uint32* %"$expr_62", align 4
  ret %Uint32 %"$$expr_62_1306"
}

declare %TName_Nat* @_to_nat(i8*, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1307" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_1308" = alloca %Uint32, align 8
  %"$memvoidcast_1309" = bitcast %Uint32* %"$pval_1308" to i8*
  store %Uint32 %"$exprval_1307", %Uint32* %"$pval_1308", align 4
  %"$execptr_load_1310" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1310", %_TyDescrTy_Typ* @"$TyDescr_Uint32_99", i8* %"$memvoidcast_1309")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "ackermann_3_7.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_93", linkageName: "$fundef_93", scope: !2, file: !2, line: 25, type: !4, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "n", scope: !3, file: !2, line: 25, type: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Nat", baseType: !10, size: 8, align: 8, dwarfAddressSpace: 0)
!10 = !DIBasicType(name: "Nat", size: 8)
!11 = !DILocation(line: 25, column: 11, scope: !3)
!12 = !DILocation(line: 25, column: 23, scope: !3)
!13 = distinct !DISubprogram(name: "$fundef_91", linkageName: "$fundef_91", scope: !2, file: !2, line: 24, type: !4, scopeLine: 24, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!14 = !DILocalVariable(name: "n", scope: !13, file: !2, line: 24, type: !9)
!15 = !DILocation(line: 24, column: 10, scope: !13)
!16 = !DILocalVariable(name: "$retval_92", scope: !13, file: !2, line: 24, type: !9)
!17 = !DILocation(line: 24, column: 22, scope: !13)
!18 = !DILocalVariable(name: "$iter_nat_25", scope: !13, file: !2, line: 24, type: !9)
!19 = distinct !DISubprogram(name: "$fundef_89", linkageName: "$fundef_89", scope: !2, file: !2, line: 23, type: !4, scopeLine: 23, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!20 = !DILocalVariable(name: "x0", scope: !19, file: !2, line: 23, type: !9)
!21 = !DILocation(line: 23, column: 9, scope: !19)
!22 = !DILocalVariable(name: "$ack_22", scope: !19, file: !2, line: 23, type: !9)
!23 = !DILocation(line: 23, column: 14, scope: !19)
!24 = !DILocation(line: 24, column: 22, scope: !19)
!25 = distinct !DISubprogram(name: "$fundef_87", linkageName: "$fundef_87", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!26 = !DILocalVariable(name: "unused", scope: !25, file: !2, line: 13, type: !9)
!27 = !DILocation(line: 13, column: 35, scope: !25)
!28 = !DILocalVariable(name: "$retval_88", scope: !25, file: !2, line: 13, type: !9)
!29 = !DILocation(line: 13, column: 52, scope: !25)
!30 = !DILocalVariable(name: "$f_18", scope: !25, file: !2, line: 13, type: !9)
!31 = distinct !DISubprogram(name: "$fundef_85", linkageName: "$fundef_85", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!32 = !DILocalVariable(name: "x", scope: !31, file: !2, line: 13, type: !9)
!33 = !DILocation(line: 13, column: 19, scope: !31)
!34 = !DILocation(line: 13, column: 52, scope: !31)
!35 = distinct !DISubprogram(name: "$fundef_83", linkageName: "$fundef_83", scope: !2, file: !2, line: 12, type: !4, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!36 = !DILocalVariable(name: "x0", scope: !35, file: !2, line: 11, type: !9)
!37 = !DILocation(line: 11, column: 8, scope: !35)
!38 = !DILocalVariable(name: "$retval_84", scope: !35, file: !2, line: 12, type: !9)
!39 = !DILocation(line: 12, column: 3, scope: !35)
!40 = !DILocation(line: 12, column: 17, scope: !35)
!41 = !DILocation(line: 12, column: 16, scope: !35)
!42 = !DILocation(line: 13, column: 30, scope: !35)
!43 = !DILocation(line: 14, column: 3, scope: !35)
!44 = !DILocalVariable(name: "$folder_21", scope: !35, file: !2, line: 14, type: !9)
!45 = distinct !DISubprogram(name: "$fundef_81", linkageName: "$fundef_81", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!46 = !DILocalVariable(name: "n", scope: !45, file: !2, line: 10, type: !9)
!47 = !DILocation(line: 10, column: 8, scope: !45)
!48 = !DILocation(line: 12, column: 3, scope: !45)
!49 = distinct !DISubprogram(name: "$fundef_79", linkageName: "$fundef_79", scope: !2, file: !2, line: 10, type: !4, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!50 = !DILocation(line: 11, column: 3, scope: !49)
!51 = distinct !DISubprogram(name: "$fundef_77", linkageName: "$fundef_77", scope: !2, file: !2, line: 10, type: !4, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!52 = !DILocation(line: 10, column: 3, scope: !51)
!53 = distinct !DISubprogram(name: "$fundef_75", linkageName: "$fundef_75", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!54 = !DILocalVariable(name: "unused", scope: !53, file: !2, line: 13, type: !9)
!55 = !DILocation(line: 13, column: 35, scope: !53)
!56 = !DILocation(line: 13, column: 52, scope: !53)
!57 = distinct !DISubprogram(name: "$fundef_73", linkageName: "$fundef_73", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!58 = !DILocation(line: 13, column: 52, scope: !57)
!59 = distinct !DISubprogram(name: "$fundef_71", linkageName: "$fundef_71", scope: !2, file: !2, line: 12, type: !4, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!60 = !DILocation(line: 12, column: 17, scope: !59)
!61 = !DILocation(line: 12, column: 16, scope: !59)
!62 = !DILocation(line: 13, column: 30, scope: !59)
!63 = !DILocation(line: 14, column: 3, scope: !59)
!64 = distinct !DISubprogram(name: "$fundef_69", linkageName: "$fundef_69", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!65 = !DILocalVariable(name: "n", scope: !64, file: !2, line: 10, type: !9)
!66 = !DILocation(line: 10, column: 8, scope: !64)
!67 = !DILocation(line: 12, column: 3, scope: !64)
!68 = distinct !DISubprogram(name: "$fundef_67", linkageName: "$fundef_67", scope: !2, file: !2, line: 10, type: !4, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!69 = !DILocation(line: 11, column: 3, scope: !68)
!70 = distinct !DISubprogram(name: "$fundef_65", linkageName: "$fundef_65", scope: !2, file: !2, line: 10, type: !4, scopeLine: 10, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!71 = !DILocation(line: 10, column: 3, scope: !70)
!72 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!73 = !DILocalVariable(name: "n", scope: !72, file: !2, line: 3, type: !9)
!74 = !DILocation(line: 3, column: 8, scope: !72)
!75 = !DILocalVariable(name: "$retval_64", scope: !72, file: !2, line: 3, type: !9)
!76 = !DILocation(line: 3, column: 20, scope: !72)
!77 = distinct !DISubprogram(name: "$fundef_60", linkageName: "$fundef_60", scope: !78, file: !78, line: 55, type: !4, scopeLine: 55, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!78 = !DIFile(filename: "NatUtils.scillib", directory: "../src/stdlib")
!79 = !DILocalVariable(name: "ignore", scope: !77, file: !78, line: 54, type: !9)
!80 = !DILocation(line: 54, column: 38, scope: !77)
!81 = !DILocalVariable(name: "$retval_61", scope: !77, file: !78, line: 55, type: !82)
!82 = !DIBasicType(name: "Uint32", size: 4)
!83 = !DILocation(line: 55, column: 7, scope: !77)
!84 = distinct !DISubprogram(name: "$fundef_58", linkageName: "$fundef_58", scope: !78, file: !78, line: 54, type: !4, scopeLine: 54, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!85 = !DILocalVariable(name: "z", scope: !84, file: !78, line: 54, type: !82)
!86 = !DILocation(line: 54, column: 18, scope: !84)
!87 = !DILocation(line: 55, column: 7, scope: !84)
!88 = distinct !DISubprogram(name: "$fundef_56", linkageName: "$fundef_56", scope: !78, file: !78, line: 52, type: !4, scopeLine: 52, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!89 = !DILocalVariable(name: "n", scope: !88, file: !78, line: 51, type: !9)
!90 = !DILocation(line: 51, column: 8, scope: !88)
!91 = !DILocalVariable(name: "$retval_57", scope: !88, file: !78, line: 52, type: !82)
!92 = !DILocation(line: 52, column: 5, scope: !88)
!93 = !DILocation(line: 52, column: 17, scope: !88)
!94 = !DILocation(line: 52, column: 16, scope: !88)
!95 = !DILocalVariable(name: "one_int", scope: !88, file: !78, line: 53, type: !82)
!96 = !DILocation(line: 53, column: 9, scope: !88)
!97 = !DILocation(line: 53, column: 19, scope: !88)
!98 = !DILocation(line: 54, column: 33, scope: !88)
!99 = !DILocalVariable(name: "zero_int", scope: !88, file: !78, line: 56, type: !82)
!100 = !DILocation(line: 56, column: 9, scope: !88)
!101 = !DILocation(line: 56, column: 20, scope: !88)
!102 = !DILocation(line: 57, column: 5, scope: !88)
!103 = !DILocalVariable(name: "$fold_17", scope: !88, file: !78, line: 57, type: !82)
!104 = distinct !DISubprogram(name: "$fundef_54", linkageName: "$fundef_54", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!105 = !DIFile(filename: "Prelude", directory: ".")
!106 = !DILocalVariable(name: "n", scope: !104, file: !105, line: 1, type: !9)
!107 = !DILocation(line: 1, column: 23, scope: !104)
!108 = !DILocalVariable(name: "$retval_55", scope: !104, file: !105, line: 1, type: !82)
!109 = !DILocation(line: 1, column: 34, scope: !104)
!110 = !DILocalVariable(name: "res", scope: !111, file: !105, line: 1, type: !82)
!111 = distinct !DILexicalBlock(scope: !112, file: !105, line: 1, column: 50)
!112 = distinct !DILexicalBlock(scope: !104, file: !105, line: 1, column: 34)
!113 = !DILocation(line: 1, column: 65, scope: !111)
!114 = !DILocation(line: 1, column: 71, scope: !111)
!115 = !DILocalVariable(name: "$fn_12", scope: !111, file: !105, line: 1, type: !82)
!116 = !DILocation(line: 1, column: 86, scope: !111)
!117 = !DILocalVariable(name: "$g_14", scope: !111, file: !105, line: 1, type: !82)
!118 = !DILocation(line: 1, column: 106, scope: !119)
!119 = distinct !DILexicalBlock(scope: !112, file: !105, line: 1, column: 98)
!120 = distinct !DISubprogram(name: "$fundef_52", linkageName: "$fundef_52", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!121 = !DILocalVariable(name: "f0", scope: !120, file: !105, line: 1, type: !82)
!122 = !DILocation(line: 1, column: 6, scope: !120)
!123 = !DILocation(line: 1, column: 34, scope: !120)
!124 = distinct !DISubprogram(name: "$fundef_50", linkageName: "$fundef_50", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!125 = !DILocation(line: 1, column: 18, scope: !124)
!126 = distinct !DISubprogram(name: "$fundef_48", linkageName: "$fundef_48", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!127 = !DILocation(line: 1, column: 18, scope: !126)
!128 = distinct !DISubprogram(name: "$fundef_46", linkageName: "$fundef_46", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!129 = !DILocalVariable(name: "n", scope: !128, file: !105, line: 1, type: !9)
!130 = !DILocation(line: 1, column: 23, scope: !128)
!131 = !DILocalVariable(name: "$retval_47", scope: !128, file: !105, line: 1, type: !9)
!132 = !DILocation(line: 1, column: 34, scope: !128)
!133 = !DILocalVariable(name: "res", scope: !134, file: !105, line: 1, type: !9)
!134 = distinct !DILexicalBlock(scope: !135, file: !105, line: 1, column: 50)
!135 = distinct !DILexicalBlock(scope: !128, file: !105, line: 1, column: 34)
!136 = !DILocation(line: 1, column: 65, scope: !134)
!137 = !DILocation(line: 1, column: 71, scope: !134)
!138 = !DILocalVariable(name: "$fn_8", scope: !134, file: !105, line: 1, type: !9)
!139 = !DILocation(line: 1, column: 86, scope: !134)
!140 = !DILocalVariable(name: "$g_10", scope: !134, file: !105, line: 1, type: !9)
!141 = !DILocation(line: 1, column: 106, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !105, line: 1, column: 98)
!143 = distinct !DISubprogram(name: "$fundef_44", linkageName: "$fundef_44", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!144 = !DILocalVariable(name: "f0", scope: !143, file: !105, line: 1, type: !9)
!145 = !DILocation(line: 1, column: 6, scope: !143)
!146 = !DILocation(line: 1, column: 34, scope: !143)
!147 = distinct !DISubprogram(name: "$fundef_42", linkageName: "$fundef_42", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!148 = !DILocation(line: 1, column: 18, scope: !147)
!149 = distinct !DISubprogram(name: "$fundef_40", linkageName: "$fundef_40", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!150 = !DILocation(line: 1, column: 18, scope: !149)
!151 = distinct !DISubprogram(name: "$fundef_38", linkageName: "$fundef_38", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!152 = !DILocalVariable(name: "n", scope: !151, file: !105, line: 1, type: !9)
!153 = !DILocation(line: 1, column: 23, scope: !151)
!154 = !DILocation(line: 1, column: 34, scope: !151)
!155 = !DILocation(line: 1, column: 71, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !105, line: 1, column: 50)
!157 = distinct !DILexicalBlock(scope: !151, file: !105, line: 1, column: 34)
!158 = !DILocation(line: 1, column: 86, scope: !156)
!159 = !DILocation(line: 1, column: 106, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !105, line: 1, column: 98)
!161 = distinct !DISubprogram(name: "$fundef_36", linkageName: "$fundef_36", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!162 = !DILocation(line: 1, column: 34, scope: !161)
!163 = distinct !DISubprogram(name: "$fundef_34", linkageName: "$fundef_34", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!164 = !DILocation(line: 1, column: 18, scope: !163)
!165 = distinct !DISubprogram(name: "$fundef_32", linkageName: "$fundef_32", scope: !105, file: !105, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!166 = !DILocation(line: 1, column: 18, scope: !165)
!167 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !168, file: !168, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!168 = !DIFile(filename: ".", directory: ".")
!169 = !DILocation(line: 0, scope: !167)
!170 = !DILocation(line: 1, column: 18, scope: !167)
!171 = !DILocation(line: 52, column: 5, scope: !167)
!172 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!173 = !DILocalVariable(name: "$expr_62", scope: !172, file: !2, line: 3, type: !82)
!174 = !DILocation(line: 3, column: 3, scope: !172)
!175 = !DILocation(line: 3, column: 20, scope: !172)
!176 = !DILocation(line: 8, column: 3, scope: !172)
!177 = !DILocation(line: 18, column: 19, scope: !172)
!178 = !DILocation(line: 18, column: 18, scope: !172)
!179 = !DILocation(line: 19, column: 23, scope: !172)
!180 = !DILocation(line: 19, column: 22, scope: !172)
!181 = !DILocalVariable(name: "zero", scope: !172, file: !2, line: 20, type: !9)
!182 = !DILocation(line: 20, column: 7, scope: !172)
!183 = !DILocation(line: 20, column: 14, scope: !172)
!184 = !DILocalVariable(name: "one", scope: !172, file: !2, line: 21, type: !9)
!185 = !DILocation(line: 21, column: 7, scope: !172)
!186 = !DILocation(line: 21, column: 13, scope: !172)
!187 = !DILocation(line: 23, column: 5, scope: !172)
!188 = !DILocation(line: 25, column: 23, scope: !172)
!189 = !DILocalVariable(name: "uintM", scope: !172, file: !2, line: 29, type: !82)
!190 = !DILocation(line: 29, column: 5, scope: !172)
!191 = !DILocation(line: 29, column: 13, scope: !172)
!192 = !DILocalVariable(name: "uintN", scope: !172, file: !2, line: 30, type: !82)
!193 = !DILocation(line: 30, column: 5, scope: !172)
!194 = !DILocation(line: 30, column: 13, scope: !172)
!195 = !DILocalVariable(name: "m", scope: !172, file: !2, line: 32, type: !9)
!196 = !DILocation(line: 32, column: 5, scope: !172)
!197 = !DILocation(line: 32, column: 9, scope: !172)
!198 = !DILocalVariable(name: "n", scope: !172, file: !2, line: 33, type: !9)
!199 = !DILocation(line: 33, column: 5, scope: !172)
!200 = !DILocation(line: 33, column: 9, scope: !172)
!201 = !DILocalVariable(name: "ack00", scope: !172, file: !2, line: 35, type: !9)
!202 = !DILocation(line: 35, column: 5, scope: !172)
!203 = !DILocation(line: 35, column: 13, scope: !172)
!204 = !DILocalVariable(name: "$ackermann_30", scope: !172, file: !2, line: 35, type: !9)
!205 = !DILocalVariable(name: "int01", scope: !172, file: !2, line: 36, type: !82)
!206 = !DILocation(line: 36, column: 5, scope: !172)
!207 = !DILocalVariable(name: "$NatUtils.nat_to_int_31", scope: !172, file: !2, line: 36, type: !82)
!208 = !DILocation(line: 36, column: 13, scope: !172)
!209 = !DILocation(line: 37, column: 1, scope: !172)
