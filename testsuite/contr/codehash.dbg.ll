

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
%"$ParamDescr_414" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_415" = type { %ParamDescrString, i32, %"$ParamDescr_414"* }
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
@"$_codehash_172" = unnamed_addr constant [10 x i8] c"_codehash\00"
@"$stringlit_200" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_205" = unnamed_addr constant [7 x i8] c"Success"
@"$stringlit_208" = unnamed_addr constant [3 x i8] c"bar"
@"$stringlit_240" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_245" = unnamed_addr constant [7 x i8] c"Failure"
@"$_codehash_276" = unnamed_addr constant [10 x i8] c"_codehash\00"
@"$stringlit_303" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_308" = unnamed_addr constant [7 x i8] c"Success"
@"$stringlit_311" = unnamed_addr constant [3 x i8] c"bar"
@"$_codehash_347" = unnamed_addr constant [10 x i8] c"_codehash\00"
@"$stringlit_374" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_379" = unnamed_addr constant [7 x i8] c"Success"
@"$stringlit_382" = unnamed_addr constant [3 x i8] c"bar"
@_tydescr_table = constant [22 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_44", %_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with__codehash_end_39", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_31", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 22
@"$pname__scilla_version_416" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_417" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_418" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_414"] [%"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_416", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_417", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_418", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_419" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_420" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_421" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_422" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo_423" = unnamed_addr constant [4 x %"$ParamDescr_414"] [%"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_419", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_420", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_421", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_422", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_foo_424" = unnamed_addr constant [3 x i8] c"foo"
@"$tpname__amount_425" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_426" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_427" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_428" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo2_429" = unnamed_addr constant [4 x %"$ParamDescr_414"] [%"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_425", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_426", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_427", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_428", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }]
@"$tname_foo2_430" = unnamed_addr constant [4 x i8] c"foo2"
@"$tpname__amount_431" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_432" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_433" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_434" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo3_435" = unnamed_addr constant [4 x %"$ParamDescr_414"] [%"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_431", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_432", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_433", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_434", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_44" }]
@"$tname_foo3_436" = unnamed_addr constant [4 x i8] c"foo3"
@"$tpname__amount_437" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_438" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_439" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_addr_440" = unnamed_addr constant [4 x i8] c"addr"
@"$tparams_foo4_441" = unnamed_addr constant [4 x %"$ParamDescr_414"] [%"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_437", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_438", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_439", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_414" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tpname_addr_440", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_foo4_442" = unnamed_addr constant [4 x i8] c"foo4"
@_transition_parameters = constant [4 x %"$TransDescr_415"] [%"$TransDescr_415" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_foo_424", i32 0, i32 0), i32 3 }, i32 4, %"$ParamDescr_414"* getelementptr inbounds ([4 x %"$ParamDescr_414"], [4 x %"$ParamDescr_414"]* @"$tparams_foo_423", i32 0, i32 0) }, %"$TransDescr_415" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_foo2_430", i32 0, i32 0), i32 4 }, i32 4, %"$ParamDescr_414"* getelementptr inbounds ([4 x %"$ParamDescr_414"], [4 x %"$ParamDescr_414"]* @"$tparams_foo2_429", i32 0, i32 0) }, %"$TransDescr_415" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_foo3_436", i32 0, i32 0), i32 4 }, i32 4, %"$ParamDescr_414"* getelementptr inbounds ([4 x %"$ParamDescr_414"], [4 x %"$ParamDescr_414"]* @"$tparams_foo3_435", i32 0, i32 0) }, %"$TransDescr_415" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$tname_foo4_442", i32 0, i32 0), i32 4 }, i32 4, %"$ParamDescr_414"* getelementptr inbounds ([4 x %"$ParamDescr_414"], [4 x %"$ParamDescr_414"]* @"$tparams_foo4_441", i32 0, i32 0) }]
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
  %"$addr_135" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$addr_77", [20 x i8]** %"$addr_135", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$addr_135", metadata !12, metadata !DIExpression()), !dbg !14
  %"$_sender_134" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_76", [20 x i8]** %"$_sender_134", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_134", metadata !15, metadata !DIExpression()), !dbg !17
  %"$_origin_133" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_75", [20 x i8]** %"$_origin_133", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_133", metadata !18, metadata !DIExpression()), !dbg !17
  %"$_amount_132" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_132", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_132", metadata !19, metadata !DIExpression()), !dbg !17
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_75", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_76", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_77", align 1
  %bar = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %bar, metadata !21, metadata !DIExpression()), !dbg !23
  %"$execptr_load_79" = load i8*, i8** @_execptr, align 8
  %"$bar_addr_80" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$bar_addr_80", align 1
  %"$bar_call_81" = call i8* @_fetch_remote_field(i8* %"$execptr_load_79", [20 x i8]* %"$bar_addr_80", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_78", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i32 0, i8* null, i32 1), !dbg !23
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
  call void @llvm.dbg.declare(metadata i8** %e, metadata !24, metadata !DIExpression()), !dbg !27
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
  store i8* %"$msgobj_104", i8** %e, align 8, !dbg !28
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
  call void @_event(i8* %"$execptr_load_130", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_131"), !dbg !29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @foo(i8* %0) !dbg !30 {
entry:
  %"$_amount_137" = getelementptr i8, i8* %0, i32 0
  %"$_amount_138" = bitcast i8* %"$_amount_137" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_138", align 8
  %"$_origin_139" = getelementptr i8, i8* %0, i32 16
  %"$_origin_140" = bitcast i8* %"$_origin_139" to [20 x i8]*
  %"$_sender_141" = getelementptr i8, i8* %0, i32 36
  %"$_sender_142" = bitcast i8* %"$_sender_141" to [20 x i8]*
  %"$addr_143" = getelementptr i8, i8* %0, i32 56
  %"$addr_144" = bitcast i8* %"$addr_143" to [20 x i8]*
  call void @"$foo_74"(%Uint128 %_amount, [20 x i8]* %"$_origin_140", [20 x i8]* %"$_sender_142", [20 x i8]* %"$addr_144"), !dbg !31
  ret void
}

define internal void @"$foo2_145"(%Uint128 %_amount, [20 x i8]* %"$_origin_146", [20 x i8]* %"$_sender_147", [20 x i8]* %"$addr_148") !dbg !32 {
entry:
  %"$addr_262" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$addr_148", [20 x i8]** %"$addr_262", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$addr_262", metadata !33, metadata !DIExpression()), !dbg !35
  %"$_sender_261" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_147", [20 x i8]** %"$_sender_261", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_261", metadata !36, metadata !DIExpression()), !dbg !37
  %"$_origin_260" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_146", [20 x i8]** %"$_origin_260", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_260", metadata !38, metadata !DIExpression()), !dbg !37
  %"$_amount_259" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_259", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_259", metadata !39, metadata !DIExpression()), !dbg !37
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_146", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_147", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_148", align 1
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 2, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %entry
  %"$consume_153" = sub i64 %"$gasrem_149", 2
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %addr_ = alloca %TName_Option_ByStr20_with__codehash_end*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20_with__codehash_end** %addr_, metadata !40, metadata !DIExpression()), !dbg !43
  %"$execptr_load_154" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_addr_155" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$_dynamic_typecast_addr_155", align 1
  %"$_dynamic_typecast_call_156" = call i8* @_dynamic_typecast(i8* %"$execptr_load_154", [20 x i8]* %"$_dynamic_typecast_addr_155", %_TyDescrTy_Typ* @"$TyDescr_Addr_45"), !dbg !43
  %"$_dynamic_typecast_157" = bitcast i8* %"$_dynamic_typecast_call_156" to %TName_Option_ByStr20_with__codehash_end*
  store %TName_Option_ByStr20_with__codehash_end* %"$_dynamic_typecast_157", %TName_Option_ByStr20_with__codehash_end** %addr_, align 8, !dbg !43
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 2, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_152"
  %"$consume_162" = sub i64 %"$gasrem_158", 2
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %"$addr__164" = load %TName_Option_ByStr20_with__codehash_end*, %TName_Option_ByStr20_with__codehash_end** %addr_, align 8
  %"$addr__tag_165" = getelementptr inbounds %TName_Option_ByStr20_with__codehash_end, %TName_Option_ByStr20_with__codehash_end* %"$addr__164", i32 0, i32 0
  %"$addr__tag_166" = load i8, i8* %"$addr__tag_165", align 1
  switch i8 %"$addr__tag_166", label %"$empty_default_167" [
    i8 0, label %"$Some_168"
    i8 1, label %"$None_227"
  ], !dbg !44

