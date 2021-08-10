

; gas_remaining: 4001350
; ModuleID = 'HelloWorld'
source_filename = "HelloWorld"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

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
%"$ParamDescr_622" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_623" = type { %ParamDescrString, i32, %"$ParamDescr_622"* }
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
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@_cparam_owner = global [20 x i8] zeroinitializer
@_cparam_name = global %String zeroinitializer
@_cparam_uint256 = global %Uint256 zeroinitializer
@_cparam_int32 = global %Int32 zeroinitializer
@_cparam_bstr = global %Bystr zeroinitializer
@_cparam_all_names = global %TName_List_String* null
@_cparam_pear = global %TName_Pair_Int128_String* null
@"$welcome_msg_147" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$sendoff_msg_158" = unnamed_addr constant [12 x i8] c"sendoff_msg\00"
@"$stringlit_206" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_211" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_214" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_244" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_258" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_263" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_266" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_297" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_323" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_328" = unnamed_addr constant [10 x i8] c"getHello()"
@"$stringlit_331" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_371" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_376" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_379" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_386" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_405" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_410" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_413" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_420" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_492" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_497" = unnamed_addr constant [15 x i8] c"ContractAddress"
@"$stringlit_500" = unnamed_addr constant [4 x i8] c"addr"
@"$stringlit_540" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_545" = unnamed_addr constant [14 x i8] c"AllContrparams"
@"$stringlit_548" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_556" = unnamed_addr constant [4 x i8] c"name"
@"$stringlit_564" = unnamed_addr constant [7 x i8] c"uint256"
@"$stringlit_572" = unnamed_addr constant [5 x i8] c"int32"
@"$stringlit_580" = unnamed_addr constant [4 x i8] c"bstr"
@"$stringlit_588" = unnamed_addr constant [9 x i8] c"all_names"
@"$stringlit_596" = unnamed_addr constant [4 x i8] c"pear"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 20
@"$pname__scilla_version_624" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_625" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_626" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_owner_627" = unnamed_addr constant [5 x i8] c"owner"
@"$pname_name_628" = unnamed_addr constant [4 x i8] c"name"
@"$pname_uint256_629" = unnamed_addr constant [7 x i8] c"uint256"
@"$pname_int32_630" = unnamed_addr constant [5 x i8] c"int32"
@"$pname_bstr_631" = unnamed_addr constant [4 x i8] c"bstr"
@"$pname_all_names_632" = unnamed_addr constant [9 x i8] c"all_names"
@"$pname_pear_633" = unnamed_addr constant [4 x i8] c"pear"
@_contract_parameters = constant [10 x %"$ParamDescr_622"] [%"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_624", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_625", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_626", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_owner_627", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_name_628", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_String_23" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_uint256_629", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint256_21" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_int32_630", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_7" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_bstr_631", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr_33" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$pname_all_names_632", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_pear_633", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40" }]
@_contract_parameters_length = constant i32 10
@"$tpname__amount_634" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_635" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_636" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_msg_637" = unnamed_addr constant [3 x i8] c"msg"
@"$tparams_setHello_638" = unnamed_addr constant [4 x %"$ParamDescr_622"] [%"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_634", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_635", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_636", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_msg_637", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_String_23" }]
@"$tname_setHello_639" = unnamed_addr constant [8 x i8] c"setHello"
@"$tpname__amount_640" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_641" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_642" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_getHello_643" = unnamed_addr constant [3 x %"$ParamDescr_622"] [%"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_640", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_641", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_642", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_getHello_644" = unnamed_addr constant [8 x i8] c"getHello"
@"$tpname__amount_645" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_646" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_647" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_multipleMsgs_648" = unnamed_addr constant [3 x %"$ParamDescr_622"] [%"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_645", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_646", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_647", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_multipleMsgs_649" = unnamed_addr constant [12 x i8] c"multipleMsgs"
@"$tpname__amount_650" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_651" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_652" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_contrAddr_653" = unnamed_addr constant [3 x %"$ParamDescr_622"] [%"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_650", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_651", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_652", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_contrAddr_654" = unnamed_addr constant [9 x i8] c"contrAddr"
@"$tpname__amount_655" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_656" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_657" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_printContrParams_658" = unnamed_addr constant [3 x %"$ParamDescr_622"] [%"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_655", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_656", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_622" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_657", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_printContrParams_659" = unnamed_addr constant [16 x i8] c"printContrParams"
@_transition_parameters = constant [5 x %"$TransDescr_623"] [%"$TransDescr_623" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setHello_639", i32 0, i32 0), i32 8 }, i32 4, %"$ParamDescr_622"* getelementptr inbounds ([4 x %"$ParamDescr_622"], [4 x %"$ParamDescr_622"]* @"$tparams_setHello_638", i32 0, i32 0) }, %"$TransDescr_623" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_getHello_644", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_622"* getelementptr inbounds ([3 x %"$ParamDescr_622"], [3 x %"$ParamDescr_622"]* @"$tparams_getHello_643", i32 0, i32 0) }, %"$TransDescr_623" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_multipleMsgs_649", i32 0, i32 0), i32 12 }, i32 3, %"$ParamDescr_622"* getelementptr inbounds ([3 x %"$ParamDescr_622"], [3 x %"$ParamDescr_622"]* @"$tparams_multipleMsgs_648", i32 0, i32 0) }, %"$TransDescr_623" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_contrAddr_654", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_622"* getelementptr inbounds ([3 x %"$ParamDescr_622"], [3 x %"$ParamDescr_622"]* @"$tparams_contrAddr_653", i32 0, i32 0) }, %"$TransDescr_623" { %ParamDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$tname_printContrParams_659", i32 0, i32 0), i32 16 }, i32 3, %"$ParamDescr_622"* getelementptr inbounds ([3 x %"$ParamDescr_622"], [3 x %"$ParamDescr_622"]* @"$tparams_printContrParams_658", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

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
  %"$name_145" = load %String, %String* @_cparam_name, align 8
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

define internal void @"$setHello_162"(%Uint128 %_amount, [20 x i8]* %"$_origin_163", [20 x i8]* %"$_sender_164", %String %msg) !dbg !19 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_163", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_164", align 1
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %entry
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %is_owner = alloca %TName_Bool*, align 8
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 20, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 20
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$execptr_load_175" = load i8*, i8** @_execptr, align 8
  %"$eq_owner_176" = alloca [20 x i8], align 1
  %"$owner_177" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  store [20 x i8] %"$owner_177", [20 x i8]* %"$eq_owner_176", align 1
  %"$$eq_owner_176_178" = bitcast [20 x i8]* %"$eq_owner_176" to i8*
  %"$eq__sender_179" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_179", align 1
  %"$$eq__sender_179_180" = bitcast [20 x i8]* %"$eq__sender_179" to i8*
  %"$eq_call_181" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_175", i32 20, i8* %"$$eq_owner_176_178", i8* %"$$eq__sender_179_180"), !dbg !20
  store %TName_Bool* %"$eq_call_181", %TName_Bool** %is_owner, align 8, !dbg !20
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 2, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$have_gas_173"
  %"$consume_187" = sub i64 %"$gasrem_183", 2
  store i64 %"$consume_187", i64* @_gasrem, align 8
  %"$is_owner_189" = load %TName_Bool*, %TName_Bool** %is_owner, align 8
  %"$is_owner_tag_190" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_owner_189", i32 0, i32 0
  %"$is_owner_tag_191" = load i8, i8* %"$is_owner_tag_190", align 1
  switch i8 %"$is_owner_tag_191", label %"$empty_default_192" [
    i8 1, label %"$False_193"
    i8 0, label %"$True_233"
  ], !dbg !21

"$False_193":                                     ; preds = %"$have_gas_186"
  %"$is_owner_194" = bitcast %TName_Bool* %"$is_owner_189" to %CName_False*
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$False_193"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$False_193"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_198"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %"$msgobj_205_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_205_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_205_salloc_load", i64 69)
  %"$msgobj_205_salloc" = bitcast i8* %"$msgobj_205_salloc_salloc" to [69 x i8]*
  %"$msgobj_205" = bitcast [69 x i8]* %"$msgobj_205_salloc" to i8*
  store i8 2, i8* %"$msgobj_205", align 1
  %"$msgobj_fname_207" = getelementptr i8, i8* %"$msgobj_205", i32 1
  %"$msgobj_fname_208" = bitcast i8* %"$msgobj_fname_207" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_206", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_208", align 8
  %"$msgobj_td_209" = getelementptr i8, i8* %"$msgobj_205", i32 17
  %"$msgobj_td_210" = bitcast i8* %"$msgobj_td_209" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_210", align 8
  %"$msgobj_v_212" = getelementptr i8, i8* %"$msgobj_205", i32 25
  %"$msgobj_v_213" = bitcast i8* %"$msgobj_v_212" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_211", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_213", align 8
  %"$msgobj_fname_215" = getelementptr i8, i8* %"$msgobj_205", i32 41
  %"$msgobj_fname_216" = bitcast i8* %"$msgobj_fname_215" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_214", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_216", align 8
  %"$msgobj_td_217" = getelementptr i8, i8* %"$msgobj_205", i32 57
  %"$msgobj_td_218" = bitcast i8* %"$msgobj_td_217" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_218", align 8
  %"$helloWorld.not_owner_code_219" = load %Int32, %Int32* @helloWorld.not_owner_code, align 4
  %"$msgobj_v_220" = getelementptr i8, i8* %"$msgobj_205", i32 65
  %"$msgobj_v_221" = bitcast i8* %"$msgobj_v_220" to %Int32*
  store %Int32 %"$helloWorld.not_owner_code_219", %Int32* %"$msgobj_v_221", align 4
  store i8* %"$msgobj_205", i8** %e, align 8, !dbg !22
  %"$e_223" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_225" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_223")
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 %"$_literal_cost_call_225", %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_203"
  %"$consume_230" = sub i64 %"$gasrem_226", %"$_literal_cost_call_225"
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %"$execptr_load_231" = load i8*, i8** @_execptr, align 8
  %"$e_232" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_231", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_232"), !dbg !25
  br label %"$matchsucc_188"

