

; gas_remaining: 4001999
; ModuleID = 'Codehash'
source_filename = "Codehash"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrFieldTyp_41" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_42" = type { i32, %"$TyDescr_AddrFieldTyp_41"* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_398" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_399" = type { %ParamDescrString, i32, %"$ParamDescr_398"* }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Option_ByStr20_with__codehash_end = type { i8, %CName_Some_ByStr20_with__codehash_end*, %CName_None_ByStr20_with__codehash_end* }
%CName_Some_ByStr20_with__codehash_end = type <{ i8, [20 x i8] }>
%CName_None_ByStr20_with__codehash_end = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_ReplicateContr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_ReplicateContr_Prim_28" to i8*) }
@"$TyDescr_Bystr_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_30" to i8*) }
@"$TyDescr_Bystr32_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 32 }
@"$TyDescr_Bystr32_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr32_Prim_32" to i8*) }
@"$TyDescr_Bystr20_Prim_34" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_34" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with__codehash_end_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_56" to i8*) }
@"$TyDescr_Addr_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_60" to i8*) }
@"$TyDescr_Addr_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_61" to i8*) }
@"$TyDescr_Addr_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_62" to i8*) }
@"$TyDescr_Addr_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_63" to i8*) }
@"$TyDescr_Option_ADTTyp_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_58", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Option_ADTTyp_m_specls_57", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr20_with__codehash_end_Constr_m_args_48" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_45"]
@"$TyDescr_ADT_Some_49" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with__codehash_end_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_49", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with__codehash_end_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with__codehash_end_Constr_m_args_51" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_52" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with__codehash_end_ADTTyp_Constr_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_52", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with__codehash_end_Constr_m_args_51", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_m_constrs_54" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Option_Some_ByStr20_with__codehash_end_ADTTyp_Constr_50", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Option_None_ByStr20_with__codehash_end_ADTTyp_Constr_53"]
@"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_m_TArgs_55" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_45"]
@"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_m_TArgs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_m_constrs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Option_ADTTyp_47" }
@"$TyDescr_Option_ADTTyp_m_specls_57" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_56"]
@"$TyDescr_ADT_Option_58" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_AddrFields_59" = unnamed_addr constant [0 x %"$TyDescr_AddrFieldTyp_41"] zeroinitializer
@"$TyDescr_AddrFields_60" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 0, %"$TyDescr_AddrFieldTyp_41"* getelementptr inbounds ([0 x %"$TyDescr_AddrFieldTyp_41"], [0 x %"$TyDescr_AddrFieldTyp_41"]* @"$TyDescr_AddrFields_59", i32 0, i32 0) }
@"$TyDescr_AddrFields_61" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -1, %"$TyDescr_AddrFieldTyp_41"* null }
@"$TyDescr_AddrFields_62" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -2, %"$TyDescr_AddrFieldTyp_41"* null }
@"$TyDescr_AddrFields_63" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -3, %"$TyDescr_AddrFieldTyp_41"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$_codehash_78" = unnamed_addr constant [10 x i8] c"_codehash\00"
@"$stringlit_105" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_110" = unnamed_addr constant [7 x i8] c"Success"
@"$stringlit_113" = unnamed_addr constant [3 x i8] c"bar"
@"$_codehash_168" = unnamed_addr constant [10 x i8] c"_codehash\00"
@"$stringlit_196" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_201" = unnamed_addr constant [7 x i8] c"Success"
@"$stringlit_204" = unnamed_addr constant [3 x i8] c"bar"
@"$stringlit_236" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_241" = unnamed_addr constant [7 x i8] c"Failure"
@"$_codehash_268" = unnamed_addr constant [10 x i8] c"_codehash\00"
@"$stringlit_295" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_300" = unnamed_addr constant [7 x i8] c"Success"
@"$stringlit_303" = unnamed_addr constant [3 x i8] c"bar"
@"$_codehash_335" = unnamed_addr constant [10 x i8] c"_codehash\00"
@"$stringlit_362" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_367" = unnamed_addr constant [7 x i8] c"Success"
@"$stringlit_370" = unnamed_addr constant [3 x i8] c"bar"
@_tydescr_table = constant [22 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_44", %_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with__codehash_end_39", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 22
@"$pname__scilla_version_400" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_401" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_402" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_398"] [%"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_400", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_401", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_402", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_403" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_404" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_405" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_406" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo_407" = unnamed_addr constant [4 x %"$ParamDescr_398"] [%"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_403", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_404", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_405", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_406", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_foo_408" = unnamed_addr constant [3 x i8] c"foo"
@"$tpname__amount_409" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_410" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_411" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_412" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo2_413" = unnamed_addr constant [4 x %"$ParamDescr_398"] [%"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_409", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_410", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_411", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_412", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }]
@"$tname_foo2_414" = unnamed_addr constant [4 x i8] c"foo2"
@"$tpname__amount_415" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_416" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_417" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_418" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo3_419" = unnamed_addr constant [4 x %"$ParamDescr_398"] [%"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_415", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_416", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_417", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_418", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }]
@"$tname_foo3_420" = unnamed_addr constant [4 x i8] c"foo3"
@"$tpname__amount_421" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_422" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_423" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_424" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo4_425" = unnamed_addr constant [4 x %"$ParamDescr_398"] [%"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_421", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_422", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_423", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_398" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_424", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_foo4_426" = unnamed_addr constant [4 x i8] c"foo4"
@_transition_parameters = constant [4 x %"$TransDescr_399"] [%"$TransDescr_399" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_foo_408", i32 0, i32 0), i32 3 }, i32 4, %"$ParamDescr_398"* getelementptr inbounds ([4 x %"$ParamDescr_398"], [4 x %"$ParamDescr_398"]* @"$tparams_foo_407", i32 0, i32 0) }, %"$TransDescr_399" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_foo2_414", i32 0, i32 0), i32 4 }, i32 4, %"$ParamDescr_398"* getelementptr inbounds ([4 x %"$ParamDescr_398"], [4 x %"$ParamDescr_398"]* @"$tparams_foo2_413", i32 0, i32 0) }, %"$TransDescr_399" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_foo3_420", i32 0, i32 0), i32 4 }, i32 4, %"$ParamDescr_398"* getelementptr inbounds ([4 x %"$ParamDescr_398"], [4 x %"$ParamDescr_398"]* @"$tparams_foo3_419", i32 0, i32 0) }, %"$TransDescr_399" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_foo4_426", i32 0, i32 0), i32 4 }, i32 4, %"$ParamDescr_398"* getelementptr inbounds ([4 x %"$ParamDescr_398"], [4 x %"$ParamDescr_398"]* @"$tparams_foo4_425", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 4

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 5, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %entry
  %"$consume_68" = sub i64 %"$gasrem_64", 5
  store i64 %"$consume_68", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %entry
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  ret void
}

define internal void @"$foo_74"(%Uint128 %_amount, [20 x i8]* %"$_origin_75", [20 x i8]* %"$_sender_76", [20 x i8]* %"$addr_77") !dbg !11 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_75", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_76", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_77", align 1
  %bar = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %bar, metadata !12, metadata !DIExpression()), !dbg !14
  %"$execptr_load_79" = load i8*, i8** @_execptr, align 8
  %"$bar_addr_80" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$bar_addr_80", align 1
  %"$bar_call_81" = call i8* @_fetch_remote_field(i8* %"$execptr_load_79", [20 x i8]* %"$bar_addr_80", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_78", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i32 0, i8* null, i32 1), !dbg !14
  %"$bar_82" = bitcast i8* %"$bar_call_81" to [32 x i8]*
  %"$bar_83" = load [32 x i8], [32 x i8]* %"$bar_82", align 1
  store [32 x i8] %"$bar_83", [32 x i8]* %bar, align 1
  %"$_literal_cost_bar_84" = alloca [32 x i8], align 1
  %"$bar_85" = load [32 x i8], [32 x i8]* %bar, align 1
  store [32 x i8] %"$bar_85", [32 x i8]* %"$_literal_cost_bar_84", align 1
  %"$$_literal_cost_bar_84_86" = bitcast [32 x i8]* %"$_literal_cost_bar_84" to i8*
  %"$_literal_cost_call_87" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i8* %"$$_literal_cost_bar_84_86")
  %"$gasadd_88" = add i64 %"$_literal_cost_call_87", 0
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 %"$gasadd_88", %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %entry
  %"$consume_93" = sub i64 %"$gasrem_89", %"$gasadd_88"
  store i64 %"$consume_93", i64* @_gasrem, align 8
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$have_gas_92"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$have_gas_92"
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !15, metadata !DIExpression()), !dbg !18
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  %"$msgobj_104_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_104_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_104_salloc_load", i64 97)
  %"$msgobj_104_salloc" = bitcast i8* %"$msgobj_104_salloc_salloc" to [97 x i8]*
  %"$msgobj_104" = bitcast [97 x i8]* %"$msgobj_104_salloc" to i8*
  store i8 2, i8* %"$msgobj_104", align 1
  %"$msgobj_fname_106" = getelementptr i8, i8* %"$msgobj_104", i32 1
  %"$msgobj_fname_107" = bitcast i8* %"$msgobj_fname_106" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_105", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_107", align 8
  %"$msgobj_td_108" = getelementptr i8, i8* %"$msgobj_104", i32 17
  %"$msgobj_td_109" = bitcast i8* %"$msgobj_td_108" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_109", align 8
  %"$msgobj_v_111" = getelementptr i8, i8* %"$msgobj_104", i32 25
  %"$msgobj_v_112" = bitcast i8* %"$msgobj_v_111" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_110", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_112", align 8
  %"$msgobj_fname_114" = getelementptr i8, i8* %"$msgobj_104", i32 41
  %"$msgobj_fname_115" = bitcast i8* %"$msgobj_fname_114" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_113", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_115", align 8
  %"$msgobj_td_116" = getelementptr i8, i8* %"$msgobj_104", i32 57
  %"$msgobj_td_117" = bitcast i8* %"$msgobj_td_116" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", %_TyDescrTy_Typ** %"$msgobj_td_117", align 8
  %"$bar_118" = load [32 x i8], [32 x i8]* %bar, align 1
  %"$msgobj_v_119" = getelementptr i8, i8* %"$msgobj_104", i32 65
  %"$msgobj_v_120" = bitcast i8* %"$msgobj_v_119" to [32 x i8]*
  store [32 x i8] %"$bar_118", [32 x i8]* %"$msgobj_v_120", align 1
  store i8* %"$msgobj_104", i8** %e, align 8, !dbg !19
  %"$e_122" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_124" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_122")
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 %"$_literal_cost_call_124", %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_102"
  %"$consume_129" = sub i64 %"$gasrem_125", %"$_literal_cost_call_124"
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %"$execptr_load_130" = load i8*, i8** @_execptr, align 8
  %"$e_131" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_130", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_131"), !dbg !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @foo(i8* %0) !dbg !21 {
entry:
  %"$_amount_133" = getelementptr i8, i8* %0, i32 0
  %"$_amount_134" = bitcast i8* %"$_amount_133" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_134", align 8
  %"$_origin_135" = getelementptr i8, i8* %0, i32 16
  %"$_origin_136" = bitcast i8* %"$_origin_135" to [20 x i8]*
  %"$_sender_137" = getelementptr i8, i8* %0, i32 36
  %"$_sender_138" = bitcast i8* %"$_sender_137" to [20 x i8]*
  %"$addr_139" = getelementptr i8, i8* %0, i32 56
  %"$addr_140" = bitcast i8* %"$addr_139" to [20 x i8]*
  call void @"$foo_74"(%Uint128 %_amount, [20 x i8]* %"$_origin_136", [20 x i8]* %"$_sender_138", [20 x i8]* %"$addr_140"), !dbg !22
  ret void
}

