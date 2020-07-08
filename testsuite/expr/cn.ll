; 
; let c1 = tfun 'X => fun (z : 'X) => z in
; 
; let app_arg =
; fun (n : forall 'X. 'X -> 'X) =>
; tfun 'X =>
; fun (z : 'X) =>
; let nX = @n 'X in
; let nXz = nX z in
; nXz
; in
; 
; let start =
; fun (c : forall 'X. 'X -> 'X) =>
; let zero = Uint32 0 in
; let c32 = @c Uint32 in
; c32 zero
; in
; 
; let c2 = app_arg c1 in
; let c3 = app_arg c2 in
; start c3
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_18" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Uint32 = type { i32 }
%"$$fundef_16_env_43" = type {}
%"$$fundef_14_env_44" = type { { i8*, i8* }* }
%"$$fundef_12_env_45" = type { { i8*, i8* }* }
%"$$fundef_10_env_46" = type {}
%"$$fundef_8_env_47" = type {}
%"$$fundef_6_env_48" = type {}

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_19" = global %"$TyDescrTy_PrimTyp_18" zeroinitializer
@"$TyDescr_Int32_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Int32_Prim_19" to i8*) }
@"$TyDescr_Uint32_Prim_21" = global %"$TyDescrTy_PrimTyp_18" { i32 1, i32 0 }
@"$TyDescr_Uint32_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Uint32_Prim_21" to i8*) }
@"$TyDescr_Int64_Prim_23" = global %"$TyDescrTy_PrimTyp_18" { i32 0, i32 1 }
@"$TyDescr_Int64_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Int64_Prim_23" to i8*) }
@"$TyDescr_Uint64_Prim_25" = global %"$TyDescrTy_PrimTyp_18" { i32 1, i32 1 }
@"$TyDescr_Uint64_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Uint64_Prim_25" to i8*) }
@"$TyDescr_Int128_Prim_27" = global %"$TyDescrTy_PrimTyp_18" { i32 0, i32 2 }
@"$TyDescr_Int128_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Int128_Prim_27" to i8*) }
@"$TyDescr_Uint128_Prim_29" = global %"$TyDescrTy_PrimTyp_18" { i32 1, i32 2 }
@"$TyDescr_Uint128_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Uint128_Prim_29" to i8*) }
@"$TyDescr_Int256_Prim_31" = global %"$TyDescrTy_PrimTyp_18" { i32 0, i32 3 }
@"$TyDescr_Int256_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Int256_Prim_31" to i8*) }
@"$TyDescr_Uint256_Prim_33" = global %"$TyDescrTy_PrimTyp_18" { i32 1, i32 3 }
@"$TyDescr_Uint256_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Uint256_Prim_33" to i8*) }
@"$TyDescr_String_Prim_35" = global %"$TyDescrTy_PrimTyp_18" { i32 2, i32 0 }
@"$TyDescr_String_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_String_Prim_35" to i8*) }
@"$TyDescr_Bystr_Prim_37" = global %"$TyDescrTy_PrimTyp_18" { i32 7, i32 0 }
@"$TyDescr_Bystr_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Bystr_Prim_37" to i8*) }

define internal %Uint32 @"$fundef_16"(%"$$fundef_16_env_43"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_17" = alloca %Uint32
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %c32 = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$c_88" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_89" = bitcast { i8*, i8* }* %"$c_88" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$c_90" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$c_89"
  %"$c_fptr_91" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_90", 0
  %"$c_envptr_92" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_90", 1
  %"$c_call_93" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c_fptr_91"(i8* %"$c_envptr_92")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c_call_93", { %Uint32 (i8*, %Uint32)*, i8* }* %c32
  %"$c32_1" = alloca %Uint32
  %"$c32_94" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %c32
  %"$c32_fptr_95" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_94", 0
  %"$c32_envptr_96" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_94", 1
  %"$zero_97" = load %Uint32, %Uint32* %zero
  %"$c32_call_98" = call %Uint32 %"$c32_fptr_95"(i8* %"$c32_envptr_96", %Uint32 %"$zero_97")
  store %Uint32 %"$c32_call_98", %Uint32* %"$c32_1"
  %"$$c32_1_99" = load %Uint32, %Uint32* %"$c32_1"
  store %Uint32 %"$$c32_1_99", %Uint32* %"$retval_17"
  %"$$retval_17_100" = load %Uint32, %Uint32* %"$retval_17"
  ret %Uint32 %"$$retval_17_100"
}

