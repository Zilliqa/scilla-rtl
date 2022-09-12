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

%"$TyDescrTy_PrimTyp_19" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_51" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_50"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_50" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_52"**, %"$TyDescrTy_ADTTyp_51"* }
%"$TyDescrTy_ADTTyp_Constr_52" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_260" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_261" = type { %ParamDescrString, i32, %"$ParamDescr_260"* }
%"$$fundef_17_env_66" = type { { i8*, i8* }* }
%TName_Pair_Int32_Int64 = type { i8, %CName_Pair_Int32_Int64* }
%CName_Pair_Int32_Int64 = type <{ i8, %Int32, %Int64 }>
%"$$fundef_15_env_67" = type { %Int32 }
%Int64 = type { i64 }
%"$$fundef_13_env_68" = type {}
%"$$fundef_11_env_69" = type {}
%"$$fundef_9_env_70" = type {}

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
@"$TyDescr_ReplicateContr_Prim_46" = global %"$TyDescrTy_PrimTyp_19" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_ReplicateContr_Prim_46" to i8*) }
@"$TyDescr_Bystr_Prim_48" = global %"$TyDescrTy_PrimTyp_19" { i32 7, i32 0 }
@"$TyDescr_Bystr_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_19"* @"$TyDescr_Bystr_Prim_48" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int64_53" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_63" to i8*) }
@"$TyDescr_Pair_ADTTyp_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_51" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_65", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_50"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_50"*], [1 x %"$TyDescrTy_ADTTyp_Specl_50"*]* @"$TyDescr_Pair_ADTTyp_m_specls_64", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_58" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_21", %_TyDescrTy_Typ* @"$TyDescr_Int64_25"]
@"$TyDescr_ADT_Pair_59" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_59", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int64_Constr_m_args_58", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_61" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_52"*] [%"$TyDescrTy_ADTTyp_Constr_52"* @"$TyDescr_Pair_Pair_Int32_Int64_ADTTyp_Constr_60"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_62" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_21", %_TyDescrTy_Typ* @"$TyDescr_Int64_25"]
@"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_50" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_TArgs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_52"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_52"*], [1 x %"$TyDescrTy_ADTTyp_Constr_52"*]* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_m_constrs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_51"* @"$TyDescr_Pair_ADTTyp_57" }
@"$TyDescr_Pair_ADTTyp_m_specls_64" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_50"*] [%"$TyDescrTy_ADTTyp_Specl_50"* @"$TyDescr_Pair_Int32_Int64_ADTTyp_Specl_63"]
@"$TyDescr_ADT_Pair_65" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_43", %_TyDescrTy_Typ* @"$TyDescr_Int64_25", %_TyDescrTy_Typ* @"$TyDescr_Uint256_35", %_TyDescrTy_Typ* @"$TyDescr_Uint32_23", %_TyDescrTy_Typ* @"$TyDescr_Uint64_27", %_TyDescrTy_Typ* @"$TyDescr_Bnum_39", %_TyDescrTy_Typ* @"$TyDescr_Uint128_31", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int64_53", %_TyDescrTy_Typ* @"$TyDescr_Exception_45", %_TyDescrTy_Typ* @"$TyDescr_String_37", %_TyDescrTy_Typ* @"$TyDescr_Int256_33", %_TyDescrTy_Typ* @"$TyDescr_Int128_29", %_TyDescrTy_Typ* @"$TyDescr_Bystr_49", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_47", %_TyDescrTy_Typ* @"$TyDescr_Message_41", %_TyDescrTy_Typ* @"$TyDescr_Int32_21"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_260"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_261"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { i8*, i8* }* @"$fundef_17"(%"$$fundef_17_env_66"* %0) {
entry:
  %"$$fundef_17_env_tf_117" = getelementptr inbounds %"$$fundef_17_env_66", %"$$fundef_17_env_66"* %0, i32 0, i32 0
  %"$tf_envload_118" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_17_env_tf_117", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_118", { i8*, i8* }** %tf, align 8
  %"$retval_18" = alloca { i8*, i8* }*, align 8
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %entry
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %"$tf_124" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_125" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_124", i32 0
  %"$tf_126" = bitcast { i8*, i8* }* %"$tf_125" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_127" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_126", align 8
  %"$tf_fptr_128" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_127", 0
  %"$tf_envptr_129" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_127", 1
  %"$tf_call_130" = call { i8*, i8* }* %"$tf_fptr_128"(i8* %"$tf_envptr_129")
  store { i8*, i8* }* %"$tf_call_130", { i8*, i8* }** %"$retval_18", align 8
  %"$$retval_18_131" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_18", align 8
  ret { i8*, i8* }* %"$$retval_18_131"
}

