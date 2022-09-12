

; gas_remaining: 4001918
; ModuleID = 'Admin'
source_filename = "Admin"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_13" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_47" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_46"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_46" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_48"**, %"$TyDescrTy_ADTTyp_47"* }
%"$TyDescrTy_ADTTyp_Constr_48" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_52" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_55" = type { i32, %"$TyDescr_AddrFieldTyp_54"* }
%"$TyDescr_AddrFieldTyp_54" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_584" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_585" = type { %ParamDescrString, i32, %"$ParamDescr_584"* }
%"$$fundef_8_env_95" = type { [20 x i8] }
%String = type { i8*, i32 }
%"$$fundef_6_env_96" = type {}
%"$$fundef_10_env_97" = type { %TName_List_Message* }
%Map_ByStr20_Bool = type { [20 x i8], %TName_Bool* }
%Uint128 = type { i128 }
%TName_Option_Bool = type { i8, %CName_Some_Bool*, %CName_None_Bool* }
%CName_Some_Bool = type <{ i8, %TName_Bool* }>
%CName_None_Bool = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_14" = global %"$TyDescrTy_PrimTyp_13" zeroinitializer
@"$TyDescr_Int32_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int32_Prim_14" to i8*) }
@"$TyDescr_Uint32_Prim_16" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 0 }
@"$TyDescr_Uint32_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint32_Prim_16" to i8*) }
@"$TyDescr_Int64_Prim_18" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 1 }
@"$TyDescr_Int64_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int64_Prim_18" to i8*) }
@"$TyDescr_Uint64_Prim_20" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 1 }
@"$TyDescr_Uint64_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint64_Prim_20" to i8*) }
@"$TyDescr_Int128_Prim_22" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 2 }
@"$TyDescr_Int128_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int128_Prim_22" to i8*) }
@"$TyDescr_Uint128_Prim_24" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 2 }
@"$TyDescr_Uint128_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint128_Prim_24" to i8*) }
@"$TyDescr_Int256_Prim_26" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 3 }
@"$TyDescr_Int256_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int256_Prim_26" to i8*) }
@"$TyDescr_Uint256_Prim_28" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 3 }
@"$TyDescr_Uint256_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint256_Prim_28" to i8*) }
@"$TyDescr_String_Prim_30" = global %"$TyDescrTy_PrimTyp_13" { i32 2, i32 0 }
@"$TyDescr_String_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_String_Prim_30" to i8*) }
@"$TyDescr_Bnum_Prim_32" = global %"$TyDescrTy_PrimTyp_13" { i32 3, i32 0 }
@"$TyDescr_Bnum_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bnum_Prim_32" to i8*) }
@"$TyDescr_Message_Prim_34" = global %"$TyDescrTy_PrimTyp_13" { i32 4, i32 0 }
@"$TyDescr_Message_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Message_Prim_34" to i8*) }
@"$TyDescr_Event_Prim_36" = global %"$TyDescrTy_PrimTyp_13" { i32 5, i32 0 }
@"$TyDescr_Event_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Event_Prim_36" to i8*) }
@"$TyDescr_Exception_Prim_38" = global %"$TyDescrTy_PrimTyp_13" { i32 6, i32 0 }
@"$TyDescr_Exception_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Exception_Prim_38" to i8*) }
@"$TyDescr_ReplicateContr_Prim_40" = global %"$TyDescrTy_PrimTyp_13" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_ReplicateContr_Prim_40" to i8*) }
@"$TyDescr_Bystr_Prim_42" = global %"$TyDescrTy_PrimTyp_13" { i32 7, i32 0 }
@"$TyDescr_Bystr_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bystr_Prim_42" to i8*) }
@"$TyDescr_Bystr20_Prim_44" = global %"$TyDescrTy_PrimTyp_13" { i32 8, i32 20 }
@"$TyDescr_Bystr20_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bystr20_Prim_44" to i8*) }
@"$TyDescr_ADT_Option_Bool_49" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_Option_Bool_ADTTyp_Specl_66" to i8*) }
@"$TyDescr_ADT_Bool_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_Bool_ADTTyp_Specl_78" to i8*) }
@"$TyDescr_ADT_List_Message_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_List_Message_ADTTyp_Specl_90" to i8*) }
@"$TyDescr_Map_53" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_52"* @"$TyDescr_MapTyp_93" to i8*) }
@"$TyDescr_Addr_56" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_55"* @"$TyDescr_AddrFields_94" to i8*) }
@"$TyDescr_Option_ADTTyp_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_47" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_68", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_46"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_46"*], [1 x %"$TyDescrTy_ADTTyp_Specl_46"*]* @"$TyDescr_Option_ADTTyp_m_specls_67", i32 0, i32 0) }
@"$TyDescr_Option_Some_Bool_Constr_m_args_58" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50"]
@"$TyDescr_ADT_Some_59" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_59", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_58", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_61" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_62" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_62", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_61", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_64" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_48"*] [%"$TyDescrTy_ADTTyp_Constr_48"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_60", %"$TyDescrTy_ADTTyp_Constr_48"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_63"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_65" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_46" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_48"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_48"*], [2 x %"$TyDescrTy_ADTTyp_Constr_48"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_47"* @"$TyDescr_Option_ADTTyp_57" }
@"$TyDescr_Option_ADTTyp_m_specls_67" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_46"*] [%"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_Option_Bool_ADTTyp_Specl_66"]
@"$TyDescr_ADT_Option_68" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_80", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_46"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_46"*], [1 x %"$TyDescrTy_ADTTyp_Specl_46"*]* @"$TyDescr_Bool_ADTTyp_m_specls_79", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_70" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_71" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_71", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_70", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_73" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_74" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_48" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_74", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_76" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_48"*] [%"$TyDescrTy_ADTTyp_Constr_48"* @"$TyDescr_Bool_True_ADTTyp_Constr_72", %"$TyDescrTy_ADTTyp_Constr_48"* @"$TyDescr_Bool_False_ADTTyp_Constr_75"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_77" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_46" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_48"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_48"*], [2 x %"$TyDescrTy_ADTTyp_Constr_48"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_47"* @"$TyDescr_Bool_ADTTyp_69" }
@"$TyDescr_Bool_ADTTyp_m_specls_79" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_46"*] [%"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_Bool_ADTTyp_Specl_78"]
@"$TyDescr_ADT_Bool_80" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_92", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_46"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_46"*], [1 x %"$TyDescrTy_ADTTyp_Specl_46"*]* @"$TyDescr_List_ADTTyp_m_specls_91", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_82" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_35", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_51"]
@"$TyDescr_ADT_Cons_83" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_83", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_82", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_85" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_86" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_48" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_86", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_85", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_88" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_48"*] [%"$TyDescrTy_ADTTyp_Constr_48"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_84", %"$TyDescrTy_ADTTyp_Constr_48"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_87"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_89" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_35"]
@"$TyDescr_List_Message_ADTTyp_Specl_90" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_46" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_89", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_48"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_48"*], [2 x %"$TyDescrTy_ADTTyp_Constr_48"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_88", i32 0, i32 0), %"$TyDescrTy_ADTTyp_47"* @"$TyDescr_List_ADTTyp_81" }
@"$TyDescr_List_ADTTyp_m_specls_91" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_46"*] [%"$TyDescrTy_ADTTyp_Specl_46"* @"$TyDescr_List_Message_ADTTyp_Specl_90"]
@"$TyDescr_ADT_List_92" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_MapTyp_93" = unnamed_addr constant %"$TyDescr_MapTyp_52" { %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50" }
@"$TyDescr_AddrFields_94" = unnamed_addr constant %"$TyDescr_AddrTyp_55" { i32 -3, %"$TyDescr_AddrFieldTyp_54"* null }
@"$stringlit_133" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_138" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_141" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_149" = unnamed_addr constant [10 x i8] c"isApproved"
@"$_gas_charge_acc_2" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_1" = global %Int32 zeroinitializer
@ud-proxy.true = global %TName_Bool* null
@ud-proxy.nilMessage = global %TName_List_Message* null
@ud-proxy.oneMsg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@ud-proxy.eAdminSet = global { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-proxy.eError = global i8* null
@"$stringlit_215" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_220" = unnamed_addr constant [5 x i8] c"Error"
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_initialAdmin = global [20 x i8] zeroinitializer
@_cparam_registry = global [20 x i8] zeroinitializer
@"$admins_262" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_271" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_343" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_410" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_487" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_492" = unnamed_addr constant [6 x i8] c"bestow"
@"$stringlit_495" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_503" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_510" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_517" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_524" = unnamed_addr constant [8 x i8] c"resolver"
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_51", %_TyDescrTy_Typ* @"$TyDescr_Event_37", %_TyDescrTy_Typ* @"$TyDescr_Int64_19", %_TyDescrTy_Typ* @"$TyDescr_Addr_56", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_49", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", %_TyDescrTy_Typ* @"$TyDescr_Bnum_33", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ* @"$TyDescr_Map_53", %_TyDescrTy_Typ* @"$TyDescr_Exception_39", %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ* @"$TyDescr_Int256_27", %_TyDescrTy_Typ* @"$TyDescr_Int128_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_41", %_TyDescrTy_Typ* @"$TyDescr_Message_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_15"]
@_tydescr_table_length = constant i32 21
@"$pname__scilla_version_586" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_587" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_588" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_initialAdmin_589" = unnamed_addr constant [12 x i8] c"initialAdmin"
@"$pname_registry_590" = unnamed_addr constant [8 x i8] c"registry"
@_contract_parameters = constant [5 x %"$ParamDescr_584"] [%"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_586", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_17" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_587", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_588", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_33" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialAdmin_589", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_registry_590", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_591" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_592" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_593" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_594" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_595" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_596" = unnamed_addr constant [5 x %"$ParamDescr_584"] [%"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_591", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_25" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_592", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_593", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_594", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_595", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50" }]
@"$tname_setAdmin_597" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_598" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_599" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_600" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_601" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_602" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_603" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_604" = unnamed_addr constant [6 x %"$ParamDescr_584"] [%"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_598", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_25" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_599", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_600", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_601", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_31" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_602", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }, %"$ParamDescr_584" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_603", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }]
@"$tname_bestow_605" = unnamed_addr constant [6 x i8] c"bestow"
@_transition_parameters = constant [2 x %"$TransDescr_585"] [%"$TransDescr_585" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_597", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_584"* getelementptr inbounds ([5 x %"$ParamDescr_584"], [5 x %"$ParamDescr_584"]* @"$tparams_setAdmin_596", i32 0, i32 0) }, %"$TransDescr_585" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_605", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_584"* getelementptr inbounds ([6 x %"$ParamDescr_584"], [6 x %"$ParamDescr_584"]* @"$tparams_bestow_604", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal i8* @"$fundef_8"(%"$$fundef_8_env_95"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$isApproved_158" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$isApproved_158", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$isApproved_158", metadata !8, metadata !DIExpression()), !dbg !11
  %"$$fundef_8_env_address_125" = getelementptr inbounds %"$$fundef_8_env_95", %"$$fundef_8_env_95"* %0, i32 0, i32 0
  %"$address_envload_126" = load [20 x i8], [20 x i8]* %"$$fundef_8_env_address_125", align 1
  %address = alloca [20 x i8], align 1
  store [20 x i8] %"$address_envload_126", [20 x i8]* %address, align 1
  %"$retval_9" = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %"$retval_9", metadata !12, metadata !DIExpression()), !dbg !15
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %entry
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %"$msgobj_132_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_132_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_132_salloc_load", i64 117)
  %"$msgobj_132_salloc" = bitcast i8* %"$msgobj_132_salloc_salloc" to [117 x i8]*
  %"$msgobj_132" = bitcast [117 x i8]* %"$msgobj_132_salloc" to i8*
  store i8 3, i8* %"$msgobj_132", align 1
  %"$msgobj_fname_134" = getelementptr i8, i8* %"$msgobj_132", i32 1
  %"$msgobj_fname_135" = bitcast i8* %"$msgobj_fname_134" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_133", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_135", align 8
  %"$msgobj_td_136" = getelementptr i8, i8* %"$msgobj_132", i32 17
  %"$msgobj_td_137" = bitcast i8* %"$msgobj_td_136" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_137", align 8
  %"$msgobj_v_139" = getelementptr i8, i8* %"$msgobj_132", i32 25
  %"$msgobj_v_140" = bitcast i8* %"$msgobj_v_139" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_138", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_140", align 8
  %"$msgobj_fname_142" = getelementptr i8, i8* %"$msgobj_132", i32 41
  %"$msgobj_fname_143" = bitcast i8* %"$msgobj_fname_142" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_141", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_143", align 8
  %"$msgobj_td_144" = getelementptr i8, i8* %"$msgobj_132", i32 57
  %"$msgobj_td_145" = bitcast i8* %"$msgobj_td_144" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45", %_TyDescrTy_Typ** %"$msgobj_td_145", align 8
  %"$address_146" = load [20 x i8], [20 x i8]* %address, align 1
  %"$msgobj_v_147" = getelementptr i8, i8* %"$msgobj_132", i32 65
  %"$msgobj_v_148" = bitcast i8* %"$msgobj_v_147" to [20 x i8]*
  store [20 x i8] %"$address_146", [20 x i8]* %"$msgobj_v_148", align 1
  %"$msgobj_fname_150" = getelementptr i8, i8* %"$msgobj_132", i32 85
  %"$msgobj_fname_151" = bitcast i8* %"$msgobj_fname_150" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_149", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_151", align 8
  %"$msgobj_td_152" = getelementptr i8, i8* %"$msgobj_132", i32 101
  %"$msgobj_td_153" = bitcast i8* %"$msgobj_td_152" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50", %_TyDescrTy_Typ** %"$msgobj_td_153", align 8
  %"$msgobj_v_154" = getelementptr i8, i8* %"$msgobj_132", i32 109
  %"$msgobj_v_155" = bitcast i8* %"$msgobj_v_154" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_155", align 8
  store i8* %"$msgobj_132", i8** %"$retval_9", align 8, !dbg !15
  %"$$retval_9_157" = load i8*, i8** %"$retval_9", align 8
  ret i8* %"$$retval_9_157"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_6"(%"$$fundef_6_env_96"* %0, [20 x i8]* %1) !dbg !16 {
