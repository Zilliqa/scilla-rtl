

; gas_remaining: 4001918
; ModuleID = 'Admin'
source_filename = "Admin"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_570" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_571" = type { %ParamDescrString, i32, %"$ParamDescr_570"* }
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
@"$stringlit_131" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_136" = unnamed_addr constant [8 x i8] c"AdminSet"
@"$stringlit_139" = unnamed_addr constant [7 x i8] c"address"
@"$stringlit_147" = unnamed_addr constant [10 x i8] c"isApproved"
@"$_gas_charge_acc_2" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_1" = global %Int32 zeroinitializer
@ud-proxy.true = global %TName_Bool* null
@ud-proxy.nilMessage = global %TName_List_Message* null
@ud-proxy.oneMsg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@ud-proxy.eAdminSet = global { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } zeroinitializer
@ud-proxy.eError = global i8* null
@"$stringlit_212" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_217" = unnamed_addr constant [5 x i8] c"Error"
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_initialAdmin = global [20 x i8] zeroinitializer
@_cparam_registry = global [20 x i8] zeroinitializer
@"$admins_259" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_268" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_340" = unnamed_addr constant [7 x i8] c"admins\00"
@"$admins_402" = unnamed_addr constant [7 x i8] c"admins\00"
@"$stringlit_479" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_484" = unnamed_addr constant [6 x i8] c"bestow"
@"$stringlit_487" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_495" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_502" = unnamed_addr constant [5 x i8] c"label"
@"$stringlit_509" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_516" = unnamed_addr constant [8 x i8] c"resolver"
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_51", %_TyDescrTy_Typ* @"$TyDescr_Event_37", %_TyDescrTy_Typ* @"$TyDescr_Int64_19", %_TyDescrTy_Typ* @"$TyDescr_Addr_56", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_49", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", %_TyDescrTy_Typ* @"$TyDescr_Bnum_33", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ* @"$TyDescr_Map_53", %_TyDescrTy_Typ* @"$TyDescr_Exception_39", %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ* @"$TyDescr_Int256_27", %_TyDescrTy_Typ* @"$TyDescr_Int128_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr_43", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_41", %_TyDescrTy_Typ* @"$TyDescr_Message_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_15"]
@_tydescr_table_length = constant i32 21
@"$pname__scilla_version_572" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_573" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_574" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_initialAdmin_575" = unnamed_addr constant [12 x i8] c"initialAdmin"
@"$pname_registry_576" = unnamed_addr constant [8 x i8] c"registry"
@_contract_parameters = constant [5 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_572", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_17" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_573", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_574", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_33" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$pname_initialAdmin_575", i32 0, i32 0), i32 12 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pname_registry_576", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }]
@_contract_parameters_length = constant i32 5
@"$tpname__amount_577" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_578" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_579" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_address_580" = unnamed_addr constant [7 x i8] c"address"
@"$tpname_isApproved_581" = unnamed_addr constant [10 x i8] c"isApproved"
@"$tparams_setAdmin_582" = unnamed_addr constant [5 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_577", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_25" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_578", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_579", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname_address_580", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$tpname_isApproved_581", i32 0, i32 0), i32 10 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50" }]
@"$tname_setAdmin_583" = unnamed_addr constant [8 x i8] c"setAdmin"
@"$tpname__amount_584" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_585" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_586" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_label_587" = unnamed_addr constant [5 x i8] c"label"
@"$tpname_owner_588" = unnamed_addr constant [5 x i8] c"owner"
@"$tpname_resolver_589" = unnamed_addr constant [8 x i8] c"resolver"
@"$tparams_bestow_590" = unnamed_addr constant [6 x %"$ParamDescr_570"] [%"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_584", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_25" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_585", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_586", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_label_587", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_String_31" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$tpname_owner_588", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }, %"$ParamDescr_570" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tpname_resolver_589", i32 0, i32 0), i32 8 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45" }]
@"$tname_bestow_591" = unnamed_addr constant [6 x i8] c"bestow"
@_transition_parameters = constant [2 x %"$TransDescr_571"] [%"$TransDescr_571" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setAdmin_583", i32 0, i32 0), i32 8 }, i32 5, %"$ParamDescr_570"* getelementptr inbounds ([5 x %"$ParamDescr_570"], [5 x %"$ParamDescr_570"]* @"$tparams_setAdmin_582", i32 0, i32 0) }, %"$TransDescr_571" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_bestow_591", i32 0, i32 0), i32 6 }, i32 6, %"$ParamDescr_570"* getelementptr inbounds ([6 x %"$ParamDescr_570"], [6 x %"$ParamDescr_570"]* @"$tparams_bestow_590", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal i8* @"$fundef_8"(%"$$fundef_8_env_95"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_8_env_address_123" = getelementptr inbounds %"$$fundef_8_env_95", %"$$fundef_8_env_95"* %0, i32 0, i32 0
  %"$address_envload_124" = load [20 x i8], [20 x i8]* %"$$fundef_8_env_address_123", align 1
  %address = alloca [20 x i8], align 1
  store [20 x i8] %"$address_envload_124", [20 x i8]* %address, align 1
  %"$retval_9" = alloca i8*, align 8
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %entry
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %"$msgobj_130_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_130_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_130_salloc_load", i64 117)
  %"$msgobj_130_salloc" = bitcast i8* %"$msgobj_130_salloc_salloc" to [117 x i8]*
  %"$msgobj_130" = bitcast [117 x i8]* %"$msgobj_130_salloc" to i8*
  store i8 3, i8* %"$msgobj_130", align 1
  %"$msgobj_fname_132" = getelementptr i8, i8* %"$msgobj_130", i32 1
  %"$msgobj_fname_133" = bitcast i8* %"$msgobj_fname_132" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_131", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_133", align 8
  %"$msgobj_td_134" = getelementptr i8, i8* %"$msgobj_130", i32 17
  %"$msgobj_td_135" = bitcast i8* %"$msgobj_td_134" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_135", align 8
  %"$msgobj_v_137" = getelementptr i8, i8* %"$msgobj_130", i32 25
  %"$msgobj_v_138" = bitcast i8* %"$msgobj_v_137" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_136", i32 0, i32 0), i32 8 }, %String* %"$msgobj_v_138", align 8
  %"$msgobj_fname_140" = getelementptr i8, i8* %"$msgobj_130", i32 41
  %"$msgobj_fname_141" = bitcast i8* %"$msgobj_fname_140" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_139", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_141", align 8
  %"$msgobj_td_142" = getelementptr i8, i8* %"$msgobj_130", i32 57
  %"$msgobj_td_143" = bitcast i8* %"$msgobj_td_142" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45", %_TyDescrTy_Typ** %"$msgobj_td_143", align 8
  %"$address_144" = load [20 x i8], [20 x i8]* %address, align 1
  %"$msgobj_v_145" = getelementptr i8, i8* %"$msgobj_130", i32 65
  %"$msgobj_v_146" = bitcast i8* %"$msgobj_v_145" to [20 x i8]*
  store [20 x i8] %"$address_144", [20 x i8]* %"$msgobj_v_146", align 1
  %"$msgobj_fname_148" = getelementptr i8, i8* %"$msgobj_130", i32 85
  %"$msgobj_fname_149" = bitcast i8* %"$msgobj_fname_148" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_147", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_149", align 8
  %"$msgobj_td_150" = getelementptr i8, i8* %"$msgobj_130", i32 101
  %"$msgobj_td_151" = bitcast i8* %"$msgobj_td_150" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50", %_TyDescrTy_Typ** %"$msgobj_td_151", align 8
  %"$msgobj_v_152" = getelementptr i8, i8* %"$msgobj_130", i32 109
  %"$msgobj_v_153" = bitcast i8* %"$msgobj_v_152" to %TName_Bool**
  store %TName_Bool* %1, %TName_Bool** %"$msgobj_v_153", align 8
  store i8* %"$msgobj_130", i8** %"$retval_9", align 8, !dbg !8
  %"$$retval_9_155" = load i8*, i8** %"$retval_9", align 8
  ret i8* %"$$retval_9_155"
}

