

; gas_remaining: 4001350
; ModuleID = 'Admin'
source_filename = "Admin"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_6" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_38" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_37"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_37" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_39"**, %"$TyDescrTy_ADTTyp_38"* }
%"$TyDescrTy_ADTTyp_Constr_39" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_43" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_46" = type { i32, %"$TyDescr_AddrFieldTyp_45"* }
%"$TyDescr_AddrFieldTyp_45" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_521" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_522" = type { %ParamDescrString, i32, %"$ParamDescr_521"* }
%"$$fundef_1_env_86" = type {}
%String = type { i8*, i32 }
%"$$fundef_3_env_87" = type { %TName_List_Message* }
%Map_ByStr20_Bool = type { [20 x i8], %TName_Bool* }
%Uint128 = type { i128 }
%TName_Option_Bool = type { i8, %CName_Some_Bool*, %CName_None_Bool* }
%CName_Some_Bool = type <{ i8, %TName_Bool* }>
%CName_None_Bool = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_7" = global %"$TyDescrTy_PrimTyp_6" zeroinitializer
@"$TyDescr_Int32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int32_Prim_7" to i8*) }
@"$TyDescr_Uint32_Prim_9" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 0 }
@"$TyDescr_Uint32_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint32_Prim_9" to i8*) }
@"$TyDescr_Int64_Prim_11" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 1 }
@"$TyDescr_Int64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int64_Prim_11" to i8*) }
@"$TyDescr_Uint64_Prim_13" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 1 }
@"$TyDescr_Uint64_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint64_Prim_13" to i8*) }
@"$TyDescr_Int128_Prim_15" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 2 }
@"$TyDescr_Int128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int128_Prim_15" to i8*) }
@"$TyDescr_Uint128_Prim_17" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 2 }
@"$TyDescr_Uint128_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint128_Prim_17" to i8*) }
@"$TyDescr_Int256_Prim_19" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 3 }
@"$TyDescr_Int256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int256_Prim_19" to i8*) }
@"$TyDescr_Uint256_Prim_21" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 3 }
@"$TyDescr_Uint256_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint256_Prim_21" to i8*) }
@"$TyDescr_String_Prim_23" = global %"$TyDescrTy_PrimTyp_6" { i32 2, i32 0 }
@"$TyDescr_String_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_String_Prim_23" to i8*) }
@"$TyDescr_Bnum_Prim_25" = global %"$TyDescrTy_PrimTyp_6" { i32 3, i32 0 }
@"$TyDescr_Bnum_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bnum_Prim_25" to i8*) }
@"$TyDescr_Message_Prim_27" = global %"$TyDescrTy_PrimTyp_6" { i32 4, i32 0 }
@"$TyDescr_Message_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Message_Prim_27" to i8*) }
@"$TyDescr_Event_Prim_29" = global %"$TyDescrTy_PrimTyp_6" { i32 5, i32 0 }
@"$TyDescr_Event_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Event_Prim_29" to i8*) }
@"$TyDescr_Exception_Prim_31" = global %"$TyDescrTy_PrimTyp_6" { i32 6, i32 0 }
@"$TyDescr_Exception_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Exception_Prim_31" to i8*) }
@"$TyDescr_Bystr_Prim_33" = global %"$TyDescrTy_PrimTyp_6" { i32 7, i32 0 }
@"$TyDescr_Bystr_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr_Prim_33" to i8*) }
@"$TyDescr_Bystr20_Prim_35" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 20 }
@"$TyDescr_Bystr20_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr20_Prim_35" to i8*) }
@"$TyDescr_ADT_Option_Bool_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Option_Bool_ADTTyp_Specl_57" to i8*) }
@"$TyDescr_ADT_Bool_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_69" to i8*) }
@"$TyDescr_ADT_List_Message_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_List_Message_ADTTyp_Specl_81" to i8*) }
@"$TyDescr_Map_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_43"* @"$TyDescr_MapTyp_84" to i8*) }
@"$TyDescr_Addr_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_46"* @"$TyDescr_AddrFields_85" to i8*) }
@"$TyDescr_Option_ADTTyp_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_59", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_Option_ADTTyp_m_specls_58", i32 0, i32 0) }
@"$TyDescr_Option_Some_Bool_Constr_m_args_49" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41"]
@"$TyDescr_ADT_Some_50" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_50", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_53" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_53", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_55" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_51", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_54"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_56" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_Option_ADTTyp_48" }
@"$TyDescr_Option_ADTTyp_m_specls_58" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Option_Bool_ADTTyp_Specl_57"]
@"$TyDescr_ADT_Option_59" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_71", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_Bool_ADTTyp_m_specls_70", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_61" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_62" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_62", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_61", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_64" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_65" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_65", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_64", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_67" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_True_ADTTyp_Constr_63", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_False_ADTTyp_Constr_66"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_68", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_67", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_Bool_ADTTyp_60" }
@"$TyDescr_Bool_ADTTyp_m_specls_70" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_69"]
@"$TyDescr_ADT_Bool_71" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_83", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_List_ADTTyp_m_specls_82", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_73" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_28", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42"]
@"$TyDescr_ADT_Cons_74" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_74", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_76" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_77" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_77", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_76", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_79" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_75", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_78"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_80" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_28"]
@"$TyDescr_List_Message_ADTTyp_Specl_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_List_ADTTyp_72" }
@"$TyDescr_List_ADTTyp_m_specls_82" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_List_Message_ADTTyp_Specl_81"]
@"$TyDescr_ADT_List_83" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_84" = unnamed_addr constant %"$TyDescr_MapTyp_43" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41" }
@"$TyDescr_AddrFields_85" = unnamed_addr constant %"$TyDescr_AddrTyp_46" { i32 -1, %"$TyDescr_AddrFieldTyp_45"* null }
@"$stringlit_108" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_113" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_116" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_123" = unnamed_addr constant [10 x i8] c"isApproved"
@ud-proxy.true = global %TName_Bool* null
@ud-proxy.nilMessage = global %TName_List_Message* null
@ud-proxy.oneMsg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@ud-proxy.eAdminSet = global { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* } zeroinitializer
@ud-proxy.eError = global i8* null
@"$stringlit_173" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_178" = unnamed_addr constant [5 x i8] c"Error"
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_initialAdmin = global [20 x i8] zeroinitializer
@_cparam_registry = global [20 x i8] zeroinitializer
@"$admins_215" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_224" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_296" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_353" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_430" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_435" = unnamed_addr constant [6 x i8] c"bestow"
@"$stringlit_438" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_446" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_453" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_460" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_467" = unnamed_addr constant [8 x i8] c"resolver"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %_TyDescrTy_Typ* @"$TyDescr_Event_30", %_TyDescrTy_Typ* @"$TyDescr_Int64_12", %_TyDescrTy_Typ* @"$TyDescr_Addr_47", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ* @"$TyDescr_Uint256_22", %_TyDescrTy_Typ* @"$TyDescr_Uint32_10", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_40", %_TyDescrTy_Typ* @"$TyDescr_Uint64_14", %_TyDescrTy_Typ* @"$TyDescr_Bnum_26", %_TyDescrTy_Typ* @"$TyDescr_Uint128_18", %_TyDescrTy_Typ* @"$TyDescr_Map_44", %_TyDescrTy_Typ* @"$TyDescr_Exception_32", %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ* @"$TyDescr_Int256_20", %_TyDescrTy_Typ* @"$TyDescr_Int128_16", %_TyDescrTy_Typ* @"$TyDescr_Bystr_34", %_TyDescrTy_Typ* @"$TyDescr_Message_28", %_TyDescrTy_Typ* @"$TyDescr_Int32_8"]
@_tydescr_table_length = constant i32 20
@"$pname__scilla_version_523" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_524" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_525" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_initialAdmin_526" = unnamed_addr constant [12 x i8] c"initialAdmin"
@"$pname_registry_527" = unnamed_addr constant [8 x i8] c"registry"
@_contract_parameters = constant [5 x %"$ParamDescr_521"] [%"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_523", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_10" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_524", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_525", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_26" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialAdmin_526", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_registry_527", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_528" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_529" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_530" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_531" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_532" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_533" = unnamed_addr constant [5 x %"$ParamDescr_521"] [%"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_528", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_18" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_529", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_47" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_530", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_47" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_531", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_532", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41" }]
@"$tname_setAdmin_534" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_535" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_536" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_537" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_538" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_539" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_540" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_541" = unnamed_addr constant [6 x %"$ParamDescr_521"] [%"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_535", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_18" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_536", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_47" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_537", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_47" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_538", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_24" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_539", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36" }, %"$ParamDescr_521" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_540", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36" }]
@"$tname_bestow_542" = unnamed_addr constant [6 x i8] c"bestow"
@_transition_parameters = constant [2 x %"$TransDescr_522"] [%"$TransDescr_522" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_534", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_521"* getelementptr inbounds ([5 x %"$ParamDescr_521"], [5 x %"$ParamDescr_521"]* @"$tparams_setAdmin_533", i32 0, i32 0) }, %"$TransDescr_522" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_542", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_521"* getelementptr inbounds ([6 x %"$ParamDescr_521"], [6 x %"$ParamDescr_521"]* @"$tparams_bestow_541", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal i8* @"$fundef_1"(%"$$fundef_1_env_86"* %0, [20 x i8]* %1, %TName_Bool* %2) !dbg !4 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_2" = alloca i8*, align 8
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %entry
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$msgobj_107_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_107_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_107_salloc_load", i64 117)
  %"$msgobj_107_salloc" = bitcast i8* %"$msgobj_107_salloc_salloc" to [117 x i8]*
  %"$msgobj_107" = bitcast [117 x i8]* %"$msgobj_107_salloc" to i8*
  store i8 3, i8* %"$msgobj_107", align 1
  %"$msgobj_fname_109" = getelementptr i8, i8* %"$msgobj_107", i32 1
  %"$msgobj_fname_110" = bitcast i8* %"$msgobj_fname_109" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_108", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_110", align 8
  %"$msgobj_td_111" = getelementptr i8, i8* %"$msgobj_107", i32 17
  %"$msgobj_td_112" = bitcast i8* %"$msgobj_td_111" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ** %"$msgobj_td_112", align 8
  %"$msgobj_v_114" = getelementptr i8, i8* %"$msgobj_107", i32 25
  %"$msgobj_v_115" = bitcast i8* %"$msgobj_v_114" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_113", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_115", align 8
  %"$msgobj_fname_117" = getelementptr i8, i8* %"$msgobj_107", i32 41
  %"$msgobj_fname_118" = bitcast i8* %"$msgobj_fname_117" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_116", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_118", align 8
  %"$msgobj_td_119" = getelementptr i8, i8* %"$msgobj_107", i32 57
  %"$msgobj_td_120" = bitcast i8* %"$msgobj_td_119" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ** %"$msgobj_td_120", align 8
  %"$msgobj_v_121" = getelementptr i8, i8* %"$msgobj_107", i32 65
  %"$msgobj_v_122" = bitcast i8* %"$msgobj_v_121" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %"$msgobj_v_122", align 1
  %"$msgobj_fname_124" = getelementptr i8, i8* %"$msgobj_107", i32 85
  %"$msgobj_fname_125" = bitcast i8* %"$msgobj_fname_124" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_123", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_125", align 8
  %"$msgobj_td_126" = getelementptr i8, i8* %"$msgobj_107", i32 101
  %"$msgobj_td_127" = bitcast i8* %"$msgobj_td_126" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41", %_TyDescrTy_Typ** %"$msgobj_td_127", align 8
  %"$msgobj_v_128" = getelementptr i8, i8* %"$msgobj_107", i32 109
  %"$msgobj_v_129" = bitcast i8* %"$msgobj_v_128" to %TName_Bool**
  store %TName_Bool* %2, %TName_Bool** %"$msgobj_v_129", align 8
  store i8* %"$msgobj_107", i8** %"$retval_2", align 8, !dbg !8
  %"$$retval_2_131" = load i8*, i8** %"$retval_2", align 8
  ret i8* %"$$retval_2_131"
}

