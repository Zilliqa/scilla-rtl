

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
@_gasrem = global i64 0
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
@"$stringlit_135" = unnamed_addr constant [8 x i8] c"get lost"
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@owner = global [20 x i8] zeroinitializer
@name = global %String zeroinitializer
@uint256 = global %Uint256 zeroinitializer
@int32 = global %Int32 zeroinitializer
@bstr = global %Bystr zeroinitializer
@all_names = global %TName_List_String* null
@pear = global %TName_Pair_Int128_String* null
@"$welcome_msg_143" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$sendoff_msg_154" = unnamed_addr constant [12 x i8] c"sendoff_msg\00"
@"$stringlit_195" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_200" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_203" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_233" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_247" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_252" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_255" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_284" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_309" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_314" = unnamed_addr constant [10 x i8] c"getHello()"
@"$stringlit_317" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_354" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_359" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_362" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_369" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_388" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_393" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_396" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_403" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_472" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_477" = unnamed_addr constant [15 x i8] c"ContractAddress"
@"$stringlit_480" = unnamed_addr constant [4 x i8] c"addr"
@"$stringlit_517" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_522" = unnamed_addr constant [14 x i8] c"AllContrparams"
@"$stringlit_525" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_533" = unnamed_addr constant [4 x i8] c"name"
@"$stringlit_541" = unnamed_addr constant [7 x i8] c"uint256"
@"$stringlit_549" = unnamed_addr constant [5 x i8] c"int32"
@"$stringlit_557" = unnamed_addr constant [4 x i8] c"bstr"
@"$stringlit_565" = unnamed_addr constant [9 x i8] c"all_names"
@"$stringlit_573" = unnamed_addr constant [4 x i8] c"pear"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 19

define internal %TName_List_Message* @"$fundef_1"(%"$$fundef_1_env_86"* %0, i8* %1) {
entry:
  %"$retval_2" = alloca %TName_List_Message*
  %"$gasrem_87" = load i64, i64* @_gasrem
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %entry
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem
  %nil_msg = alloca %TName_List_Message*
  %"$gasrem_92" = load i64, i64* @_gasrem
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem
  %"$adtval_97_load" = load i8*, i8** @_execptr
  %"$adtval_97_salloc" = call i8* @_salloc(i8* %"$adtval_97_load", i64 1)
  %"$adtval_97" = bitcast i8* %"$adtval_97_salloc" to %CName_Nil_Message*
  %"$adtgep_98" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_97", i32 0, i32 0
  store i8 1, i8* %"$adtgep_98"
  %"$adtptr_99" = bitcast %CName_Nil_Message* %"$adtval_97" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_99", %TName_List_Message** %nil_msg
  %"$gasrem_100" = load i64, i64* @_gasrem
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_95"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem
  %"$nil_msg_105" = load %TName_List_Message*, %TName_List_Message** %nil_msg
  %"$adtval_106_load" = load i8*, i8** @_execptr
  %"$adtval_106_salloc" = call i8* @_salloc(i8* %"$adtval_106_load", i64 17)
  %"$adtval_106" = bitcast i8* %"$adtval_106_salloc" to %CName_Cons_Message*
  %"$adtgep_107" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_106", i32 0, i32 0
  store i8 0, i8* %"$adtgep_107"
  %"$adtgep_108" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_106", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_108"
  %"$adtgep_109" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_106", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_105", %TName_List_Message** %"$adtgep_109"
  %"$adtptr_110" = bitcast %CName_Cons_Message* %"$adtval_106" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_110", %TName_List_Message** %"$retval_2"
  %"$$retval_2_111" = load %TName_List_Message*, %TName_List_Message** %"$retval_2"
  ret %TName_List_Message* %"$$retval_2_111"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_112" = load i64, i64* @_gasrem
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_1_env_86"*, i8*)* @"$fundef_1" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @one_msg
  %"$gasrem_120" = load i64, i64* @_gasrem
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_115"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem
  store %Int32 { i32 1 }, %Int32* @not_owner_code
  %"$gasrem_125" = load i64, i64* @_gasrem
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem
  store %Int32 { i32 2 }, %Int32* @set_hello_code
  %"$gasrem_130" = load i64, i64* @_gasrem
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_135", i32 0, i32 0), i32 8 }, %String* @smsg
  ret void
}

