

; gas_remaining: 4001350
; ModuleID = 'HelloWorld'
source_filename = "HelloWorld"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Int32 = type { i32 }
%String = type { i8*, i32 }
%Uint32 = type { i32 }
%Uint256 = type { i256 }
%Bystr = type { i8*, i32 }
%TName_List_String = type { i8, %CName_Cons_String*, %CName_Nil_String* }
%CName_Cons_String = type <{ i8, %String, %TName_List_String* }>
%CName_Nil_String = type <{ i8 }>
%TName_Pair_Int128_String = type { i8, %CName_Pair_Int128_String* }
%CName_Pair_Int128_String = type <{ i8, %Int128, %String }>
%Int128 = type { i128 }
%"$$fundef_1_env_86" = type {}
%Uint128 = type { i128 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_6" = global %"$TyDescrTy_PrimTyp_5" zeroinitializer
@"$TyDescr_Int32_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int32_Prim_6" to i8*) }
@"$TyDescr_Uint32_Prim_8" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 0 }
@"$TyDescr_Uint32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint32_Prim_8" to i8*) }
@"$TyDescr_Int64_Prim_10" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 1 }
@"$TyDescr_Int64_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int64_Prim_10" to i8*) }
@"$TyDescr_Uint64_Prim_12" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 1 }
@"$TyDescr_Uint64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint64_Prim_12" to i8*) }
@"$TyDescr_Int128_Prim_14" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 2 }
@"$TyDescr_Int128_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int128_Prim_14" to i8*) }
@"$TyDescr_Uint128_Prim_16" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 2 }
@"$TyDescr_Uint128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint128_Prim_16" to i8*) }
@"$TyDescr_Int256_Prim_18" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 3 }
@"$TyDescr_Int256_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int256_Prim_18" to i8*) }
@"$TyDescr_Uint256_Prim_20" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 3 }
@"$TyDescr_Uint256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint256_Prim_20" to i8*) }
@"$TyDescr_String_Prim_22" = global %"$TyDescrTy_PrimTyp_5" { i32 2, i32 0 }
@"$TyDescr_String_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_String_Prim_22" to i8*) }
@"$TyDescr_Bnum_Prim_24" = global %"$TyDescrTy_PrimTyp_5" { i32 3, i32 0 }
@"$TyDescr_Bnum_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bnum_Prim_24" to i8*) }
@"$TyDescr_Message_Prim_26" = global %"$TyDescrTy_PrimTyp_5" { i32 4, i32 0 }
@"$TyDescr_Message_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Message_Prim_26" to i8*) }
@"$TyDescr_Event_Prim_28" = global %"$TyDescrTy_PrimTyp_5" { i32 5, i32 0 }
@"$TyDescr_Event_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Event_Prim_28" to i8*) }
@"$TyDescr_Exception_Prim_30" = global %"$TyDescrTy_PrimTyp_5" { i32 6, i32 0 }
@"$TyDescr_Exception_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Exception_Prim_30" to i8*) }
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_Bystr20_Prim_34" = global %"$TyDescrTy_PrimTyp_5" { i32 8, i32 20 }
@"$TyDescr_Bystr20_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr20_Prim_34" to i8*) }
@"$TyDescr_ADT_Bool_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_ADT_Pair_Int128_String_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_62" to i8*) }
@"$TyDescr_ADT_List_String_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_String_ADTTyp_Specl_74" to i8*) }
@"$TyDescr_ADT_List_Message_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Message_ADTTyp_Specl_83" to i8*) }
@"$TyDescr_Bool_ADTTyp_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_55", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Bool_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_45" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_46" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_46", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_49" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_49", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_True_ADTTyp_Constr_47", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_False_ADTTyp_Constr_50"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Bool_ADTTyp_44" }
@"$TyDescr_Bool_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_53"]
@"$TyDescr_ADT_Bool_55" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_Pair_ADTTyp_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_64", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Pair_ADTTyp_m_specls_63", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int128_String_Constr_m_args_57" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_String_23"]
@"$TyDescr_ADT_Pair_58" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int128_String_ADTTyp_Constr_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_58", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int128_String_Constr_m_args_57", i32 0, i32 0) }
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_constrs_60" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Pair_Pair_Int128_String_ADTTyp_Constr_59"]
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_TArgs_61" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_String_23"]
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_TArgs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_38"*], [1 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_constrs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Pair_ADTTyp_56" }
@"$TyDescr_Pair_ADTTyp_m_specls_63" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_62"]
@"$TyDescr_ADT_Pair_64" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_List_ADTTyp_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_85", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_36"*], [2 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_List_ADTTyp_m_specls_84", i32 0, i32 0) }
@"$TyDescr_List_Cons_String_Constr_m_args_66" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41"]
@"$TyDescr_ADT_Cons_67" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_67", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_66", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_69" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_70" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_70", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_69", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_72" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_68", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_71"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_73" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_23"]
@"$TyDescr_List_String_ADTTyp_Specl_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_73", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_65" }
@"$TyDescr_List_Cons_Message_Constr_m_args_75" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42"]
@"$TyDescr_ADT_Cons_76" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_76", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_75", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_78" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_79" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_79", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_78", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_81" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_77", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_80"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_82" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_27"]
@"$TyDescr_List_Message_ADTTyp_Specl_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_82", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_81", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_65" }
@"$TyDescr_List_ADTTyp_m_specls_84" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_String_ADTTyp_Specl_74", %"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Message_ADTTyp_Specl_83"]
@"$TyDescr_ADT_List_85" = unnamed_addr constant [4 x i8] c"List"
@one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@not_owner_code = global %Int32 zeroinitializer
@set_hello_code = global %Int32 zeroinitializer
@smsg = global %String zeroinitializer
@"$stringlit_100" = unnamed_addr constant [8 x i8] c"get lost"
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@owner = global [20 x i8] zeroinitializer
@name = global %String zeroinitializer
@uint256 = global %Uint256 zeroinitializer
@int32 = global %Int32 zeroinitializer
@bstr = global %Bystr zeroinitializer
@all_names = global %TName_List_String* null
@pear = global %TName_Pair_Int128_String* null
@"$welcome_msg_103" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$sendoff_msg_109" = unnamed_addr constant [12 x i8] c"sendoff_msg\00"
@"$stringlit_130" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_135" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_138" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_152" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_156" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_161" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_164" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_185" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_190" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_195" = unnamed_addr constant [10 x i8] c"getHello()"
@"$stringlit_198" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_217" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_222" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_225" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_232" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_241" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_246" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_249" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_256" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_287" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_292" = unnamed_addr constant [15 x i8] c"ContractAddress"
@"$stringlit_295" = unnamed_addr constant [4 x i8] c"addr"
@"$stringlit_314" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_319" = unnamed_addr constant [14 x i8] c"AllContrparams"
@"$stringlit_322" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_330" = unnamed_addr constant [4 x i8] c"name"
@"$stringlit_338" = unnamed_addr constant [7 x i8] c"uint256"
@"$stringlit_346" = unnamed_addr constant [5 x i8] c"int32"
@"$stringlit_354" = unnamed_addr constant [4 x i8] c"bstr"
@"$stringlit_362" = unnamed_addr constant [9 x i8] c"all_names"
@"$stringlit_370" = unnamed_addr constant [4 x i8] c"pear"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 19

