

; gas_remaining: 4001999
; ModuleID = 'Codehash'
source_filename = "Codehash"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_35" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_34"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_34" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_36"**, %"$TyDescrTy_ADTTyp_35"* }
%"$TyDescrTy_ADTTyp_Constr_36" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrFieldTyp_39" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_40" = type { i32, %"$TyDescr_AddrFieldTyp_39"* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_396" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_397" = type { %ParamDescrString, i32, %"$ParamDescr_396"* }
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
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_Bystr32_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 32 }
@"$TyDescr_Bystr32_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr32_Prim_30" to i8*) }
@"$TyDescr_Bystr20_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_32" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with__codehash_end_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_54" to i8*) }
@"$TyDescr_Addr_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_40"* @"$TyDescr_AddrFields_58" to i8*) }
@"$TyDescr_Addr_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_40"* @"$TyDescr_AddrFields_59" to i8*) }
@"$TyDescr_Addr_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_40"* @"$TyDescr_AddrFields_60" to i8*) }
@"$TyDescr_Addr_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_40"* @"$TyDescr_AddrFields_61" to i8*) }
@"$TyDescr_Option_ADTTyp_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_35" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_56", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_34"*], [1 x %"$TyDescrTy_ADTTyp_Specl_34"*]* @"$TyDescr_Option_ADTTyp_m_specls_55", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr20_with__codehash_end_Constr_m_args_46" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_43"]
@"$TyDescr_ADT_Some_47" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with__codehash_end_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_47", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with__codehash_end_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with__codehash_end_Constr_m_args_49" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_50" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with__codehash_end_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_50", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with__codehash_end_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_m_constrs_52" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_Some_ByStr20_with__codehash_end_ADTTyp_Constr_48", %"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_None_ByStr20_with__codehash_end_ADTTyp_Constr_51"]
@"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_m_TArgs_53" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_43"]
@"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_m_TArgs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_36"*], [2 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_m_constrs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Option_ADTTyp_45" }
@"$TyDescr_Option_ADTTyp_m_specls_55" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_34"*] [%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_ByStr20_with__codehash_end_ADTTyp_Specl_54"]
@"$TyDescr_ADT_Option_56" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_AddrFields_57" = unnamed_addr constant [0 x %"$TyDescr_AddrFieldTyp_39"] zeroinitializer
@"$TyDescr_AddrFields_58" = unnamed_addr constant %"$TyDescr_AddrTyp_40" { i32 0, %"$TyDescr_AddrFieldTyp_39"* getelementptr inbounds ([0 x %"$TyDescr_AddrFieldTyp_39"], [0 x %"$TyDescr_AddrFieldTyp_39"]* @"$TyDescr_AddrFields_57", i32 0, i32 0) }
@"$TyDescr_AddrFields_59" = unnamed_addr constant %"$TyDescr_AddrTyp_40" { i32 -1, %"$TyDescr_AddrFieldTyp_39"* null }
@"$TyDescr_AddrFields_60" = unnamed_addr constant %"$TyDescr_AddrTyp_40" { i32 -2, %"$TyDescr_AddrFieldTyp_39"* null }
@"$TyDescr_AddrFields_61" = unnamed_addr constant %"$TyDescr_AddrTyp_40" { i32 -3, %"$TyDescr_AddrFieldTyp_39"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$_codehash_76" = unnamed_addr constant [10 x i8] c"_codehash\00"
@"$stringlit_103" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_108" = unnamed_addr constant [7 x i8] c"Success"
@"$stringlit_111" = unnamed_addr constant [3 x i8] c"bar"
@"$_codehash_166" = unnamed_addr constant [10 x i8] c"_codehash\00"
@"$stringlit_194" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_199" = unnamed_addr constant [7 x i8] c"Success"
@"$stringlit_202" = unnamed_addr constant [3 x i8] c"bar"
@"$stringlit_234" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_239" = unnamed_addr constant [7 x i8] c"Failure"
@"$_codehash_266" = unnamed_addr constant [10 x i8] c"_codehash\00"
@"$stringlit_293" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_298" = unnamed_addr constant [7 x i8] c"Success"
@"$stringlit_301" = unnamed_addr constant [3 x i8] c"bar"
@"$_codehash_333" = unnamed_addr constant [10 x i8] c"_codehash\00"
@"$stringlit_360" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_365" = unnamed_addr constant [7 x i8] c"Success"
@"$stringlit_368" = unnamed_addr constant [3 x i8] c"bar"
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with__codehash_end_37", %_TyDescrTy_Typ* @"$TyDescr_Addr_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 21
@"$pname__scilla_version_398" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_399" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_400" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_396"] [%"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_398", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_399", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_400", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_401" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_402" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_403" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_404" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo_405" = unnamed_addr constant [4 x %"$ParamDescr_396"] [%"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_401", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_402", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_403", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_404", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_foo_406" = unnamed_addr constant [3 x i8] c"foo"
@"$tpname__amount_407" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_408" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_409" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_410" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo2_411" = unnamed_addr constant [4 x %"$ParamDescr_396"] [%"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_407", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_408", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_409", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_410", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_33" }]
@"$tname_foo2_412" = unnamed_addr constant [4 x i8] c"foo2"
@"$tpname__amount_413" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_414" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_415" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_416" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo3_417" = unnamed_addr constant [4 x %"$ParamDescr_396"] [%"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_413", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_414", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_415", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_416", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }]
@"$tname_foo3_418" = unnamed_addr constant [4 x i8] c"foo3"
@"$tpname__amount_419" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_420" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_421" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_422" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo4_423" = unnamed_addr constant [4 x %"$ParamDescr_396"] [%"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_419", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_420", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_421", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_422", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_foo4_424" = unnamed_addr constant [4 x i8] c"foo4"
@_transition_parameters = constant [4 x %"$TransDescr_397"] [%"$TransDescr_397" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_foo_406", i32 0, i32 0), i32 3 }, i32 4, %"$ParamDescr_396"* getelementptr inbounds ([4 x %"$ParamDescr_396"], [4 x %"$ParamDescr_396"]* @"$tparams_foo_405", i32 0, i32 0) }, %"$TransDescr_397" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_foo2_412", i32 0, i32 0), i32 4 }, i32 4, %"$ParamDescr_396"* getelementptr inbounds ([4 x %"$ParamDescr_396"], [4 x %"$ParamDescr_396"]* @"$tparams_foo2_411", i32 0, i32 0) }, %"$TransDescr_397" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_foo3_418", i32 0, i32 0), i32 4 }, i32 4, %"$ParamDescr_396"* getelementptr inbounds ([4 x %"$ParamDescr_396"], [4 x %"$ParamDescr_396"]* @"$tparams_foo3_417", i32 0, i32 0) }, %"$TransDescr_397" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_foo4_424", i32 0, i32 0), i32 4 }, i32 4, %"$ParamDescr_396"* getelementptr inbounds ([4 x %"$ParamDescr_396"], [4 x %"$ParamDescr_396"]* @"$tparams_foo4_423", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 4

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 5, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %entry
  %"$consume_66" = sub i64 %"$gasrem_62", 5
  store i64 %"$consume_66", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 1, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %entry
  %"$consume_71" = sub i64 %"$gasrem_67", 1
  store i64 %"$consume_71", i64* @_gasrem, align 8
  ret void
}

