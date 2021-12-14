

; gas_remaining: 4001999
; ModuleID = 'AccountingTestsSupport'
source_filename = "AccountingTestsSupport"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%"$ParamDescr_563" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_564" = type { %ParamDescrString, i32, %"$ParamDescr_563"* }
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
@"$stored_strings_81" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_109" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_122" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_160" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$_balance_223" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$stringlit_278" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_283" = unnamed_addr constant [38 x i8] c"Unexpected balance at support contract"
@"$stringlit_286" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_293" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_315" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$stringlit_371" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_376" = unnamed_addr constant [50 x i8] c"Unexpected sender balance read by support contract"
@"$stringlit_379" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_386" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_408" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_460" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_526" = unnamed_addr constant [9 x i8] c"_balance\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_26", %_TyDescrTy_Typ* @"$TyDescr_Int64_8", %_TyDescrTy_Typ* @"$TyDescr_Addr_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_36", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32", %_TyDescrTy_Typ* @"$TyDescr_Uint256_18", %_TyDescrTy_Typ* @"$TyDescr_Uint32_6", %_TyDescrTy_Typ* @"$TyDescr_Uint64_10", %_TyDescrTy_Typ* @"$TyDescr_Bnum_22", %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", %_TyDescrTy_Typ* @"$TyDescr_Int256_16", %_TyDescrTy_Typ* @"$TyDescr_Int128_12", %_TyDescrTy_Typ* @"$TyDescr_Bystr_30", %_TyDescrTy_Typ* @"$TyDescr_Message_24", %_TyDescrTy_Typ* @"$TyDescr_Int32_4"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_565" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_566" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_567" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_565", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_6" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_566", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_32" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_567", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_22" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_568" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_569" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_570" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Reset_571" = unnamed_addr constant [3 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_568", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_569", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_570", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_Reset_572" = unnamed_addr constant [5 x i8] c"Reset"
@"$tpname__amount_573" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_574" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_575" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_s_576" = unnamed_addr constant [1 x i8] c"s"
@"$tparams_StoreString_577" = unnamed_addr constant [4 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_573", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_574", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_575", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_s_576", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_String_20" }]
@"$tname_StoreString_578" = unnamed_addr constant [11 x i8] c"StoreString"
@"$tpname__amount_579" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_580" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_581" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept_582" = unnamed_addr constant [3 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_579", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_580", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_581", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_Accept_583" = unnamed_addr constant [6 x i8] c"Accept"
@"$tpname__amount_584" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_585" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_586" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwice_587" = unnamed_addr constant [3 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_584", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_585", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_586", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_AcceptTwice_588" = unnamed_addr constant [11 x i8] c"AcceptTwice"
@"$tpname__amount_589" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_590" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_591" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_NonAccept_592" = unnamed_addr constant [3 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_589", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_590", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_591", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_NonAccept_593" = unnamed_addr constant [9 x i8] c"NonAccept"
@"$tpname__amount_594" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_595" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_596" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckBalance_597" = unnamed_addr constant [3 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_594", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_595", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_596", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_AcceptAndCheckBalance_598" = unnamed_addr constant [21 x i8] c"AcceptAndCheckBalance"
@"$tpname__amount_599" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_600" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_601" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwiceAndCheckBalance_602" = unnamed_addr constant [3 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_599", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_600", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_601", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_AcceptTwiceAndCheckBalance_603" = unnamed_addr constant [26 x i8] c"AcceptTwiceAndCheckBalance"
@"$tpname__amount_604" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_605" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_606" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckSenderBalance_607" = unnamed_addr constant [3 x %"$ParamDescr_563"] [%"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_604", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_14" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_605", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }, %"$ParamDescr_563" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_606", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_41" }]
@"$tname_AcceptAndCheckSenderBalance_608" = unnamed_addr constant [27 x i8] c"AcceptAndCheckSenderBalance"
@_transition_parameters = constant [8 x %"$TransDescr_564"] [%"$TransDescr_564" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tname_Reset_572", i32 0, i32 0), i32 5 }, i32 3, %"$ParamDescr_563"* getelementptr inbounds ([3 x %"$ParamDescr_563"], [3 x %"$ParamDescr_563"]* @"$tparams_Reset_571", i32 0, i32 0) }, %"$TransDescr_564" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_StoreString_578", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_563"* getelementptr inbounds ([4 x %"$ParamDescr_563"], [4 x %"$ParamDescr_563"]* @"$tparams_StoreString_577", i32 0, i32 0) }, %"$TransDescr_564" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_Accept_583", i32 0, i32 0), i32 6 }, i32 3, %"$ParamDescr_563"* getelementptr inbounds ([3 x %"$ParamDescr_563"], [3 x %"$ParamDescr_563"]* @"$tparams_Accept_582", i32 0, i32 0) }, %"$TransDescr_564" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_AcceptTwice_588", i32 0, i32 0), i32 11 }, i32 3, %"$ParamDescr_563"* getelementptr inbounds ([3 x %"$ParamDescr_563"], [3 x %"$ParamDescr_563"]* @"$tparams_AcceptTwice_587", i32 0, i32 0) }, %"$TransDescr_564" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_NonAccept_593", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_563"* getelementptr inbounds ([3 x %"$ParamDescr_563"], [3 x %"$ParamDescr_563"]* @"$tparams_NonAccept_592", i32 0, i32 0) }, %"$TransDescr_564" { %ParamDescrString { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$tname_AcceptAndCheckBalance_598", i32 0, i32 0), i32 21 }, i32 3, %"$ParamDescr_563"* getelementptr inbounds ([3 x %"$ParamDescr_563"], [3 x %"$ParamDescr_563"]* @"$tparams_AcceptAndCheckBalance_597", i32 0, i32 0) }, %"$TransDescr_564" { %ParamDescrString { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$tname_AcceptTwiceAndCheckBalance_603", i32 0, i32 0), i32 26 }, i32 3, %"$ParamDescr_563"* getelementptr inbounds ([3 x %"$ParamDescr_563"], [3 x %"$ParamDescr_563"]* @"$tparams_AcceptTwiceAndCheckBalance_602", i32 0, i32 0) }, %"$TransDescr_564" { %ParamDescrString { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$tname_AcceptAndCheckSenderBalance_608", i32 0, i32 0), i32 27 }, i32 3, %"$ParamDescr_563"* getelementptr inbounds ([3 x %"$ParamDescr_563"], [3 x %"$ParamDescr_563"]* @"$tparams_AcceptAndCheckSenderBalance_607", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 8

define void @_init_libs() {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_init_state() {
entry:
  %"$stored_strings_1" = alloca %TName_List_String*, align 8
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 1, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %entry
  %"$consume_76" = sub i64 %"$gasrem_72", 1
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %"$adtval_77_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_77_salloc" = call i8* @_salloc(i8* %"$adtval_77_load", i64 1)
  %"$adtval_77" = bitcast i8* %"$adtval_77_salloc" to %CName_Nil_String*
  %"$adtgep_78" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_77", i32 0, i32 0
  store i8 1, i8* %"$adtgep_78", align 1
  %"$adtptr_79" = bitcast %CName_Nil_String* %"$adtval_77" to %TName_List_String*
  store %TName_List_String* %"$adtptr_79", %TName_List_String** %"$stored_strings_1", align 8
  %"$execptr_load_80" = load i8*, i8** @_execptr, align 8
  %"$$stored_strings_1_82" = load %TName_List_String*, %TName_List_String** %"$stored_strings_1", align 8
  %"$update_value_83" = bitcast %TName_List_String* %"$$stored_strings_1_82" to i8*
  call void @_update_field(i8* %"$execptr_load_80", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_81", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i32 0, i8* null, i8* %"$update_value_83")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Reset_84"(%Uint128 %_amount, [20 x i8]* %"$_origin_85", [20 x i8]* %"$_sender_86") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_85", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_86", align 1
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %entry
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem, align 8
  %new_strings = alloca %TName_List_String*, align 8
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %"$adtval_97_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_97_salloc" = call i8* @_salloc(i8* %"$adtval_97_load", i64 1)
  %"$adtval_97" = bitcast i8* %"$adtval_97_salloc" to %CName_Nil_String*
  %"$adtgep_98" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_97", i32 0, i32 0
  store i8 1, i8* %"$adtgep_98", align 1
  %"$adtptr_99" = bitcast %CName_Nil_String* %"$adtval_97" to %TName_List_String*
  store %TName_List_String* %"$adtptr_99", %TName_List_String** %new_strings, align 8
  %"$new_strings_100" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$$new_strings_100_101" = bitcast %TName_List_String* %"$new_strings_100" to i8*
  %"$_literal_cost_call_102" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i8* %"$$new_strings_100_101")
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 %"$_literal_cost_call_102", %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_95"
  %"$consume_107" = sub i64 %"$gasrem_103", %"$_literal_cost_call_102"
  store i64 %"$consume_107", i64* @_gasrem, align 8
  %"$execptr_load_108" = load i8*, i8** @_execptr, align 8
  %"$new_strings_110" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$update_value_111" = bitcast %TName_List_String* %"$new_strings_110" to i8*
  call void @_update_field(i8* %"$execptr_load_108", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_109", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i32 0, i8* null, i8* %"$update_value_111")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Reset(i8* %0) {
entry:
  %"$_amount_113" = getelementptr i8, i8* %0, i32 0
  %"$_amount_114" = bitcast i8* %"$_amount_113" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_114", align 8
  %"$_origin_115" = getelementptr i8, i8* %0, i32 16
  %"$_origin_116" = bitcast i8* %"$_origin_115" to [20 x i8]*
  %"$_sender_117" = getelementptr i8, i8* %0, i32 36
  %"$_sender_118" = bitcast i8* %"$_sender_117" to [20 x i8]*
  call void @"$Reset_84"(%Uint128 %_amount, [20 x i8]* %"$_origin_116", [20 x i8]* %"$_sender_118")
  ret void
}

define internal void @"$StoreString_119"(%Uint128 %_amount, [20 x i8]* %"$_origin_120", [20 x i8]* %"$_sender_121", %String %s) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_120", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_121", align 1
  %old_strings = alloca %TName_List_String*, align 8
  %"$execptr_load_123" = load i8*, i8** @_execptr, align 8
  %"$old_strings_call_124" = call i8* @_fetch_field(i8* %"$execptr_load_123", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_122", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i32 0, i8* null, i32 1)
  %"$old_strings_125" = bitcast i8* %"$old_strings_call_124" to %TName_List_String*
  store %TName_List_String* %"$old_strings_125", %TName_List_String** %old_strings, align 8
  %"$old_strings_126" = load %TName_List_String*, %TName_List_String** %old_strings, align 8
  %"$$old_strings_126_127" = bitcast %TName_List_String* %"$old_strings_126" to i8*
  %"$_literal_cost_call_128" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i8* %"$$old_strings_126_127")
  %"$gasadd_129" = add i64 %"$_literal_cost_call_128", 0
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 %"$gasadd_129", %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %entry
  %"$consume_134" = sub i64 %"$gasrem_130", %"$gasadd_129"
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %new_strings = alloca %TName_List_String*, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %"$old_strings_145" = load %TName_List_String*, %TName_List_String** %old_strings, align 8
  %"$adtval_146_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_146_salloc" = call i8* @_salloc(i8* %"$adtval_146_load", i64 25)
  %"$adtval_146" = bitcast i8* %"$adtval_146_salloc" to %CName_Cons_String*
  %"$adtgep_147" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_146", i32 0, i32 0
  store i8 0, i8* %"$adtgep_147", align 1
  %"$adtgep_148" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_146", i32 0, i32 1
  store %String %s, %String* %"$adtgep_148", align 8
  %"$adtgep_149" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_146", i32 0, i32 2
  store %TName_List_String* %"$old_strings_145", %TName_List_String** %"$adtgep_149", align 8
  %"$adtptr_150" = bitcast %CName_Cons_String* %"$adtval_146" to %TName_List_String*
  store %TName_List_String* %"$adtptr_150", %TName_List_String** %new_strings, align 8
  %"$new_strings_151" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$$new_strings_151_152" = bitcast %TName_List_String* %"$new_strings_151" to i8*
  %"$_literal_cost_call_153" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i8* %"$$new_strings_151_152")
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 %"$_literal_cost_call_153", %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_143"
  %"$consume_158" = sub i64 %"$gasrem_154", %"$_literal_cost_call_153"
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %"$execptr_load_159" = load i8*, i8** @_execptr, align 8
  %"$new_strings_161" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$update_value_162" = bitcast %TName_List_String* %"$new_strings_161" to i8*
  call void @_update_field(i8* %"$execptr_load_159", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_160", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_37", i32 0, i8* null, i8* %"$update_value_162")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @StoreString(i8* %0) {
entry:
  %"$_amount_164" = getelementptr i8, i8* %0, i32 0
  %"$_amount_165" = bitcast i8* %"$_amount_164" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_165", align 8
  %"$_origin_166" = getelementptr i8, i8* %0, i32 16
  %"$_origin_167" = bitcast i8* %"$_origin_166" to [20 x i8]*
  %"$_sender_168" = getelementptr i8, i8* %0, i32 36
  %"$_sender_169" = bitcast i8* %"$_sender_168" to [20 x i8]*
  %"$s_170" = getelementptr i8, i8* %0, i32 56
  %"$s_171" = bitcast i8* %"$s_170" to %String*
  %s = load %String, %String* %"$s_171", align 8
  call void @"$StoreString_119"(%Uint128 %_amount, [20 x i8]* %"$_origin_167", [20 x i8]* %"$_sender_169", %String %s)
  ret void
}

define internal void @"$Accept_172"(%Uint128 %_amount, [20 x i8]* %"$_origin_173", [20 x i8]* %"$_sender_174") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_173", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_174", align 1
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %entry
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %"$execptr_load_180" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_180")
  ret void
}

declare void @_accept(i8*)

define void @Accept(i8* %0) {
entry:
  %"$_amount_182" = getelementptr i8, i8* %0, i32 0
  %"$_amount_183" = bitcast i8* %"$_amount_182" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_183", align 8
  %"$_origin_184" = getelementptr i8, i8* %0, i32 16
  %"$_origin_185" = bitcast i8* %"$_origin_184" to [20 x i8]*
  %"$_sender_186" = getelementptr i8, i8* %0, i32 36
  %"$_sender_187" = bitcast i8* %"$_sender_186" to [20 x i8]*
  call void @"$Accept_172"(%Uint128 %_amount, [20 x i8]* %"$_origin_185", [20 x i8]* %"$_sender_187")
  ret void
}

define internal void @"$AcceptTwice_188"(%Uint128 %_amount, [20 x i8]* %"$_origin_189", [20 x i8]* %"$_sender_190") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_189", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_190", align 1
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %entry
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %"$execptr_load_196" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_196")
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_194"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$execptr_load_202" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_202")
  ret void
}

