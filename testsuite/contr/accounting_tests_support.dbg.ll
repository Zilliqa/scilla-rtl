

; gas_remaining: 4002000
; ModuleID = 'AccountingTestsSupport'
source_filename = "AccountingTestsSupport"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_33" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_32"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_32" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_34"**, %"$TyDescrTy_ADTTyp_33"* }
%"$TyDescrTy_ADTTyp_Constr_34" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_39" = type { i32, %"$TyDescr_AddrFieldTyp_38"* }
%"$TyDescr_AddrFieldTyp_38" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Uint32 = type { i32 }
%"$ParamDescr_533" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_534" = type { %ParamDescrString, i32, %"$ParamDescr_533"* }
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
@"$stringlit_266" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_271" = unnamed_addr constant [38 x i8] c"Unexpected balance at support contract"
@"$stringlit_274" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_281" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_303" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$stringlit_353" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_358" = unnamed_addr constant [50 x i8] c"Unexpected sender balance read by support contract"
@"$stringlit_361" = unnamed_addr constant [8 x i8] c"expected"
@"$stringlit_368" = unnamed_addr constant [6 x i8] c"actual"
@"$_balance_390" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_436" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$_balance_496" = unnamed_addr constant [9 x i8] c"_balance\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Addr_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_35", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_36", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_535" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_536" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_537" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_533"] [%"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_535", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_5" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_536", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_31" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_537", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_21" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_538" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_539" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_540" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Reset_541" = unnamed_addr constant [3 x %"$ParamDescr_533"] [%"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_538", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_539", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_540", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_Reset_542" = unnamed_addr constant [5 x i8] c"Reset"
@"$tpname__amount_543" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_544" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_545" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_s_546" = unnamed_addr constant [1 x i8] c"s"
@"$tparams_StoreString_547" = unnamed_addr constant [4 x %"$ParamDescr_533"] [%"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_543", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_544", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_545", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_s_546", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_String_19" }]
@"$tname_StoreString_548" = unnamed_addr constant [11 x i8] c"StoreString"
@"$tpname__amount_549" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_550" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_551" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept_552" = unnamed_addr constant [3 x %"$ParamDescr_533"] [%"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_549", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_550", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_551", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_Accept_553" = unnamed_addr constant [6 x i8] c"Accept"
@"$tpname__amount_554" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_555" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_556" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwice_557" = unnamed_addr constant [3 x %"$ParamDescr_533"] [%"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_554", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_555", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_556", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_AcceptTwice_558" = unnamed_addr constant [11 x i8] c"AcceptTwice"
@"$tpname__amount_559" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_560" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_561" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_NonAccept_562" = unnamed_addr constant [3 x %"$ParamDescr_533"] [%"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_559", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_560", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_561", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_NonAccept_563" = unnamed_addr constant [9 x i8] c"NonAccept"
@"$tpname__amount_564" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_565" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_566" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckBalance_567" = unnamed_addr constant [3 x %"$ParamDescr_533"] [%"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_564", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_565", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_566", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_AcceptAndCheckBalance_568" = unnamed_addr constant [21 x i8] c"AcceptAndCheckBalance"
@"$tpname__amount_569" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_570" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_571" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptTwiceAndCheckBalance_572" = unnamed_addr constant [3 x %"$ParamDescr_533"] [%"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_569", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_570", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_571", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_AcceptTwiceAndCheckBalance_573" = unnamed_addr constant [26 x i8] c"AcceptTwiceAndCheckBalance"
@"$tpname__amount_574" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_575" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_576" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_AcceptAndCheckSenderBalance_577" = unnamed_addr constant [3 x %"$ParamDescr_533"] [%"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_574", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_13" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_575", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }, %"$ParamDescr_533" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_576", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_40" }]
@"$tname_AcceptAndCheckSenderBalance_578" = unnamed_addr constant [27 x i8] c"AcceptAndCheckSenderBalance"
@_transition_parameters = constant [8 x %"$TransDescr_534"] [%"$TransDescr_534" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tname_Reset_542", i32 0, i32 0), i32 5 }, i32 3, %"$ParamDescr_533"* getelementptr inbounds ([3 x %"$ParamDescr_533"], [3 x %"$ParamDescr_533"]* @"$tparams_Reset_541", i32 0, i32 0) }, %"$TransDescr_534" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_StoreString_548", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_533"* getelementptr inbounds ([4 x %"$ParamDescr_533"], [4 x %"$ParamDescr_533"]* @"$tparams_StoreString_547", i32 0, i32 0) }, %"$TransDescr_534" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_Accept_553", i32 0, i32 0), i32 6 }, i32 3, %"$ParamDescr_533"* getelementptr inbounds ([3 x %"$ParamDescr_533"], [3 x %"$ParamDescr_533"]* @"$tparams_Accept_552", i32 0, i32 0) }, %"$TransDescr_534" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_AcceptTwice_558", i32 0, i32 0), i32 11 }, i32 3, %"$ParamDescr_533"* getelementptr inbounds ([3 x %"$ParamDescr_533"], [3 x %"$ParamDescr_533"]* @"$tparams_AcceptTwice_557", i32 0, i32 0) }, %"$TransDescr_534" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_NonAccept_563", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_533"* getelementptr inbounds ([3 x %"$ParamDescr_533"], [3 x %"$ParamDescr_533"]* @"$tparams_NonAccept_562", i32 0, i32 0) }, %"$TransDescr_534" { %ParamDescrString { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$tname_AcceptAndCheckBalance_568", i32 0, i32 0), i32 21 }, i32 3, %"$ParamDescr_533"* getelementptr inbounds ([3 x %"$ParamDescr_533"], [3 x %"$ParamDescr_533"]* @"$tparams_AcceptAndCheckBalance_567", i32 0, i32 0) }, %"$TransDescr_534" { %ParamDescrString { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @"$tname_AcceptTwiceAndCheckBalance_573", i32 0, i32 0), i32 26 }, i32 3, %"$ParamDescr_533"* getelementptr inbounds ([3 x %"$ParamDescr_533"], [3 x %"$ParamDescr_533"]* @"$tparams_AcceptTwiceAndCheckBalance_572", i32 0, i32 0) }, %"$TransDescr_534" { %ParamDescrString { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @"$tname_AcceptAndCheckSenderBalance_578", i32 0, i32 0), i32 27 }, i32 3, %"$ParamDescr_533"* getelementptr inbounds ([3 x %"$ParamDescr_533"], [3 x %"$ParamDescr_533"]* @"$tparams_AcceptAndCheckSenderBalance_577", i32 0, i32 0) }]
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
  %"$execptr_load_237" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_238" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_239" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_237", %Uint128 %expected_balance, %Uint128 %"$cur_balance_238"), !dbg !36
  store %TName_Bool* %"$eq_call_239", %TName_Bool** %is_expected, align 8, !dbg !36
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 2, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_235"
  %"$consume_245" = sub i64 %"$gasrem_241", 2
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$is_expected_247" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_248" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_247", i32 0, i32 0
  %"$is_expected_tag_249" = load i8, i8* %"$is_expected_tag_248", align 1
  switch i8 %"$is_expected_tag_249", label %"$empty_default_250" [
    i8 0, label %"$True_251"
    i8 1, label %"$False_253"
  ], !dbg !37