"$Some_168":                                      ; preds = %"$have_gas_161"
  %"$addr__169" = bitcast %TName_Option_ByStr20_with__codehash_end* %"$addr__164" to %CName_Some_ByStr20_with__codehash_end*
  %"$addr___gep_170" = getelementptr inbounds %CName_Some_ByStr20_with__codehash_end, %CName_Some_ByStr20_with__codehash_end* %"$addr__169", i32 0, i32 1
  %"$addr___load_171" = load [20 x i8], [20 x i8]* %"$addr___gep_170", align 1
  %addr__ = alloca [20 x i8], align 1
  store [20 x i8] %"$addr___load_171", [20 x i8]* %addr__, align 1
  %bar = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %bar, metadata !45, metadata !DIExpression()), !dbg !48
  %"$execptr_load_173" = load i8*, i8** @_execptr, align 8
  %"$bar_addr___174" = alloca [20 x i8], align 1
  %"$addr___175" = load [20 x i8], [20 x i8]* %addr__, align 1
  store [20 x i8] %"$addr___175", [20 x i8]* %"$bar_addr___174", align 1
  %"$bar_call_176" = call i8* @_fetch_remote_field(i8* %"$execptr_load_173", [20 x i8]* %"$bar_addr___174", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_172", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i32 0, i8* null, i32 1), !dbg !48
  %"$bar_177" = bitcast i8* %"$bar_call_176" to [32 x i8]*
  %"$bar_178" = load [32 x i8], [32 x i8]* %"$bar_177", align 1
  store [32 x i8] %"$bar_178", [32 x i8]* %bar, align 1
  %"$_literal_cost_bar_179" = alloca [32 x i8], align 1
  %"$bar_180" = load [32 x i8], [32 x i8]* %bar, align 1
  store [32 x i8] %"$bar_180", [32 x i8]* %"$_literal_cost_bar_179", align 1
  %"$$_literal_cost_bar_179_181" = bitcast [32 x i8]* %"$_literal_cost_bar_179" to i8*
  %"$_literal_cost_call_182" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i8* %"$$_literal_cost_bar_179_181")
  %"$gasadd_183" = add i64 %"$_literal_cost_call_182", 0
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 %"$gasadd_183", %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$Some_168"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$Some_168"
  %"$consume_188" = sub i64 %"$gasrem_184", %"$gasadd_183"
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !49, metadata !DIExpression()), !dbg !50
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$msgobj_199_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_199_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_199_salloc_load", i64 97)
  %"$msgobj_199_salloc" = bitcast i8* %"$msgobj_199_salloc_salloc" to [97 x i8]*
  %"$msgobj_199" = bitcast [97 x i8]* %"$msgobj_199_salloc" to i8*
  store i8 2, i8* %"$msgobj_199", align 1
  %"$msgobj_fname_201" = getelementptr i8, i8* %"$msgobj_199", i32 1
  %"$msgobj_fname_202" = bitcast i8* %"$msgobj_fname_201" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_200", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_202", align 8
  %"$msgobj_td_203" = getelementptr i8, i8* %"$msgobj_199", i32 17
  %"$msgobj_td_204" = bitcast i8* %"$msgobj_td_203" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_204", align 8
  %"$msgobj_v_206" = getelementptr i8, i8* %"$msgobj_199", i32 25
  %"$msgobj_v_207" = bitcast i8* %"$msgobj_v_206" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_205", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_207", align 8
  %"$msgobj_fname_209" = getelementptr i8, i8* %"$msgobj_199", i32 41
  %"$msgobj_fname_210" = bitcast i8* %"$msgobj_fname_209" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_208", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_210", align 8
  %"$msgobj_td_211" = getelementptr i8, i8* %"$msgobj_199", i32 57
  %"$msgobj_td_212" = bitcast i8* %"$msgobj_td_211" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", %_TyDescrTy_Typ** %"$msgobj_td_212", align 8
  %"$bar_213" = load [32 x i8], [32 x i8]* %bar, align 1
  %"$msgobj_v_214" = getelementptr i8, i8* %"$msgobj_199", i32 65
  %"$msgobj_v_215" = bitcast i8* %"$msgobj_v_214" to [32 x i8]*
  store [32 x i8] %"$bar_213", [32 x i8]* %"$msgobj_v_215", align 1
  store i8* %"$msgobj_199", i8** %e, align 8, !dbg !51
  %"$e_217" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_219" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_217")
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 %"$_literal_cost_call_219", %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_197"
  %"$consume_224" = sub i64 %"$gasrem_220", %"$_literal_cost_call_219"
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %"$execptr_load_225" = load i8*, i8** @_execptr, align 8
  %"$e_226" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_225", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_226"), !dbg !52
  br label %"$matchsucc_163"

