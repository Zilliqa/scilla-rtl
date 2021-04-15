

; gas_remaining: 4001350
; ModuleID = 'Admin'
source_filename = "Admin"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
@_gasrem = global i64 0
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
@"$stringlit_122" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_127" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_130" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_138" = unnamed_addr constant [10 x i8] c"isApproved"
@ud-proxy.true = global %TName_Bool* null
@ud-proxy.nilMessage = global %TName_List_Message* null
@ud-proxy.oneMsg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@ud-proxy.eAdminSet = global { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-proxy.eError = global i8* null
@"$stringlit_188" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_193" = unnamed_addr constant [5 x i8] c"Error"
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@initialAdmin = global [20 x i8] zeroinitializer
@registry = global [20 x i8] zeroinitializer
@"$admins_221" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_230" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_301" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_361" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_437" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_442" = unnamed_addr constant [6 x i8] c"bestow"
@"$stringlit_445" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_453" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_460" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_467" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_474" = unnamed_addr constant [8 x i8] c"resolver"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Map_48", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_Bystr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 19

define internal i8* @"$fundef_5"(%"$$fundef_5_env_86"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_5_env_address_114" = getelementptr inbounds %"$$fundef_5_env_86", %"$$fundef_5_env_86"* %0, i32 0, i32 0
  %"$address_envload_115" = load [20 x i8], [20 x i8]* %"$$fundef_5_env_address_114", align 1
  %address = alloca [20 x i8], align 1
  store [20 x i8] %"$address_envload_115", [20 x i8]* %address, align 1
  %"$retval_6" = alloca i8*, align 8
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %entry
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %"$msgobj_121_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_121_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_121_salloc_load", i64 117)
  %"$msgobj_121_salloc" = bitcast i8* %"$msgobj_121_salloc_salloc" to [117 x i8]*
  %"$msgobj_121" = bitcast [117 x i8]* %"$msgobj_121_salloc" to i8*
  store i8 3, i8* %"$msgobj_121", align 1
  %"$msgobj_fname_123" = getelementptr i8, i8* %"$msgobj_121", i32 1
  %"$msgobj_fname_124" = bitcast i8* %"$msgobj_fname_123" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_122", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_124", align 8
  %"$msgobj_td_125" = getelementptr i8, i8* %"$msgobj_121", i32 17
  %"$msgobj_td_126" = bitcast i8* %"$msgobj_td_125" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_126", align 8
  %"$msgobj_v_128" = getelementptr i8, i8* %"$msgobj_121", i32 25
  %"$msgobj_v_129" = bitcast i8* %"$msgobj_v_128" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_127", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_129", align 8
  %"$msgobj_fname_131" = getelementptr i8, i8* %"$msgobj_121", i32 41
  %"$msgobj_fname_132" = bitcast i8* %"$msgobj_fname_131" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_130", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_132", align 8
  %"$msgobj_td_133" = getelementptr i8, i8* %"$msgobj_121", i32 57
  %"$msgobj_td_134" = bitcast i8* %"$msgobj_td_133" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_134", align 8
  %"$address_135" = load [20 x i8], [20 x i8]* %address, align 1
  %"$msgobj_v_136" = getelementptr i8, i8* %"$msgobj_121", i32 65
  %"$msgobj_v_137" = bitcast i8* %"$msgobj_v_136" to [20 x i8]*
  store [20 x i8] %"$address_135", [20 x i8]* %"$msgobj_v_137", align 1
  %"$msgobj_fname_139" = getelementptr i8, i8* %"$msgobj_121", i32 85
  %"$msgobj_fname_140" = bitcast i8* %"$msgobj_fname_139" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_138", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_140", align 8
  %"$msgobj_td_141" = getelementptr i8, i8* %"$msgobj_121", i32 101
  %"$msgobj_td_142" = bitcast i8* %"$msgobj_td_141" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", %_TyDescrTy_Typ** %"$msgobj_td_142", align 8
  %"$msgobj_v_143" = getelementptr i8, i8* %"$msgobj_121", i32 109
  %"$msgobj_v_144" = bitcast i8* %"$msgobj_v_143" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_144", align 8
  store i8* %"$msgobj_121", i8** %"$retval_6", align 8, !dbg !8
  %"$$retval_6_146" = load i8*, i8** %"$retval_6", align 8
  ret i8* %"$$retval_6_146"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_3"(%"$$fundef_3_env_87"* %0, [20 x i8]* %1) !dbg !9 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_4" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %entry
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  %"$$fundef_5_envp_108_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_5_envp_108_salloc" = call i8* @_salloc(i8* %"$$fundef_5_envp_108_load", i64 20)
  %"$$fundef_5_envp_108" = bitcast i8* %"$$fundef_5_envp_108_salloc" to %"$$fundef_5_env_86"*
  %"$$fundef_5_env_voidp_110" = bitcast %"$$fundef_5_env_86"* %"$$fundef_5_envp_108" to i8*
  %"$$fundef_5_cloval_111" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_5_env_86"*, %TName_Bool*)* @"$fundef_5" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_5_env_voidp_110", 1
  %"$$fundef_5_env_address_112" = getelementptr inbounds %"$$fundef_5_env_86", %"$$fundef_5_env_86"* %"$$fundef_5_envp_108", i32 0, i32 0
  store [20 x i8] %address, [20 x i8]* %"$$fundef_5_env_address_112", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_5_cloval_111", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_4", align 8, !dbg !10
  %"$$retval_4_113" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_4", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_4_113"
}