define internal %TName_List_Message* @"$fundef_1"(%"$$fundef_1_env_86"* %0, i8* %1) {
entry:
  %"$retval_2" = alloca %TName_List_Message*
  %nil_msg = alloca %TName_List_Message*
  %"$adtval_87_load" = load i8*, i8** @_execptr
  %"$adtval_87_salloc" = call i8* @_salloc(i8* %"$adtval_87_load", i64 1)
  %"$adtval_87" = bitcast i8* %"$adtval_87_salloc" to %CName_Nil_Message*
  %"$adtgep_88" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_87", i32 0, i32 0
  store i8 1, i8* %"$adtgep_88"
  %"$adtptr_89" = bitcast %CName_Nil_Message* %"$adtval_87" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_89", %TName_List_Message** %nil_msg
  %"$nil_msg_90" = load %TName_List_Message*, %TName_List_Message** %nil_msg
  %"$adtval_91_load" = load i8*, i8** @_execptr
  %"$adtval_91_salloc" = call i8* @_salloc(i8* %"$adtval_91_load", i64 17)
  %"$adtval_91" = bitcast i8* %"$adtval_91_salloc" to %CName_Cons_Message*
  %"$adtgep_92" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_91", i32 0, i32 0
  store i8 0, i8* %"$adtgep_92"
  %"$adtgep_93" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_91", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_93"
  %"$adtgep_94" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_91", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_90", %TName_List_Message** %"$adtgep_94"
  %"$adtptr_95" = bitcast %CName_Cons_Message* %"$adtval_91" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_95", %TName_List_Message** %"$retval_2"
  %"$$retval_2_96" = load %TName_List_Message*, %TName_List_Message** %"$retval_2"
  ret %TName_List_Message* %"$$retval_2_96"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_1_env_86"*, i8*)* @"$fundef_1" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @one_msg
  store %Int32 { i32 1 }, %Int32* @not_owner_code
  store %Int32 { i32 2 }, %Int32* @set_hello_code
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_100", i32 0, i32 0), i32 8 }, %String* @smsg
  ret void
}

