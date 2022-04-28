

; gas_remaining: 4001999
; ModuleID = 'AccountingTestsSupport'
source_filename = "AccountingTestsSupport"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_2" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_36" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_35"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_35" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_37"**, %"$TyDescrTy_ADTTyp_36"* }
%"$TyDescrTy_ADTTyp_Constr_37" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_42" = type { i32, %"$TyDescr_AddrFieldTyp_41"* }
%"$TyDescr_AddrFieldTyp_41" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_603" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_604" = type { %ParamDescrString, i32, %"$ParamDescr_603"* }
%TName_List_String = type { i8, %CName_Cons_String*, %CName_Nil_String* }
%CName_Cons_String = type <{ i8, %String, %TName_List_String* }>
%String = type { i8*, i32 }
%CName_Nil_String = type <{ i8 }>
%Uint128 = type { i128 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_3" = global %"$TyDescrTy_PrimTyp_2" zeroinitializer
@"$TyDescr_Int32_4" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int32_Prim_3" to i8*) }
@"$TyDescr_Uint32_Prim_5" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 0 }
@"$TyDescr_Uint32_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint32_Prim_5" to i8*) }
@"$TyDescr_Int64_Prim_7" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 1 }
@"$TyDescr_Int64_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int64_Prim_7" to i8*) }
@"$TyDescr_Uint64_Prim_9" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 1 }
@"$TyDescr_Uint64_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint64_Prim_9" to i8*) }
@"$TyDescr_Int128_Prim_11" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 2 }
@"$TyDescr_Int128_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int128_Prim_11" to i8*) }
@"$TyDescr_Uint128_Prim_13" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 2 }
@"$TyDescr_Uint128_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint128_Prim_13" to i8*) }
@"$TyDescr_Int256_Prim_15" = global %"$TyDescrTy_PrimTyp_2" { i32 0, i32 3 }
@"$TyDescr_Int256_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Int256_Prim_15" to i8*) }
@"$TyDescr_Uint256_Prim_17" = global %"$TyDescrTy_PrimTyp_2" { i32 1, i32 3 }
@"$TyDescr_Uint256_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Uint256_Prim_17" to i8*) }
@"$TyDescr_String_Prim_19" = global %"$TyDescrTy_PrimTyp_2" { i32 2, i32 0 }
@"$TyDescr_String_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_String_Prim_19" to i8*) }
@"$TyDescr_Bnum_Prim_21" = global %"$TyDescrTy_PrimTyp_2" { i32 3, i32 0 }
@"$TyDescr_Bnum_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bnum_Prim_21" to i8*) }
@"$TyDescr_Message_Prim_23" = global %"$TyDescrTy_PrimTyp_2" { i32 4, i32 0 }
@"$TyDescr_Message_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Message_Prim_23" to i8*) }
@"$TyDescr_Event_Prim_25" = global %"$TyDescrTy_PrimTyp_2" { i32 5, i32 0 }
@"$TyDescr_Event_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Event_Prim_25" to i8*) }
@"$TyDescr_Exception_Prim_27" = global %"$TyDescrTy_PrimTyp_2" { i32 6, i32 0 }
@"$TyDescr_Exception_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Exception_Prim_27" to i8*) }
@"$TyDescr_ReplicateContr_Prim_29" = global %"$TyDescrTy_PrimTyp_2" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_ReplicateContr_Prim_29" to i8*) }
@"$TyDescr_Bystr_Prim_31" = global %"$TyDescrTy_PrimTyp_2" { i32 7, i32 0 }
@"$TyDescr_Bystr_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr_Prim_31" to i8*) }
@"$TyDescr_Bystr20_Prim_33" = global %"$TyDescrTy_PrimTyp_2" { i32 8, i32 20 }
@"$TyDescr_Bystr20_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr20_Prim_33" to i8*) }
@"$TyDescr_ADT_Bool_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Bool_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_ADT_List_String_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_String_ADTTyp_Specl_65" to i8*) }
@"$TyDescr_Addr_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_68" to i8*) }
@"$TyDescr_Bool_ADTTyp_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_55", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_Bool_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_45" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_46" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_46", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_49" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_49", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Bool_True_ADTTyp_Constr_47", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Bool_False_ADTTyp_Constr_50"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_Bool_ADTTyp_44" }
@"$TyDescr_Bool_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Bool_ADTTyp_Specl_53"]
@"$TyDescr_ADT_Bool_55" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_67", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_List_ADTTyp_m_specls_66", i32 0, i32 0) }
@"$TyDescr_List_Cons_String_Constr_m_args_57" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39"]
@"$TyDescr_ADT_Cons_58" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_58", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_57", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_60" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_61" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_61", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_60", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_63" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_59", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_62"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_64" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_20"]
@"$TyDescr_List_String_ADTTyp_Specl_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_List_ADTTyp_56" }
@"$TyDescr_List_ADTTyp_m_specls_66" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_String_ADTTyp_Specl_65"]
@"$TyDescr_ADT_List_67" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_68" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -3, %"$TyDescr_AddrFieldTyp_41"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stored_strings_88" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_116" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_132" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_170" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$_balance_246" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$stringlit_301" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_306" = unnamed_addr constant [38 x i8] c"Unexpected balance at support contract"
@"$stringlit_309" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_316" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_342" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$stringlit_398" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_403" = unnamed_addr constant [50 x i8] c"Unexpected sender balance read by support contract"
@"$stringlit_406" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_413" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_439" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_494" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_563" = unnamed_addr constant [9 x i8] c"_balance\00"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 19
@"$pname__scilla_version_605" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_606" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_607" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_603"] [%"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_605", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_606", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_607", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_608" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_609" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_610" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Reset_611" = unnamed_addr constant [3 x %"$ParamDescr_603"] [%"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_608", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_609", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_610", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Reset_612" = unnamed_addr constant [5 x i8] c"Reset"
@"$tpname__amount_613" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_614" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_615" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_s_616" = unnamed_addr constant [1 x i8] c"s"
@"$tparams_StoreString_617" = unnamed_addr constant [4 x %"$ParamDescr_603"] [%"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_613", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_614", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_615", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_s_616", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_String_20" }]
@"$tname_StoreString_618" = unnamed_addr constant [11 x i8] c"StoreString"
@"$tpname__amount_619" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_620" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_621" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept_622" = unnamed_addr constant [3 x %"$ParamDescr_603"] [%"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_619", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_620", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_621", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Accept_623" = unnamed_addr constant [6 x i8] c"Accept"
@"$tpname__amount_624" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_625" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_626" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwice_627" = unnamed_addr constant [3 x %"$ParamDescr_603"] [%"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_624", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_625", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_626", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_AcceptTwice_628" = unnamed_addr constant [11 x i8] c"AcceptTwice"
@"$tpname__amount_629" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_630" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_631" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_NonAccept_632" = unnamed_addr constant [3 x %"$ParamDescr_603"] [%"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_629", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_630", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_631", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_NonAccept_633" = unnamed_addr constant [9 x i8] c"NonAccept"
@"$tpname__amount_634" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_635" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_636" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckBalance_637" = unnamed_addr constant [3 x %"$ParamDescr_603"] [%"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_634", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_635", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_636", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_AcceptAndCheckBalance_638" = unnamed_addr constant [21 x i8] c"AcceptAndCheckBalance"
@"$tpname__amount_639" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_640" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_641" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwiceAndCheckBalance_642" = unnamed_addr constant [3 x %"$ParamDescr_603"] [%"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_639", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_640", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_641", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_AcceptTwiceAndCheckBalance_643" = unnamed_addr constant [26 x i8] c"AcceptTwiceAndCheckBalance"
@"$tpname__amount_644" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_645" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_646" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckSenderBalance_647" = unnamed_addr constant [3 x %"$ParamDescr_603"] [%"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_644", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_645", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_603" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_646", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_AcceptAndCheckSenderBalance_648" = unnamed_addr constant [27 x i8] c"AcceptAndCheckSenderBalance"
@_transition_parameters = constant [8 x %"$TransDescr_604"] [%"$TransDescr_604" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tname_Reset_612", i32 0, i32 0), i32 5 }, i32 3, %"$ParamDescr_603"* getelementptr inbounds ([3 x %"$ParamDescr_603"], [3 x %"$ParamDescr_603"]* @"$tparams_Reset_611", i32 0, i32 0) }, %"$TransDescr_604" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_StoreString_618", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_603"* getelementptr inbounds ([4 x %"$ParamDescr_603"], [4 x %"$ParamDescr_603"]* @"$tparams_StoreString_617", i32 0, i32 0) }, %"$TransDescr_604" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_Accept_623", i32 0, i32 0), i32 6 }, i32 3, %"$ParamDescr_603"* getelementptr inbounds ([3 x %"$ParamDescr_603"], [3 x %"$ParamDescr_603"]* @"$tparams_Accept_622", i32 0, i32 0) }, %"$TransDescr_604" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_AcceptTwice_628", i32 0, i32 0), i32 11 }, i32 3, %"$ParamDescr_603"* getelementptr inbounds ([3 x %"$ParamDescr_603"], [3 x %"$ParamDescr_603"]* @"$tparams_AcceptTwice_627", i32 0, i32 0) }, %"$TransDescr_604" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_NonAccept_633", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_603"* getelementptr inbounds ([3 x %"$ParamDescr_603"], [3 x %"$ParamDescr_603"]* @"$tparams_NonAccept_632", i32 0, i32 0) }, %"$TransDescr_604" { %ParamDescrString { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$tname_AcceptAndCheckBalance_638", i32 0, i32 0), i32 21 }, i32 3, %"$ParamDescr_603"* getelementptr inbounds ([3 x %"$ParamDescr_603"], [3 x %"$ParamDescr_603"]* @"$tparams_AcceptAndCheckBalance_637", i32 0, i32 0) }, %"$TransDescr_604" { %ParamDescrString { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$tname_AcceptTwiceAndCheckBalance_643", i32 0, i32 0), i32 26 }, i32 3, %"$ParamDescr_603"* getelementptr inbounds ([3 x %"$ParamDescr_603"], [3 x %"$ParamDescr_603"]* @"$tparams_AcceptTwiceAndCheckBalance_642", i32 0, i32 0) }, %"$TransDescr_604" { %ParamDescrString { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$tname_AcceptAndCheckSenderBalance_648", i32 0, i32 0), i32 27 }, i32 3, %"$ParamDescr_603"* getelementptr inbounds ([3 x %"$ParamDescr_603"], [3 x %"$ParamDescr_603"]* @"$tparams_AcceptAndCheckSenderBalance_647", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 8

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 5, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %entry
  %"$consume_73" = sub i64 %"$gasrem_69", 5
  store i64 %"$consume_73", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 1, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %entry
  %"$consume_78" = sub i64 %"$gasrem_74", 1
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %"$stored_strings_1" = alloca %TName_List_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_String** %"$stored_strings_1", metadata !11, metadata !DIExpression()), !dbg !14
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$have_gas_77"
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  %"$adtval_84_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_84_salloc" = call i8* @_salloc(i8* %"$adtval_84_load", i64 1)
  %"$adtval_84" = bitcast i8* %"$adtval_84_salloc" to %CName_Nil_String*
  %"$adtgep_85" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_84", i32 0, i32 0
  store i8 1, i8* %"$adtgep_85", align 1
  %"$adtptr_86" = bitcast %CName_Nil_String* %"$adtval_84" to %TName_List_String*
  store %TName_List_String* %"$adtptr_86", %TName_List_String** %"$stored_strings_1", align 8, !dbg !15
  %"$execptr_load_87" = load i8*, i8** @_execptr, align 8
  %"$$stored_strings_1_89" = load %TName_List_String*, %TName_List_String** %"$stored_strings_1", align 8
  %"$update_value_90" = bitcast %TName_List_String* %"$$stored_strings_1_89" to i8*
  call void @_update_field(i8* %"$execptr_load_87", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_88", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i32 0, i8* null, i8* %"$update_value_90"), !dbg !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_salloc(i8*, i64)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Reset_91"(%Uint128 %_amount, [20 x i8]* %"$_origin_92", [20 x i8]* %"$_sender_93") !dbg !16 {
entry:
  %"$_sender_121" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_93", [20 x i8]** %"$_sender_121", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_121", metadata !17, metadata !DIExpression()), !dbg !19
  %"$_origin_120" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_92", [20 x i8]** %"$_origin_120", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_120", metadata !20, metadata !DIExpression()), !dbg !19
  %"$_amount_119" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_119", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_119", metadata !21, metadata !DIExpression()), !dbg !19
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_92", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_93", align 1
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %entry
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %new_strings = alloca %TName_List_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_String** %new_strings, metadata !23, metadata !DIExpression()), !dbg !24
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  %"$adtval_104_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_104_salloc" = call i8* @_salloc(i8* %"$adtval_104_load", i64 1)
  %"$adtval_104" = bitcast i8* %"$adtval_104_salloc" to %CName_Nil_String*
  %"$adtgep_105" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_104", i32 0, i32 0
  store i8 1, i8* %"$adtgep_105", align 1
  %"$adtptr_106" = bitcast %CName_Nil_String* %"$adtval_104" to %TName_List_String*
  store %TName_List_String* %"$adtptr_106", %TName_List_String** %new_strings, align 8, !dbg !25
  %"$new_strings_107" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$$new_strings_107_108" = bitcast %TName_List_String* %"$new_strings_107" to i8*
  %"$_literal_cost_call_109" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i8* %"$$new_strings_107_108")
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 %"$_literal_cost_call_109", %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_102"
  %"$consume_114" = sub i64 %"$gasrem_110", %"$_literal_cost_call_109"
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$execptr_load_115" = load i8*, i8** @_execptr, align 8
  %"$new_strings_117" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$update_value_118" = bitcast %TName_List_String* %"$new_strings_117" to i8*
  call void @_update_field(i8* %"$execptr_load_115", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_116", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i32 0, i8* null, i8* %"$update_value_118"), !dbg !26
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Reset(i8* %0) !dbg !27 {
entry:
  %"$_amount_123" = getelementptr i8, i8* %0, i32 0
  %"$_amount_124" = bitcast i8* %"$_amount_123" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_124", align 8
  %"$_origin_125" = getelementptr i8, i8* %0, i32 16
  %"$_origin_126" = bitcast i8* %"$_origin_125" to [20 x i8]*
  %"$_sender_127" = getelementptr i8, i8* %0, i32 36
  %"$_sender_128" = bitcast i8* %"$_sender_127" to [20 x i8]*
  call void @"$Reset_91"(%Uint128 %_amount, [20 x i8]* %"$_origin_126", [20 x i8]* %"$_sender_128"), !dbg !28
  ret void
}

define internal void @"$StoreString_129"(%Uint128 %_amount, [20 x i8]* %"$_origin_130", [20 x i8]* %"$_sender_131", %String %s) !dbg !29 {
entry:
  %"$s_176" = alloca %String, align 8
  store %String %s, %String* %"$s_176", align 8
  call void @llvm.dbg.declare(metadata %String* %"$s_176", metadata !30, metadata !DIExpression()), !dbg !32
  %"$_sender_175" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_131", [20 x i8]** %"$_sender_175", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_175", metadata !33, metadata !DIExpression()), !dbg !34
  %"$_origin_174" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_130", [20 x i8]** %"$_origin_174", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_174", metadata !35, metadata !DIExpression()), !dbg !34
  %"$_amount_173" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_173", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_173", metadata !36, metadata !DIExpression()), !dbg !34
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_130", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_131", align 1
  %old_strings = alloca %TName_List_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_String** %old_strings, metadata !37, metadata !DIExpression()), !dbg !38
  %"$execptr_load_133" = load i8*, i8** @_execptr, align 8
  %"$old_strings_call_134" = call i8* @_fetch_field(i8* %"$execptr_load_133", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_132", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i32 0, i8* null, i32 1), !dbg !38
  %"$old_strings_135" = bitcast i8* %"$old_strings_call_134" to %TName_List_String*
  store %TName_List_String* %"$old_strings_135", %TName_List_String** %old_strings, align 8
  %"$old_strings_136" = load %TName_List_String*, %TName_List_String** %old_strings, align 8
  %"$$old_strings_136_137" = bitcast %TName_List_String* %"$old_strings_136" to i8*
  %"$_literal_cost_call_138" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i8* %"$$old_strings_136_137")
  %"$gasadd_139" = add i64 %"$_literal_cost_call_138", 0
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 %"$gasadd_139", %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %entry
  %"$consume_144" = sub i64 %"$gasrem_140", %"$gasadd_139"
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %new_strings = alloca %TName_List_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_String** %new_strings, metadata !39, metadata !DIExpression()), !dbg !40
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %"$old_strings_155" = load %TName_List_String*, %TName_List_String** %old_strings, align 8
  %"$adtval_156_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_156_salloc" = call i8* @_salloc(i8* %"$adtval_156_load", i64 25)
  %"$adtval_156" = bitcast i8* %"$adtval_156_salloc" to %CName_Cons_String*
  %"$adtgep_157" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_156", i32 0, i32 0
  store i8 0, i8* %"$adtgep_157", align 1
  %"$adtgep_158" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_156", i32 0, i32 1
  store %String %s, %String* %"$adtgep_158", align 8
  %"$adtgep_159" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_156", i32 0, i32 2
  store %TName_List_String* %"$old_strings_155", %TName_List_String** %"$adtgep_159", align 8
  %"$adtptr_160" = bitcast %CName_Cons_String* %"$adtval_156" to %TName_List_String*
  store %TName_List_String* %"$adtptr_160", %TName_List_String** %new_strings, align 8, !dbg !41
  %"$new_strings_161" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$$new_strings_161_162" = bitcast %TName_List_String* %"$new_strings_161" to i8*
  %"$_literal_cost_call_163" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i8* %"$$new_strings_161_162")
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 %"$_literal_cost_call_163", %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_153"
  %"$consume_168" = sub i64 %"$gasrem_164", %"$_literal_cost_call_163"
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %"$execptr_load_169" = load i8*, i8** @_execptr, align 8
  %"$new_strings_171" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$update_value_172" = bitcast %TName_List_String* %"$new_strings_171" to i8*
  call void @_update_field(i8* %"$execptr_load_169", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_170", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i32 0, i8* null, i8* %"$update_value_172"), !dbg !42
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @StoreString(i8* %0) !dbg !43 {
entry:
  %"$_amount_178" = getelementptr i8, i8* %0, i32 0
  %"$_amount_179" = bitcast i8* %"$_amount_178" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_179", align 8
  %"$_origin_180" = getelementptr i8, i8* %0, i32 16
  %"$_origin_181" = bitcast i8* %"$_origin_180" to [20 x i8]*
  %"$_sender_182" = getelementptr i8, i8* %0, i32 36
  %"$_sender_183" = bitcast i8* %"$_sender_182" to [20 x i8]*
  %"$s_184" = getelementptr i8, i8* %0, i32 56
  %"$s_185" = bitcast i8* %"$s_184" to %String*
  %s = load %String, %String* %"$s_185", align 8
  call void @"$StoreString_129"(%Uint128 %_amount, [20 x i8]* %"$_origin_181", [20 x i8]* %"$_sender_183", %String %s), !dbg !44
  ret void
}

define internal void @"$Accept_186"(%Uint128 %_amount, [20 x i8]* %"$_origin_187", [20 x i8]* %"$_sender_188") !dbg !45 {
entry:
  %"$_sender_197" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_188", [20 x i8]** %"$_sender_197", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_197", metadata !46, metadata !DIExpression()), !dbg !47
  %"$_origin_196" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_187", [20 x i8]** %"$_origin_196", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_196", metadata !48, metadata !DIExpression()), !dbg !47
  %"$_amount_195" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_195", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_195", metadata !49, metadata !DIExpression()), !dbg !47
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_187", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_188", align 1
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %entry
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$execptr_load_194" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_194"), !dbg !50
  ret void
}

