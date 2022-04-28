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
%"$ParamDescr_503" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_504" = type { %ParamDescrString, i32, %"$ParamDescr_503"* }
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
@"$stringlit_433" = unnamed_addr constant [5 x i8] c"hello"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_59", %_TyDescrTy_Typ* @"$TyDescr_Int64_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_72", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_67", %_TyDescrTy_Typ* @"$TyDescr_Uint256_51", %_TyDescrTy_Typ* @"$TyDescr_Uint32_39", %_TyDescrTy_Typ* @"$TyDescr_Uint64_43", %_TyDescrTy_Typ* @"$TyDescr_Bnum_55", %_TyDescrTy_Typ* @"$TyDescr_Uint128_47", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_73", %_TyDescrTy_Typ* @"$TyDescr_Exception_61", %_TyDescrTy_Typ* @"$TyDescr_String_53", %_TyDescrTy_Typ* @"$TyDescr_Int256_49", %_TyDescrTy_Typ* @"$TyDescr_Int128_45", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_71", %_TyDescrTy_Typ* @"$TyDescr_Bystr_65", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_63", %_TyDescrTy_Typ* @"$TyDescr_Message_57", %_TyDescrTy_Typ* @"$TyDescr_Int32_37"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_503"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_504"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_33"(%"$$fundef_33_env_98"* %0) !dbg !3 {
entry:
  %"$$fundef_33_env_tf_261" = getelementptr inbounds %"$$fundef_33_env_98", %"$$fundef_33_env_98"* %0, i32 0, i32 0
  %"$tf_envload_262" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_33_env_tf_261", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_262", { i8*, i8* }** %tf, align 8
  %"$retval_34" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %entry
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$tf_268" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_269" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_268", i32 2
  %"$tf_270" = bitcast { i8*, i8* }* %"$tf_269" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_271" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_270", align 8
  %"$tf_fptr_272" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_271", 0
  %"$tf_envptr_273" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_271", 1
  %"$tf_call_274" = call { i8*, i8* }* %"$tf_fptr_272"(i8* %"$tf_envptr_273"), !dbg !8
  %"$tf_275" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_274", i32 3
  %"$tf_276" = bitcast { i8*, i8* }* %"$tf_275" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf_277" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf_276", align 8
  %"$tf_fptr_278" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_277", 0
  %"$tf_envptr_279" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_277", 1
  %"$tf_call_280" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_fptr_278"(i8* %"$tf_envptr_279"), !dbg !8
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_call_280", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_34", align 8, !dbg !9
  %"$$retval_34_281" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_34", align 8
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_34_281"
}

define internal { i8*, i8* }* @"$fundef_31"(%"$$fundef_31_env_99"* %0) !dbg !10 {
entry:
  %"$$fundef_31_env_tf_244" = getelementptr inbounds %"$$fundef_31_env_99", %"$$fundef_31_env_99"* %0, i32 0, i32 0
  %"$tf_envload_245" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_31_env_tf_244", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_245", { i8*, i8* }** %tf, align 8
  %"$retval_32" = alloca { i8*, i8* }*, align 8
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %entry
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %"$$fundef_33_envp_251_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_33_envp_251_salloc" = call i8* @_salloc(i8* %"$$fundef_33_envp_251_load", i64 8)
  %"$$fundef_33_envp_251" = bitcast i8* %"$$fundef_33_envp_251_salloc" to %"$$fundef_33_env_98"*
  %"$$fundef_33_env_voidp_253" = bitcast %"$$fundef_33_env_98"* %"$$fundef_33_envp_251" to i8*
  %"$$fundef_33_cloval_254" = insertvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_33_env_98"*)* @"$fundef_33" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_33_env_voidp_253", 1
  %"$$fundef_33_env_tf_255" = getelementptr inbounds %"$$fundef_33_env_98", %"$$fundef_33_env_98"* %"$$fundef_33_envp_251", i32 0, i32 0
  %"$tf_256" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_256", { i8*, i8* }** %"$$fundef_33_env_tf_255", align 8
  %"$dyndisp_table_257_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_257_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_257_salloc_load", i64 64)
  %"$dyndisp_table_257_salloc" = bitcast i8* %"$dyndisp_table_257_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_257" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_257_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_258" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_257", i32 3
  %"$dyndisp_pcast_259" = bitcast { i8*, i8* }* %"$dyndisp_gep_258" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$$fundef_33_cloval_254", { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_259", align 8
  store { i8*, i8* }* %"$dyndisp_table_257", { i8*, i8* }** %"$retval_32", align 8, !dbg !11
  %"$$retval_32_260" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_32", align 8
  ret { i8*, i8* }* %"$$retval_32_260"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_29"(%"$$fundef_29_env_100"* %0) !dbg !12 {