define internal %TName_Pair_Int32_Int64* @"$fundef_15"(%"$$fundef_15_env_67"* %0, %Int64 %1) {
entry:
  %"$$fundef_15_env_a_103" = getelementptr inbounds %"$$fundef_15_env_67", %"$$fundef_15_env_67"* %0, i32 0, i32 0
  %"$a_envload_104" = load %Int32, %Int32* %"$$fundef_15_env_a_103", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_104", %Int32* %a, align 4
  %"$retval_16" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %entry
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  %"$a_110" = load %Int32, %Int32* %a, align 4
  %"$adtval_111_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_111_salloc" = call i8* @_salloc(i8* %"$adtval_111_load", i64 13)
  %"$adtval_111" = bitcast i8* %"$adtval_111_salloc" to %CName_Pair_Int32_Int64*
  %"$adtgep_112" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_111", i32 0, i32 0
  store i8 0, i8* %"$adtgep_112", align 1
  %"$adtgep_113" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_111", i32 0, i32 1
  store %Int32 %"$a_110", %Int32* %"$adtgep_113", align 4
  %"$adtgep_114" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_111", i32 0, i32 2
  store %Int64 %1, %Int64* %"$adtgep_114", align 8
  %"$adtptr_115" = bitcast %CName_Pair_Int32_Int64* %"$adtval_111" to %TName_Pair_Int32_Int64*
  store %TName_Pair_Int32_Int64* %"$adtptr_115", %TName_Pair_Int32_Int64** %"$retval_16", align 8
  %"$$retval_16_116" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$retval_16", align 8
  ret %TName_Pair_Int32_Int64* %"$$retval_16_116"
}

define internal { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } @"$fundef_13"(%"$$fundef_13_env_68"* %0, %Int32 %1) {
entry:
  %"$retval_14" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %entry
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %"$$fundef_15_envp_97_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_15_envp_97_salloc" = call i8* @_salloc(i8* %"$$fundef_15_envp_97_load", i64 4)
  %"$$fundef_15_envp_97" = bitcast i8* %"$$fundef_15_envp_97_salloc" to %"$$fundef_15_env_67"*
  %"$$fundef_15_env_voidp_99" = bitcast %"$$fundef_15_env_67"* %"$$fundef_15_envp_97" to i8*
  %"$$fundef_15_cloval_100" = insertvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } { %TName_Pair_Int32_Int64* (i8*, %Int64)* bitcast (%TName_Pair_Int32_Int64* (%"$$fundef_15_env_67"*, %Int64)* @"$fundef_15" to %TName_Pair_Int32_Int64* (i8*, %Int64)*), i8* undef }, i8* %"$$fundef_15_env_voidp_99", 1
  %"$$fundef_15_env_a_101" = getelementptr inbounds %"$$fundef_15_env_67", %"$$fundef_15_env_67"* %"$$fundef_15_envp_97", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_15_env_a_101", align 4
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$fundef_15_cloval_100", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_14", align 8
  %"$$retval_14_102" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_14", align 8
  ret { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$retval_14_102"
}

