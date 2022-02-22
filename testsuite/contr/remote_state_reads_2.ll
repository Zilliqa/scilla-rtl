

; gas_remaining: 4001999
; ModuleID = 'RRContract'
source_filename = "RRContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_40" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrFieldTyp_43" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_44" = type { i32, %"$TyDescr_AddrFieldTyp_43"* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_460" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_461" = type { %ParamDescrString, i32, %"$ParamDescr_460"* }
%Uint128 = type { i128 }
%TName_Option_Uint128 = type { i8, %CName_Some_Uint128*, %CName_None_Uint128* }
%CName_Some_Uint128 = type <{ i8, %Uint128 }>
%CName_None_Uint128 = type <{ i8 }>
%Map_Uint128_ByStr20_with_end = type { %Uint128, [20 x i8] }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_6" = global %"$TyDescrTy_PrimTyp_5" zeroinitializer
@"$TyDescr_Int32_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int32_Prim_6" to i8*) }
@"$TyDescr_Uint32_Prim_8" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 0 }
@"$TyDescr_Uint32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint32_Prim_8" to i8*) }
@"$TyDescr_Int64_Prim_10" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 1 }
@"$TyDescr_Int64_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int64_Prim_10" to i8*) }
@"$TyDescr_Uint64_Prim_12" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 1 }
@"$TyDescr_Uint64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint64_Prim_12" to i8*) }
@"$TyDescr_Int128_Prim_14" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 2 }
@"$TyDescr_Int128_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int128_Prim_14" to i8*) }
@"$TyDescr_Uint128_Prim_16" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 2 }
@"$TyDescr_Uint128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint128_Prim_16" to i8*) }
@"$TyDescr_Int256_Prim_18" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 3 }
@"$TyDescr_Int256_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int256_Prim_18" to i8*) }
@"$TyDescr_Uint256_Prim_20" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 3 }
@"$TyDescr_Uint256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint256_Prim_20" to i8*) }
@"$TyDescr_String_Prim_22" = global %"$TyDescrTy_PrimTyp_5" { i32 2, i32 0 }
@"$TyDescr_String_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_String_Prim_22" to i8*) }
@"$TyDescr_Bnum_Prim_24" = global %"$TyDescrTy_PrimTyp_5" { i32 3, i32 0 }
@"$TyDescr_Bnum_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bnum_Prim_24" to i8*) }
@"$TyDescr_Message_Prim_26" = global %"$TyDescrTy_PrimTyp_5" { i32 4, i32 0 }
@"$TyDescr_Message_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Message_Prim_26" to i8*) }
@"$TyDescr_Event_Prim_28" = global %"$TyDescrTy_PrimTyp_5" { i32 5, i32 0 }
@"$TyDescr_Event_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Event_Prim_28" to i8*) }
@"$TyDescr_Exception_Prim_30" = global %"$TyDescrTy_PrimTyp_5" { i32 6, i32 0 }
@"$TyDescr_Exception_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Exception_Prim_30" to i8*) }
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_Bystr20_Prim_34" = global %"$TyDescrTy_PrimTyp_5" { i32 8, i32 20 }
@"$TyDescr_Bystr20_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr20_Prim_34" to i8*) }
@"$TyDescr_ADT_Option_Uint128_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_62" to i8*) }
@"$TyDescr_Map_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_40"* @"$TyDescr_MapTyp_65" to i8*) }
@"$TyDescr_Map_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_40"* @"$TyDescr_MapTyp_66" to i8*) }
@"$TyDescr_Addr_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_69" to i8*) }
@"$TyDescr_Addr_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_72" to i8*) }
@"$TyDescr_Addr_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_75" to i8*) }
@"$TyDescr_Addr_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_78" to i8*) }
@"$TyDescr_Addr_49" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_81" to i8*) }
@"$TyDescr_Addr_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_84" to i8*) }
@"$TyDescr_Addr_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_85" to i8*) }
@"$TyDescr_Addr_52" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_88" to i8*) }
@"$TyDescr_Option_ADTTyp_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_64", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Option_ADTTyp_m_specls_63", i32 0, i32 0) }
@"$TyDescr_Option_Some_Uint128_Constr_m_args_54" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_17"]
@"$TyDescr_ADT_Some_55" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_55", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint128_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint128_Constr_m_args_57" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_58" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint128_ADTTyp_Constr_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_58", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint128_Constr_m_args_57", i32 0, i32 0) }
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_60" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_56", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Option_None_Uint128_ADTTyp_Constr_59"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_61" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_17"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Option_ADTTyp_53" }
@"$TyDescr_Option_ADTTyp_m_specls_63" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_62"]
@"$TyDescr_ADT_Option_64" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_MapTyp_65" = unnamed_addr constant %"$TyDescr_MapTyp_40" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }
@"$TyDescr_MapTyp_66" = unnamed_addr constant %"$TyDescr_MapTyp_40" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }
@"$TyDescr_AddrField_67" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_68" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_43"] [%"$TyDescr_AddrFieldTyp_43" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_67", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Map_41" }]
@"$TyDescr_AddrFields_69" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 1, %"$TyDescr_AddrFieldTyp_43"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_43"], [1 x %"$TyDescr_AddrFieldTyp_43"]* @"$TyDescr_AddrFields_68", i32 0, i32 0) }
@"$TyDescr_AddrField_70" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_71" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_43"] [%"$TyDescr_AddrFieldTyp_43" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_70", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$TyDescr_AddrFields_72" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 1, %"$TyDescr_AddrFieldTyp_43"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_43"], [1 x %"$TyDescr_AddrFieldTyp_43"]* @"$TyDescr_AddrFields_71", i32 0, i32 0) }
@"$TyDescr_AddrField_73" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_74" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_43"] [%"$TyDescr_AddrFieldTyp_43" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_73", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$TyDescr_AddrFields_75" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 1, %"$TyDescr_AddrFieldTyp_43"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_43"], [1 x %"$TyDescr_AddrFieldTyp_43"]* @"$TyDescr_AddrFields_74", i32 0, i32 0) }
@"$TyDescr_AddrField_76" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_77" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_43"] [%"$TyDescr_AddrFieldTyp_43" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_76", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }]
@"$TyDescr_AddrFields_78" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 1, %"$TyDescr_AddrFieldTyp_43"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_43"], [1 x %"$TyDescr_AddrFieldTyp_43"]* @"$TyDescr_AddrFields_77", i32 0, i32 0) }
@"$TyDescr_AddrField_79" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_80" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_43"] [%"$TyDescr_AddrFieldTyp_43" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_79", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }]
@"$TyDescr_AddrFields_81" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 1, %"$TyDescr_AddrFieldTyp_43"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_43"], [1 x %"$TyDescr_AddrFieldTyp_43"]* @"$TyDescr_AddrFields_80", i32 0, i32 0) }
@"$TyDescr_AddrField_82" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_83" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_43"] [%"$TyDescr_AddrFieldTyp_43" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_82", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_49" }]
@"$TyDescr_AddrFields_84" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 1, %"$TyDescr_AddrFieldTyp_43"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_43"], [1 x %"$TyDescr_AddrFieldTyp_43"]* @"$TyDescr_AddrFields_83", i32 0, i32 0) }
@"$TyDescr_AddrFields_85" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 -3, %"$TyDescr_AddrFieldTyp_43"* null }
@"$TyDescr_AddrField_86" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_87" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_43"] [%"$TyDescr_AddrFieldTyp_43" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_86", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }]
@"$TyDescr_AddrFields_88" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 1, %"$TyDescr_AddrFieldTyp_43"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_43"], [1 x %"$TyDescr_AddrFieldTyp_43"]* @"$TyDescr_AddrFields_87", i32 0, i32 0) }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_cparam = global [20 x i8] zeroinitializer
@"$remote_read_remote_read_res_1_105" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_1\00"
@"$remote_read_remote_read_res_2_118" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_2\00"
@"$remote_read_remote_read_res_3_128" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_3\00"
@"$address_type_erasure_test_res_1_141" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$admin_148" = unnamed_addr constant [6 x i8] c"admin\00"
@"$f_164" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_181" = unnamed_addr constant [2 x i8] c"g\00"
@"$remote_read_remote_read_res_1_208" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_1\00"
@"$admin_225" = unnamed_addr constant [6 x i8] c"admin\00"
@"$f_241" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_271" = unnamed_addr constant [2 x i8] c"g\00"
@"$remote_read_remote_read_res_2_296" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_2\00"
@"$admin_311" = unnamed_addr constant [6 x i8] c"admin\00"
@"$remote_read_remote_read_res_3_338" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_3\00"
@"$address_type_erasure_test_res_1_376" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$address_type_erasure_test_res_1_400" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$address_type_erasure_test_res_1_450" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@_tydescr_table = constant [26 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_50", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_51", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Addr_48", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Addr_52", %_TyDescrTy_Typ* @"$TyDescr_Map_41", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Addr_49", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Map_42", %_TyDescrTy_Typ* @"$TyDescr_Addr_47", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 26
@"$pname__scilla_version_462" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_463" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_464" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_cparam_465" = unnamed_addr constant [6 x i8] c"cparam"
@_contract_parameters = constant [4 x %"$ParamDescr_460"] [%"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_462", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_463", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_464", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$pname_cparam_465", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_52" }]
@_contract_parameters_length = constant i32 4
@"$tpname__amount_466" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_467" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_468" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote_469" = unnamed_addr constant [6 x i8] c"remote"
@"$tparams_RemoteReadsOfRemoteRead_470" = unnamed_addr constant [4 x %"$ParamDescr_460"] [%"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_466", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_467", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_468", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_remote_469", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_RemoteReadsOfRemoteRead_471" = unnamed_addr constant [23 x i8] c"RemoteReadsOfRemoteRead"
@"$tpname__amount_472" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_473" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_474" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote_475" = unnamed_addr constant [6 x i8] c"remote"
@"$tparams_RemoteReadsOfRemoteMap_476" = unnamed_addr constant [4 x %"$ParamDescr_460"] [%"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_472", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_473", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_474", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_remote_475", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_47" }]
@"$tname_RemoteReadsOfRemoteMap_477" = unnamed_addr constant [22 x i8] c"RemoteReadsOfRemoteMap"
@"$tpname__amount_478" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_479" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_480" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_RemoteReadsContractParam_481" = unnamed_addr constant [3 x %"$ParamDescr_460"] [%"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_478", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_479", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_480", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }]
@"$tname_RemoteReadsContractParam_482" = unnamed_addr constant [24 x i8] c"RemoteReadsContractParam"
@"$tpname__amount_483" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_484" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_485" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AddressTypeErasureTest1_486" = unnamed_addr constant [3 x %"$ParamDescr_460"] [%"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_483", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_484", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_485", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }]
@"$tname_AddressTypeErasureTest1_487" = unnamed_addr constant [23 x i8] c"AddressTypeErasureTest1"
@"$tpname__amount_488" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_489" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_490" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AddressTypeErasureTest2_491" = unnamed_addr constant [3 x %"$ParamDescr_460"] [%"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_488", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_489", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_460" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_490", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }]
@"$tname_AddressTypeErasureTest2_492" = unnamed_addr constant [23 x i8] c"AddressTypeErasureTest2"
@_transition_parameters = constant [5 x %"$TransDescr_461"] [%"$TransDescr_461" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_RemoteReadsOfRemoteRead_471", i32 0, i32 0), i32 23 }, i32 4, %"$ParamDescr_460"* getelementptr inbounds ([4 x %"$ParamDescr_460"], [4 x %"$ParamDescr_460"]* @"$tparams_RemoteReadsOfRemoteRead_470", i32 0, i32 0) }, %"$TransDescr_461" { %ParamDescrString { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$tname_RemoteReadsOfRemoteMap_477", i32 0, i32 0), i32 22 }, i32 4, %"$ParamDescr_460"* getelementptr inbounds ([4 x %"$ParamDescr_460"], [4 x %"$ParamDescr_460"]* @"$tparams_RemoteReadsOfRemoteMap_476", i32 0, i32 0) }, %"$TransDescr_461" { %ParamDescrString { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"$tname_RemoteReadsContractParam_482", i32 0, i32 0), i32 24 }, i32 3, %"$ParamDescr_460"* getelementptr inbounds ([3 x %"$ParamDescr_460"], [3 x %"$ParamDescr_460"]* @"$tparams_RemoteReadsContractParam_481", i32 0, i32 0) }, %"$TransDescr_461" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_AddressTypeErasureTest1_487", i32 0, i32 0), i32 23 }, i32 3, %"$ParamDescr_460"* getelementptr inbounds ([3 x %"$ParamDescr_460"], [3 x %"$ParamDescr_460"]* @"$tparams_AddressTypeErasureTest1_486", i32 0, i32 0) }, %"$TransDescr_461" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_AddressTypeErasureTest2_492", i32 0, i32 0), i32 23 }, i32 3, %"$ParamDescr_460"* getelementptr inbounds ([3 x %"$ParamDescr_460"], [3 x %"$ParamDescr_460"]* @"$tparams_AddressTypeErasureTest2_491", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define void @_init_libs() {
entry:
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 5, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %entry
  %"$consume_93" = sub i64 %"$gasrem_89", 5
  store i64 %"$consume_93", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
entry:
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %entry
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %"$remote_read_remote_read_res_1_1" = alloca %Uint128, align 8
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_read_remote_read_res_1_1", align 8
  %"$execptr_load_104" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_1_1_106" = load %Uint128, %Uint128* %"$remote_read_remote_read_res_1_1", align 8
  %"$update_value_107" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_read_remote_read_res_1_1_106", %Uint128* %"$update_value_107", align 8
  %"$update_value_108" = bitcast %Uint128* %"$update_value_107" to i8*
  call void @_update_field(i8* %"$execptr_load_104", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_1_105", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i8* %"$update_value_108")
  %"$remote_read_remote_read_res_2_2" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_102"
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %"$adtval_114_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_114_salloc" = call i8* @_salloc(i8* %"$adtval_114_load", i64 1)
  %"$adtval_114" = bitcast i8* %"$adtval_114_salloc" to %CName_None_Uint128*
  %"$adtgep_115" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_114", i32 0, i32 0
  store i8 1, i8* %"$adtgep_115", align 1
  %"$adtptr_116" = bitcast %CName_None_Uint128* %"$adtval_114" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_116", %TName_Option_Uint128** %"$remote_read_remote_read_res_2_2", align 8
  %"$execptr_load_117" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_2_2_119" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$remote_read_remote_read_res_2_2", align 8
  %"$update_value_120" = bitcast %TName_Option_Uint128* %"$$remote_read_remote_read_res_2_2_119" to i8*
  call void @_update_field(i8* %"$execptr_load_117", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_2_118", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_39", i32 0, i8* null, i8* %"$update_value_120")
  %"$remote_read_remote_read_res_3_3" = alloca [20 x i8], align 1
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_112"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %"$_this_address_126" = load [20 x i8], [20 x i8]* @_cparam__this_address, align 1
  store [20 x i8] %"$_this_address_126", [20 x i8]* %"$remote_read_remote_read_res_3_3", align 1
  %"$execptr_load_127" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_3_3_129" = load [20 x i8], [20 x i8]* %"$remote_read_remote_read_res_3_3", align 1
  %"$update_value_130" = alloca [20 x i8], align 1
  store [20 x i8] %"$$remote_read_remote_read_res_3_3_129", [20 x i8]* %"$update_value_130", align 1
  %"$update_value_131" = bitcast [20 x i8]* %"$update_value_130" to i8*
  call void @_update_field(i8* %"$execptr_load_127", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_3_128", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", i32 0, i8* null, i8* %"$update_value_131")
  %"$address_type_erasure_test_res_1_4" = alloca %Map_Uint128_ByStr20_with_end*, align 8
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_124"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %"$execptr_load_137" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_138" = call i8* @_new_empty_map(i8* %"$execptr_load_137")
  %"$_new_empty_map_139" = bitcast i8* %"$_new_empty_map_call_138" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$_new_empty_map_139", %Map_Uint128_ByStr20_with_end** %"$address_type_erasure_test_res_1_4", align 8
  %"$execptr_load_140" = load i8*, i8** @_execptr, align 8
  %"$$address_type_erasure_test_res_1_4_142" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %"$address_type_erasure_test_res_1_4", align 8
  %"$update_value_143" = bitcast %Map_Uint128_ByStr20_with_end* %"$$address_type_erasure_test_res_1_4_142" to i8*
  call void @_update_field(i8* %"$execptr_load_140", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_141", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_42", i32 0, i8* null, i8* %"$update_value_143")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_new_empty_map(i8*)

define internal void @"$RemoteReadsOfRemoteRead_144"(%Uint128 %_amount, [20 x i8]* %"$_origin_145", [20 x i8]* %"$_sender_146", [20 x i8]* %"$remote_147") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_145", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_146", align 1
  %remote = load [20 x i8], [20 x i8]* %"$remote_147", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_149" = load i8*, i8** @_execptr, align 8
  %"$ad_remote_150" = alloca [20 x i8], align 1
  store [20 x i8] %remote, [20 x i8]* %"$ad_remote_150", align 1
  %"$ad_call_151" = call i8* @_fetch_remote_field(i8* %"$execptr_load_149", [20 x i8]* %"$ad_remote_150", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_148", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_49", i32 0, i8* null, i32 1)
  %"$ad_152" = bitcast i8* %"$ad_call_151" to [20 x i8]*
  %"$ad_153" = load [20 x i8], [20 x i8]* %"$ad_152", align 1
  store [20 x i8] %"$ad_153", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_154" = alloca [20 x i8], align 1
  %"$ad_155" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_155", [20 x i8]* %"$_literal_cost_ad_154", align 1
  %"$$_literal_cost_ad_154_156" = bitcast [20 x i8]* %"$_literal_cost_ad_154" to i8*
  %"$_literal_cost_call_157" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_49", i8* %"$$_literal_cost_ad_154_156")
  %"$gasadd_158" = add i64 %"$_literal_cost_call_157", 0
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 %"$gasadd_158", %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %entry
  %"$consume_163" = sub i64 %"$gasrem_159", %"$gasadd_158"
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %this_f = alloca [20 x i8], align 1
  %"$execptr_load_165" = load i8*, i8** @_execptr, align 8
  %"$this_f_ad_166" = alloca [20 x i8], align 1
  %"$ad_167" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_167", [20 x i8]* %"$this_f_ad_166", align 1
  %"$this_f_call_168" = call i8* @_fetch_remote_field(i8* %"$execptr_load_165", [20 x i8]* %"$this_f_ad_166", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_164", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_48", i32 0, i8* null, i32 1)
  %"$this_f_169" = bitcast i8* %"$this_f_call_168" to [20 x i8]*
  %"$this_f_170" = load [20 x i8], [20 x i8]* %"$this_f_169", align 1
  store [20 x i8] %"$this_f_170", [20 x i8]* %this_f, align 1
  %"$_literal_cost_this_f_171" = alloca [20 x i8], align 1
  %"$this_f_172" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_172", [20 x i8]* %"$_literal_cost_this_f_171", align 1
  %"$$_literal_cost_this_f_171_173" = bitcast [20 x i8]* %"$_literal_cost_this_f_171" to i8*
  %"$_literal_cost_call_174" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_48", i8* %"$$_literal_cost_this_f_171_173")
  %"$gasadd_175" = add i64 %"$_literal_cost_call_174", 0
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 %"$gasadd_175", %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_162"
  %"$consume_180" = sub i64 %"$gasrem_176", %"$gasadd_175"
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %this_g = alloca %Uint128, align 8
  %"$execptr_load_182" = load i8*, i8** @_execptr, align 8
  %"$this_g_this_f_183" = alloca [20 x i8], align 1
  %"$this_f_184" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_184", [20 x i8]* %"$this_g_this_f_183", align 1
  %"$this_g_call_185" = call i8* @_fetch_remote_field(i8* %"$execptr_load_182", [20 x i8]* %"$this_g_this_f_183", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_181", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i32 1)
  %"$this_g_186" = bitcast i8* %"$this_g_call_185" to %Uint128*
  %"$this_g_187" = load %Uint128, %Uint128* %"$this_g_186", align 8
  store %Uint128 %"$this_g_187", %Uint128* %this_g, align 8
  %"$_literal_cost_this_g_188" = alloca %Uint128, align 8
  %"$this_g_189" = load %Uint128, %Uint128* %this_g, align 8
  store %Uint128 %"$this_g_189", %Uint128* %"$_literal_cost_this_g_188", align 8
  %"$$_literal_cost_this_g_188_190" = bitcast %Uint128* %"$_literal_cost_this_g_188" to i8*
  %"$_literal_cost_call_191" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i8* %"$$_literal_cost_this_g_188_190")
  %"$gasadd_192" = add i64 %"$_literal_cost_call_191", 0
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 %"$gasadd_192", %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_179"
  %"$consume_197" = sub i64 %"$gasrem_193", %"$gasadd_192"
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %"$_literal_cost_this_g_198" = alloca %Uint128, align 8
  %"$this_g_199" = load %Uint128, %Uint128* %this_g, align 8
  store %Uint128 %"$this_g_199", %Uint128* %"$_literal_cost_this_g_198", align 8
  %"$$_literal_cost_this_g_198_200" = bitcast %Uint128* %"$_literal_cost_this_g_198" to i8*
  %"$_literal_cost_call_201" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i8* %"$$_literal_cost_this_g_198_200")
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 %"$_literal_cost_call_201", %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_196"
  %"$consume_206" = sub i64 %"$gasrem_202", %"$_literal_cost_call_201"
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$execptr_load_207" = load i8*, i8** @_execptr, align 8
  %"$this_g_209" = load %Uint128, %Uint128* %this_g, align 8
  %"$update_value_210" = alloca %Uint128, align 8
  store %Uint128 %"$this_g_209", %Uint128* %"$update_value_210", align 8
  %"$update_value_211" = bitcast %Uint128* %"$update_value_210" to i8*
  call void @_update_field(i8* %"$execptr_load_207", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_1_208", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i8* %"$update_value_211")
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @RemoteReadsOfRemoteRead(i8* %0) {
entry:
  %"$_amount_213" = getelementptr i8, i8* %0, i32 0
  %"$_amount_214" = bitcast i8* %"$_amount_213" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_214", align 8
  %"$_origin_215" = getelementptr i8, i8* %0, i32 16
  %"$_origin_216" = bitcast i8* %"$_origin_215" to [20 x i8]*
  %"$_sender_217" = getelementptr i8, i8* %0, i32 36
  %"$_sender_218" = bitcast i8* %"$_sender_217" to [20 x i8]*
  %"$remote_219" = getelementptr i8, i8* %0, i32 56
  %"$remote_220" = bitcast i8* %"$remote_219" to [20 x i8]*
  call void @"$RemoteReadsOfRemoteRead_144"(%Uint128 %_amount, [20 x i8]* %"$_origin_216", [20 x i8]* %"$_sender_218", [20 x i8]* %"$remote_220")
  ret void
}

define internal void @"$RemoteReadsOfRemoteMap_221"(%Uint128 %_amount, [20 x i8]* %"$_origin_222", [20 x i8]* %"$_sender_223", [20 x i8]* %"$remote_224") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_222", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_223", align 1
  %remote = load [20 x i8], [20 x i8]* %"$remote_224", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_226" = load i8*, i8** @_execptr, align 8
  %"$ad_remote_227" = alloca [20 x i8], align 1
  store [20 x i8] %remote, [20 x i8]* %"$ad_remote_227", align 1
  %"$ad_call_228" = call i8* @_fetch_remote_field(i8* %"$execptr_load_226", [20 x i8]* %"$ad_remote_227", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_225", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_46", i32 0, i8* null, i32 1)
  %"$ad_229" = bitcast i8* %"$ad_call_228" to [20 x i8]*
  %"$ad_230" = load [20 x i8], [20 x i8]* %"$ad_229", align 1
  store [20 x i8] %"$ad_230", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_231" = alloca [20 x i8], align 1
  %"$ad_232" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_232", [20 x i8]* %"$_literal_cost_ad_231", align 1
  %"$$_literal_cost_ad_231_233" = bitcast [20 x i8]* %"$_literal_cost_ad_231" to i8*
  %"$_literal_cost_call_234" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_46", i8* %"$$_literal_cost_ad_231_233")
  %"$gasadd_235" = add i64 %"$_literal_cost_call_234", 0
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 %"$gasadd_235", %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %entry
  %"$consume_240" = sub i64 %"$gasrem_236", %"$gasadd_235"
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %this_f = alloca [20 x i8], align 1
  %"$execptr_load_242" = load i8*, i8** @_execptr, align 8
  %"$this_f_ad_243" = alloca [20 x i8], align 1
  %"$ad_244" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_244", [20 x i8]* %"$this_f_ad_243", align 1
  %"$this_f_call_245" = call i8* @_fetch_remote_field(i8* %"$execptr_load_242", [20 x i8]* %"$this_f_ad_243", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_241", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_45", i32 0, i8* null, i32 1)
  %"$this_f_246" = bitcast i8* %"$this_f_call_245" to [20 x i8]*
  %"$this_f_247" = load [20 x i8], [20 x i8]* %"$this_f_246", align 1
  store [20 x i8] %"$this_f_247", [20 x i8]* %this_f, align 1
  %"$_literal_cost_this_f_248" = alloca [20 x i8], align 1
  %"$this_f_249" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_249", [20 x i8]* %"$_literal_cost_this_f_248", align 1
  %"$$_literal_cost_this_f_248_250" = bitcast [20 x i8]* %"$_literal_cost_this_f_248" to i8*
  %"$_literal_cost_call_251" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_45", i8* %"$$_literal_cost_this_f_248_250")
  %"$gasadd_252" = add i64 %"$_literal_cost_call_251", 0
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 %"$gasadd_252", %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_239"
  %"$consume_257" = sub i64 %"$gasrem_253", %"$gasadd_252"
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_256"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %remote_key = alloca %Uint128, align 8
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_261"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %remote_key, align 8
  %this_g = alloca %TName_Option_Uint128*, align 8
  %"$indices_buf_268_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_268_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_268_salloc_load", i64 16)
  %"$indices_buf_268_salloc" = bitcast i8* %"$indices_buf_268_salloc_salloc" to [16 x i8]*
  %"$indices_buf_268" = bitcast [16 x i8]* %"$indices_buf_268_salloc" to i8*
  %"$remote_key_269" = load %Uint128, %Uint128* %remote_key, align 8
  %"$indices_gep_270" = getelementptr i8, i8* %"$indices_buf_268", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_270" to %Uint128*
  store %Uint128 %"$remote_key_269", %Uint128* %indices_cast, align 8
  %"$execptr_load_272" = load i8*, i8** @_execptr, align 8
  %"$this_g_this_f_273" = alloca [20 x i8], align 1
  %"$this_f_274" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_274", [20 x i8]* %"$this_g_this_f_273", align 1
  %"$this_g_call_275" = call i8* @_fetch_remote_field(i8* %"$execptr_load_272", [20 x i8]* %"$this_g_this_f_273", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_271", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_268", i32 1)
  %"$this_g_276" = bitcast i8* %"$this_g_call_275" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$this_g_276", %TName_Option_Uint128** %this_g, align 8
  %"$this_g_277" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$$this_g_277_278" = bitcast %TName_Option_Uint128* %"$this_g_277" to i8*
  %"$_literal_cost_call_279" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_39", i8* %"$$this_g_277_278")
  %"$gasadd_280" = add i64 %"$_literal_cost_call_279", 0
  %"$gasadd_281" = add i64 %"$gasadd_280", 1
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 %"$gasadd_281", %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_266"
  %"$consume_286" = sub i64 %"$gasrem_282", %"$gasadd_281"
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %"$this_g_287" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$$this_g_287_288" = bitcast %TName_Option_Uint128* %"$this_g_287" to i8*
  %"$_literal_cost_call_289" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_39", i8* %"$$this_g_287_288")
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 %"$_literal_cost_call_289", %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_285"
  %"$consume_294" = sub i64 %"$gasrem_290", %"$_literal_cost_call_289"
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$execptr_load_295" = load i8*, i8** @_execptr, align 8
  %"$this_g_297" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$update_value_298" = bitcast %TName_Option_Uint128* %"$this_g_297" to i8*
  call void @_update_field(i8* %"$execptr_load_295", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_2_296", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_39", i32 0, i8* null, i8* %"$update_value_298")
  ret void
}

define void @RemoteReadsOfRemoteMap(i8* %0) {
entry:
  %"$_amount_300" = getelementptr i8, i8* %0, i32 0
  %"$_amount_301" = bitcast i8* %"$_amount_300" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_301", align 8
  %"$_origin_302" = getelementptr i8, i8* %0, i32 16
  %"$_origin_303" = bitcast i8* %"$_origin_302" to [20 x i8]*
  %"$_sender_304" = getelementptr i8, i8* %0, i32 36
  %"$_sender_305" = bitcast i8* %"$_sender_304" to [20 x i8]*
  %"$remote_306" = getelementptr i8, i8* %0, i32 56
  %"$remote_307" = bitcast i8* %"$remote_306" to [20 x i8]*
  call void @"$RemoteReadsOfRemoteMap_221"(%Uint128 %_amount, [20 x i8]* %"$_origin_303", [20 x i8]* %"$_sender_305", [20 x i8]* %"$remote_307")
  ret void
}

define internal void @"$RemoteReadsContractParam_308"(%Uint128 %_amount, [20 x i8]* %"$_origin_309", [20 x i8]* %"$_sender_310") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_309", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_310", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_312" = load i8*, i8** @_execptr, align 8
  %"$ad_cparam_313" = alloca [20 x i8], align 1
  %"$cparam_314" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_314", [20 x i8]* %"$ad_cparam_313", align 1
  %"$ad_call_315" = call i8* @_fetch_remote_field(i8* %"$execptr_load_312", [20 x i8]* %"$ad_cparam_313", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_311", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", i32 0, i8* null, i32 1)
  %"$ad_316" = bitcast i8* %"$ad_call_315" to [20 x i8]*
  %"$ad_317" = load [20 x i8], [20 x i8]* %"$ad_316", align 1
  store [20 x i8] %"$ad_317", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_318" = alloca [20 x i8], align 1
  %"$ad_319" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_319", [20 x i8]* %"$_literal_cost_ad_318", align 1
  %"$$_literal_cost_ad_318_320" = bitcast [20 x i8]* %"$_literal_cost_ad_318" to i8*
  %"$_literal_cost_call_321" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", i8* %"$$_literal_cost_ad_318_320")
  %"$gasadd_322" = add i64 %"$_literal_cost_call_321", 0
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 %"$gasadd_322", %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %entry
  %"$consume_327" = sub i64 %"$gasrem_323", %"$gasadd_322"
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %"$_literal_cost_ad_328" = alloca [20 x i8], align 1
  %"$ad_329" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_329", [20 x i8]* %"$_literal_cost_ad_328", align 1
  %"$$_literal_cost_ad_328_330" = bitcast [20 x i8]* %"$_literal_cost_ad_328" to i8*
  %"$_literal_cost_call_331" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", i8* %"$$_literal_cost_ad_328_330")
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 %"$_literal_cost_call_331", %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_326"
  %"$consume_336" = sub i64 %"$gasrem_332", %"$_literal_cost_call_331"
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$execptr_load_337" = load i8*, i8** @_execptr, align 8
  %"$ad_339" = load [20 x i8], [20 x i8]* %ad, align 1
  %"$update_value_340" = alloca [20 x i8], align 1
  store [20 x i8] %"$ad_339", [20 x i8]* %"$update_value_340", align 1
  %"$update_value_341" = bitcast [20 x i8]* %"$update_value_340" to i8*
  call void @_update_field(i8* %"$execptr_load_337", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_3_338", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", i32 0, i8* null, i8* %"$update_value_341")
  ret void
}