declare void @_accept(i8*)

define void @Accept(i8* %0) !dbg !51 {
entry:
  %"$_amount_199" = getelementptr i8, i8* %0, i32 0
  %"$_amount_200" = bitcast i8* %"$_amount_199" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_200", align 8
  %"$_origin_201" = getelementptr i8, i8* %0, i32 16
  %"$_origin_202" = bitcast i8* %"$_origin_201" to [20 x i8]*
  %"$_sender_203" = getelementptr i8, i8* %0, i32 36
  %"$_sender_204" = bitcast i8* %"$_sender_203" to [20 x i8]*
  call void @"$Accept_186"(%Uint128 %_amount, [20 x i8]* %"$_origin_202", [20 x i8]* %"$_sender_204"), !dbg !52
  ret void
}

define internal void @"$AcceptTwice_205"(%Uint128 %_amount, [20 x i8]* %"$_origin_206", [20 x i8]* %"$_sender_207") !dbg !53 {
entry:
  %"$_sender_222" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_207", [20 x i8]** %"$_sender_222", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_222", metadata !54, metadata !DIExpression()), !dbg !55
  %"$_origin_221" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_206", [20 x i8]** %"$_origin_221", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_221", metadata !56, metadata !DIExpression()), !dbg !55
  %"$_amount_220" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_220", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_220", metadata !57, metadata !DIExpression()), !dbg !55
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_206", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_207", align 1
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %entry
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %"$execptr_load_213" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_213"), !dbg !58
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 1, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_211"
  %"$consume_218" = sub i64 %"$gasrem_214", 1
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %"$execptr_load_219" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_219"), !dbg !59
  ret void
}

