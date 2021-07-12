

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
%"$ParamDescr_617" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_618" = type { %ParamDescrString, i32, %"$ParamDescr_617"* }
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
@"$stringlit_201" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_206" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_209" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_239" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_253" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_258" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_261" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_292" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_318" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_323" = unnamed_addr constant [10 x i8] c"getHello()"
@"$stringlit_326" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_366" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_371" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_374" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_381" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_400" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_405" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_408" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_415" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_487" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_492" = unnamed_addr constant [15 x i8] c"ContractAddress"
@"$stringlit_495" = unnamed_addr constant [4 x i8] c"addr"
@"$stringlit_535" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_540" = unnamed_addr constant [14 x i8] c"AllContrparams"
@"$stringlit_543" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_551" = unnamed_addr constant [4 x i8] c"name"
@"$stringlit_559" = unnamed_addr constant [7 x i8] c"uint256"
@"$stringlit_567" = unnamed_addr constant [5 x i8] c"int32"
@"$stringlit_575" = unnamed_addr constant [4 x i8] c"bstr"
@"$stringlit_583" = unnamed_addr constant [9 x i8] c"all_names"
@"$stringlit_591" = unnamed_addr constant [4 x i8] c"pear"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_39", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 20
@"$pname__scilla_version_619" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_620" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_621" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_owner_622" = unnamed_addr constant [5 x i8] c"owner"
@"$pname_name_623" = unnamed_addr constant [4 x i8] c"name"
@"$pname_uint256_624" = unnamed_addr constant [7 x i8] c"uint256"
@"$pname_int32_625" = unnamed_addr constant [5 x i8] c"int32"
@"$pname_bstr_626" = unnamed_addr constant [4 x i8] c"bstr"
@"$pname_all_names_627" = unnamed_addr constant [9 x i8] c"all_names"
@"$pname_pear_628" = unnamed_addr constant [4 x i8] c"pear"
@_contract_parameters = constant [10 x %"$ParamDescr_617"] [%"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_619", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_620", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_621", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_owner_622", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_name_623", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_String_23" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_uint256_624", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint256_21" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_int32_625", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_7" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_bstr_626", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr_33" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$pname_all_names_627", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_pear_628", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40" }]
@_contract_parameters_length = constant i32 10
@"$tpname__amount_629" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_630" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_631" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_msg_632" = unnamed_addr constant [3 x i8] c"msg"
@"$tparams_setHello_633" = unnamed_addr constant [4 x %"$ParamDescr_617"] [%"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_629", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_630", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_631", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_msg_632", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_String_23" }]
@"$tname_setHello_634" = unnamed_addr constant [8 x i8] c"setHello"
@"$tpname__amount_635" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_636" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_637" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_getHello_638" = unnamed_addr constant [3 x %"$ParamDescr_617"] [%"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_635", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_636", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_637", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_getHello_639" = unnamed_addr constant [8 x i8] c"getHello"
@"$tpname__amount_640" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_641" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_642" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_multipleMsgs_643" = unnamed_addr constant [3 x %"$ParamDescr_617"] [%"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_640", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_641", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_642", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_multipleMsgs_644" = unnamed_addr constant [12 x i8] c"multipleMsgs"
@"$tpname__amount_645" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_646" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_647" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_contrAddr_648" = unnamed_addr constant [3 x %"$ParamDescr_617"] [%"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_645", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_646", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_647", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_contrAddr_649" = unnamed_addr constant [9 x i8] c"contrAddr"
@"$tpname__amount_650" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_651" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_652" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_printContrParams_653" = unnamed_addr constant [3 x %"$ParamDescr_617"] [%"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_650", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_651", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }, %"$ParamDescr_617" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_652", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_46" }]
@"$tname_printContrParams_654" = unnamed_addr constant [16 x i8] c"printContrParams"
@_transition_parameters = constant [5 x %"$TransDescr_618"] [%"$TransDescr_618" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setHello_634", i32 0, i32 0), i32 8 }, i32 4, %"$ParamDescr_617"* getelementptr inbounds ([4 x %"$ParamDescr_617"], [4 x %"$ParamDescr_617"]* @"$tparams_setHello_633", i32 0, i32 0) }, %"$TransDescr_618" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_getHello_639", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_617"* getelementptr inbounds ([3 x %"$ParamDescr_617"], [3 x %"$ParamDescr_617"]* @"$tparams_getHello_638", i32 0, i32 0) }, %"$TransDescr_618" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_multipleMsgs_644", i32 0, i32 0), i32 12 }, i32 3, %"$ParamDescr_617"* getelementptr inbounds ([3 x %"$ParamDescr_617"], [3 x %"$ParamDescr_617"]* @"$tparams_multipleMsgs_643", i32 0, i32 0) }, %"$TransDescr_618" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_contrAddr_649", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_617"* getelementptr inbounds ([3 x %"$ParamDescr_617"], [3 x %"$ParamDescr_617"]* @"$tparams_contrAddr_648", i32 0, i32 0) }, %"$TransDescr_618" { %ParamDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$tname_printContrParams_654", i32 0, i32 0), i32 16 }, i32 3, %"$ParamDescr_617"* getelementptr inbounds ([3 x %"$ParamDescr_617"], [3 x %"$ParamDescr_617"]* @"$tparams_printContrParams_653", i32 0, i32 0) }]
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
  %"$name_145" = load %String, %String* @_cparam_name, align 8
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
  %"$owner_172" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  store [20 x i8] %"$owner_172", [20 x i8]* %"$eq_owner_171", align 1
  %"$$eq_owner_171_173" = bitcast [20 x i8]* %"$eq_owner_171" to i8*
  %"$eq__sender_174" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_174", align 1
  %"$$eq__sender_174_175" = bitcast [20 x i8]* %"$eq__sender_174" to i8*
  %"$eq_call_176" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_170", i32 20, i8* %"$$eq_owner_171_173", i8* %"$$eq__sender_174_175")
  store %TName_Bool* %"$eq_call_176", %TName_Bool** %is_owner, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 2, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_168"
  %"$consume_182" = sub i64 %"$gasrem_178", 2
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %"$is_owner_184" = load %TName_Bool*, %TName_Bool** %is_owner, align 8
  %"$is_owner_tag_185" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_owner_184", i32 0, i32 0
  %"$is_owner_tag_186" = load i8, i8* %"$is_owner_tag_185", align 1
  switch i8 %"$is_owner_tag_186", label %"$empty_default_187" [
    i8 1, label %"$False_188"
    i8 0, label %"$True_228"
  ]

"$False_188":                                     ; preds = %"$have_gas_181"
  %"$is_owner_189" = bitcast %TName_Bool* %"$is_owner_184" to %CName_False*
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$False_188"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$False_188"
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_193"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %"$msgobj_200_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_200_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_200_salloc_load", i64 69)
  %"$msgobj_200_salloc" = bitcast i8* %"$msgobj_200_salloc_salloc" to [69 x i8]*
  %"$msgobj_200" = bitcast [69 x i8]* %"$msgobj_200_salloc" to i8*
  store i8 2, i8* %"$msgobj_200", align 1
  %"$msgobj_fname_202" = getelementptr i8, i8* %"$msgobj_200", i32 1
  %"$msgobj_fname_203" = bitcast i8* %"$msgobj_fname_202" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_201", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_203", align 8
  %"$msgobj_td_204" = getelementptr i8, i8* %"$msgobj_200", i32 17
  %"$msgobj_td_205" = bitcast i8* %"$msgobj_td_204" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_205", align 8
  %"$msgobj_v_207" = getelementptr i8, i8* %"$msgobj_200", i32 25
  %"$msgobj_v_208" = bitcast i8* %"$msgobj_v_207" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_206", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_208", align 8
  %"$msgobj_fname_210" = getelementptr i8, i8* %"$msgobj_200", i32 41
  %"$msgobj_fname_211" = bitcast i8* %"$msgobj_fname_210" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_209", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_211", align 8
  %"$msgobj_td_212" = getelementptr i8, i8* %"$msgobj_200", i32 57
  %"$msgobj_td_213" = bitcast i8* %"$msgobj_td_212" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_213", align 8
  %"$helloWorld.not_owner_code_214" = load %Int32, %Int32* @helloWorld.not_owner_code, align 4
  %"$msgobj_v_215" = getelementptr i8, i8* %"$msgobj_200", i32 65
  %"$msgobj_v_216" = bitcast i8* %"$msgobj_v_215" to %Int32*
  store %Int32 %"$helloWorld.not_owner_code_214", %Int32* %"$msgobj_v_216", align 4
  store i8* %"$msgobj_200", i8** %e, align 8
  %"$e_218" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_220" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_218")
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 %"$_literal_cost_call_220", %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_198"
  %"$consume_225" = sub i64 %"$gasrem_221", %"$_literal_cost_call_220"
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %"$execptr_load_226" = load i8*, i8** @_execptr, align 8
  %"$e_227" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_226", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_227")
  br label %"$matchsucc_183"

