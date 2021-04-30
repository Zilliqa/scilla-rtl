

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
%"$TyDescr_AddrTyp_50" = type { i32, %"$TyDescr_AddrFieldTyp_49"* }
%"$TyDescr_AddrFieldTyp_49" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$$fundef_5_env_90" = type { [20 x i8] }
%String = type { i8*, i32 }
%"$$fundef_3_env_91" = type {}
%"$$fundef_7_env_92" = type { %TName_List_Message* }
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
@"$TyDescr_ADT_Option_Bool_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_Option_Bool_ADTTyp_Specl_61" to i8*) }
@"$TyDescr_ADT_Bool_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_Bool_ADTTyp_Specl_73" to i8*) }
@"$TyDescr_ADT_List_Message_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_List_Message_ADTTyp_Specl_85" to i8*) }
@"$TyDescr_Map_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_47"* @"$TyDescr_MapTyp_88" to i8*) }
@"$TyDescr_Addr_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_50"* @"$TyDescr_AddrFields_89" to i8*) }
@"$TyDescr_Option_ADTTyp_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_42" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_63", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_41"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_41"*], [1 x %"$TyDescrTy_ADTTyp_Specl_41"*]* @"$TyDescr_Option_ADTTyp_m_specls_62", i32 0, i32 0) }
@"$TyDescr_Option_Some_Bool_Constr_m_args_53" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45"]
@"$TyDescr_ADT_Some_54" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_54", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_53", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_56" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_57" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_57", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_59" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_43"*] [%"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_55", %"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_58"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_60" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_41" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_43"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_43"*], [2 x %"$TyDescrTy_ADTTyp_Constr_43"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_42"* @"$TyDescr_Option_ADTTyp_52" }
@"$TyDescr_Option_ADTTyp_m_specls_62" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_41"*] [%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_Option_Bool_ADTTyp_Specl_61"]
@"$TyDescr_ADT_Option_63" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_75", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_41"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_41"*], [1 x %"$TyDescrTy_ADTTyp_Specl_41"*]* @"$TyDescr_Bool_ADTTyp_m_specls_74", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_65" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_66" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_66", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_69" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_69", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_71" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_43"*] [%"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_Bool_True_ADTTyp_Constr_67", %"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_Bool_False_ADTTyp_Constr_70"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_72" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_41" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_43"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_43"*], [2 x %"$TyDescrTy_ADTTyp_Constr_43"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_42"* @"$TyDescr_Bool_ADTTyp_64" }
@"$TyDescr_Bool_ADTTyp_m_specls_74" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_41"*] [%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_Bool_ADTTyp_Specl_73"]
@"$TyDescr_ADT_Bool_75" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_42" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_87", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_41"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_41"*], [1 x %"$TyDescrTy_ADTTyp_Specl_41"*]* @"$TyDescr_List_ADTTyp_m_specls_86", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_77" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46"]
@"$TyDescr_ADT_Cons_78" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_78", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_77", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_80" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_81" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_43" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_81", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_80", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_83" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_43"*] [%"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_79", %"$TyDescrTy_ADTTyp_Constr_43"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_82"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_84" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_32"]
@"$TyDescr_List_Message_ADTTyp_Specl_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_41" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_84", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_43"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_43"*], [2 x %"$TyDescrTy_ADTTyp_Constr_43"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_83", i32 0, i32 0), %"$TyDescrTy_ADTTyp_42"* @"$TyDescr_List_ADTTyp_76" }
@"$TyDescr_List_ADTTyp_m_specls_86" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_41"*] [%"$TyDescrTy_ADTTyp_Specl_41"* @"$TyDescr_List_Message_ADTTyp_Specl_85"]
@"$TyDescr_ADT_List_87" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_88" = unnamed_addr constant %"$TyDescr_MapTyp_47" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45" }
@"$TyDescr_AddrFields_89" = unnamed_addr constant %"$TyDescr_AddrTyp_50" { i32 -1, %"$TyDescr_AddrFieldTyp_49"* null }
@"$stringlit_126" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_131" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_134" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_142" = unnamed_addr constant [10 x i8] c"isApproved"
@ud-proxy.true = global %TName_Bool* null
@ud-proxy.nilMessage = global %TName_List_Message* null
@ud-proxy.oneMsg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@ud-proxy.eAdminSet = global { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-proxy.eError = global i8* null
@"$stringlit_192" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_197" = unnamed_addr constant [5 x i8] c"Error"
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@initialAdmin = global [20 x i8] zeroinitializer
@registry = global [20 x i8] zeroinitializer
@"$admins_225" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_234" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_305" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_365" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_441" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_446" = unnamed_addr constant [6 x i8] c"bestow"
@"$stringlit_449" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_457" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_464" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_471" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_478" = unnamed_addr constant [8 x i8] c"resolver"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_Addr_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Map_48", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_Bystr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 20

define internal i8* @"$fundef_5"(%"$$fundef_5_env_90"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_5_env_address_118" = getelementptr inbounds %"$$fundef_5_env_90", %"$$fundef_5_env_90"* %0, i32 0, i32 0
  %"$address_envload_119" = load [20 x i8], [20 x i8]* %"$$fundef_5_env_address_118", align 1
  %address = alloca [20 x i8], align 1
  store [20 x i8] %"$address_envload_119", [20 x i8]* %address, align 1
  %"$retval_6" = alloca i8*, align 8
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %entry
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %"$msgobj_125_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_125_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_125_salloc_load", i64 117)
  %"$msgobj_125_salloc" = bitcast i8* %"$msgobj_125_salloc_salloc" to [117 x i8]*
  %"$msgobj_125" = bitcast [117 x i8]* %"$msgobj_125_salloc" to i8*
  store i8 3, i8* %"$msgobj_125", align 1
  %"$msgobj_fname_127" = getelementptr i8, i8* %"$msgobj_125", i32 1
  %"$msgobj_fname_128" = bitcast i8* %"$msgobj_fname_127" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_126", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_128", align 8
  %"$msgobj_td_129" = getelementptr i8, i8* %"$msgobj_125", i32 17
  %"$msgobj_td_130" = bitcast i8* %"$msgobj_td_129" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_130", align 8
  %"$msgobj_v_132" = getelementptr i8, i8* %"$msgobj_125", i32 25
  %"$msgobj_v_133" = bitcast i8* %"$msgobj_v_132" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_131", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_133", align 8
  %"$msgobj_fname_135" = getelementptr i8, i8* %"$msgobj_125", i32 41
  %"$msgobj_fname_136" = bitcast i8* %"$msgobj_fname_135" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_134", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_136", align 8
  %"$msgobj_td_137" = getelementptr i8, i8* %"$msgobj_125", i32 57
  %"$msgobj_td_138" = bitcast i8* %"$msgobj_td_137" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_138", align 8
  %"$address_139" = load [20 x i8], [20 x i8]* %address, align 1
  %"$msgobj_v_140" = getelementptr i8, i8* %"$msgobj_125", i32 65
  %"$msgobj_v_141" = bitcast i8* %"$msgobj_v_140" to [20 x i8]*
  store [20 x i8] %"$address_139", [20 x i8]* %"$msgobj_v_141", align 1
  %"$msgobj_fname_143" = getelementptr i8, i8* %"$msgobj_125", i32 85
  %"$msgobj_fname_144" = bitcast i8* %"$msgobj_fname_143" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_142", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_144", align 8
  %"$msgobj_td_145" = getelementptr i8, i8* %"$msgobj_125", i32 101
  %"$msgobj_td_146" = bitcast i8* %"$msgobj_td_145" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", %_TyDescrTy_Typ** %"$msgobj_td_146", align 8
  %"$msgobj_v_147" = getelementptr i8, i8* %"$msgobj_125", i32 109
  %"$msgobj_v_148" = bitcast i8* %"$msgobj_v_147" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_148", align 8
  store i8* %"$msgobj_125", i8** %"$retval_6", align 8, !dbg !8
  %"$$retval_6_150" = load i8*, i8** %"$retval_6", align 8
  ret i8* %"$$retval_6_150"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_3"(%"$$fundef_3_env_91"* %0, [20 x i8]* %1) !dbg !9 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_4" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 1, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %entry
  %"$consume_111" = sub i64 %"$gasrem_107", 1
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %"$$fundef_5_envp_112_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_5_envp_112_salloc" = call i8* @_salloc(i8* %"$$fundef_5_envp_112_load", i64 20)
  %"$$fundef_5_envp_112" = bitcast i8* %"$$fundef_5_envp_112_salloc" to %"$$fundef_5_env_90"*
  %"$$fundef_5_env_voidp_114" = bitcast %"$$fundef_5_env_90"* %"$$fundef_5_envp_112" to i8*
  %"$$fundef_5_cloval_115" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_5_env_90"*, %TName_Bool*)* @"$fundef_5" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_5_env_voidp_114", 1
  %"$$fundef_5_env_address_116" = getelementptr inbounds %"$$fundef_5_env_90", %"$$fundef_5_env_90"* %"$$fundef_5_envp_112", i32 0, i32 0
  store [20 x i8] %address, [20 x i8]* %"$$fundef_5_env_address_116", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_5_cloval_115", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_4", align 8, !dbg !10
  %"$$retval_4_117" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_4", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_4_117"
}

