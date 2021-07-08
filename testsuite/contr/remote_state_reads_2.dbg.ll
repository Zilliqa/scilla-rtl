

; gas_remaining: 4002000
; ModuleID = 'RRContract'
source_filename = "RRContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_36" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_35"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_35" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_37"**, %"$TyDescrTy_ADTTyp_36"* }
%"$TyDescrTy_ADTTyp_Constr_37" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_39" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrFieldTyp_42" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_43" = type { i32, %"$TyDescr_AddrFieldTyp_42"* }
%Uint32 = type { i32 }
%"$ParamDescr_440" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_441" = type { %ParamDescrString, i32, %"$ParamDescr_440"* }
%Uint128 = type { i128 }
%TName_Option_Uint128 = type { i8, %CName_Some_Uint128*, %CName_None_Uint128* }
%CName_Some_Uint128 = type <{ i8, %Uint128 }>
%CName_None_Uint128 = type <{ i8 }>
%Map_Uint128_ByStr20_with_end = type { %Uint128, [20 x i8] }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_5" = global %"$TyDescrTy_PrimTyp_4" zeroinitializer
@"$TyDescr_Int32_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int32_Prim_5" to i8*) }
@"$TyDescr_Uint32_Prim_7" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 0 }
@"$TyDescr_Uint32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint32_Prim_7" to i8*) }
@"$TyDescr_Int64_Prim_9" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 1 }
@"$TyDescr_Int64_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int64_Prim_9" to i8*) }
@"$TyDescr_Uint64_Prim_11" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 1 }
@"$TyDescr_Uint64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint64_Prim_11" to i8*) }
@"$TyDescr_Int128_Prim_13" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 2 }
@"$TyDescr_Int128_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int128_Prim_13" to i8*) }
@"$TyDescr_Uint128_Prim_15" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 2 }
@"$TyDescr_Uint128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint128_Prim_15" to i8*) }
@"$TyDescr_Int256_Prim_17" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 3 }
@"$TyDescr_Int256_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int256_Prim_17" to i8*) }
@"$TyDescr_Uint256_Prim_19" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 3 }
@"$TyDescr_Uint256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint256_Prim_19" to i8*) }
@"$TyDescr_String_Prim_21" = global %"$TyDescrTy_PrimTyp_4" { i32 2, i32 0 }
@"$TyDescr_String_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_String_Prim_21" to i8*) }
@"$TyDescr_Bnum_Prim_23" = global %"$TyDescrTy_PrimTyp_4" { i32 3, i32 0 }
@"$TyDescr_Bnum_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bnum_Prim_23" to i8*) }
@"$TyDescr_Message_Prim_25" = global %"$TyDescrTy_PrimTyp_4" { i32 4, i32 0 }
@"$TyDescr_Message_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Message_Prim_25" to i8*) }
@"$TyDescr_Event_Prim_27" = global %"$TyDescrTy_PrimTyp_4" { i32 5, i32 0 }
@"$TyDescr_Event_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Event_Prim_27" to i8*) }
@"$TyDescr_Exception_Prim_29" = global %"$TyDescrTy_PrimTyp_4" { i32 6, i32 0 }
@"$TyDescr_Exception_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Exception_Prim_29" to i8*) }
@"$TyDescr_Bystr_Prim_31" = global %"$TyDescrTy_PrimTyp_4" { i32 7, i32 0 }
@"$TyDescr_Bystr_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr_Prim_31" to i8*) }
@"$TyDescr_Bystr20_Prim_33" = global %"$TyDescrTy_PrimTyp_4" { i32 8, i32 20 }
@"$TyDescr_Bystr20_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr20_Prim_33" to i8*) }
@"$TyDescr_ADT_Option_Uint128_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_61" to i8*) }
@"$TyDescr_Map_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_39"* @"$TyDescr_MapTyp_64" to i8*) }
@"$TyDescr_Map_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_39"* @"$TyDescr_MapTyp_65" to i8*) }
@"$TyDescr_Addr_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_68" to i8*) }
@"$TyDescr_Addr_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_71" to i8*) }
@"$TyDescr_Addr_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_74" to i8*) }
@"$TyDescr_Addr_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_77" to i8*) }
@"$TyDescr_Addr_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_80" to i8*) }
@"$TyDescr_Addr_49" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_83" to i8*) }
@"$TyDescr_Addr_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_84" to i8*) }
@"$TyDescr_Addr_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_43"* @"$TyDescr_AddrFields_87" to i8*) }
@"$TyDescr_Option_ADTTyp_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_63", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_Option_ADTTyp_m_specls_62", i32 0, i32 0) }
@"$TyDescr_Option_Some_Uint128_Constr_m_args_53" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_16"]
@"$TyDescr_ADT_Some_54" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_54", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint128_Constr_m_args_53", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint128_Constr_m_args_56" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_57" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint128_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_57", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint128_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_59" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_55", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Option_None_Uint128_ADTTyp_Constr_58"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_60" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_16"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_Option_ADTTyp_52" }
@"$TyDescr_Option_ADTTyp_m_specls_62" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_61"]
@"$TyDescr_ADT_Option_63" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_MapTyp_64" = unnamed_addr constant %"$TyDescr_MapTyp_39" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }
@"$TyDescr_MapTyp_65" = unnamed_addr constant %"$TyDescr_MapTyp_39" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }
@"$TyDescr_AddrField_66" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_67" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_42"] [%"$TyDescr_AddrFieldTyp_42" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_66", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Map_40" }]
@"$TyDescr_AddrFields_68" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 1, %"$TyDescr_AddrFieldTyp_42"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_42"], [1 x %"$TyDescr_AddrFieldTyp_42"]* @"$TyDescr_AddrFields_67", i32 0, i32 0) }
@"$TyDescr_AddrField_69" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_70" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_42"] [%"$TyDescr_AddrFieldTyp_42" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_69", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }]
@"$TyDescr_AddrFields_71" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 1, %"$TyDescr_AddrFieldTyp_42"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_42"], [1 x %"$TyDescr_AddrFieldTyp_42"]* @"$TyDescr_AddrFields_70", i32 0, i32 0) }
@"$TyDescr_AddrField_72" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_73" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_42"] [%"$TyDescr_AddrFieldTyp_42" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_72", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$TyDescr_AddrFields_74" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 1, %"$TyDescr_AddrFieldTyp_42"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_42"], [1 x %"$TyDescr_AddrFieldTyp_42"]* @"$TyDescr_AddrFields_73", i32 0, i32 0) }
@"$TyDescr_AddrField_75" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_76" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_42"] [%"$TyDescr_AddrFieldTyp_42" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_75", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }]
@"$TyDescr_AddrFields_77" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 1, %"$TyDescr_AddrFieldTyp_42"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_42"], [1 x %"$TyDescr_AddrFieldTyp_42"]* @"$TyDescr_AddrFields_76", i32 0, i32 0) }
@"$TyDescr_AddrField_78" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_79" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_42"] [%"$TyDescr_AddrFieldTyp_42" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_78", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_47" }]
@"$TyDescr_AddrFields_80" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 1, %"$TyDescr_AddrFieldTyp_42"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_42"], [1 x %"$TyDescr_AddrFieldTyp_42"]* @"$TyDescr_AddrFields_79", i32 0, i32 0) }
@"$TyDescr_AddrField_81" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_82" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_42"] [%"$TyDescr_AddrFieldTyp_42" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_81", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }]
@"$TyDescr_AddrFields_83" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 1, %"$TyDescr_AddrFieldTyp_42"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_42"], [1 x %"$TyDescr_AddrFieldTyp_42"]* @"$TyDescr_AddrFields_82", i32 0, i32 0) }
@"$TyDescr_AddrFields_84" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 -1, %"$TyDescr_AddrFieldTyp_42"* null }
@"$TyDescr_AddrField_85" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_86" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_42"] [%"$TyDescr_AddrFieldTyp_42" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_85", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }]
@"$TyDescr_AddrFields_87" = unnamed_addr constant %"$TyDescr_AddrTyp_43" { i32 1, %"$TyDescr_AddrFieldTyp_42"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_42"], [1 x %"$TyDescr_AddrFieldTyp_42"]* @"$TyDescr_AddrFields_86", i32 0, i32 0) }
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_cparam = global [20 x i8] zeroinitializer
@"$remote_read_remote_read_res_1_94" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_1\00"
@"$remote_read_remote_read_res_2_107" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_2\00"
@"$remote_read_remote_read_res_3_117" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_3\00"
@"$address_type_erasure_test_res_1_130" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$admin_137" = unnamed_addr constant [6 x i8] c"admin\00"
@"$f_153" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_170" = unnamed_addr constant [2 x i8] c"g\00"
@"$remote_read_remote_read_res_1_197" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_1\00"
@"$admin_214" = unnamed_addr constant [6 x i8] c"admin\00"
@"$f_230" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_260" = unnamed_addr constant [2 x i8] c"g\00"
@"$remote_read_remote_read_res_2_285" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_2\00"
@"$admin_300" = unnamed_addr constant [6 x i8] c"admin\00"
@"$remote_read_remote_read_res_3_327" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_3\00"
@"$address_type_erasure_test_res_1_365" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$address_type_erasure_test_res_1_389" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$address_type_erasure_test_res_1_430" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@_tydescr_table = constant [26 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_49", %_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Addr_50", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Addr_47", %_TyDescrTy_Typ* @"$TyDescr_Addr_44", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Addr_51", %_TyDescrTy_Typ* @"$TyDescr_Map_40", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Addr_48", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Map_41", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 26
@"$pname__scilla_version_442" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_443" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_444" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_cparam_445" = unnamed_addr constant [6 x i8] c"cparam"
@_contract_parameters = constant [4 x %"$ParamDescr_440"] [%"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_442", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_8" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_443", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_444", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_24" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$pname_cparam_445", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }]
@_contract_parameters_length = constant i32 4
@"$tpname__amount_446" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_447" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_448" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote_449" = unnamed_addr constant [6 x i8] c"remote"
@"$tparams_RemoteReadsOfRemoteRead_450" = unnamed_addr constant [4 x %"$ParamDescr_440"] [%"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_446", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_447", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_448", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_remote_449", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_49" }]
@"$tname_RemoteReadsOfRemoteRead_451" = unnamed_addr constant [23 x i8] c"RemoteReadsOfRemoteRead"
@"$tpname__amount_452" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_453" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_454" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote_455" = unnamed_addr constant [6 x i8] c"remote"
@"$tparams_RemoteReadsOfRemoteMap_456" = unnamed_addr constant [4 x %"$ParamDescr_440"] [%"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_452", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_453", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_454", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_remote_455", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_RemoteReadsOfRemoteMap_457" = unnamed_addr constant [22 x i8] c"RemoteReadsOfRemoteMap"
@"$tpname__amount_458" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_459" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_460" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_RemoteReadsContractParam_461" = unnamed_addr constant [3 x %"$ParamDescr_440"] [%"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_458", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_459", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_460", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_RemoteReadsContractParam_462" = unnamed_addr constant [24 x i8] c"RemoteReadsContractParam"
@"$tpname__amount_463" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_464" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_465" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AddressTypeErasureTest1_466" = unnamed_addr constant [3 x %"$ParamDescr_440"] [%"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_463", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_464", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_465", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_AddressTypeErasureTest1_467" = unnamed_addr constant [23 x i8] c"AddressTypeErasureTest1"
@"$tpname__amount_468" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_469" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_470" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AddressTypeErasureTest2_471" = unnamed_addr constant [3 x %"$ParamDescr_440"] [%"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_468", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_469", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }, %"$ParamDescr_440" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_470", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$tname_AddressTypeErasureTest2_472" = unnamed_addr constant [23 x i8] c"AddressTypeErasureTest2"
@_transition_parameters = constant [5 x %"$TransDescr_441"] [%"$TransDescr_441" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_RemoteReadsOfRemoteRead_451", i32 0, i32 0), i32 23 }, i32 4, %"$ParamDescr_440"* getelementptr inbounds ([4 x %"$ParamDescr_440"], [4 x %"$ParamDescr_440"]* @"$tparams_RemoteReadsOfRemoteRead_450", i32 0, i32 0) }, %"$TransDescr_441" { %ParamDescrString { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$tname_RemoteReadsOfRemoteMap_457", i32 0, i32 0), i32 22 }, i32 4, %"$ParamDescr_440"* getelementptr inbounds ([4 x %"$ParamDescr_440"], [4 x %"$ParamDescr_440"]* @"$tparams_RemoteReadsOfRemoteMap_456", i32 0, i32 0) }, %"$TransDescr_441" { %ParamDescrString { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"$tname_RemoteReadsContractParam_462", i32 0, i32 0), i32 24 }, i32 3, %"$ParamDescr_440"* getelementptr inbounds ([3 x %"$ParamDescr_440"], [3 x %"$ParamDescr_440"]* @"$tparams_RemoteReadsContractParam_461", i32 0, i32 0) }, %"$TransDescr_441" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_AddressTypeErasureTest1_467", i32 0, i32 0), i32 23 }, i32 3, %"$ParamDescr_440"* getelementptr inbounds ([3 x %"$ParamDescr_440"], [3 x %"$ParamDescr_440"]* @"$tparams_AddressTypeErasureTest1_466", i32 0, i32 0) }, %"$TransDescr_441" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_AddressTypeErasureTest2_472", i32 0, i32 0), i32 23 }, i32 3, %"$ParamDescr_440"* getelementptr inbounds ([3 x %"$ParamDescr_440"], [3 x %"$ParamDescr_440"]* @"$tparams_AddressTypeErasureTest2_471", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define void @_init_state() !dbg !9 {
entry:
  %"$remote_read_remote_read_res_1_0" = alloca %Uint128, align 8
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %entry
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_read_remote_read_res_1_0", align 8, !dbg !10
  %"$execptr_load_93" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_1_0_95" = load %Uint128, %Uint128* %"$remote_read_remote_read_res_1_0", align 8
  %"$update_value_96" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_read_remote_read_res_1_0_95", %Uint128* %"$update_value_96", align 8
  %"$update_value_97" = bitcast %Uint128* %"$update_value_96" to i8*
  call void @_update_field(i8* %"$execptr_load_93", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_1_94", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", i32 0, i8* null, i8* %"$update_value_97"), !dbg !10
  %"$remote_read_remote_read_res_2_1" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_91"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$adtval_103_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_103_salloc" = call i8* @_salloc(i8* %"$adtval_103_load", i64 1)
  %"$adtval_103" = bitcast i8* %"$adtval_103_salloc" to %CName_None_Uint128*
  %"$adtgep_104" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_103", i32 0, i32 0
  store i8 1, i8* %"$adtgep_104", align 1
  %"$adtptr_105" = bitcast %CName_None_Uint128* %"$adtval_103" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_105", %TName_Option_Uint128** %"$remote_read_remote_read_res_2_1", align 8, !dbg !11
  %"$execptr_load_106" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_2_1_108" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$remote_read_remote_read_res_2_1", align 8
  %"$update_value_109" = bitcast %TName_Option_Uint128* %"$$remote_read_remote_read_res_2_1_108" to i8*
  call void @_update_field(i8* %"$execptr_load_106", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_2_107", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_38", i32 0, i8* null, i8* %"$update_value_109"), !dbg !11
  %"$remote_read_remote_read_res_3_2" = alloca [20 x i8], align 1
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_101"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$_this_address_115" = load [20 x i8], [20 x i8]* @_cparam__this_address, align 1
  store [20 x i8] %"$_this_address_115", [20 x i8]* %"$remote_read_remote_read_res_3_2", align 1, !dbg !12
  %"$execptr_load_116" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_3_2_118" = load [20 x i8], [20 x i8]* %"$remote_read_remote_read_res_3_2", align 1
  %"$update_value_119" = alloca [20 x i8], align 1
  store [20 x i8] %"$$remote_read_remote_read_res_3_2_118", [20 x i8]* %"$update_value_119", align 1
  %"$update_value_120" = bitcast [20 x i8]* %"$update_value_119" to i8*
  call void @_update_field(i8* %"$execptr_load_116", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_3_117", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", i32 0, i8* null, i8* %"$update_value_120"), !dbg !12
  %"$address_type_erasure_test_res_1_3" = alloca %Map_Uint128_ByStr20_with_end*, align 8
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_113"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %"$execptr_load_126" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_127" = call i8* @_new_empty_map(i8* %"$execptr_load_126")
  %"$_new_empty_map_128" = bitcast i8* %"$_new_empty_map_call_127" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$_new_empty_map_128", %Map_Uint128_ByStr20_with_end** %"$address_type_erasure_test_res_1_3", align 8, !dbg !13
  %"$execptr_load_129" = load i8*, i8** @_execptr, align 8
  %"$$address_type_erasure_test_res_1_3_131" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %"$address_type_erasure_test_res_1_3", align 8
  %"$update_value_132" = bitcast %Map_Uint128_ByStr20_with_end* %"$$address_type_erasure_test_res_1_3_131" to i8*
  call void @_update_field(i8* %"$execptr_load_129", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_130", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 0, i8* null, i8* %"$update_value_132"), !dbg !13
  ret void
}

declare void @_out_of_gas()

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_new_empty_map(i8*)

define internal void @"$RemoteReadsOfRemoteRead_133"(%Uint128 %_amount, [20 x i8]* %"$_origin_134", [20 x i8]* %"$_sender_135", [20 x i8]* %"$remote_136") !dbg !14 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_134", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_135", align 1
  %remote = load [20 x i8], [20 x i8]* %"$remote_136", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_138" = load i8*, i8** @_execptr, align 8
  %"$ad_remote_139" = alloca [20 x i8], align 1
  store [20 x i8] %remote, [20 x i8]* %"$ad_remote_139", align 1
  %"$ad_call_140" = call i8* @_fetch_remote_field(i8* %"$execptr_load_138", [20 x i8]* %"$ad_remote_139", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_137", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_48", i32 0, i8* null, i32 1), !dbg !15
  %"$ad_141" = bitcast i8* %"$ad_call_140" to [20 x i8]*
  %"$ad_142" = load [20 x i8], [20 x i8]* %"$ad_141", align 1
  store [20 x i8] %"$ad_142", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_143" = alloca [20 x i8], align 1
  %"$ad_144" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_144", [20 x i8]* %"$_literal_cost_ad_143", align 1
  %"$$_literal_cost_ad_143_145" = bitcast [20 x i8]* %"$_literal_cost_ad_143" to i8*
  %"$_literal_cost_call_146" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_48", i8* %"$$_literal_cost_ad_143_145")
  %"$gasadd_147" = add i64 %"$_literal_cost_call_146", 0
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 %"$gasadd_147", %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %entry
  %"$consume_152" = sub i64 %"$gasrem_148", %"$gasadd_147"
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %this_f = alloca [20 x i8], align 1
  %"$execptr_load_154" = load i8*, i8** @_execptr, align 8
  %"$this_f_ad_155" = alloca [20 x i8], align 1
  %"$ad_156" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_156", [20 x i8]* %"$this_f_ad_155", align 1
  %"$this_f_call_157" = call i8* @_fetch_remote_field(i8* %"$execptr_load_154", [20 x i8]* %"$this_f_ad_155", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_153", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_47", i32 0, i8* null, i32 1), !dbg !16
  %"$this_f_158" = bitcast i8* %"$this_f_call_157" to [20 x i8]*
  %"$this_f_159" = load [20 x i8], [20 x i8]* %"$this_f_158", align 1
  store [20 x i8] %"$this_f_159", [20 x i8]* %this_f, align 1
  %"$_literal_cost_this_f_160" = alloca [20 x i8], align 1
  %"$this_f_161" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_161", [20 x i8]* %"$_literal_cost_this_f_160", align 1
  %"$$_literal_cost_this_f_160_162" = bitcast [20 x i8]* %"$_literal_cost_this_f_160" to i8*
  %"$_literal_cost_call_163" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_47", i8* %"$$_literal_cost_this_f_160_162")
  %"$gasadd_164" = add i64 %"$_literal_cost_call_163", 0
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 %"$gasadd_164", %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_151"
  %"$consume_169" = sub i64 %"$gasrem_165", %"$gasadd_164"
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %this_g = alloca %Uint128, align 8
  %"$execptr_load_171" = load i8*, i8** @_execptr, align 8
  %"$this_g_this_f_172" = alloca [20 x i8], align 1
  %"$this_f_173" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_173", [20 x i8]* %"$this_g_this_f_172", align 1
  %"$this_g_call_174" = call i8* @_fetch_remote_field(i8* %"$execptr_load_171", [20 x i8]* %"$this_g_this_f_172", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_170", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", i32 0, i8* null, i32 1), !dbg !17
  %"$this_g_175" = bitcast i8* %"$this_g_call_174" to %Uint128*
  %"$this_g_176" = load %Uint128, %Uint128* %"$this_g_175", align 8
  store %Uint128 %"$this_g_176", %Uint128* %this_g, align 8
  %"$_literal_cost_this_g_177" = alloca %Uint128, align 8
  %"$this_g_178" = load %Uint128, %Uint128* %this_g, align 8
  store %Uint128 %"$this_g_178", %Uint128* %"$_literal_cost_this_g_177", align 8
  %"$$_literal_cost_this_g_177_179" = bitcast %Uint128* %"$_literal_cost_this_g_177" to i8*
  %"$_literal_cost_call_180" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_16", i8* %"$$_literal_cost_this_g_177_179")
  %"$gasadd_181" = add i64 %"$_literal_cost_call_180", 0
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 %"$gasadd_181", %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_168"
  %"$consume_186" = sub i64 %"$gasrem_182", %"$gasadd_181"
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %"$_literal_cost_this_g_187" = alloca %Uint128, align 8
  %"$this_g_188" = load %Uint128, %Uint128* %this_g, align 8
  store %Uint128 %"$this_g_188", %Uint128* %"$_literal_cost_this_g_187", align 8
  %"$$_literal_cost_this_g_187_189" = bitcast %Uint128* %"$_literal_cost_this_g_187" to i8*
  %"$_literal_cost_call_190" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_16", i8* %"$$_literal_cost_this_g_187_189")
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 %"$_literal_cost_call_190", %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_185"
  %"$consume_195" = sub i64 %"$gasrem_191", %"$_literal_cost_call_190"
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %"$execptr_load_196" = load i8*, i8** @_execptr, align 8
  %"$this_g_198" = load %Uint128, %Uint128* %this_g, align 8
  %"$update_value_199" = alloca %Uint128, align 8
  store %Uint128 %"$this_g_198", %Uint128* %"$update_value_199", align 8
  %"$update_value_200" = bitcast %Uint128* %"$update_value_199" to i8*
  call void @_update_field(i8* %"$execptr_load_196", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_1_197", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", i32 0, i8* null, i8* %"$update_value_200"), !dbg !18
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @RemoteReadsOfRemoteRead(i8* %0) !dbg !19 {
entry:
  %"$_amount_202" = getelementptr i8, i8* %0, i32 0
  %"$_amount_203" = bitcast i8* %"$_amount_202" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_203", align 8
  %"$_origin_204" = getelementptr i8, i8* %0, i32 16
  %"$_origin_205" = bitcast i8* %"$_origin_204" to [20 x i8]*
  %"$_sender_206" = getelementptr i8, i8* %0, i32 36
  %"$_sender_207" = bitcast i8* %"$_sender_206" to [20 x i8]*
  %"$remote_208" = getelementptr i8, i8* %0, i32 56
  %"$remote_209" = bitcast i8* %"$remote_208" to [20 x i8]*
  call void @"$RemoteReadsOfRemoteRead_133"(%Uint128 %_amount, [20 x i8]* %"$_origin_205", [20 x i8]* %"$_sender_207", [20 x i8]* %"$remote_209"), !dbg !20
  ret void
}

define internal void @"$RemoteReadsOfRemoteMap_210"(%Uint128 %_amount, [20 x i8]* %"$_origin_211", [20 x i8]* %"$_sender_212", [20 x i8]* %"$remote_213") !dbg !21 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_211", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_212", align 1
  %remote = load [20 x i8], [20 x i8]* %"$remote_213", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_215" = load i8*, i8** @_execptr, align 8
  %"$ad_remote_216" = alloca [20 x i8], align 1
  store [20 x i8] %remote, [20 x i8]* %"$ad_remote_216", align 1
  %"$ad_call_217" = call i8* @_fetch_remote_field(i8* %"$execptr_load_215", [20 x i8]* %"$ad_remote_216", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_214", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_45", i32 0, i8* null, i32 1), !dbg !22
  %"$ad_218" = bitcast i8* %"$ad_call_217" to [20 x i8]*
  %"$ad_219" = load [20 x i8], [20 x i8]* %"$ad_218", align 1
  store [20 x i8] %"$ad_219", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_220" = alloca [20 x i8], align 1
  %"$ad_221" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_221", [20 x i8]* %"$_literal_cost_ad_220", align 1
  %"$$_literal_cost_ad_220_222" = bitcast [20 x i8]* %"$_literal_cost_ad_220" to i8*
  %"$_literal_cost_call_223" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_45", i8* %"$$_literal_cost_ad_220_222")
  %"$gasadd_224" = add i64 %"$_literal_cost_call_223", 0
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 %"$gasadd_224", %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %entry
  %"$consume_229" = sub i64 %"$gasrem_225", %"$gasadd_224"
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %this_f = alloca [20 x i8], align 1
  %"$execptr_load_231" = load i8*, i8** @_execptr, align 8
  %"$this_f_ad_232" = alloca [20 x i8], align 1
  %"$ad_233" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_233", [20 x i8]* %"$this_f_ad_232", align 1
  %"$this_f_call_234" = call i8* @_fetch_remote_field(i8* %"$execptr_load_231", [20 x i8]* %"$this_f_ad_232", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_230", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_44", i32 0, i8* null, i32 1), !dbg !23
  %"$this_f_235" = bitcast i8* %"$this_f_call_234" to [20 x i8]*
  %"$this_f_236" = load [20 x i8], [20 x i8]* %"$this_f_235", align 1
  store [20 x i8] %"$this_f_236", [20 x i8]* %this_f, align 1
  %"$_literal_cost_this_f_237" = alloca [20 x i8], align 1
  %"$this_f_238" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_238", [20 x i8]* %"$_literal_cost_this_f_237", align 1
  %"$$_literal_cost_this_f_237_239" = bitcast [20 x i8]* %"$_literal_cost_this_f_237" to i8*
  %"$_literal_cost_call_240" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_44", i8* %"$$_literal_cost_this_f_237_239")
  %"$gasadd_241" = add i64 %"$_literal_cost_call_240", 0
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 %"$gasadd_241", %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_228"
  %"$consume_246" = sub i64 %"$gasrem_242", %"$gasadd_241"
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %remote_key = alloca %Uint128, align 8
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 1, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_250"
  %"$consume_256" = sub i64 %"$gasrem_252", 1
  store i64 %"$consume_256", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %remote_key, align 8, !dbg !24
  %this_g = alloca %TName_Option_Uint128*, align 8
  %"$indices_buf_257_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_257_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_257_salloc_load", i64 16)
  %"$indices_buf_257_salloc" = bitcast i8* %"$indices_buf_257_salloc_salloc" to [16 x i8]*
  %"$indices_buf_257" = bitcast [16 x i8]* %"$indices_buf_257_salloc" to i8*
  %"$remote_key_258" = load %Uint128, %Uint128* %remote_key, align 8
  %"$indices_gep_259" = getelementptr i8, i8* %"$indices_buf_257", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_259" to %Uint128*
  store %Uint128 %"$remote_key_258", %Uint128* %indices_cast, align 8
  %"$execptr_load_261" = load i8*, i8** @_execptr, align 8
  %"$this_g_this_f_262" = alloca [20 x i8], align 1
  %"$this_f_263" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_263", [20 x i8]* %"$this_g_this_f_262", align 1
  %"$this_g_call_264" = call i8* @_fetch_remote_field(i8* %"$execptr_load_261", [20 x i8]* %"$this_g_this_f_262", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_260", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_40", i32 1, i8* %"$indices_buf_257", i32 1), !dbg !25
  %"$this_g_265" = bitcast i8* %"$this_g_call_264" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$this_g_265", %TName_Option_Uint128** %this_g, align 8
  %"$this_g_266" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$$this_g_266_267" = bitcast %TName_Option_Uint128* %"$this_g_266" to i8*
  %"$_literal_cost_call_268" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_38", i8* %"$$this_g_266_267")
  %"$gasadd_269" = add i64 %"$_literal_cost_call_268", 0
  %"$gasadd_270" = add i64 %"$gasadd_269", 1
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 %"$gasadd_270", %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_255"
  %"$consume_275" = sub i64 %"$gasrem_271", %"$gasadd_270"
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %"$this_g_276" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$$this_g_276_277" = bitcast %TName_Option_Uint128* %"$this_g_276" to i8*
  %"$_literal_cost_call_278" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_38", i8* %"$$this_g_276_277")
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 %"$_literal_cost_call_278", %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_274"
  %"$consume_283" = sub i64 %"$gasrem_279", %"$_literal_cost_call_278"
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$execptr_load_284" = load i8*, i8** @_execptr, align 8
  %"$this_g_286" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$update_value_287" = bitcast %TName_Option_Uint128* %"$this_g_286" to i8*
  call void @_update_field(i8* %"$execptr_load_284", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_2_285", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_38", i32 0, i8* null, i8* %"$update_value_287"), !dbg !26
  ret void
}