"$True_228":                                      ; preds = %"$have_gas_181"
  %"$is_owner_229" = bitcast %TName_Bool* %"$is_owner_184" to %CName_True*
  %"$_literal_cost_msg_230" = alloca %String, align 8
  store %String %msg, %String* %"$_literal_cost_msg_230", align 8
  %"$$_literal_cost_msg_230_231" = bitcast %String* %"$_literal_cost_msg_230" to i8*
  %"$_literal_cost_call_232" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_23", i8* %"$$_literal_cost_msg_230_231")
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 %"$_literal_cost_call_232", %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$True_228"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$True_228"
  %"$consume_237" = sub i64 %"$gasrem_233", %"$_literal_cost_call_232"
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$execptr_load_238" = load i8*, i8** @_execptr, align 8
  %"$update_value_240" = alloca %String, align 8
  store %String %msg, %String* %"$update_value_240", align 8
  %"$update_value_241" = bitcast %String* %"$update_value_240" to i8*
  call void @_update_field(i8* %"$execptr_load_238", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_239", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i8* %"$update_value_241")
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_236"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$msgobj_252_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_252_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_252_salloc_load", i64 69)
  %"$msgobj_252_salloc" = bitcast i8* %"$msgobj_252_salloc_salloc" to [69 x i8]*
  %"$msgobj_252" = bitcast [69 x i8]* %"$msgobj_252_salloc" to i8*
  store i8 2, i8* %"$msgobj_252", align 1
  %"$msgobj_fname_254" = getelementptr i8, i8* %"$msgobj_252", i32 1
  %"$msgobj_fname_255" = bitcast i8* %"$msgobj_fname_254" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_253", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_255", align 8
  %"$msgobj_td_256" = getelementptr i8, i8* %"$msgobj_252", i32 17
  %"$msgobj_td_257" = bitcast i8* %"$msgobj_td_256" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_257", align 8
  %"$msgobj_v_259" = getelementptr i8, i8* %"$msgobj_252", i32 25
  %"$msgobj_v_260" = bitcast i8* %"$msgobj_v_259" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_258", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_260", align 8
  %"$msgobj_fname_262" = getelementptr i8, i8* %"$msgobj_252", i32 41
  %"$msgobj_fname_263" = bitcast i8* %"$msgobj_fname_262" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_261", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_263", align 8
  %"$msgobj_td_264" = getelementptr i8, i8* %"$msgobj_252", i32 57
  %"$msgobj_td_265" = bitcast i8* %"$msgobj_td_264" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_265", align 8
  %"$helloWorld.set_hello_code_266" = load %Int32, %Int32* @helloWorld.set_hello_code, align 4
  %"$msgobj_v_267" = getelementptr i8, i8* %"$msgobj_252", i32 65
  %"$msgobj_v_268" = bitcast i8* %"$msgobj_v_267" to %Int32*
  store %Int32 %"$helloWorld.set_hello_code_266", %Int32* %"$msgobj_v_268", align 4
  store i8* %"$msgobj_252", i8** %e1, align 8
  %"$e_270" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_272" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_270")
  %"$gasrem_273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_274" = icmp ugt i64 %"$_literal_cost_call_272", %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %"$have_gas_250"
  %"$consume_277" = sub i64 %"$gasrem_273", %"$_literal_cost_call_272"
  store i64 %"$consume_277", i64* @_gasrem, align 8
  %"$execptr_load_278" = load i8*, i8** @_execptr, align 8
  %"$e_279" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_278", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_279")
  br label %"$matchsucc_183"

