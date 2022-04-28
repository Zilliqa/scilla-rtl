; let tf =
; tfun 'A =>
; fun (a : 'A) =>
; a
; in
; 
; let t = @tf Uint32 in
; let one = Uint32 1 in
; t one
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_12" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_156" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_157" = type { %ParamDescrString, i32, %"$ParamDescr_156"* }
%"$$fundef_10_env_49" = type {}
%Uint32 = type { i32 }
%"$$fundef_8_env_50" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_13" = global %"$TyDescrTy_PrimTyp_12" zeroinitializer
@"$TyDescr_Int32_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Int32_Prim_13" to i8*) }
@"$TyDescr_Uint32_Prim_15" = global %"$TyDescrTy_PrimTyp_12" { i32 1, i32 0 }
@"$TyDescr_Uint32_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Uint32_Prim_15" to i8*) }
@"$TyDescr_Int64_Prim_17" = global %"$TyDescrTy_PrimTyp_12" { i32 0, i32 1 }
@"$TyDescr_Int64_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Int64_Prim_17" to i8*) }
@"$TyDescr_Uint64_Prim_19" = global %"$TyDescrTy_PrimTyp_12" { i32 1, i32 1 }
@"$TyDescr_Uint64_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Uint64_Prim_19" to i8*) }
@"$TyDescr_Int128_Prim_21" = global %"$TyDescrTy_PrimTyp_12" { i32 0, i32 2 }
@"$TyDescr_Int128_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Int128_Prim_21" to i8*) }
@"$TyDescr_Uint128_Prim_23" = global %"$TyDescrTy_PrimTyp_12" { i32 1, i32 2 }
@"$TyDescr_Uint128_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Uint128_Prim_23" to i8*) }
@"$TyDescr_Int256_Prim_25" = global %"$TyDescrTy_PrimTyp_12" { i32 0, i32 3 }
@"$TyDescr_Int256_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Int256_Prim_25" to i8*) }
@"$TyDescr_Uint256_Prim_27" = global %"$TyDescrTy_PrimTyp_12" { i32 1, i32 3 }
@"$TyDescr_Uint256_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Uint256_Prim_27" to i8*) }
@"$TyDescr_String_Prim_29" = global %"$TyDescrTy_PrimTyp_12" { i32 2, i32 0 }
@"$TyDescr_String_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_String_Prim_29" to i8*) }
@"$TyDescr_Bnum_Prim_31" = global %"$TyDescrTy_PrimTyp_12" { i32 3, i32 0 }
@"$TyDescr_Bnum_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bnum_Prim_31" to i8*) }
@"$TyDescr_Message_Prim_33" = global %"$TyDescrTy_PrimTyp_12" { i32 4, i32 0 }
@"$TyDescr_Message_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Message_Prim_33" to i8*) }
@"$TyDescr_Event_Prim_35" = global %"$TyDescrTy_PrimTyp_12" { i32 5, i32 0 }
@"$TyDescr_Event_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Event_Prim_35" to i8*) }
@"$TyDescr_Exception_Prim_37" = global %"$TyDescrTy_PrimTyp_12" { i32 6, i32 0 }
@"$TyDescr_Exception_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Exception_Prim_37" to i8*) }
@"$TyDescr_ReplicateContr_Prim_39" = global %"$TyDescrTy_PrimTyp_12" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_ReplicateContr_Prim_39" to i8*) }
@"$TyDescr_Bystr_Prim_41" = global %"$TyDescrTy_PrimTyp_12" { i32 7, i32 0 }
@"$TyDescr_Bystr_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr_Prim_41" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_36", %_TyDescrTy_Typ* @"$TyDescr_Int64_18", %_TyDescrTy_Typ* @"$TyDescr_Uint256_28", %_TyDescrTy_Typ* @"$TyDescr_Uint32_16", %_TyDescrTy_Typ* @"$TyDescr_Uint64_20", %_TyDescrTy_Typ* @"$TyDescr_Bnum_32", %_TyDescrTy_Typ* @"$TyDescr_Uint128_24", %_TyDescrTy_Typ* @"$TyDescr_Exception_38", %_TyDescrTy_Typ* @"$TyDescr_String_30", %_TyDescrTy_Typ* @"$TyDescr_Int256_26", %_TyDescrTy_Typ* @"$TyDescr_Int128_22", %_TyDescrTy_Typ* @"$TyDescr_Bystr_42", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_40", %_TyDescrTy_Typ* @"$TyDescr_Message_34", %_TyDescrTy_Typ* @"$TyDescr_Int32_14"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_156"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_157"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_10"(%"$$fundef_10_env_49"* %0, %Uint32 %1) !dbg !3 {
entry:
  %"$a_66" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$a_66", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$a_66", metadata !8, metadata !DIExpression()), !dbg !10
  %"$retval_11" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_11", metadata !11, metadata !DIExpression()), !dbg !12
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %entry
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_11", align 4, !dbg !12
  %"$$retval_11_65" = load %Uint32, %Uint32* %"$retval_11", align 4
  ret %Uint32 %"$$retval_11_65"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_8"(%"$$fundef_8_env_50"* %0) !dbg !13 {
entry:
  %"$retval_9" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_51" = load i64, i64* @_gasrem, align 8
  %"$gascmp_52" = icmp ugt i64 1, %"$gasrem_51"
  br i1 %"$gascmp_52", label %"$out_of_gas_53", label %"$have_gas_54"