define internal %TName_List_Message* @"$fundef_7"(%"$$fundef_7_env_92"* %0, i8* %1) !dbg !11 {
entry:
  %"$$fundef_7_env_ud-proxy.nilMessage_93" = getelementptr inbounds %"$$fundef_7_env_92", %"$$fundef_7_env_92"* %0, i32 0, i32 0
  %"$ud-proxy.nilMessage_envload_94" = load %TName_List_Message*, %TName_List_Message** %"$$fundef_7_env_ud-proxy.nilMessage_93", align 8
  %ud-proxy.nilMessage = alloca %TName_List_Message*, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_envload_94", %TName_List_Message** %ud-proxy.nilMessage, align 8
  %"$retval_8" = alloca %TName_List_Message*, align 8
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %entry
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %"$ud-proxy.nilMessage_100" = load %TName_List_Message*, %TName_List_Message** %ud-proxy.nilMessage, align 8
  %"$adtval_101_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_101_salloc" = call i8* @_salloc(i8* %"$adtval_101_load", i64 17)
  %"$adtval_101" = bitcast i8* %"$adtval_101_salloc" to %CName_Cons_Message*
  %"$adtgep_102" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_101", i32 0, i32 0
  store i8 0, i8* %"$adtgep_102", align 1
  %"$adtgep_103" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_101", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_103", align 8
  %"$adtgep_104" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_101", i32 0, i32 2
  store %TName_List_Message* %"$ud-proxy.nilMessage_100", %TName_List_Message** %"$adtgep_104", align 8
  %"$adtptr_105" = bitcast %CName_Cons_Message* %"$adtval_101" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_105", %TName_List_Message** %"$retval_8", align 8, !dbg !12
  %"$$retval_8_106" = load %TName_List_Message*, %TName_List_Message** %"$retval_8", align 8
  ret %TName_List_Message* %"$$retval_8_106"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !13 {
entry:
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %entry
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %"$adtval_156_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_156_salloc" = call i8* @_salloc(i8* %"$adtval_156_load", i64 1)
  %"$adtval_156" = bitcast i8* %"$adtval_156_salloc" to %CName_True*
  %"$adtgep_157" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_156", i32 0, i32 0
  store i8 0, i8* %"$adtgep_157", align 1
  %"$adtptr_158" = bitcast %CName_True* %"$adtval_156" to %TName_Bool*
  store %TName_Bool* %"$adtptr_158", %TName_Bool** @ud-proxy.true, align 8, !dbg !15
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_154"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %"$adtval_164_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_164_salloc" = call i8* @_salloc(i8* %"$adtval_164_load", i64 1)
  %"$adtval_164" = bitcast i8* %"$adtval_164_salloc" to %CName_Nil_Message*
  %"$adtgep_165" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_164", i32 0, i32 0
  store i8 1, i8* %"$adtgep_165", align 1
  %"$adtptr_166" = bitcast %CName_Nil_Message* %"$adtval_164" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_166", %TName_List_Message** @ud-proxy.nilMessage, align 8, !dbg !16
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_162"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$$fundef_7_envp_172_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_7_envp_172_salloc" = call i8* @_salloc(i8* %"$$fundef_7_envp_172_load", i64 8)
  %"$$fundef_7_envp_172" = bitcast i8* %"$$fundef_7_envp_172_salloc" to %"$$fundef_7_env_92"*
  %"$$fundef_7_env_voidp_174" = bitcast %"$$fundef_7_env_92"* %"$$fundef_7_envp_172" to i8*
  %"$$fundef_7_cloval_175" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_7_env_92"*, i8*)* @"$fundef_7" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_7_env_voidp_174", 1
  %"$$fundef_7_env_ud-proxy.nilMessage_176" = getelementptr inbounds %"$$fundef_7_env_92", %"$$fundef_7_env_92"* %"$$fundef_7_envp_172", i32 0, i32 0
  %"$ud-proxy.nilMessage_177" = load %TName_List_Message*, %TName_List_Message** @ud-proxy.nilMessage, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_177", %TName_List_Message** %"$$fundef_7_env_ud-proxy.nilMessage_176", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_7_cloval_175", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8, !dbg !17
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_170"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_3_env_91"*, [20 x i8]*)* @"$fundef_3" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8, !dbg !18
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_181"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$msgobj_191_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_191_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_191_salloc_load", i64 41)
  %"$msgobj_191_salloc" = bitcast i8* %"$msgobj_191_salloc_salloc" to [41 x i8]*
  %"$msgobj_191" = bitcast [41 x i8]* %"$msgobj_191_salloc" to i8*
  store i8 1, i8* %"$msgobj_191", align 1
  %"$msgobj_fname_193" = getelementptr i8, i8* %"$msgobj_191", i32 1
  %"$msgobj_fname_194" = bitcast i8* %"$msgobj_fname_193" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_192", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_194", align 8
  %"$msgobj_td_195" = getelementptr i8, i8* %"$msgobj_191", i32 17
  %"$msgobj_td_196" = bitcast i8* %"$msgobj_td_195" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_196", align 8
  %"$msgobj_v_198" = getelementptr i8, i8* %"$msgobj_191", i32 25
  %"$msgobj_v_199" = bitcast i8* %"$msgobj_v_198" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_197", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_199", align 8
  store i8* %"$msgobj_191", i8** @ud-proxy.eError, align 8, !dbg !19
  ret void
}