define void @AcceptTwice(i8* %0) {
entry:
  %"$_amount_204" = getelementptr i8, i8* %0, i32 0
  %"$_amount_205" = bitcast i8* %"$_amount_204" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_205", align 8
  %"$_origin_206" = getelementptr i8, i8* %0, i32 16
  %"$_origin_207" = bitcast i8* %"$_origin_206" to [20 x i8]*
  %"$_sender_208" = getelementptr i8, i8* %0, i32 36
  %"$_sender_209" = bitcast i8* %"$_sender_208" to [20 x i8]*
  call void @"$AcceptTwice_188"(%Uint128 %_amount, [20 x i8]* %"$_origin_207", [20 x i8]* %"$_sender_209")
  ret void
}

define internal void @"$NonAccept_210"(%Uint128 %_amount, [20 x i8]* %"$_origin_211", [20 x i8]* %"$_sender_212") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_211", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_212", align 1
  ret void
}

define void @NonAccept(i8* %0) {
entry:
  %"$_amount_214" = getelementptr i8, i8* %0, i32 0
  %"$_amount_215" = bitcast i8* %"$_amount_214" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_215", align 8
  %"$_origin_216" = getelementptr i8, i8* %0, i32 16
  %"$_origin_217" = bitcast i8* %"$_origin_216" to [20 x i8]*
  %"$_sender_218" = getelementptr i8, i8* %0, i32 36
  %"$_sender_219" = bitcast i8* %"$_sender_218" to [20 x i8]*
  call void @"$NonAccept_210"(%Uint128 %_amount, [20 x i8]* %"$_origin_217", [20 x i8]* %"$_sender_219")
  ret void
}

