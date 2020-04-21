; let a = Uint32 1 in
; let f = fun (a : Uint32) => a in
; let b = f a in
; 
; builtin add a b
; 
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_3_env_30" = type {}
%Uint32 = type { i32 }

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_6" = global %"$TyDescrTy_PrimTyp_5" zeroinitializer
@"$TyDescr_Int32_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int32_Prim_6" to i8*) }
@"$TyDescr_Uint32_Prim_8" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 0 }
@"$TyDescr_Uint32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint32_Prim_8" to i8*) }
@"$TyDescr_Int64_Prim_10" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 1 }
@"$TyDescr_Int64_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int64_Prim_10" to i8*) }
@"$TyDescr_Uint64_Prim_12" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 1 }
@"$TyDescr_Uint64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint64_Prim_12" to i8*) }
@"$TyDescr_Int128_Prim_14" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 2 }
@"$TyDescr_Int128_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int128_Prim_14" to i8*) }
@"$TyDescr_Uint128_Prim_16" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 2 }
@"$TyDescr_Uint128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint128_Prim_16" to i8*) }
@"$TyDescr_Int256_Prim_18" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 3 }
@"$TyDescr_Int256_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int256_Prim_18" to i8*) }
@"$TyDescr_Uint256_Prim_20" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 3 }
@"$TyDescr_Uint256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint256_Prim_20" to i8*) }
@"$TyDescr_String_Prim_22" = global %"$TyDescrTy_PrimTyp_5" { i32 2, i32 0 }
@"$TyDescr_String_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_String_Prim_22" to i8*) }
@"$TyDescr_Bystr_Prim_24" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_24" to i8*) }

define internal %Uint32 @"$fundef_3"(%"$$fundef_3_env_30"* %0, %Uint32 %1) {
entry:
  %"$retval_4" = alloca %Uint32
  store %Uint32 %1, %Uint32* %"$retval_4"
  %"$$retval_4_31" = load %Uint32, %Uint32* %"$retval_4"
  ret %Uint32 %"$$retval_4_31"
}

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_32"(i8* %0) {
entry:
  %"$expr_2" = alloca %Uint32
  %a = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %a
  %f = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_3_env_30"*, %Uint32)* @"$fundef_3" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %f
  %b = alloca %Uint32
  %"$f_1" = alloca %Uint32
  %"$f_36" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %f
  %"$f_fptr_37" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$f_36", 0
  %"$f_envptr_38" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$f_36", 1
  %"$a_39" = load %Uint32, %Uint32* %a
  %"$f_call_40" = call %Uint32 %"$f_fptr_37"(i8* %"$f_envptr_38", %Uint32 %"$a_39")
  store %Uint32 %"$f_call_40", %Uint32* %"$f_1"
  %"$$f_1_41" = load %Uint32, %Uint32* %"$f_1"
  store %Uint32 %"$$f_1_41", %Uint32* %b
  %"$a_42" = load %Uint32, %Uint32* %a
  %"$b_43" = load %Uint32, %Uint32* %b
  %"$add_call_44" = call %Uint32 @_add_Uint32(%Uint32 %"$a_42", %Uint32 %"$b_43")
  store %Uint32 %"$add_call_44", %Uint32* %"$expr_2"
  %"$$expr_2_45" = load %Uint32, %Uint32* %"$expr_2"
  ret %Uint32 %"$$expr_2_45"
}

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_46" = call %Uint32 @"$scilla_expr_32"(i8* null)
  %"$pval_47" = alloca %Uint32
  %"$memvoidcast_48" = bitcast %Uint32* %"$pval_47" to i8*
  store %Uint32 %"$exprval_46", %Uint32* %"$pval_47"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_9", i8* %"$memvoidcast_48")
  ret void
}
