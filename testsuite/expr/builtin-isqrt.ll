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
; Pair {(Pair Uint128 Uint256) Uint32} res7 res4
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
%"$ParamDescr_472" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_473" = type { %ParamDescrString, i32, %"$ParamDescr_472"* }
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
@"$TyDescr_ADT_Pair_Uint128_Uint256_33" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_44" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_34" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_50" to i8*) }
@"$TyDescr_Pair_ADTTyp_38" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_52", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_30"*], [2 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_Pair_ADTTyp_m_specls_51", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_39" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17"]
@"$TyDescr_ADT_Pair_40" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_40", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_39", i32 0, i32 0) }
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_42" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_41"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_43" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_43", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_32"*], [1 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_42", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Pair_ADTTyp_38" }
@"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_Constr_m_args_45" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_33", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5"]
@"$TyDescr_ADT_Pair_46" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_46", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_constrs_48" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Constr_47"]
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_TArgs_49" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_33", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5"]
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_TArgs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_32"*], [1 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_constrs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Pair_ADTTyp_38" }
@"$TyDescr_Pair_ADTTyp_m_specls_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_44", %"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_50"]
@"$TyDescr_ADT_Pair_52" = unnamed_addr constant [4 x i8] c"Pair"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_33", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_34", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_472"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_473"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_0" = alloca %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*, align 8
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %entry
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %"$have_gas_56"
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %"$have_gas_61"
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 1, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_71"
  %"$consume_77" = sub i64 %"$gasrem_73", 1
  store i64 %"$consume_77", i64* @_gasrem, align 8
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_76"
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem, align 8
  %three = alloca %Uint32, align 8
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %three, align 4
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %four = alloca %Uint128, align 8
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_91"
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  store %Uint128 { i128 4 }, %Uint128* %four, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %six = alloca %Uint32, align 8
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  store %Uint32 { i32 6 }, %Uint32* %six, align 4
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_106"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_106"
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %ten = alloca %Uint32, align 8
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  store %Uint32 { i32 10 }, %Uint32* %ten, align 4
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %thirty_six = alloca %Uint256, align 8
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  store %Uint256 { i256 36 }, %Uint256* %thirty_six, align 8
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %uint256_max = alloca %Uint256, align 8
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %uint256_max, align 8
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %uint128_max = alloca %Uint128, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %uint128_max, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_146"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %isqrt_zero = alloca %Uint32, align 8
  %"$zero_153" = load %Uint32, %Uint32* %zero, align 4
  %"$gaslogof_154" = extractvalue %Uint32 %"$zero_153", 0
  %"$gaslogof_155" = uitofp i32 %"$gaslogof_154" to float
  %"$gaslogof_156" = fadd float %"$gaslogof_155", 1.000000e+00
  %"$gaslogof_157" = call float @llvm.log.f32(float %"$gaslogof_156")
  %"$gaslogof_158" = fptoui float %"$gaslogof_157" to i64
  %"$gasmul_159" = mul i64 4, %"$gaslogof_158"
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 %"$gasmul_159", %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_151"
  %"$consume_164" = sub i64 %"$gasrem_160", %"$gasmul_159"
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$zero_165" = load %Uint32, %Uint32* %zero, align 4
  %"$isqrt_call_166" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$zero_165")
  store %Uint32 %"$isqrt_call_166", %Uint32* %isqrt_zero, align 4
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_163"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %isqrt_one = alloca %Uint32, align 8
  %"$one_172" = load %Uint32, %Uint32* %one, align 4
  %"$gaslogof_173" = extractvalue %Uint32 %"$one_172", 0
  %"$gaslogof_174" = uitofp i32 %"$gaslogof_173" to float
  %"$gaslogof_175" = fadd float %"$gaslogof_174", 1.000000e+00
  %"$gaslogof_176" = call float @llvm.log.f32(float %"$gaslogof_175")
  %"$gaslogof_177" = fptoui float %"$gaslogof_176" to i64
  %"$gasmul_178" = mul i64 4, %"$gaslogof_177"
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 %"$gasmul_178", %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_170"
  %"$consume_183" = sub i64 %"$gasrem_179", %"$gasmul_178"
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$one_184" = load %Uint32, %Uint32* %one, align 4
  %"$isqrt_call_185" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$one_184")
  store %Uint32 %"$isqrt_call_185", %Uint32* %isqrt_one, align 4
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_182"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_189"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %isqrt_three = alloca %Uint32, align 8
  %"$three_196" = load %Uint32, %Uint32* %three, align 4
  %"$gaslogof_197" = extractvalue %Uint32 %"$three_196", 0
  %"$gaslogof_198" = uitofp i32 %"$gaslogof_197" to float
  %"$gaslogof_199" = fadd float %"$gaslogof_198", 1.000000e+00
  %"$gaslogof_200" = call float @llvm.log.f32(float %"$gaslogof_199")
  %"$gaslogof_201" = fptoui float %"$gaslogof_200" to i64
  %"$gasmul_202" = mul i64 4, %"$gaslogof_201"
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 %"$gasmul_202", %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_194"
  %"$consume_207" = sub i64 %"$gasrem_203", %"$gasmul_202"
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$three_208" = load %Uint32, %Uint32* %three, align 4
  %"$isqrt_call_209" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$three_208")
  store %Uint32 %"$isqrt_call_209", %Uint32* %isqrt_three, align 4
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_206"
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %isqrt_four = alloca %Uint128, align 8
  %"$four_215" = load %Uint128, %Uint128* %four, align 8
  %"$gaslogof_216" = extractvalue %Uint128 %"$four_215", 0
  %"$gaslogof_217" = uitofp i128 %"$gaslogof_216" to float
  %"$gaslogof_218" = fadd float %"$gaslogof_217", 1.000000e+00
  %"$gaslogof_219" = call float @llvm.log.f32(float %"$gaslogof_218")
  %"$gaslogof_220" = fptoui float %"$gaslogof_219" to i64
  %"$gasmul_221" = mul i64 4, %"$gaslogof_220"
  %"$gasmul_222" = mul i64 %"$gasmul_221", 2
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 %"$gasmul_222", %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_213"
  %"$consume_227" = sub i64 %"$gasrem_223", %"$gasmul_222"
  store i64 %"$consume_227", i64* @_gasrem, align 8
  %"$four_228" = load %Uint128, %Uint128* %four, align 8
  %"$isqrt_call_229" = call %Uint128 @_isqrt_Uint128(%Uint128 %"$four_228")
  store %Uint128 %"$isqrt_call_229", %Uint128* %isqrt_four, align 8
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_226"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %isqrt_six = alloca %Uint32, align 8
  %"$six_235" = load %Uint32, %Uint32* %six, align 4
  %"$gaslogof_236" = extractvalue %Uint32 %"$six_235", 0
  %"$gaslogof_237" = uitofp i32 %"$gaslogof_236" to float
  %"$gaslogof_238" = fadd float %"$gaslogof_237", 1.000000e+00
  %"$gaslogof_239" = call float @llvm.log.f32(float %"$gaslogof_238")
  %"$gaslogof_240" = fptoui float %"$gaslogof_239" to i64
  %"$gasmul_241" = mul i64 4, %"$gaslogof_240"
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 %"$gasmul_241", %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_233"
  %"$consume_246" = sub i64 %"$gasrem_242", %"$gasmul_241"
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$six_247" = load %Uint32, %Uint32* %six, align 4
  %"$isqrt_call_248" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$six_247")
  store %Uint32 %"$isqrt_call_248", %Uint32* %isqrt_six, align 4
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_245"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %isqrt_ten = alloca %Uint32, align 8
  %"$ten_254" = load %Uint32, %Uint32* %ten, align 4
  %"$gaslogof_255" = extractvalue %Uint32 %"$ten_254", 0
  %"$gaslogof_256" = uitofp i32 %"$gaslogof_255" to float
  %"$gaslogof_257" = fadd float %"$gaslogof_256", 1.000000e+00
  %"$gaslogof_258" = call float @llvm.log.f32(float %"$gaslogof_257")
  %"$gaslogof_259" = fptoui float %"$gaslogof_258" to i64
  %"$gasmul_260" = mul i64 4, %"$gaslogof_259"
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 %"$gasmul_260", %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_252"
  %"$consume_265" = sub i64 %"$gasrem_261", %"$gasmul_260"
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$ten_266" = load %Uint32, %Uint32* %ten, align 4
  %"$isqrt_call_267" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$ten_266")
  store %Uint32 %"$isqrt_call_267", %Uint32* %isqrt_ten, align 4
  %"$gasrem_268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_269" = icmp ugt i64 1, %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %"$have_gas_264"
  %"$consume_272" = sub i64 %"$gasrem_268", 1
  store i64 %"$consume_272", i64* @_gasrem, align 8
  %isqrt_thirty_six = alloca %Uint256, align 8
  %"$thirty_six_273" = load %Uint256, %Uint256* %thirty_six, align 8
  %"$gaslogof_274" = extractvalue %Uint256 %"$thirty_six_273", 0
  %"$gaslogof_275" = alloca i256, align 8
  store i256 %"$gaslogof_274", i256* %"$gaslogof_275", align 8
  %"$gaslogof_276" = bitcast i256* %"$gaslogof_275" to i128*
  %"$gaslogof_277" = getelementptr i128, i128* %"$gaslogof_276", i32 1
  %"$gaslogof_278" = load i128, i128* %"$gaslogof_276", align 8
  %"$gaslogof_279" = load i128, i128* %"$gaslogof_277", align 8
  %"$gaslogof_280" = uitofp i128 %"$gaslogof_278" to float
  %"$gaslogof_281" = uitofp i128 %"$gaslogof_279" to float
  %"$gaslogf_282" = call float @llvm.pow.f32(float 2.000000e+00, float 1.280000e+02)
  %"$gaslogof_283" = fmul float %"$gaslogof_280", %"$gaslogf_282"
  %"$gaslogof_284" = fadd float %"$gaslogof_283", %"$gaslogof_281"
  %"$gaslogof_285" = fadd float %"$gaslogof_284", 1.000000e+00
  %"$gaslogof_286" = call float @llvm.log.f32(float %"$gaslogof_285")
  %"$gaslogof_287" = fptoui float %"$gaslogof_286" to i64
  %"$gasmul_288" = mul i64 4, %"$gaslogof_287"
  %"$gasmul_289" = mul i64 %"$gasmul_288", 4
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 %"$gasmul_289", %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_271"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_271"
  %"$consume_294" = sub i64 %"$gasrem_290", %"$gasmul_289"
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$execptr_load_295" = load i8*, i8** @_execptr, align 8
  %"$isqrt_thirty_six_296" = alloca %Uint256, align 8
  %"$thirty_six_297" = load %Uint256, %Uint256* %thirty_six, align 8
  store %Uint256 %"$thirty_six_297", %Uint256* %"$isqrt_thirty_six_296", align 8
  %"$isqrt_call_298" = call %Uint256* @_isqrt_Uint256(i8* %"$execptr_load_295", %Uint256* %"$isqrt_thirty_six_296")
  %"$isqrt_300" = load %Uint256, %Uint256* %"$isqrt_call_298", align 8
  store %Uint256 %"$isqrt_300", %Uint256* %isqrt_thirty_six, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_293"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %isqrt_uint256_max = alloca %Uint256, align 8
  %"$uint256_max_306" = load %Uint256, %Uint256* %uint256_max, align 8
  %"$gaslogof_307" = extractvalue %Uint256 %"$uint256_max_306", 0
  %"$gaslogof_308" = alloca i256, align 8
  store i256 %"$gaslogof_307", i256* %"$gaslogof_308", align 8
  %"$gaslogof_309" = bitcast i256* %"$gaslogof_308" to i128*
  %"$gaslogof_310" = getelementptr i128, i128* %"$gaslogof_309", i32 1
  %"$gaslogof_311" = load i128, i128* %"$gaslogof_309", align 8
  %"$gaslogof_312" = load i128, i128* %"$gaslogof_310", align 8
  %"$gaslogof_313" = uitofp i128 %"$gaslogof_311" to float
  %"$gaslogof_314" = uitofp i128 %"$gaslogof_312" to float
  %"$gaslogf_315" = call float @llvm.pow.f32(float 2.000000e+00, float 1.280000e+02)
  %"$gaslogof_316" = fmul float %"$gaslogof_313", %"$gaslogf_315"
  %"$gaslogof_317" = fadd float %"$gaslogof_316", %"$gaslogof_314"
  %"$gaslogof_318" = fadd float %"$gaslogof_317", 1.000000e+00
  %"$gaslogof_319" = call float @llvm.log.f32(float %"$gaslogof_318")
  %"$gaslogof_320" = fptoui float %"$gaslogof_319" to i64
  %"$gasmul_321" = mul i64 4, %"$gaslogof_320"
  %"$gasmul_322" = mul i64 %"$gasmul_321", 4
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 %"$gasmul_322", %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_304"
  %"$consume_327" = sub i64 %"$gasrem_323", %"$gasmul_322"
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %"$execptr_load_328" = load i8*, i8** @_execptr, align 8
  %"$isqrt_uint256_max_329" = alloca %Uint256, align 8
  %"$uint256_max_330" = load %Uint256, %Uint256* %uint256_max, align 8
  store %Uint256 %"$uint256_max_330", %Uint256* %"$isqrt_uint256_max_329", align 8
  %"$isqrt_call_331" = call %Uint256* @_isqrt_Uint256(i8* %"$execptr_load_328", %Uint256* %"$isqrt_uint256_max_329")
  %"$isqrt_333" = load %Uint256, %Uint256* %"$isqrt_call_331", align 8
  store %Uint256 %"$isqrt_333", %Uint256* %isqrt_uint256_max, align 8
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_326"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %isqrt_uint128_max = alloca %Uint128, align 8
  %"$uint128_max_339" = load %Uint128, %Uint128* %uint128_max, align 8
  %"$gaslogof_340" = extractvalue %Uint128 %"$uint128_max_339", 0
  %"$gaslogof_341" = uitofp i128 %"$gaslogof_340" to float
  %"$gaslogof_342" = fadd float %"$gaslogof_341", 1.000000e+00
  %"$gaslogof_343" = call float @llvm.log.f32(float %"$gaslogof_342")
  %"$gaslogof_344" = fptoui float %"$gaslogof_343" to i64
  %"$gasmul_345" = mul i64 4, %"$gaslogof_344"
  %"$gasmul_346" = mul i64 %"$gasmul_345", 2
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 %"$gasmul_346", %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_337"
  %"$consume_351" = sub i64 %"$gasrem_347", %"$gasmul_346"
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %"$uint128_max_352" = load %Uint128, %Uint128* %uint128_max, align 8
  %"$isqrt_call_353" = call %Uint128 @_isqrt_Uint128(%Uint128 %"$uint128_max_352")
  store %Uint128 %"$isqrt_call_353", %Uint128* %isqrt_uint128_max, align 8
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_350"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %res1 = alloca %Uint32, align 8
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 4, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_357"
  %"$consume_363" = sub i64 %"$gasrem_359", 4
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %"$isqrt_zero_364" = load %Uint32, %Uint32* %isqrt_zero, align 4
  %"$isqrt_one_365" = load %Uint32, %Uint32* %isqrt_one, align 4
  %"$add_call_366" = call %Uint32 @_add_Uint32(%Uint32 %"$isqrt_zero_364", %Uint32 %"$isqrt_one_365")
  store %Uint32 %"$add_call_366", %Uint32* %res1, align 4
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_362"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %res2 = alloca %Uint32, align 8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 4, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_370"
  %"$consume_376" = sub i64 %"$gasrem_372", 4
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %"$isqrt_three_377" = load %Uint32, %Uint32* %isqrt_three, align 4
  %"$isqrt_six_378" = load %Uint32, %Uint32* %isqrt_six, align 4
  %"$add_call_379" = call %Uint32 @_add_Uint32(%Uint32 %"$isqrt_three_377", %Uint32 %"$isqrt_six_378")
  store %Uint32 %"$add_call_379", %Uint32* %res2, align 4
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_375"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %res3 = alloca %Uint32, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 4, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_383"
  %"$consume_389" = sub i64 %"$gasrem_385", 4
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$res1_390" = load %Uint32, %Uint32* %res1, align 4
  %"$res2_391" = load %Uint32, %Uint32* %res2, align 4
  %"$add_call_392" = call %Uint32 @_add_Uint32(%Uint32 %"$res1_390", %Uint32 %"$res2_391")
  store %Uint32 %"$add_call_392", %Uint32* %res3, align 4
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_388"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %res4 = alloca %Uint32, align 8
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 4, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_396"
  %"$consume_402" = sub i64 %"$gasrem_398", 4
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$res3_403" = load %Uint32, %Uint32* %res3, align 4
  %"$isqrt_ten_404" = load %Uint32, %Uint32* %isqrt_ten, align 4
  %"$add_call_405" = call %Uint32 @_add_Uint32(%Uint32 %"$res3_403", %Uint32 %"$isqrt_ten_404")
  store %Uint32 %"$add_call_405", %Uint32* %res4, align 4
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$have_gas_401"
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %res5 = alloca %Uint256, align 8
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 16, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$have_gas_409"
  %"$consume_416" = sub i64 %"$gasrem_412", 16
  store i64 %"$consume_416", i64* @_gasrem, align 8
  %"$execptr_load_417" = load i8*, i8** @_execptr, align 8
  %"$add_isqrt_thirty_six_418" = alloca %Uint256, align 8
  %"$isqrt_thirty_six_419" = load %Uint256, %Uint256* %isqrt_thirty_six, align 8
  store %Uint256 %"$isqrt_thirty_six_419", %Uint256* %"$add_isqrt_thirty_six_418", align 8
  %"$add_isqrt_uint256_max_420" = alloca %Uint256, align 8
  %"$isqrt_uint256_max_421" = load %Uint256, %Uint256* %isqrt_uint256_max, align 8
  store %Uint256 %"$isqrt_uint256_max_421", %Uint256* %"$add_isqrt_uint256_max_420", align 8
  %"$add_call_422" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_417", %Uint256* %"$add_isqrt_thirty_six_418", %Uint256* %"$add_isqrt_uint256_max_420")
  %"$add_424" = load %Uint256, %Uint256* %"$add_call_422", align 8
  store %Uint256 %"$add_424", %Uint256* %res5, align 8
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_415"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %res6 = alloca %Uint128, align 8
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 8, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_428"
  %"$consume_435" = sub i64 %"$gasrem_431", 8
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %"$isqrt_four_436" = load %Uint128, %Uint128* %isqrt_four, align 8
  %"$isqrt_uint128_max_437" = load %Uint128, %Uint128* %isqrt_uint128_max, align 8
  %"$add_call_438" = call %Uint128 @_add_Uint128(%Uint128 %"$isqrt_four_436", %Uint128 %"$isqrt_uint128_max_437")
  store %Uint128 %"$add_call_438", %Uint128* %res6, align 8
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_434"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %res7 = alloca %TName_Pair_Uint128_Uint256*, align 8
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %"$res6_449" = load %Uint128, %Uint128* %res6, align 8
  %"$res5_450" = load %Uint256, %Uint256* %res5, align 8
  %"$adtval_451_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_451_salloc" = call i8* @_salloc(i8* %"$adtval_451_load", i64 49)
  %"$adtval_451" = bitcast i8* %"$adtval_451_salloc" to %CName_Pair_Uint128_Uint256*
  %"$adtgep_452" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_451", i32 0, i32 0
  store i8 0, i8* %"$adtgep_452", align 1
  %"$adtgep_453" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_451", i32 0, i32 1
  store %Uint128 %"$res6_449", %Uint128* %"$adtgep_453", align 8
  %"$adtgep_454" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_451", i32 0, i32 2
  store %Uint256 %"$res5_450", %Uint256* %"$adtgep_454", align 8
  %"$adtptr_455" = bitcast %CName_Pair_Uint128_Uint256* %"$adtval_451" to %TName_Pair_Uint128_Uint256*
  store %TName_Pair_Uint128_Uint256* %"$adtptr_455", %TName_Pair_Uint128_Uint256** %res7, align 8
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_447"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$res7_461" = load %TName_Pair_Uint128_Uint256*, %TName_Pair_Uint128_Uint256** %res7, align 8
  %"$res4_462" = load %Uint32, %Uint32* %res4, align 4
  %"$adtval_463_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_463_salloc" = call i8* @_salloc(i8* %"$adtval_463_load", i64 13)
  %"$adtval_463" = bitcast i8* %"$adtval_463_salloc" to %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*
  %"$adtgep_464" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_463", i32 0, i32 0
  store i8 0, i8* %"$adtgep_464", align 1
  %"$adtgep_465" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_463", i32 0, i32 1
  store %TName_Pair_Uint128_Uint256* %"$res7_461", %TName_Pair_Uint128_Uint256** %"$adtgep_465", align 8
  %"$adtgep_466" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_463", i32 0, i32 2
  store %Uint32 %"$res4_462", %Uint32* %"$adtgep_466", align 4
  %"$adtptr_467" = bitcast %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_463" to %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*
  store %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtptr_467", %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %"$expr_0", align 8
  %"$$expr_0_468" = load %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*, %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %"$expr_0", align 8
  ret %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$$expr_0_468"
}

declare void @_out_of_gas()

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.log.f32(float) #0

declare %Uint32 @_isqrt_Uint32(%Uint32)

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
  %"$exprval_469" = call %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_470" = bitcast %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$exprval_469" to i8*
  %"$execptr_load_471" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_471", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_34", i8* %"$memvoidcast_470")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