define internal %TName_List_Message* @"$fundef_7"(%"$$fundef_7_env_88"* %0, i8* %1) !dbg !11 {
entry:
  %"$$fundef_7_env_ud-proxy.nilMessage_89" = getelementptr inbounds %"$$fundef_7_env_88", %"$$fundef_7_env_88"* %0, i32 0, i32 0
  %"$ud-proxy.nilMessage_envload_90" = load %TName_List_Message*, %TName_List_Message** %"$$fundef_7_env_ud-proxy.nilMessage_89", align 8
  %ud-proxy.nilMessage = alloca %TName_List_Message*, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_envload_90", %TName_List_Message** %ud-proxy.nilMessage, align 8
  %"$retval_8" = alloca %TName_List_Message*, align 8
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %entry
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %"$ud-proxy.nilMessage_96" = load %TName_List_Message*, %TName_List_Message** %ud-proxy.nilMessage, align 8
  %"$adtval_97_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_97_salloc" = call i8* @_salloc(i8* %"$adtval_97_load", i64 17)
  %"$adtval_97" = bitcast i8* %"$adtval_97_salloc" to %CName_Cons_Message*
  %"$adtgep_98" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_97", i32 0, i32 0
  store i8 0, i8* %"$adtgep_98", align 1
  %"$adtgep_99" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_97", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_99", align 8
  %"$adtgep_100" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_97", i32 0, i32 2
  store %TName_List_Message* %"$ud-proxy.nilMessage_96", %TName_List_Message** %"$adtgep_100", align 8
  %"$adtptr_101" = bitcast %CName_Cons_Message* %"$adtval_97" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_101", %TName_List_Message** %"$retval_8", align 8, !dbg !12
  %"$$retval_8_102" = load %TName_List_Message*, %TName_List_Message** %"$retval_8", align 8
  ret %TName_List_Message* %"$$retval_8_102"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !13 {
entry:
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %entry
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %"$adtval_152_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_152_salloc" = call i8* @_salloc(i8* %"$adtval_152_load", i64 1)
  %"$adtval_152" = bitcast i8* %"$adtval_152_salloc" to %CName_True*
  %"$adtgep_153" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_152", i32 0, i32 0
  store i8 0, i8* %"$adtgep_153", align 1
  %"$adtptr_154" = bitcast %CName_True* %"$adtval_152" to %TName_Bool*
  store %TName_Bool* %"$adtptr_154", %TName_Bool** @ud-proxy.true, align 8, !dbg !15
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_150"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %"$adtval_160_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_160_salloc" = call i8* @_salloc(i8* %"$adtval_160_load", i64 1)
  %"$adtval_160" = bitcast i8* %"$adtval_160_salloc" to %CName_Nil_Message*
  %"$adtgep_161" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_160", i32 0, i32 0
  store i8 1, i8* %"$adtgep_161", align 1
  %"$adtptr_162" = bitcast %CName_Nil_Message* %"$adtval_160" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_162", %TName_List_Message** @ud-proxy.nilMessage, align 8, !dbg !16
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_158"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$$fundef_7_envp_168_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_7_envp_168_salloc" = call i8* @_salloc(i8* %"$$fundef_7_envp_168_load", i64 8)
  %"$$fundef_7_envp_168" = bitcast i8* %"$$fundef_7_envp_168_salloc" to %"$$fundef_7_env_88"*
  %"$$fundef_7_env_voidp_170" = bitcast %"$$fundef_7_env_88"* %"$$fundef_7_envp_168" to i8*
  %"$$fundef_7_cloval_171" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_7_env_88"*, i8*)* @"$fundef_7" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_7_env_voidp_170", 1
  %"$$fundef_7_env_ud-proxy.nilMessage_172" = getelementptr inbounds %"$$fundef_7_env_88", %"$$fundef_7_env_88"* %"$$fundef_7_envp_168", i32 0, i32 0
  %"$ud-proxy.nilMessage_173" = load %TName_List_Message*, %TName_List_Message** @ud-proxy.nilMessage, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_173", %TName_List_Message** %"$$fundef_7_env_ud-proxy.nilMessage_172", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_7_cloval_171", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8, !dbg !17
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_166"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_3_env_87"*, [20 x i8]*)* @"$fundef_3" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8, !dbg !18
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_177"
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %"$msgobj_187_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_187_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_187_salloc_load", i64 41)
  %"$msgobj_187_salloc" = bitcast i8* %"$msgobj_187_salloc_salloc" to [41 x i8]*
  %"$msgobj_187" = bitcast [41 x i8]* %"$msgobj_187_salloc" to i8*
  store i8 1, i8* %"$msgobj_187", align 1
  %"$msgobj_fname_189" = getelementptr i8, i8* %"$msgobj_187", i32 1
  %"$msgobj_fname_190" = bitcast i8* %"$msgobj_fname_189" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_188", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_190", align 8
  %"$msgobj_td_191" = getelementptr i8, i8* %"$msgobj_187", i32 17
  %"$msgobj_td_192" = bitcast i8* %"$msgobj_td_191" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_192", align 8
  %"$msgobj_v_194" = getelementptr i8, i8* %"$msgobj_187", i32 25
  %"$msgobj_v_195" = bitcast i8* %"$msgobj_v_194" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_193", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_195", align 8
  store i8* %"$msgobj_187", i8** @ud-proxy.eError, align 8, !dbg !19
  ret void
}