define void @AcceptTwice(i8* %0) !dbg !60 {
entry:
  %"$_amount_224" = getelementptr i8, i8* %0, i32 0
  %"$_amount_225" = bitcast i8* %"$_amount_224" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_225", align 8
  %"$_origin_226" = getelementptr i8, i8* %0, i32 16
  %"$_origin_227" = bitcast i8* %"$_origin_226" to [20 x i8]*
  %"$_sender_228" = getelementptr i8, i8* %0, i32 36
  %"$_sender_229" = bitcast i8* %"$_sender_228" to [20 x i8]*
  call void @"$AcceptTwice_205"(%Uint128 %_amount, [20 x i8]* %"$_origin_227", [20 x i8]* %"$_sender_229"), !dbg !61
  ret void
}

define internal void @"$NonAccept_230"(%Uint128 %_amount, [20 x i8]* %"$_origin_231", [20 x i8]* %"$_sender_232") !dbg !62 {
entry:
  %"$_sender_235" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_232", [20 x i8]** %"$_sender_235", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_235", metadata !63, metadata !DIExpression()), !dbg !64
  %"$_origin_234" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_231", [20 x i8]** %"$_origin_234", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_234", metadata !65, metadata !DIExpression()), !dbg !64
  %"$_amount_233" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_233", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_233", metadata !66, metadata !DIExpression()), !dbg !64
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_231", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_232", align 1
  ret void
}