define internal void @"$foo2_141"(%Uint128 %_amount, [20 x i8]* %"$_origin_142", [20 x i8]* %"$_sender_143", [20 x i8]* %"$addr_144") !dbg !23 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_142", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_143", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_144", align 1
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 2, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %entry
  %"$consume_149" = sub i64 %"$gasrem_145", 2
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %addr_ = alloca %TName_Option_ByStr20_with__codehash_end*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20_with__codehash_end** %addr_, metadata !24, metadata !DIExpression()), !dbg !27
  %"$execptr_load_150" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_addr_151" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$_dynamic_typecast_addr_151", align 1
  %"$_dynamic_typecast_call_152" = call i8* @_dynamic_typecast(i8* %"$execptr_load_150", [20 x i8]* %"$_dynamic_typecast_addr_151", %_TyDescrTy_Typ* @"$TyDescr_Addr_45"), !dbg !27
  %"$_dynamic_typecast_153" = bitcast i8* %"$_dynamic_typecast_call_152" to %TName_Option_ByStr20_with__codehash_end*
  store %TName_Option_ByStr20_with__codehash_end* %"$_dynamic_typecast_153", %TName_Option_ByStr20_with__codehash_end** %addr_, align 8, !dbg !27
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 2, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_148"
  %"$consume_158" = sub i64 %"$gasrem_154", 2
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %"$addr__160" = load %TName_Option_ByStr20_with__codehash_end*, %TName_Option_ByStr20_with__codehash_end** %addr_, align 8
  %"$addr__tag_161" = getelementptr inbounds %TName_Option_ByStr20_with__codehash_end, %TName_Option_ByStr20_with__codehash_end* %"$addr__160", i32 0, i32 0
  %"$addr__tag_162" = load i8, i8* %"$addr__tag_161", align 1
  switch i8 %"$addr__tag_162", label %"$empty_default_163" [
    i8 0, label %"$Some_164"
    i8 1, label %"$None_223"
  ], !dbg !28