define void @RemoteReadsOfRemoteMap(i8* %0) !dbg !27 {
entry:
  %"$_amount_289" = getelementptr i8, i8* %0, i32 0
  %"$_amount_290" = bitcast i8* %"$_amount_289" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_290", align 8
  %"$_origin_291" = getelementptr i8, i8* %0, i32 16
  %"$_origin_292" = bitcast i8* %"$_origin_291" to [20 x i8]*
  %"$_sender_293" = getelementptr i8, i8* %0, i32 36
  %"$_sender_294" = bitcast i8* %"$_sender_293" to [20 x i8]*
  %"$remote_295" = getelementptr i8, i8* %0, i32 56
  %"$remote_296" = bitcast i8* %"$remote_295" to [20 x i8]*
  call void @"$RemoteReadsOfRemoteMap_210"(%Uint128 %_amount, [20 x i8]* %"$_origin_292", [20 x i8]* %"$_sender_294", [20 x i8]* %"$remote_296"), !dbg !28
  ret void
}

define internal void @"$RemoteReadsContractParam_297"(%Uint128 %_amount, [20 x i8]* %"$_origin_298", [20 x i8]* %"$_sender_299") !dbg !29 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_298", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_299", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_301" = load i8*, i8** @_execptr, align 8
  %"$ad_cparam_302" = alloca [20 x i8], align 1
  %"$cparam_303" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_303", [20 x i8]* %"$ad_cparam_302", align 1
  %"$ad_call_304" = call i8* @_fetch_remote_field(i8* %"$execptr_load_301", [20 x i8]* %"$ad_cparam_302", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_300", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", i32 0, i8* null, i32 1), !dbg !30
  %"$ad_305" = bitcast i8* %"$ad_call_304" to [20 x i8]*
  %"$ad_306" = load [20 x i8], [20 x i8]* %"$ad_305", align 1
  store [20 x i8] %"$ad_306", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_307" = alloca [20 x i8], align 1
  %"$ad_308" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_308", [20 x i8]* %"$_literal_cost_ad_307", align 1
  %"$$_literal_cost_ad_307_309" = bitcast [20 x i8]* %"$_literal_cost_ad_307" to i8*
  %"$_literal_cost_call_310" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", i8* %"$$_literal_cost_ad_307_309")
  %"$gasadd_311" = add i64 %"$_literal_cost_call_310", 0
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 %"$gasadd_311", %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %entry
  %"$consume_316" = sub i64 %"$gasrem_312", %"$gasadd_311"
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %"$_literal_cost_ad_317" = alloca [20 x i8], align 1
  %"$ad_318" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_318", [20 x i8]* %"$_literal_cost_ad_317", align 1
  %"$$_literal_cost_ad_317_319" = bitcast [20 x i8]* %"$_literal_cost_ad_317" to i8*
  %"$_literal_cost_call_320" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", i8* %"$$_literal_cost_ad_317_319")
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 %"$_literal_cost_call_320", %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_315"
  %"$consume_325" = sub i64 %"$gasrem_321", %"$_literal_cost_call_320"
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %"$execptr_load_326" = load i8*, i8** @_execptr, align 8
  %"$ad_328" = load [20 x i8], [20 x i8]* %ad, align 1
  %"$update_value_329" = alloca [20 x i8], align 1
  store [20 x i8] %"$ad_328", [20 x i8]* %"$update_value_329", align 1
  %"$update_value_330" = bitcast [20 x i8]* %"$update_value_329" to i8*
  call void @_update_field(i8* %"$execptr_load_326", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_3_327", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", i32 0, i8* null, i8* %"$update_value_330"), !dbg !31
  ret void
}