define void @_init_state() !dbg !20 {
entry:
  %"$admins_9" = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 1, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %entry
  %"$consume_205" = sub i64 %"$gasrem_201", 1
  store i64 %"$consume_205", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_204"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %"$execptr_load_211" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_212" = call i8* @_new_empty_map(i8* %"$execptr_load_211")
  %"$Emp_213" = bitcast i8* %"$_new_empty_map_call_212" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$Emp_213", %Map_ByStr20_Bool** %empty, align 8, !dbg !21
  %"$execptr_load_214" = load i8*, i8** @_execptr, align 8
  %"$empty_215" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_215_216" = bitcast %Map_ByStr20_Bool* %"$empty_215" to i8*
  %"$put_initialAdmin_217" = alloca [20 x i8], align 1
  %"$initialAdmin_218" = load [20 x i8], [20 x i8]* @initialAdmin, align 1
  store [20 x i8] %"$initialAdmin_218", [20 x i8]* %"$put_initialAdmin_217", align 1
  %"$$put_initialAdmin_217_219" = bitcast [20 x i8]* %"$put_initialAdmin_217" to i8*
  %"$ud-proxy.true_220" = load %TName_Bool*, %TName_Bool** @ud-proxy.true, align 8
  %"$$ud-proxy.true_220_221" = bitcast %TName_Bool* %"$ud-proxy.true_220" to i8*
  %"$put_call_222" = call i8* @_put(i8* %"$execptr_load_214", %_TyDescrTy_Typ* @"$TyDescr_Map_48", i8* %"$$empty_215_216", i8* %"$$put_initialAdmin_217_219", i8* %"$$ud-proxy.true_220_221")
  %"$_put_223" = bitcast i8* %"$put_call_222" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$_put_223", %Map_ByStr20_Bool** %"$admins_9", align 8, !dbg !22
  %"$execptr_load_224" = load i8*, i8** @_execptr, align 8
  %"$$admins_9_226" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %"$admins_9", align 8
  %"$update_value_227" = bitcast %Map_ByStr20_Bool* %"$$admins_9_226" to i8*
  call void @_update_field(i8* %"$execptr_load_224", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_225", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 0, i8* null, i8* %"$update_value_227"), !dbg !21
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_228"(%Uint128 %_amount, [20 x i8]* %"$_sender_229", [20 x i8]* %"$address_230", %TName_Bool* %isApproved) !dbg !23 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_229", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_230", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_231_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_231_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_231_salloc_load", i64 20)
  %"$indices_buf_231_salloc" = bitcast i8* %"$indices_buf_231_salloc_salloc" to [20 x i8]*
  %"$indices_buf_231" = bitcast [20 x i8]* %"$indices_buf_231_salloc" to i8*
  %"$indices_gep_232" = getelementptr i8, i8* %"$indices_buf_231", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_232" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_233" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_235" = call i8* @_fetch_field(i8* %"$execptr_load_233", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_234", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_231", i32 1), !dbg !24
  %"$maybeAdmin_236" = bitcast i8* %"$maybeAdmin_235" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_236", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_237" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_237_238" = bitcast %TName_Option_Bool* %"$maybeAdmin_237" to i8*
  %"$_literal_cost_call_239" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", i8* %"$$maybeAdmin_237_238")
  %"$gasadd_240" = add i64 %"$_literal_cost_call_239", 0
  %"$gasadd_241" = add i64 %"$gasadd_240", 1
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 %"$gasadd_241", %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %entry
  %"$consume_246" = sub i64 %"$gasrem_242", %"$gasadd_241"
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 2, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_250"
  %"$consume_256" = sub i64 %"$gasrem_252", 2
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %"$maybeAdmin_258" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_259" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_258", i32 0, i32 0
  %"$maybeAdmin_tag_260" = load i8, i8* %"$maybeAdmin_tag_259", align 1
  switch i8 %"$maybeAdmin_tag_260", label %"$empty_default_261" [
    i8 0, label %"$Some_262"
    i8 1, label %"$None_272"
  ], !dbg !25

"$Some_262":                                      ; preds = %"$have_gas_255"
  %"$maybeAdmin_263" = bitcast %TName_Option_Bool* %"$maybeAdmin_258" to %CName_Some_Bool*
  %"$approval_gep_264" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_263", i32 0, i32 1
  %"$approval_load_265" = load %TName_Bool*, %TName_Bool** %"$approval_gep_264", align 8
  %approval = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$approval_load_265", %TName_Bool** %approval, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$Some_262"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$Some_262"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$approval_271" = load %TName_Bool*, %TName_Bool** %approval, align 8
  store %TName_Bool* %"$approval_271", %TName_Bool** %isSenderAdmin, align 8, !dbg !26
  br label %"$matchsucc_257"

"$None_272":                                      ; preds = %"$have_gas_255"
  %"$maybeAdmin_273" = bitcast %TName_Option_Bool* %"$maybeAdmin_258" to %CName_None_Bool*
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$None_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$None_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$adtval_279_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_279_salloc" = call i8* @_salloc(i8* %"$adtval_279_load", i64 1)
  %"$adtval_279" = bitcast i8* %"$adtval_279_salloc" to %CName_False*
  %"$adtgep_280" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_279", i32 0, i32 0
  store i8 1, i8* %"$adtgep_280", align 1
  %"$adtptr_281" = bitcast %CName_False* %"$adtval_279" to %TName_Bool*
  store %TName_Bool* %"$adtptr_281", %TName_Bool** %isSenderAdmin, align 8, !dbg !29
  br label %"$matchsucc_257"

"$empty_default_261":                             ; preds = %"$have_gas_255"
  br label %"$matchsucc_257"

"$matchsucc_257":                                 ; preds = %"$have_gas_277", %"$have_gas_269", %"$empty_default_261"
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 2, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$matchsucc_257"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$matchsucc_257"
  %"$consume_286" = sub i64 %"$gasrem_282", 2
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %"$isSenderAdmin_288" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_289" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_288", i32 0, i32 0
  %"$isSenderAdmin_tag_290" = load i8, i8* %"$isSenderAdmin_tag_289", align 1
  switch i8 %"$isSenderAdmin_tag_290", label %"$empty_default_291" [
    i8 0, label %"$True_292"
    i8 1, label %"$False_337"
  ], !dbg !31

"$True_292":                                      ; preds = %"$have_gas_285"
  %"$isSenderAdmin_293" = bitcast %TName_Bool* %"$isSenderAdmin_288" to %CName_True*
  %"$isApproved_294" = bitcast %TName_Bool* %isApproved to i8*
  %"$_literal_cost_call_295" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", i8* %"$isApproved_294")
  %"$gasadd_296" = add i64 %"$_literal_cost_call_295", 1
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 %"$gasadd_296", %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$True_292"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$True_292"
  %"$consume_301" = sub i64 %"$gasrem_297", %"$gasadd_296"
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %"$indices_buf_302_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_302_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_302_salloc_load", i64 20)
  %"$indices_buf_302_salloc" = bitcast i8* %"$indices_buf_302_salloc_salloc" to [20 x i8]*
  %"$indices_buf_302" = bitcast [20 x i8]* %"$indices_buf_302_salloc" to i8*
  %"$indices_gep_303" = getelementptr i8, i8* %"$indices_buf_302", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_303" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_304" = load i8*, i8** @_execptr, align 8
  %"$update_value_306" = bitcast %TName_Bool* %isApproved to i8*
  call void @_update_field(i8* %"$execptr_load_304", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_305", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_302", i8* %"$update_value_306"), !dbg !32
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_300"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_310"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %"$ud-proxy.eAdminSet_0" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-proxy.eAdminSet_317" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8
  %"$ud-proxy.eAdminSet_fptr_318" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_317", 0
  %"$ud-proxy.eAdminSet_envptr_319" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_317", 1
  %"$ud-proxy.eAdminSet_address_320" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-proxy.eAdminSet_address_320", align 1
  %"$ud-proxy.eAdminSet_call_321" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_fptr_318"(i8* %"$ud-proxy.eAdminSet_envptr_319", [20 x i8]* %"$ud-proxy.eAdminSet_address_320"), !dbg !35
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_call_321", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_0", align 8, !dbg !35
  %"$ud-proxy.eAdminSet_1" = alloca i8*, align 8
  %"$$ud-proxy.eAdminSet_0_322" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_0", align 8
  %"$$ud-proxy.eAdminSet_0_fptr_323" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_0_322", 0
  %"$$ud-proxy.eAdminSet_0_envptr_324" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_0_322", 1
  %"$$ud-proxy.eAdminSet_0_call_325" = call i8* %"$$ud-proxy.eAdminSet_0_fptr_323"(i8* %"$$ud-proxy.eAdminSet_0_envptr_324", %TName_Bool* %isApproved), !dbg !35
  store i8* %"$$ud-proxy.eAdminSet_0_call_325", i8** %"$ud-proxy.eAdminSet_1", align 8, !dbg !35
  %"$$ud-proxy.eAdminSet_1_326" = load i8*, i8** %"$ud-proxy.eAdminSet_1", align 8
  store i8* %"$$ud-proxy.eAdminSet_1_326", i8** %e, align 8, !dbg !35
  %"$e_327" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_329" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$e_327")
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 %"$_literal_cost_call_329", %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_315"
  %"$consume_334" = sub i64 %"$gasrem_330", %"$_literal_cost_call_329"
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %"$execptr_load_335" = load i8*, i8** @_execptr, align 8
  %"$e_336" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_335", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$e_336"), !dbg !36
  br label %"$matchsucc_287"