define void @_init_state() {
entry:
  %"$welcome_msg_3" = alloca %String
  %"$gasrem_136" = load i64, i64* @_gasrem
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %entry
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem
  %"$name_141" = load %String, %String* @name
  store %String %"$name_141", %String* %"$welcome_msg_3"
  %"$execptr_load_142" = load i8*, i8** @_execptr
  %"$$welcome_msg_3_144" = load %String, %String* %"$welcome_msg_3"
  %"$update_value_145" = alloca %String
  store %String %"$$welcome_msg_3_144", %String* %"$update_value_145"
  %"$update_value_146" = bitcast %String* %"$update_value_145" to i8*
  call void @_update_field(i8* %"$execptr_load_142", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_143", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_146")
  %"$sendoff_msg_4" = alloca %String
  %"$gasrem_147" = load i64, i64* @_gasrem
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_139"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem
  %"$smsg_152" = load %String, %String* @smsg
  store %String %"$smsg_152", %String* %"$sendoff_msg_4"
  %"$execptr_load_153" = load i8*, i8** @_execptr
  %"$$sendoff_msg_4_155" = load %String, %String* %"$sendoff_msg_4"
  %"$update_value_156" = alloca %String
  store %String %"$$sendoff_msg_4_155", %String* %"$update_value_156"
  %"$update_value_157" = bitcast %String* %"$update_value_156" to i8*
  call void @_update_field(i8* %"$execptr_load_153", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$sendoff_msg_154", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_157")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setHello_158"(%Uint128 %_amount, [20 x i8]* %"$_sender_159", %String %msg) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_159"
  %"$gasrem_160" = load i64, i64* @_gasrem
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %entry
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem
  %is_owner = alloca %TName_Bool*
  %"$execptr_load_165" = load i8*, i8** @_execptr
  %"$eq_owner_166" = alloca [20 x i8]
  %"$owner_167" = load [20 x i8], [20 x i8]* @owner
  store [20 x i8] %"$owner_167", [20 x i8]* %"$eq_owner_166"
  %"$$eq_owner_166_168" = bitcast [20 x i8]* %"$eq_owner_166" to i8*
  %"$eq__sender_169" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_169"
  %"$$eq__sender_169_170" = bitcast [20 x i8]* %"$eq__sender_169" to i8*
  %"$eq_call_171" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_165", i32 20, i8* %"$$eq_owner_166_168", i8* %"$$eq__sender_169_170")
  store %TName_Bool* %"$eq_call_171", %TName_Bool** %is_owner
  %"$gasrem_172" = load i64, i64* @_gasrem
  %"$gascmp_173" = icmp ugt i64 2, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_163"
  %"$consume_176" = sub i64 %"$gasrem_172", 2
  store i64 %"$consume_176", i64* @_gasrem
  %"$is_owner_178" = load %TName_Bool*, %TName_Bool** %is_owner
  %"$is_owner_tag_179" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_owner_178", i32 0, i32 0
  %"$is_owner_tag_180" = load i8, i8* %"$is_owner_tag_179"
  switch i8 %"$is_owner_tag_180", label %"$empty_default_181" [
    i8 1, label %"$False_182"
    i8 0, label %"$True_222"
  ]

"$False_182":                                     ; preds = %"$have_gas_175"
  %"$is_owner_183" = bitcast %TName_Bool* %"$is_owner_178" to %CName_False*
  %"$gasrem_184" = load i64, i64* @_gasrem
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$False_182"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$False_182"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_189" = load i64, i64* @_gasrem
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem
  %"$msgobj_194_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_194_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_194_salloc_load", i64 69)
  %"$msgobj_194_salloc" = bitcast i8* %"$msgobj_194_salloc_salloc" to [69 x i8]*
  %"$msgobj_194" = bitcast [69 x i8]* %"$msgobj_194_salloc" to i8*
  store i8 2, i8* %"$msgobj_194"
  %"$msgobj_fname_196" = getelementptr i8, i8* %"$msgobj_194", i32 1
  %"$msgobj_fname_197" = bitcast i8* %"$msgobj_fname_196" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_195", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_197"
  %"$msgobj_td_198" = getelementptr i8, i8* %"$msgobj_194", i32 17
  %"$msgobj_td_199" = bitcast i8* %"$msgobj_td_198" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_199"
  %"$msgobj_v_201" = getelementptr i8, i8* %"$msgobj_194", i32 25
  %"$msgobj_v_202" = bitcast i8* %"$msgobj_v_201" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_200", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_202"
  %"$msgobj_fname_204" = getelementptr i8, i8* %"$msgobj_194", i32 41
  %"$msgobj_fname_205" = bitcast i8* %"$msgobj_fname_204" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_203", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_205"
  %"$msgobj_td_206" = getelementptr i8, i8* %"$msgobj_194", i32 57
  %"$msgobj_td_207" = bitcast i8* %"$msgobj_td_206" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_207"
  %"$not_owner_code_208" = load %Int32, %Int32* @not_owner_code
  %"$msgobj_v_209" = getelementptr i8, i8* %"$msgobj_194", i32 65
  %"$msgobj_v_210" = bitcast i8* %"$msgobj_v_209" to %Int32*
  store %Int32 %"$not_owner_code_208", %Int32* %"$msgobj_v_210"
  store i8* %"$msgobj_194", i8** %e
  %"$e_212" = load i8*, i8** %e
  %"$_literal_cost_call_214" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_212")
  %"$gasrem_215" = load i64, i64* @_gasrem
  %"$gascmp_216" = icmp ugt i64 %"$_literal_cost_call_214", %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_192"
  %"$consume_219" = sub i64 %"$gasrem_215", %"$_literal_cost_call_214"
  store i64 %"$consume_219", i64* @_gasrem
  %"$execptr_load_220" = load i8*, i8** @_execptr
  %"$e_221" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_220", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_221")
  br label %"$matchsucc_177"