entry:
  %"$$fundef_29_env_tf_223" = getelementptr inbounds %"$$fundef_29_env_100", %"$$fundef_29_env_100"* %0, i32 0, i32 0
  %"$tf_envload_224" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_29_env_tf_223", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_224", { i8*, i8* }** %tf, align 8
  %"$retval_30" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %entry
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$tf_230" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_231" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_230", i32 0
  %"$tf_232" = bitcast { i8*, i8* }* %"$tf_231" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_233" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_232", align 8
  %"$tf_fptr_234" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_233", 0
  %"$tf_envptr_235" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_233", 1
  %"$tf_call_236" = call { i8*, i8* }* %"$tf_fptr_234"(i8* %"$tf_envptr_235"), !dbg !13
  %"$tf_237" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_236", i32 1
  %"$tf_238" = bitcast { i8*, i8* }* %"$tf_237" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_239" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_238", align 8
  %"$tf_fptr_240" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_239", 0
  %"$tf_envptr_241" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_239", 1
  %"$tf_call_242" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_240"(i8* %"$tf_envptr_241"), !dbg !13
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_242", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30", align 8, !dbg !14
  %"$$retval_30_243" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_30_243"
}

define internal { i8*, i8* }* @"$fundef_27"(%"$$fundef_27_env_101"* %0) !dbg !15 {
entry:
  %"$$fundef_27_env_tf_206" = getelementptr inbounds %"$$fundef_27_env_101", %"$$fundef_27_env_101"* %0, i32 0, i32 0
  %"$tf_envload_207" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_206", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_207", { i8*, i8* }** %tf, align 8
  %"$retval_28" = alloca { i8*, i8* }*, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %entry
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %"$$fundef_29_envp_213_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_29_envp_213_salloc" = call i8* @_salloc(i8* %"$$fundef_29_envp_213_load", i64 8)
  %"$$fundef_29_envp_213" = bitcast i8* %"$$fundef_29_envp_213_salloc" to %"$$fundef_29_env_100"*
  %"$$fundef_29_env_voidp_215" = bitcast %"$$fundef_29_env_100"* %"$$fundef_29_envp_213" to i8*
  %"$$fundef_29_cloval_216" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_29_env_100"*)* @"$fundef_29" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_29_env_voidp_215", 1
  %"$$fundef_29_env_tf_217" = getelementptr inbounds %"$$fundef_29_env_100", %"$$fundef_29_env_100"* %"$$fundef_29_envp_213", i32 0, i32 0
  %"$tf_218" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_218", { i8*, i8* }** %"$$fundef_29_env_tf_217", align 8
  %"$dyndisp_table_219_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_219_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_219_salloc_load", i64 64)
  %"$dyndisp_table_219_salloc" = bitcast i8* %"$dyndisp_table_219_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_219" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_219_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_220" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_219", i32 1
  %"$dyndisp_pcast_221" = bitcast { i8*, i8* }* %"$dyndisp_gep_220" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_29_cloval_216", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_221", align 8
  store { i8*, i8* }* %"$dyndisp_table_219", { i8*, i8* }** %"$retval_28", align 8, !dbg !16
  %"$$retval_28_222" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_28", align 8
  ret { i8*, i8* }* %"$$retval_28_222"
}