"$None_227":                                      ; preds = %"$have_gas_161"
  %"$addr__228" = bitcast %TName_Option_ByStr20_with__codehash_end* %"$addr__164" to %CName_None_ByStr20_with__codehash_end*
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$None_227"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$None_227"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e1, metadata !53, metadata !DIExpression()), !dbg !55
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$msgobj_239_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_239_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_239_salloc_load", i64 41)
  %"$msgobj_239_salloc" = bitcast i8* %"$msgobj_239_salloc_salloc" to [41 x i8]*
  %"$msgobj_239" = bitcast [41 x i8]* %"$msgobj_239_salloc" to i8*
  store i8 1, i8* %"$msgobj_239", align 1
  %"$msgobj_fname_241" = getelementptr i8, i8* %"$msgobj_239", i32 1
  %"$msgobj_fname_242" = bitcast i8* %"$msgobj_fname_241" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_240", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_242", align 8
  %"$msgobj_td_243" = getelementptr i8, i8* %"$msgobj_239", i32 17
  %"$msgobj_td_244" = bitcast i8* %"$msgobj_td_243" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_244", align 8
  %"$msgobj_v_246" = getelementptr i8, i8* %"$msgobj_239", i32 25
  %"$msgobj_v_247" = bitcast i8* %"$msgobj_v_246" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_245", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_247", align 8
  store i8* %"$msgobj_239", i8** %e1, align 8, !dbg !56
  %"$e_249" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_251" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_249")
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 %"$_literal_cost_call_251", %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_237"
  %"$consume_256" = sub i64 %"$gasrem_252", %"$_literal_cost_call_251"
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %"$execptr_load_257" = load i8*, i8** @_execptr, align 8
  %"$e_258" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_257", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_258"), !dbg !57
  br label %"$matchsucc_163"