define internal { i8* (i8*, %TName_Bool*)*, i8* } @"$fundef_6"(%"$$fundef_6_env_96"* %0, [20 x i8]* %1) !dbg !9 {
entry:
  %address = load [20 x i8], [20 x i8]* %1, align 1
  %"$retval_7" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %"$$fundef_8_envp_117_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_8_envp_117_salloc" = call i8* @_salloc(i8* %"$$fundef_8_envp_117_load", i64 20)
  %"$$fundef_8_envp_117" = bitcast i8* %"$$fundef_8_envp_117_salloc" to %"$$fundef_8_env_95"*
  %"$$fundef_8_env_voidp_119" = bitcast %"$$fundef_8_env_95"* %"$$fundef_8_envp_117" to i8*
  %"$$fundef_8_cloval_120" = insertvalue { i8* (i8*, %TName_Bool*)*, i8* } { i8* (i8*, %TName_Bool*)* bitcast (i8* (%"$$fundef_8_env_95"*, %TName_Bool*)* @"$fundef_8" to i8* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_8_env_voidp_119", 1
  %"$$fundef_8_env_address_121" = getelementptr inbounds %"$$fundef_8_env_95", %"$$fundef_8_env_95"* %"$$fundef_8_envp_117", i32 0, i32 0
  store [20 x i8] %address, [20 x i8]* %"$$fundef_8_env_address_121", align 1
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$$fundef_8_cloval_120", { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_7", align 8, !dbg !10
  %"$$retval_7_122" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$retval_7", align 8
  ret { i8* (i8*, %TName_Bool*)*, i8* } %"$$retval_7_122"
}

define internal %TName_List_Message* @"$fundef_10"(%"$$fundef_10_env_97"* %0, i8* %1) !dbg !11 {
entry:
  %"$$fundef_10_env_ud-proxy.nilMessage_98" = getelementptr inbounds %"$$fundef_10_env_97", %"$$fundef_10_env_97"* %0, i32 0, i32 0
  %"$ud-proxy.nilMessage_envload_99" = load %TName_List_Message*, %TName_List_Message** %"$$fundef_10_env_ud-proxy.nilMessage_98", align 8
  %ud-proxy.nilMessage = alloca %TName_List_Message*, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_envload_99", %TName_List_Message** %ud-proxy.nilMessage, align 8
  %"$retval_11" = alloca %TName_List_Message*, align 8
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
  store %TName_List_Message* %"$adtptr_110", %TName_List_Message** %"$retval_11", align 8, !dbg !12
  %"$$retval_11_111" = load %TName_List_Message*, %TName_List_Message** %"$retval_11", align 8
  ret %TName_List_Message* %"$$retval_11_111"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !13 {
entry:
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 5, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %entry
  %"$consume_160" = sub i64 %"$gasrem_156", 5
  store i64 %"$consume_160", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_2", align 4, !dbg !15
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 8, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 8
  store i64 %"$consume_165", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !15
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 20, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 20
  store i64 %"$consume_170", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_1", align 4, !dbg !15
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$adtval_176_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_176_salloc" = call i8* @_salloc(i8* %"$adtval_176_load", i64 1)
  %"$adtval_176" = bitcast i8* %"$adtval_176_salloc" to %CName_True*
  %"$adtgep_177" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_176", i32 0, i32 0
  store i8 0, i8* %"$adtgep_177", align 1
  %"$adtptr_178" = bitcast %CName_True* %"$adtval_176" to %TName_Bool*
  store %TName_Bool* %"$adtptr_178", %TName_Bool** @ud-proxy.true, align 8, !dbg !16
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_174"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$adtval_184_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_184_salloc" = call i8* @_salloc(i8* %"$adtval_184_load", i64 1)
  %"$adtval_184" = bitcast i8* %"$adtval_184_salloc" to %CName_Nil_Message*
  %"$adtgep_185" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_184", i32 0, i32 0
  store i8 1, i8* %"$adtgep_185", align 1
  %"$adtptr_186" = bitcast %CName_Nil_Message* %"$adtval_184" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_186", %TName_List_Message** @ud-proxy.nilMessage, align 8, !dbg !17
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_182"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$$fundef_10_envp_192_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_10_envp_192_salloc" = call i8* @_salloc(i8* %"$$fundef_10_envp_192_load", i64 8)
  %"$$fundef_10_envp_192" = bitcast i8* %"$$fundef_10_envp_192_salloc" to %"$$fundef_10_env_97"*
  %"$$fundef_10_env_voidp_194" = bitcast %"$$fundef_10_env_97"* %"$$fundef_10_envp_192" to i8*
  %"$$fundef_10_cloval_195" = insertvalue { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_10_env_97"*, i8*)* @"$fundef_10" to %TName_List_Message* (i8*, i8*)*), i8* undef }, i8* %"$$fundef_10_env_voidp_194", 1
  %"$$fundef_10_env_ud-proxy.nilMessage_196" = getelementptr inbounds %"$$fundef_10_env_97", %"$$fundef_10_env_97"* %"$$fundef_10_envp_192", i32 0, i32 0
  %"$ud-proxy.nilMessage_197" = load %TName_List_Message*, %TName_List_Message** @ud-proxy.nilMessage, align 8
  store %TName_List_Message* %"$ud-proxy.nilMessage_197", %TName_List_Message** %"$$fundef_10_env_ud-proxy.nilMessage_196", align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } %"$$fundef_10_cloval_195", { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8, !dbg !18
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_190"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  store { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)* bitcast ({ i8* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_6_env_96"*, [20 x i8]*)* @"$fundef_6" to { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*), i8* null }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8, !dbg !19
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_201"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %"$msgobj_211_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_211_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_211_salloc_load", i64 41)
  %"$msgobj_211_salloc" = bitcast i8* %"$msgobj_211_salloc_salloc" to [41 x i8]*
  %"$msgobj_211" = bitcast [41 x i8]* %"$msgobj_211_salloc" to i8*
  store i8 1, i8* %"$msgobj_211", align 1
  %"$msgobj_fname_213" = getelementptr i8, i8* %"$msgobj_211", i32 1
  %"$msgobj_fname_214" = bitcast i8* %"$msgobj_fname_213" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_212", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_214", align 8
  %"$msgobj_td_215" = getelementptr i8, i8* %"$msgobj_211", i32 17
  %"$msgobj_td_216" = bitcast i8* %"$msgobj_td_215" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_216", align 8
  %"$msgobj_v_218" = getelementptr i8, i8* %"$msgobj_211", i32 25
  %"$msgobj_v_219" = bitcast i8* %"$msgobj_v_218" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_217", i32 0, i32 0), i32 5 }, %String* %"$msgobj_v_219", align 8
  store i8* %"$msgobj_211", i8** @ud-proxy.eError, align 8, !dbg !20
  ret void
}

define void @_deploy_ops() !dbg !21 {
entry:
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 1, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %entry
  %"$consume_225" = sub i64 %"$gasrem_221", 1
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %"$admins_12" = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_224"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %empty = alloca %Map_ByStr20_Bool*, align 8
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_229"
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %"$execptr_load_236" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_237" = call i8* @_new_empty_map(i8* %"$execptr_load_236")
  %"$_new_empty_map_238" = bitcast i8* %"$_new_empty_map_call_237" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$_new_empty_map_238", %Map_ByStr20_Bool** %empty, align 8, !dbg !22
  %"$empty_239" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_239_240" = bitcast %Map_ByStr20_Bool* %"$empty_239" to i8*
  %"$_lengthof_call_241" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$empty_239_240")
  %"$gasadd_242" = add i64 1, %"$_lengthof_call_241"
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 %"$gasadd_242", %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_234"
  %"$consume_247" = sub i64 %"$gasrem_243", %"$gasadd_242"
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$execptr_load_248" = load i8*, i8** @_execptr, align 8
  %"$empty_249" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %empty, align 8
  %"$$empty_249_250" = bitcast %Map_ByStr20_Bool* %"$empty_249" to i8*
  %"$put_initialAdmin_251" = alloca [20 x i8], align 1
  %"$initialAdmin_252" = load [20 x i8], [20 x i8]* @_cparam_initialAdmin, align 1
  store [20 x i8] %"$initialAdmin_252", [20 x i8]* %"$put_initialAdmin_251", align 1
  %"$$put_initialAdmin_251_253" = bitcast [20 x i8]* %"$put_initialAdmin_251" to i8*
  %"$ud-proxy.true_254" = load %TName_Bool*, %TName_Bool** @ud-proxy.true, align 8
  %"$$ud-proxy.true_254_255" = bitcast %TName_Bool* %"$ud-proxy.true_254" to i8*
  %"$put_call_256" = call i8* @_put(i8* %"$execptr_load_248", %_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$empty_249_250", i8* %"$$put_initialAdmin_251_253", i8* %"$$ud-proxy.true_254_255"), !dbg !23
  %"$put_257" = bitcast i8* %"$put_call_256" to %Map_ByStr20_Bool*
  store %Map_ByStr20_Bool* %"$put_257", %Map_ByStr20_Bool** %"$admins_12", align 8, !dbg !23
  %"$execptr_load_258" = load i8*, i8** @_execptr, align 8
  %"$$admins_12_260" = load %Map_ByStr20_Bool*, %Map_ByStr20_Bool** %"$admins_12", align 8
  %"$update_value_261" = bitcast %Map_ByStr20_Bool* %"$$admins_12_260" to i8*
  call void @_update_field(i8* %"$execptr_load_258", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_259", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_53", i32 0, i8* null, i8* %"$update_value_261"), !dbg !22
  ret void
}

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setAdmin_262"(%Uint128 %_amount, [20 x i8]* %"$_origin_263", [20 x i8]* %"$_sender_264", [20 x i8]* %"$address_265", %TName_Bool* %isApproved) !dbg !24 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_263", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_264", align 1
  %address = load [20 x i8], [20 x i8]* %"$address_265", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_266_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_266_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_266_salloc_load", i64 20)
  %"$indices_buf_266_salloc" = bitcast i8* %"$indices_buf_266_salloc_salloc" to [20 x i8]*
  %"$indices_buf_266" = bitcast [20 x i8]* %"$indices_buf_266_salloc" to i8*
  %"$indices_gep_267" = getelementptr i8, i8* %"$indices_buf_266", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_267" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_269" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_270" = call i8* @_fetch_field(i8* %"$execptr_load_269", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_268", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_53", i32 1, i8* %"$indices_buf_266", i32 1), !dbg !25
  %"$maybeAdmin_271" = bitcast i8* %"$maybeAdmin_call_270" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_271", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_272" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_272_273" = bitcast %TName_Option_Bool* %"$maybeAdmin_272" to i8*
  %"$_literal_cost_call_274" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_49", i8* %"$$maybeAdmin_272_273")
  %"$gasadd_275" = add i64 %"$_literal_cost_call_274", 0
  %"$gasadd_276" = add i64 %"$gasadd_275", 1
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 %"$gasadd_276", %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %entry
  %"$consume_281" = sub i64 %"$gasrem_277", %"$gasadd_276"
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 2, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 2
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$maybeAdmin_293" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_294" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_293", i32 0, i32 0
  %"$maybeAdmin_tag_295" = load i8, i8* %"$maybeAdmin_tag_294", align 1
  switch i8 %"$maybeAdmin_tag_295", label %"$empty_default_296" [
    i8 0, label %"$Some_297"
    i8 1, label %"$None_307"
  ], !dbg !26

"$Some_297":                                      ; preds = %"$have_gas_290"
  %"$maybeAdmin_298" = bitcast %TName_Option_Bool* %"$maybeAdmin_293" to %CName_Some_Bool*
  %"$approval_gep_299" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_298", i32 0, i32 1
  %"$approval_load_300" = load %TName_Bool*, %TName_Bool** %"$approval_gep_299", align 8
  %approval = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$approval_load_300", %TName_Bool** %approval, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$Some_297"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$Some_297"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$approval_306" = load %TName_Bool*, %TName_Bool** %approval, align 8
  store %TName_Bool* %"$approval_306", %TName_Bool** %isSenderAdmin, align 8, !dbg !27
  br label %"$matchsucc_292"

"$None_307":                                      ; preds = %"$have_gas_290"
  %"$maybeAdmin_308" = bitcast %TName_Option_Bool* %"$maybeAdmin_293" to %CName_None_Bool*
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 1, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$None_307"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$None_307"
  %"$consume_313" = sub i64 %"$gasrem_309", 1
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %"$adtval_314_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_314_salloc" = call i8* @_salloc(i8* %"$adtval_314_load", i64 1)
  %"$adtval_314" = bitcast i8* %"$adtval_314_salloc" to %CName_False*
  %"$adtgep_315" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_314", i32 0, i32 0
  store i8 1, i8* %"$adtgep_315", align 1
  %"$adtptr_316" = bitcast %CName_False* %"$adtval_314" to %TName_Bool*
  store %TName_Bool* %"$adtptr_316", %TName_Bool** %isSenderAdmin, align 8, !dbg !30
  br label %"$matchsucc_292"

"$empty_default_296":                             ; preds = %"$have_gas_290"
  br label %"$matchsucc_292"

"$matchsucc_292":                                 ; preds = %"$have_gas_312", %"$have_gas_304", %"$empty_default_296"
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 2, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$matchsucc_292"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$matchsucc_292"
  %"$consume_321" = sub i64 %"$gasrem_317", 2
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %"$isSenderAdmin_323" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_324" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_323", i32 0, i32 0
  %"$isSenderAdmin_tag_325" = load i8, i8* %"$isSenderAdmin_tag_324", align 1
  switch i8 %"$isSenderAdmin_tag_325", label %"$empty_default_326" [
    i8 0, label %"$True_327"
    i8 1, label %"$False_372"
  ], !dbg !32

"$True_327":                                      ; preds = %"$have_gas_320"
  %"$isSenderAdmin_328" = bitcast %TName_Bool* %"$isSenderAdmin_323" to %CName_True*
  %"$isApproved_329" = bitcast %TName_Bool* %isApproved to i8*
  %"$_literal_cost_call_330" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50", i8* %"$isApproved_329")
  %"$gasadd_331" = add i64 %"$_literal_cost_call_330", 1
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 %"$gasadd_331", %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$True_327"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$True_327"
  %"$consume_336" = sub i64 %"$gasrem_332", %"$gasadd_331"
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$indices_buf_337_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_337_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_337_salloc_load", i64 20)
  %"$indices_buf_337_salloc" = bitcast i8* %"$indices_buf_337_salloc_salloc" to [20 x i8]*
  %"$indices_buf_337" = bitcast [20 x i8]* %"$indices_buf_337_salloc" to i8*
  %"$indices_gep_338" = getelementptr i8, i8* %"$indices_buf_337", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_338" to [20 x i8]*
  store [20 x i8] %address, [20 x i8]* %indices_cast1, align 1
  %"$execptr_load_339" = load i8*, i8** @_execptr, align 8
  %"$update_value_341" = bitcast %TName_Bool* %isApproved to i8*
  call void @_update_field(i8* %"$execptr_load_339", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_340", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_53", i32 1, i8* %"$indices_buf_337", i8* %"$update_value_341"), !dbg !33
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_335"
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
  %"$ud-proxy.eAdminSet_3" = alloca { i8* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$ud-proxy.eAdminSet_352" = load { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }, { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* }* @ud-proxy.eAdminSet, align 8
  %"$ud-proxy.eAdminSet_fptr_353" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_352", 0
  %"$ud-proxy.eAdminSet_envptr_354" = extractvalue { { i8* (i8*, %TName_Bool*)*, i8* } (i8*, [20 x i8]*)*, i8* } %"$ud-proxy.eAdminSet_352", 1
  %"$ud-proxy.eAdminSet_address_355" = alloca [20 x i8], align 1
  store [20 x i8] %address, [20 x i8]* %"$ud-proxy.eAdminSet_address_355", align 1
  %"$ud-proxy.eAdminSet_call_356" = call { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_fptr_353"(i8* %"$ud-proxy.eAdminSet_envptr_354", [20 x i8]* %"$ud-proxy.eAdminSet_address_355"), !dbg !36
  store { i8* (i8*, %TName_Bool*)*, i8* } %"$ud-proxy.eAdminSet_call_356", { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_3", align 8, !dbg !36
  %"$ud-proxy.eAdminSet_4" = alloca i8*, align 8
  %"$$ud-proxy.eAdminSet_3_357" = load { i8* (i8*, %TName_Bool*)*, i8* }, { i8* (i8*, %TName_Bool*)*, i8* }* %"$ud-proxy.eAdminSet_3", align 8
  %"$$ud-proxy.eAdminSet_3_fptr_358" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_3_357", 0
  %"$$ud-proxy.eAdminSet_3_envptr_359" = extractvalue { i8* (i8*, %TName_Bool*)*, i8* } %"$$ud-proxy.eAdminSet_3_357", 1
  %"$$ud-proxy.eAdminSet_3_call_360" = call i8* %"$$ud-proxy.eAdminSet_3_fptr_358"(i8* %"$$ud-proxy.eAdminSet_3_envptr_359", %TName_Bool* %isApproved), !dbg !36
  store i8* %"$$ud-proxy.eAdminSet_3_call_360", i8** %"$ud-proxy.eAdminSet_4", align 8, !dbg !36
  %"$$ud-proxy.eAdminSet_4_361" = load i8*, i8** %"$ud-proxy.eAdminSet_4", align 8
  store i8* %"$$ud-proxy.eAdminSet_4_361", i8** %e, align 8, !dbg !36
  %"$e_362" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_364" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$e_362")
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 %"$_literal_cost_call_364", %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_350"
  %"$consume_369" = sub i64 %"$gasrem_365", %"$_literal_cost_call_364"
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %"$execptr_load_370" = load i8*, i8** @_execptr, align 8
  %"$e_371" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_370", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$e_371"), !dbg !37
  br label %"$matchsucc_322"

"$False_372":                                     ; preds = %"$have_gas_320"
  %"$isSenderAdmin_373" = bitcast %TName_Bool* %"$isSenderAdmin_323" to %CName_False*
  %"$ud-proxy.eError_374" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_376" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_374")
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 %"$_literal_cost_call_376", %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$False_372"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$False_372"
  %"$consume_381" = sub i64 %"$gasrem_377", %"$_literal_cost_call_376"
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %"$execptr_load_382" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_383" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_382", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_383"), !dbg !38
  br label %"$matchsucc_322"

"$empty_default_326":                             ; preds = %"$have_gas_320"
  br label %"$matchsucc_322"

"$matchsucc_322":                                 ; preds = %"$have_gas_380", %"$have_gas_368", %"$empty_default_326"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setAdmin(i8* %0) !dbg !40 {
entry:
  %"$_amount_385" = getelementptr i8, i8* %0, i32 0
  %"$_amount_386" = bitcast i8* %"$_amount_385" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_386", align 8
  %"$_origin_387" = getelementptr i8, i8* %0, i32 16
  %"$_origin_388" = bitcast i8* %"$_origin_387" to [20 x i8]*
  %"$_sender_389" = getelementptr i8, i8* %0, i32 36
  %"$_sender_390" = bitcast i8* %"$_sender_389" to [20 x i8]*
  %"$address_391" = getelementptr i8, i8* %0, i32 56
  %"$address_392" = bitcast i8* %"$address_391" to [20 x i8]*
  %"$isApproved_393" = getelementptr i8, i8* %0, i32 76
  %"$isApproved_394" = bitcast i8* %"$isApproved_393" to %TName_Bool**
  %isApproved = load %TName_Bool*, %TName_Bool** %"$isApproved_394", align 8
  call void @"$setAdmin_262"(%Uint128 %_amount, [20 x i8]* %"$_origin_388", [20 x i8]* %"$_sender_390", [20 x i8]* %"$address_392", %TName_Bool* %isApproved), !dbg !41
  ret void
}

define internal void @"$bestow_395"(%Uint128 %_amount, [20 x i8]* %"$_origin_396", [20 x i8]* %"$_sender_397", %String %label, [20 x i8]* %"$owner_398", [20 x i8]* %"$resolver_399") !dbg !42 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_396", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_397", align 1
  %owner = load [20 x i8], [20 x i8]* %"$owner_398", align 1
  %resolver = load [20 x i8], [20 x i8]* %"$resolver_399", align 1
  %maybeAdmin = alloca %TName_Option_Bool*, align 8
  %"$indices_buf_400_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_400_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_400_salloc_load", i64 20)
  %"$indices_buf_400_salloc" = bitcast i8* %"$indices_buf_400_salloc_salloc" to [20 x i8]*
  %"$indices_buf_400" = bitcast [20 x i8]* %"$indices_buf_400_salloc" to i8*
  %"$indices_gep_401" = getelementptr i8, i8* %"$indices_buf_400", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_401" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %indices_cast, align 1
  %"$execptr_load_403" = load i8*, i8** @_execptr, align 8
  %"$maybeAdmin_call_404" = call i8* @_fetch_field(i8* %"$execptr_load_403", i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$admins_402", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_53", i32 1, i8* %"$indices_buf_400", i32 1), !dbg !43
  %"$maybeAdmin_405" = bitcast i8* %"$maybeAdmin_call_404" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$maybeAdmin_405", %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_406" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$$maybeAdmin_406_407" = bitcast %TName_Option_Bool* %"$maybeAdmin_406" to i8*
  %"$_literal_cost_call_408" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_49", i8* %"$$maybeAdmin_406_407")
  %"$gasadd_409" = add i64 %"$_literal_cost_call_408", 0
  %"$gasadd_410" = add i64 %"$gasadd_409", 1
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 %"$gasadd_410", %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %entry
  %"$consume_415" = sub i64 %"$gasrem_411", %"$gasadd_410"
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_414"
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem, align 8
  %isSenderAdmin = alloca %TName_Bool*, align 8
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 2, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_419"
  %"$consume_425" = sub i64 %"$gasrem_421", 2
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %"$maybeAdmin_427" = load %TName_Option_Bool*, %TName_Option_Bool** %maybeAdmin, align 8
  %"$maybeAdmin_tag_428" = getelementptr inbounds %TName_Option_Bool, %TName_Option_Bool* %"$maybeAdmin_427", i32 0, i32 0
  %"$maybeAdmin_tag_429" = load i8, i8* %"$maybeAdmin_tag_428", align 1
  switch i8 %"$maybeAdmin_tag_429", label %"$empty_default_430" [
    i8 0, label %"$Some_431"
    i8 1, label %"$None_441"
  ], !dbg !44

"$Some_431":                                      ; preds = %"$have_gas_424"
  %"$maybeAdmin_432" = bitcast %TName_Option_Bool* %"$maybeAdmin_427" to %CName_Some_Bool*
  %"$isAdmin_gep_433" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$maybeAdmin_432", i32 0, i32 1
  %"$isAdmin_load_434" = load %TName_Bool*, %TName_Bool** %"$isAdmin_gep_433", align 8
  %isAdmin = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$isAdmin_load_434", %TName_Bool** %isAdmin, align 8
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$Some_431"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$Some_431"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %"$isAdmin_440" = load %TName_Bool*, %TName_Bool** %isAdmin, align 8
  store %TName_Bool* %"$isAdmin_440", %TName_Bool** %isSenderAdmin, align 8, !dbg !45
  br label %"$matchsucc_426"

"$None_441":                                      ; preds = %"$have_gas_424"
  %"$maybeAdmin_442" = bitcast %TName_Option_Bool* %"$maybeAdmin_427" to %CName_None_Bool*
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$None_441"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$None_441"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %"$adtval_448_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_448_salloc" = call i8* @_salloc(i8* %"$adtval_448_load", i64 1)
  %"$adtval_448" = bitcast i8* %"$adtval_448_salloc" to %CName_False*
  %"$adtgep_449" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_448", i32 0, i32 0
  store i8 1, i8* %"$adtgep_449", align 1
  %"$adtptr_450" = bitcast %CName_False* %"$adtval_448" to %TName_Bool*
  store %TName_Bool* %"$adtptr_450", %TName_Bool** %isSenderAdmin, align 8, !dbg !48
  br label %"$matchsucc_426"

"$empty_default_430":                             ; preds = %"$have_gas_424"
  br label %"$matchsucc_426"

"$matchsucc_426":                                 ; preds = %"$have_gas_446", %"$have_gas_438", %"$empty_default_430"
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 2, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$matchsucc_426"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$matchsucc_426"
  %"$consume_455" = sub i64 %"$gasrem_451", 2
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$isSenderAdmin_457" = load %TName_Bool*, %TName_Bool** %isSenderAdmin, align 8
  %"$isSenderAdmin_tag_458" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$isSenderAdmin_457", i32 0, i32 0
  %"$isSenderAdmin_tag_459" = load i8, i8* %"$isSenderAdmin_tag_458", align 1
  switch i8 %"$isSenderAdmin_tag_459", label %"$empty_default_460" [
    i8 0, label %"$True_461"
    i8 1, label %"$False_545"
  ], !dbg !50

"$True_461":                                      ; preds = %"$have_gas_454"
  %"$isSenderAdmin_462" = bitcast %TName_Bool* %"$isSenderAdmin_457" to %CName_True*
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$True_461"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$True_461"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_471"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %"$msgobj_478_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_478_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_478_salloc_load", i64 253)
  %"$msgobj_478_salloc" = bitcast i8* %"$msgobj_478_salloc_salloc" to [253 x i8]*
  %"$msgobj_478" = bitcast [253 x i8]* %"$msgobj_478_salloc" to i8*
  store i8 6, i8* %"$msgobj_478", align 1
  %"$msgobj_fname_480" = getelementptr i8, i8* %"$msgobj_478", i32 1
  %"$msgobj_fname_481" = bitcast i8* %"$msgobj_fname_480" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_479", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_481", align 8
  %"$msgobj_td_482" = getelementptr i8, i8* %"$msgobj_478", i32 17
  %"$msgobj_td_483" = bitcast i8* %"$msgobj_td_482" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_483", align 8
  %"$msgobj_v_485" = getelementptr i8, i8* %"$msgobj_478", i32 25
  %"$msgobj_v_486" = bitcast i8* %"$msgobj_v_485" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_484", i32 0, i32 0), i32 6 }, %String* %"$msgobj_v_486", align 8
  %"$msgobj_fname_488" = getelementptr i8, i8* %"$msgobj_478", i32 41
  %"$msgobj_fname_489" = bitcast i8* %"$msgobj_fname_488" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_487", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_489", align 8
  %"$msgobj_td_490" = getelementptr i8, i8* %"$msgobj_478", i32 57
  %"$msgobj_td_491" = bitcast i8* %"$msgobj_td_490" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45", %_TyDescrTy_Typ** %"$msgobj_td_491", align 8
  %"$registry_492" = load [20 x i8], [20 x i8]* @_cparam_registry, align 1
  %"$msgobj_v_493" = getelementptr i8, i8* %"$msgobj_478", i32 65
  %"$msgobj_v_494" = bitcast i8* %"$msgobj_v_493" to [20 x i8]*
  store [20 x i8] %"$registry_492", [20 x i8]* %"$msgobj_v_494", align 1
  %"$msgobj_fname_496" = getelementptr i8, i8* %"$msgobj_478", i32 85
  %"$msgobj_fname_497" = bitcast i8* %"$msgobj_fname_496" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_495", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_497", align 8
  %"$msgobj_td_498" = getelementptr i8, i8* %"$msgobj_478", i32 101
  %"$msgobj_td_499" = bitcast i8* %"$msgobj_td_498" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ** %"$msgobj_td_499", align 8
  %"$msgobj_v_500" = getelementptr i8, i8* %"$msgobj_478", i32 109
  %"$msgobj_v_501" = bitcast i8* %"$msgobj_v_500" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_501", align 8
  %"$msgobj_fname_503" = getelementptr i8, i8* %"$msgobj_478", i32 125
  %"$msgobj_fname_504" = bitcast i8* %"$msgobj_fname_503" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_502", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_504", align 8
  %"$msgobj_td_505" = getelementptr i8, i8* %"$msgobj_478", i32 141
  %"$msgobj_td_506" = bitcast i8* %"$msgobj_td_505" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ** %"$msgobj_td_506", align 8
  %"$msgobj_v_507" = getelementptr i8, i8* %"$msgobj_478", i32 149
  %"$msgobj_v_508" = bitcast i8* %"$msgobj_v_507" to %String*
  store %String %label, %String* %"$msgobj_v_508", align 8
  %"$msgobj_fname_510" = getelementptr i8, i8* %"$msgobj_478", i32 165
  %"$msgobj_fname_511" = bitcast i8* %"$msgobj_fname_510" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_509", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_511", align 8
  %"$msgobj_td_512" = getelementptr i8, i8* %"$msgobj_478", i32 181
  %"$msgobj_td_513" = bitcast i8* %"$msgobj_td_512" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45", %_TyDescrTy_Typ** %"$msgobj_td_513", align 8
  %"$msgobj_v_514" = getelementptr i8, i8* %"$msgobj_478", i32 189
  %"$msgobj_v_515" = bitcast i8* %"$msgobj_v_514" to [20 x i8]*
  store [20 x i8] %owner, [20 x i8]* %"$msgobj_v_515", align 1
  %"$msgobj_fname_517" = getelementptr i8, i8* %"$msgobj_478", i32 209
  %"$msgobj_fname_518" = bitcast i8* %"$msgobj_fname_517" to %String*
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_516", i32 0, i32 0), i32 8 }, %String* %"$msgobj_fname_518", align 8
  %"$msgobj_td_519" = getelementptr i8, i8* %"$msgobj_478", i32 225
  %"$msgobj_td_520" = bitcast i8* %"$msgobj_td_519" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_45", %_TyDescrTy_Typ** %"$msgobj_td_520", align 8
  %"$msgobj_v_521" = getelementptr i8, i8* %"$msgobj_478", i32 233
  %"$msgobj_v_522" = bitcast i8* %"$msgobj_v_521" to [20 x i8]*
  store [20 x i8] %resolver, [20 x i8]* %"$msgobj_v_522", align 1
  store i8* %"$msgobj_478", i8** %m, align 8, !dbg !51
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_476"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %"$ud-proxy.oneMsg_5" = alloca %TName_List_Message*, align 8
  %"$ud-proxy.oneMsg_529" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ud-proxy.oneMsg, align 8
  %"$ud-proxy.oneMsg_fptr_530" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_529", 0
  %"$ud-proxy.oneMsg_envptr_531" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ud-proxy.oneMsg_529", 1
  %"$m_532" = load i8*, i8** %m, align 8
  %"$ud-proxy.oneMsg_call_533" = call %TName_List_Message* %"$ud-proxy.oneMsg_fptr_530"(i8* %"$ud-proxy.oneMsg_envptr_531", i8* %"$m_532"), !dbg !54
  store %TName_List_Message* %"$ud-proxy.oneMsg_call_533", %TName_List_Message** %"$ud-proxy.oneMsg_5", align 8, !dbg !54
  %"$$ud-proxy.oneMsg_5_534" = load %TName_List_Message*, %TName_List_Message** %"$ud-proxy.oneMsg_5", align 8
  store %TName_List_Message* %"$$ud-proxy.oneMsg_5_534", %TName_List_Message** %msgs, align 8, !dbg !54
  %"$msgs_535" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_535_536" = bitcast %TName_List_Message* %"$msgs_535" to i8*
  %"$_literal_cost_call_537" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_51", i8* %"$$msgs_535_536")
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 %"$_literal_cost_call_537", %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_527"
  %"$consume_542" = sub i64 %"$gasrem_538", %"$_literal_cost_call_537"
  store i64 %"$consume_542", i64* @_gasrem, align 8
  %"$execptr_load_543" = load i8*, i8** @_execptr, align 8
  %"$msgs_544" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_543", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_51", %TName_List_Message* %"$msgs_544"), !dbg !55
  br label %"$matchsucc_456"

"$False_545":                                     ; preds = %"$have_gas_454"
  %"$isSenderAdmin_546" = bitcast %TName_Bool* %"$isSenderAdmin_457" to %CName_False*
  %"$ud-proxy.eError_547" = load i8*, i8** @ud-proxy.eError, align 8
  %"$_literal_cost_call_549" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_547")
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 %"$_literal_cost_call_549", %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %"$False_545"
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %"$False_545"
  %"$consume_554" = sub i64 %"$gasrem_550", %"$_literal_cost_call_549"
  store i64 %"$consume_554", i64* @_gasrem, align 8
  %"$execptr_load_555" = load i8*, i8** @_execptr, align 8
  %"$ud-proxy.eError_556" = load i8*, i8** @ud-proxy.eError, align 8
  call void @_event(i8* %"$execptr_load_555", %_TyDescrTy_Typ* @"$TyDescr_Event_37", i8* %"$ud-proxy.eError_556"), !dbg !56
  br label %"$matchsucc_456"

"$empty_default_460":                             ; preds = %"$have_gas_454"
  br label %"$matchsucc_456"

"$matchsucc_456":                                 ; preds = %"$have_gas_553", %"$have_gas_541", %"$empty_default_460"
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @bestow(i8* %0) !dbg !58 {
entry:
  %"$_amount_558" = getelementptr i8, i8* %0, i32 0
  %"$_amount_559" = bitcast i8* %"$_amount_558" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_559", align 8
  %"$_origin_560" = getelementptr i8, i8* %0, i32 16
  %"$_origin_561" = bitcast i8* %"$_origin_560" to [20 x i8]*
  %"$_sender_562" = getelementptr i8, i8* %0, i32 36
  %"$_sender_563" = bitcast i8* %"$_sender_562" to [20 x i8]*
  %"$label_564" = getelementptr i8, i8* %0, i32 56
  %"$label_565" = bitcast i8* %"$label_564" to %String*
  %label = load %String, %String* %"$label_565", align 8
  %"$owner_566" = getelementptr i8, i8* %0, i32 72
  %"$owner_567" = bitcast i8* %"$owner_566" to [20 x i8]*
  %"$resolver_568" = getelementptr i8, i8* %0, i32 92
  %"$resolver_569" = bitcast i8* %"$resolver_568" to [20 x i8]*
  call void @"$bestow_395"(%Uint128 %_amount, [20 x i8]* %"$_origin_561", [20 x i8]* %"$_sender_563", %String %label, [20 x i8]* %"$owner_567", [20 x i8]* %"$resolver_569"), !dbg !59
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "ud-proxy.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 17, column: 5, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_6", linkageName: "$fundef_6", scope: !2, file: !2, line: 16, type: !5, scopeLine: 16, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 17, column: 5, scope: !9)
!11 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 12, column: 5, scope: !11)
!13 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !14, file: !14, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DIFile(filename: ".", directory: ".")
!15 = !DILocation(line: 0, scope: !13)
!16 = !DILocation(line: 7, column: 12, scope: !13)
!17 = !DILocation(line: 8, column: 18, scope: !13)
!18 = !DILocation(line: 12, column: 5, scope: !13)
!19 = !DILocation(line: 16, column: 3, scope: !13)
!20 = !DILocation(line: 19, column: 14, scope: !13)
!21 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !14, file: !14, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 26, column: 15, scope: !21)
!23 = !DILocation(line: 27, column: 5, scope: !21)
!24 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 30, column: 3, scope: !24)
!26 = !DILocation(line: 33, column: 5, scope: !24)
!27 = !DILocation(line: 34, column: 24, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !2, line: 34, column: 7)
!29 = distinct !DILexicalBlock(scope: !24, file: !2, line: 33, column: 5)
!30 = !DILocation(line: 35, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !29, file: !2, line: 35, column: 7)
!32 = !DILocation(line: 38, column: 3, scope: !24)
!33 = !DILocation(line: 40, column: 5, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !2, line: 39, column: 5)
!35 = distinct !DILexicalBlock(scope: !24, file: !2, line: 38, column: 3)
!36 = !DILocation(line: 42, column: 9, scope: !34)
!37 = !DILocation(line: 43, column: 5, scope: !34)
!38 = !DILocation(line: 45, column: 5, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !2, line: 44, column: 5)
!40 = distinct !DISubprogram(name: "setAdmin", linkageName: "setAdmin", scope: !2, file: !2, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!41 = !DILocation(line: 29, column: 12, scope: !40)
!42 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!43 = !DILocation(line: 50, column: 3, scope: !42)
!44 = !DILocation(line: 53, column: 5, scope: !42)
!45 = !DILocation(line: 54, column: 23, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !2, line: 54, column: 7)
!47 = distinct !DILexicalBlock(scope: !42, file: !2, line: 53, column: 5)
!48 = !DILocation(line: 55, column: 15, scope: !49)
!49 = distinct !DILexicalBlock(scope: !47, file: !2, line: 55, column: 7)
!50 = !DILocation(line: 58, column: 3, scope: !42)
!51 = !DILocation(line: 61, column: 15, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !2, line: 59, column: 5)
!53 = distinct !DILexicalBlock(scope: !42, file: !2, line: 58, column: 3)
!54 = !DILocation(line: 63, column: 7, scope: !52)
!55 = !DILocation(line: 64, column: 5, scope: !52)
!56 = !DILocation(line: 66, column: 5, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !2, line: 65, column: 5)
!58 = distinct !DISubprogram(name: "bestow", linkageName: "bestow", scope: !2, file: !2, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!59 = !DILocation(line: 49, column: 12, scope: !58)