define void @_init_state() {
entry:
  %"$welcome_msg_3" = alloca %String
  %"$name_101" = load %String, %String* @name
  store %String %"$name_101", %String* %"$welcome_msg_3"
  %"$execptr_load_102" = load i8*, i8** @_execptr
  %"$$welcome_msg_3_104" = load %String, %String* %"$welcome_msg_3"
  %"$update_value_105" = alloca %String
  store %String %"$$welcome_msg_3_104", %String* %"$update_value_105"
  %"$update_value_106" = bitcast %String* %"$update_value_105" to i8*
  call void @_update_field(i8* %"$execptr_load_102", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_103", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_106")
  %"$sendoff_msg_4" = alloca %String
  %"$smsg_107" = load %String, %String* @smsg
  store %String %"$smsg_107", %String* %"$sendoff_msg_4"
  %"$execptr_load_108" = load i8*, i8** @_execptr
  %"$$sendoff_msg_4_110" = load %String, %String* %"$sendoff_msg_4"
  %"$update_value_111" = alloca %String
  store %String %"$$sendoff_msg_4_110", %String* %"$update_value_111"
  %"$update_value_112" = bitcast %String* %"$update_value_111" to i8*
  call void @_update_field(i8* %"$execptr_load_108", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$sendoff_msg_109", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_112")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setHello_113"(%Uint128 %_amount, [20 x i8]* %"$_sender_114", %String %msg) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_114"
  %is_owner = alloca %TName_Bool*
  %"$execptr_load_115" = load i8*, i8** @_execptr
  %"$eq_owner_116" = alloca [20 x i8]
  %"$owner_117" = load [20 x i8], [20 x i8]* @owner
  store [20 x i8] %"$owner_117", [20 x i8]* %"$eq_owner_116"
  %"$$eq_owner_116_118" = bitcast [20 x i8]* %"$eq_owner_116" to i8*
  %"$eq__sender_119" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_119"
  %"$$eq__sender_119_120" = bitcast [20 x i8]* %"$eq__sender_119" to i8*
  %"$eq_call_121" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_115", i32 20, i8* %"$$eq_owner_116_118", i8* %"$$eq__sender_119_120")
  store %TName_Bool* %"$eq_call_121", %TName_Bool** %is_owner
  %"$is_owner_123" = load %TName_Bool*, %TName_Bool** %is_owner
  %"$is_owner_tag_124" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_owner_123", i32 0, i32 0
  %"$is_owner_tag_125" = load i8, i8* %"$is_owner_tag_124"
  switch i8 %"$is_owner_tag_125", label %"$empty_default_126" [
    i8 1, label %"$False_127"
    i8 0, label %"$True_149"
  ]

"$False_127":                                     ; preds = %entry
  %"$is_owner_128" = bitcast %TName_Bool* %"$is_owner_123" to %CName_False*
  %e = alloca i8*
  %"$msgobj_129_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_129_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_129_salloc_load", i64 69)
  %"$msgobj_129_salloc" = bitcast i8* %"$msgobj_129_salloc_salloc" to [69 x i8]*
  %"$msgobj_129" = bitcast [69 x i8]* %"$msgobj_129_salloc" to i8*
  store i8 2, i8* %"$msgobj_129"
  %"$msgobj_fname_131" = getelementptr i8, i8* %"$msgobj_129", i32 1
  %"$msgobj_fname_132" = bitcast i8* %"$msgobj_fname_131" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_130", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_132"
  %"$msgobj_td_133" = getelementptr i8, i8* %"$msgobj_129", i32 17
  %"$msgobj_td_134" = bitcast i8* %"$msgobj_td_133" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_134"
  %"$msgobj_v_136" = getelementptr i8, i8* %"$msgobj_129", i32 25
  %"$msgobj_v_137" = bitcast i8* %"$msgobj_v_136" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_135", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_137"
  %"$msgobj_fname_139" = getelementptr i8, i8* %"$msgobj_129", i32 41
  %"$msgobj_fname_140" = bitcast i8* %"$msgobj_fname_139" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_138", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_140"
  %"$msgobj_td_141" = getelementptr i8, i8* %"$msgobj_129", i32 57
  %"$msgobj_td_142" = bitcast i8* %"$msgobj_td_141" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_142"
  %"$not_owner_code_143" = load %Int32, %Int32* @not_owner_code
  %"$msgobj_v_144" = getelementptr i8, i8* %"$msgobj_129", i32 65
  %"$msgobj_v_145" = bitcast i8* %"$msgobj_v_144" to %Int32*
  store %Int32 %"$not_owner_code_143", %Int32* %"$msgobj_v_145"
  store i8* %"$msgobj_129", i8** %e
  %"$execptr_load_147" = load i8*, i8** @_execptr
  %"$e_148" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_147", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_148")
  br label %"$matchsucc_122"

