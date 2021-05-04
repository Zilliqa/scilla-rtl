

; gas_remaining: 4001350
; ModuleID = 'HelloWorld'
source_filename = "HelloWorld"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_45" = type { i32, %"$TyDescr_AddrFieldTyp_44"* }
%"$TyDescr_AddrFieldTyp_44" = type { %TyDescrString, %_TyDescrTy_Typ* }
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
%"$$fundef_1_env_90" = type {}
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
@"$TyDescr_ADT_Bool_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_56" to i8*) }
@"$TyDescr_ADT_Pair_Int128_String_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_65" to i8*) }
@"$TyDescr_ADT_List_String_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_String_ADTTyp_Specl_77" to i8*) }
@"$TyDescr_ADT_List_Message_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Message_ADTTyp_Specl_86" to i8*) }
@"$TyDescr_Addr_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_45"* @"$TyDescr_AddrFields_89" to i8*) }
@"$TyDescr_Bool_ADTTyp_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_58", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Bool_ADTTyp_m_specls_57", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_49" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_49", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_51" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_52" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_52", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_51", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_54" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_True_ADTTyp_Constr_50", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Bool_False_ADTTyp_Constr_53"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_55" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Bool_ADTTyp_47" }
@"$TyDescr_Bool_ADTTyp_m_specls_57" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Bool_ADTTyp_Specl_56"]
@"$TyDescr_ADT_Bool_58" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_Pair_ADTTyp_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_67", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Pair_ADTTyp_m_specls_66", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int128_String_Constr_m_args_60" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_String_23"]
@"$TyDescr_ADT_Pair_61" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int128_String_ADTTyp_Constr_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_61", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int128_String_Constr_m_args_60", i32 0, i32 0) }
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_constrs_63" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Pair_Pair_Int128_String_ADTTyp_Constr_62"]
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_TArgs_64" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_String_23"]
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_TArgs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_38"*], [1 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_constrs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Pair_ADTTyp_59" }
@"$TyDescr_Pair_ADTTyp_m_specls_66" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_65"]
@"$TyDescr_ADT_Pair_67" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_List_ADTTyp_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_88", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_36"*], [2 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_List_ADTTyp_m_specls_87", i32 0, i32 0) }
@"$TyDescr_List_Cons_String_Constr_m_args_69" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41"]
@"$TyDescr_ADT_Cons_70" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_70", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_69", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_72" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_73" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_73", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_72", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_75" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_71", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_74"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_76" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_23"]
@"$TyDescr_List_String_ADTTyp_Specl_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_68" }
@"$TyDescr_List_Cons_Message_Constr_m_args_78" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42"]
@"$TyDescr_ADT_Cons_79" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_79", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_78", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_81" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_82" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_82", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_81", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_84" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_80", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_83"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_85" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_27"]
@"$TyDescr_List_Message_ADTTyp_Specl_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_84", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_68" }
@"$TyDescr_List_ADTTyp_m_specls_87" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_String_ADTTyp_Specl_77", %"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Message_ADTTyp_Specl_86"]
@"$TyDescr_ADT_List_88" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_89" = unnamed_addr constant %"$TyDescr_AddrTyp_45" { i32 -1, %"$TyDescr_AddrFieldTyp_44"* null }
@helloWorld.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@helloWorld.not_owner_code = global %Int32 zeroinitializer
@helloWorld.set_hello_code = global %Int32 zeroinitializer
@helloWorld.smsg = global %String zeroinitializer
@"$stringlit_139" = unnamed_addr constant [8 x i8] c"get lost"
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@owner = global [20 x i8] zeroinitializer
@name = global %String zeroinitializer
@uint256 = global %Uint256 zeroinitializer
@int32 = global %Int32 zeroinitializer
@bstr = global %Bystr zeroinitializer
@all_names = global %TName_List_String* null
@pear = global %TName_Pair_Int128_String* null
@"$welcome_msg_147" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$sendoff_msg_158" = unnamed_addr constant [12 x i8] c"sendoff_msg\00"
@"$stringlit_199" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_204" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_207" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_237" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_251" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_256" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_259" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_288" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_313" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_318" = unnamed_addr constant [10 x i8] c"getHello()"
@"$stringlit_321" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_358" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_363" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_366" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_373" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_392" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_397" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_400" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_407" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_476" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_481" = unnamed_addr constant [15 x i8] c"ContractAddress"
@"$stringlit_484" = unnamed_addr constant [4 x i8] c"addr"
@"$stringlit_521" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_526" = unnamed_addr constant [14 x i8] c"AllContrparams"
@"$stringlit_529" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_537" = unnamed_addr constant [4 x i8] c"name"
@"$stringlit_545" = unnamed_addr constant [7 x i8] c"uint256"
@"$stringlit_553" = unnamed_addr constant [5 x i8] c"int32"
@"$stringlit_561" = unnamed_addr constant [4 x i8] c"bstr"
@"$stringlit_569" = unnamed_addr constant [9 x i8] c"all_names"
@"$stringlit_577" = unnamed_addr constant [4 x i8] c"pear"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 20

