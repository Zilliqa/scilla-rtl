; let zero = Uint32 0 in
; let one = Uint32 1 in
; let two = Uint64 2 in
; let three = Uint32 3 in
; let four = Uint128 4 in
; let six = Uint32 6 in
; let ten = Uint32 10 in
; let thirty_six = Uint256 36 in
; let uint256_max = Uint256 57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let uint128_max = Uint128 340282366920938463463374607431768211455 in
; 
; let isqrt_zero = builtin isqrt zero in
; let isqrt_one = builtin isqrt one in
; let isqrt_two = builtin isqrt two in
; let isqrt_three = builtin isqrt three in
; let isqrt_four = builtin isqrt four in
; let isqrt_six = builtin isqrt six in
; let isqrt_ten = builtin isqrt ten in
; let isqrt_thirty_six = builtin isqrt thirty_six in
; let isqrt_uint256_max = builtin isqrt uint256_max in
; let isqrt_uint128_max = builtin isqrt uint128_max in
; 
; let res1 = builtin add isqrt_zero isqrt_one in
; let res2 = builtin add isqrt_three isqrt_six in
; let res3 = builtin add res1 res2 in
; let res4 = builtin add res3 isqrt_ten in
; 
; let res5 = builtin add isqrt_thirty_six isqrt_uint256_max in
; let res6 = builtin add isqrt_four isqrt_uint128_max in
; 
; let res7 = Pair {Uint128 Uint256} res6 res5 in
; let res8 = Pair {(Pair Uint128 Uint256) Uint32} res7 res4 in
; Pair {Uint64 (Pair (Pair Uint128 Uint256) Uint32)} isqrt_two res8
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_31" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_30"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_30" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_32"**, %"$TyDescrTy_ADTTyp_31"* }
%"$TyDescrTy_ADTTyp_Constr_32" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_530" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_531" = type { %ParamDescrString, i32, %"$ParamDescr_530"* }
%"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)" = type { i8, %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* }
%"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)" = type <{ i8, %Uint64, %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* }>
%Uint64 = type { i64 }
%"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32" = type { i8, %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* }
%"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32" = type <{ i8, %TName_Pair_Uint128_Uint256*, %Uint32 }>
%TName_Pair_Uint128_Uint256 = type { i8, %CName_Pair_Uint128_Uint256* }
%CName_Pair_Uint128_Uint256 = type <{ i8, %Uint128, %Uint256 }>
%Uint128 = type { i128 }
%Uint256 = type { i256 }
%Uint32 = type { i32 }

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
@"$TyDescr_ADT_Pair_Uint128_Uint256_33" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_45" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_34" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_51" to i8*) }
@"$TyDescr_ADT_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_57" to i8*) }
@"$TyDescr_Pair_ADTTyp_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_59", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_30"*], [3 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_Pair_ADTTyp_m_specls_58", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_40" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17"]
@"$TyDescr_ADT_Pair_41" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_41", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_40", i32 0, i32 0) }
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_43" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_42"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_44", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_32"*], [1 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_43", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Pair_ADTTyp_39" }
@"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_Constr_m_args_46" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_33", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5"]
@"$TyDescr_ADT_Pair_47" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_47", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_constrs_49" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Constr_48"]
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_TArgs_50" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_33", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5"]
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_TArgs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_32"*], [1 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_constrs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Pair_ADTTyp_39" }
@"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_Constr_m_args_52" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_34"]
@"$TyDescr_ADT_Pair_53" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_53", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_constrs_55" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Constr_54"]
@"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_TArgs_56" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_34"]
@"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_TArgs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_32"*], [1 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_constrs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Pair_ADTTyp_39" }
@"$TyDescr_Pair_ADTTyp_m_specls_58" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_45", %"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_51", %"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_57"]
@"$TyDescr_ADT_Pair_59" = unnamed_addr constant [4 x i8] c"Pair"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_33", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_34", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_35", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_530"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_531"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* @_scilla_expr_fun(i8* %0) !dbg !9 {
entry:
  %"$expr_0" = alloca %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*, align 8
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %entry
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 1, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %"$have_gas_63"
  %"$consume_69" = sub i64 %"$gasrem_65", 1
  store i64 %"$consume_69", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !10
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$have_gas_68"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$have_gas_68"
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_73"
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !11
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 1, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %"$have_gas_78"
  %"$consume_84" = sub i64 %"$gasrem_80", 1
  store i64 %"$consume_84", i64* @_gasrem, align 8
  %two = alloca %Uint64, align 8
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %"$have_gas_83"
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %"$have_gas_83"
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %two, align 8, !dbg !12
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %three = alloca %Uint32, align 8
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %three, align 4, !dbg !13
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %four = alloca %Uint128, align 8
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_103"
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  store %Uint128 { i128 4 }, %Uint128* %four, align 8, !dbg !14
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %six = alloca %Uint32, align 8
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  store %Uint32 { i32 6 }, %Uint32* %six, align 4, !dbg !15
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  %ten = alloca %Uint32, align 8
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  store %Uint32 { i32 10 }, %Uint32* %ten, align 4, !dbg !16
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %thirty_six = alloca %Uint256, align 8
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  store %Uint256 { i256 36 }, %Uint256* %thirty_six, align 8, !dbg !17
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %uint256_max = alloca %Uint256, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %uint256_max, align 8, !dbg !18
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %uint128_max = alloca %Uint128, align 8
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %uint128_max, align 8, !dbg !19
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %isqrt_zero = alloca %Uint32, align 8
  %"$zero_165" = load %Uint32, %Uint32* %zero, align 4
  %"$valueof_166" = extractvalue %Uint32 %"$zero_165", 0
  %"$valueof_167" = zext i32 %"$valueof_166" to i64
  %"$gaslogof_168" = uitofp i64 %"$valueof_167" to float
  %"$gaslogof_169" = fadd float %"$gaslogof_168", 1.000000e+00
  %"$gaslogof_170" = call float @llvm.log.f32(float %"$gaslogof_169")
  %"$gaslogof_171" = fptoui float %"$gaslogof_170" to i64
  %"$gaslogof_172" = add i64 %"$gaslogof_171", 1
  %"$gasmul_173" = mul i64 4, %"$gaslogof_172"
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 %"$gasmul_173", %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_163"
  %"$consume_178" = sub i64 %"$gasrem_174", %"$gasmul_173"
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$zero_179" = load %Uint32, %Uint32* %zero, align 4
  %"$isqrt_call_180" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$zero_179"), !dbg !20
  store %Uint32 %"$isqrt_call_180", %Uint32* %isqrt_zero, align 4, !dbg !20
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_177"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %isqrt_one = alloca %Uint32, align 8
  %"$one_186" = load %Uint32, %Uint32* %one, align 4
  %"$valueof_187" = extractvalue %Uint32 %"$one_186", 0
  %"$valueof_188" = zext i32 %"$valueof_187" to i64
  %"$gaslogof_189" = uitofp i64 %"$valueof_188" to float
  %"$gaslogof_190" = fadd float %"$gaslogof_189", 1.000000e+00
  %"$gaslogof_191" = call float @llvm.log.f32(float %"$gaslogof_190")
  %"$gaslogof_192" = fptoui float %"$gaslogof_191" to i64
  %"$gaslogof_193" = add i64 %"$gaslogof_192", 1
  %"$gasmul_194" = mul i64 4, %"$gaslogof_193"
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 %"$gasmul_194", %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_184"
  %"$consume_199" = sub i64 %"$gasrem_195", %"$gasmul_194"
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %"$one_200" = load %Uint32, %Uint32* %one, align 4
  %"$isqrt_call_201" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$one_200"), !dbg !21
  store %Uint32 %"$isqrt_call_201", %Uint32* %isqrt_one, align 4, !dbg !21
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_198"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %isqrt_two = alloca %Uint64, align 8
  %"$two_207" = load %Uint64, %Uint64* %two, align 8
  %"$gaslogof_208" = extractvalue %Uint64 %"$two_207", 0
  %"$gaslogof_209" = uitofp i64 %"$gaslogof_208" to float
  %"$gaslogof_210" = fadd float %"$gaslogof_209", 1.000000e+00
  %"$gaslogof_211" = call float @llvm.log.f32(float %"$gaslogof_210")
  %"$gaslogof_212" = fptoui float %"$gaslogof_211" to i64
  %"$gaslogof_213" = add i64 %"$gaslogof_212", 1
  %"$gasmul_214" = mul i64 4, %"$gaslogof_213"
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 %"$gasmul_214", %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_205"
  %"$consume_219" = sub i64 %"$gasrem_215", %"$gasmul_214"
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %"$two_220" = load %Uint64, %Uint64* %two, align 8
  %"$isqrt_call_221" = call %Uint64 @_isqrt_Uint64(%Uint64 %"$two_220"), !dbg !22
  store %Uint64 %"$isqrt_call_221", %Uint64* %isqrt_two, align 8, !dbg !22
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_218"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %isqrt_three = alloca %Uint32, align 8
  %"$three_227" = load %Uint32, %Uint32* %three, align 4
  %"$valueof_228" = extractvalue %Uint32 %"$three_227", 0
  %"$valueof_229" = zext i32 %"$valueof_228" to i64
  %"$gaslogof_230" = uitofp i64 %"$valueof_229" to float
  %"$gaslogof_231" = fadd float %"$gaslogof_230", 1.000000e+00
  %"$gaslogof_232" = call float @llvm.log.f32(float %"$gaslogof_231")
  %"$gaslogof_233" = fptoui float %"$gaslogof_232" to i64
  %"$gaslogof_234" = add i64 %"$gaslogof_233", 1
  %"$gasmul_235" = mul i64 4, %"$gaslogof_234"
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 %"$gasmul_235", %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_225"
  %"$consume_240" = sub i64 %"$gasrem_236", %"$gasmul_235"
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %"$three_241" = load %Uint32, %Uint32* %three, align 4
  %"$isqrt_call_242" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$three_241"), !dbg !23
  store %Uint32 %"$isqrt_call_242", %Uint32* %isqrt_three, align 4, !dbg !23
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_239"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %isqrt_four = alloca %Uint128, align 8
  %"$four_248" = load %Uint128, %Uint128* %four, align 8
  %"$gaslogof_249" = extractvalue %Uint128 %"$four_248", 0
  %"$gaslogof_250" = uitofp i128 %"$gaslogof_249" to float
  %"$gaslogof_251" = fadd float %"$gaslogof_250", 1.000000e+00
  %"$gaslogof_252" = call float @llvm.log.f32(float %"$gaslogof_251")
  %"$gaslogof_253" = fptoui float %"$gaslogof_252" to i64
  %"$gaslogof_254" = add i64 %"$gaslogof_253", 1
  %"$gasmul_255" = mul i64 4, %"$gaslogof_254"
  %"$gasmul_256" = mul i64 %"$gasmul_255", 2
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 %"$gasmul_256", %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_246"
  %"$consume_261" = sub i64 %"$gasrem_257", %"$gasmul_256"
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$four_262" = load %Uint128, %Uint128* %four, align 8
  %"$isqrt_call_263" = call %Uint128 @_isqrt_Uint128(%Uint128 %"$four_262"), !dbg !24
  store %Uint128 %"$isqrt_call_263", %Uint128* %isqrt_four, align 8, !dbg !24
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_260"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %isqrt_six = alloca %Uint32, align 8
  %"$six_269" = load %Uint32, %Uint32* %six, align 4
  %"$valueof_270" = extractvalue %Uint32 %"$six_269", 0
  %"$valueof_271" = zext i32 %"$valueof_270" to i64
  %"$gaslogof_272" = uitofp i64 %"$valueof_271" to float
  %"$gaslogof_273" = fadd float %"$gaslogof_272", 1.000000e+00
  %"$gaslogof_274" = call float @llvm.log.f32(float %"$gaslogof_273")
  %"$gaslogof_275" = fptoui float %"$gaslogof_274" to i64
  %"$gaslogof_276" = add i64 %"$gaslogof_275", 1
  %"$gasmul_277" = mul i64 4, %"$gaslogof_276"
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 %"$gasmul_277", %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_267"
  %"$consume_282" = sub i64 %"$gasrem_278", %"$gasmul_277"
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$six_283" = load %Uint32, %Uint32* %six, align 4
  %"$isqrt_call_284" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$six_283"), !dbg !25
  store %Uint32 %"$isqrt_call_284", %Uint32* %isqrt_six, align 4, !dbg !25
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_281"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %isqrt_ten = alloca %Uint32, align 8
  %"$ten_290" = load %Uint32, %Uint32* %ten, align 4
  %"$valueof_291" = extractvalue %Uint32 %"$ten_290", 0
  %"$valueof_292" = zext i32 %"$valueof_291" to i64
  %"$gaslogof_293" = uitofp i64 %"$valueof_292" to float
  %"$gaslogof_294" = fadd float %"$gaslogof_293", 1.000000e+00
  %"$gaslogof_295" = call float @llvm.log.f32(float %"$gaslogof_294")
  %"$gaslogof_296" = fptoui float %"$gaslogof_295" to i64
  %"$gaslogof_297" = add i64 %"$gaslogof_296", 1
  %"$gasmul_298" = mul i64 4, %"$gaslogof_297"
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 %"$gasmul_298", %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_288"
  %"$consume_303" = sub i64 %"$gasrem_299", %"$gasmul_298"
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %"$ten_304" = load %Uint32, %Uint32* %ten, align 4
  %"$isqrt_call_305" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$ten_304"), !dbg !26
  store %Uint32 %"$isqrt_call_305", %Uint32* %isqrt_ten, align 4, !dbg !26
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_302"
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %isqrt_thirty_six = alloca %Uint256, align 8
  %"$thirty_six_311" = load %Uint256, %Uint256* %thirty_six, align 8
  %"$gaslogof_312" = extractvalue %Uint256 %"$thirty_six_311", 0
  %"$gaslogof_313" = alloca i256, align 8
  store i256 %"$gaslogof_312", i256* %"$gaslogof_313", align 8
  %"$gaslogof_314" = bitcast i256* %"$gaslogof_313" to i128*
  %"$gaslogof_315" = getelementptr i128, i128* %"$gaslogof_314", i32 1
  %"$gaslogof_316" = load i128, i128* %"$gaslogof_314", align 8
  %"$gaslogof_317" = load i128, i128* %"$gaslogof_315", align 8
  %"$gaslogof_318" = uitofp i128 %"$gaslogof_316" to float
  %"$gaslogof_319" = uitofp i128 %"$gaslogof_317" to float
  %"$gaslogf_320" = call float @llvm.pow.f32(float 2.000000e+00, float 1.280000e+02)
  %"$gaslogof_321" = fmul float %"$gaslogof_318", %"$gaslogf_320"
  %"$gaslogof_322" = fadd float %"$gaslogof_321", %"$gaslogof_319"
  %"$gaslogof_323" = fadd float %"$gaslogof_322", 1.000000e+00
  %"$gaslogof_324" = call float @llvm.log.f32(float %"$gaslogof_323")
  %"$gaslogof_325" = fptoui float %"$gaslogof_324" to i64
  %"$gaslogof_326" = add i64 %"$gaslogof_325", 1
  %"$gasmul_327" = mul i64 4, %"$gaslogof_326"
  %"$gasmul_328" = mul i64 %"$gasmul_327", 4
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 %"$gasmul_328", %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_309"
  %"$consume_333" = sub i64 %"$gasrem_329", %"$gasmul_328"
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$execptr_load_334" = load i8*, i8** @_execptr, align 8
  %"$isqrt_thirty_six_335" = alloca %Uint256, align 8
  %"$thirty_six_336" = load %Uint256, %Uint256* %thirty_six, align 8
  store %Uint256 %"$thirty_six_336", %Uint256* %"$isqrt_thirty_six_335", align 8
  %"$isqrt_call_337" = call %Uint256* @_isqrt_Uint256(i8* %"$execptr_load_334", %Uint256* %"$isqrt_thirty_six_335"), !dbg !27
  %"$isqrt_339" = load %Uint256, %Uint256* %"$isqrt_call_337", align 8
  store %Uint256 %"$isqrt_339", %Uint256* %isqrt_thirty_six, align 8, !dbg !27
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_332"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %isqrt_uint256_max = alloca %Uint256, align 8
  %"$uint256_max_345" = load %Uint256, %Uint256* %uint256_max, align 8
  %"$gaslogof_346" = extractvalue %Uint256 %"$uint256_max_345", 0
  %"$gaslogof_347" = alloca i256, align 8
  store i256 %"$gaslogof_346", i256* %"$gaslogof_347", align 8
  %"$gaslogof_348" = bitcast i256* %"$gaslogof_347" to i128*
  %"$gaslogof_349" = getelementptr i128, i128* %"$gaslogof_348", i32 1
  %"$gaslogof_350" = load i128, i128* %"$gaslogof_348", align 8
  %"$gaslogof_351" = load i128, i128* %"$gaslogof_349", align 8
  %"$gaslogof_352" = uitofp i128 %"$gaslogof_350" to float
  %"$gaslogof_353" = uitofp i128 %"$gaslogof_351" to float
  %"$gaslogf_354" = call float @llvm.pow.f32(float 2.000000e+00, float 1.280000e+02)
  %"$gaslogof_355" = fmul float %"$gaslogof_352", %"$gaslogf_354"
  %"$gaslogof_356" = fadd float %"$gaslogof_355", %"$gaslogof_353"
  %"$gaslogof_357" = fadd float %"$gaslogof_356", 1.000000e+00
  %"$gaslogof_358" = call float @llvm.log.f32(float %"$gaslogof_357")
  %"$gaslogof_359" = fptoui float %"$gaslogof_358" to i64
  %"$gaslogof_360" = add i64 %"$gaslogof_359", 1
  %"$gasmul_361" = mul i64 4, %"$gaslogof_360"
  %"$gasmul_362" = mul i64 %"$gasmul_361", 4
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 %"$gasmul_362", %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_343"
  %"$consume_367" = sub i64 %"$gasrem_363", %"$gasmul_362"
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %"$execptr_load_368" = load i8*, i8** @_execptr, align 8
  %"$isqrt_uint256_max_369" = alloca %Uint256, align 8
  %"$uint256_max_370" = load %Uint256, %Uint256* %uint256_max, align 8
  store %Uint256 %"$uint256_max_370", %Uint256* %"$isqrt_uint256_max_369", align 8
  %"$isqrt_call_371" = call %Uint256* @_isqrt_Uint256(i8* %"$execptr_load_368", %Uint256* %"$isqrt_uint256_max_369"), !dbg !28
  %"$isqrt_373" = load %Uint256, %Uint256* %"$isqrt_call_371", align 8
  store %Uint256 %"$isqrt_373", %Uint256* %isqrt_uint256_max, align 8, !dbg !28
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_366"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %isqrt_uint128_max = alloca %Uint128, align 8
  %"$uint128_max_379" = load %Uint128, %Uint128* %uint128_max, align 8
  %"$gaslogof_380" = extractvalue %Uint128 %"$uint128_max_379", 0
  %"$gaslogof_381" = uitofp i128 %"$gaslogof_380" to float
  %"$gaslogof_382" = fadd float %"$gaslogof_381", 1.000000e+00
  %"$gaslogof_383" = call float @llvm.log.f32(float %"$gaslogof_382")
  %"$gaslogof_384" = fptoui float %"$gaslogof_383" to i64
  %"$gaslogof_385" = add i64 %"$gaslogof_384", 1
  %"$gasmul_386" = mul i64 4, %"$gaslogof_385"
  %"$gasmul_387" = mul i64 %"$gasmul_386", 2
  %"$gasrem_388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_389" = icmp ugt i64 %"$gasmul_387", %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_377"
  %"$consume_392" = sub i64 %"$gasrem_388", %"$gasmul_387"
  store i64 %"$consume_392", i64* @_gasrem, align 8
  %"$uint128_max_393" = load %Uint128, %Uint128* %uint128_max, align 8
  %"$isqrt_call_394" = call %Uint128 @_isqrt_Uint128(%Uint128 %"$uint128_max_393"), !dbg !29
  store %Uint128 %"$isqrt_call_394", %Uint128* %isqrt_uint128_max, align 8, !dbg !29
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_391"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %res1 = alloca %Uint32, align 8
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 4, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_398"
  %"$consume_404" = sub i64 %"$gasrem_400", 4
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %"$isqrt_zero_405" = load %Uint32, %Uint32* %isqrt_zero, align 4
  %"$isqrt_one_406" = load %Uint32, %Uint32* %isqrt_one, align 4
  %"$add_call_407" = call %Uint32 @_add_Uint32(%Uint32 %"$isqrt_zero_405", %Uint32 %"$isqrt_one_406"), !dbg !30
  store %Uint32 %"$add_call_407", %Uint32* %res1, align 4, !dbg !30
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_403"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %res2 = alloca %Uint32, align 8
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 4, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 4
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %"$isqrt_three_418" = load %Uint32, %Uint32* %isqrt_three, align 4
  %"$isqrt_six_419" = load %Uint32, %Uint32* %isqrt_six, align 4
  %"$add_call_420" = call %Uint32 @_add_Uint32(%Uint32 %"$isqrt_three_418", %Uint32 %"$isqrt_six_419"), !dbg !31
  store %Uint32 %"$add_call_420", %Uint32* %res2, align 4, !dbg !31
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_416"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %res3 = alloca %Uint32, align 8
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 4, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_424"
  %"$consume_430" = sub i64 %"$gasrem_426", 4
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %"$res1_431" = load %Uint32, %Uint32* %res1, align 4
  %"$res2_432" = load %Uint32, %Uint32* %res2, align 4
  %"$add_call_433" = call %Uint32 @_add_Uint32(%Uint32 %"$res1_431", %Uint32 %"$res2_432"), !dbg !32
  store %Uint32 %"$add_call_433", %Uint32* %res3, align 4, !dbg !32
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_429"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %res4 = alloca %Uint32, align 8
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 4, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 4
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$res3_444" = load %Uint32, %Uint32* %res3, align 4
  %"$isqrt_ten_445" = load %Uint32, %Uint32* %isqrt_ten, align 4
  %"$add_call_446" = call %Uint32 @_add_Uint32(%Uint32 %"$res3_444", %Uint32 %"$isqrt_ten_445"), !dbg !33
  store %Uint32 %"$add_call_446", %Uint32* %res4, align 4, !dbg !33
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_442"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %res5 = alloca %Uint256, align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 16, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_450"
  %"$consume_457" = sub i64 %"$gasrem_453", 16
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$execptr_load_458" = load i8*, i8** @_execptr, align 8
  %"$add_isqrt_thirty_six_459" = alloca %Uint256, align 8
  %"$isqrt_thirty_six_460" = load %Uint256, %Uint256* %isqrt_thirty_six, align 8
  store %Uint256 %"$isqrt_thirty_six_460", %Uint256* %"$add_isqrt_thirty_six_459", align 8
  %"$add_isqrt_uint256_max_461" = alloca %Uint256, align 8
  %"$isqrt_uint256_max_462" = load %Uint256, %Uint256* %isqrt_uint256_max, align 8
  store %Uint256 %"$isqrt_uint256_max_462", %Uint256* %"$add_isqrt_uint256_max_461", align 8
  %"$add_call_463" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_458", %Uint256* %"$add_isqrt_thirty_six_459", %Uint256* %"$add_isqrt_uint256_max_461"), !dbg !34
  %"$add_465" = load %Uint256, %Uint256* %"$add_call_463", align 8
  store %Uint256 %"$add_465", %Uint256* %res5, align 8, !dbg !34
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_456"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  %res6 = alloca %Uint128, align 8
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 8, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_469"
  %"$consume_476" = sub i64 %"$gasrem_472", 8
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %"$isqrt_four_477" = load %Uint128, %Uint128* %isqrt_four, align 8
  %"$isqrt_uint128_max_478" = load %Uint128, %Uint128* %isqrt_uint128_max, align 8
  %"$add_call_479" = call %Uint128 @_add_Uint128(%Uint128 %"$isqrt_four_477", %Uint128 %"$isqrt_uint128_max_478"), !dbg !35
  store %Uint128 %"$add_call_479", %Uint128* %res6, align 8, !dbg !35
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_475"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %res7 = alloca %TName_Pair_Uint128_Uint256*, align 8
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_483"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %"$res6_490" = load %Uint128, %Uint128* %res6, align 8
  %"$res5_491" = load %Uint256, %Uint256* %res5, align 8
  %"$adtval_492_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_492_salloc" = call i8* @_salloc(i8* %"$adtval_492_load", i64 49)
  %"$adtval_492" = bitcast i8* %"$adtval_492_salloc" to %CName_Pair_Uint128_Uint256*
  %"$adtgep_493" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_492", i32 0, i32 0
  store i8 0, i8* %"$adtgep_493", align 1
  %"$adtgep_494" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_492", i32 0, i32 1
  store %Uint128 %"$res6_490", %Uint128* %"$adtgep_494", align 8
  %"$adtgep_495" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_492", i32 0, i32 2
  store %Uint256 %"$res5_491", %Uint256* %"$adtgep_495", align 8
  %"$adtptr_496" = bitcast %CName_Pair_Uint128_Uint256* %"$adtval_492" to %TName_Pair_Uint128_Uint256*
  store %TName_Pair_Uint128_Uint256* %"$adtptr_496", %TName_Pair_Uint128_Uint256** %res7, align 8, !dbg !36
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_488"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %res8 = alloca %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*, align 8
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_500"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_500"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %"$res7_507" = load %TName_Pair_Uint128_Uint256*, %TName_Pair_Uint128_Uint256** %res7, align 8
  %"$res4_508" = load %Uint32, %Uint32* %res4, align 4
  %"$adtval_509_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_509_salloc" = call i8* @_salloc(i8* %"$adtval_509_load", i64 13)
  %"$adtval_509" = bitcast i8* %"$adtval_509_salloc" to %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*
  %"$adtgep_510" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_509", i32 0, i32 0
  store i8 0, i8* %"$adtgep_510", align 1
  %"$adtgep_511" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_509", i32 0, i32 1
  store %TName_Pair_Uint128_Uint256* %"$res7_507", %TName_Pair_Uint128_Uint256** %"$adtgep_511", align 8
  %"$adtgep_512" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_509", i32 0, i32 2
  store %Uint32 %"$res4_508", %Uint32* %"$adtgep_512", align 4
  %"$adtptr_513" = bitcast %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_509" to %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*
  store %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtptr_513", %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %res8, align 8, !dbg !37
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_505"
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %"$isqrt_two_519" = load %Uint64, %Uint64* %isqrt_two, align 8
  %"$res8_520" = load %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*, %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %res8, align 8
  %"$adtval_521_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_521_salloc" = call i8* @_salloc(i8* %"$adtval_521_load", i64 17)
  %"$adtval_521" = bitcast i8* %"$adtval_521_salloc" to %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*
  %"$adtgep_522" = getelementptr inbounds %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)", %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_521", i32 0, i32 0
  store i8 0, i8* %"$adtgep_522", align 1
  %"$adtgep_523" = getelementptr inbounds %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)", %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_521", i32 0, i32 1
  store %Uint64 %"$isqrt_two_519", %Uint64* %"$adtgep_523", align 8
  %"$adtgep_524" = getelementptr inbounds %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)", %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_521", i32 0, i32 2
  store %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$res8_520", %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %"$adtgep_524", align 8
  %"$adtptr_525" = bitcast %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_521" to %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*
  store %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtptr_525", %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"** %"$expr_0", align 8, !dbg !38
  %"$$expr_0_526" = load %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*, %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"** %"$expr_0", align 8
  ret %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$$expr_0_526"
}