define internal %TName_List_Message* @"$fundef_3"(%"$$fundef_3_env_87"* %0, i8* %1) !dbg !9 {
entry:
  %"$$fundef_3_env_ud-proxy.nilMessage_88" = getelementptr inbounds %"$$fundef_3_env_87", %"$$fundef_3_env_87"* %0, i32 0, i32 0
  %"$ud-proxy.nilMessage_envload_89" = load %TName_List_Message*, %TName_List_Message** %"$$fundef_3_env_ud-proxy.nilMessage_88", align 8
  %ud-proxy.nilMessage = alloca %TName_List_Message*, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_envload_89", %TName_List_Message** %ud-proxy.nilMessage, align 8
  %"$retval_4" = alloca %TName_List_Message*, align 8
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %entry
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %"$ud-proxy.nilMessage_95" = load %TName_List_Message*, %TName_List_Message** %ud-proxy.nilMessage, align 8
  %"$adtval_96_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_96_salloc" = call i8* @_salloc(i8* %"$adtval_96_load", i64 17)
  %"$adtval_96" = bitcast i8* %"$adtval_96_salloc" to %CName_Cons_Message*
  %"$adtgep_97" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_96", i32 0, i32 0
  store i8 0, i8* %"$adtgep_97", align 1
  %"$adtgep_98" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_96", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_98", align 8
  %"$adtgep_99" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_96", i32 0, i32 2
  store %TName_List_Message* %"$ud-proxy.nilMessage_95", %TName_List_Message** %"$adtgep_99", align 8
  %"$adtptr_100" = bitcast %CName_Cons_Message* %"$adtval_96" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_100", %TName_List_Message** %"$retval_4", align 8, !dbg !10
  %"$$retval_4_101" = load %TName_List_Message*, %TName_List_Message** %"$retval_4", align 8
  ret %TName_List_Message* %"$$retval_4_101"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !11 {
entry:
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %entry
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %"$adtval_137_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_137_salloc" = call i8* @_salloc(i8* %"$adtval_137_load", i64 1)
  %"$adtval_137" = bitcast i8* %"$adtval_137_salloc" to %CName_True*
  %"$adtgep_138" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_137", i32 0, i32 0
  store i8 0, i8* %"$adtgep_138", align 1
  %"$adtptr_139" = bitcast %CName_True* %"$adtval_137" to %TName_Bool*
  store %TName_Bool* %"$adtptr_139", %TName_Bool** @ud-proxy.true, align 8, !dbg !13
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_135"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %"$adtval_145_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_145_salloc" = call i8* @_salloc(i8* %"$adtval_145_load", i64 1)
  %"$adtval_145" = bitcast i8* %"$adtval_145_salloc" to %CName_Nil_Message*
  %"$adtgep_146" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_145", i32 0, i32 0
  store i8 1, i8* %"$adtgep_146", align 1
  %"$adtptr_147" = bitcast %CName_Nil_Message* %"$adtval_145" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_147", %TName_List_Message** @ud-proxy.nilMessage, align 8, !dbg !14
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_143"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$$fundef_3_envp_153_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_3_envp_153_salloc" = call i8* @_salloc(i8* %"$$fundef_3_envp_153_load", i64 8)
  %"$$fundef_3_envp_153" = bitcast i8* %"$$fundef_3_envp_153_salloc" to %"$$fundef_3_env_87"*
  %"$$fundef_3_env_voidp_155" = bitcast %"$$fundef_3_env_87"* %"$$fundef_3_envp_153" to i8*
  %"$$fundef_3_cloval_156" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_87"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_3_env_voidp_155", 1
  %"$$fundef_3_env_ud-proxy.nilMessage_157" = getelementptr inbounds %"$$fundef_3_env_87", %"$$fundef_3_env_87"* %"$$fundef_3_envp_153", i32 0, i32 0
  %"$ud-proxy.nilMessage_158" = load %TName_List_Message*, %TName_List_Message** @ud-proxy.nilMessage, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_158", %TName_List_Message** %"$$fundef_3_env_ud-proxy.nilMessage_157", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_3_cloval_156", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8, !dbg !15
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 2, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_151"
  %"$consume_163" = sub i64 %"$gasrem_159", 2
  store i64 %"$consume_163", i64* @_gasrem, align 8
  store { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* } { i8* (i8*, [20 x i8]*, %TName_Bool*)* bitcast (i8* (%"$$fundef_1_env_86"*, [20 x i8]*, %TName_Bool*)* @"$fundef_1" to i8* (i8*, [20 x i8]*, %TName_Bool*)*), i8* null }, { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* }* @ud-proxy.eAdminSet, align 8, !dbg !16
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_162"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$msgobj_172_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_172_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_172_salloc_load", i64 41)
  %"$msgobj_172_salloc" = bitcast i8* %"$msgobj_172_salloc_salloc" to [41 x i8]*
  %"$msgobj_172" = bitcast [41 x i8]* %"$msgobj_172_salloc" to i8*
  store i8 1, i8* %"$msgobj_172", align 1
  %"$msgobj_fname_174" = getelementptr i8, i8* %"$msgobj_172", i32 1
  %"$msgobj_fname_175" = bitcast i8* %"$msgobj_fname_174" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_173", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_175", align 8
  %"$msgobj_td_176" = getelementptr i8, i8* %"$msgobj_172", i32 17
  %"$msgobj_td_177" = bitcast i8* %"$msgobj_td_176" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ** %"$msgobj_td_177", align 8
  %"$msgobj_v_179" = getelementptr i8, i8* %"$msgobj_172", i32 25
  %"$msgobj_v_180" = bitcast i8* %"$msgobj_v_179" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_178", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_180", align 8
  store i8* %"$msgobj_172", i8** @ud-proxy.eError, align 8, !dbg !17
  ret void
}

