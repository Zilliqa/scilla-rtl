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

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_566" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_567" = type { %ParamDescrString, i32, %"$ParamDescr_566"* }
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
@"$TyDescr_ADT_Pair_Uint128_Uint256_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_51" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_57" to i8*) }
@"$TyDescr_ADT_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_63" to i8*) }
@"$TyDescr_Pair_ADTTyp_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_65", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_36"*], [3 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_Pair_ADTTyp_m_specls_64", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_46" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23"]
@"$TyDescr_ADT_Pair_47" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_47", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_49" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_48"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_50" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_38"*], [1 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Pair_ADTTyp_45" }
@"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_Constr_m_args_52" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_39", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11"]
@"$TyDescr_ADT_Pair_53" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_53", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_constrs_55" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Constr_54"]
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_TArgs_56" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_39", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11"]
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_TArgs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_38"*], [1 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_constrs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Pair_ADTTyp_45" }
@"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_Constr_m_args_58" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_40"]
@"$TyDescr_ADT_Pair_59" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Constr_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_59", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_Constr_m_args_58", i32 0, i32 0) }
@"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_constrs_61" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Constr_60"]
@"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_TArgs_62" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_40"]
@"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_TArgs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_38"*], [1 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_constrs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_Pair_ADTTyp_45" }
@"$TyDescr_Pair_ADTTyp_m_specls_64" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_51", %"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_57", %"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_63"]
@"$TyDescr_ADT_Pair_65" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_39", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_40", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_566"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_567"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 5, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %entry
  %"$consume_70" = sub i64 %"$gasrem_66", 5
  store i64 %"$consume_70", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 8, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_69"
  %"$consume_75" = sub i64 %"$gasrem_71", 8
  store i64 %"$consume_75", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 196, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %"$have_gas_74"
  %"$consume_80" = sub i64 %"$gasrem_76", 196
  store i64 %"$consume_80", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 20, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 20
  store i64 %"$consume_85", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 12, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_84"
  %"$consume_90" = sub i64 %"$gasrem_86", 12
  store i64 %"$consume_90", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 2, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 2
  store i64 %"$consume_95", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %entry
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %two = alloca %Uint64, align 8
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %two, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %three = alloca %Uint32, align 8
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %three, align 4
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %four = alloca %Uint128, align 8
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  store %Uint128 { i128 4 }, %Uint128* %four, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %six = alloca %Uint32, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  store %Uint32 { i32 6 }, %Uint32* %six, align 4
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %ten = alloca %Uint32, align 8
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  store %Uint32 { i32 10 }, %Uint32* %ten, align 4
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %thirty_six = alloca %Uint256, align 8
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  store %Uint256 { i256 36 }, %Uint256* %thirty_six, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %uint256_max = alloca %Uint256, align 8
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %uint256_max, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_184"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %uint128_max = alloca %Uint128, align 8
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_189"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %uint128_max, align 8
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_194"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %isqrt_zero = alloca %Uint32, align 8
  %"$zero_201" = load %Uint32, %Uint32* %zero, align 4
  %"$valueof_202" = extractvalue %Uint32 %"$zero_201", 0
  %"$valueof_203" = zext i32 %"$valueof_202" to i64
  %"$gaslogof_204" = uitofp i64 %"$valueof_203" to double
  %"$gaslogof_205" = fadd double %"$gaslogof_204", 1.000000e+00
  %"$gaslogof_206" = call double @llvm.log.f64(double %"$gaslogof_205")
  %"$gaslogof_207" = fptoui double %"$gaslogof_206" to i64
  %"$gaslogof_208" = add i64 %"$gaslogof_207", 1
  %"$gasmul_209" = mul i64 4, %"$gaslogof_208"
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 %"$gasmul_209", %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_199"
  %"$consume_214" = sub i64 %"$gasrem_210", %"$gasmul_209"
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %"$zero_215" = load %Uint32, %Uint32* %zero, align 4
  %"$isqrt_call_216" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$zero_215")
  store %Uint32 %"$isqrt_call_216", %Uint32* %isqrt_zero, align 4
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_213"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %isqrt_one = alloca %Uint32, align 8
  %"$one_222" = load %Uint32, %Uint32* %one, align 4
  %"$valueof_223" = extractvalue %Uint32 %"$one_222", 0
  %"$valueof_224" = zext i32 %"$valueof_223" to i64
  %"$gaslogof_225" = uitofp i64 %"$valueof_224" to double
  %"$gaslogof_226" = fadd double %"$gaslogof_225", 1.000000e+00
  %"$gaslogof_227" = call double @llvm.log.f64(double %"$gaslogof_226")
  %"$gaslogof_228" = fptoui double %"$gaslogof_227" to i64
  %"$gaslogof_229" = add i64 %"$gaslogof_228", 1
  %"$gasmul_230" = mul i64 4, %"$gaslogof_229"
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 %"$gasmul_230", %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_220"
  %"$consume_235" = sub i64 %"$gasrem_231", %"$gasmul_230"
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %"$one_236" = load %Uint32, %Uint32* %one, align 4
  %"$isqrt_call_237" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$one_236")
  store %Uint32 %"$isqrt_call_237", %Uint32* %isqrt_one, align 4
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_234"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %isqrt_two = alloca %Uint64, align 8
  %"$two_243" = load %Uint64, %Uint64* %two, align 8
  %"$gaslogof_244" = extractvalue %Uint64 %"$two_243", 0
  %"$gaslogof_245" = uitofp i64 %"$gaslogof_244" to double
  %"$gaslogof_246" = fadd double %"$gaslogof_245", 1.000000e+00
  %"$gaslogof_247" = call double @llvm.log.f64(double %"$gaslogof_246")
  %"$gaslogof_248" = fptoui double %"$gaslogof_247" to i64
  %"$gaslogof_249" = add i64 %"$gaslogof_248", 1
  %"$gasmul_250" = mul i64 4, %"$gaslogof_249"
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 %"$gasmul_250", %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_241"
  %"$consume_255" = sub i64 %"$gasrem_251", %"$gasmul_250"
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$two_256" = load %Uint64, %Uint64* %two, align 8
  %"$isqrt_call_257" = call %Uint64 @_isqrt_Uint64(%Uint64 %"$two_256")
  store %Uint64 %"$isqrt_call_257", %Uint64* %isqrt_two, align 8
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_254"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %isqrt_three = alloca %Uint32, align 8
  %"$three_263" = load %Uint32, %Uint32* %three, align 4
  %"$valueof_264" = extractvalue %Uint32 %"$three_263", 0
  %"$valueof_265" = zext i32 %"$valueof_264" to i64
  %"$gaslogof_266" = uitofp i64 %"$valueof_265" to double
  %"$gaslogof_267" = fadd double %"$gaslogof_266", 1.000000e+00
  %"$gaslogof_268" = call double @llvm.log.f64(double %"$gaslogof_267")
  %"$gaslogof_269" = fptoui double %"$gaslogof_268" to i64
  %"$gaslogof_270" = add i64 %"$gaslogof_269", 1
  %"$gasmul_271" = mul i64 4, %"$gaslogof_270"
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 %"$gasmul_271", %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_261"
  %"$consume_276" = sub i64 %"$gasrem_272", %"$gasmul_271"
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %"$three_277" = load %Uint32, %Uint32* %three, align 4
  %"$isqrt_call_278" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$three_277")
  store %Uint32 %"$isqrt_call_278", %Uint32* %isqrt_three, align 4
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_275"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %isqrt_four = alloca %Uint128, align 8
  %"$four_284" = load %Uint128, %Uint128* %four, align 8
  %"$gaslogof_285" = extractvalue %Uint128 %"$four_284", 0
  %"$gaslogof_286" = uitofp i128 %"$gaslogof_285" to double
  %"$gaslogof_287" = fadd double %"$gaslogof_286", 1.000000e+00
  %"$gaslogof_288" = call double @llvm.log.f64(double %"$gaslogof_287")
  %"$gaslogof_289" = fptoui double %"$gaslogof_288" to i64
  %"$gaslogof_290" = add i64 %"$gaslogof_289", 1
  %"$gasmul_291" = mul i64 4, %"$gaslogof_290"
  %"$gasmul_292" = mul i64 %"$gasmul_291", 2
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 %"$gasmul_292", %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_282"
  %"$consume_297" = sub i64 %"$gasrem_293", %"$gasmul_292"
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %"$four_298" = load %Uint128, %Uint128* %four, align 8
  %"$isqrt_call_299" = call %Uint128 @_isqrt_Uint128(%Uint128 %"$four_298")
  store %Uint128 %"$isqrt_call_299", %Uint128* %isqrt_four, align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_296"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %isqrt_six = alloca %Uint32, align 8
  %"$six_305" = load %Uint32, %Uint32* %six, align 4
  %"$valueof_306" = extractvalue %Uint32 %"$six_305", 0
  %"$valueof_307" = zext i32 %"$valueof_306" to i64
  %"$gaslogof_308" = uitofp i64 %"$valueof_307" to double
  %"$gaslogof_309" = fadd double %"$gaslogof_308", 1.000000e+00
  %"$gaslogof_310" = call double @llvm.log.f64(double %"$gaslogof_309")
  %"$gaslogof_311" = fptoui double %"$gaslogof_310" to i64
  %"$gaslogof_312" = add i64 %"$gaslogof_311", 1
  %"$gasmul_313" = mul i64 4, %"$gaslogof_312"
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 %"$gasmul_313", %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_303"
  %"$consume_318" = sub i64 %"$gasrem_314", %"$gasmul_313"
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %"$six_319" = load %Uint32, %Uint32* %six, align 4
  %"$isqrt_call_320" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$six_319")
  store %Uint32 %"$isqrt_call_320", %Uint32* %isqrt_six, align 4
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_317"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %isqrt_ten = alloca %Uint32, align 8
  %"$ten_326" = load %Uint32, %Uint32* %ten, align 4
  %"$valueof_327" = extractvalue %Uint32 %"$ten_326", 0
  %"$valueof_328" = zext i32 %"$valueof_327" to i64
  %"$gaslogof_329" = uitofp i64 %"$valueof_328" to double
  %"$gaslogof_330" = fadd double %"$gaslogof_329", 1.000000e+00
  %"$gaslogof_331" = call double @llvm.log.f64(double %"$gaslogof_330")
  %"$gaslogof_332" = fptoui double %"$gaslogof_331" to i64
  %"$gaslogof_333" = add i64 %"$gaslogof_332", 1
  %"$gasmul_334" = mul i64 4, %"$gaslogof_333"
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 %"$gasmul_334", %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_324"
  %"$consume_339" = sub i64 %"$gasrem_335", %"$gasmul_334"
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %"$ten_340" = load %Uint32, %Uint32* %ten, align 4
  %"$isqrt_call_341" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$ten_340")
  store %Uint32 %"$isqrt_call_341", %Uint32* %isqrt_ten, align 4
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_338"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %isqrt_thirty_six = alloca %Uint256, align 8
  %"$thirty_six_347" = load %Uint256, %Uint256* %thirty_six, align 8
  %"$gaslogof_348" = extractvalue %Uint256 %"$thirty_six_347", 0
  %"$gaslogof_349" = alloca i256, align 8
  store i256 %"$gaslogof_348", i256* %"$gaslogof_349", align 8
  %"$gaslogof_350" = bitcast i256* %"$gaslogof_349" to i128*
  %"$gaslogof_351" = getelementptr i128, i128* %"$gaslogof_350", i32 1
  %"$gaslogof_352" = load i128, i128* %"$gaslogof_351", align 8
  %"$gaslogof_353" = load i128, i128* %"$gaslogof_350", align 8
  %"$gaslogof_354" = uitofp i128 %"$gaslogof_352" to double
  %"$gaslogof_355" = uitofp i128 %"$gaslogof_353" to double
  %"$gaslogf_356" = call double @llvm.pow.f64(double 2.000000e+00, double 1.280000e+02)
  %"$gaslogof_357" = fmul double %"$gaslogof_354", %"$gaslogf_356"
  %"$gaslogof_358" = fadd double %"$gaslogof_357", %"$gaslogof_355"
  %"$gaslogof_359" = fadd double %"$gaslogof_358", 1.000000e+00
  %"$gaslogof_360" = call double @llvm.log.f64(double %"$gaslogof_359")
  %"$gaslogof_361" = fptoui double %"$gaslogof_360" to i64
  %"$gaslogof_362" = add i64 %"$gaslogof_361", 1
  %"$gasmul_363" = mul i64 4, %"$gaslogof_362"
  %"$gasmul_364" = mul i64 %"$gasmul_363", 4
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 %"$gasmul_364", %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_345"
  %"$consume_369" = sub i64 %"$gasrem_365", %"$gasmul_364"
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %"$execptr_load_370" = load i8*, i8** @_execptr, align 8
  %"$isqrt_thirty_six_371" = alloca %Uint256, align 8
  %"$thirty_six_372" = load %Uint256, %Uint256* %thirty_six, align 8
  store %Uint256 %"$thirty_six_372", %Uint256* %"$isqrt_thirty_six_371", align 8
  %"$isqrt_call_373" = call %Uint256* @_isqrt_Uint256(i8* %"$execptr_load_370", %Uint256* %"$isqrt_thirty_six_371")
  %"$isqrt_375" = load %Uint256, %Uint256* %"$isqrt_call_373", align 8
  store %Uint256 %"$isqrt_375", %Uint256* %isqrt_thirty_six, align 8
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_368"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  %isqrt_uint256_max = alloca %Uint256, align 8
  %"$uint256_max_381" = load %Uint256, %Uint256* %uint256_max, align 8
  %"$gaslogof_382" = extractvalue %Uint256 %"$uint256_max_381", 0
  %"$gaslogof_383" = alloca i256, align 8
  store i256 %"$gaslogof_382", i256* %"$gaslogof_383", align 8
  %"$gaslogof_384" = bitcast i256* %"$gaslogof_383" to i128*
  %"$gaslogof_385" = getelementptr i128, i128* %"$gaslogof_384", i32 1
  %"$gaslogof_386" = load i128, i128* %"$gaslogof_385", align 8
  %"$gaslogof_387" = load i128, i128* %"$gaslogof_384", align 8
  %"$gaslogof_388" = uitofp i128 %"$gaslogof_386" to double
  %"$gaslogof_389" = uitofp i128 %"$gaslogof_387" to double
  %"$gaslogf_390" = call double @llvm.pow.f64(double 2.000000e+00, double 1.280000e+02)
  %"$gaslogof_391" = fmul double %"$gaslogof_388", %"$gaslogf_390"
  %"$gaslogof_392" = fadd double %"$gaslogof_391", %"$gaslogof_389"
  %"$gaslogof_393" = fadd double %"$gaslogof_392", 1.000000e+00
  %"$gaslogof_394" = call double @llvm.log.f64(double %"$gaslogof_393")
  %"$gaslogof_395" = fptoui double %"$gaslogof_394" to i64
  %"$gaslogof_396" = add i64 %"$gaslogof_395", 1
  %"$gasmul_397" = mul i64 4, %"$gaslogof_396"
  %"$gasmul_398" = mul i64 %"$gasmul_397", 4
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 %"$gasmul_398", %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_379"
  %"$consume_403" = sub i64 %"$gasrem_399", %"$gasmul_398"
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$execptr_load_404" = load i8*, i8** @_execptr, align 8
  %"$isqrt_uint256_max_405" = alloca %Uint256, align 8
  %"$uint256_max_406" = load %Uint256, %Uint256* %uint256_max, align 8
  store %Uint256 %"$uint256_max_406", %Uint256* %"$isqrt_uint256_max_405", align 8
  %"$isqrt_call_407" = call %Uint256* @_isqrt_Uint256(i8* %"$execptr_load_404", %Uint256* %"$isqrt_uint256_max_405")
  %"$isqrt_409" = load %Uint256, %Uint256* %"$isqrt_call_407", align 8
  store %Uint256 %"$isqrt_409", %Uint256* %isqrt_uint256_max, align 8
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_402"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %isqrt_uint128_max = alloca %Uint128, align 8
  %"$uint128_max_415" = load %Uint128, %Uint128* %uint128_max, align 8
  %"$gaslogof_416" = extractvalue %Uint128 %"$uint128_max_415", 0
  %"$gaslogof_417" = uitofp i128 %"$gaslogof_416" to double
  %"$gaslogof_418" = fadd double %"$gaslogof_417", 1.000000e+00
  %"$gaslogof_419" = call double @llvm.log.f64(double %"$gaslogof_418")
  %"$gaslogof_420" = fptoui double %"$gaslogof_419" to i64
  %"$gaslogof_421" = add i64 %"$gaslogof_420", 1
  %"$gasmul_422" = mul i64 4, %"$gaslogof_421"
  %"$gasmul_423" = mul i64 %"$gasmul_422", 2
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 %"$gasmul_423", %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_413"
  %"$consume_428" = sub i64 %"$gasrem_424", %"$gasmul_423"
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$uint128_max_429" = load %Uint128, %Uint128* %uint128_max, align 8
  %"$isqrt_call_430" = call %Uint128 @_isqrt_Uint128(%Uint128 %"$uint128_max_429")
  store %Uint128 %"$isqrt_call_430", %Uint128* %isqrt_uint128_max, align 8
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_427"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %res1 = alloca %Uint32, align 8
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 4, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_434"
  %"$consume_440" = sub i64 %"$gasrem_436", 4
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$isqrt_zero_441" = load %Uint32, %Uint32* %isqrt_zero, align 4
  %"$isqrt_one_442" = load %Uint32, %Uint32* %isqrt_one, align 4
  %"$add_call_443" = call %Uint32 @_add_Uint32(%Uint32 %"$isqrt_zero_441", %Uint32 %"$isqrt_one_442")
  store %Uint32 %"$add_call_443", %Uint32* %res1, align 4
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_439"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %res2 = alloca %Uint32, align 8
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 4, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 4
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %"$isqrt_three_454" = load %Uint32, %Uint32* %isqrt_three, align 4
  %"$isqrt_six_455" = load %Uint32, %Uint32* %isqrt_six, align 4
  %"$add_call_456" = call %Uint32 @_add_Uint32(%Uint32 %"$isqrt_three_454", %Uint32 %"$isqrt_six_455")
  store %Uint32 %"$add_call_456", %Uint32* %res2, align 4
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_452"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %res3 = alloca %Uint32, align 8
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 4, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_460"
  %"$consume_466" = sub i64 %"$gasrem_462", 4
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %"$res1_467" = load %Uint32, %Uint32* %res1, align 4
  %"$res2_468" = load %Uint32, %Uint32* %res2, align 4
  %"$add_call_469" = call %Uint32 @_add_Uint32(%Uint32 %"$res1_467", %Uint32 %"$res2_468")
  store %Uint32 %"$add_call_469", %Uint32* %res3, align 4
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_465"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %res4 = alloca %Uint32, align 8
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 4, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_473"
  %"$consume_479" = sub i64 %"$gasrem_475", 4
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$res3_480" = load %Uint32, %Uint32* %res3, align 4
  %"$isqrt_ten_481" = load %Uint32, %Uint32* %isqrt_ten, align 4
  %"$add_call_482" = call %Uint32 @_add_Uint32(%Uint32 %"$res3_480", %Uint32 %"$isqrt_ten_481")
  store %Uint32 %"$add_call_482", %Uint32* %res4, align 4
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_478"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %res5 = alloca %Uint256, align 8
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 16, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_486"
  %"$consume_493" = sub i64 %"$gasrem_489", 16
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %"$execptr_load_494" = load i8*, i8** @_execptr, align 8
  %"$add_isqrt_thirty_six_495" = alloca %Uint256, align 8
  %"$isqrt_thirty_six_496" = load %Uint256, %Uint256* %isqrt_thirty_six, align 8
  store %Uint256 %"$isqrt_thirty_six_496", %Uint256* %"$add_isqrt_thirty_six_495", align 8
  %"$add_isqrt_uint256_max_497" = alloca %Uint256, align 8
  %"$isqrt_uint256_max_498" = load %Uint256, %Uint256* %isqrt_uint256_max, align 8
  store %Uint256 %"$isqrt_uint256_max_498", %Uint256* %"$add_isqrt_uint256_max_497", align 8
  %"$add_call_499" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_494", %Uint256* %"$add_isqrt_thirty_six_495", %Uint256* %"$add_isqrt_uint256_max_497")
  %"$add_501" = load %Uint256, %Uint256* %"$add_call_499", align 8
  store %Uint256 %"$add_501", %Uint256* %res5, align 8
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_492"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %res6 = alloca %Uint128, align 8
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 8, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_505"
  %"$consume_512" = sub i64 %"$gasrem_508", 8
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %"$isqrt_four_513" = load %Uint128, %Uint128* %isqrt_four, align 8
  %"$isqrt_uint128_max_514" = load %Uint128, %Uint128* %isqrt_uint128_max, align 8
  %"$add_call_515" = call %Uint128 @_add_Uint128(%Uint128 %"$isqrt_four_513", %Uint128 %"$isqrt_uint128_max_514")
  store %Uint128 %"$add_call_515", %Uint128* %res6, align 8
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 1, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_511"
  %"$consume_520" = sub i64 %"$gasrem_516", 1
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %res7 = alloca %TName_Pair_Uint128_Uint256*, align 8
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 1, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$have_gas_519"
  %"$consume_525" = sub i64 %"$gasrem_521", 1
  store i64 %"$consume_525", i64* @_gasrem, align 8
  %"$res6_526" = load %Uint128, %Uint128* %res6, align 8
  %"$res5_527" = load %Uint256, %Uint256* %res5, align 8
  %"$adtval_528_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_528_salloc" = call i8* @_salloc(i8* %"$adtval_528_load", i64 49)
  %"$adtval_528" = bitcast i8* %"$adtval_528_salloc" to %CName_Pair_Uint128_Uint256*
  %"$adtgep_529" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_528", i32 0, i32 0
  store i8 0, i8* %"$adtgep_529", align 1
  %"$adtgep_530" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_528", i32 0, i32 1
  store %Uint128 %"$res6_526", %Uint128* %"$adtgep_530", align 8
  %"$adtgep_531" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_528", i32 0, i32 2
  store %Uint256 %"$res5_527", %Uint256* %"$adtgep_531", align 8
  %"$adtptr_532" = bitcast %CName_Pair_Uint128_Uint256* %"$adtval_528" to %TName_Pair_Uint128_Uint256*
  store %TName_Pair_Uint128_Uint256* %"$adtptr_532", %TName_Pair_Uint128_Uint256** %res7, align 8
  %"$gasrem_533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_534" = icmp ugt i64 1, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %"$have_gas_524"
  %"$consume_537" = sub i64 %"$gasrem_533", 1
  store i64 %"$consume_537", i64* @_gasrem, align 8
  %res8 = alloca %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*, align 8
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_536"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_536"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem, align 8
  %"$res7_543" = load %TName_Pair_Uint128_Uint256*, %TName_Pair_Uint128_Uint256** %res7, align 8
  %"$res4_544" = load %Uint32, %Uint32* %res4, align 4
  %"$adtval_545_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_545_salloc" = call i8* @_salloc(i8* %"$adtval_545_load", i64 13)
  %"$adtval_545" = bitcast i8* %"$adtval_545_salloc" to %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*
  %"$adtgep_546" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_545", i32 0, i32 0
  store i8 0, i8* %"$adtgep_546", align 1
  %"$adtgep_547" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_545", i32 0, i32 1
  store %TName_Pair_Uint128_Uint256* %"$res7_543", %TName_Pair_Uint128_Uint256** %"$adtgep_547", align 8
  %"$adtgep_548" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_545", i32 0, i32 2
  store %Uint32 %"$res4_544", %Uint32* %"$adtgep_548", align 4
  %"$adtptr_549" = bitcast %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_545" to %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*
  store %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtptr_549", %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %res8, align 8
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 1, %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %"$have_gas_541"
  %"$consume_554" = sub i64 %"$gasrem_550", 1
  store i64 %"$consume_554", i64* @_gasrem, align 8
  %"$isqrt_two_555" = load %Uint64, %Uint64* %isqrt_two, align 8
  %"$res8_556" = load %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*, %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %res8, align 8
  %"$adtval_557_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_557_salloc" = call i8* @_salloc(i8* %"$adtval_557_load", i64 17)
  %"$adtval_557" = bitcast i8* %"$adtval_557_salloc" to %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*
  %"$adtgep_558" = getelementptr inbounds %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)", %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_557", i32 0, i32 0
  store i8 0, i8* %"$adtgep_558", align 1
  %"$adtgep_559" = getelementptr inbounds %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)", %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_557", i32 0, i32 1
  store %Uint64 %"$isqrt_two_555", %Uint64* %"$adtgep_559", align 8
  %"$adtgep_560" = getelementptr inbounds %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)", %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_557", i32 0, i32 2
  store %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$res8_556", %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %"$adtgep_560", align 8
  %"$adtptr_561" = bitcast %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_557" to %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*
  store %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtptr_561", %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"** %"$expr_6", align 8
  %"$$expr_6_562" = load %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*, %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"** %"$expr_6", align 8
  ret %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$$expr_6_562"
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #0

declare %Uint32 @_isqrt_Uint32(%Uint32)

declare %Uint64 @_isqrt_Uint64(%Uint64)

declare %Uint128 @_isqrt_Uint128(%Uint128)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #0

declare %Uint256* @_isqrt_Uint256(i8*, %Uint256*)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare %Uint256* @_add_Uint256(i8*, %Uint256*, %Uint256*)

declare %Uint128 @_add_Uint128(%Uint128, %Uint128)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_563" = call %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_564" = bitcast %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$exprval_563" to i8*
  %"$execptr_load_565" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_565", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_41", i8* %"$memvoidcast_564")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