"$Some_164":                                      ; preds = %"$have_gas_157"
  %"$addr__165" = bitcast %TName_Option_ByStr20_with__codehash_end* %"$addr__160" to %CName_Some_ByStr20_with__codehash_end*
  %"$addr___gep_166" = getelementptr inbounds %CName_Some_ByStr20_with__codehash_end, %CName_Some_ByStr20_with__codehash_end* %"$addr__165", i32 0, i32 1
  %"$addr___load_167" = load [20 x i8], [20 x i8]* %"$addr___gep_166", align 1
  %addr__ = alloca [20 x i8], align 1
  store [20 x i8] %"$addr___load_167", [20 x i8]* %addr__, align 1
  %bar = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %bar, metadata !29, metadata !DIExpression()), !dbg !32
  %"$execptr_load_169" = load i8*, i8** @_execptr, align 8
  %"$bar_addr___170" = alloca [20 x i8], align 1
  %"$addr___171" = load [20 x i8], [20 x i8]* %addr__, align 1
  store [20 x i8] %"$addr___171", [20 x i8]* %"$bar_addr___170", align 1
  %"$bar_call_172" = call i8* @_fetch_remote_field(i8* %"$execptr_load_169", [20 x i8]* %"$bar_addr___170", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_168", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i32 0, i8* null, i32 1), !dbg !32
  %"$bar_173" = bitcast i8* %"$bar_call_172" to [32 x i8]*
  %"$bar_174" = load [32 x i8], [32 x i8]* %"$bar_173", align 1
  store [32 x i8] %"$bar_174", [32 x i8]* %bar, align 1
  %"$_literal_cost_bar_175" = alloca [32 x i8], align 1
  %"$bar_176" = load [32 x i8], [32 x i8]* %bar, align 1
  store [32 x i8] %"$bar_176", [32 x i8]* %"$_literal_cost_bar_175", align 1
  %"$$_literal_cost_bar_175_177" = bitcast [32 x i8]* %"$_literal_cost_bar_175" to i8*
  %"$_literal_cost_call_178" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i8* %"$$_literal_cost_bar_175_177")
  %"$gasadd_179" = add i64 %"$_literal_cost_call_178", 0
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 %"$gasadd_179", %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$Some_164"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$Some_164"
  %"$consume_184" = sub i64 %"$gasrem_180", %"$gasadd_179"
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_183"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !33, metadata !DIExpression()), !dbg !34
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$have_gas_188"
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %"$msgobj_195_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_195_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_195_salloc_load", i64 97)
  %"$msgobj_195_salloc" = bitcast i8* %"$msgobj_195_salloc_salloc" to [97 x i8]*
  %"$msgobj_195" = bitcast [97 x i8]* %"$msgobj_195_salloc" to i8*
  store i8 2, i8* %"$msgobj_195", align 1
  %"$msgobj_fname_197" = getelementptr i8, i8* %"$msgobj_195", i32 1
  %"$msgobj_fname_198" = bitcast i8* %"$msgobj_fname_197" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_196", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_198", align 8
  %"$msgobj_td_199" = getelementptr i8, i8* %"$msgobj_195", i32 17
  %"$msgobj_td_200" = bitcast i8* %"$msgobj_td_199" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_200", align 8
  %"$msgobj_v_202" = getelementptr i8, i8* %"$msgobj_195", i32 25
  %"$msgobj_v_203" = bitcast i8* %"$msgobj_v_202" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_201", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_203", align 8
  %"$msgobj_fname_205" = getelementptr i8, i8* %"$msgobj_195", i32 41
  %"$msgobj_fname_206" = bitcast i8* %"$msgobj_fname_205" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_204", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_206", align 8
  %"$msgobj_td_207" = getelementptr i8, i8* %"$msgobj_195", i32 57
  %"$msgobj_td_208" = bitcast i8* %"$msgobj_td_207" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", %_TyDescrTy_Typ** %"$msgobj_td_208", align 8
  %"$bar_209" = load [32 x i8], [32 x i8]* %bar, align 1
  %"$msgobj_v_210" = getelementptr i8, i8* %"$msgobj_195", i32 65
  %"$msgobj_v_211" = bitcast i8* %"$msgobj_v_210" to [32 x i8]*
  store [32 x i8] %"$bar_209", [32 x i8]* %"$msgobj_v_211", align 1
  store i8* %"$msgobj_195", i8** %e, align 8, !dbg !35
  %"$e_213" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_215" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_213")
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 %"$_literal_cost_call_215", %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_193"
  %"$consume_220" = sub i64 %"$gasrem_216", %"$_literal_cost_call_215"
  store i64 %"$consume_220", i64* @_gasrem, align 8
  %"$execptr_load_221" = load i8*, i8** @_execptr, align 8
  %"$e_222" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_221", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_222"), !dbg !36
  br label %"$matchsucc_159"