define internal %TName_List_Message* @"$fundef_1"(%"$$fundef_1_env_90"* %0, i8* %1) !dbg !4 {
entry:
  %"$retval_2" = alloca %TName_List_Message*, align 8
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %entry
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %nil_msg = alloca %TName_List_Message*, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %"$adtval_101_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_101_salloc" = call i8* @_salloc(i8* %"$adtval_101_load", i64 1)
  %"$adtval_101" = bitcast i8* %"$adtval_101_salloc" to %CName_Nil_Message*
  %"$adtgep_102" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_101", i32 0, i32 0
  store i8 1, i8* %"$adtgep_102", align 1
  %"$adtptr_103" = bitcast %CName_Nil_Message* %"$adtval_101" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_103", %TName_List_Message** %nil_msg, align 8, !dbg !8
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_99"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$nil_msg_109" = load %TName_List_Message*, %TName_List_Message** %nil_msg, align 8
  %"$adtval_110_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_110_salloc" = call i8* @_salloc(i8* %"$adtval_110_load", i64 17)
  %"$adtval_110" = bitcast i8* %"$adtval_110_salloc" to %CName_Cons_Message*
  %"$adtgep_111" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_110", i32 0, i32 0
  store i8 0, i8* %"$adtgep_111", align 1
  %"$adtgep_112" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_110", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_112", align 8
  %"$adtgep_113" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_110", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_109", %TName_List_Message** %"$adtgep_113", align 8
  %"$adtptr_114" = bitcast %CName_Cons_Message* %"$adtval_110" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_114", %TName_List_Message** %"$retval_2", align 8, !dbg !9
  %"$$retval_2_115" = load %TName_List_Message*, %TName_List_Message** %"$retval_2", align 8
  ret %TName_List_Message* %"$$retval_2_115"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !10 {
entry:
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %entry
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_1_env_90"*, i8*)* @"$fundef_1" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8, !dbg !12
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_119"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @helloWorld.not_owner_code, align 4, !dbg !13
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @helloWorld.set_hello_code, align 4, !dbg !14
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_139", i32 0, i32 0), i32 8 }, %String* @helloWorld.smsg, align 8, !dbg !15
  ret void
}

define void @_init_state() !dbg !16 {
entry:
  %"$welcome_msg_3" = alloca %String, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %entry
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %"$name_145" = load %String, %String* @name, align 8
  store %String %"$name_145", %String* %"$welcome_msg_3", align 8, !dbg !17
  %"$execptr_load_146" = load i8*, i8** @_execptr, align 8
  %"$$welcome_msg_3_148" = load %String, %String* %"$welcome_msg_3", align 8
  %"$update_value_149" = alloca %String, align 8
  store %String %"$$welcome_msg_3_148", %String* %"$update_value_149", align 8
  %"$update_value_150" = bitcast %String* %"$update_value_149" to i8*
  call void @_update_field(i8* %"$execptr_load_146", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_147", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_150"), !dbg !17
  %"$sendoff_msg_4" = alloca %String, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_143"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %"$helloWorld.smsg_156" = load %String, %String* @helloWorld.smsg, align 8
  store %String %"$helloWorld.smsg_156", %String* %"$sendoff_msg_4", align 8, !dbg !18
  %"$execptr_load_157" = load i8*, i8** @_execptr, align 8
  %"$$sendoff_msg_4_159" = load %String, %String* %"$sendoff_msg_4", align 8
  %"$update_value_160" = alloca %String, align 8
  store %String %"$$sendoff_msg_4_159", %String* %"$update_value_160", align 8
  %"$update_value_161" = bitcast %String* %"$update_value_160" to i8*
  call void @_update_field(i8* %"$execptr_load_157", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$sendoff_msg_158", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_161"), !dbg !18
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setHello_162"(%Uint128 %_amount, [20 x i8]* %"$_sender_163", %String %msg) !dbg !19 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_163", align 1
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %entry
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %is_owner = alloca %TName_Bool*, align 8
  %"$execptr_load_169" = load i8*, i8** @_execptr, align 8
  %"$eq_owner_170" = alloca [20 x i8], align 1
  %"$owner_171" = load [20 x i8], [20 x i8]* @owner, align 1
  store [20 x i8] %"$owner_171", [20 x i8]* %"$eq_owner_170", align 1
  %"$$eq_owner_170_172" = bitcast [20 x i8]* %"$eq_owner_170" to i8*
  %"$eq__sender_173" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_173", align 1
  %"$$eq__sender_173_174" = bitcast [20 x i8]* %"$eq__sender_173" to i8*
  %"$eq_call_175" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_169", i32 20, i8* %"$$eq_owner_170_172", i8* %"$$eq__sender_173_174")
  store %TName_Bool* %"$eq_call_175", %TName_Bool** %is_owner, align 8, !dbg !20
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 2, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_167"
  %"$consume_180" = sub i64 %"$gasrem_176", 2
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %"$is_owner_182" = load %TName_Bool*, %TName_Bool** %is_owner, align 8
  %"$is_owner_tag_183" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_owner_182", i32 0, i32 0
  %"$is_owner_tag_184" = load i8, i8* %"$is_owner_tag_183", align 1
  switch i8 %"$is_owner_tag_184", label %"$empty_default_185" [
    i8 1, label %"$False_186"
    i8 0, label %"$True_226"
  ], !dbg !21

"$False_186":                                     ; preds = %"$have_gas_179"
  %"$is_owner_187" = bitcast %TName_Bool* %"$is_owner_182" to %CName_False*
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %"$False_186"
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %"$False_186"
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_191"
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %"$msgobj_198_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_198_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_198_salloc_load", i64 69)
  %"$msgobj_198_salloc" = bitcast i8* %"$msgobj_198_salloc_salloc" to [69 x i8]*
  %"$msgobj_198" = bitcast [69 x i8]* %"$msgobj_198_salloc" to i8*
  store i8 2, i8* %"$msgobj_198", align 1
  %"$msgobj_fname_200" = getelementptr i8, i8* %"$msgobj_198", i32 1
  %"$msgobj_fname_201" = bitcast i8* %"$msgobj_fname_200" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_199", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_201", align 8
  %"$msgobj_td_202" = getelementptr i8, i8* %"$msgobj_198", i32 17
  %"$msgobj_td_203" = bitcast i8* %"$msgobj_td_202" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_203", align 8
  %"$msgobj_v_205" = getelementptr i8, i8* %"$msgobj_198", i32 25
  %"$msgobj_v_206" = bitcast i8* %"$msgobj_v_205" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_204", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_206", align 8
  %"$msgobj_fname_208" = getelementptr i8, i8* %"$msgobj_198", i32 41
  %"$msgobj_fname_209" = bitcast i8* %"$msgobj_fname_208" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_207", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_209", align 8
  %"$msgobj_td_210" = getelementptr i8, i8* %"$msgobj_198", i32 57
  %"$msgobj_td_211" = bitcast i8* %"$msgobj_td_210" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_211", align 8
  %"$helloWorld.not_owner_code_212" = load %Int32, %Int32* @helloWorld.not_owner_code, align 4
  %"$msgobj_v_213" = getelementptr i8, i8* %"$msgobj_198", i32 65
  %"$msgobj_v_214" = bitcast i8* %"$msgobj_v_213" to %Int32*
  store %Int32 %"$helloWorld.not_owner_code_212", %Int32* %"$msgobj_v_214", align 4
  store i8* %"$msgobj_198", i8** %e, align 8, !dbg !22
  %"$e_216" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_218" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_216")
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 %"$_literal_cost_call_218", %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_196"
  %"$consume_223" = sub i64 %"$gasrem_219", %"$_literal_cost_call_218"
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$execptr_load_224" = load i8*, i8** @_execptr, align 8
  %"$e_225" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_224", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_225"), !dbg !25
  br label %"$matchsucc_181"