define internal %Uint32 @"$fundef_14"(%"$$fundef_14_env_44"* %0, %Uint32 %1) {
entry:
  %"$$fundef_14_env_n_72" = getelementptr inbounds %"$$fundef_14_env_44", %"$$fundef_14_env_44"* %0, i32 0, i32 0
  %"$n_envload_73" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_14_env_n_72"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_73", { i8*, i8* }** %n
  %"$retval_15" = alloca %Uint32
  %nX = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$n_74" = load { i8*, i8* }*, { i8*, i8* }** %n
  %"$n_75" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_74", i32 0
  %"$n_76" = bitcast { i8*, i8* }* %"$n_75" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$n_77" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$n_76"
  %"$n_fptr_78" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_77", 0
  %"$n_envptr_79" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_77", 1
  %"$n_call_80" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_78"(i8* %"$n_envptr_79")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_80", { %Uint32 (i8*, %Uint32)*, i8* }* %nX
  %nXz = alloca %Uint32
  %"$nX_0" = alloca %Uint32
  %"$nX_81" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %nX
  %"$nX_fptr_82" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_81", 0
  %"$nX_envptr_83" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_81", 1
  %"$nX_call_84" = call %Uint32 %"$nX_fptr_82"(i8* %"$nX_envptr_83", %Uint32 %1)
  store %Uint32 %"$nX_call_84", %Uint32* %"$nX_0"
  %"$$nX_0_85" = load %Uint32, %Uint32* %"$nX_0"
  store %Uint32 %"$$nX_0_85", %Uint32* %nXz
  %"$nXz_86" = load %Uint32, %Uint32* %nXz
  store %Uint32 %"$nXz_86", %Uint32* %"$retval_15"
  %"$$retval_15_87" = load %Uint32, %Uint32* %"$retval_15"
  ret %Uint32 %"$$retval_15_87"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_12"(%"$$fundef_12_env_45"* %0) {
entry:
  %"$$fundef_12_env_n_63" = getelementptr inbounds %"$$fundef_12_env_45", %"$$fundef_12_env_45"* %0, i32 0, i32 0
  %"$n_envload_64" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_12_env_n_63"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_64", { i8*, i8* }** %n
  %"$retval_13" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_14_envp_65_load" = load i8*, i8** @_execptr
  %"$$fundef_14_envp_65_salloc" = call i8* @_salloc(i8* %"$$fundef_14_envp_65_load", i64 8)
  %"$$fundef_14_envp_65" = bitcast i8* %"$$fundef_14_envp_65_salloc" to %"$$fundef_14_env_44"*
  %"$$fundef_14_env_voidp_67" = bitcast %"$$fundef_14_env_44"* %"$$fundef_14_envp_65" to i8*
  %"$$fundef_14_cloval_68" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_14_env_44"*, %Uint32)* @"$fundef_14" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_14_env_voidp_67", 1
  %"$$fundef_14_env_n_69" = getelementptr inbounds %"$$fundef_14_env_44", %"$$fundef_14_env_44"* %"$$fundef_14_envp_65", i32 0, i32 0
  %"$n_70" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_70", { i8*, i8* }** %"$$fundef_14_env_n_69"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_14_cloval_68", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13"
  %"$$retval_13_71" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_13_71"
}

define internal { i8*, i8* }* @"$fundef_10"(%"$$fundef_10_env_46"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_11" = alloca { i8*, i8* }*
  %"$$fundef_12_envp_54_load" = load i8*, i8** @_execptr
  %"$$fundef_12_envp_54_salloc" = call i8* @_salloc(i8* %"$$fundef_12_envp_54_load", i64 8)
  %"$$fundef_12_envp_54" = bitcast i8* %"$$fundef_12_envp_54_salloc" to %"$$fundef_12_env_45"*
  %"$$fundef_12_env_voidp_56" = bitcast %"$$fundef_12_env_45"* %"$$fundef_12_envp_54" to i8*
  %"$$fundef_12_cloval_57" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_12_env_45"*)* @"$fundef_12" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_12_env_voidp_56", 1
  %"$$fundef_12_env_n_58" = getelementptr inbounds %"$$fundef_12_env_45", %"$$fundef_12_env_45"* %"$$fundef_12_envp_54", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_12_env_n_58"
  %"$dyndisp_table_59_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_59_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_59_salloc_load", i64 16)
  %"$dyndisp_table_59_salloc" = bitcast i8* %"$dyndisp_table_59_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_59" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_59_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_60" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_59", i32 0
  %"$dyndisp_pcast_61" = bitcast { i8*, i8* }* %"$dyndisp_gep_60" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_12_cloval_57", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_61"
  store { i8*, i8* }* %"$dyndisp_table_59", { i8*, i8* }** %"$retval_11"
  %"$$retval_11_62" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_11"
  ret { i8*, i8* }* %"$$retval_11_62"
}