entry:
  %"$address_124" = alloca [20 x i8]*, align 8
  store [20 x i8]* %1, [20 x i8]** %"$address_124", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$address_124", metadata !17, metadata !DIExpression()), !dbg !19
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_7" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %entry
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %"$$fundef_8_envp_118_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_8_envp_118_salloc" = call i8* @_salloc(i8* %"$$fundef_8_envp_118_load", i64 20)
  %"$$fundef_8_envp_118" = bitcast i8* %"$$fundef_8_envp_118_salloc" to %"$$fundef_8_env_95"*
  %"$$fundef_8_env_voidp_120" = bitcast %"$$fundef_8_env_95"* %"$$fundef_8_envp_118" to i8*
  %"$$fundef_8_cloval_121" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_8_env_95"*, %TName_Bool*)* @"$fundef_8" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_8_env_voidp_120", 1
  %"$$fundef_8_env_address_122" = getelementptr inbounds %"$$fundef_8_env_95", %"$$fundef_8_env_95"* %"$$fundef_8_envp_118", i32 0, i32 0
  store [20 x i8] %address, [20 x i8]* %"$$fundef_8_env_address_122", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_8_cloval_121", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_7", align 8, !dbg !20
  %"$$retval_7_123" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_7", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_7_123"
}

define internal %TName_List_Message* @"$fundef_10"(%"$$fundef_10_env_97"* %0, i8* %1) !dbg !21 {
entry:
  %"$msg_112" = alloca i8*, align 8
  store i8* %1, i8** %"$msg_112", align 8
  call void @llvm.dbg.declare(metadata i8** %"$msg_112", metadata !22, metadata !DIExpression()), !dbg !25
  %"$$fundef_10_env_ud-proxy.nilMessage_98" = getelementptr inbounds %"$$fundef_10_env_97", %"$$fundef_10_env_97"* %0, i32 0, i32 0
  %"$ud-proxy.nilMessage_envload_99" = load %TName_List_Message*, %TName_List_Message** %"$$fundef_10_env_ud-proxy.nilMessage_98", align 8
  %ud-proxy.nilMessage = alloca %TName_List_Message*, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_envload_99", %TName_List_Message** %ud-proxy.nilMessage, align 8
  %"$retval_11" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$retval_11", metadata !26, metadata !DIExpression()), !dbg !29
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %entry
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$ud-proxy.nilMessage_105" = load %TName_List_Message*, %TName_List_Message** %ud-proxy.nilMessage, align 8
  %"$adtval_106_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_106_salloc" = call i8* @_salloc(i8* %"$adtval_106_load", i64 17)
  %"$adtval_106" = bitcast i8* %"$adtval_106_salloc" to %CName_Cons_Message*
  %"$adtgep_107" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_106", i32 0, i32 0
  store i8 0, i8* %"$adtgep_107", align 1
  %"$adtgep_108" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_106", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_108", align 8
  %"$adtgep_109" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_106", i32 0, i32 2
  store %TName_List_Message* %"$ud-proxy.nilMessage_105", %TName_List_Message** %"$adtgep_109", align 8
  %"$adtptr_110" = bitcast %CName_Cons_Message* %"$adtval_106" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_110", %TName_List_Message** %"$retval_11", align 8, !dbg !29
  %"$$retval_11_111" = load %TName_List_Message*, %TName_List_Message** %"$retval_11", align 8
  ret %TName_List_Message* %"$$retval_11_111"
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !30 {
entry:
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 5, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %entry
  %"$consume_163" = sub i64 %"$gasrem_159", 5
  store i64 %"$consume_163", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_2", align 4, !dbg !32
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 8, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 8
  store i64 %"$consume_168", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !32
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 20, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_167"
  %"$consume_173" = sub i64 %"$gasrem_169", 20
  store i64 %"$consume_173", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_1", align 4, !dbg !32
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$adtval_179_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_179_salloc" = call i8* @_salloc(i8* %"$adtval_179_load", i64 1)
  %"$adtval_179" = bitcast i8* %"$adtval_179_salloc" to %CName_True*
  %"$adtgep_180" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_179", i32 0, i32 0
  store i8 0, i8* %"$adtgep_180", align 1
  %"$adtptr_181" = bitcast %CName_True* %"$adtval_179" to %TName_Bool*
  store %TName_Bool* %"$adtptr_181", %TName_Bool** @ud-proxy.true, align 8, !dbg !33
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_177"
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %"$adtval_187_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_187_salloc" = call i8* @_salloc(i8* %"$adtval_187_load", i64 1)
  %"$adtval_187" = bitcast i8* %"$adtval_187_salloc" to %CName_Nil_Message*
  %"$adtgep_188" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_187", i32 0, i32 0
  store i8 1, i8* %"$adtgep_188", align 1
  %"$adtptr_189" = bitcast %CName_Nil_Message* %"$adtval_187" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_189", %TName_List_Message** @ud-proxy.nilMessage, align 8, !dbg !34
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$have_gas_185"
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %"$$fundef_10_envp_195_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_10_envp_195_salloc" = call i8* @_salloc(i8* %"$$fundef_10_envp_195_load", i64 8)
  %"$$fundef_10_envp_195" = bitcast i8* %"$$fundef_10_envp_195_salloc" to %"$$fundef_10_env_97"*
  %"$$fundef_10_env_voidp_197" = bitcast %"$$fundef_10_env_97"* %"$$fundef_10_envp_195" to i8*
  %"$$fundef_10_cloval_198" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_10_env_97"*, i8*)* @"$fundef_10" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_10_env_voidp_197", 1
  %"$$fundef_10_env_ud-proxy.nilMessage_199" = getelementptr inbounds %"$$fundef_10_env_97", %"$$fundef_10_env_97"* %"$$fundef_10_envp_195", i32 0, i32 0
  %"$ud-proxy.nilMessage_200" = load %TName_List_Message*, %TName_List_Message** @ud-proxy.nilMessage, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_200", %TName_List_Message** %"$$fundef_10_env_ud-proxy.nilMessage_199", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_10_cloval_198", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8, !dbg !35
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 1, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %"$have_gas_193"
  %"$consume_205" = sub i64 %"$gasrem_201", 1
  store i64 %"$consume_205", i64* @_gasrem, align 8
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_6_env_96"*, [20 x i8]*)* @"$fundef_6" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8, !dbg !36
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_204"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %"$msgobj_214_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_214_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_214_salloc_load", i64 41)
  %"$msgobj_214_salloc" = bitcast i8* %"$msgobj_214_salloc_salloc" to [41 x i8]*
  %"$msgobj_214" = bitcast [41 x i8]* %"$msgobj_214_salloc" to i8*
  store i8 1, i8* %"$msgobj_214", align 1
  %"$msgobj_fname_216" = getelementptr i8, i8* %"$msgobj_214", i32 1
  %"$msgobj_fname_217" = bitcast i8* %"$msgobj_fname_216" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_215", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_217", align 8
  %"$msgobj_td_218" = getelementptr i8, i8* %"$msgobj_214", i32 17
  %"$msgobj_td_219" = bitcast i8* %"$msgobj_td_218" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_219", align 8
  %"$msgobj_v_221" = getelementptr i8, i8* %"$msgobj_214", i32 25
  %"$msgobj_v_222" = bitcast i8* %"$msgobj_v_221" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_220", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_222", align 8
  store i8* %"$msgobj_214", i8** @ud-proxy.eError, align 8, !dbg !37
  ret void
}

define void @_deploy_ops() !dbg !38 {
entry:
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %entry
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %"$admins_12" = alloca %Map_ByStr20_Bool*, align 8
  call void @llvm.dbg.declare(metadata %Map_ByStr20_Bool** %"$admins_12", metadata !39, metadata !DIExpression()), !dbg !42
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_227"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr20_Bool*, align 8
  call void @llvm.dbg.declare(metadata %Map_ByStr20_Bool** %empty, metadata !43, metadata !DIExpression()), !dbg !44
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$execptr_load_239" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_240" = call i8* @_new_empty_map(i8* %"$execptr_load_239")
  %"$_new_empty_map_241" = bitcast i8* %"$_new_empty_map_call_240" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$_new_empty_map_241", %Map_ByStr20_Bool** %empty, align 8, !dbg !45
  %"$empty_242" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_242_243" = bitcast %Map_ByStr20_Bool* %"$empty_242" to i8*
  %"$_lengthof_call_244" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$empty_242_243")
  %"$gasadd_245" = add i64 1, %"$_lengthof_call_244"
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 %"$gasadd_245", %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_237"
  %"$consume_250" = sub i64 %"$gasrem_246", %"$gasadd_245"
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %"$execptr_load_251" = load i8*, i8** @_execptr, align 8
  %"$empty_252" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_252_253" = bitcast %Map_ByStr20_Bool* %"$empty_252" to i8*
  %"$put_initialAdmin_254" = alloca [20 x i8], align 1
  %"$initialAdmin_255" = load [20 x i8], [20 x i8]* @_cparam_initialAdmin, align 1
  store [20 x i8] %"$initialAdmin_255", [20 x i8]* %"$put_initialAdmin_254", align 1
  %"$$put_initialAdmin_254_256" = bitcast [20 x i8]* %"$put_initialAdmin_254" to i8*
  %"$ud-proxy.true_257" = load %TName_Bool*, %TName_Bool** @ud-proxy.true, align 8
  %"$$ud-proxy.true_257_258" = bitcast %TName_Bool* %"$ud-proxy.true_257" to i8*
  %"$put_call_259" = call i8* @_put(i8* %"$execptr_load_251", %_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$empty_252_253", i8* %"$$put_initialAdmin_254_256", i8* %"$$ud-proxy.true_257_258"), !dbg !46
  %"$put_260" = bitcast i8* %"$put_call_259" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$put_260", %Map_ByStr20_Bool** %"$admins_12", align 8, !dbg !46
  %"$execptr_load_261" = load i8*, i8** @_execptr, align 8
  %"$$admins_12_263" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %"$admins_12", align 8
  %"$update_value_264" = bitcast %Map_ByStr20_Bool* %"$$admins_12_263" to i8*
  call void @_update_field(i8* %"$execptr_load_261", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_262", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_53", i32 0, i8* null, i8* %"$update_value_264"), !dbg !45
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_265"(%Uint128 %_amount, [20 x i8]* %"$_origin_266", [20 x i8]* %"$_sender_267", [20 x i8]* %"$address_268", %TName_Bool* %isApproved) !dbg !47 {
entry:
  %"$isApproved_391" = alloca %TName_Bool*, align 8
  store %TName_Bool* %isApproved, %TName_Bool** %"$isApproved_391", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$isApproved_391", metadata !48, metadata !DIExpression()), !dbg !49
  %"$address_390" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$address_268", [20 x i8]** %"$address_390", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$address_390", metadata !50, metadata !DIExpression()), !dbg !51
  %"$_sender_389" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_267", [20 x i8]** %"$_sender_389", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_389", metadata !52, metadata !DIExpression()), !dbg !54
  %"$_origin_388" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_266", [20 x i8]** %"$_origin_388", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_388", metadata !55, metadata !DIExpression()), !dbg !54
  %"$_amount_387" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_387", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_387", metadata !56, metadata !DIExpression()), !dbg !54
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_266", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_267", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_268", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %maybeAdmin, metadata !58, metadata !DIExpression()), !dbg !61
  %"$indices_buf_269_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_269_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_269_salloc_load", i64 20)
  %"$indices_buf_269_salloc" = bitcast i8* %"$indices_buf_269_salloc_salloc" to [20 x i8]*
  %"$indices_buf_269" = bitcast [20 x i8]* %"$indices_buf_269_salloc" to i8*
  %"$indices_gep_270" = getelementptr i8, i8* %"$indices_buf_269", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_270" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_272" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_273" = call i8* @_fetch_field(i8* %"$execptr_load_272", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_271", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_53", i32 1, i8* %"$indices_buf_269", i32 1), !dbg !61
  %"$maybeAdmin_274" = bitcast i8* %"$maybeAdmin_call_273" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_274", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_275" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_275_276" = bitcast %TName_Option_Bool* %"$maybeAdmin_275" to i8*
  %"$_literal_cost_call_277" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_49", i8* %"$$maybeAdmin_275_276")
  %"$gasadd_278" = add i64 %"$_literal_cost_call_277", 0
  %"$gasadd_279" = add i64 %"$gasadd_278", 1
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 %"$gasadd_279", %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %entry
  %"$consume_284" = sub i64 %"$gasrem_280", %"$gasadd_279"
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %isSenderAdmin, metadata !62, metadata !DIExpression()), !dbg !63
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 2, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 2
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$maybeAdmin_296" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_297" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_296", i32 0, i32 0
  %"$maybeAdmin_tag_298" = load i8, i8* %"$maybeAdmin_tag_297", align 1
  switch i8 %"$maybeAdmin_tag_298", label %"$empty_default_299" [
    i8 0, label %"$Some_300"
    i8 1, label %"$None_310"
  ], !dbg !64