define void @_init_state() !dbg !18 {
entry:
  %"$admins_5" = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %entry
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$execptr_load_192" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_193" = call i8* @_new_empty_map(i8* %"$execptr_load_192")
  %"$_new_empty_map_194" = bitcast i8* %"$_new_empty_map_call_193" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$_new_empty_map_194", %Map_ByStr20_Bool** %empty, align 8, !dbg !19
  %"$empty_195" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_195_196" = bitcast %Map_ByStr20_Bool* %"$empty_195" to i8*
  %"$_lengthof_call_197" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$empty_195_196")
  %"$gasadd_198" = add i64 1, %"$_lengthof_call_197"
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 %"$gasadd_198", %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$have_gas_190"
  %"$consume_203" = sub i64 %"$gasrem_199", %"$gasadd_198"
  store i64 %"$consume_203", i64* @_gasrem, align 8
  %"$execptr_load_204" = load i8*, i8** @_execptr, align 8
  %"$empty_205" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_205_206" = bitcast %Map_ByStr20_Bool* %"$empty_205" to i8*
  %"$put_initialAdmin_207" = alloca [20 x i8], align 1
  %"$initialAdmin_208" = load [20 x i8], [20 x i8]* @_cparam_initialAdmin, align 1
  store [20 x i8] %"$initialAdmin_208", [20 x i8]* %"$put_initialAdmin_207", align 1
  %"$$put_initialAdmin_207_209" = bitcast [20 x i8]* %"$put_initialAdmin_207" to i8*
  %"$ud-proxy.true_210" = load %TName_Bool*, %TName_Bool** @ud-proxy.true, align 8
  %"$$ud-proxy.true_210_211" = bitcast %TName_Bool* %"$ud-proxy.true_210" to i8*
  %"$put_call_212" = call i8* @_put(i8* %"$execptr_load_204", %_TyDescrTy_Typ* @"$TyDescr_Map_44", i8* %"$$empty_205_206", i8* %"$$put_initialAdmin_207_209", i8* %"$$ud-proxy.true_210_211"), !dbg !20
  %"$put_213" = bitcast i8* %"$put_call_212" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$put_213", %Map_ByStr20_Bool** %"$admins_5", align 8, !dbg !20
  %"$execptr_load_214" = load i8*, i8** @_execptr, align 8
  %"$$admins_5_216" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %"$admins_5", align 8
  %"$update_value_217" = bitcast %Map_ByStr20_Bool* %"$$admins_5_216" to i8*
  call void @_update_field(i8* %"$execptr_load_214", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_215", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 0, i8* null, i8* %"$update_value_217"), !dbg !19
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_218"(%Uint128 %_amount, [20 x i8]* %"$_origin_219", [20 x i8]* %"$_sender_220", [20 x i8]* %"$address_221", %TName_Bool* %isApproved) !dbg !21 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_219", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_220", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_221", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_222_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_222_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_222_salloc_load", i64 20)
  %"$indices_buf_222_salloc" = bitcast i8* %"$indices_buf_222_salloc_salloc" to [20 x i8]*
  %"$indices_buf_222" = bitcast [20 x i8]* %"$indices_buf_222_salloc" to i8*
  %"$indices_gep_223" = getelementptr i8, i8* %"$indices_buf_222", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_223" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_225" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_226" = call i8* @_fetch_field(i8* %"$execptr_load_225", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_224", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 1, i8* %"$indices_buf_222", i32 1), !dbg !22
  %"$maybeAdmin_227" = bitcast i8* %"$maybeAdmin_call_226" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_227", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_228" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_228_229" = bitcast %TName_Option_Bool* %"$maybeAdmin_228" to i8*
  %"$_literal_cost_call_230" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_40", i8* %"$$maybeAdmin_228_229")
  %"$gasadd_231" = add i64 %"$_literal_cost_call_230", 0
  %"$gasadd_232" = add i64 %"$gasadd_231", 1
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
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 2, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_241"
  %"$consume_247" = sub i64 %"$gasrem_243", 2
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$maybeAdmin_249" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_250" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_249", i32 0, i32 0
  %"$maybeAdmin_tag_251" = load i8, i8* %"$maybeAdmin_tag_250", align 1
  switch i8 %"$maybeAdmin_tag_251", label %"$empty_default_252" [
    i8 0, label %"$Some_253"
    i8 1, label %"$None_263"
  ], !dbg !23

"$Some_253":                                      ; preds = %"$have_gas_246"
  %"$maybeAdmin_254" = bitcast %TName_Option_Bool* %"$maybeAdmin_249" to %CName_Some_Bool*
  %"$approval_gep_255" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_254", i32 0, i32 1
  %"$approval_load_256" = load %TName_Bool*, %TName_Bool** %"$approval_gep_255", align 8
  %approval = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$approval_load_256", %TName_Bool** %approval, align 8
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$Some_253"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$Some_253"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$approval_262" = load %TName_Bool*, %TName_Bool** %approval, align 8
  store %TName_Bool* %"$approval_262", %TName_Bool** %isSenderAdmin, align 8, !dbg !24
  br label %"$matchsucc_248"

"$None_263":                                      ; preds = %"$have_gas_246"
  %"$maybeAdmin_264" = bitcast %TName_Option_Bool* %"$maybeAdmin_249" to %CName_None_Bool*
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$None_263"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$None_263"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %"$adtval_270_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_270_salloc" = call i8* @_salloc(i8* %"$adtval_270_load", i64 1)
  %"$adtval_270" = bitcast i8* %"$adtval_270_salloc" to %CName_False*
  %"$adtgep_271" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_270", i32 0, i32 0
  store i8 1, i8* %"$adtgep_271", align 1
  %"$adtptr_272" = bitcast %CName_False* %"$adtval_270" to %TName_Bool*
  store %TName_Bool* %"$adtptr_272", %TName_Bool** %isSenderAdmin, align 8, !dbg !27
  br label %"$matchsucc_248"

"$empty_default_252":                             ; preds = %"$have_gas_246"
  br label %"$matchsucc_248"

"$matchsucc_248":                                 ; preds = %"$have_gas_268", %"$have_gas_260", %"$empty_default_252"
  %"$gasrem_273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_274" = icmp ugt i64 2, %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %"$matchsucc_248"
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %"$matchsucc_248"
  %"$consume_277" = sub i64 %"$gasrem_273", 2
  store i64 %"$consume_277", i64* @_gasrem, align 8
  %"$isSenderAdmin_279" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_280" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_279", i32 0, i32 0
  %"$isSenderAdmin_tag_281" = load i8, i8* %"$isSenderAdmin_tag_280", align 1
  switch i8 %"$isSenderAdmin_tag_281", label %"$empty_default_282" [
    i8 0, label %"$True_283"
    i8 1, label %"$False_323"
  ], !dbg !29

"$True_283":                                      ; preds = %"$have_gas_276"
  %"$isSenderAdmin_284" = bitcast %TName_Bool* %"$isSenderAdmin_279" to %CName_True*
  %"$isApproved_285" = bitcast %TName_Bool* %isApproved to i8*
  %"$_literal_cost_call_286" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41", i8* %"$isApproved_285")
  %"$gasadd_287" = add i64 %"$_literal_cost_call_286", 1
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 %"$gasadd_287", %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$True_283"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$True_283"
  %"$consume_292" = sub i64 %"$gasrem_288", %"$gasadd_287"
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %"$indices_buf_293_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_293_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_293_salloc_load", i64 20)
  %"$indices_buf_293_salloc" = bitcast i8* %"$indices_buf_293_salloc_salloc" to [20 x i8]*
  %"$indices_buf_293" = bitcast [20 x i8]* %"$indices_buf_293_salloc" to i8*
  %"$indices_gep_294" = getelementptr i8, i8* %"$indices_buf_293", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_294" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_295" = load i8*, i8** @_execptr, align 8
  %"$update_value_297" = bitcast %TName_Bool* %isApproved to i8*
  call void @_update_field(i8* %"$execptr_load_295", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_296", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 1, i8* %"$indices_buf_293", i8* %"$update_value_297"), !dbg !30
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_291"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_301"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %"$ud-proxy.eAdminSet_308" = load { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* }, { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* }* @ud-proxy.eAdminSet, align 8
  %"$ud-proxy.eAdminSet_fptr_309" = extractvalue { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_308", 0
  %"$ud-proxy.eAdminSet_envptr_310" = extractvalue { i8* (i8*, [20 x i8]*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_308", 1
  %"$ud-proxy.eAdminSet_address_311" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-proxy.eAdminSet_address_311", align 1
  %"$ud-proxy.eAdminSet_call_312" = call i8* %"$ud-proxy.eAdminSet_fptr_309"(i8* %"$ud-proxy.eAdminSet_envptr_310", [20 x i8]* %"$ud-proxy.eAdminSet_address_311", %TName_Bool* %isApproved), !dbg !33
  store i8* %"$ud-proxy.eAdminSet_call_312", i8** %e, align 8, !dbg !33
  %"$e_313" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_315" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$e_313")
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 %"$_literal_cost_call_315", %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_306"
  %"$consume_320" = sub i64 %"$gasrem_316", %"$_literal_cost_call_315"
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %"$execptr_load_321" = load i8*, i8** @_execptr, align 8
  %"$e_322" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_321", %_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$e_322"), !dbg !34
  br label %"$matchsucc_278"

"$False_323":                                     ; preds = %"$have_gas_276"
  %"$isSenderAdmin_324" = bitcast %TName_Bool* %"$isSenderAdmin_279" to %CName_False*
  %"$ud-proxy.eError_325" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_327" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$ud-proxy.eError_325")
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 %"$_literal_cost_call_327", %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$False_323"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$False_323"
  %"$consume_332" = sub i64 %"$gasrem_328", %"$_literal_cost_call_327"
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %"$execptr_load_333" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_334" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_333", %_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$ud-proxy.eError_334"), !dbg !35
  br label %"$matchsucc_278"

"$empty_default_282":                             ; preds = %"$have_gas_276"
  br label %"$matchsucc_278"

"$matchsucc_278":                                 ; preds = %"$have_gas_331", %"$have_gas_319", %"$empty_default_282"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) !dbg !37 {
entry:
  %"$_amount_336" = getelementptr i8, i8* %0, i32 0
  %"$_amount_337" = bitcast i8* %"$_amount_336" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_337", align 8
  %"$_origin_338" = getelementptr i8, i8* %0, i32 16
  %"$_origin_339" = bitcast i8* %"$_origin_338" to [20 x i8]*
  %"$_sender_340" = getelementptr i8, i8* %0, i32 36
  %"$_sender_341" = bitcast i8* %"$_sender_340" to [20 x i8]*
  %"$address_342" = getelementptr i8, i8* %0, i32 56
  %"$address_343" = bitcast i8* %"$address_342" to [20 x i8]*
  %"$isApproved_344" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_345" = bitcast i8* %"$isApproved_344" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_345", align 8
  call void @"$setAdmin_218"(%Uint128 %_amount, [20 x i8]* %"$_origin_339", [20 x i8]* %"$_sender_341", [20 x i8]* %"$address_343", %TName_Bool* %isApproved), !dbg !38
  ret void
}

