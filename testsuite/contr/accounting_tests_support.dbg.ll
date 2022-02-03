

; gas_remaining: 4001999
; ModuleID = 'AccountingTestsSupport'
source_filename = "AccountingTestsSupport"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_2" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_34" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_33"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_33" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_35"**, %"$TyDescrTy_ADTTyp_34"* }
%"$TyDescrTy_ADTTyp_Constr_35" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_40" = type { i32, %"$TyDescr_AddrFieldTyp_39"* }
%"$TyDescr_AddrFieldTyp_39" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_568" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_569" = type { %ParamDescrString, i32, %"$ParamDescr_568"* }
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
@"$TyDescr_Bystr_Prim_29" = global %"$TyDescrTy_PrimTyp_2" { i32 7, i32 0 }
@"$TyDescr_Bystr_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr_Prim_29" to i8*) }
@"$TyDescr_Bystr20_Prim_31" = global %"$TyDescrTy_PrimTyp_2" { i32 8, i32 20 }
@"$TyDescr_Bystr20_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_2"* @"$TyDescr_Bystr20_Prim_31" to i8*) }
@"$TyDescr_ADT_Bool_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_Bool_ADTTyp_Specl_51" to i8*) }
@"$TyDescr_ADT_List_String_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_List_String_ADTTyp_Specl_63" to i8*) }
@"$TyDescr_Addr_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_40"* @"$TyDescr_AddrFields_66" to i8*) }
@"$TyDescr_Bool_ADTTyp_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_53", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_33"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_33"*], [1 x %"$TyDescrTy_ADTTyp_Specl_33"*]* @"$TyDescr_Bool_ADTTyp_m_specls_52", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_43" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_44" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_44", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_43", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_46" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_47" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_47", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_49" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_35"*] [%"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_Bool_True_ADTTyp_Constr_45", %"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_Bool_False_ADTTyp_Constr_48"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_33" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_35"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_35"*], [2 x %"$TyDescrTy_ADTTyp_Constr_35"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_34"* @"$TyDescr_Bool_ADTTyp_42" }
@"$TyDescr_Bool_ADTTyp_m_specls_52" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_33"*] [%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_Bool_ADTTyp_Specl_51"]
@"$TyDescr_ADT_Bool_53" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_65", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_33"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_33"*], [1 x %"$TyDescrTy_ADTTyp_Specl_33"*]* @"$TyDescr_List_ADTTyp_m_specls_64", i32 0, i32 0) }
@"$TyDescr_List_Cons_String_Constr_m_args_55" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37"]
@"$TyDescr_ADT_Cons_56" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_56", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_55", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_58" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_59" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_35" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_59", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_58", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_61" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_35"*] [%"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_57", %"$TyDescrTy_ADTTyp_Constr_35"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_60"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_62" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_20"]
@"$TyDescr_List_String_ADTTyp_Specl_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_33" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_35"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_35"*], [2 x %"$TyDescrTy_ADTTyp_Constr_35"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_34"* @"$TyDescr_List_ADTTyp_54" }
@"$TyDescr_List_ADTTyp_m_specls_64" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_33"*] [%"$TyDescrTy_ADTTyp_Specl_33"* @"$TyDescr_List_String_ADTTyp_Specl_63"]
@"$TyDescr_ADT_List_65" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_66" = unnamed_addr constant %"$TyDescr_AddrTyp_40" { i32 -1, %"$TyDescr_AddrFieldTyp_39"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stored_strings_86" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_114" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_127" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_165" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$_balance_228" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$stringlit_283" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_288" = unnamed_addr constant [38 x i8] c"Unexpected balance at support contract"
@"$stringlit_291" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_298" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_320" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$stringlit_376" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_381" = unnamed_addr constant [50 x i8] c"Unexpected sender balance read by support contract"
@"$stringlit_384" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_391" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_413" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_465" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_531" = unnamed_addr constant [9 x i8] c"_balance\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_36", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_570" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_571" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_572" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_570", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_571", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_572", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_573" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_574" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_575" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Reset_576" = unnamed_addr constant [3 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_573", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_574", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_575", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_Reset_577" = unnamed_addr constant [5 x i8] c"Reset"
@"$tpname__amount_578" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_579" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_580" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_s_581" = unnamed_addr constant [1 x i8] c"s"
@"$tparams_StoreString_582" = unnamed_addr constant [4 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_578", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_579", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_580", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_s_581", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_String_20" }]
@"$tname_StoreString_583" = unnamed_addr constant [11 x i8] c"StoreString"
@"$tpname__amount_584" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_585" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_586" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept_587" = unnamed_addr constant [3 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_584", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_585", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_586", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_Accept_588" = unnamed_addr constant [6 x i8] c"Accept"
@"$tpname__amount_589" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_590" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_591" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwice_592" = unnamed_addr constant [3 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_589", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_590", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_591", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_AcceptTwice_593" = unnamed_addr constant [11 x i8] c"AcceptTwice"
@"$tpname__amount_594" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_595" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_596" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_NonAccept_597" = unnamed_addr constant [3 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_594", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_595", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_596", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_NonAccept_598" = unnamed_addr constant [9 x i8] c"NonAccept"
@"$tpname__amount_599" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_600" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_601" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckBalance_602" = unnamed_addr constant [3 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_599", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_600", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_601", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_AcceptAndCheckBalance_603" = unnamed_addr constant [21 x i8] c"AcceptAndCheckBalance"
@"$tpname__amount_604" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_605" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_606" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwiceAndCheckBalance_607" = unnamed_addr constant [3 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_604", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_605", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_606", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_AcceptTwiceAndCheckBalance_608" = unnamed_addr constant [26 x i8] c"AcceptTwiceAndCheckBalance"
@"$tpname__amount_609" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_610" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_611" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckSenderBalance_612" = unnamed_addr constant [3 x %"$ParamDescr_568"] [%"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_609", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_610", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_568" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_611", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_AcceptAndCheckSenderBalance_613" = unnamed_addr constant [27 x i8] c"AcceptAndCheckSenderBalance"
@_transition_parameters = constant [8 x %"$TransDescr_569"] [%"$TransDescr_569" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tname_Reset_577", i32 0, i32 0), i32 5 }, i32 3, %"$ParamDescr_568"* getelementptr inbounds ([3 x %"$ParamDescr_568"], [3 x %"$ParamDescr_568"]* @"$tparams_Reset_576", i32 0, i32 0) }, %"$TransDescr_569" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_StoreString_583", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_568"* getelementptr inbounds ([4 x %"$ParamDescr_568"], [4 x %"$ParamDescr_568"]* @"$tparams_StoreString_582", i32 0, i32 0) }, %"$TransDescr_569" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_Accept_588", i32 0, i32 0), i32 6 }, i32 3, %"$ParamDescr_568"* getelementptr inbounds ([3 x %"$ParamDescr_568"], [3 x %"$ParamDescr_568"]* @"$tparams_Accept_587", i32 0, i32 0) }, %"$TransDescr_569" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_AcceptTwice_593", i32 0, i32 0), i32 11 }, i32 3, %"$ParamDescr_568"* getelementptr inbounds ([3 x %"$ParamDescr_568"], [3 x %"$ParamDescr_568"]* @"$tparams_AcceptTwice_592", i32 0, i32 0) }, %"$TransDescr_569" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_NonAccept_598", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_568"* getelementptr inbounds ([3 x %"$ParamDescr_568"], [3 x %"$ParamDescr_568"]* @"$tparams_NonAccept_597", i32 0, i32 0) }, %"$TransDescr_569" { %ParamDescrString { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$tname_AcceptAndCheckBalance_603", i32 0, i32 0), i32 21 }, i32 3, %"$ParamDescr_568"* getelementptr inbounds ([3 x %"$ParamDescr_568"], [3 x %"$ParamDescr_568"]* @"$tparams_AcceptAndCheckBalance_602", i32 0, i32 0) }, %"$TransDescr_569" { %ParamDescrString { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$tname_AcceptTwiceAndCheckBalance_608", i32 0, i32 0), i32 26 }, i32 3, %"$ParamDescr_568"* getelementptr inbounds ([3 x %"$ParamDescr_568"], [3 x %"$ParamDescr_568"]* @"$tparams_AcceptTwiceAndCheckBalance_607", i32 0, i32 0) }, %"$TransDescr_569" { %ParamDescrString { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$tname_AcceptAndCheckSenderBalance_613", i32 0, i32 0), i32 27 }, i32 3, %"$ParamDescr_568"* getelementptr inbounds ([3 x %"$ParamDescr_568"], [3 x %"$ParamDescr_568"]* @"$tparams_AcceptAndCheckSenderBalance_612", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 8

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 5, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %entry
  %"$consume_71" = sub i64 %"$gasrem_67", 5
  store i64 %"$consume_71", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 1, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %entry
  %"$consume_76" = sub i64 %"$gasrem_72", 1
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %"$stored_strings_1" = alloca %TName_List_String*, align 8
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %"$adtval_82_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_82_salloc" = call i8* @_salloc(i8* %"$adtval_82_load", i64 1)
  %"$adtval_82" = bitcast i8* %"$adtval_82_salloc" to %CName_Nil_String*
  %"$adtgep_83" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_82", i32 0, i32 0
  store i8 1, i8* %"$adtgep_83", align 1
  %"$adtptr_84" = bitcast %CName_Nil_String* %"$adtval_82" to %TName_List_String*
  store %TName_List_String* %"$adtptr_84", %TName_List_String** %"$stored_strings_1", align 8, !dbg !11
  %"$execptr_load_85" = load i8*, i8** @_execptr, align 8
  %"$$stored_strings_1_87" = load %TName_List_String*, %TName_List_String** %"$stored_strings_1", align 8
  %"$update_value_88" = bitcast %TName_List_String* %"$$stored_strings_1_87" to i8*
  call void @_update_field(i8* %"$execptr_load_85", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_86", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i32 0, i8* null, i8* %"$update_value_88"), !dbg !11
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Reset_89"(%Uint128 %_amount, [20 x i8]* %"$_origin_90", [20 x i8]* %"$_sender_91") !dbg !12 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_90", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_91", align 1
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %entry
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %new_strings = alloca %TName_List_String*, align 8
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %"$adtval_102_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_102_salloc" = call i8* @_salloc(i8* %"$adtval_102_load", i64 1)
  %"$adtval_102" = bitcast i8* %"$adtval_102_salloc" to %CName_Nil_String*
  %"$adtgep_103" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_102", i32 0, i32 0
  store i8 1, i8* %"$adtgep_103", align 1
  %"$adtptr_104" = bitcast %CName_Nil_String* %"$adtval_102" to %TName_List_String*
  store %TName_List_String* %"$adtptr_104", %TName_List_String** %new_strings, align 8, !dbg !13
  %"$new_strings_105" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$$new_strings_105_106" = bitcast %TName_List_String* %"$new_strings_105" to i8*
  %"$_literal_cost_call_107" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i8* %"$$new_strings_105_106")
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 %"$_literal_cost_call_107", %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_100"
  %"$consume_112" = sub i64 %"$gasrem_108", %"$_literal_cost_call_107"
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %"$execptr_load_113" = load i8*, i8** @_execptr, align 8
  %"$new_strings_115" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$update_value_116" = bitcast %TName_List_String* %"$new_strings_115" to i8*
  call void @_update_field(i8* %"$execptr_load_113", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_114", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i32 0, i8* null, i8* %"$update_value_116"), !dbg !14
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Reset(i8* %0) !dbg !15 {
entry:
  %"$_amount_118" = getelementptr i8, i8* %0, i32 0
  %"$_amount_119" = bitcast i8* %"$_amount_118" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_119", align 8
  %"$_origin_120" = getelementptr i8, i8* %0, i32 16
  %"$_origin_121" = bitcast i8* %"$_origin_120" to [20 x i8]*
  %"$_sender_122" = getelementptr i8, i8* %0, i32 36
  %"$_sender_123" = bitcast i8* %"$_sender_122" to [20 x i8]*
  call void @"$Reset_89"(%Uint128 %_amount, [20 x i8]* %"$_origin_121", [20 x i8]* %"$_sender_123"), !dbg !16
  ret void
}

define internal void @"$StoreString_124"(%Uint128 %_amount, [20 x i8]* %"$_origin_125", [20 x i8]* %"$_sender_126", %String %s) !dbg !17 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_125", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_126", align 1
  %old_strings = alloca %TName_List_String*, align 8
  %"$execptr_load_128" = load i8*, i8** @_execptr, align 8
  %"$old_strings_call_129" = call i8* @_fetch_field(i8* %"$execptr_load_128", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_127", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i32 0, i8* null, i32 1), !dbg !18
  %"$old_strings_130" = bitcast i8* %"$old_strings_call_129" to %TName_List_String*
  store %TName_List_String* %"$old_strings_130", %TName_List_String** %old_strings, align 8
  %"$old_strings_131" = load %TName_List_String*, %TName_List_String** %old_strings, align 8
  %"$$old_strings_131_132" = bitcast %TName_List_String* %"$old_strings_131" to i8*
  %"$_literal_cost_call_133" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i8* %"$$old_strings_131_132")
  %"$gasadd_134" = add i64 %"$_literal_cost_call_133", 0
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 %"$gasadd_134", %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %entry
  %"$consume_139" = sub i64 %"$gasrem_135", %"$gasadd_134"
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %new_strings = alloca %TName_List_String*, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$old_strings_150" = load %TName_List_String*, %TName_List_String** %old_strings, align 8
  %"$adtval_151_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_151_salloc" = call i8* @_salloc(i8* %"$adtval_151_load", i64 25)
  %"$adtval_151" = bitcast i8* %"$adtval_151_salloc" to %CName_Cons_String*
  %"$adtgep_152" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_151", i32 0, i32 0
  store i8 0, i8* %"$adtgep_152", align 1
  %"$adtgep_153" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_151", i32 0, i32 1
  store %String %s, %String* %"$adtgep_153", align 8
  %"$adtgep_154" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_151", i32 0, i32 2
  store %TName_List_String* %"$old_strings_150", %TName_List_String** %"$adtgep_154", align 8
  %"$adtptr_155" = bitcast %CName_Cons_String* %"$adtval_151" to %TName_List_String*
  store %TName_List_String* %"$adtptr_155", %TName_List_String** %new_strings, align 8, !dbg !19
  %"$new_strings_156" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$$new_strings_156_157" = bitcast %TName_List_String* %"$new_strings_156" to i8*
  %"$_literal_cost_call_158" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i8* %"$$new_strings_156_157")
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 %"$_literal_cost_call_158", %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_148"
  %"$consume_163" = sub i64 %"$gasrem_159", %"$_literal_cost_call_158"
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %"$execptr_load_164" = load i8*, i8** @_execptr, align 8
  %"$new_strings_166" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$update_value_167" = bitcast %TName_List_String* %"$new_strings_166" to i8*
  call void @_update_field(i8* %"$execptr_load_164", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_165", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i32 0, i8* null, i8* %"$update_value_167"), !dbg !20
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @StoreString(i8* %0) !dbg !21 {
entry:
  %"$_amount_169" = getelementptr i8, i8* %0, i32 0
  %"$_amount_170" = bitcast i8* %"$_amount_169" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_170", align 8
  %"$_origin_171" = getelementptr i8, i8* %0, i32 16
  %"$_origin_172" = bitcast i8* %"$_origin_171" to [20 x i8]*
  %"$_sender_173" = getelementptr i8, i8* %0, i32 36
  %"$_sender_174" = bitcast i8* %"$_sender_173" to [20 x i8]*
  %"$s_175" = getelementptr i8, i8* %0, i32 56
  %"$s_176" = bitcast i8* %"$s_175" to %String*
  %s = load %String, %String* %"$s_176", align 8
  call void @"$StoreString_124"(%Uint128 %_amount, [20 x i8]* %"$_origin_172", [20 x i8]* %"$_sender_174", %String %s), !dbg !22
  ret void
}

define internal void @"$Accept_177"(%Uint128 %_amount, [20 x i8]* %"$_origin_178", [20 x i8]* %"$_sender_179") !dbg !23 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_178", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_179", align 1
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %entry
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$execptr_load_185" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_185"), !dbg !24
  ret void
}