"$True_251":                                      ; preds = %"$have_gas_244"
  %"$is_expected_252" = bitcast %TName_Bool* %"$is_expected_247" to %CName_True*
  br label %"$matchsucc_246"

"$False_253":                                     ; preds = %"$have_gas_244"
  %"$is_expected_254" = bitcast %TName_Bool* %"$is_expected_247" to %CName_False*
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$False_253"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$False_253"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_258"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$msgobj_265_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_265_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_265_salloc_load", i64 121)
  %"$msgobj_265_salloc" = bitcast i8* %"$msgobj_265_salloc_salloc" to [121 x i8]*
  %"$msgobj_265" = bitcast [121 x i8]* %"$msgobj_265_salloc" to i8*
  store i8 3, i8* %"$msgobj_265", align 1
  %"$msgobj_fname_267" = getelementptr i8, i8* %"$msgobj_265", i32 1
  %"$msgobj_fname_268" = bitcast i8* %"$msgobj_fname_267" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_266", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_268", align 8
  %"$msgobj_td_269" = getelementptr i8, i8* %"$msgobj_265", i32 17
  %"$msgobj_td_270" = bitcast i8* %"$msgobj_td_269" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_270", align 8
  %"$msgobj_v_272" = getelementptr i8, i8* %"$msgobj_265", i32 25
  %"$msgobj_v_273" = bitcast i8* %"$msgobj_v_272" to %String*
  store %String { i8* getelementptr inbounds ([38 x i8], [38 x i8]* @"$stringlit_271", i32 0, i32 0), i32 38 }, %String* %"$msgobj_v_273", align 8
  %"$msgobj_fname_275" = getelementptr i8, i8* %"$msgobj_265", i32 41
  %"$msgobj_fname_276" = bitcast i8* %"$msgobj_fname_275" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_274", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_276", align 8
  %"$msgobj_td_277" = getelementptr i8, i8* %"$msgobj_265", i32 57
  %"$msgobj_td_278" = bitcast i8* %"$msgobj_td_277" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_278", align 8
  %"$msgobj_v_279" = getelementptr i8, i8* %"$msgobj_265", i32 65
  %"$msgobj_v_280" = bitcast i8* %"$msgobj_v_279" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_280", align 8
  %"$msgobj_fname_282" = getelementptr i8, i8* %"$msgobj_265", i32 81
  %"$msgobj_fname_283" = bitcast i8* %"$msgobj_fname_282" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_281", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_283", align 8
  %"$msgobj_td_284" = getelementptr i8, i8* %"$msgobj_265", i32 97
  %"$msgobj_td_285" = bitcast i8* %"$msgobj_td_284" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_285", align 8
  %"$cur_balance_286" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_287" = getelementptr i8, i8* %"$msgobj_265", i32 105
  %"$msgobj_v_288" = bitcast i8* %"$msgobj_v_287" to %Uint128*
  store %Uint128 %"$cur_balance_286", %Uint128* %"$msgobj_v_288", align 8
  store i8* %"$msgobj_265", i8** %e, align 8, !dbg !38
  %"$e_290" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_292" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_27", i8* %"$e_290")
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 %"$_literal_cost_call_292", %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_263"
  %"$consume_297" = sub i64 %"$gasrem_293", %"$_literal_cost_call_292"
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %"$execptr_load_298" = load i8*, i8** @_execptr, align 8
  %"$e_299" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_298", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", i8* %"$e_299"), !dbg !41
  br label %"$matchsucc_246"

