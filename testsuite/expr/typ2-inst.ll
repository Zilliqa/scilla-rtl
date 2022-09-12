; let tf =
; tfun 'A =>
; tfun 'B =>
; fun (a : 'A) =>
; fun (b : 'B) =>
; Pair {'A 'B} a b
; in
; 
; let tf1 =
; tfun 'A =>
; tfun 'B =>
; @tf 'A 'B
; 
; in
; 
; let t1 = @tf1 Uint32 Uint64 in
; let t2 = @tf1 String ByStr20 in
; let uint32_one = Uint32 1 in
; let uint64_two = Uint64 2 in
; let hello_string = "hello" in
; let addr_bystr20 = 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa in
; 
; let p1 = t1 uint32_one uint64_two in
; let p2 = t2 hello_string addr_bystr20 in
; Pair {(Pair (Uint32) (Uint64)) ((Pair String ByStr20))} p1 p2
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_35" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_69" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_68"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_68" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_70"**, %"$TyDescrTy_ADTTyp_69"* }
%"$TyDescrTy_ADTTyp_Constr_70" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_499" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_500" = type { %ParamDescrString, i32, %"$ParamDescr_499"* }
%TName_Pair_String_ByStr20 = type { i8, %CName_Pair_String_ByStr20* }
%CName_Pair_String_ByStr20 = type <{ i8, %String, [20 x i8] }>
%String = type { i8*, i32 }
%"$$fundef_33_env_98" = type { { i8*, i8* }* }
%"$$fundef_31_env_99" = type { { i8*, i8* }* }
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint64 = type { i64 }
%Uint32 = type { i32 }
%"$$fundef_29_env_100" = type { { i8*, i8* }* }
%"$$fundef_27_env_101" = type { { i8*, i8* }* }
%"$$fundef_25_env_102" = type { %String }
%"$$fundef_23_env_103" = type {}
%"$$fundef_21_env_104" = type {}
%"$$fundef_19_env_105" = type {}
%"$$fundef_17_env_106" = type { %Uint32 }
%"$$fundef_15_env_107" = type {}
%"$$fundef_13_env_108" = type {}
%"$$fundef_11_env_109" = type {}
%"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)" = type { i8, %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* }
%"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)" = type <{ i8, %TName_Pair_Uint32_Uint64*, %TName_Pair_String_ByStr20* }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_36" = global %"$TyDescrTy_PrimTyp_35" zeroinitializer
@"$TyDescr_Int32_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Int32_Prim_36" to i8*) }
@"$TyDescr_Uint32_Prim_38" = global %"$TyDescrTy_PrimTyp_35" { i32 1, i32 0 }
@"$TyDescr_Uint32_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Uint32_Prim_38" to i8*) }
@"$TyDescr_Int64_Prim_40" = global %"$TyDescrTy_PrimTyp_35" { i32 0, i32 1 }
@"$TyDescr_Int64_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Int64_Prim_40" to i8*) }
@"$TyDescr_Uint64_Prim_42" = global %"$TyDescrTy_PrimTyp_35" { i32 1, i32 1 }
@"$TyDescr_Uint64_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Uint64_Prim_42" to i8*) }
@"$TyDescr_Int128_Prim_44" = global %"$TyDescrTy_PrimTyp_35" { i32 0, i32 2 }
@"$TyDescr_Int128_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Int128_Prim_44" to i8*) }
@"$TyDescr_Uint128_Prim_46" = global %"$TyDescrTy_PrimTyp_35" { i32 1, i32 2 }
@"$TyDescr_Uint128_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Uint128_Prim_46" to i8*) }
@"$TyDescr_Int256_Prim_48" = global %"$TyDescrTy_PrimTyp_35" { i32 0, i32 3 }
@"$TyDescr_Int256_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Int256_Prim_48" to i8*) }
@"$TyDescr_Uint256_Prim_50" = global %"$TyDescrTy_PrimTyp_35" { i32 1, i32 3 }
@"$TyDescr_Uint256_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Uint256_Prim_50" to i8*) }
@"$TyDescr_String_Prim_52" = global %"$TyDescrTy_PrimTyp_35" { i32 2, i32 0 }
@"$TyDescr_String_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_String_Prim_52" to i8*) }
@"$TyDescr_Bnum_Prim_54" = global %"$TyDescrTy_PrimTyp_35" { i32 3, i32 0 }
@"$TyDescr_Bnum_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Bnum_Prim_54" to i8*) }
@"$TyDescr_Message_Prim_56" = global %"$TyDescrTy_PrimTyp_35" { i32 4, i32 0 }
@"$TyDescr_Message_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Message_Prim_56" to i8*) }
@"$TyDescr_Event_Prim_58" = global %"$TyDescrTy_PrimTyp_35" { i32 5, i32 0 }
@"$TyDescr_Event_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Event_Prim_58" to i8*) }
@"$TyDescr_Exception_Prim_60" = global %"$TyDescrTy_PrimTyp_35" { i32 6, i32 0 }
@"$TyDescr_Exception_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Exception_Prim_60" to i8*) }
@"$TyDescr_ReplicateContr_Prim_62" = global %"$TyDescrTy_PrimTyp_35" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_63" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_ReplicateContr_Prim_62" to i8*) }
@"$TyDescr_Bystr_Prim_64" = global %"$TyDescrTy_PrimTyp_35" { i32 7, i32 0 }
@"$TyDescr_Bystr_65" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Bystr_Prim_64" to i8*) }
@"$TyDescr_Bystr20_Prim_66" = global %"$TyDescrTy_PrimTyp_35" { i32 8, i32 20 }
@"$TyDescr_Bystr20_67" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Bystr20_Prim_66" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_68"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_83" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr20_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_68"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_89" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_68"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_95" to i8*) }
@"$TyDescr_Pair_ADTTyp_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_69" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_97", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_68"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_68"*], [3 x %"$TyDescrTy_ADTTyp_Specl_68"*]* @"$TyDescr_Pair_ADTTyp_m_specls_96", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_78" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_72"]
@"$TyDescr_ADT_Pair_79" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_70" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_79", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_78", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_81" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_70"*] [%"$TyDescrTy_ADTTyp_Constr_70"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_80"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_82" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_72"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_68" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_82", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_70"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_70"*], [1 x %"$TyDescrTy_ADTTyp_Constr_70"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_81", i32 0, i32 0), %"$TyDescrTy_ADTTyp_69"* @"$TyDescr_Pair_ADTTyp_77" }
@"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_84" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_53", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_67"]
@"$TyDescr_ADT_Pair_85" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_70" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_85", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_84", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_87" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_70"*] [%"$TyDescrTy_ADTTyp_Constr_70"* @"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_86"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_88" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_53", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_67"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_68" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_88", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_70"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_70"*], [1 x %"$TyDescrTy_ADTTyp_Constr_70"*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_69"* @"$TyDescr_Pair_ADTTyp_77" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_90" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_39", %_TyDescrTy_Typ* @"$TyDescr_Uint64_43"]
@"$TyDescr_ADT_Pair_91" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_92" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_70" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_91", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_90", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_93" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_70"*] [%"$TyDescrTy_ADTTyp_Constr_70"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_92"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_94" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_39", %_TyDescrTy_Typ* @"$TyDescr_Uint64_43"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_95" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_68" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_94", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_70"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_70"*], [1 x %"$TyDescrTy_ADTTyp_Constr_70"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_93", i32 0, i32 0), %"$TyDescrTy_ADTTyp_69"* @"$TyDescr_Pair_ADTTyp_77" }
@"$TyDescr_Pair_ADTTyp_m_specls_96" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_68"*] [%"$TyDescrTy_ADTTyp_Specl_68"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_83", %"$TyDescrTy_ADTTyp_Specl_68"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_89", %"$TyDescrTy_ADTTyp_Specl_68"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_95"]
@"$TyDescr_ADT_Pair_97" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_429" = unnamed_addr constant [5 x i8] c"hello"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_59", %_TyDescrTy_Typ* @"$TyDescr_Int64_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_72", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_67", %_TyDescrTy_Typ* @"$TyDescr_Uint256_51", %_TyDescrTy_Typ* @"$TyDescr_Uint32_39", %_TyDescrTy_Typ* @"$TyDescr_Uint64_43", %_TyDescrTy_Typ* @"$TyDescr_Bnum_55", %_TyDescrTy_Typ* @"$TyDescr_Uint128_47", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_73", %_TyDescrTy_Typ* @"$TyDescr_Exception_61", %_TyDescrTy_Typ* @"$TyDescr_String_53", %_TyDescrTy_Typ* @"$TyDescr_Int256_49", %_TyDescrTy_Typ* @"$TyDescr_Int128_45", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_71", %_TyDescrTy_Typ* @"$TyDescr_Bystr_65", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_63", %_TyDescrTy_Typ* @"$TyDescr_Message_57", %_TyDescrTy_Typ* @"$TyDescr_Int32_37"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_499"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_500"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_33"(%"$$fundef_33_env_98"* %0) {
entry:
  %"$$fundef_33_env_tf_257" = getelementptr inbounds %"$$fundef_33_env_98", %"$$fundef_33_env_98"* %0, i32 0, i32 0
  %"$tf_envload_258" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_33_env_tf_257", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_258", { i8*, i8* }** %tf, align 8
  %"$retval_34" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %entry
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$tf_264" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_265" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_264", i32 2
  %"$tf_266" = bitcast { i8*, i8* }* %"$tf_265" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_267" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_266", align 8
  %"$tf_fptr_268" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_267", 0
  %"$tf_envptr_269" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_267", 1
  %"$tf_call_270" = call { i8*, i8* }* %"$tf_fptr_268"(i8* %"$tf_envptr_269")
  %"$tf_271" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_270", i32 3
  %"$tf_272" = bitcast { i8*, i8* }* %"$tf_271" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf_273" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf_272", align 8
  %"$tf_fptr_274" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_273", 0
  %"$tf_envptr_275" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_273", 1
  %"$tf_call_276" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_fptr_274"(i8* %"$tf_envptr_275")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_call_276", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_34", align 8
  %"$$retval_34_277" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_34", align 8
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_34_277"
}

