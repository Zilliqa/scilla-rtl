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

define internal { i8*, i8* }* @"$fundef_11"(%"$$fundef_11_env_48"* %0) {
entry:
  %"$$fundef_11_env_tf_79" = getelementptr inbounds %"$$fundef_11_env_48", %"$$fundef_11_env_48"* %0, i32 0, i32 0
  %"$tf_envload_80" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_11_env_tf_79"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_80", { i8*, i8* }** %tf
  %"$retval_12" = alloca { i8*, i8* }*
  %"$tf_81" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_82" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_81", i32 0
  %"$tf_83" = bitcast { i8*, i8* }* %"$tf_82" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_84" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_83"
  %"$tf_fptr_85" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_84", 0
  %"$tf_envptr_86" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_84", 1
  %"$tf_call_87" = call { i8*, i8* }* %"$tf_fptr_85"(i8* %"$tf_envptr_86")
  store { i8*, i8* }* %"$tf_call_87", { i8*, i8* }** %"$retval_12"
  %"$$retval_12_88" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_12"
  ret { i8*, i8* }* %"$$retval_12_88"
}

define internal %TName_Pair_Int32_Int64* @"$fundef_9"(%"$$fundef_9_env_49"* %0, %Int64 %1) {
entry:
  %"$$fundef_9_env_a_70" = getelementptr inbounds %"$$fundef_9_env_49", %"$$fundef_9_env_49"* %0, i32 0, i32 0
  %"$a_envload_71" = load %Int32, %Int32* %"$$fundef_9_env_a_70"
  %a = alloca %Int32
  store %Int32 %"$a_envload_71", %Int32* %a
  %"$retval_10" = alloca %TName_Pair_Int32_Int64*
  %"$a_72" = load %Int32, %Int32* %a
  %"$adtval_73_load" = load i8*, i8** @_execptr
  %"$adtval_73_salloc" = call i8* @_salloc(i8* %"$adtval_73_load", i64 13)
  %"$adtval_73" = bitcast i8* %"$adtval_73_salloc" to %CName_Pair_Int32_Int64*
  %"$adtgep_74" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_73", i32 0, i32 0
  store i8 0, i8* %"$adtgep_74"
  %"$adtgep_75" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_73", i32 0, i32 1
  store %Int32 %"$a_72", %Int32* %"$adtgep_75"
  %"$adtgep_76" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_73", i32 0, i32 2
  store %Int64 %1, %Int64* %"$adtgep_76"
  %"$adtptr_77" = bitcast %CName_Pair_Int32_Int64* %"$adtval_73" to %TName_Pair_Int32_Int64*
  store %TName_Pair_Int32_Int64* %"$adtptr_77", %TName_Pair_Int32_Int64** %"$retval_10"
  %"$$retval_10_78" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$retval_10"
  ret %TName_Pair_Int32_Int64* %"$$retval_10_78"
}