"$empty_default_250":                             ; preds = %"$have_gas_244"
  br label %"$matchsucc_246"

"$matchsucc_246":                                 ; preds = %"$have_gas_296", %"$True_251", %"$empty_default_250"
  ret void
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$CheckSenderBalance_300"(%Uint128 %_amount, [20 x i8]* %"$_origin_301", [20 x i8]* %"$_sender_302", %Uint128 %expected_balance) !dbg !42 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_301", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_302", align 1
  %cur_balance = alloca %Uint128, align 8
  %"$execptr_load_304" = load i8*, i8** @_execptr, align 8
  %"$cur_balance__sender_305" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$cur_balance__sender_305", align 1
  %"$cur_balance_call_306" = call i8* @_fetch_remote_field(i8* %"$execptr_load_304", [20 x i8]* %"$cur_balance__sender_305", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_303", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i32 0, i8* null, i32 1), !dbg !43
  %"$cur_balance_307" = bitcast i8* %"$cur_balance_call_306" to %Uint128*
  %"$cur_balance_308" = load %Uint128, %Uint128* %"$cur_balance_307", align 8
  store %Uint128 %"$cur_balance_308", %Uint128* %cur_balance, align 8
  %"$_literal_cost_cur_balance_309" = alloca %Uint128, align 8
  %"$cur_balance_310" = load %Uint128, %Uint128* %cur_balance, align 8
  store %Uint128 %"$cur_balance_310", %Uint128* %"$_literal_cost_cur_balance_309", align 8
  %"$$_literal_cost_cur_balance_309_311" = bitcast %Uint128* %"$_literal_cost_cur_balance_309" to i8*
  %"$_literal_cost_call_312" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i8* %"$$_literal_cost_cur_balance_309_311")
  %"$gasadd_313" = add i64 %"$_literal_cost_call_312", 0
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 %"$gasadd_313", %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %entry
  %"$consume_318" = sub i64 %"$gasrem_314", %"$gasadd_313"
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_317"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %is_expected = alloca %TName_Bool*, align 8
  %"$execptr_load_324" = load i8*, i8** @_execptr, align 8
  %"$cur_balance_325" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$eq_call_326" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_324", %Uint128 %expected_balance, %Uint128 %"$cur_balance_325"), !dbg !44
  store %TName_Bool* %"$eq_call_326", %TName_Bool** %is_expected, align 8, !dbg !44
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 2, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_322"
  %"$consume_332" = sub i64 %"$gasrem_328", 2
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %"$is_expected_334" = load %TName_Bool*, %TName_Bool** %is_expected, align 8
  %"$is_expected_tag_335" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_expected_334", i32 0, i32 0
  %"$is_expected_tag_336" = load i8, i8* %"$is_expected_tag_335", align 1
  switch i8 %"$is_expected_tag_336", label %"$empty_default_337" [
    i8 0, label %"$True_338"
    i8 1, label %"$False_340"
  ], !dbg !45