"$empty_default_187":                             ; preds = %"$have_gas_181"
  br label %"$matchsucc_183"

"$matchsucc_183":                                 ; preds = %"$have_gas_276", %"$have_gas_224", %"$empty_default_187"
  ret void
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setHello(i8* %0) {
entry:
  %"$_amount_281" = getelementptr i8, i8* %0, i32 0
  %"$_amount_282" = bitcast i8* %"$_amount_281" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_282", align 8
  %"$_origin_283" = getelementptr i8, i8* %0, i32 16
  %"$_origin_284" = bitcast i8* %"$_origin_283" to [20 x i8]*
  %"$_sender_285" = getelementptr i8, i8* %0, i32 36
  %"$_sender_286" = bitcast i8* %"$_sender_285" to [20 x i8]*
  %"$msg_287" = getelementptr i8, i8* %0, i32 56
  %"$msg_288" = bitcast i8* %"$msg_287" to %String*
  %msg = load %String, %String* %"$msg_288", align 8
  call void @"$setHello_162"(%Uint128 %_amount, [20 x i8]* %"$_origin_284", [20 x i8]* %"$_sender_286", %String %msg)
  ret void
}

define internal void @"$getHello_289"(%Uint128 %_amount, [20 x i8]* %"$_origin_290", [20 x i8]* %"$_sender_291") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_290", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_291", align 1
  %r = alloca %String, align 8
  %"$execptr_load_293" = load i8*, i8** @_execptr, align 8
  %"$r_call_294" = call i8* @_fetch_field(i8* %"$execptr_load_293", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_292", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_23", i32 0, i8* null, i32 1)
  %"$r_295" = bitcast i8* %"$r_call_294" to %String*
  %"$r_296" = load %String, %String* %"$r_295", align 8
  store %String %"$r_296", %String* %r, align 8
  %"$_literal_cost_r_297" = alloca %String, align 8
  %"$r_298" = load %String, %String* %r, align 8
  store %String %"$r_298", %String* %"$_literal_cost_r_297", align 8
  %"$$_literal_cost_r_297_299" = bitcast %String* %"$_literal_cost_r_297" to i8*
  %"$_literal_cost_call_300" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_23", i8* %"$$_literal_cost_r_297_299")
  %"$gasadd_301" = add i64 %"$_literal_cost_call_300", 0
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 %"$gasadd_301", %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %entry
  %"$consume_306" = sub i64 %"$gasrem_302", %"$gasadd_301"
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_310"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %"$msgobj_317_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_317_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_317_salloc_load", i64 81)
  %"$msgobj_317_salloc" = bitcast i8* %"$msgobj_317_salloc_salloc" to [81 x i8]*
  %"$msgobj_317" = bitcast [81 x i8]* %"$msgobj_317_salloc" to i8*
  store i8 2, i8* %"$msgobj_317", align 1
  %"$msgobj_fname_319" = getelementptr i8, i8* %"$msgobj_317", i32 1
  %"$msgobj_fname_320" = bitcast i8* %"$msgobj_fname_319" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_318", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_320", align 8
  %"$msgobj_td_321" = getelementptr i8, i8* %"$msgobj_317", i32 17
  %"$msgobj_td_322" = bitcast i8* %"$msgobj_td_321" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_322", align 8
  %"$msgobj_v_324" = getelementptr i8, i8* %"$msgobj_317", i32 25
  %"$msgobj_v_325" = bitcast i8* %"$msgobj_v_324" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_323", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_325", align 8
  %"$msgobj_fname_327" = getelementptr i8, i8* %"$msgobj_317", i32 41
  %"$msgobj_fname_328" = bitcast i8* %"$msgobj_fname_327" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_326", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_328", align 8
  %"$msgobj_td_329" = getelementptr i8, i8* %"$msgobj_317", i32 57
  %"$msgobj_td_330" = bitcast i8* %"$msgobj_td_329" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_330", align 8
  %"$r_331" = load %String, %String* %r, align 8
  %"$msgobj_v_332" = getelementptr i8, i8* %"$msgobj_317", i32 65
  %"$msgobj_v_333" = bitcast i8* %"$msgobj_v_332" to %String*
  store %String %"$r_331", %String* %"$msgobj_v_333", align 8
  store i8* %"$msgobj_317", i8** %e, align 8
  %"$e_335" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_337" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_335")
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 %"$_literal_cost_call_337", %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_315"
  %"$consume_342" = sub i64 %"$gasrem_338", %"$_literal_cost_call_337"
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$execptr_load_343" = load i8*, i8** @_execptr, align 8
  %"$e_344" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_343", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_344")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @getHello(i8* %0) {
entry:
  %"$_amount_346" = getelementptr i8, i8* %0, i32 0
  %"$_amount_347" = bitcast i8* %"$_amount_346" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_347", align 8
  %"$_origin_348" = getelementptr i8, i8* %0, i32 16
  %"$_origin_349" = bitcast i8* %"$_origin_348" to [20 x i8]*
  %"$_sender_350" = getelementptr i8, i8* %0, i32 36
  %"$_sender_351" = bitcast i8* %"$_sender_350" to [20 x i8]*
  call void @"$getHello_289"(%Uint128 %_amount, [20 x i8]* %"$_origin_349", [20 x i8]* %"$_sender_351")
  ret void
}

