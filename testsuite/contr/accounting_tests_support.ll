

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
%"$ParamDescr_570" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_571" = type { %ParamDescrString, i32, %"$ParamDescr_570"* }
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
@"$stored_strings_129" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_167" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$_balance_230" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$stringlit_285" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_290" = unnamed_addr constant [38 x i8] c"Unexpected balance at support contract"
@"$stringlit_293" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_300" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_322" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$stringlit_378" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_383" = unnamed_addr constant [50 x i8] c"Unexpected sender balance read by support contract"
@"$stringlit_386" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_393" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_415" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_467" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_533" = unnamed_addr constant [9 x i8] c"_balance\00"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 19
@"$pname__scilla_version_572" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_573" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_574" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_572", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_573", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_574", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_575" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_576" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_577" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Reset_578" = unnamed_addr constant [3 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_575", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_576", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_577", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Reset_579" = unnamed_addr constant [5 x i8] c"Reset"
@"$tpname__amount_580" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_581" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_582" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_s_583" = unnamed_addr constant [1 x i8] c"s"
@"$tparams_StoreString_584" = unnamed_addr constant [4 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_580", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_581", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_582", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_s_583", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_String_20" }]
@"$tname_StoreString_585" = unnamed_addr constant [11 x i8] c"StoreString"
@"$tpname__amount_586" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_587" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_588" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept_589" = unnamed_addr constant [3 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_586", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_587", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_588", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Accept_590" = unnamed_addr constant [6 x i8] c"Accept"
@"$tpname__amount_591" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_592" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_593" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwice_594" = unnamed_addr constant [3 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_591", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_592", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_593", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_AcceptTwice_595" = unnamed_addr constant [11 x i8] c"AcceptTwice"
@"$tpname__amount_596" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_597" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_598" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_NonAccept_599" = unnamed_addr constant [3 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_596", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_597", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_598", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_NonAccept_600" = unnamed_addr constant [9 x i8] c"NonAccept"
@"$tpname__amount_601" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_602" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_603" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckBalance_604" = unnamed_addr constant [3 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_601", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_602", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_603", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_AcceptAndCheckBalance_605" = unnamed_addr constant [21 x i8] c"AcceptAndCheckBalance"
@"$tpname__amount_606" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_607" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_608" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwiceAndCheckBalance_609" = unnamed_addr constant [3 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_606", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_607", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_608", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_AcceptTwiceAndCheckBalance_610" = unnamed_addr constant [26 x i8] c"AcceptTwiceAndCheckBalance"
@"$tpname__amount_611" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_612" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_613" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckSenderBalance_614" = unnamed_addr constant [3 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_611", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_612", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_613", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_AcceptAndCheckSenderBalance_615" = unnamed_addr constant [27 x i8] c"AcceptAndCheckSenderBalance"
@_transition_parameters = constant [8 x %"$TransDescr_571"] [%"$TransDescr_571" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tname_Reset_579", i32 0, i32 0), i32 5 }, i32 3, %"$ParamDescr_570"* getelementptr inbounds ([3 x %"$ParamDescr_570"], [3 x %"$ParamDescr_570"]* @"$tparams_Reset_578", i32 0, i32 0) }, %"$TransDescr_571" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_StoreString_585", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_570"* getelementptr inbounds ([4 x %"$ParamDescr_570"], [4 x %"$ParamDescr_570"]* @"$tparams_StoreString_584", i32 0, i32 0) }, %"$TransDescr_571" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_Accept_590", i32 0, i32 0), i32 6 }, i32 3, %"$ParamDescr_570"* getelementptr inbounds ([3 x %"$ParamDescr_570"], [3 x %"$ParamDescr_570"]* @"$tparams_Accept_589", i32 0, i32 0) }, %"$TransDescr_571" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_AcceptTwice_595", i32 0, i32 0), i32 11 }, i32 3, %"$ParamDescr_570"* getelementptr inbounds ([3 x %"$ParamDescr_570"], [3 x %"$ParamDescr_570"]* @"$tparams_AcceptTwice_594", i32 0, i32 0) }, %"$TransDescr_571" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_NonAccept_600", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_570"* getelementptr inbounds ([3 x %"$ParamDescr_570"], [3 x %"$ParamDescr_570"]* @"$tparams_NonAccept_599", i32 0, i32 0) }, %"$TransDescr_571" { %ParamDescrString { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$tname_AcceptAndCheckBalance_605", i32 0, i32 0), i32 21 }, i32 3, %"$ParamDescr_570"* getelementptr inbounds ([3 x %"$ParamDescr_570"], [3 x %"$ParamDescr_570"]* @"$tparams_AcceptAndCheckBalance_604", i32 0, i32 0) }, %"$TransDescr_571" { %ParamDescrString { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$tname_AcceptTwiceAndCheckBalance_610", i32 0, i32 0), i32 26 }, i32 3, %"$ParamDescr_570"* getelementptr inbounds ([3 x %"$ParamDescr_570"], [3 x %"$ParamDescr_570"]* @"$tparams_AcceptTwiceAndCheckBalance_609", i32 0, i32 0) }, %"$TransDescr_571" { %ParamDescrString { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$tname_AcceptAndCheckSenderBalance_615", i32 0, i32 0), i32 27 }, i32 3, %"$ParamDescr_570"* getelementptr inbounds ([3 x %"$ParamDescr_570"], [3 x %"$ParamDescr_570"]* @"$tparams_AcceptAndCheckSenderBalance_614", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 8

define void @_init_libs() {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
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
  store %TName_List_String* %"$adtptr_86", %TName_List_String** %"$stored_strings_1", align 8
  %"$execptr_load_87" = load i8*, i8** @_execptr, align 8
  %"$$stored_strings_1_89" = load %TName_List_String*, %TName_List_String** %"$stored_strings_1", align 8
  %"$update_value_90" = bitcast %TName_List_String* %"$$stored_strings_1_89" to i8*
  call void @_update_field(i8* %"$execptr_load_87", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_88", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i32 0, i8* null, i8* %"$update_value_90")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Reset_91"(%Uint128 %_amount, [20 x i8]* %"$_origin_92", [20 x i8]* %"$_sender_93") {
entry:
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
  store %TName_List_String* %"$adtptr_106", %TName_List_String** %new_strings, align 8
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
  call void @_update_field(i8* %"$execptr_load_115", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_116", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i32 0, i8* null, i8* %"$update_value_118")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Reset(i8* %0) {
entry:
  %"$_amount_120" = getelementptr i8, i8* %0, i32 0
  %"$_amount_121" = bitcast i8* %"$_amount_120" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_121", align 8
  %"$_origin_122" = getelementptr i8, i8* %0, i32 16
  %"$_origin_123" = bitcast i8* %"$_origin_122" to [20 x i8]*
  %"$_sender_124" = getelementptr i8, i8* %0, i32 36
  %"$_sender_125" = bitcast i8* %"$_sender_124" to [20 x i8]*
  call void @"$Reset_91"(%Uint128 %_amount, [20 x i8]* %"$_origin_123", [20 x i8]* %"$_sender_125")
  ret void
}

define internal void @"$StoreString_126"(%Uint128 %_amount, [20 x i8]* %"$_origin_127", [20 x i8]* %"$_sender_128", %String %s) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_127", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_128", align 1
  %old_strings = alloca %TName_List_String*, align 8
  %"$execptr_load_130" = load i8*, i8** @_execptr, align 8
  %"$old_strings_call_131" = call i8* @_fetch_field(i8* %"$execptr_load_130", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_129", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i32 0, i8* null, i32 1)
  %"$old_strings_132" = bitcast i8* %"$old_strings_call_131" to %TName_List_String*
  store %TName_List_String* %"$old_strings_132", %TName_List_String** %old_strings, align 8
  %"$old_strings_133" = load %TName_List_String*, %TName_List_String** %old_strings, align 8
  %"$$old_strings_133_134" = bitcast %TName_List_String* %"$old_strings_133" to i8*
  %"$_literal_cost_call_135" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i8* %"$$old_strings_133_134")
  %"$gasadd_136" = add i64 %"$_literal_cost_call_135", 0
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 %"$gasadd_136", %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %entry
  %"$consume_141" = sub i64 %"$gasrem_137", %"$gasadd_136"
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_140"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %new_strings = alloca %TName_List_String*, align 8
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %"$old_strings_152" = load %TName_List_String*, %TName_List_String** %old_strings, align 8
  %"$adtval_153_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_153_salloc" = call i8* @_salloc(i8* %"$adtval_153_load", i64 25)
  %"$adtval_153" = bitcast i8* %"$adtval_153_salloc" to %CName_Cons_String*
  %"$adtgep_154" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_153", i32 0, i32 0
  store i8 0, i8* %"$adtgep_154", align 1
  %"$adtgep_155" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_153", i32 0, i32 1
  store %String %s, %String* %"$adtgep_155", align 8
  %"$adtgep_156" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_153", i32 0, i32 2
  store %TName_List_String* %"$old_strings_152", %TName_List_String** %"$adtgep_156", align 8
  %"$adtptr_157" = bitcast %CName_Cons_String* %"$adtval_153" to %TName_List_String*
  store %TName_List_String* %"$adtptr_157", %TName_List_String** %new_strings, align 8
  %"$new_strings_158" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$$new_strings_158_159" = bitcast %TName_List_String* %"$new_strings_158" to i8*
  %"$_literal_cost_call_160" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i8* %"$$new_strings_158_159")
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 %"$_literal_cost_call_160", %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_150"
  %"$consume_165" = sub i64 %"$gasrem_161", %"$_literal_cost_call_160"
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %"$execptr_load_166" = load i8*, i8** @_execptr, align 8
  %"$new_strings_168" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$update_value_169" = bitcast %TName_List_String* %"$new_strings_168" to i8*
  call void @_update_field(i8* %"$execptr_load_166", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_167", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_39", i32 0, i8* null, i8* %"$update_value_169")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @StoreString(i8* %0) {
entry:
  %"$_amount_171" = getelementptr i8, i8* %0, i32 0
  %"$_amount_172" = bitcast i8* %"$_amount_171" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_172", align 8
  %"$_origin_173" = getelementptr i8, i8* %0, i32 16
  %"$_origin_174" = bitcast i8* %"$_origin_173" to [20 x i8]*
  %"$_sender_175" = getelementptr i8, i8* %0, i32 36
  %"$_sender_176" = bitcast i8* %"$_sender_175" to [20 x i8]*
  %"$s_177" = getelementptr i8, i8* %0, i32 56
  %"$s_178" = bitcast i8* %"$s_177" to %String*
  %s = load %String, %String* %"$s_178", align 8
  call void @"$StoreString_126"(%Uint128 %_amount, [20 x i8]* %"$_origin_174", [20 x i8]* %"$_sender_176", %String %s)
  ret void
}

define internal void @"$Accept_179"(%Uint128 %_amount, [20 x i8]* %"$_origin_180", [20 x i8]* %"$_sender_181") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_180", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_181", align 1
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %entry
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %"$execptr_load_187" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_187")
  ret void
}

declare void @_accept(i8*)

define void @Accept(i8* %0) {
entry:
  %"$_amount_189" = getelementptr i8, i8* %0, i32 0
  %"$_amount_190" = bitcast i8* %"$_amount_189" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_190", align 8
  %"$_origin_191" = getelementptr i8, i8* %0, i32 16
  %"$_origin_192" = bitcast i8* %"$_origin_191" to [20 x i8]*
  %"$_sender_193" = getelementptr i8, i8* %0, i32 36
  %"$_sender_194" = bitcast i8* %"$_sender_193" to [20 x i8]*
  call void @"$Accept_179"(%Uint128 %_amount, [20 x i8]* %"$_origin_192", [20 x i8]* %"$_sender_194")
  ret void
}

define internal void @"$AcceptTwice_195"(%Uint128 %_amount, [20 x i8]* %"$_origin_196", [20 x i8]* %"$_sender_197") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_196", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_197", align 1
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %entry
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$execptr_load_203" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_203")
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_201"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$execptr_load_209" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_209")
  ret void
}