"$True_338":                                      ; preds = %"$have_gas_331"
  %"$is_expected_339" = bitcast %TName_Bool* %"$is_expected_334" to %CName_True*
  br label %"$matchsucc_333"

"$False_340":                                     ; preds = %"$have_gas_331"
  %"$is_expected_341" = bitcast %TName_Bool* %"$is_expected_334" to %CName_False*
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$False_340"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$False_340"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_345"
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %"$msgobj_352_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_352_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_352_salloc_load", i64 121)
  %"$msgobj_352_salloc" = bitcast i8* %"$msgobj_352_salloc_salloc" to [121 x i8]*
  %"$msgobj_352" = bitcast [121 x i8]* %"$msgobj_352_salloc" to i8*
  store i8 3, i8* %"$msgobj_352", align 1
  %"$msgobj_fname_354" = getelementptr i8, i8* %"$msgobj_352", i32 1
  %"$msgobj_fname_355" = bitcast i8* %"$msgobj_fname_354" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_353", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_355", align 8
  %"$msgobj_td_356" = getelementptr i8, i8* %"$msgobj_352", i32 17
  %"$msgobj_td_357" = bitcast i8* %"$msgobj_td_356" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ** %"$msgobj_td_357", align 8
  %"$msgobj_v_359" = getelementptr i8, i8* %"$msgobj_352", i32 25
  %"$msgobj_v_360" = bitcast i8* %"$msgobj_v_359" to %String*
  store %String { i8* getelementptr inbounds ([50 x i8], [50 x i8]* @"$stringlit_358", i32 0, i32 0), i32 50 }, %String* %"$msgobj_v_360", align 8
  %"$msgobj_fname_362" = getelementptr i8, i8* %"$msgobj_352", i32 41
  %"$msgobj_fname_363" = bitcast i8* %"$msgobj_fname_362" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_361", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_363", align 8
  %"$msgobj_td_364" = getelementptr i8, i8* %"$msgobj_352", i32 57
  %"$msgobj_td_365" = bitcast i8* %"$msgobj_td_364" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_365", align 8
  %"$msgobj_v_366" = getelementptr i8, i8* %"$msgobj_352", i32 65
  %"$msgobj_v_367" = bitcast i8* %"$msgobj_v_366" to %Uint128*
  store %Uint128 %expected_balance, %Uint128* %"$msgobj_v_367", align 8
  %"$msgobj_fname_369" = getelementptr i8, i8* %"$msgobj_352", i32 81
  %"$msgobj_fname_370" = bitcast i8* %"$msgobj_fname_369" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_368", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_370", align 8
  %"$msgobj_td_371" = getelementptr i8, i8* %"$msgobj_352", i32 97
  %"$msgobj_td_372" = bitcast i8* %"$msgobj_td_371" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ** %"$msgobj_td_372", align 8
  %"$cur_balance_373" = load %Uint128, %Uint128* %cur_balance, align 8
  %"$msgobj_v_374" = getelementptr i8, i8* %"$msgobj_352", i32 105
  %"$msgobj_v_375" = bitcast i8* %"$msgobj_v_374" to %Uint128*
  store %Uint128 %"$cur_balance_373", %Uint128* %"$msgobj_v_375", align 8
  store i8* %"$msgobj_352", i8** %e, align 8, !dbg !46
  %"$e_377" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_379" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_27", i8* %"$e_377")
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 %"$_literal_cost_call_379", %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_350"
  %"$consume_384" = sub i64 %"$gasrem_380", %"$_literal_cost_call_379"
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$execptr_load_385" = load i8*, i8** @_execptr, align 8
  %"$e_386" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_385", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", i8* %"$e_386"), !dbg !49
  br label %"$matchsucc_333"

