

; gas_remaining: 4001918
; ModuleID = 'HelloWorld'
source_filename = "HelloWorld"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_639" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_640" = type { %ParamDescrString, i32, %"$ParamDescr_639"* }
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
@"$TyDescr_AddrFields_91" = unnamed_addr constant %"$TyDescr_AddrTyp_47" { i32 -3, %"$TyDescr_AddrFieldTyp_46"* null }
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
@"$welcome_msg_164" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$sendoff_msg_175" = unnamed_addr constant [12 x i8] c"sendoff_msg\00"
@"$stringlit_223" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_228" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_231" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_261" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_275" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_280" = unnamed_addr constant [10 x i8] c"setHello()"
@"$stringlit_283" = unnamed_addr constant [4 x i8] c"code"
@"$welcome_msg_314" = unnamed_addr constant [12 x i8] c"welcome_msg\00"
@"$stringlit_340" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_345" = unnamed_addr constant [10 x i8] c"getHello()"
@"$stringlit_348" = unnamed_addr constant [3 x i8] c"msg"
@"$stringlit_388" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_393" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_396" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_403" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_422" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_427" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_430" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_437" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_509" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_514" = unnamed_addr constant [15 x i8] c"ContractAddress"
@"$stringlit_517" = unnamed_addr constant [4 x i8] c"addr"
@"$stringlit_557" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_562" = unnamed_addr constant [14 x i8] c"AllContrparams"
@"$stringlit_565" = unnamed_addr constant [5 x i8] c"owner"
@"$stringlit_573" = unnamed_addr constant [4 x i8] c"name"
@"$stringlit_581" = unnamed_addr constant [7 x i8] c"uint256"
@"$stringlit_589" = unnamed_addr constant [5 x i8] c"int32"
@"$stringlit_597" = unnamed_addr constant [4 x i8] c"bstr"
@"$stringlit_605" = unnamed_addr constant [9 x i8] c"all_names"
@"$stringlit_613" = unnamed_addr constant [4 x i8] c"pear"
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_44", %_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Addr_48", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_42", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_43", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 20
@"$pname__scilla_version_641" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_642" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_643" = unnamed_addr constant [15 x i8] c"_creation_block"
@"$pname_owner_644" = unnamed_addr constant [5 x i8] c"owner"
@"$pname_name_645" = unnamed_addr constant [4 x i8] c"name"
@"$pname_uint256_646" = unnamed_addr constant [7 x i8] c"uint256"
@"$pname_int32_647" = unnamed_addr constant [5 x i8] c"int32"
@"$pname_bstr_648" = unnamed_addr constant [4 x i8] c"bstr"
@"$pname_all_names_649" = unnamed_addr constant [9 x i8] c"all_names"
@"$pname_pear_650" = unnamed_addr constant [4 x i8] c"pear"
@_contract_parameters = constant [10 x %"$ParamDescr_639"] [%"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_641", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_11" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_642", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_643", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_27" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_owner_644", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_name_645", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_String_25" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$pname_uint256_646", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint256_23" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$pname_int32_647", i32 0, i32 0), i32 5 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_9" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_bstr_648", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr_35" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$pname_all_names_649", i32 0, i32 0), i32 9 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_43" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$pname_pear_650", i32 0, i32 0), i32 4 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_42" }]
@_contract_parameters_length = constant i32 10
@"$tpname__amount_651" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_652" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_653" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_msg_654" = unnamed_addr constant [3 x i8] c"msg"
@"$tparams_setHello_655" = unnamed_addr constant [4 x %"$ParamDescr_639"] [%"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_651", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_652", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_653", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_msg_654", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_String_25" }]
@"$tname_setHello_656" = unnamed_addr constant [8 x i8] c"setHello"
@"$tpname__amount_657" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_658" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_659" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_getHello_660" = unnamed_addr constant [3 x %"$ParamDescr_639"] [%"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_657", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_658", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_659", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }]
@"$tname_getHello_661" = unnamed_addr constant [8 x i8] c"getHello"
@"$tpname__amount_662" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_663" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_664" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_multipleMsgs_665" = unnamed_addr constant [3 x %"$ParamDescr_639"] [%"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_662", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_663", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_664", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }]
@"$tname_multipleMsgs_666" = unnamed_addr constant [12 x i8] c"multipleMsgs"
@"$tpname__amount_667" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_668" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_669" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_contrAddr_670" = unnamed_addr constant [3 x %"$ParamDescr_639"] [%"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_667", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_668", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_669", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }]
@"$tname_contrAddr_671" = unnamed_addr constant [9 x i8] c"contrAddr"
@"$tpname__amount_672" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_673" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_674" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_printContrParams_675" = unnamed_addr constant [3 x %"$ParamDescr_639"] [%"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_672", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_19" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_673", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }, %"$ParamDescr_639" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_674", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_48" }]
@"$tname_printContrParams_676" = unnamed_addr constant [16 x i8] c"printContrParams"
@_transition_parameters = constant [5 x %"$TransDescr_640"] [%"$TransDescr_640" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_setHello_656", i32 0, i32 0), i32 8 }, i32 4, %"$ParamDescr_639"* getelementptr inbounds ([4 x %"$ParamDescr_639"], [4 x %"$ParamDescr_639"]* @"$tparams_setHello_655", i32 0, i32 0) }, %"$TransDescr_640" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_getHello_661", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_639"* getelementptr inbounds ([3 x %"$ParamDescr_639"], [3 x %"$ParamDescr_639"]* @"$tparams_getHello_660", i32 0, i32 0) }, %"$TransDescr_640" { %ParamDescrString { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$tname_multipleMsgs_666", i32 0, i32 0), i32 12 }, i32 3, %"$ParamDescr_639"* getelementptr inbounds ([3 x %"$ParamDescr_639"], [3 x %"$ParamDescr_639"]* @"$tparams_multipleMsgs_665", i32 0, i32 0) }, %"$TransDescr_640" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_contrAddr_671", i32 0, i32 0), i32 9 }, i32 3, %"$ParamDescr_639"* getelementptr inbounds ([3 x %"$ParamDescr_639"], [3 x %"$ParamDescr_639"]* @"$tparams_contrAddr_670", i32 0, i32 0) }, %"$TransDescr_640" { %ParamDescrString { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @"$tname_printContrParams_676", i32 0, i32 0), i32 16 }, i32 3, %"$ParamDescr_639"* getelementptr inbounds ([3 x %"$ParamDescr_639"], [3 x %"$ParamDescr_639"]* @"$tparams_printContrParams_675", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 5