define internal { i8*, i8* }* @"$fundef_31"(%"$$fundef_31_env_99"* %0) {
entry:
  %"$$fundef_31_env_tf_240" = getelementptr inbounds %"$$fundef_31_env_99", %"$$fundef_31_env_99"* %0, i32 0, i32 0
  %"$tf_envload_241" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_31_env_tf_240", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_241", { i8*, i8* }** %tf, align 8
  %"$retval_32" = alloca { i8*, i8* }*, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %entry
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$$fundef_33_envp_247_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_33_envp_247_salloc" = call i8* @_salloc(i8* %"$$fundef_33_envp_247_load", i64 8)
  %"$$fundef_33_envp_247" = bitcast i8* %"$$fundef_33_envp_247_salloc" to %"$$fundef_33_env_98"*
  %"$$fundef_33_env_voidp_249" = bitcast %"$$fundef_33_env_98"* %"$$fundef_33_envp_247" to i8*
  %"$$fundef_33_cloval_250" = insertvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_33_env_98"*)* @"$fundef_33" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_33_env_voidp_249", 1
  %"$$fundef_33_env_tf_251" = getelementptr inbounds %"$$fundef_33_env_98", %"$$fundef_33_env_98"* %"$$fundef_33_envp_247", i32 0, i32 0
  %"$tf_252" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_252", { i8*, i8* }** %"$$fundef_33_env_tf_251", align 8
  %"$dyndisp_table_253_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_253_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_253_salloc_load", i64 64)
  %"$dyndisp_table_253_salloc" = bitcast i8* %"$dyndisp_table_253_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_253" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_253_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_254" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_253", i32 3
  %"$dyndisp_pcast_255" = bitcast { i8*, i8* }* %"$dyndisp_gep_254" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$$fundef_33_cloval_250", { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_255", align 8
  store { i8*, i8* }* %"$dyndisp_table_253", { i8*, i8* }** %"$retval_32", align 8
  %"$$retval_32_256" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_32", align 8
  ret { i8*, i8* }* %"$$retval_32_256"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_29"(%"$$fundef_29_env_100"* %0) {