define void @NonAccept(i8* %0) !dbg !67 {
entry:
  %"$_amount_237" = getelementptr i8, i8* %0, i32 0
  %"$_amount_238" = bitcast i8* %"$_amount_237" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_238", align 8
  %"$_origin_239" = getelementptr i8, i8* %0, i32 16
  %"$_origin_240" = bitcast i8* %"$_origin_239" to [20 x i8]*
  %"$_sender_241" = getelementptr i8, i8* %0, i32 36
  %"$_sender_242" = bitcast i8* %"$_sender_241" to [20 x i8]*
  call void @"$NonAccept_230"(%Uint128 %_amount, [20 x i8]* %"$_origin_240", [20 x i8]* %"$_sender_242"), !dbg !68
  ret void
}

define internal void @"$CheckBalance_243"(%Uint128 %_amount, [20 x i8]* %"$_origin_244", [20 x i8]* %"$_sender_245", %Uint128 %expected_balance) !dbg !69 {
entry:
  %"$expected_balance_338" = alloca %Uint128, align 8
  store %Uint128 %expected_balance, %Uint128* %"$expected_balance_338", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$expected_balance_338", metadata !70, metadata !DIExpression()), !dbg !71
  %"$_sender_337" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_245", [20 x i8]** %"$_sender_337", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_337", metadata !72, metadata !DIExpression()), !dbg !73
  %"$_origin_336" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_244", [20 x i8]** %"$_origin_336", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_336", metadata !74, metadata !DIExpression()), !dbg !73
  %"$_amount_335" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_335", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_335", metadata !75, metadata !DIExpression()), !dbg !73
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_244", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_245", align 1
  %cur_balance = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %cur_balance, metadata !76, metadata !DIExpression()), !dbg !77
  %"$execptr_load_247" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_call_248" = call i8* @_fetch_field(i8* %"$execptr_load_247", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_246", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1), !dbg !77
  %"$cur_balance_249" = bitcast i8* %"$cur_balance_call_248" to %Uint128*
  %"$cur_balance_250" = load %Uint128, %Uint128* %"$cur_balance_249", align 8
  store %Uint128 %"$cur_balance_250", %Uint128* %cur_balance, align 8
  %"$_literal_cost_cur_balance_251" = alloca %Uint128, align 8
  %"$cur_balance_252" = load %Uint128, %Uint128* %cur_balance, align 8
  store %Uint128 %"$cur_balance_252", %Uint128* %"$_literal_cost_cur_balance_251", align 8
  %"$$_literal_cost_cur_balance_251_253" = bitcast %Uint128* %"$_literal_cost_cur_balance_251" to i8*
  %"$_literal_cost_call_254" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_cur_balance_251_253")
  %"$gasadd_255" = add i64 %"$_literal_cost_call_254", 0
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 %"$gasadd_255", %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %entry
  %"$consume_260" = sub i64 %"$gasrem_256", %"$gasadd_255"
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_259"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %is_expected = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %is_expected, metadata !78, metadata !DIExpression()), !dbg !81
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 8, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_264"
  %"$consume_271" = sub i64 %"$gasrem_267", 8
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %"$execptr_load_272" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_273" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_274" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_272", %Uint128 %expected_balance, %Uint128 %"$cur_balance_273"), !dbg !82
  store %TName_Bool* %"$eq_call_274", %TName_Bool** %is_expected, align 8, !dbg !82
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 2, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_270"
  %"$consume_280" = sub i64 %"$gasrem_276", 2
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$is_expected_282" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_283" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_282", i32 0, i32 0
  %"$is_expected_tag_284" = load i8, i8* %"$is_expected_tag_283", align 1
  switch i8 %"$is_expected_tag_284", label %"$empty_default_285" [
    i8 0, label %"$True_286"
    i8 1, label %"$False_288"
  ], !dbg !83

"$True_286":                                      ; preds = %"$have_gas_279"
  %"$is_expected_287" = bitcast %TName_Bool* %"$is_expected_282" to %CName_True*
  br label %"$matchsucc_281"

"$False_288":                                     ; preds = %"$have_gas_279"
  %"$is_expected_289" = bitcast %TName_Bool* %"$is_expected_282" to %CName_False*
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$False_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$False_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !84, metadata !DIExpression()), !dbg !89
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_293"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %"$msgobj_300_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_300_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_300_salloc_load", i64 121)
  %"$msgobj_300_salloc" = bitcast i8* %"$msgobj_300_salloc_salloc" to [121 x i8]*
  %"$msgobj_300" = bitcast [121 x i8]* %"$msgobj_300_salloc" to i8*
  store i8 3, i8* %"$msgobj_300", align 1
  %"$msgobj_fname_302" = getelementptr i8, i8* %"$msgobj_300", i32 1
  %"$msgobj_fname_303" = bitcast i8* %"$msgobj_fname_302" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_301", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_303", align 8
  %"$msgobj_td_304" = getelementptr i8, i8* %"$msgobj_300", i32 17
  %"$msgobj_td_305" = bitcast i8* %"$msgobj_td_304" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_305", align 8
  %"$msgobj_v_307" = getelementptr i8, i8* %"$msgobj_300", i32 25
  %"$msgobj_v_308" = bitcast i8* %"$msgobj_v_307" to %String*
  store %String { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"$stringlit_306", i32 0, i32 0), i32 38 }, %String* %"$msgobj_v_308", align 8
  %"$msgobj_fname_310" = getelementptr i8, i8* %"$msgobj_300", i32 41
  %"$msgobj_fname_311" = bitcast i8* %"$msgobj_fname_310" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_309", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_311", align 8
  %"$msgobj_td_312" = getelementptr i8, i8* %"$msgobj_300", i32 57
  %"$msgobj_td_313" = bitcast i8* %"$msgobj_td_312" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_313", align 8
  %"$msgobj_v_314" = getelementptr i8, i8* %"$msgobj_300", i32 65
  %"$msgobj_v_315" = bitcast i8* %"$msgobj_v_314" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_315", align 8
  %"$msgobj_fname_317" = getelementptr i8, i8* %"$msgobj_300", i32 81
  %"$msgobj_fname_318" = bitcast i8* %"$msgobj_fname_317" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_316", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_318", align 8
  %"$msgobj_td_319" = getelementptr i8, i8* %"$msgobj_300", i32 97
  %"$msgobj_td_320" = bitcast i8* %"$msgobj_td_319" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_320", align 8
  %"$cur_balance_321" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_322" = getelementptr i8, i8* %"$msgobj_300", i32 105
  %"$msgobj_v_323" = bitcast i8* %"$msgobj_v_322" to %Uint128*
  store %Uint128 %"$cur_balance_321", %Uint128* %"$msgobj_v_323", align 8
  store i8* %"$msgobj_300", i8** %e, align 8, !dbg !90
  %"$e_325" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_327" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_325")
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 %"$_literal_cost_call_327", %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_298"
  %"$consume_332" = sub i64 %"$gasrem_328", %"$_literal_cost_call_327"
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %"$execptr_load_333" = load i8*, i8** @_execptr, align 8
  %"$e_334" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_333", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_334"), !dbg !91
  br label %"$matchsucc_281"

"$empty_default_285":                             ; preds = %"$have_gas_279"
  br label %"$matchsucc_281"