define internal %TName_List_Message* @"$fundef_3"(%"$$fundef_3_env_92"* %0, i8* %1) {
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
  store %TName_List_Message* %"$adtptr_105", %TName_List_Message** %nil_msg, align 8
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
  store %TName_List_Message* %"$adtptr_116", %TName_List_Message** %"$retval_4", align 8
  %"$$retval_4_117" = load %TName_List_Message*, %TName_List_Message** %"$retval_4", align 8
  ret %TName_List_Message* %"$$retval_4_117"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_1", align 4
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 20, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 20
  store i64 %"$consume_127", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_0", align 4
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_92"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_131"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* @helloWorld.not_owner_code, align 4
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @helloWorld.set_hello_code, align 4
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$stringlit_151", i32 0, i32 0), i32 8 }, %String* @helloWorld.smsg, align 8
  ret void
}

define void @_deploy_ops() {
entry:
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %entry
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$welcome_msg_5" = alloca %String, align 8
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %"$name_162" = load %String, %String* @_cparam_name, align 8
  store %String %"$name_162", %String* %"$welcome_msg_5", align 8
  %"$execptr_load_163" = load i8*, i8** @_execptr, align 8
  %"$$welcome_msg_5_165" = load %String, %String* %"$welcome_msg_5", align 8
  %"$update_value_166" = alloca %String, align 8
  store %String %"$$welcome_msg_5_165", %String* %"$update_value_166", align 8
  %"$update_value_167" = bitcast %String* %"$update_value_166" to i8*
  call void @_update_field(i8* %"$execptr_load_163", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_164", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_167")
  %"$sendoff_msg_6" = alloca %String, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_160"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %"$helloWorld.smsg_173" = load %String, %String* @helloWorld.smsg, align 8
  store %String %"$helloWorld.smsg_173", %String* %"$sendoff_msg_6", align 8
  %"$execptr_load_174" = load i8*, i8** @_execptr, align 8
  %"$$sendoff_msg_6_176" = load %String, %String* %"$sendoff_msg_6", align 8
  %"$update_value_177" = alloca %String, align 8
  store %String %"$$sendoff_msg_6_176", %String* %"$update_value_177", align 8
  %"$update_value_178" = bitcast %String* %"$update_value_177" to i8*
  call void @_update_field(i8* %"$execptr_load_174", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$sendoff_msg_175", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_178")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$setHello_179"(%Uint128 %_amount, [20 x i8]* %"$_origin_180", [20 x i8]* %"$_sender_181", %String %msg) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_180", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_181", align 1
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %entry
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %is_owner = alloca %TName_Bool*, align 8
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 20, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 20
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$execptr_load_192" = load i8*, i8** @_execptr, align 8
  %"$eq_owner_193" = alloca [20 x i8], align 1
  %"$owner_194" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  store [20 x i8] %"$owner_194", [20 x i8]* %"$eq_owner_193", align 1
  %"$$eq_owner_193_195" = bitcast [20 x i8]* %"$eq_owner_193" to i8*
  %"$eq__sender_196" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$eq__sender_196", align 1
  %"$$eq__sender_196_197" = bitcast [20 x i8]* %"$eq__sender_196" to i8*
  %"$eq_call_198" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_192", i32 20, i8* %"$$eq_owner_193_195", i8* %"$$eq__sender_196_197")
  store %TName_Bool* %"$eq_call_198", %TName_Bool** %is_owner, align 8
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 2, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_190"
  %"$consume_204" = sub i64 %"$gasrem_200", 2
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %"$is_owner_206" = load %TName_Bool*, %TName_Bool** %is_owner, align 8
  %"$is_owner_tag_207" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_owner_206", i32 0, i32 0
  %"$is_owner_tag_208" = load i8, i8* %"$is_owner_tag_207", align 1
  switch i8 %"$is_owner_tag_208", label %"$empty_default_209" [
    i8 1, label %"$False_210"
    i8 0, label %"$True_250"
  ]

"$False_210":                                     ; preds = %"$have_gas_203"
  %"$is_owner_211" = bitcast %TName_Bool* %"$is_owner_206" to %CName_False*
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$False_210"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$False_210"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_215"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$msgobj_222_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_222_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_222_salloc_load", i64 69)
  %"$msgobj_222_salloc" = bitcast i8* %"$msgobj_222_salloc_salloc" to [69 x i8]*
  %"$msgobj_222" = bitcast [69 x i8]* %"$msgobj_222_salloc" to i8*
  store i8 2, i8* %"$msgobj_222", align 1
  %"$msgobj_fname_224" = getelementptr i8, i8* %"$msgobj_222", i32 1
  %"$msgobj_fname_225" = bitcast i8* %"$msgobj_fname_224" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_223", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_225", align 8
  %"$msgobj_td_226" = getelementptr i8, i8* %"$msgobj_222", i32 17
  %"$msgobj_td_227" = bitcast i8* %"$msgobj_td_226" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_227", align 8
  %"$msgobj_v_229" = getelementptr i8, i8* %"$msgobj_222", i32 25
  %"$msgobj_v_230" = bitcast i8* %"$msgobj_v_229" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_228", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_230", align 8
  %"$msgobj_fname_232" = getelementptr i8, i8* %"$msgobj_222", i32 41
  %"$msgobj_fname_233" = bitcast i8* %"$msgobj_fname_232" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_231", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_233", align 8
  %"$msgobj_td_234" = getelementptr i8, i8* %"$msgobj_222", i32 57
  %"$msgobj_td_235" = bitcast i8* %"$msgobj_td_234" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_235", align 8
  %"$helloWorld.not_owner_code_236" = load %Int32, %Int32* @helloWorld.not_owner_code, align 4
  %"$msgobj_v_237" = getelementptr i8, i8* %"$msgobj_222", i32 65
  %"$msgobj_v_238" = bitcast i8* %"$msgobj_v_237" to %Int32*
  store %Int32 %"$helloWorld.not_owner_code_236", %Int32* %"$msgobj_v_238", align 4
  store i8* %"$msgobj_222", i8** %e, align 8
  %"$e_240" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_242" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_240")
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 %"$_literal_cost_call_242", %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_220"
  %"$consume_247" = sub i64 %"$gasrem_243", %"$_literal_cost_call_242"
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$execptr_load_248" = load i8*, i8** @_execptr, align 8
  %"$e_249" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_248", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_249")
  br label %"$matchsucc_205"

