

; gas_remaining: 4001918
; ModuleID = 'HelloWorld'
source_filename = "HelloWorld"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_47" = type { i32, %"$TyDescr_AddrFieldTyp_46"* }
%"$TyDescr_AddrFieldTyp_46" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
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
%"$ParamDescr_634" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_635" = type { %ParamDescrString, i32, %"$ParamDescr_634"* }
%"$$fundef_3_env_92" = type {}
%Uint128 = type { i128 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_8" = global %"$TyDescrTy_PrimTyp_7" zeroinitializer
@"$TyDescr_Int32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int32_Prim_8" to i8*) }
@"$TyDescr_Uint32_Prim_10" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 0 }
@"$TyDescr_Uint32_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint32_Prim_10" to i8*) }
@"$TyDescr_Int64_Prim_12" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 1 }
@"$TyDescr_Int64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int64_Prim_12" to i8*) }
@"$TyDescr_Uint64_Prim_14" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 1 }
@"$TyDescr_Uint64_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint64_Prim_14" to i8*) }
@"$TyDescr_Int128_Prim_16" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 2 }
@"$TyDescr_Int128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int128_Prim_16" to i8*) }
@"$TyDescr_Uint128_Prim_18" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 2 }
@"$TyDescr_Uint128_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint128_Prim_18" to i8*) }
@"$TyDescr_Int256_Prim_20" = global %"$TyDescrTy_PrimTyp_7" { i32 0, i32 3 }
@"$TyDescr_Int256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Int256_Prim_20" to i8*) }
@"$TyDescr_Uint256_Prim_22" = global %"$TyDescrTy_PrimTyp_7" { i32 1, i32 3 }
@"$TyDescr_Uint256_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Uint256_Prim_22" to i8*) }
@"$TyDescr_String_Prim_24" = global %"$TyDescrTy_PrimTyp_7" { i32 2, i32 0 }
@"$TyDescr_String_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_String_Prim_24" to i8*) }
@"$TyDescr_Bnum_Prim_26" = global %"$TyDescrTy_PrimTyp_7" { i32 3, i32 0 }
@"$TyDescr_Bnum_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bnum_Prim_26" to i8*) }
@"$TyDescr_Message_Prim_28" = global %"$TyDescrTy_PrimTyp_7" { i32 4, i32 0 }
@"$TyDescr_Message_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Message_Prim_28" to i8*) }
@"$TyDescr_Event_Prim_30" = global %"$TyDescrTy_PrimTyp_7" { i32 5, i32 0 }
@"$TyDescr_Event_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Event_Prim_30" to i8*) }
@"$TyDescr_Exception_Prim_32" = global %"$TyDescrTy_PrimTyp_7" { i32 6, i32 0 }
@"$TyDescr_Exception_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Exception_Prim_32" to i8*) }
@"$TyDescr_Bystr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_34" to i8*) }
@"$TyDescr_Bystr20_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 20 }
@"$TyDescr_Bystr20_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr20_Prim_36" to i8*) }
@"$TyDescr_ADT_Bool_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Bool_ADTTyp_Specl_58" to i8*) }
@"$TyDescr_ADT_Pair_Int128_String_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_67" to i8*) }
@"$TyDescr_ADT_List_String_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_String_ADTTyp_Specl_79" to i8*) }
@"$TyDescr_ADT_List_Message_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Message_ADTTyp_Specl_88" to i8*) }
@"$TyDescr_Addr_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_47"* @"$TyDescr_AddrFields_91" to i8*) }
@"$TyDescr_Bool_ADTTyp_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_60", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Bool_ADTTyp_m_specls_59", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_51" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_51", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_53" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_54" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_54", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_53", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_56" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Bool_True_ADTTyp_Constr_52", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Bool_False_ADTTyp_Constr_55"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_57" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Bool_ADTTyp_49" }
@"$TyDescr_Bool_ADTTyp_m_specls_59" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Bool_ADTTyp_Specl_58"]
@"$TyDescr_ADT_Bool_60" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_Pair_ADTTyp_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_69", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Pair_ADTTyp_m_specls_68", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int128_String_Constr_m_args_62" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_String_25"]
@"$TyDescr_ADT_Pair_63" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int128_String_ADTTyp_Constr_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_63", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int128_String_Constr_m_args_62", i32 0, i32 0) }
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_constrs_65" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_Int128_String_ADTTyp_Constr_64"]
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_TArgs_66" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_String_25"]
@"$TyDescr_Pair_Int128_String_ADTTyp_Specl_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_TArgs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_m_constrs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_61" }
@"$TyDescr_Pair_ADTTyp_m_specls_68" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Int128_String_ADTTyp_Specl_67"]
@"$TyDescr_ADT_Pair_69" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_List_ADTTyp_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_90", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_38"*], [2 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_List_ADTTyp_m_specls_89", i32 0, i32 0) }
@"$TyDescr_List_Cons_String_Constr_m_args_71" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_43"]
@"$TyDescr_ADT_Cons_72" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_72", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_71", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_74" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_75" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_75", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_74", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_77" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_73", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_76"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_78" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_25"]
@"$TyDescr_List_String_ADTTyp_Specl_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_List_ADTTyp_70" }
@"$TyDescr_List_Cons_Message_Constr_m_args_80" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_44"]
@"$TyDescr_ADT_Cons_81" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_81", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_80", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_83" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_84" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_84", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_86" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_82", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_85"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_87" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_29"]
@"$TyDescr_List_Message_ADTTyp_Specl_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_List_ADTTyp_70" }
@"$TyDescr_List_ADTTyp_m_specls_89" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_String_ADTTyp_Specl_79", %"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Message_ADTTyp_Specl_88"]
@"$TyDescr_ADT_List_90" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_91" = unnamed_addr constant %"$TyDescr_AddrTyp_47" { i32 -1, %"$TyDescr_AddrFieldTyp_46"* null }
@"$_gas_charge_acc_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_0" = global %Int32 zeroinitializer
@helloWorld.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@helloWorld.not_owner_code = global %Int32 zeroinitializer
@helloWorld.set_hello_code = global %Int32 zeroinitializer
@helloWorld.smsg = global %String zeroinitializer
@"$stringlit_151" = unnamed_addr constant [8 x i8] c"get lost"
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
@"$welcome_msg_159" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$sendoff_msg_170" = unnamed_addr constant [12 x i8] c"sendoff_msg\00"
@"$stringlit_218" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_223" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_226" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_256" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_270" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_275" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_278" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_309" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_335" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_340" = unnamed_addr constant [10 x i8] c"getHello()"
@"$stringlit_343" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_383" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_388" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_391" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_398" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_417" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_422" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_425" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_432" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_504" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_509" = unnamed_addr constant [15 x i8] c"ContractAddress"
@"$stringlit_512" = unnamed_addr constant [4 x i8] c"addr"
@"$stringlit_552" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_557" = unnamed_addr constant [14 x i8] c"AllContrparams"
@"$stringlit_560" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_568" = unnamed_addr constant [4 x i8] c"name"
@"$stringlit_576" = unnamed_addr constant [7 x i8] c"uint256"
@"$stringlit_584" = unnamed_addr constant [5 x i8] c"int32"
@"$stringlit_592" = unnamed_addr constant [4 x i8] c"bstr"
@"$stringlit_600" = unnamed_addr constant [9 x i8] c"all_names"
@"$stringlit_608" = unnamed_addr constant [4 x i8] c"pear"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_44", %_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_48", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_42", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_43", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 20
@"$pname__scilla_version_636" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_637" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_638" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_owner_639" = unnamed_addr constant [5 x i8] c"owner"
@"$pname_name_640" = unnamed_addr constant [4 x i8] c"name"
@"$pname_uint256_641" = unnamed_addr constant [7 x i8] c"uint256"
@"$pname_int32_642" = unnamed_addr constant [5 x i8] c"int32"
@"$pname_bstr_643" = unnamed_addr constant [4 x i8] c"bstr"
@"$pname_all_names_644" = unnamed_addr constant [9 x i8] c"all_names"
@"$pname_pear_645" = unnamed_addr constant [4 x i8] c"pear"
@_contract_parameters = constant [10 x %"$ParamDescr_634"] [%"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_636", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_11" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_637", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_638", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_27" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_owner_639", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_name_640", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_String_25" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_uint256_641", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint256_23" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_int32_642", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_9" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_bstr_643", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr_35" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$pname_all_names_644", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_43" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_pear_645", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_42" }]
@_contract_parameters_length = constant i32 10
@"$tpname__amount_646" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_647" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_648" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_msg_649" = unnamed_addr constant [3 x i8] c"msg"
@"$tparams_setHello_650" = unnamed_addr constant [4 x %"$ParamDescr_634"] [%"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_646", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_647", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_648", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_msg_649", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_String_25" }]
@"$tname_setHello_651" = unnamed_addr constant [8 x i8] c"setHello"
@"$tpname__amount_652" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_653" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_654" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_getHello_655" = unnamed_addr constant [3 x %"$ParamDescr_634"] [%"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_652", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_653", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_654", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }]
@"$tname_getHello_656" = unnamed_addr constant [8 x i8] c"getHello"
@"$tpname__amount_657" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_658" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_659" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_multipleMsgs_660" = unnamed_addr constant [3 x %"$ParamDescr_634"] [%"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_657", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_658", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_659", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }]
@"$tname_multipleMsgs_661" = unnamed_addr constant [12 x i8] c"multipleMsgs"
@"$tpname__amount_662" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_663" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_664" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_contrAddr_665" = unnamed_addr constant [3 x %"$ParamDescr_634"] [%"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_662", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_663", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_664", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }]
@"$tname_contrAddr_666" = unnamed_addr constant [9 x i8] c"contrAddr"
@"$tpname__amount_667" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_668" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_669" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_printContrParams_670" = unnamed_addr constant [3 x %"$ParamDescr_634"] [%"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_667", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_668", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_634" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_669", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }]
@"$tname_printContrParams_671" = unnamed_addr constant [16 x i8] c"printContrParams"
@_transition_parameters = constant [5 x %"$TransDescr_635"] [%"$TransDescr_635" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setHello_651", i32 0, i32 0), i32 8 }, i32 4, %"$ParamDescr_634"* getelementptr inbounds ([4 x %"$ParamDescr_634"], [4 x %"$ParamDescr_634"]* @"$tparams_setHello_650", i32 0, i32 0) }, %"$TransDescr_635" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_getHello_656", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_634"* getelementptr inbounds ([3 x %"$ParamDescr_634"], [3 x %"$ParamDescr_634"]* @"$tparams_getHello_655", i32 0, i32 0) }, %"$TransDescr_635" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_multipleMsgs_661", i32 0, i32 0), i32 12 }, i32 3, %"$ParamDescr_634"* getelementptr inbounds ([3 x %"$ParamDescr_634"], [3 x %"$ParamDescr_634"]* @"$tparams_multipleMsgs_660", i32 0, i32 0) }, %"$TransDescr_635" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_contrAddr_666", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_634"* getelementptr inbounds ([3 x %"$ParamDescr_634"], [3 x %"$ParamDescr_634"]* @"$tparams_contrAddr_665", i32 0, i32 0) }, %"$TransDescr_635" { %ParamDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$tname_printContrParams_671", i32 0, i32 0), i32 16 }, i32 3, %"$ParamDescr_634"* getelementptr inbounds ([3 x %"$ParamDescr_634"], [3 x %"$ParamDescr_634"]* @"$tparams_printContrParams_670", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define internal %TName_List_Message* @"$fundef_3"(%"$$fundef_3_env_92"* %0, i8* %1) !dbg !4 {
entry:
  %"$retval_4" = alloca %TName_List_Message*, align 8
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %entry
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %nil_msg = alloca %TName_List_Message*, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$adtval_103_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_103_salloc" = call i8* @_salloc(i8* %"$adtval_103_load", i64 1)
  %"$adtval_103" = bitcast i8* %"$adtval_103_salloc" to %CName_Nil_Message*
  %"$adtgep_104" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_103", i32 0, i32 0
  store i8 1, i8* %"$adtgep_104", align 1
  %"$adtptr_105" = bitcast %CName_Nil_Message* %"$adtval_103" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_105", %TName_List_Message** %nil_msg, align 8, !dbg !8
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_101"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$nil_msg_111" = load %TName_List_Message*, %TName_List_Message** %nil_msg, align 8
  %"$adtval_112_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_112_salloc" = call i8* @_salloc(i8* %"$adtval_112_load", i64 17)
  %"$adtval_112" = bitcast i8* %"$adtval_112_salloc" to %CName_Cons_Message*
  %"$adtgep_113" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_112", i32 0, i32 0
  store i8 0, i8* %"$adtgep_113", align 1
  %"$adtgep_114" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_112", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_114", align 8
  %"$adtgep_115" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_112", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_111", %TName_List_Message** %"$adtgep_115", align 8
  %"$adtptr_116" = bitcast %CName_Cons_Message* %"$adtval_112" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_116", %TName_List_Message** %"$retval_4", align 8, !dbg !9
  %"$$retval_4_117" = load %TName_List_Message*, %TName_List_Message** %"$retval_4", align 8
  ret %TName_List_Message* %"$$retval_4_117"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !10 {
entry:
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 5, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %entry
  %"$consume_122" = sub i64 %"$gasrem_118", 5
  store i64 %"$consume_122", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_1", align 4, !dbg !12
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 20, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 20
  store i64 %"$consume_127", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_0", align 4, !dbg !12
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_92"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8, !dbg !13
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_131"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @helloWorld.not_owner_code, align 4, !dbg !14
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @helloWorld.set_hello_code, align 4, !dbg !15
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_151", i32 0, i32 0), i32 8 }, %String* @helloWorld.smsg, align 8, !dbg !16
  ret void
}

define void @_init_state() !dbg !17 {
entry:
  %"$welcome_msg_5" = alloca %String, align 8
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %entry
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$name_157" = load %String, %String* @_cparam_name, align 8
  store %String %"$name_157", %String* %"$welcome_msg_5", align 8, !dbg !18
  %"$execptr_load_158" = load i8*, i8** @_execptr, align 8
  %"$$welcome_msg_5_160" = load %String, %String* %"$welcome_msg_5", align 8
  %"$update_value_161" = alloca %String, align 8
  store %String %"$$welcome_msg_5_160", %String* %"$update_value_161", align 8
  %"$update_value_162" = bitcast %String* %"$update_value_161" to i8*
  call void @_update_field(i8* %"$execptr_load_158", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_159", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_162"), !dbg !18
  %"$sendoff_msg_6" = alloca %String, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_155"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$helloWorld.smsg_168" = load %String, %String* @helloWorld.smsg, align 8
  store %String %"$helloWorld.smsg_168", %String* %"$sendoff_msg_6", align 8, !dbg !19
  %"$execptr_load_169" = load i8*, i8** @_execptr, align 8
  %"$$sendoff_msg_6_171" = load %String, %String* %"$sendoff_msg_6", align 8
  %"$update_value_172" = alloca %String, align 8
  store %String %"$$sendoff_msg_6_171", %String* %"$update_value_172", align 8
  %"$update_value_173" = bitcast %String* %"$update_value_172" to i8*
  call void @_update_field(i8* %"$execptr_load_169", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$sendoff_msg_170", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_173"), !dbg !19
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setHello_174"(%Uint128 %_amount, [20 x i8]* %"$_origin_175", [20 x i8]* %"$_sender_176", %String %msg) !dbg !20 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_175", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_176", align 1
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %entry
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %is_owner = alloca %TName_Bool*, align 8
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 20, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_180"
  %"$consume_186" = sub i64 %"$gasrem_182", 20
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %"$execptr_load_187" = load i8*, i8** @_execptr, align 8
  %"$eq_owner_188" = alloca [20 x i8], align 1
  %"$owner_189" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  store [20 x i8] %"$owner_189", [20 x i8]* %"$eq_owner_188", align 1
  %"$$eq_owner_188_190" = bitcast [20 x i8]* %"$eq_owner_188" to i8*
  %"$eq__sender_191" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_191", align 1
  %"$$eq__sender_191_192" = bitcast [20 x i8]* %"$eq__sender_191" to i8*
  %"$eq_call_193" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_187", i32 20, i8* %"$$eq_owner_188_190", i8* %"$$eq__sender_191_192"), !dbg !21
  store %TName_Bool* %"$eq_call_193", %TName_Bool** %is_owner, align 8, !dbg !21
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 2, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_185"
  %"$consume_199" = sub i64 %"$gasrem_195", 2
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %"$is_owner_201" = load %TName_Bool*, %TName_Bool** %is_owner, align 8
  %"$is_owner_tag_202" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_owner_201", i32 0, i32 0
  %"$is_owner_tag_203" = load i8, i8* %"$is_owner_tag_202", align 1
  switch i8 %"$is_owner_tag_203", label %"$empty_default_204" [
    i8 1, label %"$False_205"
    i8 0, label %"$True_245"
  ], !dbg !22

"$False_205":                                     ; preds = %"$have_gas_198"
  %"$is_owner_206" = bitcast %TName_Bool* %"$is_owner_201" to %CName_False*
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$False_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$False_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_210"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %"$msgobj_217_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_217_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_217_salloc_load", i64 69)
  %"$msgobj_217_salloc" = bitcast i8* %"$msgobj_217_salloc_salloc" to [69 x i8]*
  %"$msgobj_217" = bitcast [69 x i8]* %"$msgobj_217_salloc" to i8*
  store i8 2, i8* %"$msgobj_217", align 1
  %"$msgobj_fname_219" = getelementptr i8, i8* %"$msgobj_217", i32 1
  %"$msgobj_fname_220" = bitcast i8* %"$msgobj_fname_219" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_218", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_220", align 8
  %"$msgobj_td_221" = getelementptr i8, i8* %"$msgobj_217", i32 17
  %"$msgobj_td_222" = bitcast i8* %"$msgobj_td_221" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_222", align 8
  %"$msgobj_v_224" = getelementptr i8, i8* %"$msgobj_217", i32 25
  %"$msgobj_v_225" = bitcast i8* %"$msgobj_v_224" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_223", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_225", align 8
  %"$msgobj_fname_227" = getelementptr i8, i8* %"$msgobj_217", i32 41
  %"$msgobj_fname_228" = bitcast i8* %"$msgobj_fname_227" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_226", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_228", align 8
  %"$msgobj_td_229" = getelementptr i8, i8* %"$msgobj_217", i32 57
  %"$msgobj_td_230" = bitcast i8* %"$msgobj_td_229" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_230", align 8
  %"$helloWorld.not_owner_code_231" = load %Int32, %Int32* @helloWorld.not_owner_code, align 4
  %"$msgobj_v_232" = getelementptr i8, i8* %"$msgobj_217", i32 65
  %"$msgobj_v_233" = bitcast i8* %"$msgobj_v_232" to %Int32*
  store %Int32 %"$helloWorld.not_owner_code_231", %Int32* %"$msgobj_v_233", align 4
  store i8* %"$msgobj_217", i8** %e, align 8, !dbg !23
  %"$e_235" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_237" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_235")
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 %"$_literal_cost_call_237", %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_215"
  %"$consume_242" = sub i64 %"$gasrem_238", %"$_literal_cost_call_237"
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$execptr_load_243" = load i8*, i8** @_execptr, align 8
  %"$e_244" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_243", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_244"), !dbg !26
  br label %"$matchsucc_200"