define internal %TName_Pair_String_ByStr20* @"$fundef_25"(%"$$fundef_25_env_102"* %0, [20 x i8]* %1) !dbg !17 {
entry:
  %"$b_205" = alloca [20 x i8]*, align 8
  store [20 x i8]* %1, [20 x i8]** %"$b_205", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$b_205", metadata !18, metadata !DIExpression()), !dbg !20
  %b = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_25_env_a_191" = getelementptr inbounds %"$$fundef_25_env_102", %"$$fundef_25_env_102"* %0, i32 0, i32 0
  %"$a_envload_192" = load %String, %String* %"$$fundef_25_env_a_191", align 8
  %a = alloca %String, align 8
  store %String %"$a_envload_192", %String* %a, align 8
  %"$retval_26" = alloca %TName_Pair_String_ByStr20*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_String_ByStr20** %"$retval_26", metadata !21, metadata !DIExpression()), !dbg !24
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %entry
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %"$a_198" = load %String, %String* %a, align 8
  %"$adtval_199_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_199_salloc" = call i8* @_salloc(i8* %"$adtval_199_load", i64 37)
  %"$adtval_199" = bitcast i8* %"$adtval_199_salloc" to %CName_Pair_String_ByStr20*
  %"$adtgep_200" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_199", i32 0, i32 0
  store i8 0, i8* %"$adtgep_200", align 1
  %"$adtgep_201" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_199", i32 0, i32 1
  store %String %"$a_198", %String* %"$adtgep_201", align 8
  %"$adtgep_202" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_199", i32 0, i32 2
  store [20 x i8] %b, [20 x i8]* %"$adtgep_202", align 1
  %"$adtptr_203" = bitcast %CName_Pair_String_ByStr20* %"$adtval_199" to %TName_Pair_String_ByStr20*
  store %TName_Pair_String_ByStr20* %"$adtptr_203", %TName_Pair_String_ByStr20** %"$retval_26", align 8, !dbg !24
  %"$$retval_26_204" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$retval_26", align 8
  ret %TName_Pair_String_ByStr20* %"$$retval_26_204"
}