"$True_250":                                      ; preds = %"$have_gas_203"
  %"$is_owner_251" = bitcast %TName_Bool* %"$is_owner_206" to %CName_True*
  %"$_literal_cost_msg_252" = alloca %String, align 8
  store %String %msg, %String* %"$_literal_cost_msg_252", align 8
  %"$$_literal_cost_msg_252_253" = bitcast %String* %"$_literal_cost_msg_252" to i8*
  %"$_literal_cost_call_254" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_msg_252_253")
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 %"$_literal_cost_call_254", %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$True_250"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$True_250"
  %"$consume_259" = sub i64 %"$gasrem_255", %"$_literal_cost_call_254"
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %"$execptr_load_260" = load i8*, i8** @_execptr, align 8
  %"$update_value_262" = alloca %String, align 8
  store %String %msg, %String* %"$update_value_262", align 8
  %"$update_value_263" = bitcast %String* %"$update_value_262" to i8*
  call void @_update_field(i8* %"$execptr_load_260", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_261", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i8* %"$update_value_263")
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_258"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %e1 = alloca i8*, align 8
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_267"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$msgobj_274_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_274_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_274_salloc_load", i64 69)
  %"$msgobj_274_salloc" = bitcast i8* %"$msgobj_274_salloc_salloc" to [69 x i8]*
  %"$msgobj_274" = bitcast [69 x i8]* %"$msgobj_274_salloc" to i8*
  store i8 2, i8* %"$msgobj_274", align 1
  %"$msgobj_fname_276" = getelementptr i8, i8* %"$msgobj_274", i32 1
  %"$msgobj_fname_277" = bitcast i8* %"$msgobj_fname_276" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_275", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_277", align 8
  %"$msgobj_td_278" = getelementptr i8, i8* %"$msgobj_274", i32 17
  %"$msgobj_td_279" = bitcast i8* %"$msgobj_td_278" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_279", align 8
  %"$msgobj_v_281" = getelementptr i8, i8* %"$msgobj_274", i32 25
  %"$msgobj_v_282" = bitcast i8* %"$msgobj_v_281" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_280", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_282", align 8
  %"$msgobj_fname_284" = getelementptr i8, i8* %"$msgobj_274", i32 41
  %"$msgobj_fname_285" = bitcast i8* %"$msgobj_fname_284" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_283", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_285", align 8
  %"$msgobj_td_286" = getelementptr i8, i8* %"$msgobj_274", i32 57
  %"$msgobj_td_287" = bitcast i8* %"$msgobj_td_286" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_287", align 8
  %"$helloWorld.set_hello_code_288" = load %Int32, %Int32* @helloWorld.set_hello_code, align 4
  %"$msgobj_v_289" = getelementptr i8, i8* %"$msgobj_274", i32 65
  %"$msgobj_v_290" = bitcast i8* %"$msgobj_v_289" to %Int32*
  store %Int32 %"$helloWorld.set_hello_code_288", %Int32* %"$msgobj_v_290", align 4
  store i8* %"$msgobj_274", i8** %e1, align 8
  %"$e_292" = load i8*, i8** %e1, align 8
  %"$_literal_cost_call_294" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_292")
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 %"$_literal_cost_call_294", %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_272"
  %"$consume_299" = sub i64 %"$gasrem_295", %"$_literal_cost_call_294"
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %"$execptr_load_300" = load i8*, i8** @_execptr, align 8
  %"$e_301" = load i8*, i8** %e1, align 8
  call void @_event(i8* %"$execptr_load_300", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_301")
  br label %"$matchsucc_205"

"$empty_default_209":                             ; preds = %"$have_gas_203"
  br label %"$matchsucc_205"

"$matchsucc_205":                                 ; preds = %"$have_gas_298", %"$have_gas_246", %"$empty_default_209"
  ret void
}

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define void @setHello(i8* %0) {
entry:
  %"$_amount_303" = getelementptr i8, i8* %0, i32 0
  %"$_amount_304" = bitcast i8* %"$_amount_303" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_304", align 8
  %"$_origin_305" = getelementptr i8, i8* %0, i32 16
  %"$_origin_306" = bitcast i8* %"$_origin_305" to [20 x i8]*
  %"$_sender_307" = getelementptr i8, i8* %0, i32 36
  %"$_sender_308" = bitcast i8* %"$_sender_307" to [20 x i8]*
  %"$msg_309" = getelementptr i8, i8* %0, i32 56
  %"$msg_310" = bitcast i8* %"$msg_309" to %String*
  %msg = load %String, %String* %"$msg_310", align 8
  call void @"$setHello_179"(%Uint128 %_amount, [20 x i8]* %"$_origin_306", [20 x i8]* %"$_sender_308", %String %msg)
  ret void
}

