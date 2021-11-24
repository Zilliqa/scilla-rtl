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
%"$TyDescrTy_ADTTyp_67" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_66"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_66" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_68"**, %"$TyDescrTy_ADTTyp_67"* }
%"$TyDescrTy_ADTTyp_Constr_68" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_497" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_498" = type { %ParamDescrString, i32, %"$ParamDescr_497"* }
%TName_Pair_String_ByStr20 = type { i8, %CName_Pair_String_ByStr20* }
%CName_Pair_String_ByStr20 = type <{ i8, %String, [20 x i8] }>
%String = type { i8*, i32 }
%"$$fundef_33_env_96" = type { { i8*, i8* }* }
%"$$fundef_31_env_97" = type { { i8*, i8* }* }
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint64 = type { i64 }
%Uint32 = type { i32 }
%"$$fundef_29_env_98" = type { { i8*, i8* }* }
%"$$fundef_27_env_99" = type { { i8*, i8* }* }
%"$$fundef_25_env_100" = type { %String }
%"$$fundef_23_env_101" = type {}
%"$$fundef_21_env_102" = type {}
%"$$fundef_19_env_103" = type {}
%"$$fundef_17_env_104" = type { %Uint32 }
%"$$fundef_15_env_105" = type {}
%"$$fundef_13_env_106" = type {}
%"$$fundef_11_env_107" = type {}
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
@"$TyDescr_Bystr_Prim_62" = global %"$TyDescrTy_PrimTyp_35" { i32 7, i32 0 }
@"$TyDescr_Bystr_63" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Bystr_Prim_62" to i8*) }
@"$TyDescr_Bystr20_Prim_64" = global %"$TyDescrTy_PrimTyp_35" { i32 8, i32 20 }
@"$TyDescr_Bystr20_65" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_35"* @"$TyDescr_Bystr20_Prim_64" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_66"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_81" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr20_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_66"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_87" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_66"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_93" to i8*) }
@"$TyDescr_Pair_ADTTyp_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_67" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_95", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_66"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_66"*], [3 x %"$TyDescrTy_ADTTyp_Specl_66"*]* @"$TyDescr_Pair_ADTTyp_m_specls_94", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_76" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_70"]
@"$TyDescr_ADT_Pair_77" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_68" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_77", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_76", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_79" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_68"*] [%"$TyDescrTy_ADTTyp_Constr_68"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_78"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_80" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_70"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_66" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_68"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_68"*], [1 x %"$TyDescrTy_ADTTyp_Constr_68"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_67"* @"$TyDescr_Pair_ADTTyp_75" }
@"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_82" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_53", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_65"]
@"$TyDescr_ADT_Pair_83" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_68" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_83", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_82", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_85" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_68"*] [%"$TyDescrTy_ADTTyp_Constr_68"* @"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_84"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_86" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_53", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_65"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_66" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_68"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_68"*], [1 x %"$TyDescrTy_ADTTyp_Constr_68"*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_67"* @"$TyDescr_Pair_ADTTyp_75" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_88" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_39", %_TyDescrTy_Typ* @"$TyDescr_Uint64_43"]
@"$TyDescr_ADT_Pair_89" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_90" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_68" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_89", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_88", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_91" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_68"*] [%"$TyDescrTy_ADTTyp_Constr_68"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_90"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_92" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_39", %_TyDescrTy_Typ* @"$TyDescr_Uint64_43"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_93" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_66" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_92", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_68"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_68"*], [1 x %"$TyDescrTy_ADTTyp_Constr_68"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_91", i32 0, i32 0), %"$TyDescrTy_ADTTyp_67"* @"$TyDescr_Pair_ADTTyp_75" }
@"$TyDescr_Pair_ADTTyp_m_specls_94" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_66"*] [%"$TyDescrTy_ADTTyp_Specl_66"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_81", %"$TyDescrTy_ADTTyp_Specl_66"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_87", %"$TyDescrTy_ADTTyp_Specl_66"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_93"]
@"$TyDescr_ADT_Pair_95" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@"$stringlit_427" = unnamed_addr constant [5 x i8] c"hello"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_59", %_TyDescrTy_Typ* @"$TyDescr_Int64_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_70", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_65", %_TyDescrTy_Typ* @"$TyDescr_Uint256_51", %_TyDescrTy_Typ* @"$TyDescr_Uint32_39", %_TyDescrTy_Typ* @"$TyDescr_Uint64_43", %_TyDescrTy_Typ* @"$TyDescr_Bnum_55", %_TyDescrTy_Typ* @"$TyDescr_Uint128_47", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_71", %_TyDescrTy_Typ* @"$TyDescr_Exception_61", %_TyDescrTy_Typ* @"$TyDescr_String_53", %_TyDescrTy_Typ* @"$TyDescr_Int256_49", %_TyDescrTy_Typ* @"$TyDescr_Int128_45", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_69", %_TyDescrTy_Typ* @"$TyDescr_Bystr_63", %_TyDescrTy_Typ* @"$TyDescr_Message_57", %_TyDescrTy_Typ* @"$TyDescr_Int32_37"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_497"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_498"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_33"(%"$$fundef_33_env_96"* %0) {
entry:
  %"$$fundef_33_env_tf_255" = getelementptr inbounds %"$$fundef_33_env_96", %"$$fundef_33_env_96"* %0, i32 0, i32 0
  %"$tf_envload_256" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_33_env_tf_255", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_256", { i8*, i8* }** %tf, align 8
  %"$retval_34" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %entry
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$tf_262" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_263" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_262", i32 2
  %"$tf_264" = bitcast { i8*, i8* }* %"$tf_263" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_265" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_264", align 8
  %"$tf_fptr_266" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_265", 0
  %"$tf_envptr_267" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_265", 1
  %"$tf_call_268" = call { i8*, i8* }* %"$tf_fptr_266"(i8* %"$tf_envptr_267")
  %"$tf_269" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_268", i32 3
  %"$tf_270" = bitcast { i8*, i8* }* %"$tf_269" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf_271" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf_270", align 8
  %"$tf_fptr_272" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_271", 0
  %"$tf_envptr_273" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_271", 1
  %"$tf_call_274" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_fptr_272"(i8* %"$tf_envptr_273")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_call_274", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_34", align 8
  %"$$retval_34_275" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_34", align 8
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_34_275"
}