"$True_233":                                      ; preds = %"$have_gas_186"
  %"$is_owner_234" = bitcast %TName_Bool* %"$is_owner_189" to %CName_True*
  %"$_literal_cost_msg_235" = alloca %String, align 8
  store %String %msg, %String* %"$_literal_cost_msg_235", align 8
  %"$$_literal_cost_msg_235_236" = bitcast %String* %"$_literal_cost_msg_235" to i8*
  %"$_literal_cost_call_237" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_23", i8* %"$$_literal_cost_msg_235_236")
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 %"$_literal_cost_call_237", %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$True_233"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$True_233"
  %"$consume_242" = sub i64 %"$gasrem_238", %"$_literal_cost_call_237"
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$execptr_load_243" = load i8*, i8** @_execptr, align 8
  %"$update_value_245" = alloca %String, align 8
  store %String %msg, %String* %"$update_value_245", align 8
  %"$update_value_246" = bitcast %String* %"$update_value_245" to i8*
  call void @_update_field(i8* %"$execptr_load_243", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_244", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_246"), !dbg !26
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_241"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 1, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_250"
  %"$consume_256" = sub i64 %"$gasrem_252", 1
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %"$msgobj_257_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_257_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_257_salloc_load", i64 69)
  %"$msgobj_257_salloc" = bitcast i8* %"$msgobj_257_salloc_salloc" to [69 x i8]*
  %"$msgobj_257" = bitcast [69 x i8]* %"$msgobj_257_salloc" to i8*
  store i8 2, i8* %"$msgobj_257", align 1
  %"$msgobj_fname_259" = getelementptr i8, i8* %"$msgobj_257", i32 1
  %"$msgobj_fname_260" = bitcast i8* %"$msgobj_fname_259" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_258", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_260", align 8
  %"$msgobj_td_261" = getelementptr i8, i8* %"$msgobj_257", i32 17
  %"$msgobj_td_262" = bitcast i8* %"$msgobj_td_261" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_262", align 8
  %"$msgobj_v_264" = getelementptr i8, i8* %"$msgobj_257", i32 25
  %"$msgobj_v_265" = bitcast i8* %"$msgobj_v_264" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_263", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_265", align 8
  %"$msgobj_fname_267" = getelementptr i8, i8* %"$msgobj_257", i32 41
  %"$msgobj_fname_268" = bitcast i8* %"$msgobj_fname_267" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_266", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_268", align 8
  %"$msgobj_td_269" = getelementptr i8, i8* %"$msgobj_257", i32 57
  %"$msgobj_td_270" = bitcast i8* %"$msgobj_td_269" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_270", align 8
  %"$helloWorld.set_hello_code_271" = load %Int32, %Int32* @helloWorld.set_hello_code, align 4
  %"$msgobj_v_272" = getelementptr i8, i8* %"$msgobj_257", i32 65
  %"$msgobj_v_273" = bitcast i8* %"$msgobj_v_272" to %Int32*
  store %Int32 %"$helloWorld.set_hello_code_271", %Int32* %"$msgobj_v_273", align 4
  store i8* %"$msgobj_257", i8** %e1, align 8, !dbg !28
  %"$e_275" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_277" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_275")
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 %"$_literal_cost_call_277", %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_255"
  %"$consume_282" = sub i64 %"$gasrem_278", %"$_literal_cost_call_277"
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$execptr_load_283" = load i8*, i8** @_execptr, align 8
  %"$e_284" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_283", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_284"), !dbg !29
  br label %"$matchsucc_188"