define void @_init_state() !dbg !20 {
entry:
  %"$admins_9" = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %entry
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$execptr_load_207" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_208" = call i8* @_new_empty_map(i8* %"$execptr_load_207")
  %"$Emp_209" = bitcast i8* %"$_new_empty_map_call_208" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$Emp_209", %Map_ByStr20_Bool** %empty, align 8, !dbg !21
  %"$execptr_load_210" = load i8*, i8** @_execptr, align 8
  %"$empty_211" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_211_212" = bitcast %Map_ByStr20_Bool* %"$empty_211" to i8*
  %"$put_initialAdmin_213" = alloca [20 x i8], align 1
  %"$initialAdmin_214" = load [20 x i8], [20 x i8]* @initialAdmin, align 1
  store [20 x i8] %"$initialAdmin_214", [20 x i8]* %"$put_initialAdmin_213", align 1
  %"$$put_initialAdmin_213_215" = bitcast [20 x i8]* %"$put_initialAdmin_213" to i8*
  %"$ud-proxy.true_216" = load %TName_Bool*, %TName_Bool** @ud-proxy.true, align 8
  %"$$ud-proxy.true_216_217" = bitcast %TName_Bool* %"$ud-proxy.true_216" to i8*
  %"$put_call_218" = call i8* @_put(i8* %"$execptr_load_210", %_TyDescrTy_Typ* @"$TyDescr_Map_48", i8* %"$$empty_211_212", i8* %"$$put_initialAdmin_213_215", i8* %"$$ud-proxy.true_216_217")
  %"$_put_219" = bitcast i8* %"$put_call_218" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$_put_219", %Map_ByStr20_Bool** %"$admins_9", align 8, !dbg !22
  %"$execptr_load_220" = load i8*, i8** @_execptr, align 8
  %"$$admins_9_222" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %"$admins_9", align 8
  %"$update_value_223" = bitcast %Map_ByStr20_Bool* %"$$admins_9_222" to i8*
  call void @_update_field(i8* %"$execptr_load_220", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_221", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 0, i8* null, i8* %"$update_value_223"), !dbg !21
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_224"(%Uint128 %_amount, [20 x i8]* %"$_sender_225", [20 x i8]* %"$address_226", %TName_Bool* %isApproved) !dbg !23 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_225", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_226", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_227_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_227_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_227_salloc_load", i64 20)
  %"$indices_buf_227_salloc" = bitcast i8* %"$indices_buf_227_salloc_salloc" to [20 x i8]*
  %"$indices_buf_227" = bitcast [20 x i8]* %"$indices_buf_227_salloc" to i8*
  %"$indices_gep_228" = getelementptr i8, i8* %"$indices_buf_227", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_228" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_229" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_231" = call i8* @_fetch_field(i8* %"$execptr_load_229", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_230", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_227", i32 1), !dbg !24
  %"$maybeAdmin_232" = bitcast i8* %"$maybeAdmin_231" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_232", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_233" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_233_234" = bitcast %TName_Option_Bool* %"$maybeAdmin_233" to i8*
  %"$_literal_cost_call_235" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", i8* %"$$maybeAdmin_233_234")
  %"$gasadd_236" = add i64 %"$_literal_cost_call_235", 0
  %"$gasadd_237" = add i64 %"$gasadd_236", 1
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
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 2, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 2
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$maybeAdmin_254" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_255" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_254", i32 0, i32 0
  %"$maybeAdmin_tag_256" = load i8, i8* %"$maybeAdmin_tag_255", align 1
  switch i8 %"$maybeAdmin_tag_256", label %"$empty_default_257" [
    i8 0, label %"$Some_258"
    i8 1, label %"$None_268"
  ], !dbg !25

"$Some_258":                                      ; preds = %"$have_gas_251"
  %"$maybeAdmin_259" = bitcast %TName_Option_Bool* %"$maybeAdmin_254" to %CName_Some_Bool*
  %"$approval_gep_260" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_259", i32 0, i32 1
  %"$approval_load_261" = load %TName_Bool*, %TName_Bool** %"$approval_gep_260", align 8
  %approval = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$approval_load_261", %TName_Bool** %approval, align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$Some_258"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$Some_258"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$approval_267" = load %TName_Bool*, %TName_Bool** %approval, align 8
  store %TName_Bool* %"$approval_267", %TName_Bool** %isSenderAdmin, align 8, !dbg !26
  br label %"$matchsucc_253"

"$None_268":                                      ; preds = %"$have_gas_251"
  %"$maybeAdmin_269" = bitcast %TName_Option_Bool* %"$maybeAdmin_254" to %CName_None_Bool*
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$None_268"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$None_268"
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %"$adtval_275_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_275_salloc" = call i8* @_salloc(i8* %"$adtval_275_load", i64 1)
  %"$adtval_275" = bitcast i8* %"$adtval_275_salloc" to %CName_False*
  %"$adtgep_276" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_275", i32 0, i32 0
  store i8 1, i8* %"$adtgep_276", align 1
  %"$adtptr_277" = bitcast %CName_False* %"$adtval_275" to %TName_Bool*
  store %TName_Bool* %"$adtptr_277", %TName_Bool** %isSenderAdmin, align 8, !dbg !29
  br label %"$matchsucc_253"

"$empty_default_257":                             ; preds = %"$have_gas_251"
  br label %"$matchsucc_253"

"$matchsucc_253":                                 ; preds = %"$have_gas_273", %"$have_gas_265", %"$empty_default_257"
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 2, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$matchsucc_253"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$matchsucc_253"
  %"$consume_282" = sub i64 %"$gasrem_278", 2
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$isSenderAdmin_284" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_285" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_284", i32 0, i32 0
  %"$isSenderAdmin_tag_286" = load i8, i8* %"$isSenderAdmin_tag_285", align 1
  switch i8 %"$isSenderAdmin_tag_286", label %"$empty_default_287" [
    i8 0, label %"$True_288"
    i8 1, label %"$False_333"
  ], !dbg !31

"$True_288":                                      ; preds = %"$have_gas_281"
  %"$isSenderAdmin_289" = bitcast %TName_Bool* %"$isSenderAdmin_284" to %CName_True*
  %"$isApproved_290" = bitcast %TName_Bool* %isApproved to i8*
  %"$_literal_cost_call_291" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", i8* %"$isApproved_290")
  %"$gasadd_292" = add i64 %"$_literal_cost_call_291", 1
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 %"$gasadd_292", %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$True_288"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$True_288"
  %"$consume_297" = sub i64 %"$gasrem_293", %"$gasadd_292"
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %"$indices_buf_298_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_298_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_298_salloc_load", i64 20)
  %"$indices_buf_298_salloc" = bitcast i8* %"$indices_buf_298_salloc_salloc" to [20 x i8]*
  %"$indices_buf_298" = bitcast [20 x i8]* %"$indices_buf_298_salloc" to i8*
  %"$indices_gep_299" = getelementptr i8, i8* %"$indices_buf_298", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_299" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_300" = load i8*, i8** @_execptr, align 8
  %"$update_value_302" = bitcast %TName_Bool* %isApproved to i8*
  call void @_update_field(i8* %"$execptr_load_300", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_301", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_298", i8* %"$update_value_302"), !dbg !32
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_296"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_306"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem, align 8
  %"$ud-proxy.eAdminSet_0" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-proxy.eAdminSet_313" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8
  %"$ud-proxy.eAdminSet_fptr_314" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_313", 0
  %"$ud-proxy.eAdminSet_envptr_315" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_313", 1
  %"$ud-proxy.eAdminSet_address_316" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-proxy.eAdminSet_address_316", align 1
  %"$ud-proxy.eAdminSet_call_317" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_fptr_314"(i8* %"$ud-proxy.eAdminSet_envptr_315", [20 x i8]* %"$ud-proxy.eAdminSet_address_316"), !dbg !35
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_call_317", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_0", align 8, !dbg !35
  %"$ud-proxy.eAdminSet_1" = alloca i8*, align 8
  %"$$ud-proxy.eAdminSet_0_318" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_0", align 8
  %"$$ud-proxy.eAdminSet_0_fptr_319" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_0_318", 0
  %"$$ud-proxy.eAdminSet_0_envptr_320" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_0_318", 1
  %"$$ud-proxy.eAdminSet_0_call_321" = call i8* %"$$ud-proxy.eAdminSet_0_fptr_319"(i8* %"$$ud-proxy.eAdminSet_0_envptr_320", %TName_Bool* %isApproved), !dbg !35
  store i8* %"$$ud-proxy.eAdminSet_0_call_321", i8** %"$ud-proxy.eAdminSet_1", align 8, !dbg !35
  %"$$ud-proxy.eAdminSet_1_322" = load i8*, i8** %"$ud-proxy.eAdminSet_1", align 8
  store i8* %"$$ud-proxy.eAdminSet_1_322", i8** %e, align 8, !dbg !35
  %"$e_323" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_325" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$e_323")
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 %"$_literal_cost_call_325", %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_311"
  %"$consume_330" = sub i64 %"$gasrem_326", %"$_literal_cost_call_325"
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %"$execptr_load_331" = load i8*, i8** @_execptr, align 8
  %"$e_332" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_331", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$e_332"), !dbg !36
  br label %"$matchsucc_283"

