

; gas_remaining: 4001350
; ModuleID = 'Admin'
source_filename = "Admin"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_10" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_42" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_41"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_41" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_43"**, %"$TyDescrTy_ADTTyp_42"* }
%"$TyDescrTy_ADTTyp_Constr_43" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_47" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$$fundef_5_env_86" = type { [20 x i8] }
%String = type { i8*, i32 }
%"$$fundef_3_env_87" = type {}
%"$$fundef_7_env_88" = type { %TName_List_Message* }
%Uint128 = type { i128 }
%TName_Option_Bool = type { i8, %CName_Some_Bool*, %CName_None_Bool* }
%CName_Some_Bool = type <{ i8, %TName_Bool* }>
%CName_None_Bool = type <{ i8 }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_11" = global %"$TyDescrTy_PrimTyp_10" zeroinitializer
@"$TyDescr_Int32_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int32_Prim_11" to i8*) }
@"$TyDescr_Uint32_Prim_13" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 0 }
@"$TyDescr_Uint32_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint32_Prim_13" to i8*) }
@"$TyDescr_Int64_Prim_15" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 1 }
@"$TyDescr_Int64_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int64_Prim_15" to i8*) }
@"$TyDescr_Uint64_Prim_17" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 1 }
@"$TyDescr_Uint64_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint64_Prim_17" to i8*) }
@"$TyDescr_Int128_Prim_19" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 2 }
@"$TyDescr_Int128_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int128_Prim_19" to i8*) }
@"$TyDescr_Uint128_Prim_21" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 2 }
@"$TyDescr_Uint128_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint128_Prim_21" to i8*) }
@"$TyDescr_Int256_Prim_23" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 3 }
@"$TyDescr_Int256_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int256_Prim_23" to i8*) }
@"$TyDescr_Uint256_Prim_25" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 3 }
@"$TyDescr_Uint256_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint256_Prim_25" to i8*) }
@"$TyDescr_String_Prim_27" = global %"$TyDescrTy_PrimTyp_10" { i32 2, i32 0 }
@"$TyDescr_String_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_String_Prim_27" to i8*) }
@"$TyDescr_Bnum_Prim_29" = global %"$TyDescrTy_PrimTyp_10" { i32 3, i32 0 }
@"$TyDescr_Bnum_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bnum_Prim_29" to i8*) }
@"$TyDescr_Message_Prim_31" = global %"$TyDescrTy_PrimTyp_10" { i32 4, i32 0 }
@"$TyDescr_Message_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Message_Prim_31" to i8*) }
@"$TyDescr_Event_Prim_33" = global %"$TyDescrTy_PrimTyp_10" { i32 5, i32 0 }
@"$TyDescr_Event_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Event_Prim_33" to i8*) }
@"$TyDescr_Exception_Prim_35" = global %"$TyDescrTy_PrimTyp_10" { i32 6, i32 0 }
@"$TyDescr_Exception_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Exception_Prim_35" to i8*) }
@"$TyDescr_Bystr_Prim_37" = global %"$TyDescrTy_PrimTyp_10" { i32 7, i32 0 }
@"$TyDescr_Bystr_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr_Prim_37" to i8*) }
@"$TyDescr_Bystr20_Prim_39" = global %"$TyDescrTy_PrimTyp_10" { i32 8, i32 20 }
@"$TyDescr_Bystr20_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr20_Prim_39" to i8*) }
@"$TyDescr_ADT_Option_Bool_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_Option_Bool_ADTTyp_Specl_58" to i8*) }
@"$TyDescr_ADT_Bool_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_Bool_ADTTyp_Specl_70" to i8*) }
@"$TyDescr_ADT_List_Message_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_List_Message_ADTTyp_Specl_82" to i8*) }
@"$TyDescr_Map_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_47"* @"$TyDescr_MapTyp_85" to i8*) }
@"$TyDescr_Option_ADTTyp_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_42" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_60", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_41"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_41"*], [1 x %"$TyDescrTy_ADTTyp_Specl_41"*]* @"$TyDescr_Option_ADTTyp_m_specls_59", i32 0, i32 0) }
@"$TyDescr_Option_Some_Bool_Constr_m_args_50" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45"]
@"$TyDescr_ADT_Some_51" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_51", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_53" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_54" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_54", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_53", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_56" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_43"*] [%"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_52", %"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_55"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_57" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_41" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_43"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_43"*], [2 x %"$TyDescrTy_ADTTyp_Constr_43"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_42"* @"$TyDescr_Option_ADTTyp_49" }
@"$TyDescr_Option_ADTTyp_m_specls_59" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_41"*] [%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_Option_Bool_ADTTyp_Specl_58"]
@"$TyDescr_ADT_Option_60" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_72", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_41"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_41"*], [1 x %"$TyDescrTy_ADTTyp_Specl_41"*]* @"$TyDescr_Bool_ADTTyp_m_specls_71", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_62" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_63" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_63", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_62", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_65" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_66" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_66", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_68" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_43"*] [%"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_Bool_True_ADTTyp_Constr_64", %"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_Bool_False_ADTTyp_Constr_67"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_69" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_41" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_43"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_43"*], [2 x %"$TyDescrTy_ADTTyp_Constr_43"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_68", i32 0, i32 0), %"$TyDescrTy_ADTTyp_42"* @"$TyDescr_Bool_ADTTyp_61" }
@"$TyDescr_Bool_ADTTyp_m_specls_71" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_41"*] [%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_Bool_ADTTyp_Specl_70"]
@"$TyDescr_ADT_Bool_72" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_84", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_41"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_41"*], [1 x %"$TyDescrTy_ADTTyp_Specl_41"*]* @"$TyDescr_List_ADTTyp_m_specls_83", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_74" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46"]
@"$TyDescr_ADT_Cons_75" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_75", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_74", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_77" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_78" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_78", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_77", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_80" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_43"*] [%"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_76", %"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_79"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_81" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_32"]
@"$TyDescr_List_Message_ADTTyp_Specl_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_41" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_81", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_43"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_43"*], [2 x %"$TyDescrTy_ADTTyp_Constr_43"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_42"* @"$TyDescr_List_ADTTyp_73" }
@"$TyDescr_List_ADTTyp_m_specls_83" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_41"*] [%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_List_Message_ADTTyp_Specl_82"]
@"$TyDescr_ADT_List_84" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_85" = unnamed_addr constant %"$TyDescr_MapTyp_47" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45" }
@"$stringlit_107" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_112" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_115" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_123" = unnamed_addr constant [10 x i8] c"isApproved"
@true = global %TName_Bool* null
@nilMessage = global %TName_List_Message* null
@oneMsg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@eAdminSet = global { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } zeroinitializer
@eError = global i8* null
@"$stringlit_148" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_153" = unnamed_addr constant [5 x i8] c"Error"
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@initialAdmin = global [20 x i8] zeroinitializer
@registry = global [20 x i8] zeroinitializer
@"$admins_163" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_191" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_225" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_251" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_256" = unnamed_addr constant [6 x i8] c"bestow"
@"$stringlit_259" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_267" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_274" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_281" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_288" = unnamed_addr constant [8 x i8] c"resolver"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Map_48", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_Bystr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 19

