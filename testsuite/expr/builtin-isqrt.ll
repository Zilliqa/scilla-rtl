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
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_7" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_568" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_569" = type { %ParamDescrString, i32, %"$ParamDescr_568"* }
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
@"$TyDescr_ReplicateContr_Prim_34" = global %"$TyDescrTy_PrimTyp_7" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_ReplicateContr_Prim_34" to i8*) }
@"$TyDescr_Bystr_Prim_36" = global %"$TyDescrTy_PrimTyp_7" { i32 7, i32 0 }
@"$TyDescr_Bystr_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_7"* @"$TyDescr_Bystr_Prim_36" to i8*) }
@"$TyDescr_ADT_Pair_Uint128_Uint256_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_59" to i8*) }
@"$TyDescr_ADT_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_65" to i8*) }
@"$TyDescr_Pair_ADTTyp_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_67", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_38"*], [3 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Pair_ADTTyp_m_specls_66", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_48" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23"]
@"$TyDescr_ADT_Pair_49" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_49", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_50"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_47" }
@"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_Constr_m_args_54" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_41", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11"]
@"$TyDescr_ADT_Pair_55" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_55", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_constrs_57" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Constr_56"]
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_TArgs_58" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_41", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11"]
@"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_TArgs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_m_constrs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_47" }
@"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_Constr_m_args_60" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_42"]
@"$TyDescr_ADT_Pair_61" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Constr_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_61", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_Constr_m_args_60", i32 0, i32 0) }
@"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_constrs_63" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Constr_62"]
@"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_TArgs_64" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_42"]
@"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_TArgs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_m_constrs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_47" }
@"$TyDescr_Pair_ADTTyp_m_specls_66" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_53", %"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Pair_(Uint128)_(Uint256)_Uint32_ADTTyp_Specl_59", %"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_ADTTyp_Specl_65"]
@"$TyDescr_ADT_Pair_67" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_31", %_TyDescrTy_Typ* @"$TyDescr_Int64_13", %_TyDescrTy_Typ* @"$TyDescr_Uint256_23", %_TyDescrTy_Typ* @"$TyDescr_Uint32_11", %_TyDescrTy_Typ* @"$TyDescr_Uint64_15", %_TyDescrTy_Typ* @"$TyDescr_Bnum_27", %_TyDescrTy_Typ* @"$TyDescr_Uint128_19", %_TyDescrTy_Typ* @"$TyDescr_Exception_33", %_TyDescrTy_Typ* @"$TyDescr_String_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint128)_(Uint256)_Uint32_42", %_TyDescrTy_Typ* @"$TyDescr_Int256_21", %_TyDescrTy_Typ* @"$TyDescr_Int128_17", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_35", %_TyDescrTy_Typ* @"$TyDescr_Message_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_9"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_568"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_569"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 5, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %entry
  %"$consume_72" = sub i64 %"$gasrem_68", 5
  store i64 %"$consume_72", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 8, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_71"
  %"$consume_77" = sub i64 %"$gasrem_73", 8
  store i64 %"$consume_77", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 196, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_76"
  %"$consume_82" = sub i64 %"$gasrem_78", 196
  store i64 %"$consume_82", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 20, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 20
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 12, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 12
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 2, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_91"
  %"$consume_97" = sub i64 %"$gasrem_93", 2
  store i64 %"$consume_97", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

declare void @_out_of_gas()

define internal %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_6" = alloca %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %entry
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_106"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_106"
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %two = alloca %Uint64, align 8
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %two, align 8
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %three = alloca %Uint32, align 8
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  store %Uint32 { i32 3 }, %Uint32* %three, align 4
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %four = alloca %Uint128, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  store %Uint128 { i128 4 }, %Uint128* %four, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_146"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %six = alloca %Uint32, align 8
  %"$gasrem_153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_154" = icmp ugt i64 1, %"$gasrem_153"
  br i1 %"$gascmp_154", label %"$out_of_gas_155", label %"$have_gas_156"

"$out_of_gas_155":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_156"

