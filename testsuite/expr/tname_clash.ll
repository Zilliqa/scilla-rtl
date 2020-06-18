; let tf =
; tfun 'A =>
; tfun 'B =>
; fun (a : 'A) =>
; fun (b : 'B) =>
; Pair {'A 'B} a b
; 
; in
; let tf2 =
; tfun 'B =>
; @tf 'B
; in
; let f = @tf2 Int32 Int64 in
; let one = Int32 1 in
; let two = Int64 2 in
; f one two
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_13" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_35" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_34"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_34" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_36"**, %"$TyDescrTy_ADTTyp_35"* }
%"$TyDescrTy_ADTTyp_Constr_36" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$$fundef_11_env_48" = type { { i8*, i8* }* }
%TName_Pair_Int32_Int64 = type { i8, %CName_Pair_Int32_Int64* }
%CName_Pair_Int32_Int64 = type <{ i8, %Int32, %Int64 }>
%Int32 = type { i32 }
%"$$fundef_9_env_49" = type { %Int32 }
%Int64 = type { i64 }
%"$$fundef_7_env_50" = type {}
%"$$fundef_5_env_51" = type {}
%"$$fundef_3_env_52" = type {}

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_14" = global %"$TyDescrTy_PrimTyp_13" zeroinitializer
@"$TyDescr_Int32_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int32_Prim_14" to i8*) }
@"$TyDescr_Uint32_Prim_16" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 0 }
@"$TyDescr_Uint32_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint32_Prim_16" to i8*) }
@"$TyDescr_Int64_Prim_18" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 1 }
@"$TyDescr_Int64_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int64_Prim_18" to i8*) }
@"$TyDescr_Uint64_Prim_20" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 1 }
@"$TyDescr_Uint64_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint64_Prim_20" to i8*) }
@"$TyDescr_Int128_Prim_22" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 2 }
@"$TyDescr_Int128_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int128_Prim_22" to i8*) }
@"$TyDescr_Uint128_Prim_24" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 2 }
@"$TyDescr_Uint128_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint128_Prim_24" to i8*) }
@"$TyDescr_Int256_Prim_26" = global %"$TyDescrTy_PrimTyp_13" { i32 0, i32 3 }
@"$TyDescr_Int256_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Int256_Prim_26" to i8*) }
@"$TyDescr_Uint256_Prim_28" = global %"$TyDescrTy_PrimTyp_13" { i32 1, i32 3 }
@"$TyDescr_Uint256_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Uint256_Prim_28" to i8*) }
@"$TyDescr_String_Prim_30" = global %"$TyDescrTy_PrimTyp_13" { i32 2, i32 0 }
@"$TyDescr_String_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_String_Prim_30" to i8*) }
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_13" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int64_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_45" to i8*) }
@"$TyDescr_Pair_ADTTyp_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_35" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_47", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_34"*], [1 x %"$TyDescrTy_ADTTyp_Specl_34"*]* @"$TyDescr_Pair_ADTTyp_m_specls_46", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_40" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_15", %_TyDescrTy_Typ* @"$TyDescr_Int64_19"]
@"$TyDescr_ADT_Pair_41" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_41", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_40", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_43" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_42"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_15", %_TyDescrTy_Typ* @"$TyDescr_Int64_19"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_44", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_36"*], [1 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_43", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Pair_ADTTyp_39" }
@"$TyDescr_Pair_ADTTyp_m_specls_46" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_34"*] [%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_45"]
@"$TyDescr_ADT_Pair_47" = unnamed_addr constant [4 x i8] c"Pair"
@"$dyndisp_56" = global [2 x { i8*, i8* }] zeroinitializer
@"$dyndisp_91" = global [2 x { i8*, i8* }] zeroinitializer
@"$dyndisp_98" = global [2 x { i8*, i8* }] zeroinitializer

