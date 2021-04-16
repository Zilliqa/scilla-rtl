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
target triple = "x86_64-unknown-linux-gnu"

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

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* @_scilla_expr_fun(i8* %0) !dbg !9 {
entry:
  %"$expr_5" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, align 8
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %entry
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem, align 8
  %zero = alloca [1 x i8], align 1
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 1, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %"$have_gas_78"
  %"$consume_84" = sub i64 %"$gasrem_80", 1
  store i64 %"$consume_84", i64* @_gasrem, align 8
  store [1 x i8] zeroinitializer, [1 x i8]* %zero, align 1, !dbg !10
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %"$have_gas_83"
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %"$have_gas_83"
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  %one_1 = alloca [1 x i8], align 1
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  store [1 x i8] c"\01", [1 x i8]* %one_1, align 1, !dbg !11
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  %one_3 = alloca [3 x i8], align 1
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  store [3 x i8] c"\00\00\01", [3 x i8]* %one_3, align 1, !dbg !12
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_103"
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  %one_4 = alloca [4 x i8], align 1
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  store [4 x i8] c"\00\00\00\01", [4 x i8]* %one_4, align 1, !dbg !13
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %one_8 = alloca [8 x i8], align 1
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  store [8 x i8] c"\00\00\00\00\00\00\00\01", [8 x i8]* %one_8, align 1, !dbg !14
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %one_16 = alloca [16 x i8], align 1
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [16 x i8]* %one_16, align 1, !dbg !15
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %one_32 = alloca [32 x i8], align 1
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  store [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [32 x i8]* %one_32, align 1, !dbg !16
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %res7 = alloca %Uint32, align 8
  %"$execptr_load_150" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_zero_151" = alloca [1 x i8], align 1
  %"$zero_152" = load [1 x i8], [1 x i8]* %zero, align 1
  store [1 x i8] %"$zero_152", [1 x i8]* %"$to_uint32_zero_151", align 1
  %"$$to_uint32_zero_151_153" = bitcast [1 x i8]* %"$to_uint32_zero_151" to i8*
  %"$to_uint32_call_154" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_150", i32 1, i8* %"$$to_uint32_zero_151_153")
  store %Uint32 %"$to_uint32_call_154", %Uint32* %res7, align 4, !dbg !17
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_148"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %res8 = alloca %Uint32, align 8
  %"$execptr_load_160" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_1_161" = alloca [1 x i8], align 1
  %"$one_1_162" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_162", [1 x i8]* %"$to_uint32_one_1_161", align 1
  %"$$to_uint32_one_1_161_163" = bitcast [1 x i8]* %"$to_uint32_one_1_161" to i8*
  %"$to_uint32_call_164" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_160", i32 1, i8* %"$$to_uint32_one_1_161_163")
  store %Uint32 %"$to_uint32_call_164", %Uint32* %res8, align 4, !dbg !18
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_158"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %res9 = alloca %Uint32, align 8
  %"$execptr_load_170" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_3_171" = alloca [3 x i8], align 1
  %"$one_3_172" = load [3 x i8], [3 x i8]* %one_3, align 1
  store [3 x i8] %"$one_3_172", [3 x i8]* %"$to_uint32_one_3_171", align 1
  %"$$to_uint32_one_3_171_173" = bitcast [3 x i8]* %"$to_uint32_one_3_171" to i8*
  %"$to_uint32_call_174" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_170", i32 3, i8* %"$$to_uint32_one_3_171_173")
  store %Uint32 %"$to_uint32_call_174", %Uint32* %res9, align 4, !dbg !19
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_168"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %res10 = alloca %Uint32, align 8
  %"$execptr_load_180" = load i8*, i8** @_execptr, align 8
  %"$to_uint32_one_4_181" = alloca [4 x i8], align 1
  %"$one_4_182" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_182", [4 x i8]* %"$to_uint32_one_4_181", align 1
  %"$$to_uint32_one_4_181_183" = bitcast [4 x i8]* %"$to_uint32_one_4_181" to i8*
  %"$to_uint32_call_184" = call %Uint32 @_bystrx_to_uint32(i8* %"$execptr_load_180", i32 4, i8* %"$$to_uint32_one_4_181_183")
  store %Uint32 %"$to_uint32_call_184", %Uint32* %res10, align 4, !dbg !20
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_178"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %sum1 = alloca %Uint32, align 8
  %"$res7_190" = load %Uint32, %Uint32* %res7, align 4
  %"$res8_191" = load %Uint32, %Uint32* %res8, align 4
  %"$add_call_192" = call %Uint32 @_add_Uint32(%Uint32 %"$res7_190", %Uint32 %"$res8_191")
  store %Uint32 %"$add_call_192", %Uint32* %sum1, align 4, !dbg !21
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_188"
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %sum2 = alloca %Uint32, align 8
  %"$res9_198" = load %Uint32, %Uint32* %res9, align 4
  %"$res10_199" = load %Uint32, %Uint32* %res10, align 4
  %"$add_call_200" = call %Uint32 @_add_Uint32(%Uint32 %"$res9_198", %Uint32 %"$res10_199")
  store %Uint32 %"$add_call_200", %Uint32* %sum2, align 4, !dbg !22
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 1, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %"$have_gas_196"
  %"$consume_205" = sub i64 %"$gasrem_201", 1
  store i64 %"$consume_205", i64* @_gasrem, align 8
  %sum_32 = alloca %Uint32, align 8
  %"$sum1_206" = load %Uint32, %Uint32* %sum1, align 4
  %"$sum2_207" = load %Uint32, %Uint32* %sum2, align 4
  %"$add_call_208" = call %Uint32 @_add_Uint32(%Uint32 %"$sum1_206", %Uint32 %"$sum2_207")
  store %Uint32 %"$add_call_208", %Uint32* %sum_32, align 4, !dbg !23
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_204"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %res12 = alloca %Uint64, align 8
  %"$execptr_load_214" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_1_215" = alloca [1 x i8], align 1
  %"$one_1_216" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_216", [1 x i8]* %"$to_uint64_one_1_215", align 1
  %"$$to_uint64_one_1_215_217" = bitcast [1 x i8]* %"$to_uint64_one_1_215" to i8*
  %"$to_uint64_call_218" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_214", i32 1, i8* %"$$to_uint64_one_1_215_217")
  store %Uint64 %"$to_uint64_call_218", %Uint64* %res12, align 8, !dbg !24
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_212"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %res13 = alloca %Uint64, align 8
  %"$execptr_load_224" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_4_225" = alloca [4 x i8], align 1
  %"$one_4_226" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_226", [4 x i8]* %"$to_uint64_one_4_225", align 1
  %"$$to_uint64_one_4_225_227" = bitcast [4 x i8]* %"$to_uint64_one_4_225" to i8*
  %"$to_uint64_call_228" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_224", i32 4, i8* %"$$to_uint64_one_4_225_227")
  store %Uint64 %"$to_uint64_call_228", %Uint64* %res13, align 8, !dbg !25
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_222"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %res14 = alloca %Uint64, align 8
  %"$execptr_load_234" = load i8*, i8** @_execptr, align 8
  %"$to_uint64_one_8_235" = alloca [8 x i8], align 1
  %"$one_8_236" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_236", [8 x i8]* %"$to_uint64_one_8_235", align 1
  %"$$to_uint64_one_8_235_237" = bitcast [8 x i8]* %"$to_uint64_one_8_235" to i8*
  %"$to_uint64_call_238" = call %Uint64 @_bystrx_to_uint64(i8* %"$execptr_load_234", i32 8, i8* %"$$to_uint64_one_8_235_237")
  store %Uint64 %"$to_uint64_call_238", %Uint64* %res14, align 8, !dbg !26
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_232"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$sum1_0" = alloca %Uint64, align 8
  %"$res12_244" = load %Uint64, %Uint64* %res12, align 8
  %"$res13_245" = load %Uint64, %Uint64* %res13, align 8
  %"$add_call_246" = call %Uint64 @_add_Uint64(%Uint64 %"$res12_244", %Uint64 %"$res13_245")
  store %Uint64 %"$add_call_246", %Uint64* %"$sum1_0", align 8, !dbg !27
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_242"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %sum_64 = alloca %Uint64, align 8
  %"$$sum1_0_252" = load %Uint64, %Uint64* %"$sum1_0", align 8
  %"$res14_253" = load %Uint64, %Uint64* %res14, align 8
  %"$add_call_254" = call %Uint64 @_add_Uint64(%Uint64 %"$$sum1_0_252", %Uint64 %"$res14_253")
  store %Uint64 %"$add_call_254", %Uint64* %sum_64, align 8, !dbg !28
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_250"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %res15 = alloca %Uint128, align 8
  %"$execptr_load_260" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_1_261" = alloca [1 x i8], align 1
  %"$one_1_262" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_262", [1 x i8]* %"$to_uint128_one_1_261", align 1
  %"$$to_uint128_one_1_261_263" = bitcast [1 x i8]* %"$to_uint128_one_1_261" to i8*
  %"$to_uint128_call_264" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_260", i32 1, i8* %"$$to_uint128_one_1_261_263")
  store %Uint128 %"$to_uint128_call_264", %Uint128* %res15, align 8, !dbg !29
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_258"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %res16 = alloca %Uint128, align 8
  %"$execptr_load_270" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_4_271" = alloca [4 x i8], align 1
  %"$one_4_272" = load [4 x i8], [4 x i8]* %one_4, align 1
  store [4 x i8] %"$one_4_272", [4 x i8]* %"$to_uint128_one_4_271", align 1
  %"$$to_uint128_one_4_271_273" = bitcast [4 x i8]* %"$to_uint128_one_4_271" to i8*
  %"$to_uint128_call_274" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_270", i32 4, i8* %"$$to_uint128_one_4_271_273")
  store %Uint128 %"$to_uint128_call_274", %Uint128* %res16, align 8, !dbg !30
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_268"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_268"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %res17 = alloca %Uint128, align 8
  %"$execptr_load_280" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_8_281" = alloca [8 x i8], align 1
  %"$one_8_282" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_282", [8 x i8]* %"$to_uint128_one_8_281", align 1
  %"$$to_uint128_one_8_281_283" = bitcast [8 x i8]* %"$to_uint128_one_8_281" to i8*
  %"$to_uint128_call_284" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_280", i32 8, i8* %"$$to_uint128_one_8_281_283")
  store %Uint128 %"$to_uint128_call_284", %Uint128* %res17, align 8, !dbg !31
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_278"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %res18 = alloca %Uint128, align 8
  %"$execptr_load_290" = load i8*, i8** @_execptr, align 8
  %"$to_uint128_one_16_291" = alloca [16 x i8], align 1
  %"$one_16_292" = load [16 x i8], [16 x i8]* %one_16, align 1
  store [16 x i8] %"$one_16_292", [16 x i8]* %"$to_uint128_one_16_291", align 1
  %"$$to_uint128_one_16_291_293" = bitcast [16 x i8]* %"$to_uint128_one_16_291" to i8*
  %"$to_uint128_call_294" = call %Uint128 @_bystrx_to_uint128(i8* %"$execptr_load_290", i32 16, i8* %"$$to_uint128_one_16_291_293")
  store %Uint128 %"$to_uint128_call_294", %Uint128* %res18, align 8, !dbg !32
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_288"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %"$sum1_1" = alloca %Uint128, align 8
  %"$res15_300" = load %Uint128, %Uint128* %res15, align 8
  %"$res16_301" = load %Uint128, %Uint128* %res16, align 8
  %"$add_call_302" = call %Uint128 @_add_Uint128(%Uint128 %"$res15_300", %Uint128 %"$res16_301")
  store %Uint128 %"$add_call_302", %Uint128* %"$sum1_1", align 8, !dbg !33
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_298"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %"$sum2_2" = alloca %Uint128, align 8
  %"$res17_308" = load %Uint128, %Uint128* %res17, align 8
  %"$res18_309" = load %Uint128, %Uint128* %res18, align 8
  %"$add_call_310" = call %Uint128 @_add_Uint128(%Uint128 %"$res17_308", %Uint128 %"$res18_309")
  store %Uint128 %"$add_call_310", %Uint128* %"$sum2_2", align 8, !dbg !34
  %"$gasrem_311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_312" = icmp ugt i64 1, %"$gasrem_311"
  br i1 %"$gascmp_312", label %"$out_of_gas_313", label %"$have_gas_314"

"$out_of_gas_313":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_314"

"$have_gas_314":                                  ; preds = %"$out_of_gas_313", %"$have_gas_306"
  %"$consume_315" = sub i64 %"$gasrem_311", 1
  store i64 %"$consume_315", i64* @_gasrem, align 8
  %sum_128 = alloca %Uint128, align 8
  %"$$sum1_1_316" = load %Uint128, %Uint128* %"$sum1_1", align 8
  %"$$sum2_2_317" = load %Uint128, %Uint128* %"$sum2_2", align 8
  %"$add_call_318" = call %Uint128 @_add_Uint128(%Uint128 %"$$sum1_1_316", %Uint128 %"$$sum2_2_317")
  store %Uint128 %"$add_call_318", %Uint128* %sum_128, align 8, !dbg !35
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_314"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_314"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %res19 = alloca %Uint256, align 8
  %"$execptr_load_324" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_1_325" = alloca [1 x i8], align 1
  %"$one_1_326" = load [1 x i8], [1 x i8]* %one_1, align 1
  store [1 x i8] %"$one_1_326", [1 x i8]* %"$to_uint256_one_1_325", align 1
  %"$$to_uint256_one_1_325_327" = bitcast [1 x i8]* %"$to_uint256_one_1_325" to i8*
  %"$to_uint256_call_328" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_324", i32 1, i8* %"$$to_uint256_one_1_325_327")
  %"$bystrx_to_uint_load_329" = load %Uint256, %Uint256* %"$to_uint256_call_328", align 8
  store %Uint256 %"$bystrx_to_uint_load_329", %Uint256* %res19, align 8, !dbg !36
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_322"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %res20 = alloca %Uint256, align 8
  %"$execptr_load_335" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_8_336" = alloca [8 x i8], align 1
  %"$one_8_337" = load [8 x i8], [8 x i8]* %one_8, align 1
  store [8 x i8] %"$one_8_337", [8 x i8]* %"$to_uint256_one_8_336", align 1
  %"$$to_uint256_one_8_336_338" = bitcast [8 x i8]* %"$to_uint256_one_8_336" to i8*
  %"$to_uint256_call_339" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_335", i32 8, i8* %"$$to_uint256_one_8_336_338")
  %"$bystrx_to_uint_load_340" = load %Uint256, %Uint256* %"$to_uint256_call_339", align 8
  store %Uint256 %"$bystrx_to_uint_load_340", %Uint256* %res20, align 8, !dbg !37
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_333"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %res21 = alloca %Uint256, align 8
  %"$execptr_load_346" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_16_347" = alloca [16 x i8], align 1
  %"$one_16_348" = load [16 x i8], [16 x i8]* %one_16, align 1
  store [16 x i8] %"$one_16_348", [16 x i8]* %"$to_uint256_one_16_347", align 1
  %"$$to_uint256_one_16_347_349" = bitcast [16 x i8]* %"$to_uint256_one_16_347" to i8*
  %"$to_uint256_call_350" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_346", i32 16, i8* %"$$to_uint256_one_16_347_349")
  %"$bystrx_to_uint_load_351" = load %Uint256, %Uint256* %"$to_uint256_call_350", align 8
  store %Uint256 %"$bystrx_to_uint_load_351", %Uint256* %res21, align 8, !dbg !38
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$have_gas_344"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %res22 = alloca %Uint256, align 8
  %"$execptr_load_357" = load i8*, i8** @_execptr, align 8
  %"$to_uint256_one_32_358" = alloca [32 x i8], align 1
  %"$one_32_359" = load [32 x i8], [32 x i8]* %one_32, align 1
  store [32 x i8] %"$one_32_359", [32 x i8]* %"$to_uint256_one_32_358", align 1
  %"$$to_uint256_one_32_358_360" = bitcast [32 x i8]* %"$to_uint256_one_32_358" to i8*
  %"$to_uint256_call_361" = call %Uint256* @_bystrx_to_uint256(i8* %"$execptr_load_357", i32 32, i8* %"$$to_uint256_one_32_358_360")
  %"$bystrx_to_uint_load_362" = load %Uint256, %Uint256* %"$to_uint256_call_361", align 8
  store %Uint256 %"$bystrx_to_uint_load_362", %Uint256* %res22, align 8, !dbg !39
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_355"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %"$sum1_3" = alloca %Uint256, align 8
  %"$execptr_load_368" = load i8*, i8** @_execptr, align 8
  %"$add_res19_369" = alloca %Uint256, align 8
  %"$res19_370" = load %Uint256, %Uint256* %res19, align 8
  store %Uint256 %"$res19_370", %Uint256* %"$add_res19_369", align 8
  %"$add_res20_371" = alloca %Uint256, align 8
  %"$res20_372" = load %Uint256, %Uint256* %res20, align 8
  store %Uint256 %"$res20_372", %Uint256* %"$add_res20_371", align 8
  %"$add_call_373" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_368", %Uint256* %"$add_res19_369", %Uint256* %"$add_res20_371")
  %"$add_374" = load %Uint256, %Uint256* %"$add_call_373", align 8
  store %Uint256 %"$add_374", %Uint256* %"$sum1_3", align 8, !dbg !40
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_366"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$sum2_4" = alloca %Uint256, align 8
  %"$execptr_load_380" = load i8*, i8** @_execptr, align 8
  %"$add_res21_381" = alloca %Uint256, align 8
  %"$res21_382" = load %Uint256, %Uint256* %res21, align 8
  store %Uint256 %"$res21_382", %Uint256* %"$add_res21_381", align 8
  %"$add_res22_383" = alloca %Uint256, align 8
  %"$res22_384" = load %Uint256, %Uint256* %res22, align 8
  store %Uint256 %"$res22_384", %Uint256* %"$add_res22_383", align 8
  %"$add_call_385" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_380", %Uint256* %"$add_res21_381", %Uint256* %"$add_res22_383")
  %"$add_386" = load %Uint256, %Uint256* %"$add_call_385", align 8
  store %Uint256 %"$add_386", %Uint256* %"$sum2_4", align 8, !dbg !41
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_378"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %sum_256 = alloca %Uint256, align 8
  %"$execptr_load_392" = load i8*, i8** @_execptr, align 8
  %"$add_$sum1_3_393" = alloca %Uint256, align 8
  %"$$sum1_3_394" = load %Uint256, %Uint256* %"$sum1_3", align 8
  store %Uint256 %"$$sum1_3_394", %Uint256* %"$add_$sum1_3_393", align 8
  %"$add_$sum2_4_395" = alloca %Uint256, align 8
  %"$$sum2_4_396" = load %Uint256, %Uint256* %"$sum2_4", align 8
  store %Uint256 %"$$sum2_4_396", %Uint256* %"$add_$sum2_4_395", align 8
  %"$add_call_397" = call %Uint256* @_add_Uint256(i8* %"$execptr_load_392", %Uint256* %"$add_$sum1_3_393", %Uint256* %"$add_$sum2_4_395")
  %"$add_398" = load %Uint256, %Uint256* %"$add_call_397", align 8
  store %Uint256 %"$add_398", %Uint256* %sum_256, align 8, !dbg !42
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_390"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %respair1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_402"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$sum_32_409" = load %Uint32, %Uint32* %sum_32, align 4
  %"$sum_64_410" = load %Uint64, %Uint64* %sum_64, align 8
  %"$adtval_411_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_411_salloc" = call i8* @_salloc(i8* %"$adtval_411_load", i64 13)
  %"$adtval_411" = bitcast i8* %"$adtval_411_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_412" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_411", i32 0, i32 0
  store i8 0, i8* %"$adtgep_412", align 1
  %"$adtgep_413" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_411", i32 0, i32 1
  store %Uint32 %"$sum_32_409", %Uint32* %"$adtgep_413", align 4
  %"$adtgep_414" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_411", i32 0, i32 2
  store %Uint64 %"$sum_64_410", %Uint64* %"$adtgep_414", align 8
  %"$adtptr_415" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_411" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_415", %TName_Pair_Uint32_Uint64** %respair1, align 8, !dbg !43
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_407"
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem, align 8
  %respair2 = alloca %TName_Pair_Uint128_Uint256*, align 8
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_419"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %"$sum_128_426" = load %Uint128, %Uint128* %sum_128, align 8
  %"$sum_256_427" = load %Uint256, %Uint256* %sum_256, align 8
  %"$adtval_428_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_428_salloc" = call i8* @_salloc(i8* %"$adtval_428_load", i64 49)
  %"$adtval_428" = bitcast i8* %"$adtval_428_salloc" to %CName_Pair_Uint128_Uint256*
  %"$adtgep_429" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_428", i32 0, i32 0
  store i8 0, i8* %"$adtgep_429", align 1
  %"$adtgep_430" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_428", i32 0, i32 1
  store %Uint128 %"$sum_128_426", %Uint128* %"$adtgep_430", align 8
  %"$adtgep_431" = getelementptr inbounds %CName_Pair_Uint128_Uint256, %CName_Pair_Uint128_Uint256* %"$adtval_428", i32 0, i32 2
  store %Uint256 %"$sum_256_427", %Uint256* %"$adtgep_431", align 8
  %"$adtptr_432" = bitcast %CName_Pair_Uint128_Uint256* %"$adtval_428" to %TName_Pair_Uint128_Uint256*
  store %TName_Pair_Uint128_Uint256* %"$adtptr_432", %TName_Pair_Uint128_Uint256** %respair2, align 8, !dbg !44
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_424"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %restuple = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$respair1_443" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %respair1, align 8
  %"$respair2_444" = load %TName_Pair_Uint128_Uint256*, %TName_Pair_Uint128_Uint256** %respair2, align 8
  %"$adtval_445_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_445_salloc" = call i8* @_salloc(i8* %"$adtval_445_load", i64 17)
  %"$adtval_445" = bitcast i8* %"$adtval_445_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  %"$adtgep_446" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_445", i32 0, i32 0
  store i8 0, i8* %"$adtgep_446", align 1
  %"$adtgep_447" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_445", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$respair1_443", %TName_Pair_Uint32_Uint64** %"$adtgep_447", align 8
  %"$adtgep_448" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_445", i32 0, i32 2
  store %TName_Pair_Uint128_Uint256* %"$respair2_444", %TName_Pair_Uint128_Uint256** %"$adtgep_448", align 8
  %"$adtptr_449" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtval_445" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$adtptr_449", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple, align 8, !dbg !45
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_441"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  %"$restuple_455" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %restuple, align 8
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$restuple_455", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_5", align 8, !dbg !46
  %"$$expr_5_456" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"** %"$expr_5", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$$expr_5_456"
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
  %"$exprval_457" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_458" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)"* %"$exprval_457" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(Uint128)_(Uint256)_52", i8* %"$memvoidcast_458")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "bystrx_uint_conversions.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 1, column: 12, scope: !9)
!11 = !DILocation(line: 2, column: 13, scope: !9)
!12 = !DILocation(line: 3, column: 13, scope: !9)
!13 = !DILocation(line: 4, column: 13, scope: !9)
!14 = !DILocation(line: 5, column: 13, scope: !9)
!15 = !DILocation(line: 6, column: 14, scope: !9)
!16 = !DILocation(line: 7, column: 14, scope: !9)
!17 = !DILocation(line: 9, column: 12, scope: !9)
!18 = !DILocation(line: 10, column: 12, scope: !9)
!19 = !DILocation(line: 11, column: 12, scope: !9)
!20 = !DILocation(line: 12, column: 13, scope: !9)
!21 = !DILocation(line: 13, column: 12, scope: !9)
!22 = !DILocation(line: 14, column: 12, scope: !9)
!23 = !DILocation(line: 15, column: 14, scope: !9)
!24 = !DILocation(line: 17, column: 13, scope: !9)
!25 = !DILocation(line: 18, column: 13, scope: !9)
!26 = !DILocation(line: 19, column: 13, scope: !9)
!27 = !DILocation(line: 20, column: 12, scope: !9)
!28 = !DILocation(line: 21, column: 14, scope: !9)
!29 = !DILocation(line: 23, column: 13, scope: !9)
!30 = !DILocation(line: 24, column: 13, scope: !9)
!31 = !DILocation(line: 25, column: 13, scope: !9)
!32 = !DILocation(line: 26, column: 13, scope: !9)
!33 = !DILocation(line: 27, column: 12, scope: !9)
!34 = !DILocation(line: 28, column: 12, scope: !9)
!35 = !DILocation(line: 29, column: 15, scope: !9)
!36 = !DILocation(line: 31, column: 13, scope: !9)
!37 = !DILocation(line: 32, column: 13, scope: !9)
!38 = !DILocation(line: 33, column: 13, scope: !9)
!39 = !DILocation(line: 34, column: 13, scope: !9)
!40 = !DILocation(line: 35, column: 12, scope: !9)
!41 = !DILocation(line: 36, column: 12, scope: !9)
!42 = !DILocation(line: 37, column: 15, scope: !9)
!43 = !DILocation(line: 39, column: 16, scope: !9)
!44 = !DILocation(line: 40, column: 16, scope: !9)
!45 = !DILocation(line: 41, column: 16, scope: !9)
!46 = !DILocation(line: 43, column: 1, scope: !9)