"$True_226":                                      ; preds = %"$have_gas_179"
  %"$is_owner_227" = bitcast %TName_Bool* %"$is_owner_182" to %CName_True*
  %"$_literal_cost_msg_228" = alloca %String, align 8
  store %String %msg, %String* %"$_literal_cost_msg_228", align 8
  %"$$_literal_cost_msg_228_229" = bitcast %String* %"$_literal_cost_msg_228" to i8*
  %"$_literal_cost_call_230" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_23", i8* %"$$_literal_cost_msg_228_229")
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 %"$_literal_cost_call_230", %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$True_226"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$True_226"
  %"$consume_235" = sub i64 %"$gasrem_231", %"$_literal_cost_call_230"
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %"$execptr_load_236" = load i8*, i8** @_execptr, align 8
  %"$update_value_238" = alloca %String, align 8
  store %String %msg, %String* %"$update_value_238", align 8
  %"$update_value_239" = bitcast %String* %"$update_value_238" to i8*
  call void @_update_field(i8* %"$execptr_load_236", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_237", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_239"), !dbg !26
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_234"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_243"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %"$msgobj_250_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_250_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_250_salloc_load", i64 69)
  %"$msgobj_250_salloc" = bitcast i8* %"$msgobj_250_salloc_salloc" to [69 x i8]*
  %"$msgobj_250" = bitcast [69 x i8]* %"$msgobj_250_salloc" to i8*
  store i8 2, i8* %"$msgobj_250", align 1
  %"$msgobj_fname_252" = getelementptr i8, i8* %"$msgobj_250", i32 1
  %"$msgobj_fname_253" = bitcast i8* %"$msgobj_fname_252" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_251", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_253", align 8
  %"$msgobj_td_254" = getelementptr i8, i8* %"$msgobj_250", i32 17
  %"$msgobj_td_255" = bitcast i8* %"$msgobj_td_254" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_255", align 8
  %"$msgobj_v_257" = getelementptr i8, i8* %"$msgobj_250", i32 25
  %"$msgobj_v_258" = bitcast i8* %"$msgobj_v_257" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_256", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_258", align 8
  %"$msgobj_fname_260" = getelementptr i8, i8* %"$msgobj_250", i32 41
  %"$msgobj_fname_261" = bitcast i8* %"$msgobj_fname_260" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_259", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_261", align 8
  %"$msgobj_td_262" = getelementptr i8, i8* %"$msgobj_250", i32 57
  %"$msgobj_td_263" = bitcast i8* %"$msgobj_td_262" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_263", align 8
  %"$helloWorld.set_hello_code_264" = load %Int32, %Int32* @helloWorld.set_hello_code, align 4
  %"$msgobj_v_265" = getelementptr i8, i8* %"$msgobj_250", i32 65
  %"$msgobj_v_266" = bitcast i8* %"$msgobj_v_265" to %Int32*
  store %Int32 %"$helloWorld.set_hello_code_264", %Int32* %"$msgobj_v_266", align 4
  store i8* %"$msgobj_250", i8** %e1, align 8, !dbg !28
  %"$e_268" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_270" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_268")
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 %"$_literal_cost_call_270", %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_248"
  %"$consume_275" = sub i64 %"$gasrem_271", %"$_literal_cost_call_270"
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %"$execptr_load_276" = load i8*, i8** @_execptr, align 8
  %"$e_277" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_276", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_277"), !dbg !29
  br label %"$matchsucc_181"

"$empty_default_185":                             ; preds = %"$have_gas_179"
  br label %"$matchsucc_181"

"$matchsucc_181":                                 ; preds = %"$have_gas_274", %"$have_gas_222", %"$empty_default_185"
  ret void
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setHello(i8* %0) !dbg !30 {
entry:
  %"$_amount_279" = getelementptr i8, i8* %0, i32 0
  %"$_amount_280" = bitcast i8* %"$_amount_279" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_280", align 8
  %"$_sender_281" = getelementptr i8, i8* %0, i32 16
  %"$_sender_282" = bitcast i8* %"$_sender_281" to [20 x i8]*
  %"$msg_283" = getelementptr i8, i8* %0, i32 36
  %"$msg_284" = bitcast i8* %"$msg_283" to %String*
  %msg = load %String, %String* %"$msg_284", align 8
  call void @"$setHello_162"(%Uint128 %_amount, [20 x i8]* %"$_sender_282", %String %msg), !dbg !31
  ret void
}

