

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
%"$ParamDescr_536" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_537" = type { %ParamDescrString, i32, %"$ParamDescr_536"* }
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
@"$admins_306" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_368" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_445" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_450" = unnamed_addr constant [6 x i8] c"bestow"
@"$stringlit_453" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_461" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_468" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_475" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_482" = unnamed_addr constant [8 x i8] c"resolver"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_Addr_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Map_48", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_Bystr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 20
@"$pname__scilla_version_538" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_539" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname_initialAdmin_540" = unnamed_addr constant [12 x i8] c"initialAdmin"
@"$pname_registry_541" = unnamed_addr constant [8 x i8] c"registry"
@_contract_parameters = constant [4 x %"$ParamDescr_536"] [%"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_538", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_14" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_539", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialAdmin_540", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_registry_541", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }]
@_contract_parameters_length = constant i32 4
@"$tpname__amount_542" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_543" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_544" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_545" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_546" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_547" = unnamed_addr constant [5 x %"$ParamDescr_536"] [%"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_542", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_22" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_543", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_544", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_545", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_546", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45" }]
@"$tname_setAdmin_548" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_549" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_550" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_551" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_552" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_553" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_554" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_555" = unnamed_addr constant [6 x %"$ParamDescr_536"] [%"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_549", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_22" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_550", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_551", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_51" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_552", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_28" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_553", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }, %"$ParamDescr_536" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_554", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40" }]
@"$tname_bestow_556" = unnamed_addr constant [6 x i8] c"bestow"
@_transition_parameters = constant [2 x %"$TransDescr_537"] [%"$TransDescr_537" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_548", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_536"* getelementptr inbounds ([5 x %"$ParamDescr_536"], [5 x %"$ParamDescr_536"]* @"$tparams_setAdmin_547", i32 0, i32 0) }, %"$TransDescr_537" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_556", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_536"* getelementptr inbounds ([6 x %"$ParamDescr_536"], [6 x %"$ParamDescr_536"]* @"$tparams_bestow_555", i32 0, i32 0) }]
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
  %"$Emp_213" = bitcast i8* %"$_new_empty_map_call_212" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$Emp_213", %Map_ByStr20_Bool** %empty, align 8
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
  store %Map_ByStr20_Bool* %"$_put_223", %Map_ByStr20_Bool** %"$admins_9", align 8
  %"$execptr_load_224" = load i8*, i8** @_execptr, align 8
  %"$$admins_9_226" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %"$admins_9", align 8
  %"$update_value_227" = bitcast %Map_ByStr20_Bool* %"$$admins_9_226" to i8*
  call void @_update_field(i8* %"$execptr_load_224", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_225", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 0, i8* null, i8* %"$update_value_227")
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_228"(%Uint128 %_amount, [20 x i8]* %"$_origin_229", [20 x i8]* %"$_sender_230", [20 x i8]* %"$address_231", %TName_Bool* %isApproved) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_229", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_230", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_231", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_232_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_232_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_232_salloc_load", i64 20)
  %"$indices_buf_232_salloc" = bitcast i8* %"$indices_buf_232_salloc_salloc" to [20 x i8]*
  %"$indices_buf_232" = bitcast [20 x i8]* %"$indices_buf_232_salloc" to i8*
  %"$indices_gep_233" = getelementptr i8, i8* %"$indices_buf_232", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_233" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_235" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_236" = call i8* @_fetch_field(i8* %"$execptr_load_235", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_234", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_232", i32 1)
  %"$maybeAdmin_237" = bitcast i8* %"$maybeAdmin_call_236" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_237", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_238" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_238_239" = bitcast %TName_Option_Bool* %"$maybeAdmin_238" to i8*
  %"$_literal_cost_call_240" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", i8* %"$$maybeAdmin_238_239")
  %"$gasadd_241" = add i64 %"$_literal_cost_call_240", 0
  %"$gasadd_242" = add i64 %"$gasadd_241", 1
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 %"$gasadd_242", %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %entry
  %"$consume_247" = sub i64 %"$gasrem_243", %"$gasadd_242"
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 2, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 2
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$maybeAdmin_259" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_260" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_259", i32 0, i32 0
  %"$maybeAdmin_tag_261" = load i8, i8* %"$maybeAdmin_tag_260", align 1
  switch i8 %"$maybeAdmin_tag_261", label %"$empty_default_262" [
    i8 0, label %"$Some_263"
    i8 1, label %"$None_273"
  ]

"$Some_263":                                      ; preds = %"$have_gas_256"
  %"$maybeAdmin_264" = bitcast %TName_Option_Bool* %"$maybeAdmin_259" to %CName_Some_Bool*
  %"$approval_gep_265" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_264", i32 0, i32 1
  %"$approval_load_266" = load %TName_Bool*, %TName_Bool** %"$approval_gep_265", align 8
  %approval = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$approval_load_266", %TName_Bool** %approval, align 8
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$Some_263"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$Some_263"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %"$approval_272" = load %TName_Bool*, %TName_Bool** %approval, align 8
  store %TName_Bool* %"$approval_272", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_258"

"$None_273":                                      ; preds = %"$have_gas_256"
  %"$maybeAdmin_274" = bitcast %TName_Option_Bool* %"$maybeAdmin_259" to %CName_None_Bool*
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$None_273"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$None_273"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %"$adtval_280_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_280_salloc" = call i8* @_salloc(i8* %"$adtval_280_load", i64 1)
  %"$adtval_280" = bitcast i8* %"$adtval_280_salloc" to %CName_False*
  %"$adtgep_281" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_280", i32 0, i32 0
  store i8 1, i8* %"$adtgep_281", align 1
  %"$adtptr_282" = bitcast %CName_False* %"$adtval_280" to %TName_Bool*
  store %TName_Bool* %"$adtptr_282", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_258"

"$empty_default_262":                             ; preds = %"$have_gas_256"
  br label %"$matchsucc_258"

"$matchsucc_258":                                 ; preds = %"$have_gas_278", %"$have_gas_270", %"$empty_default_262"
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 2, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$matchsucc_258"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$matchsucc_258"
  %"$consume_287" = sub i64 %"$gasrem_283", 2
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %"$isSenderAdmin_289" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_290" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_289", i32 0, i32 0
  %"$isSenderAdmin_tag_291" = load i8, i8* %"$isSenderAdmin_tag_290", align 1
  switch i8 %"$isSenderAdmin_tag_291", label %"$empty_default_292" [
    i8 0, label %"$True_293"
    i8 1, label %"$False_338"
  ]

"$True_293":                                      ; preds = %"$have_gas_286"
  %"$isSenderAdmin_294" = bitcast %TName_Bool* %"$isSenderAdmin_289" to %CName_True*
  %"$isApproved_295" = bitcast %TName_Bool* %isApproved to i8*
  %"$_literal_cost_call_296" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_45", i8* %"$isApproved_295")
  %"$gasadd_297" = add i64 %"$_literal_cost_call_296", 1
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 %"$gasadd_297", %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$True_293"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$True_293"
  %"$consume_302" = sub i64 %"$gasrem_298", %"$gasadd_297"
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$indices_buf_303_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_303_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_303_salloc_load", i64 20)
  %"$indices_buf_303_salloc" = bitcast i8* %"$indices_buf_303_salloc_salloc" to [20 x i8]*
  %"$indices_buf_303" = bitcast [20 x i8]* %"$indices_buf_303_salloc" to i8*
  %"$indices_gep_304" = getelementptr i8, i8* %"$indices_buf_303", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_304" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_305" = load i8*, i8** @_execptr, align 8
  %"$update_value_307" = bitcast %TName_Bool* %isApproved to i8*
  call void @_update_field(i8* %"$execptr_load_305", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_306", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_303", i8* %"$update_value_307")
  %"$gasrem_308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_301"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_311"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %"$ud-proxy.eAdminSet_0" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-proxy.eAdminSet_318" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8
  %"$ud-proxy.eAdminSet_fptr_319" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_318", 0
  %"$ud-proxy.eAdminSet_envptr_320" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_318", 1
  %"$ud-proxy.eAdminSet_address_321" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-proxy.eAdminSet_address_321", align 1
  %"$ud-proxy.eAdminSet_call_322" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_fptr_319"(i8* %"$ud-proxy.eAdminSet_envptr_320", [20 x i8]* %"$ud-proxy.eAdminSet_address_321")
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_call_322", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_0", align 8
  %"$ud-proxy.eAdminSet_1" = alloca i8*, align 8
  %"$$ud-proxy.eAdminSet_0_323" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_0", align 8
  %"$$ud-proxy.eAdminSet_0_fptr_324" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_0_323", 0
  %"$$ud-proxy.eAdminSet_0_envptr_325" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_0_323", 1
  %"$$ud-proxy.eAdminSet_0_call_326" = call i8* %"$$ud-proxy.eAdminSet_0_fptr_324"(i8* %"$$ud-proxy.eAdminSet_0_envptr_325", %TName_Bool* %isApproved)
  store i8* %"$$ud-proxy.eAdminSet_0_call_326", i8** %"$ud-proxy.eAdminSet_1", align 8
  %"$$ud-proxy.eAdminSet_1_327" = load i8*, i8** %"$ud-proxy.eAdminSet_1", align 8
  store i8* %"$$ud-proxy.eAdminSet_1_327", i8** %e, align 8
  %"$e_328" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_330" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$e_328")
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 %"$_literal_cost_call_330", %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_316"
  %"$consume_335" = sub i64 %"$gasrem_331", %"$_literal_cost_call_330"
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %"$execptr_load_336" = load i8*, i8** @_execptr, align 8
  %"$e_337" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_336", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$e_337")
  br label %"$matchsucc_288"