define internal void @"$bestow_346"(%Uint128 %_amount, [20 x i8]* %"$_origin_347", [20 x i8]* %"$_sender_348", %String %label, [20 x i8]* %"$owner_349", [20 x i8]* %"$resolver_350") !dbg !39 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_347", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_348", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_349", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_350", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_351_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_351_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_351_salloc_load", i64 20)
  %"$indices_buf_351_salloc" = bitcast i8* %"$indices_buf_351_salloc_salloc" to [20 x i8]*
  %"$indices_buf_351" = bitcast [20 x i8]* %"$indices_buf_351_salloc" to i8*
  %"$indices_gep_352" = getelementptr i8, i8* %"$indices_buf_351", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_352" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_354" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_355" = call i8* @_fetch_field(i8* %"$execptr_load_354", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_353", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_44", i32 1, i8* %"$indices_buf_351", i32 1), !dbg !40
  %"$maybeAdmin_356" = bitcast i8* %"$maybeAdmin_call_355" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_356", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_357" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_357_358" = bitcast %TName_Option_Bool* %"$maybeAdmin_357" to i8*
  %"$_literal_cost_call_359" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_40", i8* %"$$maybeAdmin_357_358")
  %"$gasadd_360" = add i64 %"$_literal_cost_call_359", 0
  %"$gasadd_361" = add i64 %"$gasadd_360", 1
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 %"$gasadd_361", %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %entry
  %"$consume_366" = sub i64 %"$gasrem_362", %"$gasadd_361"
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_365"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 2, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_370"
  %"$consume_376" = sub i64 %"$gasrem_372", 2
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %"$maybeAdmin_378" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_379" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_378", i32 0, i32 0
  %"$maybeAdmin_tag_380" = load i8, i8* %"$maybeAdmin_tag_379", align 1
  switch i8 %"$maybeAdmin_tag_380", label %"$empty_default_381" [
    i8 0, label %"$Some_382"
    i8 1, label %"$None_392"
  ], !dbg !41