define internal void @"$foo_72"(%Uint128 %_amount, [20 x i8]* %"$_origin_73", [20 x i8]* %"$_sender_74", [20 x i8]* %"$addr_75") !dbg !11 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_73", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_74", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_75", align 1
  %bar = alloca [32 x i8], align 1
  %"$execptr_load_77" = load i8*, i8** @_execptr, align 8
  %"$bar_addr_78" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$bar_addr_78", align 1
  %"$bar_call_79" = call i8* @_fetch_remote_field(i8* %"$execptr_load_77", [20 x i8]* %"$bar_addr_78", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_76", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i32 0, i8* null, i32 1), !dbg !12
  %"$bar_80" = bitcast i8* %"$bar_call_79" to [32 x i8]*
  %"$bar_81" = load [32 x i8], [32 x i8]* %"$bar_80", align 1
  store [32 x i8] %"$bar_81", [32 x i8]* %bar, align 1
  %"$_literal_cost_bar_82" = alloca [32 x i8], align 1
  %"$bar_83" = load [32 x i8], [32 x i8]* %bar, align 1
  store [32 x i8] %"$bar_83", [32 x i8]* %"$_literal_cost_bar_82", align 1
  %"$$_literal_cost_bar_82_84" = bitcast [32 x i8]* %"$_literal_cost_bar_82" to i8*
  %"$_literal_cost_call_85" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i8* %"$$_literal_cost_bar_82_84")
  %"$gasadd_86" = add i64 %"$_literal_cost_call_85", 0
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 %"$gasadd_86", %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %entry
  %"$consume_91" = sub i64 %"$gasrem_87", %"$gasadd_86"
  store i64 %"$consume_91", i64* @_gasrem, align 8
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %"$msgobj_102_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_102_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_102_salloc_load", i64 97)
  %"$msgobj_102_salloc" = bitcast i8* %"$msgobj_102_salloc_salloc" to [97 x i8]*
  %"$msgobj_102" = bitcast [97 x i8]* %"$msgobj_102_salloc" to i8*
  store i8 2, i8* %"$msgobj_102", align 1
  %"$msgobj_fname_104" = getelementptr i8, i8* %"$msgobj_102", i32 1
  %"$msgobj_fname_105" = bitcast i8* %"$msgobj_fname_104" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_103", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_105", align 8
  %"$msgobj_td_106" = getelementptr i8, i8* %"$msgobj_102", i32 17
  %"$msgobj_td_107" = bitcast i8* %"$msgobj_td_106" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_107", align 8
  %"$msgobj_v_109" = getelementptr i8, i8* %"$msgobj_102", i32 25
  %"$msgobj_v_110" = bitcast i8* %"$msgobj_v_109" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_108", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_110", align 8
  %"$msgobj_fname_112" = getelementptr i8, i8* %"$msgobj_102", i32 41
  %"$msgobj_fname_113" = bitcast i8* %"$msgobj_fname_112" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_111", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_113", align 8
  %"$msgobj_td_114" = getelementptr i8, i8* %"$msgobj_102", i32 57
  %"$msgobj_td_115" = bitcast i8* %"$msgobj_td_114" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", %_TyDescrTy_Typ** %"$msgobj_td_115", align 8
  %"$bar_116" = load [32 x i8], [32 x i8]* %bar, align 1
  %"$msgobj_v_117" = getelementptr i8, i8* %"$msgobj_102", i32 65
  %"$msgobj_v_118" = bitcast i8* %"$msgobj_v_117" to [32 x i8]*
  store [32 x i8] %"$bar_116", [32 x i8]* %"$msgobj_v_118", align 1
  store i8* %"$msgobj_102", i8** %e, align 8, !dbg !13
  %"$e_120" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_122" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_120")
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 %"$_literal_cost_call_122", %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_100"
  %"$consume_127" = sub i64 %"$gasrem_123", %"$_literal_cost_call_122"
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %"$execptr_load_128" = load i8*, i8** @_execptr, align 8
  %"$e_129" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_128", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_129"), !dbg !14
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @foo(i8* %0) !dbg !15 {
entry:
  %"$_amount_131" = getelementptr i8, i8* %0, i32 0
  %"$_amount_132" = bitcast i8* %"$_amount_131" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_132", align 8
  %"$_origin_133" = getelementptr i8, i8* %0, i32 16
  %"$_origin_134" = bitcast i8* %"$_origin_133" to [20 x i8]*
  %"$_sender_135" = getelementptr i8, i8* %0, i32 36
  %"$_sender_136" = bitcast i8* %"$_sender_135" to [20 x i8]*
  %"$addr_137" = getelementptr i8, i8* %0, i32 56
  %"$addr_138" = bitcast i8* %"$addr_137" to [20 x i8]*
  call void @"$foo_72"(%Uint128 %_amount, [20 x i8]* %"$_origin_134", [20 x i8]* %"$_sender_136", [20 x i8]* %"$addr_138"), !dbg !16
  ret void
}