"$empty_default_167":                             ; preds = %"$have_gas_161"
  br label %"$matchsucc_163"

"$matchsucc_163":                                 ; preds = %"$have_gas_255", %"$have_gas_223", %"$empty_default_167"
  ret void
}

declare i8* @_dynamic_typecast(i8*, [20 x i8]*, %_TyDescrTy_Typ*)

define void @foo2(i8* %0) !dbg !58 {
entry:
  %"$_amount_264" = getelementptr i8, i8* %0, i32 0
  %"$_amount_265" = bitcast i8* %"$_amount_264" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_265", align 8
  %"$_origin_266" = getelementptr i8, i8* %0, i32 16
  %"$_origin_267" = bitcast i8* %"$_origin_266" to [20 x i8]*
  %"$_sender_268" = getelementptr i8, i8* %0, i32 36
  %"$_sender_269" = bitcast i8* %"$_sender_268" to [20 x i8]*
  %"$addr_270" = getelementptr i8, i8* %0, i32 56
  %"$addr_271" = bitcast i8* %"$addr_270" to [20 x i8]*
  call void @"$foo2_145"(%Uint128 %_amount, [20 x i8]* %"$_origin_267", [20 x i8]* %"$_sender_269", [20 x i8]* %"$addr_271"), !dbg !59
  ret void
}

