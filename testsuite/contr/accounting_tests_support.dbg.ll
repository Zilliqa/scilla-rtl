

; gas_remaining: 4002000
; ModuleID = 'AccountingTestsSupport'
source_filename = "AccountingTestsSupport"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_33" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_32"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_32" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_34"**, %"$TyDescrTy_ADTTyp_33"* }
%"$TyDescrTy_ADTTyp_Constr_34" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_39" = type { i32, %"$TyDescr_AddrFieldTyp_38"* }
%"$TyDescr_AddrFieldTyp_38" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Uint32 = type { i32 }
%"$ParamDescr_557" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_558" = type { %ParamDescrString, i32, %"$ParamDescr_557"* }
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
@"$TyDescr_Bystr20_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 20 }
@"$TyDescr_Bystr20_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr20_Prim_30" to i8*) }
@"$TyDescr_ADT_Bool_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Bool_ADTTyp_Specl_50" to i8*) }
@"$TyDescr_ADT_List_String_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_List_String_ADTTyp_Specl_62" to i8*) }
@"$TyDescr_Addr_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_39"* @"$TyDescr_AddrFields_65" to i8*) }
@"$TyDescr_Bool_ADTTyp_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_52", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_32"*], [1 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_Bool_ADTTyp_m_specls_51", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_42" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_43" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_43", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_42", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_45" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_46" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_46", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_48" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Bool_True_ADTTyp_Constr_44", %"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Bool_False_ADTTyp_Constr_47"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_49" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_34"*], [2 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Bool_ADTTyp_41" }
@"$TyDescr_Bool_ADTTyp_m_specls_51" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Bool_ADTTyp_Specl_50"]
@"$TyDescr_ADT_Bool_52" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_64", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_32"*], [1 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_List_ADTTyp_m_specls_63", i32 0, i32 0) }
@"$TyDescr_List_Cons_String_Constr_m_args_54" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_36"]
@"$TyDescr_ADT_Cons_55" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_55", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_57" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_58" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_58", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_57", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_60" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_56", %"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_59"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_61" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19"]
@"$TyDescr_List_String_ADTTyp_Specl_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_34"*], [2 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_List_ADTTyp_53" }
@"$TyDescr_List_ADTTyp_m_specls_63" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_List_String_ADTTyp_Specl_62"]
@"$TyDescr_ADT_List_64" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_65" = unnamed_addr constant %"$TyDescr_AddrTyp_39" { i32 -1, %"$TyDescr_AddrFieldTyp_38"* null }
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stored_strings_75" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_103" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_116" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$stored_strings_154" = unnamed_addr constant [15 x i8] c"stored_strings\00"
@"$_balance_217" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$stringlit_272" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_277" = unnamed_addr constant [38 x i8] c"Unexpected balance at support contract"
@"$stringlit_280" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_287" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_309" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$stringlit_365" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_370" = unnamed_addr constant [50 x i8] c"Unexpected sender balance read by support contract"
@"$stringlit_373" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_380" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_402" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_454" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_520" = unnamed_addr constant [9 x i8] c"_balance\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_35", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_36", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_559" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_560" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_561" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_557"] [%"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_559", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_560", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_561", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_562" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_563" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_564" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Reset_565" = unnamed_addr constant [3 x %"$ParamDescr_557"] [%"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_562", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_563", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_564", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_Reset_566" = unnamed_addr constant [5 x i8] c"Reset"
@"$tpname__amount_567" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_568" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_569" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_s_570" = unnamed_addr constant [1 x i8] c"s"
@"$tparams_StoreString_571" = unnamed_addr constant [4 x %"$ParamDescr_557"] [%"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_567", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_568", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_569", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_s_570", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_String_19" }]
@"$tname_StoreString_572" = unnamed_addr constant [11 x i8] c"StoreString"
@"$tpname__amount_573" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_574" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_575" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept_576" = unnamed_addr constant [3 x %"$ParamDescr_557"] [%"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_573", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_574", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_575", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_Accept_577" = unnamed_addr constant [6 x i8] c"Accept"
@"$tpname__amount_578" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_579" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_580" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwice_581" = unnamed_addr constant [3 x %"$ParamDescr_557"] [%"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_578", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_579", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_580", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_AcceptTwice_582" = unnamed_addr constant [11 x i8] c"AcceptTwice"
@"$tpname__amount_583" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_584" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_585" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_NonAccept_586" = unnamed_addr constant [3 x %"$ParamDescr_557"] [%"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_583", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_584", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_585", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_NonAccept_587" = unnamed_addr constant [9 x i8] c"NonAccept"
@"$tpname__amount_588" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_589" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_590" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckBalance_591" = unnamed_addr constant [3 x %"$ParamDescr_557"] [%"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_588", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_589", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_590", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_AcceptAndCheckBalance_592" = unnamed_addr constant [21 x i8] c"AcceptAndCheckBalance"
@"$tpname__amount_593" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_594" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_595" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwiceAndCheckBalance_596" = unnamed_addr constant [3 x %"$ParamDescr_557"] [%"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_593", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_594", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_595", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_AcceptTwiceAndCheckBalance_597" = unnamed_addr constant [26 x i8] c"AcceptTwiceAndCheckBalance"
@"$tpname__amount_598" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_599" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_600" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckSenderBalance_601" = unnamed_addr constant [3 x %"$ParamDescr_557"] [%"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_598", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_599", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_557" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_600", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_AcceptAndCheckSenderBalance_602" = unnamed_addr constant [27 x i8] c"AcceptAndCheckSenderBalance"
@_transition_parameters = constant [8 x %"$TransDescr_558"] [%"$TransDescr_558" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tname_Reset_566", i32 0, i32 0), i32 5 }, i32 3, %"$ParamDescr_557"* getelementptr inbounds ([3 x %"$ParamDescr_557"], [3 x %"$ParamDescr_557"]* @"$tparams_Reset_565", i32 0, i32 0) }, %"$TransDescr_558" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_StoreString_572", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_557"* getelementptr inbounds ([4 x %"$ParamDescr_557"], [4 x %"$ParamDescr_557"]* @"$tparams_StoreString_571", i32 0, i32 0) }, %"$TransDescr_558" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_Accept_577", i32 0, i32 0), i32 6 }, i32 3, %"$ParamDescr_557"* getelementptr inbounds ([3 x %"$ParamDescr_557"], [3 x %"$ParamDescr_557"]* @"$tparams_Accept_576", i32 0, i32 0) }, %"$TransDescr_558" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_AcceptTwice_582", i32 0, i32 0), i32 11 }, i32 3, %"$ParamDescr_557"* getelementptr inbounds ([3 x %"$ParamDescr_557"], [3 x %"$ParamDescr_557"]* @"$tparams_AcceptTwice_581", i32 0, i32 0) }, %"$TransDescr_558" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_NonAccept_587", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_557"* getelementptr inbounds ([3 x %"$ParamDescr_557"], [3 x %"$ParamDescr_557"]* @"$tparams_NonAccept_586", i32 0, i32 0) }, %"$TransDescr_558" { %ParamDescrString { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$tname_AcceptAndCheckBalance_592", i32 0, i32 0), i32 21 }, i32 3, %"$ParamDescr_557"* getelementptr inbounds ([3 x %"$ParamDescr_557"], [3 x %"$ParamDescr_557"]* @"$tparams_AcceptAndCheckBalance_591", i32 0, i32 0) }, %"$TransDescr_558" { %ParamDescrString { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$tname_AcceptTwiceAndCheckBalance_597", i32 0, i32 0), i32 26 }, i32 3, %"$ParamDescr_557"* getelementptr inbounds ([3 x %"$ParamDescr_557"], [3 x %"$ParamDescr_557"]* @"$tparams_AcceptTwiceAndCheckBalance_596", i32 0, i32 0) }, %"$TransDescr_558" { %ParamDescrString { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$tname_AcceptAndCheckSenderBalance_602", i32 0, i32 0), i32 27 }, i32 3, %"$ParamDescr_557"* getelementptr inbounds ([3 x %"$ParamDescr_557"], [3 x %"$ParamDescr_557"]* @"$tparams_AcceptAndCheckSenderBalance_601", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 8

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define void @_init_state() !dbg !9 {
entry:
  %"$stored_strings_0" = alloca %TName_List_String*, align 8
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %entry
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %"$adtval_71_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_71_salloc" = call i8* @_salloc(i8* %"$adtval_71_load", i64 1)
  %"$adtval_71" = bitcast i8* %"$adtval_71_salloc" to %CName_Nil_String*
  %"$adtgep_72" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_71", i32 0, i32 0
  store i8 1, i8* %"$adtgep_72", align 1
  %"$adtptr_73" = bitcast %CName_Nil_String* %"$adtval_71" to %TName_List_String*
  store %TName_List_String* %"$adtptr_73", %TName_List_String** %"$stored_strings_0", align 8, !dbg !10
  %"$execptr_load_74" = load i8*, i8** @_execptr, align 8
  %"$$stored_strings_0_76" = load %TName_List_String*, %TName_List_String** %"$stored_strings_0", align 8
  %"$update_value_77" = bitcast %TName_List_String* %"$$stored_strings_0_76" to i8*
  call void @_update_field(i8* %"$execptr_load_74", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_75", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_36", i32 0, i8* null, i8* %"$update_value_77"), !dbg !10
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$Reset_78"(%Uint128 %_amount, [20 x i8]* %"$_origin_79", [20 x i8]* %"$_sender_80") !dbg !11 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_79", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_80", align 1
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %entry
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem, align 8
  %new_strings = alloca %TName_List_String*, align 8
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_84"
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem, align 8
  %"$adtval_91_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_91_salloc" = call i8* @_salloc(i8* %"$adtval_91_load", i64 1)
  %"$adtval_91" = bitcast i8* %"$adtval_91_salloc" to %CName_Nil_String*
  %"$adtgep_92" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_91", i32 0, i32 0
  store i8 1, i8* %"$adtgep_92", align 1
  %"$adtptr_93" = bitcast %CName_Nil_String* %"$adtval_91" to %TName_List_String*
  store %TName_List_String* %"$adtptr_93", %TName_List_String** %new_strings, align 8, !dbg !12
  %"$new_strings_94" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$$new_strings_94_95" = bitcast %TName_List_String* %"$new_strings_94" to i8*
  %"$_literal_cost_call_96" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_36", i8* %"$$new_strings_94_95")
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 %"$_literal_cost_call_96", %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_89"
  %"$consume_101" = sub i64 %"$gasrem_97", %"$_literal_cost_call_96"
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %"$execptr_load_102" = load i8*, i8** @_execptr, align 8
  %"$new_strings_104" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$update_value_105" = bitcast %TName_List_String* %"$new_strings_104" to i8*
  call void @_update_field(i8* %"$execptr_load_102", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_103", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_36", i32 0, i8* null, i8* %"$update_value_105"), !dbg !13
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @Reset(i8* %0) !dbg !14 {
entry:
  %"$_amount_107" = getelementptr i8, i8* %0, i32 0
  %"$_amount_108" = bitcast i8* %"$_amount_107" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_108", align 8
  %"$_origin_109" = getelementptr i8, i8* %0, i32 16
  %"$_origin_110" = bitcast i8* %"$_origin_109" to [20 x i8]*
  %"$_sender_111" = getelementptr i8, i8* %0, i32 36
  %"$_sender_112" = bitcast i8* %"$_sender_111" to [20 x i8]*
  call void @"$Reset_78"(%Uint128 %_amount, [20 x i8]* %"$_origin_110", [20 x i8]* %"$_sender_112"), !dbg !15
  ret void
}

define internal void @"$StoreString_113"(%Uint128 %_amount, [20 x i8]* %"$_origin_114", [20 x i8]* %"$_sender_115", %String %s) !dbg !16 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_114", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_115", align 1
  %old_strings = alloca %TName_List_String*, align 8
  %"$execptr_load_117" = load i8*, i8** @_execptr, align 8
  %"$old_strings_call_118" = call i8* @_fetch_field(i8* %"$execptr_load_117", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_116", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_36", i32 0, i8* null, i32 1), !dbg !17
  %"$old_strings_119" = bitcast i8* %"$old_strings_call_118" to %TName_List_String*
  store %TName_List_String* %"$old_strings_119", %TName_List_String** %old_strings, align 8
  %"$old_strings_120" = load %TName_List_String*, %TName_List_String** %old_strings, align 8
  %"$$old_strings_120_121" = bitcast %TName_List_String* %"$old_strings_120" to i8*
  %"$_literal_cost_call_122" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_36", i8* %"$$old_strings_120_121")
  %"$gasadd_123" = add i64 %"$_literal_cost_call_122", 0
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 %"$gasadd_123", %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %entry
  %"$consume_128" = sub i64 %"$gasrem_124", %"$gasadd_123"
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %new_strings = alloca %TName_List_String*, align 8
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %"$old_strings_139" = load %TName_List_String*, %TName_List_String** %old_strings, align 8
  %"$adtval_140_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_140_salloc" = call i8* @_salloc(i8* %"$adtval_140_load", i64 25)
  %"$adtval_140" = bitcast i8* %"$adtval_140_salloc" to %CName_Cons_String*
  %"$adtgep_141" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_140", i32 0, i32 0
  store i8 0, i8* %"$adtgep_141", align 1
  %"$adtgep_142" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_140", i32 0, i32 1
  store %String %s, %String* %"$adtgep_142", align 8
  %"$adtgep_143" = getelementptr inbounds %CName_Cons_String, %CName_Cons_String* %"$adtval_140", i32 0, i32 2
  store %TName_List_String* %"$old_strings_139", %TName_List_String** %"$adtgep_143", align 8
  %"$adtptr_144" = bitcast %CName_Cons_String* %"$adtval_140" to %TName_List_String*
  store %TName_List_String* %"$adtptr_144", %TName_List_String** %new_strings, align 8, !dbg !18
  %"$new_strings_145" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$$new_strings_145_146" = bitcast %TName_List_String* %"$new_strings_145" to i8*
  %"$_literal_cost_call_147" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_36", i8* %"$$new_strings_145_146")
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 %"$_literal_cost_call_147", %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_137"
  %"$consume_152" = sub i64 %"$gasrem_148", %"$_literal_cost_call_147"
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$execptr_load_153" = load i8*, i8** @_execptr, align 8
  %"$new_strings_155" = load %TName_List_String*, %TName_List_String** %new_strings, align 8
  %"$update_value_156" = bitcast %TName_List_String* %"$new_strings_155" to i8*
  call void @_update_field(i8* %"$execptr_load_153", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stored_strings_154", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_36", i32 0, i8* null, i8* %"$update_value_156"), !dbg !19
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @StoreString(i8* %0) !dbg !20 {
entry:
  %"$_amount_158" = getelementptr i8, i8* %0, i32 0
  %"$_amount_159" = bitcast i8* %"$_amount_158" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_159", align 8
  %"$_origin_160" = getelementptr i8, i8* %0, i32 16
  %"$_origin_161" = bitcast i8* %"$_origin_160" to [20 x i8]*
  %"$_sender_162" = getelementptr i8, i8* %0, i32 36
  %"$_sender_163" = bitcast i8* %"$_sender_162" to [20 x i8]*
  %"$s_164" = getelementptr i8, i8* %0, i32 56
  %"$s_165" = bitcast i8* %"$s_164" to %String*
  %s = load %String, %String* %"$s_165", align 8
  call void @"$StoreString_113"(%Uint128 %_amount, [20 x i8]* %"$_origin_161", [20 x i8]* %"$_sender_163", %String %s), !dbg !21
  ret void
}

define internal void @"$Accept_166"(%Uint128 %_amount, [20 x i8]* %"$_origin_167", [20 x i8]* %"$_sender_168") !dbg !22 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_167", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_168", align 1
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %entry
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %"$execptr_load_174" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_174"), !dbg !23
  ret void
}

declare void @_accept(i8*)

define void @Accept(i8* %0) !dbg !24 {
entry:
  %"$_amount_176" = getelementptr i8, i8* %0, i32 0
  %"$_amount_177" = bitcast i8* %"$_amount_176" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_177", align 8
  %"$_origin_178" = getelementptr i8, i8* %0, i32 16
  %"$_origin_179" = bitcast i8* %"$_origin_178" to [20 x i8]*
  %"$_sender_180" = getelementptr i8, i8* %0, i32 36
  %"$_sender_181" = bitcast i8* %"$_sender_180" to [20 x i8]*
  call void @"$Accept_166"(%Uint128 %_amount, [20 x i8]* %"$_origin_179", [20 x i8]* %"$_sender_181"), !dbg !25
  ret void
}

define internal void @"$AcceptTwice_182"(%Uint128 %_amount, [20 x i8]* %"$_origin_183", [20 x i8]* %"$_sender_184") !dbg !26 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_183", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_184", align 1
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %entry
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$execptr_load_190" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_190"), !dbg !27
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_188"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %"$execptr_load_196" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_196"), !dbg !28
  ret void
}