"$True_149":                                      ; preds = %entry
  %"$is_owner_150" = bitcast %TName_Bool* %"$is_owner_123" to %CName_True*
  %"$execptr_load_151" = load i8*, i8** @_execptr
  %"$update_value_153" = alloca %String
  store %String %msg, %String* %"$update_value_153"
  %"$update_value_154" = bitcast %String* %"$update_value_153" to i8*
  call void @_update_field(i8* %"$execptr_load_151", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_152", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_154")
  %e1 = alloca i8*
  %"$msgobj_155_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_155_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_155_salloc_load", i64 69)
  %"$msgobj_155_salloc" = bitcast i8* %"$msgobj_155_salloc_salloc" to [69 x i8]*
  %"$msgobj_155" = bitcast [69 x i8]* %"$msgobj_155_salloc" to i8*
  store i8 2, i8* %"$msgobj_155"
  %"$msgobj_fname_157" = getelementptr i8, i8* %"$msgobj_155", i32 1
  %"$msgobj_fname_158" = bitcast i8* %"$msgobj_fname_157" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_156", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_158"
  %"$msgobj_td_159" = getelementptr i8, i8* %"$msgobj_155", i32 17
  %"$msgobj_td_160" = bitcast i8* %"$msgobj_td_159" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_160"
  %"$msgobj_v_162" = getelementptr i8, i8* %"$msgobj_155", i32 25
  %"$msgobj_v_163" = bitcast i8* %"$msgobj_v_162" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_161", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_163"
  %"$msgobj_fname_165" = getelementptr i8, i8* %"$msgobj_155", i32 41
  %"$msgobj_fname_166" = bitcast i8* %"$msgobj_fname_165" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_164", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_166"
  %"$msgobj_td_167" = getelementptr i8, i8* %"$msgobj_155", i32 57
  %"$msgobj_td_168" = bitcast i8* %"$msgobj_td_167" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_168"
  %"$set_hello_code_169" = load %Int32, %Int32* @set_hello_code
  %"$msgobj_v_170" = getelementptr i8, i8* %"$msgobj_155", i32 65
  %"$msgobj_v_171" = bitcast i8* %"$msgobj_v_170" to %Int32*
  store %Int32 %"$set_hello_code_169", %Int32* %"$msgobj_v_171"
  store i8* %"$msgobj_155", i8** %e1
  %"$execptr_load_173" = load i8*, i8** @_execptr
  %"$e_174" = load i8*, i8** %e1
  call void @_event(i8* %"$execptr_load_173", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_174")
  br label %"$matchsucc_122"

"$empty_default_126":                             ; preds = %entry
  br label %"$matchsucc_122"

"$matchsucc_122":                                 ; preds = %"$True_149", %"$False_127", %"$empty_default_126"
  ret void
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setHello(i8* %0) {
entry:
  %"$_amount_176" = getelementptr i8, i8* %0, i32 0
  %"$_amount_177" = bitcast i8* %"$_amount_176" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_177"
  %"$_sender_178" = getelementptr i8, i8* %0, i32 16
  %"$_sender_179" = bitcast i8* %"$_sender_178" to [20 x i8]*
  %"$msg_180" = getelementptr i8, i8* %0, i32 36
  %"$msg_181" = bitcast i8* %"$msg_180" to %String*
  %msg = load %String, %String* %"$msg_181"
  call void @"$setHello_113"(%Uint128 %_amount, [20 x i8]* %"$_sender_179", %String %msg)
  ret void
}

define internal void @"$getHello_182"(%Uint128 %_amount, [20 x i8]* %"$_sender_183") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_183"
  %r = alloca %String
  %"$execptr_load_184" = load i8*, i8** @_execptr
  %"$r_186" = call i8* @_fetch_field(i8* %"$execptr_load_184", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_185", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i32 1)
  %"$r_187" = bitcast i8* %"$r_186" to %String*
  %"$r_188" = load %String, %String* %"$r_187"
  store %String %"$r_188", %String* %r
  %e = alloca i8*
  %"$msgobj_189_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_189_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_189_salloc_load", i64 81)
  %"$msgobj_189_salloc" = bitcast i8* %"$msgobj_189_salloc_salloc" to [81 x i8]*
  %"$msgobj_189" = bitcast [81 x i8]* %"$msgobj_189_salloc" to i8*
  store i8 2, i8* %"$msgobj_189"
  %"$msgobj_fname_191" = getelementptr i8, i8* %"$msgobj_189", i32 1
  %"$msgobj_fname_192" = bitcast i8* %"$msgobj_fname_191" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_190", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_192"
  %"$msgobj_td_193" = getelementptr i8, i8* %"$msgobj_189", i32 17
  %"$msgobj_td_194" = bitcast i8* %"$msgobj_td_193" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_194"
  %"$msgobj_v_196" = getelementptr i8, i8* %"$msgobj_189", i32 25
  %"$msgobj_v_197" = bitcast i8* %"$msgobj_v_196" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_195", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_197"
  %"$msgobj_fname_199" = getelementptr i8, i8* %"$msgobj_189", i32 41
  %"$msgobj_fname_200" = bitcast i8* %"$msgobj_fname_199" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_198", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_200"
  %"$msgobj_td_201" = getelementptr i8, i8* %"$msgobj_189", i32 57
  %"$msgobj_td_202" = bitcast i8* %"$msgobj_td_201" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_202"
  %"$r_203" = load %String, %String* %r
  %"$msgobj_v_204" = getelementptr i8, i8* %"$msgobj_189", i32 65
  %"$msgobj_v_205" = bitcast i8* %"$msgobj_v_204" to %String*
  store %String %"$r_203", %String* %"$msgobj_v_205"
  store i8* %"$msgobj_189", i8** %e
  %"$execptr_load_207" = load i8*, i8** @_execptr
  %"$e_208" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_207", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_208")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @getHello(i8* %0) {
entry:
  %"$_amount_210" = getelementptr i8, i8* %0, i32 0
  %"$_amount_211" = bitcast i8* %"$_amount_210" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_211"
  %"$_sender_212" = getelementptr i8, i8* %0, i32 16
  %"$_sender_213" = bitcast i8* %"$_sender_212" to [20 x i8]*
  call void @"$getHello_182"(%Uint128 %_amount, [20 x i8]* %"$_sender_213")
  ret void
}

