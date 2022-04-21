

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
%"$ParamDescr_449" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_450" = type { %ParamDescrString, i32, %"$ParamDescr_449"* }
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
@"$pub_key_157" = unnamed_addr constant [8 x i8] c"pub_key\00"
@"$pub_key_164" = unnamed_addr constant [8 x i8] c"pub_key\00"
@"$stringlit_241" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_246" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_249" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_256" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_263" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_268" = unnamed_addr constant [23 x i8] c"verification successful"
@"$stringlit_311" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_316" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_319" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_326" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_333" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_338" = unnamed_addr constant [19 x i8] c"verification failed"
@"$stringlit_381" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_386" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_389" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_396" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_403" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_408" = unnamed_addr constant [12 x i8] c"no key error"
@_tydescr_table = constant [22 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", %_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_Addr_56", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_46", %_TyDescrTy_Typ* @"$TyDescr_Bystr33_44", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_51", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_42", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_Bystr_40", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 22
@"$pname__scilla_version_451" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_452" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_453" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_449"] [%"$ParamDescr_449" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_451", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_14" }, %"$ParamDescr_449" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_452", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_46" }, %"$ParamDescr_449" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_453", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_30" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_454" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_455" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_456" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_msg_457" = unnamed_addr constant [3 x i8] c"msg"
@"$tpname_sig_458" = unnamed_addr constant [3 x i8] c"sig"
@"$tparams_verify_459" = unnamed_addr constant [5 x %"$ParamDescr_449"] [%"$ParamDescr_449" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_454", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_22" }, %"$ParamDescr_449" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_455", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_449" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_456", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_56" }, %"$ParamDescr_449" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_msg_457", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr_40" }, %"$ParamDescr_449" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_sig_458", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr64_42" }]
@"$tname_verify_460" = unnamed_addr constant [6 x i8] c"verify"
@_transition_parameters = constant [1 x %"$TransDescr_450"] [%"$TransDescr_450" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_verify_460", i32 0, i32 0), i32 6 }, i32 5, %"$ParamDescr_449"* getelementptr inbounds ([5 x %"$ParamDescr_449"], [5 x %"$ParamDescr_449"]* @"$tparams_verify_459", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define internal %TName_List_Message* @"$fundef_7"(%"$$fundef_7_env_94"* %0, i8* %1) {
entry:
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
  %nil_msg = alloca %TName_List_Message*, align 8
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
  store %TName_List_Message* %"$adtptr_107", %TName_List_Message** %nil_msg, align 8
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
  store %TName_List_Message* %"$adtptr_118", %TName_List_Message** %"$retval_8", align 8
  %"$$retval_8_119" = load %TName_List_Message*, %TName_List_Message** %"$retval_8", align 8
  ret %TName_List_Message* %"$$retval_8_119"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 5, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %entry
  %"$consume_124" = sub i64 %"$gasrem_120", 5
  store i64 %"$consume_124", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_2", align 4
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 2, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 2
  store i64 %"$consume_129", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_1", align 4
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 6, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 6
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store %Int32 { i32 6 }, %Int32* @"$_gas_charge_accEcdsa_0", align 4
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_7_env_94"*, i8*)* @"$fundef_7" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  ret void
}