define void @AcceptTwice(i8* %0) !dbg !29 {
entry:
  %"$_amount_198" = getelementptr i8, i8* %0, i32 0
  %"$_amount_199" = bitcast i8* %"$_amount_198" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_199", align 8
  %"$_origin_200" = getelementptr i8, i8* %0, i32 16
  %"$_origin_201" = bitcast i8* %"$_origin_200" to [20 x i8]*
  %"$_sender_202" = getelementptr i8, i8* %0, i32 36
  %"$_sender_203" = bitcast i8* %"$_sender_202" to [20 x i8]*
  call void @"$AcceptTwice_182"(%Uint128 %_amount, [20 x i8]* %"$_origin_201", [20 x i8]* %"$_sender_203"), !dbg !30
  ret void
}

define internal void @"$NonAccept_204"(%Uint128 %_amount, [20 x i8]* %"$_origin_205", [20 x i8]* %"$_sender_206") !dbg !31 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_205", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_206", align 1
  ret void
}

define void @NonAccept(i8* %0) !dbg !32 {
entry:
  %"$_amount_208" = getelementptr i8, i8* %0, i32 0
  %"$_amount_209" = bitcast i8* %"$_amount_208" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_209", align 8
  %"$_origin_210" = getelementptr i8, i8* %0, i32 16
  %"$_origin_211" = bitcast i8* %"$_origin_210" to [20 x i8]*
  %"$_sender_212" = getelementptr i8, i8* %0, i32 36
  %"$_sender_213" = bitcast i8* %"$_sender_212" to [20 x i8]*
  call void @"$NonAccept_204"(%Uint128 %_amount, [20 x i8]* %"$_origin_211", [20 x i8]* %"$_sender_213"), !dbg !33
  ret void
}