define internal { i8*, i8* }* @"$fundef_31"(%"$$fundef_31_env_97"* %0) {
entry:
  %"$$fundef_31_env_tf_238" = getelementptr inbounds %"$$fundef_31_env_97", %"$$fundef_31_env_97"* %0, i32 0, i32 0
  %"$tf_envload_239" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_31_env_tf_238", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_239", { i8*, i8* }** %tf, align 8
  %"$retval_32" = alloca { i8*, i8* }*, align 8
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %entry
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %"$$fundef_33_envp_245_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_33_envp_245_salloc" = call i8* @_salloc(i8* %"$$fundef_33_envp_245_load", i64 8)
  %"$$fundef_33_envp_245" = bitcast i8* %"$$fundef_33_envp_245_salloc" to %"$$fundef_33_env_96"*
  %"$$fundef_33_env_voidp_247" = bitcast %"$$fundef_33_env_96"* %"$$fundef_33_envp_245" to i8*
  %"$$fundef_33_cloval_248" = insertvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_33_env_96"*)* @"$fundef_33" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_33_env_voidp_247", 1
  %"$$fundef_33_env_tf_249" = getelementptr inbounds %"$$fundef_33_env_96", %"$$fundef_33_env_96"* %"$$fundef_33_envp_245", i32 0, i32 0
  %"$tf_250" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_250", { i8*, i8* }** %"$$fundef_33_env_tf_249", align 8
  %"$dyndisp_table_251_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_251_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_251_salloc_load", i64 64)
  %"$dyndisp_table_251_salloc" = bitcast i8* %"$dyndisp_table_251_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_251" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_251_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_252" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_251", i32 3
  %"$dyndisp_pcast_253" = bitcast { i8*, i8* }* %"$dyndisp_gep_252" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$$fundef_33_cloval_248", { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_253", align 8
  store { i8*, i8* }* %"$dyndisp_table_251", { i8*, i8* }** %"$retval_32", align 8
  %"$$retval_32_254" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_32", align 8
  ret { i8*, i8* }* %"$$retval_32_254"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_29"(%"$$fundef_29_env_98"* %0) {