define internal i8* @"$fundef_5"(%"$$fundef_5_env_86"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_5_env_address_104" = getelementptr inbounds %"$$fundef_5_env_86", %"$$fundef_5_env_86"* %0, i32 0, i32 0
  %"$address_envload_105" = load [20 x i8], [20 x i8]* %"$$fundef_5_env_address_104"
  %address = alloca [20 x i8]
  store [20 x i8] %"$address_envload_105", [20 x i8]* %address
  %"$retval_6" = alloca i8*
  %"$msgobj_106_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_106_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_106_salloc_load", i64 117)
  %"$msgobj_106_salloc" = bitcast i8* %"$msgobj_106_salloc_salloc" to [117 x i8]*
  %"$msgobj_106" = bitcast [117 x i8]* %"$msgobj_106_salloc" to i8*
  store i8 3, i8* %"$msgobj_106"
  %"$msgobj_fname_108" = getelementptr i8, i8* %"$msgobj_106", i32 1
  %"$msgobj_fname_109" = bitcast i8* %"$msgobj_fname_108" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_107", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_109"
  %"$msgobj_td_110" = getelementptr i8, i8* %"$msgobj_106", i32 17
  %"$msgobj_td_111" = bitcast i8* %"$msgobj_td_110" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_111"
  %"$msgobj_v_113" = getelementptr i8, i8* %"$msgobj_106", i32 25
  %"$msgobj_v_114" = bitcast i8* %"$msgobj_v_113" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_112", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_114"
  %"$msgobj_fname_116" = getelementptr i8, i8* %"$msgobj_106", i32 41
  %"$msgobj_fname_117" = bitcast i8* %"$msgobj_fname_116" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_115", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_117"
  %"$msgobj_td_118" = getelementptr i8, i8* %"$msgobj_106", i32 57
  %"$msgobj_td_119" = bitcast i8* %"$msgobj_td_118" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_119"
  %"$address_120" = load [20 x i8], [20 x i8]* %address
  %"$msgobj_v_121" = getelementptr i8, i8* %"$msgobj_106", i32 65
  %"$msgobj_v_122" = bitcast i8* %"$msgobj_v_121" to [20 x i8]*
  store [20 x i8] %"$address_120", [20 x i8]* %"$msgobj_v_122"
  %"$msgobj_fname_124" = getelementptr i8, i8* %"$msgobj_106", i32 85
  %"$msgobj_fname_125" = bitcast i8* %"$msgobj_fname_124" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_123", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_125"
  %"$msgobj_td_126" = getelementptr i8, i8* %"$msgobj_106", i32 101
  %"$msgobj_td_127" = bitcast i8* %"$msgobj_td_126" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", %_TyDescrTy_Typ** %"$msgobj_td_127"
  %"$msgobj_v_128" = getelementptr i8, i8* %"$msgobj_106", i32 109
  %"$msgobj_v_129" = bitcast i8* %"$msgobj_v_128" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_129"
  store i8* %"$msgobj_106", i8** %"$retval_6"
  %"$$retval_6_131" = load i8*, i8** %"$retval_6"
  ret i8* %"$$retval_6_131"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_3"(%"$$fundef_3_env_87"* %0, [20 x i8]* %1) {
