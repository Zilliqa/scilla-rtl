; let tf =
; tfun 'A =>
; fun (a : 'A) =>
; a
; in
; 
; let t = @tf Uint32 in
; let one = Uint32 1 in
; t one
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_6" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_4_env_31" = type {}
%Uint32 = type { i32 }
%"$$fundef_2_env_32" = type {}

@_execptr = global i8* null
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
@"$TyDescr_Bystr_Prim_25" = global %"$TyDescrTy_PrimTyp_6" { i32 7, i32 0 }
@"$TyDescr_Bystr_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr_Prim_25" to i8*) }
@"$dyndisp_42" = global [1 x { i8*, i8* }] zeroinitializer

define internal %Uint32 @"$fundef_4"(%"$$fundef_4_env_31"* %0, %Uint32 %1) {
entry:
  %"$retval_5" = alloca %Uint32
  store %Uint32 %1, %Uint32* %"$retval_5"
  %"$$retval_5_37" = load %Uint32, %Uint32* %"$retval_5"
  ret %Uint32 %"$$retval_5_37"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_2"(%"$$fundef_2_env_32"* %0) {
entry:
  %"$retval_3" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_4_env_31"*, %Uint32)* @"$fundef_4" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_3"
  %"$$retval_3_36" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_3"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_3_36"
}

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_38"(i8* %0) {
entry:
  %"$expr_1" = alloca %Uint32
  %tf = alloca { i8*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_2_env_32"*)* @"$fundef_2" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* bitcast ([1 x { i8*, i8* }]* @"$dyndisp_42" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([1 x { i8*, i8* }], [1 x { i8*, i8* }]* @"$dyndisp_42", i32 0, i32 0), { i8*, i8* }** %tf
  %t = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$tf_43" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_44" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_43", i32 0
  %"$tf_45" = bitcast { i8*, i8* }* %"$tf_44" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_46" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_45"
  %"$tf_fptr_47" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_46", 0
  %"$tf_envptr_48" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_46", 1
  %"$tf_call_49" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$tf_fptr_47"(i8* %"$tf_envptr_48")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$tf_call_49", { %Uint32 (i8*, %Uint32)*, i8* }* %t
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %"$t_0" = alloca %Uint32
  %"$t_50" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %t
  %"$t_fptr_51" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$t_50", 0
  %"$t_envptr_52" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$t_50", 1
  %"$one_53" = load %Uint32, %Uint32* %one
  %"$t_call_54" = call %Uint32 %"$t_fptr_51"(i8* %"$t_envptr_52", %Uint32 %"$one_53")
  store %Uint32 %"$t_call_54", %Uint32* %"$t_0"
  %"$$t_0_55" = load %Uint32, %Uint32* %"$t_0"
  store %Uint32 %"$$t_0_55", %Uint32* %"$expr_1"
  %"$$expr_1_56" = load %Uint32, %Uint32* %"$expr_1"
  ret %Uint32 %"$$expr_1_56"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_57" = call %Uint32 @"$scilla_expr_38"(i8* null)
  %"$pval_58" = alloca %Uint32
  %"$memvoidcast_59" = bitcast %Uint32* %"$pval_58" to i8*
  store %Uint32 %"$exprval_57", %Uint32* %"$pval_58"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_10", i8* %"$memvoidcast_59")
  ret void
}