"$False_337":                                     ; preds = %"$have_gas_285"
  %"$isSenderAdmin_338" = bitcast %TName_Bool* %"$isSenderAdmin_288" to %CName_False*
  %"$ud-proxy.eError_339" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_341" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_339")
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 %"$_literal_cost_call_341", %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$False_337"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$False_337"
  %"$consume_346" = sub i64 %"$gasrem_342", %"$_literal_cost_call_341"
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %"$execptr_load_347" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_348" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_347", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_348"), !dbg !37
  br label %"$matchsucc_287"

"$empty_default_291":                             ; preds = %"$have_gas_285"
  br label %"$matchsucc_287"

"$matchsucc_287":                                 ; preds = %"$have_gas_345", %"$have_gas_333", %"$empty_default_291"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) !dbg !39 {
entry:
  %"$_amount_350" = getelementptr i8, i8* %0, i32 0
  %"$_amount_351" = bitcast i8* %"$_amount_350" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_351", align 8
  %"$_sender_352" = getelementptr i8, i8* %0, i32 16
  %"$_sender_353" = bitcast i8* %"$_sender_352" to [20 x i8]*
  %"$address_354" = getelementptr i8, i8* %0, i32 36
  %"$address_355" = bitcast i8* %"$address_354" to [20 x i8]*
  %"$isApproved_356" = getelementptr i8, i8* %0, i32 56
  %"$isApproved_357" = bitcast i8* %"$isApproved_356" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_357", align 8
  call void @"$setAdmin_228"(%Uint128 %_amount, [20 x i8]* %"$_sender_353", [20 x i8]* %"$address_355", %TName_Bool* %isApproved), !dbg !40
  ret void
}