define internal void @"$foo3_272"(%Uint128 %_amount, [20 x i8]* %"$_origin_273", [20 x i8]* %"$_sender_274", [20 x i8]* %"$addr_275") !dbg !60 {
entry:
  %"$addr_333" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$addr_275", [20 x i8]** %"$addr_333", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$addr_333", metadata !61, metadata !DIExpression()), !dbg !63
  %"$_sender_332" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_274", [20 x i8]** %"$_sender_332", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_332", metadata !64, metadata !DIExpression()), !dbg !65
  %"$_origin_331" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_273", [20 x i8]** %"$_origin_331", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_331", metadata !66, metadata !DIExpression()), !dbg !65
  %"$_amount_330" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_330", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_330", metadata !67, metadata !DIExpression()), !dbg !65
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_273", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_274", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_275", align 1
  %bar = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %bar, metadata !68, metadata !DIExpression()), !dbg !69
  %"$execptr_load_277" = load i8*, i8** @_execptr, align 8
  %"$bar_addr_278" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$bar_addr_278", align 1
  %"$bar_call_279" = call i8* @_fetch_remote_field(i8* %"$execptr_load_277", [20 x i8]* %"$bar_addr_278", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_276", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i32 0, i8* null, i32 1), !dbg !69
  %"$bar_280" = bitcast i8* %"$bar_call_279" to [32 x i8]*
  %"$bar_281" = load [32 x i8], [32 x i8]* %"$bar_280", align 1
  store [32 x i8] %"$bar_281", [32 x i8]* %bar, align 1
  %"$_literal_cost_bar_282" = alloca [32 x i8], align 1
  %"$bar_283" = load [32 x i8], [32 x i8]* %bar, align 1
  store [32 x i8] %"$bar_283", [32 x i8]* %"$_literal_cost_bar_282", align 1
  %"$$_literal_cost_bar_282_284" = bitcast [32 x i8]* %"$_literal_cost_bar_282" to i8*
  %"$_literal_cost_call_285" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i8* %"$$_literal_cost_bar_282_284")
  %"$gasadd_286" = add i64 %"$_literal_cost_call_285", 0
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 %"$gasadd_286", %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %entry
  %"$consume_291" = sub i64 %"$gasrem_287", %"$gasadd_286"
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 1, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_290"
  %"$consume_296" = sub i64 %"$gasrem_292", 1
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !70, metadata !DIExpression()), !dbg !71
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_295"
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %"$msgobj_302_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_302_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_302_salloc_load", i64 97)
  %"$msgobj_302_salloc" = bitcast i8* %"$msgobj_302_salloc_salloc" to [97 x i8]*
  %"$msgobj_302" = bitcast [97 x i8]* %"$msgobj_302_salloc" to i8*
  store i8 2, i8* %"$msgobj_302", align 1
  %"$msgobj_fname_304" = getelementptr i8, i8* %"$msgobj_302", i32 1
  %"$msgobj_fname_305" = bitcast i8* %"$msgobj_fname_304" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_303", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_305", align 8
  %"$msgobj_td_306" = getelementptr i8, i8* %"$msgobj_302", i32 17
  %"$msgobj_td_307" = bitcast i8* %"$msgobj_td_306" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_307", align 8
  %"$msgobj_v_309" = getelementptr i8, i8* %"$msgobj_302", i32 25
  %"$msgobj_v_310" = bitcast i8* %"$msgobj_v_309" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_308", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_310", align 8
  %"$msgobj_fname_312" = getelementptr i8, i8* %"$msgobj_302", i32 41
  %"$msgobj_fname_313" = bitcast i8* %"$msgobj_fname_312" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_311", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_313", align 8
  %"$msgobj_td_314" = getelementptr i8, i8* %"$msgobj_302", i32 57
  %"$msgobj_td_315" = bitcast i8* %"$msgobj_td_314" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", %_TyDescrTy_Typ** %"$msgobj_td_315", align 8
  %"$bar_316" = load [32 x i8], [32 x i8]* %bar, align 1
  %"$msgobj_v_317" = getelementptr i8, i8* %"$msgobj_302", i32 65
  %"$msgobj_v_318" = bitcast i8* %"$msgobj_v_317" to [32 x i8]*
  store [32 x i8] %"$bar_316", [32 x i8]* %"$msgobj_v_318", align 1
  store i8* %"$msgobj_302", i8** %e, align 8, !dbg !72
  %"$e_320" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_322" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_320")
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 %"$_literal_cost_call_322", %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_300"
  %"$consume_327" = sub i64 %"$gasrem_323", %"$_literal_cost_call_322"
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %"$execptr_load_328" = load i8*, i8** @_execptr, align 8
  %"$e_329" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_328", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_329"), !dbg !73
  ret void
}

define void @foo3(i8* %0) !dbg !74 {
entry:
  %"$_amount_335" = getelementptr i8, i8* %0, i32 0
  %"$_amount_336" = bitcast i8* %"$_amount_335" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_336", align 8
  %"$_origin_337" = getelementptr i8, i8* %0, i32 16
  %"$_origin_338" = bitcast i8* %"$_origin_337" to [20 x i8]*
  %"$_sender_339" = getelementptr i8, i8* %0, i32 36
  %"$_sender_340" = bitcast i8* %"$_sender_339" to [20 x i8]*
  %"$addr_341" = getelementptr i8, i8* %0, i32 56
  %"$addr_342" = bitcast i8* %"$addr_341" to [20 x i8]*
  call void @"$foo3_272"(%Uint128 %_amount, [20 x i8]* %"$_origin_338", [20 x i8]* %"$_sender_340", [20 x i8]* %"$addr_342"), !dbg !75
  ret void
}