"$have_gas_156":                                  ; preds = %"$out_of_gas_155", %"$have_gas_151"
  %"$consume_157" = sub i64 %"$gasrem_153", 1
  store i64 %"$consume_157", i64* @_gasrem, align 8
  store %Uint32 { i32 6 }, %Uint32* %six, align 4
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_156"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_156"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %ten = alloca %Uint32, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_161"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_161"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  store %Uint32 { i32 10 }, %Uint32* %ten, align 4
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %thirty_six = alloca %Uint256, align 8
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_171"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  store %Uint256 { i256 36 }, %Uint256* %thirty_six, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_176"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %uint256_max = alloca %Uint256, align 8
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$have_gas_181"
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %uint256_max, align 8
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %"$have_gas_186"
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %"$have_gas_186"
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %uint128_max = alloca %Uint128, align 8
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_191"
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %uint128_max, align 8
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_196"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %isqrt_zero = alloca %Uint32, align 8
  %"$zero_203" = load %Uint32, %Uint32* %zero, align 4
  %"$valueof_204" = extractvalue %Uint32 %"$zero_203", 0
  %"$valueof_205" = zext i32 %"$valueof_204" to i64
  %"$gaslogof_206" = uitofp i64 %"$valueof_205" to double
  %"$gaslogof_207" = fadd double %"$gaslogof_206", 1.000000e+00
  %"$gaslogof_208" = call double @llvm.log.f64(double %"$gaslogof_207")
  %"$gaslogof_209" = fptoui double %"$gaslogof_208" to i64
  %"$gaslogof_210" = add i64 %"$gaslogof_209", 1
  %"$gasmul_211" = mul i64 4, %"$gaslogof_210"
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 %"$gasmul_211", %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_201"
  %"$consume_216" = sub i64 %"$gasrem_212", %"$gasmul_211"
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %"$zero_217" = load %Uint32, %Uint32* %zero, align 4
  %"$isqrt_call_218" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$zero_217")
  store %Uint32 %"$isqrt_call_218", %Uint32* %isqrt_zero, align 4
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_215"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %isqrt_one = alloca %Uint32, align 8
  %"$one_224" = load %Uint32, %Uint32* %one, align 4
  %"$valueof_225" = extractvalue %Uint32 %"$one_224", 0
  %"$valueof_226" = zext i32 %"$valueof_225" to i64
  %"$gaslogof_227" = uitofp i64 %"$valueof_226" to double
  %"$gaslogof_228" = fadd double %"$gaslogof_227", 1.000000e+00
  %"$gaslogof_229" = call double @llvm.log.f64(double %"$gaslogof_228")
  %"$gaslogof_230" = fptoui double %"$gaslogof_229" to i64
  %"$gaslogof_231" = add i64 %"$gaslogof_230", 1
  %"$gasmul_232" = mul i64 4, %"$gaslogof_231"
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 %"$gasmul_232", %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_222"
  %"$consume_237" = sub i64 %"$gasrem_233", %"$gasmul_232"
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$one_238" = load %Uint32, %Uint32* %one, align 4
  %"$isqrt_call_239" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$one_238")
  store %Uint32 %"$isqrt_call_239", %Uint32* %isqrt_one, align 4
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_236"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %isqrt_two = alloca %Uint64, align 8
  %"$two_245" = load %Uint64, %Uint64* %two, align 8
  %"$gaslogof_246" = extractvalue %Uint64 %"$two_245", 0
  %"$gaslogof_247" = uitofp i64 %"$gaslogof_246" to double
  %"$gaslogof_248" = fadd double %"$gaslogof_247", 1.000000e+00
  %"$gaslogof_249" = call double @llvm.log.f64(double %"$gaslogof_248")
  %"$gaslogof_250" = fptoui double %"$gaslogof_249" to i64
  %"$gaslogof_251" = add i64 %"$gaslogof_250", 1
  %"$gasmul_252" = mul i64 4, %"$gaslogof_251"
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 %"$gasmul_252", %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_243"
  %"$consume_257" = sub i64 %"$gasrem_253", %"$gasmul_252"
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$two_258" = load %Uint64, %Uint64* %two, align 8
  %"$isqrt_call_259" = call %Uint64 @_isqrt_Uint64(%Uint64 %"$two_258")
  store %Uint64 %"$isqrt_call_259", %Uint64* %isqrt_two, align 8
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_256"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %isqrt_three = alloca %Uint32, align 8
  %"$three_265" = load %Uint32, %Uint32* %three, align 4
  %"$valueof_266" = extractvalue %Uint32 %"$three_265", 0
  %"$valueof_267" = zext i32 %"$valueof_266" to i64
  %"$gaslogof_268" = uitofp i64 %"$valueof_267" to double
  %"$gaslogof_269" = fadd double %"$gaslogof_268", 1.000000e+00
  %"$gaslogof_270" = call double @llvm.log.f64(double %"$gaslogof_269")
  %"$gaslogof_271" = fptoui double %"$gaslogof_270" to i64
  %"$gaslogof_272" = add i64 %"$gaslogof_271", 1
  %"$gasmul_273" = mul i64 4, %"$gaslogof_272"
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 %"$gasmul_273", %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_263"
  %"$consume_278" = sub i64 %"$gasrem_274", %"$gasmul_273"
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$three_279" = load %Uint32, %Uint32* %three, align 4
  %"$isqrt_call_280" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$three_279")
  store %Uint32 %"$isqrt_call_280", %Uint32* %isqrt_three, align 4
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_277"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %isqrt_four = alloca %Uint128, align 8
  %"$four_286" = load %Uint128, %Uint128* %four, align 8
  %"$gaslogof_287" = extractvalue %Uint128 %"$four_286", 0
  %"$gaslogof_288" = uitofp i128 %"$gaslogof_287" to double
  %"$gaslogof_289" = fadd double %"$gaslogof_288", 1.000000e+00
  %"$gaslogof_290" = call double @llvm.log.f64(double %"$gaslogof_289")
  %"$gaslogof_291" = fptoui double %"$gaslogof_290" to i64
  %"$gaslogof_292" = add i64 %"$gaslogof_291", 1
  %"$gasmul_293" = mul i64 4, %"$gaslogof_292"
  %"$gasmul_294" = mul i64 %"$gasmul_293", 2
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 %"$gasmul_294", %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_284"
  %"$consume_299" = sub i64 %"$gasrem_295", %"$gasmul_294"
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %"$four_300" = load %Uint128, %Uint128* %four, align 8
  %"$isqrt_call_301" = call %Uint128 @_isqrt_Uint128(%Uint128 %"$four_300")
  store %Uint128 %"$isqrt_call_301", %Uint128* %isqrt_four, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_298"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %isqrt_six = alloca %Uint32, align 8
  %"$six_307" = load %Uint32, %Uint32* %six, align 4
  %"$valueof_308" = extractvalue %Uint32 %"$six_307", 0
  %"$valueof_309" = zext i32 %"$valueof_308" to i64
  %"$gaslogof_310" = uitofp i64 %"$valueof_309" to double
  %"$gaslogof_311" = fadd double %"$gaslogof_310", 1.000000e+00
  %"$gaslogof_312" = call double @llvm.log.f64(double %"$gaslogof_311")
  %"$gaslogof_313" = fptoui double %"$gaslogof_312" to i64
  %"$gaslogof_314" = add i64 %"$gaslogof_313", 1
  %"$gasmul_315" = mul i64 4, %"$gaslogof_314"
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 %"$gasmul_315", %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_305"
  %"$consume_320" = sub i64 %"$gasrem_316", %"$gasmul_315"
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %"$six_321" = load %Uint32, %Uint32* %six, align 4
  %"$isqrt_call_322" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$six_321")
  store %Uint32 %"$isqrt_call_322", %Uint32* %isqrt_six, align 4
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_319"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_319"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %isqrt_ten = alloca %Uint32, align 8
  %"$ten_328" = load %Uint32, %Uint32* %ten, align 4
  %"$valueof_329" = extractvalue %Uint32 %"$ten_328", 0
  %"$valueof_330" = zext i32 %"$valueof_329" to i64
  %"$gaslogof_331" = uitofp i64 %"$valueof_330" to double
  %"$gaslogof_332" = fadd double %"$gaslogof_331", 1.000000e+00
  %"$gaslogof_333" = call double @llvm.log.f64(double %"$gaslogof_332")
  %"$gaslogof_334" = fptoui double %"$gaslogof_333" to i64
  %"$gaslogof_335" = add i64 %"$gaslogof_334", 1
  %"$gasmul_336" = mul i64 4, %"$gaslogof_335"
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 %"$gasmul_336", %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_326"
  %"$consume_341" = sub i64 %"$gasrem_337", %"$gasmul_336"
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %"$ten_342" = load %Uint32, %Uint32* %ten, align 4
  %"$isqrt_call_343" = call %Uint32 @_isqrt_Uint32(%Uint32 %"$ten_342")
  store %Uint32 %"$isqrt_call_343", %Uint32* %isqrt_ten, align 4
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_340"
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %isqrt_thirty_six = alloca %Uint256, align 8
  %"$thirty_six_349" = load %Uint256, %Uint256* %thirty_six, align 8
  %"$gaslogof_350" = extractvalue %Uint256 %"$thirty_six_349", 0
  %"$gaslogof_351" = alloca i256, align 8
  store i256 %"$gaslogof_350", i256* %"$gaslogof_351", align 8
  %"$gaslogof_352" = bitcast i256* %"$gaslogof_351" to i128*
  %"$gaslogof_353" = getelementptr i128, i128* %"$gaslogof_352", i32 1
  %"$gaslogof_354" = load i128, i128* %"$gaslogof_353", align 8
  %"$gaslogof_355" = load i128, i128* %"$gaslogof_352", align 8
  %"$gaslogof_356" = uitofp i128 %"$gaslogof_354" to double
  %"$gaslogof_357" = uitofp i128 %"$gaslogof_355" to double
  %"$gaslogf_358" = call double @llvm.pow.f64(double 2.000000e+00, double 1.280000e+02)
  %"$gaslogof_359" = fmul double %"$gaslogof_356", %"$gaslogf_358"
  %"$gaslogof_360" = fadd double %"$gaslogof_359", %"$gaslogof_357"
  %"$gaslogof_361" = fadd double %"$gaslogof_360", 1.000000e+00
  %"$gaslogof_362" = call double @llvm.log.f64(double %"$gaslogof_361")
  %"$gaslogof_363" = fptoui double %"$gaslogof_362" to i64
  %"$gaslogof_364" = add i64 %"$gaslogof_363", 1
  %"$gasmul_365" = mul i64 4, %"$gaslogof_364"
  %"$gasmul_366" = mul i64 %"$gasmul_365", 4
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 %"$gasmul_366", %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_347"
  %"$consume_371" = sub i64 %"$gasrem_367", %"$gasmul_366"
  store i64 %"$consume_371", i64* @_gasrem, align 8
  %"$execptr_load_372" = load i8*, i8** @_execptr, align 8
  %"$isqrt_thirty_six_373" = alloca %Uint256, align 8
  %"$thirty_six_374" = load %Uint256, %Uint256* %thirty_six, align 8
  store %Uint256 %"$thirty_six_374", %Uint256* %"$isqrt_thirty_six_373", align 8
  %"$isqrt_call_375" = call %Uint256* @_isqrt_Uint256(i8* %"$execptr_load_372", %Uint256* %"$isqrt_thirty_six_373")
  %"$isqrt_377" = load %Uint256, %Uint256* %"$isqrt_call_375", align 8
  store %Uint256 %"$isqrt_377", %Uint256* %isqrt_thirty_six, align 8
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_370"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %isqrt_uint256_max = alloca %Uint256, align 8
  %"$uint256_max_383" = load %Uint256, %Uint256* %uint256_max, align 8
  %"$gaslogof_384" = extractvalue %Uint256 %"$uint256_max_383", 0
  %"$gaslogof_385" = alloca i256, align 8
  store i256 %"$gaslogof_384", i256* %"$gaslogof_385", align 8
  %"$gaslogof_386" = bitcast i256* %"$gaslogof_385" to i128*
  %"$gaslogof_387" = getelementptr i128, i128* %"$gaslogof_386", i32 1
  %"$gaslogof_388" = load i128, i128* %"$gaslogof_387", align 8
  %"$gaslogof_389" = load i128, i128* %"$gaslogof_386", align 8
  %"$gaslogof_390" = uitofp i128 %"$gaslogof_388" to double
  %"$gaslogof_391" = uitofp i128 %"$gaslogof_389" to double
  %"$gaslogf_392" = call double @llvm.pow.f64(double 2.000000e+00, double 1.280000e+02)
  %"$gaslogof_393" = fmul double %"$gaslogof_390", %"$gaslogf_392"
  %"$gaslogof_394" = fadd double %"$gaslogof_393", %"$gaslogof_391"
  %"$gaslogof_395" = fadd double %"$gaslogof_394", 1.000000e+00
  %"$gaslogof_396" = call double @llvm.log.f64(double %"$gaslogof_395")
  %"$gaslogof_397" = fptoui double %"$gaslogof_396" to i64
  %"$gaslogof_398" = add i64 %"$gaslogof_397", 1
  %"$gasmul_399" = mul i64 4, %"$gaslogof_398"
  %"$gasmul_400" = mul i64 %"$gasmul_399", 4
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 %"$gasmul_400", %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$have_gas_381"
  %"$consume_405" = sub i64 %"$gasrem_401", %"$gasmul_400"
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %"$execptr_load_406" = load i8*, i8** @_execptr, align 8
  %"$isqrt_uint256_max_407" = alloca %Uint256, align 8
  %"$uint256_max_408" = load %Uint256, %Uint256* %uint256_max, align 8
  store %Uint256 %"$uint256_max_408", %Uint256* %"$isqrt_uint256_max_407", align 8
  %"$isqrt_call_409" = call %Uint256* @_isqrt_Uint256(i8* %"$execptr_load_406", %Uint256* %"$isqrt_uint256_max_407")
  %"$isqrt_411" = load %Uint256, %Uint256* %"$isqrt_call_409", align 8
  store %Uint256 %"$isqrt_411", %Uint256* %isqrt_uint256_max, align 8
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$have_gas_404"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$have_gas_404"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  %isqrt_uint128_max = alloca %Uint128, align 8
  %"$uint128_max_417" = load %Uint128, %Uint128* %uint128_max, align 8
  %"$gaslogof_418" = extractvalue %Uint128 %"$uint128_max_417", 0
  %"$gaslogof_419" = uitofp i128 %"$gaslogof_418" to double
  %"$gaslogof_420" = fadd double %"$gaslogof_419", 1.000000e+00
  %"$gaslogof_421" = call double @llvm.log.f64(double %"$gaslogof_420")
  %"$gaslogof_422" = fptoui double %"$gaslogof_421" to i64
  %"$gaslogof_423" = add i64 %"$gaslogof_422", 1
  %"$gasmul_424" = mul i64 4, %"$gaslogof_423"
  %"$gasmul_425" = mul i64 %"$gasmul_424", 2
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 %"$gasmul_425", %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_415"
  %"$consume_430" = sub i64 %"$gasrem_426", %"$gasmul_425"
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %"$uint128_max_431" = load %Uint128, %Uint128* %uint128_max, align 8
  %"$isqrt_call_432" = call %Uint128 @_isqrt_Uint128(%Uint128 %"$uint128_max_431")
  store %Uint128 %"$isqrt_call_432", %Uint128* %isqrt_uint128_max, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_429"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %res1 = alloca %Uint32, align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 4, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 4
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$isqrt_zero_443" = load %Uint32, %Uint32* %isqrt_zero, align 4
  %"$isqrt_one_444" = load %Uint32, %Uint32* %isqrt_one, align 4
  %"$add_call_445" = call %Uint32 @_add_Uint32(%Uint32 %"$isqrt_zero_443", %Uint32 %"$isqrt_one_444")
  store %Uint32 %"$add_call_445", %Uint32* %res1, align 4
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_441"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %res2 = alloca %Uint32, align 8
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 4, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 4
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$isqrt_three_456" = load %Uint32, %Uint32* %isqrt_three, align 4
  %"$isqrt_six_457" = load %Uint32, %Uint32* %isqrt_six, align 4
  %"$add_call_458" = call %Uint32 @_add_Uint32(%Uint32 %"$isqrt_three_456", %Uint32 %"$isqrt_six_457")
  store %Uint32 %"$add_call_458", %Uint32* %res2, align 4
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 1, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_454"
  %"$consume_463" = sub i64 %"$gasrem_459", 1
  store i64 %"$consume_463", i64* @_gasrem, align 8
  %res3 = alloca %Uint32, align 8
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 4, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_462"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_462"
  %"$consume_468" = sub i64 %"$gasrem_464", 4
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %"$res1_469" = load %Uint32, %Uint32* %res1, align 4
  %"$res2_470" = load %Uint32, %Uint32* %res2, align 4
  %"$add_call_471" = call %Uint32 @_add_Uint32(%Uint32 %"$res1_469", %Uint32 %"$res2_470")
  store %Uint32 %"$add_call_471", %Uint32* %res3, align 4
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_467"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %res4 = alloca %Uint32, align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 4, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_475"
  %"$consume_481" = sub i64 %"$gasrem_477", 4
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %"$res3_482" = load %Uint32, %Uint32* %res3, align 4
  %"$isqrt_ten_483" = load %Uint32, %Uint32* %isqrt_ten, align 4
  %"$add_call_484" = call %Uint32 @_add_Uint32(%Uint32 %"$res3_482", %Uint32 %"$isqrt_ten_483")
  store %Uint32 %"$add_call_484", %Uint32* %res4, align 4
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_480"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %res5 = alloca %Uint256, align 8
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 16, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$have_gas_488"
  %"$consume_495" = sub i64 %"$gasrem_491", 16
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %"$execptr_load_496" = load i8*, i8** @_execptr, align 8
  %"$add_isqrt_thirty_six_497" = alloca %Uint256, align 8
  %"$isqrt_thirty_six_498" = load %Uint256, %Uint256* %isqrt_thirty_six, align 8
  store %Uint256 %"$isqrt_thirty_six_498", %Uint256* %"$add_isqrt_thirty_six_497", align 8
  %"$add_isqrt_uint256_max_499" = alloca %Uint256, align 8
  %"$isqrt_uint256_max_500" = load %Uint256, %Uint256* %isqrt_uint256_max, align 8
  store %Uint256 %"$isqrt_uint256_max_500", %Uint256* %"$add_isqrt_uint256_max_499", align 8
  %"$add_call_501" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_496", %Uint256* %"$add_isqrt_thirty_six_497", %Uint256* %"$add_isqrt_uint256_max_499")
  %"$add_503" = load %Uint256, %Uint256* %"$add_call_501", align 8
  store %Uint256 %"$add_503", %Uint256* %res5, align 8
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 1, %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %"$have_gas_494"
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %"$have_gas_494"
  %"$consume_508" = sub i64 %"$gasrem_504", 1
  store i64 %"$consume_508", i64* @_gasrem, align 8
  %res6 = alloca %Uint128, align 8
  %"$gasrem_510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_511" = icmp ugt i64 8, %"$gasrem_510"
  br i1 %"$gascmp_511", label %"$out_of_gas_512", label %"$have_gas_513"