define internal void @"$bestow_358"(%Uint128 %_amount, [20 x i8]* %"$_sender_359", %String %label, [20 x i8]* %"$owner_360", [20 x i8]* %"$resolver_361") !dbg !41 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_359", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_360", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_361", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_362_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_362_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_362_salloc_load", i64 20)
  %"$indices_buf_362_salloc" = bitcast i8* %"$indices_buf_362_salloc_salloc" to [20 x i8]*
  %"$indices_buf_362" = bitcast [20 x i8]* %"$indices_buf_362_salloc" to i8*
  %"$indices_gep_363" = getelementptr i8, i8* %"$indices_buf_362", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_363" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_364" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_366" = call i8* @_fetch_field(i8* %"$execptr_load_364", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_365", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_362", i32 1), !dbg !42
  %"$maybeAdmin_367" = bitcast i8* %"$maybeAdmin_366" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_367", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_368" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_368_369" = bitcast %TName_Option_Bool* %"$maybeAdmin_368" to i8*
  %"$_literal_cost_call_370" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", i8* %"$$maybeAdmin_368_369")
  %"$gasadd_371" = add i64 %"$_literal_cost_call_370", 0
  %"$gasadd_372" = add i64 %"$gasadd_371", 1
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 %"$gasadd_372", %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %entry
  %"$consume_377" = sub i64 %"$gasrem_373", %"$gasadd_372"
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_376"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 2, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_381"
  %"$consume_387" = sub i64 %"$gasrem_383", 2
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %"$maybeAdmin_389" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_390" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_389", i32 0, i32 0
  %"$maybeAdmin_tag_391" = load i8, i8* %"$maybeAdmin_tag_390", align 1
  switch i8 %"$maybeAdmin_tag_391", label %"$empty_default_392" [
    i8 0, label %"$Some_393"
    i8 1, label %"$None_403"
  ], !dbg !43