define internal void @"$multipleMsgs_214"(%Uint128 %_amount, [20 x i8]* %"$_sender_215") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_215"
  %msg1 = alloca i8*
  %"$msgobj_216_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_216_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_216_salloc_load", i64 125)
  %"$msgobj_216_salloc" = bitcast i8* %"$msgobj_216_salloc_salloc" to [125 x i8]*
  %"$msgobj_216" = bitcast [125 x i8]* %"$msgobj_216_salloc" to i8*
  store i8 3, i8* %"$msgobj_216"
  %"$msgobj_fname_218" = getelementptr i8, i8* %"$msgobj_216", i32 1
  %"$msgobj_fname_219" = bitcast i8* %"$msgobj_fname_218" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_217", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_219"
  %"$msgobj_td_220" = getelementptr i8, i8* %"$msgobj_216", i32 17
  %"$msgobj_td_221" = bitcast i8* %"$msgobj_td_220" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_221"
  %"$msgobj_v_223" = getelementptr i8, i8* %"$msgobj_216", i32 25
  %"$msgobj_v_224" = bitcast i8* %"$msgobj_v_223" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_222", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_224"
  %"$msgobj_fname_226" = getelementptr i8, i8* %"$msgobj_216", i32 41
  %"$msgobj_fname_227" = bitcast i8* %"$msgobj_fname_226" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_225", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_227"
  %"$msgobj_td_228" = getelementptr i8, i8* %"$msgobj_216", i32 57
  %"$msgobj_td_229" = bitcast i8* %"$msgobj_td_228" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_229"
  %"$msgobj_v_230" = getelementptr i8, i8* %"$msgobj_216", i32 65
  %"$msgobj_v_231" = bitcast i8* %"$msgobj_v_230" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_231"
  %"$msgobj_fname_233" = getelementptr i8, i8* %"$msgobj_216", i32 85
  %"$msgobj_fname_234" = bitcast i8* %"$msgobj_fname_233" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_232", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_234"
  %"$msgobj_td_235" = getelementptr i8, i8* %"$msgobj_216", i32 101
  %"$msgobj_td_236" = bitcast i8* %"$msgobj_td_235" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_236"
  %"$msgobj_v_237" = getelementptr i8, i8* %"$msgobj_216", i32 109
  %"$msgobj_v_238" = bitcast i8* %"$msgobj_v_237" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_238"
  store i8* %"$msgobj_216", i8** %msg1
  %msg2 = alloca i8*
  %"$msgobj_240_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_240_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_240_salloc_load", i64 125)
  %"$msgobj_240_salloc" = bitcast i8* %"$msgobj_240_salloc_salloc" to [125 x i8]*
  %"$msgobj_240" = bitcast [125 x i8]* %"$msgobj_240_salloc" to i8*
  store i8 3, i8* %"$msgobj_240"
  %"$msgobj_fname_242" = getelementptr i8, i8* %"$msgobj_240", i32 1
  %"$msgobj_fname_243" = bitcast i8* %"$msgobj_fname_242" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_241", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_243"
  %"$msgobj_td_244" = getelementptr i8, i8* %"$msgobj_240", i32 17
  %"$msgobj_td_245" = bitcast i8* %"$msgobj_td_244" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_245"
  %"$msgobj_v_247" = getelementptr i8, i8* %"$msgobj_240", i32 25
  %"$msgobj_v_248" = bitcast i8* %"$msgobj_v_247" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_246", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_248"
  %"$msgobj_fname_250" = getelementptr i8, i8* %"$msgobj_240", i32 41
  %"$msgobj_fname_251" = bitcast i8* %"$msgobj_fname_250" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_249", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_251"
  %"$msgobj_td_252" = getelementptr i8, i8* %"$msgobj_240", i32 57
  %"$msgobj_td_253" = bitcast i8* %"$msgobj_td_252" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_253"
  %"$msgobj_v_254" = getelementptr i8, i8* %"$msgobj_240", i32 65
  %"$msgobj_v_255" = bitcast i8* %"$msgobj_v_254" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_255"
  %"$msgobj_fname_257" = getelementptr i8, i8* %"$msgobj_240", i32 85
  %"$msgobj_fname_258" = bitcast i8* %"$msgobj_fname_257" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_256", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_258"
  %"$msgobj_td_259" = getelementptr i8, i8* %"$msgobj_240", i32 101
  %"$msgobj_td_260" = bitcast i8* %"$msgobj_td_259" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_260"
  %"$msgobj_v_261" = getelementptr i8, i8* %"$msgobj_240", i32 109
  %"$msgobj_v_262" = bitcast i8* %"$msgobj_v_261" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_262"
  store i8* %"$msgobj_240", i8** %msg2
  %msgs1 = alloca %TName_List_Message*
  %"$one_msg_0" = alloca %TName_List_Message*
  %"$one_msg_264" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @one_msg
  %"$one_msg_fptr_265" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_264", 0
  %"$one_msg_envptr_266" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_264", 1
  %"$msg1_267" = load i8*, i8** %msg1
  %"$one_msg_call_268" = call %TName_List_Message* %"$one_msg_fptr_265"(i8* %"$one_msg_envptr_266", i8* %"$msg1_267")
  store %TName_List_Message* %"$one_msg_call_268", %TName_List_Message** %"$one_msg_0"
  %"$$one_msg_0_269" = load %TName_List_Message*, %TName_List_Message** %"$one_msg_0"
  store %TName_List_Message* %"$$one_msg_0_269", %TName_List_Message** %msgs1
  %msgs2 = alloca %TName_List_Message*
  %"$msg2_270" = load i8*, i8** %msg2
  %"$msgs1_271" = load %TName_List_Message*, %TName_List_Message** %msgs1
  %"$adtval_272_load" = load i8*, i8** @_execptr
  %"$adtval_272_salloc" = call i8* @_salloc(i8* %"$adtval_272_load", i64 17)
  %"$adtval_272" = bitcast i8* %"$adtval_272_salloc" to %CName_Cons_Message*
  %"$adtgep_273" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_272", i32 0, i32 0
  store i8 0, i8* %"$adtgep_273"
  %"$adtgep_274" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_272", i32 0, i32 1
  store i8* %"$msg2_270", i8** %"$adtgep_274"
  %"$adtgep_275" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_272", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_271", %TName_List_Message** %"$adtgep_275"
  %"$adtptr_276" = bitcast %CName_Cons_Message* %"$adtval_272" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_276", %TName_List_Message** %msgs2
  %"$execptr_load_277" = load i8*, i8** @_execptr
  %"$msgs2_278" = load %TName_List_Message*, %TName_List_Message** %msgs2
  call void @_send(i8* %"$execptr_load_277", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %TName_List_Message* %"$msgs2_278")
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @multipleMsgs(i8* %0) {
entry:
  %"$_amount_280" = getelementptr i8, i8* %0, i32 0
  %"$_amount_281" = bitcast i8* %"$_amount_280" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_281"
  %"$_sender_282" = getelementptr i8, i8* %0, i32 16
  %"$_sender_283" = bitcast i8* %"$_sender_282" to [20 x i8]*
  call void @"$multipleMsgs_214"(%Uint128 %_amount, [20 x i8]* %"$_sender_283")
  ret void
}