"$Some_300":                                      ; preds = %"$have_gas_293"
  %"$maybeAdmin_301" = bitcast %TName_Option_Bool* %"$maybeAdmin_296" to %CName_Some_Bool*
  %"$approval_gep_302" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_301", i32 0, i32 1
  %"$approval_load_303" = load %TName_Bool*, %TName_Bool** %"$approval_gep_302", align 8
  %approval = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$approval_load_303", %TName_Bool** %approval, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$Some_300"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$Some_300"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$approval_309" = load %TName_Bool*, %TName_Bool** %approval, align 8
  store %TName_Bool* %"$approval_309", %TName_Bool** %isSenderAdmin, align 8, !dbg !65
  br label %"$matchsucc_295"

"$None_310":                                      ; preds = %"$have_gas_293"
  %"$maybeAdmin_311" = bitcast %TName_Option_Bool* %"$maybeAdmin_296" to %CName_None_Bool*
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$None_310"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$None_310"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %"$adtval_317_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_317_salloc" = call i8* @_salloc(i8* %"$adtval_317_load", i64 1)
  %"$adtval_317" = bitcast i8* %"$adtval_317_salloc" to %CName_False*
  %"$adtgep_318" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_317", i32 0, i32 0
  store i8 1, i8* %"$adtgep_318", align 1
  %"$adtptr_319" = bitcast %CName_False* %"$adtval_317" to %TName_Bool*
  store %TName_Bool* %"$adtptr_319", %TName_Bool** %isSenderAdmin, align 8, !dbg !68
  br label %"$matchsucc_295"