"$empty_default_192":                             ; preds = %"$have_gas_186"
  br label %"$matchsucc_188"

"$matchsucc_188":                                 ; preds = %"$have_gas_281", %"$have_gas_229", %"$empty_default_192"
  ret void
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setHello(i8* %0) !dbg !30 {
entry:
  %"$_amount_286" = getelementptr i8, i8* %0, i32 0
  %"$_amount_287" = bitcast i8* %"$_amount_286" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_287", align 8
  %"$_origin_288" = getelementptr i8, i8* %0, i32 16
  %"$_origin_289" = bitcast i8* %"$_origin_288" to [20 x i8]*
  %"$_sender_290" = getelementptr i8, i8* %0, i32 36
  %"$_sender_291" = bitcast i8* %"$_sender_290" to [20 x i8]*
  %"$msg_292" = getelementptr i8, i8* %0, i32 56
  %"$msg_293" = bitcast i8* %"$msg_292" to %String*
  %msg = load %String, %String* %"$msg_293", align 8
  call void @"$setHello_162"(%Uint128 %_amount, [20 x i8]* %"$_origin_289", [20 x i8]* %"$_sender_291", %String %msg), !dbg !31
  ret void
}

define internal void @"$getHello_294"(%Uint128 %_amount, [20 x i8]* %"$_origin_295", [20 x i8]* %"$_sender_296") !dbg !32 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_295", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_296", align 1
  %r = alloca %String, align 8
  %"$execptr_load_298" = load i8*, i8** @_execptr, align 8
  %"$r_call_299" = call i8* @_fetch_field(i8* %"$execptr_load_298", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_297", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i32 1), !dbg !33
  %"$r_300" = bitcast i8* %"$r_call_299" to %String*
  %"$r_301" = load %String, %String* %"$r_300", align 8
  store %String %"$r_301", %String* %r, align 8
  %"$_literal_cost_r_302" = alloca %String, align 8
  %"$r_303" = load %String, %String* %r, align 8
  store %String %"$r_303", %String* %"$_literal_cost_r_302", align 8
  %"$$_literal_cost_r_302_304" = bitcast %String* %"$_literal_cost_r_302" to i8*
  %"$_literal_cost_call_305" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_23", i8* %"$$_literal_cost_r_302_304")
  %"$gasadd_306" = add i64 %"$_literal_cost_call_305", 0
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 %"$gasadd_306", %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %entry
  %"$consume_311" = sub i64 %"$gasrem_307", %"$gasadd_306"
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_310"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_315"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %"$msgobj_322_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_322_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_322_salloc_load", i64 81)
  %"$msgobj_322_salloc" = bitcast i8* %"$msgobj_322_salloc_salloc" to [81 x i8]*
  %"$msgobj_322" = bitcast [81 x i8]* %"$msgobj_322_salloc" to i8*
  store i8 2, i8* %"$msgobj_322", align 1
  %"$msgobj_fname_324" = getelementptr i8, i8* %"$msgobj_322", i32 1
  %"$msgobj_fname_325" = bitcast i8* %"$msgobj_fname_324" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_323", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_325", align 8
  %"$msgobj_td_326" = getelementptr i8, i8* %"$msgobj_322", i32 17
  %"$msgobj_td_327" = bitcast i8* %"$msgobj_td_326" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_327", align 8
  %"$msgobj_v_329" = getelementptr i8, i8* %"$msgobj_322", i32 25
  %"$msgobj_v_330" = bitcast i8* %"$msgobj_v_329" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_328", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_330", align 8
  %"$msgobj_fname_332" = getelementptr i8, i8* %"$msgobj_322", i32 41
  %"$msgobj_fname_333" = bitcast i8* %"$msgobj_fname_332" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_331", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_333", align 8
  %"$msgobj_td_334" = getelementptr i8, i8* %"$msgobj_322", i32 57
  %"$msgobj_td_335" = bitcast i8* %"$msgobj_td_334" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_335", align 8
  %"$r_336" = load %String, %String* %r, align 8
  %"$msgobj_v_337" = getelementptr i8, i8* %"$msgobj_322", i32 65
  %"$msgobj_v_338" = bitcast i8* %"$msgobj_v_337" to %String*
  store %String %"$r_336", %String* %"$msgobj_v_338", align 8
  store i8* %"$msgobj_322", i8** %e, align 8, !dbg !34
  %"$e_340" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_342" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_340")
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 %"$_literal_cost_call_342", %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_320"
  %"$consume_347" = sub i64 %"$gasrem_343", %"$_literal_cost_call_342"
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %"$execptr_load_348" = load i8*, i8** @_execptr, align 8
  %"$e_349" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_348", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_349"), !dbg !35
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @getHello(i8* %0) !dbg !36 {
entry:
  %"$_amount_351" = getelementptr i8, i8* %0, i32 0
  %"$_amount_352" = bitcast i8* %"$_amount_351" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_352", align 8
  %"$_origin_353" = getelementptr i8, i8* %0, i32 16
  %"$_origin_354" = bitcast i8* %"$_origin_353" to [20 x i8]*
  %"$_sender_355" = getelementptr i8, i8* %0, i32 36
  %"$_sender_356" = bitcast i8* %"$_sender_355" to [20 x i8]*
  call void @"$getHello_294"(%Uint128 %_amount, [20 x i8]* %"$_origin_354", [20 x i8]* %"$_sender_356"), !dbg !37
  ret void
}

