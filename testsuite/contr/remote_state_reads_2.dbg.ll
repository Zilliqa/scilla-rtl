

; gas_remaining: 4001999
; ModuleID = 'RRContract'
source_filename = "RRContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_42" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrFieldTyp_45" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_46" = type { i32, %"$TyDescr_AddrFieldTyp_45"* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_479" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_480" = type { %ParamDescrString, i32, %"$ParamDescr_479"* }
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
@"$TyDescr_ReplicateContr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_ReplicateContr_Prim_32" to i8*) }
@"$TyDescr_Bystr_Prim_34" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_34" to i8*) }
@"$TyDescr_Bystr20_Prim_36" = global %"$TyDescrTy_PrimTyp_5" { i32 8, i32 20 }
@"$TyDescr_Bystr20_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr20_Prim_36" to i8*) }
@"$TyDescr_ADT_Option_Uint128_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_64" to i8*) }
@"$TyDescr_Map_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_42"* @"$TyDescr_MapTyp_67" to i8*) }
@"$TyDescr_Map_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_42"* @"$TyDescr_MapTyp_68" to i8*) }
@"$TyDescr_Addr_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_46"* @"$TyDescr_AddrFields_71" to i8*) }
@"$TyDescr_Addr_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_46"* @"$TyDescr_AddrFields_74" to i8*) }
@"$TyDescr_Addr_49" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_46"* @"$TyDescr_AddrFields_77" to i8*) }
@"$TyDescr_Addr_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_46"* @"$TyDescr_AddrFields_80" to i8*) }
@"$TyDescr_Addr_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_46"* @"$TyDescr_AddrFields_83" to i8*) }
@"$TyDescr_Addr_52" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_46"* @"$TyDescr_AddrFields_86" to i8*) }
@"$TyDescr_Addr_53" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_46"* @"$TyDescr_AddrFields_87" to i8*) }
@"$TyDescr_Addr_54" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_46"* @"$TyDescr_AddrFields_90" to i8*) }
@"$TyDescr_Option_ADTTyp_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_66", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Option_ADTTyp_m_specls_65", i32 0, i32 0) }
@"$TyDescr_Option_Some_Uint128_Constr_m_args_56" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_17"]
@"$TyDescr_ADT_Some_57" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_57", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint128_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint128_Constr_m_args_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_60" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint128_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_60", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint128_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_62" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_58", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Option_None_Uint128_ADTTyp_Constr_61"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_63" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_17"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Option_ADTTyp_55" }
@"$TyDescr_Option_ADTTyp_m_specls_65" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_64"]
@"$TyDescr_ADT_Option_66" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_MapTyp_67" = unnamed_addr constant %"$TyDescr_MapTyp_42" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }
@"$TyDescr_MapTyp_68" = unnamed_addr constant %"$TyDescr_MapTyp_42" { %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }
@"$TyDescr_AddrField_69" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_70" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_45"] [%"$TyDescr_AddrFieldTyp_45" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_69", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Map_43" }]
@"$TyDescr_AddrFields_71" = unnamed_addr constant %"$TyDescr_AddrTyp_46" { i32 1, %"$TyDescr_AddrFieldTyp_45"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_45"], [1 x %"$TyDescr_AddrFieldTyp_45"]* @"$TyDescr_AddrFields_70", i32 0, i32 0) }
@"$TyDescr_AddrField_72" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_73" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_45"] [%"$TyDescr_AddrFieldTyp_45" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_72", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_47" }]
@"$TyDescr_AddrFields_74" = unnamed_addr constant %"$TyDescr_AddrTyp_46" { i32 1, %"$TyDescr_AddrFieldTyp_45"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_45"], [1 x %"$TyDescr_AddrFieldTyp_45"]* @"$TyDescr_AddrFields_73", i32 0, i32 0) }
@"$TyDescr_AddrField_75" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_76" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_45"] [%"$TyDescr_AddrFieldTyp_45" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_75", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }]
@"$TyDescr_AddrFields_77" = unnamed_addr constant %"$TyDescr_AddrTyp_46" { i32 1, %"$TyDescr_AddrFieldTyp_45"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_45"], [1 x %"$TyDescr_AddrFieldTyp_45"]* @"$TyDescr_AddrFields_76", i32 0, i32 0) }
@"$TyDescr_AddrField_78" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_79" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_45"] [%"$TyDescr_AddrFieldTyp_45" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_78", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }]
@"$TyDescr_AddrFields_80" = unnamed_addr constant %"$TyDescr_AddrTyp_46" { i32 1, %"$TyDescr_AddrFieldTyp_45"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_45"], [1 x %"$TyDescr_AddrFieldTyp_45"]* @"$TyDescr_AddrFields_79", i32 0, i32 0) }
@"$TyDescr_AddrField_81" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_82" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_45"] [%"$TyDescr_AddrFieldTyp_45" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_81", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_50" }]
@"$TyDescr_AddrFields_83" = unnamed_addr constant %"$TyDescr_AddrTyp_46" { i32 1, %"$TyDescr_AddrFieldTyp_45"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_45"], [1 x %"$TyDescr_AddrFieldTyp_45"]* @"$TyDescr_AddrFields_82", i32 0, i32 0) }
@"$TyDescr_AddrField_84" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_85" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_45"] [%"$TyDescr_AddrFieldTyp_45" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_84", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }]
@"$TyDescr_AddrFields_86" = unnamed_addr constant %"$TyDescr_AddrTyp_46" { i32 1, %"$TyDescr_AddrFieldTyp_45"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_45"], [1 x %"$TyDescr_AddrFieldTyp_45"]* @"$TyDescr_AddrFields_85", i32 0, i32 0) }
@"$TyDescr_AddrFields_87" = unnamed_addr constant %"$TyDescr_AddrTyp_46" { i32 -3, %"$TyDescr_AddrFieldTyp_45"* null }
@"$TyDescr_AddrField_88" = unnamed_addr constant [5 x i8] c"admin"
@"$TyDescr_AddrFields_89" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_45"] [%"$TyDescr_AddrFieldTyp_45" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_AddrField_88", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }]
@"$TyDescr_AddrFields_90" = unnamed_addr constant %"$TyDescr_AddrTyp_46" { i32 1, %"$TyDescr_AddrFieldTyp_45"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_45"], [1 x %"$TyDescr_AddrFieldTyp_45"]* @"$TyDescr_AddrFields_89", i32 0, i32 0) }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_cparam = global [20 x i8] zeroinitializer
@"$remote_read_remote_read_res_1_107" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_1\00"
@"$remote_read_remote_read_res_2_120" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_2\00"
@"$remote_read_remote_read_res_3_130" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_3\00"
@"$address_type_erasure_test_res_1_143" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$admin_150" = unnamed_addr constant [6 x i8] c"admin\00"
@"$f_166" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_183" = unnamed_addr constant [2 x i8] c"g\00"
@"$remote_read_remote_read_res_1_210" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_1\00"
@"$admin_231" = unnamed_addr constant [6 x i8] c"admin\00"
@"$f_247" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_277" = unnamed_addr constant [2 x i8] c"g\00"
@"$remote_read_remote_read_res_2_302" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_2\00"
@"$admin_321" = unnamed_addr constant [6 x i8] c"admin\00"
@"$remote_read_remote_read_res_3_348" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_3\00"
@"$address_type_erasure_test_res_1_389" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$address_type_erasure_test_res_1_416" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$address_type_erasure_test_res_1_466" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@_tydescr_table = constant [27 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_52", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_53", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_48", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Addr_50", %_TyDescrTy_Typ* @"$TyDescr_Addr_47", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Addr_54", %_TyDescrTy_Typ* @"$TyDescr_Map_43", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Addr_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Map_44", %_TyDescrTy_Typ* @"$TyDescr_Addr_49", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 27
@"$pname__scilla_version_481" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_482" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_483" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_cparam_484" = unnamed_addr constant [6 x i8] c"cparam"
@_contract_parameters = constant [4 x %"$ParamDescr_479"] [%"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_481", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_482", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_483", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$pname_cparam_484", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }]
@_contract_parameters_length = constant i32 4
@"$tpname__amount_485" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_486" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_487" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote_488" = unnamed_addr constant [6 x i8] c"remote"
@"$tparams_RemoteReadsOfRemoteRead_489" = unnamed_addr constant [4 x %"$ParamDescr_479"] [%"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_485", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_486", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_487", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_remote_488", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_52" }]
@"$tname_RemoteReadsOfRemoteRead_490" = unnamed_addr constant [23 x i8] c"RemoteReadsOfRemoteRead"
@"$tpname__amount_491" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_492" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_493" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote_494" = unnamed_addr constant [6 x i8] c"remote"
@"$tparams_RemoteReadsOfRemoteMap_495" = unnamed_addr constant [4 x %"$ParamDescr_479"] [%"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_491", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_492", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_493", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_remote_494", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_49" }]
@"$tname_RemoteReadsOfRemoteMap_496" = unnamed_addr constant [22 x i8] c"RemoteReadsOfRemoteMap"
@"$tpname__amount_497" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_498" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_499" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_RemoteReadsContractParam_500" = unnamed_addr constant [3 x %"$ParamDescr_479"] [%"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_497", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_498", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_499", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }]
@"$tname_RemoteReadsContractParam_501" = unnamed_addr constant [24 x i8] c"RemoteReadsContractParam"
@"$tpname__amount_502" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_503" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_504" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AddressTypeErasureTest1_505" = unnamed_addr constant [3 x %"$ParamDescr_479"] [%"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_502", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_503", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_504", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }]
@"$tname_AddressTypeErasureTest1_506" = unnamed_addr constant [23 x i8] c"AddressTypeErasureTest1"
@"$tpname__amount_507" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_508" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_509" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AddressTypeErasureTest2_510" = unnamed_addr constant [3 x %"$ParamDescr_479"] [%"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_507", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_508", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_479" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_509", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }]
@"$tname_AddressTypeErasureTest2_511" = unnamed_addr constant [23 x i8] c"AddressTypeErasureTest2"
@_transition_parameters = constant [5 x %"$TransDescr_480"] [%"$TransDescr_480" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_RemoteReadsOfRemoteRead_490", i32 0, i32 0), i32 23 }, i32 4, %"$ParamDescr_479"* getelementptr inbounds ([4 x %"$ParamDescr_479"], [4 x %"$ParamDescr_479"]* @"$tparams_RemoteReadsOfRemoteRead_489", i32 0, i32 0) }, %"$TransDescr_480" { %ParamDescrString { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$tname_RemoteReadsOfRemoteMap_496", i32 0, i32 0), i32 22 }, i32 4, %"$ParamDescr_479"* getelementptr inbounds ([4 x %"$ParamDescr_479"], [4 x %"$ParamDescr_479"]* @"$tparams_RemoteReadsOfRemoteMap_495", i32 0, i32 0) }, %"$TransDescr_480" { %ParamDescrString { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"$tname_RemoteReadsContractParam_501", i32 0, i32 0), i32 24 }, i32 3, %"$ParamDescr_479"* getelementptr inbounds ([3 x %"$ParamDescr_479"], [3 x %"$ParamDescr_479"]* @"$tparams_RemoteReadsContractParam_500", i32 0, i32 0) }, %"$TransDescr_480" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_AddressTypeErasureTest1_506", i32 0, i32 0), i32 23 }, i32 3, %"$ParamDescr_479"* getelementptr inbounds ([3 x %"$ParamDescr_479"], [3 x %"$ParamDescr_479"]* @"$tparams_AddressTypeErasureTest1_505", i32 0, i32 0) }, %"$TransDescr_480" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_AddressTypeErasureTest2_511", i32 0, i32 0), i32 23 }, i32 3, %"$ParamDescr_479"* getelementptr inbounds ([3 x %"$ParamDescr_479"], [3 x %"$ParamDescr_479"]* @"$tparams_AddressTypeErasureTest2_510", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 5, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %entry
  %"$consume_95" = sub i64 %"$gasrem_91", 5
  store i64 %"$consume_95", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %entry
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %"$remote_read_remote_read_res_1_1" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$remote_read_remote_read_res_1_1", metadata !11, metadata !DIExpression()), !dbg !13
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_read_remote_read_res_1_1", align 8, !dbg !14
  %"$execptr_load_106" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_1_1_108" = load %Uint128, %Uint128* %"$remote_read_remote_read_res_1_1", align 8
  %"$update_value_109" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_read_remote_read_res_1_1_108", %Uint128* %"$update_value_109", align 8
  %"$update_value_110" = bitcast %Uint128* %"$update_value_109" to i8*
  call void @_update_field(i8* %"$execptr_load_106", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_1_107", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i8* %"$update_value_110"), !dbg !14
  %"$remote_read_remote_read_res_2_2" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$remote_read_remote_read_res_2_2", metadata !15, metadata !DIExpression()), !dbg !18
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_104"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %"$adtval_116_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_116_salloc" = call i8* @_salloc(i8* %"$adtval_116_load", i64 1)
  %"$adtval_116" = bitcast i8* %"$adtval_116_salloc" to %CName_None_Uint128*
  %"$adtgep_117" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_116", i32 0, i32 0
  store i8 1, i8* %"$adtgep_117", align 1
  %"$adtptr_118" = bitcast %CName_None_Uint128* %"$adtval_116" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_118", %TName_Option_Uint128** %"$remote_read_remote_read_res_2_2", align 8, !dbg !19
  %"$execptr_load_119" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_2_2_121" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$remote_read_remote_read_res_2_2", align 8
  %"$update_value_122" = bitcast %TName_Option_Uint128* %"$$remote_read_remote_read_res_2_2_121" to i8*
  call void @_update_field(i8* %"$execptr_load_119", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_2_120", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_41", i32 0, i8* null, i8* %"$update_value_122"), !dbg !19
  %"$remote_read_remote_read_res_3_3" = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %"$remote_read_remote_read_res_3_3", metadata !20, metadata !DIExpression()), !dbg !22
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_114"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %"$_this_address_128" = load [20 x i8], [20 x i8]* @_cparam__this_address, align 1
  store [20 x i8] %"$_this_address_128", [20 x i8]* %"$remote_read_remote_read_res_3_3", align 1, !dbg !23
  %"$execptr_load_129" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_3_3_131" = load [20 x i8], [20 x i8]* %"$remote_read_remote_read_res_3_3", align 1
  %"$update_value_132" = alloca [20 x i8], align 1
  store [20 x i8] %"$$remote_read_remote_read_res_3_3_131", [20 x i8]* %"$update_value_132", align 1
  %"$update_value_133" = bitcast [20 x i8]* %"$update_value_132" to i8*
  call void @_update_field(i8* %"$execptr_load_129", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_3_130", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", i32 0, i8* null, i8* %"$update_value_133"), !dbg !23
  %"$address_type_erasure_test_res_1_4" = alloca %Map_Uint128_ByStr20_with_end*, align 8
  call void @llvm.dbg.declare(metadata %Map_Uint128_ByStr20_with_end** %"$address_type_erasure_test_res_1_4", metadata !24, metadata !DIExpression()), !dbg !27
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_126"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %"$execptr_load_139" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_140" = call i8* @_new_empty_map(i8* %"$execptr_load_139")
  %"$_new_empty_map_141" = bitcast i8* %"$_new_empty_map_call_140" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$_new_empty_map_141", %Map_Uint128_ByStr20_with_end** %"$address_type_erasure_test_res_1_4", align 8, !dbg !28
  %"$execptr_load_142" = load i8*, i8** @_execptr, align 8
  %"$$address_type_erasure_test_res_1_4_144" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %"$address_type_erasure_test_res_1_4", align 8
  %"$update_value_145" = bitcast %Map_Uint128_ByStr20_with_end* %"$$address_type_erasure_test_res_1_4_144" to i8*
  call void @_update_field(i8* %"$execptr_load_142", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_143", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 0, i8* null, i8* %"$update_value_145"), !dbg !28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_new_empty_map(i8*)

define internal void @"$RemoteReadsOfRemoteRead_146"(%Uint128 %_amount, [20 x i8]* %"$_origin_147", [20 x i8]* %"$_sender_148", [20 x i8]* %"$remote_149") !dbg !29 {
entry:
  %"$remote_217" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$remote_149", [20 x i8]** %"$remote_217", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$remote_217", metadata !30, metadata !DIExpression()), !dbg !32
  %"$_sender_216" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_148", [20 x i8]** %"$_sender_216", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_216", metadata !33, metadata !DIExpression()), !dbg !35
  %"$_origin_215" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_147", [20 x i8]** %"$_origin_215", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_215", metadata !36, metadata !DIExpression()), !dbg !35
  %"$_amount_214" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_214", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_214", metadata !37, metadata !DIExpression()), !dbg !35
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_147", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_148", align 1
  %remote = load [20 x i8], [20 x i8]* %"$remote_149", align 1
  %ad = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %ad, metadata !38, metadata !DIExpression()), !dbg !40
  %"$execptr_load_151" = load i8*, i8** @_execptr, align 8
  %"$ad_remote_152" = alloca [20 x i8], align 1
  store [20 x i8] %remote, [20 x i8]* %"$ad_remote_152", align 1
  %"$ad_call_153" = call i8* @_fetch_remote_field(i8* %"$execptr_load_151", [20 x i8]* %"$ad_remote_152", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_150", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_51", i32 0, i8* null, i32 1), !dbg !40
  %"$ad_154" = bitcast i8* %"$ad_call_153" to [20 x i8]*
  %"$ad_155" = load [20 x i8], [20 x i8]* %"$ad_154", align 1
  store [20 x i8] %"$ad_155", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_156" = alloca [20 x i8], align 1
  %"$ad_157" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_157", [20 x i8]* %"$_literal_cost_ad_156", align 1
  %"$$_literal_cost_ad_156_158" = bitcast [20 x i8]* %"$_literal_cost_ad_156" to i8*
  %"$_literal_cost_call_159" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_51", i8* %"$$_literal_cost_ad_156_158")
  %"$gasadd_160" = add i64 %"$_literal_cost_call_159", 0
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 %"$gasadd_160", %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %entry
  %"$consume_165" = sub i64 %"$gasrem_161", %"$gasadd_160"
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %this_f = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %this_f, metadata !41, metadata !DIExpression()), !dbg !43
  %"$execptr_load_167" = load i8*, i8** @_execptr, align 8
  %"$this_f_ad_168" = alloca [20 x i8], align 1
  %"$ad_169" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_169", [20 x i8]* %"$this_f_ad_168", align 1
  %"$this_f_call_170" = call i8* @_fetch_remote_field(i8* %"$execptr_load_167", [20 x i8]* %"$this_f_ad_168", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_166", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_50", i32 0, i8* null, i32 1), !dbg !43
  %"$this_f_171" = bitcast i8* %"$this_f_call_170" to [20 x i8]*
  %"$this_f_172" = load [20 x i8], [20 x i8]* %"$this_f_171", align 1
  store [20 x i8] %"$this_f_172", [20 x i8]* %this_f, align 1
  %"$_literal_cost_this_f_173" = alloca [20 x i8], align 1
  %"$this_f_174" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_174", [20 x i8]* %"$_literal_cost_this_f_173", align 1
  %"$$_literal_cost_this_f_173_175" = bitcast [20 x i8]* %"$_literal_cost_this_f_173" to i8*
  %"$_literal_cost_call_176" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_50", i8* %"$$_literal_cost_this_f_173_175")
  %"$gasadd_177" = add i64 %"$_literal_cost_call_176", 0
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 %"$gasadd_177", %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_164"
  %"$consume_182" = sub i64 %"$gasrem_178", %"$gasadd_177"
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %this_g = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %this_g, metadata !44, metadata !DIExpression()), !dbg !45
  %"$execptr_load_184" = load i8*, i8** @_execptr, align 8
  %"$this_g_this_f_185" = alloca [20 x i8], align 1
  %"$this_f_186" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_186", [20 x i8]* %"$this_g_this_f_185", align 1
  %"$this_g_call_187" = call i8* @_fetch_remote_field(i8* %"$execptr_load_184", [20 x i8]* %"$this_g_this_f_185", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_183", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i32 1), !dbg !45
  %"$this_g_188" = bitcast i8* %"$this_g_call_187" to %Uint128*
  %"$this_g_189" = load %Uint128, %Uint128* %"$this_g_188", align 8
  store %Uint128 %"$this_g_189", %Uint128* %this_g, align 8
  %"$_literal_cost_this_g_190" = alloca %Uint128, align 8
  %"$this_g_191" = load %Uint128, %Uint128* %this_g, align 8
  store %Uint128 %"$this_g_191", %Uint128* %"$_literal_cost_this_g_190", align 8
  %"$$_literal_cost_this_g_190_192" = bitcast %Uint128* %"$_literal_cost_this_g_190" to i8*
  %"$_literal_cost_call_193" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i8* %"$$_literal_cost_this_g_190_192")
  %"$gasadd_194" = add i64 %"$_literal_cost_call_193", 0
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 %"$gasadd_194", %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_181"
  %"$consume_199" = sub i64 %"$gasrem_195", %"$gasadd_194"
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %"$_literal_cost_this_g_200" = alloca %Uint128, align 8
  %"$this_g_201" = load %Uint128, %Uint128* %this_g, align 8
  store %Uint128 %"$this_g_201", %Uint128* %"$_literal_cost_this_g_200", align 8
  %"$$_literal_cost_this_g_200_202" = bitcast %Uint128* %"$_literal_cost_this_g_200" to i8*
  %"$_literal_cost_call_203" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i8* %"$$_literal_cost_this_g_200_202")
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 %"$_literal_cost_call_203", %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_198"
  %"$consume_208" = sub i64 %"$gasrem_204", %"$_literal_cost_call_203"
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$execptr_load_209" = load i8*, i8** @_execptr, align 8
  %"$this_g_211" = load %Uint128, %Uint128* %this_g, align 8
  %"$update_value_212" = alloca %Uint128, align 8
  store %Uint128 %"$this_g_211", %Uint128* %"$update_value_212", align 8
  %"$update_value_213" = bitcast %Uint128* %"$update_value_212" to i8*
  call void @_update_field(i8* %"$execptr_load_209", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_1_210", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i8* %"$update_value_213"), !dbg !46
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @RemoteReadsOfRemoteRead(i8* %0) !dbg !47 {
entry:
  %"$_amount_219" = getelementptr i8, i8* %0, i32 0
  %"$_amount_220" = bitcast i8* %"$_amount_219" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_220", align 8
  %"$_origin_221" = getelementptr i8, i8* %0, i32 16
  %"$_origin_222" = bitcast i8* %"$_origin_221" to [20 x i8]*
  %"$_sender_223" = getelementptr i8, i8* %0, i32 36
  %"$_sender_224" = bitcast i8* %"$_sender_223" to [20 x i8]*
  %"$remote_225" = getelementptr i8, i8* %0, i32 56
  %"$remote_226" = bitcast i8* %"$remote_225" to [20 x i8]*
  call void @"$RemoteReadsOfRemoteRead_146"(%Uint128 %_amount, [20 x i8]* %"$_origin_222", [20 x i8]* %"$_sender_224", [20 x i8]* %"$remote_226"), !dbg !48
  ret void
}

define internal void @"$RemoteReadsOfRemoteMap_227"(%Uint128 %_amount, [20 x i8]* %"$_origin_228", [20 x i8]* %"$_sender_229", [20 x i8]* %"$remote_230") !dbg !49 {
entry:
  %"$remote_308" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$remote_230", [20 x i8]** %"$remote_308", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$remote_308", metadata !50, metadata !DIExpression()), !dbg !52
  %"$_sender_307" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_229", [20 x i8]** %"$_sender_307", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_307", metadata !53, metadata !DIExpression()), !dbg !54
  %"$_origin_306" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_228", [20 x i8]** %"$_origin_306", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_306", metadata !55, metadata !DIExpression()), !dbg !54
  %"$_amount_305" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_305", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_305", metadata !56, metadata !DIExpression()), !dbg !54
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_228", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_229", align 1
  %remote = load [20 x i8], [20 x i8]* %"$remote_230", align 1
  %ad = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %ad, metadata !57, metadata !DIExpression()), !dbg !59
  %"$execptr_load_232" = load i8*, i8** @_execptr, align 8
  %"$ad_remote_233" = alloca [20 x i8], align 1
  store [20 x i8] %remote, [20 x i8]* %"$ad_remote_233", align 1
  %"$ad_call_234" = call i8* @_fetch_remote_field(i8* %"$execptr_load_232", [20 x i8]* %"$ad_remote_233", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_231", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_48", i32 0, i8* null, i32 1), !dbg !59
  %"$ad_235" = bitcast i8* %"$ad_call_234" to [20 x i8]*
  %"$ad_236" = load [20 x i8], [20 x i8]* %"$ad_235", align 1
  store [20 x i8] %"$ad_236", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_237" = alloca [20 x i8], align 1
  %"$ad_238" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_238", [20 x i8]* %"$_literal_cost_ad_237", align 1
  %"$$_literal_cost_ad_237_239" = bitcast [20 x i8]* %"$_literal_cost_ad_237" to i8*
  %"$_literal_cost_call_240" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_48", i8* %"$$_literal_cost_ad_237_239")
  %"$gasadd_241" = add i64 %"$_literal_cost_call_240", 0
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 %"$gasadd_241", %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %entry
  %"$consume_246" = sub i64 %"$gasrem_242", %"$gasadd_241"
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %this_f = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %this_f, metadata !60, metadata !DIExpression()), !dbg !62
  %"$execptr_load_248" = load i8*, i8** @_execptr, align 8
  %"$this_f_ad_249" = alloca [20 x i8], align 1
  %"$ad_250" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_250", [20 x i8]* %"$this_f_ad_249", align 1
  %"$this_f_call_251" = call i8* @_fetch_remote_field(i8* %"$execptr_load_248", [20 x i8]* %"$this_f_ad_249", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_247", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_47", i32 0, i8* null, i32 1), !dbg !62
  %"$this_f_252" = bitcast i8* %"$this_f_call_251" to [20 x i8]*
  %"$this_f_253" = load [20 x i8], [20 x i8]* %"$this_f_252", align 1
  store [20 x i8] %"$this_f_253", [20 x i8]* %this_f, align 1
  %"$_literal_cost_this_f_254" = alloca [20 x i8], align 1
  %"$this_f_255" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_255", [20 x i8]* %"$_literal_cost_this_f_254", align 1
  %"$$_literal_cost_this_f_254_256" = bitcast [20 x i8]* %"$_literal_cost_this_f_254" to i8*
  %"$_literal_cost_call_257" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_47", i8* %"$$_literal_cost_this_f_254_256")
  %"$gasadd_258" = add i64 %"$_literal_cost_call_257", 0
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 %"$gasadd_258", %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_245"
  %"$consume_263" = sub i64 %"$gasrem_259", %"$gasadd_258"
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %remote_key = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %remote_key, metadata !63, metadata !DIExpression()), !dbg !64
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_267"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %remote_key, align 8, !dbg !65
  %this_g = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %this_g, metadata !66, metadata !DIExpression()), !dbg !67
  %"$indices_buf_274_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_274_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_274_salloc_load", i64 16)
  %"$indices_buf_274_salloc" = bitcast i8* %"$indices_buf_274_salloc_salloc" to [16 x i8]*
  %"$indices_buf_274" = bitcast [16 x i8]* %"$indices_buf_274_salloc" to i8*
  %"$remote_key_275" = load %Uint128, %Uint128* %remote_key, align 8
  %"$indices_gep_276" = getelementptr i8, i8* %"$indices_buf_274", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_276" to %Uint128*
  store %Uint128 %"$remote_key_275", %Uint128* %indices_cast, align 8
  %"$execptr_load_278" = load i8*, i8** @_execptr, align 8
  %"$this_g_this_f_279" = alloca [20 x i8], align 1
  %"$this_f_280" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_280", [20 x i8]* %"$this_g_this_f_279", align 1
  %"$this_g_call_281" = call i8* @_fetch_remote_field(i8* %"$execptr_load_278", [20 x i8]* %"$this_g_this_f_279", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_277", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_274", i32 1), !dbg !67
  %"$this_g_282" = bitcast i8* %"$this_g_call_281" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$this_g_282", %TName_Option_Uint128** %this_g, align 8
  %"$this_g_283" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$$this_g_283_284" = bitcast %TName_Option_Uint128* %"$this_g_283" to i8*
  %"$_literal_cost_call_285" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_41", i8* %"$$this_g_283_284")
  %"$gasadd_286" = add i64 %"$_literal_cost_call_285", 0
  %"$gasadd_287" = add i64 %"$gasadd_286", 1
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 %"$gasadd_287", %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$have_gas_272"
  %"$consume_292" = sub i64 %"$gasrem_288", %"$gasadd_287"
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %"$this_g_293" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$$this_g_293_294" = bitcast %TName_Option_Uint128* %"$this_g_293" to i8*
  %"$_literal_cost_call_295" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_41", i8* %"$$this_g_293_294")
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 %"$_literal_cost_call_295", %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_291"
  %"$consume_300" = sub i64 %"$gasrem_296", %"$_literal_cost_call_295"
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$execptr_load_301" = load i8*, i8** @_execptr, align 8
  %"$this_g_303" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$update_value_304" = bitcast %TName_Option_Uint128* %"$this_g_303" to i8*
  call void @_update_field(i8* %"$execptr_load_301", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_2_302", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_41", i32 0, i8* null, i8* %"$update_value_304"), !dbg !68
  ret void
}

