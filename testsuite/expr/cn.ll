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
%"$$fundef_16_env_51" = type {}
%"$$fundef_14_env_52" = type { { i8*, i8* }* }
%"$$fundef_12_env_53" = type { { i8*, i8* }* }
%"$$fundef_10_env_54" = type {}
%"$$fundef_8_env_55" = type {}
%"$$fundef_6_env_56" = type {}

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
@"$TyDescr_Bnum_Prim_37" = global %"$TyDescrTy_PrimTyp_18" { i32 3, i32 0 }
@"$TyDescr_Bnum_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Bnum_Prim_37" to i8*) }
@"$TyDescr_Message_Prim_39" = global %"$TyDescrTy_PrimTyp_18" { i32 4, i32 0 }
@"$TyDescr_Message_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Message_Prim_39" to i8*) }
@"$TyDescr_Event_Prim_41" = global %"$TyDescrTy_PrimTyp_18" { i32 5, i32 0 }
@"$TyDescr_Event_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Event_Prim_41" to i8*) }
@"$TyDescr_Exception_Prim_43" = global %"$TyDescrTy_PrimTyp_18" { i32 6, i32 0 }
@"$TyDescr_Exception_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Exception_Prim_43" to i8*) }
@"$TyDescr_Bystr_Prim_45" = global %"$TyDescrTy_PrimTyp_18" { i32 7, i32 0 }
@"$TyDescr_Bystr_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Bystr_Prim_45" to i8*) }

define internal %Uint32 @"$fundef_16"(%"$$fundef_16_env_51"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_17" = alloca %Uint32
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %c32 = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$c_96" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_97" = bitcast { i8*, i8* }* %"$c_96" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$c_98" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$c_97"
  %"$c_fptr_99" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_98", 0
  %"$c_envptr_100" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_98", 1
  %"$c_call_101" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c_fptr_99"(i8* %"$c_envptr_100")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c_call_101", { %Uint32 (i8*, %Uint32)*, i8* }* %c32
  %"$c32_1" = alloca %Uint32
  %"$c32_102" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %c32
  %"$c32_fptr_103" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_102", 0
  %"$c32_envptr_104" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_102", 1
  %"$zero_105" = load %Uint32, %Uint32* %zero
  %"$c32_call_106" = call %Uint32 %"$c32_fptr_103"(i8* %"$c32_envptr_104", %Uint32 %"$zero_105")
  store %Uint32 %"$c32_call_106", %Uint32* %"$c32_1"
  %"$$c32_1_107" = load %Uint32, %Uint32* %"$c32_1"
  store %Uint32 %"$$c32_1_107", %Uint32* %"$retval_17"
  %"$$retval_17_108" = load %Uint32, %Uint32* %"$retval_17"
  ret %Uint32 %"$$retval_17_108"
}