"$False_338":                                     ; preds = %"$have_gas_286"
  %"$isSenderAdmin_339" = bitcast %TName_Bool* %"$isSenderAdmin_289" to %CName_False*
  %"$ud-proxy.eError_340" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_342" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_340")
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 %"$_literal_cost_call_342", %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$False_338"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$False_338"
  %"$consume_347" = sub i64 %"$gasrem_343", %"$_literal_cost_call_342"
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %"$execptr_load_348" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_349" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_348", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_349")
  br label %"$matchsucc_288"

"$empty_default_292":                             ; preds = %"$have_gas_286"
  br label %"$matchsucc_288"

"$matchsucc_288":                                 ; preds = %"$have_gas_346", %"$have_gas_334", %"$empty_default_292"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) {
entry:
  %"$_amount_351" = getelementptr i8, i8* %0, i32 0
  %"$_amount_352" = bitcast i8* %"$_amount_351" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_352", align 8
  %"$_origin_353" = getelementptr i8, i8* %0, i32 16
  %"$_origin_354" = bitcast i8* %"$_origin_353" to [20 x i8]*
  %"$_sender_355" = getelementptr i8, i8* %0, i32 36
  %"$_sender_356" = bitcast i8* %"$_sender_355" to [20 x i8]*
  %"$address_357" = getelementptr i8, i8* %0, i32 56
  %"$address_358" = bitcast i8* %"$address_357" to [20 x i8]*
  %"$isApproved_359" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_360" = bitcast i8* %"$isApproved_359" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_360", align 8
  call void @"$setAdmin_228"(%Uint128 %_amount, [20 x i8]* %"$_origin_354", [20 x i8]* %"$_sender_356", [20 x i8]* %"$address_358", %TName_Bool* %isApproved)
  ret void
}

