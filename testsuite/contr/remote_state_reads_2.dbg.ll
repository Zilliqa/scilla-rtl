

; gas_remaining: 4001999
; ModuleID = 'RRContract'
source_filename = "RRContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%"$ParamDescr_455" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_456" = type { %ParamDescrString, i32, %"$ParamDescr_455"* }
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
@"$TyDescr_AddrFields_85" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 -1, %"$TyDescr_AddrFieldTyp_43"* null }
@"$TyDescr_AddrField_86" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_87" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_43"] [%"$TyDescr_AddrFieldTyp_43" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_86", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }]
@"$TyDescr_AddrFields_88" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 1, %"$TyDescr_AddrFieldTyp_43"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_43"], [1 x %"$TyDescr_AddrFieldTyp_43"]* @"$TyDescr_AddrFields_87", i32 0, i32 0) }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_cparam = global [20 x i8] zeroinitializer
@"$remote_read_remote_read_res_1_100" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_1\00"
@"$remote_read_remote_read_res_2_113" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_2\00"
@"$remote_read_remote_read_res_3_123" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_3\00"
@"$address_type_erasure_test_res_1_136" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$admin_143" = unnamed_addr constant [6 x i8] c"admin\00"
@"$f_159" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_176" = unnamed_addr constant [2 x i8] c"g\00"
@"$remote_read_remote_read_res_1_203" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_1\00"
@"$admin_220" = unnamed_addr constant [6 x i8] c"admin\00"
@"$f_236" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_266" = unnamed_addr constant [2 x i8] c"g\00"
@"$remote_read_remote_read_res_2_291" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_2\00"
@"$admin_306" = unnamed_addr constant [6 x i8] c"admin\00"
@"$remote_read_remote_read_res_3_333" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_3\00"
@"$address_type_erasure_test_res_1_371" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$address_type_erasure_test_res_1_395" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$address_type_erasure_test_res_1_445" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@_tydescr_table = constant [26 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_50", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_51", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Addr_48", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Addr_52", %_TyDescrTy_Typ* @"$TyDescr_Map_41", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Addr_49", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Map_42", %_TyDescrTy_Typ* @"$TyDescr_Addr_47", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 26
@"$pname__scilla_version_457" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_458" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_459" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_cparam_460" = unnamed_addr constant [6 x i8] c"cparam"
@_contract_parameters = constant [4 x %"$ParamDescr_455"] [%"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_457", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_458", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_459", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$pname_cparam_460", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_52" }]
@_contract_parameters_length = constant i32 4
@"$tpname__amount_461" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_462" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_463" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote_464" = unnamed_addr constant [6 x i8] c"remote"
@"$tparams_RemoteReadsOfRemoteRead_465" = unnamed_addr constant [4 x %"$ParamDescr_455"] [%"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_461", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_462", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_463", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_remote_464", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_RemoteReadsOfRemoteRead_466" = unnamed_addr constant [23 x i8] c"RemoteReadsOfRemoteRead"
@"$tpname__amount_467" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_468" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_469" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote_470" = unnamed_addr constant [6 x i8] c"remote"
@"$tparams_RemoteReadsOfRemoteMap_471" = unnamed_addr constant [4 x %"$ParamDescr_455"] [%"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_467", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_468", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_469", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_remote_470", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_47" }]
@"$tname_RemoteReadsOfRemoteMap_472" = unnamed_addr constant [22 x i8] c"RemoteReadsOfRemoteMap"
@"$tpname__amount_473" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_474" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_475" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_RemoteReadsContractParam_476" = unnamed_addr constant [3 x %"$ParamDescr_455"] [%"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_473", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_474", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_475", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }]
@"$tname_RemoteReadsContractParam_477" = unnamed_addr constant [24 x i8] c"RemoteReadsContractParam"
@"$tpname__amount_478" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_479" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_480" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AddressTypeErasureTest1_481" = unnamed_addr constant [3 x %"$ParamDescr_455"] [%"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_478", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_479", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_480", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }]
@"$tname_AddressTypeErasureTest1_482" = unnamed_addr constant [23 x i8] c"AddressTypeErasureTest1"
@"$tpname__amount_483" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_484" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_485" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AddressTypeErasureTest2_486" = unnamed_addr constant [3 x %"$ParamDescr_455"] [%"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_483", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_484", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_485", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }]
@"$tname_AddressTypeErasureTest2_487" = unnamed_addr constant [23 x i8] c"AddressTypeErasureTest2"
@_transition_parameters = constant [5 x %"$TransDescr_456"] [%"$TransDescr_456" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_RemoteReadsOfRemoteRead_466", i32 0, i32 0), i32 23 }, i32 4, %"$ParamDescr_455"* getelementptr inbounds ([4 x %"$ParamDescr_455"], [4 x %"$ParamDescr_455"]* @"$tparams_RemoteReadsOfRemoteRead_465", i32 0, i32 0) }, %"$TransDescr_456" { %ParamDescrString { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$tname_RemoteReadsOfRemoteMap_472", i32 0, i32 0), i32 22 }, i32 4, %"$ParamDescr_455"* getelementptr inbounds ([4 x %"$ParamDescr_455"], [4 x %"$ParamDescr_455"]* @"$tparams_RemoteReadsOfRemoteMap_471", i32 0, i32 0) }, %"$TransDescr_456" { %ParamDescrString { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"$tname_RemoteReadsContractParam_477", i32 0, i32 0), i32 24 }, i32 3, %"$ParamDescr_455"* getelementptr inbounds ([3 x %"$ParamDescr_455"], [3 x %"$ParamDescr_455"]* @"$tparams_RemoteReadsContractParam_476", i32 0, i32 0) }, %"$TransDescr_456" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_AddressTypeErasureTest1_482", i32 0, i32 0), i32 23 }, i32 3, %"$ParamDescr_455"* getelementptr inbounds ([3 x %"$ParamDescr_455"], [3 x %"$ParamDescr_455"]* @"$tparams_AddressTypeErasureTest1_481", i32 0, i32 0) }, %"$TransDescr_456" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_AddressTypeErasureTest2_487", i32 0, i32 0), i32 23 }, i32 3, %"$ParamDescr_455"* getelementptr inbounds ([3 x %"$ParamDescr_455"], [3 x %"$ParamDescr_455"]* @"$tparams_AddressTypeErasureTest2_486", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define void @_init_libs() !dbg !4 {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_init_state() !dbg !10 {
entry:
  %"$remote_read_remote_read_res_1_1" = alloca %Uint128, align 8
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %entry
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_read_remote_read_res_1_1", align 8, !dbg !11
  %"$execptr_load_99" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_1_1_101" = load %Uint128, %Uint128* %"$remote_read_remote_read_res_1_1", align 8
  %"$update_value_102" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_read_remote_read_res_1_1_101", %Uint128* %"$update_value_102", align 8
  %"$update_value_103" = bitcast %Uint128* %"$update_value_102" to i8*
  call void @_update_field(i8* %"$execptr_load_99", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_1_100", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i8* %"$update_value_103"), !dbg !11
  %"$remote_read_remote_read_res_2_2" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_97"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$adtval_109_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_109_salloc" = call i8* @_salloc(i8* %"$adtval_109_load", i64 1)
  %"$adtval_109" = bitcast i8* %"$adtval_109_salloc" to %CName_None_Uint128*
  %"$adtgep_110" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_109", i32 0, i32 0
  store i8 1, i8* %"$adtgep_110", align 1
  %"$adtptr_111" = bitcast %CName_None_Uint128* %"$adtval_109" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_111", %TName_Option_Uint128** %"$remote_read_remote_read_res_2_2", align 8, !dbg !12
  %"$execptr_load_112" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_2_2_114" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$remote_read_remote_read_res_2_2", align 8
  %"$update_value_115" = bitcast %TName_Option_Uint128* %"$$remote_read_remote_read_res_2_2_114" to i8*
  call void @_update_field(i8* %"$execptr_load_112", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_2_113", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_39", i32 0, i8* null, i8* %"$update_value_115"), !dbg !12
  %"$remote_read_remote_read_res_3_3" = alloca [20 x i8], align 1
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_107"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %"$_this_address_121" = load [20 x i8], [20 x i8]* @_cparam__this_address, align 1
  store [20 x i8] %"$_this_address_121", [20 x i8]* %"$remote_read_remote_read_res_3_3", align 1, !dbg !13
  %"$execptr_load_122" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_3_3_124" = load [20 x i8], [20 x i8]* %"$remote_read_remote_read_res_3_3", align 1
  %"$update_value_125" = alloca [20 x i8], align 1
  store [20 x i8] %"$$remote_read_remote_read_res_3_3_124", [20 x i8]* %"$update_value_125", align 1
  %"$update_value_126" = bitcast [20 x i8]* %"$update_value_125" to i8*
  call void @_update_field(i8* %"$execptr_load_122", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_3_123", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", i32 0, i8* null, i8* %"$update_value_126"), !dbg !13
  %"$address_type_erasure_test_res_1_4" = alloca %Map_Uint128_ByStr20_with_end*, align 8
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_119"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %"$execptr_load_132" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_133" = call i8* @_new_empty_map(i8* %"$execptr_load_132")
  %"$_new_empty_map_134" = bitcast i8* %"$_new_empty_map_call_133" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$_new_empty_map_134", %Map_Uint128_ByStr20_with_end** %"$address_type_erasure_test_res_1_4", align 8, !dbg !14
  %"$execptr_load_135" = load i8*, i8** @_execptr, align 8
  %"$$address_type_erasure_test_res_1_4_137" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %"$address_type_erasure_test_res_1_4", align 8
  %"$update_value_138" = bitcast %Map_Uint128_ByStr20_with_end* %"$$address_type_erasure_test_res_1_4_137" to i8*
  call void @_update_field(i8* %"$execptr_load_135", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_136", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_42", i32 0, i8* null, i8* %"$update_value_138"), !dbg !14
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_new_empty_map(i8*)

define internal void @"$RemoteReadsOfRemoteRead_139"(%Uint128 %_amount, [20 x i8]* %"$_origin_140", [20 x i8]* %"$_sender_141", [20 x i8]* %"$remote_142") !dbg !15 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_140", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_141", align 1
  %remote = load [20 x i8], [20 x i8]* %"$remote_142", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_144" = load i8*, i8** @_execptr, align 8
  %"$ad_remote_145" = alloca [20 x i8], align 1
  store [20 x i8] %remote, [20 x i8]* %"$ad_remote_145", align 1
  %"$ad_call_146" = call i8* @_fetch_remote_field(i8* %"$execptr_load_144", [20 x i8]* %"$ad_remote_145", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_143", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_49", i32 0, i8* null, i32 1), !dbg !16
  %"$ad_147" = bitcast i8* %"$ad_call_146" to [20 x i8]*
  %"$ad_148" = load [20 x i8], [20 x i8]* %"$ad_147", align 1
  store [20 x i8] %"$ad_148", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_149" = alloca [20 x i8], align 1
  %"$ad_150" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_150", [20 x i8]* %"$_literal_cost_ad_149", align 1
  %"$$_literal_cost_ad_149_151" = bitcast [20 x i8]* %"$_literal_cost_ad_149" to i8*
  %"$_literal_cost_call_152" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_49", i8* %"$$_literal_cost_ad_149_151")
  %"$gasadd_153" = add i64 %"$_literal_cost_call_152", 0
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 %"$gasadd_153", %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %entry
  %"$consume_158" = sub i64 %"$gasrem_154", %"$gasadd_153"
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %this_f = alloca [20 x i8], align 1
  %"$execptr_load_160" = load i8*, i8** @_execptr, align 8
  %"$this_f_ad_161" = alloca [20 x i8], align 1
  %"$ad_162" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_162", [20 x i8]* %"$this_f_ad_161", align 1
  %"$this_f_call_163" = call i8* @_fetch_remote_field(i8* %"$execptr_load_160", [20 x i8]* %"$this_f_ad_161", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_159", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_48", i32 0, i8* null, i32 1), !dbg !17
  %"$this_f_164" = bitcast i8* %"$this_f_call_163" to [20 x i8]*
  %"$this_f_165" = load [20 x i8], [20 x i8]* %"$this_f_164", align 1
  store [20 x i8] %"$this_f_165", [20 x i8]* %this_f, align 1
  %"$_literal_cost_this_f_166" = alloca [20 x i8], align 1
  %"$this_f_167" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_167", [20 x i8]* %"$_literal_cost_this_f_166", align 1
  %"$$_literal_cost_this_f_166_168" = bitcast [20 x i8]* %"$_literal_cost_this_f_166" to i8*
  %"$_literal_cost_call_169" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_48", i8* %"$$_literal_cost_this_f_166_168")
  %"$gasadd_170" = add i64 %"$_literal_cost_call_169", 0
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 %"$gasadd_170", %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_157"
  %"$consume_175" = sub i64 %"$gasrem_171", %"$gasadd_170"
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %this_g = alloca %Uint128, align 8
  %"$execptr_load_177" = load i8*, i8** @_execptr, align 8
  %"$this_g_this_f_178" = alloca [20 x i8], align 1
  %"$this_f_179" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_179", [20 x i8]* %"$this_g_this_f_178", align 1
  %"$this_g_call_180" = call i8* @_fetch_remote_field(i8* %"$execptr_load_177", [20 x i8]* %"$this_g_this_f_178", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_176", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i32 1), !dbg !18
  %"$this_g_181" = bitcast i8* %"$this_g_call_180" to %Uint128*
  %"$this_g_182" = load %Uint128, %Uint128* %"$this_g_181", align 8
  store %Uint128 %"$this_g_182", %Uint128* %this_g, align 8
  %"$_literal_cost_this_g_183" = alloca %Uint128, align 8
  %"$this_g_184" = load %Uint128, %Uint128* %this_g, align 8
  store %Uint128 %"$this_g_184", %Uint128* %"$_literal_cost_this_g_183", align 8
  %"$$_literal_cost_this_g_183_185" = bitcast %Uint128* %"$_literal_cost_this_g_183" to i8*
  %"$_literal_cost_call_186" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i8* %"$$_literal_cost_this_g_183_185")
  %"$gasadd_187" = add i64 %"$_literal_cost_call_186", 0
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 %"$gasadd_187", %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %"$have_gas_174"
  %"$consume_192" = sub i64 %"$gasrem_188", %"$gasadd_187"
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %"$_literal_cost_this_g_193" = alloca %Uint128, align 8
  %"$this_g_194" = load %Uint128, %Uint128* %this_g, align 8
  store %Uint128 %"$this_g_194", %Uint128* %"$_literal_cost_this_g_193", align 8
  %"$$_literal_cost_this_g_193_195" = bitcast %Uint128* %"$_literal_cost_this_g_193" to i8*
  %"$_literal_cost_call_196" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i8* %"$$_literal_cost_this_g_193_195")
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 %"$_literal_cost_call_196", %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_191"
  %"$consume_201" = sub i64 %"$gasrem_197", %"$_literal_cost_call_196"
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$execptr_load_202" = load i8*, i8** @_execptr, align 8
  %"$this_g_204" = load %Uint128, %Uint128* %this_g, align 8
  %"$update_value_205" = alloca %Uint128, align 8
  store %Uint128 %"$this_g_204", %Uint128* %"$update_value_205", align 8
  %"$update_value_206" = bitcast %Uint128* %"$update_value_205" to i8*
  call void @_update_field(i8* %"$execptr_load_202", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_1_203", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i8* %"$update_value_206"), !dbg !19
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @RemoteReadsOfRemoteRead(i8* %0) !dbg !20 {
entry:
  %"$_amount_208" = getelementptr i8, i8* %0, i32 0
  %"$_amount_209" = bitcast i8* %"$_amount_208" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_209", align 8
  %"$_origin_210" = getelementptr i8, i8* %0, i32 16
  %"$_origin_211" = bitcast i8* %"$_origin_210" to [20 x i8]*
  %"$_sender_212" = getelementptr i8, i8* %0, i32 36
  %"$_sender_213" = bitcast i8* %"$_sender_212" to [20 x i8]*
  %"$remote_214" = getelementptr i8, i8* %0, i32 56
  %"$remote_215" = bitcast i8* %"$remote_214" to [20 x i8]*
  call void @"$RemoteReadsOfRemoteRead_139"(%Uint128 %_amount, [20 x i8]* %"$_origin_211", [20 x i8]* %"$_sender_213", [20 x i8]* %"$remote_215"), !dbg !21
  ret void
}

define internal void @"$RemoteReadsOfRemoteMap_216"(%Uint128 %_amount, [20 x i8]* %"$_origin_217", [20 x i8]* %"$_sender_218", [20 x i8]* %"$remote_219") !dbg !22 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_217", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_218", align 1
  %remote = load [20 x i8], [20 x i8]* %"$remote_219", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_221" = load i8*, i8** @_execptr, align 8
  %"$ad_remote_222" = alloca [20 x i8], align 1
  store [20 x i8] %remote, [20 x i8]* %"$ad_remote_222", align 1
  %"$ad_call_223" = call i8* @_fetch_remote_field(i8* %"$execptr_load_221", [20 x i8]* %"$ad_remote_222", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_220", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_46", i32 0, i8* null, i32 1), !dbg !23
  %"$ad_224" = bitcast i8* %"$ad_call_223" to [20 x i8]*
  %"$ad_225" = load [20 x i8], [20 x i8]* %"$ad_224", align 1
  store [20 x i8] %"$ad_225", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_226" = alloca [20 x i8], align 1
  %"$ad_227" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_227", [20 x i8]* %"$_literal_cost_ad_226", align 1
  %"$$_literal_cost_ad_226_228" = bitcast [20 x i8]* %"$_literal_cost_ad_226" to i8*
  %"$_literal_cost_call_229" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_46", i8* %"$$_literal_cost_ad_226_228")
  %"$gasadd_230" = add i64 %"$_literal_cost_call_229", 0
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 %"$gasadd_230", %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %entry
  %"$consume_235" = sub i64 %"$gasrem_231", %"$gasadd_230"
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %this_f = alloca [20 x i8], align 1
  %"$execptr_load_237" = load i8*, i8** @_execptr, align 8
  %"$this_f_ad_238" = alloca [20 x i8], align 1
  %"$ad_239" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_239", [20 x i8]* %"$this_f_ad_238", align 1
  %"$this_f_call_240" = call i8* @_fetch_remote_field(i8* %"$execptr_load_237", [20 x i8]* %"$this_f_ad_238", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_236", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_45", i32 0, i8* null, i32 1), !dbg !24
  %"$this_f_241" = bitcast i8* %"$this_f_call_240" to [20 x i8]*
  %"$this_f_242" = load [20 x i8], [20 x i8]* %"$this_f_241", align 1
  store [20 x i8] %"$this_f_242", [20 x i8]* %this_f, align 1
  %"$_literal_cost_this_f_243" = alloca [20 x i8], align 1
  %"$this_f_244" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_244", [20 x i8]* %"$_literal_cost_this_f_243", align 1
  %"$$_literal_cost_this_f_243_245" = bitcast [20 x i8]* %"$_literal_cost_this_f_243" to i8*
  %"$_literal_cost_call_246" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_45", i8* %"$$_literal_cost_this_f_243_245")
  %"$gasadd_247" = add i64 %"$_literal_cost_call_246", 0
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 %"$gasadd_247", %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_234"
  %"$consume_252" = sub i64 %"$gasrem_248", %"$gasadd_247"
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %remote_key = alloca %Uint128, align 8
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_256"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %remote_key, align 8, !dbg !25
  %this_g = alloca %TName_Option_Uint128*, align 8
  %"$indices_buf_263_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_263_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_263_salloc_load", i64 16)
  %"$indices_buf_263_salloc" = bitcast i8* %"$indices_buf_263_salloc_salloc" to [16 x i8]*
  %"$indices_buf_263" = bitcast [16 x i8]* %"$indices_buf_263_salloc" to i8*
  %"$remote_key_264" = load %Uint128, %Uint128* %remote_key, align 8
  %"$indices_gep_265" = getelementptr i8, i8* %"$indices_buf_263", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_265" to %Uint128*
  store %Uint128 %"$remote_key_264", %Uint128* %indices_cast, align 8
  %"$execptr_load_267" = load i8*, i8** @_execptr, align 8
  %"$this_g_this_f_268" = alloca [20 x i8], align 1
  %"$this_f_269" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_269", [20 x i8]* %"$this_g_this_f_268", align 1
  %"$this_g_call_270" = call i8* @_fetch_remote_field(i8* %"$execptr_load_267", [20 x i8]* %"$this_g_this_f_268", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_266", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_263", i32 1), !dbg !26
  %"$this_g_271" = bitcast i8* %"$this_g_call_270" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$this_g_271", %TName_Option_Uint128** %this_g, align 8
  %"$this_g_272" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$$this_g_272_273" = bitcast %TName_Option_Uint128* %"$this_g_272" to i8*
  %"$_literal_cost_call_274" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_39", i8* %"$$this_g_272_273")
  %"$gasadd_275" = add i64 %"$_literal_cost_call_274", 0
  %"$gasadd_276" = add i64 %"$gasadd_275", 1
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 %"$gasadd_276", %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_261"
  %"$consume_281" = sub i64 %"$gasrem_277", %"$gasadd_276"
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$this_g_282" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$$this_g_282_283" = bitcast %TName_Option_Uint128* %"$this_g_282" to i8*
  %"$_literal_cost_call_284" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_39", i8* %"$$this_g_282_283")
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 %"$_literal_cost_call_284", %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_280"
  %"$consume_289" = sub i64 %"$gasrem_285", %"$_literal_cost_call_284"
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %"$execptr_load_290" = load i8*, i8** @_execptr, align 8
  %"$this_g_292" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$update_value_293" = bitcast %TName_Option_Uint128* %"$this_g_292" to i8*
  call void @_update_field(i8* %"$execptr_load_290", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_2_291", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_39", i32 0, i8* null, i8* %"$update_value_293"), !dbg !27
  ret void
}

define void @RemoteReadsOfRemoteMap(i8* %0) !dbg !28 {
entry:
  %"$_amount_295" = getelementptr i8, i8* %0, i32 0
  %"$_amount_296" = bitcast i8* %"$_amount_295" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_296", align 8
  %"$_origin_297" = getelementptr i8, i8* %0, i32 16
  %"$_origin_298" = bitcast i8* %"$_origin_297" to [20 x i8]*
  %"$_sender_299" = getelementptr i8, i8* %0, i32 36
  %"$_sender_300" = bitcast i8* %"$_sender_299" to [20 x i8]*
  %"$remote_301" = getelementptr i8, i8* %0, i32 56
  %"$remote_302" = bitcast i8* %"$remote_301" to [20 x i8]*
  call void @"$RemoteReadsOfRemoteMap_216"(%Uint128 %_amount, [20 x i8]* %"$_origin_298", [20 x i8]* %"$_sender_300", [20 x i8]* %"$remote_302"), !dbg !29
  ret void
}

define internal void @"$RemoteReadsContractParam_303"(%Uint128 %_amount, [20 x i8]* %"$_origin_304", [20 x i8]* %"$_sender_305") !dbg !30 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_304", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_305", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_307" = load i8*, i8** @_execptr, align 8
  %"$ad_cparam_308" = alloca [20 x i8], align 1
  %"$cparam_309" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_309", [20 x i8]* %"$ad_cparam_308", align 1
  %"$ad_call_310" = call i8* @_fetch_remote_field(i8* %"$execptr_load_307", [20 x i8]* %"$ad_cparam_308", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_306", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", i32 0, i8* null, i32 1), !dbg !31
  %"$ad_311" = bitcast i8* %"$ad_call_310" to [20 x i8]*
  %"$ad_312" = load [20 x i8], [20 x i8]* %"$ad_311", align 1
  store [20 x i8] %"$ad_312", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_313" = alloca [20 x i8], align 1
  %"$ad_314" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_314", [20 x i8]* %"$_literal_cost_ad_313", align 1
  %"$$_literal_cost_ad_313_315" = bitcast [20 x i8]* %"$_literal_cost_ad_313" to i8*
  %"$_literal_cost_call_316" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", i8* %"$$_literal_cost_ad_313_315")
  %"$gasadd_317" = add i64 %"$_literal_cost_call_316", 0
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 %"$gasadd_317", %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %entry
  %"$consume_322" = sub i64 %"$gasrem_318", %"$gasadd_317"
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$_literal_cost_ad_323" = alloca [20 x i8], align 1
  %"$ad_324" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_324", [20 x i8]* %"$_literal_cost_ad_323", align 1
  %"$$_literal_cost_ad_323_325" = bitcast [20 x i8]* %"$_literal_cost_ad_323" to i8*
  %"$_literal_cost_call_326" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", i8* %"$$_literal_cost_ad_323_325")
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 %"$_literal_cost_call_326", %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_321"
  %"$consume_331" = sub i64 %"$gasrem_327", %"$_literal_cost_call_326"
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$execptr_load_332" = load i8*, i8** @_execptr, align 8
  %"$ad_334" = load [20 x i8], [20 x i8]* %ad, align 1
  %"$update_value_335" = alloca [20 x i8], align 1
  store [20 x i8] %"$ad_334", [20 x i8]* %"$update_value_335", align 1
  %"$update_value_336" = bitcast [20 x i8]* %"$update_value_335" to i8*
  call void @_update_field(i8* %"$execptr_load_332", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_3_333", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", i32 0, i8* null, i8* %"$update_value_336"), !dbg !32
  ret void
}

define void @RemoteReadsContractParam(i8* %0) !dbg !33 {
entry:
  %"$_amount_338" = getelementptr i8, i8* %0, i32 0
  %"$_amount_339" = bitcast i8* %"$_amount_338" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_339", align 8
  %"$_origin_340" = getelementptr i8, i8* %0, i32 16
  %"$_origin_341" = bitcast i8* %"$_origin_340" to [20 x i8]*
  %"$_sender_342" = getelementptr i8, i8* %0, i32 36
  %"$_sender_343" = bitcast i8* %"$_sender_342" to [20 x i8]*
  call void @"$RemoteReadsContractParam_303"(%Uint128 %_amount, [20 x i8]* %"$_origin_341", [20 x i8]* %"$_sender_343"), !dbg !34
  ret void
}

define internal void @"$AddressTypeErasureTest1_344"(%Uint128 %_amount, [20 x i8]* %"$_origin_345", [20 x i8]* %"$_sender_346") !dbg !35 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_345", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_346", align 1
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %entry
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %zero = alloca %Uint128, align 8
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$have_gas_350"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %zero, align 8, !dbg !36
  %"$_literal_cost_cparam_357" = alloca [20 x i8], align 1
  %"$cparam_358" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_358", [20 x i8]* %"$_literal_cost_cparam_357", align 1
  %"$$_literal_cost_cparam_357_359" = bitcast [20 x i8]* %"$_literal_cost_cparam_357" to i8*
  %"$_literal_cost_call_360" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_52", i8* %"$$_literal_cost_cparam_357_359")
  %"$gasadd_361" = add i64 %"$_literal_cost_call_360", 1
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 %"$gasadd_361", %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_355"
  %"$consume_366" = sub i64 %"$gasrem_362", %"$gasadd_361"
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$indices_buf_367_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_367_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_367_salloc_load", i64 16)
  %"$indices_buf_367_salloc" = bitcast i8* %"$indices_buf_367_salloc_salloc" to [16 x i8]*
  %"$indices_buf_367" = bitcast [16 x i8]* %"$indices_buf_367_salloc" to i8*
  %"$zero_368" = load %Uint128, %Uint128* %zero, align 8
  %"$indices_gep_369" = getelementptr i8, i8* %"$indices_buf_367", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_369" to %Uint128*
  store %Uint128 %"$zero_368", %Uint128* %indices_cast, align 8
  %"$execptr_load_370" = load i8*, i8** @_execptr, align 8
  %"$cparam_372" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  %"$update_value_373" = alloca [20 x i8], align 1
  store [20 x i8] %"$cparam_372", [20 x i8]* %"$update_value_373", align 1
  %"$update_value_374" = bitcast [20 x i8]* %"$update_value_373" to i8*
  call void @_update_field(i8* %"$execptr_load_370", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_371", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_42", i32 1, i8* %"$indices_buf_367", i8* %"$update_value_374"), !dbg !37
  ret void
}