define internal void @"$foo2_139"(%Uint128 %_amount, [20 x i8]* %"$_origin_140", [20 x i8]* %"$_sender_141", [20 x i8]* %"$addr_142") !dbg !17 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_140", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_141", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_142", align 1
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 2, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %entry
  %"$consume_147" = sub i64 %"$gasrem_143", 2
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %addr_ = alloca %TName_Option_ByStr20_with__codehash_end*, align 8
  %"$execptr_load_148" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_addr_149" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$_dynamic_typecast_addr_149", align 1
  %"$_dynamic_typecast_call_150" = call i8* @_dynamic_typecast(i8* %"$execptr_load_148", [20 x i8]* %"$_dynamic_typecast_addr_149", %_TyDescrTy_Typ* @"$TyDescr_Addr_43"), !dbg !18
  %"$_dynamic_typecast_151" = bitcast i8* %"$_dynamic_typecast_call_150" to %TName_Option_ByStr20_with__codehash_end*
  store %TName_Option_ByStr20_with__codehash_end* %"$_dynamic_typecast_151", %TName_Option_ByStr20_with__codehash_end** %addr_, align 8, !dbg !18
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 2, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_146"
  %"$consume_156" = sub i64 %"$gasrem_152", 2
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$addr__158" = load %TName_Option_ByStr20_with__codehash_end*, %TName_Option_ByStr20_with__codehash_end** %addr_, align 8
  %"$addr__tag_159" = getelementptr inbounds %TName_Option_ByStr20_with__codehash_end, %TName_Option_ByStr20_with__codehash_end* %"$addr__158", i32 0, i32 0
  %"$addr__tag_160" = load i8, i8* %"$addr__tag_159", align 1
  switch i8 %"$addr__tag_160", label %"$empty_default_161" [
    i8 0, label %"$Some_162"
    i8 1, label %"$None_221"
  ], !dbg !19