"$None_223":                                      ; preds = %"$have_gas_157"
  %"$addr__224" = bitcast %TName_Option_ByStr20_with__codehash_end* %"$addr__160" to %CName_None_ByStr20_with__codehash_end*
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$None_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$None_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e1, metadata !37, metadata !DIExpression()), !dbg !39
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_228"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %"$msgobj_235_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_235_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_235_salloc_load", i64 41)
  %"$msgobj_235_salloc" = bitcast i8* %"$msgobj_235_salloc_salloc" to [41 x i8]*
  %"$msgobj_235" = bitcast [41 x i8]* %"$msgobj_235_salloc" to i8*
  store i8 1, i8* %"$msgobj_235", align 1
  %"$msgobj_fname_237" = getelementptr i8, i8* %"$msgobj_235", i32 1
  %"$msgobj_fname_238" = bitcast i8* %"$msgobj_fname_237" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_236", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_238", align 8
  %"$msgobj_td_239" = getelementptr i8, i8* %"$msgobj_235", i32 17
  %"$msgobj_td_240" = bitcast i8* %"$msgobj_td_239" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_240", align 8
  %"$msgobj_v_242" = getelementptr i8, i8* %"$msgobj_235", i32 25
  %"$msgobj_v_243" = bitcast i8* %"$msgobj_v_242" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_241", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_243", align 8
  store i8* %"$msgobj_235", i8** %e1, align 8, !dbg !40
  %"$e_245" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_247" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_245")
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 %"$_literal_cost_call_247", %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_233"
  %"$consume_252" = sub i64 %"$gasrem_248", %"$_literal_cost_call_247"
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$execptr_load_253" = load i8*, i8** @_execptr, align 8
  %"$e_254" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_253", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_254"), !dbg !41
  br label %"$matchsucc_159"