"$Some_382":                                      ; preds = %"$have_gas_375"
  %"$maybeAdmin_383" = bitcast %TName_Option_Bool* %"$maybeAdmin_378" to %CName_Some_Bool*
  %"$isAdmin_gep_384" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_383", i32 0, i32 1
  %"$isAdmin_load_385" = load %TName_Bool*, %TName_Bool** %"$isAdmin_gep_384", align 8
  %isAdmin = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$isAdmin_load_385", %TName_Bool** %isAdmin, align 8
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 1, %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$Some_382"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$Some_382"
  %"$consume_390" = sub i64 %"$gasrem_386", 1
  store i64 %"$consume_390", i64* @_gasrem, align 8
  %"$isAdmin_391" = load %TName_Bool*, %TName_Bool** %isAdmin, align 8
  store %TName_Bool* %"$isAdmin_391", %TName_Bool** %isSenderAdmin, align 8, !dbg !42
  br label %"$matchsucc_377"

"$None_392":                                      ; preds = %"$have_gas_375"
  %"$maybeAdmin_393" = bitcast %TName_Option_Bool* %"$maybeAdmin_378" to %CName_None_Bool*
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$None_392"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$None_392"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %"$adtval_399_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_399_salloc" = call i8* @_salloc(i8* %"$adtval_399_load", i64 1)
  %"$adtval_399" = bitcast i8* %"$adtval_399_salloc" to %CName_False*
  %"$adtgep_400" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_399", i32 0, i32 0
  store i8 1, i8* %"$adtgep_400", align 1
  %"$adtptr_401" = bitcast %CName_False* %"$adtval_399" to %TName_Bool*
  store %TName_Bool* %"$adtptr_401", %TName_Bool** %isSenderAdmin, align 8, !dbg !45
  br label %"$matchsucc_377"