define void @RemoteReadsContractParam(i8* %0) {
entry:
  %"$_amount_343" = getelementptr i8, i8* %0, i32 0
  %"$_amount_344" = bitcast i8* %"$_amount_343" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_344", align 8
  %"$_origin_345" = getelementptr i8, i8* %0, i32 16
  %"$_origin_346" = bitcast i8* %"$_origin_345" to [20 x i8]*
  %"$_sender_347" = getelementptr i8, i8* %0, i32 36
  %"$_sender_348" = bitcast i8* %"$_sender_347" to [20 x i8]*
  call void @"$RemoteReadsContractParam_308"(%Uint128 %_amount, [20 x i8]* %"$_origin_346", [20 x i8]* %"$_sender_348")
  ret void
}

define internal void @"$AddressTypeErasureTest1_349"(%Uint128 %_amount, [20 x i8]* %"$_origin_350", [20 x i8]* %"$_sender_351") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_350", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_351", align 1
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %entry
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %zero = alloca %Uint128, align 8
  %"$gasrem_357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_358" = icmp ugt i64 1, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %"$have_gas_355"
  %"$consume_361" = sub i64 %"$gasrem_357", 1
  store i64 %"$consume_361", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %zero, align 8
  %"$_literal_cost_cparam_362" = alloca [20 x i8], align 1
  %"$cparam_363" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_363", [20 x i8]* %"$_literal_cost_cparam_362", align 1
  %"$$_literal_cost_cparam_362_364" = bitcast [20 x i8]* %"$_literal_cost_cparam_362" to i8*
  %"$_literal_cost_call_365" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_52", i8* %"$$_literal_cost_cparam_362_364")
  %"$gasadd_366" = add i64 %"$_literal_cost_call_365", 1
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 %"$gasadd_366", %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_360"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_360"
  %"$consume_371" = sub i64 %"$gasrem_367", %"$gasadd_366"
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %"$indices_buf_372_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_372_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_372_salloc_load", i64 16)
  %"$indices_buf_372_salloc" = bitcast i8* %"$indices_buf_372_salloc_salloc" to [16 x i8]*
  %"$indices_buf_372" = bitcast [16 x i8]* %"$indices_buf_372_salloc" to i8*
  %"$zero_373" = load %Uint128, %Uint128* %zero, align 8
  %"$indices_gep_374" = getelementptr i8, i8* %"$indices_buf_372", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_374" to %Uint128*
  store %Uint128 %"$zero_373", %Uint128* %indices_cast, align 8
  %"$execptr_load_375" = load i8*, i8** @_execptr, align 8
  %"$cparam_377" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  %"$update_value_378" = alloca [20 x i8], align 1
  store [20 x i8] %"$cparam_377", [20 x i8]* %"$update_value_378", align 1
  %"$update_value_379" = bitcast [20 x i8]* %"$update_value_378" to i8*
  call void @_update_field(i8* %"$execptr_load_375", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_376", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_42", i32 1, i8* %"$indices_buf_372", i8* %"$update_value_379")
  ret void
}