"$False_333":                                     ; preds = %"$have_gas_281"
  %"$isSenderAdmin_334" = bitcast %TName_Bool* %"$isSenderAdmin_284" to %CName_False*
  %"$ud-proxy.eError_335" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_337" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_335")
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 %"$_literal_cost_call_337", %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$False_333"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$False_333"
  %"$consume_342" = sub i64 %"$gasrem_338", %"$_literal_cost_call_337"
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$execptr_load_343" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_344" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_343", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_344"), !dbg !37
  br label %"$matchsucc_283"

"$empty_default_287":                             ; preds = %"$have_gas_281"
  br label %"$matchsucc_283"

"$matchsucc_283":                                 ; preds = %"$have_gas_341", %"$have_gas_329", %"$empty_default_287"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) !dbg !39 {
entry:
  %"$_amount_346" = getelementptr i8, i8* %0, i32 0
  %"$_amount_347" = bitcast i8* %"$_amount_346" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_347", align 8
  %"$_sender_348" = getelementptr i8, i8* %0, i32 16
  %"$_sender_349" = bitcast i8* %"$_sender_348" to [20 x i8]*
  %"$address_350" = getelementptr i8, i8* %0, i32 36
  %"$address_351" = bitcast i8* %"$address_350" to [20 x i8]*
  %"$isApproved_352" = getelementptr i8, i8* %0, i32 56
  %"$isApproved_353" = bitcast i8* %"$isApproved_352" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_353", align 8
  call void @"$setAdmin_224"(%Uint128 %_amount, [20 x i8]* %"$_sender_349", [20 x i8]* %"$address_351", %TName_Bool* %isApproved), !dbg !40
  ret void
}