define internal void @"$CheckBalance_220"(%Uint128 %_amount, [20 x i8]* %"$_origin_221", [20 x i8]* %"$_sender_222", %Uint128 %expected_balance) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_221", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_222", align 1
  %cur_balance = alloca %Uint128, align 8
  %"$execptr_load_224" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_call_225" = call i8* @_fetch_field(i8* %"$execptr_load_224", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_223", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1)
  %"$cur_balance_226" = bitcast i8* %"$cur_balance_call_225" to %Uint128*
  %"$cur_balance_227" = load %Uint128, %Uint128* %"$cur_balance_226", align 8
  store %Uint128 %"$cur_balance_227", %Uint128* %cur_balance, align 8
  %"$_literal_cost_cur_balance_228" = alloca %Uint128, align 8
  %"$cur_balance_229" = load %Uint128, %Uint128* %cur_balance, align 8
  store %Uint128 %"$cur_balance_229", %Uint128* %"$_literal_cost_cur_balance_228", align 8
  %"$$_literal_cost_cur_balance_228_230" = bitcast %Uint128* %"$_literal_cost_cur_balance_228" to i8*
  %"$_literal_cost_call_231" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_cur_balance_228_230")
  %"$gasadd_232" = add i64 %"$_literal_cost_call_231", 0
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 %"$gasadd_232", %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %entry
  %"$consume_237" = sub i64 %"$gasrem_233", %"$gasadd_232"
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %is_expected = alloca %TName_Bool*, align 8
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 8, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_241"
  %"$consume_248" = sub i64 %"$gasrem_244", 8
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %"$execptr_load_249" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_250" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_251" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_249", %Uint128 %expected_balance, %Uint128 %"$cur_balance_250")
  store %TName_Bool* %"$eq_call_251", %TName_Bool** %is_expected, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 2, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_247"
  %"$consume_257" = sub i64 %"$gasrem_253", 2
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$is_expected_259" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_260" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_259", i32 0, i32 0
  %"$is_expected_tag_261" = load i8, i8* %"$is_expected_tag_260", align 1
  switch i8 %"$is_expected_tag_261", label %"$empty_default_262" [
    i8 0, label %"$True_263"
    i8 1, label %"$False_265"
  ]

