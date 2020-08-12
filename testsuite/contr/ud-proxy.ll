

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
%Map_ByStr20_Bool = type { [20 x i8], %TName_Bool* }
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
@"$admins_171" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_180" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_208" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_242" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_268" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_273" = unnamed_addr constant [6 x i8] c"bestow"
@"$stringlit_276" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_284" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_291" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_298" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_305" = unnamed_addr constant [8 x i8] c"resolver"
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

define void @_init_state() {
entry:
  %"$admins_9" = alloca %Map_ByStr20_Bool*
  %empty = alloca %Map_ByStr20_Bool*
  %"$execptr_load_157" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_158" = call i8* @_new_empty_map(i8* %"$execptr_load_157")
  %"$Emp_159" = bitcast i8* %"$_new_empty_map_call_158" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$Emp_159", %Map_ByStr20_Bool** %empty
  %"$execptr_load_160" = load i8*, i8** @_execptr
  %"$empty_161" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty
  %"$$empty_161_162" = bitcast %Map_ByStr20_Bool* %"$empty_161" to i8*
  %"$put_initialAdmin_163" = alloca [20 x i8]
  %"$initialAdmin_164" = load [20 x i8], [20 x i8]* @initialAdmin
  store [20 x i8] %"$initialAdmin_164", [20 x i8]* %"$put_initialAdmin_163"
  %"$$put_initialAdmin_163_165" = bitcast [20 x i8]* %"$put_initialAdmin_163" to i8*
  %"$true_166" = load %TName_Bool*, %TName_Bool** @true
  %"$$true_166_167" = bitcast %TName_Bool* %"$true_166" to i8*
  %"$put_call_168" = call i8* @_put(i8* %"$execptr_load_160", %_TyDescrTy_Typ* @"$TyDescr_Map_48", i8* %"$$empty_161_162", i8* %"$$put_initialAdmin_163_165", i8* %"$$true_166_167")
  %"$_put_169" = bitcast i8* %"$put_call_168" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$_put_169", %Map_ByStr20_Bool** %"$admins_9"
  %"$execptr_load_170" = load i8*, i8** @_execptr
  %"$$admins_9_172" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %"$admins_9"
  %"$update_value_173" = bitcast %Map_ByStr20_Bool* %"$$admins_9_172" to i8*
  call void @_update_field(i8* %"$execptr_load_170", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_171", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 0, i8* null, i8* %"$update_value_173")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_174"(%Uint128 %_amount, [20 x i8]* %"$_sender_175", [20 x i8]* %"$address_176", %TName_Bool* %isApproved) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_175"
  %address = load [20 x i8], [20 x i8]* %"$address_176"
  %maybeAdmin = alloca %TName_Option_Bool*
  %"$indices_buf_177_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_177_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_177_salloc_load", i64 20)
  %"$indices_buf_177_salloc" = bitcast i8* %"$indices_buf_177_salloc_salloc" to [20 x i8]*
  %"$indices_buf_177" = bitcast [20 x i8]* %"$indices_buf_177_salloc" to i8*
  %"$indices_gep_178" = getelementptr i8, i8* %"$indices_buf_177", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_178" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_load_179" = load i8*, i8** @_execptr
  %"$maybeAdmin_181" = call i8* @_fetch_field(i8* %"$execptr_load_179", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_180", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_177", i32 1)
  %"$maybeAdmin_182" = bitcast i8* %"$maybeAdmin_181" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_182", %TName_Option_Bool** %maybeAdmin
  %isSenderAdmin = alloca %TName_Bool*
  %"$maybeAdmin_184" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin
  %"$maybeAdmin_tag_185" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_184", i32 0, i32 0
  %"$maybeAdmin_tag_186" = load i8, i8* %"$maybeAdmin_tag_185"
  switch i8 %"$maybeAdmin_tag_186", label %"$empty_default_187" [
    i8 0, label %"$Some_188"
    i8 1, label %"$None_193"
  ]

"$Some_188":                                      ; preds = %entry
  %"$maybeAdmin_189" = bitcast %TName_Option_Bool* %"$maybeAdmin_184" to %CName_Some_Bool*
  %"$approval_gep_190" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_189", i32 0, i32 1
  %"$approval_load_191" = load %TName_Bool*, %TName_Bool** %"$approval_gep_190"
  %approval = alloca %TName_Bool*
  store %TName_Bool* %"$approval_load_191", %TName_Bool** %approval
  %"$approval_192" = load %TName_Bool*, %TName_Bool** %approval
  store %TName_Bool* %"$approval_192", %TName_Bool** %isSenderAdmin
  br label %"$matchsucc_183"

"$None_193":                                      ; preds = %entry
  %"$maybeAdmin_194" = bitcast %TName_Option_Bool* %"$maybeAdmin_184" to %CName_None_Bool*
  %"$adtval_195_load" = load i8*, i8** @_execptr
  %"$adtval_195_salloc" = call i8* @_salloc(i8* %"$adtval_195_load", i64 1)
  %"$adtval_195" = bitcast i8* %"$adtval_195_salloc" to %CName_False*
  %"$adtgep_196" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_195", i32 0, i32 0
  store i8 1, i8* %"$adtgep_196"
  %"$adtptr_197" = bitcast %CName_False* %"$adtval_195" to %TName_Bool*
  store %TName_Bool* %"$adtptr_197", %TName_Bool** %isSenderAdmin
  br label %"$matchsucc_183"

"$empty_default_187":                             ; preds = %entry
  br label %"$matchsucc_183"

"$matchsucc_183":                                 ; preds = %"$None_193", %"$Some_188", %"$empty_default_187"
  %"$isSenderAdmin_199" = load %TName_Bool*, %TName_Bool** %isSenderAdmin
  %"$isSenderAdmin_tag_200" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_199", i32 0, i32 0
  %"$isSenderAdmin_tag_201" = load i8, i8* %"$isSenderAdmin_tag_200"
  switch i8 %"$isSenderAdmin_tag_201", label %"$empty_default_202" [
    i8 0, label %"$True_203"
    i8 1, label %"$False_222"
  ]

"$True_203":                                      ; preds = %"$matchsucc_183"
  %"$isSenderAdmin_204" = bitcast %TName_Bool* %"$isSenderAdmin_199" to %CName_True*
  %"$indices_buf_205_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_205_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_205_salloc_load", i64 20)
  %"$indices_buf_205_salloc" = bitcast i8* %"$indices_buf_205_salloc_salloc" to [20 x i8]*
  %"$indices_buf_205" = bitcast [20 x i8]* %"$indices_buf_205_salloc" to i8*
  %"$indices_gep_206" = getelementptr i8, i8* %"$indices_buf_205", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_206" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %indices_cast1
  %"$execptr_load_207" = load i8*, i8** @_execptr
  %"$update_value_209" = bitcast %TName_Bool* %isApproved to i8*
  call void @_update_field(i8* %"$execptr_load_207", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_208", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_205", i8* %"$update_value_209")
  %e = alloca i8*
  %"$eAdminSet_0" = alloca { i8* (i8*, %TName_Bool*)*, i8* }
  %"$eAdminSet_210" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @eAdminSet
  %"$eAdminSet_fptr_211" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$eAdminSet_210", 0
  %"$eAdminSet_envptr_212" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$eAdminSet_210", 1
  %"$eAdminSet_address_213" = alloca [20 x i8]
  store [20 x i8] %address, [20 x i8]* %"$eAdminSet_address_213"
  %"$eAdminSet_call_214" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$eAdminSet_fptr_211"(i8* %"$eAdminSet_envptr_212", [20 x i8]* %"$eAdminSet_address_213")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$eAdminSet_call_214", { i8* (i8*, %TName_Bool*)*, i8* }* %"$eAdminSet_0"
  %"$eAdminSet_1" = alloca i8*
  %"$$eAdminSet_0_215" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$eAdminSet_0"
  %"$$eAdminSet_0_fptr_216" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$eAdminSet_0_215", 0
  %"$$eAdminSet_0_envptr_217" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$eAdminSet_0_215", 1
  %"$$eAdminSet_0_call_218" = call i8* %"$$eAdminSet_0_fptr_216"(i8* %"$$eAdminSet_0_envptr_217", %TName_Bool* %isApproved)
  store i8* %"$$eAdminSet_0_call_218", i8** %"$eAdminSet_1"
  %"$$eAdminSet_1_219" = load i8*, i8** %"$eAdminSet_1"
  store i8* %"$$eAdminSet_1_219", i8** %e
  %"$execptr_load_220" = load i8*, i8** @_execptr
  %"$e_221" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_220", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$e_221")
  br label %"$matchsucc_198"