define void @RemoteReadsOfRemoteMap(i8* %0) !dbg !69 {
entry:
  %"$_amount_310" = getelementptr i8, i8* %0, i32 0
  %"$_amount_311" = bitcast i8* %"$_amount_310" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_311", align 8
  %"$_origin_312" = getelementptr i8, i8* %0, i32 16
  %"$_origin_313" = bitcast i8* %"$_origin_312" to [20 x i8]*
  %"$_sender_314" = getelementptr i8, i8* %0, i32 36
  %"$_sender_315" = bitcast i8* %"$_sender_314" to [20 x i8]*
  %"$remote_316" = getelementptr i8, i8* %0, i32 56
  %"$remote_317" = bitcast i8* %"$remote_316" to [20 x i8]*
  call void @"$RemoteReadsOfRemoteMap_227"(%Uint128 %_amount, [20 x i8]* %"$_origin_313", [20 x i8]* %"$_sender_315", [20 x i8]* %"$remote_317"), !dbg !70
  ret void
}

define internal void @"$RemoteReadsContractParam_318"(%Uint128 %_amount, [20 x i8]* %"$_origin_319", [20 x i8]* %"$_sender_320") !dbg !71 {
entry:
  %"$_sender_354" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_320", [20 x i8]** %"$_sender_354", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_354", metadata !72, metadata !DIExpression()), !dbg !73
  %"$_origin_353" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_319", [20 x i8]** %"$_origin_353", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_353", metadata !74, metadata !DIExpression()), !dbg !73
  %"$_amount_352" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_352", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_352", metadata !75, metadata !DIExpression()), !dbg !73
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_319", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_320", align 1
  %ad = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %ad, metadata !76, metadata !DIExpression()), !dbg !77
  %"$execptr_load_322" = load i8*, i8** @_execptr, align 8
  %"$ad_cparam_323" = alloca [20 x i8], align 1
  %"$cparam_324" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_324", [20 x i8]* %"$ad_cparam_323", align 1
  %"$ad_call_325" = call i8* @_fetch_remote_field(i8* %"$execptr_load_322", [20 x i8]* %"$ad_cparam_323", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_321", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", i32 0, i8* null, i32 1), !dbg !77
  %"$ad_326" = bitcast i8* %"$ad_call_325" to [20 x i8]*
  %"$ad_327" = load [20 x i8], [20 x i8]* %"$ad_326", align 1
  store [20 x i8] %"$ad_327", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_328" = alloca [20 x i8], align 1
  %"$ad_329" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_329", [20 x i8]* %"$_literal_cost_ad_328", align 1
  %"$$_literal_cost_ad_328_330" = bitcast [20 x i8]* %"$_literal_cost_ad_328" to i8*
  %"$_literal_cost_call_331" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", i8* %"$$_literal_cost_ad_328_330")
  %"$gasadd_332" = add i64 %"$_literal_cost_call_331", 0
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 %"$gasadd_332", %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %entry
  %"$consume_337" = sub i64 %"$gasrem_333", %"$gasadd_332"
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %"$_literal_cost_ad_338" = alloca [20 x i8], align 1
  %"$ad_339" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_339", [20 x i8]* %"$_literal_cost_ad_338", align 1
  %"$$_literal_cost_ad_338_340" = bitcast [20 x i8]* %"$_literal_cost_ad_338" to i8*
  %"$_literal_cost_call_341" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", i8* %"$$_literal_cost_ad_338_340")
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 %"$_literal_cost_call_341", %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_336"
  %"$consume_346" = sub i64 %"$gasrem_342", %"$_literal_cost_call_341"
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %"$execptr_load_347" = load i8*, i8** @_execptr, align 8
  %"$ad_349" = load [20 x i8], [20 x i8]* %ad, align 1
  %"$update_value_350" = alloca [20 x i8], align 1
  store [20 x i8] %"$ad_349", [20 x i8]* %"$update_value_350", align 1
  %"$update_value_351" = bitcast [20 x i8]* %"$update_value_350" to i8*
  call void @_update_field(i8* %"$execptr_load_347", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_3_348", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", i32 0, i8* null, i8* %"$update_value_351"), !dbg !78
  ret void
}