define internal void @"$CheckBalance_214"(%Uint128 %_amount, [20 x i8]* %"$_origin_215", [20 x i8]* %"$_sender_216", %Uint128 %expected_balance) !dbg !34 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_215", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_216", align 1
  %cur_balance = alloca %Uint128, align 8
  %"$execptr_load_218" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_call_219" = call i8* @_fetch_field(i8* %"$execptr_load_218", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_217", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i32 0, i8* null, i32 1), !dbg !35
  %"$cur_balance_220" = bitcast i8* %"$cur_balance_call_219" to %Uint128*
  %"$cur_balance_221" = load %Uint128, %Uint128* %"$cur_balance_220", align 8
  store %Uint128 %"$cur_balance_221", %Uint128* %cur_balance, align 8
  %"$_literal_cost_cur_balance_222" = alloca %Uint128, align 8
  %"$cur_balance_223" = load %Uint128, %Uint128* %cur_balance, align 8
  store %Uint128 %"$cur_balance_223", %Uint128* %"$_literal_cost_cur_balance_222", align 8
  %"$$_literal_cost_cur_balance_222_224" = bitcast %Uint128* %"$_literal_cost_cur_balance_222" to i8*
  %"$_literal_cost_call_225" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i8* %"$$_literal_cost_cur_balance_222_224")
  %"$gasadd_226" = add i64 %"$_literal_cost_call_225", 0
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 %"$gasadd_226", %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %entry
  %"$consume_231" = sub i64 %"$gasrem_227", %"$gasadd_226"
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_230"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %is_expected = alloca %TName_Bool*, align 8
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 8, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_235"
  %"$consume_242" = sub i64 %"$gasrem_238", 8
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$execptr_load_243" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_244" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_245" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_243", %Uint128 %expected_balance, %Uint128 %"$cur_balance_244"), !dbg !36
  store %TName_Bool* %"$eq_call_245", %TName_Bool** %is_expected, align 8, !dbg !36
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 2, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_241"
  %"$consume_251" = sub i64 %"$gasrem_247", 2
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$is_expected_253" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_254" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_253", i32 0, i32 0
  %"$is_expected_tag_255" = load i8, i8* %"$is_expected_tag_254", align 1
  switch i8 %"$is_expected_tag_255", label %"$empty_default_256" [
    i8 0, label %"$True_257"
    i8 1, label %"$False_259"
  ], !dbg !37