define internal void @"$getHello_285"(%Uint128 %_amount, [20 x i8]* %"$_sender_286") !dbg !32 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_286", align 1
  %r = alloca %String, align 8
  %"$execptr_load_287" = load i8*, i8** @_execptr, align 8
  %"$r_289" = call i8* @_fetch_field(i8* %"$execptr_load_287", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_288", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i32 1), !dbg !33
  %"$r_290" = bitcast i8* %"$r_289" to %String*
  %"$r_291" = load %String, %String* %"$r_290", align 8
  store %String %"$r_291", %String* %r, align 8
  %"$_literal_cost_r_292" = alloca %String, align 8
  %"$r_293" = load %String, %String* %r, align 8
  store %String %"$r_293", %String* %"$_literal_cost_r_292", align 8
  %"$$_literal_cost_r_292_294" = bitcast %String* %"$_literal_cost_r_292" to i8*
  %"$_literal_cost_call_295" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_23", i8* %"$$_literal_cost_r_292_294")
  %"$gasadd_296" = add i64 %"$_literal_cost_call_295", 0
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 %"$gasadd_296", %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %entry
  %"$consume_301" = sub i64 %"$gasrem_297", %"$gasadd_296"
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_300"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$msgobj_312_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_312_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_312_salloc_load", i64 81)
  %"$msgobj_312_salloc" = bitcast i8* %"$msgobj_312_salloc_salloc" to [81 x i8]*
  %"$msgobj_312" = bitcast [81 x i8]* %"$msgobj_312_salloc" to i8*
  store i8 2, i8* %"$msgobj_312", align 1
  %"$msgobj_fname_314" = getelementptr i8, i8* %"$msgobj_312", i32 1
  %"$msgobj_fname_315" = bitcast i8* %"$msgobj_fname_314" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_313", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_315", align 8
  %"$msgobj_td_316" = getelementptr i8, i8* %"$msgobj_312", i32 17
  %"$msgobj_td_317" = bitcast i8* %"$msgobj_td_316" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_317", align 8
  %"$msgobj_v_319" = getelementptr i8, i8* %"$msgobj_312", i32 25
  %"$msgobj_v_320" = bitcast i8* %"$msgobj_v_319" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_318", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_320", align 8
  %"$msgobj_fname_322" = getelementptr i8, i8* %"$msgobj_312", i32 41
  %"$msgobj_fname_323" = bitcast i8* %"$msgobj_fname_322" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_321", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_323", align 8
  %"$msgobj_td_324" = getelementptr i8, i8* %"$msgobj_312", i32 57
  %"$msgobj_td_325" = bitcast i8* %"$msgobj_td_324" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_325", align 8
  %"$r_326" = load %String, %String* %r, align 8
  %"$msgobj_v_327" = getelementptr i8, i8* %"$msgobj_312", i32 65
  %"$msgobj_v_328" = bitcast i8* %"$msgobj_v_327" to %String*
  store %String %"$r_326", %String* %"$msgobj_v_328", align 8
  store i8* %"$msgobj_312", i8** %e, align 8, !dbg !34
  %"$e_330" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_332" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_330")
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 %"$_literal_cost_call_332", %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_310"
  %"$consume_337" = sub i64 %"$gasrem_333", %"$_literal_cost_call_332"
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %"$execptr_load_338" = load i8*, i8** @_execptr, align 8
  %"$e_339" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_338", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_339"), !dbg !35
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @getHello(i8* %0) !dbg !36 {
entry:
  %"$_amount_341" = getelementptr i8, i8* %0, i32 0
  %"$_amount_342" = bitcast i8* %"$_amount_341" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_342", align 8
  %"$_sender_343" = getelementptr i8, i8* %0, i32 16
  %"$_sender_344" = bitcast i8* %"$_sender_343" to [20 x i8]*
  call void @"$getHello_285"(%Uint128 %_amount, [20 x i8]* %"$_sender_344"), !dbg !37
  ret void
}