define void @RemoteReadsContractParam(i8* %0) !dbg !79 {
entry:
  %"$_amount_356" = getelementptr i8, i8* %0, i32 0
  %"$_amount_357" = bitcast i8* %"$_amount_356" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_357", align 8
  %"$_origin_358" = getelementptr i8, i8* %0, i32 16
  %"$_origin_359" = bitcast i8* %"$_origin_358" to [20 x i8]*
  %"$_sender_360" = getelementptr i8, i8* %0, i32 36
  %"$_sender_361" = bitcast i8* %"$_sender_360" to [20 x i8]*
  call void @"$RemoteReadsContractParam_318"(%Uint128 %_amount, [20 x i8]* %"$_origin_359", [20 x i8]* %"$_sender_361"), !dbg !80
  ret void
}

define internal void @"$AddressTypeErasureTest1_362"(%Uint128 %_amount, [20 x i8]* %"$_origin_363", [20 x i8]* %"$_sender_364") !dbg !81 {
entry:
  %"$_sender_395" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_364", [20 x i8]** %"$_sender_395", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_395", metadata !82, metadata !DIExpression()), !dbg !83
  %"$_origin_394" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_363", [20 x i8]** %"$_origin_394", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_394", metadata !84, metadata !DIExpression()), !dbg !83
  %"$_amount_393" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_393", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_393", metadata !85, metadata !DIExpression()), !dbg !83
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_363", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_364", align 1
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %entry
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %zero = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %zero, metadata !86, metadata !DIExpression()), !dbg !87
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %zero, align 8, !dbg !88
  %"$_literal_cost_cparam_375" = alloca [20 x i8], align 1
  %"$cparam_376" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_376", [20 x i8]* %"$_literal_cost_cparam_375", align 1
  %"$$_literal_cost_cparam_375_377" = bitcast [20 x i8]* %"$_literal_cost_cparam_375" to i8*
  %"$_literal_cost_call_378" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_54", i8* %"$$_literal_cost_cparam_375_377")
  %"$gasadd_379" = add i64 %"$_literal_cost_call_378", 1
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 %"$gasadd_379", %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_373"
  %"$consume_384" = sub i64 %"$gasrem_380", %"$gasadd_379"
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$indices_buf_385_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_385_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_385_salloc_load", i64 16)
  %"$indices_buf_385_salloc" = bitcast i8* %"$indices_buf_385_salloc_salloc" to [16 x i8]*
  %"$indices_buf_385" = bitcast [16 x i8]* %"$indices_buf_385_salloc" to i8*
  %"$zero_386" = load %Uint128, %Uint128* %zero, align 8
  %"$indices_gep_387" = getelementptr i8, i8* %"$indices_buf_385", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_387" to %Uint128*
  store %Uint128 %"$zero_386", %Uint128* %indices_cast, align 8
  %"$execptr_load_388" = load i8*, i8** @_execptr, align 8
  %"$cparam_390" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  %"$update_value_391" = alloca [20 x i8], align 1
  store [20 x i8] %"$cparam_390", [20 x i8]* %"$update_value_391", align 1
  %"$update_value_392" = bitcast [20 x i8]* %"$update_value_391" to i8*
  call void @_update_field(i8* %"$execptr_load_388", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_389", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 1, i8* %"$indices_buf_385", i8* %"$update_value_392"), !dbg !89
  ret void
}