"$True_257":                                      ; preds = %"$have_gas_250"
  %"$is_expected_258" = bitcast %TName_Bool* %"$is_expected_253" to %CName_True*
  br label %"$matchsucc_252"

"$False_259":                                     ; preds = %"$have_gas_250"
  %"$is_expected_260" = bitcast %TName_Bool* %"$is_expected_253" to %CName_False*
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$False_259"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$False_259"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_264"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$msgobj_271_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_271_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_271_salloc_load", i64 121)
  %"$msgobj_271_salloc" = bitcast i8* %"$msgobj_271_salloc_salloc" to [121 x i8]*
  %"$msgobj_271" = bitcast [121 x i8]* %"$msgobj_271_salloc" to i8*
  store i8 3, i8* %"$msgobj_271", align 1
  %"$msgobj_fname_273" = getelementptr i8, i8* %"$msgobj_271", i32 1
  %"$msgobj_fname_274" = bitcast i8* %"$msgobj_fname_273" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_272", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_274", align 8
  %"$msgobj_td_275" = getelementptr i8, i8* %"$msgobj_271", i32 17
  %"$msgobj_td_276" = bitcast i8* %"$msgobj_td_275" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_276", align 8
  %"$msgobj_v_278" = getelementptr i8, i8* %"$msgobj_271", i32 25
  %"$msgobj_v_279" = bitcast i8* %"$msgobj_v_278" to %String*
  store %String { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"$stringlit_277", i32 0, i32 0), i32 38 }, %String* %"$msgobj_v_279", align 8
  %"$msgobj_fname_281" = getelementptr i8, i8* %"$msgobj_271", i32 41
  %"$msgobj_fname_282" = bitcast i8* %"$msgobj_fname_281" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_280", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_282", align 8
  %"$msgobj_td_283" = getelementptr i8, i8* %"$msgobj_271", i32 57
  %"$msgobj_td_284" = bitcast i8* %"$msgobj_td_283" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_284", align 8
  %"$msgobj_v_285" = getelementptr i8, i8* %"$msgobj_271", i32 65
  %"$msgobj_v_286" = bitcast i8* %"$msgobj_v_285" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_286", align 8
  %"$msgobj_fname_288" = getelementptr i8, i8* %"$msgobj_271", i32 81
  %"$msgobj_fname_289" = bitcast i8* %"$msgobj_fname_288" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_287", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_289", align 8
  %"$msgobj_td_290" = getelementptr i8, i8* %"$msgobj_271", i32 97
  %"$msgobj_td_291" = bitcast i8* %"$msgobj_td_290" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_291", align 8
  %"$cur_balance_292" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_293" = getelementptr i8, i8* %"$msgobj_271", i32 105
  %"$msgobj_v_294" = bitcast i8* %"$msgobj_v_293" to %Uint128*
  store %Uint128 %"$cur_balance_292", %Uint128* %"$msgobj_v_294", align 8
  store i8* %"$msgobj_271", i8** %e, align 8, !dbg !38
  %"$e_296" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_298" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_27", i8* %"$e_296")
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 %"$_literal_cost_call_298", %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_269"
  %"$consume_303" = sub i64 %"$gasrem_299", %"$_literal_cost_call_298"
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %"$execptr_load_304" = load i8*, i8** @_execptr, align 8
  %"$e_305" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_304", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", i8* %"$e_305"), !dbg !41
  br label %"$matchsucc_252"

