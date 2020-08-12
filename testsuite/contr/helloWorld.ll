

; gas_remaining: 4001350
; ModuleID = 'HelloWorld'
source_filename = "HelloWorld"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_36" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_35"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_35" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_37"**, %"$TyDescrTy_ADTTyp_36"* }
%"$TyDescrTy_ADTTyp_Constr_37" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Int32 = type { i32 }
%Uint32 = type { i32 }
%String = type { i8*, i32 }
%Uint256 = type { i256 }
%Bystr = type { i8*, i32 }
%TName_List_String = type { i8, %CName_Cons_String*, %CName_Nil_String* }
%CName_Cons_String = type <{ i8, %String, %TName_List_String* }>
%CName_Nil_String = type <{ i8 }>
%TName_Pair_Int128_String = type { i8, %CName_Pair_Int128_String* }
%CName_Pair_Int128_String = type <{ i8, %Int128, %String }>
%Int128 = type { i128 }
%"$$fundef_1_env_85" = type {}
%Uint128 = type { i128 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_5" = global %"$TyDescrTy_PrimTyp_4" zeroinitializer
@"$TyDescr_Int32_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int32_Prim_5" to i8*) }
@"$TyDescr_Uint32_Prim_7" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 0 }
@"$TyDescr_Uint32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint32_Prim_7" to i8*) }
@"$TyDescr_Int64_Prim_9" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 1 }
@"$TyDescr_Int64_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int64_Prim_9" to i8*) }
@"$TyDescr_Uint64_Prim_11" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 1 }
@"$TyDescr_Uint64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint64_Prim_11" to i8*) }
@"$TyDescr_Int128_Prim_13" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 2 }
@"$TyDescr_Int128_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int128_Prim_13" to i8*) }
@"$TyDescr_Uint128_Prim_15" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 2 }
@"$TyDescr_Uint128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint128_Prim_15" to i8*) }
@"$TyDescr_Int256_Prim_17" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 3 }
@"$TyDescr_Int256_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int256_Prim_17" to i8*) }
@"$TyDescr_Uint256_Prim_19" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 3 }
@"$TyDescr_Uint256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint256_Prim_19" to i8*) }
@"$TyDescr_String_Prim_21" = global %"$TyDescrTy_PrimTyp_4" { i32 2, i32 0 }
@"$TyDescr_String_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_String_Prim_21" to i8*) }
@"$TyDescr_Bnum_Prim_23" = global %"$TyDescrTy_PrimTyp_4" { i32 3, i32 0 }
@"$TyDescr_Bnum_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bnum_Prim_23" to i8*) }
@"$TyDescr_Message_Prim_25" = global %"$TyDescrTy_PrimTyp_4" { i32 4, i32 0 }
@"$TyDescr_Message_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Message_Prim_25" to i8*) }
@"$TyDescr_Event_Prim_27" = global %"$TyDescrTy_PrimTyp_4" { i32 5, i32 0 }
@"$TyDescr_Event_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Event_Prim_27" to i8*) }
@"$TyDescr_Exception_Prim_29" = global %"$TyDescrTy_PrimTyp_4" { i32 6, i32 0 }
@"$TyDescr_Exception_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Exception_Prim_29" to i8*) }
@"$TyDescr_Bystr_Prim_31" = global %"$TyDescrTy_PrimTyp_4" { i32 7, i32 0 }
@"$TyDescr_Bystr_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr_Prim_31" to i8*) }
@"$TyDescr_Bystr20_Prim_33" = global %"$TyDescrTy_PrimTyp_4" { i32 8, i32 20 }
@"$TyDescr_Bystr20_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr20_Prim_33" to i8*) }
@"$TyDescr_ADT_Bool_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Bool_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_ADT_Pair_Int128_String_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_61" to i8*) }
@"$TyDescr_ADT_List_String_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_String_ADTTyp_Specl_73" to i8*) }
@"$TyDescr_ADT_List_Message_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Message_ADTTyp_Specl_82" to i8*) }
@"$TyDescr_Bool_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_54", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_Bool_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_44" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_45" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_45", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_48" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_48", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Bool_True_ADTTyp_Constr_46", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Bool_False_ADTTyp_Constr_49"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_Bool_ADTTyp_43" }
@"$TyDescr_Bool_ADTTyp_m_specls_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Bool_ADTTyp_Specl_52"]
@"$TyDescr_ADT_Bool_54" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_Pair_ADTTyp_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_63", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_Pair_ADTTyp_m_specls_62", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int128_String_Constr_m_args_56" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_String_22"]
@"$TyDescr_ADT_Pair_57" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int128_String_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_57", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int128_String_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_constrs_59" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_Pair_Pair_Int128_String_ADTTyp_Constr_58"]
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_TArgs_60" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_String_22"]
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_TArgs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_37"*], [1 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_constrs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_Pair_ADTTyp_55" }
@"$TyDescr_Pair_ADTTyp_m_specls_62" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_61"]
@"$TyDescr_ADT_Pair_63" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_List_ADTTyp_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_84", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_35"*], [2 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_List_ADTTyp_m_specls_83", i32 0, i32 0) }
@"$TyDescr_List_Cons_String_Constr_m_args_65" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_40"]
@"$TyDescr_ADT_Cons_66" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_66", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_69" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_69", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_71" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_67", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_70"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_72" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_22"]
@"$TyDescr_List_String_ADTTyp_Specl_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_List_ADTTyp_64" }
@"$TyDescr_List_Cons_Message_Constr_m_args_74" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41"]
@"$TyDescr_ADT_Cons_75" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_75", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_74", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_77" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_78" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_78", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_77", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_80" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_76", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_79"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_81" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_26"]
@"$TyDescr_List_Message_ADTTyp_Specl_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_81", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_List_ADTTyp_64" }
@"$TyDescr_List_ADTTyp_m_specls_83" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_String_ADTTyp_Specl_73", %"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Message_ADTTyp_Specl_82"]
@"$TyDescr_ADT_List_84" = unnamed_addr constant [4 x i8] c"List"
@one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@not_owner_code = global %Int32 zeroinitializer
@set_hello_code = global %Int32 zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@owner = global [20 x i8] zeroinitializer
@name = global %String zeroinitializer
@uint256 = global %Uint256 zeroinitializer
@int32 = global %Int32 zeroinitializer
@bstr = global %Bystr zeroinitializer
@all_names = global %TName_List_String* null
@pear = global %TName_Pair_Int128_String* null
@"$stringlit_99" = unnamed_addr constant [0 x i8] zeroinitializer
@"$welcome_msg_101" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_122" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_127" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_130" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_144" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_148" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_153" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_156" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_177" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_182" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_187" = unnamed_addr constant [10 x i8] c"getHello()"
@"$stringlit_190" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_209" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_214" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_217" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_224" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_233" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_238" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_241" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_248" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_279" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_284" = unnamed_addr constant [15 x i8] c"ContractAddress"
@"$stringlit_287" = unnamed_addr constant [4 x i8] c"addr"
@"$stringlit_306" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_311" = unnamed_addr constant [14 x i8] c"AllContrparams"
@"$stringlit_314" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_322" = unnamed_addr constant [4 x i8] c"name"
@"$stringlit_330" = unnamed_addr constant [7 x i8] c"uint256"
@"$stringlit_338" = unnamed_addr constant [5 x i8] c"int32"
@"$stringlit_346" = unnamed_addr constant [4 x i8] c"bstr"
@"$stringlit_354" = unnamed_addr constant [9 x i8] c"all_names"
@"$stringlit_362" = unnamed_addr constant [4 x i8] c"pear"
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_38", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_39", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_40", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 19