"$out_of_gas_512":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_513"

"$have_gas_513":                                  ; preds = %"$out_of_gas_512", %"$have_gas_507"
  %"$consume_514" = sub i64 %"$gasrem_510", 8
  store i64 %"$consume_514", i64* @_gasrem, align 8
  %"$isqrt_four_515" = load %Uint128, %Uint128* %isqrt_four, align 8
  %"$isqrt_uint128_max_516" = load %Uint128, %Uint128* %isqrt_uint128_max, align 8
  %"$add_call_517" = call %Uint128 @_add_Uint128(%Uint128 %"$isqrt_four_515", %Uint128 %"$isqrt_uint128_max_516")
  store %Uint128 %"$add_call_517", %Uint128* %res6, align 8
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_513"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_513"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  %res7 = alloca %TName_Pair_Uint128_Uint256*, align 8
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_521"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$res6_528" = load %Uint128, %Uint128* %res6, align 8
  %"$res5_529" = load %Uint256, %Uint256* %res5, align 8
  %"$adtval_530_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_530_salloc" = call i8* @_salloc(i8* %"$adtval_530_load", i64 49)
  %"$adtval_530" = bitcast i8* %"$adtval_530_salloc" to %CName_Pair_Uint128_Uint256*
  %"$adtgep_531" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_530", i32 0, i32 0
  store i8 0, i8* %"$adtgep_531", align 1
  %"$adtgep_532" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_530", i32 0, i32 1
  store %Uint128 %"$res6_528", %Uint128* %"$adtgep_532", align 8
  %"$adtgep_533" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_530", i32 0, i32 2
  store %Uint256 %"$res5_529", %Uint256* %"$adtgep_533", align 8
  %"$adtptr_534" = bitcast %CName_Pair_Uint128_Uint256* %"$adtval_530" to %TName_Pair_Uint128_Uint256*
  store %TName_Pair_Uint128_Uint256* %"$adtptr_534", %TName_Pair_Uint128_Uint256** %res7, align 8
  %"$gasrem_535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_536" = icmp ugt i64 1, %"$gasrem_535"
  br i1 %"$gascmp_536", label %"$out_of_gas_537", label %"$have_gas_538"