"$empty_default_337":                             ; preds = %"$have_gas_331"
  br label %"$matchsucc_333"

"$matchsucc_333":                                 ; preds = %"$have_gas_383", %"$True_338", %"$empty_default_337"
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define internal void @"$AcceptAndCheckBalance_387"(%Uint128 %_amount, [20 x i8]* %"$_origin_388", [20 x i8]* %"$_sender_389") !dbg !50 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_388", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_389", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_391" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_392" = call i8* @_fetch_field(i8* %"$execptr_load_391", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_390", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i32 0, i8* null, i32 1), !dbg !51
  %"$init_bal_393" = bitcast i8* %"$init_bal_call_392" to %Uint128*
  %"$init_bal_394" = load %Uint128, %Uint128* %"$init_bal_393", align 8
  store %Uint128 %"$init_bal_394", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_395" = alloca %Uint128, align 8
  %"$init_bal_396" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_396", %Uint128* %"$_literal_cost_init_bal_395", align 8
  %"$$_literal_cost_init_bal_395_397" = bitcast %Uint128* %"$_literal_cost_init_bal_395" to i8*
  %"$_literal_cost_call_398" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i8* %"$$_literal_cost_init_bal_395_397")
  %"$gasadd_399" = add i64 %"$_literal_cost_call_398", 0
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 %"$gasadd_399", %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %entry
  %"$consume_404" = sub i64 %"$gasrem_400", %"$gasadd_399"
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %"$execptr_load_410" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_410"), !dbg !52
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_408"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  %"$init_bal_416" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_417" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_416", %Uint128 %_amount), !dbg !53
  store %Uint128 %"$add_call_417", %Uint128* %expected_balance, align 8, !dbg !53
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_414"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %"$CheckBalance__origin_423" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_423", align 1
  %"$CheckBalance__sender_424" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_424", align 1
  %"$expected_balance_425" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_214"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_423", [20 x i8]* %"$CheckBalance__sender_424", %Uint128 %"$expected_balance_425"), !dbg !54
  ret void
}