entry:
  %"$$fundef_29_env_tf_217" = getelementptr inbounds %"$$fundef_29_env_98", %"$$fundef_29_env_98"* %0, i32 0, i32 0
  %"$tf_envload_218" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_29_env_tf_217", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_218", { i8*, i8* }** %tf, align 8
  %"$retval_30" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %entry
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$tf_224" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_225" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_224", i32 0
  %"$tf_226" = bitcast { i8*, i8* }* %"$tf_225" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_227" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_226", align 8
  %"$tf_fptr_228" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_227", 0
  %"$tf_envptr_229" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_227", 1
  %"$tf_call_230" = call { i8*, i8* }* %"$tf_fptr_228"(i8* %"$tf_envptr_229")
  %"$tf_231" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_230", i32 1
  %"$tf_232" = bitcast { i8*, i8* }* %"$tf_231" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_233" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_232", align 8
  %"$tf_fptr_234" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_233", 0
  %"$tf_envptr_235" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_233", 1
  %"$tf_call_236" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_234"(i8* %"$tf_envptr_235")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_236", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30", align 8
  %"$$retval_30_237" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_30", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_30_237"
}

define internal { i8*, i8* }* @"$fundef_27"(%"$$fundef_27_env_99"* %0) {
entry:
  %"$$fundef_27_env_tf_200" = getelementptr inbounds %"$$fundef_27_env_99", %"$$fundef_27_env_99"* %0, i32 0, i32 0
  %"$tf_envload_201" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_200", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_201", { i8*, i8* }** %tf, align 8
  %"$retval_28" = alloca { i8*, i8* }*, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %entry
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$$fundef_29_envp_207_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_29_envp_207_salloc" = call i8* @_salloc(i8* %"$$fundef_29_envp_207_load", i64 8)
  %"$$fundef_29_envp_207" = bitcast i8* %"$$fundef_29_envp_207_salloc" to %"$$fundef_29_env_98"*
  %"$$fundef_29_env_voidp_209" = bitcast %"$$fundef_29_env_98"* %"$$fundef_29_envp_207" to i8*
  %"$$fundef_29_cloval_210" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_29_env_98"*)* @"$fundef_29" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_29_env_voidp_209", 1
  %"$$fundef_29_env_tf_211" = getelementptr inbounds %"$$fundef_29_env_98", %"$$fundef_29_env_98"* %"$$fundef_29_envp_207", i32 0, i32 0
  %"$tf_212" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_212", { i8*, i8* }** %"$$fundef_29_env_tf_211", align 8
  %"$dyndisp_table_213_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_213_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_213_salloc_load", i64 64)
  %"$dyndisp_table_213_salloc" = bitcast i8* %"$dyndisp_table_213_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_213" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_213_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_214" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_213", i32 1
  %"$dyndisp_pcast_215" = bitcast { i8*, i8* }* %"$dyndisp_gep_214" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_29_cloval_210", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_215", align 8
  store { i8*, i8* }* %"$dyndisp_table_213", { i8*, i8* }** %"$retval_28", align 8
  %"$$retval_28_216" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_28", align 8
  ret { i8*, i8* }* %"$$retval_28_216"
}

define internal %TName_Pair_String_ByStr20* @"$fundef_25"(%"$$fundef_25_env_100"* %0, [20 x i8]* %1) {
entry:
  %b = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_25_env_a_186" = getelementptr inbounds %"$$fundef_25_env_100", %"$$fundef_25_env_100"* %0, i32 0, i32 0
  %"$a_envload_187" = load %String, %String* %"$$fundef_25_env_a_186", align 8
  %a = alloca %String, align 8
  store %String %"$a_envload_187", %String* %a, align 8
  %"$retval_26" = alloca %TName_Pair_String_ByStr20*, align 8
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %entry
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %"$a_193" = load %String, %String* %a, align 8
  %"$adtval_194_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_194_salloc" = call i8* @_salloc(i8* %"$adtval_194_load", i64 37)
  %"$adtval_194" = bitcast i8* %"$adtval_194_salloc" to %CName_Pair_String_ByStr20*
  %"$adtgep_195" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_194", i32 0, i32 0
  store i8 0, i8* %"$adtgep_195", align 1
  %"$adtgep_196" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_194", i32 0, i32 1
  store %String %"$a_193", %String* %"$adtgep_196", align 8
  %"$adtgep_197" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_194", i32 0, i32 2
  store [20 x i8] %b, [20 x i8]* %"$adtgep_197", align 1
  %"$adtptr_198" = bitcast %CName_Pair_String_ByStr20* %"$adtval_194" to %TName_Pair_String_ByStr20*
  store %TName_Pair_String_ByStr20* %"$adtptr_198", %TName_Pair_String_ByStr20** %"$retval_26", align 8
  %"$$retval_26_199" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$retval_26", align 8
  ret %TName_Pair_String_ByStr20* %"$$retval_26_199"
}