define internal void @"$multipleMsgs_352"(%Uint128 %_amount, [20 x i8]* %"$_origin_353", [20 x i8]* %"$_sender_354") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_353", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_354", align 1
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %entry
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %"$msgobj_365_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_365_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_365_salloc_load", i64 125)
  %"$msgobj_365_salloc" = bitcast i8* %"$msgobj_365_salloc_salloc" to [125 x i8]*
  %"$msgobj_365" = bitcast [125 x i8]* %"$msgobj_365_salloc" to i8*
  store i8 3, i8* %"$msgobj_365", align 1
  %"$msgobj_fname_367" = getelementptr i8, i8* %"$msgobj_365", i32 1
  %"$msgobj_fname_368" = bitcast i8* %"$msgobj_fname_367" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_366", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_368", align 8
  %"$msgobj_td_369" = getelementptr i8, i8* %"$msgobj_365", i32 17
  %"$msgobj_td_370" = bitcast i8* %"$msgobj_td_369" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_370", align 8
  %"$msgobj_v_372" = getelementptr i8, i8* %"$msgobj_365", i32 25
  %"$msgobj_v_373" = bitcast i8* %"$msgobj_v_372" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_371", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_373", align 8
  %"$msgobj_fname_375" = getelementptr i8, i8* %"$msgobj_365", i32 41
  %"$msgobj_fname_376" = bitcast i8* %"$msgobj_fname_375" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_374", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_376", align 8
  %"$msgobj_td_377" = getelementptr i8, i8* %"$msgobj_365", i32 57
  %"$msgobj_td_378" = bitcast i8* %"$msgobj_td_377" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_378", align 8
  %"$msgobj_v_379" = getelementptr i8, i8* %"$msgobj_365", i32 65
  %"$msgobj_v_380" = bitcast i8* %"$msgobj_v_379" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_380", align 1
  %"$msgobj_fname_382" = getelementptr i8, i8* %"$msgobj_365", i32 85
  %"$msgobj_fname_383" = bitcast i8* %"$msgobj_fname_382" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_381", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_383", align 8
  %"$msgobj_td_384" = getelementptr i8, i8* %"$msgobj_365", i32 101
  %"$msgobj_td_385" = bitcast i8* %"$msgobj_td_384" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_385", align 8
  %"$msgobj_v_386" = getelementptr i8, i8* %"$msgobj_365", i32 109
  %"$msgobj_v_387" = bitcast i8* %"$msgobj_v_386" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_387", align 8
  store i8* %"$msgobj_365", i8** %msg1, align 8
  %"$gasrem_389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_363"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_392"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %"$msgobj_399_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_399_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_399_salloc_load", i64 125)
  %"$msgobj_399_salloc" = bitcast i8* %"$msgobj_399_salloc_salloc" to [125 x i8]*
  %"$msgobj_399" = bitcast [125 x i8]* %"$msgobj_399_salloc" to i8*
  store i8 3, i8* %"$msgobj_399", align 1
  %"$msgobj_fname_401" = getelementptr i8, i8* %"$msgobj_399", i32 1
  %"$msgobj_fname_402" = bitcast i8* %"$msgobj_fname_401" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_400", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_402", align 8
  %"$msgobj_td_403" = getelementptr i8, i8* %"$msgobj_399", i32 17
  %"$msgobj_td_404" = bitcast i8* %"$msgobj_td_403" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_404", align 8
  %"$msgobj_v_406" = getelementptr i8, i8* %"$msgobj_399", i32 25
  %"$msgobj_v_407" = bitcast i8* %"$msgobj_v_406" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_405", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_407", align 8
  %"$msgobj_fname_409" = getelementptr i8, i8* %"$msgobj_399", i32 41
  %"$msgobj_fname_410" = bitcast i8* %"$msgobj_fname_409" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_408", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_410", align 8
  %"$msgobj_td_411" = getelementptr i8, i8* %"$msgobj_399", i32 57
  %"$msgobj_td_412" = bitcast i8* %"$msgobj_td_411" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_412", align 8
  %"$msgobj_v_413" = getelementptr i8, i8* %"$msgobj_399", i32 65
  %"$msgobj_v_414" = bitcast i8* %"$msgobj_v_413" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_414", align 1
  %"$msgobj_fname_416" = getelementptr i8, i8* %"$msgobj_399", i32 85
  %"$msgobj_fname_417" = bitcast i8* %"$msgobj_fname_416" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_415", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_417", align 8
  %"$msgobj_td_418" = getelementptr i8, i8* %"$msgobj_399", i32 101
  %"$msgobj_td_419" = bitcast i8* %"$msgobj_td_418" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_419", align 8
  %"$msgobj_v_420" = getelementptr i8, i8* %"$msgobj_399", i32 109
  %"$msgobj_v_421" = bitcast i8* %"$msgobj_v_420" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_421", align 8
  store i8* %"$msgobj_399", i8** %msg2, align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_397"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_426"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %"$helloWorld.one_msg_0" = alloca %TName_List_Message*, align 8
  %"$helloWorld.one_msg_433" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8
  %"$helloWorld.one_msg_fptr_434" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_433", 0
  %"$helloWorld.one_msg_envptr_435" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_433", 1
  %"$msg1_436" = load i8*, i8** %msg1, align 8
  %"$helloWorld.one_msg_call_437" = call %TName_List_Message* %"$helloWorld.one_msg_fptr_434"(i8* %"$helloWorld.one_msg_envptr_435", i8* %"$msg1_436")
  store %TName_List_Message* %"$helloWorld.one_msg_call_437", %TName_List_Message** %"$helloWorld.one_msg_0", align 8
  %"$$helloWorld.one_msg_0_438" = load %TName_List_Message*, %TName_List_Message** %"$helloWorld.one_msg_0", align 8
  store %TName_List_Message* %"$$helloWorld.one_msg_0_438", %TName_List_Message** %msgs1, align 8
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_431"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %"$msg2_449" = load i8*, i8** %msg2, align 8
  %"$msgs1_450" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_451_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_451_salloc" = call i8* @_salloc(i8* %"$adtval_451_load", i64 17)
  %"$adtval_451" = bitcast i8* %"$adtval_451_salloc" to %CName_Cons_Message*
  %"$adtgep_452" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_451", i32 0, i32 0
  store i8 0, i8* %"$adtgep_452", align 1
  %"$adtgep_453" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_451", i32 0, i32 1
  store i8* %"$msg2_449", i8** %"$adtgep_453", align 8
  %"$adtgep_454" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_451", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_450", %TName_List_Message** %"$adtgep_454", align 8
  %"$adtptr_455" = bitcast %CName_Cons_Message* %"$adtval_451" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_455", %TName_List_Message** %msgs2, align 8
  %"$msgs2_456" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_456_457" = bitcast %TName_List_Message* %"$msgs2_456" to i8*
  %"$_literal_cost_call_458" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", i8* %"$$msgs2_456_457")
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 %"$_literal_cost_call_458", %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_447"
  %"$consume_463" = sub i64 %"$gasrem_459", %"$_literal_cost_call_458"
  store i64 %"$consume_463", i64* @_gasrem, align 8
  %"$execptr_load_464" = load i8*, i8** @_execptr, align 8
  %"$msgs2_465" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_464", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_42", %TName_List_Message* %"$msgs2_465")
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @multipleMsgs(i8* %0) {
entry:
  %"$_amount_467" = getelementptr i8, i8* %0, i32 0
  %"$_amount_468" = bitcast i8* %"$_amount_467" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_468", align 8
  %"$_origin_469" = getelementptr i8, i8* %0, i32 16
  %"$_origin_470" = bitcast i8* %"$_origin_469" to [20 x i8]*
  %"$_sender_471" = getelementptr i8, i8* %0, i32 36
  %"$_sender_472" = bitcast i8* %"$_sender_471" to [20 x i8]*
  call void @"$multipleMsgs_352"(%Uint128 %_amount, [20 x i8]* %"$_origin_470", [20 x i8]* %"$_sender_472")
  ret void
}