declare %Uint128 @_add_Uint128(%Uint128, %Uint128)

define void @AcceptAndCheckBalance(i8* %0) !dbg !55 {
entry:
  %"$_amount_427" = getelementptr i8, i8* %0, i32 0
  %"$_amount_428" = bitcast i8* %"$_amount_427" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_428", align 8
  %"$_origin_429" = getelementptr i8, i8* %0, i32 16
  %"$_origin_430" = bitcast i8* %"$_origin_429" to [20 x i8]*
  %"$_sender_431" = getelementptr i8, i8* %0, i32 36
  %"$_sender_432" = bitcast i8* %"$_sender_431" to [20 x i8]*
  call void @"$AcceptAndCheckBalance_387"(%Uint128 %_amount, [20 x i8]* %"$_origin_430", [20 x i8]* %"$_sender_432"), !dbg !56
  ret void
}

define internal void @"$AcceptTwiceAndCheckBalance_433"(%Uint128 %_amount, [20 x i8]* %"$_origin_434", [20 x i8]* %"$_sender_435") !dbg !57 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_434", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_435", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_437" = load i8*, i8** @_execptr, align 8
  %"$init_bal_call_438" = call i8* @_fetch_field(i8* %"$execptr_load_437", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_436", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i32 0, i8* null, i32 1), !dbg !58
  %"$init_bal_439" = bitcast i8* %"$init_bal_call_438" to %Uint128*
  %"$init_bal_440" = load %Uint128, %Uint128* %"$init_bal_439", align 8
  store %Uint128 %"$init_bal_440", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_441" = alloca %Uint128, align 8
  %"$init_bal_442" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_442", %Uint128* %"$_literal_cost_init_bal_441", align 8
  %"$$_literal_cost_init_bal_441_443" = bitcast %Uint128* %"$_literal_cost_init_bal_441" to i8*
  %"$_literal_cost_call_444" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i8* %"$$_literal_cost_init_bal_441_443")
  %"$gasadd_445" = add i64 %"$_literal_cost_call_444", 0
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 %"$gasadd_445", %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %entry
  %"$consume_450" = sub i64 %"$gasrem_446", %"$gasadd_445"
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$execptr_load_456" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_456"), !dbg !59
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_454"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %expected_balance = alloca %Uint128, align 8
  %"$init_bal_462" = load %Uint128, %Uint128* %init_bal, align 8
  %"$add_call_463" = call %Uint128 @_add_Uint128(%Uint128 %"$init_bal_462", %Uint128 %_amount), !dbg !60
  store %Uint128 %"$add_call_463", %Uint128* %expected_balance, align 8, !dbg !60
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_460"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %"$CheckBalance__origin_469" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_469", align 1
  %"$CheckBalance__sender_470" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_470", align 1
  %"$expected_balance_471" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_214"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_469", [20 x i8]* %"$CheckBalance__sender_470", %Uint128 %"$expected_balance_471"), !dbg !61
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_467"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %"$execptr_load_477" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_477"), !dbg !62
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 1, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %"$have_gas_475"
  %"$consume_482" = sub i64 %"$gasrem_478", 1
  store i64 %"$consume_482", i64* @_gasrem, align 8
  %"$CheckBalance__origin_483" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckBalance__origin_483", align 1
  %"$CheckBalance__sender_484" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckBalance__sender_484", align 1
  %"$expected_balance_485" = load %Uint128, %Uint128* %expected_balance, align 8
  call void @"$CheckBalance_214"(%Uint128 %_amount, [20 x i8]* %"$CheckBalance__origin_483", [20 x i8]* %"$CheckBalance__sender_484", %Uint128 %"$expected_balance_485"), !dbg !63
  ret void
}

