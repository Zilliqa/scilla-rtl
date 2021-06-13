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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_13" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_43" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_42"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_42" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_44"**, %"$TyDescrTy_ADTTyp_43"* }
%"$TyDescrTy_ADTTyp_Constr_44" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_222" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_223" = type { %ParamDescrString, i32, %"$ParamDescr_222"* }
%"$$fundef_11_env_58" = type { { i8*, i8* }* }
%TName_Pair_Int32_Int64 = type { i8, %CName_Pair_Int32_Int64* }
%CName_Pair_Int32_Int64 = type <{ i8, %Int32, %Int64 }>
%Int32 = type { i32 }
%"$$fundef_9_env_59" = type { %Int32 }
%Int64 = type { i64 }
%"$$fundef_7_env_60" = type {}
%"$$fundef_5_env_61" = type {}
%"$$fundef_3_env_62" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
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
@"$TyDescr_ADT_Pair_Int32_Int64_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_55" to i8*) }
@"$TyDescr_Pair_ADTTyp_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_43" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_57", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_42"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_42"*], [1 x %"$TyDescrTy_ADTTyp_Specl_42"*]* @"$TyDescr_Pair_ADTTyp_m_specls_56", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_50" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_15", %_TyDescrTy_Typ* @"$TyDescr_Int64_19"]
@"$TyDescr_ADT_Pair_51" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_44" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_51", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_44"*] [%"$TyDescrTy_ADTTyp_Constr_44"* @"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_52"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_54" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_15", %_TyDescrTy_Typ* @"$TyDescr_Int64_19"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_42" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_44"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_44"*], [1 x %"$TyDescrTy_ADTTyp_Constr_44"*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_43"* @"$TyDescr_Pair_ADTTyp_49" }
@"$TyDescr_Pair_ADTTyp_m_specls_56" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_42"*] [%"$TyDescrTy_ADTTyp_Specl_42"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_55"]
@"$TyDescr_ADT_Pair_57" = unnamed_addr constant [4 x i8] c"Pair"
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_37", %_TyDescrTy_Typ* @"$TyDescr_Int64_19", %_TyDescrTy_Typ* @"$TyDescr_Uint256_29", %_TyDescrTy_Typ* @"$TyDescr_Uint32_17", %_TyDescrTy_Typ* @"$TyDescr_Uint64_21", %_TyDescrTy_Typ* @"$TyDescr_Bnum_33", %_TyDescrTy_Typ* @"$TyDescr_Uint128_25", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int64_45", %_TyDescrTy_Typ* @"$TyDescr_Exception_39", %_TyDescrTy_Typ* @"$TyDescr_String_31", %_TyDescrTy_Typ* @"$TyDescr_Int256_27", %_TyDescrTy_Typ* @"$TyDescr_Int128_23", %_TyDescrTy_Typ* @"$TyDescr_Bystr_41", %_TyDescrTy_Typ* @"$TyDescr_Message_35", %_TyDescrTy_Typ* @"$TyDescr_Int32_15"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_222"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_223"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { i8*, i8* }* @"$fundef_11"(%"$$fundef_11_env_58"* %0) {
entry:
  %"$$fundef_11_env_tf_109" = getelementptr inbounds %"$$fundef_11_env_58", %"$$fundef_11_env_58"* %0, i32 0, i32 0
  %"$tf_envload_110" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_11_env_tf_109", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_110", { i8*, i8* }** %tf, align 8
  %"$retval_12" = alloca { i8*, i8* }*, align 8
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %entry
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %"$tf_116" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_117" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_116", i32 0
  %"$tf_118" = bitcast { i8*, i8* }* %"$tf_117" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_119" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_118", align 8
  %"$tf_fptr_120" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_119", 0
  %"$tf_envptr_121" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_119", 1
  %"$tf_call_122" = call { i8*, i8* }* %"$tf_fptr_120"(i8* %"$tf_envptr_121")
  store { i8*, i8* }* %"$tf_call_122", { i8*, i8* }** %"$retval_12", align 8
  %"$$retval_12_123" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_12", align 8
  ret { i8*, i8* }* %"$$retval_12_123"
}