"$empty_default_256":                             ; preds = %"$have_gas_250"
  br label %"$matchsucc_252"

"$matchsucc_252":                                 ; preds = %"$have_gas_302", %"$True_257", %"$empty_default_256"
  ret void
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$CheckSenderBalance_306"(%Uint128 %_amount, [20 x i8]* %"$_origin_307", [20 x i8]* %"$_sender_308", %Uint128 %expected_balance) !dbg !42 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_307", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_308", align 1
  %cur_balance = alloca %Uint128, align 8
  %"$execptr_load_310" = load i8*, i8** @_execptr, align 8
  %"$cur_balance__sender_311" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$cur_balance__sender_311", align 1
  %"$cur_balance_call_312" = call i8* @_fetch_remote_field(i8* %"$execptr_load_310", [20 x i8]* %"$cur_balance__sender_311", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_309", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i32 0, i8* null, i32 1), !dbg !43
  %"$cur_balance_313" = bitcast i8* %"$cur_balance_call_312" to %Uint128*
  %"$cur_balance_314" = load %Uint128, %Uint128* %"$cur_balance_313", align 8
  store %Uint128 %"$cur_balance_314", %Uint128* %cur_balance, align 8
  %"$_literal_cost_cur_balance_315" = alloca %Uint128, align 8
  %"$cur_balance_316" = load %Uint128, %Uint128* %cur_balance, align 8
  store %Uint128 %"$cur_balance_316", %Uint128* %"$_literal_cost_cur_balance_315", align 8
  %"$$_literal_cost_cur_balance_315_317" = bitcast %Uint128* %"$_literal_cost_cur_balance_315" to i8*
  %"$_literal_cost_call_318" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i8* %"$$_literal_cost_cur_balance_315_317")
  %"$gasadd_319" = add i64 %"$_literal_cost_call_318", 0
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 %"$gasadd_319", %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %entry
  %"$consume_324" = sub i64 %"$gasrem_320", %"$gasadd_319"
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_323"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %is_expected = alloca %TName_Bool*, align 8
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 8, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_328"
  %"$consume_335" = sub i64 %"$gasrem_331", 8
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %"$execptr_load_336" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_337" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_338" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_336", %Uint128 %expected_balance, %Uint128 %"$cur_balance_337"), !dbg !44
  store %TName_Bool* %"$eq_call_338", %TName_Bool** %is_expected, align 8, !dbg !44
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 2, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_334"
  %"$consume_344" = sub i64 %"$gasrem_340", 2
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %"$is_expected_346" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_347" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_346", i32 0, i32 0
  %"$is_expected_tag_348" = load i8, i8* %"$is_expected_tag_347", align 1
  switch i8 %"$is_expected_tag_348", label %"$empty_default_349" [
    i8 0, label %"$True_350"
    i8 1, label %"$False_352"
  ], !dbg !45

"$True_350":                                      ; preds = %"$have_gas_343"
  %"$is_expected_351" = bitcast %TName_Bool* %"$is_expected_346" to %CName_True*
  br label %"$matchsucc_345"