define internal %TName_List_Message* @"$fundef_1"(%"$$fundef_1_env_85"* %0, i8* %1) {
entry:
  %"$retval_2" = alloca %TName_List_Message*
  %nil_msg = alloca %TName_List_Message*
  %"$adtval_86_load" = load i8*, i8** @_execptr
  %"$adtval_86_salloc" = call i8* @_salloc(i8* %"$adtval_86_load", i64 1)
  %"$adtval_86" = bitcast i8* %"$adtval_86_salloc" to %CName_Nil_Message*
  %"$adtgep_87" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_86", i32 0, i32 0
  store i8 1, i8* %"$adtgep_87"
  %"$adtptr_88" = bitcast %CName_Nil_Message* %"$adtval_86" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_88", %TName_List_Message** %nil_msg
  %"$nil_msg_89" = load %TName_List_Message*, %TName_List_Message** %nil_msg
  %"$adtval_90_load" = load i8*, i8** @_execptr
  %"$adtval_90_salloc" = call i8* @_salloc(i8* %"$adtval_90_load", i64 17)
  %"$adtval_90" = bitcast i8* %"$adtval_90_salloc" to %CName_Cons_Message*
  %"$adtgep_91" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_90", i32 0, i32 0
  store i8 0, i8* %"$adtgep_91"
  %"$adtgep_92" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_90", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_92"
  %"$adtgep_93" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_90", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_89", %TName_List_Message** %"$adtgep_93"
  %"$adtptr_94" = bitcast %CName_Cons_Message* %"$adtval_90" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_94", %TName_List_Message** %"$retval_2"
  %"$$retval_2_95" = load %TName_List_Message*, %TName_List_Message** %"$retval_2"
  ret %TName_List_Message* %"$$retval_2_95"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_1_env_85"*, i8*)* @"$fundef_1" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @one_msg
  store %Int32 { i32 1 }, %Int32* @not_owner_code
  store %Int32 { i32 2 }, %Int32* @set_hello_code
  ret void
}

