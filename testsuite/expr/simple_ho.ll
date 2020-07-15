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
%"$$fundef_8_env_43" = type {}
%Int32 = type { i32 }
%"$$fundef_6_env_44" = type { { %Int32 (i8*, %Int32)*, i8* } }
%"$$fundef_4_env_45" = type {}

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
@"$TyDescr_Bnum_Prim_29" = global %"$TyDescrTy_PrimTyp_10" { i32 3, i32 0 }
@"$TyDescr_Bnum_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bnum_Prim_29" to i8*) }
@"$TyDescr_Message_Prim_31" = global %"$TyDescrTy_PrimTyp_10" { i32 4, i32 0 }
@"$TyDescr_Message_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Message_Prim_31" to i8*) }
@"$TyDescr_Event_Prim_33" = global %"$TyDescrTy_PrimTyp_10" { i32 5, i32 0 }
@"$TyDescr_Event_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Event_Prim_33" to i8*) }
@"$TyDescr_Exception_Prim_35" = global %"$TyDescrTy_PrimTyp_10" { i32 6, i32 0 }
@"$TyDescr_Exception_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Exception_Prim_35" to i8*) }
@"$TyDescr_Bystr_Prim_37" = global %"$TyDescrTy_PrimTyp_10" { i32 7, i32 0 }
@"$TyDescr_Bystr_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr_Prim_37" to i8*) }

define internal %Int32 @"$fundef_8"(%"$$fundef_8_env_43"* %0, %Int32 %1) {
entry:
  %"$retval_9" = alloca %Int32
  %b = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %b
  %"$b_60" = load %Int32, %Int32* %b
  %"$add_call_61" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$b_60")
  store %Int32 %"$add_call_61", %Int32* %"$retval_9"
  %"$$retval_9_62" = load %Int32, %Int32* %"$retval_9"
  ret %Int32 %"$$retval_9_62"
}

define internal %Int32 @"$fundef_6"(%"$$fundef_6_env_44"* %0, %Int32 %1) {
entry:
  %"$$fundef_6_env_h_52" = getelementptr inbounds %"$$fundef_6_env_44", %"$$fundef_6_env_44"* %0, i32 0, i32 0
  %"$h_envload_53" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_6_env_h_52"
  %h = alloca { %Int32 (i8*, %Int32)*, i8* }
  store { %Int32 (i8*, %Int32)*, i8* } %"$h_envload_53", { %Int32 (i8*, %Int32)*, i8* }* %h
  %"$retval_7" = alloca %Int32
  %"$h_0" = alloca %Int32
  %"$h_54" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %h
  %"$h_fptr_55" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_54", 0
  %"$h_envptr_56" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_54", 1
  %"$h_call_57" = call %Int32 %"$h_fptr_55"(i8* %"$h_envptr_56", %Int32 %1)
  store %Int32 %"$h_call_57", %Int32* %"$h_0"
  %"$$h_0_58" = load %Int32, %Int32* %"$h_0"
  store %Int32 %"$$h_0_58", %Int32* %"$retval_7"
  %"$$retval_7_59" = load %Int32, %Int32* %"$retval_7"
  ret %Int32 %"$$retval_7_59"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_4"(%"$$fundef_4_env_45"* %0, { %Int32 (i8*, %Int32)*, i8* } %1) {
entry:
  %"$retval_5" = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$$fundef_6_envp_46_load" = load i8*, i8** @_execptr
  %"$$fundef_6_envp_46_salloc" = call i8* @_salloc(i8* %"$$fundef_6_envp_46_load", i64 16)
  %"$$fundef_6_envp_46" = bitcast i8* %"$$fundef_6_envp_46_salloc" to %"$$fundef_6_env_44"*
  %"$$fundef_6_env_voidp_48" = bitcast %"$$fundef_6_env_44"* %"$$fundef_6_envp_46" to i8*
  %"$$fundef_6_cloval_49" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_6_env_44"*, %Int32)* @"$fundef_6" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_6_env_voidp_48", 1
  %"$$fundef_6_env_h_50" = getelementptr inbounds %"$$fundef_6_env_44", %"$$fundef_6_env_44"* %"$$fundef_6_envp_46", i32 0, i32 0
  store { %Int32 (i8*, %Int32)*, i8* } %1, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_6_env_h_50"
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_6_cloval_49", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_5"
  %"$$retval_5_51" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_5"
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_5_51"
}

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_63"(i8* %0) {
entry:
  %"$expr_3" = alloca %Int32
  %ho = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_4_env_45"*, { %Int32 (i8*, %Int32)*, i8* })* @"$fundef_4" to { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho
  %inc = alloca { %Int32 (i8*, %Int32)*, i8* }
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_8_env_43"*, %Int32)* @"$fundef_8" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %inc
  %hundred = alloca %Int32
  store %Int32 { i32 100 }, %Int32* %hundred
  %"$ho_1" = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$ho_70" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho
  %"$ho_fptr_71" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_70", 0
  %"$ho_envptr_72" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_70", 1
  %"$inc_73" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %inc
  %"$ho_call_74" = call { %Int32 (i8*, %Int32)*, i8* } %"$ho_fptr_71"(i8* %"$ho_envptr_72", { %Int32 (i8*, %Int32)*, i8* } %"$inc_73")
  store { %Int32 (i8*, %Int32)*, i8* } %"$ho_call_74", { %Int32 (i8*, %Int32)*, i8* }* %"$ho_1"
  %"$ho_2" = alloca %Int32
  %"$$ho_1_75" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$ho_1"
  %"$$ho_1_fptr_76" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_1_75", 0
  %"$$ho_1_envptr_77" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_1_75", 1
  %"$hundred_78" = load %Int32, %Int32* %hundred
  %"$$ho_1_call_79" = call %Int32 %"$$ho_1_fptr_76"(i8* %"$$ho_1_envptr_77", %Int32 %"$hundred_78")
  store %Int32 %"$$ho_1_call_79", %Int32* %"$ho_2"
  %"$$ho_2_80" = load %Int32, %Int32* %"$ho_2"
  store %Int32 %"$$ho_2_80", %Int32* %"$expr_3"
  %"$$expr_3_81" = load %Int32, %Int32* %"$expr_3"
  ret %Int32 %"$$expr_3_81"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_82" = call %Int32 @"$scilla_expr_63"(i8* null)
  %"$pval_83" = alloca %Int32
  %"$memvoidcast_84" = bitcast %Int32* %"$pval_83" to i8*
  store %Int32 %"$exprval_82", %Int32* %"$pval_83"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_12", i8* %"$memvoidcast_84")
  ret void
}