define internal { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } @"$fundef_11"(%"$$fundef_11_env_69"* %0) {
entry:
  %"$retval_12" = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %entry
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)* bitcast ({ %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_13_env_68"*, %Int32)* @"$fundef_13" to { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*), i8* null }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_12", align 8
  %"$$retval_12_91" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_12", align 8
  ret { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$$retval_12_91"
}

define internal { i8*, i8* }* @"$fundef_9"(%"$$fundef_9_env_70"* %0) {
entry:
  %"$retval_10" = alloca { i8*, i8* }*, align 8
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %entry
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem, align 8
  %"$dyndisp_table_79_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_79_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_79_salloc_load", i64 32)
  %"$dyndisp_table_79_salloc" = bitcast i8* %"$dyndisp_table_79_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_79" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_79_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_80" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_79", i32 1
  %"$dyndisp_pcast_81" = bitcast { i8*, i8* }* %"$dyndisp_gep_80" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (%"$$fundef_11_env_69"*)* @"$fundef_11" to { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_81", align 8
  store { i8*, i8* }* %"$dyndisp_table_79", { i8*, i8* }** %"$retval_10", align 8
  %"$$retval_10_82" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_10", align 8
  ret { i8*, i8* }* %"$$retval_10_82"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 5, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %entry
  %"$consume_136" = sub i64 %"$gasrem_132", 5
  store i64 %"$consume_136", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 8, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 8
  store i64 %"$consume_141", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 196, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_140"
  %"$consume_146" = sub i64 %"$gasrem_142", 196
  store i64 %"$consume_146", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 20, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 20
  store i64 %"$consume_151", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 12, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_150"
  %"$consume_156" = sub i64 %"$gasrem_152", 12
  store i64 %"$consume_156", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 2, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$have_gas_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$have_gas_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 2
  store i64 %"$consume_161", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %TName_Pair_Int32_Int64* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_8" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %entry
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_165"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$dyndisp_table_175_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_175_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_175_salloc_load", i64 32)
  %"$dyndisp_table_175_salloc" = bitcast i8* %"$dyndisp_table_175_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_175" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_175_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_176" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_175", i32 0
  %"$dyndisp_pcast_177" = bitcast { i8*, i8* }* %"$dyndisp_gep_176" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_9_env_70"*)* @"$fundef_9" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_177", align 8
  store { i8*, i8* }* %"$dyndisp_table_175", { i8*, i8* }** %tf, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_170"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %tf2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %"$have_gas_181"
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %"$have_gas_181"
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  %"$$fundef_17_envp_188_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_188_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_188_load", i64 8)
  %"$$fundef_17_envp_188" = bitcast i8* %"$$fundef_17_envp_188_salloc" to %"$$fundef_17_env_66"*
  %"$$fundef_17_env_voidp_190" = bitcast %"$$fundef_17_env_66"* %"$$fundef_17_envp_188" to i8*
  %"$$fundef_17_cloval_191" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_17_env_66"*)* @"$fundef_17" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_17_env_voidp_190", 1
  %"$$fundef_17_env_tf_192" = getelementptr inbounds %"$$fundef_17_env_66", %"$$fundef_17_env_66"* %"$$fundef_17_envp_188", i32 0, i32 0
  %"$tf_193" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_193", { i8*, i8* }** %"$$fundef_17_env_tf_192", align 8
  %"$dyndisp_table_194_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_194_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_194_salloc_load", i64 32)
  %"$dyndisp_table_194_salloc" = bitcast i8* %"$dyndisp_table_194_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_194" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_194_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_195" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_194", i32 0
  %"$dyndisp_pcast_196" = bitcast { i8*, i8* }* %"$dyndisp_gep_195" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_17_cloval_191", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_196", align 8
  store { i8*, i8* }* %"$dyndisp_table_194", { i8*, i8* }** %tf2, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_186"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_186"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %f = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$tf2_207" = load { i8*, i8* }*, { i8*, i8* }** %tf2, align 8
  %"$tf2_208" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_207", i32 0
  %"$tf2_209" = bitcast { i8*, i8* }* %"$tf2_208" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf2_210" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf2_209", align 8
  %"$tf2_fptr_211" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_210", 0
  %"$tf2_envptr_212" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_210", 1
  %"$tf2_call_213" = call { i8*, i8* }* %"$tf2_fptr_211"(i8* %"$tf2_envptr_212")
  %"$tf2_214" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_call_213", i32 1
  %"$tf2_215" = bitcast { i8*, i8* }* %"$tf2_214" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$tf2_216" = load { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$tf2_215", align 8
  %"$tf2_fptr_217" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_216", 0
  %"$tf2_envptr_218" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_216", 1
  %"$tf2_call_219" = call { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_fptr_217"(i8* %"$tf2_envptr_218")
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_call_219", { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_205"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_228"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %two = alloca %Int64, align 8
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_233"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  store %Int64 { i64 2 }, %Int64* %two, align 8
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_238"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %"$f_6" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$f_245" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8
  %"$f_fptr_246" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_245", 0
  %"$f_envptr_247" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_245", 1
  %"$one_248" = load %Int32, %Int32* %one, align 4
  %"$f_call_249" = call { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_246"(i8* %"$f_envptr_247", %Int32 %"$one_248")
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_call_249", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$f_7" = alloca %TName_Pair_Int32_Int64*, align 8
  %"$$f_6_250" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_251" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_6_250", 0
  %"$$f_6_envptr_252" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_6_250", 1
  %"$two_253" = load %Int64, %Int64* %two, align 8
  %"$$f_6_call_254" = call %TName_Pair_Int32_Int64* %"$$f_6_fptr_251"(i8* %"$$f_6_envptr_252", %Int64 %"$two_253")
  store %TName_Pair_Int32_Int64* %"$$f_6_call_254", %TName_Pair_Int32_Int64** %"$f_7", align 8
  %"$$f_7_255" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$f_7", align 8
  store %TName_Pair_Int32_Int64* %"$$f_7_255", %TName_Pair_Int32_Int64** %"$expr_8", align 8
  %"$$expr_8_256" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$expr_8", align 8
  ret %TName_Pair_Int32_Int64* %"$$expr_8_256"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_257" = call %TName_Pair_Int32_Int64* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_258" = bitcast %TName_Pair_Int32_Int64* %"$exprval_257" to i8*
  %"$execptr_load_259" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_259", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int64_53", i8* %"$memvoidcast_258")
  ret void
}