define void @_init_state() {
entry:
  %"$welcome_msg_3" = alloca %String
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_99", i32 0, i32 0), i32 0 }, %String* %"$welcome_msg_3"
  %"$execptr_load_100" = load i8*, i8** @_execptr
  %"$$welcome_msg_3_102" = load %String, %String* %"$welcome_msg_3"
  %"$update_value_103" = alloca %String
  store %String %"$$welcome_msg_3_102", %String* %"$update_value_103"
  %"$update_value_104" = bitcast %String* %"$update_value_103" to i8*
  call void @_update_field(i8* %"$execptr_load_100", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_101", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_22", i32 0, i8* null, i8* %"$update_value_104")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setHello_105"(%Uint128 %_amount, [20 x i8]* %"$_sender_106", %String %msg) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_106"
  %is_owner = alloca %TName_Bool*
  %"$execptr_load_107" = load i8*, i8** @_execptr
  %"$eq_owner_108" = alloca [20 x i8]
  %"$owner_109" = load [20 x i8], [20 x i8]* @owner
  store [20 x i8] %"$owner_109", [20 x i8]* %"$eq_owner_108"
  %"$$eq_owner_108_110" = bitcast [20 x i8]* %"$eq_owner_108" to i8*
  %"$eq__sender_111" = alloca [20 x i8]
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_111"
  %"$$eq__sender_111_112" = bitcast [20 x i8]* %"$eq__sender_111" to i8*
  %"$eq_call_113" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_107", i32 20, i8* %"$$eq_owner_108_110", i8* %"$$eq__sender_111_112")
  store %TName_Bool* %"$eq_call_113", %TName_Bool** %is_owner
  %"$is_owner_115" = load %TName_Bool*, %TName_Bool** %is_owner
  %"$is_owner_tag_116" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_owner_115", i32 0, i32 0
  %"$is_owner_tag_117" = load i8, i8* %"$is_owner_tag_116"
  switch i8 %"$is_owner_tag_117", label %"$empty_default_118" [
    i8 1, label %"$False_119"
    i8 0, label %"$True_141"
  ]

"$False_119":                                     ; preds = %entry
  %"$is_owner_120" = bitcast %TName_Bool* %"$is_owner_115" to %CName_False*
  %e = alloca i8*
  %"$msgobj_121_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_121_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_121_salloc_load", i64 69)
  %"$msgobj_121_salloc" = bitcast i8* %"$msgobj_121_salloc_salloc" to [69 x i8]*
  %"$msgobj_121" = bitcast [69 x i8]* %"$msgobj_121_salloc" to i8*
  store i8 2, i8* %"$msgobj_121"
  %"$msgobj_fname_123" = getelementptr i8, i8* %"$msgobj_121", i32 1
  %"$msgobj_fname_124" = bitcast i8* %"$msgobj_fname_123" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_122", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_124"
  %"$msgobj_td_125" = getelementptr i8, i8* %"$msgobj_121", i32 17
  %"$msgobj_td_126" = bitcast i8* %"$msgobj_td_125" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_126"
  %"$msgobj_v_128" = getelementptr i8, i8* %"$msgobj_121", i32 25
  %"$msgobj_v_129" = bitcast i8* %"$msgobj_v_128" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_127", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_129"
  %"$msgobj_fname_131" = getelementptr i8, i8* %"$msgobj_121", i32 41
  %"$msgobj_fname_132" = bitcast i8* %"$msgobj_fname_131" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_130", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_132"
  %"$msgobj_td_133" = getelementptr i8, i8* %"$msgobj_121", i32 57
  %"$msgobj_td_134" = bitcast i8* %"$msgobj_td_133" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_6", %_TyDescrTy_Typ** %"$msgobj_td_134"
  %"$not_owner_code_135" = load %Int32, %Int32* @not_owner_code
  %"$msgobj_v_136" = getelementptr i8, i8* %"$msgobj_121", i32 65
  %"$msgobj_v_137" = bitcast i8* %"$msgobj_v_136" to %Int32*
  store %Int32 %"$not_owner_code_135", %Int32* %"$msgobj_v_137"
  store i8* %"$msgobj_121", i8** %e
  %"$execptr_load_139" = load i8*, i8** @_execptr
  %"$e_140" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_139", %_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$e_140")
  br label %"$matchsucc_114"