"$True_222":                                      ; preds = %"$have_gas_175"
  %"$is_owner_223" = bitcast %TName_Bool* %"$is_owner_178" to %CName_True*
  %"$_literal_cost_msg_224" = alloca %String
  store %String %msg, %String* %"$_literal_cost_msg_224"
  %"$$_literal_cost_msg_224_225" = bitcast %String* %"$_literal_cost_msg_224" to i8*
  %"$_literal_cost_call_226" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_23", i8* %"$$_literal_cost_msg_224_225")
  %"$gasrem_227" = load i64, i64* @_gasrem
  %"$gascmp_228" = icmp ugt i64 %"$_literal_cost_call_226", %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$True_222"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$True_222"
  %"$consume_231" = sub i64 %"$gasrem_227", %"$_literal_cost_call_226"
  store i64 %"$consume_231", i64* @_gasrem
  %"$execptr_load_232" = load i8*, i8** @_execptr
  %"$update_value_234" = alloca %String
  store %String %msg, %String* %"$update_value_234"
  %"$update_value_235" = bitcast %String* %"$update_value_234" to i8*
  call void @_update_field(i8* %"$execptr_load_232", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_233", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_235")
  %"$gasrem_236" = load i64, i64* @_gasrem
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_230"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem
  %e1 = alloca i8*
  %"$gasrem_241" = load i64, i64* @_gasrem
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_239"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem
  %"$msgobj_246_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_246_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_246_salloc_load", i64 69)
  %"$msgobj_246_salloc" = bitcast i8* %"$msgobj_246_salloc_salloc" to [69 x i8]*
  %"$msgobj_246" = bitcast [69 x i8]* %"$msgobj_246_salloc" to i8*
  store i8 2, i8* %"$msgobj_246"
  %"$msgobj_fname_248" = getelementptr i8, i8* %"$msgobj_246", i32 1
  %"$msgobj_fname_249" = bitcast i8* %"$msgobj_fname_248" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_247", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_249"
  %"$msgobj_td_250" = getelementptr i8, i8* %"$msgobj_246", i32 17
  %"$msgobj_td_251" = bitcast i8* %"$msgobj_td_250" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_251"
  %"$msgobj_v_253" = getelementptr i8, i8* %"$msgobj_246", i32 25
  %"$msgobj_v_254" = bitcast i8* %"$msgobj_v_253" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_252", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_254"
  %"$msgobj_fname_256" = getelementptr i8, i8* %"$msgobj_246", i32 41
  %"$msgobj_fname_257" = bitcast i8* %"$msgobj_fname_256" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_255", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_257"
  %"$msgobj_td_258" = getelementptr i8, i8* %"$msgobj_246", i32 57
  %"$msgobj_td_259" = bitcast i8* %"$msgobj_td_258" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_259"
  %"$set_hello_code_260" = load %Int32, %Int32* @set_hello_code
  %"$msgobj_v_261" = getelementptr i8, i8* %"$msgobj_246", i32 65
  %"$msgobj_v_262" = bitcast i8* %"$msgobj_v_261" to %Int32*
  store %Int32 %"$set_hello_code_260", %Int32* %"$msgobj_v_262"
  store i8* %"$msgobj_246", i8** %e1
  %"$e_264" = load i8*, i8** %e1
  %"$_literal_cost_call_266" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_264")
  %"$gasrem_267" = load i64, i64* @_gasrem
  %"$gascmp_268" = icmp ugt i64 %"$_literal_cost_call_266", %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_244"
  %"$consume_271" = sub i64 %"$gasrem_267", %"$_literal_cost_call_266"
  store i64 %"$consume_271", i64* @_gasrem
  %"$execptr_load_272" = load i8*, i8** @_execptr
  %"$e_273" = load i8*, i8** %e1
  call void @_event(i8* %"$execptr_load_272", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_273")
  br label %"$matchsucc_177"

"$empty_default_181":                             ; preds = %"$have_gas_175"
  br label %"$matchsucc_177"

"$matchsucc_177":                                 ; preds = %"$have_gas_270", %"$have_gas_218", %"$empty_default_181"
  ret void
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setHello(i8* %0) {
entry:
  %"$_amount_275" = getelementptr i8, i8* %0, i32 0
  %"$_amount_276" = bitcast i8* %"$_amount_275" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_276"
  %"$_sender_277" = getelementptr i8, i8* %0, i32 16
  %"$_sender_278" = bitcast i8* %"$_sender_277" to [20 x i8]*
  %"$msg_279" = getelementptr i8, i8* %0, i32 36
  %"$msg_280" = bitcast i8* %"$msg_279" to %String*
  %msg = load %String, %String* %"$msg_280"
  call void @"$setHello_158"(%Uint128 %_amount, [20 x i8]* %"$_sender_278", %String %msg)
  ret void
}

define internal void @"$getHello_281"(%Uint128 %_amount, [20 x i8]* %"$_sender_282") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_282"
  %r = alloca %String
  %"$execptr_load_283" = load i8*, i8** @_execptr
  %"$r_285" = call i8* @_fetch_field(i8* %"$execptr_load_283", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_284", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i32 1)
  %"$r_286" = bitcast i8* %"$r_285" to %String*
  %"$r_287" = load %String, %String* %"$r_286"
  store %String %"$r_287", %String* %r
  %"$_literal_cost_r_288" = alloca %String
  %"$r_289" = load %String, %String* %r
  store %String %"$r_289", %String* %"$_literal_cost_r_288"
  %"$$_literal_cost_r_288_290" = bitcast %String* %"$_literal_cost_r_288" to i8*
  %"$_literal_cost_call_291" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_23", i8* %"$$_literal_cost_r_288_290")
  %"$gasadd_292" = add i64 %"$_literal_cost_call_291", 0
  %"$gasrem_293" = load i64, i64* @_gasrem
  %"$gascmp_294" = icmp ugt i64 %"$gasadd_292", %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %entry
  %"$consume_297" = sub i64 %"$gasrem_293", %"$gasadd_292"
  store i64 %"$consume_297", i64* @_gasrem
  %"$gasrem_298" = load i64, i64* @_gasrem
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_296"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_303" = load i64, i64* @_gasrem
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_301"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem
  %"$msgobj_308_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_308_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_308_salloc_load", i64 81)
  %"$msgobj_308_salloc" = bitcast i8* %"$msgobj_308_salloc_salloc" to [81 x i8]*
  %"$msgobj_308" = bitcast [81 x i8]* %"$msgobj_308_salloc" to i8*
  store i8 2, i8* %"$msgobj_308"
  %"$msgobj_fname_310" = getelementptr i8, i8* %"$msgobj_308", i32 1
  %"$msgobj_fname_311" = bitcast i8* %"$msgobj_fname_310" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_309", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_311"
  %"$msgobj_td_312" = getelementptr i8, i8* %"$msgobj_308", i32 17
  %"$msgobj_td_313" = bitcast i8* %"$msgobj_td_312" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_313"
  %"$msgobj_v_315" = getelementptr i8, i8* %"$msgobj_308", i32 25
  %"$msgobj_v_316" = bitcast i8* %"$msgobj_v_315" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_314", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_316"
  %"$msgobj_fname_318" = getelementptr i8, i8* %"$msgobj_308", i32 41
  %"$msgobj_fname_319" = bitcast i8* %"$msgobj_fname_318" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_317", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_319"
  %"$msgobj_td_320" = getelementptr i8, i8* %"$msgobj_308", i32 57
  %"$msgobj_td_321" = bitcast i8* %"$msgobj_td_320" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_321"
  %"$r_322" = load %String, %String* %r
  %"$msgobj_v_323" = getelementptr i8, i8* %"$msgobj_308", i32 65
  %"$msgobj_v_324" = bitcast i8* %"$msgobj_v_323" to %String*
  store %String %"$r_322", %String* %"$msgobj_v_324"
  store i8* %"$msgobj_308", i8** %e
  %"$e_326" = load i8*, i8** %e
  %"$_literal_cost_call_328" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_326")
  %"$gasrem_329" = load i64, i64* @_gasrem
  %"$gascmp_330" = icmp ugt i64 %"$_literal_cost_call_328", %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_306"
  %"$consume_333" = sub i64 %"$gasrem_329", %"$_literal_cost_call_328"
  store i64 %"$consume_333", i64* @_gasrem
  %"$execptr_load_334" = load i8*, i8** @_execptr
  %"$e_335" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_334", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_335")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @getHello(i8* %0) {
entry:
  %"$_amount_337" = getelementptr i8, i8* %0, i32 0
  %"$_amount_338" = bitcast i8* %"$_amount_337" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_338"
  %"$_sender_339" = getelementptr i8, i8* %0, i32 16
  %"$_sender_340" = bitcast i8* %"$_sender_339" to [20 x i8]*
  call void @"$getHello_281"(%Uint128 %_amount, [20 x i8]* %"$_sender_340")
  ret void
}