"$Some_162":                                      ; preds = %"$have_gas_155"
  %"$addr__163" = bitcast %TName_Option_ByStr20_with__codehash_end* %"$addr__158" to %CName_Some_ByStr20_with__codehash_end*
  %"$addr___gep_164" = getelementptr inbounds %CName_Some_ByStr20_with__codehash_end, %CName_Some_ByStr20_with__codehash_end* %"$addr__163", i32 0, i32 1
  %"$addr___load_165" = load [20 x i8], [20 x i8]* %"$addr___gep_164", align 1
  %addr__ = alloca [20 x i8], align 1
  store [20 x i8] %"$addr___load_165", [20 x i8]* %addr__, align 1
  %bar = alloca [32 x i8], align 1
  %"$execptr_load_167" = load i8*, i8** @_execptr, align 8
  %"$bar_addr___168" = alloca [20 x i8], align 1
  %"$addr___169" = load [20 x i8], [20 x i8]* %addr__, align 1
  store [20 x i8] %"$addr___169", [20 x i8]* %"$bar_addr___168", align 1
  %"$bar_call_170" = call i8* @_fetch_remote_field(i8* %"$execptr_load_167", [20 x i8]* %"$bar_addr___168", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_166", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i32 0, i8* null, i32 1), !dbg !20
  %"$bar_171" = bitcast i8* %"$bar_call_170" to [32 x i8]*
  %"$bar_172" = load [32 x i8], [32 x i8]* %"$bar_171", align 1
  store [32 x i8] %"$bar_172", [32 x i8]* %bar, align 1
  %"$_literal_cost_bar_173" = alloca [32 x i8], align 1
  %"$bar_174" = load [32 x i8], [32 x i8]* %bar, align 1
  store [32 x i8] %"$bar_174", [32 x i8]* %"$_literal_cost_bar_173", align 1
  %"$$_literal_cost_bar_173_175" = bitcast [32 x i8]* %"$_literal_cost_bar_173" to i8*
  %"$_literal_cost_call_176" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i8* %"$$_literal_cost_bar_173_175")
  %"$gasadd_177" = add i64 %"$_literal_cost_call_176", 0
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 %"$gasadd_177", %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$Some_162"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$Some_162"
  %"$consume_182" = sub i64 %"$gasrem_178", %"$gasadd_177"
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$have_gas_181"
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %"$have_gas_186"
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %"$have_gas_186"
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %"$msgobj_193_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_193_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_193_salloc_load", i64 97)
  %"$msgobj_193_salloc" = bitcast i8* %"$msgobj_193_salloc_salloc" to [97 x i8]*
  %"$msgobj_193" = bitcast [97 x i8]* %"$msgobj_193_salloc" to i8*
  store i8 2, i8* %"$msgobj_193", align 1
  %"$msgobj_fname_195" = getelementptr i8, i8* %"$msgobj_193", i32 1
  %"$msgobj_fname_196" = bitcast i8* %"$msgobj_fname_195" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_194", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_196", align 8
  %"$msgobj_td_197" = getelementptr i8, i8* %"$msgobj_193", i32 17
  %"$msgobj_td_198" = bitcast i8* %"$msgobj_td_197" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_198", align 8
  %"$msgobj_v_200" = getelementptr i8, i8* %"$msgobj_193", i32 25
  %"$msgobj_v_201" = bitcast i8* %"$msgobj_v_200" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_199", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_201", align 8
  %"$msgobj_fname_203" = getelementptr i8, i8* %"$msgobj_193", i32 41
  %"$msgobj_fname_204" = bitcast i8* %"$msgobj_fname_203" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_202", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_204", align 8
  %"$msgobj_td_205" = getelementptr i8, i8* %"$msgobj_193", i32 57
  %"$msgobj_td_206" = bitcast i8* %"$msgobj_td_205" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", %_TyDescrTy_Typ** %"$msgobj_td_206", align 8
  %"$bar_207" = load [32 x i8], [32 x i8]* %bar, align 1
  %"$msgobj_v_208" = getelementptr i8, i8* %"$msgobj_193", i32 65
  %"$msgobj_v_209" = bitcast i8* %"$msgobj_v_208" to [32 x i8]*
  store [32 x i8] %"$bar_207", [32 x i8]* %"$msgobj_v_209", align 1
  store i8* %"$msgobj_193", i8** %e, align 8, !dbg !23
  %"$e_211" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_213" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_211")
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 %"$_literal_cost_call_213", %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_191"
  %"$consume_218" = sub i64 %"$gasrem_214", %"$_literal_cost_call_213"
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %"$execptr_load_219" = load i8*, i8** @_execptr, align 8
  %"$e_220" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_219", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_220"), !dbg !24
  br label %"$matchsucc_157"