"$False_352":                                     ; preds = %"$have_gas_343"
  %"$is_expected_353" = bitcast %TName_Bool* %"$is_expected_346" to %CName_False*
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$False_352"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$False_352"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_357"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %"$msgobj_364_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_364_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_364_salloc_load", i64 121)
  %"$msgobj_364_salloc" = bitcast i8* %"$msgobj_364_salloc_salloc" to [121 x i8]*
  %"$msgobj_364" = bitcast [121 x i8]* %"$msgobj_364_salloc" to i8*
  store i8 3, i8* %"$msgobj_364", align 1
  %"$msgobj_fname_366" = getelementptr i8, i8* %"$msgobj_364", i32 1
  %"$msgobj_fname_367" = bitcast i8* %"$msgobj_fname_366" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_365", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_367", align 8
  %"$msgobj_td_368" = getelementptr i8, i8* %"$msgobj_364", i32 17
  %"$msgobj_td_369" = bitcast i8* %"$msgobj_td_368" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_369", align 8
  %"$msgobj_v_371" = getelementptr i8, i8* %"$msgobj_364", i32 25
  %"$msgobj_v_372" = bitcast i8* %"$msgobj_v_371" to %String*
  store %String { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"$stringlit_370", i32 0, i32 0), i32 50 }, %String* %"$msgobj_v_372", align 8
  %"$msgobj_fname_374" = getelementptr i8, i8* %"$msgobj_364", i32 41
  %"$msgobj_fname_375" = bitcast i8* %"$msgobj_fname_374" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_373", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_375", align 8
  %"$msgobj_td_376" = getelementptr i8, i8* %"$msgobj_364", i32 57
  %"$msgobj_td_377" = bitcast i8* %"$msgobj_td_376" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_377", align 8
  %"$msgobj_v_378" = getelementptr i8, i8* %"$msgobj_364", i32 65
  %"$msgobj_v_379" = bitcast i8* %"$msgobj_v_378" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_379", align 8
  %"$msgobj_fname_381" = getelementptr i8, i8* %"$msgobj_364", i32 81
  %"$msgobj_fname_382" = bitcast i8* %"$msgobj_fname_381" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_380", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_382", align 8
  %"$msgobj_td_383" = getelementptr i8, i8* %"$msgobj_364", i32 97
  %"$msgobj_td_384" = bitcast i8* %"$msgobj_td_383" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_384", align 8
  %"$cur_balance_385" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_386" = getelementptr i8, i8* %"$msgobj_364", i32 105
  %"$msgobj_v_387" = bitcast i8* %"$msgobj_v_386" to %Uint128*
  store %Uint128 %"$cur_balance_385", %Uint128* %"$msgobj_v_387", align 8
  store i8* %"$msgobj_364", i8** %e, align 8, !dbg !46
  %"$e_389" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_391" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_27", i8* %"$e_389")
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 %"$_literal_cost_call_391", %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_362"
  %"$consume_396" = sub i64 %"$gasrem_392", %"$_literal_cost_call_391"
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %"$execptr_load_397" = load i8*, i8** @_execptr, align 8
  %"$e_398" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_397", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", i8* %"$e_398"), !dbg !49
  br label %"$matchsucc_345"

"$empty_default_349":                             ; preds = %"$have_gas_343"
  br label %"$matchsucc_345"

"$matchsucc_345":                                 ; preds = %"$have_gas_395", %"$True_350", %"$empty_default_349"
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define internal void @"$AcceptAndCheckBalance_399"(%Uint128 %_amount, [20 x i8]* %"$_origin_400", [20 x i8]* %"$_sender_401") !dbg !50 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_400", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_401", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_403" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_404" = call i8* @_fetch_field(i8* %"$execptr_load_403", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_402", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i32 0, i8* null, i32 1), !dbg !51
  %"$init_bal_405" = bitcast i8* %"$init_bal_call_404" to %Uint128*
  %"$init_bal_406" = load %Uint128, %Uint128* %"$init_bal_405", align 8
  store %Uint128 %"$init_bal_406", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_407" = alloca %Uint128, align 8
  %"$init_bal_408" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_408", %Uint128* %"$_literal_cost_init_bal_407", align 8
  %"$$_literal_cost_init_bal_407_409" = bitcast %Uint128* %"$_literal_cost_init_bal_407" to i8*
  %"$_literal_cost_call_410" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i8* %"$$_literal_cost_init_bal_407_409")
  %"$gasadd_411" = add i64 %"$_literal_cost_call_410", 0
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 %"$gasadd_411", %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %entry
  %"$consume_416" = sub i64 %"$gasrem_412", %"$gasadd_411"
  store i64 %"$consume_416", i64* @_gasrem, align 8
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_415"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$execptr_load_422" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_422"), !dbg !52
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_420"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 8, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_426"
  %"$consume_433" = sub i64 %"$gasrem_429", 8
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %"$init_bal_434" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_435" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_434", %Uint128 %_amount), !dbg !53
  store %Uint128 %"$add_call_435", %Uint128* %expected_balance, align 8, !dbg !53
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_432"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$CheckBalance__origin_441" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_441", align 1
  %"$CheckBalance__sender_442" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_442", align 1
  %"$expected_balance_443" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_214"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_441", [20 x i8]* %"$CheckBalance__sender_442", %Uint128 %"$expected_balance_443"), !dbg !54
  ret void
}

declare %Uint128 @_add_Uint128(%Uint128, %Uint128)

define void @AcceptAndCheckBalance(i8* %0) !dbg !55 {
entry:
  %"$_amount_445" = getelementptr i8, i8* %0, i32 0
  %"$_amount_446" = bitcast i8* %"$_amount_445" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_446", align 8
  %"$_origin_447" = getelementptr i8, i8* %0, i32 16
  %"$_origin_448" = bitcast i8* %"$_origin_447" to [20 x i8]*
  %"$_sender_449" = getelementptr i8, i8* %0, i32 36
  %"$_sender_450" = bitcast i8* %"$_sender_449" to [20 x i8]*
  call void @"$AcceptAndCheckBalance_399"(%Uint128 %_amount, [20 x i8]* %"$_origin_448", [20 x i8]* %"$_sender_450"), !dbg !56
  ret void
}