"$empty_default_299":                             ; preds = %"$have_gas_293"
  br label %"$matchsucc_295"

"$matchsucc_295":                                 ; preds = %"$have_gas_315", %"$have_gas_307", %"$empty_default_299"
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 2, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$matchsucc_295"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$matchsucc_295"
  %"$consume_324" = sub i64 %"$gasrem_320", 2
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$isSenderAdmin_326" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_327" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_326", i32 0, i32 0
  %"$isSenderAdmin_tag_328" = load i8, i8* %"$isSenderAdmin_tag_327", align 1
  switch i8 %"$isSenderAdmin_tag_328", label %"$empty_default_329" [
    i8 0, label %"$True_330"
    i8 1, label %"$False_375"
  ], !dbg !70

"$True_330":                                      ; preds = %"$have_gas_323"
  %"$isSenderAdmin_331" = bitcast %TName_Bool* %"$isSenderAdmin_326" to %CName_True*
  %"$isApproved_332" = bitcast %TName_Bool* %isApproved to i8*
  %"$_literal_cost_call_333" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50", i8* %"$isApproved_332")
  %"$gasadd_334" = add i64 %"$_literal_cost_call_333", 1
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 %"$gasadd_334", %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$True_330"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$True_330"
  %"$consume_339" = sub i64 %"$gasrem_335", %"$gasadd_334"
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %"$indices_buf_340_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_340_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_340_salloc_load", i64 20)
  %"$indices_buf_340_salloc" = bitcast i8* %"$indices_buf_340_salloc_salloc" to [20 x i8]*
  %"$indices_buf_340" = bitcast [20 x i8]* %"$indices_buf_340_salloc" to i8*
  %"$indices_gep_341" = getelementptr i8, i8* %"$indices_buf_340", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_341" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_342" = load i8*, i8** @_execptr, align 8
  %"$update_value_344" = bitcast %TName_Bool* %isApproved to i8*
  call void @_update_field(i8* %"$execptr_load_342", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_343", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_53", i32 1, i8* %"$indices_buf_340", i8* %"$update_value_344"), !dbg !71
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_338"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !74, metadata !DIExpression()), !dbg !75
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_348"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  %"$ud-proxy.eAdminSet_3" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-proxy.eAdminSet_355" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8
  %"$ud-proxy.eAdminSet_fptr_356" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_355", 0
  %"$ud-proxy.eAdminSet_envptr_357" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_355", 1
  %"$ud-proxy.eAdminSet_address_358" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-proxy.eAdminSet_address_358", align 1
  %"$ud-proxy.eAdminSet_call_359" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_fptr_356"(i8* %"$ud-proxy.eAdminSet_envptr_357", [20 x i8]* %"$ud-proxy.eAdminSet_address_358"), !dbg !76
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_call_359", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_3", align 8, !dbg !76
  %"$ud-proxy.eAdminSet_4" = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %"$ud-proxy.eAdminSet_4", metadata !77, metadata !DIExpression()), !dbg !76
  %"$$ud-proxy.eAdminSet_3_360" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_3", align 8
  %"$$ud-proxy.eAdminSet_3_fptr_361" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_3_360", 0
  %"$$ud-proxy.eAdminSet_3_envptr_362" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_3_360", 1
  %"$$ud-proxy.eAdminSet_3_call_363" = call i8* %"$$ud-proxy.eAdminSet_3_fptr_361"(i8* %"$$ud-proxy.eAdminSet_3_envptr_362", %TName_Bool* %isApproved), !dbg !76
  store i8* %"$$ud-proxy.eAdminSet_3_call_363", i8** %"$ud-proxy.eAdminSet_4", align 8, !dbg !76
  %"$$ud-proxy.eAdminSet_4_364" = load i8*, i8** %"$ud-proxy.eAdminSet_4", align 8
  store i8* %"$$ud-proxy.eAdminSet_4_364", i8** %e, align 8, !dbg !76
  %"$e_365" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_367" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$e_365")
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 %"$_literal_cost_call_367", %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_353"
  %"$consume_372" = sub i64 %"$gasrem_368", %"$_literal_cost_call_367"
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$execptr_load_373" = load i8*, i8** @_execptr, align 8
  %"$e_374" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_373", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$e_374"), !dbg !78
  br label %"$matchsucc_325"