declare void @_accept(i8*)

define void @Accept(i8* %0) !dbg !25 {
entry:
  %"$_amount_187" = getelementptr i8, i8* %0, i32 0
  %"$_amount_188" = bitcast i8* %"$_amount_187" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_188", align 8
  %"$_origin_189" = getelementptr i8, i8* %0, i32 16
  %"$_origin_190" = bitcast i8* %"$_origin_189" to [20 x i8]*
  %"$_sender_191" = getelementptr i8, i8* %0, i32 36
  %"$_sender_192" = bitcast i8* %"$_sender_191" to [20 x i8]*
  call void @"$Accept_177"(%Uint128 %_amount, [20 x i8]* %"$_origin_190", [20 x i8]* %"$_sender_192"), !dbg !26
  ret void
}

define internal void @"$AcceptTwice_193"(%Uint128 %_amount, [20 x i8]* %"$_origin_194", [20 x i8]* %"$_sender_195") !dbg !27 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_194", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_195", align 1
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %entry
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %"$execptr_load_201" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_201"), !dbg !28
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_199"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$execptr_load_207" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_207"), !dbg !29
  ret void
}

define void @AcceptTwice(i8* %0) !dbg !30 {
entry:
  %"$_amount_209" = getelementptr i8, i8* %0, i32 0
  %"$_amount_210" = bitcast i8* %"$_amount_209" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_210", align 8
  %"$_origin_211" = getelementptr i8, i8* %0, i32 16
  %"$_origin_212" = bitcast i8* %"$_origin_211" to [20 x i8]*
  %"$_sender_213" = getelementptr i8, i8* %0, i32 36
  %"$_sender_214" = bitcast i8* %"$_sender_213" to [20 x i8]*
  call void @"$AcceptTwice_193"(%Uint128 %_amount, [20 x i8]* %"$_origin_212", [20 x i8]* %"$_sender_214"), !dbg !31
  ret void
}