define void @AddressTypeErasureTest1(i8* %0) !dbg !38 {
entry:
  %"$_amount_376" = getelementptr i8, i8* %0, i32 0
  %"$_amount_377" = bitcast i8* %"$_amount_376" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_377", align 8
  %"$_origin_378" = getelementptr i8, i8* %0, i32 16
  %"$_origin_379" = bitcast i8* %"$_origin_378" to [20 x i8]*
  %"$_sender_380" = getelementptr i8, i8* %0, i32 36
  %"$_sender_381" = bitcast i8* %"$_sender_380" to [20 x i8]*
  call void @"$AddressTypeErasureTest1_344"(%Uint128 %_amount, [20 x i8]* %"$_origin_379", [20 x i8]* %"$_sender_381"), !dbg !39
  ret void
}

define internal void @"$AddressTypeErasureTest2_382"(%Uint128 %_amount, [20 x i8]* %"$_origin_383", [20 x i8]* %"$_sender_384") !dbg !40 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_383", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_384", align 1
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %entry
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %zero = alloca %Uint128, align 8
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %"$have_gas_388"
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %zero, align 8, !dbg !41
  %emp_map = alloca %Map_Uint128_ByStr20_with_end*, align 8
  %"$execptr_load_396" = load i8*, i8** @_execptr, align 8
  %"$emp_map_call_397" = call i8* @_fetch_field(i8* %"$execptr_load_396", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_395", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_42", i32 0, i8* null, i32 1), !dbg !42
  %"$emp_map_398" = bitcast i8* %"$emp_map_call_397" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$emp_map_398", %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$emp_map_399" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_399_400" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_399" to i8*
  %"$_literal_cost_call_401" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$emp_map_399_400")
  %"$emp_map_402" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_402_403" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_402" to i8*
  %"$_mapsortcost_call_404" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$emp_map_402_403")
  %"$gasadd_405" = add i64 %"$_literal_cost_call_401", %"$_mapsortcost_call_404"
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 %"$gasadd_405", %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$have_gas_393"
  %"$consume_410" = sub i64 %"$gasrem_406", %"$gasadd_405"
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_409"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %new_map = alloca %Map_Uint128_ByStr20_with_end*, align 8
  %"$emp_map_416" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_416_417" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_416" to i8*
  %"$_lengthof_call_418" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$emp_map_416_417")
  %"$gasadd_419" = add i64 1, %"$_lengthof_call_418"
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 %"$gasadd_419", %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_414"
  %"$consume_424" = sub i64 %"$gasrem_420", %"$gasadd_419"
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %"$execptr_load_425" = load i8*, i8** @_execptr, align 8
  %"$emp_map_426" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_426_427" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_426" to i8*
  %"$put_zero_428" = alloca %Uint128, align 8
  %"$zero_429" = load %Uint128, %Uint128* %zero, align 8
  store %Uint128 %"$zero_429", %Uint128* %"$put_zero_428", align 8
  %"$$put_zero_428_430" = bitcast %Uint128* %"$put_zero_428" to i8*
  %"$put_cparam_431" = alloca [20 x i8], align 1
  %"$cparam_432" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_432", [20 x i8]* %"$put_cparam_431", align 1
  %"$$put_cparam_431_433" = bitcast [20 x i8]* %"$put_cparam_431" to i8*
  %"$put_call_434" = call i8* @_put(i8* %"$execptr_load_425", %_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$emp_map_426_427", i8* %"$$put_zero_428_430", i8* %"$$put_cparam_431_433"), !dbg !43
  %"$put_435" = bitcast i8* %"$put_call_434" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$put_435", %Map_Uint128_ByStr20_with_end** %new_map, align 8, !dbg !43
  %"$new_map_436" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$$new_map_436_437" = bitcast %Map_Uint128_ByStr20_with_end* %"$new_map_436" to i8*
  %"$_literal_cost_call_438" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_42", i8* %"$$new_map_436_437")
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 %"$_literal_cost_call_438", %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_423"
  %"$consume_443" = sub i64 %"$gasrem_439", %"$_literal_cost_call_438"
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$execptr_load_444" = load i8*, i8** @_execptr, align 8
  %"$new_map_446" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$update_value_447" = bitcast %Map_Uint128_ByStr20_with_end* %"$new_map_446" to i8*
  call void @_update_field(i8* %"$execptr_load_444", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_445", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_42", i32 0, i8* null, i8* %"$update_value_447"), !dbg !44
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @AddressTypeErasureTest2(i8* %0) !dbg !45 {
entry:
  %"$_amount_449" = getelementptr i8, i8* %0, i32 0
  %"$_amount_450" = bitcast i8* %"$_amount_449" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_450", align 8
  %"$_origin_451" = getelementptr i8, i8* %0, i32 16
  %"$_origin_452" = bitcast i8* %"$_origin_451" to [20 x i8]*
  %"$_sender_453" = getelementptr i8, i8* %0, i32 36
  %"$_sender_454" = bitcast i8* %"$_sender_453" to [20 x i8]*
  call void @"$AddressTypeErasureTest2_382"(%Uint128 %_amount, [20 x i8]* %"$_origin_452", [20 x i8]* %"$_sender_454"), !dbg !46
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "remote_state_reads_2.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 5, column: 49, scope: !10)
!12 = !DILocation(line: 6, column: 56, scope: !10)
!13 = !DILocation(line: 7, column: 49, scope: !10)
!14 = !DILocation(line: 9, column: 74, scope: !10)
!15 = distinct !DISubprogram(name: "RemoteReadsOfRemoteRead", linkageName: "RemoteReadsOfRemoteRead", scope: !2, file: !2, line: 11, type: !6, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 19, column: 3, scope: !15)
!17 = !DILocation(line: 20, column: 3, scope: !15)
!18 = !DILocation(line: 21, column: 3, scope: !15)
!19 = !DILocation(line: 22, column: 3, scope: !15)
!20 = distinct !DISubprogram(name: "RemoteReadsOfRemoteRead", linkageName: "RemoteReadsOfRemoteRead", scope: !2, file: !2, line: 11, type: !6, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 11, column: 12, scope: !20)
!22 = distinct !DISubprogram(name: "RemoteReadsOfRemoteMap", linkageName: "RemoteReadsOfRemoteMap", scope: !2, file: !2, line: 25, type: !6, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DILocation(line: 33, column: 3, scope: !22)
!24 = !DILocation(line: 34, column: 3, scope: !22)
!25 = !DILocation(line: 35, column: 16, scope: !22)
!26 = !DILocation(line: 36, column: 3, scope: !22)
!27 = !DILocation(line: 37, column: 3, scope: !22)
!28 = distinct !DISubprogram(name: "RemoteReadsOfRemoteMap", linkageName: "RemoteReadsOfRemoteMap", scope: !2, file: !2, line: 25, type: !6, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!29 = !DILocation(line: 25, column: 12, scope: !28)
!30 = distinct !DISubprogram(name: "RemoteReadsContractParam", linkageName: "RemoteReadsContractParam", scope: !2, file: !2, line: 40, type: !6, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!31 = !DILocation(line: 41, column: 3, scope: !30)
!32 = !DILocation(line: 42, column: 3, scope: !30)
!33 = distinct !DISubprogram(name: "RemoteReadsContractParam", linkageName: "RemoteReadsContractParam", scope: !2, file: !2, line: 40, type: !6, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DILocation(line: 40, column: 12, scope: !33)
!35 = distinct !DISubprogram(name: "AddressTypeErasureTest1", linkageName: "AddressTypeErasureTest1", scope: !2, file: !2, line: 45, type: !6, scopeLine: 45, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!36 = !DILocation(line: 46, column: 10, scope: !35)
!37 = !DILocation(line: 47, column: 3, scope: !35)
!38 = distinct !DISubprogram(name: "AddressTypeErasureTest1", linkageName: "AddressTypeErasureTest1", scope: !2, file: !2, line: 45, type: !6, scopeLine: 45, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!39 = !DILocation(line: 45, column: 12, scope: !38)
!40 = distinct !DISubprogram(name: "AddressTypeErasureTest2", linkageName: "AddressTypeErasureTest2", scope: !2, file: !2, line: 50, type: !6, scopeLine: 50, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!41 = !DILocation(line: 51, column: 10, scope: !40)
!42 = !DILocation(line: 52, column: 3, scope: !40)
!43 = !DILocation(line: 53, column: 13, scope: !40)
!44 = !DILocation(line: 54, column: 3, scope: !40)
!45 = distinct !DISubprogram(name: "AddressTypeErasureTest2", linkageName: "AddressTypeErasureTest2", scope: !2, file: !2, line: 50, type: !6, scopeLine: 50, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 50, column: 12, scope: !45)