"$False_375":                                     ; preds = %"$have_gas_323"
  %"$isSenderAdmin_376" = bitcast %TName_Bool* %"$isSenderAdmin_326" to %CName_False*
  %"$ud-proxy.eError_377" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_379" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_377")
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 %"$_literal_cost_call_379", %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$False_375"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$False_375"
  %"$consume_384" = sub i64 %"$gasrem_380", %"$_literal_cost_call_379"
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$execptr_load_385" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_386" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_385", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_386"), !dbg !79
  br label %"$matchsucc_325"

"$empty_default_329":                             ; preds = %"$have_gas_323"
  br label %"$matchsucc_325"

"$matchsucc_325":                                 ; preds = %"$have_gas_383", %"$have_gas_371", %"$empty_default_329"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) !dbg !81 {
entry:
  %"$_amount_393" = getelementptr i8, i8* %0, i32 0
  %"$_amount_394" = bitcast i8* %"$_amount_393" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_394", align 8
  %"$_origin_395" = getelementptr i8, i8* %0, i32 16
  %"$_origin_396" = bitcast i8* %"$_origin_395" to [20 x i8]*
  %"$_sender_397" = getelementptr i8, i8* %0, i32 36
  %"$_sender_398" = bitcast i8* %"$_sender_397" to [20 x i8]*
  %"$address_399" = getelementptr i8, i8* %0, i32 56
  %"$address_400" = bitcast i8* %"$address_399" to [20 x i8]*
  %"$isApproved_401" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_402" = bitcast i8* %"$isApproved_401" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_402", align 8
  call void @"$setAdmin_265"(%Uint128 %_amount, [20 x i8]* %"$_origin_396", [20 x i8]* %"$_sender_398", [20 x i8]* %"$address_400", %TName_Bool* %isApproved), !dbg !82
  ret void
}

define internal void @"$bestow_403"(%Uint128 %_amount, [20 x i8]* %"$_origin_404", [20 x i8]* %"$_sender_405", %String %label, [20 x i8]* %"$owner_406", [20 x i8]* %"$resolver_407") !dbg !83 {
entry:
  %"$resolver_570" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$resolver_407", [20 x i8]** %"$resolver_570", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$resolver_570", metadata !84, metadata !DIExpression()), !dbg !85
  %"$owner_569" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$owner_406", [20 x i8]** %"$owner_569", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$owner_569", metadata !86, metadata !DIExpression()), !dbg !87
  %"$label_568" = alloca %String, align 8
  store %String %label, %String* %"$label_568", align 8
  call void @llvm.dbg.declare(metadata %String* %"$label_568", metadata !88, metadata !DIExpression()), !dbg !90
  %"$_sender_567" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_405", [20 x i8]** %"$_sender_567", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_567", metadata !91, metadata !DIExpression()), !dbg !92
  %"$_origin_566" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_404", [20 x i8]** %"$_origin_566", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_566", metadata !93, metadata !DIExpression()), !dbg !92
  %"$_amount_565" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_565", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_565", metadata !94, metadata !DIExpression()), !dbg !92
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_404", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_405", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_406", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_407", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %maybeAdmin, metadata !95, metadata !DIExpression()), !dbg !96
  %"$indices_buf_408_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_408_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_408_salloc_load", i64 20)
  %"$indices_buf_408_salloc" = bitcast i8* %"$indices_buf_408_salloc_salloc" to [20 x i8]*
  %"$indices_buf_408" = bitcast [20 x i8]* %"$indices_buf_408_salloc" to i8*
  %"$indices_gep_409" = getelementptr i8, i8* %"$indices_buf_408", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_409" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_411" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_412" = call i8* @_fetch_field(i8* %"$execptr_load_411", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_410", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_53", i32 1, i8* %"$indices_buf_408", i32 1), !dbg !96
  %"$maybeAdmin_413" = bitcast i8* %"$maybeAdmin_call_412" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_413", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_414" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_414_415" = bitcast %TName_Option_Bool* %"$maybeAdmin_414" to i8*
  %"$_literal_cost_call_416" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_49", i8* %"$$maybeAdmin_414_415")
  %"$gasadd_417" = add i64 %"$_literal_cost_call_416", 0
  %"$gasadd_418" = add i64 %"$gasadd_417", 1
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 %"$gasadd_418", %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %entry
  %"$consume_423" = sub i64 %"$gasrem_419", %"$gasadd_418"
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %isSenderAdmin, metadata !97, metadata !DIExpression()), !dbg !98
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 2, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_427"
  %"$consume_433" = sub i64 %"$gasrem_429", 2
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %"$maybeAdmin_435" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_436" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_435", i32 0, i32 0
  %"$maybeAdmin_tag_437" = load i8, i8* %"$maybeAdmin_tag_436", align 1
  switch i8 %"$maybeAdmin_tag_437", label %"$empty_default_438" [
    i8 0, label %"$Some_439"
    i8 1, label %"$None_449"
  ], !dbg !99

