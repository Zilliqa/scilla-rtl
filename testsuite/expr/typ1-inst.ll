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

define internal %Int32 @"$fundef_9"(%"$$fundef_9_env_36"* %0, %Int32 %1) {
entry:
  %"$retval_10" = alloca %Int32
  store %Int32 %1, %Int32* %"$retval_10"
  %"$$retval_10_55" = load %Int32, %Int32* %"$retval_10"
  ret %Int32 %"$$retval_10_55"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_37"* %0, %Uint32 %1) {
entry:
  %"$retval_8" = alloca { %Int32 (i8*, %Int32)*, i8* }
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_9_env_36"*, %Int32)* @"$fundef_9" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_8"
  %"$$retval_8_54" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_8"
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_8_54"
}

define internal { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_5"(%"$$fundef_5_env_38"* %0) {
entry:
  %"$retval_6" = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_7_env_37"*, %Uint32)* @"$fundef_7" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_6"
  %"$$retval_6_50" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_6"
  ret { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_6_50"
}

define internal { i8*, i8* }* @"$fundef_3"(%"$$fundef_3_env_39"* %0) {
entry:
  %"$retval_4" = alloca { i8*, i8* }*
  %"$dyndisp_table_43_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_43_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_43_salloc_load", i64 32)
  %"$dyndisp_table_43_salloc" = bitcast i8* %"$dyndisp_table_43_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_43" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_43_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_44" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_43", i32 1
  %"$dyndisp_pcast_45" = bitcast { i8*, i8* }* %"$dyndisp_gep_44" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_5_env_38"*)* @"$fundef_5" to { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_45"
  store { i8*, i8* }* %"$dyndisp_table_43", { i8*, i8* }** %"$retval_4"
  %"$$retval_4_46" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_4"
  ret { i8*, i8* }* %"$$retval_4_46"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_56"(i8* %0) {
entry:
  %"$expr_2" = alloca %Int32
  %tf = alloca { i8*, i8* }*
  %"$dyndisp_table_60_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_60_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_60_salloc_load", i64 32)
  %"$dyndisp_table_60_salloc" = bitcast i8* %"$dyndisp_table_60_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_60" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_60_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_61" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_60", i32 0
  %"$dyndisp_pcast_62" = bitcast { i8*, i8* }* %"$dyndisp_gep_61" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_3_env_39"*)* @"$fundef_3" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_62"
  store { i8*, i8* }* %"$dyndisp_table_60", { i8*, i8* }** %tf
  %t = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf_63" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_64" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_63", i32 0
  %"$tf_65" = bitcast { i8*, i8* }* %"$tf_64" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_66" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_65"
  %"$tf_fptr_67" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_66", 0
  %"$tf_envptr_68" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_66", 1
  %"$tf_call_69" = call { i8*, i8* }* %"$tf_fptr_67"(i8* %"$tf_envptr_68")
  %"$tf_70" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_69", i32 1
  %"$tf_71" = bitcast { i8*, i8* }* %"$tf_70" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_72" = load { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_71"
  %"$tf_fptr_73" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_72", 0
  %"$tf_envptr_74" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_72", 1
  %"$tf_call_75" = call { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_73"(i8* %"$tf_envptr_74")
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_75", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %two = alloca %Int32
  store %Int32 { i32 2 }, %Int32* %two
  %"$t_0" = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$t_76" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t
  %"$t_fptr_77" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_76", 0
  %"$t_envptr_78" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_76", 1
  %"$one_79" = load %Uint32, %Uint32* %one
  %"$t_call_80" = call { %Int32 (i8*, %Int32)*, i8* } %"$t_fptr_77"(i8* %"$t_envptr_78", %Uint32 %"$one_79")
  store { %Int32 (i8*, %Int32)*, i8* } %"$t_call_80", { %Int32 (i8*, %Int32)*, i8* }* %"$t_0"
  %"$t_1" = alloca %Int32
  %"$$t_0_81" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$t_0"
  %"$$t_0_fptr_82" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_0_81", 0
  %"$$t_0_envptr_83" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_0_81", 1
  %"$two_84" = load %Int32, %Int32* %two
  %"$$t_0_call_85" = call %Int32 %"$$t_0_fptr_82"(i8* %"$$t_0_envptr_83", %Int32 %"$two_84")
  store %Int32 %"$$t_0_call_85", %Int32* %"$t_1"
  %"$$t_1_86" = load %Int32, %Int32* %"$t_1"
  store %Int32 %"$$t_1_86", %Int32* %"$expr_2"
  %"$$expr_2_87" = load %Int32, %Int32* %"$expr_2"
  ret %Int32 %"$$expr_2_87"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_88" = call %Int32 @"$scilla_expr_56"(i8* null)
  %"$pval_89" = alloca %Int32
  %"$memvoidcast_90" = bitcast %Int32* %"$pval_89" to i8*
  store %Int32 %"$exprval_88", %Int32* %"$pval_89"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_13", i8* %"$memvoidcast_90")
  ret void
}
