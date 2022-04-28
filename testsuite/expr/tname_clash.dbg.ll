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
%"$ParamDescr_262" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_263" = type { %ParamDescrString, i32, %"$ParamDescr_262"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_262"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_263"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { i8*, i8* }* @"$fundef_17"(%"$$fundef_17_env_66"* %0) !dbg !3 {
entry:
  %"$$fundef_17_env_tf_119" = getelementptr inbounds %"$$fundef_17_env_66", %"$$fundef_17_env_66"* %0, i32 0, i32 0
  %"$tf_envload_120" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_17_env_tf_119", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_120", { i8*, i8* }** %tf, align 8
  %"$retval_18" = alloca { i8*, i8* }*, align 8
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %entry
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %"$tf_126" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_127" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_126", i32 0
  %"$tf_128" = bitcast { i8*, i8* }* %"$tf_127" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_129" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_128", align 8
  %"$tf_fptr_130" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_129", 0
  %"$tf_envptr_131" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_129", 1
  %"$tf_call_132" = call { i8*, i8* }* %"$tf_fptr_130"(i8* %"$tf_envptr_131"), !dbg !8
  store { i8*, i8* }* %"$tf_call_132", { i8*, i8* }** %"$retval_18", align 8, !dbg !9
  %"$$retval_18_133" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_18", align 8
  ret { i8*, i8* }* %"$$retval_18_133"
}

define internal %TName_Pair_Int32_Int64* @"$fundef_15"(%"$$fundef_15_env_67"* %0, %Int64 %1) !dbg !10 {
entry:
  %"$b_118" = alloca %Int64, align 8
  store %Int64 %1, %Int64* %"$b_118", align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$b_118", metadata !11, metadata !DIExpression()), !dbg !13
  %"$$fundef_15_env_a_104" = getelementptr inbounds %"$$fundef_15_env_67", %"$$fundef_15_env_67"* %0, i32 0, i32 0
  %"$a_envload_105" = load %Int32, %Int32* %"$$fundef_15_env_a_104", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_105", %Int32* %a, align 4
  %"$retval_16" = alloca %TName_Pair_Int32_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int64** %"$retval_16", metadata !14, metadata !DIExpression()), !dbg !17
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %entry
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$a_111" = load %Int32, %Int32* %a, align 4
  %"$adtval_112_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_112_salloc" = call i8* @_salloc(i8* %"$adtval_112_load", i64 13)
  %"$adtval_112" = bitcast i8* %"$adtval_112_salloc" to %CName_Pair_Int32_Int64*
  %"$adtgep_113" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_112", i32 0, i32 0
  store i8 0, i8* %"$adtgep_113", align 1
  %"$adtgep_114" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_112", i32 0, i32 1
  store %Int32 %"$a_111", %Int32* %"$adtgep_114", align 4
  %"$adtgep_115" = getelementptr inbounds %CName_Pair_Int32_Int64, %CName_Pair_Int32_Int64* %"$adtval_112", i32 0, i32 2
  store %Int64 %1, %Int64* %"$adtgep_115", align 8
  %"$adtptr_116" = bitcast %CName_Pair_Int32_Int64* %"$adtval_112" to %TName_Pair_Int32_Int64*
  store %TName_Pair_Int32_Int64* %"$adtptr_116", %TName_Pair_Int32_Int64** %"$retval_16", align 8, !dbg !17
  %"$$retval_16_117" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$retval_16", align 8
  ret %TName_Pair_Int32_Int64* %"$$retval_16_117"
}