define internal void @"$multipleMsgs_341"(%Uint128 %_amount, [20 x i8]* %"$_sender_342") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_342"
  %"$gasrem_343" = load i64, i64* @_gasrem
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %entry
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem
  %msg1 = alloca i8*
  %"$gasrem_348" = load i64, i64* @_gasrem
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_346"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem
  %"$msgobj_353_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_353_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_353_salloc_load", i64 125)
  %"$msgobj_353_salloc" = bitcast i8* %"$msgobj_353_salloc_salloc" to [125 x i8]*
  %"$msgobj_353" = bitcast [125 x i8]* %"$msgobj_353_salloc" to i8*
  store i8 3, i8* %"$msgobj_353"
  %"$msgobj_fname_355" = getelementptr i8, i8* %"$msgobj_353", i32 1
  %"$msgobj_fname_356" = bitcast i8* %"$msgobj_fname_355" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_354", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_356"
  %"$msgobj_td_357" = getelementptr i8, i8* %"$msgobj_353", i32 17
  %"$msgobj_td_358" = bitcast i8* %"$msgobj_td_357" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_358"
  %"$msgobj_v_360" = getelementptr i8, i8* %"$msgobj_353", i32 25
  %"$msgobj_v_361" = bitcast i8* %"$msgobj_v_360" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_359", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_361"
  %"$msgobj_fname_363" = getelementptr i8, i8* %"$msgobj_353", i32 41
  %"$msgobj_fname_364" = bitcast i8* %"$msgobj_fname_363" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_362", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_364"
  %"$msgobj_td_365" = getelementptr i8, i8* %"$msgobj_353", i32 57
  %"$msgobj_td_366" = bitcast i8* %"$msgobj_td_365" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_366"
  %"$msgobj_v_367" = getelementptr i8, i8* %"$msgobj_353", i32 65
  %"$msgobj_v_368" = bitcast i8* %"$msgobj_v_367" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_368"
  %"$msgobj_fname_370" = getelementptr i8, i8* %"$msgobj_353", i32 85
  %"$msgobj_fname_371" = bitcast i8* %"$msgobj_fname_370" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_369", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_371"
  %"$msgobj_td_372" = getelementptr i8, i8* %"$msgobj_353", i32 101
  %"$msgobj_td_373" = bitcast i8* %"$msgobj_td_372" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_373"
  %"$msgobj_v_374" = getelementptr i8, i8* %"$msgobj_353", i32 109
  %"$msgobj_v_375" = bitcast i8* %"$msgobj_v_374" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_375"
  store i8* %"$msgobj_353", i8** %msg1
  %"$gasrem_377" = load i64, i64* @_gasrem
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_351"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem
  %msg2 = alloca i8*
  %"$gasrem_382" = load i64, i64* @_gasrem
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_380"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem
  %"$msgobj_387_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_387_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_387_salloc_load", i64 125)
  %"$msgobj_387_salloc" = bitcast i8* %"$msgobj_387_salloc_salloc" to [125 x i8]*
  %"$msgobj_387" = bitcast [125 x i8]* %"$msgobj_387_salloc" to i8*
  store i8 3, i8* %"$msgobj_387"
  %"$msgobj_fname_389" = getelementptr i8, i8* %"$msgobj_387", i32 1
  %"$msgobj_fname_390" = bitcast i8* %"$msgobj_fname_389" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_388", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_390"
  %"$msgobj_td_391" = getelementptr i8, i8* %"$msgobj_387", i32 17
  %"$msgobj_td_392" = bitcast i8* %"$msgobj_td_391" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_392"
  %"$msgobj_v_394" = getelementptr i8, i8* %"$msgobj_387", i32 25
  %"$msgobj_v_395" = bitcast i8* %"$msgobj_v_394" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_393", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_395"
  %"$msgobj_fname_397" = getelementptr i8, i8* %"$msgobj_387", i32 41
  %"$msgobj_fname_398" = bitcast i8* %"$msgobj_fname_397" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_396", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_398"
  %"$msgobj_td_399" = getelementptr i8, i8* %"$msgobj_387", i32 57
  %"$msgobj_td_400" = bitcast i8* %"$msgobj_td_399" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_400"
  %"$msgobj_v_401" = getelementptr i8, i8* %"$msgobj_387", i32 65
  %"$msgobj_v_402" = bitcast i8* %"$msgobj_v_401" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_402"
  %"$msgobj_fname_404" = getelementptr i8, i8* %"$msgobj_387", i32 85
  %"$msgobj_fname_405" = bitcast i8* %"$msgobj_fname_404" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_403", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_405"
  %"$msgobj_td_406" = getelementptr i8, i8* %"$msgobj_387", i32 101
  %"$msgobj_td_407" = bitcast i8* %"$msgobj_td_406" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_407"
  %"$msgobj_v_408" = getelementptr i8, i8* %"$msgobj_387", i32 109
  %"$msgobj_v_409" = bitcast i8* %"$msgobj_v_408" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_409"
  store i8* %"$msgobj_387", i8** %msg2
  %"$gasrem_411" = load i64, i64* @_gasrem
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_385"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem
  %msgs1 = alloca %TName_List_Message*
  %"$gasrem_416" = load i64, i64* @_gasrem
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_414"
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem
  %"$one_msg_0" = alloca %TName_List_Message*
  %"$one_msg_421" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @one_msg
  %"$one_msg_fptr_422" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_421", 0
  %"$one_msg_envptr_423" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_421", 1
  %"$msg1_424" = load i8*, i8** %msg1
  %"$one_msg_call_425" = call %TName_List_Message* %"$one_msg_fptr_422"(i8* %"$one_msg_envptr_423", i8* %"$msg1_424")
  store %TName_List_Message* %"$one_msg_call_425", %TName_List_Message** %"$one_msg_0"
  %"$$one_msg_0_426" = load %TName_List_Message*, %TName_List_Message** %"$one_msg_0"
  store %TName_List_Message* %"$$one_msg_0_426", %TName_List_Message** %msgs1
  %"$gasrem_427" = load i64, i64* @_gasrem
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_419"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem
  %msgs2 = alloca %TName_List_Message*
  %"$gasrem_432" = load i64, i64* @_gasrem
  %"$gascmp_433" = icmp ugt i64 1, %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %"$have_gas_430"
  %"$consume_436" = sub i64 %"$gasrem_432", 1
  store i64 %"$consume_436", i64* @_gasrem
  %"$msg2_437" = load i8*, i8** %msg2
  %"$msgs1_438" = load %TName_List_Message*, %TName_List_Message** %msgs1
  %"$adtval_439_load" = load i8*, i8** @_execptr
  %"$adtval_439_salloc" = call i8* @_salloc(i8* %"$adtval_439_load", i64 17)
  %"$adtval_439" = bitcast i8* %"$adtval_439_salloc" to %CName_Cons_Message*
  %"$adtgep_440" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_439", i32 0, i32 0
  store i8 0, i8* %"$adtgep_440"
  %"$adtgep_441" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_439", i32 0, i32 1
  store i8* %"$msg2_437", i8** %"$adtgep_441"
  %"$adtgep_442" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_439", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_438", %TName_List_Message** %"$adtgep_442"
  %"$adtptr_443" = bitcast %CName_Cons_Message* %"$adtval_439" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_443", %TName_List_Message** %msgs2
  %"$msgs2_444" = load %TName_List_Message*, %TName_List_Message** %msgs2
  %"$$msgs2_444_445" = bitcast %TName_List_Message* %"$msgs2_444" to i8*
  %"$_literal_cost_call_446" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", i8* %"$$msgs2_444_445")
  %"$gasrem_447" = load i64, i64* @_gasrem
  %"$gascmp_448" = icmp ugt i64 %"$_literal_cost_call_446", %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_435"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_435"
  %"$consume_451" = sub i64 %"$gasrem_447", %"$_literal_cost_call_446"
  store i64 %"$consume_451", i64* @_gasrem
  %"$execptr_load_452" = load i8*, i8** @_execptr
  %"$msgs2_453" = load %TName_List_Message*, %TName_List_Message** %msgs2
  call void @_send(i8* %"$execptr_load_452", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %TName_List_Message* %"$msgs2_453")
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @multipleMsgs(i8* %0) {
entry:
  %"$_amount_455" = getelementptr i8, i8* %0, i32 0
  %"$_amount_456" = bitcast i8* %"$_amount_455" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_456"
  %"$_sender_457" = getelementptr i8, i8* %0, i32 16
  %"$_sender_458" = bitcast i8* %"$_sender_457" to [20 x i8]*
  call void @"$multipleMsgs_341"(%Uint128 %_amount, [20 x i8]* %"$_sender_458")
  ret void
}