"$Some_439":                                      ; preds = %"$have_gas_432"
  %"$maybeAdmin_440" = bitcast %TName_Option_Bool* %"$maybeAdmin_435" to %CName_Some_Bool*
  %"$isAdmin_gep_441" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_440", i32 0, i32 1
  %"$isAdmin_load_442" = load %TName_Bool*, %TName_Bool** %"$isAdmin_gep_441", align 8
  %isAdmin = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$isAdmin_load_442", %TName_Bool** %isAdmin, align 8
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$Some_439"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$Some_439"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %"$isAdmin_448" = load %TName_Bool*, %TName_Bool** %isAdmin, align 8
  store %TName_Bool* %"$isAdmin_448", %TName_Bool** %isSenderAdmin, align 8, !dbg !100
  br label %"$matchsucc_434"

"$None_449":                                      ; preds = %"$have_gas_432"
  %"$maybeAdmin_450" = bitcast %TName_Option_Bool* %"$maybeAdmin_435" to %CName_None_Bool*
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$None_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$None_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$adtval_456_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_456_salloc" = call i8* @_salloc(i8* %"$adtval_456_load", i64 1)
  %"$adtval_456" = bitcast i8* %"$adtval_456_salloc" to %CName_False*
  %"$adtgep_457" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_456", i32 0, i32 0
  store i8 1, i8* %"$adtgep_457", align 1
  %"$adtptr_458" = bitcast %CName_False* %"$adtval_456" to %TName_Bool*
  store %TName_Bool* %"$adtptr_458", %TName_Bool** %isSenderAdmin, align 8, !dbg !103
  br label %"$matchsucc_434"

"$empty_default_438":                             ; preds = %"$have_gas_432"
  br label %"$matchsucc_434"

"$matchsucc_434":                                 ; preds = %"$have_gas_454", %"$have_gas_446", %"$empty_default_438"
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 2, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$matchsucc_434"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$matchsucc_434"
  %"$consume_463" = sub i64 %"$gasrem_459", 2
  store i64 %"$consume_463", i64* @_gasrem, align 8
  %"$isSenderAdmin_465" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_466" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_465", i32 0, i32 0
  %"$isSenderAdmin_tag_467" = load i8, i8* %"$isSenderAdmin_tag_466", align 1
  switch i8 %"$isSenderAdmin_tag_467", label %"$empty_default_468" [
    i8 0, label %"$True_469"
    i8 1, label %"$False_553"
  ], !dbg !105

"$True_469":                                      ; preds = %"$have_gas_462"
  %"$isSenderAdmin_470" = bitcast %TName_Bool* %"$isSenderAdmin_465" to %CName_True*
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$True_469"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$True_469"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %msgs, metadata !106, metadata !DIExpression()), !dbg !109
  %"$gasrem_476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_474"
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %m, metadata !110, metadata !DIExpression()), !dbg !111
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_479"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_479"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %"$msgobj_486_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_486_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_486_salloc_load", i64 253)
  %"$msgobj_486_salloc" = bitcast i8* %"$msgobj_486_salloc_salloc" to [253 x i8]*
  %"$msgobj_486" = bitcast [253 x i8]* %"$msgobj_486_salloc" to i8*
  store i8 6, i8* %"$msgobj_486", align 1
  %"$msgobj_fname_488" = getelementptr i8, i8* %"$msgobj_486", i32 1
  %"$msgobj_fname_489" = bitcast i8* %"$msgobj_fname_488" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_487", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_489", align 8
  %"$msgobj_td_490" = getelementptr i8, i8* %"$msgobj_486", i32 17
  %"$msgobj_td_491" = bitcast i8* %"$msgobj_td_490" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_491", align 8
  %"$msgobj_v_493" = getelementptr i8, i8* %"$msgobj_486", i32 25
  %"$msgobj_v_494" = bitcast i8* %"$msgobj_v_493" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_492", i32 0, i32 0), i32 6 }, %String* %"$msgobj_v_494", align 8
  %"$msgobj_fname_496" = getelementptr i8, i8* %"$msgobj_486", i32 41
  %"$msgobj_fname_497" = bitcast i8* %"$msgobj_fname_496" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_495", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_497", align 8
  %"$msgobj_td_498" = getelementptr i8, i8* %"$msgobj_486", i32 57
  %"$msgobj_td_499" = bitcast i8* %"$msgobj_td_498" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45", %_TyDescrTy_Typ** %"$msgobj_td_499", align 8
  %"$registry_500" = load [20 x i8], [20 x i8]* @_cparam_registry, align 1
  %"$msgobj_v_501" = getelementptr i8, i8* %"$msgobj_486", i32 65
  %"$msgobj_v_502" = bitcast i8* %"$msgobj_v_501" to [20 x i8]*
  store [20 x i8] %"$registry_500", [20 x i8]* %"$msgobj_v_502", align 1
  %"$msgobj_fname_504" = getelementptr i8, i8* %"$msgobj_486", i32 85
  %"$msgobj_fname_505" = bitcast i8* %"$msgobj_fname_504" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_503", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_505", align 8
  %"$msgobj_td_506" = getelementptr i8, i8* %"$msgobj_486", i32 101
  %"$msgobj_td_507" = bitcast i8* %"$msgobj_td_506" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ** %"$msgobj_td_507", align 8
  %"$msgobj_v_508" = getelementptr i8, i8* %"$msgobj_486", i32 109
  %"$msgobj_v_509" = bitcast i8* %"$msgobj_v_508" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_509", align 8
  %"$msgobj_fname_511" = getelementptr i8, i8* %"$msgobj_486", i32 125
  %"$msgobj_fname_512" = bitcast i8* %"$msgobj_fname_511" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_510", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_512", align 8
  %"$msgobj_td_513" = getelementptr i8, i8* %"$msgobj_486", i32 141
  %"$msgobj_td_514" = bitcast i8* %"$msgobj_td_513" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_514", align 8
  %"$msgobj_v_515" = getelementptr i8, i8* %"$msgobj_486", i32 149
  %"$msgobj_v_516" = bitcast i8* %"$msgobj_v_515" to %String*
  store %String %label, %String* %"$msgobj_v_516", align 8
  %"$msgobj_fname_518" = getelementptr i8, i8* %"$msgobj_486", i32 165
  %"$msgobj_fname_519" = bitcast i8* %"$msgobj_fname_518" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_517", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_519", align 8
  %"$msgobj_td_520" = getelementptr i8, i8* %"$msgobj_486", i32 181
  %"$msgobj_td_521" = bitcast i8* %"$msgobj_td_520" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45", %_TyDescrTy_Typ** %"$msgobj_td_521", align 8
  %"$msgobj_v_522" = getelementptr i8, i8* %"$msgobj_486", i32 189
  %"$msgobj_v_523" = bitcast i8* %"$msgobj_v_522" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_523", align 1
  %"$msgobj_fname_525" = getelementptr i8, i8* %"$msgobj_486", i32 209
  %"$msgobj_fname_526" = bitcast i8* %"$msgobj_fname_525" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_524", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_526", align 8
  %"$msgobj_td_527" = getelementptr i8, i8* %"$msgobj_486", i32 225
  %"$msgobj_td_528" = bitcast i8* %"$msgobj_td_527" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45", %_TyDescrTy_Typ** %"$msgobj_td_528", align 8
  %"$msgobj_v_529" = getelementptr i8, i8* %"$msgobj_486", i32 233
  %"$msgobj_v_530" = bitcast i8* %"$msgobj_v_529" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_530", align 1
  store i8* %"$msgobj_486", i8** %m, align 8, !dbg !112
  %"$gasrem_532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_533" = icmp ugt i64 1, %"$gasrem_532"
  br i1 %"$gascmp_533", label %"$out_of_gas_534", label %"$have_gas_535"