"$empty_default_163":                             ; preds = %"$have_gas_157"
  br label %"$matchsucc_159"

"$matchsucc_159":                                 ; preds = %"$have_gas_251", %"$have_gas_219", %"$empty_default_163"
  ret void
}

declare i8* @_dynamic_typecast(i8*, [20 x i8]*, %_TyDescrTy_Typ*)

define void @foo2(i8* %0) !dbg !42 {
entry:
  %"$_amount_256" = getelementptr i8, i8* %0, i32 0
  %"$_amount_257" = bitcast i8* %"$_amount_256" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_257", align 8
  %"$_origin_258" = getelementptr i8, i8* %0, i32 16
  %"$_origin_259" = bitcast i8* %"$_origin_258" to [20 x i8]*
  %"$_sender_260" = getelementptr i8, i8* %0, i32 36
  %"$_sender_261" = bitcast i8* %"$_sender_260" to [20 x i8]*
  %"$addr_262" = getelementptr i8, i8* %0, i32 56
  %"$addr_263" = bitcast i8* %"$addr_262" to [20 x i8]*
  call void @"$foo2_141"(%Uint128 %_amount, [20 x i8]* %"$_origin_259", [20 x i8]* %"$_sender_261", [20 x i8]* %"$addr_263"), !dbg !43
  ret void
}