define internal void @"$bestow_361"(%Uint128 %_amount, [20 x i8]* %"$_origin_362", [20 x i8]* %"$_sender_363", %String %label, [20 x i8]* %"$owner_364", [20 x i8]* %"$resolver_365") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_362", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_363", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_364", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_365", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_366_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_366_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_366_salloc_load", i64 20)
  %"$indices_buf_366_salloc" = bitcast i8* %"$indices_buf_366_salloc_salloc" to [20 x i8]*
  %"$indices_buf_366" = bitcast [20 x i8]* %"$indices_buf_366_salloc" to i8*
  %"$indices_gep_367" = getelementptr i8, i8* %"$indices_buf_366", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_367" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_369" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_370" = call i8* @_fetch_field(i8* %"$execptr_load_369", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_368", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_48", i32 1, i8* %"$indices_buf_366", i32 1)
  %"$maybeAdmin_371" = bitcast i8* %"$maybeAdmin_call_370" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_371", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_372" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_372_373" = bitcast %TName_Option_Bool* %"$maybeAdmin_372" to i8*
  %"$_literal_cost_call_374" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_44", i8* %"$$maybeAdmin_372_373")
  %"$gasadd_375" = add i64 %"$_literal_cost_call_374", 0
  %"$gasadd_376" = add i64 %"$gasadd_375", 1
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 %"$gasadd_376", %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %entry
  %"$consume_381" = sub i64 %"$gasrem_377", %"$gasadd_376"
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_380"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 2, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 2
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$maybeAdmin_393" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_394" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_393", i32 0, i32 0
  %"$maybeAdmin_tag_395" = load i8, i8* %"$maybeAdmin_tag_394", align 1
  switch i8 %"$maybeAdmin_tag_395", label %"$empty_default_396" [
    i8 0, label %"$Some_397"
    i8 1, label %"$None_407"
  ]

