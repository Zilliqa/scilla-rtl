; let zero = 0x00 in
; let one_1 = 0x01 in
; let one_3 = 0x000001 in
; let one_4 = 0x00000001 in
; let one_8 = 0x0000000000000001 in
; let one_16 = 0x00000000000000000000000000000001 in
; let one_32 = 0x0000000000000000000000000000000000000000000000000000000000000001 in
; 
; let res7 = builtin to_uint32 zero in
; let res8 = builtin to_uint32 one_1 in
; let res9 = builtin to_uint32 one_3 in
; let res10 = builtin to_uint32 one_4 in
; let sum1 = builtin add res7 res8 in
; let sum2 = builtin add res9 res10 in
; let sum_32 = builtin add sum1 sum2 in
; 
; let res12 = builtin to_uint64 one_1 in
; let res13 = builtin to_uint64 one_4 in
; let res14 = builtin to_uint64 one_8 in
; let sum1 = builtin add res12 res13 in
; let sum_64 = builtin add sum1 res14 in
; 
; let res15 = builtin to_uint128 one_1 in
; let res16 = builtin to_uint128 one_4 in
; let res17 = builtin to_uint128 one_8 in
; let res18 = builtin to_uint128 one_16 in
; let sum1 = builtin add res15 res16 in
; let sum2 = builtin add res17 res18 in
; let sum_128 = builtin add sum1 sum2 in
; 
; let res19 = builtin to_uint256 one_1 in
; let res20 = builtin to_uint256 one_8 in
; let res21 = builtin to_uint256 one_16 in
; let res22 = builtin to_uint256 one_32 in
; let sum1 = builtin add res19 res20 in
; let sum2 = builtin add res21 res22 in
; let sum_256 = builtin add sum1 sum2 in
; 
; let respair1 = Pair {Uint32 Uint64} sum_32 sum_64 in
; let respair2 = Pair {Uint128 Uint256} sum_128 sum_256 in
; let restuple = Pair {(Pair Uint32 Uint64) (Pair Uint128 Uint256)} respair1 respair2 in
; 
; restuple
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_6" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_48" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_47"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_47" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_49"**, %"$TyDescrTy_ADTTyp_48"* }
%"$TyDescrTy_ADTTyp_Constr_49" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)" = type { i8, %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* }
%"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)" = type <{ i8, %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint128_Uint256* }>
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint32 = type { i32 }
%Uint64 = type { i64 }
%TName_Pair_Uint128_Uint256 = type { i8, %CName_Pair_Uint128_Uint256* }
%CName_Pair_Uint128_Uint256 = type <{ i8, %Uint128, %Uint256 }>
%Uint128 = type { i128 }
%Uint256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_7" = global %"$TyDescrTy_PrimTyp_6" zeroinitializer
@"$TyDescr_Int32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int32_Prim_7" to i8*) }
@"$TyDescr_Uint32_Prim_9" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 0 }
@"$TyDescr_Uint32_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint32_Prim_9" to i8*) }
@"$TyDescr_Int64_Prim_11" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 1 }
@"$TyDescr_Int64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int64_Prim_11" to i8*) }
@"$TyDescr_Uint64_Prim_13" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 1 }
@"$TyDescr_Uint64_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint64_Prim_13" to i8*) }
@"$TyDescr_Int128_Prim_15" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 2 }
@"$TyDescr_Int128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int128_Prim_15" to i8*) }
@"$TyDescr_Uint128_Prim_17" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 2 }
@"$TyDescr_Uint128_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint128_Prim_17" to i8*) }
@"$TyDescr_Int256_Prim_19" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 3 }
@"$TyDescr_Int256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int256_Prim_19" to i8*) }
@"$TyDescr_Uint256_Prim_21" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 3 }
@"$TyDescr_Uint256_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint256_Prim_21" to i8*) }
@"$TyDescr_String_Prim_23" = global %"$TyDescrTy_PrimTyp_6" { i32 2, i32 0 }
@"$TyDescr_String_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_String_Prim_23" to i8*) }
@"$TyDescr_Bnum_Prim_25" = global %"$TyDescrTy_PrimTyp_6" { i32 3, i32 0 }
@"$TyDescr_Bnum_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bnum_Prim_25" to i8*) }
@"$TyDescr_Message_Prim_27" = global %"$TyDescrTy_PrimTyp_6" { i32 4, i32 0 }
@"$TyDescr_Message_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Message_Prim_27" to i8*) }
@"$TyDescr_Event_Prim_29" = global %"$TyDescrTy_PrimTyp_6" { i32 5, i32 0 }
@"$TyDescr_Event_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Event_Prim_29" to i8*) }
@"$TyDescr_Exception_Prim_31" = global %"$TyDescrTy_PrimTyp_6" { i32 6, i32 0 }
@"$TyDescr_Exception_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Exception_Prim_31" to i8*) }
@"$TyDescr_Bystr_Prim_33" = global %"$TyDescrTy_PrimTyp_6" { i32 7, i32 0 }
@"$TyDescr_Bystr_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr_Prim_33" to i8*) }
@"$TyDescr_Bystr32_Prim_35" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 32 }
@"$TyDescr_Bystr32_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr32_Prim_35" to i8*) }
@"$TyDescr_Bystr16_Prim_37" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 16 }
@"$TyDescr_Bystr16_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr16_Prim_37" to i8*) }
@"$TyDescr_Bystr8_Prim_39" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 8 }
@"$TyDescr_Bystr8_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr8_Prim_39" to i8*) }
@"$TyDescr_Bystr4_Prim_41" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 4 }
@"$TyDescr_Bystr4_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr4_Prim_41" to i8*) }
@"$TyDescr_Bystr3_Prim_43" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 3 }
@"$TyDescr_Bystr3_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr3_Prim_43" to i8*) }
@"$TyDescr_Bystr1_Prim_45" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 1 }
@"$TyDescr_Bystr1_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr1_Prim_45" to i8*) }
@"$TyDescr_ADT_Pair_Uint128_Uint256_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_60" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_66" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_52" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_72" to i8*) }
@"$TyDescr_Pair_ADTTyp_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_74", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_47"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_47"*], [3 x %"$TyDescrTy_ADTTyp_Specl_47"*]* @"$TyDescr_Pair_ADTTyp_m_specls_73", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_55" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_18", %_TyDescrTy_Typ* @"$TyDescr_Uint256_22"]
@"$TyDescr_ADT_Pair_56" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_56", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint128_Uint256_Constr_m_args_55", i32 0, i32 0) }
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_58" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Pair_Pair_Uint128_Uint256_ADTTyp_Constr_57"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_59" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_18", %_TyDescrTy_Typ* @"$TyDescr_Uint256_22"]
@"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_TArgs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_49"*], [1 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_m_constrs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Pair_ADTTyp_54" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_61" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_10", %_TyDescrTy_Typ* @"$TyDescr_Uint64_14"]
@"$TyDescr_ADT_Pair_62" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_62", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_61", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_64" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_63"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_65" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_10", %_TyDescrTy_Typ* @"$TyDescr_Uint64_14"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_49"*], [1 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Pair_ADTTyp_54" }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_Constr_m_args_67" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_50"]
@"$TyDescr_ADT_Pair_68" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Constr_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_68", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_Constr_m_args_67", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_constrs_70" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Constr_69"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_TArgs_71" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint128_Uint256_50"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_TArgs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_49"*], [1 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_m_constrs_70", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Pair_ADTTyp_54" }
@"$TyDescr_Pair_ADTTyp_m_specls_73" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_47"*] [%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Uint128_Uint256_ADTTyp_Specl_60", %"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_66", %"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_ADTTyp_Specl_72"]
@"$TyDescr_ADT_Pair_74" = unnamed_addr constant [4 x i8] c"Pair"

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* @"$scilla_expr_75"(i8* %0) {
entry:
  %"$expr_5" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  %"$gasrem_76" = load i64, i64* @_gasrem
  %"$gascmp_77" = icmp ugt i64 1, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %entry
  %"$consume_80" = sub i64 %"$gasrem_76", 1
  store i64 %"$consume_80", i64* @_gasrem
  %zero = alloca [1 x i8]
  %"$gasrem_81" = load i64, i64* @_gasrem
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem
  store [1 x i8] zeroinitializer, [1 x i8]* %zero
  %"$gasrem_86" = load i64, i64* @_gasrem
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_84"
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem
  %one_1 = alloca [1 x i8]
  %"$gasrem_91" = load i64, i64* @_gasrem
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem
  store [1 x i8] c"\01", [1 x i8]* %one_1
  %"$gasrem_96" = load i64, i64* @_gasrem
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem
  %one_3 = alloca [3 x i8]
  %"$gasrem_101" = load i64, i64* @_gasrem
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem
  store [3 x i8] c"\00\00\01", [3 x i8]* %one_3
  %"$gasrem_106" = load i64, i64* @_gasrem
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem
  %one_4 = alloca [4 x i8]
  %"$gasrem_111" = load i64, i64* @_gasrem
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem
  store [4 x i8] c"\00\00\00\01", [4 x i8]* %one_4
  %"$gasrem_116" = load i64, i64* @_gasrem
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem
  %one_8 = alloca [8 x i8]
  %"$gasrem_121" = load i64, i64* @_gasrem
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem
  store [8 x i8] c"\00\00\00\00\00\00\00\01", [8 x i8]* %one_8
  %"$gasrem_126" = load i64, i64* @_gasrem
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem
  %one_16 = alloca [16 x i8]
  %"$gasrem_131" = load i64, i64* @_gasrem
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem
  store [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8]* %one_16
  %"$gasrem_136" = load i64, i64* @_gasrem
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem
  %one_32 = alloca [32 x i8]
  %"$gasrem_141" = load i64, i64* @_gasrem
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem
  store [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [32 x i8]* %one_32
  %"$gasrem_146" = load i64, i64* @_gasrem
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem
  %res7 = alloca %Uint32
  %"$execptr_load_151" = load i8*, i8** @_execptr
  %"$to_uint32_zero_152" = alloca [1 x i8]
  %"$zero_153" = load [1 x i8], [1 x i8]* %zero
  store [1 x i8] %"$zero_153", [1 x i8]* %"$to_uint32_zero_152"
  %"$$to_uint32_zero_152_154" = bitcast [1 x i8]* %"$to_uint32_zero_152" to i8*
  %"$to_uint32_call_155" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_151", i32 1, i8* %"$$to_uint32_zero_152_154")
  store %Uint32 %"$to_uint32_call_155", %Uint32* %res7
  %"$gasrem_156" = load i64, i64* @_gasrem
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_149"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem
  %res8 = alloca %Uint32
  %"$execptr_load_161" = load i8*, i8** @_execptr
  %"$to_uint32_one_1_162" = alloca [1 x i8]
  %"$one_1_163" = load [1 x i8], [1 x i8]* %one_1
  store [1 x i8] %"$one_1_163", [1 x i8]* %"$to_uint32_one_1_162"
  %"$$to_uint32_one_1_162_164" = bitcast [1 x i8]* %"$to_uint32_one_1_162" to i8*
  %"$to_uint32_call_165" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_161", i32 1, i8* %"$$to_uint32_one_1_162_164")
  store %Uint32 %"$to_uint32_call_165", %Uint32* %res8
  %"$gasrem_166" = load i64, i64* @_gasrem
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_159"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem
  %res9 = alloca %Uint32
  %"$execptr_load_171" = load i8*, i8** @_execptr
  %"$to_uint32_one_3_172" = alloca [3 x i8]
  %"$one_3_173" = load [3 x i8], [3 x i8]* %one_3
  store [3 x i8] %"$one_3_173", [3 x i8]* %"$to_uint32_one_3_172"
  %"$$to_uint32_one_3_172_174" = bitcast [3 x i8]* %"$to_uint32_one_3_172" to i8*
  %"$to_uint32_call_175" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_171", i32 3, i8* %"$$to_uint32_one_3_172_174")
  store %Uint32 %"$to_uint32_call_175", %Uint32* %res9
  %"$gasrem_176" = load i64, i64* @_gasrem
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_169"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem
  %res10 = alloca %Uint32
  %"$execptr_load_181" = load i8*, i8** @_execptr
  %"$to_uint32_one_4_182" = alloca [4 x i8]
  %"$one_4_183" = load [4 x i8], [4 x i8]* %one_4
  store [4 x i8] %"$one_4_183", [4 x i8]* %"$to_uint32_one_4_182"
  %"$$to_uint32_one_4_182_184" = bitcast [4 x i8]* %"$to_uint32_one_4_182" to i8*
  %"$to_uint32_call_185" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_181", i32 4, i8* %"$$to_uint32_one_4_182_184")
  store %Uint32 %"$to_uint32_call_185", %Uint32* %res10
  %"$gasrem_186" = load i64, i64* @_gasrem
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_179"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem
  %sum1 = alloca %Uint32
  %"$res7_191" = load %Uint32, %Uint32* %res7
  %"$res8_192" = load %Uint32, %Uint32* %res8
  %"$add_call_193" = call %Uint32 @_add_Uint32(%Uint32 %"$res7_191", %Uint32 %"$res8_192")
  store %Uint32 %"$add_call_193", %Uint32* %sum1
  %"$gasrem_194" = load i64, i64* @_gasrem
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_189"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem
  %sum2 = alloca %Uint32
  %"$res9_199" = load %Uint32, %Uint32* %res9
  %"$res10_200" = load %Uint32, %Uint32* %res10
  %"$add_call_201" = call %Uint32 @_add_Uint32(%Uint32 %"$res9_199", %Uint32 %"$res10_200")
  store %Uint32 %"$add_call_201", %Uint32* %sum2
  %"$gasrem_202" = load i64, i64* @_gasrem
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_197"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem
  %sum_32 = alloca %Uint32
  %"$sum1_207" = load %Uint32, %Uint32* %sum1
  %"$sum2_208" = load %Uint32, %Uint32* %sum2
  %"$add_call_209" = call %Uint32 @_add_Uint32(%Uint32 %"$sum1_207", %Uint32 %"$sum2_208")
  store %Uint32 %"$add_call_209", %Uint32* %sum_32
  %"$gasrem_210" = load i64, i64* @_gasrem
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_205"
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem
  %res12 = alloca %Uint64
  %"$execptr_load_215" = load i8*, i8** @_execptr
  %"$to_uint64_one_1_216" = alloca [1 x i8]
  %"$one_1_217" = load [1 x i8], [1 x i8]* %one_1
  store [1 x i8] %"$one_1_217", [1 x i8]* %"$to_uint64_one_1_216"
  %"$$to_uint64_one_1_216_218" = bitcast [1 x i8]* %"$to_uint64_one_1_216" to i8*
  %"$to_uint64_call_219" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_215", i32 1, i8* %"$$to_uint64_one_1_216_218")
  store %Uint64 %"$to_uint64_call_219", %Uint64* %res12
  %"$gasrem_220" = load i64, i64* @_gasrem
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_213"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem
  %res13 = alloca %Uint64
  %"$execptr_load_225" = load i8*, i8** @_execptr
  %"$to_uint64_one_4_226" = alloca [4 x i8]
  %"$one_4_227" = load [4 x i8], [4 x i8]* %one_4
  store [4 x i8] %"$one_4_227", [4 x i8]* %"$to_uint64_one_4_226"
  %"$$to_uint64_one_4_226_228" = bitcast [4 x i8]* %"$to_uint64_one_4_226" to i8*
  %"$to_uint64_call_229" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_225", i32 4, i8* %"$$to_uint64_one_4_226_228")
  store %Uint64 %"$to_uint64_call_229", %Uint64* %res13
  %"$gasrem_230" = load i64, i64* @_gasrem
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_223"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem
  %res14 = alloca %Uint64
  %"$execptr_load_235" = load i8*, i8** @_execptr
  %"$to_uint64_one_8_236" = alloca [8 x i8]
  %"$one_8_237" = load [8 x i8], [8 x i8]* %one_8
  store [8 x i8] %"$one_8_237", [8 x i8]* %"$to_uint64_one_8_236"
  %"$$to_uint64_one_8_236_238" = bitcast [8 x i8]* %"$to_uint64_one_8_236" to i8*
  %"$to_uint64_call_239" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_235", i32 8, i8* %"$$to_uint64_one_8_236_238")
  store %Uint64 %"$to_uint64_call_239", %Uint64* %res14
  %"$gasrem_240" = load i64, i64* @_gasrem
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_233"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem
  %"$sum1_0" = alloca %Uint64
  %"$res12_245" = load %Uint64, %Uint64* %res12
  %"$res13_246" = load %Uint64, %Uint64* %res13
  %"$add_call_247" = call %Uint64 @_add_Uint64(%Uint64 %"$res12_245", %Uint64 %"$res13_246")
  store %Uint64 %"$add_call_247", %Uint64* %"$sum1_0"
  %"$gasrem_248" = load i64, i64* @_gasrem
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_243"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem
  %sum_64 = alloca %Uint64
  %"$$sum1_0_253" = load %Uint64, %Uint64* %"$sum1_0"
  %"$res14_254" = load %Uint64, %Uint64* %res14
  %"$add_call_255" = call %Uint64 @_add_Uint64(%Uint64 %"$$sum1_0_253", %Uint64 %"$res14_254")
  store %Uint64 %"$add_call_255", %Uint64* %sum_64
  %"$gasrem_256" = load i64, i64* @_gasrem
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_251"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem
  %res15 = alloca %Uint128
  %"$execptr_load_261" = load i8*, i8** @_execptr
  %"$to_uint128_one_1_262" = alloca [1 x i8]
  %"$one_1_263" = load [1 x i8], [1 x i8]* %one_1
  store [1 x i8] %"$one_1_263", [1 x i8]* %"$to_uint128_one_1_262"
  %"$$to_uint128_one_1_262_264" = bitcast [1 x i8]* %"$to_uint128_one_1_262" to i8*
  %"$to_uint128_call_265" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_261", i32 1, i8* %"$$to_uint128_one_1_262_264")
  store %Uint128 %"$to_uint128_call_265", %Uint128* %res15
  %"$gasrem_266" = load i64, i64* @_gasrem
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_259"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem
  %res16 = alloca %Uint128
  %"$execptr_load_271" = load i8*, i8** @_execptr
  %"$to_uint128_one_4_272" = alloca [4 x i8]
  %"$one_4_273" = load [4 x i8], [4 x i8]* %one_4
  store [4 x i8] %"$one_4_273", [4 x i8]* %"$to_uint128_one_4_272"
  %"$$to_uint128_one_4_272_274" = bitcast [4 x i8]* %"$to_uint128_one_4_272" to i8*
  %"$to_uint128_call_275" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_271", i32 4, i8* %"$$to_uint128_one_4_272_274")
  store %Uint128 %"$to_uint128_call_275", %Uint128* %res16
  %"$gasrem_276" = load i64, i64* @_gasrem
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_269"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem
  %res17 = alloca %Uint128
  %"$execptr_load_281" = load i8*, i8** @_execptr
  %"$to_uint128_one_8_282" = alloca [8 x i8]
  %"$one_8_283" = load [8 x i8], [8 x i8]* %one_8
  store [8 x i8] %"$one_8_283", [8 x i8]* %"$to_uint128_one_8_282"
  %"$$to_uint128_one_8_282_284" = bitcast [8 x i8]* %"$to_uint128_one_8_282" to i8*
  %"$to_uint128_call_285" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_281", i32 8, i8* %"$$to_uint128_one_8_282_284")
  store %Uint128 %"$to_uint128_call_285", %Uint128* %res17
  %"$gasrem_286" = load i64, i64* @_gasrem
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$have_gas_279"
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem
  %res18 = alloca %Uint128
  %"$execptr_load_291" = load i8*, i8** @_execptr
  %"$to_uint128_one_16_292" = alloca [16 x i8]
  %"$one_16_293" = load [16 x i8], [16 x i8]* %one_16
  store [16 x i8] %"$one_16_293", [16 x i8]* %"$to_uint128_one_16_292"
  %"$$to_uint128_one_16_292_294" = bitcast [16 x i8]* %"$to_uint128_one_16_292" to i8*
  %"$to_uint128_call_295" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_291", i32 16, i8* %"$$to_uint128_one_16_292_294")
  store %Uint128 %"$to_uint128_call_295", %Uint128* %res18
  %"$gasrem_296" = load i64, i64* @_gasrem
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_289"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_289"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem
  %"$sum1_1" = alloca %Uint128
  %"$res15_301" = load %Uint128, %Uint128* %res15
  %"$res16_302" = load %Uint128, %Uint128* %res16
  %"$add_call_303" = call %Uint128 @_add_Uint128(%Uint128 %"$res15_301", %Uint128 %"$res16_302")
  store %Uint128 %"$add_call_303", %Uint128* %"$sum1_1"
  %"$gasrem_304" = load i64, i64* @_gasrem
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_299"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem
  %"$sum2_2" = alloca %Uint128
  %"$res17_309" = load %Uint128, %Uint128* %res17
  %"$res18_310" = load %Uint128, %Uint128* %res18
  %"$add_call_311" = call %Uint128 @_add_Uint128(%Uint128 %"$res17_309", %Uint128 %"$res18_310")
  store %Uint128 %"$add_call_311", %Uint128* %"$sum2_2"
  %"$gasrem_312" = load i64, i64* @_gasrem
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_307"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem
  %sum_128 = alloca %Uint128
  %"$$sum1_1_317" = load %Uint128, %Uint128* %"$sum1_1"
  %"$$sum2_2_318" = load %Uint128, %Uint128* %"$sum2_2"
  %"$add_call_319" = call %Uint128 @_add_Uint128(%Uint128 %"$$sum1_1_317", %Uint128 %"$$sum2_2_318")
  store %Uint128 %"$add_call_319", %Uint128* %sum_128
  %"$gasrem_320" = load i64, i64* @_gasrem
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_315"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem
  %res19 = alloca %Uint256
  %"$execptr_load_325" = load i8*, i8** @_execptr
  %"$to_uint256_one_1_326" = alloca [1 x i8]
  %"$one_1_327" = load [1 x i8], [1 x i8]* %one_1
  store [1 x i8] %"$one_1_327", [1 x i8]* %"$to_uint256_one_1_326"
  %"$$to_uint256_one_1_326_328" = bitcast [1 x i8]* %"$to_uint256_one_1_326" to i8*
  %"$to_uint256_call_329" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_325", i32 1, i8* %"$$to_uint256_one_1_326_328")
  %"$bystrx_to_uint_load_330" = load %Uint256, %Uint256* %"$to_uint256_call_329"
  store %Uint256 %"$bystrx_to_uint_load_330", %Uint256* %res19
  %"$gasrem_331" = load i64, i64* @_gasrem
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_323"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem
  %res20 = alloca %Uint256
  %"$execptr_load_336" = load i8*, i8** @_execptr
  %"$to_uint256_one_8_337" = alloca [8 x i8]
  %"$one_8_338" = load [8 x i8], [8 x i8]* %one_8
  store [8 x i8] %"$one_8_338", [8 x i8]* %"$to_uint256_one_8_337"
  %"$$to_uint256_one_8_337_339" = bitcast [8 x i8]* %"$to_uint256_one_8_337" to i8*
  %"$to_uint256_call_340" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_336", i32 8, i8* %"$$to_uint256_one_8_337_339")
  %"$bystrx_to_uint_load_341" = load %Uint256, %Uint256* %"$to_uint256_call_340"
  store %Uint256 %"$bystrx_to_uint_load_341", %Uint256* %res20
  %"$gasrem_342" = load i64, i64* @_gasrem
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_334"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem
  %res21 = alloca %Uint256
  %"$execptr_load_347" = load i8*, i8** @_execptr
  %"$to_uint256_one_16_348" = alloca [16 x i8]
  %"$one_16_349" = load [16 x i8], [16 x i8]* %one_16
  store [16 x i8] %"$one_16_349", [16 x i8]* %"$to_uint256_one_16_348"
  %"$$to_uint256_one_16_348_350" = bitcast [16 x i8]* %"$to_uint256_one_16_348" to i8*
  %"$to_uint256_call_351" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_347", i32 16, i8* %"$$to_uint256_one_16_348_350")
  %"$bystrx_to_uint_load_352" = load %Uint256, %Uint256* %"$to_uint256_call_351"
  store %Uint256 %"$bystrx_to_uint_load_352", %Uint256* %res21
  %"$gasrem_353" = load i64, i64* @_gasrem
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_345"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem
  %res22 = alloca %Uint256
  %"$execptr_load_358" = load i8*, i8** @_execptr
  %"$to_uint256_one_32_359" = alloca [32 x i8]
  %"$one_32_360" = load [32 x i8], [32 x i8]* %one_32
  store [32 x i8] %"$one_32_360", [32 x i8]* %"$to_uint256_one_32_359"
  %"$$to_uint256_one_32_359_361" = bitcast [32 x i8]* %"$to_uint256_one_32_359" to i8*
  %"$to_uint256_call_362" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_358", i32 32, i8* %"$$to_uint256_one_32_359_361")
  %"$bystrx_to_uint_load_363" = load %Uint256, %Uint256* %"$to_uint256_call_362"
  store %Uint256 %"$bystrx_to_uint_load_363", %Uint256* %res22
  %"$gasrem_364" = load i64, i64* @_gasrem
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_356"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem
  %"$sum1_3" = alloca %Uint256
  %"$execptr_load_369" = load i8*, i8** @_execptr
  %"$add_res19_370" = alloca %Uint256
  %"$res19_371" = load %Uint256, %Uint256* %res19
  store %Uint256 %"$res19_371", %Uint256* %"$add_res19_370"
  %"$add_res20_372" = alloca %Uint256
  %"$res20_373" = load %Uint256, %Uint256* %res20
  store %Uint256 %"$res20_373", %Uint256* %"$add_res20_372"
  %"$add_call_374" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_369", %Uint256* %"$add_res19_370", %Uint256* %"$add_res20_372")
  %"$add_375" = load %Uint256, %Uint256* %"$add_call_374"
  store %Uint256 %"$add_375", %Uint256* %"$sum1_3"
  %"$gasrem_376" = load i64, i64* @_gasrem
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_367"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem
  %"$sum2_4" = alloca %Uint256
  %"$execptr_load_381" = load i8*, i8** @_execptr
  %"$add_res21_382" = alloca %Uint256
  %"$res21_383" = load %Uint256, %Uint256* %res21
  store %Uint256 %"$res21_383", %Uint256* %"$add_res21_382"
  %"$add_res22_384" = alloca %Uint256
  %"$res22_385" = load %Uint256, %Uint256* %res22
  store %Uint256 %"$res22_385", %Uint256* %"$add_res22_384"
  %"$add_call_386" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_381", %Uint256* %"$add_res21_382", %Uint256* %"$add_res22_384")
  %"$add_387" = load %Uint256, %Uint256* %"$add_call_386"
  store %Uint256 %"$add_387", %Uint256* %"$sum2_4"
  %"$gasrem_388" = load i64, i64* @_gasrem
  %"$gascmp_389" = icmp ugt i64 1, %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_379"
  %"$consume_392" = sub i64 %"$gasrem_388", 1
  store i64 %"$consume_392", i64* @_gasrem
  %sum_256 = alloca %Uint256
  %"$execptr_load_393" = load i8*, i8** @_execptr
  %"$add_$sum1_3_394" = alloca %Uint256
  %"$$sum1_3_395" = load %Uint256, %Uint256* %"$sum1_3"
  store %Uint256 %"$$sum1_3_395", %Uint256* %"$add_$sum1_3_394"
  %"$add_$sum2_4_396" = alloca %Uint256
  %"$$sum2_4_397" = load %Uint256, %Uint256* %"$sum2_4"
  store %Uint256 %"$$sum2_4_397", %Uint256* %"$add_$sum2_4_396"
  %"$add_call_398" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_393", %Uint256* %"$add_$sum1_3_394", %Uint256* %"$add_$sum2_4_396")
  %"$add_399" = load %Uint256, %Uint256* %"$add_call_398"
  store %Uint256 %"$add_399", %Uint256* %sum_256
  %"$gasrem_400" = load i64, i64* @_gasrem
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_391"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem
  %respair1 = alloca %TName_Pair_Uint32_Uint64*
  %"$gasrem_405" = load i64, i64* @_gasrem
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem
  %"$sum_32_410" = load %Uint32, %Uint32* %sum_32
  %"$sum_64_411" = load %Uint64, %Uint64* %sum_64
  %"$adtval_412_load" = load i8*, i8** @_execptr
  %"$adtval_412_salloc" = call i8* @_salloc(i8* %"$adtval_412_load", i64 13)
  %"$adtval_412" = bitcast i8* %"$adtval_412_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_413" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_412", i32 0, i32 0
  store i8 0, i8* %"$adtgep_413"
  %"$adtgep_414" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_412", i32 0, i32 1
  store %Uint32 %"$sum_32_410", %Uint32* %"$adtgep_414"
  %"$adtgep_415" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_412", i32 0, i32 2
  store %Uint64 %"$sum_64_411", %Uint64* %"$adtgep_415"
  %"$adtptr_416" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_412" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_416", %TName_Pair_Uint32_Uint64** %respair1
  %"$gasrem_417" = load i64, i64* @_gasrem
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_408"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem
  %respair2 = alloca %TName_Pair_Uint128_Uint256*
  %"$gasrem_422" = load i64, i64* @_gasrem
  %"$gascmp_423" = icmp ugt i64 1, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %"$have_gas_420"
  %"$consume_426" = sub i64 %"$gasrem_422", 1
  store i64 %"$consume_426", i64* @_gasrem
  %"$sum_128_427" = load %Uint128, %Uint128* %sum_128
  %"$sum_256_428" = load %Uint256, %Uint256* %sum_256
  %"$adtval_429_load" = load i8*, i8** @_execptr
  %"$adtval_429_salloc" = call i8* @_salloc(i8* %"$adtval_429_load", i64 49)
  %"$adtval_429" = bitcast i8* %"$adtval_429_salloc" to %CName_Pair_Uint128_Uint256*
  %"$adtgep_430" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_429", i32 0, i32 0
  store i8 0, i8* %"$adtgep_430"
  %"$adtgep_431" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_429", i32 0, i32 1
  store %Uint128 %"$sum_128_427", %Uint128* %"$adtgep_431"
  %"$adtgep_432" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_429", i32 0, i32 2
  store %Uint256 %"$sum_256_428", %Uint256* %"$adtgep_432"
  %"$adtptr_433" = bitcast %CName_Pair_Uint128_Uint256* %"$adtval_429" to %TName_Pair_Uint128_Uint256*
  store %TName_Pair_Uint128_Uint256* %"$adtptr_433", %TName_Pair_Uint128_Uint256** %respair2
  %"$gasrem_434" = load i64, i64* @_gasrem
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_425"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_425"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem
  %restuple = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  %"$gasrem_439" = load i64, i64* @_gasrem
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem
  %"$respair1_444" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %respair1
  %"$respair2_445" = load %TName_Pair_Uint128_Uint256*, %TName_Pair_Uint128_Uint256** %respair2
  %"$adtval_446_load" = load i8*, i8** @_execptr
  %"$adtval_446_salloc" = call i8* @_salloc(i8* %"$adtval_446_load", i64 17)
  %"$adtval_446" = bitcast i8* %"$adtval_446_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  %"$adtgep_447" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_446", i32 0, i32 0
  store i8 0, i8* %"$adtgep_447"
  %"$adtgep_448" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_446", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$respair1_444", %TName_Pair_Uint32_Uint64** %"$adtgep_448"
  %"$adtgep_449" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_446", i32 0, i32 2
  store %TName_Pair_Uint128_Uint256* %"$respair2_445", %TName_Pair_Uint128_Uint256** %"$adtgep_449"
  %"$adtptr_450" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_446" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtptr_450", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple
  %"$gasrem_451" = load i64, i64* @_gasrem
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_442"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem
  %"$restuple_456" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$restuple_456", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_5"
  %"$$expr_5_457" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_5"
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$$expr_5_457"
}

declare void @_out_of_gas()

declare %Uint32 @_bystrx_to_uint32(i8*, i32, i8*)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare %Uint64 @_bystrx_to_uint64(i8*, i32, i8*)

declare %Uint64 @_add_Uint64(%Uint64, %Uint64)

declare %Uint128 @_bystrx_to_uint128(i8*, i32, i8*)

declare %Uint128 @_add_Uint128(%Uint128, %Uint128)

declare %Uint256* @_bystrx_to_uint256(i8*, i32, i8*)

declare %Uint256* @_add_Uint256(i8*, %Uint256*, %Uint256*)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_458" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* @"$scilla_expr_75"(i8* null)
  %"$memvoidcast_459" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$exprval_458" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_52", i8* %"$memvoidcast_459")
  ret void
}
