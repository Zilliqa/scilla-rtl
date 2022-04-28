

; gas_remaining: 4001996
; ModuleID = 'Ecdsa'
source_filename = "Ecdsa"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_10" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_48" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_47"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_47" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_49"**, %"$TyDescrTy_ADTTyp_48"* }
%"$TyDescrTy_ADTTyp_Constr_49" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_55" = type { i32, %"$TyDescr_AddrFieldTyp_54"* }
%"$TyDescr_AddrFieldTyp_54" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_455" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_456" = type { %ParamDescrString, i32, %"$ParamDescr_455"* }
%"$$fundef_7_env_94" = type {}
%TName_Option_ByStr33 = type { i8, %CName_Some_ByStr33*, %CName_None_ByStr33* }
%CName_Some_ByStr33 = type <{ i8, [33 x i8] }>
%CName_None_ByStr33 = type <{ i8 }>
%Uint128 = type { i128 }
%Bystr = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%String = type { i8*, i32 }

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
@"$TyDescr_ReplicateContr_Prim_37" = global %"$TyDescrTy_PrimTyp_10" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_ReplicateContr_Prim_37" to i8*) }
@"$TyDescr_Bystr_Prim_39" = global %"$TyDescrTy_PrimTyp_10" { i32 7, i32 0 }
@"$TyDescr_Bystr_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr_Prim_39" to i8*) }
@"$TyDescr_Bystr64_Prim_41" = global %"$TyDescrTy_PrimTyp_10" { i32 8, i32 64 }
@"$TyDescr_Bystr64_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr64_Prim_41" to i8*) }
@"$TyDescr_Bystr33_Prim_43" = global %"$TyDescrTy_PrimTyp_10" { i32 8, i32 33 }
@"$TyDescr_Bystr33_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr33_Prim_43" to i8*) }
@"$TyDescr_Bystr20_Prim_45" = global %"$TyDescrTy_PrimTyp_10" { i32 8, i32 20 }
@"$TyDescr_Bystr20_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr20_Prim_45" to i8*) }
@"$TyDescr_ADT_Bool_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Bool_ADTTyp_Specl_66" to i8*) }
@"$TyDescr_ADT_Option_ByStr33_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Option_ByStr33_ADTTyp_Specl_78" to i8*) }
@"$TyDescr_ADT_List_Message_52" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_List_Message_ADTTyp_Specl_90" to i8*) }
@"$TyDescr_Addr_56" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_55"* @"$TyDescr_AddrFields_93" to i8*) }
@"$TyDescr_Bool_ADTTyp_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_68", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_47"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_47"*], [1 x %"$TyDescrTy_ADTTyp_Specl_47"*]* @"$TyDescr_Bool_ADTTyp_m_specls_67", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_58" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_59" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_59", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_58", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_61" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_62" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_62", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_61", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_64" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Bool_True_ADTTyp_Constr_60", %"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Bool_False_ADTTyp_Constr_63"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_65" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_49"*], [2 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Bool_ADTTyp_57" }
@"$TyDescr_Bool_ADTTyp_m_specls_67" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_47"*] [%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Bool_ADTTyp_Specl_66"]
@"$TyDescr_ADT_Bool_68" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_Option_ADTTyp_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_48" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_80", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_47"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_47"*], [1 x %"$TyDescrTy_ADTTyp_Specl_47"*]* @"$TyDescr_Option_ADTTyp_m_specls_79", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr33_Constr_m_args_70" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr33_44"]
@"$TyDescr_ADT_Some_71" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr33_ADTTyp_Constr_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_71", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr33_Constr_m_args_70", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr33_Constr_m_args_73" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_74" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr33_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_74", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr33_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_Option_ByStr33_ADTTyp_Specl_m_constrs_76" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Option_Some_ByStr33_ADTTyp_Constr_72", %"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Option_None_ByStr33_ADTTyp_Constr_75"]
@"$TyDescr_Option_ByStr33_ADTTyp_Specl_m_TArgs_77" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr33_44"]
@"$TyDescr_Option_ByStr33_ADTTyp_Specl_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr33_ADTTyp_Specl_m_TArgs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_49"*], [2 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Option_ByStr33_ADTTyp_Specl_m_constrs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Option_ADTTyp_69" }
@"$TyDescr_Option_ADTTyp_m_specls_79" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_47"*] [%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Option_ByStr33_ADTTyp_Specl_78"]
@"$TyDescr_ADT_Option_80" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_List_ADTTyp_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_92", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_47"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_47"*], [1 x %"$TyDescrTy_ADTTyp_Specl_47"*]* @"$TyDescr_List_ADTTyp_m_specls_91", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_82" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52"]
@"$TyDescr_ADT_Cons_83" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_83", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_82", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_85" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_86" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_86", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_85", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_88" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_84", %"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_87"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_89" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_32"]
@"$TyDescr_List_Message_ADTTyp_Specl_90" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_89", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_49"*], [2 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_88", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_List_ADTTyp_81" }
@"$TyDescr_List_ADTTyp_m_specls_91" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_47"*] [%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_List_Message_ADTTyp_Specl_90"]
@"$TyDescr_ADT_List_92" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_93" = unnamed_addr constant %"$TyDescr_AddrTyp_55" { i32 -3, %"$TyDescr_AddrFieldTyp_54"* null }
@"$_gas_charge_acc_2" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accEcdsa_0" = global %Int32 zeroinitializer
@ecdsa.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$pub_key_158" = unnamed_addr constant [8 x i8] c"pub_key\00"
@"$pub_key_165" = unnamed_addr constant [8 x i8] c"pub_key\00"
@"$stringlit_242" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_247" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_250" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_257" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_264" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_269" = unnamed_addr constant [23 x i8] c"verification successful"
@"$stringlit_312" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_317" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_320" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_327" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_334" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_339" = unnamed_addr constant [19 x i8] c"verification failed"
@"$stringlit_382" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_387" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_390" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_397" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_404" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_409" = unnamed_addr constant [12 x i8] c"no key error"
@_tydescr_table = constant [22 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", %_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_Addr_56", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_46", %_TyDescrTy_Typ* @"$TyDescr_Bystr33_44", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_51", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_42", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_Bystr_40", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 22
@"$pname__scilla_version_457" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_458" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_459" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_455"] [%"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_457", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_14" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_458", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_46" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_459", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_30" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_460" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_461" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_462" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_msg_463" = unnamed_addr constant [3 x i8] c"msg"
@"$tpname_sig_464" = unnamed_addr constant [3 x i8] c"sig"
@"$tparams_verify_465" = unnamed_addr constant [5 x %"$ParamDescr_455"] [%"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_460", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_22" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_461", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_462", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_msg_463", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr_40" }, %"$ParamDescr_455" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_sig_464", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr64_42" }]
@"$tname_verify_466" = unnamed_addr constant [6 x i8] c"verify"
@_transition_parameters = constant [1 x %"$TransDescr_456"] [%"$TransDescr_456" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_verify_466", i32 0, i32 0), i32 6 }, i32 5, %"$ParamDescr_455"* getelementptr inbounds ([5 x %"$ParamDescr_455"], [5 x %"$ParamDescr_455"]* @"$tparams_verify_465", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define internal %TName_List_Message* @"$fundef_7"(%"$$fundef_7_env_94"* %0, i8* %1) !dbg !3 {
entry:
  %"$msg_120" = alloca i8*, align 8
  store i8* %1, i8** %"$msg_120", align 8
  call void @llvm.dbg.declare(metadata i8** %"$msg_120", metadata !8, metadata !DIExpression()), !dbg !11
  %"$retval_8" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$retval_8", metadata !12, metadata !DIExpression()), !dbg !15
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %entry
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %nil_msg = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %nil_msg, metadata !16, metadata !DIExpression()), !dbg !17
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$adtval_105_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_105_salloc" = call i8* @_salloc(i8* %"$adtval_105_load", i64 1)
  %"$adtval_105" = bitcast i8* %"$adtval_105_salloc" to %CName_Nil_Message*
  %"$adtgep_106" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_105", i32 0, i32 0
  store i8 1, i8* %"$adtgep_106", align 1
  %"$adtptr_107" = bitcast %CName_Nil_Message* %"$adtval_105" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_107", %TName_List_Message** %nil_msg, align 8, !dbg !18
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_103"
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %"$nil_msg_113" = load %TName_List_Message*, %TName_List_Message** %nil_msg, align 8
  %"$adtval_114_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_114_salloc" = call i8* @_salloc(i8* %"$adtval_114_load", i64 17)
  %"$adtval_114" = bitcast i8* %"$adtval_114_salloc" to %CName_Cons_Message*
  %"$adtgep_115" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_114", i32 0, i32 0
  store i8 0, i8* %"$adtgep_115", align 1
  %"$adtgep_116" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_114", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_116", align 8
  %"$adtgep_117" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_114", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_113", %TName_List_Message** %"$adtgep_117", align 8
  %"$adtptr_118" = bitcast %CName_Cons_Message* %"$adtval_114" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_118", %TName_List_Message** %"$retval_8", align 8, !dbg !19
  %"$$retval_8_119" = load %TName_List_Message*, %TName_List_Message** %"$retval_8", align 8
  ret %TName_List_Message* %"$$retval_8_119"
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !20 {
entry:
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 5, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %entry
  %"$consume_125" = sub i64 %"$gasrem_121", 5
  store i64 %"$consume_125", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_2", align 4, !dbg !22
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 2, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 2
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_1", align 4, !dbg !22
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 6, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 6
  store i64 %"$consume_135", i64* @_gasrem, align 8
  store %Int32 { i32 6 }, %Int32* @"$_gas_charge_accEcdsa_0", align 4, !dbg !22
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_7_env_94"*, i8*)* @"$fundef_7" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8, !dbg !23
  ret void
}

define void @_deploy_ops() !dbg !24 {
entry:
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %entry
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %"$pub_key_9" = alloca %TName_Option_ByStr33*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr33** %"$pub_key_9", metadata !25, metadata !DIExpression()), !dbg !28
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_147"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %"$adtval_154_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_154_salloc" = call i8* @_salloc(i8* %"$adtval_154_load", i64 1)
  %"$adtval_154" = bitcast i8* %"$adtval_154_salloc" to %CName_None_ByStr33*
  %"$adtgep_155" = getelementptr inbounds %CName_None_ByStr33, %CName_None_ByStr33* %"$adtval_154", i32 0, i32 0
  store i8 1, i8* %"$adtgep_155", align 1
  %"$adtptr_156" = bitcast %CName_None_ByStr33* %"$adtval_154" to %TName_Option_ByStr33*
  store %TName_Option_ByStr33* %"$adtptr_156", %TName_Option_ByStr33** %"$pub_key_9", align 8, !dbg !29
  %"$execptr_load_157" = load i8*, i8** @_execptr, align 8
  %"$$pub_key_9_159" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %"$pub_key_9", align 8
  %"$update_value_160" = bitcast %TName_Option_ByStr33* %"$$pub_key_9_159" to i8*
  call void @_update_field(i8* %"$execptr_load_157", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pub_key_158", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_51", i32 0, i8* null, i8* %"$update_value_160"), !dbg !29
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$verify_161"(%Uint128 %_amount, [20 x i8]* %"$_origin_162", [20 x i8]* %"$_sender_163", %Bystr %msg, [64 x i8]* %"$sig_164") !dbg !30 {
entry:
  %"$sig_443" = alloca [64 x i8]*, align 8
  store [64 x i8]* %"$sig_164", [64 x i8]** %"$sig_443", align 8
  call void @llvm.dbg.declare(metadata [64 x i8]** %"$sig_443", metadata !31, metadata !DIExpression()), !dbg !33
  %"$msg_442" = alloca %Bystr, align 8
  store %Bystr %msg, %Bystr* %"$msg_442", align 8
  call void @llvm.dbg.declare(metadata %Bystr* %"$msg_442", metadata !34, metadata !DIExpression()), !dbg !36
  %"$_sender_441" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_163", [20 x i8]** %"$_sender_441", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_441", metadata !37, metadata !DIExpression()), !dbg !39
  %"$_origin_440" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_162", [20 x i8]** %"$_origin_440", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_440", metadata !40, metadata !DIExpression()), !dbg !39
  %"$_amount_439" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_439", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_439", metadata !41, metadata !DIExpression()), !dbg !39
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_162", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_163", align 1
  %sig = load [64 x i8], [64 x i8]* %"$sig_164", align 1
  %pubk_o = alloca %TName_Option_ByStr33*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr33** %pubk_o, metadata !43, metadata !DIExpression()), !dbg !44
  %"$execptr_load_166" = load i8*, i8** @_execptr, align 8
  %"$pubk_o_call_167" = call i8* @_fetch_field(i8* %"$execptr_load_166", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pub_key_165", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_51", i32 0, i8* null, i32 1), !dbg !44
  %"$pubk_o_168" = bitcast i8* %"$pubk_o_call_167" to %TName_Option_ByStr33*
  store %TName_Option_ByStr33* %"$pubk_o_168", %TName_Option_ByStr33** %pubk_o, align 8
  %"$pubk_o_169" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %pubk_o, align 8
  %"$$pubk_o_169_170" = bitcast %TName_Option_ByStr33* %"$pubk_o_169" to i8*
  %"$_literal_cost_call_171" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_51", i8* %"$$pubk_o_169_170")
  %"$gasadd_172" = add i64 %"$_literal_cost_call_171", 0
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 %"$gasadd_172", %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %entry
  %"$consume_177" = sub i64 %"$gasrem_173", %"$gasadd_172"
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 2, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_176"
  %"$consume_182" = sub i64 %"$gasrem_178", 2
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %"$pubk_o_184" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %pubk_o, align 8
  %"$pubk_o_tag_185" = getelementptr inbounds %TName_Option_ByStr33, %TName_Option_ByStr33* %"$pubk_o_184", i32 0, i32 0
  %"$pubk_o_tag_186" = load i8, i8* %"$pubk_o_tag_185", align 1
  switch i8 %"$pubk_o_tag_186", label %"$empty_default_187" [
    i8 0, label %"$Some_188"
    i8 1, label %"$None_369"
  ], !dbg !45