declare void @_out_of_gas()

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.log.f32(float) #0

declare %Uint32 @_isqrt_Uint32(%Uint32)

declare %Uint64 @_isqrt_Uint64(%Uint64)

declare %Uint128 @_isqrt_Uint128(%Uint128)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.pow.f32(float, float) #0

declare %Uint256* @_isqrt_Uint256(i8*, %Uint256*)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare %Uint256* @_add_Uint256(i8*, %Uint256*, %Uint256*)

declare %Uint128 @_add_Uint128(%Uint128, %Uint128)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_527" = call %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_528" = bitcast %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$exprval_527" to i8*
  %"$execptr_load_529" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_529", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_35", i8* %"$memvoidcast_528")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin-isqrt.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 1, column: 12, scope: !9)
!11 = !DILocation(line: 2, column: 11, scope: !9)
!12 = !DILocation(line: 3, column: 11, scope: !9)
!13 = !DILocation(line: 4, column: 13, scope: !9)
!14 = !DILocation(line: 5, column: 12, scope: !9)
!15 = !DILocation(line: 6, column: 11, scope: !9)
!16 = !DILocation(line: 7, column: 11, scope: !9)
!17 = !DILocation(line: 8, column: 18, scope: !9)
!18 = !DILocation(line: 9, column: 19, scope: !9)
!19 = !DILocation(line: 10, column: 19, scope: !9)
!20 = !DILocation(line: 12, column: 18, scope: !9)
!21 = !DILocation(line: 13, column: 17, scope: !9)
!22 = !DILocation(line: 14, column: 17, scope: !9)
!23 = !DILocation(line: 15, column: 19, scope: !9)
!24 = !DILocation(line: 16, column: 18, scope: !9)
!25 = !DILocation(line: 17, column: 17, scope: !9)
!26 = !DILocation(line: 18, column: 17, scope: !9)
!27 = !DILocation(line: 19, column: 24, scope: !9)
!28 = !DILocation(line: 20, column: 25, scope: !9)
!29 = !DILocation(line: 21, column: 25, scope: !9)
!30 = !DILocation(line: 23, column: 12, scope: !9)
!31 = !DILocation(line: 24, column: 12, scope: !9)
!32 = !DILocation(line: 25, column: 12, scope: !9)
!33 = !DILocation(line: 26, column: 12, scope: !9)
!34 = !DILocation(line: 28, column: 12, scope: !9)
!35 = !DILocation(line: 29, column: 12, scope: !9)
!36 = !DILocation(line: 31, column: 12, scope: !9)
!37 = !DILocation(line: 32, column: 12, scope: !9)
!38 = !DILocation(line: 33, column: 1, scope: !9)
