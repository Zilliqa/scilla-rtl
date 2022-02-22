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

%"$TyDescrTy_PrimTyp_19" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_49" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_48"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_48" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_50"**, %"$TyDescrTy_ADTTyp_49"* }
%"$TyDescrTy_ADTTyp_Constr_50" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_258" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_259" = type { %ParamDescrString, i32, %"$ParamDescr_258"* }
%"$$fundef_17_env_64" = type { { i8*, i8* }* }
%TName_Pair_Int32_Int64 = type { i8, %CName_Pair_Int32_Int64* }
%CName_Pair_Int32_Int64 = type <{ i8, %Int32, %Int64 }>
%"$$fundef_15_env_65" = type { %Int32 }
%Int64 = type { i64 }
%"$$fundef_13_env_66" = type {}
%"$$fundef_11_env_67" = type {}
%"$$fundef_9_env_68" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_20" = global %"$TyDescrTy_PrimTyp_19" zeroinitializer
@"$TyDescr_Int32_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Int32_Prim_20" to i8*) }
@"$TyDescr_Uint32_Prim_22" = global %"$TyDescrTy_PrimTyp_19" { i32 1, i32 0 }
@"$TyDescr_Uint32_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Uint32_Prim_22" to i8*) }
@"$TyDescr_Int64_Prim_24" = global %"$TyDescrTy_PrimTyp_19" { i32 0, i32 1 }
@"$TyDescr_Int64_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Int64_Prim_24" to i8*) }
@"$TyDescr_Uint64_Prim_26" = global %"$TyDescrTy_PrimTyp_19" { i32 1, i32 1 }
@"$TyDescr_Uint64_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Uint64_Prim_26" to i8*) }
@"$TyDescr_Int128_Prim_28" = global %"$TyDescrTy_PrimTyp_19" { i32 0, i32 2 }
@"$TyDescr_Int128_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Int128_Prim_28" to i8*) }
@"$TyDescr_Uint128_Prim_30" = global %"$TyDescrTy_PrimTyp_19" { i32 1, i32 2 }
@"$TyDescr_Uint128_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Uint128_Prim_30" to i8*) }
@"$TyDescr_Int256_Prim_32" = global %"$TyDescrTy_PrimTyp_19" { i32 0, i32 3 }
@"$TyDescr_Int256_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Int256_Prim_32" to i8*) }
@"$TyDescr_Uint256_Prim_34" = global %"$TyDescrTy_PrimTyp_19" { i32 1, i32 3 }
@"$TyDescr_Uint256_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Uint256_Prim_34" to i8*) }
@"$TyDescr_String_Prim_36" = global %"$TyDescrTy_PrimTyp_19" { i32 2, i32 0 }
@"$TyDescr_String_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_String_Prim_36" to i8*) }
@"$TyDescr_Bnum_Prim_38" = global %"$TyDescrTy_PrimTyp_19" { i32 3, i32 0 }
@"$TyDescr_Bnum_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Bnum_Prim_38" to i8*) }
@"$TyDescr_Message_Prim_40" = global %"$TyDescrTy_PrimTyp_19" { i32 4, i32 0 }
@"$TyDescr_Message_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Message_Prim_40" to i8*) }
@"$TyDescr_Event_Prim_42" = global %"$TyDescrTy_PrimTyp_19" { i32 5, i32 0 }
@"$TyDescr_Event_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Event_Prim_42" to i8*) }
@"$TyDescr_Exception_Prim_44" = global %"$TyDescrTy_PrimTyp_19" { i32 6, i32 0 }
@"$TyDescr_Exception_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Exception_Prim_44" to i8*) }
@"$TyDescr_Bystr_Prim_46" = global %"$TyDescrTy_PrimTyp_19" { i32 7, i32 0 }
@"$TyDescr_Bystr_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Bystr_Prim_46" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int64_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_61" to i8*) }
@"$TyDescr_Pair_ADTTyp_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_63", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_48"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_48"*], [1 x %"$TyDescrTy_ADTTyp_Specl_48"*]* @"$TyDescr_Pair_ADTTyp_m_specls_62", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_56" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_21", %_TyDescrTy_Typ* @"$TyDescr_Int64_25"]
@"$TyDescr_ADT_Pair_57" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_50" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_57", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_59" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_50"*] [%"$TyDescrTy_ADTTyp_Constr_50"* @"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_58"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_60" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_21", %_TyDescrTy_Typ* @"$TyDescr_Int64_25"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_48" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_50"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_50"*], [1 x %"$TyDescrTy_ADTTyp_Constr_50"*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_49"* @"$TyDescr_Pair_ADTTyp_55" }
@"$TyDescr_Pair_ADTTyp_m_specls_62" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_48"*] [%"$TyDescrTy_ADTTyp_Specl_48"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_61"]
@"$TyDescr_ADT_Pair_63" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_43", %_TyDescrTy_Typ* @"$TyDescr_Int64_25", %_TyDescrTy_Typ* @"$TyDescr_Uint256_35", %_TyDescrTy_Typ* @"$TyDescr_Uint32_23", %_TyDescrTy_Typ* @"$TyDescr_Uint64_27", %_TyDescrTy_Typ* @"$TyDescr_Bnum_39", %_TyDescrTy_Typ* @"$TyDescr_Uint128_31", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int64_51", %_TyDescrTy_Typ* @"$TyDescr_Exception_45", %_TyDescrTy_Typ* @"$TyDescr_String_37", %_TyDescrTy_Typ* @"$TyDescr_Int256_33", %_TyDescrTy_Typ* @"$TyDescr_Int128_29", %_TyDescrTy_Typ* @"$TyDescr_Bystr_47", %_TyDescrTy_Typ* @"$TyDescr_Message_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_21"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_258"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_259"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { i8*, i8* }* @"$fundef_17"(%"$$fundef_17_env_64"* %0) {
entry:
  %"$$fundef_17_env_tf_115" = getelementptr inbounds %"$$fundef_17_env_64", %"$$fundef_17_env_64"* %0, i32 0, i32 0
  %"$tf_envload_116" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_17_env_tf_115", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_116", { i8*, i8* }** %tf, align 8
  %"$retval_18" = alloca { i8*, i8* }*, align 8
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %entry
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %"$tf_122" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_123" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_122", i32 0
  %"$tf_124" = bitcast { i8*, i8* }* %"$tf_123" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_125" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_124", align 8
  %"$tf_fptr_126" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_125", 0
  %"$tf_envptr_127" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_125", 1
  %"$tf_call_128" = call { i8*, i8* }* %"$tf_fptr_126"(i8* %"$tf_envptr_127")
  store { i8*, i8* }* %"$tf_call_128", { i8*, i8* }** %"$retval_18", align 8
  %"$$retval_18_129" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_18", align 8
  ret { i8*, i8* }* %"$$retval_18_129"
}