define internal void @"$bestow_354"(%Uint128 %_amount, [20 x i8]* %"$_sender_355", %String %label, [20 x i8]* %"$owner_356", [20 x i8]* %"$resolver_357") !dbg !41 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_355", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_356", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_357", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_358_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_358_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_358_salloc_load", i64 20)
  %"$indices_buf_358_salloc" = bitcast i8* %"$indices_buf_358_salloc_salloc" to [20 x i8]*
  %"$indices_buf_358" = bitcast [20 x i8]* %"$indices_buf_358_salloc" to i8*
  %"$indices_gep_359" = getelementptr i8, i8* %"$indices_buf_358", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_359" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_360" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_362" = call i8* @_fetch_field(i8* %"$execptr_load_360", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_361", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_358", i32 1), !dbg !42
  %"$maybeAdmin_363" = bitcast i8* %"$maybeAdmin_362" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_363", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_364" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_364_365" = bitcast %TName_Option_Bool* %"$maybeAdmin_364" to i8*
  %"$_literal_cost_call_366" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", i8* %"$$maybeAdmin_364_365")
  %"$gasadd_367" = add i64 %"$_literal_cost_call_366", 0
  %"$gasadd_368" = add i64 %"$gasadd_367", 1
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 %"$gasadd_368", %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %entry
  %"$consume_373" = sub i64 %"$gasrem_369", %"$gasadd_368"
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 2, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 2
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$maybeAdmin_385" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_386" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_385", i32 0, i32 0
  %"$maybeAdmin_tag_387" = load i8, i8* %"$maybeAdmin_tag_386", align 1
  switch i8 %"$maybeAdmin_tag_387", label %"$empty_default_388" [
    i8 0, label %"$Some_389"
    i8 1, label %"$None_399"
  ], !dbg !43