define internal void @"$multipleMsgs_345"(%Uint128 %_amount, [20 x i8]* %"$_sender_346") !dbg !38 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_346", align 1
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %entry
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$have_gas_350"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %"$msgobj_357_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_357_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_357_salloc_load", i64 125)
  %"$msgobj_357_salloc" = bitcast i8* %"$msgobj_357_salloc_salloc" to [125 x i8]*
  %"$msgobj_357" = bitcast [125 x i8]* %"$msgobj_357_salloc" to i8*
  store i8 3, i8* %"$msgobj_357", align 1
  %"$msgobj_fname_359" = getelementptr i8, i8* %"$msgobj_357", i32 1
  %"$msgobj_fname_360" = bitcast i8* %"$msgobj_fname_359" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_358", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_360", align 8
  %"$msgobj_td_361" = getelementptr i8, i8* %"$msgobj_357", i32 17
  %"$msgobj_td_362" = bitcast i8* %"$msgobj_td_361" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_362", align 8
  %"$msgobj_v_364" = getelementptr i8, i8* %"$msgobj_357", i32 25
  %"$msgobj_v_365" = bitcast i8* %"$msgobj_v_364" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_363", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_365", align 8
  %"$msgobj_fname_367" = getelementptr i8, i8* %"$msgobj_357", i32 41
  %"$msgobj_fname_368" = bitcast i8* %"$msgobj_fname_367" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_366", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_368", align 8
  %"$msgobj_td_369" = getelementptr i8, i8* %"$msgobj_357", i32 57
  %"$msgobj_td_370" = bitcast i8* %"$msgobj_td_369" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ** %"$msgobj_td_370", align 8
  %"$msgobj_v_371" = getelementptr i8, i8* %"$msgobj_357", i32 65
  %"$msgobj_v_372" = bitcast i8* %"$msgobj_v_371" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_372", align 1
  %"$msgobj_fname_374" = getelementptr i8, i8* %"$msgobj_357", i32 85
  %"$msgobj_fname_375" = bitcast i8* %"$msgobj_fname_374" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_373", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_375", align 8
  %"$msgobj_td_376" = getelementptr i8, i8* %"$msgobj_357", i32 101
  %"$msgobj_td_377" = bitcast i8* %"$msgobj_td_376" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_377", align 8
  %"$msgobj_v_378" = getelementptr i8, i8* %"$msgobj_357", i32 109
  %"$msgobj_v_379" = bitcast i8* %"$msgobj_v_378" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_379", align 8
  store i8* %"$msgobj_357", i8** %msg1, align 8, !dbg !39
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 1, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_355"
  %"$consume_385" = sub i64 %"$gasrem_381", 1
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 1, %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_384"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_384"
  %"$consume_390" = sub i64 %"$gasrem_386", 1
  store i64 %"$consume_390", i64* @_gasrem, align 8
  %"$msgobj_391_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_391_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_391_salloc_load", i64 125)
  %"$msgobj_391_salloc" = bitcast i8* %"$msgobj_391_salloc_salloc" to [125 x i8]*
  %"$msgobj_391" = bitcast [125 x i8]* %"$msgobj_391_salloc" to i8*
  store i8 3, i8* %"$msgobj_391", align 1
  %"$msgobj_fname_393" = getelementptr i8, i8* %"$msgobj_391", i32 1
  %"$msgobj_fname_394" = bitcast i8* %"$msgobj_fname_393" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_392", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_394", align 8
  %"$msgobj_td_395" = getelementptr i8, i8* %"$msgobj_391", i32 17
  %"$msgobj_td_396" = bitcast i8* %"$msgobj_td_395" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_396", align 8
  %"$msgobj_v_398" = getelementptr i8, i8* %"$msgobj_391", i32 25
  %"$msgobj_v_399" = bitcast i8* %"$msgobj_v_398" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_397", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_399", align 8
  %"$msgobj_fname_401" = getelementptr i8, i8* %"$msgobj_391", i32 41
  %"$msgobj_fname_402" = bitcast i8* %"$msgobj_fname_401" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_400", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_402", align 8
  %"$msgobj_td_403" = getelementptr i8, i8* %"$msgobj_391", i32 57
  %"$msgobj_td_404" = bitcast i8* %"$msgobj_td_403" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ** %"$msgobj_td_404", align 8
  %"$msgobj_v_405" = getelementptr i8, i8* %"$msgobj_391", i32 65
  %"$msgobj_v_406" = bitcast i8* %"$msgobj_v_405" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_406", align 1
  %"$msgobj_fname_408" = getelementptr i8, i8* %"$msgobj_391", i32 85
  %"$msgobj_fname_409" = bitcast i8* %"$msgobj_fname_408" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_407", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_409", align 8
  %"$msgobj_td_410" = getelementptr i8, i8* %"$msgobj_391", i32 101
  %"$msgobj_td_411" = bitcast i8* %"$msgobj_td_410" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_411", align 8
  %"$msgobj_v_412" = getelementptr i8, i8* %"$msgobj_391", i32 109
  %"$msgobj_v_413" = bitcast i8* %"$msgobj_v_412" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_413", align 8
  store i8* %"$msgobj_391", i8** %msg2, align 8, !dbg !40
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_389"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %"$helloWorld.one_msg_0" = alloca %TName_List_Message*, align 8
  %"$helloWorld.one_msg_425" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8
  %"$helloWorld.one_msg_fptr_426" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_425", 0
  %"$helloWorld.one_msg_envptr_427" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_425", 1
  %"$msg1_428" = load i8*, i8** %msg1, align 8
  %"$helloWorld.one_msg_call_429" = call %TName_List_Message* %"$helloWorld.one_msg_fptr_426"(i8* %"$helloWorld.one_msg_envptr_427", i8* %"$msg1_428"), !dbg !41
  store %TName_List_Message* %"$helloWorld.one_msg_call_429", %TName_List_Message** %"$helloWorld.one_msg_0", align 8, !dbg !41
  %"$$helloWorld.one_msg_0_430" = load %TName_List_Message*, %TName_List_Message** %"$helloWorld.one_msg_0", align 8
  store %TName_List_Message* %"$$helloWorld.one_msg_0_430", %TName_List_Message** %msgs1, align 8, !dbg !41
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_423"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_434"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$msg2_441" = load i8*, i8** %msg2, align 8
  %"$msgs1_442" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_443_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_443_salloc" = call i8* @_salloc(i8* %"$adtval_443_load", i64 17)
  %"$adtval_443" = bitcast i8* %"$adtval_443_salloc" to %CName_Cons_Message*
  %"$adtgep_444" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_443", i32 0, i32 0
  store i8 0, i8* %"$adtgep_444", align 1
  %"$adtgep_445" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_443", i32 0, i32 1
  store i8* %"$msg2_441", i8** %"$adtgep_445", align 8
  %"$adtgep_446" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_443", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_442", %TName_List_Message** %"$adtgep_446", align 8
  %"$adtptr_447" = bitcast %CName_Cons_Message* %"$adtval_443" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_447", %TName_List_Message** %msgs2, align 8, !dbg !42
  %"$msgs2_448" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_448_449" = bitcast %TName_List_Message* %"$msgs2_448" to i8*
  %"$_literal_cost_call_450" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", i8* %"$$msgs2_448_449")
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 %"$_literal_cost_call_450", %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_439"
  %"$consume_455" = sub i64 %"$gasrem_451", %"$_literal_cost_call_450"
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$execptr_load_456" = load i8*, i8** @_execptr, align 8
  %"$msgs2_457" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_456", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %TName_List_Message* %"$msgs2_457"), !dbg !43
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @multipleMsgs(i8* %0) !dbg !44 {
entry:
  %"$_amount_459" = getelementptr i8, i8* %0, i32 0
  %"$_amount_460" = bitcast i8* %"$_amount_459" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_460", align 8
  %"$_sender_461" = getelementptr i8, i8* %0, i32 16
  %"$_sender_462" = bitcast i8* %"$_sender_461" to [20 x i8]*
  call void @"$multipleMsgs_345"(%Uint128 %_amount, [20 x i8]* %"$_sender_462"), !dbg !45
  ret void
}