define void @AcceptTwice(i8* %0) {
entry:
  %"$_amount_211" = getelementptr i8, i8* %0, i32 0
  %"$_amount_212" = bitcast i8* %"$_amount_211" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_212", align 8
  %"$_origin_213" = getelementptr i8, i8* %0, i32 16
  %"$_origin_214" = bitcast i8* %"$_origin_213" to [20 x i8]*
  %"$_sender_215" = getelementptr i8, i8* %0, i32 36
  %"$_sender_216" = bitcast i8* %"$_sender_215" to [20 x i8]*
  call void @"$AcceptTwice_195"(%Uint128 %_amount, [20 x i8]* %"$_origin_214", [20 x i8]* %"$_sender_216")
  ret void
}

define internal void @"$NonAccept_217"(%Uint128 %_amount, [20 x i8]* %"$_origin_218", [20 x i8]* %"$_sender_219") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_218", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_219", align 1
  ret void
}

define void @NonAccept(i8* %0) {
entry:
  %"$_amount_221" = getelementptr i8, i8* %0, i32 0
  %"$_amount_222" = bitcast i8* %"$_amount_221" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_222", align 8
  %"$_origin_223" = getelementptr i8, i8* %0, i32 16
  %"$_origin_224" = bitcast i8* %"$_origin_223" to [20 x i8]*
  %"$_sender_225" = getelementptr i8, i8* %0, i32 36
  %"$_sender_226" = bitcast i8* %"$_sender_225" to [20 x i8]*
  call void @"$NonAccept_217"(%Uint128 %_amount, [20 x i8]* %"$_origin_224", [20 x i8]* %"$_sender_226")
  ret void
}