define internal %TName_Pair_Int32_Int64* @"$fundef_15"(%"$$fundef_15_env_65"* %0, %Int64 %1) {
entry:
  %"$$fundef_15_env_a_101" = getelementptr inbounds %"$$fundef_15_env_65", %"$$fundef_15_env_65"* %0, i32 0, i32 0
  %"$a_envload_102" = load %Int32, %Int32* %"$$fundef_15_env_a_101", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_102", %Int32* %a, align 4
  %"$retval_16" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %entry
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  %"$a_108" = load %Int32, %Int32* %a, align 4
  %"$adtval_109_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_109_salloc" = call i8* @_salloc(i8* %"$adtval_109_load", i64 13)
  %"$adtval_109" = bitcast i8* %"$adtval_109_salloc" to %CName_Pair_Int32_Int64*
  %"$adtgep_110" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_109", i32 0, i32 0
  store i8 0, i8* %"$adtgep_110", align 1
  %"$adtgep_111" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_109", i32 0, i32 1
  store %Int32 %"$a_108", %Int32* %"$adtgep_111", align 4
  %"$adtgep_112" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_109", i32 0, i32 2
  store %Int64 %1, %Int64* %"$adtgep_112", align 8
  %"$adtptr_113" = bitcast %CName_Pair_Int32_Int64* %"$adtval_109" to %TName_Pair_Int32_Int64*
  store %TName_Pair_Int32_Int64* %"$adtptr_113", %TName_Pair_Int32_Int64** %"$retval_16", align 8
  %"$$retval_16_114" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$retval_16", align 8
  ret %TName_Pair_Int32_Int64* %"$$retval_16_114"
}

