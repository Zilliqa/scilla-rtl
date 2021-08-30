

; gas_remaining: 4001918
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
%"$ParamDescr_545" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_546" = type { %ParamDescrString, i32, %"$ParamDescr_545"* }
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
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_initialAdmin = global [20 x i8] zeroinitializer
@_cparam_registry = global [20 x i8] zeroinitializer
@"$admins_234" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_243" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_315" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_377" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_454" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_459" = unnamed_addr constant [6 x i8] c"bestow"
@"$stringlit_462" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_470" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_477" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_484" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_491" = unnamed_addr constant [8 x i8] c"resolver"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_Addr_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Map_48", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_Bystr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 20
@"$pname__scilla_version_547" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_548" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_549" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_initialAdmin_550" = unnamed_addr constant [12 x i8] c"initialAdmin"
@"$pname_registry_551" = unnamed_addr constant [8 x i8] c"registry"
@_contract_parameters = constant [5 x %"$ParamDescr_545"] [%"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_547", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_14" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_548", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_549", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_30" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialAdmin_550", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_registry_551", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_552" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_553" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_554" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_555" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_556" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_557" = unnamed_addr constant [5 x %"$ParamDescr_545"] [%"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_552", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_22" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_553", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_554", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_555", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_556", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45" }]
@"$tname_setAdmin_558" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_559" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_560" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_561" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_562" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_563" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_564" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_565" = unnamed_addr constant [6 x %"$ParamDescr_545"] [%"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_559", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_22" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_560", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_561", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_562", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_28" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_563", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }, %"$ParamDescr_545" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_564", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }]
@"$tname_bestow_566" = unnamed_addr constant [6 x i8] c"bestow"
@_transition_parameters = constant [2 x %"$TransDescr_546"] [%"$TransDescr_546" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_558", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_545"* getelementptr inbounds ([5 x %"$ParamDescr_545"], [5 x %"$ParamDescr_545"]* @"$tparams_setAdmin_557", i32 0, i32 0) }, %"$TransDescr_546" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_566", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_545"* getelementptr inbounds ([6 x %"$ParamDescr_545"], [6 x %"$ParamDescr_545"]* @"$tparams_bestow_565", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal i8* @"$fundef_5"(%"$$fundef_5_env_90"* %0, %TName_Bool* %1) {
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
  store i8* %"$msgobj_125", i8** %"$retval_6", align 8
  %"$$retval_6_150" = load i8*, i8** %"$retval_6", align 8
  ret i8* %"$$retval_6_150"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_3"(%"$$fundef_3_env_91"* %0, [20 x i8]* %1) {
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
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_5_cloval_115", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_4", align 8
  %"$$retval_4_117" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_4", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_4_117"
}

define internal %TName_List_Message* @"$fundef_7"(%"$$fundef_7_env_92"* %0, i8* %1) {
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
  store %TName_List_Message* %"$adtptr_105", %TName_List_Message** %"$retval_8", align 8
  %"$$retval_8_106" = load %TName_List_Message*, %TName_List_Message** %"$retval_8", align 8
  ret %TName_List_Message* %"$$retval_8_106"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
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
  store %TName_Bool* %"$adtptr_158", %TName_Bool** @ud-proxy.true, align 8
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
  store %TName_List_Message* %"$adtptr_166", %TName_List_Message** @ud-proxy.nilMessage, align 8
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
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_7_cloval_175", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_170"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_3_env_91"*, [20 x i8]*)* @"$fundef_3" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8
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
  store i8* %"$msgobj_191", i8** @ud-proxy.eError, align 8
  ret void
}

define void @_init_state() {
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
  %"$_new_empty_map_213" = bitcast i8* %"$_new_empty_map_call_212" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$_new_empty_map_213", %Map_ByStr20_Bool** %empty, align 8
  %"$empty_214" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_214_215" = bitcast %Map_ByStr20_Bool* %"$empty_214" to i8*
  %"$_lengthof_call_216" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_48", i8* %"$$empty_214_215")
  %"$gasadd_217" = add i64 1, %"$_lengthof_call_216"
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 %"$gasadd_217", %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_209"
  %"$consume_222" = sub i64 %"$gasrem_218", %"$gasadd_217"
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$execptr_load_223" = load i8*, i8** @_execptr, align 8
  %"$empty_224" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_224_225" = bitcast %Map_ByStr20_Bool* %"$empty_224" to i8*
  %"$put_initialAdmin_226" = alloca [20 x i8], align 1
  %"$initialAdmin_227" = load [20 x i8], [20 x i8]* @_cparam_initialAdmin, align 1
  store [20 x i8] %"$initialAdmin_227", [20 x i8]* %"$put_initialAdmin_226", align 1
  %"$$put_initialAdmin_226_228" = bitcast [20 x i8]* %"$put_initialAdmin_226" to i8*
  %"$ud-proxy.true_229" = load %TName_Bool*, %TName_Bool** @ud-proxy.true, align 8
  %"$$ud-proxy.true_229_230" = bitcast %TName_Bool* %"$ud-proxy.true_229" to i8*
  %"$put_call_231" = call i8* @_put(i8* %"$execptr_load_223", %_TyDescrTy_Typ* @"$TyDescr_Map_48", i8* %"$$empty_224_225", i8* %"$$put_initialAdmin_226_228", i8* %"$$ud-proxy.true_229_230")
  %"$put_232" = bitcast i8* %"$put_call_231" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$put_232", %Map_ByStr20_Bool** %"$admins_9", align 8
  %"$execptr_load_233" = load i8*, i8** @_execptr, align 8
  %"$$admins_9_235" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %"$admins_9", align 8
  %"$update_value_236" = bitcast %Map_ByStr20_Bool* %"$$admins_9_235" to i8*
  call void @_update_field(i8* %"$execptr_load_233", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_234", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 0, i8* null, i8* %"$update_value_236")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_237"(%Uint128 %_amount, [20 x i8]* %"$_origin_238", [20 x i8]* %"$_sender_239", [20 x i8]* %"$address_240", %TName_Bool* %isApproved) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_238", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_239", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_240", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_241_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_241_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_241_salloc_load", i64 20)
  %"$indices_buf_241_salloc" = bitcast i8* %"$indices_buf_241_salloc_salloc" to [20 x i8]*
  %"$indices_buf_241" = bitcast [20 x i8]* %"$indices_buf_241_salloc" to i8*
  %"$indices_gep_242" = getelementptr i8, i8* %"$indices_buf_241", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_242" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_244" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_245" = call i8* @_fetch_field(i8* %"$execptr_load_244", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_243", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_241", i32 1)
  %"$maybeAdmin_246" = bitcast i8* %"$maybeAdmin_call_245" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_246", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_247" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_247_248" = bitcast %TName_Option_Bool* %"$maybeAdmin_247" to i8*
  %"$_literal_cost_call_249" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", i8* %"$$maybeAdmin_247_248")
  %"$gasadd_250" = add i64 %"$_literal_cost_call_249", 0
  %"$gasadd_251" = add i64 %"$gasadd_250", 1
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 %"$gasadd_251", %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %entry
  %"$consume_256" = sub i64 %"$gasrem_252", %"$gasadd_251"
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_255"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 2, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_260"
  %"$consume_266" = sub i64 %"$gasrem_262", 2
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$maybeAdmin_268" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_269" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_268", i32 0, i32 0
  %"$maybeAdmin_tag_270" = load i8, i8* %"$maybeAdmin_tag_269", align 1
  switch i8 %"$maybeAdmin_tag_270", label %"$empty_default_271" [
    i8 0, label %"$Some_272"
    i8 1, label %"$None_282"
  ]

"$Some_272":                                      ; preds = %"$have_gas_265"
  %"$maybeAdmin_273" = bitcast %TName_Option_Bool* %"$maybeAdmin_268" to %CName_Some_Bool*
  %"$approval_gep_274" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_273", i32 0, i32 1
  %"$approval_load_275" = load %TName_Bool*, %TName_Bool** %"$approval_gep_274", align 8
  %approval = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$approval_load_275", %TName_Bool** %approval, align 8
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$Some_272"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$Some_272"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$approval_281" = load %TName_Bool*, %TName_Bool** %approval, align 8
  store %TName_Bool* %"$approval_281", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_267"

"$None_282":                                      ; preds = %"$have_gas_265"
  %"$maybeAdmin_283" = bitcast %TName_Option_Bool* %"$maybeAdmin_268" to %CName_None_Bool*
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$None_282"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$None_282"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$adtval_289_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_289_salloc" = call i8* @_salloc(i8* %"$adtval_289_load", i64 1)
  %"$adtval_289" = bitcast i8* %"$adtval_289_salloc" to %CName_False*
  %"$adtgep_290" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_289", i32 0, i32 0
  store i8 1, i8* %"$adtgep_290", align 1
  %"$adtptr_291" = bitcast %CName_False* %"$adtval_289" to %TName_Bool*
  store %TName_Bool* %"$adtptr_291", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_267"

"$empty_default_271":                             ; preds = %"$have_gas_265"
  br label %"$matchsucc_267"

"$matchsucc_267":                                 ; preds = %"$have_gas_287", %"$have_gas_279", %"$empty_default_271"
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 2, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$matchsucc_267"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$matchsucc_267"
  %"$consume_296" = sub i64 %"$gasrem_292", 2
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %"$isSenderAdmin_298" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_299" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_298", i32 0, i32 0
  %"$isSenderAdmin_tag_300" = load i8, i8* %"$isSenderAdmin_tag_299", align 1
  switch i8 %"$isSenderAdmin_tag_300", label %"$empty_default_301" [
    i8 0, label %"$True_302"
    i8 1, label %"$False_347"
  ]

"$True_302":                                      ; preds = %"$have_gas_295"
  %"$isSenderAdmin_303" = bitcast %TName_Bool* %"$isSenderAdmin_298" to %CName_True*
  %"$isApproved_304" = bitcast %TName_Bool* %isApproved to i8*
  %"$_literal_cost_call_305" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", i8* %"$isApproved_304")
  %"$gasadd_306" = add i64 %"$_literal_cost_call_305", 1
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 %"$gasadd_306", %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$True_302"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$True_302"
  %"$consume_311" = sub i64 %"$gasrem_307", %"$gasadd_306"
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$indices_buf_312_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_312_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_312_salloc_load", i64 20)
  %"$indices_buf_312_salloc" = bitcast i8* %"$indices_buf_312_salloc_salloc" to [20 x i8]*
  %"$indices_buf_312" = bitcast [20 x i8]* %"$indices_buf_312_salloc" to i8*
  %"$indices_gep_313" = getelementptr i8, i8* %"$indices_buf_312", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_313" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_314" = load i8*, i8** @_execptr, align 8
  %"$update_value_316" = bitcast %TName_Bool* %isApproved to i8*
  call void @_update_field(i8* %"$execptr_load_314", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_315", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_312", i8* %"$update_value_316")
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_310"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_320"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %"$ud-proxy.eAdminSet_0" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-proxy.eAdminSet_327" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8
  %"$ud-proxy.eAdminSet_fptr_328" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_327", 0
  %"$ud-proxy.eAdminSet_envptr_329" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_327", 1
  %"$ud-proxy.eAdminSet_address_330" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-proxy.eAdminSet_address_330", align 1
  %"$ud-proxy.eAdminSet_call_331" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_fptr_328"(i8* %"$ud-proxy.eAdminSet_envptr_329", [20 x i8]* %"$ud-proxy.eAdminSet_address_330")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_call_331", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_0", align 8
  %"$ud-proxy.eAdminSet_1" = alloca i8*, align 8
  %"$$ud-proxy.eAdminSet_0_332" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_0", align 8
  %"$$ud-proxy.eAdminSet_0_fptr_333" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_0_332", 0
  %"$$ud-proxy.eAdminSet_0_envptr_334" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_0_332", 1
  %"$$ud-proxy.eAdminSet_0_call_335" = call i8* %"$$ud-proxy.eAdminSet_0_fptr_333"(i8* %"$$ud-proxy.eAdminSet_0_envptr_334", %TName_Bool* %isApproved)
  store i8* %"$$ud-proxy.eAdminSet_0_call_335", i8** %"$ud-proxy.eAdminSet_1", align 8
  %"$$ud-proxy.eAdminSet_1_336" = load i8*, i8** %"$ud-proxy.eAdminSet_1", align 8
  store i8* %"$$ud-proxy.eAdminSet_1_336", i8** %e, align 8
  %"$e_337" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_339" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$e_337")
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 %"$_literal_cost_call_339", %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_325"
  %"$consume_344" = sub i64 %"$gasrem_340", %"$_literal_cost_call_339"
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %"$execptr_load_345" = load i8*, i8** @_execptr, align 8
  %"$e_346" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_345", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$e_346")
  br label %"$matchsucc_297"