"$True_245":                                      ; preds = %"$have_gas_198"
  %"$is_owner_246" = bitcast %TName_Bool* %"$is_owner_201" to %CName_True*
  %"$_literal_cost_msg_247" = alloca %String, align 8
  store %String %msg, %String* %"$_literal_cost_msg_247", align 8
  %"$$_literal_cost_msg_247_248" = bitcast %String* %"$_literal_cost_msg_247" to i8*
  %"$_literal_cost_call_249" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_msg_247_248")
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 %"$_literal_cost_call_249", %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$True_245"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$True_245"
  %"$consume_254" = sub i64 %"$gasrem_250", %"$_literal_cost_call_249"
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %"$execptr_load_255" = load i8*, i8** @_execptr, align 8
  %"$update_value_257" = alloca %String, align 8
  store %String %msg, %String* %"$update_value_257", align 8
  %"$update_value_258" = bitcast %String* %"$update_value_257" to i8*
  call void @_update_field(i8* %"$execptr_load_255", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_256", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_258"), !dbg !27
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_253"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$msgobj_269_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_269_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_269_salloc_load", i64 69)
  %"$msgobj_269_salloc" = bitcast i8* %"$msgobj_269_salloc_salloc" to [69 x i8]*
  %"$msgobj_269" = bitcast [69 x i8]* %"$msgobj_269_salloc" to i8*
  store i8 2, i8* %"$msgobj_269", align 1
  %"$msgobj_fname_271" = getelementptr i8, i8* %"$msgobj_269", i32 1
  %"$msgobj_fname_272" = bitcast i8* %"$msgobj_fname_271" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_270", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_272", align 8
  %"$msgobj_td_273" = getelementptr i8, i8* %"$msgobj_269", i32 17
  %"$msgobj_td_274" = bitcast i8* %"$msgobj_td_273" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_274", align 8
  %"$msgobj_v_276" = getelementptr i8, i8* %"$msgobj_269", i32 25
  %"$msgobj_v_277" = bitcast i8* %"$msgobj_v_276" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_275", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_277", align 8
  %"$msgobj_fname_279" = getelementptr i8, i8* %"$msgobj_269", i32 41
  %"$msgobj_fname_280" = bitcast i8* %"$msgobj_fname_279" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_278", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_280", align 8
  %"$msgobj_td_281" = getelementptr i8, i8* %"$msgobj_269", i32 57
  %"$msgobj_td_282" = bitcast i8* %"$msgobj_td_281" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_282", align 8
  %"$helloWorld.set_hello_code_283" = load %Int32, %Int32* @helloWorld.set_hello_code, align 4
  %"$msgobj_v_284" = getelementptr i8, i8* %"$msgobj_269", i32 65
  %"$msgobj_v_285" = bitcast i8* %"$msgobj_v_284" to %Int32*
  store %Int32 %"$helloWorld.set_hello_code_283", %Int32* %"$msgobj_v_285", align 4
  store i8* %"$msgobj_269", i8** %e1, align 8, !dbg !29
  %"$e_287" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_289" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_287")
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 %"$_literal_cost_call_289", %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_267"
  %"$consume_294" = sub i64 %"$gasrem_290", %"$_literal_cost_call_289"
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$execptr_load_295" = load i8*, i8** @_execptr, align 8
  %"$e_296" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_295", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_296"), !dbg !30
  br label %"$matchsucc_200"