"$Some_188":                                      ; preds = %"$have_gas_181"
  %"$pubk_o_189" = bitcast %TName_Option_ByStr33* %"$pubk_o_184" to %CName_Some_ByStr33*
  %"$pubk_gep_190" = getelementptr inbounds %CName_Some_ByStr33, %CName_Some_ByStr33* %"$pubk_o_189", i32 0, i32 1
  %"$pubk_load_191" = load [33 x i8], [33 x i8]* %"$pubk_gep_190", align 1
  %pubk = alloca [33 x i8], align 1
  store [33 x i8] %"$pubk_load_191", [33 x i8]* %pubk, align 1
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$Some_188"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$Some_188"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %"$sig_3" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$sig_3", metadata !46, metadata !DIExpression()), !dbg !51
  %"$_literal_cost_msg_197" = alloca %Bystr, align 8
  store %Bystr %msg, %Bystr* %"$_literal_cost_msg_197", align 8
  %"$$_literal_cost_msg_197_198" = bitcast %Bystr* %"$_literal_cost_msg_197" to i8*
  %"$_literal_cost_call_199" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_40", i8* %"$$_literal_cost_msg_197_198")
  %"$gasadd_200" = add i64 %"$_literal_cost_call_199", 66
  %"$gasdivceil_201" = urem i64 %"$gasadd_200", 64
  %"$gasdivceil_202" = udiv i64 %"$gasadd_200", 64
  %"$gasdivceil_203" = icmp eq i64 %"$gasdivceil_201", 0
  %"$gasdivceil_204" = add i64 %"$gasdivceil_202", 1
  %"$gasdivceil_205" = select i1 %"$gasdivceil_203", i64 %"$gasdivceil_202", i64 %"$gasdivceil_204"
  %"$gasmul_206" = mul i64 15, %"$gasdivceil_205"
  %"$gasadd_207" = add i64 250, %"$gasmul_206"
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 %"$gasadd_207", %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_195"
  %"$consume_212" = sub i64 %"$gasrem_208", %"$gasadd_207"
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %"$execptr_load_213" = load i8*, i8** @_execptr, align 8
  %"$ecdsa_verify_pubk_214" = alloca [33 x i8], align 1
  %"$pubk_215" = load [33 x i8], [33 x i8]* %pubk, align 1
  store [33 x i8] %"$pubk_215", [33 x i8]* %"$ecdsa_verify_pubk_214", align 1
  %"$ecdsa_verify_sig_216" = alloca [64 x i8], align 1
  store [64 x i8] %sig, [64 x i8]* %"$ecdsa_verify_sig_216", align 1
  %"$ecdsa_verify_call_217" = call %TName_Bool* @_ecdsa_verify(i8* %"$execptr_load_213", [33 x i8]* %"$ecdsa_verify_pubk_214", %Bystr %msg, [64 x i8]* %"$ecdsa_verify_sig_216"), !dbg !52
  store %TName_Bool* %"$ecdsa_verify_call_217", %TName_Bool** %"$sig_3", align 8, !dbg !52
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 2, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_211"
  %"$consume_223" = sub i64 %"$gasrem_219", 2
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$$sig_3_225" = load %TName_Bool*, %TName_Bool** %"$sig_3", align 8
  %"$$sig_3_tag_226" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$$sig_3_225", i32 0, i32 0
  %"$$sig_3_tag_227" = load i8, i8* %"$$sig_3_tag_226", align 1
  switch i8 %"$$sig_3_tag_227", label %"$empty_default_228" [
    i8 0, label %"$True_229"
    i8 1, label %"$False_299"
  ], !dbg !53