"$Some_397":                                      ; preds = %"$have_gas_390"
  %"$maybeAdmin_398" = bitcast %TName_Option_Bool* %"$maybeAdmin_393" to %CName_Some_Bool*
  %"$isAdmin_gep_399" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_398", i32 0, i32 1
  %"$isAdmin_load_400" = load %TName_Bool*, %TName_Bool** %"$isAdmin_gep_399", align 8
  %isAdmin = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$isAdmin_load_400", %TName_Bool** %isAdmin, align 8
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 1, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$Some_397"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$Some_397"
  %"$consume_405" = sub i64 %"$gasrem_401", 1
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %"$isAdmin_406" = load %TName_Bool*, %TName_Bool** %isAdmin, align 8
  store %TName_Bool* %"$isAdmin_406", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_392"

"$None_407":                                      ; preds = %"$have_gas_390"
  %"$maybeAdmin_408" = bitcast %TName_Option_Bool* %"$maybeAdmin_393" to %CName_None_Bool*
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$None_407"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$None_407"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$adtval_414_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_414_salloc" = call i8* @_salloc(i8* %"$adtval_414_load", i64 1)
  %"$adtval_414" = bitcast i8* %"$adtval_414_salloc" to %CName_False*
  %"$adtgep_415" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_414", i32 0, i32 0
  store i8 1, i8* %"$adtgep_415", align 1
  %"$adtptr_416" = bitcast %CName_False* %"$adtval_414" to %TName_Bool*
  store %TName_Bool* %"$adtptr_416", %TName_Bool** %isSenderAdmin, align 8
  br label %"$matchsucc_392"

"$empty_default_396":                             ; preds = %"$have_gas_390"
  br label %"$matchsucc_392"

"$matchsucc_392":                                 ; preds = %"$have_gas_412", %"$have_gas_404", %"$empty_default_396"
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 2, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$matchsucc_392"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$matchsucc_392"
  %"$consume_421" = sub i64 %"$gasrem_417", 2
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$isSenderAdmin_423" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_424" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_423", i32 0, i32 0
  %"$isSenderAdmin_tag_425" = load i8, i8* %"$isSenderAdmin_tag_424", align 1
  switch i8 %"$isSenderAdmin_tag_425", label %"$empty_default_426" [
    i8 0, label %"$True_427"
    i8 1, label %"$False_511"
  ]

