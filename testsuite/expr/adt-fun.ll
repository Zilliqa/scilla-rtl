; let f =
; fun (a : Int32) =>
; let n = Nil {Int32} in
; Cons {Int32}  a n
; in
; let i = Int32 0 in
; f i
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_26" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_25"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_25" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_27"**, %"$TyDescrTy_ADTTyp_26"* }
%"$TyDescrTy_ADTTyp_Constr_27" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>
%"$$fundef_2_env_42" = type {}
%Int32 = type { i32 }

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_5" = global %"$TyDescrTy_PrimTyp_4" zeroinitializer
@"$TyDescr_Int32_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int32_Prim_5" to i8*) }
@"$TyDescr_Uint32_Prim_7" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 0 }
@"$TyDescr_Uint32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint32_Prim_7" to i8*) }
@"$TyDescr_Int64_Prim_9" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 1 }
@"$TyDescr_Int64_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int64_Prim_9" to i8*) }
@"$TyDescr_Uint64_Prim_11" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 1 }
@"$TyDescr_Uint64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint64_Prim_11" to i8*) }
@"$TyDescr_Int128_Prim_13" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 2 }
@"$TyDescr_Int128_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int128_Prim_13" to i8*) }
@"$TyDescr_Uint128_Prim_15" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 2 }
@"$TyDescr_Uint128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint128_Prim_15" to i8*) }
@"$TyDescr_Int256_Prim_17" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 3 }
@"$TyDescr_Int256_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int256_Prim_17" to i8*) }
@"$TyDescr_Uint256_Prim_19" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 3 }
@"$TyDescr_Uint256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint256_Prim_19" to i8*) }
@"$TyDescr_String_Prim_21" = global %"$TyDescrTy_PrimTyp_4" { i32 2, i32 0 }
@"$TyDescr_String_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_String_Prim_21" to i8*) }
@"$TyDescr_Bystr_Prim_23" = global %"$TyDescrTy_PrimTyp_4" { i32 7, i32 0 }
@"$TyDescr_Bystr_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr_Prim_23" to i8*) }
@"$TyDescr_ADT_List_Int32_28" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_25"* @"$TyDescr_List_Int32_ADTTyp_Specl_39" to i8*) }
@"$TyDescr_List_ADTTyp_30" = unnamed_addr constant %"$TyDescrTy_ADTTyp_26" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_41", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_25"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_25"*], [1 x %"$TyDescrTy_ADTTyp_Specl_25"*]* @"$TyDescr_List_ADTTyp_m_specls_40", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_31" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_28"]
@"$TyDescr_ADT_Cons_32" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_33" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_27" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_32", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_31", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_34" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_35" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_36" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_27" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_35", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_34", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_37" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_27"*] [%"$TyDescrTy_ADTTyp_Constr_27"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_33", %"$TyDescrTy_ADTTyp_Constr_27"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_36"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_38" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@"$TyDescr_List_Int32_ADTTyp_Specl_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_25" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_38", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_27"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_27"*], [2 x %"$TyDescrTy_ADTTyp_Constr_27"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_37", i32 0, i32 0), %"$TyDescrTy_ADTTyp_26"* @"$TyDescr_List_ADTTyp_30" }
@"$TyDescr_List_ADTTyp_m_specls_40" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_25"*] [%"$TyDescrTy_ADTTyp_Specl_25"* @"$TyDescr_List_Int32_ADTTyp_Specl_39"]
@"$TyDescr_ADT_List_41" = unnamed_addr constant [4 x i8] c"List"

define internal %TName_List_Int32* @"$fundef_2"(%"$$fundef_2_env_42"*, %Int32) {
entry:
  %"$retval_3" = alloca %TName_List_Int32*
  %n = alloca %TName_List_Int32*
  %"$adtval_43_load" = load i8*, i8** @_execptr
  %"$adtval_43_salloc" = call i8* @_salloc(i8* %"$adtval_43_load", i64 1)
  %"$adtval_43" = bitcast i8* %"$adtval_43_salloc" to %CName_Nil_Int32*
  %"$adtgep_44" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_43", i32 0, i32 0
  store i8 1, i8* %"$adtgep_44"
  %"$adtptr_45" = bitcast %CName_Nil_Int32* %"$adtval_43" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_45", %TName_List_Int32** %n
  %"$n_46" = load %TName_List_Int32*, %TName_List_Int32** %n
  %"$adtval_47_load" = load i8*, i8** @_execptr
  %"$adtval_47_salloc" = call i8* @_salloc(i8* %"$adtval_47_load", i64 13)
  %"$adtval_47" = bitcast i8* %"$adtval_47_salloc" to %CName_Cons_Int32*
  %"$adtgep_48" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_47", i32 0, i32 0
  store i8 0, i8* %"$adtgep_48"
  %"$adtgep_49" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_47", i32 0, i32 1
  store %Int32 %1, %Int32* %"$adtgep_49"
  %"$adtgep_50" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$adtval_47", i32 0, i32 2
  store %TName_List_Int32* %"$n_46", %TName_List_Int32** %"$adtgep_50"
  %"$adtptr_51" = bitcast %CName_Cons_Int32* %"$adtval_47" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_51", %TName_List_Int32** %"$retval_3"
  %"$$retval_3_52" = load %TName_List_Int32*, %TName_List_Int32** %"$retval_3"
  ret %TName_List_Int32* %"$$retval_3_52"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_List_Int32* @"$scilla_expr_53"(i8*) {
entry:
  %"$expr_1" = alloca %TName_List_Int32*
  %f = alloca { %TName_List_Int32* (i8*, %Int32)*, i8* }
  store { %TName_List_Int32* (i8*, %Int32)*, i8* } { %TName_List_Int32* (i8*, %Int32)* bitcast (%TName_List_Int32* (%"$$fundef_2_env_42"*, %Int32)* @"$fundef_2" to %TName_List_Int32* (i8*, %Int32)*), i8* null }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f
  %i = alloca %Int32
  store %Int32 zeroinitializer, %Int32* %i
  %"$f_0" = alloca %TName_List_Int32*
  %"$f_57" = load { %TName_List_Int32* (i8*, %Int32)*, i8* }, { %TName_List_Int32* (i8*, %Int32)*, i8* }* %f
  %"$f_fptr_58" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_57", 0
  %"$f_envptr_59" = extractvalue { %TName_List_Int32* (i8*, %Int32)*, i8* } %"$f_57", 1
  %"$i_60" = load %Int32, %Int32* %i
  %"$f_call_61" = call %TName_List_Int32* %"$f_fptr_58"(i8* %"$f_envptr_59", %Int32 %"$i_60")
  store %TName_List_Int32* %"$f_call_61", %TName_List_Int32** %"$f_0"
  %"$$f_0_62" = load %TName_List_Int32*, %TName_List_Int32** %"$f_0"
  store %TName_List_Int32* %"$$f_0_62", %TName_List_Int32** %"$expr_1"
  %"$$expr_1_63" = load %TName_List_Int32*, %TName_List_Int32** %"$expr_1"
  ret %TName_List_Int32* %"$$expr_1_63"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_64" = call %TName_List_Int32* @"$scilla_expr_53"(i8* null)
  %"$memvoidcast_65" = bitcast %TName_List_Int32* %"$exprval_64" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_28", i8* %"$memvoidcast_65")
  ret void
}