define internal %TName_Pair_Int32_Int64* @"$fundef_9"(%"$$fundef_9_env_59"* %0, %Int64 %1) {
entry:
  %"$$fundef_9_env_a_95" = getelementptr inbounds %"$$fundef_9_env_59", %"$$fundef_9_env_59"* %0, i32 0, i32 0
  %"$a_envload_96" = load %Int32, %Int32* %"$$fundef_9_env_a_95", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_96", %Int32* %a, align 4
  %"$retval_10" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %entry
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %"$a_102" = load %Int32, %Int32* %a, align 4
  %"$adtval_103_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_103_salloc" = call i8* @_salloc(i8* %"$adtval_103_load", i64 13)
  %"$adtval_103" = bitcast i8* %"$adtval_103_salloc" to %CName_Pair_Int32_Int64*
  %"$adtgep_104" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_103", i32 0, i32 0
  store i8 0, i8* %"$adtgep_104", align 1
  %"$adtgep_105" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_103", i32 0, i32 1
  store %Int32 %"$a_102", %Int32* %"$adtgep_105", align 4
  %"$adtgep_106" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_103", i32 0, i32 2
  store %Int64 %1, %Int64* %"$adtgep_106", align 8
  %"$adtptr_107" = bitcast %CName_Pair_Int32_Int64* %"$adtval_103" to %TName_Pair_Int32_Int64*
  store %TName_Pair_Int32_Int64* %"$adtptr_107", %TName_Pair_Int32_Int64** %"$retval_10", align 8
  %"$$retval_10_108" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$retval_10", align 8
  ret %TName_Pair_Int32_Int64* %"$$retval_10_108"
}