"$Some_389":                                      ; preds = %"$have_gas_382"
  %"$maybeAdmin_390" = bitcast %TName_Option_Bool* %"$maybeAdmin_385" to %CName_Some_Bool*
  %"$isAdmin_gep_391" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_390", i32 0, i32 1
  %"$isAdmin_load_392" = load %TName_Bool*, %TName_Bool** %"$isAdmin_gep_391", align 8
  %isAdmin = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$isAdmin_load_392", %TName_Bool** %isAdmin, align 8
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$Some_389"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$Some_389"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %"$isAdmin_398" = load %TName_Bool*, %TName_Bool** %isAdmin, align 8
  store %TName_Bool* %"$isAdmin_398", %TName_Bool** %isSenderAdmin, align 8, !dbg !44
  br label %"$matchsucc_384"

"$None_399":                                      ; preds = %"$have_gas_382"
  %"$maybeAdmin_400" = bitcast %TName_Option_Bool* %"$maybeAdmin_385" to %CName_None_Bool*
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 1, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$None_399"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$None_399"
  %"$consume_405" = sub i64 %"$gasrem_401", 1
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %"$adtval_406_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_406_salloc" = call i8* @_salloc(i8* %"$adtval_406_load", i64 1)
  %"$adtval_406" = bitcast i8* %"$adtval_406_salloc" to %CName_False*
  %"$adtgep_407" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_406", i32 0, i32 0
  store i8 1, i8* %"$adtgep_407", align 1
  %"$adtptr_408" = bitcast %CName_False* %"$adtval_406" to %TName_Bool*
  store %TName_Bool* %"$adtptr_408", %TName_Bool** %isSenderAdmin, align 8, !dbg !47
  br label %"$matchsucc_384"

"$empty_default_388":                             ; preds = %"$have_gas_382"
  br label %"$matchsucc_384"

"$matchsucc_384":                                 ; preds = %"$have_gas_404", %"$have_gas_396", %"$empty_default_388"
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 2, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$matchsucc_384"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$matchsucc_384"
  %"$consume_413" = sub i64 %"$gasrem_409", 2
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$isSenderAdmin_415" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_416" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_415", i32 0, i32 0
  %"$isSenderAdmin_tag_417" = load i8, i8* %"$isSenderAdmin_tag_416", align 1
  switch i8 %"$isSenderAdmin_tag_417", label %"$empty_default_418" [
    i8 0, label %"$True_419"
    i8 1, label %"$False_503"
  ], !dbg !49