define void @RemoteReadsContractParam(i8* %0) !dbg !32 {
entry:
  %"$_amount_332" = getelementptr i8, i8* %0, i32 0
  %"$_amount_333" = bitcast i8* %"$_amount_332" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_333", align 8
  %"$_origin_334" = getelementptr i8, i8* %0, i32 16
  %"$_origin_335" = bitcast i8* %"$_origin_334" to [20 x i8]*
  %"$_sender_336" = getelementptr i8, i8* %0, i32 36
  %"$_sender_337" = bitcast i8* %"$_sender_336" to [20 x i8]*
  call void @"$RemoteReadsContractParam_297"(%Uint128 %_amount, [20 x i8]* %"$_origin_335", [20 x i8]* %"$_sender_337"), !dbg !33
  ret void
}

define internal void @"$AddressTypeErasureTest1_338"(%Uint128 %_amount, [20 x i8]* %"$_origin_339", [20 x i8]* %"$_sender_340") !dbg !34 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_339", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_340", align 1
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %entry
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %zero = alloca %Uint128, align 8
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %zero, align 8, !dbg !35
  %"$_literal_cost_cparam_351" = alloca [20 x i8], align 1
  %"$cparam_352" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_352", [20 x i8]* %"$_literal_cost_cparam_351", align 1
  %"$$_literal_cost_cparam_351_353" = bitcast [20 x i8]* %"$_literal_cost_cparam_351" to i8*
  %"$_literal_cost_call_354" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_51", i8* %"$$_literal_cost_cparam_351_353")
  %"$gasadd_355" = add i64 %"$_literal_cost_call_354", 1
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 %"$gasadd_355", %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_349"
  %"$consume_360" = sub i64 %"$gasrem_356", %"$gasadd_355"
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$indices_buf_361_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_361_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_361_salloc_load", i64 16)
  %"$indices_buf_361_salloc" = bitcast i8* %"$indices_buf_361_salloc_salloc" to [16 x i8]*
  %"$indices_buf_361" = bitcast [16 x i8]* %"$indices_buf_361_salloc" to i8*
  %"$zero_362" = load %Uint128, %Uint128* %zero, align 8
  %"$indices_gep_363" = getelementptr i8, i8* %"$indices_buf_361", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_363" to %Uint128*
  store %Uint128 %"$zero_362", %Uint128* %indices_cast, align 8
  %"$execptr_load_364" = load i8*, i8** @_execptr, align 8
  %"$cparam_366" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  %"$update_value_367" = alloca [20 x i8], align 1
  store [20 x i8] %"$cparam_366", [20 x i8]* %"$update_value_367", align 1
  %"$update_value_368" = bitcast [20 x i8]* %"$update_value_367" to i8*
  call void @_update_field(i8* %"$execptr_load_364", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_365", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 1, i8* %"$indices_buf_361", i8* %"$update_value_368"), !dbg !36
  ret void
}