define internal void @"$contrAddr_459"(%Uint128 %_amount, [20 x i8]* %"$_sender_460") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_460"
  %"$gasrem_461" = load i64, i64* @_gasrem
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %entry
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem
  %msg1 = alloca i8*
  %"$gasrem_466" = load i64, i64* @_gasrem
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_464"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem
  %"$msgobj_471_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_471_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_471_salloc_load", i64 85)
  %"$msgobj_471_salloc" = bitcast i8* %"$msgobj_471_salloc_salloc" to [85 x i8]*
  %"$msgobj_471" = bitcast [85 x i8]* %"$msgobj_471_salloc" to i8*
  store i8 2, i8* %"$msgobj_471"
  %"$msgobj_fname_473" = getelementptr i8, i8* %"$msgobj_471", i32 1
  %"$msgobj_fname_474" = bitcast i8* %"$msgobj_fname_473" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_472", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_474"
  %"$msgobj_td_475" = getelementptr i8, i8* %"$msgobj_471", i32 17
  %"$msgobj_td_476" = bitcast i8* %"$msgobj_td_475" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_476"
  %"$msgobj_v_478" = getelementptr i8, i8* %"$msgobj_471", i32 25
  %"$msgobj_v_479" = bitcast i8* %"$msgobj_v_478" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_477", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_479"
  %"$msgobj_fname_481" = getelementptr i8, i8* %"$msgobj_471", i32 41
  %"$msgobj_fname_482" = bitcast i8* %"$msgobj_fname_481" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_480", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_482"
  %"$msgobj_td_483" = getelementptr i8, i8* %"$msgobj_471", i32 57
  %"$msgobj_td_484" = bitcast i8* %"$msgobj_td_483" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_484"
  %"$_this_address_485" = load [20 x i8], [20 x i8]* @_this_address
  %"$msgobj_v_486" = getelementptr i8, i8* %"$msgobj_471", i32 65
  %"$msgobj_v_487" = bitcast i8* %"$msgobj_v_486" to [20 x i8]*
  store [20 x i8] %"$_this_address_485", [20 x i8]* %"$msgobj_v_487"
  store i8* %"$msgobj_471", i8** %msg1
  %"$msg1_489" = load i8*, i8** %msg1
  %"$_literal_cost_call_491" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$msg1_489")
  %"$gasrem_492" = load i64, i64* @_gasrem
  %"$gascmp_493" = icmp ugt i64 %"$_literal_cost_call_491", %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$have_gas_469"
  %"$consume_496" = sub i64 %"$gasrem_492", %"$_literal_cost_call_491"
  store i64 %"$consume_496", i64* @_gasrem
  %"$execptr_load_497" = load i8*, i8** @_execptr
  %"$msg1_498" = load i8*, i8** %msg1
  call void @_event(i8* %"$execptr_load_497", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$msg1_498")
  ret void
}