"$empty_default_204":                             ; preds = %"$have_gas_198"
  br label %"$matchsucc_200"

"$matchsucc_200":                                 ; preds = %"$have_gas_293", %"$have_gas_241", %"$empty_default_204"
  ret void
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setHello(i8* %0) !dbg !31 {
entry:
  %"$_amount_298" = getelementptr i8, i8* %0, i32 0
  %"$_amount_299" = bitcast i8* %"$_amount_298" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_299", align 8
  %"$_origin_300" = getelementptr i8, i8* %0, i32 16
  %"$_origin_301" = bitcast i8* %"$_origin_300" to [20 x i8]*
  %"$_sender_302" = getelementptr i8, i8* %0, i32 36
  %"$_sender_303" = bitcast i8* %"$_sender_302" to [20 x i8]*
  %"$msg_304" = getelementptr i8, i8* %0, i32 56
  %"$msg_305" = bitcast i8* %"$msg_304" to %String*
  %msg = load %String, %String* %"$msg_305", align 8
  call void @"$setHello_174"(%Uint128 %_amount, [20 x i8]* %"$_origin_301", [20 x i8]* %"$_sender_303", %String %msg), !dbg !32
  ret void
}

define internal void @"$getHello_306"(%Uint128 %_amount, [20 x i8]* %"$_origin_307", [20 x i8]* %"$_sender_308") !dbg !33 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_307", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_308", align 1
  %r = alloca %String, align 8
  %"$execptr_load_310" = load i8*, i8** @_execptr, align 8
  %"$r_call_311" = call i8* @_fetch_field(i8* %"$execptr_load_310", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_309", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i32 1), !dbg !34
  %"$r_312" = bitcast i8* %"$r_call_311" to %String*
  %"$r_313" = load %String, %String* %"$r_312", align 8
  store %String %"$r_313", %String* %r, align 8
  %"$_literal_cost_r_314" = alloca %String, align 8
  %"$r_315" = load %String, %String* %r, align 8
  store %String %"$r_315", %String* %"$_literal_cost_r_314", align 8
  %"$$_literal_cost_r_314_316" = bitcast %String* %"$_literal_cost_r_314" to i8*
  %"$_literal_cost_call_317" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_r_314_316")
  %"$gasadd_318" = add i64 %"$_literal_cost_call_317", 0
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 %"$gasadd_318", %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %entry
  %"$consume_323" = sub i64 %"$gasrem_319", %"$gasadd_318"
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$have_gas_322"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_327"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$msgobj_334_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_334_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_334_salloc_load", i64 81)
  %"$msgobj_334_salloc" = bitcast i8* %"$msgobj_334_salloc_salloc" to [81 x i8]*
  %"$msgobj_334" = bitcast [81 x i8]* %"$msgobj_334_salloc" to i8*
  store i8 2, i8* %"$msgobj_334", align 1
  %"$msgobj_fname_336" = getelementptr i8, i8* %"$msgobj_334", i32 1
  %"$msgobj_fname_337" = bitcast i8* %"$msgobj_fname_336" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_335", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_337", align 8
  %"$msgobj_td_338" = getelementptr i8, i8* %"$msgobj_334", i32 17
  %"$msgobj_td_339" = bitcast i8* %"$msgobj_td_338" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_339", align 8
  %"$msgobj_v_341" = getelementptr i8, i8* %"$msgobj_334", i32 25
  %"$msgobj_v_342" = bitcast i8* %"$msgobj_v_341" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_340", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_342", align 8
  %"$msgobj_fname_344" = getelementptr i8, i8* %"$msgobj_334", i32 41
  %"$msgobj_fname_345" = bitcast i8* %"$msgobj_fname_344" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_343", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_345", align 8
  %"$msgobj_td_346" = getelementptr i8, i8* %"$msgobj_334", i32 57
  %"$msgobj_td_347" = bitcast i8* %"$msgobj_td_346" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_347", align 8
  %"$r_348" = load %String, %String* %r, align 8
  %"$msgobj_v_349" = getelementptr i8, i8* %"$msgobj_334", i32 65
  %"$msgobj_v_350" = bitcast i8* %"$msgobj_v_349" to %String*
  store %String %"$r_348", %String* %"$msgobj_v_350", align 8
  store i8* %"$msgobj_334", i8** %e, align 8, !dbg !35
  %"$e_352" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_354" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_352")
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 %"$_literal_cost_call_354", %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_332"
  %"$consume_359" = sub i64 %"$gasrem_355", %"$_literal_cost_call_354"
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %"$execptr_load_360" = load i8*, i8** @_execptr, align 8
  %"$e_361" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_360", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_361"), !dbg !36
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @getHello(i8* %0) !dbg !37 {
entry:
  %"$_amount_363" = getelementptr i8, i8* %0, i32 0
  %"$_amount_364" = bitcast i8* %"$_amount_363" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_364", align 8
  %"$_origin_365" = getelementptr i8, i8* %0, i32 16
  %"$_origin_366" = bitcast i8* %"$_origin_365" to [20 x i8]*
  %"$_sender_367" = getelementptr i8, i8* %0, i32 36
  %"$_sender_368" = bitcast i8* %"$_sender_367" to [20 x i8]*
  call void @"$getHello_306"(%Uint128 %_amount, [20 x i8]* %"$_origin_366", [20 x i8]* %"$_sender_368"), !dbg !38
  ret void
}