"$True_229":                                      ; preds = %"$have_gas_222"
  %"$$sig_3_230" = bitcast %TName_Bool* %"$$sig_3_225" to %CName_True*
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$True_229"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$True_229"
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %m, metadata !54, metadata !DIExpression()), !dbg !57
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_234"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %"$msgobj_241_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_241_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_241_salloc_load", i64 165)
  %"$msgobj_241_salloc" = bitcast i8* %"$msgobj_241_salloc_salloc" to [165 x i8]*
  %"$msgobj_241" = bitcast [165 x i8]* %"$msgobj_241_salloc" to i8*
  store i8 4, i8* %"$msgobj_241", align 1
  %"$msgobj_fname_243" = getelementptr i8, i8* %"$msgobj_241", i32 1
  %"$msgobj_fname_244" = bitcast i8* %"$msgobj_fname_243" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_242", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_244", align 8
  %"$msgobj_td_245" = getelementptr i8, i8* %"$msgobj_241", i32 17
  %"$msgobj_td_246" = bitcast i8* %"$msgobj_td_245" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_246", align 8
  %"$msgobj_v_248" = getelementptr i8, i8* %"$msgobj_241", i32 25
  %"$msgobj_v_249" = bitcast i8* %"$msgobj_v_248" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_247", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_249", align 8
  %"$msgobj_fname_251" = getelementptr i8, i8* %"$msgobj_241", i32 41
  %"$msgobj_fname_252" = bitcast i8* %"$msgobj_fname_251" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_250", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_252", align 8
  %"$msgobj_td_253" = getelementptr i8, i8* %"$msgobj_241", i32 57
  %"$msgobj_td_254" = bitcast i8* %"$msgobj_td_253" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_46", %_TyDescrTy_Typ** %"$msgobj_td_254", align 8
  %"$msgobj_v_255" = getelementptr i8, i8* %"$msgobj_241", i32 65
  %"$msgobj_v_256" = bitcast i8* %"$msgobj_v_255" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_256", align 1
  %"$msgobj_fname_258" = getelementptr i8, i8* %"$msgobj_241", i32 85
  %"$msgobj_fname_259" = bitcast i8* %"$msgobj_fname_258" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_257", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_259", align 8
  %"$msgobj_td_260" = getelementptr i8, i8* %"$msgobj_241", i32 101
  %"$msgobj_td_261" = bitcast i8* %"$msgobj_td_260" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_261", align 8
  %"$msgobj_v_262" = getelementptr i8, i8* %"$msgobj_241", i32 109
  %"$msgobj_v_263" = bitcast i8* %"$msgobj_v_262" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_263", align 8
  %"$msgobj_fname_265" = getelementptr i8, i8* %"$msgobj_241", i32 125
  %"$msgobj_fname_266" = bitcast i8* %"$msgobj_fname_265" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_264", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_266", align 8
  %"$msgobj_td_267" = getelementptr i8, i8* %"$msgobj_241", i32 141
  %"$msgobj_td_268" = bitcast i8* %"$msgobj_td_267" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_268", align 8
  %"$msgobj_v_270" = getelementptr i8, i8* %"$msgobj_241", i32 149
  %"$msgobj_v_271" = bitcast i8* %"$msgobj_v_270" to %String*
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_269", i32 0, i32 0), i32 23 }, %String* %"$msgobj_v_271", align 8
  store i8* %"$msgobj_241", i8** %m, align 8, !dbg !58
  %"$gasrem_273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_274" = icmp ugt i64 1, %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %"$have_gas_239"
  %"$consume_277" = sub i64 %"$gasrem_273", 1
  store i64 %"$consume_277", i64* @_gasrem, align 8
  %mone = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %mone, metadata !59, metadata !DIExpression()), !dbg !60
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_276"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_276"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_4" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$ecdsa.one_msg_4", metadata !61, metadata !DIExpression()), !dbg !62
  %"$ecdsa.one_msg_283" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_284" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_283", 0
  %"$ecdsa.one_msg_envptr_285" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_283", 1
  %"$m_286" = load i8*, i8** %m, align 8
  %"$ecdsa.one_msg_call_287" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_284"(i8* %"$ecdsa.one_msg_envptr_285", i8* %"$m_286"), !dbg !62
  store %TName_List_Message* %"$ecdsa.one_msg_call_287", %TName_List_Message** %"$ecdsa.one_msg_4", align 8, !dbg !62
  %"$$ecdsa.one_msg_4_288" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_4", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_4_288", %TName_List_Message** %mone, align 8, !dbg !62
  %"$mone_289" = load %TName_List_Message*, %TName_List_Message** %mone, align 8
  %"$$mone_289_290" = bitcast %TName_List_Message* %"$mone_289" to i8*
  %"$_literal_cost_call_291" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", i8* %"$$mone_289_290")
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 %"$_literal_cost_call_291", %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_281"
  %"$consume_296" = sub i64 %"$gasrem_292", %"$_literal_cost_call_291"
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %"$execptr_load_297" = load i8*, i8** @_execptr, align 8
  %"$mone_298" = load %TName_List_Message*, %TName_List_Message** %mone, align 8
  call void @_send(i8* %"$execptr_load_297", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", %TName_List_Message* %"$mone_298"), !dbg !63
  br label %"$matchsucc_224"

"$False_299":                                     ; preds = %"$have_gas_222"
  %"$$sig_3_300" = bitcast %TName_Bool* %"$$sig_3_225" to %CName_False*
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$False_299"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$False_299"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %m1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %m1, metadata !64, metadata !DIExpression()), !dbg !66
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_304"
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %"$msgobj_311_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_311_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_311_salloc_load", i64 165)
  %"$msgobj_311_salloc" = bitcast i8* %"$msgobj_311_salloc_salloc" to [165 x i8]*
  %"$msgobj_311" = bitcast [165 x i8]* %"$msgobj_311_salloc" to i8*
  store i8 4, i8* %"$msgobj_311", align 1
  %"$msgobj_fname_313" = getelementptr i8, i8* %"$msgobj_311", i32 1
  %"$msgobj_fname_314" = bitcast i8* %"$msgobj_fname_313" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_312", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_314", align 8
  %"$msgobj_td_315" = getelementptr i8, i8* %"$msgobj_311", i32 17
  %"$msgobj_td_316" = bitcast i8* %"$msgobj_td_315" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_316", align 8
  %"$msgobj_v_318" = getelementptr i8, i8* %"$msgobj_311", i32 25
  %"$msgobj_v_319" = bitcast i8* %"$msgobj_v_318" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_317", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_319", align 8
  %"$msgobj_fname_321" = getelementptr i8, i8* %"$msgobj_311", i32 41
  %"$msgobj_fname_322" = bitcast i8* %"$msgobj_fname_321" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_320", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_322", align 8
  %"$msgobj_td_323" = getelementptr i8, i8* %"$msgobj_311", i32 57
  %"$msgobj_td_324" = bitcast i8* %"$msgobj_td_323" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_46", %_TyDescrTy_Typ** %"$msgobj_td_324", align 8
  %"$msgobj_v_325" = getelementptr i8, i8* %"$msgobj_311", i32 65
  %"$msgobj_v_326" = bitcast i8* %"$msgobj_v_325" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_326", align 1
  %"$msgobj_fname_328" = getelementptr i8, i8* %"$msgobj_311", i32 85
  %"$msgobj_fname_329" = bitcast i8* %"$msgobj_fname_328" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_327", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_329", align 8
  %"$msgobj_td_330" = getelementptr i8, i8* %"$msgobj_311", i32 101
  %"$msgobj_td_331" = bitcast i8* %"$msgobj_td_330" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_331", align 8
  %"$msgobj_v_332" = getelementptr i8, i8* %"$msgobj_311", i32 109
  %"$msgobj_v_333" = bitcast i8* %"$msgobj_v_332" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_333", align 8
  %"$msgobj_fname_335" = getelementptr i8, i8* %"$msgobj_311", i32 125
  %"$msgobj_fname_336" = bitcast i8* %"$msgobj_fname_335" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_334", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_336", align 8
  %"$msgobj_td_337" = getelementptr i8, i8* %"$msgobj_311", i32 141
  %"$msgobj_td_338" = bitcast i8* %"$msgobj_td_337" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_338", align 8
  %"$msgobj_v_340" = getelementptr i8, i8* %"$msgobj_311", i32 149
  %"$msgobj_v_341" = bitcast i8* %"$msgobj_v_340" to %String*
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_339", i32 0, i32 0), i32 19 }, %String* %"$msgobj_v_341", align 8
  store i8* %"$msgobj_311", i8** %m1, align 8, !dbg !67
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_309"
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %mone2 = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %mone2, metadata !68, metadata !DIExpression()), !dbg !69
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_346"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_5" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$ecdsa.one_msg_5", metadata !70, metadata !DIExpression()), !dbg !71
  %"$ecdsa.one_msg_353" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_354" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_353", 0
  %"$ecdsa.one_msg_envptr_355" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_353", 1
  %"$m_356" = load i8*, i8** %m1, align 8
  %"$ecdsa.one_msg_call_357" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_354"(i8* %"$ecdsa.one_msg_envptr_355", i8* %"$m_356"), !dbg !71
  store %TName_List_Message* %"$ecdsa.one_msg_call_357", %TName_List_Message** %"$ecdsa.one_msg_5", align 8, !dbg !71
  %"$$ecdsa.one_msg_5_358" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_5", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_5_358", %TName_List_Message** %mone2, align 8, !dbg !71
  %"$mone_359" = load %TName_List_Message*, %TName_List_Message** %mone2, align 8
  %"$$mone_359_360" = bitcast %TName_List_Message* %"$mone_359" to i8*
  %"$_literal_cost_call_361" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", i8* %"$$mone_359_360")
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 %"$_literal_cost_call_361", %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_351"
  %"$consume_366" = sub i64 %"$gasrem_362", %"$_literal_cost_call_361"
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$execptr_load_367" = load i8*, i8** @_execptr, align 8
  %"$mone_368" = load %TName_List_Message*, %TName_List_Message** %mone2, align 8
  call void @_send(i8* %"$execptr_load_367", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", %TName_List_Message* %"$mone_368"), !dbg !72
  br label %"$matchsucc_224"

"$empty_default_228":                             ; preds = %"$have_gas_222"
  br label %"$matchsucc_224"

"$matchsucc_224":                                 ; preds = %"$have_gas_365", %"$have_gas_295", %"$empty_default_228"
  br label %"$matchsucc_183"

"$None_369":                                      ; preds = %"$have_gas_181"
  %"$pubk_o_370" = bitcast %TName_Option_ByStr33* %"$pubk_o_184" to %CName_None_ByStr33*
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$None_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$None_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %m3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %m3, metadata !73, metadata !DIExpression()), !dbg !75
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_374"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  %"$msgobj_381_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_381_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_381_salloc_load", i64 165)
  %"$msgobj_381_salloc" = bitcast i8* %"$msgobj_381_salloc_salloc" to [165 x i8]*
  %"$msgobj_381" = bitcast [165 x i8]* %"$msgobj_381_salloc" to i8*
  store i8 4, i8* %"$msgobj_381", align 1
  %"$msgobj_fname_383" = getelementptr i8, i8* %"$msgobj_381", i32 1
  %"$msgobj_fname_384" = bitcast i8* %"$msgobj_fname_383" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_382", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_384", align 8
  %"$msgobj_td_385" = getelementptr i8, i8* %"$msgobj_381", i32 17
  %"$msgobj_td_386" = bitcast i8* %"$msgobj_td_385" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_386", align 8
  %"$msgobj_v_388" = getelementptr i8, i8* %"$msgobj_381", i32 25
  %"$msgobj_v_389" = bitcast i8* %"$msgobj_v_388" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_387", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_389", align 8
  %"$msgobj_fname_391" = getelementptr i8, i8* %"$msgobj_381", i32 41
  %"$msgobj_fname_392" = bitcast i8* %"$msgobj_fname_391" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_390", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_392", align 8
  %"$msgobj_td_393" = getelementptr i8, i8* %"$msgobj_381", i32 57
  %"$msgobj_td_394" = bitcast i8* %"$msgobj_td_393" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_46", %_TyDescrTy_Typ** %"$msgobj_td_394", align 8
  %"$msgobj_v_395" = getelementptr i8, i8* %"$msgobj_381", i32 65
  %"$msgobj_v_396" = bitcast i8* %"$msgobj_v_395" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_396", align 1
  %"$msgobj_fname_398" = getelementptr i8, i8* %"$msgobj_381", i32 85
  %"$msgobj_fname_399" = bitcast i8* %"$msgobj_fname_398" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_397", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_399", align 8
  %"$msgobj_td_400" = getelementptr i8, i8* %"$msgobj_381", i32 101
  %"$msgobj_td_401" = bitcast i8* %"$msgobj_td_400" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_401", align 8
  %"$msgobj_v_402" = getelementptr i8, i8* %"$msgobj_381", i32 109
  %"$msgobj_v_403" = bitcast i8* %"$msgobj_v_402" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_403", align 8
  %"$msgobj_fname_405" = getelementptr i8, i8* %"$msgobj_381", i32 125
  %"$msgobj_fname_406" = bitcast i8* %"$msgobj_fname_405" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_404", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_406", align 8
  %"$msgobj_td_407" = getelementptr i8, i8* %"$msgobj_381", i32 141
  %"$msgobj_td_408" = bitcast i8* %"$msgobj_td_407" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_408", align 8
  %"$msgobj_v_410" = getelementptr i8, i8* %"$msgobj_381", i32 149
  %"$msgobj_v_411" = bitcast i8* %"$msgobj_v_410" to %String*
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_409", i32 0, i32 0), i32 12 }, %String* %"$msgobj_v_411", align 8
  store i8* %"$msgobj_381", i8** %m3, align 8, !dbg !76
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_379"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %mone4 = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %mone4, metadata !77, metadata !DIExpression()), !dbg !78
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_6" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$ecdsa.one_msg_6", metadata !79, metadata !DIExpression()), !dbg !80
  %"$ecdsa.one_msg_423" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_424" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_423", 0
  %"$ecdsa.one_msg_envptr_425" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_423", 1
  %"$m_426" = load i8*, i8** %m3, align 8
  %"$ecdsa.one_msg_call_427" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_424"(i8* %"$ecdsa.one_msg_envptr_425", i8* %"$m_426"), !dbg !80
  store %TName_List_Message* %"$ecdsa.one_msg_call_427", %TName_List_Message** %"$ecdsa.one_msg_6", align 8, !dbg !80
  %"$$ecdsa.one_msg_6_428" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_6", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_6_428", %TName_List_Message** %mone4, align 8, !dbg !80
  %"$mone_429" = load %TName_List_Message*, %TName_List_Message** %mone4, align 8
  %"$$mone_429_430" = bitcast %TName_List_Message* %"$mone_429" to i8*
  %"$_literal_cost_call_431" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", i8* %"$$mone_429_430")
  %"$gasrem_432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_433" = icmp ugt i64 %"$_literal_cost_call_431", %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %"$have_gas_421"
  %"$consume_436" = sub i64 %"$gasrem_432", %"$_literal_cost_call_431"
  store i64 %"$consume_436", i64* @_gasrem, align 8
  %"$execptr_load_437" = load i8*, i8** @_execptr, align 8
  %"$mone_438" = load %TName_List_Message*, %TName_List_Message** %mone4, align 8
  call void @_send(i8* %"$execptr_load_437", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", %TName_List_Message* %"$mone_438"), !dbg !81
  br label %"$matchsucc_183"

"$empty_default_187":                             ; preds = %"$have_gas_181"
  br label %"$matchsucc_183"

"$matchsucc_183":                                 ; preds = %"$have_gas_435", %"$matchsucc_224", %"$empty_default_187"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_ecdsa_verify(i8*, [33 x i8]*, %Bystr, [64 x i8]*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @verify(i8* %0) !dbg !82 {
entry:
  %"$_amount_445" = getelementptr i8, i8* %0, i32 0
  %"$_amount_446" = bitcast i8* %"$_amount_445" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_446", align 8
  %"$_origin_447" = getelementptr i8, i8* %0, i32 16
  %"$_origin_448" = bitcast i8* %"$_origin_447" to [20 x i8]*
  %"$_sender_449" = getelementptr i8, i8* %0, i32 36
  %"$_sender_450" = bitcast i8* %"$_sender_449" to [20 x i8]*
  %"$msg_451" = getelementptr i8, i8* %0, i32 56
  %"$msg_452" = bitcast i8* %"$msg_451" to %Bystr*
  %msg = load %Bystr, %Bystr* %"$msg_452", align 8
  %"$sig_453" = getelementptr i8, i8* %0, i32 72
  %"$sig_454" = bitcast i8* %"$sig_453" to [64 x i8]*
  call void @"$verify_161"(%Uint128 %_amount, [20 x i8]* %"$_origin_448", [20 x i8]* %"$_sender_450", %Bystr %msg, [64 x i8]* %"$sig_454"), !dbg !83
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "ecdsa.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "$fundef_7", linkageName: "$fundef_7", scope: !2, file: !2, line: 9, type: !4, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "msg", scope: !3, file: !2, line: 8, type: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Message", baseType: !10, size: 8, align: 8, dwarfAddressSpace: 0)
!10 = !DIBasicType(name: "Message", size: 8)
!11 = !DILocation(line: 8, column: 8, scope: !3)
!12 = !DILocalVariable(name: "$retval_8", scope: !3, file: !2, line: 9, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (Message)", baseType: !14, size: 8, align: 8, dwarfAddressSpace: 0)
!14 = !DIBasicType(name: "List (Message)", size: 8)
!15 = !DILocation(line: 9, column: 5, scope: !3)
!16 = !DILocalVariable(name: "nil_msg", scope: !3, file: !2, line: 9, type: !13)
!17 = !DILocation(line: 9, column: 9, scope: !3)
!18 = !DILocation(line: 9, column: 19, scope: !3)
!19 = !DILocation(line: 10, column: 5, scope: !3)
!20 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !21, file: !21, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!21 = !DIFile(filename: ".", directory: ".")
!22 = !DILocation(line: 0, scope: !20)
!23 = !DILocation(line: 9, column: 5, scope: !20)
!24 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !21, file: !21, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!25 = !DILocalVariable(name: "$pub_key_9", scope: !24, file: !2, line: 18, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (ByStr33)", baseType: !27, size: 8, align: 8, dwarfAddressSpace: 0)
!27 = !DIBasicType(name: "Option (ByStr33)", size: 8)
!28 = !DILocation(line: 18, column: 7, scope: !24)
!29 = !DILocation(line: 18, column: 36, scope: !24)
!30 = distinct !DISubprogram(name: "verify", linkageName: "verify", scope: !2, file: !2, line: 20, type: !4, scopeLine: 20, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!31 = !DILocalVariable(name: "sig", scope: !30, file: !2, line: 20, type: !32)
!32 = !DIBasicType(name: "ByStr64", size: 64)
!33 = !DILocation(line: 20, column: 32, scope: !30)
!34 = !DILocalVariable(name: "msg", scope: !30, file: !2, line: 20, type: !35)
!35 = !DIBasicType(name: "ByStr", size: 16)
!36 = !DILocation(line: 20, column: 19, scope: !30)
!37 = !DILocalVariable(name: "_sender", scope: !30, file: !2, line: 20, type: !38)
!38 = !DIBasicType(name: "ByStr20 with end", size: 20)
!39 = !DILocation(line: 20, column: 12, scope: !30)
!40 = !DILocalVariable(name: "_origin", scope: !30, file: !2, line: 20, type: !38)
!41 = !DILocalVariable(name: "_amount", scope: !30, file: !2, line: 20, type: !42)
!42 = !DIBasicType(name: "Uint128", size: 16)
!43 = !DILocalVariable(name: "pubk_o", scope: !30, file: !2, line: 21, type: !26)
!44 = !DILocation(line: 21, column: 3, scope: !30)
!45 = !DILocation(line: 22, column: 3, scope: !30)
!46 = !DILocalVariable(name: "$sig_3", scope: !47, file: !2, line: 24, type: !49)
!47 = distinct !DILexicalBlock(scope: !48, file: !2, line: 23, column: 5)
!48 = distinct !DILexicalBlock(scope: !30, file: !2, line: 22, column: 3)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !50, size: 8, align: 8, dwarfAddressSpace: 0)
!50 = !DIBasicType(name: "Bool", size: 8)
!51 = !DILocation(line: 24, column: 5, scope: !47)
!52 = !DILocation(line: 24, column: 11, scope: !47)
!53 = !DILocation(line: 25, column: 5, scope: !47)
!54 = !DILocalVariable(name: "m", scope: !55, file: !2, line: 27, type: !9)
!55 = distinct !DILexicalBlock(scope: !56, file: !2, line: 26, column: 7)
!56 = distinct !DILexicalBlock(scope: !47, file: !2, line: 25, column: 5)
!57 = !DILocation(line: 27, column: 7, scope: !55)
!58 = !DILocation(line: 27, column: 11, scope: !55)
!59 = !DILocalVariable(name: "mone", scope: !55, file: !2, line: 28, type: !13)
!60 = !DILocation(line: 28, column: 7, scope: !55)
!61 = !DILocalVariable(name: "$ecdsa.one_msg_4", scope: !55, file: !2, line: 28, type: !13)
!62 = !DILocation(line: 28, column: 14, scope: !55)
!63 = !DILocation(line: 29, column: 7, scope: !55)
!64 = !DILocalVariable(name: "m", scope: !65, file: !2, line: 31, type: !9)
!65 = distinct !DILexicalBlock(scope: !56, file: !2, line: 30, column: 7)
!66 = !DILocation(line: 31, column: 7, scope: !65)
!67 = !DILocation(line: 31, column: 11, scope: !65)
!68 = !DILocalVariable(name: "mone", scope: !65, file: !2, line: 32, type: !13)
!69 = !DILocation(line: 32, column: 7, scope: !65)
!70 = !DILocalVariable(name: "$ecdsa.one_msg_5", scope: !65, file: !2, line: 32, type: !13)
!71 = !DILocation(line: 32, column: 14, scope: !65)
!72 = !DILocation(line: 33, column: 7, scope: !65)
!73 = !DILocalVariable(name: "m", scope: !74, file: !2, line: 37, type: !9)
!74 = distinct !DILexicalBlock(scope: !48, file: !2, line: 35, column: 5)
!75 = !DILocation(line: 37, column: 5, scope: !74)
!76 = !DILocation(line: 37, column: 9, scope: !74)
!77 = !DILocalVariable(name: "mone", scope: !74, file: !2, line: 38, type: !13)
!78 = !DILocation(line: 38, column: 5, scope: !74)
!79 = !DILocalVariable(name: "$ecdsa.one_msg_6", scope: !74, file: !2, line: 38, type: !13)
!80 = !DILocation(line: 38, column: 12, scope: !74)
!81 = !DILocation(line: 39, column: 5, scope: !74)
!82 = distinct !DISubprogram(name: "verify", linkageName: "verify", scope: !2, file: !2, line: 20, type: !4, scopeLine: 20, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!83 = !DILocation(line: 20, column: 12, scope: !82)
