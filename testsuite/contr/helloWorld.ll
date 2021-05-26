

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
%"$ParamDescr_616" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_617" = type { %ParamDescrString, i32, %"$ParamDescr_616"* }
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
@"$stringlit_200" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_205" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_208" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_238" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_252" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_257" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_260" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_291" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_317" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_322" = unnamed_addr constant [10 x i8] c"getHello()"
@"$stringlit_325" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_365" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_370" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_373" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_380" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_399" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_404" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_407" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_414" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_486" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_491" = unnamed_addr constant [15 x i8] c"ContractAddress"
@"$stringlit_494" = unnamed_addr constant [4 x i8] c"addr"
@"$stringlit_534" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_539" = unnamed_addr constant [14 x i8] c"AllContrparams"
@"$stringlit_542" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_550" = unnamed_addr constant [4 x i8] c"name"
@"$stringlit_558" = unnamed_addr constant [7 x i8] c"uint256"
@"$stringlit_566" = unnamed_addr constant [5 x i8] c"int32"
@"$stringlit_574" = unnamed_addr constant [4 x i8] c"bstr"
@"$stringlit_582" = unnamed_addr constant [9 x i8] c"all_names"
@"$stringlit_590" = unnamed_addr constant [4 x i8] c"pear"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 20
@"$pname__scilla_version_618" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_619" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname_owner_620" = unnamed_addr constant [5 x i8] c"owner"
@"$pname_name_621" = unnamed_addr constant [4 x i8] c"name"
@"$pname_uint256_622" = unnamed_addr constant [7 x i8] c"uint256"
@"$pname_int32_623" = unnamed_addr constant [5 x i8] c"int32"
@"$pname_bstr_624" = unnamed_addr constant [4 x i8] c"bstr"
@"$pname_all_names_625" = unnamed_addr constant [9 x i8] c"all_names"
@"$pname_pear_626" = unnamed_addr constant [4 x i8] c"pear"
@_contract_parameters = constant [9 x %"$ParamDescr_616"] [%"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_618", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_619", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_owner_620", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_name_621", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_String_23" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_uint256_622", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint256_21" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_int32_623", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_7" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_bstr_624", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr_33" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$pname_all_names_625", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_pear_626", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40" }]
@_contract_parameters_length = constant i32 9
@"$tpname__amount_627" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_628" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_629" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_msg_630" = unnamed_addr constant [3 x i8] c"msg"
@"$tparams_setHello_631" = unnamed_addr constant [4 x %"$ParamDescr_616"] [%"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_627", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_628", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_629", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_msg_630", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_String_23" }]
@"$tname_setHello_632" = unnamed_addr constant [8 x i8] c"setHello"
@"$tpname__amount_633" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_634" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_635" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_getHello_636" = unnamed_addr constant [3 x %"$ParamDescr_616"] [%"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_633", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_634", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_635", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_getHello_637" = unnamed_addr constant [8 x i8] c"getHello"
@"$tpname__amount_638" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_639" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_640" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_multipleMsgs_641" = unnamed_addr constant [3 x %"$ParamDescr_616"] [%"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_638", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_639", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_640", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_multipleMsgs_642" = unnamed_addr constant [12 x i8] c"multipleMsgs"
@"$tpname__amount_643" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_644" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_645" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_contrAddr_646" = unnamed_addr constant [3 x %"$ParamDescr_616"] [%"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_643", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_644", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_645", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_contrAddr_647" = unnamed_addr constant [9 x i8] c"contrAddr"
@"$tpname__amount_648" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_649" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_650" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_printContrParams_651" = unnamed_addr constant [3 x %"$ParamDescr_616"] [%"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_648", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_649", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_616" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_650", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_printContrParams_652" = unnamed_addr constant [16 x i8] c"printContrParams"
@_transition_parameters = constant [5 x %"$TransDescr_617"] [%"$TransDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setHello_632", i32 0, i32 0), i32 8 }, i32 4, %"$ParamDescr_616"* getelementptr inbounds ([4 x %"$ParamDescr_616"], [4 x %"$ParamDescr_616"]* @"$tparams_setHello_631", i32 0, i32 0) }, %"$TransDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_getHello_637", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_616"* getelementptr inbounds ([3 x %"$ParamDescr_616"], [3 x %"$ParamDescr_616"]* @"$tparams_getHello_636", i32 0, i32 0) }, %"$TransDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_multipleMsgs_642", i32 0, i32 0), i32 12 }, i32 3, %"$ParamDescr_616"* getelementptr inbounds ([3 x %"$ParamDescr_616"], [3 x %"$ParamDescr_616"]* @"$tparams_multipleMsgs_641", i32 0, i32 0) }, %"$TransDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_contrAddr_647", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_616"* getelementptr inbounds ([3 x %"$ParamDescr_616"], [3 x %"$ParamDescr_616"]* @"$tparams_contrAddr_646", i32 0, i32 0) }, %"$TransDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$tname_printContrParams_652", i32 0, i32 0), i32 16 }, i32 3, %"$ParamDescr_616"* getelementptr inbounds ([3 x %"$ParamDescr_616"], [3 x %"$ParamDescr_616"]* @"$tparams_printContrParams_651", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define internal %TName_List_Message* @"$fundef_1"(%"$$fundef_1_env_90"* %0, i8* %1) {
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
  store %TName_List_Message* %"$adtptr_103", %TName_List_Message** %nil_msg, align 8
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
  store %TName_List_Message* %"$adtptr_114", %TName_List_Message** %"$retval_2", align 8
  %"$$retval_2_115" = load %TName_List_Message*, %TName_List_Message** %"$retval_2", align 8
  ret %TName_List_Message* %"$$retval_2_115"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
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
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_1_env_90"*, i8*)* @"$fundef_1" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_119"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @helloWorld.not_owner_code, align 4
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @helloWorld.set_hello_code, align 4
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_139", i32 0, i32 0), i32 8 }, %String* @helloWorld.smsg, align 8
  ret void
}

define void @_init_state() {
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
  store %String %"$name_145", %String* %"$welcome_msg_3", align 8
  %"$execptr_load_146" = load i8*, i8** @_execptr, align 8
  %"$$welcome_msg_3_148" = load %String, %String* %"$welcome_msg_3", align 8
  %"$update_value_149" = alloca %String, align 8
  store %String %"$$welcome_msg_3_148", %String* %"$update_value_149", align 8
  %"$update_value_150" = bitcast %String* %"$update_value_149" to i8*
  call void @_update_field(i8* %"$execptr_load_146", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_147", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_150")
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
  store %String %"$helloWorld.smsg_156", %String* %"$sendoff_msg_4", align 8
  %"$execptr_load_157" = load i8*, i8** @_execptr, align 8
  %"$$sendoff_msg_4_159" = load %String, %String* %"$sendoff_msg_4", align 8
  %"$update_value_160" = alloca %String, align 8
  store %String %"$$sendoff_msg_4_159", %String* %"$update_value_160", align 8
  %"$update_value_161" = bitcast %String* %"$update_value_160" to i8*
  call void @_update_field(i8* %"$execptr_load_157", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$sendoff_msg_158", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_161")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setHello_162"(%Uint128 %_amount, [20 x i8]* %"$_origin_163", [20 x i8]* %"$_sender_164", %String %msg) {
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
  %"$execptr_load_170" = load i8*, i8** @_execptr, align 8
  %"$eq_owner_171" = alloca [20 x i8], align 1
  %"$owner_172" = load [20 x i8], [20 x i8]* @owner, align 1
  store [20 x i8] %"$owner_172", [20 x i8]* %"$eq_owner_171", align 1
  %"$$eq_owner_171_173" = bitcast [20 x i8]* %"$eq_owner_171" to i8*
  %"$eq__sender_174" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_174", align 1
  %"$$eq__sender_174_175" = bitcast [20 x i8]* %"$eq__sender_174" to i8*
  %"$eq_call_176" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_170", i32 20, i8* %"$$eq_owner_171_173", i8* %"$$eq__sender_174_175")
  store %TName_Bool* %"$eq_call_176", %TName_Bool** %is_owner, align 8
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 2, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_168"
  %"$consume_181" = sub i64 %"$gasrem_177", 2
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %"$is_owner_183" = load %TName_Bool*, %TName_Bool** %is_owner, align 8
  %"$is_owner_tag_184" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_owner_183", i32 0, i32 0
  %"$is_owner_tag_185" = load i8, i8* %"$is_owner_tag_184", align 1
  switch i8 %"$is_owner_tag_185", label %"$empty_default_186" [
    i8 1, label %"$False_187"
    i8 0, label %"$True_227"
  ]

"$False_187":                                     ; preds = %"$have_gas_180"
  %"$is_owner_188" = bitcast %TName_Bool* %"$is_owner_183" to %CName_False*
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$False_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$False_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$msgobj_199_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_199_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_199_salloc_load", i64 69)
  %"$msgobj_199_salloc" = bitcast i8* %"$msgobj_199_salloc_salloc" to [69 x i8]*
  %"$msgobj_199" = bitcast [69 x i8]* %"$msgobj_199_salloc" to i8*
  store i8 2, i8* %"$msgobj_199", align 1
  %"$msgobj_fname_201" = getelementptr i8, i8* %"$msgobj_199", i32 1
  %"$msgobj_fname_202" = bitcast i8* %"$msgobj_fname_201" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_200", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_202", align 8
  %"$msgobj_td_203" = getelementptr i8, i8* %"$msgobj_199", i32 17
  %"$msgobj_td_204" = bitcast i8* %"$msgobj_td_203" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_204", align 8
  %"$msgobj_v_206" = getelementptr i8, i8* %"$msgobj_199", i32 25
  %"$msgobj_v_207" = bitcast i8* %"$msgobj_v_206" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_205", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_207", align 8
  %"$msgobj_fname_209" = getelementptr i8, i8* %"$msgobj_199", i32 41
  %"$msgobj_fname_210" = bitcast i8* %"$msgobj_fname_209" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_208", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_210", align 8
  %"$msgobj_td_211" = getelementptr i8, i8* %"$msgobj_199", i32 57
  %"$msgobj_td_212" = bitcast i8* %"$msgobj_td_211" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_212", align 8
  %"$helloWorld.not_owner_code_213" = load %Int32, %Int32* @helloWorld.not_owner_code, align 4
  %"$msgobj_v_214" = getelementptr i8, i8* %"$msgobj_199", i32 65
  %"$msgobj_v_215" = bitcast i8* %"$msgobj_v_214" to %Int32*
  store %Int32 %"$helloWorld.not_owner_code_213", %Int32* %"$msgobj_v_215", align 4
  store i8* %"$msgobj_199", i8** %e, align 8
  %"$e_217" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_219" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_217")
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 %"$_literal_cost_call_219", %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_197"
  %"$consume_224" = sub i64 %"$gasrem_220", %"$_literal_cost_call_219"
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %"$execptr_load_225" = load i8*, i8** @_execptr, align 8
  %"$e_226" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_225", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_226")
  br label %"$matchsucc_182"