define internal %Uint32 @"$fundef_8"(%"$$fundef_8_env_47"* %0, %Uint32 %1) {
entry:
  %"$retval_9" = alloca %Uint32
  store %Uint32 %1, %Uint32* %"$retval_9"
  %"$$retval_9_53" = load %Uint32, %Uint32* %"$retval_9"
  ret %Uint32 %"$$retval_9_53"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_6"(%"$$fundef_6_env_48"* %0) {
entry:
  %"$retval_7" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_8_env_47"*, %Uint32)* @"$fundef_8" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_7"
  %"$$retval_7_52" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_7"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_7_52"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_101"(i8* %0) {
entry:
  %"$expr_5" = alloca %Uint32
  %c1 = alloca { i8*, i8* }*
  %"$dyndisp_table_105_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_105_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_105_salloc_load", i64 16)
  %"$dyndisp_table_105_salloc" = bitcast i8* %"$dyndisp_table_105_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_105" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_105_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_106" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_105", i32 0
  %"$dyndisp_pcast_107" = bitcast { i8*, i8* }* %"$dyndisp_gep_106" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_6_env_48"*)* @"$fundef_6" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_107"
  store { i8*, i8* }* %"$dyndisp_table_105", { i8*, i8* }** %c1
  %app_arg = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_10_env_46"*, { i8*, i8* }*)* @"$fundef_10" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg
  %start = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_16_env_43"*, { i8*, i8* }*)* @"$fundef_16" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start
  %c2 = alloca { i8*, i8* }*
  %"$app_arg_2" = alloca { i8*, i8* }*
  %"$app_arg_114" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg
  %"$app_arg_fptr_115" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_114", 0
  %"$app_arg_envptr_116" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_114", 1
  %"$c1_117" = load { i8*, i8* }*, { i8*, i8* }** %c1
  %"$app_arg_call_118" = call { i8*, i8* }* %"$app_arg_fptr_115"(i8* %"$app_arg_envptr_116", { i8*, i8* }* %"$c1_117")
  store { i8*, i8* }* %"$app_arg_call_118", { i8*, i8* }** %"$app_arg_2"
  %"$$app_arg_2_119" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_2"
  store { i8*, i8* }* %"$$app_arg_2_119", { i8*, i8* }** %c2
  %c3 = alloca { i8*, i8* }*
  %"$app_arg_3" = alloca { i8*, i8* }*
  %"$app_arg_120" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg
  %"$app_arg_fptr_121" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_120", 0
  %"$app_arg_envptr_122" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_120", 1
  %"$c2_123" = load { i8*, i8* }*, { i8*, i8* }** %c2
  %"$app_arg_call_124" = call { i8*, i8* }* %"$app_arg_fptr_121"(i8* %"$app_arg_envptr_122", { i8*, i8* }* %"$c2_123")
  store { i8*, i8* }* %"$app_arg_call_124", { i8*, i8* }** %"$app_arg_3"
  %"$$app_arg_3_125" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_3"
  store { i8*, i8* }* %"$$app_arg_3_125", { i8*, i8* }** %c3
  %"$start_4" = alloca %Uint32
  %"$start_126" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start
  %"$start_fptr_127" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_126", 0
  %"$start_envptr_128" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_126", 1
  %"$c3_129" = load { i8*, i8* }*, { i8*, i8* }** %c3
  %"$start_call_130" = call %Uint32 %"$start_fptr_127"(i8* %"$start_envptr_128", { i8*, i8* }* %"$c3_129")
  store %Uint32 %"$start_call_130", %Uint32* %"$start_4"
  %"$$start_4_131" = load %Uint32, %Uint32* %"$start_4"
  store %Uint32 %"$$start_4_131", %Uint32* %"$expr_5"
  %"$$expr_5_132" = load %Uint32, %Uint32* %"$expr_5"
  ret %Uint32 %"$$expr_5_132"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_133" = call %Uint32 @"$scilla_expr_101"(i8* null)
  %"$pval_134" = alloca %Uint32
  %"$memvoidcast_135" = bitcast %Uint32* %"$pval_134" to i8*
  store %Uint32 %"$exprval_133", %Uint32* %"$pval_134"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_22", i8* %"$memvoidcast_135")
  ret void
}