define internal void @"$multipleMsgs_357"(%Uint128 %_amount, [20 x i8]* %"$_origin_358", [20 x i8]* %"$_sender_359") !dbg !38 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_358", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_359", align 1
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %entry
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %"$msgobj_370_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_370_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_370_salloc_load", i64 125)
  %"$msgobj_370_salloc" = bitcast i8* %"$msgobj_370_salloc_salloc" to [125 x i8]*
  %"$msgobj_370" = bitcast [125 x i8]* %"$msgobj_370_salloc" to i8*
  store i8 3, i8* %"$msgobj_370", align 1
  %"$msgobj_fname_372" = getelementptr i8, i8* %"$msgobj_370", i32 1
  %"$msgobj_fname_373" = bitcast i8* %"$msgobj_fname_372" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_371", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_373", align 8
  %"$msgobj_td_374" = getelementptr i8, i8* %"$msgobj_370", i32 17
  %"$msgobj_td_375" = bitcast i8* %"$msgobj_td_374" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_375", align 8
  %"$msgobj_v_377" = getelementptr i8, i8* %"$msgobj_370", i32 25
  %"$msgobj_v_378" = bitcast i8* %"$msgobj_v_377" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_376", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_378", align 8
  %"$msgobj_fname_380" = getelementptr i8, i8* %"$msgobj_370", i32 41
  %"$msgobj_fname_381" = bitcast i8* %"$msgobj_fname_380" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_379", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_381", align 8
  %"$msgobj_td_382" = getelementptr i8, i8* %"$msgobj_370", i32 57
  %"$msgobj_td_383" = bitcast i8* %"$msgobj_td_382" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_383", align 8
  %"$msgobj_v_384" = getelementptr i8, i8* %"$msgobj_370", i32 65
  %"$msgobj_v_385" = bitcast i8* %"$msgobj_v_384" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_385", align 1
  %"$msgobj_fname_387" = getelementptr i8, i8* %"$msgobj_370", i32 85
  %"$msgobj_fname_388" = bitcast i8* %"$msgobj_fname_387" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_386", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_388", align 8
  %"$msgobj_td_389" = getelementptr i8, i8* %"$msgobj_370", i32 101
  %"$msgobj_td_390" = bitcast i8* %"$msgobj_td_389" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_390", align 8
  %"$msgobj_v_391" = getelementptr i8, i8* %"$msgobj_370", i32 109
  %"$msgobj_v_392" = bitcast i8* %"$msgobj_v_391" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_392", align 8
  store i8* %"$msgobj_370", i8** %msg1, align 8, !dbg !39
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_368"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_397"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$msgobj_404_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_404_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_404_salloc_load", i64 125)
  %"$msgobj_404_salloc" = bitcast i8* %"$msgobj_404_salloc_salloc" to [125 x i8]*
  %"$msgobj_404" = bitcast [125 x i8]* %"$msgobj_404_salloc" to i8*
  store i8 3, i8* %"$msgobj_404", align 1
  %"$msgobj_fname_406" = getelementptr i8, i8* %"$msgobj_404", i32 1
  %"$msgobj_fname_407" = bitcast i8* %"$msgobj_fname_406" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_405", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_407", align 8
  %"$msgobj_td_408" = getelementptr i8, i8* %"$msgobj_404", i32 17
  %"$msgobj_td_409" = bitcast i8* %"$msgobj_td_408" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_409", align 8
  %"$msgobj_v_411" = getelementptr i8, i8* %"$msgobj_404", i32 25
  %"$msgobj_v_412" = bitcast i8* %"$msgobj_v_411" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_410", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_412", align 8
  %"$msgobj_fname_414" = getelementptr i8, i8* %"$msgobj_404", i32 41
  %"$msgobj_fname_415" = bitcast i8* %"$msgobj_fname_414" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_413", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_415", align 8
  %"$msgobj_td_416" = getelementptr i8, i8* %"$msgobj_404", i32 57
  %"$msgobj_td_417" = bitcast i8* %"$msgobj_td_416" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_417", align 8
  %"$msgobj_v_418" = getelementptr i8, i8* %"$msgobj_404", i32 65
  %"$msgobj_v_419" = bitcast i8* %"$msgobj_v_418" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_419", align 1
  %"$msgobj_fname_421" = getelementptr i8, i8* %"$msgobj_404", i32 85
  %"$msgobj_fname_422" = bitcast i8* %"$msgobj_fname_421" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_420", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_422", align 8
  %"$msgobj_td_423" = getelementptr i8, i8* %"$msgobj_404", i32 101
  %"$msgobj_td_424" = bitcast i8* %"$msgobj_td_423" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_424", align 8
  %"$msgobj_v_425" = getelementptr i8, i8* %"$msgobj_404", i32 109
  %"$msgobj_v_426" = bitcast i8* %"$msgobj_v_425" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_426", align 8
  store i8* %"$msgobj_404", i8** %msg2, align 8, !dbg !40
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_402"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_431"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$helloWorld.one_msg_0" = alloca %TName_List_Message*, align 8
  %"$helloWorld.one_msg_438" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8
  %"$helloWorld.one_msg_fptr_439" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_438", 0
  %"$helloWorld.one_msg_envptr_440" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_438", 1
  %"$msg1_441" = load i8*, i8** %msg1, align 8
  %"$helloWorld.one_msg_call_442" = call %TName_List_Message* %"$helloWorld.one_msg_fptr_439"(i8* %"$helloWorld.one_msg_envptr_440", i8* %"$msg1_441"), !dbg !41
  store %TName_List_Message* %"$helloWorld.one_msg_call_442", %TName_List_Message** %"$helloWorld.one_msg_0", align 8, !dbg !41
  %"$$helloWorld.one_msg_0_443" = load %TName_List_Message*, %TName_List_Message** %"$helloWorld.one_msg_0", align 8
  store %TName_List_Message* %"$$helloWorld.one_msg_0_443", %TName_List_Message** %msgs1, align 8, !dbg !41
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_436"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %"$msg2_454" = load i8*, i8** %msg2, align 8
  %"$msgs1_455" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_456_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_456_salloc" = call i8* @_salloc(i8* %"$adtval_456_load", i64 17)
  %"$adtval_456" = bitcast i8* %"$adtval_456_salloc" to %CName_Cons_Message*
  %"$adtgep_457" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_456", i32 0, i32 0
  store i8 0, i8* %"$adtgep_457", align 1
  %"$adtgep_458" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_456", i32 0, i32 1
  store i8* %"$msg2_454", i8** %"$adtgep_458", align 8
  %"$adtgep_459" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_456", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_455", %TName_List_Message** %"$adtgep_459", align 8
  %"$adtptr_460" = bitcast %CName_Cons_Message* %"$adtval_456" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_460", %TName_List_Message** %msgs2, align 8, !dbg !42
  %"$msgs2_461" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_461_462" = bitcast %TName_List_Message* %"$msgs2_461" to i8*
  %"$_literal_cost_call_463" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", i8* %"$$msgs2_461_462")
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 %"$_literal_cost_call_463", %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_452"
  %"$consume_468" = sub i64 %"$gasrem_464", %"$_literal_cost_call_463"
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %"$execptr_load_469" = load i8*, i8** @_execptr, align 8
  %"$msgs2_470" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_469", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %TName_List_Message* %"$msgs2_470"), !dbg !43
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @multipleMsgs(i8* %0) !dbg !44 {
entry:
  %"$_amount_472" = getelementptr i8, i8* %0, i32 0
  %"$_amount_473" = bitcast i8* %"$_amount_472" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_473", align 8
  %"$_origin_474" = getelementptr i8, i8* %0, i32 16
  %"$_origin_475" = bitcast i8* %"$_origin_474" to [20 x i8]*
  %"$_sender_476" = getelementptr i8, i8* %0, i32 36
  %"$_sender_477" = bitcast i8* %"$_sender_476" to [20 x i8]*
  call void @"$multipleMsgs_357"(%Uint128 %_amount, [20 x i8]* %"$_origin_475", [20 x i8]* %"$_sender_477"), !dbg !45
  ret void
}

