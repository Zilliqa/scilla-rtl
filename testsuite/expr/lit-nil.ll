; Nil {Int32}
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_23" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_22"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_22" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_24"**, %"$TyDescrTy_ADTTyp_23"* }
%"$TyDescrTy_ADTTyp_Constr_24" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%Int32 = type { i32 }
%CName_Nil_Int32 = type <{ i8 }>

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
@"$TyDescr_Bystr_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_20" to i8*) }
@"$TyDescr_ADT_List_Int32_25" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_22"* @"$TyDescr_List_Int32_ADTTyp_Specl_36" to i8*) }
@"$TyDescr_List_ADTTyp_27" = unnamed_addr constant %"$TyDescrTy_ADTTyp_23" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_38", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_22"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_22"*], [1 x %"$TyDescrTy_ADTTyp_Specl_22"*]* @"$TyDescr_List_ADTTyp_m_specls_37", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_28" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_25"]
@"$TyDescr_ADT_Cons_29" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_30" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_24" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_29", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_28", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_31" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_32" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_33" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_24" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_32", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_31", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_34" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_24"*] [%"$TyDescrTy_ADTTyp_Constr_24"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_30", %"$TyDescrTy_ADTTyp_Constr_24"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_33"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_35" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_List_Int32_ADTTyp_Specl_36" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_22" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_35", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_24"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_24"*], [2 x %"$TyDescrTy_ADTTyp_Constr_24"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_34", i32 0, i32 0), %"$TyDescrTy_ADTTyp_23"* @"$TyDescr_List_ADTTyp_27" }
@"$TyDescr_List_ADTTyp_m_specls_37" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_22"*] [%"$TyDescrTy_ADTTyp_Specl_22"* @"$TyDescr_List_Int32_ADTTyp_Specl_36"]
@"$TyDescr_ADT_List_38" = unnamed_addr constant [4 x i8] c"List"

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_List_Int32* @"$scilla_expr_39"(i8*) {
entry:
  %"$expr_0" = alloca %TName_List_Int32*
  %"$adtval_40_load" = load i8*, i8** @_execptr
  %"$adtval_40_salloc" = call i8* @_salloc(i8* %"$adtval_40_load", i64 1)
  %"$adtval_40" = bitcast i8* %"$adtval_40_salloc" to %CName_Nil_Int32*
  %"$adtgep_41" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_40", i32 0, i32 0
  store i8 1, i8* %"$adtgep_41"
  %"$adtptr_42" = bitcast %CName_Nil_Int32* %"$adtval_40" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_42", %TName_List_Int32** %"$expr_0"
  %"$$expr_0_43" = load %TName_List_Int32*, %TName_List_Int32** %"$expr_0"
  ret %TName_List_Int32* %"$$expr_0_43"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_44" = call %TName_List_Int32* @"$scilla_expr_39"(i8* null)
  %"$memvoidcast_45" = bitcast %TName_List_Int32* %"$exprval_44" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_25", i8* %"$memvoidcast_45")
  ret void
}