"$False_347":                                     ; preds = %"$have_gas_295"
  %"$isSenderAdmin_348" = bitcast %TName_Bool* %"$isSenderAdmin_298" to %CName_False*
  %"$ud-proxy.eError_349" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_351" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_349")
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 %"$_literal_cost_call_351", %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$False_347"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$False_347"
  %"$consume_356" = sub i64 %"$gasrem_352", %"$_literal_cost_call_351"
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %"$execptr_load_357" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_358" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_357", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_358")
  br label %"$matchsucc_297"

"$empty_default_301":                             ; preds = %"$have_gas_295"
  br label %"$matchsucc_297"

"$matchsucc_297":                                 ; preds = %"$have_gas_355", %"$have_gas_343", %"$empty_default_301"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) {
entry:
  %"$_amount_360" = getelementptr i8, i8* %0, i32 0
  %"$_amount_361" = bitcast i8* %"$_amount_360" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_361", align 8
  %"$_origin_362" = getelementptr i8, i8* %0, i32 16
  %"$_origin_363" = bitcast i8* %"$_origin_362" to [20 x i8]*
  %"$_sender_364" = getelementptr i8, i8* %0, i32 36
  %"$_sender_365" = bitcast i8* %"$_sender_364" to [20 x i8]*
  %"$address_366" = getelementptr i8, i8* %0, i32 56
  %"$address_367" = bitcast i8* %"$address_366" to [20 x i8]*
  %"$isApproved_368" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_369" = bitcast i8* %"$isApproved_368" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_369", align 8
  call void @"$setAdmin_237"(%Uint128 %_amount, [20 x i8]* %"$_origin_363", [20 x i8]* %"$_sender_365", [20 x i8]* %"$address_367", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$bestow_370"(%Uint128 %_amount, [20 x i8]* %"$_origin_371", [20 x i8]* %"$_sender_372", %String %label, [20 x i8]* %"$owner_373", [20 x i8]* %"$resolver_374") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_371", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_372", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_373", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_374", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_375_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_375_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_375_salloc_load", i64 20)
  %"$indices_buf_375_salloc" = bitcast i8* %"$indices_buf_375_salloc_salloc" to [20 x i8]*
  %"$indices_buf_375" = bitcast [20 x i8]* %"$indices_buf_375_salloc" to i8*
  %"$indices_gep_376" = getelementptr i8, i8* %"$indices_buf_375", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_376" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_378" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_379" = call i8* @_fetch_field(i8* %"$execptr_load_378", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_377", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_375", i32 1)
  %"$maybeAdmin_380" = bitcast i8* %"$maybeAdmin_call_379" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_380", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_381" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_381_382" = bitcast %TName_Option_Bool* %"$maybeAdmin_381" to i8*
  %"$_literal_cost_call_383" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", i8* %"$$maybeAdmin_381_382")
  %"$gasadd_384" = add i64 %"$_literal_cost_call_383", 0
  %"$gasadd_385" = add i64 %"$gasadd_384", 1
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 %"$gasadd_385", %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %entry
  %"$consume_390" = sub i64 %"$gasrem_386", %"$gasadd_385"
  store i64 %"$consume_390", i64* @_gasrem, align 8
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 1, %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$have_gas_389"
  %"$consume_395" = sub i64 %"$gasrem_391", 1
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 2, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %"$have_gas_394"
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %"$have_gas_394"
  %"$consume_400" = sub i64 %"$gasrem_396", 2
  store i64 %"$consume_400", i64* @_gasrem, align 8
  %"$maybeAdmin_402" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_403" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_402", i32 0, i32 0
  %"$maybeAdmin_tag_404" = load i8, i8* %"$maybeAdmin_tag_403", align 1
  switch i8 %"$maybeAdmin_tag_404", label %"$empty_default_405" [
    i8 0, label %"$Some_406"
    i8 1, label %"$None_416"
  ]

"$Some_406":                                      ; preds = %"$have_gas_399"
  %"$maybeAdmin_407" = bitcast %TName_Option_Bool* %"$maybeAdmin_402" to %CName_Some_Bool*
  %"$isAdmin_gep_408" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_407", i32 0, i32 1
  %"$isAdmin_load_409" = load %TName_Bool*, %TName_Bool** %"$isAdmin_gep_408", align 8
  %isAdmin = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$isAdmin_load_409", %TName_Bool** %isAdmin, align 8
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$Some_406"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$Some_406"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %"$isAdmin_415" = load %TName_Bool*, %TName_Bool** %isAdmin, align 8
  store %TName_Bool* %"$isAdmin_415", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_401"

"$None_416":                                      ; preds = %"$have_gas_399"
  %"$maybeAdmin_417" = bitcast %TName_Option_Bool* %"$maybeAdmin_402" to %CName_None_Bool*
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$None_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$None_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %"$adtval_423_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_423_salloc" = call i8* @_salloc(i8* %"$adtval_423_load", i64 1)
  %"$adtval_423" = bitcast i8* %"$adtval_423_salloc" to %CName_False*
  %"$adtgep_424" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_423", i32 0, i32 0
  store i8 1, i8* %"$adtgep_424", align 1
  %"$adtptr_425" = bitcast %CName_False* %"$adtval_423" to %TName_Bool*
  store %TName_Bool* %"$adtptr_425", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_401"

"$empty_default_405":                             ; preds = %"$have_gas_399"
  br label %"$matchsucc_401"

"$matchsucc_401":                                 ; preds = %"$have_gas_421", %"$have_gas_413", %"$empty_default_405"
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 2, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$matchsucc_401"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$matchsucc_401"
  %"$consume_430" = sub i64 %"$gasrem_426", 2
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %"$isSenderAdmin_432" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_433" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_432", i32 0, i32 0
  %"$isSenderAdmin_tag_434" = load i8, i8* %"$isSenderAdmin_tag_433", align 1
  switch i8 %"$isSenderAdmin_tag_434", label %"$empty_default_435" [
    i8 0, label %"$True_436"
    i8 1, label %"$False_520"
  ]

"$True_436":                                      ; preds = %"$have_gas_429"
  %"$isSenderAdmin_437" = bitcast %TName_Bool* %"$isSenderAdmin_432" to %CName_True*
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$True_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$True_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_441"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %"$msgobj_453_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_453_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_453_salloc_load", i64 253)
  %"$msgobj_453_salloc" = bitcast i8* %"$msgobj_453_salloc_salloc" to [253 x i8]*
  %"$msgobj_453" = bitcast [253 x i8]* %"$msgobj_453_salloc" to i8*
  store i8 6, i8* %"$msgobj_453", align 1
  %"$msgobj_fname_455" = getelementptr i8, i8* %"$msgobj_453", i32 1
  %"$msgobj_fname_456" = bitcast i8* %"$msgobj_fname_455" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_454", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_456", align 8
  %"$msgobj_td_457" = getelementptr i8, i8* %"$msgobj_453", i32 17
  %"$msgobj_td_458" = bitcast i8* %"$msgobj_td_457" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_458", align 8
  %"$msgobj_v_460" = getelementptr i8, i8* %"$msgobj_453", i32 25
  %"$msgobj_v_461" = bitcast i8* %"$msgobj_v_460" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_459", i32 0, i32 0), i32 6 }, %String* %"$msgobj_v_461", align 8
  %"$msgobj_fname_463" = getelementptr i8, i8* %"$msgobj_453", i32 41
  %"$msgobj_fname_464" = bitcast i8* %"$msgobj_fname_463" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_462", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_464", align 8
  %"$msgobj_td_465" = getelementptr i8, i8* %"$msgobj_453", i32 57
  %"$msgobj_td_466" = bitcast i8* %"$msgobj_td_465" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_466", align 8
  %"$registry_467" = load [20 x i8], [20 x i8]* @_cparam_registry, align 1
  %"$msgobj_v_468" = getelementptr i8, i8* %"$msgobj_453", i32 65
  %"$msgobj_v_469" = bitcast i8* %"$msgobj_v_468" to [20 x i8]*
  store [20 x i8] %"$registry_467", [20 x i8]* %"$msgobj_v_469", align 1
  %"$msgobj_fname_471" = getelementptr i8, i8* %"$msgobj_453", i32 85
  %"$msgobj_fname_472" = bitcast i8* %"$msgobj_fname_471" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_470", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_472", align 8
  %"$msgobj_td_473" = getelementptr i8, i8* %"$msgobj_453", i32 101
  %"$msgobj_td_474" = bitcast i8* %"$msgobj_td_473" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_474", align 8
  %"$msgobj_v_475" = getelementptr i8, i8* %"$msgobj_453", i32 109
  %"$msgobj_v_476" = bitcast i8* %"$msgobj_v_475" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_476", align 8
  %"$msgobj_fname_478" = getelementptr i8, i8* %"$msgobj_453", i32 125
  %"$msgobj_fname_479" = bitcast i8* %"$msgobj_fname_478" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_477", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_479", align 8
  %"$msgobj_td_480" = getelementptr i8, i8* %"$msgobj_453", i32 141
  %"$msgobj_td_481" = bitcast i8* %"$msgobj_td_480" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_481", align 8
  %"$msgobj_v_482" = getelementptr i8, i8* %"$msgobj_453", i32 149
  %"$msgobj_v_483" = bitcast i8* %"$msgobj_v_482" to %String*
  store %String %label, %String* %"$msgobj_v_483", align 8
  %"$msgobj_fname_485" = getelementptr i8, i8* %"$msgobj_453", i32 165
  %"$msgobj_fname_486" = bitcast i8* %"$msgobj_fname_485" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_484", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_486", align 8
  %"$msgobj_td_487" = getelementptr i8, i8* %"$msgobj_453", i32 181
  %"$msgobj_td_488" = bitcast i8* %"$msgobj_td_487" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_488", align 8
  %"$msgobj_v_489" = getelementptr i8, i8* %"$msgobj_453", i32 189
  %"$msgobj_v_490" = bitcast i8* %"$msgobj_v_489" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_490", align 1
  %"$msgobj_fname_492" = getelementptr i8, i8* %"$msgobj_453", i32 209
  %"$msgobj_fname_493" = bitcast i8* %"$msgobj_fname_492" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_491", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_493", align 8
  %"$msgobj_td_494" = getelementptr i8, i8* %"$msgobj_453", i32 225
  %"$msgobj_td_495" = bitcast i8* %"$msgobj_td_494" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_495", align 8
  %"$msgobj_v_496" = getelementptr i8, i8* %"$msgobj_453", i32 233
  %"$msgobj_v_497" = bitcast i8* %"$msgobj_v_496" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_497", align 1
  store i8* %"$msgobj_453", i8** %m, align 8
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$have_gas_451"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  %"$ud-proxy.oneMsg_2" = alloca %TName_List_Message*, align 8
  %"$ud-proxy.oneMsg_504" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8
  %"$ud-proxy.oneMsg_fptr_505" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_504", 0
  %"$ud-proxy.oneMsg_envptr_506" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_504", 1
  %"$m_507" = load i8*, i8** %m, align 8
  %"$ud-proxy.oneMsg_call_508" = call %TName_List_Message* %"$ud-proxy.oneMsg_fptr_505"(i8* %"$ud-proxy.oneMsg_envptr_506", i8* %"$m_507")
  store %TName_List_Message* %"$ud-proxy.oneMsg_call_508", %TName_List_Message** %"$ud-proxy.oneMsg_2", align 8
  %"$$ud-proxy.oneMsg_2_509" = load %TName_List_Message*, %TName_List_Message** %"$ud-proxy.oneMsg_2", align 8
  store %TName_List_Message* %"$$ud-proxy.oneMsg_2_509", %TName_List_Message** %msgs, align 8
  %"$msgs_510" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_510_511" = bitcast %TName_List_Message* %"$msgs_510" to i8*
  %"$_literal_cost_call_512" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", i8* %"$$msgs_510_511")
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 %"$_literal_cost_call_512", %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_502"
  %"$consume_517" = sub i64 %"$gasrem_513", %"$_literal_cost_call_512"
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$execptr_load_518" = load i8*, i8** @_execptr, align 8
  %"$msgs_519" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_518", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %TName_List_Message* %"$msgs_519")
  br label %"$matchsucc_431"

"$False_520":                                     ; preds = %"$have_gas_429"
  %"$isSenderAdmin_521" = bitcast %TName_Bool* %"$isSenderAdmin_432" to %CName_False*
  %"$ud-proxy.eError_522" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_524" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_522")
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 %"$_literal_cost_call_524", %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$False_520"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$False_520"
  %"$consume_529" = sub i64 %"$gasrem_525", %"$_literal_cost_call_524"
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$execptr_load_530" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_531" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_530", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_531")
  br label %"$matchsucc_431"