define internal void @"$contrAddr_284"(%Uint128 %_amount, [20 x i8]* %"$_sender_285") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_285"
  %msg1 = alloca i8*
  %"$msgobj_286_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_286_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_286_salloc_load", i64 85)
  %"$msgobj_286_salloc" = bitcast i8* %"$msgobj_286_salloc_salloc" to [85 x i8]*
  %"$msgobj_286" = bitcast [85 x i8]* %"$msgobj_286_salloc" to i8*
  store i8 2, i8* %"$msgobj_286"
  %"$msgobj_fname_288" = getelementptr i8, i8* %"$msgobj_286", i32 1
  %"$msgobj_fname_289" = bitcast i8* %"$msgobj_fname_288" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_287", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_289"
  %"$msgobj_td_290" = getelementptr i8, i8* %"$msgobj_286", i32 17
  %"$msgobj_td_291" = bitcast i8* %"$msgobj_td_290" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_291"
  %"$msgobj_v_293" = getelementptr i8, i8* %"$msgobj_286", i32 25
  %"$msgobj_v_294" = bitcast i8* %"$msgobj_v_293" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_292", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_294"
  %"$msgobj_fname_296" = getelementptr i8, i8* %"$msgobj_286", i32 41
  %"$msgobj_fname_297" = bitcast i8* %"$msgobj_fname_296" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_295", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_297"
  %"$msgobj_td_298" = getelementptr i8, i8* %"$msgobj_286", i32 57
  %"$msgobj_td_299" = bitcast i8* %"$msgobj_td_298" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_299"
  %"$_this_address_300" = load [20 x i8], [20 x i8]* @_this_address
  %"$msgobj_v_301" = getelementptr i8, i8* %"$msgobj_286", i32 65
  %"$msgobj_v_302" = bitcast i8* %"$msgobj_v_301" to [20 x i8]*
  store [20 x i8] %"$_this_address_300", [20 x i8]* %"$msgobj_v_302"
  store i8* %"$msgobj_286", i8** %msg1
  %"$execptr_load_304" = load i8*, i8** @_execptr
  %"$msg1_305" = load i8*, i8** %msg1
  call void @_event(i8* %"$execptr_load_304", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$msg1_305")
  ret void
}