"$False_222":                                     ; preds = %"$matchsucc_183"
  %"$isSenderAdmin_223" = bitcast %TName_Bool* %"$isSenderAdmin_199" to %CName_False*
  %"$execptr_load_224" = load i8*, i8** @_execptr
  %"$eError_225" = load i8*, i8** @eError
  call void @_event(i8* %"$execptr_load_224", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$eError_225")
  br label %"$matchsucc_198"

"$empty_default_202":                             ; preds = %"$matchsucc_183"
  br label %"$matchsucc_198"

"$matchsucc_198":                                 ; preds = %"$False_222", %"$True_203", %"$empty_default_202"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) {
entry:
  %"$_amount_227" = getelementptr i8, i8* %0, i32 0
  %"$_amount_228" = bitcast i8* %"$_amount_227" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_228"
  %"$_sender_229" = getelementptr i8, i8* %0, i32 16
  %"$_sender_230" = bitcast i8* %"$_sender_229" to [20 x i8]*
  %"$address_231" = getelementptr i8, i8* %0, i32 36
  %"$address_232" = bitcast i8* %"$address_231" to [20 x i8]*
  %"$isApproved_233" = getelementptr i8, i8* %0, i32 56
  %"$isApproved_234" = bitcast i8* %"$isApproved_233" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_234"
  call void @"$setAdmin_174"(%Uint128 %_amount, [20 x i8]* %"$_sender_230", [20 x i8]* %"$address_232", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$bestow_235"(%Uint128 %_amount, [20 x i8]* %"$_sender_236", %String %label, [20 x i8]* %"$owner_237", [20 x i8]* %"$resolver_238") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_236"
  %owner = load [20 x i8], [20 x i8]* %"$owner_237"
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_238"
  %maybeAdmin = alloca %TName_Option_Bool*
  %"$indices_buf_239_salloc_load" = load i8*, i8** @_execptr
  %"$indices_buf_239_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_239_salloc_load", i64 20)
  %"$indices_buf_239_salloc" = bitcast i8* %"$indices_buf_239_salloc_salloc" to [20 x i8]*
  %"$indices_buf_239" = bitcast [20 x i8]* %"$indices_buf_239_salloc" to i8*
  %"$indices_gep_240" = getelementptr i8, i8* %"$indices_buf_239", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_240" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast
  %"$execptr_load_241" = load i8*, i8** @_execptr
  %"$maybeAdmin_243" = call i8* @_fetch_field(i8* %"$execptr_load_241", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_242", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_239", i32 1)
  %"$maybeAdmin_244" = bitcast i8* %"$maybeAdmin_243" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_244", %TName_Option_Bool** %maybeAdmin
  %isSenderAdmin = alloca %TName_Bool*
  %"$maybeAdmin_246" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin
  %"$maybeAdmin_tag_247" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_246", i32 0, i32 0
  %"$maybeAdmin_tag_248" = load i8, i8* %"$maybeAdmin_tag_247"
  switch i8 %"$maybeAdmin_tag_248", label %"$empty_default_249" [
    i8 0, label %"$Some_250"
    i8 1, label %"$None_255"
  ]

"$Some_250":                                      ; preds = %entry
  %"$maybeAdmin_251" = bitcast %TName_Option_Bool* %"$maybeAdmin_246" to %CName_Some_Bool*
  %"$isAdmin_gep_252" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_251", i32 0, i32 1
  %"$isAdmin_load_253" = load %TName_Bool*, %TName_Bool** %"$isAdmin_gep_252"
  %isAdmin = alloca %TName_Bool*
  store %TName_Bool* %"$isAdmin_load_253", %TName_Bool** %isAdmin
  %"$isAdmin_254" = load %TName_Bool*, %TName_Bool** %isAdmin
  store %TName_Bool* %"$isAdmin_254", %TName_Bool** %isSenderAdmin
  br label %"$matchsucc_245"

"$None_255":                                      ; preds = %entry
  %"$maybeAdmin_256" = bitcast %TName_Option_Bool* %"$maybeAdmin_246" to %CName_None_Bool*
  %"$adtval_257_load" = load i8*, i8** @_execptr
  %"$adtval_257_salloc" = call i8* @_salloc(i8* %"$adtval_257_load", i64 1)
  %"$adtval_257" = bitcast i8* %"$adtval_257_salloc" to %CName_False*
  %"$adtgep_258" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_257", i32 0, i32 0
  store i8 1, i8* %"$adtgep_258"
  %"$adtptr_259" = bitcast %CName_False* %"$adtval_257" to %TName_Bool*
  store %TName_Bool* %"$adtptr_259", %TName_Bool** %isSenderAdmin
  br label %"$matchsucc_245"

"$empty_default_249":                             ; preds = %entry
  br label %"$matchsucc_245"

"$matchsucc_245":                                 ; preds = %"$None_255", %"$Some_250", %"$empty_default_249"
  %"$isSenderAdmin_261" = load %TName_Bool*, %TName_Bool** %isSenderAdmin
  %"$isSenderAdmin_tag_262" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_261", i32 0, i32 0
  %"$isSenderAdmin_tag_263" = load i8, i8* %"$isSenderAdmin_tag_262"
  switch i8 %"$isSenderAdmin_tag_263", label %"$empty_default_264" [
    i8 0, label %"$True_265"
    i8 1, label %"$False_321"
  ]

"$True_265":                                      ; preds = %"$matchsucc_245"
  %"$isSenderAdmin_266" = bitcast %TName_Bool* %"$isSenderAdmin_261" to %CName_True*
  %msgs = alloca %TName_List_Message*
  %m = alloca i8*
  %"$msgobj_267_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_267_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_267_salloc_load", i64 253)
  %"$msgobj_267_salloc" = bitcast i8* %"$msgobj_267_salloc_salloc" to [253 x i8]*
  %"$msgobj_267" = bitcast [253 x i8]* %"$msgobj_267_salloc" to i8*
  store i8 6, i8* %"$msgobj_267"
  %"$msgobj_fname_269" = getelementptr i8, i8* %"$msgobj_267", i32 1
  %"$msgobj_fname_270" = bitcast i8* %"$msgobj_fname_269" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_268", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_270"
  %"$msgobj_td_271" = getelementptr i8, i8* %"$msgobj_267", i32 17
  %"$msgobj_td_272" = bitcast i8* %"$msgobj_td_271" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_272"
  %"$msgobj_v_274" = getelementptr i8, i8* %"$msgobj_267", i32 25
  %"$msgobj_v_275" = bitcast i8* %"$msgobj_v_274" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_273", i32 0, i32 0), i32 6 }, %String* %"$msgobj_v_275"
  %"$msgobj_fname_277" = getelementptr i8, i8* %"$msgobj_267", i32 41
  %"$msgobj_fname_278" = bitcast i8* %"$msgobj_fname_277" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_276", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_278"
  %"$msgobj_td_279" = getelementptr i8, i8* %"$msgobj_267", i32 57
  %"$msgobj_td_280" = bitcast i8* %"$msgobj_td_279" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_280"
  %"$registry_281" = load [20 x i8], [20 x i8]* @registry
  %"$msgobj_v_282" = getelementptr i8, i8* %"$msgobj_267", i32 65
  %"$msgobj_v_283" = bitcast i8* %"$msgobj_v_282" to [20 x i8]*
  store [20 x i8] %"$registry_281", [20 x i8]* %"$msgobj_v_283"
  %"$msgobj_fname_285" = getelementptr i8, i8* %"$msgobj_267", i32 85
  %"$msgobj_fname_286" = bitcast i8* %"$msgobj_fname_285" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_284", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_286"
  %"$msgobj_td_287" = getelementptr i8, i8* %"$msgobj_267", i32 101
  %"$msgobj_td_288" = bitcast i8* %"$msgobj_td_287" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_288"
  %"$msgobj_v_289" = getelementptr i8, i8* %"$msgobj_267", i32 109
  %"$msgobj_v_290" = bitcast i8* %"$msgobj_v_289" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_290"
  %"$msgobj_fname_292" = getelementptr i8, i8* %"$msgobj_267", i32 125
  %"$msgobj_fname_293" = bitcast i8* %"$msgobj_fname_292" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_291", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_293"
  %"$msgobj_td_294" = getelementptr i8, i8* %"$msgobj_267", i32 141
  %"$msgobj_td_295" = bitcast i8* %"$msgobj_td_294" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_295"
  %"$msgobj_v_296" = getelementptr i8, i8* %"$msgobj_267", i32 149
  %"$msgobj_v_297" = bitcast i8* %"$msgobj_v_296" to %String*
  store %String %label, %String* %"$msgobj_v_297"
  %"$msgobj_fname_299" = getelementptr i8, i8* %"$msgobj_267", i32 165
  %"$msgobj_fname_300" = bitcast i8* %"$msgobj_fname_299" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_298", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_300"
  %"$msgobj_td_301" = getelementptr i8, i8* %"$msgobj_267", i32 181
  %"$msgobj_td_302" = bitcast i8* %"$msgobj_td_301" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_302"
  %"$msgobj_v_303" = getelementptr i8, i8* %"$msgobj_267", i32 189
  %"$msgobj_v_304" = bitcast i8* %"$msgobj_v_303" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_304"
  %"$msgobj_fname_306" = getelementptr i8, i8* %"$msgobj_267", i32 209
  %"$msgobj_fname_307" = bitcast i8* %"$msgobj_fname_306" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_305", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_307"
  %"$msgobj_td_308" = getelementptr i8, i8* %"$msgobj_267", i32 225
  %"$msgobj_td_309" = bitcast i8* %"$msgobj_td_308" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_309"
  %"$msgobj_v_310" = getelementptr i8, i8* %"$msgobj_267", i32 233
  %"$msgobj_v_311" = bitcast i8* %"$msgobj_v_310" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_311"
  store i8* %"$msgobj_267", i8** %m
  %"$oneMsg_2" = alloca %TName_List_Message*
  %"$oneMsg_313" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @oneMsg
  %"$oneMsg_fptr_314" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$oneMsg_313", 0
  %"$oneMsg_envptr_315" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$oneMsg_313", 1
  %"$m_316" = load i8*, i8** %m
  %"$oneMsg_call_317" = call %TName_List_Message* %"$oneMsg_fptr_314"(i8* %"$oneMsg_envptr_315", i8* %"$m_316")
  store %TName_List_Message* %"$oneMsg_call_317", %TName_List_Message** %"$oneMsg_2"
  %"$$oneMsg_2_318" = load %TName_List_Message*, %TName_List_Message** %"$oneMsg_2"
  store %TName_List_Message* %"$$oneMsg_2_318", %TName_List_Message** %msgs
  %"$execptr_load_319" = load i8*, i8** @_execptr
  %"$msgs_320" = load %TName_List_Message*, %TName_List_Message** %msgs
  call void @_send(i8* %"$execptr_load_319", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %TName_List_Message* %"$msgs_320")
  br label %"$matchsucc_260"