define internal { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } @"$fundef_13"(%"$$fundef_13_env_66"* %0, %Int32 %1) {
entry:
  %"$retval_14" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %entry
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %"$$fundef_15_envp_95_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_15_envp_95_salloc" = call i8* @_salloc(i8* %"$$fundef_15_envp_95_load", i64 4)
  %"$$fundef_15_envp_95" = bitcast i8* %"$$fundef_15_envp_95_salloc" to %"$$fundef_15_env_65"*
  %"$$fundef_15_env_voidp_97" = bitcast %"$$fundef_15_env_65"* %"$$fundef_15_envp_95" to i8*
  %"$$fundef_15_cloval_98" = insertvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } { %TName_Pair_Int32_Int64* (i8*, %Int64)* bitcast (%TName_Pair_Int32_Int64* (%"$$fundef_15_env_65"*, %Int64)* @"$fundef_15" to %TName_Pair_Int32_Int64* (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_15_env_voidp_97", 1
  %"$$fundef_15_env_a_99" = getelementptr inbounds %"$$fundef_15_env_65", %"$$fundef_15_env_65"* %"$$fundef_15_envp_95", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_15_env_a_99", align 4
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$fundef_15_cloval_98", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_14", align 8
  %"$$retval_14_100" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_14", align 8
  ret { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$retval_14_100"
}

define internal { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } @"$fundef_11"(%"$$fundef_11_env_67"* %0) {
entry:
  %"$retval_12" = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %entry
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem, align 8
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)* bitcast ({ %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_13_env_66"*, %Int32)* @"$fundef_13" to { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*), i8* null }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_12", align 8
  %"$$retval_12_89" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_12", align 8
  ret { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$$retval_12_89"
}

define internal { i8*, i8* }* @"$fundef_9"(%"$$fundef_9_env_68"* %0) {
entry:
  %"$retval_10" = alloca { i8*, i8* }*, align 8
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %entry
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  %"$dyndisp_table_77_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_77_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_77_salloc_load", i64 32)
  %"$dyndisp_table_77_salloc" = bitcast i8* %"$dyndisp_table_77_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_77" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_77_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_78" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_77", i32 1
  %"$dyndisp_pcast_79" = bitcast { i8*, i8* }* %"$dyndisp_gep_78" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (%"$$fundef_11_env_67"*)* @"$fundef_11" to { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_79", align 8
  store { i8*, i8* }* %"$dyndisp_table_77", { i8*, i8* }** %"$retval_10", align 8
  %"$$retval_10_80" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_10", align 8
  ret { i8*, i8* }* %"$$retval_10_80"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 5, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %entry
  %"$consume_134" = sub i64 %"$gasrem_130", 5
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 8, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 8
  store i64 %"$consume_139", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 196, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 196
  store i64 %"$consume_144", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 20, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_143"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_143"
  %"$consume_149" = sub i64 %"$gasrem_145", 20
  store i64 %"$consume_149", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 12, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_148"
  %"$consume_154" = sub i64 %"$gasrem_150", 12
  store i64 %"$consume_154", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 2, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 2
  store i64 %"$consume_159", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %TName_Pair_Int32_Int64* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_8" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %entry
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_163"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %"$dyndisp_table_173_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_173_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_173_salloc_load", i64 32)
  %"$dyndisp_table_173_salloc" = bitcast i8* %"$dyndisp_table_173_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_173" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_173_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_174" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_173", i32 0
  %"$dyndisp_pcast_175" = bitcast { i8*, i8* }* %"$dyndisp_gep_174" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_9_env_68"*)* @"$fundef_9" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_175", align 8
  store { i8*, i8* }* %"$dyndisp_table_173", { i8*, i8* }** %tf, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_168"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %tf2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$$fundef_17_envp_186_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_186_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_186_load", i64 8)
  %"$$fundef_17_envp_186" = bitcast i8* %"$$fundef_17_envp_186_salloc" to %"$$fundef_17_env_64"*
  %"$$fundef_17_env_voidp_188" = bitcast %"$$fundef_17_env_64"* %"$$fundef_17_envp_186" to i8*
  %"$$fundef_17_cloval_189" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_17_env_64"*)* @"$fundef_17" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_17_env_voidp_188", 1
  %"$$fundef_17_env_tf_190" = getelementptr inbounds %"$$fundef_17_env_64", %"$$fundef_17_env_64"* %"$$fundef_17_envp_186", i32 0, i32 0
  %"$tf_191" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_191", { i8*, i8* }** %"$$fundef_17_env_tf_190", align 8
  %"$dyndisp_table_192_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_192_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_192_salloc_load", i64 32)
  %"$dyndisp_table_192_salloc" = bitcast i8* %"$dyndisp_table_192_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_192" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_192_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_193" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_192", i32 0
  %"$dyndisp_pcast_194" = bitcast { i8*, i8* }* %"$dyndisp_gep_193" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_17_cloval_189", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_194", align 8
  store { i8*, i8* }* %"$dyndisp_table_192", { i8*, i8* }** %tf2, align 8
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_184"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %f = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_198"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %"$tf2_205" = load { i8*, i8* }*, { i8*, i8* }** %tf2, align 8
  %"$tf2_206" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_205", i32 0
  %"$tf2_207" = bitcast { i8*, i8* }* %"$tf2_206" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf2_208" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf2_207", align 8
  %"$tf2_fptr_209" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_208", 0
  %"$tf2_envptr_210" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_208", 1
  %"$tf2_call_211" = call { i8*, i8* }* %"$tf2_fptr_209"(i8* %"$tf2_envptr_210")
  %"$tf2_212" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_call_211", i32 1
  %"$tf2_213" = bitcast { i8*, i8* }* %"$tf2_212" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$tf2_214" = load { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$tf2_213", align 8
  %"$tf2_fptr_215" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_214", 0
  %"$tf2_envptr_216" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_214", 1
  %"$tf2_call_217" = call { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_fptr_215"(i8* %"$tf2_envptr_216")
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_call_217", { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_203"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_221"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %two = alloca %Int64, align 8
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  store %Int64 { i64 2 }, %Int64* %two, align 8
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$f_6" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$f_243" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8
  %"$f_fptr_244" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_243", 0
  %"$f_envptr_245" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_243", 1
  %"$one_246" = load %Int32, %Int32* %one, align 4
  %"$f_call_247" = call { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_244"(i8* %"$f_envptr_245", %Int32 %"$one_246")
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_call_247", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$f_7" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$$f_6_248" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_249" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_6_248", 0
  %"$$f_6_envptr_250" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_6_248", 1
  %"$two_251" = load %Int64, %Int64* %two, align 8
  %"$$f_6_call_252" = call %TName_Pair_Int32_Int64* %"$$f_6_fptr_249"(i8* %"$$f_6_envptr_250", %Int64 %"$two_251")
  store %TName_Pair_Int32_Int64* %"$$f_6_call_252", %TName_Pair_Int32_Int64** %"$f_7", align 8
  %"$$f_7_253" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$f_7", align 8
  store %TName_Pair_Int32_Int64* %"$$f_7_253", %TName_Pair_Int32_Int64** %"$expr_8", align 8
  %"$$expr_8_254" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$expr_8", align 8
  ret %TName_Pair_Int32_Int64* %"$$expr_8_254"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_255" = call %TName_Pair_Int32_Int64* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_256" = bitcast %TName_Pair_Int32_Int64* %"$exprval_255" to i8*
  %"$execptr_load_257" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_257", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int64_51", i8* %"$memvoidcast_256")
  ret void
}