define internal void @"$NonAccept_215"(%Uint128 %_amount, [20 x i8]* %"$_origin_216", [20 x i8]* %"$_sender_217") !dbg !32 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_216", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_217", align 1
  ret void
}

define void @NonAccept(i8* %0) !dbg !33 {
entry:
  %"$_amount_219" = getelementptr i8, i8* %0, i32 0
  %"$_amount_220" = bitcast i8* %"$_amount_219" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_220", align 8
  %"$_origin_221" = getelementptr i8, i8* %0, i32 16
  %"$_origin_222" = bitcast i8* %"$_origin_221" to [20 x i8]*
  %"$_sender_223" = getelementptr i8, i8* %0, i32 36
  %"$_sender_224" = bitcast i8* %"$_sender_223" to [20 x i8]*
  call void @"$NonAccept_215"(%Uint128 %_amount, [20 x i8]* %"$_origin_222", [20 x i8]* %"$_sender_224"), !dbg !34
  ret void
}

define internal void @"$CheckBalance_225"(%Uint128 %_amount, [20 x i8]* %"$_origin_226", [20 x i8]* %"$_sender_227", %Uint128 %expected_balance) !dbg !35 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_226", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_227", align 1
  %cur_balance = alloca %Uint128, align 8
  %"$execptr_load_229" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_call_230" = call i8* @_fetch_field(i8* %"$execptr_load_229", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_228", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1), !dbg !36
  %"$cur_balance_231" = bitcast i8* %"$cur_balance_call_230" to %Uint128*
  %"$cur_balance_232" = load %Uint128, %Uint128* %"$cur_balance_231", align 8
  store %Uint128 %"$cur_balance_232", %Uint128* %cur_balance, align 8
  %"$_literal_cost_cur_balance_233" = alloca %Uint128, align 8
  %"$cur_balance_234" = load %Uint128, %Uint128* %cur_balance, align 8
  store %Uint128 %"$cur_balance_234", %Uint128* %"$_literal_cost_cur_balance_233", align 8
  %"$$_literal_cost_cur_balance_233_235" = bitcast %Uint128* %"$_literal_cost_cur_balance_233" to i8*
  %"$_literal_cost_call_236" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_cur_balance_233_235")
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
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_241"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %is_expected = alloca %TName_Bool*, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 8, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_246"
  %"$consume_253" = sub i64 %"$gasrem_249", 8
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$execptr_load_254" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_255" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_256" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_254", %Uint128 %expected_balance, %Uint128 %"$cur_balance_255"), !dbg !37
  store %TName_Bool* %"$eq_call_256", %TName_Bool** %is_expected, align 8, !dbg !37
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 2, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_252"
  %"$consume_262" = sub i64 %"$gasrem_258", 2
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %"$is_expected_264" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_265" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_264", i32 0, i32 0
  %"$is_expected_tag_266" = load i8, i8* %"$is_expected_tag_265", align 1
  switch i8 %"$is_expected_tag_266", label %"$empty_default_267" [
    i8 0, label %"$True_268"
    i8 1, label %"$False_270"
  ], !dbg !38