define internal { i8*, i8* }* @"$fundef_11"(%"$$fundef_11_env_48"* %0) {
entry:
  %"$$fundef_11_env_tf_77" = getelementptr inbounds %"$$fundef_11_env_48", %"$$fundef_11_env_48"* %0, i32 0, i32 0
  %"$tf_envload_78" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_11_env_tf_77"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_78", { i8*, i8* }** %tf
  %"$retval_12" = alloca { i8*, i8* }*
  %"$tf_79" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_80" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_79", i32 0
  %"$tf_81" = bitcast { i8*, i8* }* %"$tf_80" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_82" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_81"
  %"$tf_fptr_83" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_82", 0
  %"$tf_envptr_84" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_82", 1
  %"$tf_call_85" = call { i8*, i8* }* %"$tf_fptr_83"(i8* %"$tf_envptr_84")
  store { i8*, i8* }* %"$tf_call_85", { i8*, i8* }** %"$retval_12"
  %"$$retval_12_86" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_12"
  ret { i8*, i8* }* %"$$retval_12_86"
}

define internal %TName_Pair_Int32_Int64* @"$fundef_9"(%"$$fundef_9_env_49"* %0, %Int64 %1) {
entry:
  %"$$fundef_9_env_a_68" = getelementptr inbounds %"$$fundef_9_env_49", %"$$fundef_9_env_49"* %0, i32 0, i32 0
  %"$a_envload_69" = load %Int32, %Int32* %"$$fundef_9_env_a_68"
  %a = alloca %Int32
  store %Int32 %"$a_envload_69", %Int32* %a
  %"$retval_10" = alloca %TName_Pair_Int32_Int64*
  %"$a_70" = load %Int32, %Int32* %a
  %"$adtval_71_load" = load i8*, i8** @_execptr
  %"$adtval_71_salloc" = call i8* @_salloc(i8* %"$adtval_71_load", i64 13)
  %"$adtval_71" = bitcast i8* %"$adtval_71_salloc" to %CName_Pair_Int32_Int64*
  %"$adtgep_72" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_71", i32 0, i32 0
  store i8 0, i8* %"$adtgep_72"
  %"$adtgep_73" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_71", i32 0, i32 1
  store %Int32 %"$a_70", %Int32* %"$adtgep_73"
  %"$adtgep_74" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_71", i32 0, i32 2
  store %Int64 %1, %Int64* %"$adtgep_74"
  %"$adtptr_75" = bitcast %CName_Pair_Int32_Int64* %"$adtval_71" to %TName_Pair_Int32_Int64*
  store %TName_Pair_Int32_Int64* %"$adtptr_75", %TName_Pair_Int32_Int64** %"$retval_10"
  %"$$retval_10_76" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$retval_10"
  ret %TName_Pair_Int32_Int64* %"$$retval_10_76"
}