entry:
  %address = load [20 x i8], [20 x i8]* %1
  %"$retval_4" = alloca { i8* (i8*, %TName_Bool*)*, i8* }
  %"$$fundef_5_envp_98_load" = load i8*, i8** @_execptr
  %"$$fundef_5_envp_98_salloc" = call i8* @_salloc(i8* %"$$fundef_5_envp_98_load", i64 20)
  %"$$fundef_5_envp_98" = bitcast i8* %"$$fundef_5_envp_98_salloc" to %"$$fundef_5_env_86"*
  %"$$fundef_5_env_voidp_100" = bitcast %"$$fundef_5_env_86"* %"$$fundef_5_envp_98" to i8*
  %"$$fundef_5_cloval_101" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_5_env_86"*, %TName_Bool*)* @"$fundef_5" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_5_env_voidp_100", 1
  %"$$fundef_5_env_address_102" = getelementptr inbounds %"$$fundef_5_env_86", %"$$fundef_5_env_86"* %"$$fundef_5_envp_98", i32 0, i32 0
  store [20 x i8] %address, [20 x i8]* %"$$fundef_5_env_address_102"
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_5_cloval_101", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_4"
  %"$$retval_4_103" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_4"
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_4_103"
}

define internal %TName_List_Message* @"$fundef_7"(%"$$fundef_7_env_88"* %0, i8* %1) {
entry:
  %"$$fundef_7_env_nilMessage_89" = getelementptr inbounds %"$$fundef_7_env_88", %"$$fundef_7_env_88"* %0, i32 0, i32 0
  %"$nilMessage_envload_90" = load %TName_List_Message*, %TName_List_Message** %"$$fundef_7_env_nilMessage_89"
  %nilMessage = alloca %TName_List_Message*
  store %TName_List_Message* %"$nilMessage_envload_90", %TName_List_Message** %nilMessage
  %"$retval_8" = alloca %TName_List_Message*
  %"$nilMessage_91" = load %TName_List_Message*, %TName_List_Message** %nilMessage
  %"$adtval_92_load" = load i8*, i8** @_execptr
  %"$adtval_92_salloc" = call i8* @_salloc(i8* %"$adtval_92_load", i64 17)
  %"$adtval_92" = bitcast i8* %"$adtval_92_salloc" to %CName_Cons_Message*
  %"$adtgep_93" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_92", i32 0, i32 0
  store i8 0, i8* %"$adtgep_93"
  %"$adtgep_94" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_92", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_94"
  %"$adtgep_95" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_92", i32 0, i32 2
  store %TName_List_Message* %"$nilMessage_91", %TName_List_Message** %"$adtgep_95"
  %"$adtptr_96" = bitcast %CName_Cons_Message* %"$adtval_92" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_96", %TName_List_Message** %"$retval_8"
  %"$$retval_8_97" = load %TName_List_Message*, %TName_List_Message** %"$retval_8"
  ret %TName_List_Message* %"$$retval_8_97"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$adtval_132_load" = load i8*, i8** @_execptr
  %"$adtval_132_salloc" = call i8* @_salloc(i8* %"$adtval_132_load", i64 1)
  %"$adtval_132" = bitcast i8* %"$adtval_132_salloc" to %CName_True*
  %"$adtgep_133" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_132", i32 0, i32 0
  store i8 0, i8* %"$adtgep_133"
  %"$adtptr_134" = bitcast %CName_True* %"$adtval_132" to %TName_Bool*
  store %TName_Bool* %"$adtptr_134", %TName_Bool** @true
  %"$adtval_135_load" = load i8*, i8** @_execptr
  %"$adtval_135_salloc" = call i8* @_salloc(i8* %"$adtval_135_load", i64 1)
  %"$adtval_135" = bitcast i8* %"$adtval_135_salloc" to %CName_Nil_Message*
  %"$adtgep_136" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_135", i32 0, i32 0
  store i8 1, i8* %"$adtgep_136"
  %"$adtptr_137" = bitcast %CName_Nil_Message* %"$adtval_135" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_137", %TName_List_Message** @nilMessage
  %"$$fundef_7_envp_138_load" = load i8*, i8** @_execptr
  %"$$fundef_7_envp_138_salloc" = call i8* @_salloc(i8* %"$$fundef_7_envp_138_load", i64 8)
  %"$$fundef_7_envp_138" = bitcast i8* %"$$fundef_7_envp_138_salloc" to %"$$fundef_7_env_88"*
  %"$$fundef_7_env_voidp_140" = bitcast %"$$fundef_7_env_88"* %"$$fundef_7_envp_138" to i8*
  %"$$fundef_7_cloval_141" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_7_env_88"*, i8*)* @"$fundef_7" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_7_env_voidp_140", 1
  %"$$fundef_7_env_nilMessage_142" = getelementptr inbounds %"$$fundef_7_env_88", %"$$fundef_7_env_88"* %"$$fundef_7_envp_138", i32 0, i32 0
  %"$nilMessage_143" = load %TName_List_Message*, %TName_List_Message** @nilMessage
  store %TName_List_Message* %"$nilMessage_143", %TName_List_Message** %"$$fundef_7_env_nilMessage_142"
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_7_cloval_141", { %TName_List_Message* (i8*, i8*)*, i8* }* @oneMsg
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_3_env_87"*, [20 x i8]*)* @"$fundef_3" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @eAdminSet
  %"$msgobj_147_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_147_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_147_salloc_load", i64 41)
  %"$msgobj_147_salloc" = bitcast i8* %"$msgobj_147_salloc_salloc" to [41 x i8]*
  %"$msgobj_147" = bitcast [41 x i8]* %"$msgobj_147_salloc" to i8*
  store i8 1, i8* %"$msgobj_147"
  %"$msgobj_fname_149" = getelementptr i8, i8* %"$msgobj_147", i32 1
  %"$msgobj_fname_150" = bitcast i8* %"$msgobj_fname_149" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_148", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_150"
  %"$msgobj_td_151" = getelementptr i8, i8* %"$msgobj_147", i32 17
  %"$msgobj_td_152" = bitcast i8* %"$msgobj_td_151" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_152"
  %"$msgobj_v_154" = getelementptr i8, i8* %"$msgobj_147", i32 25
  %"$msgobj_v_155" = bitcast i8* %"$msgobj_v_154" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_153", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_155"
  store i8* %"$msgobj_147", i8** @eError
  ret void
}