"$True_263":                                      ; preds = %"$have_gas_256"
  %"$is_expected_264" = bitcast %TName_Bool* %"$is_expected_259" to %CName_True*
  br label %"$matchsucc_258"

"$False_265":                                     ; preds = %"$have_gas_256"
  %"$is_expected_266" = bitcast %TName_Bool* %"$is_expected_259" to %CName_False*
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$False_265"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$False_265"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_270"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %"$msgobj_277_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_277_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_277_salloc_load", i64 121)
  %"$msgobj_277_salloc" = bitcast i8* %"$msgobj_277_salloc_salloc" to [121 x i8]*
  %"$msgobj_277" = bitcast [121 x i8]* %"$msgobj_277_salloc" to i8*
  store i8 3, i8* %"$msgobj_277", align 1
  %"$msgobj_fname_279" = getelementptr i8, i8* %"$msgobj_277", i32 1
  %"$msgobj_fname_280" = bitcast i8* %"$msgobj_fname_279" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_278", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_280", align 8
  %"$msgobj_td_281" = getelementptr i8, i8* %"$msgobj_277", i32 17
  %"$msgobj_td_282" = bitcast i8* %"$msgobj_td_281" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_282", align 8
  %"$msgobj_v_284" = getelementptr i8, i8* %"$msgobj_277", i32 25
  %"$msgobj_v_285" = bitcast i8* %"$msgobj_v_284" to %String*
  store %String { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"$stringlit_283", i32 0, i32 0), i32 38 }, %String* %"$msgobj_v_285", align 8
  %"$msgobj_fname_287" = getelementptr i8, i8* %"$msgobj_277", i32 41
  %"$msgobj_fname_288" = bitcast i8* %"$msgobj_fname_287" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_286", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_288", align 8
  %"$msgobj_td_289" = getelementptr i8, i8* %"$msgobj_277", i32 57
  %"$msgobj_td_290" = bitcast i8* %"$msgobj_td_289" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_290", align 8
  %"$msgobj_v_291" = getelementptr i8, i8* %"$msgobj_277", i32 65
  %"$msgobj_v_292" = bitcast i8* %"$msgobj_v_291" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_292", align 8
  %"$msgobj_fname_294" = getelementptr i8, i8* %"$msgobj_277", i32 81
  %"$msgobj_fname_295" = bitcast i8* %"$msgobj_fname_294" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_293", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_295", align 8
  %"$msgobj_td_296" = getelementptr i8, i8* %"$msgobj_277", i32 97
  %"$msgobj_td_297" = bitcast i8* %"$msgobj_td_296" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_297", align 8
  %"$cur_balance_298" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_299" = getelementptr i8, i8* %"$msgobj_277", i32 105
  %"$msgobj_v_300" = bitcast i8* %"$msgobj_v_299" to %Uint128*
  store %Uint128 %"$cur_balance_298", %Uint128* %"$msgobj_v_300", align 8
  store i8* %"$msgobj_277", i8** %e, align 8
  %"$e_302" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_304" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_302")
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 %"$_literal_cost_call_304", %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_275"
  %"$consume_309" = sub i64 %"$gasrem_305", %"$_literal_cost_call_304"
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$execptr_load_310" = load i8*, i8** @_execptr, align 8
  %"$e_311" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_310", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_311")
  br label %"$matchsucc_258"

