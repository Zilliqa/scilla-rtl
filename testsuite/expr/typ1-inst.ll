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
%"$$fundef_9_env_44" = type {}
%Int32 = type { i32 }
%"$$fundef_7_env_45" = type {}
%Uint32 = type { i32 }
%"$$fundef_5_env_46" = type {}
%"$$fundef_3_env_47" = type {}

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
@"$TyDescr_Bnum_Prim_30" = global %"$TyDescrTy_PrimTyp_11" { i32 3, i32 0 }
@"$TyDescr_Bnum_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Bnum_Prim_30" to i8*) }
@"$TyDescr_Message_Prim_32" = global %"$TyDescrTy_PrimTyp_11" { i32 4, i32 0 }
@"$TyDescr_Message_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Message_Prim_32" to i8*) }
@"$TyDescr_Event_Prim_34" = global %"$TyDescrTy_PrimTyp_11" { i32 5, i32 0 }
@"$TyDescr_Event_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Event_Prim_34" to i8*) }
@"$TyDescr_Exception_Prim_36" = global %"$TyDescrTy_PrimTyp_11" { i32 6, i32 0 }
@"$TyDescr_Exception_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Exception_Prim_36" to i8*) }
@"$TyDescr_Bystr_Prim_38" = global %"$TyDescrTy_PrimTyp_11" { i32 7, i32 0 }
@"$TyDescr_Bystr_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_11"* @"$TyDescr_Bystr_Prim_38" to i8*) }

define internal %Int32 @"$fundef_9"(%"$$fundef_9_env_44"* %0, %Int32 %1) {
entry:
  %"$retval_10" = alloca %Int32
  store %Int32 %1, %Int32* %"$retval_10"
  %"$$retval_10_63" = load %Int32, %Int32* %"$retval_10"
  ret %Int32 %"$$retval_10_63"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_45"* %0, %Uint32 %1) {
entry:
  %"$retval_8" = alloca { %Int32 (i8*, %Int32)*, i8* }
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_9_env_44"*, %Int32)* @"$fundef_9" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_8"
  %"$$retval_8_62" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_8"
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_8_62"
}

define internal { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_5"(%"$$fundef_5_env_46"* %0) {
entry:
  %"$retval_6" = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_7_env_45"*, %Uint32)* @"$fundef_7" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_6"
  %"$$retval_6_58" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_6"
  ret { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_6_58"
}

define internal { i8*, i8* }* @"$fundef_3"(%"$$fundef_3_env_47"* %0) {
entry:
  %"$retval_4" = alloca { i8*, i8* }*
  %"$dyndisp_table_51_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_51_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_51_salloc_load", i64 32)
  %"$dyndisp_table_51_salloc" = bitcast i8* %"$dyndisp_table_51_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_51" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_51_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_52" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_51", i32 1
  %"$dyndisp_pcast_53" = bitcast { i8*, i8* }* %"$dyndisp_gep_52" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_5_env_46"*)* @"$fundef_5" to { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_53"
  store { i8*, i8* }* %"$dyndisp_table_51", { i8*, i8* }** %"$retval_4"
  %"$$retval_4_54" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_4"
  ret { i8*, i8* }* %"$$retval_4_54"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_64"(i8* %0) {
entry:
  %"$expr_2" = alloca %Int32
  %tf = alloca { i8*, i8* }*
  %"$dyndisp_table_68_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_68_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_68_salloc_load", i64 32)
  %"$dyndisp_table_68_salloc" = bitcast i8* %"$dyndisp_table_68_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_68" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_68_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_69" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_68", i32 0
  %"$dyndisp_pcast_70" = bitcast { i8*, i8* }* %"$dyndisp_gep_69" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_3_env_47"*)* @"$fundef_3" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_70"
  store { i8*, i8* }* %"$dyndisp_table_68", { i8*, i8* }** %tf
  %t = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf_71" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_72" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_71", i32 0
  %"$tf_73" = bitcast { i8*, i8* }* %"$tf_72" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_74" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_73"
  %"$tf_fptr_75" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_74", 0
  %"$tf_envptr_76" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_74", 1
  %"$tf_call_77" = call { i8*, i8* }* %"$tf_fptr_75"(i8* %"$tf_envptr_76")
  %"$tf_78" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_77", i32 1
  %"$tf_79" = bitcast { i8*, i8* }* %"$tf_78" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_80" = load { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_79"
  %"$tf_fptr_81" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_80", 0
  %"$tf_envptr_82" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_80", 1
  %"$tf_call_83" = call { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_81"(i8* %"$tf_envptr_82")
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_83", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %two = alloca %Int32
  store %Int32 { i32 2 }, %Int32* %two
  %"$t_0" = alloca { %Int32 (i8*, %Int32)*, i8* }
  %"$t_84" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t
  %"$t_fptr_85" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_84", 0
  %"$t_envptr_86" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_84", 1
  %"$one_87" = load %Uint32, %Uint32* %one
  %"$t_call_88" = call { %Int32 (i8*, %Int32)*, i8* } %"$t_fptr_85"(i8* %"$t_envptr_86", %Uint32 %"$one_87")
  store { %Int32 (i8*, %Int32)*, i8* } %"$t_call_88", { %Int32 (i8*, %Int32)*, i8* }* %"$t_0"
  %"$t_1" = alloca %Int32
  %"$$t_0_89" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$t_0"
  %"$$t_0_fptr_90" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_0_89", 0
  %"$$t_0_envptr_91" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_0_89", 1
  %"$two_92" = load %Int32, %Int32* %two
  %"$$t_0_call_93" = call %Int32 %"$$t_0_fptr_90"(i8* %"$$t_0_envptr_91", %Int32 %"$two_92")
  store %Int32 %"$$t_0_call_93", %Int32* %"$t_1"
  %"$$t_1_94" = load %Int32, %Int32* %"$t_1"
  store %Int32 %"$$t_1_94", %Int32* %"$expr_2"
  %"$$expr_2_95" = load %Int32, %Int32* %"$expr_2"
  ret %Int32 %"$$expr_2_95"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_96" = call %Int32 @"$scilla_expr_64"(i8* null)
  %"$pval_97" = alloca %Int32
  %"$memvoidcast_98" = bitcast %Int32* %"$pval_97" to i8*
  store %Int32 %"$exprval_96", %Int32* %"$pval_97"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_13", i8* %"$memvoidcast_98")
  ret void
}