define internal void @"$setAdmin_157"(%Uint128 %_amount, [20 x i8]* %"$_sender_158", [20 x i8]* %"$address_159", %TName_Bool* %isApproved) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_158"
  %address = load [20 x i8], [20 x i8]* %"$address_159"
  %maybeAdmin = alloca %TName_Option_Bool*
  %"$indices_buf_160_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_160_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_160_salloc_load", i64 20)
  %"$indices_buf_160_salloc" = bitcast i8* %"$indices_buf_160_salloc_salloc" to [20 x i8]*
  %"$indices_buf_160" = bitcast [20 x i8]* %"$indices_buf_160_salloc" to i8*
  %"$indices_gep_161" = getelementptr i8, i8* %"$indices_buf_160", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_161" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_load_162" = load i8*, i8** @_execptr
  %"$maybeAdmin_164" = call i8* @_fetch_field(i8* %"$execptr_load_162", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_163", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_160", i32 1)
  %"$maybeAdmin_165" = bitcast i8* %"$maybeAdmin_164" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_165", %TName_Option_Bool** %maybeAdmin
  %isSenderAdmin = alloca %TName_Bool*
  %"$maybeAdmin_167" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin
  %"$maybeAdmin_tag_168" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_167", i32 0, i32 0
  %"$maybeAdmin_tag_169" = load i8, i8* %"$maybeAdmin_tag_168"
  switch i8 %"$maybeAdmin_tag_169", label %"$empty_default_170" [
    i8 0, label %"$Some_171"
    i8 1, label %"$None_176"
  ]

