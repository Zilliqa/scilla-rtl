; let f =
; fun (a : Int32) =>
; a
; in
; let i = Int32 0 in
; f i
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_2_env_29" = type {}
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

define internal %Int32 @"$fundef_2"(%"$$fundef_2_env_29"*, %Int32) {
entry:
  %"$retval_3" = alloca %Int32
  store %Int32 %1, %Int32* %"$retval_3"
  %"$$retval_3_30" = load %Int32, %Int32* %"$retval_3"
  ret %Int32 %"$$retval_3_30"
}

define internal %Int32 @"$scilla_expr_31"(i8*) {
entry:
  %"$expr_1" = alloca %Int32
  %f = alloca { %Int32 (i8*, %Int32)*, i8* }
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_2_env_29"*, %Int32)* @"$fundef_2" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %f
  %i = alloca %Int32
  store %Int32 zeroinitializer, %Int32* %i
  %"$f_0" = alloca %Int32
  %"$f_35" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %f
  %"$f_fptr_36" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$f_35", 0
  %"$f_envptr_37" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$f_35", 1
  %"$i_38" = load %Int32, %Int32* %i
  %"$f_call_39" = call %Int32 %"$f_fptr_36"(i8* %"$f_envptr_37", %Int32 %"$i_38")
  store %Int32 %"$f_call_39", %Int32* %"$f_0"
  %"$$f_0_40" = load %Int32, %Int32* %"$f_0"
  store %Int32 %"$$f_0_40", %Int32* %"$expr_1"
  %"$$expr_1_41" = load %Int32, %Int32* %"$expr_1"
  ret %Int32 %"$$expr_1_41"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_42" = call %Int32 @"$scilla_expr_31"(i8* null)
  %"$pval_43" = alloca %Int32
  %"$memvoidcast_44" = bitcast %Int32* %"$pval_43" to i8*
  store %Int32 %"$exprval_42", %Int32* %"$pval_43"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_6", i8* %"$memvoidcast_44")
  ret void
}