"$Some_393":                                      ; preds = %"$have_gas_386"
  %"$maybeAdmin_394" = bitcast %TName_Option_Bool* %"$maybeAdmin_389" to %CName_Some_Bool*
  %"$isAdmin_gep_395" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_394", i32 0, i32 1
  %"$isAdmin_load_396" = load %TName_Bool*, %TName_Bool** %"$isAdmin_gep_395", align 8
  %isAdmin = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$isAdmin_load_396", %TName_Bool** %isAdmin, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$Some_393"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$Some_393"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$isAdmin_402" = load %TName_Bool*, %TName_Bool** %isAdmin, align 8
  store %TName_Bool* %"$isAdmin_402", %TName_Bool** %isSenderAdmin, align 8, !dbg !44
  br label %"$matchsucc_388"

"$None_403":                                      ; preds = %"$have_gas_386"
  %"$maybeAdmin_404" = bitcast %TName_Option_Bool* %"$maybeAdmin_389" to %CName_None_Bool*
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$None_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$None_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %"$adtval_410_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_410_salloc" = call i8* @_salloc(i8* %"$adtval_410_load", i64 1)
  %"$adtval_410" = bitcast i8* %"$adtval_410_salloc" to %CName_False*
  %"$adtgep_411" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_410", i32 0, i32 0
  store i8 1, i8* %"$adtgep_411", align 1
  %"$adtptr_412" = bitcast %CName_False* %"$adtval_410" to %TName_Bool*
  store %TName_Bool* %"$adtptr_412", %TName_Bool** %isSenderAdmin, align 8, !dbg !47
  br label %"$matchsucc_388"