define void @AddressTypeErasureTest1(i8* %0) {
entry:
  %"$_amount_381" = getelementptr i8, i8* %0, i32 0
  %"$_amount_382" = bitcast i8* %"$_amount_381" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_382", align 8
  %"$_origin_383" = getelementptr i8, i8* %0, i32 16
  %"$_origin_384" = bitcast i8* %"$_origin_383" to [20 x i8]*
  %"$_sender_385" = getelementptr i8, i8* %0, i32 36
  %"$_sender_386" = bitcast i8* %"$_sender_385" to [20 x i8]*
  call void @"$AddressTypeErasureTest1_349"(%Uint128 %_amount, [20 x i8]* %"$_origin_384", [20 x i8]* %"$_sender_386")
  ret void
}

define internal void @"$AddressTypeErasureTest2_387"(%Uint128 %_amount, [20 x i8]* %"$_origin_388", [20 x i8]* %"$_sender_389") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_388", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_389", align 1
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %entry
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  %zero = alloca %Uint128, align 8
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_393"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %zero, align 8
  %emp_map = alloca %Map_Uint128_ByStr20_with_end*, align 8
  %"$execptr_load_401" = load i8*, i8** @_execptr, align 8
  %"$emp_map_call_402" = call i8* @_fetch_field(i8* %"$execptr_load_401", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_400", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_42", i32 0, i8* null, i32 1)
  %"$emp_map_403" = bitcast i8* %"$emp_map_call_402" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$emp_map_403", %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$emp_map_404" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_404_405" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_404" to i8*
  %"$_literal_cost_call_406" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$emp_map_404_405")
  %"$emp_map_407" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_407_408" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_407" to i8*
  %"$_mapsortcost_call_409" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$emp_map_407_408")
  %"$gasadd_410" = add i64 %"$_literal_cost_call_406", %"$_mapsortcost_call_409"
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 %"$gasadd_410", %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_398"
  %"$consume_415" = sub i64 %"$gasrem_411", %"$gasadd_410"
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_414"
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem, align 8
  %new_map = alloca %Map_Uint128_ByStr20_with_end*, align 8
  %"$emp_map_421" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_421_422" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_421" to i8*
  %"$_lengthof_call_423" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$emp_map_421_422")
  %"$gasadd_424" = add i64 1, %"$_lengthof_call_423"
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 %"$gasadd_424", %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_419"
  %"$consume_429" = sub i64 %"$gasrem_425", %"$gasadd_424"
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$execptr_load_430" = load i8*, i8** @_execptr, align 8
  %"$emp_map_431" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_431_432" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_431" to i8*
  %"$put_zero_433" = alloca %Uint128, align 8
  %"$zero_434" = load %Uint128, %Uint128* %zero, align 8
  store %Uint128 %"$zero_434", %Uint128* %"$put_zero_433", align 8
  %"$$put_zero_433_435" = bitcast %Uint128* %"$put_zero_433" to i8*
  %"$put_cparam_436" = alloca [20 x i8], align 1
  %"$cparam_437" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_437", [20 x i8]* %"$put_cparam_436", align 1
  %"$$put_cparam_436_438" = bitcast [20 x i8]* %"$put_cparam_436" to i8*
  %"$put_call_439" = call i8* @_put(i8* %"$execptr_load_430", %_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$emp_map_431_432", i8* %"$$put_zero_433_435", i8* %"$$put_cparam_436_438")
  %"$put_440" = bitcast i8* %"$put_call_439" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$put_440", %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$new_map_441" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$$new_map_441_442" = bitcast %Map_Uint128_ByStr20_with_end* %"$new_map_441" to i8*
  %"$_literal_cost_call_443" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$new_map_441_442")
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 %"$_literal_cost_call_443", %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_428"
  %"$consume_448" = sub i64 %"$gasrem_444", %"$_literal_cost_call_443"
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %"$execptr_load_449" = load i8*, i8** @_execptr, align 8
  %"$new_map_451" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$update_value_452" = bitcast %Map_Uint128_ByStr20_with_end* %"$new_map_451" to i8*
  call void @_update_field(i8* %"$execptr_load_449", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_450", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_42", i32 0, i8* null, i8* %"$update_value_452")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @AddressTypeErasureTest2(i8* %0) {
entry:
  %"$_amount_454" = getelementptr i8, i8* %0, i32 0
  %"$_amount_455" = bitcast i8* %"$_amount_454" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_455", align 8
  %"$_origin_456" = getelementptr i8, i8* %0, i32 16
  %"$_origin_457" = bitcast i8* %"$_origin_456" to [20 x i8]*
  %"$_sender_458" = getelementptr i8, i8* %0, i32 36
  %"$_sender_459" = bitcast i8* %"$_sender_458" to [20 x i8]*
  call void @"$AddressTypeErasureTest2_387"(%Uint128 %_amount, [20 x i8]* %"$_origin_457", [20 x i8]* %"$_sender_459")
  ret void
}