define internal void @"$contrAddr_473"(%Uint128 %_amount, [20 x i8]* %"$_origin_474", [20 x i8]* %"$_sender_475") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_474", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_475", align 1
  %"$gasrem_476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %entry
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
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
  %"$msgobj_486_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_486_salloc_load", i64 85)
  %"$msgobj_486_salloc" = bitcast i8* %"$msgobj_486_salloc_salloc" to [85 x i8]*
  %"$msgobj_486" = bitcast [85 x i8]* %"$msgobj_486_salloc" to i8*
  store i8 2, i8* %"$msgobj_486", align 1
  %"$msgobj_fname_488" = getelementptr i8, i8* %"$msgobj_486", i32 1
  %"$msgobj_fname_489" = bitcast i8* %"$msgobj_fname_488" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_487", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_489", align 8
  %"$msgobj_td_490" = getelementptr i8, i8* %"$msgobj_486", i32 17
  %"$msgobj_td_491" = bitcast i8* %"$msgobj_td_490" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_491", align 8
  %"$msgobj_v_493" = getelementptr i8, i8* %"$msgobj_486", i32 25
  %"$msgobj_v_494" = bitcast i8* %"$msgobj_v_493" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_492", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_494", align 8
  %"$msgobj_fname_496" = getelementptr i8, i8* %"$msgobj_486", i32 41
  %"$msgobj_fname_497" = bitcast i8* %"$msgobj_fname_496" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_495", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_497", align 8
  %"$msgobj_td_498" = getelementptr i8, i8* %"$msgobj_486", i32 57
  %"$msgobj_td_499" = bitcast i8* %"$msgobj_td_498" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_499", align 8
  %"$_this_address_500" = load [20 x i8], [20 x i8]* @_cparam__this_address, align 1
  %"$msgobj_v_501" = getelementptr i8, i8* %"$msgobj_486", i32 65
  %"$msgobj_v_502" = bitcast i8* %"$msgobj_v_501" to [20 x i8]*
  store [20 x i8] %"$_this_address_500", [20 x i8]* %"$msgobj_v_502", align 1
  store i8* %"$msgobj_486", i8** %msg1, align 8
  %"$msg1_504" = load i8*, i8** %msg1, align 8
  %"$_literal_cost_call_506" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$msg1_504")
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 %"$_literal_cost_call_506", %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %"$have_gas_484"
  %"$consume_511" = sub i64 %"$gasrem_507", %"$_literal_cost_call_506"
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %"$execptr_load_512" = load i8*, i8** @_execptr, align 8
  %"$msg1_513" = load i8*, i8** %msg1, align 8
  call void @_event(i8* %"$execptr_load_512", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$msg1_513")
  ret void
}