define internal { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_23"(%"$$fundef_23_env_101"* %0, %String %1) {
entry:
  %"$retval_24" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %entry
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %"$$fundef_25_envp_180_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_25_envp_180_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_180_load", i64 16)
  %"$$fundef_25_envp_180" = bitcast i8* %"$$fundef_25_envp_180_salloc" to %"$$fundef_25_env_100"*
  %"$$fundef_25_env_voidp_182" = bitcast %"$$fundef_25_env_100"* %"$$fundef_25_envp_180" to i8*
  %"$$fundef_25_cloval_183" = insertvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_Pair_String_ByStr20* (%"$$fundef_25_env_100"*, [20 x i8]*)* @"$fundef_25" to %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_182", 1
  %"$$fundef_25_env_a_184" = getelementptr inbounds %"$$fundef_25_env_100", %"$$fundef_25_env_100"* %"$$fundef_25_envp_180", i32 0, i32 0
  store %String %1, %String* %"$$fundef_25_env_a_184", align 8
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_25_cloval_183", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_24", align 8
  %"$$retval_24_185" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_24", align 8
  ret { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_24_185"
}

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_21"(%"$$fundef_21_env_102"* %0) {
entry:
  %"$retval_22" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %entry
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)* bitcast ({ %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_23_env_101"*, %String)* @"$fundef_23" to { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*), i8* null }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_22", align 8
  %"$$retval_22_174" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_22", align 8
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_22_174"
}

define internal { i8*, i8* }* @"$fundef_19"(%"$$fundef_19_env_103"* %0) {
entry:
  %"$retval_20" = alloca { i8*, i8* }*, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %entry
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %"$dyndisp_table_162_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_162_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_162_salloc_load", i64 64)
  %"$dyndisp_table_162_salloc" = bitcast i8* %"$dyndisp_table_162_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_162" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_162_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_163" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_162", i32 3
  %"$dyndisp_pcast_164" = bitcast { i8*, i8* }* %"$dyndisp_gep_163" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_21_env_102"*)* @"$fundef_21" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_164", align 8
  store { i8*, i8* }* %"$dyndisp_table_162", { i8*, i8* }** %"$retval_20", align 8
  %"$$retval_20_165" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_20", align 8
  ret { i8*, i8* }* %"$$retval_20_165"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_17"(%"$$fundef_17_env_104"* %0, %Uint64 %1) {
entry:
  %"$$fundef_17_env_a_140" = getelementptr inbounds %"$$fundef_17_env_104", %"$$fundef_17_env_104"* %0, i32 0, i32 0
  %"$a_envload_141" = load %Uint32, %Uint32* %"$$fundef_17_env_a_140", align 4
  %a = alloca %Uint32, align 8
  store %Uint32 %"$a_envload_141", %Uint32* %a, align 4
  %"$retval_18" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %entry
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %"$a_147" = load %Uint32, %Uint32* %a, align 4
  %"$adtval_148_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_148_salloc" = call i8* @_salloc(i8* %"$adtval_148_load", i64 13)
  %"$adtval_148" = bitcast i8* %"$adtval_148_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_149" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_148", i32 0, i32 0
  store i8 0, i8* %"$adtgep_149", align 1
  %"$adtgep_150" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_148", i32 0, i32 1
  store %Uint32 %"$a_147", %Uint32* %"$adtgep_150", align 4
  %"$adtgep_151" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_148", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_151", align 8
  %"$adtptr_152" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_148" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_152", %TName_Pair_Uint32_Uint64** %"$retval_18", align 8
  %"$$retval_18_153" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_18", align 8
  ret %TName_Pair_Uint32_Uint64* %"$$retval_18_153"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_15"(%"$$fundef_15_env_105"* %0, %Uint32 %1) {
entry:
  %"$retval_16" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %entry
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$$fundef_17_envp_134_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_134_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_134_load", i64 4)
  %"$$fundef_17_envp_134" = bitcast i8* %"$$fundef_17_envp_134_salloc" to %"$$fundef_17_env_104"*
  %"$$fundef_17_env_voidp_136" = bitcast %"$$fundef_17_env_104"* %"$$fundef_17_envp_134" to i8*
  %"$$fundef_17_cloval_137" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_17_env_104"*, %Uint64)* @"$fundef_17" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_17_env_voidp_136", 1
  %"$$fundef_17_env_a_138" = getelementptr inbounds %"$$fundef_17_env_104", %"$$fundef_17_env_104"* %"$$fundef_17_envp_134", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_17_env_a_138", align 4
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_17_cloval_137", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8
  %"$$retval_16_139" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_16", align 8
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_16_139"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_13"(%"$$fundef_13_env_106"* %0) {
entry:
  %"$retval_14" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %entry
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_15_env_105"*, %Uint32)* @"$fundef_15" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8
  %"$$retval_14_128" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_14", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_14_128"
}

define internal { i8*, i8* }* @"$fundef_11"(%"$$fundef_11_env_107"* %0) {
entry:
  %"$retval_12" = alloca { i8*, i8* }*, align 8
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %entry
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %"$dyndisp_table_116_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_116_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_116_salloc_load", i64 64)
  %"$dyndisp_table_116_salloc" = bitcast i8* %"$dyndisp_table_116_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_116" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_116_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_117" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_116", i32 1
  %"$dyndisp_pcast_118" = bitcast { i8*, i8* }* %"$dyndisp_gep_117" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_13_env_106"*)* @"$fundef_13" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_118", align 8
  store { i8*, i8* }* %"$dyndisp_table_116", { i8*, i8* }** %"$retval_12", align 8
  %"$$retval_12_119" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_12", align 8
  ret { i8*, i8* }* %"$$retval_12_119"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 5, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %entry
  %"$consume_280" = sub i64 %"$gasrem_276", 5
  store i64 %"$consume_280", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 8, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 8
  store i64 %"$consume_285", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 196, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$have_gas_284"
  %"$consume_290" = sub i64 %"$gasrem_286", 196
  store i64 %"$consume_290", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 20, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_289"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_289"
  %"$consume_295" = sub i64 %"$gasrem_291", 20
  store i64 %"$consume_295", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 12, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_294"
  %"$consume_300" = sub i64 %"$gasrem_296", 12
  store i64 %"$consume_300", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 2, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_299"
  %"$consume_305" = sub i64 %"$gasrem_301", 2
  store i64 %"$consume_305", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_10" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, align 8
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %entry
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_312" = icmp ugt i64 1, %"$gasrem_311"
  br i1 %"$gascmp_312", label %"$out_of_gas_313", label %"$have_gas_314"

"$out_of_gas_313":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_314"

"$have_gas_314":                                  ; preds = %"$out_of_gas_313", %"$have_gas_309"
  %"$consume_315" = sub i64 %"$gasrem_311", 1
  store i64 %"$consume_315", i64* @_gasrem, align 8
  %"$dyndisp_table_322_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_322_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_322_salloc_load", i64 64)
  %"$dyndisp_table_322_salloc" = bitcast i8* %"$dyndisp_table_322_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_322" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_322_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_323" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_322", i32 0
  %"$dyndisp_pcast_324" = bitcast { i8*, i8* }* %"$dyndisp_gep_323" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_11_env_107"*)* @"$fundef_11" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_324", align 8
  %"$dyndisp_gep_325" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_322", i32 2
  %"$dyndisp_pcast_326" = bitcast { i8*, i8* }* %"$dyndisp_gep_325" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_19_env_103"*)* @"$fundef_19" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_326", align 8
  store { i8*, i8* }* %"$dyndisp_table_322", { i8*, i8* }** %tf, align 8
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_314"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_314"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %tf1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_330"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$$fundef_27_envp_337_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_337_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_337_load", i64 8)
  %"$$fundef_27_envp_337" = bitcast i8* %"$$fundef_27_envp_337_salloc" to %"$$fundef_27_env_99"*
  %"$$fundef_27_env_voidp_339" = bitcast %"$$fundef_27_env_99"* %"$$fundef_27_envp_337" to i8*
  %"$$fundef_27_cloval_340" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_27_env_99"*)* @"$fundef_27" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_339", 1
  %"$$fundef_27_env_tf_341" = getelementptr inbounds %"$$fundef_27_env_99", %"$$fundef_27_env_99"* %"$$fundef_27_envp_337", i32 0, i32 0
  %"$tf_342" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_342", { i8*, i8* }** %"$$fundef_27_env_tf_341", align 8
  %"$$fundef_31_env_voidp_344" = bitcast %"$$fundef_27_env_99"* %"$$fundef_27_envp_337" to i8*
  %"$$fundef_31_cloval_345" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_31_env_97"*)* @"$fundef_31" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_31_env_voidp_344", 1
  %"$dyndisp_table_346_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_346_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_346_salloc_load", i64 64)
  %"$dyndisp_table_346_salloc" = bitcast i8* %"$dyndisp_table_346_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_346" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_346_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_347" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_346", i32 0
  %"$dyndisp_pcast_348" = bitcast { i8*, i8* }* %"$dyndisp_gep_347" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_27_cloval_340", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_348", align 8
  %"$dyndisp_gep_349" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_346", i32 2
  %"$dyndisp_pcast_350" = bitcast { i8*, i8* }* %"$dyndisp_gep_349" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_31_cloval_345", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_350", align 8
  store { i8*, i8* }* %"$dyndisp_table_346", { i8*, i8* }** %tf1, align 8
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_335"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_354"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$tf1_361" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_362" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_361", i32 0
  %"$tf1_363" = bitcast { i8*, i8* }* %"$tf1_362" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_364" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_363", align 8
  %"$tf1_fptr_365" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_364", 0
  %"$tf1_envptr_366" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_364", 1
  %"$tf1_call_367" = call { i8*, i8* }* %"$tf1_fptr_365"(i8* %"$tf1_envptr_366")
  %"$tf1_368" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_367", i32 1
  %"$tf1_369" = bitcast { i8*, i8* }* %"$tf1_368" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_370" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_369", align 8
  %"$tf1_fptr_371" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_370", 0
  %"$tf1_envptr_372" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_370", 1
  %"$tf1_call_373" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_371"(i8* %"$tf1_envptr_372")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_373", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_359"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %t2 = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$tf1_384" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_385" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_384", i32 2
  %"$tf1_386" = bitcast { i8*, i8* }* %"$tf1_385" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_387" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_386", align 8
  %"$tf1_fptr_388" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_387", 0
  %"$tf1_envptr_389" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_387", 1
  %"$tf1_call_390" = call { i8*, i8* }* %"$tf1_fptr_388"(i8* %"$tf1_envptr_389")
  %"$tf1_391" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_390", i32 3
  %"$tf1_392" = bitcast { i8*, i8* }* %"$tf1_391" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf1_393" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf1_392", align 8
  %"$tf1_fptr_394" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_393", 0
  %"$tf1_envptr_395" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_393", 1
  %"$tf1_call_396" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_fptr_394"(i8* %"$tf1_envptr_395")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_call_396", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_382"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %uint32_one = alloca %Uint32, align 8
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_400"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint32_one, align 4
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$have_gas_405"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$have_gas_405"
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %uint64_two = alloca %Uint64, align 8
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$have_gas_410"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$have_gas_410"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %uint64_two, align 8
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_415"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %hello_string = alloca %String, align 8
  %"$gasrem_422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_423" = icmp ugt i64 1, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %"$have_gas_420"
  %"$consume_426" = sub i64 %"$gasrem_422", 1
  store i64 %"$consume_426", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_427", i32 0, i32 0), i32 5 }, %String* %hello_string, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_425"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_425"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %addr_bystr20 = alloca [20 x i8], align 1
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_431"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  store [20 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA", [20 x i8]* %addr_bystr20, align 1
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %p1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_441"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %"$t1_6" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$t1_448" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$t1_fptr_449" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_448", 0
  %"$t1_envptr_450" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_448", 1
  %"$uint32_one_451" = load %Uint32, %Uint32* %uint32_one, align 4
  %"$t1_call_452" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_449"(i8* %"$t1_envptr_450", %Uint32 %"$uint32_one_451")
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_452", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8
  %"$t1_7" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$$t1_6_453" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_6", align 8
  %"$$t1_6_fptr_454" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_453", 0
  %"$$t1_6_envptr_455" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_6_453", 1
  %"$uint64_two_456" = load %Uint64, %Uint64* %uint64_two, align 8
  %"$$t1_6_call_457" = call %TName_Pair_Uint32_Uint64* %"$$t1_6_fptr_454"(i8* %"$$t1_6_envptr_455", %Uint64 %"$uint64_two_456")
  store %TName_Pair_Uint32_Uint64* %"$$t1_6_call_457", %TName_Pair_Uint32_Uint64** %"$t1_7", align 8
  %"$$t1_7_458" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_7", align 8
  store %TName_Pair_Uint32_Uint64* %"$$t1_7_458", %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 1, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_446"
  %"$consume_463" = sub i64 %"$gasrem_459", 1
  store i64 %"$consume_463", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_String_ByStr20*, align 8
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_462"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_462"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %"$t2_8" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$t2_469" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2, align 8
  %"$t2_fptr_470" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_469", 0
  %"$t2_envptr_471" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_469", 1
  %"$hello_string_472" = load %String, %String* %hello_string, align 8
  %"$t2_call_473" = call { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_fptr_470"(i8* %"$t2_envptr_471", %String %"$hello_string_472")
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_call_473", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_8", align 8
  %"$t2_9" = alloca %TName_Pair_String_ByStr20*, align 8
  %"$$t2_8_474" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_8", align 8
  %"$$t2_8_fptr_475" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_8_474", 0
  %"$$t2_8_envptr_476" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_8_474", 1
  %"$$t2_8_addr_bystr20_477" = alloca [20 x i8], align 1
  %"$addr_bystr20_478" = load [20 x i8], [20 x i8]* %addr_bystr20, align 1
  store [20 x i8] %"$addr_bystr20_478", [20 x i8]* %"$$t2_8_addr_bystr20_477", align 1
  %"$$t2_8_call_479" = call %TName_Pair_String_ByStr20* %"$$t2_8_fptr_475"(i8* %"$$t2_8_envptr_476", [20 x i8]* %"$$t2_8_addr_bystr20_477")
  store %TName_Pair_String_ByStr20* %"$$t2_8_call_479", %TName_Pair_String_ByStr20** %"$t2_9", align 8
  %"$$t2_9_480" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$t2_9", align 8
  store %TName_Pair_String_ByStr20* %"$$t2_9_480", %TName_Pair_String_ByStr20** %p2, align 8
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_467"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %"$p1_486" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$p2_487" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %p2, align 8
  %"$adtval_488_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_488_salloc" = call i8* @_salloc(i8* %"$adtval_488_load", i64 17)
  %"$adtval_488" = bitcast i8* %"$adtval_488_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  %"$adtgep_489" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_488", i32 0, i32 0
  store i8 0, i8* %"$adtgep_489", align 1
  %"$adtgep_490" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_488", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_486", %TName_Pair_Uint32_Uint64** %"$adtgep_490", align 8
  %"$adtgep_491" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_488", i32 0, i32 2
  store %TName_Pair_String_ByStr20* %"$p2_487", %TName_Pair_String_ByStr20** %"$adtgep_491", align 8
  %"$adtptr_492" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_488" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtptr_492", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_10", align 8
  %"$$expr_10_493" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_10", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$$expr_10_493"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_494" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_495" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$exprval_494" to i8*
  %"$execptr_load_496" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_496", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_69", i8* %"$memvoidcast_495")
  ret void
}