define internal void @"$foo3_264"(%Uint128 %_amount, [20 x i8]* %"$_origin_265", [20 x i8]* %"$_sender_266", [20 x i8]* %"$addr_267") !dbg !44 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_265", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_266", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_267", align 1
  %bar = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %bar, metadata !45, metadata !DIExpression()), !dbg !46
  %"$execptr_load_269" = load i8*, i8** @_execptr, align 8
  %"$bar_addr_270" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$bar_addr_270", align 1
  %"$bar_call_271" = call i8* @_fetch_remote_field(i8* %"$execptr_load_269", [20 x i8]* %"$bar_addr_270", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_268", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i32 0, i8* null, i32 1), !dbg !46
  %"$bar_272" = bitcast i8* %"$bar_call_271" to [32 x i8]*
  %"$bar_273" = load [32 x i8], [32 x i8]* %"$bar_272", align 1
  store [32 x i8] %"$bar_273", [32 x i8]* %bar, align 1
  %"$_literal_cost_bar_274" = alloca [32 x i8], align 1
  %"$bar_275" = load [32 x i8], [32 x i8]* %bar, align 1
  store [32 x i8] %"$bar_275", [32 x i8]* %"$_literal_cost_bar_274", align 1
  %"$$_literal_cost_bar_274_276" = bitcast [32 x i8]* %"$_literal_cost_bar_274" to i8*
  %"$_literal_cost_call_277" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i8* %"$$_literal_cost_bar_274_276")
  %"$gasadd_278" = add i64 %"$_literal_cost_call_277", 0
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 %"$gasadd_278", %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %entry
  %"$consume_283" = sub i64 %"$gasrem_279", %"$gasadd_278"
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_282"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !47, metadata !DIExpression()), !dbg !48
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$msgobj_294_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_294_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_294_salloc_load", i64 97)
  %"$msgobj_294_salloc" = bitcast i8* %"$msgobj_294_salloc_salloc" to [97 x i8]*
  %"$msgobj_294" = bitcast [97 x i8]* %"$msgobj_294_salloc" to i8*
  store i8 2, i8* %"$msgobj_294", align 1
  %"$msgobj_fname_296" = getelementptr i8, i8* %"$msgobj_294", i32 1
  %"$msgobj_fname_297" = bitcast i8* %"$msgobj_fname_296" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_295", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_297", align 8
  %"$msgobj_td_298" = getelementptr i8, i8* %"$msgobj_294", i32 17
  %"$msgobj_td_299" = bitcast i8* %"$msgobj_td_298" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_299", align 8
  %"$msgobj_v_301" = getelementptr i8, i8* %"$msgobj_294", i32 25
  %"$msgobj_v_302" = bitcast i8* %"$msgobj_v_301" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_300", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_302", align 8
  %"$msgobj_fname_304" = getelementptr i8, i8* %"$msgobj_294", i32 41
  %"$msgobj_fname_305" = bitcast i8* %"$msgobj_fname_304" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_303", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_305", align 8
  %"$msgobj_td_306" = getelementptr i8, i8* %"$msgobj_294", i32 57
  %"$msgobj_td_307" = bitcast i8* %"$msgobj_td_306" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", %_TyDescrTy_Typ** %"$msgobj_td_307", align 8
  %"$bar_308" = load [32 x i8], [32 x i8]* %bar, align 1
  %"$msgobj_v_309" = getelementptr i8, i8* %"$msgobj_294", i32 65
  %"$msgobj_v_310" = bitcast i8* %"$msgobj_v_309" to [32 x i8]*
  store [32 x i8] %"$bar_308", [32 x i8]* %"$msgobj_v_310", align 1
  store i8* %"$msgobj_294", i8** %e, align 8, !dbg !49
  %"$e_312" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_314" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_312")
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 %"$_literal_cost_call_314", %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_292"
  %"$consume_319" = sub i64 %"$gasrem_315", %"$_literal_cost_call_314"
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %"$execptr_load_320" = load i8*, i8** @_execptr, align 8
  %"$e_321" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_320", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_321"), !dbg !50
  ret void
}

define void @foo3(i8* %0) !dbg !51 {
entry:
  %"$_amount_323" = getelementptr i8, i8* %0, i32 0
  %"$_amount_324" = bitcast i8* %"$_amount_323" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_324", align 8
  %"$_origin_325" = getelementptr i8, i8* %0, i32 16
  %"$_origin_326" = bitcast i8* %"$_origin_325" to [20 x i8]*
  %"$_sender_327" = getelementptr i8, i8* %0, i32 36
  %"$_sender_328" = bitcast i8* %"$_sender_327" to [20 x i8]*
  %"$addr_329" = getelementptr i8, i8* %0, i32 56
  %"$addr_330" = bitcast i8* %"$addr_329" to [20 x i8]*
  call void @"$foo3_264"(%Uint128 %_amount, [20 x i8]* %"$_origin_326", [20 x i8]* %"$_sender_328", [20 x i8]* %"$addr_330"), !dbg !52
  ret void
}