define void @AddressTypeErasureTest1(i8* %0) !dbg !90 {
entry:
  %"$_amount_397" = getelementptr i8, i8* %0, i32 0
  %"$_amount_398" = bitcast i8* %"$_amount_397" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_398", align 8
  %"$_origin_399" = getelementptr i8, i8* %0, i32 16
  %"$_origin_400" = bitcast i8* %"$_origin_399" to [20 x i8]*
  %"$_sender_401" = getelementptr i8, i8* %0, i32 36
  %"$_sender_402" = bitcast i8* %"$_sender_401" to [20 x i8]*
  call void @"$AddressTypeErasureTest1_362"(%Uint128 %_amount, [20 x i8]* %"$_origin_400", [20 x i8]* %"$_sender_402"), !dbg !91
  ret void
}

define internal void @"$AddressTypeErasureTest2_403"(%Uint128 %_amount, [20 x i8]* %"$_origin_404", [20 x i8]* %"$_sender_405") !dbg !92 {
entry:
  %"$_sender_471" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_405", [20 x i8]** %"$_sender_471", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_471", metadata !93, metadata !DIExpression()), !dbg !94
  %"$_origin_470" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_404", [20 x i8]** %"$_origin_470", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_470", metadata !95, metadata !DIExpression()), !dbg !94
  %"$_amount_469" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_469", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_469", metadata !96, metadata !DIExpression()), !dbg !94
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_404", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_405", align 1
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %entry
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %zero = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %zero, metadata !97, metadata !DIExpression()), !dbg !98
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_409"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %zero, align 8, !dbg !99
  %emp_map = alloca %Map_Uint128_ByStr20_with_end*, align 8
  call void @llvm.dbg.declare(metadata %Map_Uint128_ByStr20_with_end** %emp_map, metadata !100, metadata !DIExpression()), !dbg !101
  %"$execptr_load_417" = load i8*, i8** @_execptr, align 8
  %"$emp_map_call_418" = call i8* @_fetch_field(i8* %"$execptr_load_417", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_416", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 0, i8* null, i32 1), !dbg !101
  %"$emp_map_419" = bitcast i8* %"$emp_map_call_418" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$emp_map_419", %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$emp_map_420" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_420_421" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_420" to i8*
  %"$_literal_cost_call_422" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$emp_map_420_421")
  %"$emp_map_423" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_423_424" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_423" to i8*
  %"$_mapsortcost_call_425" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$emp_map_423_424")
  %"$gasadd_426" = add i64 %"$_literal_cost_call_422", %"$_mapsortcost_call_425"
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 %"$gasadd_426", %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_414"
  %"$consume_431" = sub i64 %"$gasrem_427", %"$gasadd_426"
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
  %new_map = alloca %Map_Uint128_ByStr20_with_end*, align 8
  call void @llvm.dbg.declare(metadata %Map_Uint128_ByStr20_with_end** %new_map, metadata !102, metadata !DIExpression()), !dbg !103
  %"$emp_map_437" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_437_438" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_437" to i8*
  %"$_lengthof_call_439" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$emp_map_437_438")
  %"$gasadd_440" = add i64 1, %"$_lengthof_call_439"
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 %"$gasadd_440", %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_435"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_435"
  %"$consume_445" = sub i64 %"$gasrem_441", %"$gasadd_440"
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %"$execptr_load_446" = load i8*, i8** @_execptr, align 8
  %"$emp_map_447" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_447_448" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_447" to i8*
  %"$put_zero_449" = alloca %Uint128, align 8
  %"$zero_450" = load %Uint128, %Uint128* %zero, align 8
  store %Uint128 %"$zero_450", %Uint128* %"$put_zero_449", align 8
  %"$$put_zero_449_451" = bitcast %Uint128* %"$put_zero_449" to i8*
  %"$put_cparam_452" = alloca [20 x i8], align 1
  %"$cparam_453" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_453", [20 x i8]* %"$put_cparam_452", align 1
  %"$$put_cparam_452_454" = bitcast [20 x i8]* %"$put_cparam_452" to i8*
  %"$put_call_455" = call i8* @_put(i8* %"$execptr_load_446", %_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$emp_map_447_448", i8* %"$$put_zero_449_451", i8* %"$$put_cparam_452_454"), !dbg !104
  %"$put_456" = bitcast i8* %"$put_call_455" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$put_456", %Map_Uint128_ByStr20_with_end** %new_map, align 8, !dbg !104
  %"$new_map_457" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$$new_map_457_458" = bitcast %Map_Uint128_ByStr20_with_end* %"$new_map_457" to i8*
  %"$_literal_cost_call_459" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$new_map_457_458")
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 %"$_literal_cost_call_459", %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_444"
  %"$consume_464" = sub i64 %"$gasrem_460", %"$_literal_cost_call_459"
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %"$execptr_load_465" = load i8*, i8** @_execptr, align 8
  %"$new_map_467" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$update_value_468" = bitcast %Map_Uint128_ByStr20_with_end* %"$new_map_467" to i8*
  call void @_update_field(i8* %"$execptr_load_465", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_466", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 0, i8* null, i8* %"$update_value_468"), !dbg !105
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @AddressTypeErasureTest2(i8* %0) !dbg !106 {
entry:
  %"$_amount_473" = getelementptr i8, i8* %0, i32 0
  %"$_amount_474" = bitcast i8* %"$_amount_473" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_474", align 8
  %"$_origin_475" = getelementptr i8, i8* %0, i32 16
  %"$_origin_476" = bitcast i8* %"$_origin_475" to [20 x i8]*
  %"$_sender_477" = getelementptr i8, i8* %0, i32 36
  %"$_sender_478" = bitcast i8* %"$_sender_477" to [20 x i8]*
  call void @"$AddressTypeErasureTest2_403"(%Uint128 %_amount, [20 x i8]* %"$_origin_476", [20 x i8]* %"$_sender_478"), !dbg !107
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "remote_state_reads_2.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = !DILocalVariable(name: "$remote_read_remote_read_res_1_1", scope: !10, file: !2, line: 5, type: !12)
!12 = !DIBasicType(name: "Uint128", size: 16)
!13 = !DILocation(line: 5, column: 7, scope: !10)
!14 = !DILocation(line: 5, column: 49, scope: !10)
!15 = !DILocalVariable(name: "$remote_read_remote_read_res_2_2", scope: !10, file: !2, line: 6, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Uint128)", baseType: !17, size: 8, align: 8, dwarfAddressSpace: 0)
!17 = !DIBasicType(name: "Option (Uint128)", size: 8)
!18 = !DILocation(line: 6, column: 7, scope: !10)
!19 = !DILocation(line: 6, column: 56, scope: !10)
!20 = !DILocalVariable(name: "$remote_read_remote_read_res_3_3", scope: !10, file: !2, line: 7, type: !21)
!21 = !DIBasicType(name: "ByStr20", size: 20)
!22 = !DILocation(line: 7, column: 7, scope: !10)
!23 = !DILocation(line: 7, column: 49, scope: !10)
!24 = !DILocalVariable(name: "$address_type_erasure_test_res_1_4", scope: !10, file: !2, line: 9, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Map (Uint128) (ByStr20 with end)", baseType: !26, size: 8, align: 8, dwarfAddressSpace: 0)
!26 = !DIBasicType(name: "Map (Uint128) (ByStr20 with end)", size: 8)
!27 = !DILocation(line: 9, column: 7, scope: !10)
!28 = !DILocation(line: 9, column: 74, scope: !10)
!29 = distinct !DISubprogram(name: "RemoteReadsOfRemoteRead", linkageName: "RemoteReadsOfRemoteRead", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!30 = !DILocalVariable(name: "remote", scope: !29, file: !2, line: 12, type: !31)
!31 = !DIBasicType(name: "ByStr20 with contract field admin : ByStr20 with contract field f : ByStr20 with contract field g : Uint128 end end end", size: 20)
!32 = !DILocation(line: 12, column: 3, scope: !29)
!33 = !DILocalVariable(name: "_sender", scope: !29, file: !2, line: 11, type: !34)
!34 = !DIBasicType(name: "ByStr20 with end", size: 20)
!35 = !DILocation(line: 11, column: 12, scope: !29)
!36 = !DILocalVariable(name: "_origin", scope: !29, file: !2, line: 11, type: !34)
!37 = !DILocalVariable(name: "_amount", scope: !29, file: !2, line: 11, type: !12)
!38 = !DILocalVariable(name: "ad", scope: !29, file: !2, line: 19, type: !39)
!39 = !DIBasicType(name: "ByStr20 with contract field f : ByStr20 with contract field g : Uint128 end end", size: 20)
!40 = !DILocation(line: 19, column: 3, scope: !29)
!41 = !DILocalVariable(name: "this_f", scope: !29, file: !2, line: 20, type: !42)
!42 = !DIBasicType(name: "ByStr20 with contract field g : Uint128 end", size: 20)
!43 = !DILocation(line: 20, column: 3, scope: !29)
!44 = !DILocalVariable(name: "this_g", scope: !29, file: !2, line: 21, type: !12)
!45 = !DILocation(line: 21, column: 3, scope: !29)
!46 = !DILocation(line: 22, column: 3, scope: !29)
!47 = distinct !DISubprogram(name: "RemoteReadsOfRemoteRead", linkageName: "RemoteReadsOfRemoteRead", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!48 = !DILocation(line: 11, column: 12, scope: !47)
!49 = distinct !DISubprogram(name: "RemoteReadsOfRemoteMap", linkageName: "RemoteReadsOfRemoteMap", scope: !2, file: !2, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!50 = !DILocalVariable(name: "remote", scope: !49, file: !2, line: 26, type: !51)
!51 = !DIBasicType(name: "ByStr20 with contract field admin : ByStr20 with contract field f : ByStr20 with contract field g : Map (Uint128) (Uint128) end end end", size: 20)
!52 = !DILocation(line: 26, column: 3, scope: !49)
!53 = !DILocalVariable(name: "_sender", scope: !49, file: !2, line: 25, type: !34)
!54 = !DILocation(line: 25, column: 12, scope: !49)
!55 = !DILocalVariable(name: "_origin", scope: !49, file: !2, line: 25, type: !34)
!56 = !DILocalVariable(name: "_amount", scope: !49, file: !2, line: 25, type: !12)
!57 = !DILocalVariable(name: "ad", scope: !49, file: !2, line: 33, type: !58)
!58 = !DIBasicType(name: "ByStr20 with contract field f : ByStr20 with contract field g : Map (Uint128) (Uint128) end end", size: 20)
!59 = !DILocation(line: 33, column: 3, scope: !49)
!60 = !DILocalVariable(name: "this_f", scope: !49, file: !2, line: 34, type: !61)
!61 = !DIBasicType(name: "ByStr20 with contract field g : Map (Uint128) (Uint128) end", size: 20)
!62 = !DILocation(line: 34, column: 3, scope: !49)
!63 = !DILocalVariable(name: "remote_key", scope: !49, file: !2, line: 35, type: !12)
!64 = !DILocation(line: 35, column: 3, scope: !49)
!65 = !DILocation(line: 35, column: 16, scope: !49)
!66 = !DILocalVariable(name: "this_g", scope: !49, file: !2, line: 36, type: !16)
!67 = !DILocation(line: 36, column: 3, scope: !49)
!68 = !DILocation(line: 37, column: 3, scope: !49)
!69 = distinct !DISubprogram(name: "RemoteReadsOfRemoteMap", linkageName: "RemoteReadsOfRemoteMap", scope: !2, file: !2, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!70 = !DILocation(line: 25, column: 12, scope: !69)
!71 = distinct !DISubprogram(name: "RemoteReadsContractParam", linkageName: "RemoteReadsContractParam", scope: !2, file: !2, line: 40, type: !5, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!72 = !DILocalVariable(name: "_sender", scope: !71, file: !2, line: 40, type: !34)
!73 = !DILocation(line: 40, column: 12, scope: !71)
!74 = !DILocalVariable(name: "_origin", scope: !71, file: !2, line: 40, type: !34)
!75 = !DILocalVariable(name: "_amount", scope: !71, file: !2, line: 40, type: !12)
!76 = !DILocalVariable(name: "ad", scope: !71, file: !2, line: 41, type: !21)
!77 = !DILocation(line: 41, column: 3, scope: !71)
!78 = !DILocation(line: 42, column: 3, scope: !71)
!79 = distinct !DISubprogram(name: "RemoteReadsContractParam", linkageName: "RemoteReadsContractParam", scope: !2, file: !2, line: 40, type: !5, scopeLine: 40, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!80 = !DILocation(line: 40, column: 12, scope: !79)
!81 = distinct !DISubprogram(name: "AddressTypeErasureTest1", linkageName: "AddressTypeErasureTest1", scope: !2, file: !2, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!82 = !DILocalVariable(name: "_sender", scope: !81, file: !2, line: 45, type: !34)
!83 = !DILocation(line: 45, column: 12, scope: !81)
!84 = !DILocalVariable(name: "_origin", scope: !81, file: !2, line: 45, type: !34)
!85 = !DILocalVariable(name: "_amount", scope: !81, file: !2, line: 45, type: !12)
!86 = !DILocalVariable(name: "zero", scope: !81, file: !2, line: 46, type: !12)
!87 = !DILocation(line: 46, column: 3, scope: !81)
!88 = !DILocation(line: 46, column: 10, scope: !81)
!89 = !DILocation(line: 47, column: 3, scope: !81)
!90 = distinct !DISubprogram(name: "AddressTypeErasureTest1", linkageName: "AddressTypeErasureTest1", scope: !2, file: !2, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!91 = !DILocation(line: 45, column: 12, scope: !90)
!92 = distinct !DISubprogram(name: "AddressTypeErasureTest2", linkageName: "AddressTypeErasureTest2", scope: !2, file: !2, line: 50, type: !5, scopeLine: 50, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!93 = !DILocalVariable(name: "_sender", scope: !92, file: !2, line: 50, type: !34)
!94 = !DILocation(line: 50, column: 12, scope: !92)
!95 = !DILocalVariable(name: "_origin", scope: !92, file: !2, line: 50, type: !34)
!96 = !DILocalVariable(name: "_amount", scope: !92, file: !2, line: 50, type: !12)
!97 = !DILocalVariable(name: "zero", scope: !92, file: !2, line: 51, type: !12)
!98 = !DILocation(line: 51, column: 3, scope: !92)
!99 = !DILocation(line: 51, column: 10, scope: !92)
!100 = !DILocalVariable(name: "emp_map", scope: !92, file: !2, line: 52, type: !25)
!101 = !DILocation(line: 52, column: 3, scope: !92)
!102 = !DILocalVariable(name: "new_map", scope: !92, file: !2, line: 53, type: !25)
!103 = !DILocation(line: 53, column: 3, scope: !92)
!104 = !DILocation(line: 53, column: 13, scope: !92)
!105 = !DILocation(line: 54, column: 3, scope: !92)
!106 = distinct !DISubprogram(name: "AddressTypeErasureTest2", linkageName: "AddressTypeErasureTest2", scope: !2, file: !2, line: 50, type: !5, scopeLine: 50, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!107 = !DILocation(line: 50, column: 12, scope: !106)