"$True_268":                                      ; preds = %"$have_gas_261"
  %"$is_expected_269" = bitcast %TName_Bool* %"$is_expected_264" to %CName_True*
  br label %"$matchsucc_263"

"$False_270":                                     ; preds = %"$have_gas_261"
  %"$is_expected_271" = bitcast %TName_Bool* %"$is_expected_264" to %CName_False*
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$False_270"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$False_270"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$msgobj_282_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_282_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_282_salloc_load", i64 121)
  %"$msgobj_282_salloc" = bitcast i8* %"$msgobj_282_salloc_salloc" to [121 x i8]*
  %"$msgobj_282" = bitcast [121 x i8]* %"$msgobj_282_salloc" to i8*
  store i8 3, i8* %"$msgobj_282", align 1
  %"$msgobj_fname_284" = getelementptr i8, i8* %"$msgobj_282", i32 1
  %"$msgobj_fname_285" = bitcast i8* %"$msgobj_fname_284" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_283", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_285", align 8
  %"$msgobj_td_286" = getelementptr i8, i8* %"$msgobj_282", i32 17
  %"$msgobj_td_287" = bitcast i8* %"$msgobj_td_286" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_287", align 8
  %"$msgobj_v_289" = getelementptr i8, i8* %"$msgobj_282", i32 25
  %"$msgobj_v_290" = bitcast i8* %"$msgobj_v_289" to %String*
  store %String { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"$stringlit_288", i32 0, i32 0), i32 38 }, %String* %"$msgobj_v_290", align 8
  %"$msgobj_fname_292" = getelementptr i8, i8* %"$msgobj_282", i32 41
  %"$msgobj_fname_293" = bitcast i8* %"$msgobj_fname_292" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_291", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_293", align 8
  %"$msgobj_td_294" = getelementptr i8, i8* %"$msgobj_282", i32 57
  %"$msgobj_td_295" = bitcast i8* %"$msgobj_td_294" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_295", align 8
  %"$msgobj_v_296" = getelementptr i8, i8* %"$msgobj_282", i32 65
  %"$msgobj_v_297" = bitcast i8* %"$msgobj_v_296" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_297", align 8
  %"$msgobj_fname_299" = getelementptr i8, i8* %"$msgobj_282", i32 81
  %"$msgobj_fname_300" = bitcast i8* %"$msgobj_fname_299" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_298", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_300", align 8
  %"$msgobj_td_301" = getelementptr i8, i8* %"$msgobj_282", i32 97
  %"$msgobj_td_302" = bitcast i8* %"$msgobj_td_301" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_302", align 8
  %"$cur_balance_303" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_304" = getelementptr i8, i8* %"$msgobj_282", i32 105
  %"$msgobj_v_305" = bitcast i8* %"$msgobj_v_304" to %Uint128*
  store %Uint128 %"$cur_balance_303", %Uint128* %"$msgobj_v_305", align 8
  store i8* %"$msgobj_282", i8** %e, align 8, !dbg !39
  %"$e_307" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_309" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_307")
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 %"$_literal_cost_call_309", %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_280"
  %"$consume_314" = sub i64 %"$gasrem_310", %"$_literal_cost_call_309"
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$execptr_load_315" = load i8*, i8** @_execptr, align 8
  %"$e_316" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_315", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_316"), !dbg !42
  br label %"$matchsucc_263"