define internal void @"$getHello_311"(%Uint128 %_amount, [20 x i8]* %"$_origin_312", [20 x i8]* %"$_sender_313") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_312", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_313", align 1
  %r = alloca %String, align 8
  %"$execptr_load_315" = load i8*, i8** @_execptr, align 8
  %"$r_call_316" = call i8* @_fetch_field(i8* %"$execptr_load_315", i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$welcome_msg_314", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_25", i32 0, i8* null, i32 1)
  %"$r_317" = bitcast i8* %"$r_call_316" to %String*
  %"$r_318" = load %String, %String* %"$r_317", align 8
  store %String %"$r_318", %String* %r, align 8
  %"$_literal_cost_r_319" = alloca %String, align 8
  %"$r_320" = load %String, %String* %r, align 8
  store %String %"$r_320", %String* %"$_literal_cost_r_319", align 8
  %"$$_literal_cost_r_319_321" = bitcast %String* %"$_literal_cost_r_319" to i8*
  %"$_literal_cost_call_322" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_25", i8* %"$$_literal_cost_r_319_321")
  %"$gasadd_323" = add i64 %"$_literal_cost_call_322", 0
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 %"$gasadd_323", %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %entry
  %"$consume_328" = sub i64 %"$gasrem_324", %"$gasadd_323"
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_327"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_332"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %"$msgobj_339_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_339_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_339_salloc_load", i64 81)
  %"$msgobj_339_salloc" = bitcast i8* %"$msgobj_339_salloc_salloc" to [81 x i8]*
  %"$msgobj_339" = bitcast [81 x i8]* %"$msgobj_339_salloc" to i8*
  store i8 2, i8* %"$msgobj_339", align 1
  %"$msgobj_fname_341" = getelementptr i8, i8* %"$msgobj_339", i32 1
  %"$msgobj_fname_342" = bitcast i8* %"$msgobj_fname_341" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_340", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_342", align 8
  %"$msgobj_td_343" = getelementptr i8, i8* %"$msgobj_339", i32 17
  %"$msgobj_td_344" = bitcast i8* %"$msgobj_td_343" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_344", align 8
  %"$msgobj_v_346" = getelementptr i8, i8* %"$msgobj_339", i32 25
  %"$msgobj_v_347" = bitcast i8* %"$msgobj_v_346" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_345", i32 0, i32 0), i32 10 }, %String* %"$msgobj_v_347", align 8
  %"$msgobj_fname_349" = getelementptr i8, i8* %"$msgobj_339", i32 41
  %"$msgobj_fname_350" = bitcast i8* %"$msgobj_fname_349" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_348", i32 0, i32 0), i32 3 }, %String* %"$msgobj_fname_350", align 8
  %"$msgobj_td_351" = getelementptr i8, i8* %"$msgobj_339", i32 57
  %"$msgobj_td_352" = bitcast i8* %"$msgobj_td_351" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_352", align 8
  %"$r_353" = load %String, %String* %r, align 8
  %"$msgobj_v_354" = getelementptr i8, i8* %"$msgobj_339", i32 65
  %"$msgobj_v_355" = bitcast i8* %"$msgobj_v_354" to %String*
  store %String %"$r_353", %String* %"$msgobj_v_355", align 8
  store i8* %"$msgobj_339", i8** %e, align 8
  %"$e_357" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_359" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_357")
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 %"$_literal_cost_call_359", %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_337"
  %"$consume_364" = sub i64 %"$gasrem_360", %"$_literal_cost_call_359"
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %"$execptr_load_365" = load i8*, i8** @_execptr, align 8
  %"$e_366" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_365", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_366")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @getHello(i8* %0) {
entry:
  %"$_amount_368" = getelementptr i8, i8* %0, i32 0
  %"$_amount_369" = bitcast i8* %"$_amount_368" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_369", align 8
  %"$_origin_370" = getelementptr i8, i8* %0, i32 16
  %"$_origin_371" = bitcast i8* %"$_origin_370" to [20 x i8]*
  %"$_sender_372" = getelementptr i8, i8* %0, i32 36
  %"$_sender_373" = bitcast i8* %"$_sender_372" to [20 x i8]*
  call void @"$getHello_311"(%Uint128 %_amount, [20 x i8]* %"$_origin_371", [20 x i8]* %"$_sender_373")
  ret void
}