"$None_221":                                      ; preds = %"$have_gas_155"
  %"$addr__222" = bitcast %TName_Option_ByStr20_with__codehash_end* %"$addr__158" to %CName_None_ByStr20_with__codehash_end*
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$None_221"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$None_221"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$msgobj_233_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_233_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_233_salloc_load", i64 41)
  %"$msgobj_233_salloc" = bitcast i8* %"$msgobj_233_salloc_salloc" to [41 x i8]*
  %"$msgobj_233" = bitcast [41 x i8]* %"$msgobj_233_salloc" to i8*
  store i8 1, i8* %"$msgobj_233", align 1
  %"$msgobj_fname_235" = getelementptr i8, i8* %"$msgobj_233", i32 1
  %"$msgobj_fname_236" = bitcast i8* %"$msgobj_fname_235" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_234", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_236", align 8
  %"$msgobj_td_237" = getelementptr i8, i8* %"$msgobj_233", i32 17
  %"$msgobj_td_238" = bitcast i8* %"$msgobj_td_237" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_238", align 8
  %"$msgobj_v_240" = getelementptr i8, i8* %"$msgobj_233", i32 25
  %"$msgobj_v_241" = bitcast i8* %"$msgobj_v_240" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_239", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_241", align 8
  store i8* %"$msgobj_233", i8** %e1, align 8, !dbg !25
  %"$e_243" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_245" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_243")
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 %"$_literal_cost_call_245", %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_231"
  %"$consume_250" = sub i64 %"$gasrem_246", %"$_literal_cost_call_245"
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %"$execptr_load_251" = load i8*, i8** @_execptr, align 8
  %"$e_252" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_251", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_252"), !dbg !27
  br label %"$matchsucc_157"

"$empty_default_161":                             ; preds = %"$have_gas_155"
  br label %"$matchsucc_157"

"$matchsucc_157":                                 ; preds = %"$have_gas_249", %"$have_gas_217", %"$empty_default_161"
  ret void
}

declare i8* @_dynamic_typecast(i8*, [20 x i8]*, %_TyDescrTy_Typ*)

define void @foo2(i8* %0) !dbg !28 {
entry:
  %"$_amount_254" = getelementptr i8, i8* %0, i32 0
  %"$_amount_255" = bitcast i8* %"$_amount_254" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_255", align 8
  %"$_origin_256" = getelementptr i8, i8* %0, i32 16
  %"$_origin_257" = bitcast i8* %"$_origin_256" to [20 x i8]*
  %"$_sender_258" = getelementptr i8, i8* %0, i32 36
  %"$_sender_259" = bitcast i8* %"$_sender_258" to [20 x i8]*
  %"$addr_260" = getelementptr i8, i8* %0, i32 56
  %"$addr_261" = bitcast i8* %"$addr_260" to [20 x i8]*
  call void @"$foo2_139"(%Uint128 %_amount, [20 x i8]* %"$_origin_257", [20 x i8]* %"$_sender_259", [20 x i8]* %"$addr_261"), !dbg !29
  ret void
}