"$out_of_gas_537":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_538"

"$have_gas_538":                                  ; preds = %"$out_of_gas_537", %"$have_gas_526"
  %"$consume_539" = sub i64 %"$gasrem_535", 1
  store i64 %"$consume_539", i64* @_gasrem, align 8
  %res8 = alloca %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*, align 8
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 1, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %"$have_gas_538"
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %"$have_gas_538"
  %"$consume_544" = sub i64 %"$gasrem_540", 1
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %"$res7_545" = load %TName_Pair_Uint128_Uint256*, %TName_Pair_Uint128_Uint256** %res7, align 8
  %"$res4_546" = load %Uint32, %Uint32* %res4, align 4
  %"$adtval_547_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_547_salloc" = call i8* @_salloc(i8* %"$adtval_547_load", i64 13)
  %"$adtval_547" = bitcast i8* %"$adtval_547_salloc" to %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*
  %"$adtgep_548" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_547", i32 0, i32 0
  store i8 0, i8* %"$adtgep_548", align 1
  %"$adtgep_549" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_547", i32 0, i32 1
  store %TName_Pair_Uint128_Uint256* %"$res7_545", %TName_Pair_Uint128_Uint256** %"$adtgep_549", align 8
  %"$adtgep_550" = getelementptr inbounds %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32", %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_547", i32 0, i32 2
  store %Uint32 %"$res4_546", %Uint32* %"$adtgep_550", align 4
  %"$adtptr_551" = bitcast %"CName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtval_547" to %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*
  store %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$adtptr_551", %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %res8, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_543"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$isqrt_two_557" = load %Uint64, %Uint64* %isqrt_two, align 8
  %"$res8_558" = load %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"*, %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %res8, align 8
  %"$adtval_559_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_559_salloc" = call i8* @_salloc(i8* %"$adtval_559_load", i64 17)
  %"$adtval_559" = bitcast i8* %"$adtval_559_salloc" to %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*
  %"$adtgep_560" = getelementptr inbounds %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)", %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_559", i32 0, i32 0
  store i8 0, i8* %"$adtgep_560", align 1
  %"$adtgep_561" = getelementptr inbounds %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)", %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_559", i32 0, i32 1
  store %Uint64 %"$isqrt_two_557", %Uint64* %"$adtgep_561", align 8
  %"$adtgep_562" = getelementptr inbounds %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)", %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_559", i32 0, i32 2
  store %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"* %"$res8_558", %"TName_Pair_Pair_(Uint128)_(Uint256)_Uint32"** %"$adtgep_562", align 8
  %"$adtptr_563" = bitcast %"CName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtval_559" to %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*
  store %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$adtptr_563", %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"** %"$expr_6", align 8
  %"$$expr_6_564" = load %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"*, %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"** %"$expr_6", align 8
  ret %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$$expr_6_564"
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
  %"$exprval_565" = call %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_566" = bitcast %"TName_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)"* %"$exprval_565" to i8*
  %"$execptr_load_567" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_567", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint64_Pair_(Pair_(Uint128)_(Uint256))_(Uint32)_43", i8* %"$memvoidcast_566")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