"$True_227":                                      ; preds = %"$have_gas_180"
  %"$is_owner_228" = bitcast %TName_Bool* %"$is_owner_183" to %CName_True*
  %"$_literal_cost_msg_229" = alloca %String, align 8
  store %String %msg, %String* %"$_literal_cost_msg_229", align 8
  %"$$_literal_cost_msg_229_230" = bitcast %String* %"$_literal_cost_msg_229" to i8*
  %"$_literal_cost_call_231" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_23", i8* %"$$_literal_cost_msg_229_230")
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 %"$_literal_cost_call_231", %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$True_227"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$True_227"
  %"$consume_236" = sub i64 %"$gasrem_232", %"$_literal_cost_call_231"
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %"$execptr_load_237" = load i8*, i8** @_execptr, align 8
  %"$update_value_239" = alloca %String, align 8
  store %String %msg, %String* %"$update_value_239", align 8
  %"$update_value_240" = bitcast %String* %"$update_value_239" to i8*
  call void @_update_field(i8* %"$execptr_load_237", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_238", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_240")
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_235"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_244"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %"$msgobj_251_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_251_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_251_salloc_load", i64 69)
  %"$msgobj_251_salloc" = bitcast i8* %"$msgobj_251_salloc_salloc" to [69 x i8]*
  %"$msgobj_251" = bitcast [69 x i8]* %"$msgobj_251_salloc" to i8*
  store i8 2, i8* %"$msgobj_251", align 1
  %"$msgobj_fname_253" = getelementptr i8, i8* %"$msgobj_251", i32 1
  %"$msgobj_fname_254" = bitcast i8* %"$msgobj_fname_253" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_252", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_254", align 8
  %"$msgobj_td_255" = getelementptr i8, i8* %"$msgobj_251", i32 17
  %"$msgobj_td_256" = bitcast i8* %"$msgobj_td_255" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_256", align 8
  %"$msgobj_v_258" = getelementptr i8, i8* %"$msgobj_251", i32 25
  %"$msgobj_v_259" = bitcast i8* %"$msgobj_v_258" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_257", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_259", align 8
  %"$msgobj_fname_261" = getelementptr i8, i8* %"$msgobj_251", i32 41
  %"$msgobj_fname_262" = bitcast i8* %"$msgobj_fname_261" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_260", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_262", align 8
  %"$msgobj_td_263" = getelementptr i8, i8* %"$msgobj_251", i32 57
  %"$msgobj_td_264" = bitcast i8* %"$msgobj_td_263" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_264", align 8
  %"$helloWorld.set_hello_code_265" = load %Int32, %Int32* @helloWorld.set_hello_code, align 4
  %"$msgobj_v_266" = getelementptr i8, i8* %"$msgobj_251", i32 65
  %"$msgobj_v_267" = bitcast i8* %"$msgobj_v_266" to %Int32*
  store %Int32 %"$helloWorld.set_hello_code_265", %Int32* %"$msgobj_v_267", align 4
  store i8* %"$msgobj_251", i8** %e1, align 8
  %"$e_269" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_271" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_269")
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 %"$_literal_cost_call_271", %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_249"
  %"$consume_276" = sub i64 %"$gasrem_272", %"$_literal_cost_call_271"
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %"$execptr_load_277" = load i8*, i8** @_execptr, align 8
  %"$e_278" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_277", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_278")
  br label %"$matchsucc_182"

