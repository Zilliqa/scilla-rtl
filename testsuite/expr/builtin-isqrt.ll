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
%"$ParamDescr_310" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_311" = type { %ParamDescrString, i32, %"$ParamDescr_310"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_310"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_311"] zeroinitializer
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
  %"$isqrt_call_154" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$zero_153")
  store %Uint32 %"$isqrt_call_154", %Uint32* %isqrt_zero, align 4
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_151"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %isqrt_one = alloca %Uint32, align 8
  %"$one_160" = load %Uint32, %Uint32* %one, align 4
  %"$isqrt_call_161" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$one_160")
  store %Uint32 %"$isqrt_call_161", %Uint32* %isqrt_one, align 4
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_158"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_165"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %isqrt_three = alloca %Uint32, align 8
  %"$three_172" = load %Uint32, %Uint32* %three, align 4
  %"$isqrt_call_173" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$three_172")
  store %Uint32 %"$isqrt_call_173", %Uint32* %isqrt_three, align 4
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_170"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %isqrt_four = alloca %Uint128, align 8
  %"$four_179" = load %Uint128, %Uint128* %four, align 8
  %"$isqrt_call_180" = call %Uint128 @_isqrt_Uint128(%Uint128 %"$four_179")
  store %Uint128 %"$isqrt_call_180", %Uint128* %isqrt_four, align 8
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_177"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %isqrt_six = alloca %Uint32, align 8
  %"$six_186" = load %Uint32, %Uint32* %six, align 4
  %"$isqrt_call_187" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$six_186")
  store %Uint32 %"$isqrt_call_187", %Uint32* %isqrt_six, align 4
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %"$have_gas_184"
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %isqrt_ten = alloca %Uint32, align 8
  %"$ten_193" = load %Uint32, %Uint32* %ten, align 4
  %"$isqrt_call_194" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$ten_193")
  store %Uint32 %"$isqrt_call_194", %Uint32* %isqrt_ten, align 4
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_191"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %isqrt_thirty_six = alloca %Uint256, align 8
  %"$execptr_load_200" = load i8*, i8** @_execptr, align 8
  %"$isqrt_thirty_six_201" = alloca %Uint256, align 8
  %"$thirty_six_202" = load %Uint256, %Uint256* %thirty_six, align 8
  store %Uint256 %"$thirty_six_202", %Uint256* %"$isqrt_thirty_six_201", align 8
  %"$isqrt_call_203" = call %Uint256* @_isqrt_Uint256(i8* %"$execptr_load_200", %Uint256* %"$isqrt_thirty_six_201")
  %"$isqrt_205" = load %Uint256, %Uint256* %"$isqrt_call_203", align 8
  store %Uint256 %"$isqrt_205", %Uint256* %isqrt_thirty_six, align 8
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_198"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %isqrt_uint256_max = alloca %Uint256, align 8
  %"$execptr_load_211" = load i8*, i8** @_execptr, align 8
  %"$isqrt_uint256_max_212" = alloca %Uint256, align 8
  %"$uint256_max_213" = load %Uint256, %Uint256* %uint256_max, align 8
  store %Uint256 %"$uint256_max_213", %Uint256* %"$isqrt_uint256_max_212", align 8
  %"$isqrt_call_214" = call %Uint256* @_isqrt_Uint256(i8* %"$execptr_load_211", %Uint256* %"$isqrt_uint256_max_212")
  %"$isqrt_216" = load %Uint256, %Uint256* %"$isqrt_call_214", align 8
  store %Uint256 %"$isqrt_216", %Uint256* %isqrt_uint256_max, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_209"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %isqrt_uint128_max = alloca %Uint128, align 8
  %"$uint128_max_222" = load %Uint128, %Uint128* %uint128_max, align 8
  %"$isqrt_call_223" = call %Uint128 @_isqrt_Uint128(%Uint128 %"$uint128_max_222")
  store %Uint128 %"$isqrt_call_223", %Uint128* %isqrt_uint128_max, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_220"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %res1 = alloca %Uint32, align 8
  %"$isqrt_zero_229" = load %Uint32, %Uint32* %isqrt_zero, align 4
  %"$isqrt_one_230" = load %Uint32, %Uint32* %isqrt_one, align 4
  %"$add_call_231" = call %Uint32 @_add_Uint32(%Uint32 %"$isqrt_zero_229", %Uint32 %"$isqrt_one_230")
  store %Uint32 %"$add_call_231", %Uint32* %res1, align 4
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_227"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %res2 = alloca %Uint32, align 8
  %"$isqrt_three_237" = load %Uint32, %Uint32* %isqrt_three, align 4
  %"$isqrt_six_238" = load %Uint32, %Uint32* %isqrt_six, align 4
  %"$add_call_239" = call %Uint32 @_add_Uint32(%Uint32 %"$isqrt_three_237", %Uint32 %"$isqrt_six_238")
  store %Uint32 %"$add_call_239", %Uint32* %res2, align 4
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_235"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %res3 = alloca %Uint32, align 8
  %"$res1_245" = load %Uint32, %Uint32* %res1, align 4
  %"$res2_246" = load %Uint32, %Uint32* %res2, align 4
  %"$add_call_247" = call %Uint32 @_add_Uint32(%Uint32 %"$res1_245", %Uint32 %"$res2_246")
  store %Uint32 %"$add_call_247", %Uint32* %res3, align 4
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_243"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %res4 = alloca %Uint32, align 8
  %"$res3_253" = load %Uint32, %Uint32* %res3, align 4
  %"$isqrt_ten_254" = load %Uint32, %Uint32* %isqrt_ten, align 4
  %"$add_call_255" = call %Uint32 @_add_Uint32(%Uint32 %"$res3_253", %Uint32 %"$isqrt_ten_254")
  store %Uint32 %"$add_call_255", %Uint32* %res4, align 4
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_251"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %res5 = alloca %Uint256, align 8
  %"$execptr_load_261" = load i8*, i8** @_execptr, align 8
  %"$add_isqrt_thirty_six_262" = alloca %Uint256, align 8
  %"$isqrt_thirty_six_263" = load %Uint256, %Uint256* %isqrt_thirty_six, align 8
  store %Uint256 %"$isqrt_thirty_six_263", %Uint256* %"$add_isqrt_thirty_six_262", align 8
  %"$add_isqrt_uint256_max_264" = alloca %Uint256, align 8
  %"$isqrt_uint256_max_265" = load %Uint256, %Uint256* %isqrt_uint256_max, align 8
  store %Uint256 %"$isqrt_uint256_max_265", %Uint256* %"$add_isqrt_uint256_max_264", align 8
  %"$add_call_266" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_261", %Uint256* %"$add_isqrt_thirty_six_262", %Uint256* %"$add_isqrt_uint256_max_264")
  %"$add_268" = load %Uint256, %Uint256* %"$add_call_266", align 8
  store %Uint256 %"$add_268", %Uint256* %res5, align 8
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_259"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %res6 = alloca %Uint128, align 8
  %"$isqrt_four_274" = load %Uint128, %Uint128* %isqrt_four, align 8
  %"$isqrt_uint128_max_275" = load %Uint128, %Uint128* %isqrt_uint128_max, align 8
  %"$add_call_276" = call %Uint128 @_add_Uint128(%Uint128 %"$isqrt_four_274", %Uint128 %"$isqrt_uint128_max_275")
  store %Uint128 %"$add_call_276", %Uint128* %res6, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_272"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %res7 = alloca %TName_Pair_Uint128_Uint256*, align 8
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %"$res6_287" = load %Uint128, %Uint128* %res6, align 8
  %"$res5_288" = load %Uint256, %Uint256* %res5, align 8
  %"$adtval_289_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_289_salloc" = call i8* @_salloc(i8* %"$adtval_289_load", i64 49)
  %"$adtval_289" = bitcast i8* %"$adtval_289_salloc" to %CName_Pair_Uint128_Uint256*
  %"$adtgep_290" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_289", i32 0, i32 0
  store i8 0, i8* %"$adtgep_290", align 1
  %"$adtgep_291" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_289", i32 0, i32 1
  store %Uint128 %"$res6_287", %Uint128* %"$adtgep_291", align 8
  %"$adtgep_292" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_289", i32 0, i32 2
  store %Uint256 %"$res5_288", %Uint256* %"$adtgep_292", align 8
  %"$adtptr_293" = bitcast %CName_Pair_Uint128_Uint256* %"$adtval_289" to %TName_Pair_Uint128_Uint256*
  store %TName_Pair_Uint128_Uint256* %"$adtptr_293", %TName_Pair_Uint128_Uint256** %res7, align 8
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 1, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$have_gas_285"
  %"$consume_298" = sub i64 %"$gasrem_294", 1
  store i64 %"$consume_298", i64* @_gasrem, align 8
  %"$res7_299" = load %TName_Pair_Uint128_Uint256*, %TName_Pair_Uint128_Uint256** %res7, align 8
  %"$res4_300" = load %Uint32, %Uint32* %res4, align 4
  %"$adtval_301_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_301_salloc" = call i8* @_salloc(i8* %"$adtval_301_load", i64 13)
  %"$adtval_301" = bitcast i8* %"$adtval_301_salloc" to %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*
  %"$adtgep_302" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_301", i32 0, i32 0
  store i8 0, i8* %"$adtgep_302", align 1
  %"$adtgep_303" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_301", i32 0, i32 1
  store %TName_Pair_Uint128_Uint256* %"$res7_299", %TName_Pair_Uint128_Uint256** %"$adtgep_303", align 8
  %"$adtgep_304" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_301", i32 0, i32 2
  store %Uint32 %"$res4_300", %Uint32* %"$adtgep_304", align 4
  %"$adtptr_305" = bitcast %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_301" to %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*
  store %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtptr_305", %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %"$expr_0", align 8
  %"$$expr_0_306" = load %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*, %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %"$expr_0", align 8
  ret %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$$expr_0_306"
}

declare void @_out_of_gas()

declare %Uint32 @_isqrt_Uint32(%Uint32)

declare %Uint128 @_isqrt_Uint128(%Uint128)

declare %Uint256* @_isqrt_Uint256(i8*, %Uint256*)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare %Uint256* @_add_Uint256(i8*, %Uint256*, %Uint256*)

declare %Uint128 @_add_Uint128(%Uint128, %Uint128)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_307" = call %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_308" = bitcast %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$exprval_307" to i8*
  %"$execptr_load_309" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_309", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_34", i8* %"$memvoidcast_308")
  ret void
}