"$empty_default_392":                             ; preds = %"$have_gas_386"
  br label %"$matchsucc_388"

"$matchsucc_388":                                 ; preds = %"$have_gas_408", %"$have_gas_400", %"$empty_default_392"
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 2, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$matchsucc_388"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$matchsucc_388"
  %"$consume_417" = sub i64 %"$gasrem_413", 2
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %"$isSenderAdmin_419" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_420" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_419", i32 0, i32 0
  %"$isSenderAdmin_tag_421" = load i8, i8* %"$isSenderAdmin_tag_420", align 1
  switch i8 %"$isSenderAdmin_tag_421", label %"$empty_default_422" [
    i8 0, label %"$True_423"
    i8 1, label %"$False_507"
  ], !dbg !49

"$True_423":                                      ; preds = %"$have_gas_416"
  %"$isSenderAdmin_424" = bitcast %TName_Bool* %"$isSenderAdmin_419" to %CName_True*
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$True_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$True_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_433"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %"$msgobj_440_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_440_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_440_salloc_load", i64 253)
  %"$msgobj_440_salloc" = bitcast i8* %"$msgobj_440_salloc_salloc" to [253 x i8]*
  %"$msgobj_440" = bitcast [253 x i8]* %"$msgobj_440_salloc" to i8*
  store i8 6, i8* %"$msgobj_440", align 1
  %"$msgobj_fname_442" = getelementptr i8, i8* %"$msgobj_440", i32 1
  %"$msgobj_fname_443" = bitcast i8* %"$msgobj_fname_442" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_441", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_443", align 8
  %"$msgobj_td_444" = getelementptr i8, i8* %"$msgobj_440", i32 17
  %"$msgobj_td_445" = bitcast i8* %"$msgobj_td_444" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_445", align 8
  %"$msgobj_v_447" = getelementptr i8, i8* %"$msgobj_440", i32 25
  %"$msgobj_v_448" = bitcast i8* %"$msgobj_v_447" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_446", i32 0, i32 0), i32 6 }, %String* %"$msgobj_v_448", align 8
  %"$msgobj_fname_450" = getelementptr i8, i8* %"$msgobj_440", i32 41
  %"$msgobj_fname_451" = bitcast i8* %"$msgobj_fname_450" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_449", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_451", align 8
  %"$msgobj_td_452" = getelementptr i8, i8* %"$msgobj_440", i32 57
  %"$msgobj_td_453" = bitcast i8* %"$msgobj_td_452" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_453", align 8
  %"$registry_454" = load [20 x i8], [20 x i8]* @registry, align 1
  %"$msgobj_v_455" = getelementptr i8, i8* %"$msgobj_440", i32 65
  %"$msgobj_v_456" = bitcast i8* %"$msgobj_v_455" to [20 x i8]*
  store [20 x i8] %"$registry_454", [20 x i8]* %"$msgobj_v_456", align 1
  %"$msgobj_fname_458" = getelementptr i8, i8* %"$msgobj_440", i32 85
  %"$msgobj_fname_459" = bitcast i8* %"$msgobj_fname_458" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_457", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_459", align 8
  %"$msgobj_td_460" = getelementptr i8, i8* %"$msgobj_440", i32 101
  %"$msgobj_td_461" = bitcast i8* %"$msgobj_td_460" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_461", align 8
  %"$msgobj_v_462" = getelementptr i8, i8* %"$msgobj_440", i32 109
  %"$msgobj_v_463" = bitcast i8* %"$msgobj_v_462" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_463", align 8
  %"$msgobj_fname_465" = getelementptr i8, i8* %"$msgobj_440", i32 125
  %"$msgobj_fname_466" = bitcast i8* %"$msgobj_fname_465" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_464", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_466", align 8
  %"$msgobj_td_467" = getelementptr i8, i8* %"$msgobj_440", i32 141
  %"$msgobj_td_468" = bitcast i8* %"$msgobj_td_467" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_468", align 8
  %"$msgobj_v_469" = getelementptr i8, i8* %"$msgobj_440", i32 149
  %"$msgobj_v_470" = bitcast i8* %"$msgobj_v_469" to %String*
  store %String %label, %String* %"$msgobj_v_470", align 8
  %"$msgobj_fname_472" = getelementptr i8, i8* %"$msgobj_440", i32 165
  %"$msgobj_fname_473" = bitcast i8* %"$msgobj_fname_472" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_471", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_473", align 8
  %"$msgobj_td_474" = getelementptr i8, i8* %"$msgobj_440", i32 181
  %"$msgobj_td_475" = bitcast i8* %"$msgobj_td_474" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_475", align 8
  %"$msgobj_v_476" = getelementptr i8, i8* %"$msgobj_440", i32 189
  %"$msgobj_v_477" = bitcast i8* %"$msgobj_v_476" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_477", align 1
  %"$msgobj_fname_479" = getelementptr i8, i8* %"$msgobj_440", i32 209
  %"$msgobj_fname_480" = bitcast i8* %"$msgobj_fname_479" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_478", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_480", align 8
  %"$msgobj_td_481" = getelementptr i8, i8* %"$msgobj_440", i32 225
  %"$msgobj_td_482" = bitcast i8* %"$msgobj_td_481" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_482", align 8
  %"$msgobj_v_483" = getelementptr i8, i8* %"$msgobj_440", i32 233
  %"$msgobj_v_484" = bitcast i8* %"$msgobj_v_483" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_484", align 1
  store i8* %"$msgobj_440", i8** %m, align 8, !dbg !50
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %"$have_gas_438"
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  %"$ud-proxy.oneMsg_2" = alloca %TName_List_Message*, align 8
  %"$ud-proxy.oneMsg_491" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8
  %"$ud-proxy.oneMsg_fptr_492" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_491", 0
  %"$ud-proxy.oneMsg_envptr_493" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_491", 1
  %"$m_494" = load i8*, i8** %m, align 8
  %"$ud-proxy.oneMsg_call_495" = call %TName_List_Message* %"$ud-proxy.oneMsg_fptr_492"(i8* %"$ud-proxy.oneMsg_envptr_493", i8* %"$m_494"), !dbg !53
  store %TName_List_Message* %"$ud-proxy.oneMsg_call_495", %TName_List_Message** %"$ud-proxy.oneMsg_2", align 8, !dbg !53
  %"$$ud-proxy.oneMsg_2_496" = load %TName_List_Message*, %TName_List_Message** %"$ud-proxy.oneMsg_2", align 8
  store %TName_List_Message* %"$$ud-proxy.oneMsg_2_496", %TName_List_Message** %msgs, align 8, !dbg !53
  %"$msgs_497" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_497_498" = bitcast %TName_List_Message* %"$msgs_497" to i8*
  %"$_literal_cost_call_499" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", i8* %"$$msgs_497_498")
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 %"$_literal_cost_call_499", %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %"$have_gas_489"
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %"$have_gas_489"
  %"$consume_504" = sub i64 %"$gasrem_500", %"$_literal_cost_call_499"
  store i64 %"$consume_504", i64* @_gasrem, align 8
  %"$execptr_load_505" = load i8*, i8** @_execptr, align 8
  %"$msgs_506" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_505", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %TName_List_Message* %"$msgs_506"), !dbg !54
  br label %"$matchsucc_418"