"$matchsucc_281":                                 ; preds = %"$have_gas_331", %"$True_286", %"$empty_default_285"
  ret void
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$CheckSenderBalance_339"(%Uint128 %_amount, [20 x i8]* %"$_origin_340", [20 x i8]* %"$_sender_341", %Uint128 %expected_balance) !dbg !92 {
entry:
  %"$expected_balance_435" = alloca %Uint128, align 8
  store %Uint128 %expected_balance, %Uint128* %"$expected_balance_435", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$expected_balance_435", metadata !93, metadata !DIExpression()), !dbg !94
  %"$_sender_434" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_341", [20 x i8]** %"$_sender_434", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_434", metadata !95, metadata !DIExpression()), !dbg !96
  %"$_origin_433" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_340", [20 x i8]** %"$_origin_433", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_433", metadata !97, metadata !DIExpression()), !dbg !96
  %"$_amount_432" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_432", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_432", metadata !98, metadata !DIExpression()), !dbg !96
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_340", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_341", align 1
  %cur_balance = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %cur_balance, metadata !99, metadata !DIExpression()), !dbg !100
  %"$execptr_load_343" = load i8*, i8** @_execptr, align 8
  %"$cur_balance__sender_344" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$cur_balance__sender_344", align 1
  %"$cur_balance_call_345" = call i8* @_fetch_remote_field(i8* %"$execptr_load_343", [20 x i8]* %"$cur_balance__sender_344", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_342", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1), !dbg !100
  %"$cur_balance_346" = bitcast i8* %"$cur_balance_call_345" to %Uint128*
  %"$cur_balance_347" = load %Uint128, %Uint128* %"$cur_balance_346", align 8
  store %Uint128 %"$cur_balance_347", %Uint128* %cur_balance, align 8
  %"$_literal_cost_cur_balance_348" = alloca %Uint128, align 8
  %"$cur_balance_349" = load %Uint128, %Uint128* %cur_balance, align 8
  store %Uint128 %"$cur_balance_349", %Uint128* %"$_literal_cost_cur_balance_348", align 8
  %"$$_literal_cost_cur_balance_348_350" = bitcast %Uint128* %"$_literal_cost_cur_balance_348" to i8*
  %"$_literal_cost_call_351" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_cur_balance_348_350")
  %"$gasadd_352" = add i64 %"$_literal_cost_call_351", 0
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 %"$gasadd_352", %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %entry
  %"$consume_357" = sub i64 %"$gasrem_353", %"$gasadd_352"
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %is_expected = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %is_expected, metadata !101, metadata !DIExpression()), !dbg !102
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 8, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_361"
  %"$consume_368" = sub i64 %"$gasrem_364", 8
  store i64 %"$consume_368", i64* @_gasrem, align 8
  %"$execptr_load_369" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_370" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_371" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_369", %Uint128 %expected_balance, %Uint128 %"$cur_balance_370"), !dbg !103
  store %TName_Bool* %"$eq_call_371", %TName_Bool** %is_expected, align 8, !dbg !103
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 2, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_367"
  %"$consume_377" = sub i64 %"$gasrem_373", 2
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$is_expected_379" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_380" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_379", i32 0, i32 0
  %"$is_expected_tag_381" = load i8, i8* %"$is_expected_tag_380", align 1
  switch i8 %"$is_expected_tag_381", label %"$empty_default_382" [
    i8 0, label %"$True_383"
    i8 1, label %"$False_385"
  ], !dbg !104

"$True_383":                                      ; preds = %"$have_gas_376"
  %"$is_expected_384" = bitcast %TName_Bool* %"$is_expected_379" to %CName_True*
  br label %"$matchsucc_378"

"$False_385":                                     ; preds = %"$have_gas_376"
  %"$is_expected_386" = bitcast %TName_Bool* %"$is_expected_379" to %CName_False*
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$False_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$False_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !105, metadata !DIExpression()), !dbg !108
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_390"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %"$msgobj_397_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_397_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_397_salloc_load", i64 121)
  %"$msgobj_397_salloc" = bitcast i8* %"$msgobj_397_salloc_salloc" to [121 x i8]*
  %"$msgobj_397" = bitcast [121 x i8]* %"$msgobj_397_salloc" to i8*
  store i8 3, i8* %"$msgobj_397", align 1
  %"$msgobj_fname_399" = getelementptr i8, i8* %"$msgobj_397", i32 1
  %"$msgobj_fname_400" = bitcast i8* %"$msgobj_fname_399" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_398", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_400", align 8
  %"$msgobj_td_401" = getelementptr i8, i8* %"$msgobj_397", i32 17
  %"$msgobj_td_402" = bitcast i8* %"$msgobj_td_401" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_402", align 8
  %"$msgobj_v_404" = getelementptr i8, i8* %"$msgobj_397", i32 25
  %"$msgobj_v_405" = bitcast i8* %"$msgobj_v_404" to %String*
  store %String { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"$stringlit_403", i32 0, i32 0), i32 50 }, %String* %"$msgobj_v_405", align 8
  %"$msgobj_fname_407" = getelementptr i8, i8* %"$msgobj_397", i32 41
  %"$msgobj_fname_408" = bitcast i8* %"$msgobj_fname_407" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_406", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_408", align 8
  %"$msgobj_td_409" = getelementptr i8, i8* %"$msgobj_397", i32 57
  %"$msgobj_td_410" = bitcast i8* %"$msgobj_td_409" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_410", align 8
  %"$msgobj_v_411" = getelementptr i8, i8* %"$msgobj_397", i32 65
  %"$msgobj_v_412" = bitcast i8* %"$msgobj_v_411" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_412", align 8
  %"$msgobj_fname_414" = getelementptr i8, i8* %"$msgobj_397", i32 81
  %"$msgobj_fname_415" = bitcast i8* %"$msgobj_fname_414" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_413", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_415", align 8
  %"$msgobj_td_416" = getelementptr i8, i8* %"$msgobj_397", i32 97
  %"$msgobj_td_417" = bitcast i8* %"$msgobj_td_416" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_417", align 8
  %"$cur_balance_418" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_419" = getelementptr i8, i8* %"$msgobj_397", i32 105
  %"$msgobj_v_420" = bitcast i8* %"$msgobj_v_419" to %Uint128*
  store %Uint128 %"$cur_balance_418", %Uint128* %"$msgobj_v_420", align 8
  store i8* %"$msgobj_397", i8** %e, align 8, !dbg !109
  %"$e_422" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_424" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_422")
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 %"$_literal_cost_call_424", %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_395"
  %"$consume_429" = sub i64 %"$gasrem_425", %"$_literal_cost_call_424"
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$execptr_load_430" = load i8*, i8** @_execptr, align 8
  %"$e_431" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_430", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_431"), !dbg !110
  br label %"$matchsucc_378"

"$empty_default_382":                             ; preds = %"$have_gas_376"
  br label %"$matchsucc_378"