define void @contrAddr(i8* %0) {
entry:
  %"$_amount_500" = getelementptr i8, i8* %0, i32 0
  %"$_amount_501" = bitcast i8* %"$_amount_500" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_501"
  %"$_sender_502" = getelementptr i8, i8* %0, i32 16
  %"$_sender_503" = bitcast i8* %"$_sender_502" to [20 x i8]*
  call void @"$contrAddr_459"(%Uint128 %_amount, [20 x i8]* %"$_sender_503")
  ret void
}

define internal void @"$printContrParams_504"(%Uint128 %_amount, [20 x i8]* %"$_sender_505") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_505"
  %"$gasrem_506" = load i64, i64* @_gasrem
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %entry
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem
  %e = alloca i8*
  %"$gasrem_511" = load i64, i64* @_gasrem
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem
  %"$msgobj_516_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_516_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_516_salloc_load", i64 313)
  %"$msgobj_516_salloc" = bitcast i8* %"$msgobj_516_salloc_salloc" to [313 x i8]*
  %"$msgobj_516" = bitcast [313 x i8]* %"$msgobj_516_salloc" to i8*
  store i8 8, i8* %"$msgobj_516"
  %"$msgobj_fname_518" = getelementptr i8, i8* %"$msgobj_516", i32 1
  %"$msgobj_fname_519" = bitcast i8* %"$msgobj_fname_518" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_517", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_519"
  %"$msgobj_td_520" = getelementptr i8, i8* %"$msgobj_516", i32 17
  %"$msgobj_td_521" = bitcast i8* %"$msgobj_td_520" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_521"
  %"$msgobj_v_523" = getelementptr i8, i8* %"$msgobj_516", i32 25
  %"$msgobj_v_524" = bitcast i8* %"$msgobj_v_523" to %String*
  store %String { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$stringlit_522", i32 0, i32 0), i32 14 }, %String* %"$msgobj_v_524"
  %"$msgobj_fname_526" = getelementptr i8, i8* %"$msgobj_516", i32 41
  %"$msgobj_fname_527" = bitcast i8* %"$msgobj_fname_526" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_525", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_527"
  %"$msgobj_td_528" = getelementptr i8, i8* %"$msgobj_516", i32 57
  %"$msgobj_td_529" = bitcast i8* %"$msgobj_td_528" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_529"
  %"$owner_530" = load [20 x i8], [20 x i8]* @owner
  %"$msgobj_v_531" = getelementptr i8, i8* %"$msgobj_516", i32 65
  %"$msgobj_v_532" = bitcast i8* %"$msgobj_v_531" to [20 x i8]*
  store [20 x i8] %"$owner_530", [20 x i8]* %"$msgobj_v_532"
  %"$msgobj_fname_534" = getelementptr i8, i8* %"$msgobj_516", i32 85
  %"$msgobj_fname_535" = bitcast i8* %"$msgobj_fname_534" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_533", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_535"
  %"$msgobj_td_536" = getelementptr i8, i8* %"$msgobj_516", i32 101
  %"$msgobj_td_537" = bitcast i8* %"$msgobj_td_536" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_537"
  %"$name_538" = load %String, %String* @name
  %"$msgobj_v_539" = getelementptr i8, i8* %"$msgobj_516", i32 109
  %"$msgobj_v_540" = bitcast i8* %"$msgobj_v_539" to %String*
  store %String %"$name_538", %String* %"$msgobj_v_540"
  %"$msgobj_fname_542" = getelementptr i8, i8* %"$msgobj_516", i32 125
  %"$msgobj_fname_543" = bitcast i8* %"$msgobj_fname_542" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_541", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_543"
  %"$msgobj_td_544" = getelementptr i8, i8* %"$msgobj_516", i32 141
  %"$msgobj_td_545" = bitcast i8* %"$msgobj_td_544" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ** %"$msgobj_td_545"
  %"$uint256_546" = load %Uint256, %Uint256* @uint256
  %"$msgobj_v_547" = getelementptr i8, i8* %"$msgobj_516", i32 149
  %"$msgobj_v_548" = bitcast i8* %"$msgobj_v_547" to %Uint256*
  store %Uint256 %"$uint256_546", %Uint256* %"$msgobj_v_548"
  %"$msgobj_fname_550" = getelementptr i8, i8* %"$msgobj_516", i32 181
  %"$msgobj_fname_551" = bitcast i8* %"$msgobj_fname_550" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_549", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_551"
  %"$msgobj_td_552" = getelementptr i8, i8* %"$msgobj_516", i32 197
  %"$msgobj_td_553" = bitcast i8* %"$msgobj_td_552" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_553"
  %"$int32_554" = load %Int32, %Int32* @int32
  %"$msgobj_v_555" = getelementptr i8, i8* %"$msgobj_516", i32 205
  %"$msgobj_v_556" = bitcast i8* %"$msgobj_v_555" to %Int32*
  store %Int32 %"$int32_554", %Int32* %"$msgobj_v_556"
  %"$msgobj_fname_558" = getelementptr i8, i8* %"$msgobj_516", i32 209
  %"$msgobj_fname_559" = bitcast i8* %"$msgobj_fname_558" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_557", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_559"
  %"$msgobj_td_560" = getelementptr i8, i8* %"$msgobj_516", i32 225
  %"$msgobj_td_561" = bitcast i8* %"$msgobj_td_560" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ** %"$msgobj_td_561"
  %"$bstr_562" = load %Bystr, %Bystr* @bstr
  %"$msgobj_v_563" = getelementptr i8, i8* %"$msgobj_516", i32 233
  %"$msgobj_v_564" = bitcast i8* %"$msgobj_v_563" to %Bystr*
  store %Bystr %"$bstr_562", %Bystr* %"$msgobj_v_564"
  %"$msgobj_fname_566" = getelementptr i8, i8* %"$msgobj_516", i32 249
  %"$msgobj_fname_567" = bitcast i8* %"$msgobj_fname_566" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_565", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_567"
  %"$msgobj_td_568" = getelementptr i8, i8* %"$msgobj_516", i32 265
  %"$msgobj_td_569" = bitcast i8* %"$msgobj_td_568" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ** %"$msgobj_td_569"
  %"$all_names_570" = load %TName_List_String*, %TName_List_String** @all_names
  %"$msgobj_v_571" = getelementptr i8, i8* %"$msgobj_516", i32 273
  %"$msgobj_v_572" = bitcast i8* %"$msgobj_v_571" to %TName_List_String**
  store %TName_List_String* %"$all_names_570", %TName_List_String** %"$msgobj_v_572"
  %"$msgobj_fname_574" = getelementptr i8, i8* %"$msgobj_516", i32 281
  %"$msgobj_fname_575" = bitcast i8* %"$msgobj_fname_574" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_573", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_575"
  %"$msgobj_td_576" = getelementptr i8, i8* %"$msgobj_516", i32 297
  %"$msgobj_td_577" = bitcast i8* %"$msgobj_td_576" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ** %"$msgobj_td_577"
  %"$pear_578" = load %TName_Pair_Int128_String*, %TName_Pair_Int128_String** @pear
  %"$msgobj_v_579" = getelementptr i8, i8* %"$msgobj_516", i32 305
  %"$msgobj_v_580" = bitcast i8* %"$msgobj_v_579" to %TName_Pair_Int128_String**
  store %TName_Pair_Int128_String* %"$pear_578", %TName_Pair_Int128_String** %"$msgobj_v_580"
  store i8* %"$msgobj_516", i8** %e
  %"$e_582" = load i8*, i8** %e
  %"$_literal_cost_call_584" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_582")
  %"$gasrem_585" = load i64, i64* @_gasrem
  %"$gascmp_586" = icmp ugt i64 %"$_literal_cost_call_584", %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_514"
  %"$consume_589" = sub i64 %"$gasrem_585", %"$_literal_cost_call_584"
  store i64 %"$consume_589", i64* @_gasrem
  %"$execptr_load_590" = load i8*, i8** @_execptr
  %"$e_591" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_590", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_591")
  ret void
}

define void @printContrParams(i8* %0) {
entry:
  %"$_amount_593" = getelementptr i8, i8* %0, i32 0
  %"$_amount_594" = bitcast i8* %"$_amount_593" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_594"
  %"$_sender_595" = getelementptr i8, i8* %0, i32 16
  %"$_sender_596" = bitcast i8* %"$_sender_595" to [20 x i8]*
  call void @"$printContrParams_504"(%Uint128 %_amount, [20 x i8]* %"$_sender_596")
  ret void
}