define internal void @"$AcceptTwiceAndCheckBalance_451"(%Uint128 %_amount, [20 x i8]* %"$_origin_452", [20 x i8]* %"$_sender_453") !dbg !57 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_452", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_453", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_455" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_456" = call i8* @_fetch_field(i8* %"$execptr_load_455", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_454", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i32 0, i8* null, i32 1), !dbg !58
  %"$init_bal_457" = bitcast i8* %"$init_bal_call_456" to %Uint128*
  %"$init_bal_458" = load %Uint128, %Uint128* %"$init_bal_457", align 8
  store %Uint128 %"$init_bal_458", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_459" = alloca %Uint128, align 8
  %"$init_bal_460" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_460", %Uint128* %"$_literal_cost_init_bal_459", align 8
  %"$$_literal_cost_init_bal_459_461" = bitcast %Uint128* %"$_literal_cost_init_bal_459" to i8*
  %"$_literal_cost_call_462" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i8* %"$$_literal_cost_init_bal_459_461")
  %"$gasadd_463" = add i64 %"$_literal_cost_call_462", 0
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 %"$gasadd_463", %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %entry
  %"$consume_468" = sub i64 %"$gasrem_464", %"$gasadd_463"
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_467"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$execptr_load_474" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_474"), !dbg !59
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_472"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 8, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_478"
  %"$consume_485" = sub i64 %"$gasrem_481", 8
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %"$init_bal_486" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_487" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_486", %Uint128 %_amount), !dbg !60
  store %Uint128 %"$add_call_487", %Uint128* %expected_balance, align 8, !dbg !60
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_484"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  %"$CheckBalance__origin_493" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_493", align 1
  %"$CheckBalance__sender_494" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_494", align 1
  %"$expected_balance_495" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_214"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_493", [20 x i8]* %"$CheckBalance__sender_494", %Uint128 %"$expected_balance_495"), !dbg !61
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 1, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_491"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_491"
  %"$consume_500" = sub i64 %"$gasrem_496", 1
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %"$execptr_load_501" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_501"), !dbg !62
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_499"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_499"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %"$CheckBalance__origin_507" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_507", align 1
  %"$CheckBalance__sender_508" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_508", align 1
  %"$expected_balance_509" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_214"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_507", [20 x i8]* %"$CheckBalance__sender_508", %Uint128 %"$expected_balance_509"), !dbg !63
  ret void
}

define void @AcceptTwiceAndCheckBalance(i8* %0) !dbg !64 {
entry:
  %"$_amount_511" = getelementptr i8, i8* %0, i32 0
  %"$_amount_512" = bitcast i8* %"$_amount_511" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_512", align 8
  %"$_origin_513" = getelementptr i8, i8* %0, i32 16
  %"$_origin_514" = bitcast i8* %"$_origin_513" to [20 x i8]*
  %"$_sender_515" = getelementptr i8, i8* %0, i32 36
  %"$_sender_516" = bitcast i8* %"$_sender_515" to [20 x i8]*
  call void @"$AcceptTwiceAndCheckBalance_451"(%Uint128 %_amount, [20 x i8]* %"$_origin_514", [20 x i8]* %"$_sender_516"), !dbg !65
  ret void
}

define internal void @"$AcceptAndCheckSenderBalance_517"(%Uint128 %_amount, [20 x i8]* %"$_origin_518", [20 x i8]* %"$_sender_519") !dbg !66 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_518", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_519", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_521" = load i8*, i8** @_execptr, align 8
  %"$init_bal__sender_522" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$init_bal__sender_522", align 1
  %"$init_bal_call_523" = call i8* @_fetch_remote_field(i8* %"$execptr_load_521", [20 x i8]* %"$init_bal__sender_522", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_520", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i32 0, i8* null, i32 1), !dbg !67
  %"$init_bal_524" = bitcast i8* %"$init_bal_call_523" to %Uint128*
  %"$init_bal_525" = load %Uint128, %Uint128* %"$init_bal_524", align 8
  store %Uint128 %"$init_bal_525", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_526" = alloca %Uint128, align 8
  %"$init_bal_527" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_527", %Uint128* %"$_literal_cost_init_bal_526", align 8
  %"$$_literal_cost_init_bal_526_528" = bitcast %Uint128* %"$_literal_cost_init_bal_526" to i8*
  %"$_literal_cost_call_529" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i8* %"$$_literal_cost_init_bal_526_528")
  %"$gasadd_530" = add i64 %"$_literal_cost_call_529", 0
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 %"$gasadd_530", %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %entry
  %"$consume_535" = sub i64 %"$gasrem_531", %"$gasadd_530"
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_534"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %"$execptr_load_541" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_541"), !dbg !68
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_539"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %"$CheckSenderBalance__origin_547" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckSenderBalance__origin_547", align 1
  %"$CheckSenderBalance__sender_548" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckSenderBalance__sender_548", align 1
  %"$init_bal_549" = load %Uint128, %Uint128* %init_bal, align 8
  call void @"$CheckSenderBalance_306"(%Uint128 %_amount, [20 x i8]* %"$CheckSenderBalance__origin_547", [20 x i8]* %"$CheckSenderBalance__sender_548", %Uint128 %"$init_bal_549"), !dbg !69
  ret void
}