define internal void @"$contrAddr_478"(%Uint128 %_amount, [20 x i8]* %"$_origin_479", [20 x i8]* %"$_sender_480") !dbg !46 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_479", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_480", align 1
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %entry
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %"$have_gas_484"
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  %"$msgobj_491_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_491_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_491_salloc_load", i64 85)
  %"$msgobj_491_salloc" = bitcast i8* %"$msgobj_491_salloc_salloc" to [85 x i8]*
  %"$msgobj_491" = bitcast [85 x i8]* %"$msgobj_491_salloc" to i8*
  store i8 2, i8* %"$msgobj_491", align 1
  %"$msgobj_fname_493" = getelementptr i8, i8* %"$msgobj_491", i32 1
  %"$msgobj_fname_494" = bitcast i8* %"$msgobj_fname_493" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_492", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_494", align 8
  %"$msgobj_td_495" = getelementptr i8, i8* %"$msgobj_491", i32 17
  %"$msgobj_td_496" = bitcast i8* %"$msgobj_td_495" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_496", align 8
  %"$msgobj_v_498" = getelementptr i8, i8* %"$msgobj_491", i32 25
  %"$msgobj_v_499" = bitcast i8* %"$msgobj_v_498" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_497", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_499", align 8
  %"$msgobj_fname_501" = getelementptr i8, i8* %"$msgobj_491", i32 41
  %"$msgobj_fname_502" = bitcast i8* %"$msgobj_fname_501" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_500", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_502", align 8
  %"$msgobj_td_503" = getelementptr i8, i8* %"$msgobj_491", i32 57
  %"$msgobj_td_504" = bitcast i8* %"$msgobj_td_503" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_504", align 8
  %"$_this_address_505" = load [20 x i8], [20 x i8]* @_cparam__this_address, align 1
  %"$msgobj_v_506" = getelementptr i8, i8* %"$msgobj_491", i32 65
  %"$msgobj_v_507" = bitcast i8* %"$msgobj_v_506" to [20 x i8]*
  store [20 x i8] %"$_this_address_505", [20 x i8]* %"$msgobj_v_507", align 1
  store i8* %"$msgobj_491", i8** %msg1, align 8, !dbg !47
  %"$msg1_509" = load i8*, i8** %msg1, align 8
  %"$_literal_cost_call_511" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$msg1_509")
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 %"$_literal_cost_call_511", %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_489"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_489"
  %"$consume_516" = sub i64 %"$gasrem_512", %"$_literal_cost_call_511"
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$execptr_load_517" = load i8*, i8** @_execptr, align 8
  %"$msg1_518" = load i8*, i8** %msg1, align 8
  call void @_event(i8* %"$execptr_load_517", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$msg1_518"), !dbg !48
  ret void
}