define internal { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_23"(%"$$fundef_23_env_103"* %0, %String %1) !dbg !25 {
entry:
  %"$a_190" = alloca %String, align 8
  store %String %1, %String* %"$a_190", align 8
  call void @llvm.dbg.declare(metadata %String* %"$a_190", metadata !26, metadata !DIExpression()), !dbg !28
  %"$retval_24" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %entry
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$$fundef_25_envp_184_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_184_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_184_load", i64 16)
  %"$$fundef_25_envp_184" = bitcast i8* %"$$fundef_25_envp_184_salloc" to %"$$fundef_25_env_102"*
  %"$$fundef_25_env_voidp_186" = bitcast %"$$fundef_25_env_102"* %"$$fundef_25_envp_184" to i8*
  %"$$fundef_25_cloval_187" = insertvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_Pair_String_ByStr20* (%"$$fundef_25_env_102"*, [20 x i8]*)* @"$fundef_25" to %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_186", 1
  %"$$fundef_25_env_a_188" = getelementptr inbounds %"$$fundef_25_env_102", %"$$fundef_25_env_102"* %"$$fundef_25_envp_184", i32 0, i32 0
  store %String %1, %String* %"$$fundef_25_env_a_188", align 8
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_25_cloval_187", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_24", align 8, !dbg !29
  %"$$retval_24_189" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_24", align 8
  ret { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_24_189"
}

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_21"(%"$$fundef_21_env_104"* %0) !dbg !30 {
entry:
  %"$retval_22" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %entry
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)* bitcast ({ %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_23_env_103"*, %String)* @"$fundef_23" to { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*), i8* null }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_22", align 8, !dbg !31
  %"$$retval_22_178" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_22", align 8
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_22_178"
}

define internal { i8*, i8* }* @"$fundef_19"(%"$$fundef_19_env_105"* %0) !dbg !32 {
entry:
  %"$retval_20" = alloca { i8*, i8* }*, align 8
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %entry
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %"$dyndisp_table_166_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_166_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_166_salloc_load", i64 64)
  %"$dyndisp_table_166_salloc" = bitcast i8* %"$dyndisp_table_166_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_166" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_166_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_167" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_166", i32 3
  %"$dyndisp_pcast_168" = bitcast { i8*, i8* }* %"$dyndisp_gep_167" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_21_env_104"*)* @"$fundef_21" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_168", align 8
  store { i8*, i8* }* %"$dyndisp_table_166", { i8*, i8* }** %"$retval_20", align 8, !dbg !33
  %"$$retval_20_169" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_20", align 8
  ret { i8*, i8* }* %"$$retval_20_169"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_17"(%"$$fundef_17_env_106"* %0, %Uint64 %1) !dbg !34 {
entry:
  %"$b_157" = alloca %Uint64, align 8
  store %Uint64 %1, %Uint64* %"$b_157", align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$b_157", metadata !35, metadata !DIExpression()), !dbg !37
  %"$$fundef_17_env_a_143" = getelementptr inbounds %"$$fundef_17_env_106", %"$$fundef_17_env_106"* %0, i32 0, i32 0
  %"$a_envload_144" = load %Uint32, %Uint32* %"$$fundef_17_env_a_143", align 4
  %a = alloca %Uint32, align 8
  store %Uint32 %"$a_envload_144", %Uint32* %a, align 4
  %"$retval_18" = alloca %TName_Pair_Uint32_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Uint32_Uint64** %"$retval_18", metadata !38, metadata !DIExpression()), !dbg !41
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %entry
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$a_150" = load %Uint32, %Uint32* %a, align 4
  %"$adtval_151_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_151_salloc" = call i8* @_salloc(i8* %"$adtval_151_load", i64 13)
  %"$adtval_151" = bitcast i8* %"$adtval_151_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_152" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_151", i32 0, i32 0
  store i8 0, i8* %"$adtgep_152", align 1
  %"$adtgep_153" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_151", i32 0, i32 1
  store %Uint32 %"$a_150", %Uint32* %"$adtgep_153", align 4
  %"$adtgep_154" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_151", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_154", align 8
  %"$adtptr_155" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_151" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_155", %TName_Pair_Uint32_Uint64** %"$retval_18", align 8, !dbg !41
  %"$$retval_18_156" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_18", align 8
  ret %TName_Pair_Uint32_Uint64* %"$$retval_18_156"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_15"(%"$$fundef_15_env_107"* %0, %Uint32 %1) !dbg !42 {
entry:
  %"$a_142" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$a_142", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$a_142", metadata !43, metadata !DIExpression()), !dbg !45
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
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_17_cloval_139", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8, !dbg !46
  %"$$retval_16_141" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_16_141"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_13"(%"$$fundef_13_env_108"* %0) !dbg !47 {
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
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_15_env_107"*, %Uint32)* @"$fundef_15" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8, !dbg !48
  %"$$retval_14_130" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_14_130"
}