"$empty_default_262":                             ; preds = %"$have_gas_256"
  br label %"$matchsucc_258"

"$matchsucc_258":                                 ; preds = %"$have_gas_308", %"$True_263", %"$empty_default_262"
  ret void
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$CheckSenderBalance_312"(%Uint128 %_amount, [20 x i8]* %"$_origin_313", [20 x i8]* %"$_sender_314", %Uint128 %expected_balance) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_313", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_314", align 1
  %cur_balance = alloca %Uint128, align 8
  %"$execptr_load_316" = load i8*, i8** @_execptr, align 8
  %"$cur_balance__sender_317" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$cur_balance__sender_317", align 1
  %"$cur_balance_call_318" = call i8* @_fetch_remote_field(i8* %"$execptr_load_316", [20 x i8]* %"$cur_balance__sender_317", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_315", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1)
  %"$cur_balance_319" = bitcast i8* %"$cur_balance_call_318" to %Uint128*
  %"$cur_balance_320" = load %Uint128, %Uint128* %"$cur_balance_319", align 8
  store %Uint128 %"$cur_balance_320", %Uint128* %cur_balance, align 8
  %"$_literal_cost_cur_balance_321" = alloca %Uint128, align 8
  %"$cur_balance_322" = load %Uint128, %Uint128* %cur_balance, align 8
  store %Uint128 %"$cur_balance_322", %Uint128* %"$_literal_cost_cur_balance_321", align 8
  %"$$_literal_cost_cur_balance_321_323" = bitcast %Uint128* %"$_literal_cost_cur_balance_321" to i8*
  %"$_literal_cost_call_324" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_cur_balance_321_323")
  %"$gasadd_325" = add i64 %"$_literal_cost_call_324", 0
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 %"$gasadd_325", %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %entry
  %"$consume_330" = sub i64 %"$gasrem_326", %"$gasadd_325"
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %is_expected = alloca %TName_Bool*, align 8
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 8, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_334"
  %"$consume_341" = sub i64 %"$gasrem_337", 8
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %"$execptr_load_342" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_343" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_344" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_342", %Uint128 %expected_balance, %Uint128 %"$cur_balance_343")
  store %TName_Bool* %"$eq_call_344", %TName_Bool** %is_expected, align 8
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 2, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_340"
  %"$consume_350" = sub i64 %"$gasrem_346", 2
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$is_expected_352" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_353" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_352", i32 0, i32 0
  %"$is_expected_tag_354" = load i8, i8* %"$is_expected_tag_353", align 1
  switch i8 %"$is_expected_tag_354", label %"$empty_default_355" [
    i8 0, label %"$True_356"
    i8 1, label %"$False_358"
  ]

"$True_356":                                      ; preds = %"$have_gas_349"
  %"$is_expected_357" = bitcast %TName_Bool* %"$is_expected_352" to %CName_True*
  br label %"$matchsucc_351"

"$False_358":                                     ; preds = %"$have_gas_349"
  %"$is_expected_359" = bitcast %TName_Bool* %"$is_expected_352" to %CName_False*
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$False_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$False_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %"$msgobj_370_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_370_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_370_salloc_load", i64 121)
  %"$msgobj_370_salloc" = bitcast i8* %"$msgobj_370_salloc_salloc" to [121 x i8]*
  %"$msgobj_370" = bitcast [121 x i8]* %"$msgobj_370_salloc" to i8*
  store i8 3, i8* %"$msgobj_370", align 1
  %"$msgobj_fname_372" = getelementptr i8, i8* %"$msgobj_370", i32 1
  %"$msgobj_fname_373" = bitcast i8* %"$msgobj_fname_372" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_371", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_373", align 8
  %"$msgobj_td_374" = getelementptr i8, i8* %"$msgobj_370", i32 17
  %"$msgobj_td_375" = bitcast i8* %"$msgobj_td_374" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_20", %_TyDescrTy_Typ** %"$msgobj_td_375", align 8
  %"$msgobj_v_377" = getelementptr i8, i8* %"$msgobj_370", i32 25
  %"$msgobj_v_378" = bitcast i8* %"$msgobj_v_377" to %String*
  store %String { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"$stringlit_376", i32 0, i32 0), i32 50 }, %String* %"$msgobj_v_378", align 8
  %"$msgobj_fname_380" = getelementptr i8, i8* %"$msgobj_370", i32 41
  %"$msgobj_fname_381" = bitcast i8* %"$msgobj_fname_380" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_379", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_381", align 8
  %"$msgobj_td_382" = getelementptr i8, i8* %"$msgobj_370", i32 57
  %"$msgobj_td_383" = bitcast i8* %"$msgobj_td_382" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_383", align 8
  %"$msgobj_v_384" = getelementptr i8, i8* %"$msgobj_370", i32 65
  %"$msgobj_v_385" = bitcast i8* %"$msgobj_v_384" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_385", align 8
  %"$msgobj_fname_387" = getelementptr i8, i8* %"$msgobj_370", i32 81
  %"$msgobj_fname_388" = bitcast i8* %"$msgobj_fname_387" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_386", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_388", align 8
  %"$msgobj_td_389" = getelementptr i8, i8* %"$msgobj_370", i32 97
  %"$msgobj_td_390" = bitcast i8* %"$msgobj_td_389" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", %_TyDescrTy_Typ** %"$msgobj_td_390", align 8
  %"$cur_balance_391" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_392" = getelementptr i8, i8* %"$msgobj_370", i32 105
  %"$msgobj_v_393" = bitcast i8* %"$msgobj_v_392" to %Uint128*
  store %Uint128 %"$cur_balance_391", %Uint128* %"$msgobj_v_393", align 8
  store i8* %"$msgobj_370", i8** %e, align 8
  %"$e_395" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_397" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_395")
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 %"$_literal_cost_call_397", %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_368"
  %"$consume_402" = sub i64 %"$gasrem_398", %"$_literal_cost_call_397"
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$execptr_load_403" = load i8*, i8** @_execptr, align 8
  %"$e_404" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_403", %_TyDescrTy_Typ* @"$TyDescr_Exception_28", i8* %"$e_404")
  br label %"$matchsucc_351"