define internal void @"$foo3_262"(%Uint128 %_amount, [20 x i8]* %"$_origin_263", [20 x i8]* %"$_sender_264", [20 x i8]* %"$addr_265") !dbg !30 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_263", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_264", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_265", align 1
  %bar = alloca [32 x i8], align 1
  %"$execptr_load_267" = load i8*, i8** @_execptr, align 8
  %"$bar_addr_268" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$bar_addr_268", align 1
  %"$bar_call_269" = call i8* @_fetch_remote_field(i8* %"$execptr_load_267", [20 x i8]* %"$bar_addr_268", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_266", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i32 0, i8* null, i32 1), !dbg !31
  %"$bar_270" = bitcast i8* %"$bar_call_269" to [32 x i8]*
  %"$bar_271" = load [32 x i8], [32 x i8]* %"$bar_270", align 1
  store [32 x i8] %"$bar_271", [32 x i8]* %bar, align 1
  %"$_literal_cost_bar_272" = alloca [32 x i8], align 1
  %"$bar_273" = load [32 x i8], [32 x i8]* %bar, align 1
  store [32 x i8] %"$bar_273", [32 x i8]* %"$_literal_cost_bar_272", align 1
  %"$$_literal_cost_bar_272_274" = bitcast [32 x i8]* %"$_literal_cost_bar_272" to i8*
  %"$_literal_cost_call_275" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i8* %"$$_literal_cost_bar_272_274")
  %"$gasadd_276" = add i64 %"$_literal_cost_call_275", 0
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 %"$gasadd_276", %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %entry
  %"$consume_281" = sub i64 %"$gasrem_277", %"$gasadd_276"
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$msgobj_292_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_292_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_292_salloc_load", i64 97)
  %"$msgobj_292_salloc" = bitcast i8* %"$msgobj_292_salloc_salloc" to [97 x i8]*
  %"$msgobj_292" = bitcast [97 x i8]* %"$msgobj_292_salloc" to i8*
  store i8 2, i8* %"$msgobj_292", align 1
  %"$msgobj_fname_294" = getelementptr i8, i8* %"$msgobj_292", i32 1
  %"$msgobj_fname_295" = bitcast i8* %"$msgobj_fname_294" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_293", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_295", align 8
  %"$msgobj_td_296" = getelementptr i8, i8* %"$msgobj_292", i32 17
  %"$msgobj_td_297" = bitcast i8* %"$msgobj_td_296" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_297", align 8
  %"$msgobj_v_299" = getelementptr i8, i8* %"$msgobj_292", i32 25
  %"$msgobj_v_300" = bitcast i8* %"$msgobj_v_299" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_298", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_300", align 8
  %"$msgobj_fname_302" = getelementptr i8, i8* %"$msgobj_292", i32 41
  %"$msgobj_fname_303" = bitcast i8* %"$msgobj_fname_302" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_301", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_303", align 8
  %"$msgobj_td_304" = getelementptr i8, i8* %"$msgobj_292", i32 57
  %"$msgobj_td_305" = bitcast i8* %"$msgobj_td_304" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", %_TyDescrTy_Typ** %"$msgobj_td_305", align 8
  %"$bar_306" = load [32 x i8], [32 x i8]* %bar, align 1
  %"$msgobj_v_307" = getelementptr i8, i8* %"$msgobj_292", i32 65
  %"$msgobj_v_308" = bitcast i8* %"$msgobj_v_307" to [32 x i8]*
  store [32 x i8] %"$bar_306", [32 x i8]* %"$msgobj_v_308", align 1
  store i8* %"$msgobj_292", i8** %e, align 8, !dbg !32
  %"$e_310" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_312" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_310")
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 %"$_literal_cost_call_312", %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_290"
  %"$consume_317" = sub i64 %"$gasrem_313", %"$_literal_cost_call_312"
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %"$execptr_load_318" = load i8*, i8** @_execptr, align 8
  %"$e_319" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_318", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_319"), !dbg !33
  ret void
}