define internal void @"$multipleMsgs_374"(%Uint128 %_amount, [20 x i8]* %"$_origin_375", [20 x i8]* %"$_sender_376") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_375", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_376", align 1
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %entry
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_380"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %"$msgobj_387_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_387_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_387_salloc_load", i64 125)
  %"$msgobj_387_salloc" = bitcast i8* %"$msgobj_387_salloc_salloc" to [125 x i8]*
  %"$msgobj_387" = bitcast [125 x i8]* %"$msgobj_387_salloc" to i8*
  store i8 3, i8* %"$msgobj_387", align 1
  %"$msgobj_fname_389" = getelementptr i8, i8* %"$msgobj_387", i32 1
  %"$msgobj_fname_390" = bitcast i8* %"$msgobj_fname_389" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_388", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_390", align 8
  %"$msgobj_td_391" = getelementptr i8, i8* %"$msgobj_387", i32 17
  %"$msgobj_td_392" = bitcast i8* %"$msgobj_td_391" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_392", align 8
  %"$msgobj_v_394" = getelementptr i8, i8* %"$msgobj_387", i32 25
  %"$msgobj_v_395" = bitcast i8* %"$msgobj_v_394" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_393", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_395", align 8
  %"$msgobj_fname_397" = getelementptr i8, i8* %"$msgobj_387", i32 41
  %"$msgobj_fname_398" = bitcast i8* %"$msgobj_fname_397" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_396", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_398", align 8
  %"$msgobj_td_399" = getelementptr i8, i8* %"$msgobj_387", i32 57
  %"$msgobj_td_400" = bitcast i8* %"$msgobj_td_399" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_400", align 8
  %"$msgobj_v_401" = getelementptr i8, i8* %"$msgobj_387", i32 65
  %"$msgobj_v_402" = bitcast i8* %"$msgobj_v_401" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_402", align 1
  %"$msgobj_fname_404" = getelementptr i8, i8* %"$msgobj_387", i32 85
  %"$msgobj_fname_405" = bitcast i8* %"$msgobj_fname_404" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_403", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_405", align 8
  %"$msgobj_td_406" = getelementptr i8, i8* %"$msgobj_387", i32 101
  %"$msgobj_td_407" = bitcast i8* %"$msgobj_td_406" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ** %"$msgobj_td_407", align 8
  %"$msgobj_v_408" = getelementptr i8, i8* %"$msgobj_387", i32 109
  %"$msgobj_v_409" = bitcast i8* %"$msgobj_v_408" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_409", align 8
  store i8* %"$msgobj_387", i8** %msg1, align 8
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_385"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_414"
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem, align 8
  %"$msgobj_421_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_421_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_421_salloc_load", i64 125)
  %"$msgobj_421_salloc" = bitcast i8* %"$msgobj_421_salloc_salloc" to [125 x i8]*
  %"$msgobj_421" = bitcast [125 x i8]* %"$msgobj_421_salloc" to i8*
  store i8 3, i8* %"$msgobj_421", align 1
  %"$msgobj_fname_423" = getelementptr i8, i8* %"$msgobj_421", i32 1
  %"$msgobj_fname_424" = bitcast i8* %"$msgobj_fname_423" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_422", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_424", align 8
  %"$msgobj_td_425" = getelementptr i8, i8* %"$msgobj_421", i32 17
  %"$msgobj_td_426" = bitcast i8* %"$msgobj_td_425" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_426", align 8
  %"$msgobj_v_428" = getelementptr i8, i8* %"$msgobj_421", i32 25
  %"$msgobj_v_429" = bitcast i8* %"$msgobj_v_428" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_427", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_429", align 8
  %"$msgobj_fname_431" = getelementptr i8, i8* %"$msgobj_421", i32 41
  %"$msgobj_fname_432" = bitcast i8* %"$msgobj_fname_431" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_430", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_432", align 8
  %"$msgobj_td_433" = getelementptr i8, i8* %"$msgobj_421", i32 57
  %"$msgobj_td_434" = bitcast i8* %"$msgobj_td_433" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_434", align 8
  %"$msgobj_v_435" = getelementptr i8, i8* %"$msgobj_421", i32 65
  %"$msgobj_v_436" = bitcast i8* %"$msgobj_v_435" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_436", align 1
  %"$msgobj_fname_438" = getelementptr i8, i8* %"$msgobj_421", i32 85
  %"$msgobj_fname_439" = bitcast i8* %"$msgobj_fname_438" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_437", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_439", align 8
  %"$msgobj_td_440" = getelementptr i8, i8* %"$msgobj_421", i32 101
  %"$msgobj_td_441" = bitcast i8* %"$msgobj_td_440" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ** %"$msgobj_td_441", align 8
  %"$msgobj_v_442" = getelementptr i8, i8* %"$msgobj_421", i32 109
  %"$msgobj_v_443" = bitcast i8* %"$msgobj_v_442" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_443", align 8
  store i8* %"$msgobj_421", i8** %msg2, align 8
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_419"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_448"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  %"$helloWorld.one_msg_2" = alloca %TName_List_Message*, align 8
  %"$helloWorld.one_msg_455" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @helloWorld.one_msg, align 8
  %"$helloWorld.one_msg_fptr_456" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_455", 0
  %"$helloWorld.one_msg_envptr_457" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$helloWorld.one_msg_455", 1
  %"$msg1_458" = load i8*, i8** %msg1, align 8
  %"$helloWorld.one_msg_call_459" = call %TName_List_Message* %"$helloWorld.one_msg_fptr_456"(i8* %"$helloWorld.one_msg_envptr_457", i8* %"$msg1_458")
  store %TName_List_Message* %"$helloWorld.one_msg_call_459", %TName_List_Message** %"$helloWorld.one_msg_2", align 8
  %"$$helloWorld.one_msg_2_460" = load %TName_List_Message*, %TName_List_Message** %"$helloWorld.one_msg_2", align 8
  store %TName_List_Message* %"$$helloWorld.one_msg_2_460", %TName_List_Message** %msgs1, align 8
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_453"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_464"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  %"$msg2_471" = load i8*, i8** %msg2, align 8
  %"$msgs1_472" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_473_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_473_salloc" = call i8* @_salloc(i8* %"$adtval_473_load", i64 17)
  %"$adtval_473" = bitcast i8* %"$adtval_473_salloc" to %CName_Cons_Message*
  %"$adtgep_474" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_473", i32 0, i32 0
  store i8 0, i8* %"$adtgep_474", align 1
  %"$adtgep_475" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_473", i32 0, i32 1
  store i8* %"$msg2_471", i8** %"$adtgep_475", align 8
  %"$adtgep_476" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_473", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_472", %TName_List_Message** %"$adtgep_476", align 8
  %"$adtptr_477" = bitcast %CName_Cons_Message* %"$adtval_473" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_477", %TName_List_Message** %msgs2, align 8
  %"$msgs2_478" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_478_479" = bitcast %TName_List_Message* %"$msgs2_478" to i8*
  %"$_literal_cost_call_480" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_44", i8* %"$$msgs2_478_479")
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 %"$_literal_cost_call_480", %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_469"
  %"$consume_485" = sub i64 %"$gasrem_481", %"$_literal_cost_call_480"
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %"$execptr_load_486" = load i8*, i8** @_execptr, align 8
  %"$msgs2_487" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_486", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_44", %TName_List_Message* %"$msgs2_487")
  ret void
}

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @multipleMsgs(i8* %0) {
entry:
  %"$_amount_489" = getelementptr i8, i8* %0, i32 0
  %"$_amount_490" = bitcast i8* %"$_amount_489" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_490", align 8
  %"$_origin_491" = getelementptr i8, i8* %0, i32 16
  %"$_origin_492" = bitcast i8* %"$_origin_491" to [20 x i8]*
  %"$_sender_493" = getelementptr i8, i8* %0, i32 36
  %"$_sender_494" = bitcast i8* %"$_sender_493" to [20 x i8]*
  call void @"$multipleMsgs_374"(%Uint128 %_amount, [20 x i8]* %"$_origin_492", [20 x i8]* %"$_sender_494")
  ret void
}