define internal void @"$multipleMsgs_369"(%Uint128 %_amount, [20 x i8]* %"$_origin_370", [20 x i8]* %"$_sender_371") !dbg !39 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_370", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_371", align 1
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %entry
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_375"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %"$msgobj_382_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_382_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_382_salloc_load", i64 125)
  %"$msgobj_382_salloc" = bitcast i8* %"$msgobj_382_salloc_salloc" to [125 x i8]*
  %"$msgobj_382" = bitcast [125 x i8]* %"$msgobj_382_salloc" to i8*
  store i8 3, i8* %"$msgobj_382", align 1
  %"$msgobj_fname_384" = getelementptr i8, i8* %"$msgobj_382", i32 1
  %"$msgobj_fname_385" = bitcast i8* %"$msgobj_fname_384" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_383", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_385", align 8
  %"$msgobj_td_386" = getelementptr i8, i8* %"$msgobj_382", i32 17
  %"$msgobj_td_387" = bitcast i8* %"$msgobj_td_386" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_387", align 8
  %"$msgobj_v_389" = getelementptr i8, i8* %"$msgobj_382", i32 25
  %"$msgobj_v_390" = bitcast i8* %"$msgobj_v_389" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_388", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_390", align 8
  %"$msgobj_fname_392" = getelementptr i8, i8* %"$msgobj_382", i32 41
  %"$msgobj_fname_393" = bitcast i8* %"$msgobj_fname_392" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_391", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_393", align 8
  %"$msgobj_td_394" = getelementptr i8, i8* %"$msgobj_382", i32 57
  %"$msgobj_td_395" = bitcast i8* %"$msgobj_td_394" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_395", align 8
  %"$msgobj_v_396" = getelementptr i8, i8* %"$msgobj_382", i32 65
  %"$msgobj_v_397" = bitcast i8* %"$msgobj_v_396" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_397", align 1
  %"$msgobj_fname_399" = getelementptr i8, i8* %"$msgobj_382", i32 85
  %"$msgobj_fname_400" = bitcast i8* %"$msgobj_fname_399" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_398", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_400", align 8
  %"$msgobj_td_401" = getelementptr i8, i8* %"$msgobj_382", i32 101
  %"$msgobj_td_402" = bitcast i8* %"$msgobj_td_401" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ** %"$msgobj_td_402", align 8
  %"$msgobj_v_403" = getelementptr i8, i8* %"$msgobj_382", i32 109
  %"$msgobj_v_404" = bitcast i8* %"$msgobj_v_403" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_404", align 8
  store i8* %"$msgobj_382", i8** %msg1, align 8, !dbg !40
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$have_gas_380"
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_409"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %"$msgobj_416_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_416_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_416_salloc_load", i64 125)
  %"$msgobj_416_salloc" = bitcast i8* %"$msgobj_416_salloc_salloc" to [125 x i8]*
  %"$msgobj_416" = bitcast [125 x i8]* %"$msgobj_416_salloc" to i8*
  store i8 3, i8* %"$msgobj_416", align 1
  %"$msgobj_fname_418" = getelementptr i8, i8* %"$msgobj_416", i32 1
  %"$msgobj_fname_419" = bitcast i8* %"$msgobj_fname_418" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_417", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_419", align 8
  %"$msgobj_td_420" = getelementptr i8, i8* %"$msgobj_416", i32 17
  %"$msgobj_td_421" = bitcast i8* %"$msgobj_td_420" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_421", align 8
  %"$msgobj_v_423" = getelementptr i8, i8* %"$msgobj_416", i32 25
  %"$msgobj_v_424" = bitcast i8* %"$msgobj_v_423" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_422", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_424", align 8
  %"$msgobj_fname_426" = getelementptr i8, i8* %"$msgobj_416", i32 41
  %"$msgobj_fname_427" = bitcast i8* %"$msgobj_fname_426" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_425", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_427", align 8
  %"$msgobj_td_428" = getelementptr i8, i8* %"$msgobj_416", i32 57
  %"$msgobj_td_429" = bitcast i8* %"$msgobj_td_428" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_429", align 8
  %"$msgobj_v_430" = getelementptr i8, i8* %"$msgobj_416", i32 65
  %"$msgobj_v_431" = bitcast i8* %"$msgobj_v_430" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_431", align 1
  %"$msgobj_fname_433" = getelementptr i8, i8* %"$msgobj_416", i32 85
  %"$msgobj_fname_434" = bitcast i8* %"$msgobj_fname_433" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_432", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_434", align 8
  %"$msgobj_td_435" = getelementptr i8, i8* %"$msgobj_416", i32 101
  %"$msgobj_td_436" = bitcast i8* %"$msgobj_td_435" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ** %"$msgobj_td_436", align 8
  %"$msgobj_v_437" = getelementptr i8, i8* %"$msgobj_416", i32 109
  %"$msgobj_v_438" = bitcast i8* %"$msgobj_v_437" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_438", align 8
  store i8* %"$msgobj_416", i8** %msg2, align 8, !dbg !41
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_414"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_443"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  %"$helloWorld.one_msg_2" = alloca %TName_List_Message*, align 8
  %"$helloWorld.one_msg_450" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8
  %"$helloWorld.one_msg_fptr_451" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_450", 0
  %"$helloWorld.one_msg_envptr_452" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_450", 1
  %"$msg1_453" = load i8*, i8** %msg1, align 8
  %"$helloWorld.one_msg_call_454" = call %TName_List_Message* %"$helloWorld.one_msg_fptr_451"(i8* %"$helloWorld.one_msg_envptr_452", i8* %"$msg1_453"), !dbg !42
  store %TName_List_Message* %"$helloWorld.one_msg_call_454", %TName_List_Message** %"$helloWorld.one_msg_2", align 8, !dbg !42
  %"$$helloWorld.one_msg_2_455" = load %TName_List_Message*, %TName_List_Message** %"$helloWorld.one_msg_2", align 8
  store %TName_List_Message* %"$$helloWorld.one_msg_2_455", %TName_List_Message** %msgs1, align 8, !dbg !42
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_448"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_459"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %"$msg2_466" = load i8*, i8** %msg2, align 8
  %"$msgs1_467" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_468_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_468_salloc" = call i8* @_salloc(i8* %"$adtval_468_load", i64 17)
  %"$adtval_468" = bitcast i8* %"$adtval_468_salloc" to %CName_Cons_Message*
  %"$adtgep_469" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_468", i32 0, i32 0
  store i8 0, i8* %"$adtgep_469", align 1
  %"$adtgep_470" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_468", i32 0, i32 1
  store i8* %"$msg2_466", i8** %"$adtgep_470", align 8
  %"$adtgep_471" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_468", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_467", %TName_List_Message** %"$adtgep_471", align 8
  %"$adtptr_472" = bitcast %CName_Cons_Message* %"$adtval_468" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_472", %TName_List_Message** %msgs2, align 8, !dbg !43
  %"$msgs2_473" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_473_474" = bitcast %TName_List_Message* %"$msgs2_473" to i8*
  %"$_literal_cost_call_475" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_44", i8* %"$$msgs2_473_474")
  %"$gasrem_476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_477" = icmp ugt i64 %"$_literal_cost_call_475", %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_464"
  %"$consume_480" = sub i64 %"$gasrem_476", %"$_literal_cost_call_475"
  store i64 %"$consume_480", i64* @_gasrem, align 8
  %"$execptr_load_481" = load i8*, i8** @_execptr, align 8
  %"$msgs2_482" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_481", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_44", %TName_List_Message* %"$msgs2_482"), !dbg !44
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @multipleMsgs(i8* %0) !dbg !45 {
entry:
  %"$_amount_484" = getelementptr i8, i8* %0, i32 0
  %"$_amount_485" = bitcast i8* %"$_amount_484" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_485", align 8
  %"$_origin_486" = getelementptr i8, i8* %0, i32 16
  %"$_origin_487" = bitcast i8* %"$_origin_486" to [20 x i8]*
  %"$_sender_488" = getelementptr i8, i8* %0, i32 36
  %"$_sender_489" = bitcast i8* %"$_sender_488" to [20 x i8]*
  call void @"$multipleMsgs_369"(%Uint128 %_amount, [20 x i8]* %"$_origin_487", [20 x i8]* %"$_sender_489"), !dbg !46
  ret void
}