"$matchsucc_378":                                 ; preds = %"$have_gas_428", %"$True_383", %"$empty_default_382"
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define internal void @"$AcceptAndCheckBalance_436"(%Uint128 %_amount, [20 x i8]* %"$_origin_437", [20 x i8]* %"$_sender_438") !dbg !111 {
entry:
  %"$_sender_483" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_438", [20 x i8]** %"$_sender_483", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_483", metadata !112, metadata !DIExpression()), !dbg !113
  %"$_origin_482" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_437", [20 x i8]** %"$_origin_482", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_482", metadata !114, metadata !DIExpression()), !dbg !113
  %"$_amount_481" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_481", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_481", metadata !115, metadata !DIExpression()), !dbg !113
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_437", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_438", align 1
  %init_bal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %init_bal, metadata !116, metadata !DIExpression()), !dbg !117
  %"$execptr_load_440" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_441" = call i8* @_fetch_field(i8* %"$execptr_load_440", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_439", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1), !dbg !117
  %"$init_bal_442" = bitcast i8* %"$init_bal_call_441" to %Uint128*
  %"$init_bal_443" = load %Uint128, %Uint128* %"$init_bal_442", align 8
  store %Uint128 %"$init_bal_443", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_444" = alloca %Uint128, align 8
  %"$init_bal_445" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_445", %Uint128* %"$_literal_cost_init_bal_444", align 8
  %"$$_literal_cost_init_bal_444_446" = bitcast %Uint128* %"$_literal_cost_init_bal_444" to i8*
  %"$_literal_cost_call_447" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_444_446")
  %"$gasadd_448" = add i64 %"$_literal_cost_call_447", 0
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 %"$gasadd_448", %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %entry
  %"$consume_453" = sub i64 %"$gasrem_449", %"$gasadd_448"
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 1, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %"$have_gas_452"
  %"$consume_458" = sub i64 %"$gasrem_454", 1
  store i64 %"$consume_458", i64* @_gasrem, align 8
  %"$execptr_load_459" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_459"), !dbg !118
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_457"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_457"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %expected_balance, metadata !119, metadata !DIExpression()), !dbg !120
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 8, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_463"
  %"$consume_470" = sub i64 %"$gasrem_466", 8
  store i64 %"$consume_470", i64* @_gasrem, align 8
  %"$init_bal_471" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_472" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_471", %Uint128 %_amount), !dbg !121
  store %Uint128 %"$add_call_472", %Uint128* %expected_balance, align 8, !dbg !121
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_469"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %"$CheckBalance__origin_478" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_478", align 1
  %"$CheckBalance__sender_479" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_479", align 1
  %"$expected_balance_480" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_243"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_478", [20 x i8]* %"$CheckBalance__sender_479", %Uint128 %"$expected_balance_480"), !dbg !122
  ret void
}

declare %Uint128 @_add_Uint128(%Uint128, %Uint128)

define void @AcceptAndCheckBalance(i8* %0) !dbg !123 {
entry:
  %"$_amount_485" = getelementptr i8, i8* %0, i32 0
  %"$_amount_486" = bitcast i8* %"$_amount_485" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_486", align 8
  %"$_origin_487" = getelementptr i8, i8* %0, i32 16
  %"$_origin_488" = bitcast i8* %"$_origin_487" to [20 x i8]*
  %"$_sender_489" = getelementptr i8, i8* %0, i32 36
  %"$_sender_490" = bitcast i8* %"$_sender_489" to [20 x i8]*
  call void @"$AcceptAndCheckBalance_436"(%Uint128 %_amount, [20 x i8]* %"$_origin_488", [20 x i8]* %"$_sender_490"), !dbg !124
  ret void
}

define internal void @"$AcceptTwiceAndCheckBalance_491"(%Uint128 %_amount, [20 x i8]* %"$_origin_492", [20 x i8]* %"$_sender_493") !dbg !125 {
entry:
  %"$_sender_552" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_493", [20 x i8]** %"$_sender_552", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_552", metadata !126, metadata !DIExpression()), !dbg !127
  %"$_origin_551" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_492", [20 x i8]** %"$_origin_551", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_551", metadata !128, metadata !DIExpression()), !dbg !127
  %"$_amount_550" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_550", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_550", metadata !129, metadata !DIExpression()), !dbg !127
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_492", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_493", align 1
  %init_bal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %init_bal, metadata !130, metadata !DIExpression()), !dbg !131
  %"$execptr_load_495" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_496" = call i8* @_fetch_field(i8* %"$execptr_load_495", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_494", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1), !dbg !131
  %"$init_bal_497" = bitcast i8* %"$init_bal_call_496" to %Uint128*
  %"$init_bal_498" = load %Uint128, %Uint128* %"$init_bal_497", align 8
  store %Uint128 %"$init_bal_498", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_499" = alloca %Uint128, align 8
  %"$init_bal_500" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_500", %Uint128* %"$_literal_cost_init_bal_499", align 8
  %"$$_literal_cost_init_bal_499_501" = bitcast %Uint128* %"$_literal_cost_init_bal_499" to i8*
  %"$_literal_cost_call_502" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_499_501")
  %"$gasadd_503" = add i64 %"$_literal_cost_call_502", 0
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 %"$gasadd_503", %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %entry
  %"$consume_508" = sub i64 %"$gasrem_504", %"$gasadd_503"
  store i64 %"$consume_508", i64* @_gasrem, align 8
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_507"
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$execptr_load_514" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_514"), !dbg !132
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_512"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %expected_balance, metadata !133, metadata !DIExpression()), !dbg !134
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 8, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$have_gas_518"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$have_gas_518"
  %"$consume_525" = sub i64 %"$gasrem_521", 8
  store i64 %"$consume_525", i64* @_gasrem, align 8
  %"$init_bal_526" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_527" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_526", %Uint128 %_amount), !dbg !135
  store %Uint128 %"$add_call_527", %Uint128* %expected_balance, align 8, !dbg !135
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_524"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %"$CheckBalance__origin_533" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_533", align 1
  %"$CheckBalance__sender_534" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_534", align 1
  %"$expected_balance_535" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_243"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_533", [20 x i8]* %"$CheckBalance__sender_534", %Uint128 %"$expected_balance_535"), !dbg !136
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_531"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %"$execptr_load_541" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_541"), !dbg !137
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_539"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %"$CheckBalance__origin_547" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_547", align 1
  %"$CheckBalance__sender_548" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_548", align 1
  %"$expected_balance_549" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_243"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_547", [20 x i8]* %"$CheckBalance__sender_548", %Uint128 %"$expected_balance_549"), !dbg !138
  ret void
}

define void @AcceptTwiceAndCheckBalance(i8* %0) !dbg !139 {
entry:
  %"$_amount_554" = getelementptr i8, i8* %0, i32 0
  %"$_amount_555" = bitcast i8* %"$_amount_554" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_555", align 8
  %"$_origin_556" = getelementptr i8, i8* %0, i32 16
  %"$_origin_557" = bitcast i8* %"$_origin_556" to [20 x i8]*
  %"$_sender_558" = getelementptr i8, i8* %0, i32 36
  %"$_sender_559" = bitcast i8* %"$_sender_558" to [20 x i8]*
  call void @"$AcceptTwiceAndCheckBalance_491"(%Uint128 %_amount, [20 x i8]* %"$_origin_557", [20 x i8]* %"$_sender_559"), !dbg !140
  ret void
}