"$out_of_gas_53":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_54"

"$have_gas_54":                                   ; preds = %"$out_of_gas_53", %entry
  %"$consume_55" = sub i64 %"$gasrem_51", 1
  store i64 %"$consume_55", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_10_env_49"*, %Uint32)* @"$fundef_10" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_9", align 8, !dbg !14
  %"$$retval_9_59" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_9", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_9_59"
}

declare void @_out_of_gas()

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !15 {
entry:
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 5, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %entry
  %"$consume_71" = sub i64 %"$gasrem_67", 5
  store i64 %"$consume_71", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !17
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 8, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %"$have_gas_70"
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %"$have_gas_70"
  %"$consume_76" = sub i64 %"$gasrem_72", 8
  store i64 %"$consume_76", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !17
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 196, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 196
  store i64 %"$consume_81", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !17
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 20, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_80"
  %"$consume_86" = sub i64 %"$gasrem_82", 20
  store i64 %"$consume_86", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !17
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 12, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_85"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_85"
  %"$consume_91" = sub i64 %"$gasrem_87", 12
  store i64 %"$consume_91", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !17
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 2, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 2
  store i64 %"$consume_96", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !17
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !18 {
entry:
  %"$expr_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$expr_7", metadata !19, metadata !DIExpression()), !dbg !20
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %entry
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$have_gas_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$dyndisp_table_110_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_110_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_110_salloc_load", i64 16)
  %"$dyndisp_table_110_salloc" = bitcast i8* %"$dyndisp_table_110_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_110" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_110_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_111" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_110", i32 0
  %"$dyndisp_pcast_112" = bitcast { i8*, i8* }* %"$dyndisp_gep_111" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_8_env_50"*)* @"$fundef_8" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_112", align 8
  store { i8*, i8* }* %"$dyndisp_table_110", { i8*, i8* }** %tf, align 8, !dbg !20
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_105"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %t = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %"$tf_123" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_124" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_123", i32 0
  %"$tf_125" = bitcast { i8*, i8* }* %"$tf_124" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_126" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_125", align 8
  %"$tf_fptr_127" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_126", 0
  %"$tf_envptr_128" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_126", 1
  %"$tf_call_129" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$tf_fptr_127"(i8* %"$tf_envptr_128"), !dbg !21
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$tf_call_129", { %Uint32 (i8*, %Uint32)*, i8* }* %t, align 8, !dbg !22
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_121"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one, metadata !23, metadata !DIExpression()), !dbg !24
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !25
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %"$have_gas_138"
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  %"$t_6" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$t_6", metadata !26, metadata !DIExpression()), !dbg !27
  %"$t_145" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %t, align 8
  %"$t_fptr_146" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$t_145", 0
  %"$t_envptr_147" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$t_145", 1
  %"$one_148" = load %Uint32, %Uint32* %one, align 4
  %"$t_call_149" = call %Uint32 %"$t_fptr_146"(i8* %"$t_envptr_147", %Uint32 %"$one_148"), !dbg !27
  store %Uint32 %"$t_call_149", %Uint32* %"$t_6", align 4, !dbg !27
  %"$$t_6_150" = load %Uint32, %Uint32* %"$t_6", align 4
  store %Uint32 %"$$t_6_150", %Uint32* %"$expr_7", align 4, !dbg !27
  %"$$expr_7_151" = load %Uint32, %Uint32* %"$expr_7", align 4
  ret %Uint32 %"$$expr_7_151"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_152" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_153" = alloca %Uint32, align 8
  %"$memvoidcast_154" = bitcast %Uint32* %"$pval_153" to i8*
  store %Uint32 %"$exprval_152", %Uint32* %"$pval_153", align 4
  %"$execptr_load_155" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_155", %_TyDescrTy_Typ* @"$TyDescr_Uint32_16", i8* %"$memvoidcast_154")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "typ-inst.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "a", scope: !3, file: !2, line: 3, type: !9)
!9 = !DIBasicType(name: "Uint32", size: 4)
!10 = !DILocation(line: 3, column: 8, scope: !3)
!11 = !DILocalVariable(name: "$retval_11", scope: !3, file: !2, line: 4, type: !9)
!12 = !DILocation(line: 4, column: 5, scope: !3)
!13 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!14 = !DILocation(line: 4, column: 5, scope: !13)
!15 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !16, file: !16, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!16 = !DIFile(filename: ".", directory: ".")
!17 = !DILocation(line: 0, scope: !15)
!18 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!19 = !DILocalVariable(name: "$expr_7", scope: !18, file: !2, line: 2, type: !9)
!20 = !DILocation(line: 2, column: 3, scope: !18)
!21 = !DILocation(line: 7, column: 10, scope: !18)
!22 = !DILocation(line: 7, column: 9, scope: !18)
!23 = !DILocalVariable(name: "one", scope: !18, file: !2, line: 8, type: !9)
!24 = !DILocation(line: 8, column: 5, scope: !18)
!25 = !DILocation(line: 8, column: 11, scope: !18)
!26 = !DILocalVariable(name: "$t_6", scope: !18, file: !2, line: 9, type: !9)
!27 = !DILocation(line: 9, column: 1, scope: !18)