define void @contrAddr(i8* %0) {
entry:
  %"$_amount_307" = getelementptr i8, i8* %0, i32 0
  %"$_amount_308" = bitcast i8* %"$_amount_307" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_308"
  %"$_sender_309" = getelementptr i8, i8* %0, i32 16
  %"$_sender_310" = bitcast i8* %"$_sender_309" to [20 x i8]*
  call void @"$contrAddr_284"(%Uint128 %_amount, [20 x i8]* %"$_sender_310")
  ret void
}

define internal void @"$printContrParams_311"(%Uint128 %_amount, [20 x i8]* %"$_sender_312") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_312"
  %e = alloca i8*
  %"$msgobj_313_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_313_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_313_salloc_load", i64 313)
  %"$msgobj_313_salloc" = bitcast i8* %"$msgobj_313_salloc_salloc" to [313 x i8]*
  %"$msgobj_313" = bitcast [313 x i8]* %"$msgobj_313_salloc" to i8*
  store i8 8, i8* %"$msgobj_313"
  %"$msgobj_fname_315" = getelementptr i8, i8* %"$msgobj_313", i32 1
  %"$msgobj_fname_316" = bitcast i8* %"$msgobj_fname_315" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_314", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_316"
  %"$msgobj_td_317" = getelementptr i8, i8* %"$msgobj_313", i32 17
  %"$msgobj_td_318" = bitcast i8* %"$msgobj_td_317" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_318"
  %"$msgobj_v_320" = getelementptr i8, i8* %"$msgobj_313", i32 25
  %"$msgobj_v_321" = bitcast i8* %"$msgobj_v_320" to %String*
  store %String { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$stringlit_319", i32 0, i32 0), i32 14 }, %String* %"$msgobj_v_321"
  %"$msgobj_fname_323" = getelementptr i8, i8* %"$msgobj_313", i32 41
  %"$msgobj_fname_324" = bitcast i8* %"$msgobj_fname_323" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_322", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_324"
  %"$msgobj_td_325" = getelementptr i8, i8* %"$msgobj_313", i32 57
  %"$msgobj_td_326" = bitcast i8* %"$msgobj_td_325" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_326"
  %"$owner_327" = load [20 x i8], [20 x i8]* @owner
  %"$msgobj_v_328" = getelementptr i8, i8* %"$msgobj_313", i32 65
  %"$msgobj_v_329" = bitcast i8* %"$msgobj_v_328" to [20 x i8]*
  store [20 x i8] %"$owner_327", [20 x i8]* %"$msgobj_v_329"
  %"$msgobj_fname_331" = getelementptr i8, i8* %"$msgobj_313", i32 85
  %"$msgobj_fname_332" = bitcast i8* %"$msgobj_fname_331" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_330", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_332"
  %"$msgobj_td_333" = getelementptr i8, i8* %"$msgobj_313", i32 101
  %"$msgobj_td_334" = bitcast i8* %"$msgobj_td_333" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_334"
  %"$name_335" = load %String, %String* @name
  %"$msgobj_v_336" = getelementptr i8, i8* %"$msgobj_313", i32 109
  %"$msgobj_v_337" = bitcast i8* %"$msgobj_v_336" to %String*
  store %String %"$name_335", %String* %"$msgobj_v_337"
  %"$msgobj_fname_339" = getelementptr i8, i8* %"$msgobj_313", i32 125
  %"$msgobj_fname_340" = bitcast i8* %"$msgobj_fname_339" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_338", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_340"
  %"$msgobj_td_341" = getelementptr i8, i8* %"$msgobj_313", i32 141
  %"$msgobj_td_342" = bitcast i8* %"$msgobj_td_341" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ** %"$msgobj_td_342"
  %"$uint256_343" = load %Uint256, %Uint256* @uint256
  %"$msgobj_v_344" = getelementptr i8, i8* %"$msgobj_313", i32 149
  %"$msgobj_v_345" = bitcast i8* %"$msgobj_v_344" to %Uint256*
  store %Uint256 %"$uint256_343", %Uint256* %"$msgobj_v_345"
  %"$msgobj_fname_347" = getelementptr i8, i8* %"$msgobj_313", i32 181
  %"$msgobj_fname_348" = bitcast i8* %"$msgobj_fname_347" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_346", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_348"
  %"$msgobj_td_349" = getelementptr i8, i8* %"$msgobj_313", i32 197
  %"$msgobj_td_350" = bitcast i8* %"$msgobj_td_349" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_350"
  %"$int32_351" = load %Int32, %Int32* @int32
  %"$msgobj_v_352" = getelementptr i8, i8* %"$msgobj_313", i32 205
  %"$msgobj_v_353" = bitcast i8* %"$msgobj_v_352" to %Int32*
  store %Int32 %"$int32_351", %Int32* %"$msgobj_v_353"
  %"$msgobj_fname_355" = getelementptr i8, i8* %"$msgobj_313", i32 209
  %"$msgobj_fname_356" = bitcast i8* %"$msgobj_fname_355" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_354", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_356"
  %"$msgobj_td_357" = getelementptr i8, i8* %"$msgobj_313", i32 225
  %"$msgobj_td_358" = bitcast i8* %"$msgobj_td_357" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ** %"$msgobj_td_358"
  %"$bstr_359" = load %Bystr, %Bystr* @bstr
  %"$msgobj_v_360" = getelementptr i8, i8* %"$msgobj_313", i32 233
  %"$msgobj_v_361" = bitcast i8* %"$msgobj_v_360" to %Bystr*
  store %Bystr %"$bstr_359", %Bystr* %"$msgobj_v_361"
  %"$msgobj_fname_363" = getelementptr i8, i8* %"$msgobj_313", i32 249
  %"$msgobj_fname_364" = bitcast i8* %"$msgobj_fname_363" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_362", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_364"
  %"$msgobj_td_365" = getelementptr i8, i8* %"$msgobj_313", i32 265
  %"$msgobj_td_366" = bitcast i8* %"$msgobj_td_365" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ** %"$msgobj_td_366"
  %"$all_names_367" = load %TName_List_String*, %TName_List_String** @all_names
  %"$msgobj_v_368" = getelementptr i8, i8* %"$msgobj_313", i32 273
  %"$msgobj_v_369" = bitcast i8* %"$msgobj_v_368" to %TName_List_String**
  store %TName_List_String* %"$all_names_367", %TName_List_String** %"$msgobj_v_369"
  %"$msgobj_fname_371" = getelementptr i8, i8* %"$msgobj_313", i32 281
  %"$msgobj_fname_372" = bitcast i8* %"$msgobj_fname_371" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_370", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_372"
  %"$msgobj_td_373" = getelementptr i8, i8* %"$msgobj_313", i32 297
  %"$msgobj_td_374" = bitcast i8* %"$msgobj_td_373" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ** %"$msgobj_td_374"
  %"$pear_375" = load %TName_Pair_Int128_String*, %TName_Pair_Int128_String** @pear
  %"$msgobj_v_376" = getelementptr i8, i8* %"$msgobj_313", i32 305
  %"$msgobj_v_377" = bitcast i8* %"$msgobj_v_376" to %TName_Pair_Int128_String**
  store %TName_Pair_Int128_String* %"$pear_375", %TName_Pair_Int128_String** %"$msgobj_v_377"
  store i8* %"$msgobj_313", i8** %e
  %"$execptr_load_379" = load i8*, i8** @_execptr
  %"$e_380" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_379", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_380")
  ret void
}

define void @printContrParams(i8* %0) {
entry:
  %"$_amount_382" = getelementptr i8, i8* %0, i32 0
  %"$_amount_383" = bitcast i8* %"$_amount_382" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_383"
  %"$_sender_384" = getelementptr i8, i8* %0, i32 16
  %"$_sender_385" = bitcast i8* %"$_sender_384" to [20 x i8]*
  call void @"$printContrParams_311"(%Uint128 %_amount, [20 x i8]* %"$_sender_385")
  ret void
}
