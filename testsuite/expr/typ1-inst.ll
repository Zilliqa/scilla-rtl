; let tf =
; tfun 'A =>
; tfun 'B =>
; fun (a : 'A) =>
; fun (b : 'B) =>
; b
; in
; 
; let t = @tf Uint32 Int32 in
; let one = Uint32 1 in
; let two = Int32 2 in
; t one two
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_11" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_9_env_36" = type {}
%Int32 = type { i32 }
%"$$fundef_7_env_37" = type {}
%Uint32 = type { i32 }
%"$$fundef_5_env_38" = type {}
%"$$fundef_3_env_39" = type {}

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_12" = global %"$TyDescrTy_PrimTyp_11" zeroinitializer
@"$TyDescr_Int32_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Int32_Prim_12" to i8*) }
@"$TyDescr_Uint32_Prim_14" = global %"$TyDescrTy_PrimTyp_11" { i32 1, i32 0 }
@"$TyDescr_Uint32_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Uint32_Prim_14" to i8*) }
@"$TyDescr_Int64_Prim_16" = global %"$TyDescrTy_PrimTyp_11" { i32 0, i32 1 }
@"$TyDescr_Int64_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Int64_Prim_16" to i8*) }
@"$TyDescr_Uint64_Prim_18" = global %"$TyDescrTy_PrimTyp_11" { i32 1, i32 1 }
@"$TyDescr_Uint64_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Uint64_Prim_18" to i8*) }
@"$TyDescr_Int128_Prim_20" = global %"$TyDescrTy_PrimTyp_11" { i32 0, i32 2 }
@"$TyDescr_Int128_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Int128_Prim_20" to i8*) }
@"$TyDescr_Uint128_Prim_22" = global %"$TyDescrTy_PrimTyp_11" { i32 1, i32 2 }
@"$TyDescr_Uint128_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Uint128_Prim_22" to i8*) }
@"$TyDescr_Int256_Prim_24" = global %"$TyDescrTy_PrimTyp_11" { i32 0, i32 3 }
@"$TyDescr_Int256_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Int256_Prim_24" to i8*) }
@"$TyDescr_Uint256_Prim_26" = global %"$TyDescrTy_PrimTyp_11" { i32 1, i32 3 }
@"$TyDescr_Uint256_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Uint256_Prim_26" to i8*) }
@"$TyDescr_String_Prim_28" = global %"$TyDescrTy_PrimTyp_11" { i32 2, i32 0 }
@"$TyDescr_String_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_String_Prim_28" to i8*) }
@"$TyDescr_Bystr_Prim_30" = global %"$TyDescrTy_PrimTyp_11" { i32 7, i32 0 }
@"$TyDescr_Bystr_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Bystr_Prim_30" to i8*) }
@"$dyndisp_43" = global [2 x { i8*, i8* }] zeroinitializer
@"$dyndisp_58" = global [2 x { i8*, i8* }] zeroinitializer

define internal %Int32 @"$fundef_9"(%"$$fundef_9_env_36"* %0, %Int32 %1) {
entry:
  %"$retval_10" = alloca %Int32
  store %Int32 %1, %Int32* %"$retval_10"
  %"$$retval_10_53" = load %Int32, %Int32* %"$retval_10"
  ret %Int32 %"$$retval_10_53"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_37"* %0, %Uint32 %1) {
entry:
  %"$retval_8" = alloca { %Int32 (i8*, %Int32)*, i8* }
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_9_env_36"*, %Int32)* @"$fundef_9" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_8"
  %"$$retval_8_52" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_8"
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_8_52"
}

define internal { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_5"(%"$$fundef_5_env_38"* %0) {
entry:
  %"$retval_6" = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_7_env_37"*, %Uint32)* @"$fundef_7" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_6"
  %"$$retval_6_48" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_6"
  ret { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_6_48"
}

define internal { i8*, i8* }* @"$fundef_3"(%"$$fundef_3_env_39"* %0) {
entry:
  %"$retval_4" = alloca { i8*, i8* }*
  store { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_5_env_38"*)* @"$fundef_5" to { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_43", i32 0, i32 1) to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_43", i32 0, i32 0), { i8*, i8* }** %"$retval_4"
  %"$$retval_4_44" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_4"
  ret { i8*, i8* }* %"$$retval_4_44"
}

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_54"(i8* %0) {
entry:
  %"$expr_2" = alloca %Int32
  %tf = alloca { i8*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_3_env_39"*)* @"$fundef_3" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_58" to { { i8*, i8* }* (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_58", i32 0, i32 0), { i8*, i8* }** %tf
  %t = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf_59" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_60" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_59", i32 0
  %"$tf_61" = bitcast { i8*, i8* }* %"$tf_60" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_62" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_61"
  %"$tf_fptr_63" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_62", 0
  %"$tf_envptr_64" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_62", 1
  %"$tf_call_65" = call { i8*, i8* }* %"$tf_fptr_63"(i8* %"$tf_envptr_64")
  %"$tf_66" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_65", i32 1
  %"$tf_67" = bitcast { i8*, i8* }* %"$tf_66" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_68" = load { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_67"
  %"$tf_fptr_69" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_68", 0
  %"$tf_envptr_70" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_68", 1
  %"$tf_call_71" = call { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_69"(i8* %"$tf_envptr_70")
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_71", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %two = alloca %Int32
  store %Int32 { i32 2 }, %Int32* %two
  %"$t_0" = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$t_72" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t
  %"$t_fptr_73" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_72", 0
  %"$t_envptr_74" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_72", 1
  %"$one_75" = load %Uint32, %Uint32* %one
  %"$t_call_76" = call { %Int32 (i8*, %Int32)*, i8* } %"$t_fptr_73"(i8* %"$t_envptr_74", %Uint32 %"$one_75")
  store { %Int32 (i8*, %Int32)*, i8* } %"$t_call_76", { %Int32 (i8*, %Int32)*, i8* }* %"$t_0"
  %"$t_1" = alloca %Int32
  %"$$t_0_77" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$t_0"
  %"$$t_0_fptr_78" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_0_77", 0
  %"$$t_0_envptr_79" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_0_77", 1
  %"$two_80" = load %Int32, %Int32* %two
  %"$$t_0_call_81" = call %Int32 %"$$t_0_fptr_78"(i8* %"$$t_0_envptr_79", %Int32 %"$two_80")
  store %Int32 %"$$t_0_call_81", %Int32* %"$t_1"
  %"$$t_1_82" = load %Int32, %Int32* %"$t_1"
  store %Int32 %"$$t_1_82", %Int32* %"$expr_2"
  %"$$expr_2_83" = load %Int32, %Int32* %"$expr_2"
  ret %Int32 %"$$expr_2_83"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_84" = call %Int32 @"$scilla_expr_54"(i8* null)
  %"$pval_85" = alloca %Int32
  %"$memvoidcast_86" = bitcast %Int32* %"$pval_85" to i8*
  store %Int32 %"$exprval_84", %Int32* %"$pval_85"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_13", i8* %"$memvoidcast_86")
  ret void
}