"$empty_default_267":                             ; preds = %"$have_gas_261"
  br label %"$matchsucc_263"

"$matchsucc_263":                                 ; preds = %"$have_gas_313", %"$True_268", %"$empty_default_267"
  ret void
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$CheckSenderBalance_317"(%Uint128 %_amount, [20 x i8]* %"$_origin_318", [20 x i8]* %"$_sender_319", %Uint128 %expected_balance) !dbg !43 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_318", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_319", align 1
  %cur_balance = alloca %Uint128, align 8
  %"$execptr_load_321" = load i8*, i8** @_execptr, align 8
  %"$cur_balance__sender_322" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$cur_balance__sender_322", align 1
  %"$cur_balance_call_323" = call i8* @_fetch_remote_field(i8* %"$execptr_load_321", [20 x i8]* %"$cur_balance__sender_322", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_320", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1), !dbg !44
  %"$cur_balance_324" = bitcast i8* %"$cur_balance_call_323" to %Uint128*
  %"$cur_balance_325" = load %Uint128, %Uint128* %"$cur_balance_324", align 8
  store %Uint128 %"$cur_balance_325", %Uint128* %cur_balance, align 8
  %"$_literal_cost_cur_balance_326" = alloca %Uint128, align 8
  %"$cur_balance_327" = load %Uint128, %Uint128* %cur_balance, align 8
  store %Uint128 %"$cur_balance_327", %Uint128* %"$_literal_cost_cur_balance_326", align 8
  %"$$_literal_cost_cur_balance_326_328" = bitcast %Uint128* %"$_literal_cost_cur_balance_326" to i8*
  %"$_literal_cost_call_329" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_cur_balance_326_328")
  %"$gasadd_330" = add i64 %"$_literal_cost_call_329", 0
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 %"$gasadd_330", %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %entry
  %"$consume_335" = sub i64 %"$gasrem_331", %"$gasadd_330"
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_334"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %is_expected = alloca %TName_Bool*, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 8, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_339"
  %"$consume_346" = sub i64 %"$gasrem_342", 8
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %"$execptr_load_347" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_348" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_349" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_347", %Uint128 %expected_balance, %Uint128 %"$cur_balance_348"), !dbg !45
  store %TName_Bool* %"$eq_call_349", %TName_Bool** %is_expected, align 8, !dbg !45
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 2, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_345"
  %"$consume_355" = sub i64 %"$gasrem_351", 2
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %"$is_expected_357" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_358" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_357", i32 0, i32 0
  %"$is_expected_tag_359" = load i8, i8* %"$is_expected_tag_358", align 1
  switch i8 %"$is_expected_tag_359", label %"$empty_default_360" [
    i8 0, label %"$True_361"
    i8 1, label %"$False_363"
  ], !dbg !46

"$True_361":                                      ; preds = %"$have_gas_354"
  %"$is_expected_362" = bitcast %TName_Bool* %"$is_expected_357" to %CName_True*
  br label %"$matchsucc_356"

"$False_363":                                     ; preds = %"$have_gas_354"
  %"$is_expected_364" = bitcast %TName_Bool* %"$is_expected_357" to %CName_False*
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$False_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$False_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %"$msgobj_375_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_375_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_375_salloc_load", i64 121)
  %"$msgobj_375_salloc" = bitcast i8* %"$msgobj_375_salloc_salloc" to [121 x i8]*
  %"$msgobj_375" = bitcast [121 x i8]* %"$msgobj_375_salloc" to i8*
  store i8 3, i8* %"$msgobj_375", align 1
  %"$msgobj_fname_377" = getelementptr i8, i8* %"$msgobj_375", i32 1
  %"$msgobj_fname_378" = bitcast i8* %"$msgobj_fname_377" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_376", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_378", align 8
  %"$msgobj_td_379" = getelementptr i8, i8* %"$msgobj_375", i32 17
  %"$msgobj_td_380" = bitcast i8* %"$msgobj_td_379" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_380", align 8
  %"$msgobj_v_382" = getelementptr i8, i8* %"$msgobj_375", i32 25
  %"$msgobj_v_383" = bitcast i8* %"$msgobj_v_382" to %String*
  store %String { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"$stringlit_381", i32 0, i32 0), i32 50 }, %String* %"$msgobj_v_383", align 8
  %"$msgobj_fname_385" = getelementptr i8, i8* %"$msgobj_375", i32 41
  %"$msgobj_fname_386" = bitcast i8* %"$msgobj_fname_385" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_384", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_386", align 8
  %"$msgobj_td_387" = getelementptr i8, i8* %"$msgobj_375", i32 57
  %"$msgobj_td_388" = bitcast i8* %"$msgobj_td_387" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_388", align 8
  %"$msgobj_v_389" = getelementptr i8, i8* %"$msgobj_375", i32 65
  %"$msgobj_v_390" = bitcast i8* %"$msgobj_v_389" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_390", align 8
  %"$msgobj_fname_392" = getelementptr i8, i8* %"$msgobj_375", i32 81
  %"$msgobj_fname_393" = bitcast i8* %"$msgobj_fname_392" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_391", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_393", align 8
  %"$msgobj_td_394" = getelementptr i8, i8* %"$msgobj_375", i32 97
  %"$msgobj_td_395" = bitcast i8* %"$msgobj_td_394" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_395", align 8
  %"$cur_balance_396" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_397" = getelementptr i8, i8* %"$msgobj_375", i32 105
  %"$msgobj_v_398" = bitcast i8* %"$msgobj_v_397" to %Uint128*
  store %Uint128 %"$cur_balance_396", %Uint128* %"$msgobj_v_398", align 8
  store i8* %"$msgobj_375", i8** %e, align 8, !dbg !47
  %"$e_400" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_402" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_400")
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 %"$_literal_cost_call_402", %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_373"
  %"$consume_407" = sub i64 %"$gasrem_403", %"$_literal_cost_call_402"
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %"$execptr_load_408" = load i8*, i8** @_execptr, align 8
  %"$e_409" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_408", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_409"), !dbg !50
  br label %"$matchsucc_356"