"$False_321":                                     ; preds = %"$matchsucc_245"
  %"$isSenderAdmin_322" = bitcast %TName_Bool* %"$isSenderAdmin_261" to %CName_False*
  %"$execptr_load_323" = load i8*, i8** @_execptr
  %"$eError_324" = load i8*, i8** @eError
  call void @_event(i8* %"$execptr_load_323", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$eError_324")
  br label %"$matchsucc_260"

"$empty_default_264":                             ; preds = %"$matchsucc_245"
  br label %"$matchsucc_260"

"$matchsucc_260":                                 ; preds = %"$False_321", %"$True_265", %"$empty_default_264"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @bestow(i8* %0) {
entry:
  %"$_amount_326" = getelementptr i8, i8* %0, i32 0
  %"$_amount_327" = bitcast i8* %"$_amount_326" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_327"
  %"$_sender_328" = getelementptr i8, i8* %0, i32 16
  %"$_sender_329" = bitcast i8* %"$_sender_328" to [20 x i8]*
  %"$label_330" = getelementptr i8, i8* %0, i32 36
  %"$label_331" = bitcast i8* %"$label_330" to %String*
  %label = load %String, %String* %"$label_331"
  %"$owner_332" = getelementptr i8, i8* %0, i32 52
  %"$owner_333" = bitcast i8* %"$owner_332" to [20 x i8]*
  %"$resolver_334" = getelementptr i8, i8* %0, i32 72
  %"$resolver_335" = bitcast i8* %"$resolver_334" to [20 x i8]*
  call void @"$bestow_235"(%Uint128 %_amount, [20 x i8]* %"$_sender_329", %String %label, [20 x i8]* %"$owner_333", [20 x i8]* %"$resolver_335")
  ret void
}