define internal %Uint32 @"$fundef_14"(%"$$fundef_14_env_52"* %0, %Uint32 %1) {
entry:
  %"$$fundef_14_env_n_80" = getelementptr inbounds %"$$fundef_14_env_52", %"$$fundef_14_env_52"* %0, i32 0, i32 0
  %"$n_envload_81" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_14_env_n_80"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_81", { i8*, i8* }** %n
  %"$retval_15" = alloca %Uint32
  %nX = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$n_82" = load { i8*, i8* }*, { i8*, i8* }** %n
  %"$n_83" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_82", i32 0
  %"$n_84" = bitcast { i8*, i8* }* %"$n_83" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$n_85" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$n_84"
  %"$n_fptr_86" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_85", 0
  %"$n_envptr_87" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_85", 1
  %"$n_call_88" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_86"(i8* %"$n_envptr_87")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_88", { %Uint32 (i8*, %Uint32)*, i8* }* %nX
  %nXz = alloca %Uint32
  %"$nX_0" = alloca %Uint32
  %"$nX_89" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %nX
  %"$nX_fptr_90" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_89", 0
  %"$nX_envptr_91" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_89", 1
  %"$nX_call_92" = call %Uint32 %"$nX_fptr_90"(i8* %"$nX_envptr_91", %Uint32 %1)
  store %Uint32 %"$nX_call_92", %Uint32* %"$nX_0"
  %"$$nX_0_93" = load %Uint32, %Uint32* %"$nX_0"
  store %Uint32 %"$$nX_0_93", %Uint32* %nXz
  %"$nXz_94" = load %Uint32, %Uint32* %nXz
  store %Uint32 %"$nXz_94", %Uint32* %"$retval_15"
  %"$$retval_15_95" = load %Uint32, %Uint32* %"$retval_15"
  ret %Uint32 %"$$retval_15_95"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_12"(%"$$fundef_12_env_53"* %0) {
entry:
  %"$$fundef_12_env_n_71" = getelementptr inbounds %"$$fundef_12_env_53", %"$$fundef_12_env_53"* %0, i32 0, i32 0
  %"$n_envload_72" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_12_env_n_71"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_72", { i8*, i8* }** %n
  %"$retval_13" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_14_envp_73_load" = load i8*, i8** @_execptr
  %"$$fundef_14_envp_73_salloc" = call i8* @_salloc(i8* %"$$fundef_14_envp_73_load", i64 8)
  %"$$fundef_14_envp_73" = bitcast i8* %"$$fundef_14_envp_73_salloc" to %"$$fundef_14_env_52"*
  %"$$fundef_14_env_voidp_75" = bitcast %"$$fundef_14_env_52"* %"$$fundef_14_envp_73" to i8*
  %"$$fundef_14_cloval_76" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_14_env_52"*, %Uint32)* @"$fundef_14" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_14_env_voidp_75", 1
  %"$$fundef_14_env_n_77" = getelementptr inbounds %"$$fundef_14_env_52", %"$$fundef_14_env_52"* %"$$fundef_14_envp_73", i32 0, i32 0
  %"$n_78" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_78", { i8*, i8* }** %"$$fundef_14_env_n_77"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_14_cloval_76", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13"
  %"$$retval_13_79" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_13_79"
}

define internal { i8*, i8* }* @"$fundef_10"(%"$$fundef_10_env_54"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_11" = alloca { i8*, i8* }*
  %"$$fundef_12_envp_62_load" = load i8*, i8** @_execptr
  %"$$fundef_12_envp_62_salloc" = call i8* @_salloc(i8* %"$$fundef_12_envp_62_load", i64 8)
  %"$$fundef_12_envp_62" = bitcast i8* %"$$fundef_12_envp_62_salloc" to %"$$fundef_12_env_53"*
  %"$$fundef_12_env_voidp_64" = bitcast %"$$fundef_12_env_53"* %"$$fundef_12_envp_62" to i8*
  %"$$fundef_12_cloval_65" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_12_env_53"*)* @"$fundef_12" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_12_env_voidp_64", 1
  %"$$fundef_12_env_n_66" = getelementptr inbounds %"$$fundef_12_env_53", %"$$fundef_12_env_53"* %"$$fundef_12_envp_62", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_12_env_n_66"
  %"$dyndisp_table_67_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_67_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_67_salloc_load", i64 16)
  %"$dyndisp_table_67_salloc" = bitcast i8* %"$dyndisp_table_67_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_67" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_67_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_68" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_67", i32 0
  %"$dyndisp_pcast_69" = bitcast { i8*, i8* }* %"$dyndisp_gep_68" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_12_cloval_65", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_69"
  store { i8*, i8* }* %"$dyndisp_table_67", { i8*, i8* }** %"$retval_11"
  %"$$retval_11_70" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_11"
  ret { i8*, i8* }* %"$$retval_11_70"
}