define internal void @"$contrAddr_463"(%Uint128 %_amount, [20 x i8]* %"$_sender_464") !dbg !46 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_464", align 1
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %entry
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %"$msgobj_475_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_475_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_475_salloc_load", i64 85)
  %"$msgobj_475_salloc" = bitcast i8* %"$msgobj_475_salloc_salloc" to [85 x i8]*
  %"$msgobj_475" = bitcast [85 x i8]* %"$msgobj_475_salloc" to i8*
  store i8 2, i8* %"$msgobj_475", align 1
  %"$msgobj_fname_477" = getelementptr i8, i8* %"$msgobj_475", i32 1
  %"$msgobj_fname_478" = bitcast i8* %"$msgobj_fname_477" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_476", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_478", align 8
  %"$msgobj_td_479" = getelementptr i8, i8* %"$msgobj_475", i32 17
  %"$msgobj_td_480" = bitcast i8* %"$msgobj_td_479" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_480", align 8
  %"$msgobj_v_482" = getelementptr i8, i8* %"$msgobj_475", i32 25
  %"$msgobj_v_483" = bitcast i8* %"$msgobj_v_482" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_481", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_483", align 8
  %"$msgobj_fname_485" = getelementptr i8, i8* %"$msgobj_475", i32 41
  %"$msgobj_fname_486" = bitcast i8* %"$msgobj_fname_485" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_484", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_486", align 8
  %"$msgobj_td_487" = getelementptr i8, i8* %"$msgobj_475", i32 57
  %"$msgobj_td_488" = bitcast i8* %"$msgobj_td_487" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_488", align 8
  %"$_this_address_489" = load [20 x i8], [20 x i8]* @_this_address, align 1
  %"$msgobj_v_490" = getelementptr i8, i8* %"$msgobj_475", i32 65
  %"$msgobj_v_491" = bitcast i8* %"$msgobj_v_490" to [20 x i8]*
  store [20 x i8] %"$_this_address_489", [20 x i8]* %"$msgobj_v_491", align 1
  store i8* %"$msgobj_475", i8** %msg1, align 8, !dbg !47
  %"$msg1_493" = load i8*, i8** %msg1, align 8
  %"$_literal_cost_call_495" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$msg1_493")
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 %"$_literal_cost_call_495", %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_473"
  %"$consume_500" = sub i64 %"$gasrem_496", %"$_literal_cost_call_495"
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %"$execptr_load_501" = load i8*, i8** @_execptr, align 8
  %"$msg1_502" = load i8*, i8** %msg1, align 8
  call void @_event(i8* %"$execptr_load_501", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$msg1_502"), !dbg !48
  ret void
}

define void @contrAddr(i8* %0) !dbg !49 {
entry:
  %"$_amount_504" = getelementptr i8, i8* %0, i32 0
  %"$_amount_505" = bitcast i8* %"$_amount_504" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_505", align 8
  %"$_sender_506" = getelementptr i8, i8* %0, i32 16
  %"$_sender_507" = bitcast i8* %"$_sender_506" to [20 x i8]*
  call void @"$contrAddr_463"(%Uint128 %_amount, [20 x i8]* %"$_sender_507"), !dbg !50
  ret void
}

define internal void @"$printContrParams_508"(%Uint128 %_amount, [20 x i8]* %"$_sender_509") !dbg !51 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_509", align 1
  %"$gasrem_510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_511" = icmp ugt i64 1, %"$gasrem_510"
  br i1 %"$gascmp_511", label %"$out_of_gas_512", label %"$have_gas_513"

"$out_of_gas_512":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_513"