define internal { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } @"$fundef_7"(%"$$fundef_7_env_50"* %0, %Int32 %1) {
entry:
  %"$retval_8" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }
  %"$$fundef_9_envp_62_load" = load i8*, i8** @_execptr
  %"$$fundef_9_envp_62_salloc" = call i8* @_salloc(i8* %"$$fundef_9_envp_62_load", i64 4)
  %"$$fundef_9_envp_62" = bitcast i8* %"$$fundef_9_envp_62_salloc" to %"$$fundef_9_env_49"*
  %"$$fundef_9_env_voidp_64" = bitcast %"$$fundef_9_env_49"* %"$$fundef_9_envp_62" to i8*
  %"$$fundef_9_cloval_65" = insertvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } { %TName_Pair_Int32_Int64* (i8*, %Int64)* bitcast (%TName_Pair_Int32_Int64* (%"$$fundef_9_env_49"*, %Int64)* @"$fundef_9" to %TName_Pair_Int32_Int64* (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_9_env_voidp_64", 1
  %"$$fundef_9_env_a_66" = getelementptr inbounds %"$$fundef_9_env_49", %"$$fundef_9_env_49"* %"$$fundef_9_envp_62", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_9_env_a_66"
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$fundef_9_cloval_65", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_8"
  %"$$retval_8_67" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_8"
  ret { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$retval_8_67"
}

define internal { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } @"$fundef_5"(%"$$fundef_5_env_51"* %0) {
entry:
  %"$retval_6" = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)* bitcast ({ %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_7_env_50"*, %Int32)* @"$fundef_7" to { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*), i8* null }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_6"
  %"$$retval_6_61" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_6"
  ret { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$$retval_6_61"
}

define internal { i8*, i8* }* @"$fundef_3"(%"$$fundef_3_env_52"* %0) {
entry:
  %"$retval_4" = alloca { i8*, i8* }*
  store { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (%"$$fundef_5_env_51"*)* @"$fundef_5" to { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_56", i32 0, i32 1) to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_56", i32 0, i32 0), { i8*, i8* }** %"$retval_4"
  %"$$retval_4_57" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_4"
  ret { i8*, i8* }* %"$$retval_4_57"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Pair_Int32_Int64* @"$scilla_expr_87"(i8* %0) {
entry:
  %"$expr_2" = alloca %TName_Pair_Int32_Int64*
  %tf = alloca { i8*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_3_env_52"*)* @"$fundef_3" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_91" to { { i8*, i8* }* (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_91", i32 0, i32 0), { i8*, i8* }** %tf
  %tf2 = alloca { i8*, i8* }*
  %"$$fundef_11_envp_92_load" = load i8*, i8** @_execptr
  %"$$fundef_11_envp_92_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_92_load", i64 8)
  %"$$fundef_11_envp_92" = bitcast i8* %"$$fundef_11_envp_92_salloc" to %"$$fundef_11_env_48"*
  %"$$fundef_11_env_voidp_94" = bitcast %"$$fundef_11_env_48"* %"$$fundef_11_envp_92" to i8*
  %"$$fundef_11_cloval_95" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_11_env_48"*)* @"$fundef_11" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_11_env_voidp_94", 1
  %"$$fundef_11_env_tf_96" = getelementptr inbounds %"$$fundef_11_env_48", %"$$fundef_11_env_48"* %"$$fundef_11_envp_92", i32 0, i32 0
  %"$tf_97" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_97", { i8*, i8* }** %"$$fundef_11_env_tf_96"
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_11_cloval_95", { { i8*, i8* }* (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_98" to { { i8*, i8* }* (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_98", i32 0, i32 0), { i8*, i8* }** %tf2
  %f = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }
  %"$tf2_99" = load { i8*, i8* }*, { i8*, i8* }** %tf2
  %"$tf2_100" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_99", i32 0
  %"$tf2_101" = bitcast { i8*, i8* }* %"$tf2_100" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf2_102" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf2_101"
  %"$tf2_fptr_103" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_102", 0
  %"$tf2_envptr_104" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_102", 1
  %"$tf2_call_105" = call { i8*, i8* }* %"$tf2_fptr_103"(i8* %"$tf2_envptr_104")
  %"$tf2_106" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_call_105", i32 1
  %"$tf2_107" = bitcast { i8*, i8* }* %"$tf2_106" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$tf2_108" = load { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$tf2_107"
  %"$tf2_fptr_109" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_108", 0
  %"$tf2_envptr_110" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_108", 1
  %"$tf2_call_111" = call { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_fptr_109"(i8* %"$tf2_envptr_110")
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_call_111", { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f
  %one = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %one
  %two = alloca %Int64
  store %Int64 { i64 2 }, %Int64* %two
  %"$f_0" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }
  %"$f_112" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f
  %"$f_fptr_113" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_112", 0
  %"$f_envptr_114" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_112", 1
  %"$one_115" = load %Int32, %Int32* %one
  %"$f_call_116" = call { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_113"(i8* %"$f_envptr_114", %Int32 %"$one_115")
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_call_116", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_0"
  %"$f_1" = alloca %TName_Pair_Int32_Int64*
  %"$$f_0_117" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_0"
  %"$$f_0_fptr_118" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_0_117", 0
  %"$$f_0_envptr_119" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_0_117", 1
  %"$two_120" = load %Int64, %Int64* %two
  %"$$f_0_call_121" = call %TName_Pair_Int32_Int64* %"$$f_0_fptr_118"(i8* %"$$f_0_envptr_119", %Int64 %"$two_120")
  store %TName_Pair_Int32_Int64* %"$$f_0_call_121", %TName_Pair_Int32_Int64** %"$f_1"
  %"$$f_1_122" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$f_1"
  store %TName_Pair_Int32_Int64* %"$$f_1_122", %TName_Pair_Int32_Int64** %"$expr_2"
  %"$$expr_2_123" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$expr_2"
  ret %TName_Pair_Int32_Int64* %"$$expr_2_123"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_124" = call %TName_Pair_Int32_Int64* @"$scilla_expr_87"(i8* null)
  %"$memvoidcast_125" = bitcast %TName_Pair_Int32_Int64* %"$exprval_124" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int64_37", i8* %"$memvoidcast_125")
  ret void
}