"$empty_default_360":                             ; preds = %"$have_gas_354"
  br label %"$matchsucc_356"

"$matchsucc_356":                                 ; preds = %"$have_gas_406", %"$True_361", %"$empty_default_360"
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define internal void @"$AcceptAndCheckBalance_410"(%Uint128 %_amount, [20 x i8]* %"$_origin_411", [20 x i8]* %"$_sender_412") !dbg !51 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_411", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_412", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_414" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_415" = call i8* @_fetch_field(i8* %"$execptr_load_414", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_413", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1), !dbg !52
  %"$init_bal_416" = bitcast i8* %"$init_bal_call_415" to %Uint128*
  %"$init_bal_417" = load %Uint128, %Uint128* %"$init_bal_416", align 8
  store %Uint128 %"$init_bal_417", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_418" = alloca %Uint128, align 8
  %"$init_bal_419" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_419", %Uint128* %"$_literal_cost_init_bal_418", align 8
  %"$$_literal_cost_init_bal_418_420" = bitcast %Uint128* %"$_literal_cost_init_bal_418" to i8*
  %"$_literal_cost_call_421" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_418_420")
  %"$gasadd_422" = add i64 %"$_literal_cost_call_421", 0
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 %"$gasadd_422", %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %entry
  %"$consume_427" = sub i64 %"$gasrem_423", %"$gasadd_422"
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_426"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %"$execptr_load_433" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_433"), !dbg !53
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_431"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 8, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_437"
  %"$consume_444" = sub i64 %"$gasrem_440", 8
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %"$init_bal_445" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_446" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_445", %Uint128 %_amount), !dbg !54
  store %Uint128 %"$add_call_446", %Uint128* %expected_balance, align 8, !dbg !54
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_443"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %"$CheckBalance__origin_452" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_452", align 1
  %"$CheckBalance__sender_453" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_453", align 1
  %"$expected_balance_454" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_225"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_452", [20 x i8]* %"$CheckBalance__sender_453", %Uint128 %"$expected_balance_454"), !dbg !55
  ret void
}

declare %Uint128 @_add_Uint128(%Uint128, %Uint128)

define void @AcceptAndCheckBalance(i8* %0) !dbg !56 {
entry:
  %"$_amount_456" = getelementptr i8, i8* %0, i32 0
  %"$_amount_457" = bitcast i8* %"$_amount_456" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_457", align 8
  %"$_origin_458" = getelementptr i8, i8* %0, i32 16
  %"$_origin_459" = bitcast i8* %"$_origin_458" to [20 x i8]*
  %"$_sender_460" = getelementptr i8, i8* %0, i32 36
  %"$_sender_461" = bitcast i8* %"$_sender_460" to [20 x i8]*
  call void @"$AcceptAndCheckBalance_410"(%Uint128 %_amount, [20 x i8]* %"$_origin_459", [20 x i8]* %"$_sender_461"), !dbg !57
  ret void
}