define internal void @"$CheckBalance_227"(%Uint128 %_amount, [20 x i8]* %"$_origin_228", [20 x i8]* %"$_sender_229", %Uint128 %expected_balance) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_228", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_229", align 1
  %cur_balance = alloca %Uint128, align 8
  %"$execptr_load_231" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_call_232" = call i8* @_fetch_field(i8* %"$execptr_load_231", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_230", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1)
  %"$cur_balance_233" = bitcast i8* %"$cur_balance_call_232" to %Uint128*
  %"$cur_balance_234" = load %Uint128, %Uint128* %"$cur_balance_233", align 8
  store %Uint128 %"$cur_balance_234", %Uint128* %cur_balance, align 8
  %"$_literal_cost_cur_balance_235" = alloca %Uint128, align 8
  %"$cur_balance_236" = load %Uint128, %Uint128* %cur_balance, align 8
  store %Uint128 %"$cur_balance_236", %Uint128* %"$_literal_cost_cur_balance_235", align 8
  %"$$_literal_cost_cur_balance_235_237" = bitcast %Uint128* %"$_literal_cost_cur_balance_235" to i8*
  %"$_literal_cost_call_238" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_cur_balance_235_237")
  %"$gasadd_239" = add i64 %"$_literal_cost_call_238", 0
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 %"$gasadd_239", %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %entry
  %"$consume_244" = sub i64 %"$gasrem_240", %"$gasadd_239"
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_243"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %is_expected = alloca %TName_Bool*, align 8
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 8, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_248"
  %"$consume_255" = sub i64 %"$gasrem_251", 8
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$execptr_load_256" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_257" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_258" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_256", %Uint128 %expected_balance, %Uint128 %"$cur_balance_257")
  store %TName_Bool* %"$eq_call_258", %TName_Bool** %is_expected, align 8
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 2, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_254"
  %"$consume_264" = sub i64 %"$gasrem_260", 2
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$is_expected_266" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_267" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_266", i32 0, i32 0
  %"$is_expected_tag_268" = load i8, i8* %"$is_expected_tag_267", align 1
  switch i8 %"$is_expected_tag_268", label %"$empty_default_269" [
    i8 0, label %"$True_270"
    i8 1, label %"$False_272"
  ]