define internal void @"$AcceptAndCheckSenderBalance_560"(%Uint128 %_amount, [20 x i8]* %"$_origin_561", [20 x i8]* %"$_sender_562") !dbg !141 {
entry:
  %"$_sender_595" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_562", [20 x i8]** %"$_sender_595", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_595", metadata !142, metadata !DIExpression()), !dbg !143
  %"$_origin_594" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_561", [20 x i8]** %"$_origin_594", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_594", metadata !144, metadata !DIExpression()), !dbg !143
  %"$_amount_593" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_593", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_593", metadata !145, metadata !DIExpression()), !dbg !143
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_561", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_562", align 1
  %init_bal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %init_bal, metadata !146, metadata !DIExpression()), !dbg !147
  %"$execptr_load_564" = load i8*, i8** @_execptr, align 8
  %"$init_bal__sender_565" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$init_bal__sender_565", align 1
  %"$init_bal_call_566" = call i8* @_fetch_remote_field(i8* %"$execptr_load_564", [20 x i8]* %"$init_bal__sender_565", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_563", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1), !dbg !147
  %"$init_bal_567" = bitcast i8* %"$init_bal_call_566" to %Uint128*
  %"$init_bal_568" = load %Uint128, %Uint128* %"$init_bal_567", align 8
  store %Uint128 %"$init_bal_568", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_569" = alloca %Uint128, align 8
  %"$init_bal_570" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_570", %Uint128* %"$_literal_cost_init_bal_569", align 8
  %"$$_literal_cost_init_bal_569_571" = bitcast %Uint128* %"$_literal_cost_init_bal_569" to i8*
  %"$_literal_cost_call_572" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_569_571")
  %"$gasadd_573" = add i64 %"$_literal_cost_call_572", 0
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 %"$gasadd_573", %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %entry
  %"$consume_578" = sub i64 %"$gasrem_574", %"$gasadd_573"
  store i64 %"$consume_578", i64* @_gasrem, align 8
  %"$gasrem_579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_580" = icmp ugt i64 1, %"$gasrem_579"
  br i1 %"$gascmp_580", label %"$out_of_gas_581", label %"$have_gas_582"

"$out_of_gas_581":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_582"

"$have_gas_582":                                  ; preds = %"$out_of_gas_581", %"$have_gas_577"
  %"$consume_583" = sub i64 %"$gasrem_579", 1
  store i64 %"$consume_583", i64* @_gasrem, align 8
  %"$execptr_load_584" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_584"), !dbg !148
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_582"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_582"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %"$CheckSenderBalance__origin_590" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckSenderBalance__origin_590", align 1
  %"$CheckSenderBalance__sender_591" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckSenderBalance__sender_591", align 1
  %"$init_bal_592" = load %Uint128, %Uint128* %init_bal, align 8
  call void @"$CheckSenderBalance_339"(%Uint128 %_amount, [20 x i8]* %"$CheckSenderBalance__origin_590", [20 x i8]* %"$CheckSenderBalance__sender_591", %Uint128 %"$init_bal_592"), !dbg !149
  ret void
}