define internal void @"$foo4_343"(%Uint128 %_amount, [20 x i8]* %"$_origin_344", [20 x i8]* %"$_sender_345", [20 x i8]* %"$addr_346") !dbg !76 {
entry:
  %"$addr_404" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$addr_346", [20 x i8]** %"$addr_404", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$addr_404", metadata !77, metadata !DIExpression()), !dbg !79
  %"$_sender_403" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_345", [20 x i8]** %"$_sender_403", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_403", metadata !80, metadata !DIExpression()), !dbg !81
  %"$_origin_402" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_344", [20 x i8]** %"$_origin_402", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_402", metadata !82, metadata !DIExpression()), !dbg !81
  %"$_amount_401" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_401", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_401", metadata !83, metadata !DIExpression()), !dbg !81
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_344", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_345", align 1
  %addr = load [20 x i8], [20 x i8]* %"$addr_346", align 1
  %bar = alloca [32 x i8], align 1
  call void @llvm.dbg.declare(metadata [32 x i8]* %bar, metadata !84, metadata !DIExpression()), !dbg !85
  %"$execptr_load_348" = load i8*, i8** @_execptr, align 8
  %"$bar_addr_349" = alloca [20 x i8], align 1
  store [20 x i8] %addr, [20 x i8]* %"$bar_addr_349", align 1
  %"$bar_call_350" = call i8* @_fetch_remote_field(i8* %"$execptr_load_348", [20 x i8]* %"$bar_addr_349", i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$_codehash_347", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i32 0, i8* null, i32 1), !dbg !85
  %"$bar_351" = bitcast i8* %"$bar_call_350" to [32 x i8]*
  %"$bar_352" = load [32 x i8], [32 x i8]* %"$bar_351", align 1
  store [32 x i8] %"$bar_352", [32 x i8]* %bar, align 1
  %"$_literal_cost_bar_353" = alloca [32 x i8], align 1
  %"$bar_354" = load [32 x i8], [32 x i8]* %bar, align 1
  store [32 x i8] %"$bar_354", [32 x i8]* %"$_literal_cost_bar_353", align 1
  %"$$_literal_cost_bar_353_355" = bitcast [32 x i8]* %"$_literal_cost_bar_353" to i8*
  %"$_literal_cost_call_356" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", i8* %"$$_literal_cost_bar_353_355")
  %"$gasadd_357" = add i64 %"$_literal_cost_call_356", 0
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 %"$gasadd_357", %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %entry
  %"$consume_362" = sub i64 %"$gasrem_358", %"$gasadd_357"
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_361"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !86, metadata !DIExpression()), !dbg !87
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_366"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$msgobj_373_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_373_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_373_salloc_load", i64 97)
  %"$msgobj_373_salloc" = bitcast i8* %"$msgobj_373_salloc_salloc" to [97 x i8]*
  %"$msgobj_373" = bitcast [97 x i8]* %"$msgobj_373_salloc" to i8*
  store i8 2, i8* %"$msgobj_373", align 1
  %"$msgobj_fname_375" = getelementptr i8, i8* %"$msgobj_373", i32 1
  %"$msgobj_fname_376" = bitcast i8* %"$msgobj_fname_375" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_374", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_376", align 8
  %"$msgobj_td_377" = getelementptr i8, i8* %"$msgobj_373", i32 17
  %"$msgobj_td_378" = bitcast i8* %"$msgobj_td_377" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_378", align 8
  %"$msgobj_v_380" = getelementptr i8, i8* %"$msgobj_373", i32 25
  %"$msgobj_v_381" = bitcast i8* %"$msgobj_v_380" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_379", i32 0, i32 0), i32 7 }, %String* %"$msgobj_v_381", align 8
  %"$msgobj_fname_383" = getelementptr i8, i8* %"$msgobj_373", i32 41
  %"$msgobj_fname_384" = bitcast i8* %"$msgobj_fname_383" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_382", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_384", align 8
  %"$msgobj_td_385" = getelementptr i8, i8* %"$msgobj_373", i32 57
  %"$msgobj_td_386" = bitcast i8* %"$msgobj_td_385" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr32_33", %_TyDescrTy_Typ** %"$msgobj_td_386", align 8
  %"$bar_387" = load [32 x i8], [32 x i8]* %bar, align 1
  %"$msgobj_v_388" = getelementptr i8, i8* %"$msgobj_373", i32 65
  %"$msgobj_v_389" = bitcast i8* %"$msgobj_v_388" to [32 x i8]*
  store [32 x i8] %"$bar_387", [32 x i8]* %"$msgobj_v_389", align 1
  store i8* %"$msgobj_373", i8** %e, align 8, !dbg !88
  %"$e_391" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_393" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_391")
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 %"$_literal_cost_call_393", %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_371"
  %"$consume_398" = sub i64 %"$gasrem_394", %"$_literal_cost_call_393"
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %"$execptr_load_399" = load i8*, i8** @_execptr, align 8
  %"$e_400" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_399", %_TyDescrTy_Typ* @"$TyDescr_Event_25", i8* %"$e_400"), !dbg !89
  ret void
}