"$Some_171":                                      ; preds = %entry
  %"$maybeAdmin_172" = bitcast %TName_Option_Bool* %"$maybeAdmin_167" to %CName_Some_Bool*
  %"$approval_gep_173" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_172", i32 0, i32 1
  %"$approval_load_174" = load %TName_Bool*, %TName_Bool** %"$approval_gep_173"
  %approval = alloca %TName_Bool*
  store %TName_Bool* %"$approval_load_174", %TName_Bool** %approval
  %"$approval_175" = load %TName_Bool*, %TName_Bool** %approval
  store %TName_Bool* %"$approval_175", %TName_Bool** %isSenderAdmin
  br label %"$matchsucc_166"

"$None_176":                                      ; preds = %entry
  %"$maybeAdmin_177" = bitcast %TName_Option_Bool* %"$maybeAdmin_167" to %CName_None_Bool*
  %"$adtval_178_load" = load i8*, i8** @_execptr
  %"$adtval_178_salloc" = call i8* @_salloc(i8* %"$adtval_178_load", i64 1)
  %"$adtval_178" = bitcast i8* %"$adtval_178_salloc" to %CName_False*
  %"$adtgep_179" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_178", i32 0, i32 0
  store i8 1, i8* %"$adtgep_179"
  %"$adtptr_180" = bitcast %CName_False* %"$adtval_178" to %TName_Bool*
  store %TName_Bool* %"$adtptr_180", %TName_Bool** %isSenderAdmin
  br label %"$matchsucc_166"

"$empty_default_170":                             ; preds = %entry
  br label %"$matchsucc_166"

"$matchsucc_166":                                 ; preds = %"$None_176", %"$Some_171", %"$empty_default_170"
  %"$isSenderAdmin_182" = load %TName_Bool*, %TName_Bool** %isSenderAdmin
  %"$isSenderAdmin_tag_183" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_182", i32 0, i32 0
  %"$isSenderAdmin_tag_184" = load i8, i8* %"$isSenderAdmin_tag_183"
  switch i8 %"$isSenderAdmin_tag_184", label %"$empty_default_185" [
    i8 0, label %"$True_186"
    i8 1, label %"$False_205"
  ]

"$True_186":                                      ; preds = %"$matchsucc_166"
  %"$isSenderAdmin_187" = bitcast %TName_Bool* %"$isSenderAdmin_182" to %CName_True*
  %"$indices_buf_188_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_188_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_188_salloc_load", i64 20)
  %"$indices_buf_188_salloc" = bitcast i8* %"$indices_buf_188_salloc_salloc" to [20 x i8]*
  %"$indices_buf_188" = bitcast [20 x i8]* %"$indices_buf_188_salloc" to i8*
  %"$indices_gep_189" = getelementptr i8, i8* %"$indices_buf_188", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_189" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %indices_cast1
  %"$execptr_load_190" = load i8*, i8** @_execptr
  %"$update_value_192" = bitcast %TName_Bool* %isApproved to i8*
  call void @_update_field(i8* %"$execptr_load_190", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_191", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_188", i8* %"$update_value_192")
  %e = alloca i8*
  %"$eAdminSet_0" = alloca { i8* (i8*, %TName_Bool*)*, i8* }
  %"$eAdminSet_193" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @eAdminSet
  %"$eAdminSet_fptr_194" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$eAdminSet_193", 0
  %"$eAdminSet_envptr_195" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$eAdminSet_193", 1
  %"$eAdminSet_address_196" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$eAdminSet_address_196"
  %"$eAdminSet_call_197" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$eAdminSet_fptr_194"(i8* %"$eAdminSet_envptr_195", [20 x i8]* %"$eAdminSet_address_196")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$eAdminSet_call_197", { i8* (i8*, %TName_Bool*)*, i8* }* %"$eAdminSet_0"
  %"$eAdminSet_1" = alloca i8*
  %"$$eAdminSet_0_198" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$eAdminSet_0"
  %"$$eAdminSet_0_fptr_199" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$eAdminSet_0_198", 0
  %"$$eAdminSet_0_envptr_200" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$eAdminSet_0_198", 1
  %"$$eAdminSet_0_call_201" = call i8* %"$$eAdminSet_0_fptr_199"(i8* %"$$eAdminSet_0_envptr_200", %TName_Bool* %isApproved)
  store i8* %"$$eAdminSet_0_call_201", i8** %"$eAdminSet_1"
  %"$$eAdminSet_1_202" = load i8*, i8** %"$eAdminSet_1"
  store i8* %"$$eAdminSet_1_202", i8** %e
  %"$execptr_load_203" = load i8*, i8** @_execptr
  %"$e_204" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_203", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$e_204")
  br label %"$matchsucc_181"