define internal { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } @"$fundef_13"(%"$$fundef_13_env_68"* %0, %Int32 %1) !dbg !18 {
entry:
  %"$a_103" = alloca %Int32, align 8
  store %Int32 %1, %Int32* %"$a_103", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$a_103", metadata !19, metadata !DIExpression()), !dbg !21
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
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$fundef_15_cloval_100", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_14", align 8, !dbg !22
  %"$$retval_14_102" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$retval_14", align 8
  ret { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$retval_14_102"
}

define internal { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } @"$fundef_11"(%"$$fundef_11_env_69"* %0) !dbg !23 {
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
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)* bitcast ({ %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (%"$$fundef_13_env_68"*, %Int32)* @"$fundef_13" to { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*), i8* null }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_12", align 8, !dbg !24
  %"$$retval_12_91" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %"$retval_12", align 8
  ret { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$$retval_12_91"
}

define internal { i8*, i8* }* @"$fundef_9"(%"$$fundef_9_env_70"* %0) !dbg !25 {
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
  store { i8*, i8* }* %"$dyndisp_table_79", { i8*, i8* }** %"$retval_10", align 8, !dbg !26
  %"$$retval_10_82" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_10", align 8
  ret { i8*, i8* }* %"$$retval_10_82"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !27 {
entry:
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 5, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %entry
  %"$consume_138" = sub i64 %"$gasrem_134", 5
  store i64 %"$consume_138", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !29
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 8, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 8
  store i64 %"$consume_143", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !29
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 196, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 196
  store i64 %"$consume_148", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !29
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 20, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_147"
  %"$consume_153" = sub i64 %"$gasrem_149", 20
  store i64 %"$consume_153", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !29
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 12, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_152"
  %"$consume_158" = sub i64 %"$gasrem_154", 12
  store i64 %"$consume_158", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !29
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 2, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_157"
  %"$consume_163" = sub i64 %"$gasrem_159", 2
  store i64 %"$consume_163", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !29
  ret void
}

define internal %TName_Pair_Int32_Int64* @_scilla_expr_fun(i8* %0) !dbg !30 {
entry:
  %"$expr_8" = alloca %TName_Pair_Int32_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int64** %"$expr_8", metadata !31, metadata !DIExpression()), !dbg !32
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %entry
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_167"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %"$dyndisp_table_177_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_177_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_177_salloc_load", i64 32)
  %"$dyndisp_table_177_salloc" = bitcast i8* %"$dyndisp_table_177_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_177" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_177_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_178" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_177", i32 0
  %"$dyndisp_pcast_179" = bitcast { i8*, i8* }* %"$dyndisp_gep_178" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_9_env_70"*)* @"$fundef_9" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_179", align 8
  store { i8*, i8* }* %"$dyndisp_table_177", { i8*, i8* }** %tf, align 8, !dbg !32
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_172"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %tf2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_183"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$$fundef_17_envp_190_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_190_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_190_load", i64 8)
  %"$$fundef_17_envp_190" = bitcast i8* %"$$fundef_17_envp_190_salloc" to %"$$fundef_17_env_66"*
  %"$$fundef_17_env_voidp_192" = bitcast %"$$fundef_17_env_66"* %"$$fundef_17_envp_190" to i8*
  %"$$fundef_17_cloval_193" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_17_env_66"*)* @"$fundef_17" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_17_env_voidp_192", 1
  %"$$fundef_17_env_tf_194" = getelementptr inbounds %"$$fundef_17_env_66", %"$$fundef_17_env_66"* %"$$fundef_17_envp_190", i32 0, i32 0
  %"$tf_195" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_195", { i8*, i8* }** %"$$fundef_17_env_tf_194", align 8
  %"$dyndisp_table_196_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_196_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_196_salloc_load", i64 32)
  %"$dyndisp_table_196_salloc" = bitcast i8* %"$dyndisp_table_196_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_196" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_196_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_197" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_196", i32 0
  %"$dyndisp_pcast_198" = bitcast { i8*, i8* }* %"$dyndisp_gep_197" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_17_cloval_193", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_198", align 8
  store { i8*, i8* }* %"$dyndisp_table_196", { i8*, i8* }** %tf2, align 8, !dbg !33
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$have_gas_188"
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem, align 8
  %f = alloca { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_202"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_202"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$tf2_209" = load { i8*, i8* }*, { i8*, i8* }** %tf2, align 8
  %"$tf2_210" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_209", i32 0
  %"$tf2_211" = bitcast { i8*, i8* }* %"$tf2_210" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf2_212" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf2_211", align 8
  %"$tf2_fptr_213" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_212", 0
  %"$tf2_envptr_214" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf2_212", 1
  %"$tf2_call_215" = call { i8*, i8* }* %"$tf2_fptr_213"(i8* %"$tf2_envptr_214"), !dbg !34
  %"$tf2_216" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf2_call_215", i32 1
  %"$tf2_217" = bitcast { i8*, i8* }* %"$tf2_216" to { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }*
  %"$tf2_218" = load { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* }* %"$tf2_217", align 8
  %"$tf2_fptr_219" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_218", 0
  %"$tf2_envptr_220" = extractvalue { { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } (i8*)*, i8* } %"$tf2_218", 1
  %"$tf2_call_221" = call { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_fptr_219"(i8* %"$tf2_envptr_220"), !dbg !34
  store { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$tf2_call_221", { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8, !dbg !35
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_207"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %one = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %one, metadata !36, metadata !DIExpression()), !dbg !37
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_225"
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %one, align 4, !dbg !38
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_230"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %two = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %two, metadata !39, metadata !DIExpression()), !dbg !40
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 1, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_235"
  %"$consume_241" = sub i64 %"$gasrem_237", 1
  store i64 %"$consume_241", i64* @_gasrem, align 8
  store %Int64 { i64 2 }, %Int64* %two, align 8, !dbg !41
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_240"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$f_6" = alloca { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, align 8
  %"$f_247" = load { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }, { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* }* %f, align 8
  %"$f_fptr_248" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_247", 0
  %"$f_envptr_249" = extractvalue { { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } (i8*, %Int32)*, i8* } %"$f_247", 1
  %"$one_250" = load %Int32, %Int32* %one, align 4
  %"$f_call_251" = call { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_fptr_248"(i8* %"$f_envptr_249", %Int32 %"$one_250"), !dbg !42
  store { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$f_call_251", { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_6", align 8, !dbg !42
  %"$f_7" = alloca %TName_Pair_Int32_Int64*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int64** %"$f_7", metadata !43, metadata !DIExpression()), !dbg !42
  %"$$f_6_252" = load { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }, { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* }* %"$f_6", align 8
  %"$$f_6_fptr_253" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_6_252", 0
  %"$$f_6_envptr_254" = extractvalue { %TName_Pair_Int32_Int64* (i8*, %Int64)*, i8* } %"$$f_6_252", 1
  %"$two_255" = load %Int64, %Int64* %two, align 8
  %"$$f_6_call_256" = call %TName_Pair_Int32_Int64* %"$$f_6_fptr_253"(i8* %"$$f_6_envptr_254", %Int64 %"$two_255"), !dbg !42
  store %TName_Pair_Int32_Int64* %"$$f_6_call_256", %TName_Pair_Int32_Int64** %"$f_7", align 8, !dbg !42
  %"$$f_7_257" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$f_7", align 8
  store %TName_Pair_Int32_Int64* %"$$f_7_257", %TName_Pair_Int32_Int64** %"$expr_8", align 8, !dbg !42
  %"$$expr_8_258" = load %TName_Pair_Int32_Int64*, %TName_Pair_Int32_Int64** %"$expr_8", align 8
  ret %TName_Pair_Int32_Int64* %"$$expr_8_258"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_259" = call %TName_Pair_Int32_Int64* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_260" = bitcast %TName_Pair_Int32_Int64* %"$exprval_259" to i8*
  %"$execptr_load_261" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_261", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int64_53", i8* %"$memvoidcast_260")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "tname_clash.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocation(line: 11, column: 6, scope: !3)
!9 = !DILocation(line: 11, column: 5, scope: !3)
!10 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 6, type: !4, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!11 = !DILocalVariable(name: "b", scope: !10, file: !2, line: 5, type: !12)
!12 = !DIBasicType(name: "Int64", size: 8)
!13 = !DILocation(line: 5, column: 8, scope: !10)
!14 = !DILocalVariable(name: "$retval_16", scope: !10, file: !2, line: 6, type: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (Int32) (Int64)", baseType: !16, size: 8, align: 8, dwarfAddressSpace: 0)
!16 = !DIBasicType(name: "Pair (Int32) (Int64)", size: 8)
!17 = !DILocation(line: 6, column: 5, scope: !10)
!18 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!19 = !DILocalVariable(name: "a", scope: !18, file: !2, line: 4, type: !20)
!20 = !DIBasicType(name: "Int32", size: 4)
!21 = !DILocation(line: 4, column: 8, scope: !18)
!22 = !DILocation(line: 6, column: 5, scope: !18)
!23 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!24 = !DILocation(line: 5, column: 3, scope: !23)
!25 = distinct !DISubprogram(name: "$fundef_9", linkageName: "$fundef_9", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!26 = !DILocation(line: 3, column: 3, scope: !25)
!27 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !28, file: !28, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!28 = !DIFile(filename: ".", directory: ".")
!29 = !DILocation(line: 0, scope: !27)
!30 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!31 = !DILocalVariable(name: "$expr_8", scope: !30, file: !2, line: 2, type: !15)
!32 = !DILocation(line: 2, column: 3, scope: !30)
!33 = !DILocation(line: 10, column: 3, scope: !30)
!34 = !DILocation(line: 13, column: 10, scope: !30)
!35 = !DILocation(line: 13, column: 9, scope: !30)
!36 = !DILocalVariable(name: "one", scope: !30, file: !2, line: 14, type: !20)
!37 = !DILocation(line: 14, column: 5, scope: !30)
!38 = !DILocation(line: 14, column: 11, scope: !30)
!39 = !DILocalVariable(name: "two", scope: !30, file: !2, line: 15, type: !12)
!40 = !DILocation(line: 15, column: 5, scope: !30)
!41 = !DILocation(line: 15, column: 11, scope: !30)
!42 = !DILocation(line: 16, column: 1, scope: !30)
!43 = !DILocalVariable(name: "$f_7", scope: !30, file: !2, line: 16, type: !15)