define void @foo3(i8* %0) !dbg !34 {
entry:
  %"$_amount_321" = getelementptr i8, i8* %0, i32 0
  %"$_amount_322" = bitcast i8* %"$_amount_321" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_322", align 8
  %"$_origin_323" = getelementptr i8, i8* %0, i32 16
  %"$_origin_324" = bitcast i8* %"$_origin_323" to [20 x i8]*
  %"$_sender_325" = getelementptr i8, i8* %0, i32 36
  %"$_sender_326" = bitcast i8* %"$_sender_325" to [20 x i8]*
  %"$addr_327" = getelementptr i8, i8* %0, i32 56
  %"$addr_328" = bitcast i8* %"$addr_327" to [20 x i8]*
  call void @"$foo3_262"(%Uint128 %_amount, [20 x i8]* %"$_origin_324", [20 x i8]* %"$_sender_326", [20 x i8]* %"$addr_328"), !dbg !35
  ret void
}

define internal void @"$foo4_329"(%Uint128 %_amount, [20 x i8]* %"$_origin_330", [20 x i8]* %"$_sender_331", [20 x i8]* %"$addr_332") !dbg !36 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_330", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_331", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_332", align 1
  %bar = alloca [32 x i8], align 1
  %"$execptr_load_334" = load i8*, i8** @_execptr, align 8
  %"$bar_addr_335" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$bar_addr_335", align 1
  %"$bar_call_336" = call i8* @_fetch_remote_field(i8* %"$execptr_load_334", [20 x i8]* %"$bar_addr_335", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_333", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i32 0, i8* null, i32 1), !dbg !37
  %"$bar_337" = bitcast i8* %"$bar_call_336" to [32 x i8]*
  %"$bar_338" = load [32 x i8], [32 x i8]* %"$bar_337", align 1
  store [32 x i8] %"$bar_338", [32 x i8]* %bar, align 1
  %"$_literal_cost_bar_339" = alloca [32 x i8], align 1
  %"$bar_340" = load [32 x i8], [32 x i8]* %bar, align 1
  store [32 x i8] %"$bar_340", [32 x i8]* %"$_literal_cost_bar_339", align 1
  %"$$_literal_cost_bar_339_341" = bitcast [32 x i8]* %"$_literal_cost_bar_339" to i8*
  %"$_literal_cost_call_342" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i8* %"$$_literal_cost_bar_339_341")
  %"$gasadd_343" = add i64 %"$_literal_cost_call_342", 0
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 %"$gasadd_343", %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %entry
  %"$consume_348" = sub i64 %"$gasrem_344", %"$gasadd_343"
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$gasrem_349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_350" = icmp ugt i64 1, %"$gasrem_349"
  br i1 %"$gascmp_350", label %"$out_of_gas_351", label %"$have_gas_352"

"$out_of_gas_351":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_352"

"$have_gas_352":                                  ; preds = %"$out_of_gas_351", %"$have_gas_347"
  %"$consume_353" = sub i64 %"$gasrem_349", 1
  store i64 %"$consume_353", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_352"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_352"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %"$msgobj_359_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_359_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_359_salloc_load", i64 97)
  %"$msgobj_359_salloc" = bitcast i8* %"$msgobj_359_salloc_salloc" to [97 x i8]*
  %"$msgobj_359" = bitcast [97 x i8]* %"$msgobj_359_salloc" to i8*
  store i8 2, i8* %"$msgobj_359", align 1
  %"$msgobj_fname_361" = getelementptr i8, i8* %"$msgobj_359", i32 1
  %"$msgobj_fname_362" = bitcast i8* %"$msgobj_fname_361" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_360", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_362", align 8
  %"$msgobj_td_363" = getelementptr i8, i8* %"$msgobj_359", i32 17
  %"$msgobj_td_364" = bitcast i8* %"$msgobj_td_363" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_364", align 8
  %"$msgobj_v_366" = getelementptr i8, i8* %"$msgobj_359", i32 25
  %"$msgobj_v_367" = bitcast i8* %"$msgobj_v_366" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_365", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_367", align 8
  %"$msgobj_fname_369" = getelementptr i8, i8* %"$msgobj_359", i32 41
  %"$msgobj_fname_370" = bitcast i8* %"$msgobj_fname_369" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_368", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_370", align 8
  %"$msgobj_td_371" = getelementptr i8, i8* %"$msgobj_359", i32 57
  %"$msgobj_td_372" = bitcast i8* %"$msgobj_td_371" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", %_TyDescrTy_Typ** %"$msgobj_td_372", align 8
  %"$bar_373" = load [32 x i8], [32 x i8]* %bar, align 1
  %"$msgobj_v_374" = getelementptr i8, i8* %"$msgobj_359", i32 65
  %"$msgobj_v_375" = bitcast i8* %"$msgobj_v_374" to [32 x i8]*
  store [32 x i8] %"$bar_373", [32 x i8]* %"$msgobj_v_375", align 1
  store i8* %"$msgobj_359", i8** %e, align 8, !dbg !38
  %"$e_377" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_379" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_377")
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 %"$_literal_cost_call_379", %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_357"
  %"$consume_384" = sub i64 %"$gasrem_380", %"$_literal_cost_call_379"
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$execptr_load_385" = load i8*, i8** @_execptr, align 8
  %"$e_386" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_385", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_386"), !dbg !39
  ret void
}

