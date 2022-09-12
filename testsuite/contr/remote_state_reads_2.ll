

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
%"$ParamDescr_462" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_463" = type { %ParamDescrString, i32, %"$ParamDescr_462"* }
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
@"$admin_227" = unnamed_addr constant [6 x i8] c"admin\00"
@"$f_243" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_273" = unnamed_addr constant [2 x i8] c"g\00"
@"$remote_read_remote_read_res_2_298" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_2\00"
@"$admin_313" = unnamed_addr constant [6 x i8] c"admin\00"
@"$remote_read_remote_read_res_3_340" = unnamed_addr constant [30 x i8] c"remote_read_remote_read_res_3\00"
@"$address_type_erasure_test_res_1_378" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$address_type_erasure_test_res_1_402" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@"$address_type_erasure_test_res_1_452" = unnamed_addr constant [32 x i8] c"address_type_erasure_test_res_1\00"
@_tydescr_table = constant [27 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_52", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_53", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_48", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Addr_50", %_TyDescrTy_Typ* @"$TyDescr_Addr_47", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Addr_54", %_TyDescrTy_Typ* @"$TyDescr_Map_43", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Addr_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Map_44", %_TyDescrTy_Typ* @"$TyDescr_Addr_49", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 27
@"$pname__scilla_version_464" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_465" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_466" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_cparam_467" = unnamed_addr constant [6 x i8] c"cparam"
@_contract_parameters = constant [4 x %"$ParamDescr_462"] [%"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_464", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_465", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_466", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$pname_cparam_467", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }]
@_contract_parameters_length = constant i32 4
@"$tpname__amount_468" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_469" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_470" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote_471" = unnamed_addr constant [6 x i8] c"remote"
@"$tparams_RemoteReadsOfRemoteRead_472" = unnamed_addr constant [4 x %"$ParamDescr_462"] [%"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_468", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_469", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_470", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_remote_471", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_52" }]
@"$tname_RemoteReadsOfRemoteRead_473" = unnamed_addr constant [23 x i8] c"RemoteReadsOfRemoteRead"
@"$tpname__amount_474" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_475" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_476" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_remote_477" = unnamed_addr constant [6 x i8] c"remote"
@"$tparams_RemoteReadsOfRemoteMap_478" = unnamed_addr constant [4 x %"$ParamDescr_462"] [%"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_474", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_475", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_476", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tpname_remote_477", i32 0, i32 0), i32 6 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_49" }]
@"$tname_RemoteReadsOfRemoteMap_479" = unnamed_addr constant [22 x i8] c"RemoteReadsOfRemoteMap"
@"$tpname__amount_480" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_481" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_482" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_RemoteReadsContractParam_483" = unnamed_addr constant [3 x %"$ParamDescr_462"] [%"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_480", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_481", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_482", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }]
@"$tname_RemoteReadsContractParam_484" = unnamed_addr constant [24 x i8] c"RemoteReadsContractParam"
@"$tpname__amount_485" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_486" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_487" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AddressTypeErasureTest1_488" = unnamed_addr constant [3 x %"$ParamDescr_462"] [%"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_485", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_486", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_487", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }]
@"$tname_AddressTypeErasureTest1_489" = unnamed_addr constant [23 x i8] c"AddressTypeErasureTest1"
@"$tpname__amount_490" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_491" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_492" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AddressTypeErasureTest2_493" = unnamed_addr constant [3 x %"$ParamDescr_462"] [%"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_490", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_491", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }, %"$ParamDescr_462" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_492", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_53" }]
@"$tname_AddressTypeErasureTest2_494" = unnamed_addr constant [23 x i8] c"AddressTypeErasureTest2"
@_transition_parameters = constant [5 x %"$TransDescr_463"] [%"$TransDescr_463" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_RemoteReadsOfRemoteRead_473", i32 0, i32 0), i32 23 }, i32 4, %"$ParamDescr_462"* getelementptr inbounds ([4 x %"$ParamDescr_462"], [4 x %"$ParamDescr_462"]* @"$tparams_RemoteReadsOfRemoteRead_472", i32 0, i32 0) }, %"$TransDescr_463" { %ParamDescrString { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$tname_RemoteReadsOfRemoteMap_479", i32 0, i32 0), i32 22 }, i32 4, %"$ParamDescr_462"* getelementptr inbounds ([4 x %"$ParamDescr_462"], [4 x %"$ParamDescr_462"]* @"$tparams_RemoteReadsOfRemoteMap_478", i32 0, i32 0) }, %"$TransDescr_463" { %ParamDescrString { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @"$tname_RemoteReadsContractParam_484", i32 0, i32 0), i32 24 }, i32 3, %"$ParamDescr_462"* getelementptr inbounds ([3 x %"$ParamDescr_462"], [3 x %"$ParamDescr_462"]* @"$tparams_RemoteReadsContractParam_483", i32 0, i32 0) }, %"$TransDescr_463" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_AddressTypeErasureTest1_489", i32 0, i32 0), i32 23 }, i32 3, %"$ParamDescr_462"* getelementptr inbounds ([3 x %"$ParamDescr_462"], [3 x %"$ParamDescr_462"]* @"$tparams_AddressTypeErasureTest1_488", i32 0, i32 0) }, %"$TransDescr_463" { %ParamDescrString { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$tname_AddressTypeErasureTest2_494", i32 0, i32 0), i32 23 }, i32 3, %"$ParamDescr_462"* getelementptr inbounds ([3 x %"$ParamDescr_462"], [3 x %"$ParamDescr_462"]* @"$tparams_AddressTypeErasureTest2_493", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define void @_init_libs() {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
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
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$remote_read_remote_read_res_1_1", align 8
  %"$execptr_load_106" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_1_1_108" = load %Uint128, %Uint128* %"$remote_read_remote_read_res_1_1", align 8
  %"$update_value_109" = alloca %Uint128, align 8
  store %Uint128 %"$$remote_read_remote_read_res_1_1_108", %Uint128* %"$update_value_109", align 8
  %"$update_value_110" = bitcast %Uint128* %"$update_value_109" to i8*
  call void @_update_field(i8* %"$execptr_load_106", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_1_107", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i8* %"$update_value_110")
  %"$remote_read_remote_read_res_2_2" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_118", %TName_Option_Uint128** %"$remote_read_remote_read_res_2_2", align 8
  %"$execptr_load_119" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_2_2_121" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$remote_read_remote_read_res_2_2", align 8
  %"$update_value_122" = bitcast %TName_Option_Uint128* %"$$remote_read_remote_read_res_2_2_121" to i8*
  call void @_update_field(i8* %"$execptr_load_119", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_2_120", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_41", i32 0, i8* null, i8* %"$update_value_122")
  %"$remote_read_remote_read_res_3_3" = alloca [20 x i8], align 1
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
  store [20 x i8] %"$_this_address_128", [20 x i8]* %"$remote_read_remote_read_res_3_3", align 1
  %"$execptr_load_129" = load i8*, i8** @_execptr, align 8
  %"$$remote_read_remote_read_res_3_3_131" = load [20 x i8], [20 x i8]* %"$remote_read_remote_read_res_3_3", align 1
  %"$update_value_132" = alloca [20 x i8], align 1
  store [20 x i8] %"$$remote_read_remote_read_res_3_3_131", [20 x i8]* %"$update_value_132", align 1
  %"$update_value_133" = bitcast [20 x i8]* %"$update_value_132" to i8*
  call void @_update_field(i8* %"$execptr_load_129", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_3_130", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", i32 0, i8* null, i8* %"$update_value_133")
  %"$address_type_erasure_test_res_1_4" = alloca %Map_Uint128_ByStr20_with_end*, align 8
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
  store %Map_Uint128_ByStr20_with_end* %"$_new_empty_map_141", %Map_Uint128_ByStr20_with_end** %"$address_type_erasure_test_res_1_4", align 8
  %"$execptr_load_142" = load i8*, i8** @_execptr, align 8
  %"$$address_type_erasure_test_res_1_4_144" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %"$address_type_erasure_test_res_1_4", align 8
  %"$update_value_145" = bitcast %Map_Uint128_ByStr20_with_end* %"$$address_type_erasure_test_res_1_4_144" to i8*
  call void @_update_field(i8* %"$execptr_load_142", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_143", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 0, i8* null, i8* %"$update_value_145")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_new_empty_map(i8*)

define internal void @"$RemoteReadsOfRemoteRead_146"(%Uint128 %_amount, [20 x i8]* %"$_origin_147", [20 x i8]* %"$_sender_148", [20 x i8]* %"$remote_149") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_147", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_148", align 1
  %remote = load [20 x i8], [20 x i8]* %"$remote_149", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_151" = load i8*, i8** @_execptr, align 8
  %"$ad_remote_152" = alloca [20 x i8], align 1
  store [20 x i8] %remote, [20 x i8]* %"$ad_remote_152", align 1
  %"$ad_call_153" = call i8* @_fetch_remote_field(i8* %"$execptr_load_151", [20 x i8]* %"$ad_remote_152", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_150", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_51", i32 0, i8* null, i32 1)
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
  %"$execptr_load_167" = load i8*, i8** @_execptr, align 8
  %"$this_f_ad_168" = alloca [20 x i8], align 1
  %"$ad_169" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_169", [20 x i8]* %"$this_f_ad_168", align 1
  %"$this_f_call_170" = call i8* @_fetch_remote_field(i8* %"$execptr_load_167", [20 x i8]* %"$this_f_ad_168", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_166", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_50", i32 0, i8* null, i32 1)
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
  %"$execptr_load_184" = load i8*, i8** @_execptr, align 8
  %"$this_g_this_f_185" = alloca [20 x i8], align 1
  %"$this_f_186" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_186", [20 x i8]* %"$this_g_this_f_185", align 1
  %"$this_g_call_187" = call i8* @_fetch_remote_field(i8* %"$execptr_load_184", [20 x i8]* %"$this_g_this_f_185", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_183", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i32 1)
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
  call void @_update_field(i8* %"$execptr_load_209", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_1_210", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", i32 0, i8* null, i8* %"$update_value_213")
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @RemoteReadsOfRemoteRead(i8* %0) {
entry:
  %"$_amount_215" = getelementptr i8, i8* %0, i32 0
  %"$_amount_216" = bitcast i8* %"$_amount_215" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_216", align 8
  %"$_origin_217" = getelementptr i8, i8* %0, i32 16
  %"$_origin_218" = bitcast i8* %"$_origin_217" to [20 x i8]*
  %"$_sender_219" = getelementptr i8, i8* %0, i32 36
  %"$_sender_220" = bitcast i8* %"$_sender_219" to [20 x i8]*
  %"$remote_221" = getelementptr i8, i8* %0, i32 56
  %"$remote_222" = bitcast i8* %"$remote_221" to [20 x i8]*
  call void @"$RemoteReadsOfRemoteRead_146"(%Uint128 %_amount, [20 x i8]* %"$_origin_218", [20 x i8]* %"$_sender_220", [20 x i8]* %"$remote_222")
  ret void
}

define internal void @"$RemoteReadsOfRemoteMap_223"(%Uint128 %_amount, [20 x i8]* %"$_origin_224", [20 x i8]* %"$_sender_225", [20 x i8]* %"$remote_226") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_224", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_225", align 1
  %remote = load [20 x i8], [20 x i8]* %"$remote_226", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_228" = load i8*, i8** @_execptr, align 8
  %"$ad_remote_229" = alloca [20 x i8], align 1
  store [20 x i8] %remote, [20 x i8]* %"$ad_remote_229", align 1
  %"$ad_call_230" = call i8* @_fetch_remote_field(i8* %"$execptr_load_228", [20 x i8]* %"$ad_remote_229", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_227", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_48", i32 0, i8* null, i32 1)
  %"$ad_231" = bitcast i8* %"$ad_call_230" to [20 x i8]*
  %"$ad_232" = load [20 x i8], [20 x i8]* %"$ad_231", align 1
  store [20 x i8] %"$ad_232", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_233" = alloca [20 x i8], align 1
  %"$ad_234" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_234", [20 x i8]* %"$_literal_cost_ad_233", align 1
  %"$$_literal_cost_ad_233_235" = bitcast [20 x i8]* %"$_literal_cost_ad_233" to i8*
  %"$_literal_cost_call_236" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_48", i8* %"$$_literal_cost_ad_233_235")
  %"$gasadd_237" = add i64 %"$_literal_cost_call_236", 0
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 %"$gasadd_237", %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %entry
  %"$consume_242" = sub i64 %"$gasrem_238", %"$gasadd_237"
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %this_f = alloca [20 x i8], align 1
  %"$execptr_load_244" = load i8*, i8** @_execptr, align 8
  %"$this_f_ad_245" = alloca [20 x i8], align 1
  %"$ad_246" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_246", [20 x i8]* %"$this_f_ad_245", align 1
  %"$this_f_call_247" = call i8* @_fetch_remote_field(i8* %"$execptr_load_244", [20 x i8]* %"$this_f_ad_245", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_243", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Addr_47", i32 0, i8* null, i32 1)
  %"$this_f_248" = bitcast i8* %"$this_f_call_247" to [20 x i8]*
  %"$this_f_249" = load [20 x i8], [20 x i8]* %"$this_f_248", align 1
  store [20 x i8] %"$this_f_249", [20 x i8]* %this_f, align 1
  %"$_literal_cost_this_f_250" = alloca [20 x i8], align 1
  %"$this_f_251" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_251", [20 x i8]* %"$_literal_cost_this_f_250", align 1
  %"$$_literal_cost_this_f_250_252" = bitcast [20 x i8]* %"$_literal_cost_this_f_250" to i8*
  %"$_literal_cost_call_253" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_47", i8* %"$$_literal_cost_this_f_250_252")
  %"$gasadd_254" = add i64 %"$_literal_cost_call_253", 0
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 %"$gasadd_254", %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_241"
  %"$consume_259" = sub i64 %"$gasrem_255", %"$gasadd_254"
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_258"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %remote_key = alloca %Uint128, align 8
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_263"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %remote_key, align 8
  %this_g = alloca %TName_Option_Uint128*, align 8
  %"$indices_buf_270_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_270_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_270_salloc_load", i64 16)
  %"$indices_buf_270_salloc" = bitcast i8* %"$indices_buf_270_salloc_salloc" to [16 x i8]*
  %"$indices_buf_270" = bitcast [16 x i8]* %"$indices_buf_270_salloc" to i8*
  %"$remote_key_271" = load %Uint128, %Uint128* %remote_key, align 8
  %"$indices_gep_272" = getelementptr i8, i8* %"$indices_buf_270", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_272" to %Uint128*
  store %Uint128 %"$remote_key_271", %Uint128* %indices_cast, align 8
  %"$execptr_load_274" = load i8*, i8** @_execptr, align 8
  %"$this_g_this_f_275" = alloca [20 x i8], align 1
  %"$this_f_276" = load [20 x i8], [20 x i8]* %this_f, align 1
  store [20 x i8] %"$this_f_276", [20 x i8]* %"$this_g_this_f_275", align 1
  %"$this_g_call_277" = call i8* @_fetch_remote_field(i8* %"$execptr_load_274", [20 x i8]* %"$this_g_this_f_275", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_273", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_43", i32 1, i8* %"$indices_buf_270", i32 1)
  %"$this_g_278" = bitcast i8* %"$this_g_call_277" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$this_g_278", %TName_Option_Uint128** %this_g, align 8
  %"$this_g_279" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$$this_g_279_280" = bitcast %TName_Option_Uint128* %"$this_g_279" to i8*
  %"$_literal_cost_call_281" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_41", i8* %"$$this_g_279_280")
  %"$gasadd_282" = add i64 %"$_literal_cost_call_281", 0
  %"$gasadd_283" = add i64 %"$gasadd_282", 1
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 %"$gasadd_283", %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_268"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_268"
  %"$consume_288" = sub i64 %"$gasrem_284", %"$gasadd_283"
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$this_g_289" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$$this_g_289_290" = bitcast %TName_Option_Uint128* %"$this_g_289" to i8*
  %"$_literal_cost_call_291" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_41", i8* %"$$this_g_289_290")
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 %"$_literal_cost_call_291", %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_287"
  %"$consume_296" = sub i64 %"$gasrem_292", %"$_literal_cost_call_291"
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %"$execptr_load_297" = load i8*, i8** @_execptr, align 8
  %"$this_g_299" = load %TName_Option_Uint128*, %TName_Option_Uint128** %this_g, align 8
  %"$update_value_300" = bitcast %TName_Option_Uint128* %"$this_g_299" to i8*
  call void @_update_field(i8* %"$execptr_load_297", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_2_298", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_41", i32 0, i8* null, i8* %"$update_value_300")
  ret void
}

define void @RemoteReadsOfRemoteMap(i8* %0) {
entry:
  %"$_amount_302" = getelementptr i8, i8* %0, i32 0
  %"$_amount_303" = bitcast i8* %"$_amount_302" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_303", align 8
  %"$_origin_304" = getelementptr i8, i8* %0, i32 16
  %"$_origin_305" = bitcast i8* %"$_origin_304" to [20 x i8]*
  %"$_sender_306" = getelementptr i8, i8* %0, i32 36
  %"$_sender_307" = bitcast i8* %"$_sender_306" to [20 x i8]*
  %"$remote_308" = getelementptr i8, i8* %0, i32 56
  %"$remote_309" = bitcast i8* %"$remote_308" to [20 x i8]*
  call void @"$RemoteReadsOfRemoteMap_223"(%Uint128 %_amount, [20 x i8]* %"$_origin_305", [20 x i8]* %"$_sender_307", [20 x i8]* %"$remote_309")
  ret void
}

define internal void @"$RemoteReadsContractParam_310"(%Uint128 %_amount, [20 x i8]* %"$_origin_311", [20 x i8]* %"$_sender_312") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_311", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_312", align 1
  %ad = alloca [20 x i8], align 1
  %"$execptr_load_314" = load i8*, i8** @_execptr, align 8
  %"$ad_cparam_315" = alloca [20 x i8], align 1
  %"$cparam_316" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_316", [20 x i8]* %"$ad_cparam_315", align 1
  %"$ad_call_317" = call i8* @_fetch_remote_field(i8* %"$execptr_load_314", [20 x i8]* %"$ad_cparam_315", i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$admin_313", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", i32 0, i8* null, i32 1)
  %"$ad_318" = bitcast i8* %"$ad_call_317" to [20 x i8]*
  %"$ad_319" = load [20 x i8], [20 x i8]* %"$ad_318", align 1
  store [20 x i8] %"$ad_319", [20 x i8]* %ad, align 1
  %"$_literal_cost_ad_320" = alloca [20 x i8], align 1
  %"$ad_321" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_321", [20 x i8]* %"$_literal_cost_ad_320", align 1
  %"$$_literal_cost_ad_320_322" = bitcast [20 x i8]* %"$_literal_cost_ad_320" to i8*
  %"$_literal_cost_call_323" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", i8* %"$$_literal_cost_ad_320_322")
  %"$gasadd_324" = add i64 %"$_literal_cost_call_323", 0
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 %"$gasadd_324", %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %entry
  %"$consume_329" = sub i64 %"$gasrem_325", %"$gasadd_324"
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$_literal_cost_ad_330" = alloca [20 x i8], align 1
  %"$ad_331" = load [20 x i8], [20 x i8]* %ad, align 1
  store [20 x i8] %"$ad_331", [20 x i8]* %"$_literal_cost_ad_330", align 1
  %"$$_literal_cost_ad_330_332" = bitcast [20 x i8]* %"$_literal_cost_ad_330" to i8*
  %"$_literal_cost_call_333" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", i8* %"$$_literal_cost_ad_330_332")
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 %"$_literal_cost_call_333", %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_328"
  %"$consume_338" = sub i64 %"$gasrem_334", %"$_literal_cost_call_333"
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %"$execptr_load_339" = load i8*, i8** @_execptr, align 8
  %"$ad_341" = load [20 x i8], [20 x i8]* %ad, align 1
  %"$update_value_342" = alloca [20 x i8], align 1
  store [20 x i8] %"$ad_341", [20 x i8]* %"$update_value_342", align 1
  %"$update_value_343" = bitcast [20 x i8]* %"$update_value_342" to i8*
  call void @_update_field(i8* %"$execptr_load_339", i8* getelementptr inbounds ([30 x i8], [30 x i8]* @"$remote_read_remote_read_res_3_340", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", i32 0, i8* null, i8* %"$update_value_343")
  ret void
}

define void @RemoteReadsContractParam(i8* %0) {
entry:
  %"$_amount_345" = getelementptr i8, i8* %0, i32 0
  %"$_amount_346" = bitcast i8* %"$_amount_345" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_346", align 8
  %"$_origin_347" = getelementptr i8, i8* %0, i32 16
  %"$_origin_348" = bitcast i8* %"$_origin_347" to [20 x i8]*
  %"$_sender_349" = getelementptr i8, i8* %0, i32 36
  %"$_sender_350" = bitcast i8* %"$_sender_349" to [20 x i8]*
  call void @"$RemoteReadsContractParam_310"(%Uint128 %_amount, [20 x i8]* %"$_origin_348", [20 x i8]* %"$_sender_350")
  ret void
}

define internal void @"$AddressTypeErasureTest1_351"(%Uint128 %_amount, [20 x i8]* %"$_origin_352", [20 x i8]* %"$_sender_353") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_352", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_353", align 1
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %entry
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %zero = alloca %Uint128, align 8
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_357"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %zero, align 8
  %"$_literal_cost_cparam_364" = alloca [20 x i8], align 1
  %"$cparam_365" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_365", [20 x i8]* %"$_literal_cost_cparam_364", align 1
  %"$$_literal_cost_cparam_364_366" = bitcast [20 x i8]* %"$_literal_cost_cparam_364" to i8*
  %"$_literal_cost_call_367" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Addr_54", i8* %"$$_literal_cost_cparam_364_366")
  %"$gasadd_368" = add i64 %"$_literal_cost_call_367", 1
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 %"$gasadd_368", %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_362"
  %"$consume_373" = sub i64 %"$gasrem_369", %"$gasadd_368"
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %"$indices_buf_374_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_374_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_374_salloc_load", i64 16)
  %"$indices_buf_374_salloc" = bitcast i8* %"$indices_buf_374_salloc_salloc" to [16 x i8]*
  %"$indices_buf_374" = bitcast [16 x i8]* %"$indices_buf_374_salloc" to i8*
  %"$zero_375" = load %Uint128, %Uint128* %zero, align 8
  %"$indices_gep_376" = getelementptr i8, i8* %"$indices_buf_374", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_376" to %Uint128*
  store %Uint128 %"$zero_375", %Uint128* %indices_cast, align 8
  %"$execptr_load_377" = load i8*, i8** @_execptr, align 8
  %"$cparam_379" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  %"$update_value_380" = alloca [20 x i8], align 1
  store [20 x i8] %"$cparam_379", [20 x i8]* %"$update_value_380", align 1
  %"$update_value_381" = bitcast [20 x i8]* %"$update_value_380" to i8*
  call void @_update_field(i8* %"$execptr_load_377", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_378", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 1, i8* %"$indices_buf_374", i8* %"$update_value_381")
  ret void
}

define void @AddressTypeErasureTest1(i8* %0) {
entry:
  %"$_amount_383" = getelementptr i8, i8* %0, i32 0
  %"$_amount_384" = bitcast i8* %"$_amount_383" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_384", align 8
  %"$_origin_385" = getelementptr i8, i8* %0, i32 16
  %"$_origin_386" = bitcast i8* %"$_origin_385" to [20 x i8]*
  %"$_sender_387" = getelementptr i8, i8* %0, i32 36
  %"$_sender_388" = bitcast i8* %"$_sender_387" to [20 x i8]*
  call void @"$AddressTypeErasureTest1_351"(%Uint128 %_amount, [20 x i8]* %"$_origin_386", [20 x i8]* %"$_sender_388")
  ret void
}

define internal void @"$AddressTypeErasureTest2_389"(%Uint128 %_amount, [20 x i8]* %"$_origin_390", [20 x i8]* %"$_sender_391") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_390", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_391", align 1
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %entry
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %zero = alloca %Uint128, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %zero, align 8
  %emp_map = alloca %Map_Uint128_ByStr20_with_end*, align 8
  %"$execptr_load_403" = load i8*, i8** @_execptr, align 8
  %"$emp_map_call_404" = call i8* @_fetch_field(i8* %"$execptr_load_403", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_402", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 0, i8* null, i32 1)
  %"$emp_map_405" = bitcast i8* %"$emp_map_call_404" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$emp_map_405", %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$emp_map_406" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_406_407" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_406" to i8*
  %"$_literal_cost_call_408" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$emp_map_406_407")
  %"$emp_map_409" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_409_410" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_409" to i8*
  %"$_mapsortcost_call_411" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$emp_map_409_410")
  %"$gasadd_412" = add i64 %"$_literal_cost_call_408", %"$_mapsortcost_call_411"
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 %"$gasadd_412", %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_400"
  %"$consume_417" = sub i64 %"$gasrem_413", %"$gasadd_412"
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %new_map = alloca %Map_Uint128_ByStr20_with_end*, align 8
  %"$emp_map_423" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_423_424" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_423" to i8*
  %"$_lengthof_call_425" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$emp_map_423_424")
  %"$gasadd_426" = add i64 1, %"$_lengthof_call_425"
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 %"$gasadd_426", %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_421"
  %"$consume_431" = sub i64 %"$gasrem_427", %"$gasadd_426"
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %"$execptr_load_432" = load i8*, i8** @_execptr, align 8
  %"$emp_map_433" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %emp_map, align 8
  %"$$emp_map_433_434" = bitcast %Map_Uint128_ByStr20_with_end* %"$emp_map_433" to i8*
  %"$put_zero_435" = alloca %Uint128, align 8
  %"$zero_436" = load %Uint128, %Uint128* %zero, align 8
  store %Uint128 %"$zero_436", %Uint128* %"$put_zero_435", align 8
  %"$$put_zero_435_437" = bitcast %Uint128* %"$put_zero_435" to i8*
  %"$put_cparam_438" = alloca [20 x i8], align 1
  %"$cparam_439" = load [20 x i8], [20 x i8]* @_cparam_cparam, align 1
  store [20 x i8] %"$cparam_439", [20 x i8]* %"$put_cparam_438", align 1
  %"$$put_cparam_438_440" = bitcast [20 x i8]* %"$put_cparam_438" to i8*
  %"$put_call_441" = call i8* @_put(i8* %"$execptr_load_432", %_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$emp_map_433_434", i8* %"$$put_zero_435_437", i8* %"$$put_cparam_438_440")
  %"$put_442" = bitcast i8* %"$put_call_441" to %Map_Uint128_ByStr20_with_end*
  store %Map_Uint128_ByStr20_with_end* %"$put_442", %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$new_map_443" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$$new_map_443_444" = bitcast %Map_Uint128_ByStr20_with_end* %"$new_map_443" to i8*
  %"$_literal_cost_call_445" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$new_map_443_444")
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 %"$_literal_cost_call_445", %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_430"
  %"$consume_450" = sub i64 %"$gasrem_446", %"$_literal_cost_call_445"
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %"$execptr_load_451" = load i8*, i8** @_execptr, align 8
  %"$new_map_453" = load %Map_Uint128_ByStr20_with_end*, %Map_Uint128_ByStr20_with_end** %new_map, align 8
  %"$update_value_454" = bitcast %Map_Uint128_ByStr20_with_end* %"$new_map_453" to i8*
  call void @_update_field(i8* %"$execptr_load_451", i8* getelementptr inbounds ([32 x i8], [32 x i8]* @"$address_type_erasure_test_res_1_452", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 0, i8* null, i8* %"$update_value_454")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @AddressTypeErasureTest2(i8* %0) {
entry:
  %"$_amount_456" = getelementptr i8, i8* %0, i32 0
  %"$_amount_457" = bitcast i8* %"$_amount_456" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_457", align 8
  %"$_origin_458" = getelementptr i8, i8* %0, i32 16
  %"$_origin_459" = bitcast i8* %"$_origin_458" to [20 x i8]*
  %"$_sender_460" = getelementptr i8, i8* %0, i32 36
  %"$_sender_461" = bitcast i8* %"$_sender_460" to [20 x i8]*
  call void @"$AddressTypeErasureTest2_389"(%Uint128 %_amount, [20 x i8]* %"$_origin_459", [20 x i8]* %"$_sender_461")
  ret void
}