define void @AcceptTwiceAndCheckBalance(i8* %0) !dbg !64 {
entry:
  %"$_amount_487" = getelementptr i8, i8* %0, i32 0
  %"$_amount_488" = bitcast i8* %"$_amount_487" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_488", align 8
  %"$_origin_489" = getelementptr i8, i8* %0, i32 16
  %"$_origin_490" = bitcast i8* %"$_origin_489" to [20 x i8]*
  %"$_sender_491" = getelementptr i8, i8* %0, i32 36
  %"$_sender_492" = bitcast i8* %"$_sender_491" to [20 x i8]*
  call void @"$AcceptTwiceAndCheckBalance_433"(%Uint128 %_amount, [20 x i8]* %"$_origin_490", [20 x i8]* %"$_sender_492"), !dbg !65
  ret void
}

define internal void @"$AcceptAndCheckSenderBalance_493"(%Uint128 %_amount, [20 x i8]* %"$_origin_494", [20 x i8]* %"$_sender_495") !dbg !66 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_494", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_495", align 1
  %init_bal = alloca %Uint128, align 8
  %"$execptr_load_497" = load i8*, i8** @_execptr, align 8
  %"$init_bal__sender_498" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$init_bal__sender_498", align 1
  %"$init_bal_call_499" = call i8* @_fetch_remote_field(i8* %"$execptr_load_497", [20 x i8]* %"$init_bal__sender_498", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_496", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i32 0, i8* null, i32 1), !dbg !67
  %"$init_bal_500" = bitcast i8* %"$init_bal_call_499" to %Uint128*
  %"$init_bal_501" = load %Uint128, %Uint128* %"$init_bal_500", align 8
  store %Uint128 %"$init_bal_501", %Uint128* %init_bal, align 8
  %"$_literal_cost_init_bal_502" = alloca %Uint128, align 8
  %"$init_bal_503" = load %Uint128, %Uint128* %init_bal, align 8
  store %Uint128 %"$init_bal_503", %Uint128* %"$_literal_cost_init_bal_502", align 8
  %"$$_literal_cost_init_bal_502_504" = bitcast %Uint128* %"$_literal_cost_init_bal_502" to i8*
  %"$_literal_cost_call_505" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", i8* %"$$_literal_cost_init_bal_502_504")
  %"$gasadd_506" = add i64 %"$_literal_cost_call_505", 0
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 %"$gasadd_506", %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %entry
  %"$consume_511" = sub i64 %"$gasrem_507", %"$gasadd_506"
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_510"
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$execptr_load_517" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_517"), !dbg !68
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_515"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  %"$CheckSenderBalance__origin_523" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$CheckSenderBalance__origin_523", align 1
  %"$CheckSenderBalance__sender_524" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$CheckSenderBalance__sender_524", align 1
  %"$init_bal_525" = load %Uint128, %Uint128* %init_bal, align 8
  call void @"$CheckSenderBalance_300"(%Uint128 %_amount, [20 x i8]* %"$CheckSenderBalance__origin_523", [20 x i8]* %"$CheckSenderBalance__sender_524", %Uint128 %"$init_bal_525"), !dbg !69
  ret void
}

define void @AcceptAndCheckSenderBalance(i8* %0) !dbg !70 {
entry:
  %"$_amount_527" = getelementptr i8, i8* %0, i32 0
  %"$_amount_528" = bitcast i8* %"$_amount_527" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_528", align 8
  %"$_origin_529" = getelementptr i8, i8* %0, i32 16
  %"$_origin_530" = bitcast i8* %"$_origin_529" to [20 x i8]*
  %"$_sender_531" = getelementptr i8, i8* %0, i32 36
  %"$_sender_532" = bitcast i8* %"$_sender_531" to [20 x i8]*
  call void @"$AcceptAndCheckSenderBalance_493"(%Uint128 %_amount, [20 x i8]* %"$_origin_530", [20 x i8]* %"$_sender_532"), !dbg !71
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