define void @contrAddr(i8* %0) !dbg !49 {
entry:
  %"$_amount_520" = getelementptr i8, i8* %0, i32 0
  %"$_amount_521" = bitcast i8* %"$_amount_520" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_521", align 8
  %"$_origin_522" = getelementptr i8, i8* %0, i32 16
  %"$_origin_523" = bitcast i8* %"$_origin_522" to [20 x i8]*
  %"$_sender_524" = getelementptr i8, i8* %0, i32 36
  %"$_sender_525" = bitcast i8* %"$_sender_524" to [20 x i8]*
  call void @"$contrAddr_478"(%Uint128 %_amount, [20 x i8]* %"$_origin_523", [20 x i8]* %"$_sender_525"), !dbg !50
  ret void
}

define internal void @"$printContrParams_526"(%Uint128 %_amount, [20 x i8]* %"$_origin_527", [20 x i8]* %"$_sender_528") !dbg !51 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_527", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_528", align 1
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %entry
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 1, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_532"
  %"$consume_538" = sub i64 %"$gasrem_534", 1
  store i64 %"$consume_538", i64* @_gasrem, align 8
  %"$msgobj_539_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_539_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_539_salloc_load", i64 313)
  %"$msgobj_539_salloc" = bitcast i8* %"$msgobj_539_salloc_salloc" to [313 x i8]*
  %"$msgobj_539" = bitcast [313 x i8]* %"$msgobj_539_salloc" to i8*
  store i8 8, i8* %"$msgobj_539", align 1
  %"$msgobj_fname_541" = getelementptr i8, i8* %"$msgobj_539", i32 1
  %"$msgobj_fname_542" = bitcast i8* %"$msgobj_fname_541" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_540", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_542", align 8
  %"$msgobj_td_543" = getelementptr i8, i8* %"$msgobj_539", i32 17
  %"$msgobj_td_544" = bitcast i8* %"$msgobj_td_543" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_544", align 8
  %"$msgobj_v_546" = getelementptr i8, i8* %"$msgobj_539", i32 25
  %"$msgobj_v_547" = bitcast i8* %"$msgobj_v_546" to %String*
  store %String { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$stringlit_545", i32 0, i32 0), i32 14 }, %String* %"$msgobj_v_547", align 8
  %"$msgobj_fname_549" = getelementptr i8, i8* %"$msgobj_539", i32 41
  %"$msgobj_fname_550" = bitcast i8* %"$msgobj_fname_549" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_548", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_550", align 8
  %"$msgobj_td_551" = getelementptr i8, i8* %"$msgobj_539", i32 57
  %"$msgobj_td_552" = bitcast i8* %"$msgobj_td_551" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_552", align 8
  %"$owner_553" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  %"$msgobj_v_554" = getelementptr i8, i8* %"$msgobj_539", i32 65
  %"$msgobj_v_555" = bitcast i8* %"$msgobj_v_554" to [20 x i8]*
  store [20 x i8] %"$owner_553", [20 x i8]* %"$msgobj_v_555", align 1
  %"$msgobj_fname_557" = getelementptr i8, i8* %"$msgobj_539", i32 85
  %"$msgobj_fname_558" = bitcast i8* %"$msgobj_fname_557" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_556", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_558", align 8
  %"$msgobj_td_559" = getelementptr i8, i8* %"$msgobj_539", i32 101
  %"$msgobj_td_560" = bitcast i8* %"$msgobj_td_559" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_560", align 8
  %"$name_561" = load %String, %String* @_cparam_name, align 8
  %"$msgobj_v_562" = getelementptr i8, i8* %"$msgobj_539", i32 109
  %"$msgobj_v_563" = bitcast i8* %"$msgobj_v_562" to %String*
  store %String %"$name_561", %String* %"$msgobj_v_563", align 8
  %"$msgobj_fname_565" = getelementptr i8, i8* %"$msgobj_539", i32 125
  %"$msgobj_fname_566" = bitcast i8* %"$msgobj_fname_565" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_564", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_566", align 8
  %"$msgobj_td_567" = getelementptr i8, i8* %"$msgobj_539", i32 141
  %"$msgobj_td_568" = bitcast i8* %"$msgobj_td_567" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ** %"$msgobj_td_568", align 8
  %"$uint256_569" = load %Uint256, %Uint256* @_cparam_uint256, align 8
  %"$msgobj_v_570" = getelementptr i8, i8* %"$msgobj_539", i32 149
  %"$msgobj_v_571" = bitcast i8* %"$msgobj_v_570" to %Uint256*
  store %Uint256 %"$uint256_569", %Uint256* %"$msgobj_v_571", align 8
  %"$msgobj_fname_573" = getelementptr i8, i8* %"$msgobj_539", i32 181
  %"$msgobj_fname_574" = bitcast i8* %"$msgobj_fname_573" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_572", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_574", align 8
  %"$msgobj_td_575" = getelementptr i8, i8* %"$msgobj_539", i32 197
  %"$msgobj_td_576" = bitcast i8* %"$msgobj_td_575" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_576", align 8
  %"$int32_577" = load %Int32, %Int32* @_cparam_int32, align 4
  %"$msgobj_v_578" = getelementptr i8, i8* %"$msgobj_539", i32 205
  %"$msgobj_v_579" = bitcast i8* %"$msgobj_v_578" to %Int32*
  store %Int32 %"$int32_577", %Int32* %"$msgobj_v_579", align 4
  %"$msgobj_fname_581" = getelementptr i8, i8* %"$msgobj_539", i32 209
  %"$msgobj_fname_582" = bitcast i8* %"$msgobj_fname_581" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_580", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_582", align 8
  %"$msgobj_td_583" = getelementptr i8, i8* %"$msgobj_539", i32 225
  %"$msgobj_td_584" = bitcast i8* %"$msgobj_td_583" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ** %"$msgobj_td_584", align 8
  %"$bstr_585" = load %Bystr, %Bystr* @_cparam_bstr, align 8
  %"$msgobj_v_586" = getelementptr i8, i8* %"$msgobj_539", i32 233
  %"$msgobj_v_587" = bitcast i8* %"$msgobj_v_586" to %Bystr*
  store %Bystr %"$bstr_585", %Bystr* %"$msgobj_v_587", align 8
  %"$msgobj_fname_589" = getelementptr i8, i8* %"$msgobj_539", i32 249
  %"$msgobj_fname_590" = bitcast i8* %"$msgobj_fname_589" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_588", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_590", align 8
  %"$msgobj_td_591" = getelementptr i8, i8* %"$msgobj_539", i32 265
  %"$msgobj_td_592" = bitcast i8* %"$msgobj_td_591" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ** %"$msgobj_td_592", align 8
  %"$all_names_593" = load %TName_List_String*, %TName_List_String** @_cparam_all_names, align 8
  %"$msgobj_v_594" = getelementptr i8, i8* %"$msgobj_539", i32 273
  %"$msgobj_v_595" = bitcast i8* %"$msgobj_v_594" to %TName_List_String**
  store %TName_List_String* %"$all_names_593", %TName_List_String** %"$msgobj_v_595", align 8
  %"$msgobj_fname_597" = getelementptr i8, i8* %"$msgobj_539", i32 281
  %"$msgobj_fname_598" = bitcast i8* %"$msgobj_fname_597" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_596", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_598", align 8
  %"$msgobj_td_599" = getelementptr i8, i8* %"$msgobj_539", i32 297
  %"$msgobj_td_600" = bitcast i8* %"$msgobj_td_599" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ** %"$msgobj_td_600", align 8
  %"$pear_601" = load %TName_Pair_Int128_String*, %TName_Pair_Int128_String** @_cparam_pear, align 8
  %"$msgobj_v_602" = getelementptr i8, i8* %"$msgobj_539", i32 305
  %"$msgobj_v_603" = bitcast i8* %"$msgobj_v_602" to %TName_Pair_Int128_String**
  store %TName_Pair_Int128_String* %"$pear_601", %TName_Pair_Int128_String** %"$msgobj_v_603", align 8
  store i8* %"$msgobj_539", i8** %e, align 8, !dbg !52
  %"$e_605" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_607" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_605")
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 %"$_literal_cost_call_607", %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_537"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_537"
  %"$consume_612" = sub i64 %"$gasrem_608", %"$_literal_cost_call_607"
  store i64 %"$consume_612", i64* @_gasrem, align 8
  %"$execptr_load_613" = load i8*, i8** @_execptr, align 8
  %"$e_614" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_613", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_614"), !dbg !53
  ret void
}

define void @printContrParams(i8* %0) !dbg !54 {
entry:
  %"$_amount_616" = getelementptr i8, i8* %0, i32 0
  %"$_amount_617" = bitcast i8* %"$_amount_616" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_617", align 8
  %"$_origin_618" = getelementptr i8, i8* %0, i32 16
  %"$_origin_619" = bitcast i8* %"$_origin_618" to [20 x i8]*
  %"$_sender_620" = getelementptr i8, i8* %0, i32 36
  %"$_sender_621" = bitcast i8* %"$_sender_620" to [20 x i8]*
  call void @"$printContrParams_526"(%Uint128 %_amount, [20 x i8]* %"$_origin_619", [20 x i8]* %"$_sender_621"), !dbg !55
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