"$empty_default_381":                             ; preds = %"$have_gas_375"
  br label %"$matchsucc_377"

"$matchsucc_377":                                 ; preds = %"$have_gas_397", %"$have_gas_389", %"$empty_default_381"
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 2, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$matchsucc_377"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$matchsucc_377"
  %"$consume_406" = sub i64 %"$gasrem_402", 2
  store i64 %"$consume_406", i64* @_gasrem, align 8
  %"$isSenderAdmin_408" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_409" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_408", i32 0, i32 0
  %"$isSenderAdmin_tag_410" = load i8, i8* %"$isSenderAdmin_tag_409", align 1
  switch i8 %"$isSenderAdmin_tag_410", label %"$empty_default_411" [
    i8 0, label %"$True_412"
    i8 1, label %"$False_496"
  ], !dbg !47

"$True_412":                                      ; preds = %"$have_gas_405"
  %"$isSenderAdmin_413" = bitcast %TName_Bool* %"$isSenderAdmin_408" to %CName_True*
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$True_412"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$True_412"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$msgobj_429_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_429_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_429_salloc_load", i64 253)
  %"$msgobj_429_salloc" = bitcast i8* %"$msgobj_429_salloc_salloc" to [253 x i8]*
  %"$msgobj_429" = bitcast [253 x i8]* %"$msgobj_429_salloc" to i8*
  store i8 6, i8* %"$msgobj_429", align 1
  %"$msgobj_fname_431" = getelementptr i8, i8* %"$msgobj_429", i32 1
  %"$msgobj_fname_432" = bitcast i8* %"$msgobj_fname_431" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_430", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_432", align 8
  %"$msgobj_td_433" = getelementptr i8, i8* %"$msgobj_429", i32 17
  %"$msgobj_td_434" = bitcast i8* %"$msgobj_td_433" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ** %"$msgobj_td_434", align 8
  %"$msgobj_v_436" = getelementptr i8, i8* %"$msgobj_429", i32 25
  %"$msgobj_v_437" = bitcast i8* %"$msgobj_v_436" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_435", i32 0, i32 0), i32 6 }, %String* %"$msgobj_v_437", align 8
  %"$msgobj_fname_439" = getelementptr i8, i8* %"$msgobj_429", i32 41
  %"$msgobj_fname_440" = bitcast i8* %"$msgobj_fname_439" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_438", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_440", align 8
  %"$msgobj_td_441" = getelementptr i8, i8* %"$msgobj_429", i32 57
  %"$msgobj_td_442" = bitcast i8* %"$msgobj_td_441" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ** %"$msgobj_td_442", align 8
  %"$registry_443" = load [20 x i8], [20 x i8]* @_cparam_registry, align 1
  %"$msgobj_v_444" = getelementptr i8, i8* %"$msgobj_429", i32 65
  %"$msgobj_v_445" = bitcast i8* %"$msgobj_v_444" to [20 x i8]*
  store [20 x i8] %"$registry_443", [20 x i8]* %"$msgobj_v_445", align 1
  %"$msgobj_fname_447" = getelementptr i8, i8* %"$msgobj_429", i32 85
  %"$msgobj_fname_448" = bitcast i8* %"$msgobj_fname_447" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_446", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_448", align 8
  %"$msgobj_td_449" = getelementptr i8, i8* %"$msgobj_429", i32 101
  %"$msgobj_td_450" = bitcast i8* %"$msgobj_td_449" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_18", %_TyDescrTy_Typ** %"$msgobj_td_450", align 8
  %"$msgobj_v_451" = getelementptr i8, i8* %"$msgobj_429", i32 109
  %"$msgobj_v_452" = bitcast i8* %"$msgobj_v_451" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_452", align 8
  %"$msgobj_fname_454" = getelementptr i8, i8* %"$msgobj_429", i32 125
  %"$msgobj_fname_455" = bitcast i8* %"$msgobj_fname_454" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_453", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_455", align 8
  %"$msgobj_td_456" = getelementptr i8, i8* %"$msgobj_429", i32 141
  %"$msgobj_td_457" = bitcast i8* %"$msgobj_td_456" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ** %"$msgobj_td_457", align 8
  %"$msgobj_v_458" = getelementptr i8, i8* %"$msgobj_429", i32 149
  %"$msgobj_v_459" = bitcast i8* %"$msgobj_v_458" to %String*
  store %String %label, %String* %"$msgobj_v_459", align 8
  %"$msgobj_fname_461" = getelementptr i8, i8* %"$msgobj_429", i32 165
  %"$msgobj_fname_462" = bitcast i8* %"$msgobj_fname_461" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_460", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_462", align 8
  %"$msgobj_td_463" = getelementptr i8, i8* %"$msgobj_429", i32 181
  %"$msgobj_td_464" = bitcast i8* %"$msgobj_td_463" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ** %"$msgobj_td_464", align 8
  %"$msgobj_v_465" = getelementptr i8, i8* %"$msgobj_429", i32 189
  %"$msgobj_v_466" = bitcast i8* %"$msgobj_v_465" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_466", align 1
  %"$msgobj_fname_468" = getelementptr i8, i8* %"$msgobj_429", i32 209
  %"$msgobj_fname_469" = bitcast i8* %"$msgobj_fname_468" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_467", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_469", align 8
  %"$msgobj_td_470" = getelementptr i8, i8* %"$msgobj_429", i32 225
  %"$msgobj_td_471" = bitcast i8* %"$msgobj_td_470" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ** %"$msgobj_td_471", align 8
  %"$msgobj_v_472" = getelementptr i8, i8* %"$msgobj_429", i32 233
  %"$msgobj_v_473" = bitcast i8* %"$msgobj_v_472" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_473", align 1
  store i8* %"$msgobj_429", i8** %m, align 8, !dbg !48
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_427"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$ud-proxy.oneMsg_0" = alloca %TName_List_Message*, align 8
  %"$ud-proxy.oneMsg_480" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8
  %"$ud-proxy.oneMsg_fptr_481" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_480", 0
  %"$ud-proxy.oneMsg_envptr_482" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_480", 1
  %"$m_483" = load i8*, i8** %m, align 8
  %"$ud-proxy.oneMsg_call_484" = call %TName_List_Message* %"$ud-proxy.oneMsg_fptr_481"(i8* %"$ud-proxy.oneMsg_envptr_482", i8* %"$m_483"), !dbg !51
  store %TName_List_Message* %"$ud-proxy.oneMsg_call_484", %TName_List_Message** %"$ud-proxy.oneMsg_0", align 8, !dbg !51
  %"$$ud-proxy.oneMsg_0_485" = load %TName_List_Message*, %TName_List_Message** %"$ud-proxy.oneMsg_0", align 8
  store %TName_List_Message* %"$$ud-proxy.oneMsg_0_485", %TName_List_Message** %msgs, align 8, !dbg !51
  %"$msgs_486" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_486_487" = bitcast %TName_List_Message* %"$msgs_486" to i8*
  %"$_literal_cost_call_488" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", i8* %"$$msgs_486_487")
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 %"$_literal_cost_call_488", %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_478"
  %"$consume_493" = sub i64 %"$gasrem_489", %"$_literal_cost_call_488"
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %"$execptr_load_494" = load i8*, i8** @_execptr, align 8
  %"$msgs_495" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_494", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %TName_List_Message* %"$msgs_495"), !dbg !52
  br label %"$matchsucc_407"