define internal { i8*, i8* }* @"$fundef_11"(%"$$fundef_11_env_109"* %0) !dbg !49 {
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
  store { i8*, i8* }* %"$dyndisp_table_118", { i8*, i8* }** %"$retval_12", align 8, !dbg !50
  %"$$retval_12_121" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_12", align 8
  ret { i8*, i8* }* %"$$retval_12_121"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !51 {
entry:
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 5, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %entry
  %"$consume_286" = sub i64 %"$gasrem_282", 5
  store i64 %"$consume_286", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !53
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 8, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 8
  store i64 %"$consume_291", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !53
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 196, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_290"
  %"$consume_296" = sub i64 %"$gasrem_292", 196
  store i64 %"$consume_296", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !53
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 20, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_295"
  %"$consume_301" = sub i64 %"$gasrem_297", 20
  store i64 %"$consume_301", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !53
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 12, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_300"
  %"$consume_306" = sub i64 %"$gasrem_302", 12
  store i64 %"$consume_306", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !53
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 2, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 2
  store i64 %"$consume_311", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !53
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @_scilla_expr_fun(i8* %0) !dbg !54 {
entry:
  %"$expr_10" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_10", metadata !55, metadata !DIExpression()), !dbg !58
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %entry
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_315"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %"$dyndisp_table_328_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_328_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_328_salloc_load", i64 64)
  %"$dyndisp_table_328_salloc" = bitcast i8* %"$dyndisp_table_328_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_328" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_328_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_329" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_328", i32 0
  %"$dyndisp_pcast_330" = bitcast { i8*, i8* }* %"$dyndisp_gep_329" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_11_env_109"*)* @"$fundef_11" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_330", align 8
  %"$dyndisp_gep_331" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_328", i32 2
  %"$dyndisp_pcast_332" = bitcast { i8*, i8* }* %"$dyndisp_gep_331" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_19_env_105"*)* @"$fundef_19" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_332", align 8
  store { i8*, i8* }* %"$dyndisp_table_328", { i8*, i8* }** %tf, align 8, !dbg !58
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 1, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_320"
  %"$consume_337" = sub i64 %"$gasrem_333", 1
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %tf1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_336"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$$fundef_27_envp_343_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_343_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_343_load", i64 8)
  %"$$fundef_27_envp_343" = bitcast i8* %"$$fundef_27_envp_343_salloc" to %"$$fundef_27_env_101"*
  %"$$fundef_27_env_voidp_345" = bitcast %"$$fundef_27_env_101"* %"$$fundef_27_envp_343" to i8*
  %"$$fundef_27_cloval_346" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_27_env_101"*)* @"$fundef_27" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_345", 1
  %"$$fundef_27_env_tf_347" = getelementptr inbounds %"$$fundef_27_env_101", %"$$fundef_27_env_101"* %"$$fundef_27_envp_343", i32 0, i32 0
  %"$tf_348" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_348", { i8*, i8* }** %"$$fundef_27_env_tf_347", align 8
  %"$$fundef_31_env_voidp_350" = bitcast %"$$fundef_27_env_101"* %"$$fundef_27_envp_343" to i8*
  %"$$fundef_31_cloval_351" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_31_env_99"*)* @"$fundef_31" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_31_env_voidp_350", 1
  %"$dyndisp_table_352_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_352_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_352_salloc_load", i64 64)
  %"$dyndisp_table_352_salloc" = bitcast i8* %"$dyndisp_table_352_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_352" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_352_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_353" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_352", i32 0
  %"$dyndisp_pcast_354" = bitcast { i8*, i8* }* %"$dyndisp_gep_353" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_27_cloval_346", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_354", align 8
  %"$dyndisp_gep_355" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_352", i32 2
  %"$dyndisp_pcast_356" = bitcast { i8*, i8* }* %"$dyndisp_gep_355" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_31_cloval_351", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_356", align 8
  store { i8*, i8* }* %"$dyndisp_table_352", { i8*, i8* }** %tf1, align 8, !dbg !59
  %"$gasrem_357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_358" = icmp ugt i64 1, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %"$have_gas_341"
  %"$consume_361" = sub i64 %"$gasrem_357", 1
  store i64 %"$consume_361", i64* @_gasrem, align 8
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_360"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_360"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$tf1_367" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_368" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_367", i32 0
  %"$tf1_369" = bitcast { i8*, i8* }* %"$tf1_368" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_370" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_369", align 8
  %"$tf1_fptr_371" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_370", 0
  %"$tf1_envptr_372" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_370", 1
  %"$tf1_call_373" = call { i8*, i8* }* %"$tf1_fptr_371"(i8* %"$tf1_envptr_372"), !dbg !60
  %"$tf1_374" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_373", i32 1
  %"$tf1_375" = bitcast { i8*, i8* }* %"$tf1_374" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_376" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_375", align 8
  %"$tf1_fptr_377" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_376", 0
  %"$tf1_envptr_378" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_376", 1
  %"$tf1_call_379" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_377"(i8* %"$tf1_envptr_378"), !dbg !60
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_379", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8, !dbg !61
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_365"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %t2 = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_383"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$tf1_390" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_391" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_390", i32 2
  %"$tf1_392" = bitcast { i8*, i8* }* %"$tf1_391" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_393" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_392", align 8
  %"$tf1_fptr_394" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_393", 0
  %"$tf1_envptr_395" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_393", 1
  %"$tf1_call_396" = call { i8*, i8* }* %"$tf1_fptr_394"(i8* %"$tf1_envptr_395"), !dbg !62
  %"$tf1_397" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_396", i32 3
  %"$tf1_398" = bitcast { i8*, i8* }* %"$tf1_397" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf1_399" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf1_398", align 8
  %"$tf1_fptr_400" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_399", 0
  %"$tf1_envptr_401" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_399", 1
  %"$tf1_call_402" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_fptr_400"(i8* %"$tf1_envptr_401"), !dbg !62
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_call_402", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2, align 8, !dbg !63
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_388"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %uint32_one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %uint32_one, metadata !64, metadata !DIExpression()), !dbg !65
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_406"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint32_one, align 4, !dbg !66
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %uint64_two = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %uint64_two, metadata !67, metadata !DIExpression()), !dbg !68
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %uint64_two, align 8, !dbg !69
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %hello_string = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %hello_string, metadata !70, metadata !DIExpression()), !dbg !71
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_426"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_433", i32 0, i32 0), i32 5 }, %String* %hello_string, align 8, !dbg !72
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_431"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %addr_bystr20 = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %addr_bystr20, metadata !73, metadata !DIExpression()), !dbg !74
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  store [20 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA", [20 x i8]* %addr_bystr20, align 1, !dbg !75
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %p1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Uint32_Uint64** %p1, metadata !76, metadata !DIExpression()), !dbg !77
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %"$t1_6" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$t1_454" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$t1_fptr_455" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_454", 0
  %"$t1_envptr_456" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_454", 1
  %"$uint32_one_457" = load %Uint32, %Uint32* %uint32_one, align 4
  %"$t1_call_458" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_455"(i8* %"$t1_envptr_456", %Uint32 %"$uint32_one_457"), !dbg !78
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_458", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8, !dbg !78
  %"$t1_7" = alloca %TName_Pair_Uint32_Uint64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Uint32_Uint64** %"$t1_7", metadata !79, metadata !DIExpression()), !dbg !78
  %"$$t1_6_459" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8
  %"$$t1_6_fptr_460" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_459", 0
  %"$$t1_6_envptr_461" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_459", 1
  %"$uint64_two_462" = load %Uint64, %Uint64* %uint64_two, align 8
  %"$$t1_6_call_463" = call %TName_Pair_Uint32_Uint64* %"$$t1_6_fptr_460"(i8* %"$$t1_6_envptr_461", %Uint64 %"$uint64_two_462"), !dbg !78
  store %TName_Pair_Uint32_Uint64* %"$$t1_6_call_463", %TName_Pair_Uint32_Uint64** %"$t1_7", align 8, !dbg !78
  %"$$t1_7_464" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_7", align 8
  store %TName_Pair_Uint32_Uint64* %"$$t1_7_464", %TName_Pair_Uint32_Uint64** %p1, align 8, !dbg !78
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_452"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_String_ByStr20*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_String_ByStr20** %p2, metadata !80, metadata !DIExpression()), !dbg !81
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %"$t2_8" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$t2_475" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2, align 8
  %"$t2_fptr_476" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_475", 0
  %"$t2_envptr_477" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_475", 1
  %"$hello_string_478" = load %String, %String* %hello_string, align 8
  %"$t2_call_479" = call { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_fptr_476"(i8* %"$t2_envptr_477", %String %"$hello_string_478"), !dbg !82
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_call_479", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_8", align 8, !dbg !82
  %"$t2_9" = alloca %TName_Pair_String_ByStr20*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_String_ByStr20** %"$t2_9", metadata !83, metadata !DIExpression()), !dbg !82
  %"$$t2_8_480" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_8", align 8
  %"$$t2_8_fptr_481" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_8_480", 0
  %"$$t2_8_envptr_482" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_8_480", 1
  %"$$t2_8_addr_bystr20_483" = alloca [20 x i8], align 1
  %"$addr_bystr20_484" = load [20 x i8], [20 x i8]* %addr_bystr20, align 1
  store [20 x i8] %"$addr_bystr20_484", [20 x i8]* %"$$t2_8_addr_bystr20_483", align 1
  %"$$t2_8_call_485" = call %TName_Pair_String_ByStr20* %"$$t2_8_fptr_481"(i8* %"$$t2_8_envptr_482", [20 x i8]* %"$$t2_8_addr_bystr20_483"), !dbg !82
  store %TName_Pair_String_ByStr20* %"$$t2_8_call_485", %TName_Pair_String_ByStr20** %"$t2_9", align 8, !dbg !82
  %"$$t2_9_486" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$t2_9", align 8
  store %TName_Pair_String_ByStr20* %"$$t2_9_486", %TName_Pair_String_ByStr20** %p2, align 8, !dbg !82
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_473"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %"$p1_492" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$p2_493" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %p2, align 8
  %"$adtval_494_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_494_salloc" = call i8* @_salloc(i8* %"$adtval_494_load", i64 17)
  %"$adtval_494" = bitcast i8* %"$adtval_494_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  %"$adtgep_495" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_494", i32 0, i32 0
  store i8 0, i8* %"$adtgep_495", align 1
  %"$adtgep_496" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_494", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_492", %TName_Pair_Uint32_Uint64** %"$adtgep_496", align 8
  %"$adtgep_497" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_494", i32 0, i32 2
  store %TName_Pair_String_ByStr20* %"$p2_493", %TName_Pair_String_ByStr20** %"$adtgep_497", align 8
  %"$adtptr_498" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_494" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtptr_498", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_10", align 8, !dbg !84
  %"$$expr_10_499" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_10", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$$expr_10_499"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_500" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_501" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$exprval_500" to i8*
  %"$execptr_load_502" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_502", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_71", i8* %"$memvoidcast_501")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "typ2-inst.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_33", linkageName: "$fundef_33", scope: !2, file: !2, line: 12, type: !4, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocation(line: 12, column: 6, scope: !3)