"$empty_default_186":                             ; preds = %"$have_gas_180"
  br label %"$matchsucc_182"

"$matchsucc_182":                                 ; preds = %"$have_gas_275", %"$have_gas_223", %"$empty_default_186"
  ret void
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setHello(i8* %0) {
entry:
  %"$_amount_280" = getelementptr i8, i8* %0, i32 0
  %"$_amount_281" = bitcast i8* %"$_amount_280" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_281", align 8
  %"$_origin_282" = getelementptr i8, i8* %0, i32 16
  %"$_origin_283" = bitcast i8* %"$_origin_282" to [20 x i8]*
  %"$_sender_284" = getelementptr i8, i8* %0, i32 36
  %"$_sender_285" = bitcast i8* %"$_sender_284" to [20 x i8]*
  %"$msg_286" = getelementptr i8, i8* %0, i32 56
  %"$msg_287" = bitcast i8* %"$msg_286" to %String*
  %msg = load %String, %String* %"$msg_287", align 8
  call void @"$setHello_162"(%Uint128 %_amount, [20 x i8]* %"$_origin_283", [20 x i8]* %"$_sender_285", %String %msg)
  ret void
}

define internal void @"$getHello_288"(%Uint128 %_amount, [20 x i8]* %"$_origin_289", [20 x i8]* %"$_sender_290") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_289", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_290", align 1
  %r = alloca %String, align 8
  %"$execptr_load_292" = load i8*, i8** @_execptr, align 8
  %"$r_call_293" = call i8* @_fetch_field(i8* %"$execptr_load_292", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_291", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i32 1)
  %"$r_294" = bitcast i8* %"$r_call_293" to %String*
  %"$r_295" = load %String, %String* %"$r_294", align 8
  store %String %"$r_295", %String* %r, align 8
  %"$_literal_cost_r_296" = alloca %String, align 8
  %"$r_297" = load %String, %String* %r, align 8
  store %String %"$r_297", %String* %"$_literal_cost_r_296", align 8
  %"$$_literal_cost_r_296_298" = bitcast %String* %"$_literal_cost_r_296" to i8*
  %"$_literal_cost_call_299" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_23", i8* %"$$_literal_cost_r_296_298")
  %"$gasadd_300" = add i64 %"$_literal_cost_call_299", 0
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 %"$gasadd_300", %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %entry
  %"$consume_305" = sub i64 %"$gasrem_301", %"$gasadd_300"
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_304"
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_312" = icmp ugt i64 1, %"$gasrem_311"
  br i1 %"$gascmp_312", label %"$out_of_gas_313", label %"$have_gas_314"

"$out_of_gas_313":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_314"

"$have_gas_314":                                  ; preds = %"$out_of_gas_313", %"$have_gas_309"
  %"$consume_315" = sub i64 %"$gasrem_311", 1
  store i64 %"$consume_315", i64* @_gasrem, align 8
  %"$msgobj_316_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_316_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_316_salloc_load", i64 81)
  %"$msgobj_316_salloc" = bitcast i8* %"$msgobj_316_salloc_salloc" to [81 x i8]*
  %"$msgobj_316" = bitcast [81 x i8]* %"$msgobj_316_salloc" to i8*
  store i8 2, i8* %"$msgobj_316", align 1
  %"$msgobj_fname_318" = getelementptr i8, i8* %"$msgobj_316", i32 1
  %"$msgobj_fname_319" = bitcast i8* %"$msgobj_fname_318" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_317", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_319", align 8
  %"$msgobj_td_320" = getelementptr i8, i8* %"$msgobj_316", i32 17
  %"$msgobj_td_321" = bitcast i8* %"$msgobj_td_320" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_321", align 8
  %"$msgobj_v_323" = getelementptr i8, i8* %"$msgobj_316", i32 25
  %"$msgobj_v_324" = bitcast i8* %"$msgobj_v_323" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_322", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_324", align 8
  %"$msgobj_fname_326" = getelementptr i8, i8* %"$msgobj_316", i32 41
  %"$msgobj_fname_327" = bitcast i8* %"$msgobj_fname_326" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_325", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_327", align 8
  %"$msgobj_td_328" = getelementptr i8, i8* %"$msgobj_316", i32 57
  %"$msgobj_td_329" = bitcast i8* %"$msgobj_td_328" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_329", align 8
  %"$r_330" = load %String, %String* %r, align 8
  %"$msgobj_v_331" = getelementptr i8, i8* %"$msgobj_316", i32 65
  %"$msgobj_v_332" = bitcast i8* %"$msgobj_v_331" to %String*
  store %String %"$r_330", %String* %"$msgobj_v_332", align 8
  store i8* %"$msgobj_316", i8** %e, align 8
  %"$e_334" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_336" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_334")
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 %"$_literal_cost_call_336", %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_314"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_314"
  %"$consume_341" = sub i64 %"$gasrem_337", %"$_literal_cost_call_336"
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %"$execptr_load_342" = load i8*, i8** @_execptr, align 8
  %"$e_343" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_342", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_343")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @getHello(i8* %0) {
entry:
  %"$_amount_345" = getelementptr i8, i8* %0, i32 0
  %"$_amount_346" = bitcast i8* %"$_amount_345" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_346", align 8
  %"$_origin_347" = getelementptr i8, i8* %0, i32 16
  %"$_origin_348" = bitcast i8* %"$_origin_347" to [20 x i8]*
  %"$_sender_349" = getelementptr i8, i8* %0, i32 36
  %"$_sender_350" = bitcast i8* %"$_sender_349" to [20 x i8]*
  call void @"$getHello_288"(%Uint128 %_amount, [20 x i8]* %"$_origin_348", [20 x i8]* %"$_sender_350")
  ret void
}