"$True_141":                                      ; preds = %entry
  %"$is_owner_142" = bitcast %TName_Bool* %"$is_owner_115" to %CName_True*
  %"$execptr_load_143" = load i8*, i8** @_execptr
  %"$update_value_145" = alloca %String
  store %String %msg, %String* %"$update_value_145"
  %"$update_value_146" = bitcast %String* %"$update_value_145" to i8*
  call void @_update_field(i8* %"$execptr_load_143", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_144", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_22", i32 0, i8* null, i8* %"$update_value_146")
  %e1 = alloca i8*
  %"$msgobj_147_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_147_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_147_salloc_load", i64 69)
  %"$msgobj_147_salloc" = bitcast i8* %"$msgobj_147_salloc_salloc" to [69 x i8]*
  %"$msgobj_147" = bitcast [69 x i8]* %"$msgobj_147_salloc" to i8*
  store i8 2, i8* %"$msgobj_147"
  %"$msgobj_fname_149" = getelementptr i8, i8* %"$msgobj_147", i32 1
  %"$msgobj_fname_150" = bitcast i8* %"$msgobj_fname_149" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_148", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_150"
  %"$msgobj_td_151" = getelementptr i8, i8* %"$msgobj_147", i32 17
  %"$msgobj_td_152" = bitcast i8* %"$msgobj_td_151" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_152"
  %"$msgobj_v_154" = getelementptr i8, i8* %"$msgobj_147", i32 25
  %"$msgobj_v_155" = bitcast i8* %"$msgobj_v_154" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_153", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_155"
  %"$msgobj_fname_157" = getelementptr i8, i8* %"$msgobj_147", i32 41
  %"$msgobj_fname_158" = bitcast i8* %"$msgobj_fname_157" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_156", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_158"
  %"$msgobj_td_159" = getelementptr i8, i8* %"$msgobj_147", i32 57
  %"$msgobj_td_160" = bitcast i8* %"$msgobj_td_159" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_6", %_TyDescrTy_Typ** %"$msgobj_td_160"
  %"$set_hello_code_161" = load %Int32, %Int32* @set_hello_code
  %"$msgobj_v_162" = getelementptr i8, i8* %"$msgobj_147", i32 65
  %"$msgobj_v_163" = bitcast i8* %"$msgobj_v_162" to %Int32*
  store %Int32 %"$set_hello_code_161", %Int32* %"$msgobj_v_163"
  store i8* %"$msgobj_147", i8** %e1
  %"$execptr_load_165" = load i8*, i8** @_execptr
  %"$e_166" = load i8*, i8** %e1
  call void @_event(i8* %"$execptr_load_165", %_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$e_166")
  br label %"$matchsucc_114"

"$empty_default_118":                             ; preds = %entry
  br label %"$matchsucc_114"

"$matchsucc_114":                                 ; preds = %"$True_141", %"$False_119", %"$empty_default_118"
  ret void
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setHello(i8* %0) {
entry:
  %"$_amount_168" = getelementptr i8, i8* %0, i32 0
  %"$_amount_169" = bitcast i8* %"$_amount_168" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_169"
  %"$_sender_170" = getelementptr i8, i8* %0, i32 16
  %"$_sender_171" = bitcast i8* %"$_sender_170" to [20 x i8]*
  %"$msg_172" = getelementptr i8, i8* %0, i32 36
  %"$msg_173" = bitcast i8* %"$msg_172" to %String*
  %msg = load %String, %String* %"$msg_173"
  call void @"$setHello_105"(%Uint128 %_amount, [20 x i8]* %"$_sender_171", %String %msg)
  ret void
}

define internal void @"$getHello_174"(%Uint128 %_amount, [20 x i8]* %"$_sender_175") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_175"
  %r = alloca %String
  %"$execptr_load_176" = load i8*, i8** @_execptr
  %"$r_178" = call i8* @_fetch_field(i8* %"$execptr_load_176", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_177", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_22", i32 0, i8* null, i32 1)
  %"$r_179" = bitcast i8* %"$r_178" to %String*
  %"$r_180" = load %String, %String* %"$r_179"
  store %String %"$r_180", %String* %r
  %e = alloca i8*
  %"$msgobj_181_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_181_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_181_salloc_load", i64 81)
  %"$msgobj_181_salloc" = bitcast i8* %"$msgobj_181_salloc_salloc" to [81 x i8]*
  %"$msgobj_181" = bitcast [81 x i8]* %"$msgobj_181_salloc" to i8*
  store i8 2, i8* %"$msgobj_181"
  %"$msgobj_fname_183" = getelementptr i8, i8* %"$msgobj_181", i32 1
  %"$msgobj_fname_184" = bitcast i8* %"$msgobj_fname_183" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_182", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_184"
  %"$msgobj_td_185" = getelementptr i8, i8* %"$msgobj_181", i32 17
  %"$msgobj_td_186" = bitcast i8* %"$msgobj_td_185" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_186"
  %"$msgobj_v_188" = getelementptr i8, i8* %"$msgobj_181", i32 25
  %"$msgobj_v_189" = bitcast i8* %"$msgobj_v_188" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_187", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_189"
  %"$msgobj_fname_191" = getelementptr i8, i8* %"$msgobj_181", i32 41
  %"$msgobj_fname_192" = bitcast i8* %"$msgobj_fname_191" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_190", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_192"
  %"$msgobj_td_193" = getelementptr i8, i8* %"$msgobj_181", i32 57
  %"$msgobj_td_194" = bitcast i8* %"$msgobj_td_193" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_194"
  %"$r_195" = load %String, %String* %r
  %"$msgobj_v_196" = getelementptr i8, i8* %"$msgobj_181", i32 65
  %"$msgobj_v_197" = bitcast i8* %"$msgobj_v_196" to %String*
  store %String %"$r_195", %String* %"$msgobj_v_197"
  store i8* %"$msgobj_181", i8** %e
  %"$execptr_load_199" = load i8*, i8** @_execptr
  %"$e_200" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_199", %_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$e_200")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @getHello(i8* %0) {
entry:
  %"$_amount_202" = getelementptr i8, i8* %0, i32 0
  %"$_amount_203" = bitcast i8* %"$_amount_202" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_203"
  %"$_sender_204" = getelementptr i8, i8* %0, i32 16
  %"$_sender_205" = bitcast i8* %"$_sender_204" to [20 x i8]*
  call void @"$getHello_174"(%Uint128 %_amount, [20 x i8]* %"$_sender_205")
  ret void
}

