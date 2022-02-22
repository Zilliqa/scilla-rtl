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
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_49" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_48"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_48" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_50"**, %"$TyDescrTy_ADTTyp_49"* }
%"$TyDescrTy_ADTTyp_Constr_50" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_394" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_395" = type { %ParamDescrString, i32, %"$ParamDescr_394"* }
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
@"$TyDescr_Bystr3_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 3 }
@"$TyDescr_Bystr3_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr3_Prim_36" to i8*) }
@"$TyDescr_Bystr2_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 2 }
@"$TyDescr_Bystr2_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr2_Prim_38" to i8*) }
@"$TyDescr_Bystr32_Prim_40" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 32 }
@"$TyDescr_Bystr32_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr32_Prim_40" to i8*) }
@"$TyDescr_Bystr16_Prim_42" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 16 }
@"$TyDescr_Bystr16_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr16_Prim_42" to i8*) }
@"$TyDescr_Bystr8_Prim_44" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 8 }
@"$TyDescr_Bystr8_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr8_Prim_44" to i8*) }
@"$TyDescr_Bystr4_Prim_46" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 4 }
@"$TyDescr_Bystr4_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr4_Prim_46" to i8*) }
@"$TyDescr_ADT_Option_ByStr3_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_70" to i8*) }
@"$TyDescr_ADT_Option_ByStr2_52" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_79" to i8*) }
@"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_53" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_88" to i8*) }
@"$TyDescr_ADT_Pair_ByStr4_ByStr8_54" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_94" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_55" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_100" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_56" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_106" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_57" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_112" to i8*) }
@"$TyDescr_Option_ADTTyp_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_49" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_81", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_48"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_48"*], [2 x %"$TyDescrTy_ADTTyp_Specl_48"*]* @"$TyDescr_Option_ADTTyp_m_specls_80", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr3_Constr_m_args_62" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr3_37"]
@"$TyDescr_ADT_Some_63" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr3_ADTTyp_Constr_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_63", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr3_Constr_m_args_62", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr3_Constr_m_args_65" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_66" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr3_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_66", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr3_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_constrs_68" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_50"*] [%"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Option_Some_ByStr3_ADTTyp_Constr_64", %"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Option_None_ByStr3_ADTTyp_Constr_67"]
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_TArgs_69" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr3_37"]
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_48" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_TArgs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_50"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_50"*], [2 x %"$TyDescrTy_ADTTyp_Constr_50"*]* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_constrs_68", i32 0, i32 0), %"$TyDescrTy_ADTTyp_49"* @"$TyDescr_Option_ADTTyp_61" }
@"$TyDescr_Option_Some_ByStr2_Constr_m_args_71" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr2_39"]
@"$TyDescr_ADT_Some_72" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr2_ADTTyp_Constr_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_72", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr2_Constr_m_args_71", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr2_Constr_m_args_74" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_75" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr2_ADTTyp_Constr_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_75", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr2_Constr_m_args_74", i32 0, i32 0) }
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_constrs_77" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_50"*] [%"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Option_Some_ByStr2_ADTTyp_Constr_73", %"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Option_None_ByStr2_ADTTyp_Constr_76"]
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_TArgs_78" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr2_39"]
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_48" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_TArgs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_50"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_50"*], [2 x %"$TyDescrTy_ADTTyp_Constr_50"*]* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_constrs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_49"* @"$TyDescr_Option_ADTTyp_61" }
@"$TyDescr_Option_ADTTyp_m_specls_80" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_48"*] [%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_70", %"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_79"]
@"$TyDescr_ADT_Option_81" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Pair_ADTTyp_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_114", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 5, %"$TyDescrTy_ADTTyp_Specl_48"** getelementptr inbounds ([5 x %"$TyDescrTy_ADTTyp_Specl_48"*], [5 x %"$TyDescrTy_ADTTyp_Specl_48"*]* @"$TyDescr_Pair_ADTTyp_m_specls_113", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_Constr_m_args_83" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr2_52", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr3_51"]
@"$TyDescr_ADT_Pair_84" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_84", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_constrs_86" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_50"*] [%"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Constr_85"]
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_TArgs_87" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr2_52", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr3_51"]
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_48" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_TArgs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_50"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_50"*], [1 x %"$TyDescrTy_ADTTyp_Constr_50"*]* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_constrs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_49"* @"$TyDescr_Pair_ADTTyp_82" }
@"$TyDescr_Pair_Pair_ByStr4_ByStr8_Constr_m_args_89" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr4_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_45"]
@"$TyDescr_ADT_Pair_90" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr4_ByStr8_ADTTyp_Constr_91" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_90", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr4_ByStr8_Constr_m_args_89", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_constrs_92" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_50"*] [%"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Pair_Pair_ByStr4_ByStr8_ADTTyp_Constr_91"]
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_TArgs_93" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr4_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_45"]
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_94" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_48" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_TArgs_93", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_50"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_50"*], [1 x %"$TyDescrTy_ADTTyp_Constr_50"*]* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_constrs_92", i32 0, i32 0), %"$TyDescrTy_ADTTyp_49"* @"$TyDescr_Pair_ADTTyp_82" }
@"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_Constr_m_args_95" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr4_ByStr8_54", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_43"]
@"$TyDescr_ADT_Pair_96" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Constr_97" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_96", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_Constr_m_args_95", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_constrs_98" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_50"*] [%"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Constr_97"]
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_TArgs_99" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr4_ByStr8_54", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_43"]
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_100" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_48" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_TArgs_99", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_50"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_50"*], [1 x %"$TyDescrTy_ADTTyp_Constr_50"*]* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_constrs_98", i32 0, i32 0), %"$TyDescrTy_ADTTyp_49"* @"$TyDescr_Pair_ADTTyp_82" }
@"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_Constr_m_args_101" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_55", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_41"]
@"$TyDescr_ADT_Pair_102" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Constr_103" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_102", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_Constr_m_args_101", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_constrs_104" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_50"*] [%"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Constr_103"]
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_TArgs_105" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_55", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_41"]
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_106" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_48" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_TArgs_105", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_50"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_50"*], [1 x %"$TyDescrTy_ADTTyp_Constr_50"*]* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_constrs_104", i32 0, i32 0), %"$TyDescrTy_ADTTyp_49"* @"$TyDescr_Pair_ADTTyp_82" }
@"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_Constr_m_args_107" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_56", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_53"]
@"$TyDescr_ADT_Pair_108" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Constr_109" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_108", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_Constr_m_args_107", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_constrs_110" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_50"*] [%"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Constr_109"]
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_TArgs_111" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_56", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_53"]
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_112" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_48" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_TArgs_111", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_50"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_50"*], [1 x %"$TyDescrTy_ADTTyp_Constr_50"*]* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_constrs_110", i32 0, i32 0), %"$TyDescrTy_ADTTyp_49"* @"$TyDescr_Pair_ADTTyp_82" }
@"$TyDescr_Pair_ADTTyp_m_specls_113" = unnamed_addr constant [5 x %"$TyDescrTy_ADTTyp_Specl_48"*] [%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_88", %"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_94", %"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_100", %"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_106", %"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_112"]
@"$TyDescr_ADT_Pair_114" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [27 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_55", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_45", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr3_51", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_47", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr4_ByStr8_54", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_56", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_41", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_57", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_53", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr2_52", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_39", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 27
@_contract_parameters = constant [0 x %"$ParamDescr_394"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_395"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 5, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %entry
  %"$consume_119" = sub i64 %"$gasrem_115", 5
  store i64 %"$consume_119", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 8, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 8
  store i64 %"$consume_124", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 196, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 196
  store i64 %"$consume_129", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 20, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 20
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 12, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 12
  store i64 %"$consume_139", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 2, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 2
  store i64 %"$consume_144", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %entry
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %uint32_100 = alloca %Uint32, align 8
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  store %Uint32 { i32 100 }, %Uint32* %uint32_100, align 4
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %res1 = alloca [4 x i8], align 1
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 4, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 4
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$execptr_load_165" = load i8*, i8** @_execptr, align 8
  %"$uint32_100_166" = load %Uint32, %Uint32* %uint32_100, align 4
  %"$to_bystr4_call_167" = call i8* @_uint32_to_bystrx(i8* %"$execptr_load_165", %Uint32 %"$uint32_100_166")
  %"$to_bystr4_168" = bitcast i8* %"$to_bystr4_call_167" to [4 x i8]*
  %"$to_bystr4_169" = load [4 x i8], [4 x i8]* %"$to_bystr4_168", align 1
  store [4 x i8] %"$to_bystr4_169", [4 x i8]* %res1, align 1
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_163"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %uint64_200 = alloca %Uint64, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  store %Uint64 { i64 200 }, %Uint64* %uint64_200, align 8
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_178"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %res2 = alloca [8 x i8], align 1
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 8, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_183"
  %"$consume_189" = sub i64 %"$gasrem_185", 8
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$execptr_load_190" = load i8*, i8** @_execptr, align 8
  %"$uint64_200_191" = load %Uint64, %Uint64* %uint64_200, align 8
  %"$to_bystr8_call_192" = call i8* @_uint64_to_bystrx(i8* %"$execptr_load_190", %Uint64 %"$uint64_200_191")
  %"$to_bystr8_193" = bitcast i8* %"$to_bystr8_call_192" to [8 x i8]*
  %"$to_bystr8_194" = load [8 x i8], [8 x i8]* %"$to_bystr8_193", align 1
  store [8 x i8] %"$to_bystr8_194", [8 x i8]* %res2, align 1
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_188"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %uint128_300 = alloca %Uint128, align 8
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_198"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  store %Uint128 { i128 300 }, %Uint128* %uint128_300, align 8
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 1, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_203"
  %"$consume_209" = sub i64 %"$gasrem_205", 1
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %res3 = alloca [16 x i8], align 1
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 16, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_208"
  %"$consume_214" = sub i64 %"$gasrem_210", 16
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %"$execptr_load_215" = load i8*, i8** @_execptr, align 8
  %"$uint128_300_216" = load %Uint128, %Uint128* %uint128_300, align 8
  %"$to_bystr16_call_217" = call i8* @_uint128_to_bystrx(i8* %"$execptr_load_215", %Uint128 %"$uint128_300_216")
  %"$to_bystr16_218" = bitcast i8* %"$to_bystr16_call_217" to [16 x i8]*
  %"$to_bystr16_219" = load [16 x i8], [16 x i8]* %"$to_bystr16_218", align 1
  store [16 x i8] %"$to_bystr16_219", [16 x i8]* %res3, align 1
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_213"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %uint256_400 = alloca %Uint256, align 8
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  store %Uint256 { i256 400 }, %Uint256* %uint256_400, align 8
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_228"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %res4 = alloca [32 x i8], align 1
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 32, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_233"
  %"$consume_239" = sub i64 %"$gasrem_235", 32
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %"$execptr_load_240" = load i8*, i8** @_execptr, align 8
  %"$to_bystr32_uint256_400_241" = alloca %Uint256, align 8
  %"$uint256_400_242" = load %Uint256, %Uint256* %uint256_400, align 8
  store %Uint256 %"$uint256_400_242", %Uint256* %"$to_bystr32_uint256_400_241", align 8
  %"$to_bystr32_call_243" = call i8* @_uint256_to_bystrx(i8* %"$execptr_load_240", %Uint256* %"$to_bystr32_uint256_400_241")
  %"$to_bystr32_244" = bitcast i8* %"$to_bystr32_call_243" to [32 x i8]*
  %"$to_bystr32_245" = load [32 x i8], [32 x i8]* %"$to_bystr32_244", align 1
  store [32 x i8] %"$to_bystr32_245", [32 x i8]* %res4, align 1
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_238"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %x = alloca [2 x i8], align 1
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\EE", [2 x i8]* %x, align 1
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_254"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %xbs = alloca %Bystr, align 8
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 2, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_259"
  %"$consume_265" = sub i64 %"$gasrem_261", 2
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$execptr_load_266" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_x_267" = alloca [2 x i8], align 1
  %"$x_268" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_268", [2 x i8]* %"$to_bystr_x_267", align 1
  %"$$to_bystr_x_267_269" = bitcast [2 x i8]* %"$to_bystr_x_267" to i8*
  %"$to_bystr_call_270" = call %Bystr @_to_bystr(i8* %"$execptr_load_266", i32 2, i8* %"$$to_bystr_x_267_269")
  store %Bystr %"$to_bystr_call_270", %Bystr* %xbs, align 8
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_264"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %res_x_some = alloca %TName_Option_ByStr2*, align 8
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 2, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_274"
  %"$consume_280" = sub i64 %"$gasrem_276", 2
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$execptr_load_281" = load i8*, i8** @_execptr, align 8
  %"$xbs_282" = load %Bystr, %Bystr* %xbs, align 8
  %"$to_bystr2_call_283" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_281", i32 2, %Bystr %"$xbs_282")
  %"$to_bystr2_284" = bitcast i8* %"$to_bystr2_call_283" to %TName_Option_ByStr2*
  store %TName_Option_ByStr2* %"$to_bystr2_284", %TName_Option_ByStr2** %res_x_some, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_279"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %res_x_none = alloca %TName_Option_ByStr3*, align 8
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 3, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 3
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$execptr_load_295" = load i8*, i8** @_execptr, align 8
  %"$xbs_296" = load %Bystr, %Bystr* %xbs, align 8
  %"$to_bystr3_call_297" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_295", i32 3, %Bystr %"$xbs_296")
  %"$to_bystr3_298" = bitcast i8* %"$to_bystr3_call_297" to %TName_Option_ByStr3*
  store %TName_Option_ByStr3* %"$to_bystr3_298", %TName_Option_ByStr3** %res_x_none, align 8
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_293"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %res_x_opt_out = alloca %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_302"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$res_x_some_309" = load %TName_Option_ByStr2*, %TName_Option_ByStr2** %res_x_some, align 8
  %"$res_x_none_310" = load %TName_Option_ByStr3*, %TName_Option_ByStr3** %res_x_none, align 8
  %"$adtval_311_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_311_salloc" = call i8* @_salloc(i8* %"$adtval_311_load", i64 17)
  %"$adtval_311" = bitcast i8* %"$adtval_311_salloc" to %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"*
  %"$adtgep_312" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_311", i32 0, i32 0
  store i8 0, i8* %"$adtgep_312", align 1
  %"$adtgep_313" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_311", i32 0, i32 1
  store %TName_Option_ByStr2* %"$res_x_some_309", %TName_Option_ByStr2** %"$adtgep_313", align 8
  %"$adtgep_314" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_311", i32 0, i32 2
  store %TName_Option_ByStr3* %"$res_x_none_310", %TName_Option_ByStr3** %"$adtgep_314", align 8
  %"$adtptr_315" = bitcast %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_311" to %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*
  store %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtptr_315", %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %res_x_opt_out, align 8
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_307"
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %out1 = alloca %TName_Pair_ByStr4_ByStr8*, align 8
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_319"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_319"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %"$res1_326" = load [4 x i8], [4 x i8]* %res1, align 1
  %"$res2_327" = load [8 x i8], [8 x i8]* %res2, align 1
  %"$adtval_328_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_328_salloc" = call i8* @_salloc(i8* %"$adtval_328_load", i64 13)
  %"$adtval_328" = bitcast i8* %"$adtval_328_salloc" to %CName_Pair_ByStr4_ByStr8*
  %"$adtgep_329" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_328", i32 0, i32 0
  store i8 0, i8* %"$adtgep_329", align 1
  %"$adtgep_330" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_328", i32 0, i32 1
  store [4 x i8] %"$res1_326", [4 x i8]* %"$adtgep_330", align 1
  %"$adtgep_331" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_328", i32 0, i32 2
  store [8 x i8] %"$res2_327", [8 x i8]* %"$adtgep_331", align 1
  %"$adtptr_332" = bitcast %CName_Pair_ByStr4_ByStr8* %"$adtval_328" to %TName_Pair_ByStr4_ByStr8*
  store %TName_Pair_ByStr4_ByStr8* %"$adtptr_332", %TName_Pair_ByStr4_ByStr8** %out1, align 8
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 1, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_324"
  %"$consume_337" = sub i64 %"$gasrem_333", 1
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %out2 = alloca %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*, align 8
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_336"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$out1_343" = load %TName_Pair_ByStr4_ByStr8*, %TName_Pair_ByStr4_ByStr8** %out1, align 8
  %"$res3_344" = load [16 x i8], [16 x i8]* %res3, align 1
  %"$adtval_345_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_345_salloc" = call i8* @_salloc(i8* %"$adtval_345_load", i64 25)
  %"$adtval_345" = bitcast i8* %"$adtval_345_salloc" to %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*
  %"$adtgep_346" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_345", i32 0, i32 0
  store i8 0, i8* %"$adtgep_346", align 1
  %"$adtgep_347" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_345", i32 0, i32 1
  store %TName_Pair_ByStr4_ByStr8* %"$out1_343", %TName_Pair_ByStr4_ByStr8** %"$adtgep_347", align 8
  %"$adtgep_348" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_345", i32 0, i32 2
  store [16 x i8] %"$res3_344", [16 x i8]* %"$adtgep_348", align 1
  %"$adtptr_349" = bitcast %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_345" to %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*
  store %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtptr_349", %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %out2, align 8
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_341"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  %out3 = alloca %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*, align 8
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_353"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %"$out2_360" = load %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*, %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %out2, align 8
  %"$res4_361" = load [32 x i8], [32 x i8]* %res4, align 1
  %"$adtval_362_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_362_salloc" = call i8* @_salloc(i8* %"$adtval_362_load", i64 41)
  %"$adtval_362" = bitcast i8* %"$adtval_362_salloc" to %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*
  %"$adtgep_363" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_362", i32 0, i32 0
  store i8 0, i8* %"$adtgep_363", align 1
  %"$adtgep_364" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_362", i32 0, i32 1
  store %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$out2_360", %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %"$adtgep_364", align 8
  %"$adtgep_365" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_362", i32 0, i32 2
  store [32 x i8] %"$res4_361", [32 x i8]* %"$adtgep_365", align 1
  %"$adtptr_366" = bitcast %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_362" to %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*
  store %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtptr_366", %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %out3, align 8
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_358"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %out4 = alloca %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, align 8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_370"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %"$out3_377" = load %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*, %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %out3, align 8
  %"$res_x_opt_out_378" = load %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*, %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %res_x_opt_out, align 8
  %"$adtval_379_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_379_salloc" = call i8* @_salloc(i8* %"$adtval_379_load", i64 17)
  %"$adtval_379" = bitcast i8* %"$adtval_379_salloc" to %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*
  %"$adtgep_380" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_379", i32 0, i32 0
  store i8 0, i8* %"$adtgep_380", align 1
  %"$adtgep_381" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_379", i32 0, i32 1
  store %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$out3_377", %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %"$adtgep_381", align 8
  %"$adtgep_382" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_379", i32 0, i32 2
  store %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$res_x_opt_out_378", %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %"$adtgep_382", align 8
  %"$adtptr_383" = bitcast %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_379" to %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*
  store %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtptr_383", %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %out4, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_375"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %"$out4_389" = load %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %out4, align 8
  store %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$out4_389", %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %"$expr_6", align 8
  %"$$expr_6_390" = load %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %"$expr_6", align 8
  ret %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$$expr_6_390"
}

declare i8* @_uint32_to_bystrx(i8*, %Uint32)

declare i8* @_uint64_to_bystrx(i8*, %Uint64)

declare i8* @_uint128_to_bystrx(i8*, %Uint128)

declare i8* @_uint256_to_bystrx(i8*, %Uint256*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare i8* @_bystr_to_bystrx(i8*, i32, %Bystr)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_391" = call %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_392" = bitcast %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$exprval_391" to i8*
  %"$execptr_load_393" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_393", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_57", i8* %"$memvoidcast_392")
  ret void
}