define internal void @"$multipleMsgs_351"(%Uint128 %_amount, [20 x i8]* %"$_origin_352", [20 x i8]* %"$_sender_353") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_352", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_353", align 1
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %entry
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_357"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %"$msgobj_364_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_364_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_364_salloc_load", i64 125)
  %"$msgobj_364_salloc" = bitcast i8* %"$msgobj_364_salloc_salloc" to [125 x i8]*
  %"$msgobj_364" = bitcast [125 x i8]* %"$msgobj_364_salloc" to i8*
  store i8 3, i8* %"$msgobj_364", align 1
  %"$msgobj_fname_366" = getelementptr i8, i8* %"$msgobj_364", i32 1
  %"$msgobj_fname_367" = bitcast i8* %"$msgobj_fname_366" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_365", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_367", align 8
  %"$msgobj_td_368" = getelementptr i8, i8* %"$msgobj_364", i32 17
  %"$msgobj_td_369" = bitcast i8* %"$msgobj_td_368" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_369", align 8
  %"$msgobj_v_371" = getelementptr i8, i8* %"$msgobj_364", i32 25
  %"$msgobj_v_372" = bitcast i8* %"$msgobj_v_371" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_370", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_372", align 8
  %"$msgobj_fname_374" = getelementptr i8, i8* %"$msgobj_364", i32 41
  %"$msgobj_fname_375" = bitcast i8* %"$msgobj_fname_374" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_373", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_375", align 8
  %"$msgobj_td_376" = getelementptr i8, i8* %"$msgobj_364", i32 57
  %"$msgobj_td_377" = bitcast i8* %"$msgobj_td_376" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ** %"$msgobj_td_377", align 8
  %"$msgobj_v_378" = getelementptr i8, i8* %"$msgobj_364", i32 65
  %"$msgobj_v_379" = bitcast i8* %"$msgobj_v_378" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_379", align 1
  %"$msgobj_fname_381" = getelementptr i8, i8* %"$msgobj_364", i32 85
  %"$msgobj_fname_382" = bitcast i8* %"$msgobj_fname_381" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_380", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_382", align 8
  %"$msgobj_td_383" = getelementptr i8, i8* %"$msgobj_364", i32 101
  %"$msgobj_td_384" = bitcast i8* %"$msgobj_td_383" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_384", align 8
  %"$msgobj_v_385" = getelementptr i8, i8* %"$msgobj_364", i32 109
  %"$msgobj_v_386" = bitcast i8* %"$msgobj_v_385" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_386", align 8
  store i8* %"$msgobj_364", i8** %msg1, align 8
  %"$gasrem_388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_389" = icmp ugt i64 1, %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_362"
  %"$consume_392" = sub i64 %"$gasrem_388", 1
  store i64 %"$consume_392", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_391"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %"$msgobj_398_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_398_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_398_salloc_load", i64 125)
  %"$msgobj_398_salloc" = bitcast i8* %"$msgobj_398_salloc_salloc" to [125 x i8]*
  %"$msgobj_398" = bitcast [125 x i8]* %"$msgobj_398_salloc" to i8*
  store i8 3, i8* %"$msgobj_398", align 1
  %"$msgobj_fname_400" = getelementptr i8, i8* %"$msgobj_398", i32 1
  %"$msgobj_fname_401" = bitcast i8* %"$msgobj_fname_400" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_399", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_401", align 8
  %"$msgobj_td_402" = getelementptr i8, i8* %"$msgobj_398", i32 17
  %"$msgobj_td_403" = bitcast i8* %"$msgobj_td_402" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_403", align 8
  %"$msgobj_v_405" = getelementptr i8, i8* %"$msgobj_398", i32 25
  %"$msgobj_v_406" = bitcast i8* %"$msgobj_v_405" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_404", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_406", align 8
  %"$msgobj_fname_408" = getelementptr i8, i8* %"$msgobj_398", i32 41
  %"$msgobj_fname_409" = bitcast i8* %"$msgobj_fname_408" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_407", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_409", align 8
  %"$msgobj_td_410" = getelementptr i8, i8* %"$msgobj_398", i32 57
  %"$msgobj_td_411" = bitcast i8* %"$msgobj_td_410" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ** %"$msgobj_td_411", align 8
  %"$msgobj_v_412" = getelementptr i8, i8* %"$msgobj_398", i32 65
  %"$msgobj_v_413" = bitcast i8* %"$msgobj_v_412" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_413", align 1
  %"$msgobj_fname_415" = getelementptr i8, i8* %"$msgobj_398", i32 85
  %"$msgobj_fname_416" = bitcast i8* %"$msgobj_fname_415" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_414", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_416", align 8
  %"$msgobj_td_417" = getelementptr i8, i8* %"$msgobj_398", i32 101
  %"$msgobj_td_418" = bitcast i8* %"$msgobj_td_417" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_418", align 8
  %"$msgobj_v_419" = getelementptr i8, i8* %"$msgobj_398", i32 109
  %"$msgobj_v_420" = bitcast i8* %"$msgobj_v_419" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_420", align 8
  store i8* %"$msgobj_398", i8** %msg2, align 8
  %"$gasrem_422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_423" = icmp ugt i64 1, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %"$have_gas_396"
  %"$consume_426" = sub i64 %"$gasrem_422", 1
  store i64 %"$consume_426", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_425"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_425"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %"$helloWorld.one_msg_0" = alloca %TName_List_Message*, align 8
  %"$helloWorld.one_msg_432" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8
  %"$helloWorld.one_msg_fptr_433" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_432", 0
  %"$helloWorld.one_msg_envptr_434" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_432", 1
  %"$msg1_435" = load i8*, i8** %msg1, align 8
  %"$helloWorld.one_msg_call_436" = call %TName_List_Message* %"$helloWorld.one_msg_fptr_433"(i8* %"$helloWorld.one_msg_envptr_434", i8* %"$msg1_435")
  store %TName_List_Message* %"$helloWorld.one_msg_call_436", %TName_List_Message** %"$helloWorld.one_msg_0", align 8
  %"$$helloWorld.one_msg_0_437" = load %TName_List_Message*, %TName_List_Message** %"$helloWorld.one_msg_0", align 8
  store %TName_List_Message* %"$$helloWorld.one_msg_0_437", %TName_List_Message** %msgs1, align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_430"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_441"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %"$msg2_448" = load i8*, i8** %msg2, align 8
  %"$msgs1_449" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_450_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_450_salloc" = call i8* @_salloc(i8* %"$adtval_450_load", i64 17)
  %"$adtval_450" = bitcast i8* %"$adtval_450_salloc" to %CName_Cons_Message*
  %"$adtgep_451" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_450", i32 0, i32 0
  store i8 0, i8* %"$adtgep_451", align 1
  %"$adtgep_452" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_450", i32 0, i32 1
  store i8* %"$msg2_448", i8** %"$adtgep_452", align 8
  %"$adtgep_453" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_450", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_449", %TName_List_Message** %"$adtgep_453", align 8
  %"$adtptr_454" = bitcast %CName_Cons_Message* %"$adtval_450" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_454", %TName_List_Message** %msgs2, align 8
  %"$msgs2_455" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_455_456" = bitcast %TName_List_Message* %"$msgs2_455" to i8*
  %"$_literal_cost_call_457" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", i8* %"$$msgs2_455_456")
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 %"$_literal_cost_call_457", %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_446"
  %"$consume_462" = sub i64 %"$gasrem_458", %"$_literal_cost_call_457"
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %"$execptr_load_463" = load i8*, i8** @_execptr, align 8
  %"$msgs2_464" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_463", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %TName_List_Message* %"$msgs2_464")
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @multipleMsgs(i8* %0) {
entry:
  %"$_amount_466" = getelementptr i8, i8* %0, i32 0
  %"$_amount_467" = bitcast i8* %"$_amount_466" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_467", align 8
  %"$_origin_468" = getelementptr i8, i8* %0, i32 16
  %"$_origin_469" = bitcast i8* %"$_origin_468" to [20 x i8]*
  %"$_sender_470" = getelementptr i8, i8* %0, i32 36
  %"$_sender_471" = bitcast i8* %"$_sender_470" to [20 x i8]*
  call void @"$multipleMsgs_351"(%Uint128 %_amount, [20 x i8]* %"$_origin_469", [20 x i8]* %"$_sender_471")
  ret void
}