"$have_gas_513":                                  ; preds = %"$out_of_gas_512", %entry
  %"$consume_514" = sub i64 %"$gasrem_510", 1
  store i64 %"$consume_514", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_513"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_513"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  %"$msgobj_520_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_520_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_520_salloc_load", i64 313)
  %"$msgobj_520_salloc" = bitcast i8* %"$msgobj_520_salloc_salloc" to [313 x i8]*
  %"$msgobj_520" = bitcast [313 x i8]* %"$msgobj_520_salloc" to i8*
  store i8 8, i8* %"$msgobj_520", align 1
  %"$msgobj_fname_522" = getelementptr i8, i8* %"$msgobj_520", i32 1
  %"$msgobj_fname_523" = bitcast i8* %"$msgobj_fname_522" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_521", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_523", align 8
  %"$msgobj_td_524" = getelementptr i8, i8* %"$msgobj_520", i32 17
  %"$msgobj_td_525" = bitcast i8* %"$msgobj_td_524" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_525", align 8
  %"$msgobj_v_527" = getelementptr i8, i8* %"$msgobj_520", i32 25
  %"$msgobj_v_528" = bitcast i8* %"$msgobj_v_527" to %String*
  store %String { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$stringlit_526", i32 0, i32 0), i32 14 }, %String* %"$msgobj_v_528", align 8
  %"$msgobj_fname_530" = getelementptr i8, i8* %"$msgobj_520", i32 41
  %"$msgobj_fname_531" = bitcast i8* %"$msgobj_fname_530" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_529", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_531", align 8
  %"$msgobj_td_532" = getelementptr i8, i8* %"$msgobj_520", i32 57
  %"$msgobj_td_533" = bitcast i8* %"$msgobj_td_532" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_533", align 8
  %"$owner_534" = load [20 x i8], [20 x i8]* @owner, align 1
  %"$msgobj_v_535" = getelementptr i8, i8* %"$msgobj_520", i32 65
  %"$msgobj_v_536" = bitcast i8* %"$msgobj_v_535" to [20 x i8]*
  store [20 x i8] %"$owner_534", [20 x i8]* %"$msgobj_v_536", align 1
  %"$msgobj_fname_538" = getelementptr i8, i8* %"$msgobj_520", i32 85
  %"$msgobj_fname_539" = bitcast i8* %"$msgobj_fname_538" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_537", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_539", align 8
  %"$msgobj_td_540" = getelementptr i8, i8* %"$msgobj_520", i32 101
  %"$msgobj_td_541" = bitcast i8* %"$msgobj_td_540" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_541", align 8
  %"$name_542" = load %String, %String* @name, align 8
  %"$msgobj_v_543" = getelementptr i8, i8* %"$msgobj_520", i32 109
  %"$msgobj_v_544" = bitcast i8* %"$msgobj_v_543" to %String*
  store %String %"$name_542", %String* %"$msgobj_v_544", align 8
  %"$msgobj_fname_546" = getelementptr i8, i8* %"$msgobj_520", i32 125
  %"$msgobj_fname_547" = bitcast i8* %"$msgobj_fname_546" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_545", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_547", align 8
  %"$msgobj_td_548" = getelementptr i8, i8* %"$msgobj_520", i32 141
  %"$msgobj_td_549" = bitcast i8* %"$msgobj_td_548" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ** %"$msgobj_td_549", align 8
  %"$uint256_550" = load %Uint256, %Uint256* @uint256, align 8
  %"$msgobj_v_551" = getelementptr i8, i8* %"$msgobj_520", i32 149
  %"$msgobj_v_552" = bitcast i8* %"$msgobj_v_551" to %Uint256*
  store %Uint256 %"$uint256_550", %Uint256* %"$msgobj_v_552", align 8
  %"$msgobj_fname_554" = getelementptr i8, i8* %"$msgobj_520", i32 181
  %"$msgobj_fname_555" = bitcast i8* %"$msgobj_fname_554" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_553", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_555", align 8
  %"$msgobj_td_556" = getelementptr i8, i8* %"$msgobj_520", i32 197
  %"$msgobj_td_557" = bitcast i8* %"$msgobj_td_556" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_557", align 8
  %"$int32_558" = load %Int32, %Int32* @int32, align 4
  %"$msgobj_v_559" = getelementptr i8, i8* %"$msgobj_520", i32 205
  %"$msgobj_v_560" = bitcast i8* %"$msgobj_v_559" to %Int32*
  store %Int32 %"$int32_558", %Int32* %"$msgobj_v_560", align 4
  %"$msgobj_fname_562" = getelementptr i8, i8* %"$msgobj_520", i32 209
  %"$msgobj_fname_563" = bitcast i8* %"$msgobj_fname_562" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_561", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_563", align 8
  %"$msgobj_td_564" = getelementptr i8, i8* %"$msgobj_520", i32 225
  %"$msgobj_td_565" = bitcast i8* %"$msgobj_td_564" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ** %"$msgobj_td_565", align 8
  %"$bstr_566" = load %Bystr, %Bystr* @bstr, align 8
  %"$msgobj_v_567" = getelementptr i8, i8* %"$msgobj_520", i32 233
  %"$msgobj_v_568" = bitcast i8* %"$msgobj_v_567" to %Bystr*
  store %Bystr %"$bstr_566", %Bystr* %"$msgobj_v_568", align 8
  %"$msgobj_fname_570" = getelementptr i8, i8* %"$msgobj_520", i32 249
  %"$msgobj_fname_571" = bitcast i8* %"$msgobj_fname_570" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_569", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_571", align 8
  %"$msgobj_td_572" = getelementptr i8, i8* %"$msgobj_520", i32 265
  %"$msgobj_td_573" = bitcast i8* %"$msgobj_td_572" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ** %"$msgobj_td_573", align 8
  %"$all_names_574" = load %TName_List_String*, %TName_List_String** @all_names, align 8
  %"$msgobj_v_575" = getelementptr i8, i8* %"$msgobj_520", i32 273
  %"$msgobj_v_576" = bitcast i8* %"$msgobj_v_575" to %TName_List_String**
  store %TName_List_String* %"$all_names_574", %TName_List_String** %"$msgobj_v_576", align 8
  %"$msgobj_fname_578" = getelementptr i8, i8* %"$msgobj_520", i32 281
  %"$msgobj_fname_579" = bitcast i8* %"$msgobj_fname_578" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_577", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_579", align 8
  %"$msgobj_td_580" = getelementptr i8, i8* %"$msgobj_520", i32 297
  %"$msgobj_td_581" = bitcast i8* %"$msgobj_td_580" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ** %"$msgobj_td_581", align 8
  %"$pear_582" = load %TName_Pair_Int128_String*, %TName_Pair_Int128_String** @pear, align 8
  %"$msgobj_v_583" = getelementptr i8, i8* %"$msgobj_520", i32 305
  %"$msgobj_v_584" = bitcast i8* %"$msgobj_v_583" to %TName_Pair_Int128_String**
  store %TName_Pair_Int128_String* %"$pear_582", %TName_Pair_Int128_String** %"$msgobj_v_584", align 8
  store i8* %"$msgobj_520", i8** %e, align 8, !dbg !52
  %"$e_586" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_588" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_586")
  %"$gasrem_589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_590" = icmp ugt i64 %"$_literal_cost_call_588", %"$gasrem_589"
  br i1 %"$gascmp_590", label %"$out_of_gas_591", label %"$have_gas_592"

