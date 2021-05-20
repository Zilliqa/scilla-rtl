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
%"$ParamDescr_322" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_323" = type { %ParamDescrString, i32, %"$ParamDescr_322"* }
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
@"$TyDescr_ADT_Option_ByStr3_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_64" to i8*) }
@"$TyDescr_ADT_Option_ByStr2_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_73" to i8*) }
@"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_82" to i8*) }
@"$TyDescr_ADT_Pair_ByStr4_ByStr8_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_88" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_49" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_94" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_100" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_106" to i8*) }
@"$TyDescr_Option_ADTTyp_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_43" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_75", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_42"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_42"*], [2 x %"$TyDescrTy_ADTTyp_Specl_42"*]* @"$TyDescr_Option_ADTTyp_m_specls_74", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr3_Constr_m_args_56" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr3_31"]
@"$TyDescr_ADT_Some_57" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr3_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_57", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr3_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr3_Constr_m_args_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_60" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr3_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_60", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr3_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_constrs_62" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_Some_ByStr3_ADTTyp_Constr_58", %"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_None_ByStr3_ADTTyp_Constr_61"]
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_TArgs_63" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr3_31"]
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_TArgs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_44"*], [2 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_constrs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Option_ADTTyp_55" }
@"$TyDescr_Option_Some_ByStr2_Constr_m_args_65" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr2_33"]
@"$TyDescr_ADT_Some_66" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr2_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_66", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr2_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr2_Constr_m_args_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_69" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr2_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_69", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr2_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_constrs_71" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_Some_ByStr2_ADTTyp_Constr_67", %"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Option_None_ByStr2_ADTTyp_Constr_70"]
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_TArgs_72" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr2_33"]
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_TArgs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_44"*], [2 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_constrs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Option_ADTTyp_55" }
@"$TyDescr_Option_ADTTyp_m_specls_74" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_42"*] [%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_64", %"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_73"]
@"$TyDescr_ADT_Option_75" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Pair_ADTTyp_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_108", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 5, %"$TyDescrTy_ADTTyp_Specl_42"** getelementptr inbounds ([5 x %"$TyDescrTy_ADTTyp_Specl_42"*], [5 x %"$TyDescrTy_ADTTyp_Specl_42"*]* @"$TyDescr_Pair_ADTTyp_m_specls_107", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_Constr_m_args_77" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr2_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr3_45"]
@"$TyDescr_ADT_Pair_78" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Constr_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_78", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_Constr_m_args_77", i32 0, i32 0) }
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_constrs_80" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Constr_79"]
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_TArgs_81" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr2_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr3_45"]
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_TArgs_81", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_constrs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_76" }
@"$TyDescr_Pair_Pair_ByStr4_ByStr8_Constr_m_args_83" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr4_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_39"]
@"$TyDescr_ADT_Pair_84" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr4_ByStr8_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_84", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr4_ByStr8_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_constrs_86" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_ByStr4_ByStr8_ADTTyp_Constr_85"]
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_TArgs_87" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr4_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_39"]
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_TArgs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_constrs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_76" }
@"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_Constr_m_args_89" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr4_ByStr8_48", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_37"]
@"$TyDescr_ADT_Pair_90" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Constr_91" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_90", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_Constr_m_args_89", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_constrs_92" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Constr_91"]
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_TArgs_93" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr4_ByStr8_48", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_37"]
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_94" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_TArgs_93", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_constrs_92", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_76" }
@"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_Constr_m_args_95" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_35"]
@"$TyDescr_ADT_Pair_96" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Constr_97" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_96", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_Constr_m_args_95", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_constrs_98" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Constr_97"]
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_TArgs_99" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_35"]
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_100" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_TArgs_99", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_constrs_98", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_76" }
@"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_Constr_m_args_101" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_50", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_47"]
@"$TyDescr_ADT_Pair_102" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Constr_103" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_102", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_Constr_m_args_101", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_constrs_104" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Constr_103"]
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_TArgs_105" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_50", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_47"]
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_106" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_TArgs_105", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_constrs_104", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_76" }
@"$TyDescr_Pair_ADTTyp_m_specls_107" = unnamed_addr constant [5 x %"$TyDescrTy_ADTTyp_Specl_42"*] [%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_82", %"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_88", %"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_94", %"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_100", %"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_106"]
@"$TyDescr_ADT_Pair_108" = unnamed_addr constant [4 x i8] c"Pair"
@_tydescr_table = constant [27 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_31", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_39", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr3_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_41", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr4_ByStr8_48", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_50", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_35", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr2_46", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_37", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_33", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 27
@_contract_parameters = constant [0 x %"$ParamDescr_322"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_323"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* @_scilla_expr_fun(i8* %0) !dbg !9 {
entry:
  %"$expr_0" = alloca %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, align 8
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %entry
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %uint32_100 = alloca %Uint32, align 8
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  store %Uint32 { i32 100 }, %Uint32* %uint32_100, align 4, !dbg !10
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_117"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %res1 = alloca [4 x i8], align 1
  %"$execptr_load_124" = load i8*, i8** @_execptr, align 8
  %"$uint32_100_125" = load %Uint32, %Uint32* %uint32_100, align 4
  %"$to_bystr4_call_126" = call i8* @_uint32_to_bystrx(i8* %"$execptr_load_124", %Uint32 %"$uint32_100_125")
  %"$to_bystr4_127" = bitcast i8* %"$to_bystr4_call_126" to [4 x i8]*
  %"$to_bystr4_128" = load [4 x i8], [4 x i8]* %"$to_bystr4_127", align 1
  store [4 x i8] %"$to_bystr4_128", [4 x i8]* %res1, align 1, !dbg !11
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_122"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %uint64_200 = alloca %Uint64, align 8
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  store %Uint64 { i64 200 }, %Uint64* %uint64_200, align 8, !dbg !12
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  %res2 = alloca [8 x i8], align 1
  %"$execptr_load_144" = load i8*, i8** @_execptr, align 8
  %"$uint64_200_145" = load %Uint64, %Uint64* %uint64_200, align 8
  %"$to_bystr8_call_146" = call i8* @_uint64_to_bystrx(i8* %"$execptr_load_144", %Uint64 %"$uint64_200_145")
  %"$to_bystr8_147" = bitcast i8* %"$to_bystr8_call_146" to [8 x i8]*
  %"$to_bystr8_148" = load [8 x i8], [8 x i8]* %"$to_bystr8_147", align 1
  store [8 x i8] %"$to_bystr8_148", [8 x i8]* %res2, align 1, !dbg !13
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_142"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %uint128_300 = alloca %Uint128, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_152"
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  store %Uint128 { i128 300 }, %Uint128* %uint128_300, align 8, !dbg !14
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_157"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %res3 = alloca [16 x i8], align 1
  %"$execptr_load_164" = load i8*, i8** @_execptr, align 8
  %"$uint128_300_165" = load %Uint128, %Uint128* %uint128_300, align 8
  %"$to_bystr16_call_166" = call i8* @_uint128_to_bystrx(i8* %"$execptr_load_164", %Uint128 %"$uint128_300_165")
  %"$to_bystr16_167" = bitcast i8* %"$to_bystr16_call_166" to [16 x i8]*
  %"$to_bystr16_168" = load [16 x i8], [16 x i8]* %"$to_bystr16_167", align 1
  store [16 x i8] %"$to_bystr16_168", [16 x i8]* %res3, align 1, !dbg !15
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_162"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %uint256_400 = alloca %Uint256, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  store %Uint256 { i256 400 }, %Uint256* %uint256_400, align 8, !dbg !16
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_177"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %res4 = alloca [32 x i8], align 1
  %"$execptr_load_184" = load i8*, i8** @_execptr, align 8
  %"$to_bystr32_uint256_400_185" = alloca %Uint256, align 8
  %"$uint256_400_186" = load %Uint256, %Uint256* %uint256_400, align 8
  store %Uint256 %"$uint256_400_186", %Uint256* %"$to_bystr32_uint256_400_185", align 8
  %"$to_bystr32_call_187" = call i8* @_uint256_to_bystrx(i8* %"$execptr_load_184", %Uint256* %"$to_bystr32_uint256_400_185")
  %"$to_bystr32_188" = bitcast i8* %"$to_bystr32_call_187" to [32 x i8]*
  %"$to_bystr32_189" = load [32 x i8], [32 x i8]* %"$to_bystr32_188", align 1
  store [32 x i8] %"$to_bystr32_189", [32 x i8]* %res4, align 1, !dbg !17
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$have_gas_182"
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %x = alloca [2 x i8], align 1
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_193"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\EE", [2 x i8]* %x, align 1, !dbg !18
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_198"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %xbs = alloca %Bystr, align 8
  %"$execptr_load_205" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_x_206" = alloca [2 x i8], align 1
  %"$x_207" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_207", [2 x i8]* %"$to_bystr_x_206", align 1
  %"$$to_bystr_x_206_208" = bitcast [2 x i8]* %"$to_bystr_x_206" to i8*
  %"$to_bystr_call_209" = call %Bystr @_to_bystr(i8* %"$execptr_load_205", i32 2, i8* %"$$to_bystr_x_206_208")
  store %Bystr %"$to_bystr_call_209", %Bystr* %xbs, align 8, !dbg !19
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_203"
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %res_x_some = alloca %TName_Option_ByStr2*, align 8
  %"$execptr_load_215" = load i8*, i8** @_execptr, align 8
  %"$xbs_216" = load %Bystr, %Bystr* %xbs, align 8
  %"$to_bystr2_call_217" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_215", i32 2, %Bystr %"$xbs_216")
  %"$to_bystr2_218" = bitcast i8* %"$to_bystr2_call_217" to %TName_Option_ByStr2*
  store %TName_Option_ByStr2* %"$to_bystr2_218", %TName_Option_ByStr2** %res_x_some, align 8, !dbg !20
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_213"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %res_x_none = alloca %TName_Option_ByStr3*, align 8
  %"$execptr_load_224" = load i8*, i8** @_execptr, align 8
  %"$xbs_225" = load %Bystr, %Bystr* %xbs, align 8
  %"$to_bystr3_call_226" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_224", i32 3, %Bystr %"$xbs_225")
  %"$to_bystr3_227" = bitcast i8* %"$to_bystr3_call_226" to %TName_Option_ByStr3*
  store %TName_Option_ByStr3* %"$to_bystr3_227", %TName_Option_ByStr3** %res_x_none, align 8, !dbg !21
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_222"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %res_x_opt_out = alloca %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*, align 8
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$res_x_some_238" = load %TName_Option_ByStr2*, %TName_Option_ByStr2** %res_x_some, align 8
  %"$res_x_none_239" = load %TName_Option_ByStr3*, %TName_Option_ByStr3** %res_x_none, align 8
  %"$adtval_240_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_240_salloc" = call i8* @_salloc(i8* %"$adtval_240_load", i64 17)
  %"$adtval_240" = bitcast i8* %"$adtval_240_salloc" to %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"*
  %"$adtgep_241" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_240", i32 0, i32 0
  store i8 0, i8* %"$adtgep_241", align 1
  %"$adtgep_242" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_240", i32 0, i32 1
  store %TName_Option_ByStr2* %"$res_x_some_238", %TName_Option_ByStr2** %"$adtgep_242", align 8
  %"$adtgep_243" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_240", i32 0, i32 2
  store %TName_Option_ByStr3* %"$res_x_none_239", %TName_Option_ByStr3** %"$adtgep_243", align 8
  %"$adtptr_244" = bitcast %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_240" to %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*
  store %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtptr_244", %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %res_x_opt_out, align 8, !dbg !22
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_236"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %out1 = alloca %TName_Pair_ByStr4_ByStr8*, align 8
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_248"
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %"$res1_255" = load [4 x i8], [4 x i8]* %res1, align 1
  %"$res2_256" = load [8 x i8], [8 x i8]* %res2, align 1
  %"$adtval_257_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_257_salloc" = call i8* @_salloc(i8* %"$adtval_257_load", i64 13)
  %"$adtval_257" = bitcast i8* %"$adtval_257_salloc" to %CName_Pair_ByStr4_ByStr8*
  %"$adtgep_258" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_257", i32 0, i32 0
  store i8 0, i8* %"$adtgep_258", align 1
  %"$adtgep_259" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_257", i32 0, i32 1
  store [4 x i8] %"$res1_255", [4 x i8]* %"$adtgep_259", align 1
  %"$adtgep_260" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_257", i32 0, i32 2
  store [8 x i8] %"$res2_256", [8 x i8]* %"$adtgep_260", align 1
  %"$adtptr_261" = bitcast %CName_Pair_ByStr4_ByStr8* %"$adtval_257" to %TName_Pair_ByStr4_ByStr8*
  store %TName_Pair_ByStr4_ByStr8* %"$adtptr_261", %TName_Pair_ByStr4_ByStr8** %out1, align 8, !dbg !23
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_253"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %out2 = alloca %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*, align 8
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_265"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %"$out1_272" = load %TName_Pair_ByStr4_ByStr8*, %TName_Pair_ByStr4_ByStr8** %out1, align 8
  %"$res3_273" = load [16 x i8], [16 x i8]* %res3, align 1
  %"$adtval_274_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_274_salloc" = call i8* @_salloc(i8* %"$adtval_274_load", i64 25)
  %"$adtval_274" = bitcast i8* %"$adtval_274_salloc" to %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*
  %"$adtgep_275" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_274", i32 0, i32 0
  store i8 0, i8* %"$adtgep_275", align 1
  %"$adtgep_276" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_274", i32 0, i32 1
  store %TName_Pair_ByStr4_ByStr8* %"$out1_272", %TName_Pair_ByStr4_ByStr8** %"$adtgep_276", align 8
  %"$adtgep_277" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_274", i32 0, i32 2
  store [16 x i8] %"$res3_273", [16 x i8]* %"$adtgep_277", align 1
  %"$adtptr_278" = bitcast %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_274" to %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*
  store %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtptr_278", %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %out2, align 8, !dbg !24
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_270"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %out3 = alloca %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*, align 8
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_282"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$out2_289" = load %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*, %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %out2, align 8
  %"$res4_290" = load [32 x i8], [32 x i8]* %res4, align 1
  %"$adtval_291_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_291_salloc" = call i8* @_salloc(i8* %"$adtval_291_load", i64 41)
  %"$adtval_291" = bitcast i8* %"$adtval_291_salloc" to %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*
  %"$adtgep_292" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_291", i32 0, i32 0
  store i8 0, i8* %"$adtgep_292", align 1
  %"$adtgep_293" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_291", i32 0, i32 1
  store %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$out2_289", %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %"$adtgep_293", align 8
  %"$adtgep_294" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_291", i32 0, i32 2
  store [32 x i8] %"$res4_290", [32 x i8]* %"$adtgep_294", align 1
  %"$adtptr_295" = bitcast %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_291" to %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*
  store %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtptr_295", %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %out3, align 8, !dbg !25
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_287"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %out4 = alloca %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_299"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$out3_306" = load %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*, %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %out3, align 8
  %"$res_x_opt_out_307" = load %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*, %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %res_x_opt_out, align 8
  %"$adtval_308_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_308_salloc" = call i8* @_salloc(i8* %"$adtval_308_load", i64 17)
  %"$adtval_308" = bitcast i8* %"$adtval_308_salloc" to %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*
  %"$adtgep_309" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_308", i32 0, i32 0
  store i8 0, i8* %"$adtgep_309", align 1
  %"$adtgep_310" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_308", i32 0, i32 1
  store %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$out3_306", %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %"$adtgep_310", align 8
  %"$adtgep_311" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_308", i32 0, i32 2
  store %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$res_x_opt_out_307", %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %"$adtgep_311", align 8
  %"$adtptr_312" = bitcast %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_308" to %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*
  store %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtptr_312", %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %out4, align 8, !dbg !26
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_304"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %"$out4_318" = load %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %out4, align 8
  store %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$out4_318", %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %"$expr_0", align 8, !dbg !27
  %"$$expr_0_319" = load %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %"$expr_0", align 8
  ret %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$$expr_0_319"
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
  %"$exprval_320" = call %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_321" = bitcast %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$exprval_320" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_51", i8* %"$memvoidcast_321")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_to_bystrx.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 1, column: 18, scope: !9)
!11 = !DILocation(line: 2, column: 12, scope: !9)
!12 = !DILocation(line: 4, column: 18, scope: !9)
!13 = !DILocation(line: 5, column: 12, scope: !9)
!14 = !DILocation(line: 7, column: 19, scope: !9)
!15 = !DILocation(line: 8, column: 12, scope: !9)
!16 = !DILocation(line: 10, column: 19, scope: !9)
!17 = !DILocation(line: 11, column: 12, scope: !9)
!18 = !DILocation(line: 13, column: 9, scope: !9)
!19 = !DILocation(line: 14, column: 11, scope: !9)
!20 = !DILocation(line: 15, column: 18, scope: !9)
!21 = !DILocation(line: 16, column: 18, scope: !9)
!22 = !DILocation(line: 17, column: 21, scope: !9)
!23 = !DILocation(line: 19, column: 12, scope: !9)
!24 = !DILocation(line: 20, column: 12, scope: !9)
!25 = !DILocation(line: 21, column: 12, scope: !9)
!26 = !DILocation(line: 22, column: 12, scope: !9)
!27 = !DILocation(line: 24, column: 1, scope: !9)