"$True_427":                                      ; preds = %"$have_gas_420"
  %"$isSenderAdmin_428" = bitcast %TName_Bool* %"$isSenderAdmin_423" to %CName_True*
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$True_427"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$True_427"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_432"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$msgobj_444_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_444_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_444_salloc_load", i64 253)
  %"$msgobj_444_salloc" = bitcast i8* %"$msgobj_444_salloc_salloc" to [253 x i8]*
  %"$msgobj_444" = bitcast [253 x i8]* %"$msgobj_444_salloc" to i8*
  store i8 6, i8* %"$msgobj_444", align 1
  %"$msgobj_fname_446" = getelementptr i8, i8* %"$msgobj_444", i32 1
  %"$msgobj_fname_447" = bitcast i8* %"$msgobj_fname_446" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_445", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_447", align 8
  %"$msgobj_td_448" = getelementptr i8, i8* %"$msgobj_444", i32 17
  %"$msgobj_td_449" = bitcast i8* %"$msgobj_td_448" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_449", align 8
  %"$msgobj_v_451" = getelementptr i8, i8* %"$msgobj_444", i32 25
  %"$msgobj_v_452" = bitcast i8* %"$msgobj_v_451" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_450", i32 0, i32 0), i32 6 }, %String* %"$msgobj_v_452", align 8
  %"$msgobj_fname_454" = getelementptr i8, i8* %"$msgobj_444", i32 41
  %"$msgobj_fname_455" = bitcast i8* %"$msgobj_fname_454" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_453", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_455", align 8
  %"$msgobj_td_456" = getelementptr i8, i8* %"$msgobj_444", i32 57
  %"$msgobj_td_457" = bitcast i8* %"$msgobj_td_456" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_457", align 8
  %"$registry_458" = load [20 x i8], [20 x i8]* @registry, align 1
  %"$msgobj_v_459" = getelementptr i8, i8* %"$msgobj_444", i32 65
  %"$msgobj_v_460" = bitcast i8* %"$msgobj_v_459" to [20 x i8]*
  store [20 x i8] %"$registry_458", [20 x i8]* %"$msgobj_v_460", align 1
  %"$msgobj_fname_462" = getelementptr i8, i8* %"$msgobj_444", i32 85
  %"$msgobj_fname_463" = bitcast i8* %"$msgobj_fname_462" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_461", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_463", align 8
  %"$msgobj_td_464" = getelementptr i8, i8* %"$msgobj_444", i32 101
  %"$msgobj_td_465" = bitcast i8* %"$msgobj_td_464" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_465", align 8
  %"$msgobj_v_466" = getelementptr i8, i8* %"$msgobj_444", i32 109
  %"$msgobj_v_467" = bitcast i8* %"$msgobj_v_466" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_467", align 8
  %"$msgobj_fname_469" = getelementptr i8, i8* %"$msgobj_444", i32 125
  %"$msgobj_fname_470" = bitcast i8* %"$msgobj_fname_469" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_468", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_470", align 8
  %"$msgobj_td_471" = getelementptr i8, i8* %"$msgobj_444", i32 141
  %"$msgobj_td_472" = bitcast i8* %"$msgobj_td_471" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_472", align 8
  %"$msgobj_v_473" = getelementptr i8, i8* %"$msgobj_444", i32 149
  %"$msgobj_v_474" = bitcast i8* %"$msgobj_v_473" to %String*
  store %String %label, %String* %"$msgobj_v_474", align 8
  %"$msgobj_fname_476" = getelementptr i8, i8* %"$msgobj_444", i32 165
  %"$msgobj_fname_477" = bitcast i8* %"$msgobj_fname_476" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_475", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_477", align 8
  %"$msgobj_td_478" = getelementptr i8, i8* %"$msgobj_444", i32 181
  %"$msgobj_td_479" = bitcast i8* %"$msgobj_td_478" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_479", align 8
  %"$msgobj_v_480" = getelementptr i8, i8* %"$msgobj_444", i32 189
  %"$msgobj_v_481" = bitcast i8* %"$msgobj_v_480" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_481", align 1
  %"$msgobj_fname_483" = getelementptr i8, i8* %"$msgobj_444", i32 209
  %"$msgobj_fname_484" = bitcast i8* %"$msgobj_fname_483" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_482", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_484", align 8
  %"$msgobj_td_485" = getelementptr i8, i8* %"$msgobj_444", i32 225
  %"$msgobj_td_486" = bitcast i8* %"$msgobj_td_485" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_40", %_TyDescrTy_Typ** %"$msgobj_td_486", align 8
  %"$msgobj_v_487" = getelementptr i8, i8* %"$msgobj_444", i32 233
  %"$msgobj_v_488" = bitcast i8* %"$msgobj_v_487" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_488", align 1
  store i8* %"$msgobj_444", i8** %m, align 8
  %"$gasrem_490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_491" = icmp ugt i64 1, %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %"$have_gas_442"
  %"$consume_494" = sub i64 %"$gasrem_490", 1
  store i64 %"$consume_494", i64* @_gasrem, align 8
  %"$ud-proxy.oneMsg_2" = alloca %TName_List_Message*, align 8
  %"$ud-proxy.oneMsg_495" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8
  %"$ud-proxy.oneMsg_fptr_496" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_495", 0
  %"$ud-proxy.oneMsg_envptr_497" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_495", 1
  %"$m_498" = load i8*, i8** %m, align 8
  %"$ud-proxy.oneMsg_call_499" = call %TName_List_Message* %"$ud-proxy.oneMsg_fptr_496"(i8* %"$ud-proxy.oneMsg_envptr_497", i8* %"$m_498")
  store %TName_List_Message* %"$ud-proxy.oneMsg_call_499", %TName_List_Message** %"$ud-proxy.oneMsg_2", align 8
  %"$$ud-proxy.oneMsg_2_500" = load %TName_List_Message*, %TName_List_Message** %"$ud-proxy.oneMsg_2", align 8
  store %TName_List_Message* %"$$ud-proxy.oneMsg_2_500", %TName_List_Message** %msgs, align 8
  %"$msgs_501" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_501_502" = bitcast %TName_List_Message* %"$msgs_501" to i8*
  %"$_literal_cost_call_503" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", i8* %"$$msgs_501_502")
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 %"$_literal_cost_call_503", %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %"$have_gas_493"
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %"$have_gas_493"
  %"$consume_508" = sub i64 %"$gasrem_504", %"$_literal_cost_call_503"
  store i64 %"$consume_508", i64* @_gasrem, align 8
  %"$execptr_load_509" = load i8*, i8** @_execptr, align 8
  %"$msgs_510" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_509", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_46", %TName_List_Message* %"$msgs_510")
  br label %"$matchsucc_422"