define internal void @"$AcceptTwiceAndCheckBalance_462"(%Uint128 %_amount, [20 x i8]* %"$_origin_463", [20 x i8]* %"$_sender_464") !dbg !58 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_463", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_464", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_466" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_467" = call i8* @_fetch_field(i8* %"$execptr_load_466", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_465", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1), !dbg !59
  %"$init_bal_468" = bitcast i8* %"$init_bal_call_467" to %Uint128*
  %"$init_bal_469" = load %Uint128, %Uint128* %"$init_bal_468", align 8
  store %Uint128 %"$init_bal_469", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_470" = alloca %Uint128, align 8
  %"$init_bal_471" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_471", %Uint128* %"$_literal_cost_init_bal_470", align 8
  %"$$_literal_cost_init_bal_470_472" = bitcast %Uint128* %"$_literal_cost_init_bal_470" to i8*
  %"$_literal_cost_call_473" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_470_472")
  %"$gasadd_474" = add i64 %"$_literal_cost_call_473", 0
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 %"$gasadd_474", %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %entry
  %"$consume_479" = sub i64 %"$gasrem_475", %"$gasadd_474"
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_478"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %"$execptr_load_485" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_485"), !dbg !60
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %"$have_gas_483"
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 8, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$have_gas_489"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$have_gas_489"
  %"$consume_496" = sub i64 %"$gasrem_492", 8
  store i64 %"$consume_496", i64* @_gasrem, align 8
  %"$init_bal_497" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_498" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_497", %Uint128 %_amount), !dbg !61
  store %Uint128 %"$add_call_498", %Uint128* %expected_balance, align 8, !dbg !61
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$have_gas_495"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$have_gas_495"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  %"$CheckBalance__origin_504" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_504", align 1
  %"$CheckBalance__sender_505" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_505", align 1
  %"$expected_balance_506" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_225"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_504", [20 x i8]* %"$CheckBalance__sender_505", %Uint128 %"$expected_balance_506"), !dbg !62
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 1, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %"$have_gas_502"
  %"$consume_511" = sub i64 %"$gasrem_507", 1
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %"$execptr_load_512" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_512"), !dbg !63
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_510"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$CheckBalance__origin_518" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_518", align 1
  %"$CheckBalance__sender_519" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_519", align 1
  %"$expected_balance_520" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_225"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_518", [20 x i8]* %"$CheckBalance__sender_519", %Uint128 %"$expected_balance_520"), !dbg !64
  ret void
}

define void @AcceptTwiceAndCheckBalance(i8* %0) !dbg !65 {
entry:
  %"$_amount_522" = getelementptr i8, i8* %0, i32 0
  %"$_amount_523" = bitcast i8* %"$_amount_522" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_523", align 8
  %"$_origin_524" = getelementptr i8, i8* %0, i32 16
  %"$_origin_525" = bitcast i8* %"$_origin_524" to [20 x i8]*
  %"$_sender_526" = getelementptr i8, i8* %0, i32 36
  %"$_sender_527" = bitcast i8* %"$_sender_526" to [20 x i8]*
  call void @"$AcceptTwiceAndCheckBalance_462"(%Uint128 %_amount, [20 x i8]* %"$_origin_525", [20 x i8]* %"$_sender_527"), !dbg !66
  ret void
}

define internal void @"$AcceptAndCheckSenderBalance_528"(%Uint128 %_amount, [20 x i8]* %"$_origin_529", [20 x i8]* %"$_sender_530") !dbg !67 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_529", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_530", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_532" = load i8*, i8** @_execptr, align 8
  %"$init_bal__sender_533" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$init_bal__sender_533", align 1
  %"$init_bal_call_534" = call i8* @_fetch_remote_field(i8* %"$execptr_load_532", [20 x i8]* %"$init_bal__sender_533", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_531", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1), !dbg !68
  %"$init_bal_535" = bitcast i8* %"$init_bal_call_534" to %Uint128*
  %"$init_bal_536" = load %Uint128, %Uint128* %"$init_bal_535", align 8
  store %Uint128 %"$init_bal_536", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_537" = alloca %Uint128, align 8
  %"$init_bal_538" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_538", %Uint128* %"$_literal_cost_init_bal_537", align 8
  %"$$_literal_cost_init_bal_537_539" = bitcast %Uint128* %"$_literal_cost_init_bal_537" to i8*
  %"$_literal_cost_call_540" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_537_539")
  %"$gasadd_541" = add i64 %"$_literal_cost_call_540", 0
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 %"$gasadd_541", %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %entry
  %"$consume_546" = sub i64 %"$gasrem_542", %"$gasadd_541"
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$execptr_load_552" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_552"), !dbg !69
  %"$gasrem_553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_554" = icmp ugt i64 1, %"$gasrem_553"
  br i1 %"$gascmp_554", label %"$out_of_gas_555", label %"$have_gas_556"

"$out_of_gas_555":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_556"

"$have_gas_556":                                  ; preds = %"$out_of_gas_555", %"$have_gas_550"
  %"$consume_557" = sub i64 %"$gasrem_553", 1
  store i64 %"$consume_557", i64* @_gasrem, align 8
  %"$CheckSenderBalance__origin_558" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckSenderBalance__origin_558", align 1
  %"$CheckSenderBalance__sender_559" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckSenderBalance__sender_559", align 1
  %"$init_bal_560" = load %Uint128, %Uint128* %init_bal, align 8
  call void @"$CheckSenderBalance_317"(%Uint128 %_amount, [20 x i8]* %"$CheckSenderBalance__origin_558", [20 x i8]* %"$CheckSenderBalance__sender_559", %Uint128 %"$init_bal_560"), !dbg !70
  ret void
}

