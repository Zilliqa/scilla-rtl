; let zero = Zero in
; let one = Succ zero in
; let two = Succ one in
; two
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_31" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_30"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_30" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_32"**, %"$TyDescrTy_ADTTyp_31"* }
%"$TyDescrTy_ADTTyp_Constr_32" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>

@_execptr = global i8* null
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
@"$TyDescr_ADT_Nat_33" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Nat_ADTTyp_Specl_44" to i8*) }
@"$TyDescr_Nat_ADTTyp_35" = unnamed_addr constant %"$TyDescrTy_ADTTyp_31" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_46", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_30"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_30"*], [1 x %"$TyDescrTy_ADTTyp_Specl_30"*]* @"$TyDescr_Nat_ADTTyp_m_specls_45", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_36" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_37" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_38" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_37", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_36", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_39" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_33"]
@"$TyDescr_ADT_Succ_40" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_32" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_40", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_39", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_42" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_32"*] [%"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_38", %"$TyDescrTy_ADTTyp_Constr_32"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_41"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_43" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_30" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_43", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_32"*], [2 x %"$TyDescrTy_ADTTyp_Constr_32"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_42", i32 0, i32 0), %"$TyDescrTy_ADTTyp_31"* @"$TyDescr_Nat_ADTTyp_35" }
@"$TyDescr_Nat_ADTTyp_m_specls_45" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_30"*] [%"$TyDescrTy_ADTTyp_Specl_30"* @"$TyDescr_Nat_ADTTyp_Specl_44"]
@"$TyDescr_ADT_Nat_46" = unnamed_addr constant [3 x i8] c"Nat"

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Nat* @"$scilla_expr_47"(i8* %0) {
entry:
  %"$expr_0" = alloca %TName_Nat*
  %zero = alloca %TName_Nat*
  %"$adtval_48_load" = load i8*, i8** @_execptr
  %"$adtval_48_salloc" = call i8* @_salloc(i8* %"$adtval_48_load", i64 1)
  %"$adtval_48" = bitcast i8* %"$adtval_48_salloc" to %CName_Zero*
  %"$adtgep_49" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_48", i32 0, i32 0
  store i8 0, i8* %"$adtgep_49"
  %"$adtptr_50" = bitcast %CName_Zero* %"$adtval_48" to %TName_Nat*
  store %TName_Nat* %"$adtptr_50", %TName_Nat** %zero
  %one = alloca %TName_Nat*
  %"$zero_51" = load %TName_Nat*, %TName_Nat** %zero
  %"$adtval_52_load" = load i8*, i8** @_execptr
  %"$adtval_52_salloc" = call i8* @_salloc(i8* %"$adtval_52_load", i64 9)
  %"$adtval_52" = bitcast i8* %"$adtval_52_salloc" to %CName_Succ*
  %"$adtgep_53" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_52", i32 0, i32 0
  store i8 1, i8* %"$adtgep_53"
  %"$adtgep_54" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_52", i32 0, i32 1
  store %TName_Nat* %"$zero_51", %TName_Nat** %"$adtgep_54"
  %"$adtptr_55" = bitcast %CName_Succ* %"$adtval_52" to %TName_Nat*
  store %TName_Nat* %"$adtptr_55", %TName_Nat** %one
  %two = alloca %TName_Nat*
  %"$one_56" = load %TName_Nat*, %TName_Nat** %one
  %"$adtval_57_load" = load i8*, i8** @_execptr
  %"$adtval_57_salloc" = call i8* @_salloc(i8* %"$adtval_57_load", i64 9)
  %"$adtval_57" = bitcast i8* %"$adtval_57_salloc" to %CName_Succ*
  %"$adtgep_58" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_57", i32 0, i32 0
  store i8 1, i8* %"$adtgep_58"
  %"$adtgep_59" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_57", i32 0, i32 1
  store %TName_Nat* %"$one_56", %TName_Nat** %"$adtgep_59"
  %"$adtptr_60" = bitcast %CName_Succ* %"$adtval_57" to %TName_Nat*
  store %TName_Nat* %"$adtptr_60", %TName_Nat** %two
  %"$two_61" = load %TName_Nat*, %TName_Nat** %two
  store %TName_Nat* %"$two_61", %TName_Nat** %"$expr_0"
  %"$$expr_0_62" = load %TName_Nat*, %TName_Nat** %"$expr_0"
  ret %TName_Nat* %"$$expr_0_62"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_63" = call %TName_Nat* @"$scilla_expr_47"(i8* null)
  %"$memvoidcast_64" = bitcast %TName_Nat* %"$exprval_63" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_33", i8* %"$memvoidcast_64")
  ret void
}