entry:
  %"$$fundef_29_env_tf_219" = getelementptr inbounds %"$$fundef_29_env_100", %"$$fundef_29_env_100"* %0, i32 0, i32 0
  %"$tf_envload_220" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_29_env_tf_219", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_220", { i8*, i8* }** %tf, align 8
  %"$retval_30" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 1, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %entry
  %"$consume_225" = sub i64 %"$gasrem_221", 1
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %"$tf_226" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_227" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_226", i32 0
  %"$tf_228" = bitcast { i8*, i8* }* %"$tf_227" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_229" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_228", align 8
  %"$tf_fptr_230" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_229", 0
  %"$tf_envptr_231" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_229", 1
  %"$tf_call_232" = call { i8*, i8* }* %"$tf_fptr_230"(i8* %"$tf_envptr_231")
  %"$tf_233" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_232", i32 1
  %"$tf_234" = bitcast { i8*, i8* }* %"$tf_233" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_235" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_234", align 8
  %"$tf_fptr_236" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_235", 0
  %"$tf_envptr_237" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_235", 1
  %"$tf_call_238" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_236"(i8* %"$tf_envptr_237")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_238", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30", align 8
  %"$$retval_30_239" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_30_239"
}

define internal { i8*, i8* }* @"$fundef_27"(%"$$fundef_27_env_101"* %0) {
entry:
  %"$$fundef_27_env_tf_202" = getelementptr inbounds %"$$fundef_27_env_101", %"$$fundef_27_env_101"* %0, i32 0, i32 0
  %"$tf_envload_203" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_202", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_203", { i8*, i8* }** %tf, align 8
  %"$retval_28" = alloca { i8*, i8* }*, align 8
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %entry
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$$fundef_29_envp_209_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_29_envp_209_salloc" = call i8* @_salloc(i8* %"$$fundef_29_envp_209_load", i64 8)
  %"$$fundef_29_envp_209" = bitcast i8* %"$$fundef_29_envp_209_salloc" to %"$$fundef_29_env_100"*
  %"$$fundef_29_env_voidp_211" = bitcast %"$$fundef_29_env_100"* %"$$fundef_29_envp_209" to i8*
  %"$$fundef_29_cloval_212" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_29_env_100"*)* @"$fundef_29" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_29_env_voidp_211", 1
  %"$$fundef_29_env_tf_213" = getelementptr inbounds %"$$fundef_29_env_100", %"$$fundef_29_env_100"* %"$$fundef_29_envp_209", i32 0, i32 0
  %"$tf_214" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_214", { i8*, i8* }** %"$$fundef_29_env_tf_213", align 8
  %"$dyndisp_table_215_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_215_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_215_salloc_load", i64 64)
  %"$dyndisp_table_215_salloc" = bitcast i8* %"$dyndisp_table_215_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_215" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_215_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_216" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_215", i32 1
  %"$dyndisp_pcast_217" = bitcast { i8*, i8* }* %"$dyndisp_gep_216" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_29_cloval_212", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_217", align 8
  store { i8*, i8* }* %"$dyndisp_table_215", { i8*, i8* }** %"$retval_28", align 8
  %"$$retval_28_218" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_28", align 8
  ret { i8*, i8* }* %"$$retval_28_218"
}