define internal void @"$foo4_331"(%Uint128 %_amount, [20 x i8]* %"$_origin_332", [20 x i8]* %"$_sender_333", [20 x i8]* %"$addr_334") !dbg !53 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_332", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_333", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_334", align 1
  %bar = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %bar, metadata !54, metadata !DIExpression()), !dbg !55
  %"$execptr_load_336" = load i8*, i8** @_execptr, align 8
  %"$bar_addr_337" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$bar_addr_337", align 1
  %"$bar_call_338" = call i8* @_fetch_remote_field(i8* %"$execptr_load_336", [20 x i8]* %"$bar_addr_337", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_335", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i32 0, i8* null, i32 1), !dbg !55
  %"$bar_339" = bitcast i8* %"$bar_call_338" to [32 x i8]*
  %"$bar_340" = load [32 x i8], [32 x i8]* %"$bar_339", align 1
  store [32 x i8] %"$bar_340", [32 x i8]* %bar, align 1
  %"$_literal_cost_bar_341" = alloca [32 x i8], align 1
  %"$bar_342" = load [32 x i8], [32 x i8]* %bar, align 1
  store [32 x i8] %"$bar_342", [32 x i8]* %"$_literal_cost_bar_341", align 1
  %"$$_literal_cost_bar_341_343" = bitcast [32 x i8]* %"$_literal_cost_bar_341" to i8*
  %"$_literal_cost_call_344" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i8* %"$$_literal_cost_bar_341_343")
  %"$gasadd_345" = add i64 %"$_literal_cost_call_344", 0
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 %"$gasadd_345", %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %entry
  %"$consume_350" = sub i64 %"$gasrem_346", %"$gasadd_345"
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_349"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !56, metadata !DIExpression()), !dbg !57
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_354"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$msgobj_361_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_361_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_361_salloc_load", i64 97)
  %"$msgobj_361_salloc" = bitcast i8* %"$msgobj_361_salloc_salloc" to [97 x i8]*
  %"$msgobj_361" = bitcast [97 x i8]* %"$msgobj_361_salloc" to i8*
  store i8 2, i8* %"$msgobj_361", align 1
  %"$msgobj_fname_363" = getelementptr i8, i8* %"$msgobj_361", i32 1
  %"$msgobj_fname_364" = bitcast i8* %"$msgobj_fname_363" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_362", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_364", align 8
  %"$msgobj_td_365" = getelementptr i8, i8* %"$msgobj_361", i32 17
  %"$msgobj_td_366" = bitcast i8* %"$msgobj_td_365" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_366", align 8
  %"$msgobj_v_368" = getelementptr i8, i8* %"$msgobj_361", i32 25
  %"$msgobj_v_369" = bitcast i8* %"$msgobj_v_368" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_367", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_369", align 8
  %"$msgobj_fname_371" = getelementptr i8, i8* %"$msgobj_361", i32 41
  %"$msgobj_fname_372" = bitcast i8* %"$msgobj_fname_371" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_370", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_372", align 8
  %"$msgobj_td_373" = getelementptr i8, i8* %"$msgobj_361", i32 57
  %"$msgobj_td_374" = bitcast i8* %"$msgobj_td_373" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", %_TyDescrTy_Typ** %"$msgobj_td_374", align 8
  %"$bar_375" = load [32 x i8], [32 x i8]* %bar, align 1
  %"$msgobj_v_376" = getelementptr i8, i8* %"$msgobj_361", i32 65
  %"$msgobj_v_377" = bitcast i8* %"$msgobj_v_376" to [32 x i8]*
  store [32 x i8] %"$bar_375", [32 x i8]* %"$msgobj_v_377", align 1
  store i8* %"$msgobj_361", i8** %e, align 8, !dbg !58
  %"$e_379" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_381" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_379")
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 %"$_literal_cost_call_381", %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_359"
  %"$consume_386" = sub i64 %"$gasrem_382", %"$_literal_cost_call_381"
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %"$execptr_load_387" = load i8*, i8** @_execptr, align 8
  %"$e_388" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_387", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_388"), !dbg !59
  ret void
}

