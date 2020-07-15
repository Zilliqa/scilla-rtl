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
%"$TyDescrTy_ADTTyp_43" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_42"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_42" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_44"**, %"$TyDescrTy_ADTTyp_43"* }
%"$TyDescrTy_ADTTyp_Constr_44" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$$fundef_11_env_56" = type { { i8*, i8* }* }
%TName_Pair_Int32_Int64 = type { i8, %CName_Pair_Int32_Int64* }
%CName_Pair_Int32_Int64 = type <{ i8, %Int32, %Int64 }>
%Int32 = type { i32 }
%"$$fundef_9_env_57" = type { %Int32 }
%Int64 = type { i64 }
%"$$fundef_7_env_58" = type {}
%"$$fundef_5_env_59" = type {}
%"$$fundef_3_env_60" = type {}

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
@"$TyDescr_Bnum_Prim_32" = global %"$TyDescrTy_PrimTyp_13" { i32 3, i32 0 }
@"$TyDescr_Bnum_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bnum_Prim_32" to i8*) }
@"$TyDescr_Message_Prim_34" = global %"$TyDescrTy_PrimTyp_13" { i32 4, i32 0 }
@"$TyDescr_Message_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Message_Prim_34" to i8*) }
@"$TyDescr_Event_Prim_36" = global %"$TyDescrTy_PrimTyp_13" { i32 5, i32 0 }
@"$TyDescr_Event_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Event_Prim_36" to i8*) }
@"$TyDescr_Exception_Prim_38" = global %"$TyDescrTy_PrimTyp_13" { i32 6, i32 0 }
@"$TyDescr_Exception_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Exception_Prim_38" to i8*) }
@"$TyDescr_Bystr_Prim_40" = global %"$TyDescrTy_PrimTyp_13" { i32 7, i32 0 }
@"$TyDescr_Bystr_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_13"* @"$TyDescr_Bystr_Prim_40" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int64_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_Pair_ADTTyp_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_55", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_42"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_42"*], [1 x %"$TyDescrTy_ADTTyp_Specl_42"*]* @"$TyDescr_Pair_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_48" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_15", %_TyDescrTy_Typ* @"$TyDescr_Int64_19"]
@"$TyDescr_ADT_Pair_49" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_49", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_50"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_15", %_TyDescrTy_Typ* @"$TyDescr_Int64_19"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_47" }
@"$TyDescr_Pair_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_42"*] [%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_53"]
@"$TyDescr_ADT_Pair_55" = unnamed_addr constant [4 x i8] c"Pair"

define internal { i8*, i8* }* @"$fundef_11"(%"$$fundef_11_env_56"* %0) {
entry:
  %"$$fundef_11_env_tf_87" = getelementptr inbounds %"$$fundef_11_env_56", %"$$fundef_11_env_56"* %0, i32 0, i32 0
  %"$tf_envload_88" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_11_env_tf_87"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_88", { i8*, i8* }** %tf
  %"$retval_12" = alloca { i8*, i8* }*
  %"$tf_89" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_90" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_89", i32 0
  %"$tf_91" = bitcast { i8*, i8* }* %"$tf_90" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_92" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_91"
  %"$tf_fptr_93" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_92", 0
  %"$tf_envptr_94" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_92", 1
  %"$tf_call_95" = call { i8*, i8* }* %"$tf_fptr_93"(i8* %"$tf_envptr_94")
  store { i8*, i8* }* %"$tf_call_95", { i8*, i8* }** %"$retval_12"
  %"$$retval_12_96" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_12"
  ret { i8*, i8* }* %"$$retval_12_96"
}

define internal %TName_Pair_Int32_Int64* @"$fundef_9"(%"$$fundef_9_env_57"* %0, %Int64 %1) {
entry:
  %"$$fundef_9_env_a_78" = getelementptr inbounds %"$$fundef_9_env_57", %"$$fundef_9_env_57"* %0, i32 0, i32 0
  %"$a_envload_79" = load %Int32, %Int32* %"$$fundef_9_env_a_78"
  %a = alloca %Int32
  store %Int32 %"$a_envload_79", %Int32* %a
  %"$retval_10" = alloca %TName_Pair_Int32_Int64*
  %"$a_80" = load %Int32, %Int32* %a
  %"$adtval_81_load" = load i8*, i8** @_execptr
  %"$adtval_81_salloc" = call i8* @_salloc(i8* %"$adtval_81_load", i64 13)
  %"$adtval_81" = bitcast i8* %"$adtval_81_salloc" to %CName_Pair_Int32_Int64*
  %"$adtgep_82" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_81", i32 0, i32 0
  store i8 0, i8* %"$adtgep_82"
  %"$adtgep_83" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_81", i32 0, i32 1
  store %Int32 %"$a_80", %Int32* %"$adtgep_83"
  %"$adtgep_84" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_81", i32 0, i32 2
  store %Int64 %1, %Int64* %"$adtgep_84"
  %"$adtptr_85" = bitcast %CName_Pair_Int32_Int64* %"$adtval_81" to %TName_Pair_Int32_Int64*
  store %TName_Pair_Int32_Int64* %"$adtptr_85", %TName_Pair_Int32_Int64** %"$retval_10"
  %"$$retval_10_86" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$retval_10"
  ret %TName_Pair_Int32_Int64* %"$$retval_10_86"
}

define internal { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } @"$fundef_7"(%"$$fundef_7_env_58"* %0, %Int32 %1) {
entry:
  %"$retval_8" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }
  %"$$fundef_9_envp_72_load" = load i8*, i8** @_execptr
  %"$$fundef_9_envp_72_salloc" = call i8* @_salloc(i8* %"$$fundef_9_envp_72_load", i64 4)
  %"$$fundef_9_envp_72" = bitcast i8* %"$$fundef_9_envp_72_salloc" to %"$$fundef_9_env_57"*
  %"$$fundef_9_env_voidp_74" = bitcast %"$$fundef_9_env_57"* %"$$fundef_9_envp_72" to i8*
  %"$$fundef_9_cloval_75" = insertvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } { %TName_Pair_Int32_Int64* (i8*, %Int64)* bitcast (%TName_Pair_Int32_Int64* (%"$$fundef_9_env_57"*, %Int64)* @"$fundef_9" to %TName_Pair_Int32_Int64* (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_9_env_voidp_74", 1
  %"$$fundef_9_env_a_76" = getelementptr inbounds %"$$fundef_9_env_57", %"$$fundef_9_env_57"* %"$$fundef_9_envp_72", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_9_env_a_76"
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$fundef_9_cloval_75", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_8"
  %"$$retval_8_77" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_8"
  ret { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$retval_8_77"
}

define internal { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } @"$fundef_5"(%"$$fundef_5_env_59"* %0) {
entry:
  %"$retval_6" = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)* bitcast ({ %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_7_env_58"*, %Int32)* @"$fundef_7" to { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*), i8* null }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_6"
  %"$$retval_6_71" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_6"
  ret { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$$retval_6_71"
}

define internal { i8*, i8* }* @"$fundef_3"(%"$$fundef_3_env_60"* %0) {
entry:
  %"$retval_4" = alloca { i8*, i8* }*
  %"$dyndisp_table_64_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_64_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_64_salloc_load", i64 32)
  %"$dyndisp_table_64_salloc" = bitcast i8* %"$dyndisp_table_64_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_64" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_64_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_65" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_64", i32 1
  %"$dyndisp_pcast_66" = bitcast { i8*, i8* }* %"$dyndisp_gep_65" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (%"$$fundef_5_env_59"*)* @"$fundef_5" to { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_66"
  store { i8*, i8* }* %"$dyndisp_table_64", { i8*, i8* }** %"$retval_4"
  %"$$retval_4_67" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_4"
  ret { i8*, i8* }* %"$$retval_4_67"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Pair_Int32_Int64* @"$scilla_expr_97"(i8* %0) {
entry:
  %"$expr_2" = alloca %TName_Pair_Int32_Int64*
  %tf = alloca { i8*, i8* }*
  %"$dyndisp_table_101_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_101_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_101_salloc_load", i64 32)
  %"$dyndisp_table_101_salloc" = bitcast i8* %"$dyndisp_table_101_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_101" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_101_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_102" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_101", i32 0
  %"$dyndisp_pcast_103" = bitcast { i8*, i8* }* %"$dyndisp_gep_102" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_3_env_60"*)* @"$fundef_3" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_103"
  store { i8*, i8* }* %"$dyndisp_table_101", { i8*, i8* }** %tf
  %tf2 = alloca { i8*, i8* }*
  %"$$fundef_11_envp_104_load" = load i8*, i8** @_execptr
  %"$$fundef_11_envp_104_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_104_load", i64 8)
  %"$$fundef_11_envp_104" = bitcast i8* %"$$fundef_11_envp_104_salloc" to %"$$fundef_11_env_56"*
  %"$$fundef_11_env_voidp_106" = bitcast %"$$fundef_11_env_56"* %"$$fundef_11_envp_104" to i8*
  %"$$fundef_11_cloval_107" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_11_env_56"*)* @"$fundef_11" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_11_env_voidp_106", 1
  %"$$fundef_11_env_tf_108" = getelementptr inbounds %"$$fundef_11_env_56", %"$$fundef_11_env_56"* %"$$fundef_11_envp_104", i32 0, i32 0
  %"$tf_109" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_109", { i8*, i8* }** %"$$fundef_11_env_tf_108"
  %"$dyndisp_table_110_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_110_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_110_salloc_load", i64 32)
  %"$dyndisp_table_110_salloc" = bitcast i8* %"$dyndisp_table_110_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_110" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_110_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_111" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_110", i32 0
  %"$dyndisp_pcast_112" = bitcast { i8*, i8* }* %"$dyndisp_gep_111" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_11_cloval_107", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_112"
  store { i8*, i8* }* %"$dyndisp_table_110", { i8*, i8* }** %tf2
  %f = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }
  %"$tf2_113" = load { i8*, i8* }*, { i8*, i8* }** %tf2
  %"$tf2_114" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_113", i32 0
  %"$tf2_115" = bitcast { i8*, i8* }* %"$tf2_114" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf2_116" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf2_115"
  %"$tf2_fptr_117" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_116", 0
  %"$tf2_envptr_118" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_116", 1
  %"$tf2_call_119" = call { i8*, i8* }* %"$tf2_fptr_117"(i8* %"$tf2_envptr_118")
  %"$tf2_120" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_call_119", i32 1
  %"$tf2_121" = bitcast { i8*, i8* }* %"$tf2_120" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$tf2_122" = load { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$tf2_121"
  %"$tf2_fptr_123" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_122", 0
  %"$tf2_envptr_124" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_122", 1
  %"$tf2_call_125" = call { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_fptr_123"(i8* %"$tf2_envptr_124")
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_call_125", { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f
  %one = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %one
  %two = alloca %Int64
  store %Int64 { i64 2 }, %Int64* %two
  %"$f_0" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }
  %"$f_126" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f
  %"$f_fptr_127" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_126", 0
  %"$f_envptr_128" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_126", 1
  %"$one_129" = load %Int32, %Int32* %one
  %"$f_call_130" = call { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_127"(i8* %"$f_envptr_128", %Int32 %"$one_129")
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_call_130", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_0"
  %"$f_1" = alloca %TName_Pair_Int32_Int64*
  %"$$f_0_131" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_0"
  %"$$f_0_fptr_132" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_0_131", 0
  %"$$f_0_envptr_133" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_0_131", 1
  %"$two_134" = load %Int64, %Int64* %two
  %"$$f_0_call_135" = call %TName_Pair_Int32_Int64* %"$$f_0_fptr_132"(i8* %"$$f_0_envptr_133", %Int64 %"$two_134")
  store %TName_Pair_Int32_Int64* %"$$f_0_call_135", %TName_Pair_Int32_Int64** %"$f_1"
  %"$$f_1_136" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$f_1"
  store %TName_Pair_Int32_Int64* %"$$f_1_136", %TName_Pair_Int32_Int64** %"$expr_2"
  %"$$expr_2_137" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$expr_2"
  ret %TName_Pair_Int32_Int64* %"$$expr_2_137"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_138" = call %TName_Pair_Int32_Int64* @"$scilla_expr_97"(i8* null)
  %"$memvoidcast_139" = bitcast %TName_Pair_Int32_Int64* %"$exprval_138" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int64_45", i8* %"$memvoidcast_139")
  ret void
}