define internal void @"$contrAddr_490"(%Uint128 %_amount, [20 x i8]* %"$_origin_491", [20 x i8]* %"$_sender_492") !dbg !47 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_491", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_492", align 1
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 1, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %entry
  %"$consume_497" = sub i64 %"$gasrem_493", 1
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_496"
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$msgobj_503_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_503_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_503_salloc_load", i64 85)
  %"$msgobj_503_salloc" = bitcast i8* %"$msgobj_503_salloc_salloc" to [85 x i8]*
  %"$msgobj_503" = bitcast [85 x i8]* %"$msgobj_503_salloc" to i8*
  store i8 2, i8* %"$msgobj_503", align 1
  %"$msgobj_fname_505" = getelementptr i8, i8* %"$msgobj_503", i32 1
  %"$msgobj_fname_506" = bitcast i8* %"$msgobj_fname_505" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_504", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_506", align 8
  %"$msgobj_td_507" = getelementptr i8, i8* %"$msgobj_503", i32 17
  %"$msgobj_td_508" = bitcast i8* %"$msgobj_td_507" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_508", align 8
  %"$msgobj_v_510" = getelementptr i8, i8* %"$msgobj_503", i32 25
  %"$msgobj_v_511" = bitcast i8* %"$msgobj_v_510" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_509", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_511", align 8
  %"$msgobj_fname_513" = getelementptr i8, i8* %"$msgobj_503", i32 41
  %"$msgobj_fname_514" = bitcast i8* %"$msgobj_fname_513" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_512", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_514", align 8
  %"$msgobj_td_515" = getelementptr i8, i8* %"$msgobj_503", i32 57
  %"$msgobj_td_516" = bitcast i8* %"$msgobj_td_515" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_516", align 8
  %"$_this_address_517" = load [20 x i8], [20 x i8]* @_cparam__this_address, align 1
  %"$msgobj_v_518" = getelementptr i8, i8* %"$msgobj_503", i32 65
  %"$msgobj_v_519" = bitcast i8* %"$msgobj_v_518" to [20 x i8]*
  store [20 x i8] %"$_this_address_517", [20 x i8]* %"$msgobj_v_519", align 1
  store i8* %"$msgobj_503", i8** %msg1, align 8, !dbg !48
  %"$msg1_521" = load i8*, i8** %msg1, align 8
  %"$_literal_cost_call_523" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$msg1_521")
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 %"$_literal_cost_call_523", %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_501"
  %"$consume_528" = sub i64 %"$gasrem_524", %"$_literal_cost_call_523"
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %"$execptr_load_529" = load i8*, i8** @_execptr, align 8
  %"$msg1_530" = load i8*, i8** %msg1, align 8
  call void @_event(i8* %"$execptr_load_529", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$msg1_530"), !dbg !49
  ret void
}