define void @AcceptAndCheckSenderBalance(i8* %0) !dbg !150 {
entry:
  %"$_amount_597" = getelementptr i8, i8* %0, i32 0
  %"$_amount_598" = bitcast i8* %"$_amount_597" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_598", align 8
  %"$_origin_599" = getelementptr i8, i8* %0, i32 16
  %"$_origin_600" = bitcast i8* %"$_origin_599" to [20 x i8]*
  %"$_sender_601" = getelementptr i8, i8* %0, i32 36
  %"$_sender_602" = bitcast i8* %"$_sender_601" to [20 x i8]*
  call void @"$AcceptAndCheckSenderBalance_560"(%Uint128 %_amount, [20 x i8]* %"$_origin_600", [20 x i8]* %"$_sender_602"), !dbg !151
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "accounting_tests_support.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = !DILocalVariable(name: "$stored_strings_1", scope: !10, file: !2, line: 5, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (String)", baseType: !13, size: 8, align: 8, dwarfAddressSpace: 0)
!13 = !DIBasicType(name: "List (String)", size: 8)
!14 = !DILocation(line: 5, column: 7, scope: !10)
!15 = !DILocation(line: 5, column: 38, scope: !10)
!16 = distinct !DISubprogram(name: "Reset", linkageName: "Reset", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!17 = !DILocalVariable(name: "_sender", scope: !16, file: !2, line: 7, type: !18)
!18 = !DIBasicType(name: "ByStr20 with end", size: 20)
!19 = !DILocation(line: 7, column: 12, scope: !16)
!20 = !DILocalVariable(name: "_origin", scope: !16, file: !2, line: 7, type: !18)
!21 = !DILocalVariable(name: "_amount", scope: !16, file: !2, line: 7, type: !22)
!22 = !DIBasicType(name: "Uint128", size: 16)
!23 = !DILocalVariable(name: "new_strings", scope: !16, file: !2, line: 8, type: !12)
!24 = !DILocation(line: 8, column: 3, scope: !16)
!25 = !DILocation(line: 8, column: 17, scope: !16)
!26 = !DILocation(line: 9, column: 3, scope: !16)
!27 = distinct !DISubprogram(name: "Reset", linkageName: "Reset", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!28 = !DILocation(line: 7, column: 12, scope: !27)
!29 = distinct !DISubprogram(name: "StoreString", linkageName: "StoreString", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!30 = !DILocalVariable(name: "s", scope: !29, file: !2, line: 12, type: !31)
!31 = !DIBasicType(name: "String", size: 16)
!32 = !DILocation(line: 12, column: 25, scope: !29)
!33 = !DILocalVariable(name: "_sender", scope: !29, file: !2, line: 12, type: !18)
!34 = !DILocation(line: 12, column: 12, scope: !29)
!35 = !DILocalVariable(name: "_origin", scope: !29, file: !2, line: 12, type: !18)
!36 = !DILocalVariable(name: "_amount", scope: !29, file: !2, line: 12, type: !22)
!37 = !DILocalVariable(name: "old_strings", scope: !29, file: !2, line: 13, type: !12)
!38 = !DILocation(line: 13, column: 3, scope: !29)
!39 = !DILocalVariable(name: "new_strings", scope: !29, file: !2, line: 14, type: !12)
!40 = !DILocation(line: 14, column: 3, scope: !29)
!41 = !DILocation(line: 14, column: 17, scope: !29)
!42 = !DILocation(line: 15, column: 3, scope: !29)
!43 = distinct !DISubprogram(name: "StoreString", linkageName: "StoreString", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!44 = !DILocation(line: 12, column: 12, scope: !43)
!45 = distinct !DISubprogram(name: "Accept", linkageName: "Accept", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!46 = !DILocalVariable(name: "_sender", scope: !45, file: !2, line: 18, type: !18)
!47 = !DILocation(line: 18, column: 12, scope: !45)
!48 = !DILocalVariable(name: "_origin", scope: !45, file: !2, line: 18, type: !18)
!49 = !DILocalVariable(name: "_amount", scope: !45, file: !2, line: 18, type: !22)
!50 = !DILocation(line: 19, column: 3, scope: !45)
!51 = distinct !DISubprogram(name: "Accept", linkageName: "Accept", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!52 = !DILocation(line: 18, column: 12, scope: !51)
!53 = distinct !DISubprogram(name: "AcceptTwice", linkageName: "AcceptTwice", scope: !2, file: !2, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!54 = !DILocalVariable(name: "_sender", scope: !53, file: !2, line: 22, type: !18)
!55 = !DILocation(line: 22, column: 12, scope: !53)
!56 = !DILocalVariable(name: "_origin", scope: !53, file: !2, line: 22, type: !18)
!57 = !DILocalVariable(name: "_amount", scope: !53, file: !2, line: 22, type: !22)
!58 = !DILocation(line: 23, column: 3, scope: !53)
!59 = !DILocation(line: 24, column: 3, scope: !53)
!60 = distinct !DISubprogram(name: "AcceptTwice", linkageName: "AcceptTwice", scope: !2, file: !2, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!61 = !DILocation(line: 22, column: 12, scope: !60)
!62 = distinct !DISubprogram(name: "NonAccept", linkageName: "NonAccept", scope: !2, file: !2, line: 27, type: !5, scopeLine: 27, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!63 = !DILocalVariable(name: "_sender", scope: !62, file: !2, line: 27, type: !18)
!64 = !DILocation(line: 27, column: 12, scope: !62)
!65 = !DILocalVariable(name: "_origin", scope: !62, file: !2, line: 27, type: !18)
!66 = !DILocalVariable(name: "_amount", scope: !62, file: !2, line: 27, type: !22)
!67 = distinct !DISubprogram(name: "NonAccept", linkageName: "NonAccept", scope: !2, file: !2, line: 27, type: !5, scopeLine: 27, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!68 = !DILocation(line: 27, column: 12, scope: !67)
!69 = distinct !DISubprogram(name: "CheckBalance", linkageName: "CheckBalance", scope: !2, file: !2, line: 30, type: !5, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!70 = !DILocalVariable(name: "expected_balance", scope: !69, file: !2, line: 30, type: !22)
!71 = !DILocation(line: 30, column: 24, scope: !69)
!72 = !DILocalVariable(name: "_sender", scope: !69, file: !2, line: 30, type: !18)
!73 = !DILocation(line: 30, column: 11, scope: !69)
!74 = !DILocalVariable(name: "_origin", scope: !69, file: !2, line: 30, type: !18)
!75 = !DILocalVariable(name: "_amount", scope: !69, file: !2, line: 30, type: !22)
!76 = !DILocalVariable(name: "cur_balance", scope: !69, file: !2, line: 31, type: !22)
!77 = !DILocation(line: 31, column: 3, scope: !69)
!78 = !DILocalVariable(name: "is_expected", scope: !69, file: !2, line: 32, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !80, size: 8, align: 8, dwarfAddressSpace: 0)
!80 = !DIBasicType(name: "Bool", size: 8)
!81 = !DILocation(line: 32, column: 3, scope: !69)
!82 = !DILocation(line: 32, column: 17, scope: !69)
!83 = !DILocation(line: 33, column: 3, scope: !69)
!84 = !DILocalVariable(name: "e", scope: !85, file: !2, line: 36, type: !87)
!85 = distinct !DILexicalBlock(scope: !86, file: !2, line: 35, column: 5)
!86 = distinct !DILexicalBlock(scope: !69, file: !2, line: 33, column: 3)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Exception", baseType: !88, size: 8, align: 8, dwarfAddressSpace: 0)
!88 = !DIBasicType(name: "Exception", size: 8)
!89 = !DILocation(line: 36, column: 5, scope: !85)
!90 = !DILocation(line: 36, column: 9, scope: !85)
!91 = !DILocation(line: 39, column: 5, scope: !85)
!92 = distinct !DISubprogram(name: "CheckSenderBalance", linkageName: "CheckSenderBalance", scope: !2, file: !2, line: 43, type: !5, scopeLine: 43, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!93 = !DILocalVariable(name: "expected_balance", scope: !92, file: !2, line: 43, type: !22)
!94 = !DILocation(line: 43, column: 30, scope: !92)
!95 = !DILocalVariable(name: "_sender", scope: !92, file: !2, line: 43, type: !18)
!96 = !DILocation(line: 43, column: 11, scope: !92)
!97 = !DILocalVariable(name: "_origin", scope: !92, file: !2, line: 43, type: !18)
!98 = !DILocalVariable(name: "_amount", scope: !92, file: !2, line: 43, type: !22)
!99 = !DILocalVariable(name: "cur_balance", scope: !92, file: !2, line: 44, type: !22)
!100 = !DILocation(line: 44, column: 3, scope: !92)
!101 = !DILocalVariable(name: "is_expected", scope: !92, file: !2, line: 45, type: !79)
!102 = !DILocation(line: 45, column: 3, scope: !92)
!103 = !DILocation(line: 45, column: 17, scope: !92)
!104 = !DILocation(line: 46, column: 3, scope: !92)
!105 = !DILocalVariable(name: "e", scope: !106, file: !2, line: 49, type: !87)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 48, column: 5)
!107 = distinct !DILexicalBlock(scope: !92, file: !2, line: 46, column: 3)
!108 = !DILocation(line: 49, column: 5, scope: !106)
!109 = !DILocation(line: 49, column: 9, scope: !106)
!110 = !DILocation(line: 52, column: 5, scope: !106)
!111 = distinct !DISubprogram(name: "AcceptAndCheckBalance", linkageName: "AcceptAndCheckBalance", scope: !2, file: !2, line: 56, type: !5, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!112 = !DILocalVariable(name: "_sender", scope: !111, file: !2, line: 56, type: !18)
!113 = !DILocation(line: 56, column: 12, scope: !111)
!114 = !DILocalVariable(name: "_origin", scope: !111, file: !2, line: 56, type: !18)
!115 = !DILocalVariable(name: "_amount", scope: !111, file: !2, line: 56, type: !22)
!116 = !DILocalVariable(name: "init_bal", scope: !111, file: !2, line: 57, type: !22)
!117 = !DILocation(line: 57, column: 3, scope: !111)
!118 = !DILocation(line: 58, column: 3, scope: !111)
!119 = !DILocalVariable(name: "expected_balance", scope: !111, file: !2, line: 59, type: !22)
!120 = !DILocation(line: 59, column: 3, scope: !111)
!121 = !DILocation(line: 59, column: 22, scope: !111)
!122 = !DILocation(line: 60, column: 3, scope: !111)
!123 = distinct !DISubprogram(name: "AcceptAndCheckBalance", linkageName: "AcceptAndCheckBalance", scope: !2, file: !2, line: 56, type: !5, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!124 = !DILocation(line: 56, column: 12, scope: !123)
!125 = distinct !DISubprogram(name: "AcceptTwiceAndCheckBalance", linkageName: "AcceptTwiceAndCheckBalance", scope: !2, file: !2, line: 63, type: !5, scopeLine: 63, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!126 = !DILocalVariable(name: "_sender", scope: !125, file: !2, line: 63, type: !18)
!127 = !DILocation(line: 63, column: 12, scope: !125)
!128 = !DILocalVariable(name: "_origin", scope: !125, file: !2, line: 63, type: !18)
!129 = !DILocalVariable(name: "_amount", scope: !125, file: !2, line: 63, type: !22)
!130 = !DILocalVariable(name: "init_bal", scope: !125, file: !2, line: 64, type: !22)
!131 = !DILocation(line: 64, column: 3, scope: !125)
!132 = !DILocation(line: 65, column: 3, scope: !125)
!133 = !DILocalVariable(name: "expected_balance", scope: !125, file: !2, line: 66, type: !22)
!134 = !DILocation(line: 66, column: 3, scope: !125)
!135 = !DILocation(line: 66, column: 22, scope: !125)
!136 = !DILocation(line: 67, column: 3, scope: !125)
!137 = !DILocation(line: 68, column: 3, scope: !125)
!138 = !DILocation(line: 69, column: 3, scope: !125)
!139 = distinct !DISubprogram(name: "AcceptTwiceAndCheckBalance", linkageName: "AcceptTwiceAndCheckBalance", scope: !2, file: !2, line: 63, type: !5, scopeLine: 63, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!140 = !DILocation(line: 63, column: 12, scope: !139)
!141 = distinct !DISubprogram(name: "AcceptAndCheckSenderBalance", linkageName: "AcceptAndCheckSenderBalance", scope: !2, file: !2, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!142 = !DILocalVariable(name: "_sender", scope: !141, file: !2, line: 72, type: !18)
!143 = !DILocation(line: 72, column: 12, scope: !141)
!144 = !DILocalVariable(name: "_origin", scope: !141, file: !2, line: 72, type: !18)
!145 = !DILocalVariable(name: "_amount", scope: !141, file: !2, line: 72, type: !22)
!146 = !DILocalVariable(name: "init_bal", scope: !141, file: !2, line: 73, type: !22)
!147 = !DILocation(line: 73, column: 3, scope: !141)
!148 = !DILocation(line: 74, column: 3, scope: !141)
!149 = !DILocation(line: 75, column: 3, scope: !141)
!150 = distinct !DISubprogram(name: "AcceptAndCheckSenderBalance", linkageName: "AcceptAndCheckSenderBalance", scope: !2, file: !2, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!151 = !DILocation(line: 72, column: 12, scope: !150)