define internal %TName_Pair_String_ByStr20* @"$fundef_25"(%"$$fundef_25_env_102"* %0, [20 x i8]* %1) {
entry:
  %b = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_25_env_a_188" = getelementptr inbounds %"$$fundef_25_env_102", %"$$fundef_25_env_102"* %0, i32 0, i32 0
  %"$a_envload_189" = load %String, %String* %"$$fundef_25_env_a_188", align 8
  %a = alloca %String, align 8
  store %String %"$a_envload_189", %String* %a, align 8
  %"$retval_26" = alloca %TName_Pair_String_ByStr20*, align 8
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %entry
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %"$a_195" = load %String, %String* %a, align 8
  %"$adtval_196_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_196_salloc" = call i8* @_salloc(i8* %"$adtval_196_load", i64 37)
  %"$adtval_196" = bitcast i8* %"$adtval_196_salloc" to %CName_Pair_String_ByStr20*
  %"$adtgep_197" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_196", i32 0, i32 0
  store i8 0, i8* %"$adtgep_197", align 1
  %"$adtgep_198" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_196", i32 0, i32 1
  store %String %"$a_195", %String* %"$adtgep_198", align 8
  %"$adtgep_199" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_196", i32 0, i32 2
  store [20 x i8] %b, [20 x i8]* %"$adtgep_199", align 1
  %"$adtptr_200" = bitcast %CName_Pair_String_ByStr20* %"$adtval_196" to %TName_Pair_String_ByStr20*
  store %TName_Pair_String_ByStr20* %"$adtptr_200", %TName_Pair_String_ByStr20** %"$retval_26", align 8
  %"$$retval_26_201" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$retval_26", align 8
  ret %TName_Pair_String_ByStr20* %"$$retval_26_201"
}