define internal void @"$multipleMsgs_206"(%Uint128 %_amount, [20 x i8]* %"$_sender_207") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_207"
  %msg1 = alloca i8*
  %"$msgobj_208_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_208_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_208_salloc_load", i64 125)
  %"$msgobj_208_salloc" = bitcast i8* %"$msgobj_208_salloc_salloc" to [125 x i8]*
  %"$msgobj_208" = bitcast [125 x i8]* %"$msgobj_208_salloc" to i8*
  store i8 3, i8* %"$msgobj_208"
  %"$msgobj_fname_210" = getelementptr i8, i8* %"$msgobj_208", i32 1
  %"$msgobj_fname_211" = bitcast i8* %"$msgobj_fname_210" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_209", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_211"
  %"$msgobj_td_212" = getelementptr i8, i8* %"$msgobj_208", i32 17
  %"$msgobj_td_213" = bitcast i8* %"$msgobj_td_212" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_213"
  %"$msgobj_v_215" = getelementptr i8, i8* %"$msgobj_208", i32 25
  %"$msgobj_v_216" = bitcast i8* %"$msgobj_v_215" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_214", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_216"
  %"$msgobj_fname_218" = getelementptr i8, i8* %"$msgobj_208", i32 41
  %"$msgobj_fname_219" = bitcast i8* %"$msgobj_fname_218" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_217", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_219"
  %"$msgobj_td_220" = getelementptr i8, i8* %"$msgobj_208", i32 57
  %"$msgobj_td_221" = bitcast i8* %"$msgobj_td_220" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_221"
  %"$msgobj_v_222" = getelementptr i8, i8* %"$msgobj_208", i32 65
  %"$msgobj_v_223" = bitcast i8* %"$msgobj_v_222" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_223"
  %"$msgobj_fname_225" = getelementptr i8, i8* %"$msgobj_208", i32 85
  %"$msgobj_fname_226" = bitcast i8* %"$msgobj_fname_225" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_224", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_226"
  %"$msgobj_td_227" = getelementptr i8, i8* %"$msgobj_208", i32 101
  %"$msgobj_td_228" = bitcast i8* %"$msgobj_td_227" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_228"
  %"$msgobj_v_229" = getelementptr i8, i8* %"$msgobj_208", i32 109
  %"$msgobj_v_230" = bitcast i8* %"$msgobj_v_229" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_230"
  store i8* %"$msgobj_208", i8** %msg1
  %msg2 = alloca i8*
  %"$msgobj_232_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_232_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_232_salloc_load", i64 125)
  %"$msgobj_232_salloc" = bitcast i8* %"$msgobj_232_salloc_salloc" to [125 x i8]*
  %"$msgobj_232" = bitcast [125 x i8]* %"$msgobj_232_salloc" to i8*
  store i8 3, i8* %"$msgobj_232"
  %"$msgobj_fname_234" = getelementptr i8, i8* %"$msgobj_232", i32 1
  %"$msgobj_fname_235" = bitcast i8* %"$msgobj_fname_234" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_233", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_235"
  %"$msgobj_td_236" = getelementptr i8, i8* %"$msgobj_232", i32 17
  %"$msgobj_td_237" = bitcast i8* %"$msgobj_td_236" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_237"
  %"$msgobj_v_239" = getelementptr i8, i8* %"$msgobj_232", i32 25
  %"$msgobj_v_240" = bitcast i8* %"$msgobj_v_239" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_238", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_240"
  %"$msgobj_fname_242" = getelementptr i8, i8* %"$msgobj_232", i32 41
  %"$msgobj_fname_243" = bitcast i8* %"$msgobj_fname_242" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_241", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_243"
  %"$msgobj_td_244" = getelementptr i8, i8* %"$msgobj_232", i32 57
  %"$msgobj_td_245" = bitcast i8* %"$msgobj_td_244" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_245"
  %"$msgobj_v_246" = getelementptr i8, i8* %"$msgobj_232", i32 65
  %"$msgobj_v_247" = bitcast i8* %"$msgobj_v_246" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_247"
  %"$msgobj_fname_249" = getelementptr i8, i8* %"$msgobj_232", i32 85
  %"$msgobj_fname_250" = bitcast i8* %"$msgobj_fname_249" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_248", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_250"
  %"$msgobj_td_251" = getelementptr i8, i8* %"$msgobj_232", i32 101
  %"$msgobj_td_252" = bitcast i8* %"$msgobj_td_251" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_252"
  %"$msgobj_v_253" = getelementptr i8, i8* %"$msgobj_232", i32 109
  %"$msgobj_v_254" = bitcast i8* %"$msgobj_v_253" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_254"
  store i8* %"$msgobj_232", i8** %msg2
  %msgs1 = alloca %TName_List_Message*
  %"$one_msg_0" = alloca %TName_List_Message*
  %"$one_msg_256" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @one_msg
  %"$one_msg_fptr_257" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_256", 0
  %"$one_msg_envptr_258" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$one_msg_256", 1
  %"$msg1_259" = load i8*, i8** %msg1
  %"$one_msg_call_260" = call %TName_List_Message* %"$one_msg_fptr_257"(i8* %"$one_msg_envptr_258", i8* %"$msg1_259")
  store %TName_List_Message* %"$one_msg_call_260", %TName_List_Message** %"$one_msg_0"
  %"$$one_msg_0_261" = load %TName_List_Message*, %TName_List_Message** %"$one_msg_0"
  store %TName_List_Message* %"$$one_msg_0_261", %TName_List_Message** %msgs1
  %msgs2 = alloca %TName_List_Message*
  %"$msg2_262" = load i8*, i8** %msg2
  %"$msgs1_263" = load %TName_List_Message*, %TName_List_Message** %msgs1
  %"$adtval_264_load" = load i8*, i8** @_execptr
  %"$adtval_264_salloc" = call i8* @_salloc(i8* %"$adtval_264_load", i64 17)
  %"$adtval_264" = bitcast i8* %"$adtval_264_salloc" to %CName_Cons_Message*
  %"$adtgep_265" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_264", i32 0, i32 0
  store i8 0, i8* %"$adtgep_265"
  %"$adtgep_266" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_264", i32 0, i32 1
  store i8* %"$msg2_262", i8** %"$adtgep_266"
  %"$adtgep_267" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_264", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_263", %TName_List_Message** %"$adtgep_267"
  %"$adtptr_268" = bitcast %CName_Cons_Message* %"$adtval_264" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_268", %TName_List_Message** %msgs2
  %"$execptr_load_269" = load i8*, i8** @_execptr
  %"$msgs2_270" = load %TName_List_Message*, %TName_List_Message** %msgs2
  call void @_send(i8* %"$execptr_load_269", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %TName_List_Message* %"$msgs2_270")
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @multipleMsgs(i8* %0) {
entry:
  %"$_amount_272" = getelementptr i8, i8* %0, i32 0
  %"$_amount_273" = bitcast i8* %"$_amount_272" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_273"
  %"$_sender_274" = getelementptr i8, i8* %0, i32 16
  %"$_sender_275" = bitcast i8* %"$_sender_274" to [20 x i8]*
  call void @"$multipleMsgs_206"(%Uint128 %_amount, [20 x i8]* %"$_sender_275")
  ret void
}