"$False_496":                                     ; preds = %"$have_gas_405"
  %"$isSenderAdmin_497" = bitcast %TName_Bool* %"$isSenderAdmin_408" to %CName_False*
  %"$ud-proxy.eError_498" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_500" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$ud-proxy.eError_498")
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 %"$_literal_cost_call_500", %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$False_496"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$False_496"
  %"$consume_505" = sub i64 %"$gasrem_501", %"$_literal_cost_call_500"
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %"$execptr_load_506" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_507" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_506", %_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$ud-proxy.eError_507"), !dbg !53
  br label %"$matchsucc_407"

"$empty_default_411":                             ; preds = %"$have_gas_405"
  br label %"$matchsucc_407"

"$matchsucc_407":                                 ; preds = %"$have_gas_504", %"$have_gas_492", %"$empty_default_411"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @bestow(i8* %0) !dbg !55 {
entry:
  %"$_amount_509" = getelementptr i8, i8* %0, i32 0
  %"$_amount_510" = bitcast i8* %"$_amount_509" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_510", align 8
  %"$_origin_511" = getelementptr i8, i8* %0, i32 16
  %"$_origin_512" = bitcast i8* %"$_origin_511" to [20 x i8]*
  %"$_sender_513" = getelementptr i8, i8* %0, i32 36
  %"$_sender_514" = bitcast i8* %"$_sender_513" to [20 x i8]*
  %"$label_515" = getelementptr i8, i8* %0, i32 56
  %"$label_516" = bitcast i8* %"$label_515" to %String*
  %label = load %String, %String* %"$label_516", align 8
  %"$owner_517" = getelementptr i8, i8* %0, i32 72
  %"$owner_518" = bitcast i8* %"$owner_517" to [20 x i8]*
  %"$resolver_519" = getelementptr i8, i8* %0, i32 92
  %"$resolver_520" = bitcast i8* %"$resolver_519" to [20 x i8]*
  call void @"$bestow_346"(%Uint128 %_amount, [20 x i8]* %"$_origin_512", [20 x i8]* %"$_sender_514", %String %label, [20 x i8]* %"$owner_518", [20 x i8]* %"$resolver_520"), !dbg !56
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "ud-proxy.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_1", linkageName: "$fundef_1", scope: !2, file: !2, line: 16, type: !5, scopeLine: 16, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 17, column: 5, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 12, column: 5, scope: !9)
!11 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !12, file: !12, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DIFile(filename: ".", directory: ".")
!13 = !DILocation(line: 7, column: 12, scope: !11)
!14 = !DILocation(line: 8, column: 18, scope: !11)
!15 = !DILocation(line: 12, column: 5, scope: !11)
!16 = !DILocation(line: 16, column: 3, scope: !11)
!17 = !DILocation(line: 19, column: 14, scope: !11)
!18 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !12, file: !12, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DILocation(line: 26, column: 15, scope: !18)
!20 = !DILocation(line: 27, column: 5, scope: !18)
!21 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 30, column: 3, scope: !21)
!23 = !DILocation(line: 33, column: 5, scope: !21)
!24 = !DILocation(line: 34, column: 24, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !2, line: 34, column: 7)
!26 = distinct !DILexicalBlock(scope: !21, file: !2, line: 33, column: 5)
!27 = !DILocation(line: 35, column: 15, scope: !28)
!28 = distinct !DILexicalBlock(scope: !26, file: !2, line: 35, column: 7)
!29 = !DILocation(line: 38, column: 3, scope: !21)
!30 = !DILocation(line: 40, column: 5, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !2, line: 39, column: 5)
!32 = distinct !DILexicalBlock(scope: !21, file: !2, line: 38, column: 3)
!33 = !DILocation(line: 42, column: 9, scope: !31)
!34 = !DILocation(line: 43, column: 5, scope: !31)
!35 = !DILocation(line: 45, column: 5, scope: !36)
!36 = distinct !DILexicalBlock(scope: !32, file: !2, line: 44, column: 5)
!37 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!38 = !DILocation(line: 29, column: 12, scope: !37)
!39 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DILocation(line: 50, column: 3, scope: !39)
!41 = !DILocation(line: 53, column: 5, scope: !39)
!42 = !DILocation(line: 54, column: 23, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !2, line: 54, column: 7)
!44 = distinct !DILexicalBlock(scope: !39, file: !2, line: 53, column: 5)
!45 = !DILocation(line: 55, column: 15, scope: !46)
!46 = distinct !DILexicalBlock(scope: !44, file: !2, line: 55, column: 7)
!47 = !DILocation(line: 58, column: 3, scope: !39)
!48 = !DILocation(line: 61, column: 15, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !2, line: 59, column: 5)
!50 = distinct !DILexicalBlock(scope: !39, file: !2, line: 58, column: 3)
!51 = !DILocation(line: 63, column: 7, scope: !49)
!52 = !DILocation(line: 64, column: 5, scope: !49)
!53 = !DILocation(line: 66, column: 5, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !2, line: 65, column: 5)
!55 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!56 = !DILocation(line: 49, column: 12, scope: !55)