"$False_511":                                     ; preds = %"$have_gas_420"
  %"$isSenderAdmin_512" = bitcast %TName_Bool* %"$isSenderAdmin_423" to %CName_False*
  %"$ud-proxy.eError_513" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_515" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_513")
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 %"$_literal_cost_call_515", %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$False_511"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$False_511"
  %"$consume_520" = sub i64 %"$gasrem_516", %"$_literal_cost_call_515"
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %"$execptr_load_521" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_522" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_521", %_TyDescrTy_Typ* @"$TyDescr_Event_34", i8* %"$ud-proxy.eError_522")
  br label %"$matchsucc_422"

"$empty_default_426":                             ; preds = %"$have_gas_420"
  br label %"$matchsucc_422"

"$matchsucc_422":                                 ; preds = %"$have_gas_519", %"$have_gas_507", %"$empty_default_426"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @bestow(i8* %0) {
entry:
  %"$_amount_524" = getelementptr i8, i8* %0, i32 0
  %"$_amount_525" = bitcast i8* %"$_amount_524" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_525", align 8
  %"$_origin_526" = getelementptr i8, i8* %0, i32 16
  %"$_origin_527" = bitcast i8* %"$_origin_526" to [20 x i8]*
  %"$_sender_528" = getelementptr i8, i8* %0, i32 36
  %"$_sender_529" = bitcast i8* %"$_sender_528" to [20 x i8]*
  %"$label_530" = getelementptr i8, i8* %0, i32 56
  %"$label_531" = bitcast i8* %"$label_530" to %String*
  %label = load %String, %String* %"$label_531", align 8
  %"$owner_532" = getelementptr i8, i8* %0, i32 72
  %"$owner_533" = bitcast i8* %"$owner_532" to [20 x i8]*
  %"$resolver_534" = getelementptr i8, i8* %0, i32 92
  %"$resolver_535" = bitcast i8* %"$resolver_534" to [20 x i8]*
  call void @"$bestow_361"(%Uint128 %_amount, [20 x i8]* %"$_origin_527", [20 x i8]* %"$_sender_529", %String %label, [20 x i8]* %"$owner_533", [20 x i8]* %"$resolver_535")
  ret void
}