"$False_205":                                     ; preds = %"$matchsucc_166"
  %"$isSenderAdmin_206" = bitcast %TName_Bool* %"$isSenderAdmin_182" to %CName_False*
  %"$execptr_load_207" = load i8*, i8** @_execptr
  %"$eError_208" = load i8*, i8** @eError
  call void @_event(i8* %"$execptr_load_207", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$eError_208")
  br label %"$matchsucc_181"

"$empty_default_185":                             ; preds = %"$matchsucc_166"
  br label %"$matchsucc_181"

"$matchsucc_181":                                 ; preds = %"$False_205", %"$True_186", %"$empty_default_185"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) {
entry:
  %"$_amount_210" = getelementptr i8, i8* %0, i32 0
  %"$_amount_211" = bitcast i8* %"$_amount_210" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_211"
  %"$_sender_212" = getelementptr i8, i8* %0, i32 16
  %"$_sender_213" = bitcast i8* %"$_sender_212" to [20 x i8]*
  %"$address_214" = getelementptr i8, i8* %0, i32 36
  %"$address_215" = bitcast i8* %"$address_214" to [20 x i8]*
  %"$isApproved_216" = getelementptr i8, i8* %0, i32 56
  %"$isApproved_217" = bitcast i8* %"$isApproved_216" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_217"
  call void @"$setAdmin_157"(%Uint128 %_amount, [20 x i8]* %"$_sender_213", [20 x i8]* %"$address_215", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$bestow_218"(%Uint128 %_amount, [20 x i8]* %"$_sender_219", %String %label, [20 x i8]* %"$owner_220", [20 x i8]* %"$resolver_221") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_219"
  %owner = load [20 x i8], [20 x i8]* %"$owner_220"
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_221"
  %maybeAdmin = alloca %TName_Option_Bool*
  %"$indices_buf_222_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_222_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_222_salloc_load", i64 20)
  %"$indices_buf_222_salloc" = bitcast i8* %"$indices_buf_222_salloc_salloc" to [20 x i8]*
  %"$indices_buf_222" = bitcast [20 x i8]* %"$indices_buf_222_salloc" to i8*
  %"$indices_gep_223" = getelementptr i8, i8* %"$indices_buf_222", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_223" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_load_224" = load i8*, i8** @_execptr
  %"$maybeAdmin_226" = call i8* @_fetch_field(i8* %"$execptr_load_224", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_225", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_222", i32 1)
  %"$maybeAdmin_227" = bitcast i8* %"$maybeAdmin_226" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_227", %TName_Option_Bool** %maybeAdmin
  %isSenderAdmin = alloca %TName_Bool*
  %"$maybeAdmin_229" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin
  %"$maybeAdmin_tag_230" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_229", i32 0, i32 0
  %"$maybeAdmin_tag_231" = load i8, i8* %"$maybeAdmin_tag_230"
  switch i8 %"$maybeAdmin_tag_231", label %"$empty_default_232" [
    i8 0, label %"$Some_233"
    i8 1, label %"$None_238"
  ]

"$Some_233":                                      ; preds = %entry
  %"$maybeAdmin_234" = bitcast %TName_Option_Bool* %"$maybeAdmin_229" to %CName_Some_Bool*
  %"$isAdmin_gep_235" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_234", i32 0, i32 1
  %"$isAdmin_load_236" = load %TName_Bool*, %TName_Bool** %"$isAdmin_gep_235"
  %isAdmin = alloca %TName_Bool*
  store %TName_Bool* %"$isAdmin_load_236", %TName_Bool** %isAdmin
  %"$isAdmin_237" = load %TName_Bool*, %TName_Bool** %isAdmin
  store %TName_Bool* %"$isAdmin_237", %TName_Bool** %isSenderAdmin
  br label %"$matchsucc_228"

"$None_238":                                      ; preds = %entry
  %"$maybeAdmin_239" = bitcast %TName_Option_Bool* %"$maybeAdmin_229" to %CName_None_Bool*
  %"$adtval_240_load" = load i8*, i8** @_execptr
  %"$adtval_240_salloc" = call i8* @_salloc(i8* %"$adtval_240_load", i64 1)
  %"$adtval_240" = bitcast i8* %"$adtval_240_salloc" to %CName_False*
  %"$adtgep_241" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_240", i32 0, i32 0
  store i8 1, i8* %"$adtgep_241"
  %"$adtptr_242" = bitcast %CName_False* %"$adtval_240" to %TName_Bool*
  store %TName_Bool* %"$adtptr_242", %TName_Bool** %isSenderAdmin
  br label %"$matchsucc_228"

"$empty_default_232":                             ; preds = %entry
  br label %"$matchsucc_228"

"$matchsucc_228":                                 ; preds = %"$None_238", %"$Some_233", %"$empty_default_232"
  %"$isSenderAdmin_244" = load %TName_Bool*, %TName_Bool** %isSenderAdmin
  %"$isSenderAdmin_tag_245" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_244", i32 0, i32 0
  %"$isSenderAdmin_tag_246" = load i8, i8* %"$isSenderAdmin_tag_245"
  switch i8 %"$isSenderAdmin_tag_246", label %"$empty_default_247" [
    i8 0, label %"$True_248"
    i8 1, label %"$False_304"
  ]

"$True_248":                                      ; preds = %"$matchsucc_228"
  %"$isSenderAdmin_249" = bitcast %TName_Bool* %"$isSenderAdmin_244" to %CName_True*
  %msgs = alloca %TName_List_Message*
  %m = alloca i8*
  %"$msgobj_250_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_250_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_250_salloc_load", i64 253)
  %"$msgobj_250_salloc" = bitcast i8* %"$msgobj_250_salloc_salloc" to [253 x i8]*
  %"$msgobj_250" = bitcast [253 x i8]* %"$msgobj_250_salloc" to i8*
  store i8 6, i8* %"$msgobj_250"
  %"$msgobj_fname_252" = getelementptr i8, i8* %"$msgobj_250", i32 1
  %"$msgobj_fname_253" = bitcast i8* %"$msgobj_fname_252" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_251", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_253"
  %"$msgobj_td_254" = getelementptr i8, i8* %"$msgobj_250", i32 17
  %"$msgobj_td_255" = bitcast i8* %"$msgobj_td_254" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_255"
  %"$msgobj_v_257" = getelementptr i8, i8* %"$msgobj_250", i32 25
  %"$msgobj_v_258" = bitcast i8* %"$msgobj_v_257" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_256", i32 0, i32 0), i32 6 }, %String* %"$msgobj_v_258"
  %"$msgobj_fname_260" = getelementptr i8, i8* %"$msgobj_250", i32 41
  %"$msgobj_fname_261" = bitcast i8* %"$msgobj_fname_260" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_259", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_261"
  %"$msgobj_td_262" = getelementptr i8, i8* %"$msgobj_250", i32 57
  %"$msgobj_td_263" = bitcast i8* %"$msgobj_td_262" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_263"
  %"$registry_264" = load [20 x i8], [20 x i8]* @registry
  %"$msgobj_v_265" = getelementptr i8, i8* %"$msgobj_250", i32 65
  %"$msgobj_v_266" = bitcast i8* %"$msgobj_v_265" to [20 x i8]*
  store [20 x i8] %"$registry_264", [20 x i8]* %"$msgobj_v_266"
  %"$msgobj_fname_268" = getelementptr i8, i8* %"$msgobj_250", i32 85
  %"$msgobj_fname_269" = bitcast i8* %"$msgobj_fname_268" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_267", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_269"
  %"$msgobj_td_270" = getelementptr i8, i8* %"$msgobj_250", i32 101
  %"$msgobj_td_271" = bitcast i8* %"$msgobj_td_270" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_271"
  %"$msgobj_v_272" = getelementptr i8, i8* %"$msgobj_250", i32 109
  %"$msgobj_v_273" = bitcast i8* %"$msgobj_v_272" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_273"
  %"$msgobj_fname_275" = getelementptr i8, i8* %"$msgobj_250", i32 125
  %"$msgobj_fname_276" = bitcast i8* %"$msgobj_fname_275" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_274", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_276"
  %"$msgobj_td_277" = getelementptr i8, i8* %"$msgobj_250", i32 141
  %"$msgobj_td_278" = bitcast i8* %"$msgobj_td_277" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_278"
  %"$msgobj_v_279" = getelementptr i8, i8* %"$msgobj_250", i32 149
  %"$msgobj_v_280" = bitcast i8* %"$msgobj_v_279" to %String*
  store %String %label, %String* %"$msgobj_v_280"
  %"$msgobj_fname_282" = getelementptr i8, i8* %"$msgobj_250", i32 165
  %"$msgobj_fname_283" = bitcast i8* %"$msgobj_fname_282" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_281", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_283"
  %"$msgobj_td_284" = getelementptr i8, i8* %"$msgobj_250", i32 181
  %"$msgobj_td_285" = bitcast i8* %"$msgobj_td_284" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_285"
  %"$msgobj_v_286" = getelementptr i8, i8* %"$msgobj_250", i32 189
  %"$msgobj_v_287" = bitcast i8* %"$msgobj_v_286" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_287"
  %"$msgobj_fname_289" = getelementptr i8, i8* %"$msgobj_250", i32 209
  %"$msgobj_fname_290" = bitcast i8* %"$msgobj_fname_289" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_288", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_290"
  %"$msgobj_td_291" = getelementptr i8, i8* %"$msgobj_250", i32 225
  %"$msgobj_td_292" = bitcast i8* %"$msgobj_td_291" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_292"
  %"$msgobj_v_293" = getelementptr i8, i8* %"$msgobj_250", i32 233
  %"$msgobj_v_294" = bitcast i8* %"$msgobj_v_293" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_294"
  store i8* %"$msgobj_250", i8** %m
  %"$oneMsg_2" = alloca %TName_List_Message*
  %"$oneMsg_296" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @oneMsg
  %"$oneMsg_fptr_297" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$oneMsg_296", 0
  %"$oneMsg_envptr_298" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$oneMsg_296", 1
  %"$m_299" = load i8*, i8** %m
  %"$oneMsg_call_300" = call %TName_List_Message* %"$oneMsg_fptr_297"(i8* %"$oneMsg_envptr_298", i8* %"$m_299")
  store %TName_List_Message* %"$oneMsg_call_300", %TName_List_Message** %"$oneMsg_2"
  %"$$oneMsg_2_301" = load %TName_List_Message*, %TName_List_Message** %"$oneMsg_2"
  store %TName_List_Message* %"$$oneMsg_2_301", %TName_List_Message** %msgs
  %"$execptr_load_302" = load i8*, i8** @_execptr
  %"$msgs_303" = load %TName_List_Message*, %TName_List_Message** %msgs
  call void @_send(i8* %"$execptr_load_302", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %TName_List_Message* %"$msgs_303")
  br label %"$matchsucc_243"