define void @foo4(i8* %0) !dbg !90 {
entry:
  %"$_amount_406" = getelementptr i8, i8* %0, i32 0
  %"$_amount_407" = bitcast i8* %"$_amount_406" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_407", align 8
  %"$_origin_408" = getelementptr i8, i8* %0, i32 16
  %"$_origin_409" = bitcast i8* %"$_origin_408" to [20 x i8]*
  %"$_sender_410" = getelementptr i8, i8* %0, i32 36
  %"$_sender_411" = bitcast i8* %"$_sender_410" to [20 x i8]*
  %"$addr_412" = getelementptr i8, i8* %0, i32 56
  %"$addr_413" = bitcast i8* %"$addr_412" to [20 x i8]*
  call void @"$foo4_343"(%Uint128 %_amount, [20 x i8]* %"$_origin_409", [20 x i8]* %"$_sender_411", [20 x i8]* %"$addr_413"), !dbg !91
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
!12 = !DILocalVariable(name: "addr", scope: !11, file: !2, line: 5, type: !13)
!13 = !DIBasicType(name: "ByStr20 with _codehash end", size: 20)
!14 = !DILocation(line: 5, column: 16, scope: !11)
!15 = !DILocalVariable(name: "_sender", scope: !11, file: !2, line: 5, type: !16)
!16 = !DIBasicType(name: "ByStr20 with end", size: 20)
!17 = !DILocation(line: 5, column: 12, scope: !11)
!18 = !DILocalVariable(name: "_origin", scope: !11, file: !2, line: 5, type: !16)
!19 = !DILocalVariable(name: "_amount", scope: !11, file: !2, line: 5, type: !20)
!20 = !DIBasicType(name: "Uint128", size: 16)
!21 = !DILocalVariable(name: "bar", scope: !11, file: !2, line: 6, type: !22)
!22 = !DIBasicType(name: "ByStr32", size: 32)
!23 = !DILocation(line: 6, column: 3, scope: !11)
!24 = !DILocalVariable(name: "e", scope: !11, file: !2, line: 7, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !26, size: 8, align: 8, dwarfAddressSpace: 0)
!26 = !DIBasicType(name: "Event", size: 8)
!27 = !DILocation(line: 7, column: 3, scope: !11)
!28 = !DILocation(line: 7, column: 7, scope: !11)
!29 = !DILocation(line: 8, column: 3, scope: !11)
!30 = distinct !DISubprogram(name: "foo", linkageName: "foo", scope: !2, file: !2, line: 5, type: !5, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!31 = !DILocation(line: 5, column: 12, scope: !30)
!32 = distinct !DISubprogram(name: "foo2", linkageName: "foo2", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!33 = !DILocalVariable(name: "addr", scope: !32, file: !2, line: 11, type: !34)
!34 = !DIBasicType(name: "ByStr20", size: 20)
!35 = !DILocation(line: 11, column: 17, scope: !32)
!36 = !DILocalVariable(name: "_sender", scope: !32, file: !2, line: 11, type: !16)
!37 = !DILocation(line: 11, column: 12, scope: !32)
!38 = !DILocalVariable(name: "_origin", scope: !32, file: !2, line: 11, type: !16)
!39 = !DILocalVariable(name: "_amount", scope: !32, file: !2, line: 11, type: !20)
!40 = !DILocalVariable(name: "addr_", scope: !32, file: !2, line: 12, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (ByStr20 with _codehash end)", baseType: !42, size: 8, align: 8, dwarfAddressSpace: 0)
!42 = !DIBasicType(name: "Option (ByStr20 with _codehash end)", size: 8)
!43 = !DILocation(line: 12, column: 3, scope: !32)
!44 = !DILocation(line: 13, column: 3, scope: !32)
!45 = !DILocalVariable(name: "bar", scope: !46, file: !2, line: 15, type: !22)
!46 = distinct !DILexicalBlock(scope: !47, file: !2, line: 14, column: 5)
!47 = distinct !DILexicalBlock(scope: !32, file: !2, line: 13, column: 3)
!48 = !DILocation(line: 15, column: 5, scope: !46)
!49 = !DILocalVariable(name: "e", scope: !46, file: !2, line: 16, type: !25)
!50 = !DILocation(line: 16, column: 5, scope: !46)
!51 = !DILocation(line: 16, column: 9, scope: !46)
!52 = !DILocation(line: 17, column: 5, scope: !46)
!53 = !DILocalVariable(name: "e", scope: !54, file: !2, line: 19, type: !25)
!54 = distinct !DILexicalBlock(scope: !47, file: !2, line: 18, column: 5)
!55 = !DILocation(line: 19, column: 5, scope: !54)
!56 = !DILocation(line: 19, column: 9, scope: !54)
!57 = !DILocation(line: 20, column: 5, scope: !54)
!58 = distinct !DISubprogram(name: "foo2", linkageName: "foo2", scope: !2, file: !2, line: 11, type: !5, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!59 = !DILocation(line: 11, column: 12, scope: !58)
!60 = distinct !DISubprogram(name: "foo3", linkageName: "foo3", scope: !2, file: !2, line: 24, type: !5, scopeLine: 24, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!61 = !DILocalVariable(name: "addr", scope: !60, file: !2, line: 24, type: !62)
!62 = !DIBasicType(name: "ByStr20 with library end", size: 20)
!63 = !DILocation(line: 24, column: 17, scope: !60)
!64 = !DILocalVariable(name: "_sender", scope: !60, file: !2, line: 24, type: !16)
!65 = !DILocation(line: 24, column: 12, scope: !60)
!66 = !DILocalVariable(name: "_origin", scope: !60, file: !2, line: 24, type: !16)
!67 = !DILocalVariable(name: "_amount", scope: !60, file: !2, line: 24, type: !20)
!68 = !DILocalVariable(name: "bar", scope: !60, file: !2, line: 25, type: !22)
!69 = !DILocation(line: 25, column: 3, scope: !60)
!70 = !DILocalVariable(name: "e", scope: !60, file: !2, line: 26, type: !25)
!71 = !DILocation(line: 26, column: 3, scope: !60)
!72 = !DILocation(line: 26, column: 7, scope: !60)
!73 = !DILocation(line: 27, column: 3, scope: !60)
!74 = distinct !DISubprogram(name: "foo3", linkageName: "foo3", scope: !2, file: !2, line: 24, type: !5, scopeLine: 24, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!75 = !DILocation(line: 24, column: 12, scope: !74)
!76 = distinct !DISubprogram(name: "foo4", linkageName: "foo4", scope: !2, file: !2, line: 30, type: !5, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!77 = !DILocalVariable(name: "addr", scope: !76, file: !2, line: 30, type: !78)
!78 = !DIBasicType(name: "ByStr20 with contract end", size: 20)
!79 = !DILocation(line: 30, column: 17, scope: !76)
!80 = !DILocalVariable(name: "_sender", scope: !76, file: !2, line: 30, type: !16)
!81 = !DILocation(line: 30, column: 12, scope: !76)
!82 = !DILocalVariable(name: "_origin", scope: !76, file: !2, line: 30, type: !16)
!83 = !DILocalVariable(name: "_amount", scope: !76, file: !2, line: 30, type: !20)
!84 = !DILocalVariable(name: "bar", scope: !76, file: !2, line: 31, type: !22)
!85 = !DILocation(line: 31, column: 3, scope: !76)
!86 = !DILocalVariable(name: "e", scope: !76, file: !2, line: 32, type: !25)
!87 = !DILocation(line: 32, column: 3, scope: !76)
!88 = !DILocation(line: 32, column: 7, scope: !76)
!89 = !DILocation(line: 33, column: 3, scope: !76)
!90 = distinct !DISubprogram(name: "foo4", linkageName: "foo4", scope: !2, file: !2, line: 30, type: !5, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!91 = !DILocation(line: 30, column: 12, scope: !90)