"$True_270":                                      ; preds = %"$have_gas_263"
  %"$is_expected_271" = bitcast %TName_Bool* %"$is_expected_266" to %CName_True*
  br label %"$matchsucc_265"

"$False_272":                                     ; preds = %"$have_gas_263"
  %"$is_expected_273" = bitcast %TName_Bool* %"$is_expected_266" to %CName_False*
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$False_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$False_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$msgobj_284_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_284_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_284_salloc_load", i64 121)
  %"$msgobj_284_salloc" = bitcast i8* %"$msgobj_284_salloc_salloc" to [121 x i8]*
  %"$msgobj_284" = bitcast [121 x i8]* %"$msgobj_284_salloc" to i8*
  store i8 3, i8* %"$msgobj_284", align 1
  %"$msgobj_fname_286" = getelementptr i8, i8* %"$msgobj_284", i32 1
  %"$msgobj_fname_287" = bitcast i8* %"$msgobj_fname_286" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_285", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_287", align 8
  %"$msgobj_td_288" = getelementptr i8, i8* %"$msgobj_284", i32 17
  %"$msgobj_td_289" = bitcast i8* %"$msgobj_td_288" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_289", align 8
  %"$msgobj_v_291" = getelementptr i8, i8* %"$msgobj_284", i32 25
  %"$msgobj_v_292" = bitcast i8* %"$msgobj_v_291" to %String*
  store %String { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"$stringlit_290", i32 0, i32 0), i32 38 }, %String* %"$msgobj_v_292", align 8
  %"$msgobj_fname_294" = getelementptr i8, i8* %"$msgobj_284", i32 41
  %"$msgobj_fname_295" = bitcast i8* %"$msgobj_fname_294" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_293", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_295", align 8
  %"$msgobj_td_296" = getelementptr i8, i8* %"$msgobj_284", i32 57
  %"$msgobj_td_297" = bitcast i8* %"$msgobj_td_296" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_297", align 8
  %"$msgobj_v_298" = getelementptr i8, i8* %"$msgobj_284", i32 65
  %"$msgobj_v_299" = bitcast i8* %"$msgobj_v_298" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_299", align 8
  %"$msgobj_fname_301" = getelementptr i8, i8* %"$msgobj_284", i32 81
  %"$msgobj_fname_302" = bitcast i8* %"$msgobj_fname_301" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_300", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_302", align 8
  %"$msgobj_td_303" = getelementptr i8, i8* %"$msgobj_284", i32 97
  %"$msgobj_td_304" = bitcast i8* %"$msgobj_td_303" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_304", align 8
  %"$cur_balance_305" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_306" = getelementptr i8, i8* %"$msgobj_284", i32 105
  %"$msgobj_v_307" = bitcast i8* %"$msgobj_v_306" to %Uint128*
  store %Uint128 %"$cur_balance_305", %Uint128* %"$msgobj_v_307", align 8
  store i8* %"$msgobj_284", i8** %e, align 8
  %"$e_309" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_311" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_309")
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 %"$_literal_cost_call_311", %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_282"
  %"$consume_316" = sub i64 %"$gasrem_312", %"$_literal_cost_call_311"
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %"$execptr_load_317" = load i8*, i8** @_execptr, align 8
  %"$e_318" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_317", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_318")
  br label %"$matchsucc_265"