define void @AcceptAndCheckSenderBalance(i8* %0) !dbg !70 {
entry:
  %"$_amount_551" = getelementptr i8, i8* %0, i32 0
  %"$_amount_552" = bitcast i8* %"$_amount_551" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_552", align 8
  %"$_origin_553" = getelementptr i8, i8* %0, i32 16
  %"$_origin_554" = bitcast i8* %"$_origin_553" to [20 x i8]*
  %"$_sender_555" = getelementptr i8, i8* %0, i32 36
  %"$_sender_556" = bitcast i8* %"$_sender_555" to [20 x i8]*
  call void @"$AcceptAndCheckSenderBalance_517"(%Uint128 %_amount, [20 x i8]* %"$_origin_554", [20 x i8]* %"$_sender_556"), !dbg !71
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
!9 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 5, column: 38, scope: !9)
!11 = distinct !DISubprogram(name: "Reset", linkageName: "Reset", scope: !2, file: !2, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 8, column: 17, scope: !11)
!13 = !DILocation(line: 9, column: 3, scope: !11)
!14 = distinct !DISubprogram(name: "Reset", linkageName: "Reset", scope: !2, file: !2, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 7, column: 12, scope: !14)
!16 = distinct !DISubprogram(name: "StoreString", linkageName: "StoreString", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 13, column: 3, scope: !16)
!18 = !DILocation(line: 14, column: 17, scope: !16)
!19 = !DILocation(line: 15, column: 3, scope: !16)
!20 = distinct !DISubprogram(name: "StoreString", linkageName: "StoreString", scope: !2, file: !2, line: 12, type: !6, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 12, column: 12, scope: !20)
!22 = distinct !DISubprogram(name: "Accept", linkageName: "Accept", scope: !2, file: !2, line: 18, type: !6, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DILocation(line: 19, column: 3, scope: !22)
!24 = distinct !DISubprogram(name: "Accept", linkageName: "Accept", scope: !2, file: !2, line: 18, type: !6, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 18, column: 12, scope: !24)
!26 = distinct !DISubprogram(name: "AcceptTwice", linkageName: "AcceptTwice", scope: !2, file: !2, line: 22, type: !6, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!27 = !DILocation(line: 23, column: 3, scope: !26)
!28 = !DILocation(line: 24, column: 3, scope: !26)
!29 = distinct !DISubprogram(name: "AcceptTwice", linkageName: "AcceptTwice", scope: !2, file: !2, line: 22, type: !6, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!30 = !DILocation(line: 22, column: 12, scope: !29)
!31 = distinct !DISubprogram(name: "NonAccept", linkageName: "NonAccept", scope: !2, file: !2, line: 27, type: !6, scopeLine: 27, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = distinct !DISubprogram(name: "NonAccept", linkageName: "NonAccept", scope: !2, file: !2, line: 27, type: !6, scopeLine: 27, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 27, column: 12, scope: !32)
!34 = distinct !DISubprogram(name: "CheckBalance", linkageName: "CheckBalance", scope: !2, file: !2, line: 30, type: !6, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DILocation(line: 31, column: 3, scope: !34)
!36 = !DILocation(line: 32, column: 17, scope: !34)
!37 = !DILocation(line: 33, column: 3, scope: !34)
!38 = !DILocation(line: 36, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !2, line: 35, column: 5)
!40 = distinct !DILexicalBlock(scope: !34, file: !2, line: 33, column: 3)
!41 = !DILocation(line: 39, column: 5, scope: !39)
!42 = distinct !DISubprogram(name: "CheckSenderBalance", linkageName: "CheckSenderBalance", scope: !2, file: !2, line: 43, type: !6, scopeLine: 43, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!43 = !DILocation(line: 44, column: 3, scope: !42)
!44 = !DILocation(line: 45, column: 17, scope: !42)
!45 = !DILocation(line: 46, column: 3, scope: !42)
!46 = !DILocation(line: 49, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !2, line: 48, column: 5)
!48 = distinct !DILexicalBlock(scope: !42, file: !2, line: 46, column: 3)
!49 = !DILocation(line: 52, column: 5, scope: !47)
!50 = distinct !DISubprogram(name: "AcceptAndCheckBalance", linkageName: "AcceptAndCheckBalance", scope: !2, file: !2, line: 56, type: !6, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!51 = !DILocation(line: 57, column: 3, scope: !50)
!52 = !DILocation(line: 58, column: 3, scope: !50)
!53 = !DILocation(line: 59, column: 22, scope: !50)
!54 = !DILocation(line: 60, column: 3, scope: !50)
!55 = distinct !DISubprogram(name: "AcceptAndCheckBalance", linkageName: "AcceptAndCheckBalance", scope: !2, file: !2, line: 56, type: !6, scopeLine: 56, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!56 = !DILocation(line: 56, column: 12, scope: !55)
!57 = distinct !DISubprogram(name: "AcceptTwiceAndCheckBalance", linkageName: "AcceptTwiceAndCheckBalance", scope: !2, file: !2, line: 63, type: !6, scopeLine: 63, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!58 = !DILocation(line: 64, column: 3, scope: !57)
!59 = !DILocation(line: 65, column: 3, scope: !57)
!60 = !DILocation(line: 66, column: 22, scope: !57)
!61 = !DILocation(line: 67, column: 3, scope: !57)
!62 = !DILocation(line: 68, column: 3, scope: !57)
!63 = !DILocation(line: 69, column: 3, scope: !57)
!64 = distinct !DISubprogram(name: "AcceptTwiceAndCheckBalance", linkageName: "AcceptTwiceAndCheckBalance", scope: !2, file: !2, line: 63, type: !6, scopeLine: 63, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!65 = !DILocation(line: 63, column: 12, scope: !64)
!66 = distinct !DISubprogram(name: "AcceptAndCheckSenderBalance", linkageName: "AcceptAndCheckSenderBalance", scope: !2, file: !2, line: 72, type: !6, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!67 = !DILocation(line: 73, column: 3, scope: !66)
!68 = !DILocation(line: 74, column: 3, scope: !66)
!69 = !DILocation(line: 75, column: 3, scope: !66)
!70 = distinct !DISubprogram(name: "AcceptAndCheckSenderBalance", linkageName: "AcceptAndCheckSenderBalance", scope: !2, file: !2, line: 72, type: !6, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!71 = !DILocation(line: 72, column: 12, scope: !70)