"$False_507":                                     ; preds = %"$have_gas_416"
  %"$isSenderAdmin_508" = bitcast %TName_Bool* %"$isSenderAdmin_419" to %CName_False*
  %"$ud-proxy.eError_509" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_511" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_509")
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 %"$_literal_cost_call_511", %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$False_507"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$False_507"
  %"$consume_516" = sub i64 %"$gasrem_512", %"$_literal_cost_call_511"
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$execptr_load_517" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_518" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_517", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_518"), !dbg !55
  br label %"$matchsucc_418"

"$empty_default_422":                             ; preds = %"$have_gas_416"
  br label %"$matchsucc_418"

"$matchsucc_418":                                 ; preds = %"$have_gas_515", %"$have_gas_503", %"$empty_default_422"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @bestow(i8* %0) !dbg !57 {
entry:
  %"$_amount_520" = getelementptr i8, i8* %0, i32 0
  %"$_amount_521" = bitcast i8* %"$_amount_520" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_521", align 8
  %"$_sender_522" = getelementptr i8, i8* %0, i32 16
  %"$_sender_523" = bitcast i8* %"$_sender_522" to [20 x i8]*
  %"$label_524" = getelementptr i8, i8* %0, i32 36
  %"$label_525" = bitcast i8* %"$label_524" to %String*
  %label = load %String, %String* %"$label_525", align 8
  %"$owner_526" = getelementptr i8, i8* %0, i32 52
  %"$owner_527" = bitcast i8* %"$owner_526" to [20 x i8]*
  %"$resolver_528" = getelementptr i8, i8* %0, i32 72
  %"$resolver_529" = bitcast i8* %"$resolver_528" to [20 x i8]*
  call void @"$bestow_358"(%Uint128 %_amount, [20 x i8]* %"$_sender_523", %String %label, [20 x i8]* %"$owner_527", [20 x i8]* %"$resolver_529"), !dbg !58
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