define internal { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_23"(%"$$fundef_23_env_103"* %0, %String %1) {
entry:
  %"$retval_24" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %entry
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %"$$fundef_25_envp_182_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_182_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_182_load", i64 16)
  %"$$fundef_25_envp_182" = bitcast i8* %"$$fundef_25_envp_182_salloc" to %"$$fundef_25_env_102"*
  %"$$fundef_25_env_voidp_184" = bitcast %"$$fundef_25_env_102"* %"$$fundef_25_envp_182" to i8*
  %"$$fundef_25_cloval_185" = insertvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_Pair_String_ByStr20* (%"$$fundef_25_env_102"*, [20 x i8]*)* @"$fundef_25" to %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_184", 1
  %"$$fundef_25_env_a_186" = getelementptr inbounds %"$$fundef_25_env_102", %"$$fundef_25_env_102"* %"$$fundef_25_envp_182", i32 0, i32 0
  store %String %1, %String* %"$$fundef_25_env_a_186", align 8
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_25_cloval_185", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_24", align 8
  %"$$retval_24_187" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_24", align 8
  ret { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_24_187"
}

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_21"(%"$$fundef_21_env_104"* %0) {
entry:
  %"$retval_22" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %entry
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)* bitcast ({ %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_23_env_103"*, %String)* @"$fundef_23" to { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*), i8* null }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_22", align 8
  %"$$retval_22_176" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_22", align 8
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_22_176"
}

define internal { i8*, i8* }* @"$fundef_19"(%"$$fundef_19_env_105"* %0) {
entry:
  %"$retval_20" = alloca { i8*, i8* }*, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %entry
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %"$dyndisp_table_164_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_164_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_164_salloc_load", i64 64)
  %"$dyndisp_table_164_salloc" = bitcast i8* %"$dyndisp_table_164_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_164" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_164_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_165" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_164", i32 3
  %"$dyndisp_pcast_166" = bitcast { i8*, i8* }* %"$dyndisp_gep_165" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_21_env_104"*)* @"$fundef_21" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_166", align 8
  store { i8*, i8* }* %"$dyndisp_table_164", { i8*, i8* }** %"$retval_20", align 8
  %"$$retval_20_167" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_20", align 8
  ret { i8*, i8* }* %"$$retval_20_167"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_17"(%"$$fundef_17_env_106"* %0, %Uint64 %1) {
entry:
  %"$$fundef_17_env_a_142" = getelementptr inbounds %"$$fundef_17_env_106", %"$$fundef_17_env_106"* %0, i32 0, i32 0
  %"$a_envload_143" = load %Uint32, %Uint32* %"$$fundef_17_env_a_142", align 4
  %a = alloca %Uint32, align 8
  store %Uint32 %"$a_envload_143", %Uint32* %a, align 4
  %"$retval_18" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %entry
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %"$a_149" = load %Uint32, %Uint32* %a, align 4
  %"$adtval_150_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_150_salloc" = call i8* @_salloc(i8* %"$adtval_150_load", i64 13)
  %"$adtval_150" = bitcast i8* %"$adtval_150_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_151" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_150", i32 0, i32 0
  store i8 0, i8* %"$adtgep_151", align 1
  %"$adtgep_152" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_150", i32 0, i32 1
  store %Uint32 %"$a_149", %Uint32* %"$adtgep_152", align 4
  %"$adtgep_153" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_150", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_153", align 8
  %"$adtptr_154" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_150" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_154", %TName_Pair_Uint32_Uint64** %"$retval_18", align 8
  %"$$retval_18_155" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_18", align 8
  ret %TName_Pair_Uint32_Uint64* %"$$retval_18_155"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_15"(%"$$fundef_15_env_107"* %0, %Uint32 %1) {
entry:
  %"$retval_16" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %entry
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$$fundef_17_envp_136_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_136_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_136_load", i64 4)
  %"$$fundef_17_envp_136" = bitcast i8* %"$$fundef_17_envp_136_salloc" to %"$$fundef_17_env_106"*
  %"$$fundef_17_env_voidp_138" = bitcast %"$$fundef_17_env_106"* %"$$fundef_17_envp_136" to i8*
  %"$$fundef_17_cloval_139" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_17_env_106"*, %Uint64)* @"$fundef_17" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_17_env_voidp_138", 1
  %"$$fundef_17_env_a_140" = getelementptr inbounds %"$$fundef_17_env_106", %"$$fundef_17_env_106"* %"$$fundef_17_envp_136", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_17_env_a_140", align 4
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_17_cloval_139", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8
  %"$$retval_16_141" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_16_141"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_13"(%"$$fundef_13_env_108"* %0) {
entry:
  %"$retval_14" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %entry
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_15_env_107"*, %Uint32)* @"$fundef_15" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8
  %"$$retval_14_130" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_14_130"
}

define internal { i8*, i8* }* @"$fundef_11"(%"$$fundef_11_env_109"* %0) {
entry:
  %"$retval_12" = alloca { i8*, i8* }*, align 8
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %entry
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$dyndisp_table_118_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_118_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_118_salloc_load", i64 64)
  %"$dyndisp_table_118_salloc" = bitcast i8* %"$dyndisp_table_118_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_118" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_118_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_119" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_118", i32 1
  %"$dyndisp_pcast_120" = bitcast { i8*, i8* }* %"$dyndisp_gep_119" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_13_env_108"*)* @"$fundef_13" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_120", align 8
  store { i8*, i8* }* %"$dyndisp_table_118", { i8*, i8* }** %"$retval_12", align 8
  %"$$retval_12_121" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_12", align 8
  ret { i8*, i8* }* %"$$retval_12_121"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 5, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %entry
  %"$consume_282" = sub i64 %"$gasrem_278", 5
  store i64 %"$consume_282", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 8, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_281"
  %"$consume_287" = sub i64 %"$gasrem_283", 8
  store i64 %"$consume_287", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 196, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$have_gas_286"
  %"$consume_292" = sub i64 %"$gasrem_288", 196
  store i64 %"$consume_292", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 20, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_291"
  %"$consume_297" = sub i64 %"$gasrem_293", 20
  store i64 %"$consume_297", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 12, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_296"
  %"$consume_302" = sub i64 %"$gasrem_298", 12
  store i64 %"$consume_302", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 2, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_301"
  %"$consume_307" = sub i64 %"$gasrem_303", 2
  store i64 %"$consume_307", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_10" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, align 8
  %"$gasrem_308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %entry
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_311"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %"$dyndisp_table_324_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_324_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_324_salloc_load", i64 64)
  %"$dyndisp_table_324_salloc" = bitcast i8* %"$dyndisp_table_324_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_324" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_324_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_325" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_324", i32 0
  %"$dyndisp_pcast_326" = bitcast { i8*, i8* }* %"$dyndisp_gep_325" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_11_env_109"*)* @"$fundef_11" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_326", align 8
  %"$dyndisp_gep_327" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_324", i32 2
  %"$dyndisp_pcast_328" = bitcast { i8*, i8* }* %"$dyndisp_gep_327" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_19_env_105"*)* @"$fundef_19" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_328", align 8
  store { i8*, i8* }* %"$dyndisp_table_324", { i8*, i8* }** %tf, align 8
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_316"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %tf1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_332"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %"$$fundef_27_envp_339_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_339_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_339_load", i64 8)
  %"$$fundef_27_envp_339" = bitcast i8* %"$$fundef_27_envp_339_salloc" to %"$$fundef_27_env_101"*
  %"$$fundef_27_env_voidp_341" = bitcast %"$$fundef_27_env_101"* %"$$fundef_27_envp_339" to i8*
  %"$$fundef_27_cloval_342" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_27_env_101"*)* @"$fundef_27" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_341", 1
  %"$$fundef_27_env_tf_343" = getelementptr inbounds %"$$fundef_27_env_101", %"$$fundef_27_env_101"* %"$$fundef_27_envp_339", i32 0, i32 0
  %"$tf_344" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_344", { i8*, i8* }** %"$$fundef_27_env_tf_343", align 8
  %"$$fundef_31_env_voidp_346" = bitcast %"$$fundef_27_env_101"* %"$$fundef_27_envp_339" to i8*
  %"$$fundef_31_cloval_347" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_31_env_99"*)* @"$fundef_31" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_31_env_voidp_346", 1
  %"$dyndisp_table_348_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_348_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_348_salloc_load", i64 64)
  %"$dyndisp_table_348_salloc" = bitcast i8* %"$dyndisp_table_348_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_348" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_348_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_349" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_348", i32 0
  %"$dyndisp_pcast_350" = bitcast { i8*, i8* }* %"$dyndisp_gep_349" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_27_cloval_342", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_350", align 8
  %"$dyndisp_gep_351" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_348", i32 2
  %"$dyndisp_pcast_352" = bitcast { i8*, i8* }* %"$dyndisp_gep_351" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_31_cloval_347", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_352", align 8
  store { i8*, i8* }* %"$dyndisp_table_348", { i8*, i8* }** %tf1, align 8
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_337"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %"$tf1_363" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_364" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_363", i32 0
  %"$tf1_365" = bitcast { i8*, i8* }* %"$tf1_364" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_366" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_365", align 8
  %"$tf1_fptr_367" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_366", 0
  %"$tf1_envptr_368" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_366", 1
  %"$tf1_call_369" = call { i8*, i8* }* %"$tf1_fptr_367"(i8* %"$tf1_envptr_368")
  %"$tf1_370" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_369", i32 1
  %"$tf1_371" = bitcast { i8*, i8* }* %"$tf1_370" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_372" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_371", align 8
  %"$tf1_fptr_373" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_372", 0
  %"$tf1_envptr_374" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_372", 1
  %"$tf1_call_375" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_373"(i8* %"$tf1_envptr_374")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_375", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_361"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  %t2 = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 1, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_379"
  %"$consume_385" = sub i64 %"$gasrem_381", 1
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %"$tf1_386" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_387" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_386", i32 2
  %"$tf1_388" = bitcast { i8*, i8* }* %"$tf1_387" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_389" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_388", align 8
  %"$tf1_fptr_390" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_389", 0
  %"$tf1_envptr_391" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_389", 1
  %"$tf1_call_392" = call { i8*, i8* }* %"$tf1_fptr_390"(i8* %"$tf1_envptr_391")
  %"$tf1_393" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_392", i32 3
  %"$tf1_394" = bitcast { i8*, i8* }* %"$tf1_393" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf1_395" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf1_394", align 8
  %"$tf1_fptr_396" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_395", 0
  %"$tf1_envptr_397" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_395", 1
  %"$tf1_call_398" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_fptr_396"(i8* %"$tf1_envptr_397")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_call_398", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2, align 8
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_384"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_384"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %uint32_one = alloca %Uint32, align 8
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_402"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint32_one, align 4
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_407"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %uint64_two = alloca %Uint64, align 8
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_412"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %uint64_two, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %hello_string = alloca %String, align 8
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_429", i32 0, i32 0), i32 5 }, %String* %hello_string, align 8
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_427"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %addr_bystr20 = alloca [20 x i8], align 1
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_433"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  store [20 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA", [20 x i8]* %addr_bystr20, align 1
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_438"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %p1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_443"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  %"$t1_6" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$t1_450" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$t1_fptr_451" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_450", 0
  %"$t1_envptr_452" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_450", 1
  %"$uint32_one_453" = load %Uint32, %Uint32* %uint32_one, align 4
  %"$t1_call_454" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_451"(i8* %"$t1_envptr_452", %Uint32 %"$uint32_one_453")
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_454", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8
  %"$t1_7" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$$t1_6_455" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8
  %"$$t1_6_fptr_456" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_455", 0
  %"$$t1_6_envptr_457" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_455", 1
  %"$uint64_two_458" = load %Uint64, %Uint64* %uint64_two, align 8
  %"$$t1_6_call_459" = call %TName_Pair_Uint32_Uint64* %"$$t1_6_fptr_456"(i8* %"$$t1_6_envptr_457", %Uint64 %"$uint64_two_458")
  store %TName_Pair_Uint32_Uint64* %"$$t1_6_call_459", %TName_Pair_Uint32_Uint64** %"$t1_7", align 8
  %"$$t1_7_460" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_7", align 8
  store %TName_Pair_Uint32_Uint64* %"$$t1_7_460", %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_448"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_String_ByStr20*, align 8
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_464"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  %"$t2_8" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$t2_471" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2, align 8
  %"$t2_fptr_472" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_471", 0
  %"$t2_envptr_473" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_471", 1
  %"$hello_string_474" = load %String, %String* %hello_string, align 8
  %"$t2_call_475" = call { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_fptr_472"(i8* %"$t2_envptr_473", %String %"$hello_string_474")
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_call_475", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_8", align 8
  %"$t2_9" = alloca %TName_Pair_String_ByStr20*, align 8
  %"$$t2_8_476" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_8", align 8
  %"$$t2_8_fptr_477" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_8_476", 0
  %"$$t2_8_envptr_478" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_8_476", 1
  %"$$t2_8_addr_bystr20_479" = alloca [20 x i8], align 1
  %"$addr_bystr20_480" = load [20 x i8], [20 x i8]* %addr_bystr20, align 1
  store [20 x i8] %"$addr_bystr20_480", [20 x i8]* %"$$t2_8_addr_bystr20_479", align 1
  %"$$t2_8_call_481" = call %TName_Pair_String_ByStr20* %"$$t2_8_fptr_477"(i8* %"$$t2_8_envptr_478", [20 x i8]* %"$$t2_8_addr_bystr20_479")
  store %TName_Pair_String_ByStr20* %"$$t2_8_call_481", %TName_Pair_String_ByStr20** %"$t2_9", align 8
  %"$$t2_9_482" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$t2_9", align 8
  store %TName_Pair_String_ByStr20* %"$$t2_9_482", %TName_Pair_String_ByStr20** %p2, align 8
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_469"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %"$p1_488" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$p2_489" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %p2, align 8
  %"$adtval_490_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_490_salloc" = call i8* @_salloc(i8* %"$adtval_490_load", i64 17)
  %"$adtval_490" = bitcast i8* %"$adtval_490_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  %"$adtgep_491" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_490", i32 0, i32 0
  store i8 0, i8* %"$adtgep_491", align 1
  %"$adtgep_492" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_490", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_488", %TName_Pair_Uint32_Uint64** %"$adtgep_492", align 8
  %"$adtgep_493" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_490", i32 0, i32 2
  store %TName_Pair_String_ByStr20* %"$p2_489", %TName_Pair_String_ByStr20** %"$adtgep_493", align 8
  %"$adtptr_494" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_490" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtptr_494", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_10", align 8
  %"$$expr_10_495" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_10", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$$expr_10_495"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_496" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_497" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$exprval_496" to i8*
  %"$execptr_load_498" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_498", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_71", i8* %"$memvoidcast_497")
  ret void
}