define void @contrAddr(i8* %0) {
entry:
  %"$_amount_515" = getelementptr i8, i8* %0, i32 0
  %"$_amount_516" = bitcast i8* %"$_amount_515" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_516", align 8
  %"$_origin_517" = getelementptr i8, i8* %0, i32 16
  %"$_origin_518" = bitcast i8* %"$_origin_517" to [20 x i8]*
  %"$_sender_519" = getelementptr i8, i8* %0, i32 36
  %"$_sender_520" = bitcast i8* %"$_sender_519" to [20 x i8]*
  call void @"$contrAddr_473"(%Uint128 %_amount, [20 x i8]* %"$_origin_518", [20 x i8]* %"$_sender_520")
  ret void
}

define internal void @"$printContrParams_521"(%Uint128 %_amount, [20 x i8]* %"$_origin_522", [20 x i8]* %"$_sender_523") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_522", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_523", align 1
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %entry
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_527"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$msgobj_534_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_534_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_534_salloc_load", i64 313)
  %"$msgobj_534_salloc" = bitcast i8* %"$msgobj_534_salloc_salloc" to [313 x i8]*
  %"$msgobj_534" = bitcast [313 x i8]* %"$msgobj_534_salloc" to i8*
  store i8 8, i8* %"$msgobj_534", align 1
  %"$msgobj_fname_536" = getelementptr i8, i8* %"$msgobj_534", i32 1
  %"$msgobj_fname_537" = bitcast i8* %"$msgobj_fname_536" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_535", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_537", align 8
  %"$msgobj_td_538" = getelementptr i8, i8* %"$msgobj_534", i32 17
  %"$msgobj_td_539" = bitcast i8* %"$msgobj_td_538" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_539", align 8
  %"$msgobj_v_541" = getelementptr i8, i8* %"$msgobj_534", i32 25
  %"$msgobj_v_542" = bitcast i8* %"$msgobj_v_541" to %String*
  store %String { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$stringlit_540", i32 0, i32 0), i32 14 }, %String* %"$msgobj_v_542", align 8
  %"$msgobj_fname_544" = getelementptr i8, i8* %"$msgobj_534", i32 41
  %"$msgobj_fname_545" = bitcast i8* %"$msgobj_fname_544" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_543", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_545", align 8
  %"$msgobj_td_546" = getelementptr i8, i8* %"$msgobj_534", i32 57
  %"$msgobj_td_547" = bitcast i8* %"$msgobj_td_546" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_547", align 8
  %"$owner_548" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  %"$msgobj_v_549" = getelementptr i8, i8* %"$msgobj_534", i32 65
  %"$msgobj_v_550" = bitcast i8* %"$msgobj_v_549" to [20 x i8]*
  store [20 x i8] %"$owner_548", [20 x i8]* %"$msgobj_v_550", align 1
  %"$msgobj_fname_552" = getelementptr i8, i8* %"$msgobj_534", i32 85
  %"$msgobj_fname_553" = bitcast i8* %"$msgobj_fname_552" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_551", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_553", align 8
  %"$msgobj_td_554" = getelementptr i8, i8* %"$msgobj_534", i32 101
  %"$msgobj_td_555" = bitcast i8* %"$msgobj_td_554" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_555", align 8
  %"$name_556" = load %String, %String* @_cparam_name, align 8
  %"$msgobj_v_557" = getelementptr i8, i8* %"$msgobj_534", i32 109
  %"$msgobj_v_558" = bitcast i8* %"$msgobj_v_557" to %String*
  store %String %"$name_556", %String* %"$msgobj_v_558", align 8
  %"$msgobj_fname_560" = getelementptr i8, i8* %"$msgobj_534", i32 125
  %"$msgobj_fname_561" = bitcast i8* %"$msgobj_fname_560" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_559", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_561", align 8
  %"$msgobj_td_562" = getelementptr i8, i8* %"$msgobj_534", i32 141
  %"$msgobj_td_563" = bitcast i8* %"$msgobj_td_562" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ** %"$msgobj_td_563", align 8
  %"$uint256_564" = load %Uint256, %Uint256* @_cparam_uint256, align 8
  %"$msgobj_v_565" = getelementptr i8, i8* %"$msgobj_534", i32 149
  %"$msgobj_v_566" = bitcast i8* %"$msgobj_v_565" to %Uint256*
  store %Uint256 %"$uint256_564", %Uint256* %"$msgobj_v_566", align 8
  %"$msgobj_fname_568" = getelementptr i8, i8* %"$msgobj_534", i32 181
  %"$msgobj_fname_569" = bitcast i8* %"$msgobj_fname_568" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_567", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_569", align 8
  %"$msgobj_td_570" = getelementptr i8, i8* %"$msgobj_534", i32 197
  %"$msgobj_td_571" = bitcast i8* %"$msgobj_td_570" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_7", %_TyDescrTy_Typ** %"$msgobj_td_571", align 8
  %"$int32_572" = load %Int32, %Int32* @_cparam_int32, align 4
  %"$msgobj_v_573" = getelementptr i8, i8* %"$msgobj_534", i32 205
  %"$msgobj_v_574" = bitcast i8* %"$msgobj_v_573" to %Int32*
  store %Int32 %"$int32_572", %Int32* %"$msgobj_v_574", align 4
  %"$msgobj_fname_576" = getelementptr i8, i8* %"$msgobj_534", i32 209
  %"$msgobj_fname_577" = bitcast i8* %"$msgobj_fname_576" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_575", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_577", align 8
  %"$msgobj_td_578" = getelementptr i8, i8* %"$msgobj_534", i32 225
  %"$msgobj_td_579" = bitcast i8* %"$msgobj_td_578" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ** %"$msgobj_td_579", align 8
  %"$bstr_580" = load %Bystr, %Bystr* @_cparam_bstr, align 8
  %"$msgobj_v_581" = getelementptr i8, i8* %"$msgobj_534", i32 233
  %"$msgobj_v_582" = bitcast i8* %"$msgobj_v_581" to %Bystr*
  store %Bystr %"$bstr_580", %Bystr* %"$msgobj_v_582", align 8
  %"$msgobj_fname_584" = getelementptr i8, i8* %"$msgobj_534", i32 249
  %"$msgobj_fname_585" = bitcast i8* %"$msgobj_fname_584" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_583", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_585", align 8
  %"$msgobj_td_586" = getelementptr i8, i8* %"$msgobj_534", i32 265
  %"$msgobj_td_587" = bitcast i8* %"$msgobj_td_586" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_41", %_TyDescrTy_Typ** %"$msgobj_td_587", align 8
  %"$all_names_588" = load %TName_List_String*, %TName_List_String** @_cparam_all_names, align 8
  %"$msgobj_v_589" = getelementptr i8, i8* %"$msgobj_534", i32 273
  %"$msgobj_v_590" = bitcast i8* %"$msgobj_v_589" to %TName_List_String**
  store %TName_List_String* %"$all_names_588", %TName_List_String** %"$msgobj_v_590", align 8
  %"$msgobj_fname_592" = getelementptr i8, i8* %"$msgobj_534", i32 281
  %"$msgobj_fname_593" = bitcast i8* %"$msgobj_fname_592" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_591", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_593", align 8
  %"$msgobj_td_594" = getelementptr i8, i8* %"$msgobj_534", i32 297
  %"$msgobj_td_595" = bitcast i8* %"$msgobj_td_594" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_40", %_TyDescrTy_Typ** %"$msgobj_td_595", align 8
  %"$pear_596" = load %TName_Pair_Int128_String*, %TName_Pair_Int128_String** @_cparam_pear, align 8
  %"$msgobj_v_597" = getelementptr i8, i8* %"$msgobj_534", i32 305
  %"$msgobj_v_598" = bitcast i8* %"$msgobj_v_597" to %TName_Pair_Int128_String**
  store %TName_Pair_Int128_String* %"$pear_596", %TName_Pair_Int128_String** %"$msgobj_v_598", align 8
  store i8* %"$msgobj_534", i8** %e, align 8
  %"$e_600" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_602" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_600")
  %"$gasrem_603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_604" = icmp ugt i64 %"$_literal_cost_call_602", %"$gasrem_603"
  br i1 %"$gascmp_604", label %"$out_of_gas_605", label %"$have_gas_606"

"$out_of_gas_605":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_606"

"$have_gas_606":                                  ; preds = %"$out_of_gas_605", %"$have_gas_532"
  %"$consume_607" = sub i64 %"$gasrem_603", %"$_literal_cost_call_602"
  store i64 %"$consume_607", i64* @_gasrem, align 8
  %"$execptr_load_608" = load i8*, i8** @_execptr, align 8
  %"$e_609" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_608", %_TyDescrTy_Typ* @"$TyDescr_Event_29", i8* %"$e_609")
  ret void
}

define void @printContrParams(i8* %0) {
entry:
  %"$_amount_611" = getelementptr i8, i8* %0, i32 0
  %"$_amount_612" = bitcast i8* %"$_amount_611" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_612", align 8
  %"$_origin_613" = getelementptr i8, i8* %0, i32 16
  %"$_origin_614" = bitcast i8* %"$_origin_613" to [20 x i8]*
  %"$_sender_615" = getelementptr i8, i8* %0, i32 36
  %"$_sender_616" = bitcast i8* %"$_sender_615" to [20 x i8]*
  call void @"$printContrParams_521"(%Uint128 %_amount, [20 x i8]* %"$_origin_614", [20 x i8]* %"$_sender_616")
  ret void
}