"$out_of_gas_534":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_535"

"$have_gas_535":                                  ; preds = %"$out_of_gas_534", %"$have_gas_484"
  %"$consume_536" = sub i64 %"$gasrem_532", 1
  store i64 %"$consume_536", i64* @_gasrem, align 8
  %"$ud-proxy.oneMsg_5" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$ud-proxy.oneMsg_5", metadata !113, metadata !DIExpression()), !dbg !114
  %"$ud-proxy.oneMsg_537" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8
  %"$ud-proxy.oneMsg_fptr_538" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_537", 0
  %"$ud-proxy.oneMsg_envptr_539" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_537", 1
  %"$m_540" = load i8*, i8** %m, align 8
  %"$ud-proxy.oneMsg_call_541" = call %TName_List_Message* %"$ud-proxy.oneMsg_fptr_538"(i8* %"$ud-proxy.oneMsg_envptr_539", i8* %"$m_540"), !dbg !114
  store %TName_List_Message* %"$ud-proxy.oneMsg_call_541", %TName_List_Message** %"$ud-proxy.oneMsg_5", align 8, !dbg !114
  %"$$ud-proxy.oneMsg_5_542" = load %TName_List_Message*, %TName_List_Message** %"$ud-proxy.oneMsg_5", align 8
  store %TName_List_Message* %"$$ud-proxy.oneMsg_5_542", %TName_List_Message** %msgs, align 8, !dbg !114
  %"$msgs_543" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_543_544" = bitcast %TName_List_Message* %"$msgs_543" to i8*
  %"$_literal_cost_call_545" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_51", i8* %"$$msgs_543_544")
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 %"$_literal_cost_call_545", %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_535"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_535"
  %"$consume_550" = sub i64 %"$gasrem_546", %"$_literal_cost_call_545"
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %"$execptr_load_551" = load i8*, i8** @_execptr, align 8
  %"$msgs_552" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_551", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_51", %TName_List_Message* %"$msgs_552"), !dbg !115
  br label %"$matchsucc_464"

"$False_553":                                     ; preds = %"$have_gas_462"
  %"$isSenderAdmin_554" = bitcast %TName_Bool* %"$isSenderAdmin_465" to %CName_False*
  %"$ud-proxy.eError_555" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_557" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_555")
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 %"$_literal_cost_call_557", %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$False_553"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$False_553"
  %"$consume_562" = sub i64 %"$gasrem_558", %"$_literal_cost_call_557"
  store i64 %"$consume_562", i64* @_gasrem, align 8
  %"$execptr_load_563" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_564" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_563", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_564"), !dbg !116
  br label %"$matchsucc_464"

"$empty_default_468":                             ; preds = %"$have_gas_462"
  br label %"$matchsucc_464"