"$empty_default_435":                             ; preds = %"$have_gas_429"
  br label %"$matchsucc_431"

"$matchsucc_431":                                 ; preds = %"$have_gas_528", %"$have_gas_516", %"$empty_default_435"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @bestow(i8* %0) {
entry:
  %"$_amount_533" = getelementptr i8, i8* %0, i32 0
  %"$_amount_534" = bitcast i8* %"$_amount_533" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_534", align 8
  %"$_origin_535" = getelementptr i8, i8* %0, i32 16
  %"$_origin_536" = bitcast i8* %"$_origin_535" to [20 x i8]*
  %"$_sender_537" = getelementptr i8, i8* %0, i32 36
  %"$_sender_538" = bitcast i8* %"$_sender_537" to [20 x i8]*
  %"$label_539" = getelementptr i8, i8* %0, i32 56
  %"$label_540" = bitcast i8* %"$label_539" to %String*
  %label = load %String, %String* %"$label_540", align 8
  %"$owner_541" = getelementptr i8, i8* %0, i32 72
  %"$owner_542" = bitcast i8* %"$owner_541" to [20 x i8]*
  %"$resolver_543" = getelementptr i8, i8* %0, i32 92
  %"$resolver_544" = bitcast i8* %"$resolver_543" to [20 x i8]*
  call void @"$bestow_370"(%Uint128 %_amount, [20 x i8]* %"$_origin_536", [20 x i8]* %"$_sender_538", %String %label, [20 x i8]* %"$owner_542", [20 x i8]* %"$resolver_544")
  ret void
}