define internal void @"$contrAddr_276"(%Uint128 %_amount, [20 x i8]* %"$_sender_277") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_277"
  %msg1 = alloca i8*
  %"$msgobj_278_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_278_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_278_salloc_load", i64 85)
  %"$msgobj_278_salloc" = bitcast i8* %"$msgobj_278_salloc_salloc" to [85 x i8]*
  %"$msgobj_278" = bitcast [85 x i8]* %"$msgobj_278_salloc" to i8*
  store i8 2, i8* %"$msgobj_278"
  %"$msgobj_fname_280" = getelementptr i8, i8* %"$msgobj_278", i32 1
  %"$msgobj_fname_281" = bitcast i8* %"$msgobj_fname_280" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_279", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_281"
  %"$msgobj_td_282" = getelementptr i8, i8* %"$msgobj_278", i32 17
  %"$msgobj_td_283" = bitcast i8* %"$msgobj_td_282" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_283"
  %"$msgobj_v_285" = getelementptr i8, i8* %"$msgobj_278", i32 25
  %"$msgobj_v_286" = bitcast i8* %"$msgobj_v_285" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_284", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_286"
  %"$msgobj_fname_288" = getelementptr i8, i8* %"$msgobj_278", i32 41
  %"$msgobj_fname_289" = bitcast i8* %"$msgobj_fname_288" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_287", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_289"
  %"$msgobj_td_290" = getelementptr i8, i8* %"$msgobj_278", i32 57
  %"$msgobj_td_291" = bitcast i8* %"$msgobj_td_290" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_291"
  %"$_this_address_292" = load [20 x i8], [20 x i8]* @_this_address
  %"$msgobj_v_293" = getelementptr i8, i8* %"$msgobj_278", i32 65
  %"$msgobj_v_294" = bitcast i8* %"$msgobj_v_293" to [20 x i8]*
  store [20 x i8] %"$_this_address_292", [20 x i8]* %"$msgobj_v_294"
  store i8* %"$msgobj_278", i8** %msg1
  %"$execptr_load_296" = load i8*, i8** @_execptr
  %"$msg1_297" = load i8*, i8** %msg1
  call void @_event(i8* %"$execptr_load_296", %_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$msg1_297")
  ret void
}