define void @foo4(i8* %0) !dbg !40 {
entry:
  %"$_amount_388" = getelementptr i8, i8* %0, i32 0
  %"$_amount_389" = bitcast i8* %"$_amount_388" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_389", align 8
  %"$_origin_390" = getelementptr i8, i8* %0, i32 16
  %"$_origin_391" = bitcast i8* %"$_origin_390" to [20 x i8]*
  %"$_sender_392" = getelementptr i8, i8* %0, i32 36
  %"$_sender_393" = bitcast i8* %"$_sender_392" to [20 x i8]*
  %"$addr_394" = getelementptr i8, i8* %0, i32 56
  %"$addr_395" = bitcast i8* %"$addr_394" to [20 x i8]*
  call void @"$foo4_329"(%Uint128 %_amount, [20 x i8]* %"$_origin_391", [20 x i8]* %"$_sender_393", [20 x i8]* %"$addr_395"), !dbg !41
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "codehash.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = distinct !DISubprogram(name: "foo", linkageName: "foo", scope: !2, file: !2, line: 5, type: !6, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 6, column: 3, scope: !11)
!13 = !DILocation(line: 7, column: 7, scope: !11)
!14 = !DILocation(line: 8, column: 3, scope: !11)
!15 = distinct !DISubprogram(name: "foo", linkageName: "foo", scope: !2, file: !2, line: 5, type: !6, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 5, column: 12, scope: !15)
!17 = distinct !DISubprogram(name: "foo2", linkageName: "foo2", scope: !2, file: !2, line: 11, type: !6, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 12, column: 3, scope: !17)
!19 = !DILocation(line: 13, column: 3, scope: !17)
!20 = !DILocation(line: 15, column: 5, scope: !21)
!21 = distinct !DILexicalBlock(scope: !22, file: !2, line: 14, column: 5)
!22 = distinct !DILexicalBlock(scope: !17, file: !2, line: 13, column: 3)
!23 = !DILocation(line: 16, column: 9, scope: !21)
!24 = !DILocation(line: 17, column: 5, scope: !21)
!25 = !DILocation(line: 19, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !22, file: !2, line: 18, column: 5)
!27 = !DILocation(line: 20, column: 5, scope: !26)
!28 = distinct !DISubprogram(name: "foo2", linkageName: "foo2", scope: !2, file: !2, line: 11, type: !6, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!29 = !DILocation(line: 11, column: 12, scope: !28)
!30 = distinct !DISubprogram(name: "foo3", linkageName: "foo3", scope: !2, file: !2, line: 24, type: !6, scopeLine: 24, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!31 = !DILocation(line: 25, column: 3, scope: !30)
!32 = !DILocation(line: 26, column: 7, scope: !30)
!33 = !DILocation(line: 27, column: 3, scope: !30)
!34 = distinct !DISubprogram(name: "foo3", linkageName: "foo3", scope: !2, file: !2, line: 24, type: !6, scopeLine: 24, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DILocation(line: 24, column: 12, scope: !34)
!36 = distinct !DISubprogram(name: "foo4", linkageName: "foo4", scope: !2, file: !2, line: 30, type: !6, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!37 = !DILocation(line: 31, column: 3, scope: !36)
!38 = !DILocation(line: 32, column: 7, scope: !36)
!39 = !DILocation(line: 33, column: 3, scope: !36)
!40 = distinct !DISubprogram(name: "foo4", linkageName: "foo4", scope: !2, file: !2, line: 30, type: !6, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!41 = !DILocation(line: 30, column: 12, scope: !40)