"$empty_default_355":                             ; preds = %"$have_gas_349"
  br label %"$matchsucc_351"

"$matchsucc_351":                                 ; preds = %"$have_gas_401", %"$True_356", %"$empty_default_355"
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define internal void @"$AcceptAndCheckBalance_405"(%Uint128 %_amount, [20 x i8]* %"$_origin_406", [20 x i8]* %"$_sender_407") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_406", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_407", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_409" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_410" = call i8* @_fetch_field(i8* %"$execptr_load_409", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_408", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1)
  %"$init_bal_411" = bitcast i8* %"$init_bal_call_410" to %Uint128*
  %"$init_bal_412" = load %Uint128, %Uint128* %"$init_bal_411", align 8
  store %Uint128 %"$init_bal_412", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_413" = alloca %Uint128, align 8
  %"$init_bal_414" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_414", %Uint128* %"$_literal_cost_init_bal_413", align 8
  %"$$_literal_cost_init_bal_413_415" = bitcast %Uint128* %"$_literal_cost_init_bal_413" to i8*
  %"$_literal_cost_call_416" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_413_415")
  %"$gasadd_417" = add i64 %"$_literal_cost_call_416", 0
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 %"$gasadd_417", %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %entry
  %"$consume_422" = sub i64 %"$gasrem_418", %"$gasadd_417"
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$execptr_load_428" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_428")
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_426"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 8, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_432"
  %"$consume_439" = sub i64 %"$gasrem_435", 8
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %"$init_bal_440" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_441" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_440", %Uint128 %_amount)
  store %Uint128 %"$add_call_441", %Uint128* %expected_balance, align 8
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 1, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_438"
  %"$consume_446" = sub i64 %"$gasrem_442", 1
  store i64 %"$consume_446", i64* @_gasrem, align 8
  %"$CheckBalance__origin_447" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_447", align 1
  %"$CheckBalance__sender_448" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_448", align 1
  %"$expected_balance_449" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_220"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_447", [20 x i8]* %"$CheckBalance__sender_448", %Uint128 %"$expected_balance_449")
  ret void
}