define internal %Uint32 @"$fundef_8"(%"$$fundef_8_env_55"* %0, %Uint32 %1) {
entry:
  %"$retval_9" = alloca %Uint32
  store %Uint32 %1, %Uint32* %"$retval_9"
  %"$$retval_9_61" = load %Uint32, %Uint32* %"$retval_9"
  ret %Uint32 %"$$retval_9_61"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_6"(%"$$fundef_6_env_56"* %0) {
entry:
  %"$retval_7" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_8_env_55"*, %Uint32)* @"$fundef_8" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_7"
  %"$$retval_7_60" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_7"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_7_60"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_109"(i8* %0) {
entry:
  %"$expr_5" = alloca %Uint32
  %c1 = alloca { i8*, i8* }*
  %"$dyndisp_table_113_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_113_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_113_salloc_load", i64 16)
  %"$dyndisp_table_113_salloc" = bitcast i8* %"$dyndisp_table_113_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_113" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_113_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_114" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_113", i32 0
  %"$dyndisp_pcast_115" = bitcast { i8*, i8* }* %"$dyndisp_gep_114" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_6_env_56"*)* @"$fundef_6" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_115"
  store { i8*, i8* }* %"$dyndisp_table_113", { i8*, i8* }** %c1
  %app_arg = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_10_env_54"*, { i8*, i8* }*)* @"$fundef_10" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg
  %start = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_16_env_51"*, { i8*, i8* }*)* @"$fundef_16" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start
  %c2 = alloca { i8*, i8* }*
  %"$app_arg_2" = alloca { i8*, i8* }*
  %"$app_arg_122" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg
  %"$app_arg_fptr_123" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_122", 0
  %"$app_arg_envptr_124" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_122", 1
  %"$c1_125" = load { i8*, i8* }*, { i8*, i8* }** %c1
  %"$app_arg_call_126" = call { i8*, i8* }* %"$app_arg_fptr_123"(i8* %"$app_arg_envptr_124", { i8*, i8* }* %"$c1_125")
  store { i8*, i8* }* %"$app_arg_call_126", { i8*, i8* }** %"$app_arg_2"
  %"$$app_arg_2_127" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_2"
  store { i8*, i8* }* %"$$app_arg_2_127", { i8*, i8* }** %c2
  %c3 = alloca { i8*, i8* }*
  %"$app_arg_3" = alloca { i8*, i8* }*
  %"$app_arg_128" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg
  %"$app_arg_fptr_129" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_128", 0
  %"$app_arg_envptr_130" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_128", 1
  %"$c2_131" = load { i8*, i8* }*, { i8*, i8* }** %c2
  %"$app_arg_call_132" = call { i8*, i8* }* %"$app_arg_fptr_129"(i8* %"$app_arg_envptr_130", { i8*, i8* }* %"$c2_131")
  store { i8*, i8* }* %"$app_arg_call_132", { i8*, i8* }** %"$app_arg_3"
  %"$$app_arg_3_133" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_3"
  store { i8*, i8* }* %"$$app_arg_3_133", { i8*, i8* }** %c3
  %"$start_4" = alloca %Uint32
  %"$start_134" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start
  %"$start_fptr_135" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_134", 0
  %"$start_envptr_136" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_134", 1
  %"$c3_137" = load { i8*, i8* }*, { i8*, i8* }** %c3
  %"$start_call_138" = call %Uint32 %"$start_fptr_135"(i8* %"$start_envptr_136", { i8*, i8* }* %"$c3_137")
  store %Uint32 %"$start_call_138", %Uint32* %"$start_4"
  %"$$start_4_139" = load %Uint32, %Uint32* %"$start_4"
  store %Uint32 %"$$start_4_139", %Uint32* %"$expr_5"
  %"$$expr_5_140" = load %Uint32, %Uint32* %"$expr_5"
  ret %Uint32 %"$$expr_5_140"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_141" = call %Uint32 @"$scilla_expr_109"(i8* null)
  %"$pval_142" = alloca %Uint32
  %"$memvoidcast_143" = bitcast %Uint32* %"$pval_142" to i8*
  store %Uint32 %"$exprval_141", %Uint32* %"$pval_142"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_22", i8* %"$memvoidcast_143")
  ret void
}
