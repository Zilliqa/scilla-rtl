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
%"$TyDescrTy_ADTTyp_51" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_50"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_50" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_52"**, %"$TyDescrTy_ADTTyp_51"* }
%"$TyDescrTy_ADTTyp_Constr_52" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_396" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_397" = type { %ParamDescrString, i32, %"$ParamDescr_396"* }
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
@"$TyDescr_ReplicateContr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_ReplicateContr_Prim_34" to i8*) }
@"$TyDescr_Bystr_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_36" to i8*) }
@"$TyDescr_Bystr3_Prim_38" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 3 }
@"$TyDescr_Bystr3_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr3_Prim_38" to i8*) }
@"$TyDescr_Bystr2_Prim_40" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 2 }
@"$TyDescr_Bystr2_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr2_Prim_40" to i8*) }
@"$TyDescr_Bystr32_Prim_42" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 32 }
@"$TyDescr_Bystr32_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr32_Prim_42" to i8*) }
@"$TyDescr_Bystr16_Prim_44" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 16 }
@"$TyDescr_Bystr16_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr16_Prim_44" to i8*) }
@"$TyDescr_Bystr8_Prim_46" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 8 }
@"$TyDescr_Bystr8_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr8_Prim_46" to i8*) }
@"$TyDescr_Bystr4_Prim_48" = global %"$TyDescrTy_PrimTyp_7" { i32 8, i32 4 }
@"$TyDescr_Bystr4_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr4_Prim_48" to i8*) }
@"$TyDescr_ADT_Option_ByStr3_53" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_72" to i8*) }
@"$TyDescr_ADT_Option_ByStr2_54" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_81" to i8*) }
@"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_55" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_90" to i8*) }
@"$TyDescr_ADT_Pair_ByStr4_ByStr8_56" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_96" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_57" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_102" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_108" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_59" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_114" to i8*) }
@"$TyDescr_Option_ADTTyp_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_51" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_83", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_50"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_50"*], [2 x %"$TyDescrTy_ADTTyp_Specl_50"*]* @"$TyDescr_Option_ADTTyp_m_specls_82", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr3_Constr_m_args_64" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr3_39"]
@"$TyDescr_ADT_Some_65" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr3_ADTTyp_Constr_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_65", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr3_Constr_m_args_64", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr3_Constr_m_args_67" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_68" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr3_ADTTyp_Constr_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_68", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr3_Constr_m_args_67", i32 0, i32 0) }
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_constrs_70" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_52"*] [%"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Option_Some_ByStr3_ADTTyp_Constr_66", %"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Option_None_ByStr3_ADTTyp_Constr_69"]
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_TArgs_71" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr3_39"]
@"$TyDescr_Option_ByStr3_ADTTyp_Specl_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_50" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_TArgs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_52"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_52"*], [2 x %"$TyDescrTy_ADTTyp_Constr_52"*]* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_m_constrs_70", i32 0, i32 0), %"$TyDescrTy_ADTTyp_51"* @"$TyDescr_Option_ADTTyp_63" }
@"$TyDescr_Option_Some_ByStr2_Constr_m_args_73" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr2_41"]
@"$TyDescr_ADT_Some_74" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr2_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_74", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr2_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr2_Constr_m_args_76" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_77" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr2_ADTTyp_Constr_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_77", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr2_Constr_m_args_76", i32 0, i32 0) }
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_constrs_79" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_52"*] [%"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Option_Some_ByStr2_ADTTyp_Constr_75", %"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Option_None_ByStr2_ADTTyp_Constr_78"]
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_TArgs_80" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr2_41"]
@"$TyDescr_Option_ByStr2_ADTTyp_Specl_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_50" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_TArgs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_52"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_52"*], [2 x %"$TyDescrTy_ADTTyp_Constr_52"*]* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_m_constrs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_51"* @"$TyDescr_Option_ADTTyp_63" }
@"$TyDescr_Option_ADTTyp_m_specls_82" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_50"*] [%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Option_ByStr3_ADTTyp_Specl_72", %"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Option_ByStr2_ADTTyp_Specl_81"]
@"$TyDescr_ADT_Option_83" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Pair_ADTTyp_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_51" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_116", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 5, %"$TyDescrTy_ADTTyp_Specl_50"** getelementptr inbounds ([5 x %"$TyDescrTy_ADTTyp_Specl_50"*], [5 x %"$TyDescrTy_ADTTyp_Specl_50"*]* @"$TyDescr_Pair_ADTTyp_m_specls_115", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_Constr_m_args_85" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr2_54", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr3_53"]
@"$TyDescr_ADT_Pair_86" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Constr_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_86", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_Constr_m_args_85", i32 0, i32 0) }
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_constrs_88" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_52"*] [%"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Pair_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Constr_87"]
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_TArgs_89" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr2_54", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr3_53"]
@"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_90" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_50" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_TArgs_89", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_52"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_52"*], [1 x %"$TyDescrTy_ADTTyp_Constr_52"*]* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_m_constrs_88", i32 0, i32 0), %"$TyDescrTy_ADTTyp_51"* @"$TyDescr_Pair_ADTTyp_84" }
@"$TyDescr_Pair_Pair_ByStr4_ByStr8_Constr_m_args_91" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr4_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_47"]
@"$TyDescr_ADT_Pair_92" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr4_ByStr8_ADTTyp_Constr_93" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_92", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr4_ByStr8_Constr_m_args_91", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_constrs_94" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_52"*] [%"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Pair_Pair_ByStr4_ByStr8_ADTTyp_Constr_93"]
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_TArgs_95" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr4_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_47"]
@"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_96" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_50" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_TArgs_95", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_52"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_52"*], [1 x %"$TyDescrTy_ADTTyp_Constr_52"*]* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_m_constrs_94", i32 0, i32 0), %"$TyDescrTy_ADTTyp_51"* @"$TyDescr_Pair_ADTTyp_84" }
@"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_Constr_m_args_97" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr4_ByStr8_56", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_45"]
@"$TyDescr_ADT_Pair_98" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Constr_99" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_98", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_Constr_m_args_97", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_constrs_100" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_52"*] [%"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Pair_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Constr_99"]
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_TArgs_101" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr4_ByStr8_56", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_45"]
@"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_102" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_50" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_TArgs_101", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_52"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_52"*], [1 x %"$TyDescrTy_ADTTyp_Constr_52"*]* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_m_constrs_100", i32 0, i32 0), %"$TyDescrTy_ADTTyp_51"* @"$TyDescr_Pair_ADTTyp_84" }
@"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_Constr_m_args_103" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_57", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_43"]
@"$TyDescr_ADT_Pair_104" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Constr_105" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_104", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_Constr_m_args_103", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_constrs_106" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_52"*] [%"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Pair_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Constr_105"]
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_TArgs_107" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_57", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_43"]
@"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_108" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_50" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_TArgs_107", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_52"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_52"*], [1 x %"$TyDescrTy_ADTTyp_Constr_52"*]* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_m_constrs_106", i32 0, i32 0), %"$TyDescrTy_ADTTyp_51"* @"$TyDescr_Pair_ADTTyp_84" }
@"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_Constr_m_args_109" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_58", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_55"]
@"$TyDescr_ADT_Pair_110" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Constr_111" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_110", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_Constr_m_args_109", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_constrs_112" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_52"*] [%"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Pair_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Constr_111"]
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_TArgs_113" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_58", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_55"]
@"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_114" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_50" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_TArgs_113", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_52"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_52"*], [1 x %"$TyDescrTy_ADTTyp_Constr_52"*]* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_m_constrs_112", i32 0, i32 0), %"$TyDescrTy_ADTTyp_51"* @"$TyDescr_Pair_ADTTyp_84" }
@"$TyDescr_Pair_ADTTyp_m_specls_115" = unnamed_addr constant [5 x %"$TyDescrTy_ADTTyp_Specl_50"*] [%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_Option_(ByStr2)_Option_(ByStr3)_ADTTyp_Specl_90", %"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_ByStr4_ByStr8_ADTTyp_Specl_96", %"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_ADTTyp_Specl_102", %"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_ADTTyp_Specl_108", %"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_ADTTyp_Specl_114"]
@"$TyDescr_ADT_Pair_116" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [28 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_39", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16_57", %_TyDescrTy_Typ* @"$TyDescr_Bystr8_47", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr3_53", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_49", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr4_ByStr8_56", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32_58", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_43", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_59", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Option_(ByStr2)_Option_(ByStr3)_55", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr2_54", %_TyDescrTy_Typ* @"$TyDescr_Bystr16_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 28
@_contract_parameters = constant [0 x %"$ParamDescr_396"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_397"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 5, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %entry
  %"$consume_121" = sub i64 %"$gasrem_117", 5
  store i64 %"$consume_121", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 8, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 8
  store i64 %"$consume_126", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 196, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 196
  store i64 %"$consume_131", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 20, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 20
  store i64 %"$consume_136", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 12, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 12
  store i64 %"$consume_141", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 2, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_140"
  %"$consume_146" = sub i64 %"$gasrem_142", 2
  store i64 %"$consume_146", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_6" = alloca %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, align 8
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %entry
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %uint32_100 = alloca %Uint32, align 8
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  store %Uint32 { i32 100 }, %Uint32* %uint32_100, align 4, !dbg !11
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %res1 = alloca [4 x i8], align 1
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 4, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 4
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$execptr_load_167" = load i8*, i8** @_execptr, align 8
  %"$uint32_100_168" = load %Uint32, %Uint32* %uint32_100, align 4
  %"$to_bystr4_call_169" = call i8* @_uint32_to_bystrx(i8* %"$execptr_load_167", %Uint32 %"$uint32_100_168"), !dbg !12
  %"$to_bystr4_170" = bitcast i8* %"$to_bystr4_call_169" to [4 x i8]*
  %"$to_bystr4_171" = load [4 x i8], [4 x i8]* %"$to_bystr4_170", align 1
  store [4 x i8] %"$to_bystr4_171", [4 x i8]* %res1, align 1, !dbg !12
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_165"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  %uint64_200 = alloca %Uint64, align 8
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  store %Uint64 { i64 200 }, %Uint64* %uint64_200, align 8, !dbg !13
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_180"
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %res2 = alloca [8 x i8], align 1
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 8, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 8
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$execptr_load_192" = load i8*, i8** @_execptr, align 8
  %"$uint64_200_193" = load %Uint64, %Uint64* %uint64_200, align 8
  %"$to_bystr8_call_194" = call i8* @_uint64_to_bystrx(i8* %"$execptr_load_192", %Uint64 %"$uint64_200_193"), !dbg !14
  %"$to_bystr8_195" = bitcast i8* %"$to_bystr8_call_194" to [8 x i8]*
  %"$to_bystr8_196" = load [8 x i8], [8 x i8]* %"$to_bystr8_195", align 1
  store [8 x i8] %"$to_bystr8_196", [8 x i8]* %res2, align 1, !dbg !14
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_190"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %uint128_300 = alloca %Uint128, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  store %Uint128 { i128 300 }, %Uint128* %uint128_300, align 8, !dbg !15
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %res3 = alloca [16 x i8], align 1
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 16, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_210"
  %"$consume_216" = sub i64 %"$gasrem_212", 16
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %"$execptr_load_217" = load i8*, i8** @_execptr, align 8
  %"$uint128_300_218" = load %Uint128, %Uint128* %uint128_300, align 8
  %"$to_bystr16_call_219" = call i8* @_uint128_to_bystrx(i8* %"$execptr_load_217", %Uint128 %"$uint128_300_218"), !dbg !16
  %"$to_bystr16_220" = bitcast i8* %"$to_bystr16_call_219" to [16 x i8]*
  %"$to_bystr16_221" = load [16 x i8], [16 x i8]* %"$to_bystr16_220", align 1
  store [16 x i8] %"$to_bystr16_221", [16 x i8]* %res3, align 1, !dbg !16
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_215"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %uint256_400 = alloca %Uint256, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_225"
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  store %Uint256 { i256 400 }, %Uint256* %uint256_400, align 8, !dbg !17
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_230"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %res4 = alloca [32 x i8], align 1
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 32, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_235"
  %"$consume_241" = sub i64 %"$gasrem_237", 32
  store i64 %"$consume_241", i64* @_gasrem, align 8
  %"$execptr_load_242" = load i8*, i8** @_execptr, align 8
  %"$to_bystr32_uint256_400_243" = alloca %Uint256, align 8
  %"$uint256_400_244" = load %Uint256, %Uint256* %uint256_400, align 8
  store %Uint256 %"$uint256_400_244", %Uint256* %"$to_bystr32_uint256_400_243", align 8
  %"$to_bystr32_call_245" = call i8* @_uint256_to_bystrx(i8* %"$execptr_load_242", %Uint256* %"$to_bystr32_uint256_400_243"), !dbg !18
  %"$to_bystr32_246" = bitcast i8* %"$to_bystr32_call_245" to [32 x i8]*
  %"$to_bystr32_247" = load [32 x i8], [32 x i8]* %"$to_bystr32_246", align 1
  store [32 x i8] %"$to_bystr32_247", [32 x i8]* %res4, align 1, !dbg !18
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_240"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %x = alloca [2 x i8], align 1
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\EE", [2 x i8]* %x, align 1, !dbg !19
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_256"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %xbs = alloca %Bystr, align 8
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 2, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_261"
  %"$consume_267" = sub i64 %"$gasrem_263", 2
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$execptr_load_268" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_x_269" = alloca [2 x i8], align 1
  %"$x_270" = load [2 x i8], [2 x i8]* %x, align 1
  store [2 x i8] %"$x_270", [2 x i8]* %"$to_bystr_x_269", align 1
  %"$$to_bystr_x_269_271" = bitcast [2 x i8]* %"$to_bystr_x_269" to i8*
  %"$to_bystr_call_272" = call %Bystr @_to_bystr(i8* %"$execptr_load_268", i32 2, i8* %"$$to_bystr_x_269_271"), !dbg !20
  store %Bystr %"$to_bystr_call_272", %Bystr* %xbs, align 8, !dbg !20
  %"$gasrem_273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_274" = icmp ugt i64 1, %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %"$have_gas_266"
  %"$consume_277" = sub i64 %"$gasrem_273", 1
  store i64 %"$consume_277", i64* @_gasrem, align 8
  %res_x_some = alloca %TName_Option_ByStr2*, align 8
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 2, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_276"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_276"
  %"$consume_282" = sub i64 %"$gasrem_278", 2
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$execptr_load_283" = load i8*, i8** @_execptr, align 8
  %"$xbs_284" = load %Bystr, %Bystr* %xbs, align 8
  %"$to_bystr2_call_285" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_283", i32 2, %Bystr %"$xbs_284"), !dbg !21
  %"$to_bystr2_286" = bitcast i8* %"$to_bystr2_call_285" to %TName_Option_ByStr2*
  store %TName_Option_ByStr2* %"$to_bystr2_286", %TName_Option_ByStr2** %res_x_some, align 8, !dbg !21
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_281"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %res_x_none = alloca %TName_Option_ByStr3*, align 8
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 3, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_290"
  %"$consume_296" = sub i64 %"$gasrem_292", 3
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %"$execptr_load_297" = load i8*, i8** @_execptr, align 8
  %"$xbs_298" = load %Bystr, %Bystr* %xbs, align 8
  %"$to_bystr3_call_299" = call i8* @_bystr_to_bystrx(i8* %"$execptr_load_297", i32 3, %Bystr %"$xbs_298"), !dbg !22
  %"$to_bystr3_300" = bitcast i8* %"$to_bystr3_call_299" to %TName_Option_ByStr3*
  store %TName_Option_ByStr3* %"$to_bystr3_300", %TName_Option_ByStr3** %res_x_none, align 8, !dbg !22
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_295"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %res_x_opt_out = alloca %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*, align 8
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_304"
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %"$res_x_some_311" = load %TName_Option_ByStr2*, %TName_Option_ByStr2** %res_x_some, align 8
  %"$res_x_none_312" = load %TName_Option_ByStr3*, %TName_Option_ByStr3** %res_x_none, align 8
  %"$adtval_313_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_313_salloc" = call i8* @_salloc(i8* %"$adtval_313_load", i64 17)
  %"$adtval_313" = bitcast i8* %"$adtval_313_salloc" to %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"*
  %"$adtgep_314" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_313", i32 0, i32 0
  store i8 0, i8* %"$adtgep_314", align 1
  %"$adtgep_315" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_313", i32 0, i32 1
  store %TName_Option_ByStr2* %"$res_x_some_311", %TName_Option_ByStr2** %"$adtgep_315", align 8
  %"$adtgep_316" = getelementptr inbounds %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)", %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_313", i32 0, i32 2
  store %TName_Option_ByStr3* %"$res_x_none_312", %TName_Option_ByStr3** %"$adtgep_316", align 8
  %"$adtptr_317" = bitcast %"CName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtval_313" to %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*
  store %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$adtptr_317", %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %res_x_opt_out, align 8, !dbg !23
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_309"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %out1 = alloca %TName_Pair_ByStr4_ByStr8*, align 8
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_321"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %"$res1_328" = load [4 x i8], [4 x i8]* %res1, align 1
  %"$res2_329" = load [8 x i8], [8 x i8]* %res2, align 1
  %"$adtval_330_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_330_salloc" = call i8* @_salloc(i8* %"$adtval_330_load", i64 13)
  %"$adtval_330" = bitcast i8* %"$adtval_330_salloc" to %CName_Pair_ByStr4_ByStr8*
  %"$adtgep_331" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_330", i32 0, i32 0
  store i8 0, i8* %"$adtgep_331", align 1
  %"$adtgep_332" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_330", i32 0, i32 1
  store [4 x i8] %"$res1_328", [4 x i8]* %"$adtgep_332", align 1
  %"$adtgep_333" = getelementptr inbounds %CName_Pair_ByStr4_ByStr8, %CName_Pair_ByStr4_ByStr8* %"$adtval_330", i32 0, i32 2
  store [8 x i8] %"$res2_329", [8 x i8]* %"$adtgep_333", align 1
  %"$adtptr_334" = bitcast %CName_Pair_ByStr4_ByStr8* %"$adtval_330" to %TName_Pair_ByStr4_ByStr8*
  store %TName_Pair_ByStr4_ByStr8* %"$adtptr_334", %TName_Pair_ByStr4_ByStr8** %out1, align 8, !dbg !24
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_326"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %out2 = alloca %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*, align 8
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %"$out1_345" = load %TName_Pair_ByStr4_ByStr8*, %TName_Pair_ByStr4_ByStr8** %out1, align 8
  %"$res3_346" = load [16 x i8], [16 x i8]* %res3, align 1
  %"$adtval_347_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_347_salloc" = call i8* @_salloc(i8* %"$adtval_347_load", i64 25)
  %"$adtval_347" = bitcast i8* %"$adtval_347_salloc" to %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*
  %"$adtgep_348" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_347", i32 0, i32 0
  store i8 0, i8* %"$adtgep_348", align 1
  %"$adtgep_349" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_347", i32 0, i32 1
  store %TName_Pair_ByStr4_ByStr8* %"$out1_345", %TName_Pair_ByStr4_ByStr8** %"$adtgep_349", align 8
  %"$adtgep_350" = getelementptr inbounds %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16", %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_347", i32 0, i32 2
  store [16 x i8] %"$res3_346", [16 x i8]* %"$adtgep_350", align 1
  %"$adtptr_351" = bitcast %"CName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtval_347" to %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*
  store %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$adtptr_351", %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %out2, align 8, !dbg !25
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$have_gas_343"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %out3 = alloca %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*, align 8
  %"$gasrem_357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_358" = icmp ugt i64 1, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %"$have_gas_355"
  %"$consume_361" = sub i64 %"$gasrem_357", 1
  store i64 %"$consume_361", i64* @_gasrem, align 8
  %"$out2_362" = load %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"*, %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %out2, align 8
  %"$res4_363" = load [32 x i8], [32 x i8]* %res4, align 1
  %"$adtval_364_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_364_salloc" = call i8* @_salloc(i8* %"$adtval_364_load", i64 41)
  %"$adtval_364" = bitcast i8* %"$adtval_364_salloc" to %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*
  %"$adtgep_365" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_364", i32 0, i32 0
  store i8 0, i8* %"$adtgep_365", align 1
  %"$adtgep_366" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_364", i32 0, i32 1
  store %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"* %"$out2_362", %"TName_Pair_Pair_(ByStr4)_(ByStr8)_ByStr16"** %"$adtgep_366", align 8
  %"$adtgep_367" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32", %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_364", i32 0, i32 2
  store [32 x i8] %"$res4_363", [32 x i8]* %"$adtgep_367", align 1
  %"$adtptr_368" = bitcast %"CName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtval_364" to %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*
  store %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$adtptr_368", %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %out3, align 8, !dbg !26
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_360"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_360"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %out4 = alloca %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, align 8
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %"$out3_379" = load %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"*, %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %out3, align 8
  %"$res_x_opt_out_380" = load %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"*, %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %res_x_opt_out, align 8
  %"$adtval_381_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_381_salloc" = call i8* @_salloc(i8* %"$adtval_381_load", i64 17)
  %"$adtval_381" = bitcast i8* %"$adtval_381_salloc" to %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*
  %"$adtgep_382" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_381", i32 0, i32 0
  store i8 0, i8* %"$adtgep_382", align 1
  %"$adtgep_383" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_381", i32 0, i32 1
  store %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"* %"$out3_379", %"TName_Pair_Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16)_ByStr32"** %"$adtgep_383", align 8
  %"$adtgep_384" = getelementptr inbounds %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))", %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_381", i32 0, i32 2
  store %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"* %"$res_x_opt_out_380", %"TName_Pair_Option_(ByStr2)_Option_(ByStr3)"** %"$adtgep_384", align 8
  %"$adtptr_385" = bitcast %"CName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtval_381" to %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*
  store %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$adtptr_385", %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %out4, align 8, !dbg !27
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 1, %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_377"
  %"$consume_390" = sub i64 %"$gasrem_386", 1
  store i64 %"$consume_390", i64* @_gasrem, align 8
  %"$out4_391" = load %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %out4, align 8
  store %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$out4_391", %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %"$expr_6", align 8, !dbg !28
  %"$$expr_6_392" = load %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"*, %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"** %"$expr_6", align 8
  ret %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$$expr_6_392"
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
  %"$exprval_393" = call %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_394" = bitcast %"TName_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))"* %"$exprval_393" to i8*
  %"$execptr_load_395" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_395", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Pair_(Pair_(ByStr4)_(ByStr8))_(ByStr16))_(ByStr32)_Pair_(Option_(ByStr2))_(Option_(ByStr3))_59", i8* %"$memvoidcast_394")
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
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 1, column: 18, scope: !10)
!12 = !DILocation(line: 2, column: 12, scope: !10)
!13 = !DILocation(line: 4, column: 18, scope: !10)
!14 = !DILocation(line: 5, column: 12, scope: !10)
!15 = !DILocation(line: 7, column: 19, scope: !10)
!16 = !DILocation(line: 8, column: 12, scope: !10)
!17 = !DILocation(line: 10, column: 19, scope: !10)
!18 = !DILocation(line: 11, column: 12, scope: !10)
!19 = !DILocation(line: 13, column: 9, scope: !10)
!20 = !DILocation(line: 14, column: 11, scope: !10)
!21 = !DILocation(line: 15, column: 18, scope: !10)
!22 = !DILocation(line: 16, column: 18, scope: !10)
!23 = !DILocation(line: 17, column: 21, scope: !10)
!24 = !DILocation(line: 19, column: 12, scope: !10)
!25 = !DILocation(line: 20, column: 12, scope: !10)
!26 = !DILocation(line: 21, column: 12, scope: !10)
!27 = !DILocation(line: 22, column: 12, scope: !10)
!28 = !DILocation(line: 24, column: 1, scope: !10)