define internal void @"$contrAddr_495"(%Uint128 %_amount, [20 x i8]* %"$_origin_496", [20 x i8]* %"$_sender_497") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_496", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_497", align 1
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %entry
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$have_gas_501"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %"$msgobj_508_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_508_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_508_salloc_load", i64 85)
  %"$msgobj_508_salloc" = bitcast i8* %"$msgobj_508_salloc_salloc" to [85 x i8]*
  %"$msgobj_508" = bitcast [85 x i8]* %"$msgobj_508_salloc" to i8*
  store i8 2, i8* %"$msgobj_508", align 1
  %"$msgobj_fname_510" = getelementptr i8, i8* %"$msgobj_508", i32 1
  %"$msgobj_fname_511" = bitcast i8* %"$msgobj_fname_510" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_509", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_511", align 8
  %"$msgobj_td_512" = getelementptr i8, i8* %"$msgobj_508", i32 17
  %"$msgobj_td_513" = bitcast i8* %"$msgobj_td_512" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_513", align 8
  %"$msgobj_v_515" = getelementptr i8, i8* %"$msgobj_508", i32 25
  %"$msgobj_v_516" = bitcast i8* %"$msgobj_v_515" to %String*
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_514", i32 0, i32 0), i32 15 }, %String* %"$msgobj_v_516", align 8
  %"$msgobj_fname_518" = getelementptr i8, i8* %"$msgobj_508", i32 41
  %"$msgobj_fname_519" = bitcast i8* %"$msgobj_fname_518" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_517", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_519", align 8
  %"$msgobj_td_520" = getelementptr i8, i8* %"$msgobj_508", i32 57
  %"$msgobj_td_521" = bitcast i8* %"$msgobj_td_520" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_521", align 8
  %"$_this_address_522" = load [20 x i8], [20 x i8]* @_cparam__this_address, align 1
  %"$msgobj_v_523" = getelementptr i8, i8* %"$msgobj_508", i32 65
  %"$msgobj_v_524" = bitcast i8* %"$msgobj_v_523" to [20 x i8]*
  store [20 x i8] %"$_this_address_522", [20 x i8]* %"$msgobj_v_524", align 1
  store i8* %"$msgobj_508", i8** %msg1, align 8
  %"$msg1_526" = load i8*, i8** %msg1, align 8
  %"$_literal_cost_call_528" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$msg1_526")
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 %"$_literal_cost_call_528", %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_506"
  %"$consume_533" = sub i64 %"$gasrem_529", %"$_literal_cost_call_528"
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$execptr_load_534" = load i8*, i8** @_execptr, align 8
  %"$msg1_535" = load i8*, i8** %msg1, align 8
  call void @_event(i8* %"$execptr_load_534", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$msg1_535")
  ret void
}