define void @contrAddr(i8* %0) !dbg !50 {
entry:
  %"$_amount_532" = getelementptr i8, i8* %0, i32 0
  %"$_amount_533" = bitcast i8* %"$_amount_532" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_533", align 8
  %"$_origin_534" = getelementptr i8, i8* %0, i32 16
  %"$_origin_535" = bitcast i8* %"$_origin_534" to [20 x i8]*
  %"$_sender_536" = getelementptr i8, i8* %0, i32 36
  %"$_sender_537" = bitcast i8* %"$_sender_536" to [20 x i8]*
  call void @"$contrAddr_490"(%Uint128 %_amount, [20 x i8]* %"$_origin_535", [20 x i8]* %"$_sender_537"), !dbg !51
  ret void
}

define internal void @"$printContrParams_538"(%Uint128 %_amount, [20 x i8]* %"$_origin_539", [20 x i8]* %"$_sender_540") !dbg !52 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_539", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_540", align 1
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %entry
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_544"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %"$msgobj_551_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_551_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_551_salloc_load", i64 313)
  %"$msgobj_551_salloc" = bitcast i8* %"$msgobj_551_salloc_salloc" to [313 x i8]*
  %"$msgobj_551" = bitcast [313 x i8]* %"$msgobj_551_salloc" to i8*
  store i8 8, i8* %"$msgobj_551", align 1
  %"$msgobj_fname_553" = getelementptr i8, i8* %"$msgobj_551", i32 1
  %"$msgobj_fname_554" = bitcast i8* %"$msgobj_fname_553" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_552", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_554", align 8
  %"$msgobj_td_555" = getelementptr i8, i8* %"$msgobj_551", i32 17
  %"$msgobj_td_556" = bitcast i8* %"$msgobj_td_555" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_556", align 8
  %"$msgobj_v_558" = getelementptr i8, i8* %"$msgobj_551", i32 25
  %"$msgobj_v_559" = bitcast i8* %"$msgobj_v_558" to %String*
  store %String { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$stringlit_557", i32 0, i32 0), i32 14 }, %String* %"$msgobj_v_559", align 8
  %"$msgobj_fname_561" = getelementptr i8, i8* %"$msgobj_551", i32 41
  %"$msgobj_fname_562" = bitcast i8* %"$msgobj_fname_561" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_560", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_562", align 8
  %"$msgobj_td_563" = getelementptr i8, i8* %"$msgobj_551", i32 57
  %"$msgobj_td_564" = bitcast i8* %"$msgobj_td_563" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_564", align 8
  %"$owner_565" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  %"$msgobj_v_566" = getelementptr i8, i8* %"$msgobj_551", i32 65
  %"$msgobj_v_567" = bitcast i8* %"$msgobj_v_566" to [20 x i8]*
  store [20 x i8] %"$owner_565", [20 x i8]* %"$msgobj_v_567", align 1
  %"$msgobj_fname_569" = getelementptr i8, i8* %"$msgobj_551", i32 85
  %"$msgobj_fname_570" = bitcast i8* %"$msgobj_fname_569" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_568", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_570", align 8
  %"$msgobj_td_571" = getelementptr i8, i8* %"$msgobj_551", i32 101
  %"$msgobj_td_572" = bitcast i8* %"$msgobj_td_571" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_572", align 8
  %"$name_573" = load %String, %String* @_cparam_name, align 8
  %"$msgobj_v_574" = getelementptr i8, i8* %"$msgobj_551", i32 109
  %"$msgobj_v_575" = bitcast i8* %"$msgobj_v_574" to %String*
  store %String %"$name_573", %String* %"$msgobj_v_575", align 8
  %"$msgobj_fname_577" = getelementptr i8, i8* %"$msgobj_551", i32 125
  %"$msgobj_fname_578" = bitcast i8* %"$msgobj_fname_577" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_576", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_578", align 8
  %"$msgobj_td_579" = getelementptr i8, i8* %"$msgobj_551", i32 141
  %"$msgobj_td_580" = bitcast i8* %"$msgobj_td_579" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ** %"$msgobj_td_580", align 8
  %"$uint256_581" = load %Uint256, %Uint256* @_cparam_uint256, align 8
  %"$msgobj_v_582" = getelementptr i8, i8* %"$msgobj_551", i32 149
  %"$msgobj_v_583" = bitcast i8* %"$msgobj_v_582" to %Uint256*
  store %Uint256 %"$uint256_581", %Uint256* %"$msgobj_v_583", align 8
  %"$msgobj_fname_585" = getelementptr i8, i8* %"$msgobj_551", i32 181
  %"$msgobj_fname_586" = bitcast i8* %"$msgobj_fname_585" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_584", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_586", align 8
  %"$msgobj_td_587" = getelementptr i8, i8* %"$msgobj_551", i32 197
  %"$msgobj_td_588" = bitcast i8* %"$msgobj_td_587" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_588", align 8
  %"$int32_589" = load %Int32, %Int32* @_cparam_int32, align 4
  %"$msgobj_v_590" = getelementptr i8, i8* %"$msgobj_551", i32 205
  %"$msgobj_v_591" = bitcast i8* %"$msgobj_v_590" to %Int32*
  store %Int32 %"$int32_589", %Int32* %"$msgobj_v_591", align 4
  %"$msgobj_fname_593" = getelementptr i8, i8* %"$msgobj_551", i32 209
  %"$msgobj_fname_594" = bitcast i8* %"$msgobj_fname_593" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_592", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_594", align 8
  %"$msgobj_td_595" = getelementptr i8, i8* %"$msgobj_551", i32 225
  %"$msgobj_td_596" = bitcast i8* %"$msgobj_td_595" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ** %"$msgobj_td_596", align 8
  %"$bstr_597" = load %Bystr, %Bystr* @_cparam_bstr, align 8
  %"$msgobj_v_598" = getelementptr i8, i8* %"$msgobj_551", i32 233
  %"$msgobj_v_599" = bitcast i8* %"$msgobj_v_598" to %Bystr*
  store %Bystr %"$bstr_597", %Bystr* %"$msgobj_v_599", align 8
  %"$msgobj_fname_601" = getelementptr i8, i8* %"$msgobj_551", i32 249
  %"$msgobj_fname_602" = bitcast i8* %"$msgobj_fname_601" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_600", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_602", align 8
  %"$msgobj_td_603" = getelementptr i8, i8* %"$msgobj_551", i32 265
  %"$msgobj_td_604" = bitcast i8* %"$msgobj_td_603" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_43", %_TyDescrTy_Typ** %"$msgobj_td_604", align 8
  %"$all_names_605" = load %TName_List_String*, %TName_List_String** @_cparam_all_names, align 8
  %"$msgobj_v_606" = getelementptr i8, i8* %"$msgobj_551", i32 273
  %"$msgobj_v_607" = bitcast i8* %"$msgobj_v_606" to %TName_List_String**
  store %TName_List_String* %"$all_names_605", %TName_List_String** %"$msgobj_v_607", align 8
  %"$msgobj_fname_609" = getelementptr i8, i8* %"$msgobj_551", i32 281
  %"$msgobj_fname_610" = bitcast i8* %"$msgobj_fname_609" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_608", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_610", align 8
  %"$msgobj_td_611" = getelementptr i8, i8* %"$msgobj_551", i32 297
  %"$msgobj_td_612" = bitcast i8* %"$msgobj_td_611" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_42", %_TyDescrTy_Typ** %"$msgobj_td_612", align 8
  %"$pear_613" = load %TName_Pair_Int128_String*, %TName_Pair_Int128_String** @_cparam_pear, align 8
  %"$msgobj_v_614" = getelementptr i8, i8* %"$msgobj_551", i32 305
  %"$msgobj_v_615" = bitcast i8* %"$msgobj_v_614" to %TName_Pair_Int128_String**
  store %TName_Pair_Int128_String* %"$pear_613", %TName_Pair_Int128_String** %"$msgobj_v_615", align 8
  store i8* %"$msgobj_551", i8** %e, align 8, !dbg !53
  %"$e_617" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_619" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_617")
  %"$gasrem_620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_621" = icmp ugt i64 %"$_literal_cost_call_619", %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %"$have_gas_549"
  %"$consume_624" = sub i64 %"$gasrem_620", %"$_literal_cost_call_619"
  store i64 %"$consume_624", i64* @_gasrem, align 8
  %"$execptr_load_625" = load i8*, i8** @_execptr, align 8
  %"$e_626" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_625", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_626"), !dbg !54
  ret void
}