"$True_419":                                      ; preds = %"$have_gas_412"
  %"$isSenderAdmin_420" = bitcast %TName_Bool* %"$isSenderAdmin_415" to %CName_True*
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$True_419"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$True_419"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 1, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_424"
  %"$consume_430" = sub i64 %"$gasrem_426", 1
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_429"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %"$msgobj_436_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_436_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_436_salloc_load", i64 253)
  %"$msgobj_436_salloc" = bitcast i8* %"$msgobj_436_salloc_salloc" to [253 x i8]*
  %"$msgobj_436" = bitcast [253 x i8]* %"$msgobj_436_salloc" to i8*
  store i8 6, i8* %"$msgobj_436", align 1
  %"$msgobj_fname_438" = getelementptr i8, i8* %"$msgobj_436", i32 1
  %"$msgobj_fname_439" = bitcast i8* %"$msgobj_fname_438" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_437", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_439", align 8
  %"$msgobj_td_440" = getelementptr i8, i8* %"$msgobj_436", i32 17
  %"$msgobj_td_441" = bitcast i8* %"$msgobj_td_440" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_441", align 8
  %"$msgobj_v_443" = getelementptr i8, i8* %"$msgobj_436", i32 25
  %"$msgobj_v_444" = bitcast i8* %"$msgobj_v_443" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_442", i32 0, i32 0), i32 6 }, %String* %"$msgobj_v_444", align 8
  %"$msgobj_fname_446" = getelementptr i8, i8* %"$msgobj_436", i32 41
  %"$msgobj_fname_447" = bitcast i8* %"$msgobj_fname_446" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_445", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_447", align 8
  %"$msgobj_td_448" = getelementptr i8, i8* %"$msgobj_436", i32 57
  %"$msgobj_td_449" = bitcast i8* %"$msgobj_td_448" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_449", align 8
  %"$registry_450" = load [20 x i8], [20 x i8]* @registry, align 1
  %"$msgobj_v_451" = getelementptr i8, i8* %"$msgobj_436", i32 65
  %"$msgobj_v_452" = bitcast i8* %"$msgobj_v_451" to [20 x i8]*
  store [20 x i8] %"$registry_450", [20 x i8]* %"$msgobj_v_452", align 1
  %"$msgobj_fname_454" = getelementptr i8, i8* %"$msgobj_436", i32 85
  %"$msgobj_fname_455" = bitcast i8* %"$msgobj_fname_454" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_453", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_455", align 8
  %"$msgobj_td_456" = getelementptr i8, i8* %"$msgobj_436", i32 101
  %"$msgobj_td_457" = bitcast i8* %"$msgobj_td_456" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_457", align 8
  %"$msgobj_v_458" = getelementptr i8, i8* %"$msgobj_436", i32 109
  %"$msgobj_v_459" = bitcast i8* %"$msgobj_v_458" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_459", align 8
  %"$msgobj_fname_461" = getelementptr i8, i8* %"$msgobj_436", i32 125
  %"$msgobj_fname_462" = bitcast i8* %"$msgobj_fname_461" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_460", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_462", align 8
  %"$msgobj_td_463" = getelementptr i8, i8* %"$msgobj_436", i32 141
  %"$msgobj_td_464" = bitcast i8* %"$msgobj_td_463" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_464", align 8
  %"$msgobj_v_465" = getelementptr i8, i8* %"$msgobj_436", i32 149
  %"$msgobj_v_466" = bitcast i8* %"$msgobj_v_465" to %String*
  store %String %label, %String* %"$msgobj_v_466", align 8
  %"$msgobj_fname_468" = getelementptr i8, i8* %"$msgobj_436", i32 165
  %"$msgobj_fname_469" = bitcast i8* %"$msgobj_fname_468" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_467", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_469", align 8
  %"$msgobj_td_470" = getelementptr i8, i8* %"$msgobj_436", i32 181
  %"$msgobj_td_471" = bitcast i8* %"$msgobj_td_470" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_471", align 8
  %"$msgobj_v_472" = getelementptr i8, i8* %"$msgobj_436", i32 189
  %"$msgobj_v_473" = bitcast i8* %"$msgobj_v_472" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_473", align 1
  %"$msgobj_fname_475" = getelementptr i8, i8* %"$msgobj_436", i32 209
  %"$msgobj_fname_476" = bitcast i8* %"$msgobj_fname_475" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_474", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_476", align 8
  %"$msgobj_td_477" = getelementptr i8, i8* %"$msgobj_436", i32 225
  %"$msgobj_td_478" = bitcast i8* %"$msgobj_td_477" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_478", align 8
  %"$msgobj_v_479" = getelementptr i8, i8* %"$msgobj_436", i32 233
  %"$msgobj_v_480" = bitcast i8* %"$msgobj_v_479" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_480", align 1
  store i8* %"$msgobj_436", i8** %m, align 8, !dbg !50
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_434"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  %"$ud-proxy.oneMsg_2" = alloca %TName_List_Message*, align 8
  %"$ud-proxy.oneMsg_487" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8
  %"$ud-proxy.oneMsg_fptr_488" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_487", 0
  %"$ud-proxy.oneMsg_envptr_489" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_487", 1
  %"$m_490" = load i8*, i8** %m, align 8
  %"$ud-proxy.oneMsg_call_491" = call %TName_List_Message* %"$ud-proxy.oneMsg_fptr_488"(i8* %"$ud-proxy.oneMsg_envptr_489", i8* %"$m_490"), !dbg !53
  store %TName_List_Message* %"$ud-proxy.oneMsg_call_491", %TName_List_Message** %"$ud-proxy.oneMsg_2", align 8, !dbg !53
  %"$$ud-proxy.oneMsg_2_492" = load %TName_List_Message*, %TName_List_Message** %"$ud-proxy.oneMsg_2", align 8
  store %TName_List_Message* %"$$ud-proxy.oneMsg_2_492", %TName_List_Message** %msgs, align 8, !dbg !53
  %"$msgs_493" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_493_494" = bitcast %TName_List_Message* %"$msgs_493" to i8*
  %"$_literal_cost_call_495" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", i8* %"$$msgs_493_494")
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 %"$_literal_cost_call_495", %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_485"
  %"$consume_500" = sub i64 %"$gasrem_496", %"$_literal_cost_call_495"
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %"$execptr_load_501" = load i8*, i8** @_execptr, align 8
  %"$msgs_502" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_501", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %TName_List_Message* %"$msgs_502"), !dbg !54
  br label %"$matchsucc_414"