!9 = !DILocation(line: 12, column: 5, scope: !3)
!10 = distinct !DISubprogram(name: "$fundef_31", linkageName: "$fundef_31", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!11 = !DILocation(line: 11, column: 3, scope: !10)
!12 = distinct !DISubprogram(name: "$fundef_29", linkageName: "$fundef_29", scope: !2, file: !2, line: 12, type: !4, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!13 = !DILocation(line: 12, column: 6, scope: !12)
!14 = !DILocation(line: 12, column: 5, scope: !12)
!15 = distinct !DISubprogram(name: "$fundef_27", linkageName: "$fundef_27", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!16 = !DILocation(line: 11, column: 3, scope: !15)
!17 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !2, file: !2, line: 6, type: !4, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!18 = !DILocalVariable(name: "b", scope: !17, file: !2, line: 5, type: !19)
!19 = !DIBasicType(name: "ByStr20", size: 20)
!20 = !DILocation(line: 5, column: 8, scope: !17)
!21 = !DILocalVariable(name: "$retval_26", scope: !17, file: !2, line: 6, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (String) (ByStr20)", baseType: !23, size: 8, align: 8, dwarfAddressSpace: 0)
!23 = !DIBasicType(name: "Pair (String) (ByStr20)", size: 8)
!24 = !DILocation(line: 6, column: 5, scope: !17)
!25 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!26 = !DILocalVariable(name: "a", scope: !25, file: !2, line: 4, type: !27)
!27 = !DIBasicType(name: "String", size: 16)
!28 = !DILocation(line: 4, column: 8, scope: !25)
!29 = !DILocation(line: 6, column: 5, scope: !25)
!30 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!31 = !DILocation(line: 5, column: 3, scope: !30)
!32 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!33 = !DILocation(line: 3, column: 3, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !2, file: !2, line: 6, type: !4, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!35 = !DILocalVariable(name: "b", scope: !34, file: !2, line: 5, type: !36)
!36 = !DIBasicType(name: "Uint64", size: 8)
!37 = !DILocation(line: 5, column: 8, scope: !34)
!38 = !DILocalVariable(name: "$retval_18", scope: !34, file: !2, line: 6, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (Uint32) (Uint64)", baseType: !40, size: 8, align: 8, dwarfAddressSpace: 0)
!40 = !DIBasicType(name: "Pair (Uint32) (Uint64)", size: 8)
!41 = !DILocation(line: 6, column: 5, scope: !34)
!42 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!43 = !DILocalVariable(name: "a", scope: !42, file: !2, line: 4, type: !44)
!44 = !DIBasicType(name: "Uint32", size: 4)
!45 = !DILocation(line: 4, column: 8, scope: !42)
!46 = !DILocation(line: 6, column: 5, scope: !42)
!47 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!48 = !DILocation(line: 5, column: 3, scope: !47)
!49 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!50 = !DILocation(line: 3, column: 3, scope: !49)
!51 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !52, file: !52, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!52 = !DIFile(filename: ".", directory: ".")
!53 = !DILocation(line: 0, scope: !51)
!54 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!55 = !DILocalVariable(name: "$expr_10", scope: !54, file: !2, line: 2, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (Pair (Uint32) (Uint64)) (Pair (String) (ByStr20))", baseType: !57, size: 8, align: 8, dwarfAddressSpace: 0)
!57 = !DIBasicType(name: "Pair (Pair (Uint32) (Uint64)) (Pair (String) (ByStr20))", size: 8)
!58 = !DILocation(line: 2, column: 3, scope: !54)
!59 = !DILocation(line: 10, column: 3, scope: !54)
!60 = !DILocation(line: 16, column: 11, scope: !54)
!61 = !DILocation(line: 16, column: 10, scope: !54)
!62 = !DILocation(line: 17, column: 11, scope: !54)
!63 = !DILocation(line: 17, column: 10, scope: !54)
!64 = !DILocalVariable(name: "uint32_one", scope: !54, file: !2, line: 18, type: !44)
!65 = !DILocation(line: 18, column: 5, scope: !54)
!66 = !DILocation(line: 18, column: 18, scope: !54)
!67 = !DILocalVariable(name: "uint64_two", scope: !54, file: !2, line: 19, type: !36)
!68 = !DILocation(line: 19, column: 5, scope: !54)
!69 = !DILocation(line: 19, column: 18, scope: !54)
!70 = !DILocalVariable(name: "hello_string", scope: !54, file: !2, line: 20, type: !27)
!71 = !DILocation(line: 20, column: 5, scope: !54)
!72 = !DILocation(line: 20, column: 26, scope: !54)
!73 = !DILocalVariable(name: "addr_bystr20", scope: !54, file: !2, line: 21, type: !19)
!74 = !DILocation(line: 21, column: 5, scope: !54)
!75 = !DILocation(line: 21, column: 20, scope: !54)
!76 = !DILocalVariable(name: "p1", scope: !54, file: !2, line: 23, type: !39)
!77 = !DILocation(line: 23, column: 5, scope: !54)
!78 = !DILocation(line: 23, column: 10, scope: !54)
!79 = !DILocalVariable(name: "$t1_7", scope: !54, file: !2, line: 23, type: !39)
!80 = !DILocalVariable(name: "p2", scope: !54, file: !2, line: 24, type: !22)
!81 = !DILocation(line: 24, column: 5, scope: !54)
!82 = !DILocation(line: 24, column: 10, scope: !54)
!83 = !DILocalVariable(name: "$t2_9", scope: !54, file: !2, line: 24, type: !22)
!84 = !DILocation(line: 25, column: 1, scope: !54)