"$empty_default_269":                             ; preds = %"$have_gas_263"
  br label %"$matchsucc_265"

"$matchsucc_265":                                 ; preds = %"$have_gas_315", %"$True_270", %"$empty_default_269"
  ret void
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$CheckSenderBalance_319"(%Uint128 %_amount, [20 x i8]* %"$_origin_320", [20 x i8]* %"$_sender_321", %Uint128 %expected_balance) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_320", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_321", align 1
  %cur_balance = alloca %Uint128, align 8
  %"$execptr_load_323" = load i8*, i8** @_execptr, align 8
  %"$cur_balance__sender_324" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$cur_balance__sender_324", align 1
  %"$cur_balance_call_325" = call i8* @_fetch_remote_field(i8* %"$execptr_load_323", [20 x i8]* %"$cur_balance__sender_324", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_322", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1)
  %"$cur_balance_326" = bitcast i8* %"$cur_balance_call_325" to %Uint128*
  %"$cur_balance_327" = load %Uint128, %Uint128* %"$cur_balance_326", align 8
  store %Uint128 %"$cur_balance_327", %Uint128* %cur_balance, align 8
  %"$_literal_cost_cur_balance_328" = alloca %Uint128, align 8
  %"$cur_balance_329" = load %Uint128, %Uint128* %cur_balance, align 8
  store %Uint128 %"$cur_balance_329", %Uint128* %"$_literal_cost_cur_balance_328", align 8
  %"$$_literal_cost_cur_balance_328_330" = bitcast %Uint128* %"$_literal_cost_cur_balance_328" to i8*
  %"$_literal_cost_call_331" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_cur_balance_328_330")
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
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_336"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %is_expected = alloca %TName_Bool*, align 8
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 8, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_341"
  %"$consume_348" = sub i64 %"$gasrem_344", 8
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$execptr_load_349" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_350" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_351" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_349", %Uint128 %expected_balance, %Uint128 %"$cur_balance_350")
  store %TName_Bool* %"$eq_call_351", %TName_Bool** %is_expected, align 8
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 2, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_347"
  %"$consume_357" = sub i64 %"$gasrem_353", 2
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %"$is_expected_359" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_360" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_359", i32 0, i32 0
  %"$is_expected_tag_361" = load i8, i8* %"$is_expected_tag_360", align 1
  switch i8 %"$is_expected_tag_361", label %"$empty_default_362" [
    i8 0, label %"$True_363"
    i8 1, label %"$False_365"
  ]