"$out_of_gas_591":                                ; preds = %"$have_gas_518"
  call void @_out_of_gas()
  br label %"$have_gas_592"

"$have_gas_592":                                  ; preds = %"$out_of_gas_591", %"$have_gas_518"
  %"$consume_593" = sub i64 %"$gasrem_589", %"$_literal_cost_call_588"
  store i64 %"$consume_593", i64* @_gasrem, align 8
  %"$execptr_load_594" = load i8*, i8** @_execptr, align 8
  %"$e_595" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_594", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_595"), !dbg !53
  ret void
}

define void @printContrParams(i8* %0) !dbg !54 {
entry:
  %"$_amount_597" = getelementptr i8, i8* %0, i32 0
  %"$_amount_598" = bitcast i8* %"$_amount_597" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_598", align 8
  %"$_sender_599" = getelementptr i8, i8* %0, i32 16
  %"$_sender_600" = bitcast i8* %"$_sender_599" to [20 x i8]*
  call void @"$printContrParams_508"(%Uint128 %_amount, [20 x i8]* %"$_sender_600"), !dbg !55
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "helloWorld.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_1", linkageName: "$fundef_1", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 14, column: 17, scope: !4)
!9 = !DILocation(line: 15, column: 3, scope: !4)
!10 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DIFile(filename: ".", directory: ".")
!12 = !DILocation(line: 14, column: 3, scope: !10)
!13 = !DILocation(line: 17, column: 22, scope: !10)
!14 = !DILocation(line: 18, column: 22, scope: !10)
!15 = !DILocation(line: 20, column: 21, scope: !10)
!16 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 36, column: 30, scope: !16)
!18 = !DILocation(line: 37, column: 30, scope: !16)
!19 = distinct !DISubprogram(name: "setHello", linkageName: "setHello", scope: !2, file: !2, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 40, column: 14, scope: !19)
!21 = !DILocation(line: 41, column: 3, scope: !19)
!22 = !DILocation(line: 43, column: 9, scope: !23)
!23 = distinct !DILexicalBlock(scope: !24, file: !2, line: 42, column: 5)
!24 = distinct !DILexicalBlock(scope: !19, file: !2, line: 41, column: 3)
!25 = !DILocation(line: 44, column: 5, scope: !23)
!26 = !DILocation(line: 46, column: 5, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !2, line: 45, column: 5)
!28 = !DILocation(line: 47, column: 9, scope: !27)
!29 = !DILocation(line: 48, column: 5, scope: !27)
!30 = distinct !DISubprogram(name: "setHello", linkageName: "setHello", scope: !2, file: !2, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!31 = !DILocation(line: 39, column: 12, scope: !30)
!32 = distinct !DISubprogram(name: "getHello", linkageName: "getHello", scope: !2, file: !2, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 54, column: 5, scope: !32)
!34 = !DILocation(line: 55, column: 9, scope: !32)
!35 = !DILocation(line: 56, column: 5, scope: !32)
!36 = distinct !DISubprogram(name: "getHello", linkageName: "getHello", scope: !2, file: !2, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!37 = !DILocation(line: 53, column: 12, scope: !36)
!38 = distinct !DISubprogram(name: "multipleMsgs", linkageName: "multipleMsgs", scope: !2, file: !2, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!39 = !DILocation(line: 60, column: 10, scope: !38)
!40 = !DILocation(line: 61, column: 10, scope: !38)
!41 = !DILocation(line: 62, column: 11, scope: !38)
!42 = !DILocation(line: 63, column: 11, scope: !38)
!43 = !DILocation(line: 64, column: 3, scope: !38)
!44 = distinct !DISubprogram(name: "multipleMsgs", linkageName: "multipleMsgs", scope: !2, file: !2, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!45 = !DILocation(line: 59, column: 12, scope: !44)
!46 = distinct !DISubprogram(name: "contrAddr", linkageName: "contrAddr", scope: !2, file: !2, line: 67, type: !5, scopeLine: 67, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!47 = !DILocation(line: 68, column: 10, scope: !46)
!48 = !DILocation(line: 69, column: 3, scope: !46)
!49 = distinct !DISubprogram(name: "contrAddr", linkageName: "contrAddr", scope: !2, file: !2, line: 67, type: !5, scopeLine: 67, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!50 = !DILocation(line: 67, column: 12, scope: !49)
!51 = distinct !DISubprogram(name: "printContrParams", linkageName: "printContrParams", scope: !2, file: !2, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!52 = !DILocation(line: 73, column: 7, scope: !51)
!53 = !DILocation(line: 83, column: 3, scope: !51)
!54 = distinct !DISubprogram(name: "printContrParams", linkageName: "printContrParams", scope: !2, file: !2, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!55 = !DILocation(line: 72, column: 12, scope: !54)