define void @foo4(i8* %0) !dbg !60 {
entry:
  %"$_amount_390" = getelementptr i8, i8* %0, i32 0
  %"$_amount_391" = bitcast i8* %"$_amount_390" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_391", align 8
  %"$_origin_392" = getelementptr i8, i8* %0, i32 16
  %"$_origin_393" = bitcast i8* %"$_origin_392" to [20 x i8]*
  %"$_sender_394" = getelementptr i8, i8* %0, i32 36
  %"$_sender_395" = bitcast i8* %"$_sender_394" to [20 x i8]*
  %"$addr_396" = getelementptr i8, i8* %0, i32 56
  %"$addr_397" = bitcast i8* %"$addr_396" to [20 x i8]*
  call void @"$foo4_331"(%Uint128 %_amount, [20 x i8]* %"$_origin_393", [20 x i8]* %"$_sender_395", [20 x i8]* %"$addr_397"), !dbg !61
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "codehash.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = distinct !DISubprogram(name: "foo", linkageName: "foo", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!12 = !DILocalVariable(name: "bar", scope: !11, file: !2, line: 6, type: !13)
!13 = !DIBasicType(name: "ByStr32", size: 32)
!14 = !DILocation(line: 6, column: 3, scope: !11)
!15 = !DILocalVariable(name: "e", scope: !11, file: !2, line: 7, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !17, size: 8, align: 8, dwarfAddressSpace: 0)
!17 = !DIBasicType(name: "Event", size: 8)
!18 = !DILocation(line: 7, column: 3, scope: !11)
!19 = !DILocation(line: 7, column: 7, scope: !11)
!20 = !DILocation(line: 8, column: 3, scope: !11)
!21 = distinct !DISubprogram(name: "foo", linkageName: "foo", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!22 = !DILocation(line: 5, column: 12, scope: !21)
!23 = distinct !DISubprogram(name: "foo2", linkageName: "foo2", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!24 = !DILocalVariable(name: "addr_", scope: !23, file: !2, line: 12, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (ByStr20 with _codehash end)", baseType: !26, size: 8, align: 8, dwarfAddressSpace: 0)
!26 = !DIBasicType(name: "Option (ByStr20 with _codehash end)", size: 8)
!27 = !DILocation(line: 12, column: 3, scope: !23)
!28 = !DILocation(line: 13, column: 3, scope: !23)
!29 = !DILocalVariable(name: "bar", scope: !30, file: !2, line: 15, type: !13)
!30 = distinct !DILexicalBlock(scope: !31, file: !2, line: 14, column: 5)
!31 = distinct !DILexicalBlock(scope: !23, file: !2, line: 13, column: 3)
!32 = !DILocation(line: 15, column: 5, scope: !30)
!33 = !DILocalVariable(name: "e", scope: !30, file: !2, line: 16, type: !16)
!34 = !DILocation(line: 16, column: 5, scope: !30)
!35 = !DILocation(line: 16, column: 9, scope: !30)
!36 = !DILocation(line: 17, column: 5, scope: !30)
!37 = !DILocalVariable(name: "e", scope: !38, file: !2, line: 19, type: !16)
!38 = distinct !DILexicalBlock(scope: !31, file: !2, line: 18, column: 5)
!39 = !DILocation(line: 19, column: 5, scope: !38)
!40 = !DILocation(line: 19, column: 9, scope: !38)
!41 = !DILocation(line: 20, column: 5, scope: !38)
!42 = distinct !DISubprogram(name: "foo2", linkageName: "foo2", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!43 = !DILocation(line: 11, column: 12, scope: !42)
!44 = distinct !DISubprogram(name: "foo3", linkageName: "foo3", scope: !2, file: !2, line: 24, type: !5, scopeLine: 24, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!45 = !DILocalVariable(name: "bar", scope: !44, file: !2, line: 25, type: !13)
!46 = !DILocation(line: 25, column: 3, scope: !44)
!47 = !DILocalVariable(name: "e", scope: !44, file: !2, line: 26, type: !16)
!48 = !DILocation(line: 26, column: 3, scope: !44)
!49 = !DILocation(line: 26, column: 7, scope: !44)
!50 = !DILocation(line: 27, column: 3, scope: !44)
!51 = distinct !DISubprogram(name: "foo3", linkageName: "foo3", scope: !2, file: !2, line: 24, type: !5, scopeLine: 24, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!52 = !DILocation(line: 24, column: 12, scope: !51)
!53 = distinct !DISubprogram(name: "foo4", linkageName: "foo4", scope: !2, file: !2, line: 30, type: !5, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!54 = !DILocalVariable(name: "bar", scope: !53, file: !2, line: 31, type: !13)
!55 = !DILocation(line: 31, column: 3, scope: !53)
!56 = !DILocalVariable(name: "e", scope: !53, file: !2, line: 32, type: !16)
!57 = !DILocation(line: 32, column: 3, scope: !53)
!58 = !DILocation(line: 32, column: 7, scope: !53)
!59 = !DILocation(line: 33, column: 3, scope: !53)
!60 = distinct !DISubprogram(name: "foo4", linkageName: "foo4", scope: !2, file: !2, line: 30, type: !5, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!61 = !DILocation(line: 30, column: 12, scope: !60)