"$True_363":                                      ; preds = %"$have_gas_356"
  %"$is_expected_364" = bitcast %TName_Bool* %"$is_expected_359" to %CName_True*
  br label %"$matchsucc_358"

"$False_365":                                     ; preds = %"$have_gas_356"
  %"$is_expected_366" = bitcast %TName_Bool* %"$is_expected_359" to %CName_False*
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$False_365"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$False_365"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_370"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %"$msgobj_377_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_377_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_377_salloc_load", i64 121)
  %"$msgobj_377_salloc" = bitcast i8* %"$msgobj_377_salloc_salloc" to [121 x i8]*
  %"$msgobj_377" = bitcast [121 x i8]* %"$msgobj_377_salloc" to i8*
  store i8 3, i8* %"$msgobj_377", align 1
  %"$msgobj_fname_379" = getelementptr i8, i8* %"$msgobj_377", i32 1
  %"$msgobj_fname_380" = bitcast i8* %"$msgobj_fname_379" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_378", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_380", align 8
  %"$msgobj_td_381" = getelementptr i8, i8* %"$msgobj_377", i32 17
  %"$msgobj_td_382" = bitcast i8* %"$msgobj_td_381" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_382", align 8
  %"$msgobj_v_384" = getelementptr i8, i8* %"$msgobj_377", i32 25
  %"$msgobj_v_385" = bitcast i8* %"$msgobj_v_384" to %String*
  store %String { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"$stringlit_383", i32 0, i32 0), i32 50 }, %String* %"$msgobj_v_385", align 8
  %"$msgobj_fname_387" = getelementptr i8, i8* %"$msgobj_377", i32 41
  %"$msgobj_fname_388" = bitcast i8* %"$msgobj_fname_387" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_386", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_388", align 8
  %"$msgobj_td_389" = getelementptr i8, i8* %"$msgobj_377", i32 57
  %"$msgobj_td_390" = bitcast i8* %"$msgobj_td_389" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_390", align 8
  %"$msgobj_v_391" = getelementptr i8, i8* %"$msgobj_377", i32 65
  %"$msgobj_v_392" = bitcast i8* %"$msgobj_v_391" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_392", align 8
  %"$msgobj_fname_394" = getelementptr i8, i8* %"$msgobj_377", i32 81
  %"$msgobj_fname_395" = bitcast i8* %"$msgobj_fname_394" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_393", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_395", align 8
  %"$msgobj_td_396" = getelementptr i8, i8* %"$msgobj_377", i32 97
  %"$msgobj_td_397" = bitcast i8* %"$msgobj_td_396" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_397", align 8
  %"$cur_balance_398" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_399" = getelementptr i8, i8* %"$msgobj_377", i32 105
  %"$msgobj_v_400" = bitcast i8* %"$msgobj_v_399" to %Uint128*
  store %Uint128 %"$cur_balance_398", %Uint128* %"$msgobj_v_400", align 8
  store i8* %"$msgobj_377", i8** %e, align 8
  %"$e_402" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_404" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_402")
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 %"$_literal_cost_call_404", %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_375"
  %"$consume_409" = sub i64 %"$gasrem_405", %"$_literal_cost_call_404"
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %"$execptr_load_410" = load i8*, i8** @_execptr, align 8
  %"$e_411" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_410", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_411")
  br label %"$matchsucc_358"

"$empty_default_362":                             ; preds = %"$have_gas_356"
  br label %"$matchsucc_358"