"$False_503":                                     ; preds = %"$have_gas_412"
  %"$isSenderAdmin_504" = bitcast %TName_Bool* %"$isSenderAdmin_415" to %CName_False*
  %"$ud-proxy.eError_505" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_507" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_505")
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 %"$_literal_cost_call_507", %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$False_503"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$False_503"
  %"$consume_512" = sub i64 %"$gasrem_508", %"$_literal_cost_call_507"
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %"$execptr_load_513" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_514" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_513", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_514"), !dbg !55
  br label %"$matchsucc_414"

"$empty_default_418":                             ; preds = %"$have_gas_412"
  br label %"$matchsucc_414"

"$matchsucc_414":                                 ; preds = %"$have_gas_511", %"$have_gas_499", %"$empty_default_418"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @bestow(i8* %0) !dbg !57 {
entry:
  %"$_amount_516" = getelementptr i8, i8* %0, i32 0
  %"$_amount_517" = bitcast i8* %"$_amount_516" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_517", align 8
  %"$_sender_518" = getelementptr i8, i8* %0, i32 16
  %"$_sender_519" = bitcast i8* %"$_sender_518" to [20 x i8]*
  %"$label_520" = getelementptr i8, i8* %0, i32 36
  %"$label_521" = bitcast i8* %"$label_520" to %String*
  %label = load %String, %String* %"$label_521", align 8
  %"$owner_522" = getelementptr i8, i8* %0, i32 52
  %"$owner_523" = bitcast i8* %"$owner_522" to [20 x i8]*
  %"$resolver_524" = getelementptr i8, i8* %0, i32 72
  %"$resolver_525" = bitcast i8* %"$resolver_524" to [20 x i8]*
  call void @"$bestow_354"(%Uint128 %_amount, [20 x i8]* %"$_sender_519", %String %label, [20 x i8]* %"$owner_523", [20 x i8]* %"$resolver_525"), !dbg !58
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "ud-proxy.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_5", linkageName: "$fundef_5", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 17, column: 5, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 16, type: !5, scopeLine: 16, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 17, column: 5, scope: !9)
!11 = distinct !DISubprogram(name: "$fundef_7", linkageName: "$fundef_7", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 12, column: 5, scope: !11)
!13 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !14, file: !14, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DIFile(filename: ".", directory: ".")
!15 = !DILocation(line: 7, column: 12, scope: !13)
!16 = !DILocation(line: 8, column: 18, scope: !13)
!17 = !DILocation(line: 12, column: 5, scope: !13)
!18 = !DILocation(line: 16, column: 3, scope: !13)
!19 = !DILocation(line: 19, column: 14, scope: !13)
!20 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !14, file: !14, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 26, column: 15, scope: !20)
!22 = !DILocation(line: 27, column: 5, scope: !20)
!23 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 30, column: 3, scope: !23)
!25 = !DILocation(line: 33, column: 5, scope: !23)
!26 = !DILocation(line: 34, column: 24, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !2, line: 34, column: 7)
!28 = distinct !DILexicalBlock(scope: !23, file: !2, line: 33, column: 5)
!29 = !DILocation(line: 35, column: 15, scope: !30)
!30 = distinct !DILexicalBlock(scope: !28, file: !2, line: 35, column: 7)
!31 = !DILocation(line: 38, column: 3, scope: !23)
!32 = !DILocation(line: 40, column: 5, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !2, line: 39, column: 5)
!34 = distinct !DILexicalBlock(scope: !23, file: !2, line: 38, column: 3)
!35 = !DILocation(line: 42, column: 9, scope: !33)
!36 = !DILocation(line: 43, column: 5, scope: !33)
!37 = !DILocation(line: 45, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !2, line: 44, column: 5)
!39 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DILocation(line: 29, column: 12, scope: !39)
!41 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!42 = !DILocation(line: 50, column: 3, scope: !41)
!43 = !DILocation(line: 53, column: 5, scope: !41)
!44 = !DILocation(line: 54, column: 23, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !2, line: 54, column: 7)
!46 = distinct !DILexicalBlock(scope: !41, file: !2, line: 53, column: 5)
!47 = !DILocation(line: 55, column: 15, scope: !48)
!48 = distinct !DILexicalBlock(scope: !46, file: !2, line: 55, column: 7)
!49 = !DILocation(line: 58, column: 3, scope: !41)
!50 = !DILocation(line: 61, column: 15, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !2, line: 59, column: 5)
!52 = distinct !DILexicalBlock(scope: !41, file: !2, line: 58, column: 3)
!53 = !DILocation(line: 63, column: 7, scope: !51)
!54 = !DILocation(line: 64, column: 5, scope: !51)
!55 = !DILocation(line: 66, column: 5, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !2, line: 65, column: 5)
!57 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!58 = !DILocation(line: 49, column: 12, scope: !57)