define void @contrAddr(i8* %0) {
entry:
  %"$_amount_299" = getelementptr i8, i8* %0, i32 0
  %"$_amount_300" = bitcast i8* %"$_amount_299" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_300"
  %"$_sender_301" = getelementptr i8, i8* %0, i32 16
  %"$_sender_302" = bitcast i8* %"$_sender_301" to [20 x i8]*
  call void @"$contrAddr_276"(%Uint128 %_amount, [20 x i8]* %"$_sender_302")
  ret void
}

define internal void @"$printContrParams_303"(%Uint128 %_amount, [20 x i8]* %"$_sender_304") {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_304"
  %e = alloca i8*
  %"$msgobj_305_salloc_load" = load i8*, i8** @_execptr
  %"$msgobj_305_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_305_salloc_load", i64 313)
  %"$msgobj_305_salloc" = bitcast i8* %"$msgobj_305_salloc_salloc" to [313 x i8]*
  %"$msgobj_305" = bitcast [313 x i8]* %"$msgobj_305_salloc" to i8*
  store i8 8, i8* %"$msgobj_305"
  %"$msgobj_fname_307" = getelementptr i8, i8* %"$msgobj_305", i32 1
  %"$msgobj_fname_308" = bitcast i8* %"$msgobj_fname_307" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_306", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_308"
  %"$msgobj_td_309" = getelementptr i8, i8* %"$msgobj_305", i32 17
  %"$msgobj_td_310" = bitcast i8* %"$msgobj_td_309" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_310"
  %"$msgobj_v_312" = getelementptr i8, i8* %"$msgobj_305", i32 25
  %"$msgobj_v_313" = bitcast i8* %"$msgobj_v_312" to %String*
  store %String { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$stringlit_311", i32 0, i32 0), i32 14 }, %String* %"$msgobj_v_313"
  %"$msgobj_fname_315" = getelementptr i8, i8* %"$msgobj_305", i32 41
  %"$msgobj_fname_316" = bitcast i8* %"$msgobj_fname_315" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_314", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_316"
  %"$msgobj_td_317" = getelementptr i8, i8* %"$msgobj_305", i32 57
  %"$msgobj_td_318" = bitcast i8* %"$msgobj_td_317" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ** %"$msgobj_td_318"
  %"$owner_319" = load [20 x i8], [20 x i8]* @owner
  %"$msgobj_v_320" = getelementptr i8, i8* %"$msgobj_305", i32 65
  %"$msgobj_v_321" = bitcast i8* %"$msgobj_v_320" to [20 x i8]*
  store [20 x i8] %"$owner_319", [20 x i8]* %"$msgobj_v_321"
  %"$msgobj_fname_323" = getelementptr i8, i8* %"$msgobj_305", i32 85
  %"$msgobj_fname_324" = bitcast i8* %"$msgobj_fname_323" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_322", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_324"
  %"$msgobj_td_325" = getelementptr i8, i8* %"$msgobj_305", i32 101
  %"$msgobj_td_326" = bitcast i8* %"$msgobj_td_325" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_326"
  %"$name_327" = load %String, %String* @name
  %"$msgobj_v_328" = getelementptr i8, i8* %"$msgobj_305", i32 109
  %"$msgobj_v_329" = bitcast i8* %"$msgobj_v_328" to %String*
  store %String %"$name_327", %String* %"$msgobj_v_329"
  %"$msgobj_fname_331" = getelementptr i8, i8* %"$msgobj_305", i32 125
  %"$msgobj_fname_332" = bitcast i8* %"$msgobj_fname_331" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_330", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_332"
  %"$msgobj_td_333" = getelementptr i8, i8* %"$msgobj_305", i32 141
  %"$msgobj_td_334" = bitcast i8* %"$msgobj_td_333" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ** %"$msgobj_td_334"
  %"$uint256_335" = load %Uint256, %Uint256* @uint256
  %"$msgobj_v_336" = getelementptr i8, i8* %"$msgobj_305", i32 149
  %"$msgobj_v_337" = bitcast i8* %"$msgobj_v_336" to %Uint256*
  store %Uint256 %"$uint256_335", %Uint256* %"$msgobj_v_337"
  %"$msgobj_fname_339" = getelementptr i8, i8* %"$msgobj_305", i32 181
  %"$msgobj_fname_340" = bitcast i8* %"$msgobj_fname_339" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_338", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_340"
  %"$msgobj_td_341" = getelementptr i8, i8* %"$msgobj_305", i32 197
  %"$msgobj_td_342" = bitcast i8* %"$msgobj_td_341" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_6", %_TyDescrTy_Typ** %"$msgobj_td_342"
  %"$int32_343" = load %Int32, %Int32* @int32
  %"$msgobj_v_344" = getelementptr i8, i8* %"$msgobj_305", i32 205
  %"$msgobj_v_345" = bitcast i8* %"$msgobj_v_344" to %Int32*
  store %Int32 %"$int32_343", %Int32* %"$msgobj_v_345"
  %"$msgobj_fname_347" = getelementptr i8, i8* %"$msgobj_305", i32 209
  %"$msgobj_fname_348" = bitcast i8* %"$msgobj_fname_347" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_346", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_348"
  %"$msgobj_td_349" = getelementptr i8, i8* %"$msgobj_305", i32 225
  %"$msgobj_td_350" = bitcast i8* %"$msgobj_td_349" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ** %"$msgobj_td_350"
  %"$bstr_351" = load %Bystr, %Bystr* @bstr
  %"$msgobj_v_352" = getelementptr i8, i8* %"$msgobj_305", i32 233
  %"$msgobj_v_353" = bitcast i8* %"$msgobj_v_352" to %Bystr*
  store %Bystr %"$bstr_351", %Bystr* %"$msgobj_v_353"
  %"$msgobj_fname_355" = getelementptr i8, i8* %"$msgobj_305", i32 249
  %"$msgobj_fname_356" = bitcast i8* %"$msgobj_fname_355" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_354", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_356"
  %"$msgobj_td_357" = getelementptr i8, i8* %"$msgobj_305", i32 265
  %"$msgobj_td_358" = bitcast i8* %"$msgobj_td_357" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_40", %_TyDescrTy_Typ** %"$msgobj_td_358"
  %"$all_names_359" = load %TName_List_String*, %TName_List_String** @all_names
  %"$msgobj_v_360" = getelementptr i8, i8* %"$msgobj_305", i32 273
  %"$msgobj_v_361" = bitcast i8* %"$msgobj_v_360" to %TName_List_String**
  store %TName_List_String* %"$all_names_359", %TName_List_String** %"$msgobj_v_361"
  %"$msgobj_fname_363" = getelementptr i8, i8* %"$msgobj_305", i32 281
  %"$msgobj_fname_364" = bitcast i8* %"$msgobj_fname_363" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_362", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_364"
  %"$msgobj_td_365" = getelementptr i8, i8* %"$msgobj_305", i32 297
  %"$msgobj_td_366" = bitcast i8* %"$msgobj_td_365" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_39", %_TyDescrTy_Typ** %"$msgobj_td_366"
  %"$pear_367" = load %TName_Pair_Int128_String*, %TName_Pair_Int128_String** @pear
  %"$msgobj_v_368" = getelementptr i8, i8* %"$msgobj_305", i32 305
  %"$msgobj_v_369" = bitcast i8* %"$msgobj_v_368" to %TName_Pair_Int128_String**
  store %TName_Pair_Int128_String* %"$pear_367", %TName_Pair_Int128_String** %"$msgobj_v_369"
  store i8* %"$msgobj_305", i8** %e
  %"$execptr_load_371" = load i8*, i8** @_execptr
  %"$e_372" = load i8*, i8** %e
  call void @_event(i8* %"$execptr_load_371", %_TyDescrTy_Typ* @"$TyDescr_Event_28", i8* %"$e_372")
  ret void
}

define void @printContrParams(i8* %0) {
entry:
  %"$_amount_374" = getelementptr i8, i8* %0, i32 0
  %"$_amount_375" = bitcast i8* %"$_amount_374" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_375"
  %"$_sender_376" = getelementptr i8, i8* %0, i32 16
  %"$_sender_377" = bitcast i8* %"$_sender_376" to [20 x i8]*
  call void @"$printContrParams_303"(%Uint128 %_amount, [20 x i8]* %"$_sender_377")
  ret void
}