"$matchsucc_358":                                 ; preds = %"$have_gas_408", %"$True_363", %"$empty_default_362"
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define internal void @"$AcceptAndCheckBalance_412"(%Uint128 %_amount, [20 x i8]* %"$_origin_413", [20 x i8]* %"$_sender_414") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_413", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_414", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_416" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_417" = call i8* @_fetch_field(i8* %"$execptr_load_416", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_415", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1)
  %"$init_bal_418" = bitcast i8* %"$init_bal_call_417" to %Uint128*
  %"$init_bal_419" = load %Uint128, %Uint128* %"$init_bal_418", align 8
  store %Uint128 %"$init_bal_419", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_420" = alloca %Uint128, align 8
  %"$init_bal_421" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_421", %Uint128* %"$_literal_cost_init_bal_420", align 8
  %"$$_literal_cost_init_bal_420_422" = bitcast %Uint128* %"$_literal_cost_init_bal_420" to i8*
  %"$_literal_cost_call_423" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_420_422")
  %"$gasadd_424" = add i64 %"$_literal_cost_call_423", 0
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 %"$gasadd_424", %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %entry
  %"$consume_429" = sub i64 %"$gasrem_425", %"$gasadd_424"
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %"$execptr_load_435" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_435")
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_433"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 8, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_439"
  %"$consume_446" = sub i64 %"$gasrem_442", 8
  store i64 %"$consume_446", i64* @_gasrem, align 8
  %"$init_bal_447" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_448" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_447", %Uint128 %_amount)
  store %Uint128 %"$add_call_448", %Uint128* %expected_balance, align 8
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_445"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_445"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %"$CheckBalance__origin_454" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_454", align 1
  %"$CheckBalance__sender_455" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_455", align 1
  %"$expected_balance_456" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_227"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_454", [20 x i8]* %"$CheckBalance__sender_455", %Uint128 %"$expected_balance_456")
  ret void
}

declare %Uint128 @_add_Uint128(%Uint128, %Uint128)

define void @AcceptAndCheckBalance(i8* %0) {
entry:
  %"$_amount_458" = getelementptr i8, i8* %0, i32 0
  %"$_amount_459" = bitcast i8* %"$_amount_458" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_459", align 8
  %"$_origin_460" = getelementptr i8, i8* %0, i32 16
  %"$_origin_461" = bitcast i8* %"$_origin_460" to [20 x i8]*
  %"$_sender_462" = getelementptr i8, i8* %0, i32 36
  %"$_sender_463" = bitcast i8* %"$_sender_462" to [20 x i8]*
  call void @"$AcceptAndCheckBalance_412"(%Uint128 %_amount, [20 x i8]* %"$_origin_461", [20 x i8]* %"$_sender_463")
  ret void
}

define internal void @"$AcceptTwiceAndCheckBalance_464"(%Uint128 %_amount, [20 x i8]* %"$_origin_465", [20 x i8]* %"$_sender_466") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_465", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_466", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_468" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_469" = call i8* @_fetch_field(i8* %"$execptr_load_468", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_467", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1)
  %"$init_bal_470" = bitcast i8* %"$init_bal_call_469" to %Uint128*
  %"$init_bal_471" = load %Uint128, %Uint128* %"$init_bal_470", align 8
  store %Uint128 %"$init_bal_471", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_472" = alloca %Uint128, align 8
  %"$init_bal_473" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_473", %Uint128* %"$_literal_cost_init_bal_472", align 8
  %"$$_literal_cost_init_bal_472_474" = bitcast %Uint128* %"$_literal_cost_init_bal_472" to i8*
  %"$_literal_cost_call_475" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_472_474")
  %"$gasadd_476" = add i64 %"$_literal_cost_call_475", 0
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 %"$gasadd_476", %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %entry
  %"$consume_481" = sub i64 %"$gasrem_477", %"$gasadd_476"
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  %"$execptr_load_487" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_487")
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_485"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 8, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_491"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_491"
  %"$consume_498" = sub i64 %"$gasrem_494", 8
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$init_bal_499" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_500" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_499", %Uint128 %_amount)
  store %Uint128 %"$add_call_500", %Uint128* %expected_balance, align 8
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_497"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %"$CheckBalance__origin_506" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_506", align 1
  %"$CheckBalance__sender_507" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_507", align 1
  %"$expected_balance_508" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_227"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_506", [20 x i8]* %"$CheckBalance__sender_507", %Uint128 %"$expected_balance_508")
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_504"
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$execptr_load_514" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_514")
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_512"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  %"$CheckBalance__origin_520" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_520", align 1
  %"$CheckBalance__sender_521" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_521", align 1
  %"$expected_balance_522" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_227"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_520", [20 x i8]* %"$CheckBalance__sender_521", %Uint128 %"$expected_balance_522")
  ret void
}