declare %Uint128 @_add_Uint128(%Uint128, %Uint128)

define void @AcceptAndCheckBalance(i8* %0) {
entry:
  %"$_amount_451" = getelementptr i8, i8* %0, i32 0
  %"$_amount_452" = bitcast i8* %"$_amount_451" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_452", align 8
  %"$_origin_453" = getelementptr i8, i8* %0, i32 16
  %"$_origin_454" = bitcast i8* %"$_origin_453" to [20 x i8]*
  %"$_sender_455" = getelementptr i8, i8* %0, i32 36
  %"$_sender_456" = bitcast i8* %"$_sender_455" to [20 x i8]*
  call void @"$AcceptAndCheckBalance_405"(%Uint128 %_amount, [20 x i8]* %"$_origin_454", [20 x i8]* %"$_sender_456")
  ret void
}

define internal void @"$AcceptTwiceAndCheckBalance_457"(%Uint128 %_amount, [20 x i8]* %"$_origin_458", [20 x i8]* %"$_sender_459") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_458", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_459", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_461" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_462" = call i8* @_fetch_field(i8* %"$execptr_load_461", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_460", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1)
  %"$init_bal_463" = bitcast i8* %"$init_bal_call_462" to %Uint128*
  %"$init_bal_464" = load %Uint128, %Uint128* %"$init_bal_463", align 8
  store %Uint128 %"$init_bal_464", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_465" = alloca %Uint128, align 8
  %"$init_bal_466" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_466", %Uint128* %"$_literal_cost_init_bal_465", align 8
  %"$$_literal_cost_init_bal_465_467" = bitcast %Uint128* %"$_literal_cost_init_bal_465" to i8*
  %"$_literal_cost_call_468" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_465_467")
  %"$gasadd_469" = add i64 %"$_literal_cost_call_468", 0
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 %"$gasadd_469", %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %entry
  %"$consume_474" = sub i64 %"$gasrem_470", %"$gasadd_469"
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_473"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$execptr_load_480" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_480")
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_478"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 8, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_484"
  %"$consume_491" = sub i64 %"$gasrem_487", 8
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %"$init_bal_492" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_493" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_492", %Uint128 %_amount)
  store %Uint128 %"$add_call_493", %Uint128* %expected_balance, align 8
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_490"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$CheckBalance__origin_499" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_499", align 1
  %"$CheckBalance__sender_500" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_500", align 1
  %"$expected_balance_501" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_220"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_499", [20 x i8]* %"$CheckBalance__sender_500", %Uint128 %"$expected_balance_501")
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_497"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %"$execptr_load_507" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_507")
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_505"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %"$CheckBalance__origin_513" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_513", align 1
  %"$CheckBalance__sender_514" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_514", align 1
  %"$expected_balance_515" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_220"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_513", [20 x i8]* %"$CheckBalance__sender_514", %Uint128 %"$expected_balance_515")
  ret void
}