define void @AcceptAndCheckSenderBalance(i8* %0) !dbg !71 {
entry:
  %"$_amount_562" = getelementptr i8, i8* %0, i32 0
  %"$_amount_563" = bitcast i8* %"$_amount_562" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_563", align 8
  %"$_origin_564" = getelementptr i8, i8* %0, i32 16
  %"$_origin_565" = bitcast i8* %"$_origin_564" to [20 x i8]*
  %"$_sender_566" = getelementptr i8, i8* %0, i32 36
  %"$_sender_567" = bitcast i8* %"$_sender_566" to [20 x i8]*
  call void @"$AcceptAndCheckSenderBalance_528"(%Uint128 %_amount, [20 x i8]* %"$_origin_565", [20 x i8]* %"$_sender_567"), !dbg !72
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "accounting_tests_support.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 5, column: 38, scope: !10)
!12 = distinct !DISubprogram(name: "Reset", linkageName: "Reset", scope: !2, file: !2, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 8, column: 17, scope: !12)
!14 = !DILocation(line: 9, column: 3, scope: !12)
!15 = distinct !DISubprogram(name: "Reset", linkageName: "Reset", scope: !2, file: !2, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 7, column: 12, scope: !15)
!17 = distinct !DISubprogram(name: "StoreString", linkageName: "StoreString", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 13, column: 3, scope: !17)
!19 = !DILocation(line: 14, column: 17, scope: !17)
!20 = !DILocation(line: 15, column: 3, scope: !17)
!21 = distinct !DISubprogram(name: "StoreString", linkageName: "StoreString", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 12, column: 12, scope: !21)
!23 = distinct !DISubprogram(name: "Accept", linkageName: "Accept", scope: !2, file: !2, line: 18, type: !6, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 19, column: 3, scope: !23)
!25 = distinct !DISubprogram(name: "Accept", linkageName: "Accept", scope: !2, file: !2, line: 18, type: !6, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 18, column: 12, scope: !25)
!27 = distinct !DISubprogram(name: "AcceptTwice", linkageName: "AcceptTwice", scope: !2, file: !2, line: 22, type: !6, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 23, column: 3, scope: !27)
!29 = !DILocation(line: 24, column: 3, scope: !27)
!30 = distinct !DISubprogram(name: "AcceptTwice", linkageName: "AcceptTwice", scope: !2, file: !2, line: 22, type: !6, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!31 = !DILocation(line: 22, column: 12, scope: !30)
!32 = distinct !DISubprogram(name: "NonAccept", linkageName: "NonAccept", scope: !2, file: !2, line: 27, type: !6, scopeLine: 27, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = distinct !DISubprogram(name: "NonAccept", linkageName: "NonAccept", scope: !2, file: !2, line: 27, type: !6, scopeLine: 27, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DILocation(line: 27, column: 12, scope: !33)
!35 = distinct !DISubprogram(name: "CheckBalance", linkageName: "CheckBalance", scope: !2, file: !2, line: 30, type: !6, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!36 = !DILocation(line: 31, column: 3, scope: !35)
!37 = !DILocation(line: 32, column: 17, scope: !35)
!38 = !DILocation(line: 33, column: 3, scope: !35)
!39 = !DILocation(line: 36, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !2, line: 35, column: 5)
!41 = distinct !DILexicalBlock(scope: !35, file: !2, line: 33, column: 3)
!42 = !DILocation(line: 39, column: 5, scope: !40)
!43 = distinct !DISubprogram(name: "CheckSenderBalance", linkageName: "CheckSenderBalance", scope: !2, file: !2, line: 43, type: !6, scopeLine: 43, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!44 = !DILocation(line: 44, column: 3, scope: !43)
!45 = !DILocation(line: 45, column: 17, scope: !43)
!46 = !DILocation(line: 46, column: 3, scope: !43)
!47 = !DILocation(line: 49, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !2, line: 48, column: 5)
!49 = distinct !DILexicalBlock(scope: !43, file: !2, line: 46, column: 3)
!50 = !DILocation(line: 52, column: 5, scope: !48)
!51 = distinct !DISubprogram(name: "AcceptAndCheckBalance", linkageName: "AcceptAndCheckBalance", scope: !2, file: !2, line: 56, type: !6, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!52 = !DILocation(line: 57, column: 3, scope: !51)
!53 = !DILocation(line: 58, column: 3, scope: !51)
!54 = !DILocation(line: 59, column: 22, scope: !51)
!55 = !DILocation(line: 60, column: 3, scope: !51)
!56 = distinct !DISubprogram(name: "AcceptAndCheckBalance", linkageName: "AcceptAndCheckBalance", scope: !2, file: !2, line: 56, type: !6, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!57 = !DILocation(line: 56, column: 12, scope: !56)
!58 = distinct !DISubprogram(name: "AcceptTwiceAndCheckBalance", linkageName: "AcceptTwiceAndCheckBalance", scope: !2, file: !2, line: 63, type: !6, scopeLine: 63, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!59 = !DILocation(line: 64, column: 3, scope: !58)
!60 = !DILocation(line: 65, column: 3, scope: !58)
!61 = !DILocation(line: 66, column: 22, scope: !58)
!62 = !DILocation(line: 67, column: 3, scope: !58)
!63 = !DILocation(line: 68, column: 3, scope: !58)
!64 = !DILocation(line: 69, column: 3, scope: !58)
!65 = distinct !DISubprogram(name: "AcceptTwiceAndCheckBalance", linkageName: "AcceptTwiceAndCheckBalance", scope: !2, file: !2, line: 63, type: !6, scopeLine: 63, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!66 = !DILocation(line: 63, column: 12, scope: !65)
!67 = distinct !DISubprogram(name: "AcceptAndCheckSenderBalance", linkageName: "AcceptAndCheckSenderBalance", scope: !2, file: !2, line: 72, type: !6, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 73, column: 3, scope: !67)
!69 = !DILocation(line: 74, column: 3, scope: !67)
!70 = !DILocation(line: 75, column: 3, scope: !67)
!71 = distinct !DISubprogram(name: "AcceptAndCheckSenderBalance", linkageName: "AcceptAndCheckSenderBalance", scope: !2, file: !2, line: 72, type: !6, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = !DILocation(line: 72, column: 12, scope: !71)