define internal void @"$contrAddr_472"(%Uint128 %_amount, [20 x i8]* %"$_origin_473", [20 x i8]* %"$_sender_474") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_473", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_474", align 1
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %entry
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_478"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %"$msgobj_485_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_485_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_485_salloc_load", i64 85)
  %"$msgobj_485_salloc" = bitcast i8* %"$msgobj_485_salloc_salloc" to [85 x i8]*
  %"$msgobj_485" = bitcast [85 x i8]* %"$msgobj_485_salloc" to i8*
  store i8 2, i8* %"$msgobj_485", align 1
  %"$msgobj_fname_487" = getelementptr i8, i8* %"$msgobj_485", i32 1
  %"$msgobj_fname_488" = bitcast i8* %"$msgobj_fname_487" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_486", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_488", align 8
  %"$msgobj_td_489" = getelementptr i8, i8* %"$msgobj_485", i32 17
  %"$msgobj_td_490" = bitcast i8* %"$msgobj_td_489" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_490", align 8
  %"$msgobj_v_492" = getelementptr i8, i8* %"$msgobj_485", i32 25
  %"$msgobj_v_493" = bitcast i8* %"$msgobj_v_492" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_491", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_493", align 8
  %"$msgobj_fname_495" = getelementptr i8, i8* %"$msgobj_485", i32 41
  %"$msgobj_fname_496" = bitcast i8* %"$msgobj_fname_495" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_494", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_496", align 8
  %"$msgobj_td_497" = getelementptr i8, i8* %"$msgobj_485", i32 57
  %"$msgobj_td_498" = bitcast i8* %"$msgobj_td_497" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_498", align 8
  %"$_this_address_499" = load [20 x i8], [20 x i8]* @_this_address, align 1
  %"$msgobj_v_500" = getelementptr i8, i8* %"$msgobj_485", i32 65
  %"$msgobj_v_501" = bitcast i8* %"$msgobj_v_500" to [20 x i8]*
  store [20 x i8] %"$_this_address_499", [20 x i8]* %"$msgobj_v_501", align 1
  store i8* %"$msgobj_485", i8** %msg1, align 8
  %"$msg1_503" = load i8*, i8** %msg1, align 8
  %"$_literal_cost_call_505" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$msg1_503")
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 %"$_literal_cost_call_505", %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_483"
  %"$consume_510" = sub i64 %"$gasrem_506", %"$_literal_cost_call_505"
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$execptr_load_511" = load i8*, i8** @_execptr, align 8
  %"$msg1_512" = load i8*, i8** %msg1, align 8
  call void @_event(i8* %"$execptr_load_511", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$msg1_512")
  ret void
}