"$matchsucc_464":                                 ; preds = %"$have_gas_561", %"$have_gas_549", %"$empty_default_468"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @bestow(i8* %0) !dbg !118 {
entry:
  %"$_amount_572" = getelementptr i8, i8* %0, i32 0
  %"$_amount_573" = bitcast i8* %"$_amount_572" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_573", align 8
  %"$_origin_574" = getelementptr i8, i8* %0, i32 16
  %"$_origin_575" = bitcast i8* %"$_origin_574" to [20 x i8]*
  %"$_sender_576" = getelementptr i8, i8* %0, i32 36
  %"$_sender_577" = bitcast i8* %"$_sender_576" to [20 x i8]*
  %"$label_578" = getelementptr i8, i8* %0, i32 56
  %"$label_579" = bitcast i8* %"$label_578" to %String*
  %label = load %String, %String* %"$label_579", align 8
  %"$owner_580" = getelementptr i8, i8* %0, i32 72
  %"$owner_581" = bitcast i8* %"$owner_580" to [20 x i8]*
  %"$resolver_582" = getelementptr i8, i8* %0, i32 92
  %"$resolver_583" = bitcast i8* %"$resolver_582" to [20 x i8]*
  call void @"$bestow_403"(%Uint128 %_amount, [20 x i8]* %"$_origin_575", [20 x i8]* %"$_sender_577", %String %label, [20 x i8]* %"$owner_581", [20 x i8]* %"$resolver_583"), !dbg !119
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "ud-proxy.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 17, type: !4, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "isApproved", scope: !3, file: !2, line: 16, type: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !10, size: 8, align: 8, dwarfAddressSpace: 0)
!10 = !DIBasicType(name: "Bool", size: 8)
!11 = !DILocation(line: 16, column: 7, scope: !3)
!12 = !DILocalVariable(name: "$retval_9", scope: !3, file: !2, line: 17, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Event", baseType: !14, size: 8, align: 8, dwarfAddressSpace: 0)
!14 = !DIBasicType(name: "Event", size: 8)
!15 = !DILocation(line: 17, column: 5, scope: !3)
!16 = distinct !DISubprogram(name: "$fundef_6", linkageName: "$fundef_6", scope: !2, file: !2, line: 16, type: !4, scopeLine: 16, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!17 = !DILocalVariable(name: "address", scope: !16, file: !2, line: 15, type: !18)
!18 = !DIBasicType(name: "ByStr20", size: 20)
!19 = !DILocation(line: 15, column: 7, scope: !16)
!20 = !DILocation(line: 17, column: 5, scope: !16)
!21 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !2, file: !2, line: 12, type: !4, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!22 = !DILocalVariable(name: "msg", scope: !21, file: !2, line: 11, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Message", baseType: !24, size: 8, align: 8, dwarfAddressSpace: 0)
!24 = !DIBasicType(name: "Message", size: 8)
!25 = !DILocation(line: 11, column: 7, scope: !21)
!26 = !DILocalVariable(name: "$retval_11", scope: !21, file: !2, line: 12, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (Message)", baseType: !28, size: 8, align: 8, dwarfAddressSpace: 0)
!28 = !DIBasicType(name: "List (Message)", size: 8)
!29 = !DILocation(line: 12, column: 5, scope: !21)
!30 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !31, file: !31, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!31 = !DIFile(filename: ".", directory: ".")
!32 = !DILocation(line: 0, scope: !30)
!33 = !DILocation(line: 7, column: 12, scope: !30)
!34 = !DILocation(line: 8, column: 18, scope: !30)
!35 = !DILocation(line: 12, column: 5, scope: !30)
!36 = !DILocation(line: 16, column: 3, scope: !30)
!37 = !DILocation(line: 19, column: 14, scope: !30)
!38 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !31, file: !31, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!39 = !DILocalVariable(name: "$admins_12", scope: !38, file: !2, line: 25, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Map (ByStr20) (Bool)", baseType: !41, size: 8, align: 8, dwarfAddressSpace: 0)
!41 = !DIBasicType(name: "Map (ByStr20) (Bool)", size: 8)
!42 = !DILocation(line: 25, column: 7, scope: !38)
!43 = !DILocalVariable(name: "empty", scope: !38, file: !2, line: 26, type: !40)
!44 = !DILocation(line: 26, column: 7, scope: !38)
!45 = !DILocation(line: 26, column: 15, scope: !38)
!46 = !DILocation(line: 27, column: 5, scope: !38)
!47 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 29, type: !4, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!48 = !DILocalVariable(name: "isApproved", scope: !47, file: !2, line: 29, type: !9)
!49 = !DILocation(line: 29, column: 39, scope: !47)
!50 = !DILocalVariable(name: "address", scope: !47, file: !2, line: 29, type: !18)
!51 = !DILocation(line: 29, column: 21, scope: !47)
!52 = !DILocalVariable(name: "_sender", scope: !47, file: !2, line: 29, type: !53)
!53 = !DIBasicType(name: "ByStr20 with end", size: 20)
!54 = !DILocation(line: 29, column: 12, scope: !47)
!55 = !DILocalVariable(name: "_origin", scope: !47, file: !2, line: 29, type: !53)
!56 = !DILocalVariable(name: "_amount", scope: !47, file: !2, line: 29, type: !57)
!57 = !DIBasicType(name: "Uint128", size: 16)
!58 = !DILocalVariable(name: "maybeAdmin", scope: !47, file: !2, line: 30, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Bool)", baseType: !60, size: 8, align: 8, dwarfAddressSpace: 0)
!60 = !DIBasicType(name: "Option (Bool)", size: 8)
!61 = !DILocation(line: 30, column: 3, scope: !47)
!62 = !DILocalVariable(name: "isSenderAdmin", scope: !47, file: !2, line: 32, type: !9)
!63 = !DILocation(line: 32, column: 3, scope: !47)
!64 = !DILocation(line: 33, column: 5, scope: !47)
!65 = !DILocation(line: 34, column: 24, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !2, line: 34, column: 7)
!67 = distinct !DILexicalBlock(scope: !47, file: !2, line: 33, column: 5)
!68 = !DILocation(line: 35, column: 15, scope: !69)
!69 = distinct !DILexicalBlock(scope: !67, file: !2, line: 35, column: 7)
!70 = !DILocation(line: 38, column: 3, scope: !47)
!71 = !DILocation(line: 40, column: 5, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !2, line: 39, column: 5)
!73 = distinct !DILexicalBlock(scope: !47, file: !2, line: 38, column: 3)
!74 = !DILocalVariable(name: "e", scope: !72, file: !2, line: 42, type: !13)
!75 = !DILocation(line: 42, column: 5, scope: !72)
!76 = !DILocation(line: 42, column: 9, scope: !72)
!77 = !DILocalVariable(name: "$ud-proxy.eAdminSet_4", scope: !72, file: !2, line: 42, type: !13)
!78 = !DILocation(line: 43, column: 5, scope: !72)
!79 = !DILocation(line: 45, column: 5, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !2, line: 44, column: 5)
!81 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 29, type: !4, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!82 = !DILocation(line: 29, column: 12, scope: !81)
!83 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 49, type: !4, scopeLine: 49, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!84 = !DILocalVariable(name: "resolver", scope: !83, file: !2, line: 49, type: !18)
!85 = !DILocation(line: 49, column: 50, scope: !83)
!86 = !DILocalVariable(name: "owner", scope: !83, file: !2, line: 49, type: !18)
!87 = !DILocation(line: 49, column: 34, scope: !83)
!88 = !DILocalVariable(name: "label", scope: !83, file: !2, line: 49, type: !89)
!89 = !DIBasicType(name: "String", size: 16)
!90 = !DILocation(line: 49, column: 19, scope: !83)
!91 = !DILocalVariable(name: "_sender", scope: !83, file: !2, line: 49, type: !53)
!92 = !DILocation(line: 49, column: 12, scope: !83)
!93 = !DILocalVariable(name: "_origin", scope: !83, file: !2, line: 49, type: !53)
!94 = !DILocalVariable(name: "_amount", scope: !83, file: !2, line: 49, type: !57)
!95 = !DILocalVariable(name: "maybeAdmin", scope: !83, file: !2, line: 50, type: !59)
!96 = !DILocation(line: 50, column: 3, scope: !83)
!97 = !DILocalVariable(name: "isSenderAdmin", scope: !83, file: !2, line: 52, type: !9)
!98 = !DILocation(line: 52, column: 3, scope: !83)
!99 = !DILocation(line: 53, column: 5, scope: !83)
!100 = !DILocation(line: 54, column: 23, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 54, column: 7)
!102 = distinct !DILexicalBlock(scope: !83, file: !2, line: 53, column: 5)
!103 = !DILocation(line: 55, column: 15, scope: !104)
!104 = distinct !DILexicalBlock(scope: !102, file: !2, line: 55, column: 7)
!105 = !DILocation(line: 58, column: 3, scope: !83)
!106 = !DILocalVariable(name: "msgs", scope: !107, file: !2, line: 60, type: !27)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 59, column: 5)
!108 = distinct !DILexicalBlock(scope: !83, file: !2, line: 58, column: 3)
!109 = !DILocation(line: 60, column: 5, scope: !107)
!110 = !DILocalVariable(name: "m", scope: !107, file: !2, line: 61, type: !23)
!111 = !DILocation(line: 61, column: 11, scope: !107)
!112 = !DILocation(line: 61, column: 15, scope: !107)
!113 = !DILocalVariable(name: "$ud-proxy.oneMsg_5", scope: !107, file: !2, line: 63, type: !27)
!114 = !DILocation(line: 63, column: 7, scope: !107)
!115 = !DILocation(line: 64, column: 5, scope: !107)
!116 = !DILocation(line: 66, column: 5, scope: !117)
!117 = distinct !DILexicalBlock(scope: !108, file: !2, line: 65, column: 5)
!118 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 49, type: !4, scopeLine: 49, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!119 = !DILocation(line: 49, column: 12, scope: !118)