define void @contrAddr(i8* %0) {
entry:
  %"$_amount_537" = getelementptr i8, i8* %0, i32 0
  %"$_amount_538" = bitcast i8* %"$_amount_537" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_538", align 8
  %"$_origin_539" = getelementptr i8, i8* %0, i32 16
  %"$_origin_540" = bitcast i8* %"$_origin_539" to [20 x i8]*
  %"$_sender_541" = getelementptr i8, i8* %0, i32 36
  %"$_sender_542" = bitcast i8* %"$_sender_541" to [20 x i8]*
  call void @"$contrAddr_495"(%Uint128 %_amount, [20 x i8]* %"$_origin_540", [20 x i8]* %"$_sender_542")
  ret void
}

define internal void @"$printContrParams_543"(%Uint128 %_amount, [20 x i8]* %"$_origin_544", [20 x i8]* %"$_sender_545") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_544", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_545", align 1
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %entry
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_549"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %"$msgobj_556_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_556_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_556_salloc_load", i64 313)
  %"$msgobj_556_salloc" = bitcast i8* %"$msgobj_556_salloc_salloc" to [313 x i8]*
  %"$msgobj_556" = bitcast [313 x i8]* %"$msgobj_556_salloc" to i8*
  store i8 8, i8* %"$msgobj_556", align 1
  %"$msgobj_fname_558" = getelementptr i8, i8* %"$msgobj_556", i32 1
  %"$msgobj_fname_559" = bitcast i8* %"$msgobj_fname_558" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_557", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_559", align 8
  %"$msgobj_td_560" = getelementptr i8, i8* %"$msgobj_556", i32 17
  %"$msgobj_td_561" = bitcast i8* %"$msgobj_td_560" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_561", align 8
  %"$msgobj_v_563" = getelementptr i8, i8* %"$msgobj_556", i32 25
  %"$msgobj_v_564" = bitcast i8* %"$msgobj_v_563" to %String*
  store %String { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @"$stringlit_562", i32 0, i32 0), i32 14 }, %String* %"$msgobj_v_564", align 8
  %"$msgobj_fname_566" = getelementptr i8, i8* %"$msgobj_556", i32 41
  %"$msgobj_fname_567" = bitcast i8* %"$msgobj_fname_566" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_565", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_567", align 8
  %"$msgobj_td_568" = getelementptr i8, i8* %"$msgobj_556", i32 57
  %"$msgobj_td_569" = bitcast i8* %"$msgobj_td_568" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_569", align 8
  %"$owner_570" = load [20 x i8], [20 x i8]* @_cparam_owner, align 1
  %"$msgobj_v_571" = getelementptr i8, i8* %"$msgobj_556", i32 65
  %"$msgobj_v_572" = bitcast i8* %"$msgobj_v_571" to [20 x i8]*
  store [20 x i8] %"$owner_570", [20 x i8]* %"$msgobj_v_572", align 1
  %"$msgobj_fname_574" = getelementptr i8, i8* %"$msgobj_556", i32 85
  %"$msgobj_fname_575" = bitcast i8* %"$msgobj_fname_574" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_573", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_575", align 8
  %"$msgobj_td_576" = getelementptr i8, i8* %"$msgobj_556", i32 101
  %"$msgobj_td_577" = bitcast i8* %"$msgobj_td_576" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ** %"$msgobj_td_577", align 8
  %"$name_578" = load %String, %String* @_cparam_name, align 8
  %"$msgobj_v_579" = getelementptr i8, i8* %"$msgobj_556", i32 109
  %"$msgobj_v_580" = bitcast i8* %"$msgobj_v_579" to %String*
  store %String %"$name_578", %String* %"$msgobj_v_580", align 8
  %"$msgobj_fname_582" = getelementptr i8, i8* %"$msgobj_556", i32 125
  %"$msgobj_fname_583" = bitcast i8* %"$msgobj_fname_582" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_581", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_583", align 8
  %"$msgobj_td_584" = getelementptr i8, i8* %"$msgobj_556", i32 141
  %"$msgobj_td_585" = bitcast i8* %"$msgobj_td_584" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ** %"$msgobj_td_585", align 8
  %"$uint256_586" = load %Uint256, %Uint256* @_cparam_uint256, align 8
  %"$msgobj_v_587" = getelementptr i8, i8* %"$msgobj_556", i32 149
  %"$msgobj_v_588" = bitcast i8* %"$msgobj_v_587" to %Uint256*
  store %Uint256 %"$uint256_586", %Uint256* %"$msgobj_v_588", align 8
  %"$msgobj_fname_590" = getelementptr i8, i8* %"$msgobj_556", i32 181
  %"$msgobj_fname_591" = bitcast i8* %"$msgobj_fname_590" to %String*
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_589", i32 0, i32 0), i32 5 }, %String* %"$msgobj_fname_591", align 8
  %"$msgobj_td_592" = getelementptr i8, i8* %"$msgobj_556", i32 197
  %"$msgobj_td_593" = bitcast i8* %"$msgobj_td_592" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_9", %_TyDescrTy_Typ** %"$msgobj_td_593", align 8
  %"$int32_594" = load %Int32, %Int32* @_cparam_int32, align 4
  %"$msgobj_v_595" = getelementptr i8, i8* %"$msgobj_556", i32 205
  %"$msgobj_v_596" = bitcast i8* %"$msgobj_v_595" to %Int32*
  store %Int32 %"$int32_594", %Int32* %"$msgobj_v_596", align 4
  %"$msgobj_fname_598" = getelementptr i8, i8* %"$msgobj_556", i32 209
  %"$msgobj_fname_599" = bitcast i8* %"$msgobj_fname_598" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_597", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_599", align 8
  %"$msgobj_td_600" = getelementptr i8, i8* %"$msgobj_556", i32 225
  %"$msgobj_td_601" = bitcast i8* %"$msgobj_td_600" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ** %"$msgobj_td_601", align 8
  %"$bstr_602" = load %Bystr, %Bystr* @_cparam_bstr, align 8
  %"$msgobj_v_603" = getelementptr i8, i8* %"$msgobj_556", i32 233
  %"$msgobj_v_604" = bitcast i8* %"$msgobj_v_603" to %Bystr*
  store %Bystr %"$bstr_602", %Bystr* %"$msgobj_v_604", align 8
  %"$msgobj_fname_606" = getelementptr i8, i8* %"$msgobj_556", i32 249
  %"$msgobj_fname_607" = bitcast i8* %"$msgobj_fname_606" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_605", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_607", align 8
  %"$msgobj_td_608" = getelementptr i8, i8* %"$msgobj_556", i32 265
  %"$msgobj_td_609" = bitcast i8* %"$msgobj_td_608" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_43", %_TyDescrTy_Typ** %"$msgobj_td_609", align 8
  %"$all_names_610" = load %TName_List_String*, %TName_List_String** @_cparam_all_names, align 8
  %"$msgobj_v_611" = getelementptr i8, i8* %"$msgobj_556", i32 273
  %"$msgobj_v_612" = bitcast i8* %"$msgobj_v_611" to %TName_List_String**
  store %TName_List_String* %"$all_names_610", %TName_List_String** %"$msgobj_v_612", align 8
  %"$msgobj_fname_614" = getelementptr i8, i8* %"$msgobj_556", i32 281
  %"$msgobj_fname_615" = bitcast i8* %"$msgobj_fname_614" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_613", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_615", align 8
  %"$msgobj_td_616" = getelementptr i8, i8* %"$msgobj_556", i32 297
  %"$msgobj_td_617" = bitcast i8* %"$msgobj_td_616" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int128_String_42", %_TyDescrTy_Typ** %"$msgobj_td_617", align 8
  %"$pear_618" = load %TName_Pair_Int128_String*, %TName_Pair_Int128_String** @_cparam_pear, align 8
  %"$msgobj_v_619" = getelementptr i8, i8* %"$msgobj_556", i32 305
  %"$msgobj_v_620" = bitcast i8* %"$msgobj_v_619" to %TName_Pair_Int128_String**
  store %TName_Pair_Int128_String* %"$pear_618", %TName_Pair_Int128_String** %"$msgobj_v_620", align 8
  store i8* %"$msgobj_556", i8** %e, align 8
  %"$e_622" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_624" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_622")
  %"$gasrem_625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_626" = icmp ugt i64 %"$_literal_cost_call_624", %"$gasrem_625"
  br i1 %"$gascmp_626", label %"$out_of_gas_627", label %"$have_gas_628"

"$out_of_gas_627":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_628"

"$have_gas_628":                                  ; preds = %"$out_of_gas_627", %"$have_gas_554"
  %"$consume_629" = sub i64 %"$gasrem_625", %"$_literal_cost_call_624"
  store i64 %"$consume_629", i64* @_gasrem, align 8
  %"$execptr_load_630" = load i8*, i8** @_execptr, align 8
  %"$e_631" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_630", %_TyDescrTy_Typ* @"$TyDescr_Event_31", i8* %"$e_631")
  ret void
}

define void @printContrParams(i8* %0) {
entry:
  %"$_amount_633" = getelementptr i8, i8* %0, i32 0
  %"$_amount_634" = bitcast i8* %"$_amount_633" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_634", align 8
  %"$_origin_635" = getelementptr i8, i8* %0, i32 16
  %"$_origin_636" = bitcast i8* %"$_origin_635" to [20 x i8]*
  %"$_sender_637" = getelementptr i8, i8* %0, i32 36
  %"$_sender_638" = bitcast i8* %"$_sender_637" to [20 x i8]*
  call void @"$printContrParams_543"(%Uint128 %_amount, [20 x i8]* %"$_origin_636", [20 x i8]* %"$_sender_638")
  ret void
}