define void @AcceptTwiceAndCheckBalance(i8* %0) {
entry:
  %"$_amount_524" = getelementptr i8, i8* %0, i32 0
  %"$_amount_525" = bitcast i8* %"$_amount_524" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_525", align 8
  %"$_origin_526" = getelementptr i8, i8* %0, i32 16
  %"$_origin_527" = bitcast i8* %"$_origin_526" to [20 x i8]*
  %"$_sender_528" = getelementptr i8, i8* %0, i32 36
  %"$_sender_529" = bitcast i8* %"$_sender_528" to [20 x i8]*
  call void @"$AcceptTwiceAndCheckBalance_464"(%Uint128 %_amount, [20 x i8]* %"$_origin_527", [20 x i8]* %"$_sender_529")
  ret void
}

define internal void @"$AcceptAndCheckSenderBalance_530"(%Uint128 %_amount, [20 x i8]* %"$_origin_531", [20 x i8]* %"$_sender_532") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_531", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_532", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_534" = load i8*, i8** @_execptr, align 8
  %"$init_bal__sender_535" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$init_bal__sender_535", align 1
  %"$init_bal_call_536" = call i8* @_fetch_remote_field(i8* %"$execptr_load_534", [20 x i8]* %"$init_bal__sender_535", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_533", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1)
  %"$init_bal_537" = bitcast i8* %"$init_bal_call_536" to %Uint128*
  %"$init_bal_538" = load %Uint128, %Uint128* %"$init_bal_537", align 8
  store %Uint128 %"$init_bal_538", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_539" = alloca %Uint128, align 8
  %"$init_bal_540" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_540", %Uint128* %"$_literal_cost_init_bal_539", align 8
  %"$$_literal_cost_init_bal_539_541" = bitcast %Uint128* %"$_literal_cost_init_bal_539" to i8*
  %"$_literal_cost_call_542" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_539_541")
  %"$gasadd_543" = add i64 %"$_literal_cost_call_542", 0
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 %"$gasadd_543", %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %entry
  %"$consume_548" = sub i64 %"$gasrem_544", %"$gasadd_543"
  store i64 %"$consume_548", i64* @_gasrem, align 8
  %"$gasrem_549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_550" = icmp ugt i64 1, %"$gasrem_549"
  br i1 %"$gascmp_550", label %"$out_of_gas_551", label %"$have_gas_552"

"$out_of_gas_551":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_552"

"$have_gas_552":                                  ; preds = %"$out_of_gas_551", %"$have_gas_547"
  %"$consume_553" = sub i64 %"$gasrem_549", 1
  store i64 %"$consume_553", i64* @_gasrem, align 8
  %"$execptr_load_554" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_554")
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$have_gas_552"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$have_gas_552"
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  %"$CheckSenderBalance__origin_560" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckSenderBalance__origin_560", align 1
  %"$CheckSenderBalance__sender_561" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckSenderBalance__sender_561", align 1
  %"$init_bal_562" = load %Uint128, %Uint128* %init_bal, align 8
  call void @"$CheckSenderBalance_319"(%Uint128 %_amount, [20 x i8]* %"$CheckSenderBalance__origin_560", [20 x i8]* %"$CheckSenderBalance__sender_561", %Uint128 %"$init_bal_562")
  ret void
}

define void @AcceptAndCheckSenderBalance(i8* %0) {
entry:
  %"$_amount_564" = getelementptr i8, i8* %0, i32 0
  %"$_amount_565" = bitcast i8* %"$_amount_564" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_565", align 8
  %"$_origin_566" = getelementptr i8, i8* %0, i32 16
  %"$_origin_567" = bitcast i8* %"$_origin_566" to [20 x i8]*
  %"$_sender_568" = getelementptr i8, i8* %0, i32 36
  %"$_sender_569" = bitcast i8* %"$_sender_568" to [20 x i8]*
  call void @"$AcceptAndCheckSenderBalance_530"(%Uint128 %_amount, [20 x i8]* %"$_origin_567", [20 x i8]* %"$_sender_569")
  ret void
}