define void @contrAddr(i8* %0) {
entry:
  %"$_amount_514" = getelementptr i8, i8* %0, i32 0
  %"$_amount_515" = bitcast i8* %"$_amount_514" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_515", align 8
  %"$_origin_516" = getelementptr i8, i8* %0, i32 16
  %"$_origin_517" = bitcast i8* %"$_origin_516" to [20 x i8]*
  %"$_sender_518" = getelementptr i8, i8* %0, i32 36
  %"$_sender_519" = bitcast i8* %"$_sender_518" to [20 x i8]*
  call void @"$contrAddr_472"(%Uint128 %_amount, [20 x i8]* %"$_origin_517", [20 x i8]* %"$_sender_519")
  ret void
}

define internal void @"$printContrParams_520"(%Uint128 %_amount, [20 x i8]* %"$_origin_521", [20 x i8]* %"$_sender_522") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_521", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_522", align 1
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %entry
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_526"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %"$msgobj_533_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_533_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_533_salloc_load", i64 313)
  %"$msgobj_533_salloc" = bitcast i8* %"$msgobj_533_salloc_salloc" to [313 x i8]*
  %"$msgobj_533" = bitcast [313 x i8]* %"$msgobj_533_salloc" to i8*
  store i8 8, i8* %"$msgobj_533", align 1
  %"$msgobj_fname_535" = getelementptr i8, i8* %"$msgobj_533", i32 1
  %"$msgobj_fname_536" = bitcast i8* %"$msgobj_fname_535" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_534", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_536", align 8
  %"$msgobj_td_537" = getelementptr i8, i8* %"$msgobj_533", i32 17
  %"$msgobj_td_538" = bitcast i8* %"$msgobj_td_537" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_538", align 8
  %"$msgobj_v_540" = getelementptr i8, i8* %"$msgobj_533", i32 25
  %"$msgobj_v_541" = bitcast i8* %"$msgobj_v_540" to %String*
  store %String { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$stringlit_539", i32 0, i32 0), i32 14 }, %String* %"$msgobj_v_541", align 8
  %"$msgobj_fname_543" = getelementptr i8, i8* %"$msgobj_533", i32 41
  %"$msgobj_fname_544" = bitcast i8* %"$msgobj_fname_543" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_542", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_544", align 8
  %"$msgobj_td_545" = getelementptr i8, i8* %"$msgobj_533", i32 57
  %"$msgobj_td_546" = bitcast i8* %"$msgobj_td_545" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_546", align 8
  %"$owner_547" = load [20 x i8], [20 x i8]* @owner, align 1
  %"$msgobj_v_548" = getelementptr i8, i8* %"$msgobj_533", i32 65
  %"$msgobj_v_549" = bitcast i8* %"$msgobj_v_548" to [20 x i8]*
  store [20 x i8] %"$owner_547", [20 x i8]* %"$msgobj_v_549", align 1
  %"$msgobj_fname_551" = getelementptr i8, i8* %"$msgobj_533", i32 85
  %"$msgobj_fname_552" = bitcast i8* %"$msgobj_fname_551" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_550", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_552", align 8
  %"$msgobj_td_553" = getelementptr i8, i8* %"$msgobj_533", i32 101
  %"$msgobj_td_554" = bitcast i8* %"$msgobj_td_553" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_554", align 8
  %"$name_555" = load %String, %String* @name, align 8
  %"$msgobj_v_556" = getelementptr i8, i8* %"$msgobj_533", i32 109
  %"$msgobj_v_557" = bitcast i8* %"$msgobj_v_556" to %String*
  store %String %"$name_555", %String* %"$msgobj_v_557", align 8
  %"$msgobj_fname_559" = getelementptr i8, i8* %"$msgobj_533", i32 125
  %"$msgobj_fname_560" = bitcast i8* %"$msgobj_fname_559" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_558", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_560", align 8
  %"$msgobj_td_561" = getelementptr i8, i8* %"$msgobj_533", i32 141
  %"$msgobj_td_562" = bitcast i8* %"$msgobj_td_561" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ** %"$msgobj_td_562", align 8
  %"$uint256_563" = load %Uint256, %Uint256* @uint256, align 8
  %"$msgobj_v_564" = getelementptr i8, i8* %"$msgobj_533", i32 149
  %"$msgobj_v_565" = bitcast i8* %"$msgobj_v_564" to %Uint256*
  store %Uint256 %"$uint256_563", %Uint256* %"$msgobj_v_565", align 8
  %"$msgobj_fname_567" = getelementptr i8, i8* %"$msgobj_533", i32 181
  %"$msgobj_fname_568" = bitcast i8* %"$msgobj_fname_567" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_566", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_568", align 8
  %"$msgobj_td_569" = getelementptr i8, i8* %"$msgobj_533", i32 197
  %"$msgobj_td_570" = bitcast i8* %"$msgobj_td_569" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_570", align 8
  %"$int32_571" = load %Int32, %Int32* @int32, align 4
  %"$msgobj_v_572" = getelementptr i8, i8* %"$msgobj_533", i32 205
  %"$msgobj_v_573" = bitcast i8* %"$msgobj_v_572" to %Int32*
  store %Int32 %"$int32_571", %Int32* %"$msgobj_v_573", align 4
  %"$msgobj_fname_575" = getelementptr i8, i8* %"$msgobj_533", i32 209
  %"$msgobj_fname_576" = bitcast i8* %"$msgobj_fname_575" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_574", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_576", align 8
  %"$msgobj_td_577" = getelementptr i8, i8* %"$msgobj_533", i32 225
  %"$msgobj_td_578" = bitcast i8* %"$msgobj_td_577" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ** %"$msgobj_td_578", align 8
  %"$bstr_579" = load %Bystr, %Bystr* @bstr, align 8
  %"$msgobj_v_580" = getelementptr i8, i8* %"$msgobj_533", i32 233
  %"$msgobj_v_581" = bitcast i8* %"$msgobj_v_580" to %Bystr*
  store %Bystr %"$bstr_579", %Bystr* %"$msgobj_v_581", align 8
  %"$msgobj_fname_583" = getelementptr i8, i8* %"$msgobj_533", i32 249
  %"$msgobj_fname_584" = bitcast i8* %"$msgobj_fname_583" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_582", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_584", align 8
  %"$msgobj_td_585" = getelementptr i8, i8* %"$msgobj_533", i32 265
  %"$msgobj_td_586" = bitcast i8* %"$msgobj_td_585" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ** %"$msgobj_td_586", align 8
  %"$all_names_587" = load %TName_List_String*, %TName_List_String** @all_names, align 8
  %"$msgobj_v_588" = getelementptr i8, i8* %"$msgobj_533", i32 273
  %"$msgobj_v_589" = bitcast i8* %"$msgobj_v_588" to %TName_List_String**
  store %TName_List_String* %"$all_names_587", %TName_List_String** %"$msgobj_v_589", align 8
  %"$msgobj_fname_591" = getelementptr i8, i8* %"$msgobj_533", i32 281
  %"$msgobj_fname_592" = bitcast i8* %"$msgobj_fname_591" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_590", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_592", align 8
  %"$msgobj_td_593" = getelementptr i8, i8* %"$msgobj_533", i32 297
  %"$msgobj_td_594" = bitcast i8* %"$msgobj_td_593" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ** %"$msgobj_td_594", align 8
  %"$pear_595" = load %TName_Pair_Int128_String*, %TName_Pair_Int128_String** @pear, align 8
  %"$msgobj_v_596" = getelementptr i8, i8* %"$msgobj_533", i32 305
  %"$msgobj_v_597" = bitcast i8* %"$msgobj_v_596" to %TName_Pair_Int128_String**
  store %TName_Pair_Int128_String* %"$pear_595", %TName_Pair_Int128_String** %"$msgobj_v_597", align 8
  store i8* %"$msgobj_533", i8** %e, align 8
  %"$e_599" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_601" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_599")
  %"$gasrem_602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_603" = icmp ugt i64 %"$_literal_cost_call_601", %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %"$have_gas_531"
  %"$consume_606" = sub i64 %"$gasrem_602", %"$_literal_cost_call_601"
  store i64 %"$consume_606", i64* @_gasrem, align 8
  %"$execptr_load_607" = load i8*, i8** @_execptr, align 8
  %"$e_608" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_607", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_608")
  ret void
}

define void @printContrParams(i8* %0) {
entry:
  %"$_amount_610" = getelementptr i8, i8* %0, i32 0
  %"$_amount_611" = bitcast i8* %"$_amount_610" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_611", align 8
  %"$_origin_612" = getelementptr i8, i8* %0, i32 16
  %"$_origin_613" = bitcast i8* %"$_origin_612" to [20 x i8]*
  %"$_sender_614" = getelementptr i8, i8* %0, i32 36
  %"$_sender_615" = bitcast i8* %"$_sender_614" to [20 x i8]*
  call void @"$printContrParams_520"(%Uint128 %_amount, [20 x i8]* %"$_origin_613", [20 x i8]* %"$_sender_615")
  ret void
}