define internal { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } @"$fundef_7"(%"$$fundef_7_env_50"* %0, %Int32 %1) {
entry:
  %"$retval_8" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }
  %"$$fundef_9_envp_64_load" = load i8*, i8** @_execptr
  %"$$fundef_9_envp_64_salloc" = call i8* @_salloc(i8* %"$$fundef_9_envp_64_load", i64 4)
  %"$$fundef_9_envp_64" = bitcast i8* %"$$fundef_9_envp_64_salloc" to %"$$fundef_9_env_49"*
  %"$$fundef_9_env_voidp_66" = bitcast %"$$fundef_9_env_49"* %"$$fundef_9_envp_64" to i8*
  %"$$fundef_9_cloval_67" = insertvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } { %TName_Pair_Int32_Int64* (i8*, %Int64)* bitcast (%TName_Pair_Int32_Int64* (%"$$fundef_9_env_49"*, %Int64)* @"$fundef_9" to %TName_Pair_Int32_Int64* (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_9_env_voidp_66", 1
  %"$$fundef_9_env_a_68" = getelementptr inbounds %"$$fundef_9_env_49", %"$$fundef_9_env_49"* %"$$fundef_9_envp_64", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_9_env_a_68"
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$fundef_9_cloval_67", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_8"
  %"$$retval_8_69" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_8"
  ret { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$retval_8_69"
}

define internal { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } @"$fundef_5"(%"$$fundef_5_env_51"* %0) {
entry:
  %"$retval_6" = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)* bitcast ({ %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_7_env_50"*, %Int32)* @"$fundef_7" to { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*), i8* null }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_6"
  %"$$retval_6_63" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_6"
  ret { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$$retval_6_63"
}

define internal { i8*, i8* }* @"$fundef_3"(%"$$fundef_3_env_52"* %0) {
entry:
  %"$retval_4" = alloca { i8*, i8* }*
  %"$dyndisp_table_56_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_56_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_56_salloc_load", i64 32)
  %"$dyndisp_table_56_salloc" = bitcast i8* %"$dyndisp_table_56_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_56" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_56_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_57" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_56", i32 1
  %"$dyndisp_pcast_58" = bitcast { i8*, i8* }* %"$dyndisp_gep_57" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (%"$$fundef_5_env_51"*)* @"$fundef_5" to { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_58"
  store { i8*, i8* }* %"$dyndisp_table_56", { i8*, i8* }** %"$retval_4"
  %"$$retval_4_59" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_4"
  ret { i8*, i8* }* %"$$retval_4_59"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Pair_Int32_Int64* @"$scilla_expr_89"(i8* %0) {
entry:
  %"$expr_2" = alloca %TName_Pair_Int32_Int64*
  %tf = alloca { i8*, i8* }*
  %"$dyndisp_table_93_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_93_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_93_salloc_load", i64 32)
  %"$dyndisp_table_93_salloc" = bitcast i8* %"$dyndisp_table_93_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_93" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_93_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_94" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_93", i32 0
  %"$dyndisp_pcast_95" = bitcast { i8*, i8* }* %"$dyndisp_gep_94" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_3_env_52"*)* @"$fundef_3" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_95"
  store { i8*, i8* }* %"$dyndisp_table_93", { i8*, i8* }** %tf
  %tf2 = alloca { i8*, i8* }*
  %"$$fundef_11_envp_96_load" = load i8*, i8** @_execptr
  %"$$fundef_11_envp_96_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_96_load", i64 8)
  %"$$fundef_11_envp_96" = bitcast i8* %"$$fundef_11_envp_96_salloc" to %"$$fundef_11_env_48"*
  %"$$fundef_11_env_voidp_98" = bitcast %"$$fundef_11_env_48"* %"$$fundef_11_envp_96" to i8*
  %"$$fundef_11_cloval_99" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_11_env_48"*)* @"$fundef_11" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_11_env_voidp_98", 1
  %"$$fundef_11_env_tf_100" = getelementptr inbounds %"$$fundef_11_env_48", %"$$fundef_11_env_48"* %"$$fundef_11_envp_96", i32 0, i32 0
  %"$tf_101" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_101", { i8*, i8* }** %"$$fundef_11_env_tf_100"
  %"$dyndisp_table_102_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_102_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_102_salloc_load", i64 32)
  %"$dyndisp_table_102_salloc" = bitcast i8* %"$dyndisp_table_102_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_102" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_102_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_103" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_102", i32 0
  %"$dyndisp_pcast_104" = bitcast { i8*, i8* }* %"$dyndisp_gep_103" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_11_cloval_99", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_104"
  store { i8*, i8* }* %"$dyndisp_table_102", { i8*, i8* }** %tf2
  %f = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }
  %"$tf2_105" = load { i8*, i8* }*, { i8*, i8* }** %tf2
  %"$tf2_106" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_105", i32 0
  %"$tf2_107" = bitcast { i8*, i8* }* %"$tf2_106" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf2_108" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf2_107"
  %"$tf2_fptr_109" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_108", 0
  %"$tf2_envptr_110" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_108", 1
  %"$tf2_call_111" = call { i8*, i8* }* %"$tf2_fptr_109"(i8* %"$tf2_envptr_110")
  %"$tf2_112" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_call_111", i32 1
  %"$tf2_113" = bitcast { i8*, i8* }* %"$tf2_112" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$tf2_114" = load { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$tf2_113"
  %"$tf2_fptr_115" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_114", 0
  %"$tf2_envptr_116" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_114", 1
  %"$tf2_call_117" = call { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_fptr_115"(i8* %"$tf2_envptr_116")
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_call_117", { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f
  %one = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %one
  %two = alloca %Int64
  store %Int64 { i64 2 }, %Int64* %two
  %"$f_0" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }
  %"$f_118" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f
  %"$f_fptr_119" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_118", 0
  %"$f_envptr_120" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_118", 1
  %"$one_121" = load %Int32, %Int32* %one
  %"$f_call_122" = call { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_119"(i8* %"$f_envptr_120", %Int32 %"$one_121")
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_call_122", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_0"
  %"$f_1" = alloca %TName_Pair_Int32_Int64*
  %"$$f_0_123" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_0"
  %"$$f_0_fptr_124" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_0_123", 0
  %"$$f_0_envptr_125" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_0_123", 1
  %"$two_126" = load %Int64, %Int64* %two
  %"$$f_0_call_127" = call %TName_Pair_Int32_Int64* %"$$f_0_fptr_124"(i8* %"$$f_0_envptr_125", %Int64 %"$two_126")
  store %TName_Pair_Int32_Int64* %"$$f_0_call_127", %TName_Pair_Int32_Int64** %"$f_1"
  %"$$f_1_128" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$f_1"
  store %TName_Pair_Int32_Int64* %"$$f_1_128", %TName_Pair_Int32_Int64** %"$expr_2"
  %"$$expr_2_129" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$expr_2"
  ret %TName_Pair_Int32_Int64* %"$$expr_2_129"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_130" = call %TName_Pair_Int32_Int64* @"$scilla_expr_89"(i8* null)
  %"$memvoidcast_131" = bitcast %TName_Pair_Int32_Int64* %"$exprval_130" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int64_37", i8* %"$memvoidcast_131")
  ret void
}