define void @printContrParams(i8* %0) !dbg !55 {
entry:
  %"$_amount_628" = getelementptr i8, i8* %0, i32 0
  %"$_amount_629" = bitcast i8* %"$_amount_628" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_629", align 8
  %"$_origin_630" = getelementptr i8, i8* %0, i32 16
  %"$_origin_631" = bitcast i8* %"$_origin_630" to [20 x i8]*
  %"$_sender_632" = getelementptr i8, i8* %0, i32 36
  %"$_sender_633" = bitcast i8* %"$_sender_632" to [20 x i8]*
  call void @"$printContrParams_538"(%Uint128 %_amount, [20 x i8]* %"$_origin_631", [20 x i8]* %"$_sender_633"), !dbg !56
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "helloWorld.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 14, column: 17, scope: !4)
!9 = !DILocation(line: 15, column: 3, scope: !4)
!10 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DIFile(filename: ".", directory: ".")
!12 = !DILocation(line: 0, scope: !10)
!13 = !DILocation(line: 14, column: 3, scope: !10)
!14 = !DILocation(line: 17, column: 22, scope: !10)
!15 = !DILocation(line: 18, column: 22, scope: !10)
!16 = !DILocation(line: 20, column: 21, scope: !10)
!17 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 36, column: 30, scope: !17)
!19 = !DILocation(line: 37, column: 30, scope: !17)
!20 = distinct !DISubprogram(name: "setHello", linkageName: "setHello", scope: !2, file: !2, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 40, column: 14, scope: !20)
!22 = !DILocation(line: 41, column: 3, scope: !20)
!23 = !DILocation(line: 43, column: 9, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !2, line: 42, column: 5)
!25 = distinct !DILexicalBlock(scope: !20, file: !2, line: 41, column: 3)
!26 = !DILocation(line: 44, column: 5, scope: !24)
!27 = !DILocation(line: 46, column: 5, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !2, line: 45, column: 5)
!29 = !DILocation(line: 47, column: 9, scope: !28)
!30 = !DILocation(line: 48, column: 5, scope: !28)
!31 = distinct !DISubprogram(name: "setHello", linkageName: "setHello", scope: !2, file: !2, line: 39, type: !5, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 39, column: 12, scope: !31)
!33 = distinct !DISubprogram(name: "getHello", linkageName: "getHello", scope: !2, file: !2, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DILocation(line: 54, column: 5, scope: !33)
!35 = !DILocation(line: 55, column: 9, scope: !33)
!36 = !DILocation(line: 56, column: 5, scope: !33)
!37 = distinct !DISubprogram(name: "getHello", linkageName: "getHello", scope: !2, file: !2, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!38 = !DILocation(line: 53, column: 12, scope: !37)
!39 = distinct !DISubprogram(name: "multipleMsgs", linkageName: "multipleMsgs", scope: !2, file: !2, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DILocation(line: 60, column: 10, scope: !39)
!41 = !DILocation(line: 61, column: 10, scope: !39)
!42 = !DILocation(line: 62, column: 11, scope: !39)
!43 = !DILocation(line: 63, column: 11, scope: !39)
!44 = !DILocation(line: 64, column: 3, scope: !39)
!45 = distinct !DISubprogram(name: "multipleMsgs", linkageName: "multipleMsgs", scope: !2, file: !2, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 59, column: 12, scope: !45)
!47 = distinct !DISubprogram(name: "contrAddr", linkageName: "contrAddr", scope: !2, file: !2, line: 67, type: !5, scopeLine: 67, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!48 = !DILocation(line: 68, column: 10, scope: !47)
!49 = !DILocation(line: 69, column: 3, scope: !47)
!50 = distinct !DISubprogram(name: "contrAddr", linkageName: "contrAddr", scope: !2, file: !2, line: 67, type: !5, scopeLine: 67, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!51 = !DILocation(line: 67, column: 12, scope: !50)
!52 = distinct !DISubprogram(name: "printContrParams", linkageName: "printContrParams", scope: !2, file: !2, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!53 = !DILocation(line: 73, column: 7, scope: !52)
!54 = !DILocation(line: 83, column: 3, scope: !52)
!55 = distinct !DISubprogram(name: "printContrParams", linkageName: "printContrParams", scope: !2, file: !2, line: 72, type: !5, scopeLine: 72, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!56 = !DILocation(line: 72, column: 12, scope: !55)