define void @AddressTypeErasureTest1(i8* %0) !dbg !37 {
entry:
  %"$_amount_370" = getelementptr i8, i8* %0, i32 0
  %"$_amount_371" = bitcast i8* %"$_amount_370" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_371", align 8
  %"$_origin_372" = getelementptr i8, i8* %0, i32 16
  %"$_origin_373" = bitcast i8* %"$_origin_372" to [20 x i8]*
  %"$_sender_374" = getelementptr i8, i8* %0, i32 36
  %"$_sender_375" = bitcast i8* %"$_sender_374" to [20 x i8]*
  call void @"$AddressTypeErasureTest1_338"(%Uint128 %_amount, [20 x i8]* %"$_origin_373", [20 x i8]* %"$_sender_375"), !dbg !38
  ret void
}

define internal void @"$AddressTypeErasureTest2_376"(%Uint128 %_amount, [20 x i8]* %"$_origin_377", [20 x i8]* %"$_sender_378") !dbg !39 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_377", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_378", align 1
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %entry
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %zero = alloca %Uint128, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %zero, align 8, !dbg !40
  %emp_map = alloca %Map_Uint128_ByStr20_with_end*, align 8
  %"$execptr_load_390" = load i8*, i8** @_execptr, align 8
  %"$emp_map_call_391" = call i8* @_fetch_field(i8* %"$execptr_load_390", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_389", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 0, i8* null, i32 1), !dbg !41
  %"$emp_map_392" = bitcast i8* %"$emp_map_call_391" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$emp_map_392", %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$emp_map_393" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_393_394" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_393" to i8*
  %"$_literal_cost_call_395" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_41", i8* %"$$emp_map_393_394")
  %"$emp_map_396" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_396_397" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_396" to i8*
  %"$_mapsortcost_call_398" = call i64 @_mapsortcost(i8* %"$$emp_map_396_397")
  %"$gasadd_399" = add i64 %"$_literal_cost_call_395", %"$_mapsortcost_call_398"
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 %"$gasadd_399", %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_387"
  %"$consume_404" = sub i64 %"$gasrem_400", %"$gasadd_399"
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %new_map = alloca %Map_Uint128_ByStr20_with_end*, align 8
  %"$execptr_load_410" = load i8*, i8** @_execptr, align 8
  %"$emp_map_411" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_411_412" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_411" to i8*
  %"$put_zero_413" = alloca %Uint128, align 8
  %"$zero_414" = load %Uint128, %Uint128* %zero, align 8
  store %Uint128 %"$zero_414", %Uint128* %"$put_zero_413", align 8
  %"$$put_zero_413_415" = bitcast %Uint128* %"$put_zero_413" to i8*
  %"$put_cparam_416" = alloca [20 x i8], align 1
  %"$cparam_417" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_417", [20 x i8]* %"$put_cparam_416", align 1
  %"$$put_cparam_416_418" = bitcast [20 x i8]* %"$put_cparam_416" to i8*
  %"$put_call_419" = call i8* @_put(i8* %"$execptr_load_410", %_TyDescrTy_Typ* @"$TyDescr_Map_41", i8* %"$$emp_map_411_412", i8* %"$$put_zero_413_415", i8* %"$$put_cparam_416_418"), !dbg !42
  %"$put_420" = bitcast i8* %"$put_call_419" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$put_420", %Map_Uint128_ByStr20_with_end** %new_map, align 8, !dbg !42
  %"$new_map_421" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$$new_map_421_422" = bitcast %Map_Uint128_ByStr20_with_end* %"$new_map_421" to i8*
  %"$_literal_cost_call_423" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_41", i8* %"$$new_map_421_422")
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 %"$_literal_cost_call_423", %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_408"
  %"$consume_428" = sub i64 %"$gasrem_424", %"$_literal_cost_call_423"
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$execptr_load_429" = load i8*, i8** @_execptr, align 8
  %"$new_map_431" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$update_value_432" = bitcast %Map_Uint128_ByStr20_with_end* %"$new_map_431" to i8*
  call void @_update_field(i8* %"$execptr_load_429", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_430", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_41", i32 0, i8* null, i8* %"$update_value_432"), !dbg !43
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_mapsortcost(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @AddressTypeErasureTest2(i8* %0) !dbg !44 {
entry:
  %"$_amount_434" = getelementptr i8, i8* %0, i32 0
  %"$_amount_435" = bitcast i8* %"$_amount_434" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_435", align 8
  %"$_origin_436" = getelementptr i8, i8* %0, i32 16
  %"$_origin_437" = bitcast i8* %"$_origin_436" to [20 x i8]*
  %"$_sender_438" = getelementptr i8, i8* %0, i32 36
  %"$_sender_439" = bitcast i8* %"$_sender_438" to [20 x i8]*
  call void @"$AddressTypeErasureTest2_376"(%Uint128 %_amount, [20 x i8]* %"$_origin_437", [20 x i8]* %"$_sender_439"), !dbg !45
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
!9 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 5, column: 49, scope: !9)
!11 = !DILocation(line: 6, column: 56, scope: !9)
!12 = !DILocation(line: 7, column: 49, scope: !9)
!13 = !DILocation(line: 9, column: 74, scope: !9)
!14 = distinct !DISubprogram(name: "RemoteReadsOfRemoteRead", linkageName: "RemoteReadsOfRemoteRead", scope: !2, file: !2, line: 11, type: !6, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 19, column: 3, scope: !14)
!16 = !DILocation(line: 20, column: 3, scope: !14)
!17 = !DILocation(line: 21, column: 3, scope: !14)
!18 = !DILocation(line: 22, column: 3, scope: !14)
!19 = distinct !DISubprogram(name: "RemoteReadsOfRemoteRead", linkageName: "RemoteReadsOfRemoteRead", scope: !2, file: !2, line: 11, type: !6, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 11, column: 12, scope: !19)
!21 = distinct !DISubprogram(name: "RemoteReadsOfRemoteMap", linkageName: "RemoteReadsOfRemoteMap", scope: !2, file: !2, line: 25, type: !6, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 33, column: 3, scope: !21)
!23 = !DILocation(line: 34, column: 3, scope: !21)
!24 = !DILocation(line: 35, column: 16, scope: !21)
!25 = !DILocation(line: 36, column: 3, scope: !21)
!26 = !DILocation(line: 37, column: 3, scope: !21)
!27 = distinct !DISubprogram(name: "RemoteReadsOfRemoteMap", linkageName: "RemoteReadsOfRemoteMap", scope: !2, file: !2, line: 25, type: !6, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 25, column: 12, scope: !27)
!29 = distinct !DISubprogram(name: "RemoteReadsContractParam", linkageName: "RemoteReadsContractParam", scope: !2, file: !2, line: 40, type: !6, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 41, column: 3, scope: !29)
!31 = !DILocation(line: 42, column: 3, scope: !29)
!32 = distinct !DISubprogram(name: "RemoteReadsContractParam", linkageName: "RemoteReadsContractParam", scope: !2, file: !2, line: 40, type: !6, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 40, column: 12, scope: !32)
!34 = distinct !DISubprogram(name: "AddressTypeErasureTest1", linkageName: "AddressTypeErasureTest1", scope: !2, file: !2, line: 45, type: !6, scopeLine: 45, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DILocation(line: 46, column: 10, scope: !34)
!36 = !DILocation(line: 47, column: 3, scope: !34)
!37 = distinct !DISubprogram(name: "AddressTypeErasureTest1", linkageName: "AddressTypeErasureTest1", scope: !2, file: !2, line: 45, type: !6, scopeLine: 45, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!38 = !DILocation(line: 45, column: 12, scope: !37)
!39 = distinct !DISubprogram(name: "AddressTypeErasureTest2", linkageName: "AddressTypeErasureTest2", scope: !2, file: !2, line: 50, type: !6, scopeLine: 50, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DILocation(line: 51, column: 10, scope: !39)
!41 = !DILocation(line: 52, column: 3, scope: !39)
!42 = !DILocation(line: 53, column: 13, scope: !39)
!43 = !DILocation(line: 54, column: 3, scope: !39)
!44 = distinct !DISubprogram(name: "AddressTypeErasureTest2", linkageName: "AddressTypeErasureTest2", scope: !2, file: !2, line: 50, type: !6, scopeLine: 50, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!45 = !DILocation(line: 50, column: 12, scope: !44)
