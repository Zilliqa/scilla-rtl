; let ho =
; fun( h : Int32 -> Int32) =>
; fun (i : Int32) =>
; h i
; in
; 
; let inc =
; fun (a : Int32) =>
; let b = Int32 1 in
; builtin add a b
; in
; 
; let hundred = Int32 100 in
; ho inc hundred
; 
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_10" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_8_env_35" = type {}
%Int32 = type { i32 }
%"$$fundef_6_env_36" = type { { %Int32 (i8*, %Int32)*, i8* } }
%"$$fundef_4_env_37" = type {}

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_11" = global %"$TyDescrTy_PrimTyp_10" zeroinitializer
@"$TyDescr_Int32_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int32_Prim_11" to i8*) }
@"$TyDescr_Uint32_Prim_13" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 0 }
@"$TyDescr_Uint32_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint32_Prim_13" to i8*) }
@"$TyDescr_Int64_Prim_15" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 1 }
@"$TyDescr_Int64_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int64_Prim_15" to i8*) }
@"$TyDescr_Uint64_Prim_17" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 1 }
@"$TyDescr_Uint64_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint64_Prim_17" to i8*) }
@"$TyDescr_Int128_Prim_19" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 2 }
@"$TyDescr_Int128_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int128_Prim_19" to i8*) }
@"$TyDescr_Uint128_Prim_21" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 2 }
@"$TyDescr_Uint128_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint128_Prim_21" to i8*) }
@"$TyDescr_Int256_Prim_23" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 3 }
@"$TyDescr_Int256_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int256_Prim_23" to i8*) }
@"$TyDescr_Uint256_Prim_25" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 3 }
@"$TyDescr_Uint256_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint256_Prim_25" to i8*) }
@"$TyDescr_String_Prim_27" = global %"$TyDescrTy_PrimTyp_10" { i32 2, i32 0 }
@"$TyDescr_String_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_String_Prim_27" to i8*) }
@"$TyDescr_Bystr_Prim_29" = global %"$TyDescrTy_PrimTyp_10" { i32 7, i32 0 }
@"$TyDescr_Bystr_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr_Prim_29" to i8*) }

define internal %Int32 @"$fundef_8"(%"$$fundef_8_env_35"* %0, %Int32 %1) {
entry:
  %"$retval_9" = alloca %Int32
  %b = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %b
  %"$b_52" = load %Int32, %Int32* %b
  %"$add_call_53" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$b_52")
  store %Int32 %"$add_call_53", %Int32* %"$retval_9"
  %"$$retval_9_54" = load %Int32, %Int32* %"$retval_9"
  ret %Int32 %"$$retval_9_54"
}

define internal %Int32 @"$fundef_6"(%"$$fundef_6_env_36"* %0, %Int32 %1) {
entry:
  %"$$fundef_6_env_h_44" = getelementptr inbounds %"$$fundef_6_env_36", %"$$fundef_6_env_36"* %0, i32 0, i32 0
  %"$h_envload_45" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_6_env_h_44"
  %h = alloca { %Int32 (i8*, %Int32)*, i8* }
  store { %Int32 (i8*, %Int32)*, i8* } %"$h_envload_45", { %Int32 (i8*, %Int32)*, i8* }* %h
  %"$retval_7" = alloca %Int32
  %"$h_0" = alloca %Int32
  %"$h_46" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %h
  %"$h_fptr_47" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_46", 0
  %"$h_envptr_48" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_46", 1
  %"$h_call_49" = call %Int32 %"$h_fptr_47"(i8* %"$h_envptr_48", %Int32 %1)
  store %Int32 %"$h_call_49", %Int32* %"$h_0"
  %"$$h_0_50" = load %Int32, %Int32* %"$h_0"
  store %Int32 %"$$h_0_50", %Int32* %"$retval_7"
  %"$$retval_7_51" = load %Int32, %Int32* %"$retval_7"
  ret %Int32 %"$$retval_7_51"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_4"(%"$$fundef_4_env_37"* %0, { %Int32 (i8*, %Int32)*, i8* } %1) {
entry:
  %"$retval_5" = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$$fundef_6_envp_38_load" = load i8*, i8** @_execptr
  %"$$fundef_6_envp_38_salloc" = call i8* @_salloc(i8* %"$$fundef_6_envp_38_load", i64 16)
  %"$$fundef_6_envp_38" = bitcast i8* %"$$fundef_6_envp_38_salloc" to %"$$fundef_6_env_36"*
  %"$$fundef_6_env_voidp_40" = bitcast %"$$fundef_6_env_36"* %"$$fundef_6_envp_38" to i8*
  %"$$fundef_6_cloval_41" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_6_env_36"*, %Int32)* @"$fundef_6" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_6_env_voidp_40", 1
  %"$$fundef_6_env_h_42" = getelementptr inbounds %"$$fundef_6_env_36", %"$$fundef_6_env_36"* %"$$fundef_6_envp_38", i32 0, i32 0
  store { %Int32 (i8*, %Int32)*, i8* } %1, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_6_env_h_42"
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_6_cloval_41", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_5"
  %"$$retval_5_43" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_5"
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_5_43"
}

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_55"(i8* %0) {
entry:
  %"$expr_3" = alloca %Int32
  %ho = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_4_env_37"*, { %Int32 (i8*, %Int32)*, i8* })* @"$fundef_4" to { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho
  %inc = alloca { %Int32 (i8*, %Int32)*, i8* }
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_8_env_35"*, %Int32)* @"$fundef_8" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %inc
  %hundred = alloca %Int32
  store %Int32 { i32 100 }, %Int32* %hundred
  %"$ho_1" = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$ho_62" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho
  %"$ho_fptr_63" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_62", 0
  %"$ho_envptr_64" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_62", 1
  %"$inc_65" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %inc
  %"$ho_call_66" = call { %Int32 (i8*, %Int32)*, i8* } %"$ho_fptr_63"(i8* %"$ho_envptr_64", { %Int32 (i8*, %Int32)*, i8* } %"$inc_65")
  store { %Int32 (i8*, %Int32)*, i8* } %"$ho_call_66", { %Int32 (i8*, %Int32)*, i8* }* %"$ho_1"
  %"$ho_2" = alloca %Int32
  %"$$ho_1_67" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$ho_1"
  %"$$ho_1_fptr_68" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_1_67", 0
  %"$$ho_1_envptr_69" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_1_67", 1
  %"$hundred_70" = load %Int32, %Int32* %hundred
  %"$$ho_1_call_71" = call %Int32 %"$$ho_1_fptr_68"(i8* %"$$ho_1_envptr_69", %Int32 %"$hundred_70")
  store %Int32 %"$$ho_1_call_71", %Int32* %"$ho_2"
  %"$$ho_2_72" = load %Int32, %Int32* %"$ho_2"
  store %Int32 %"$$ho_2_72", %Int32* %"$expr_3"
  %"$$expr_3_73" = load %Int32, %Int32* %"$expr_3"
  ret %Int32 %"$$expr_3_73"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_74" = call %Int32 @"$scilla_expr_55"(i8* null)
  %"$pval_75" = alloca %Int32
  %"$memvoidcast_76" = bitcast %Int32* %"$pval_75" to i8*
  store %Int32 %"$exprval_74", %Int32* %"$pval_75"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_12", i8* %"$memvoidcast_76")
  ret void
}