define void @AcceptTwiceAndCheckBalance(i8* %0) {
entry:
  %"$_amount_517" = getelementptr i8, i8* %0, i32 0
  %"$_amount_518" = bitcast i8* %"$_amount_517" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_518", align 8
  %"$_origin_519" = getelementptr i8, i8* %0, i32 16
  %"$_origin_520" = bitcast i8* %"$_origin_519" to [20 x i8]*
  %"$_sender_521" = getelementptr i8, i8* %0, i32 36
  %"$_sender_522" = bitcast i8* %"$_sender_521" to [20 x i8]*
  call void @"$AcceptTwiceAndCheckBalance_457"(%Uint128 %_amount, [20 x i8]* %"$_origin_520", [20 x i8]* %"$_sender_522")
  ret void
}

define internal void @"$AcceptAndCheckSenderBalance_523"(%Uint128 %_amount, [20 x i8]* %"$_origin_524", [20 x i8]* %"$_sender_525") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_524", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_525", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_527" = load i8*, i8** @_execptr, align 8
  %"$init_bal__sender_528" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$init_bal__sender_528", align 1
  %"$init_bal_call_529" = call i8* @_fetch_remote_field(i8* %"$execptr_load_527", [20 x i8]* %"$init_bal__sender_528", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_526", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i32 0, i8* null, i32 1)
  %"$init_bal_530" = bitcast i8* %"$init_bal_call_529" to %Uint128*
  %"$init_bal_531" = load %Uint128, %Uint128* %"$init_bal_530", align 8
  store %Uint128 %"$init_bal_531", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_532" = alloca %Uint128, align 8
  %"$init_bal_533" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_533", %Uint128* %"$_literal_cost_init_bal_532", align 8
  %"$$_literal_cost_init_bal_532_534" = bitcast %Uint128* %"$_literal_cost_init_bal_532" to i8*
  %"$_literal_cost_call_535" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_14", i8* %"$$_literal_cost_init_bal_532_534")
  %"$gasadd_536" = add i64 %"$_literal_cost_call_535", 0
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 %"$gasadd_536", %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %entry
  %"$consume_541" = sub i64 %"$gasrem_537", %"$gasadd_536"
  store i64 %"$consume_541", i64* @_gasrem, align 8
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_540"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %"$execptr_load_547" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_547")
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 1, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$have_gas_545"
  %"$consume_552" = sub i64 %"$gasrem_548", 1
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %"$CheckSenderBalance__origin_553" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckSenderBalance__origin_553", align 1
  %"$CheckSenderBalance__sender_554" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckSenderBalance__sender_554", align 1
  %"$init_bal_555" = load %Uint128, %Uint128* %init_bal, align 8
  call void @"$CheckSenderBalance_312"(%Uint128 %_amount, [20 x i8]* %"$CheckSenderBalance__origin_553", [20 x i8]* %"$CheckSenderBalance__sender_554", %Uint128 %"$init_bal_555")
  ret void
}

define void @AcceptAndCheckSenderBalance(i8* %0) {
entry:
  %"$_amount_557" = getelementptr i8, i8* %0, i32 0
  %"$_amount_558" = bitcast i8* %"$_amount_557" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_558", align 8
  %"$_origin_559" = getelementptr i8, i8* %0, i32 16
  %"$_origin_560" = bitcast i8* %"$_origin_559" to [20 x i8]*
  %"$_sender_561" = getelementptr i8, i8* %0, i32 36
  %"$_sender_562" = bitcast i8* %"$_sender_561" to [20 x i8]*
  call void @"$AcceptAndCheckSenderBalance_523"(%Uint128 %_amount, [20 x i8]* %"$_origin_560", [20 x i8]* %"$_sender_562")
  ret void
}