define internal { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } @"$fundef_7"(%"$$fundef_7_env_60"* %0, %Int32 %1) {
entry:
  %"$retval_8" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %entry
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %"$$fundef_9_envp_89_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_9_envp_89_salloc" = call i8* @_salloc(i8* %"$$fundef_9_envp_89_load", i64 4)
  %"$$fundef_9_envp_89" = bitcast i8* %"$$fundef_9_envp_89_salloc" to %"$$fundef_9_env_59"*
  %"$$fundef_9_env_voidp_91" = bitcast %"$$fundef_9_env_59"* %"$$fundef_9_envp_89" to i8*
  %"$$fundef_9_cloval_92" = insertvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } { %TName_Pair_Int32_Int64* (i8*, %Int64)* bitcast (%TName_Pair_Int32_Int64* (%"$$fundef_9_env_59"*, %Int64)* @"$fundef_9" to %TName_Pair_Int32_Int64* (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_9_env_voidp_91", 1
  %"$$fundef_9_env_a_93" = getelementptr inbounds %"$$fundef_9_env_59", %"$$fundef_9_env_59"* %"$$fundef_9_envp_89", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_9_env_a_93", align 4
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$fundef_9_cloval_92", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_8", align 8
  %"$$retval_8_94" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_8", align 8
  ret { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$retval_8_94"
}

define internal { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } @"$fundef_5"(%"$$fundef_5_env_61"* %0) {
entry:
  %"$retval_6" = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %entry
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem, align 8
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)* bitcast ({ %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_7_env_60"*, %Int32)* @"$fundef_7" to { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*), i8* null }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_6", align 8
  %"$$retval_6_83" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_6", align 8
  ret { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$$retval_6_83"
}

define internal { i8*, i8* }* @"$fundef_3"(%"$$fundef_3_env_62"* %0) {
entry:
  %"$retval_4" = alloca { i8*, i8* }*, align 8
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %entry
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem, align 8
  %"$dyndisp_table_71_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_71_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_71_salloc_load", i64 32)
  %"$dyndisp_table_71_salloc" = bitcast i8* %"$dyndisp_table_71_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_71" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_71_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_72" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_71", i32 1
  %"$dyndisp_pcast_73" = bitcast { i8*, i8* }* %"$dyndisp_gep_72" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (%"$$fundef_5_env_61"*)* @"$fundef_5" to { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_73", align 8
  store { i8*, i8* }* %"$dyndisp_table_71", { i8*, i8* }** %"$retval_4", align 8
  %"$$retval_4_74" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_4", align 8
  ret { i8*, i8* }* %"$$retval_4_74"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Pair_Int32_Int64* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_2" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %entry
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$dyndisp_table_137_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_137_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_137_salloc_load", i64 32)
  %"$dyndisp_table_137_salloc" = bitcast i8* %"$dyndisp_table_137_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_137" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_137_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_138" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_137", i32 0
  %"$dyndisp_pcast_139" = bitcast { i8*, i8* }* %"$dyndisp_gep_138" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_3_env_62"*)* @"$fundef_3" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_139", align 8
  store { i8*, i8* }* %"$dyndisp_table_137", { i8*, i8* }** %tf, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_132"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %tf2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$$fundef_11_envp_150_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_11_envp_150_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_150_load", i64 8)
  %"$$fundef_11_envp_150" = bitcast i8* %"$$fundef_11_envp_150_salloc" to %"$$fundef_11_env_58"*
  %"$$fundef_11_env_voidp_152" = bitcast %"$$fundef_11_env_58"* %"$$fundef_11_envp_150" to i8*
  %"$$fundef_11_cloval_153" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_11_env_58"*)* @"$fundef_11" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_11_env_voidp_152", 1
  %"$$fundef_11_env_tf_154" = getelementptr inbounds %"$$fundef_11_env_58", %"$$fundef_11_env_58"* %"$$fundef_11_envp_150", i32 0, i32 0
  %"$tf_155" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_155", { i8*, i8* }** %"$$fundef_11_env_tf_154", align 8
  %"$dyndisp_table_156_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_156_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_156_salloc_load", i64 32)
  %"$dyndisp_table_156_salloc" = bitcast i8* %"$dyndisp_table_156_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_156" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_156_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_157" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_156", i32 0
  %"$dyndisp_pcast_158" = bitcast { i8*, i8* }* %"$dyndisp_gep_157" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_11_cloval_153", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_158", align 8
  store { i8*, i8* }* %"$dyndisp_table_156", { i8*, i8* }** %tf2, align 8
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_148"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %f = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %"$tf2_169" = load { i8*, i8* }*, { i8*, i8* }** %tf2, align 8
  %"$tf2_170" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_169", i32 0
  %"$tf2_171" = bitcast { i8*, i8* }* %"$tf2_170" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf2_172" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf2_171", align 8
  %"$tf2_fptr_173" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_172", 0
  %"$tf2_envptr_174" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_172", 1
  %"$tf2_call_175" = call { i8*, i8* }* %"$tf2_fptr_173"(i8* %"$tf2_envptr_174")
  %"$tf2_176" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_call_175", i32 1
  %"$tf2_177" = bitcast { i8*, i8* }* %"$tf2_176" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$tf2_178" = load { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$tf2_177", align 8
  %"$tf2_fptr_179" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_178", 0
  %"$tf2_envptr_180" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_178", 1
  %"$tf2_call_181" = call { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_fptr_179"(i8* %"$tf2_envptr_180")
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_call_181", { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_167"
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_190"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %two = alloca %Int64, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_195"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  store %Int64 { i64 2 }, %Int64* %two, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$f_0" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$f_207" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8
  %"$f_fptr_208" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_207", 0
  %"$f_envptr_209" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_207", 1
  %"$one_210" = load %Int32, %Int32* %one, align 4
  %"$f_call_211" = call { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_208"(i8* %"$f_envptr_209", %Int32 %"$one_210")
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_call_211", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_0", align 8
  %"$f_1" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$$f_0_212" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_0", align 8
  %"$$f_0_fptr_213" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_0_212", 0
  %"$$f_0_envptr_214" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_0_212", 1
  %"$two_215" = load %Int64, %Int64* %two, align 8
  %"$$f_0_call_216" = call %TName_Pair_Int32_Int64* %"$$f_0_fptr_213"(i8* %"$$f_0_envptr_214", %Int64 %"$two_215")
  store %TName_Pair_Int32_Int64* %"$$f_0_call_216", %TName_Pair_Int32_Int64** %"$f_1", align 8
  %"$$f_1_217" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$f_1", align 8
  store %TName_Pair_Int32_Int64* %"$$f_1_217", %TName_Pair_Int32_Int64** %"$expr_2", align 8
  %"$$expr_2_218" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$expr_2", align 8
  ret %TName_Pair_Int32_Int64* %"$$expr_2_218"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_219" = call %TName_Pair_Int32_Int64* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_220" = bitcast %TName_Pair_Int32_Int64* %"$exprval_219" to i8*
  %"$execptr_load_221" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_221", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int64_45", i8* %"$memvoidcast_220")
  ret void
}