define void @_deploy_ops() {
entry:
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %entry
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$pub_key_9" = alloca %TName_Option_ByStr33*, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_146"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$adtval_153_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_153_salloc" = call i8* @_salloc(i8* %"$adtval_153_load", i64 1)
  %"$adtval_153" = bitcast i8* %"$adtval_153_salloc" to %CName_None_ByStr33*
  %"$adtgep_154" = getelementptr inbounds %CName_None_ByStr33, %CName_None_ByStr33* %"$adtval_153", i32 0, i32 0
  store i8 1, i8* %"$adtgep_154", align 1
  %"$adtptr_155" = bitcast %CName_None_ByStr33* %"$adtval_153" to %TName_Option_ByStr33*
  store %TName_Option_ByStr33* %"$adtptr_155", %TName_Option_ByStr33** %"$pub_key_9", align 8
  %"$execptr_load_156" = load i8*, i8** @_execptr, align 8
  %"$$pub_key_9_158" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %"$pub_key_9", align 8
  %"$update_value_159" = bitcast %TName_Option_ByStr33* %"$$pub_key_9_158" to i8*
  call void @_update_field(i8* %"$execptr_load_156", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pub_key_157", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_51", i32 0, i8* null, i8* %"$update_value_159")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$verify_160"(%Uint128 %_amount, [20 x i8]* %"$_origin_161", [20 x i8]* %"$_sender_162", %Bystr %msg, [64 x i8]* %"$sig_163") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_161", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_162", align 1
  %sig = load [64 x i8], [64 x i8]* %"$sig_163", align 1
  %pubk_o = alloca %TName_Option_ByStr33*, align 8
  %"$execptr_load_165" = load i8*, i8** @_execptr, align 8
  %"$pubk_o_call_166" = call i8* @_fetch_field(i8* %"$execptr_load_165", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pub_key_164", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_51", i32 0, i8* null, i32 1)
  %"$pubk_o_167" = bitcast i8* %"$pubk_o_call_166" to %TName_Option_ByStr33*
  store %TName_Option_ByStr33* %"$pubk_o_167", %TName_Option_ByStr33** %pubk_o, align 8
  %"$pubk_o_168" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %pubk_o, align 8
  %"$$pubk_o_168_169" = bitcast %TName_Option_ByStr33* %"$pubk_o_168" to i8*
  %"$_literal_cost_call_170" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_51", i8* %"$$pubk_o_168_169")
  %"$gasadd_171" = add i64 %"$_literal_cost_call_170", 0
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 %"$gasadd_171", %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %entry
  %"$consume_176" = sub i64 %"$gasrem_172", %"$gasadd_171"
  store i64 %"$consume_176", i64* @_gasrem, align 8
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 2, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 2
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %"$pubk_o_183" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %pubk_o, align 8
  %"$pubk_o_tag_184" = getelementptr inbounds %TName_Option_ByStr33, %TName_Option_ByStr33* %"$pubk_o_183", i32 0, i32 0
  %"$pubk_o_tag_185" = load i8, i8* %"$pubk_o_tag_184", align 1
  switch i8 %"$pubk_o_tag_185", label %"$empty_default_186" [
    i8 0, label %"$Some_187"
    i8 1, label %"$None_368"
  ]

"$Some_187":                                      ; preds = %"$have_gas_180"
  %"$pubk_o_188" = bitcast %TName_Option_ByStr33* %"$pubk_o_183" to %CName_Some_ByStr33*
  %"$pubk_gep_189" = getelementptr inbounds %CName_Some_ByStr33, %CName_Some_ByStr33* %"$pubk_o_188", i32 0, i32 1
  %"$pubk_load_190" = load [33 x i8], [33 x i8]* %"$pubk_gep_189", align 1
  %pubk = alloca [33 x i8], align 1
  store [33 x i8] %"$pubk_load_190", [33 x i8]* %pubk, align 1
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$Some_187"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$Some_187"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %"$sig_3" = alloca %TName_Bool*, align 8
  %"$_literal_cost_msg_196" = alloca %Bystr, align 8
  store %Bystr %msg, %Bystr* %"$_literal_cost_msg_196", align 8
  %"$$_literal_cost_msg_196_197" = bitcast %Bystr* %"$_literal_cost_msg_196" to i8*
  %"$_literal_cost_call_198" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_40", i8* %"$$_literal_cost_msg_196_197")
  %"$gasadd_199" = add i64 %"$_literal_cost_call_198", 66
  %"$gasdivceil_200" = urem i64 %"$gasadd_199", 64
  %"$gasdivceil_201" = udiv i64 %"$gasadd_199", 64
  %"$gasdivceil_202" = icmp eq i64 %"$gasdivceil_200", 0
  %"$gasdivceil_203" = add i64 %"$gasdivceil_201", 1
  %"$gasdivceil_204" = select i1 %"$gasdivceil_202", i64 %"$gasdivceil_201", i64 %"$gasdivceil_203"
  %"$gasmul_205" = mul i64 15, %"$gasdivceil_204"
  %"$gasadd_206" = add i64 250, %"$gasmul_205"
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 %"$gasadd_206", %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_194"
  %"$consume_211" = sub i64 %"$gasrem_207", %"$gasadd_206"
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %"$execptr_load_212" = load i8*, i8** @_execptr, align 8
  %"$ecdsa_verify_pubk_213" = alloca [33 x i8], align 1
  %"$pubk_214" = load [33 x i8], [33 x i8]* %pubk, align 1
  store [33 x i8] %"$pubk_214", [33 x i8]* %"$ecdsa_verify_pubk_213", align 1
  %"$ecdsa_verify_sig_215" = alloca [64 x i8], align 1
  store [64 x i8] %sig, [64 x i8]* %"$ecdsa_verify_sig_215", align 1
  %"$ecdsa_verify_call_216" = call %TName_Bool* @_ecdsa_verify(i8* %"$execptr_load_212", [33 x i8]* %"$ecdsa_verify_pubk_213", %Bystr %msg, [64 x i8]* %"$ecdsa_verify_sig_215")
  store %TName_Bool* %"$ecdsa_verify_call_216", %TName_Bool** %"$sig_3", align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 2, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_210"
  %"$consume_222" = sub i64 %"$gasrem_218", 2
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$$sig_3_224" = load %TName_Bool*, %TName_Bool** %"$sig_3", align 8
  %"$$sig_3_tag_225" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$$sig_3_224", i32 0, i32 0
  %"$$sig_3_tag_226" = load i8, i8* %"$$sig_3_tag_225", align 1
  switch i8 %"$$sig_3_tag_226", label %"$empty_default_227" [
    i8 0, label %"$True_228"
    i8 1, label %"$False_298"
  ]

"$True_228":                                      ; preds = %"$have_gas_221"
  %"$$sig_3_229" = bitcast %TName_Bool* %"$$sig_3_224" to %CName_True*
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$True_228"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$True_228"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_233"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %"$msgobj_240_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_240_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_240_salloc_load", i64 165)
  %"$msgobj_240_salloc" = bitcast i8* %"$msgobj_240_salloc_salloc" to [165 x i8]*
  %"$msgobj_240" = bitcast [165 x i8]* %"$msgobj_240_salloc" to i8*
  store i8 4, i8* %"$msgobj_240", align 1
  %"$msgobj_fname_242" = getelementptr i8, i8* %"$msgobj_240", i32 1
  %"$msgobj_fname_243" = bitcast i8* %"$msgobj_fname_242" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_241", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_243", align 8
  %"$msgobj_td_244" = getelementptr i8, i8* %"$msgobj_240", i32 17
  %"$msgobj_td_245" = bitcast i8* %"$msgobj_td_244" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_245", align 8
  %"$msgobj_v_247" = getelementptr i8, i8* %"$msgobj_240", i32 25
  %"$msgobj_v_248" = bitcast i8* %"$msgobj_v_247" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_246", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_248", align 8
  %"$msgobj_fname_250" = getelementptr i8, i8* %"$msgobj_240", i32 41
  %"$msgobj_fname_251" = bitcast i8* %"$msgobj_fname_250" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_249", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_251", align 8
  %"$msgobj_td_252" = getelementptr i8, i8* %"$msgobj_240", i32 57
  %"$msgobj_td_253" = bitcast i8* %"$msgobj_td_252" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_46", %_TyDescrTy_Typ** %"$msgobj_td_253", align 8
  %"$msgobj_v_254" = getelementptr i8, i8* %"$msgobj_240", i32 65
  %"$msgobj_v_255" = bitcast i8* %"$msgobj_v_254" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_255", align 1
  %"$msgobj_fname_257" = getelementptr i8, i8* %"$msgobj_240", i32 85
  %"$msgobj_fname_258" = bitcast i8* %"$msgobj_fname_257" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_256", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_258", align 8
  %"$msgobj_td_259" = getelementptr i8, i8* %"$msgobj_240", i32 101
  %"$msgobj_td_260" = bitcast i8* %"$msgobj_td_259" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_260", align 8
  %"$msgobj_v_261" = getelementptr i8, i8* %"$msgobj_240", i32 109
  %"$msgobj_v_262" = bitcast i8* %"$msgobj_v_261" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_262", align 8
  %"$msgobj_fname_264" = getelementptr i8, i8* %"$msgobj_240", i32 125
  %"$msgobj_fname_265" = bitcast i8* %"$msgobj_fname_264" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_263", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_265", align 8
  %"$msgobj_td_266" = getelementptr i8, i8* %"$msgobj_240", i32 141
  %"$msgobj_td_267" = bitcast i8* %"$msgobj_td_266" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_267", align 8
  %"$msgobj_v_269" = getelementptr i8, i8* %"$msgobj_240", i32 149
  %"$msgobj_v_270" = bitcast i8* %"$msgobj_v_269" to %String*
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_268", i32 0, i32 0), i32 23 }, %String* %"$msgobj_v_270", align 8
  store i8* %"$msgobj_240", i8** %m, align 8
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_238"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %mone = alloca %TName_List_Message*, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_4" = alloca %TName_List_Message*, align 8
  %"$ecdsa.one_msg_282" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_283" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_282", 0
  %"$ecdsa.one_msg_envptr_284" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_282", 1
  %"$m_285" = load i8*, i8** %m, align 8
  %"$ecdsa.one_msg_call_286" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_283"(i8* %"$ecdsa.one_msg_envptr_284", i8* %"$m_285")
  store %TName_List_Message* %"$ecdsa.one_msg_call_286", %TName_List_Message** %"$ecdsa.one_msg_4", align 8
  %"$$ecdsa.one_msg_4_287" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_4", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_4_287", %TName_List_Message** %mone, align 8
  %"$mone_288" = load %TName_List_Message*, %TName_List_Message** %mone, align 8
  %"$$mone_288_289" = bitcast %TName_List_Message* %"$mone_288" to i8*
  %"$_literal_cost_call_290" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", i8* %"$$mone_288_289")
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 %"$_literal_cost_call_290", %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_280"
  %"$consume_295" = sub i64 %"$gasrem_291", %"$_literal_cost_call_290"
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$execptr_load_296" = load i8*, i8** @_execptr, align 8
  %"$mone_297" = load %TName_List_Message*, %TName_List_Message** %mone, align 8
  call void @_send(i8* %"$execptr_load_296", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", %TName_List_Message* %"$mone_297")
  br label %"$matchsucc_223"

"$False_298":                                     ; preds = %"$have_gas_221"
  %"$$sig_3_299" = bitcast %TName_Bool* %"$$sig_3_224" to %CName_False*
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$False_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$False_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %m1 = alloca i8*, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$msgobj_310_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_310_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_310_salloc_load", i64 165)
  %"$msgobj_310_salloc" = bitcast i8* %"$msgobj_310_salloc_salloc" to [165 x i8]*
  %"$msgobj_310" = bitcast [165 x i8]* %"$msgobj_310_salloc" to i8*
  store i8 4, i8* %"$msgobj_310", align 1
  %"$msgobj_fname_312" = getelementptr i8, i8* %"$msgobj_310", i32 1
  %"$msgobj_fname_313" = bitcast i8* %"$msgobj_fname_312" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_311", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_313", align 8
  %"$msgobj_td_314" = getelementptr i8, i8* %"$msgobj_310", i32 17
  %"$msgobj_td_315" = bitcast i8* %"$msgobj_td_314" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_315", align 8
  %"$msgobj_v_317" = getelementptr i8, i8* %"$msgobj_310", i32 25
  %"$msgobj_v_318" = bitcast i8* %"$msgobj_v_317" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_316", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_318", align 8
  %"$msgobj_fname_320" = getelementptr i8, i8* %"$msgobj_310", i32 41
  %"$msgobj_fname_321" = bitcast i8* %"$msgobj_fname_320" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_319", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_321", align 8
  %"$msgobj_td_322" = getelementptr i8, i8* %"$msgobj_310", i32 57
  %"$msgobj_td_323" = bitcast i8* %"$msgobj_td_322" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_46", %_TyDescrTy_Typ** %"$msgobj_td_323", align 8
  %"$msgobj_v_324" = getelementptr i8, i8* %"$msgobj_310", i32 65
  %"$msgobj_v_325" = bitcast i8* %"$msgobj_v_324" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_325", align 1
  %"$msgobj_fname_327" = getelementptr i8, i8* %"$msgobj_310", i32 85
  %"$msgobj_fname_328" = bitcast i8* %"$msgobj_fname_327" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_326", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_328", align 8
  %"$msgobj_td_329" = getelementptr i8, i8* %"$msgobj_310", i32 101
  %"$msgobj_td_330" = bitcast i8* %"$msgobj_td_329" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_330", align 8
  %"$msgobj_v_331" = getelementptr i8, i8* %"$msgobj_310", i32 109
  %"$msgobj_v_332" = bitcast i8* %"$msgobj_v_331" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_332", align 8
  %"$msgobj_fname_334" = getelementptr i8, i8* %"$msgobj_310", i32 125
  %"$msgobj_fname_335" = bitcast i8* %"$msgobj_fname_334" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_333", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_335", align 8
  %"$msgobj_td_336" = getelementptr i8, i8* %"$msgobj_310", i32 141
  %"$msgobj_td_337" = bitcast i8* %"$msgobj_td_336" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_337", align 8
  %"$msgobj_v_339" = getelementptr i8, i8* %"$msgobj_310", i32 149
  %"$msgobj_v_340" = bitcast i8* %"$msgobj_v_339" to %String*
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_338", i32 0, i32 0), i32 19 }, %String* %"$msgobj_v_340", align 8
  store i8* %"$msgobj_310", i8** %m1, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_308"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %mone2 = alloca %TName_List_Message*, align 8
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_345"
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_5" = alloca %TName_List_Message*, align 8
  %"$ecdsa.one_msg_352" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_353" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_352", 0
  %"$ecdsa.one_msg_envptr_354" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_352", 1
  %"$m_355" = load i8*, i8** %m1, align 8
  %"$ecdsa.one_msg_call_356" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_353"(i8* %"$ecdsa.one_msg_envptr_354", i8* %"$m_355")
  store %TName_List_Message* %"$ecdsa.one_msg_call_356", %TName_List_Message** %"$ecdsa.one_msg_5", align 8
  %"$$ecdsa.one_msg_5_357" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_5", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_5_357", %TName_List_Message** %mone2, align 8
  %"$mone_358" = load %TName_List_Message*, %TName_List_Message** %mone2, align 8
  %"$$mone_358_359" = bitcast %TName_List_Message* %"$mone_358" to i8*
  %"$_literal_cost_call_360" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", i8* %"$$mone_358_359")
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 %"$_literal_cost_call_360", %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_350"
  %"$consume_365" = sub i64 %"$gasrem_361", %"$_literal_cost_call_360"
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %"$execptr_load_366" = load i8*, i8** @_execptr, align 8
  %"$mone_367" = load %TName_List_Message*, %TName_List_Message** %mone2, align 8
  call void @_send(i8* %"$execptr_load_366", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", %TName_List_Message* %"$mone_367")
  br label %"$matchsucc_223"

"$empty_default_227":                             ; preds = %"$have_gas_221"
  br label %"$matchsucc_223"

"$matchsucc_223":                                 ; preds = %"$have_gas_364", %"$have_gas_294", %"$empty_default_227"
  br label %"$matchsucc_182"

"$None_368":                                      ; preds = %"$have_gas_180"
  %"$pubk_o_369" = bitcast %TName_Option_ByStr33* %"$pubk_o_183" to %CName_None_ByStr33*
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$None_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$None_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %m3 = alloca i8*, align 8
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$msgobj_380_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_380_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_380_salloc_load", i64 165)
  %"$msgobj_380_salloc" = bitcast i8* %"$msgobj_380_salloc_salloc" to [165 x i8]*
  %"$msgobj_380" = bitcast [165 x i8]* %"$msgobj_380_salloc" to i8*
  store i8 4, i8* %"$msgobj_380", align 1
  %"$msgobj_fname_382" = getelementptr i8, i8* %"$msgobj_380", i32 1
  %"$msgobj_fname_383" = bitcast i8* %"$msgobj_fname_382" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_381", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_383", align 8
  %"$msgobj_td_384" = getelementptr i8, i8* %"$msgobj_380", i32 17
  %"$msgobj_td_385" = bitcast i8* %"$msgobj_td_384" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_385", align 8
  %"$msgobj_v_387" = getelementptr i8, i8* %"$msgobj_380", i32 25
  %"$msgobj_v_388" = bitcast i8* %"$msgobj_v_387" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_386", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_388", align 8
  %"$msgobj_fname_390" = getelementptr i8, i8* %"$msgobj_380", i32 41
  %"$msgobj_fname_391" = bitcast i8* %"$msgobj_fname_390" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_389", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_391", align 8
  %"$msgobj_td_392" = getelementptr i8, i8* %"$msgobj_380", i32 57
  %"$msgobj_td_393" = bitcast i8* %"$msgobj_td_392" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_46", %_TyDescrTy_Typ** %"$msgobj_td_393", align 8
  %"$msgobj_v_394" = getelementptr i8, i8* %"$msgobj_380", i32 65
  %"$msgobj_v_395" = bitcast i8* %"$msgobj_v_394" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_395", align 1
  %"$msgobj_fname_397" = getelementptr i8, i8* %"$msgobj_380", i32 85
  %"$msgobj_fname_398" = bitcast i8* %"$msgobj_fname_397" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_396", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_398", align 8
  %"$msgobj_td_399" = getelementptr i8, i8* %"$msgobj_380", i32 101
  %"$msgobj_td_400" = bitcast i8* %"$msgobj_td_399" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_400", align 8
  %"$msgobj_v_401" = getelementptr i8, i8* %"$msgobj_380", i32 109
  %"$msgobj_v_402" = bitcast i8* %"$msgobj_v_401" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_402", align 8
  %"$msgobj_fname_404" = getelementptr i8, i8* %"$msgobj_380", i32 125
  %"$msgobj_fname_405" = bitcast i8* %"$msgobj_fname_404" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_403", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_405", align 8
  %"$msgobj_td_406" = getelementptr i8, i8* %"$msgobj_380", i32 141
  %"$msgobj_td_407" = bitcast i8* %"$msgobj_td_406" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_407", align 8
  %"$msgobj_v_409" = getelementptr i8, i8* %"$msgobj_380", i32 149
  %"$msgobj_v_410" = bitcast i8* %"$msgobj_v_409" to %String*
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_408", i32 0, i32 0), i32 12 }, %String* %"$msgobj_v_410", align 8
  store i8* %"$msgobj_380", i8** %m3, align 8
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$have_gas_378"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  %mone4 = alloca %TName_List_Message*, align 8
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_415"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_6" = alloca %TName_List_Message*, align 8
  %"$ecdsa.one_msg_422" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_423" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_422", 0
  %"$ecdsa.one_msg_envptr_424" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_422", 1
  %"$m_425" = load i8*, i8** %m3, align 8
  %"$ecdsa.one_msg_call_426" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_423"(i8* %"$ecdsa.one_msg_envptr_424", i8* %"$m_425")
  store %TName_List_Message* %"$ecdsa.one_msg_call_426", %TName_List_Message** %"$ecdsa.one_msg_6", align 8
  %"$$ecdsa.one_msg_6_427" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_6", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_6_427", %TName_List_Message** %mone4, align 8
  %"$mone_428" = load %TName_List_Message*, %TName_List_Message** %mone4, align 8
  %"$$mone_428_429" = bitcast %TName_List_Message* %"$mone_428" to i8*
  %"$_literal_cost_call_430" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", i8* %"$$mone_428_429")
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 %"$_literal_cost_call_430", %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_420"
  %"$consume_435" = sub i64 %"$gasrem_431", %"$_literal_cost_call_430"
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %"$execptr_load_436" = load i8*, i8** @_execptr, align 8
  %"$mone_437" = load %TName_List_Message*, %TName_List_Message** %mone4, align 8
  call void @_send(i8* %"$execptr_load_436", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_52", %TName_List_Message* %"$mone_437")
  br label %"$matchsucc_182"

"$empty_default_186":                             ; preds = %"$have_gas_180"
  br label %"$matchsucc_182"

"$matchsucc_182":                                 ; preds = %"$have_gas_434", %"$matchsucc_223", %"$empty_default_186"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_ecdsa_verify(i8*, [33 x i8]*, %Bystr, [64 x i8]*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @verify(i8* %0) {
entry:
  %"$_amount_439" = getelementptr i8, i8* %0, i32 0
  %"$_amount_440" = bitcast i8* %"$_amount_439" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_440", align 8
  %"$_origin_441" = getelementptr i8, i8* %0, i32 16
  %"$_origin_442" = bitcast i8* %"$_origin_441" to [20 x i8]*
  %"$_sender_443" = getelementptr i8, i8* %0, i32 36
  %"$_sender_444" = bitcast i8* %"$_sender_443" to [20 x i8]*
  %"$msg_445" = getelementptr i8, i8* %0, i32 56
  %"$msg_446" = bitcast i8* %"$msg_445" to %Bystr*
  %msg = load %Bystr, %Bystr* %"$msg_446", align 8
  %"$sig_447" = getelementptr i8, i8* %0, i32 72
  %"$sig_448" = bitcast i8* %"$sig_447" to [64 x i8]*
  call void @"$verify_160"(%Uint128 %_amount, [20 x i8]* %"$_origin_442", [20 x i8]* %"$_sender_444", %Bystr %msg, [64 x i8]* %"$sig_448")
  ret void
}