"$False_304":                                     ; preds = %"$matchsucc_228"
  %"$isSenderAdmin_305" = bitcast %TName_Bool* %"$isSenderAdmin_244" to %CName_False*
  %"$execptr_load_306" = load i8*, i8** @_execptr
  %"$eError_307" = load i8*, i8** @eError
  call void @_event(i8* %"$execptr_load_306", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$eError_307")
  br label %"$matchsucc_243"

"$empty_default_247":                             ; preds = %"$matchsucc_228"
  br label %"$matchsucc_243"

"$matchsucc_243":                                 ; preds = %"$False_304", %"$True_248", %"$empty_default_247"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @bestow(i8* %0) {
entry:
  %"$_amount_309" = getelementptr i8, i8* %0, i32 0
  %"$_amount_310" = bitcast i8* %"$_amount_309" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_310"
  %"$_sender_311" = getelementptr i8, i8* %0, i32 16
  %"$_sender_312" = bitcast i8* %"$_sender_311" to [20 x i8]*
  %"$label_313" = getelementptr i8, i8* %0, i32 36
  %"$label_314" = bitcast i8* %"$label_313" to %String*
  %label = load %String, %String* %"$label_314"
  %"$owner_315" = getelementptr i8, i8* %0, i32 52
  %"$owner_316" = bitcast i8* %"$owner_315" to [20 x i8]*
  %"$resolver_317" = getelementptr i8, i8* %0, i32 72
  %"$resolver_318" = bitcast i8* %"$resolver_317" to [20 x i8]*
  call void @"$bestow_218"(%Uint128 %_amount, [20 x i8]* %"$_sender_312", %String %label, [20 x i8]* %"$owner_316", [20 x i8]* %"$resolver_318")
  ret void
}
