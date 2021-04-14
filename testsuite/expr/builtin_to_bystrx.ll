; let uint32_100 = Uint32 100 in
; let res1 = builtin to_bystr4 uint32_100 in
; 
; let uint64_200 = Uint64 200 in
; let res2 = builtin to_bystr8 uint64_200 in
; 
; let uint128_300 = Uint128 300 in
; let res3 = builtin to_bystr16 uint128_300 in
; 
; let uint256_400 = Uint256 400 in
; let res4 = builtin to_bystr32 uint256_400 in
; 
; let x = 0xffee in
; let xbs = builtin to_bystr x in
; let res_x_some = builtin to_bystr2 xbs in
; let res_x_none = builtin to_bystr3 xbs in
; let res_x_opt_out = Pair {(Option ByStr2) (Option ByStr3)} res_x_some res_x_none in
; 
; let out1 = Pair {ByStr4 ByStr8} res1 res2 in
; let out2 = Pair {(Pair ByStr4 ByStr8) ByStr16} out1 res3 in
; let out3 = Pair {(Pair (Pair ByStr4 ByStr8) ByStr16) ByStr32} out2 res4 in
; let out4 = Pair {(Pair (Pair (Pair ByStr4 ByStr8) ByStr16) ByStr32) (Pair (Option ByStr2) (Option ByStr3))} out3 res_x_opt_out in
; 
; out4
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_43" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_42"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_42" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_44"**, %"$TyDescrTy_ADTTyp_43"* }
%"$TyDescrTy_ADTTyp_Constr_44" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))" = type { i8, %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* }
%"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))" = type <{ i8, %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*, %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"* }>
%"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32" = type { i8, %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* }
%"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32" = type <{ i8, %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*, [32 x i8] }>
%"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16" = type { i8, %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* }
%"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16" = type <{ i8, %TName_Pair_ByStr4_ByStr8*, [16 x i8] }>
%TName_Pair_ByStr4_ByStr8 = type { i8, %CName_Pair_ByStr4_ByStr8* }
%CName_Pair_ByStr4_ByStr8 = type <{ i8, [4 x i8], [8 x i8] }>
%"TName_Pair_Option_(ByStr2)_Option_(ByStr3)" = type { i8, %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* }
%"CName_Pair_Option_(ByStr2)_Option_(ByStr3)" = type <{ i8, %TName_Option_ByStr2*, %TName_Option_ByStr3* }>
%TName_Option_ByStr2 = type { i8, %CName_Some_ByStr2*, %CName_None_ByStr2* }
%CName_Some_ByStr2 = type <{ i8, [2 x i8] }>
%CName_None_ByStr2 = type <{ i8 }>
%TName_Option_ByStr3 = type { i8, %CName_Some_ByStr3*, %CName_None_ByStr3* }
%CName_Some_ByStr3 = type <{ i8, [3 x i8] }>
%CName_None_ByStr3 = type <{ i8 }>
%Uint32 = type { i32 }
%Uint64 = type { i64 }
%Uint128 = type { i128 }
%Uint256 = type { i256 }
%Bystr = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_Bystr3_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 3 }
@"$TyDescr_Bystr3_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr3_Prim_30" to i8*) }
@"$TyDescr_Bystr2_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 2 }
@"$TyDescr_Bystr2_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr2_Prim_32" to i8*) }
@"$TyDescr_Bystr32_Prim_34" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 32 }
@"$TyDescr_Bystr32_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr32_Prim_34" to i8*) }
@"$TyDescr_Bystr16_Prim_36" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 16 }
@"$TyDescr_Bystr16_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr16_Prim_36" to i8*) }
@"$TyDescr_Bystr8_Prim_38" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 8 }
@"$TyDescr_Bystr8_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr8_Prim_38" to i8*) }
@"$TyDescr_Bystr4_Prim_40" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 4 }
@"$TyDescr_Bystr4_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr4_Prim_40" to i8*) }
@"$TyDescr_ADT_Option_ByStr3_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_62" to i8*) }
@"$TyDescr_ADT_Option_ByStr2_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_71" to i8*) }
@"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_80" to i8*) }
@"$TyDescr_ADT_Pair_ByStr4_ByStr8_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_86" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_49" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_92" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_98" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_104" to i8*) }
@"$TyDescr_Option_ADTTyp_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_43" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_73", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_42"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_42"*], [2 x %"$TyDescrTy_ADTTyp_Specl_42"*]* @"$TyDescr_Option_ADTTyp_m_specls_72", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr3_Constr_m_args_54" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr3_31"]
@"$TyDescr_ADT_Some_55" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr3_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_55", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr3_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr3_Constr_m_args_57" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_58" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr3_ADTTyp_Constr_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_58", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr3_Constr_m_args_57", i32 0, i32 0) }
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_constrs_60" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_Some_ByStr3_ADTTyp_Constr_56", %"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_None_ByStr3_ADTTyp_Constr_59"]
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_TArgs_61" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr3_31"]
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_TArgs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_44"*], [2 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_constrs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Option_ADTTyp_53" }
@"$TyDescr_Option_Some_ByStr2_Constr_m_args_63" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr2_33"]
@"$TyDescr_ADT_Some_64" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr2_ADTTyp_Constr_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_64", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr2_Constr_m_args_63", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr2_Constr_m_args_66" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_67" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr2_ADTTyp_Constr_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_67", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr2_Constr_m_args_66", i32 0, i32 0) }
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_constrs_69" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_Some_ByStr2_ADTTyp_Constr_65", %"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_None_ByStr2_ADTTyp_Constr_68"]
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_TArgs_70" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr2_33"]
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_TArgs_70", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_44"*], [2 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_constrs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Option_ADTTyp_53" }
@"$TyDescr_Option_ADTTyp_m_specls_72" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_42"*] [%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_62", %"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_71"]
@"$TyDescr_ADT_Option_73" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Pair_ADTTyp_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_106", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 5, %"$TyDescrTy_ADTTyp_Specl_42"** getelementptr inbounds ([5 x %"$TyDescrTy_ADTTyp_Specl_42"*], [5 x %"$TyDescrTy_ADTTyp_Specl_42"*]* @"$TyDescr_Pair_ADTTyp_m_specls_105", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_Constr_m_args_75" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr2_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr3_45"]
@"$TyDescr_ADT_Pair_76" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Constr_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_76", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_Constr_m_args_75", i32 0, i32 0) }
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_constrs_78" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Constr_77"]
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_TArgs_79" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr2_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr3_45"]
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_TArgs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_constrs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_74" }
@"$TyDescr_Pair_Pair_ByStr4_ByStr8_Constr_m_args_81" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr4_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_39"]
@"$TyDescr_ADT_Pair_82" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr4_ByStr8_ADTTyp_Constr_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_82", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr4_ByStr8_Constr_m_args_81", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_constrs_84" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_ByStr4_ByStr8_ADTTyp_Constr_83"]
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_TArgs_85" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr4_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_39"]
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_TArgs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_constrs_84", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_74" }
@"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_Constr_m_args_87" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr4_ByStr8_48", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_37"]
@"$TyDescr_ADT_Pair_88" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Constr_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_88", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_Constr_m_args_87", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_constrs_90" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Constr_89"]
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_TArgs_91" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr4_ByStr8_48", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_37"]
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_92" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_TArgs_91", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_constrs_90", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_74" }
@"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_Constr_m_args_93" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_35"]
@"$TyDescr_ADT_Pair_94" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Constr_95" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_94", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_Constr_m_args_93", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_constrs_96" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Constr_95"]
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_TArgs_97" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_35"]
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_98" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_TArgs_97", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_constrs_96", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_74" }
@"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_Constr_m_args_99" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_50", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_47"]
@"$TyDescr_ADT_Pair_100" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Constr_101" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_100", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_Constr_m_args_99", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_constrs_102" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Constr_101"]
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_TArgs_103" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_50", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_47"]
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_104" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_TArgs_103", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_constrs_102", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_74" }
@"$TyDescr_Pair_ADTTyp_m_specls_105" = unnamed_addr constant [5 x %"$TyDescrTy_ADTTyp_Specl_42"*] [%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_80", %"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_86", %"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_92", %"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_98", %"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_104"]
@"$TyDescr_ADT_Pair_106" = unnamed_addr constant [4 x i8] c"Pair"

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* @"$scilla_expr_107"(i8* %0) !dbg !8 {
entry:
  %"$expr_0" = alloca %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, align 8
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %entry
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %uint32_100 = alloca %Uint32, align 8
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  store %Uint32 { i32 100 }, %Uint32* %uint32_100, align 4, !dbg !9
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %res1 = alloca [4 x i8], align 1
  %"$execptr_load_123" = load i8*, i8** @_execptr, align 8
  %"$uint32_100_124" = load %Uint32, %Uint32* %uint32_100, align 4
  %"$to_bystr4_call_125" = call i8* @_uint32_to_bystrx(i8* %"$execptr_load_123", %Uint32 %"$uint32_100_124")
  %"$to_bystr4_126" = bitcast i8* %"$to_bystr4_call_125" to [4 x i8]*
  %"$to_bystr4_127" = load [4 x i8], [4 x i8]* %"$to_bystr4_126", align 1
  store [4 x i8] %"$to_bystr4_127", [4 x i8]* %res1, align 1, !dbg !10
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_121"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %uint64_200 = alloca %Uint64, align 8
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  store %Uint64 { i64 200 }, %Uint64* %uint64_200, align 8, !dbg !11
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %res2 = alloca [8 x i8], align 1
  %"$execptr_load_143" = load i8*, i8** @_execptr, align 8
  %"$uint64_200_144" = load %Uint64, %Uint64* %uint64_200, align 8
  %"$to_bystr8_call_145" = call i8* @_uint64_to_bystrx(i8* %"$execptr_load_143", %Uint64 %"$uint64_200_144")
  %"$to_bystr8_146" = bitcast i8* %"$to_bystr8_call_145" to [8 x i8]*
  %"$to_bystr8_147" = load [8 x i8], [8 x i8]* %"$to_bystr8_146", align 1
  store [8 x i8] %"$to_bystr8_147", [8 x i8]* %res2, align 1, !dbg !12
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_141"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %uint128_300 = alloca %Uint128, align 8
  %"$gasrem_153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_154" = icmp ugt i64 1, %"$gasrem_153"
  br i1 %"$gascmp_154", label %"$out_of_gas_155", label %"$have_gas_156"

"$out_of_gas_155":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_156"

"$have_gas_156":                                  ; preds = %"$out_of_gas_155", %"$have_gas_151"
  %"$consume_157" = sub i64 %"$gasrem_153", 1
  store i64 %"$consume_157", i64* @_gasrem, align 8
  store %Uint128 { i128 300 }, %Uint128* %uint128_300, align 8, !dbg !13
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_156"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_156"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %res3 = alloca [16 x i8], align 1
  %"$execptr_load_163" = load i8*, i8** @_execptr, align 8
  %"$uint128_300_164" = load %Uint128, %Uint128* %uint128_300, align 8
  %"$to_bystr16_call_165" = call i8* @_uint128_to_bystrx(i8* %"$execptr_load_163", %Uint128 %"$uint128_300_164")
  %"$to_bystr16_166" = bitcast i8* %"$to_bystr16_call_165" to [16 x i8]*
  %"$to_bystr16_167" = load [16 x i8], [16 x i8]* %"$to_bystr16_166", align 1
  store [16 x i8] %"$to_bystr16_167", [16 x i8]* %res3, align 1, !dbg !14
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_161"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_161"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %uint256_400 = alloca %Uint256, align 8
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_171"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  store %Uint256 { i256 400 }, %Uint256* %uint256_400, align 8, !dbg !15
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_176"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %res4 = alloca [32 x i8], align 1
  %"$execptr_load_183" = load i8*, i8** @_execptr, align 8
  %"$to_bystr32_uint256_400_184" = alloca %Uint256, align 8
  %"$uint256_400_185" = load %Uint256, %Uint256* %uint256_400, align 8
  store %Uint256 %"$uint256_400_185", %Uint256* %"$to_bystr32_uint256_400_184", align 8
  %"$to_bystr32_call_186" = call i8* @_uint256_to_bystrx(i8* %"$execptr_load_183", %Uint256* %"$to_bystr32_uint256_400_184")
  %"$to_bystr32_187" = bitcast i8* %"$to_bystr32_call_186" to [32 x i8]*
  %"$to_bystr32_188" = load [32 x i8], [32 x i8]* %"$to_bystr32_187", align 1
  store [32 x i8] %"$to_bystr32_188", [32 x i8]* %res4, align 1, !dbg !16
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_181"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %x = alloca [2 x i8], align 1
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\EE", [2 x i8]* %x, align 1, !dbg !17
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$have_gas_197"
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem, align 8
  %xbs = alloca %Bystr, align 8
  %"$execptr_load_204" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_x_205" = alloca [2 x i8], align 1
  %"$x_206" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_206", [2 x i8]* %"$to_bystr_x_205", align 1
  %"$$to_bystr_x_205_207" = bitcast [2 x i8]* %"$to_bystr_x_205" to i8*
  %"$to_bystr_call_208" = call %Bystr @_to_bystr(i8* %"$execptr_load_204", i32 2, i8* %"$$to_bystr_x_205_207")
  store %Bystr %"$to_bystr_call_208", %Bystr* %xbs, align 8, !dbg !18
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_202"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_202"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %res_x_some = alloca %TName_Option_ByStr2*, align 8
  %"$execptr_load_214" = load i8*, i8** @_execptr, align 8
  %"$xbs_215" = load %Bystr, %Bystr* %xbs, align 8
  %"$to_bystr2_call_216" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_214", i32 2, %Bystr %"$xbs_215")
  %"$to_bystr2_217" = bitcast i8* %"$to_bystr2_call_216" to %TName_Option_ByStr2*
  store %TName_Option_ByStr2* %"$to_bystr2_217", %TName_Option_ByStr2** %res_x_some, align 8, !dbg !19
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_212"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %res_x_none = alloca %TName_Option_ByStr3*, align 8
  %"$execptr_load_223" = load i8*, i8** @_execptr, align 8
  %"$xbs_224" = load %Bystr, %Bystr* %xbs, align 8
  %"$to_bystr3_call_225" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_223", i32 3, %Bystr %"$xbs_224")
  %"$to_bystr3_226" = bitcast i8* %"$to_bystr3_call_225" to %TName_Option_ByStr3*
  store %TName_Option_ByStr3* %"$to_bystr3_226", %TName_Option_ByStr3** %res_x_none, align 8, !dbg !20
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_221"
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %res_x_opt_out = alloca %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_230"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %"$res_x_some_237" = load %TName_Option_ByStr2*, %TName_Option_ByStr2** %res_x_some, align 8
  %"$res_x_none_238" = load %TName_Option_ByStr3*, %TName_Option_ByStr3** %res_x_none, align 8
  %"$adtval_239_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_239_salloc" = call i8* @_salloc(i8* %"$adtval_239_load", i64 17)
  %"$adtval_239" = bitcast i8* %"$adtval_239_salloc" to %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"*
  %"$adtgep_240" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_239", i32 0, i32 0
  store i8 0, i8* %"$adtgep_240", align 1
  %"$adtgep_241" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_239", i32 0, i32 1
  store %TName_Option_ByStr2* %"$res_x_some_237", %TName_Option_ByStr2** %"$adtgep_241", align 8
  %"$adtgep_242" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_239", i32 0, i32 2
  store %TName_Option_ByStr3* %"$res_x_none_238", %TName_Option_ByStr3** %"$adtgep_242", align 8
  %"$adtptr_243" = bitcast %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_239" to %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*
  store %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtptr_243", %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %res_x_opt_out, align 8, !dbg !21
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_235"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %out1 = alloca %TName_Pair_ByStr4_ByStr8*, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$res1_254" = load [4 x i8], [4 x i8]* %res1, align 1
  %"$res2_255" = load [8 x i8], [8 x i8]* %res2, align 1
  %"$adtval_256_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_256_salloc" = call i8* @_salloc(i8* %"$adtval_256_load", i64 13)
  %"$adtval_256" = bitcast i8* %"$adtval_256_salloc" to %CName_Pair_ByStr4_ByStr8*
  %"$adtgep_257" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_256", i32 0, i32 0
  store i8 0, i8* %"$adtgep_257", align 1
  %"$adtgep_258" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_256", i32 0, i32 1
  store [4 x i8] %"$res1_254", [4 x i8]* %"$adtgep_258", align 1
  %"$adtgep_259" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_256", i32 0, i32 2
  store [8 x i8] %"$res2_255", [8 x i8]* %"$adtgep_259", align 1
  %"$adtptr_260" = bitcast %CName_Pair_ByStr4_ByStr8* %"$adtval_256" to %TName_Pair_ByStr4_ByStr8*
  store %TName_Pair_ByStr4_ByStr8* %"$adtptr_260", %TName_Pair_ByStr4_ByStr8** %out1, align 8, !dbg !22
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_252"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %out2 = alloca %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_264"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$out1_271" = load %TName_Pair_ByStr4_ByStr8*, %TName_Pair_ByStr4_ByStr8** %out1, align 8
  %"$res3_272" = load [16 x i8], [16 x i8]* %res3, align 1
  %"$adtval_273_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_273_salloc" = call i8* @_salloc(i8* %"$adtval_273_load", i64 25)
  %"$adtval_273" = bitcast i8* %"$adtval_273_salloc" to %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*
  %"$adtgep_274" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_273", i32 0, i32 0
  store i8 0, i8* %"$adtgep_274", align 1
  %"$adtgep_275" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_273", i32 0, i32 1
  store %TName_Pair_ByStr4_ByStr8* %"$out1_271", %TName_Pair_ByStr4_ByStr8** %"$adtgep_275", align 8
  %"$adtgep_276" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_273", i32 0, i32 2
  store [16 x i8] %"$res3_272", [16 x i8]* %"$adtgep_276", align 1
  %"$adtptr_277" = bitcast %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_273" to %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*
  store %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtptr_277", %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %out2, align 8, !dbg !23
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_269"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %out3 = alloca %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*, align 8
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_281"
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %"$out2_288" = load %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*, %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %out2, align 8
  %"$res4_289" = load [32 x i8], [32 x i8]* %res4, align 1
  %"$adtval_290_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_290_salloc" = call i8* @_salloc(i8* %"$adtval_290_load", i64 41)
  %"$adtval_290" = bitcast i8* %"$adtval_290_salloc" to %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*
  %"$adtgep_291" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_290", i32 0, i32 0
  store i8 0, i8* %"$adtgep_291", align 1
  %"$adtgep_292" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_290", i32 0, i32 1
  store %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$out2_288", %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %"$adtgep_292", align 8
  %"$adtgep_293" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_290", i32 0, i32 2
  store [32 x i8] %"$res4_289", [32 x i8]* %"$adtgep_293", align 1
  %"$adtptr_294" = bitcast %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_290" to %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*
  store %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtptr_294", %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %out3, align 8, !dbg !24
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_286"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %out4 = alloca %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %"$out3_305" = load %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*, %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %out3, align 8
  %"$res_x_opt_out_306" = load %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*, %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %res_x_opt_out, align 8
  %"$adtval_307_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_307_salloc" = call i8* @_salloc(i8* %"$adtval_307_load", i64 17)
  %"$adtval_307" = bitcast i8* %"$adtval_307_salloc" to %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*
  %"$adtgep_308" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_307", i32 0, i32 0
  store i8 0, i8* %"$adtgep_308", align 1
  %"$adtgep_309" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_307", i32 0, i32 1
  store %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$out3_305", %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %"$adtgep_309", align 8
  %"$adtgep_310" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_307", i32 0, i32 2
  store %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$res_x_opt_out_306", %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %"$adtgep_310", align 8
  %"$adtptr_311" = bitcast %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_307" to %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*
  store %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtptr_311", %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %out4, align 8, !dbg !25
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_303"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %"$out4_317" = load %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %out4, align 8
  store %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$out4_317", %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %"$expr_0", align 8, !dbg !26
  %"$$expr_0_318" = load %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %"$expr_0", align 8
  ret %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$$expr_0_318"
}

declare void @_out_of_gas()

declare i8* @_uint32_to_bystrx(i8*, %Uint32)

declare i8* @_uint64_to_bystrx(i8*, %Uint64)

declare i8* @_uint128_to_bystrx(i8*, %Uint128)

declare i8* @_uint256_to_bystrx(i8*, %Uint256*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare i8* @_bystr_to_bystrx(i8*, i32, %Bystr)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_319" = call %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* @"$scilla_expr_107"(i8* null)
  %"$memvoidcast_320" = bitcast %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$exprval_319" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_51", i8* %"$memvoidcast_320")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_to_bystrx.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !2, file: !2, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = distinct !DISubprogram(name: "$scilla_expr_107", linkageName: "$scilla_expr_107", scope: !2, file: !2, type: !5, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!9 = !DILocation(line: 1, column: 18, scope: !8)
!10 = !DILocation(line: 2, column: 12, scope: !8)
!11 = !DILocation(line: 4, column: 18, scope: !8)
!12 = !DILocation(line: 5, column: 12, scope: !8)
!13 = !DILocation(line: 7, column: 19, scope: !8)
!14 = !DILocation(line: 8, column: 12, scope: !8)
!15 = !DILocation(line: 10, column: 19, scope: !8)
!16 = !DILocation(line: 11, column: 12, scope: !8)
!17 = !DILocation(line: 13, column: 9, scope: !8)
!18 = !DILocation(line: 14, column: 11, scope: !8)
!19 = !DILocation(line: 15, column: 18, scope: !8)
!20 = !DILocation(line: 16, column: 18, scope: !8)
!21 = !DILocation(line: 17, column: 21, scope: !8)
!22 = !DILocation(line: 19, column: 12, scope: !8)
!23 = !DILocation(line: 20, column: 12, scope: !8)
!24 = !DILocation(line: 21, column: 12, scope: !8)
!25 = !DILocation(line: 22, column: 12, scope: !8)
!26 = !DILocation(line: 24, column: 1, scope: !8)
