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
%"$ParamDescr_155" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_156" = type { %ParamDescrString, i32, %"$ParamDescr_155"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_155"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_156"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_10"(%"$$fundef_10_env_49"* %0, %Uint32 %1) !dbg !3 {
entry:
  %"$retval_11" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_11", metadata !8, metadata !DIExpression()), !dbg !10
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %entry
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_11", align 4, !dbg !10
  %"$$retval_11_65" = load %Uint32, %Uint32* %"$retval_11", align 4
  ret %Uint32 %"$$retval_11_65"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_8"(%"$$fundef_8_env_50"* %0) !dbg !11 {
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
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_10_env_49"*, %Uint32)* @"$fundef_10" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_9", align 8, !dbg !12
  %"$$retval_9_59" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_9", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_9_59"
}

declare void @_out_of_gas()

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !13 {
entry:
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 5, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %entry
  %"$consume_70" = sub i64 %"$gasrem_66", 5
  store i64 %"$consume_70", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !15
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 8, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_69"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_69"
  %"$consume_75" = sub i64 %"$gasrem_71", 8
  store i64 %"$consume_75", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !15
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 196, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %"$have_gas_74"
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %"$have_gas_74"
  %"$consume_80" = sub i64 %"$gasrem_76", 196
  store i64 %"$consume_80", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !15
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 20, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %"$have_gas_79"
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %"$have_gas_79"
  %"$consume_85" = sub i64 %"$gasrem_81", 20
  store i64 %"$consume_85", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !15
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 12, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_84"
  %"$consume_90" = sub i64 %"$gasrem_86", 12
  store i64 %"$consume_90", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !15
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 2, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 2
  store i64 %"$consume_95", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !15
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !16 {
entry:
  %"$expr_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$expr_7", metadata !17, metadata !DIExpression()), !dbg !18
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %entry
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  %"$dyndisp_table_109_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_109_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_109_salloc_load", i64 16)
  %"$dyndisp_table_109_salloc" = bitcast i8* %"$dyndisp_table_109_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_109" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_109_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_110" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_109", i32 0
  %"$dyndisp_pcast_111" = bitcast { i8*, i8* }* %"$dyndisp_gep_110" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_8_env_50"*)* @"$fundef_8" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_111", align 8
  store { i8*, i8* }* %"$dyndisp_table_109", { i8*, i8* }** %tf, align 8, !dbg !18
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$have_gas_104"
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %t = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %"$tf_122" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_123" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_122", i32 0
  %"$tf_124" = bitcast { i8*, i8* }* %"$tf_123" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_125" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_124", align 8
  %"$tf_fptr_126" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_125", 0
  %"$tf_envptr_127" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_125", 1
  %"$tf_call_128" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$tf_fptr_126"(i8* %"$tf_envptr_127"), !dbg !19
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$tf_call_128", { %Uint32 (i8*, %Uint32)*, i8* }* %t, align 8, !dbg !20
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_120"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one, metadata !21, metadata !DIExpression()), !dbg !22
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !23
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  %"$t_6" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$t_6", metadata !24, metadata !DIExpression()), !dbg !25
  %"$t_144" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %t, align 8
  %"$t_fptr_145" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$t_144", 0
  %"$t_envptr_146" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$t_144", 1
  %"$one_147" = load %Uint32, %Uint32* %one, align 4
  %"$t_call_148" = call %Uint32 %"$t_fptr_145"(i8* %"$t_envptr_146", %Uint32 %"$one_147"), !dbg !25
  store %Uint32 %"$t_call_148", %Uint32* %"$t_6", align 4, !dbg !25
  %"$$t_6_149" = load %Uint32, %Uint32* %"$t_6", align 4
  store %Uint32 %"$$t_6_149", %Uint32* %"$expr_7", align 4, !dbg !25
  %"$$expr_7_150" = load %Uint32, %Uint32* %"$expr_7", align 4
  ret %Uint32 %"$$expr_7_150"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_151" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_152" = alloca %Uint32, align 8
  %"$memvoidcast_153" = bitcast %Uint32* %"$pval_152" to i8*
  store %Uint32 %"$exprval_151", %Uint32* %"$pval_152", align 4
  %"$execptr_load_154" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_154", %_TyDescrTy_Typ* @"$TyDescr_Uint32_16", i8* %"$memvoidcast_153")
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
!8 = !DILocalVariable(name: "$retval_11", scope: !3, file: !2, line: 4, type: !9)
!9 = !DIBasicType(name: "Uint32", size: 4)
!10 = !DILocation(line: 4, column: 5, scope: !3)
!11 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!12 = !DILocation(line: 4, column: 5, scope: !11)
!13 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !14, file: !14, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!14 = !DIFile(filename: ".", directory: ".")
!15 = !DILocation(line: 0, scope: !13)
!16 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!17 = !DILocalVariable(name: "$expr_7", scope: !16, file: !2, line: 2, type: !9)
!18 = !DILocation(line: 2, column: 3, scope: !16)
!19 = !DILocation(line: 7, column: 10, scope: !16)
!20 = !DILocation(line: 7, column: 9, scope: !16)
!21 = !DILocalVariable(name: "one", scope: !16, file: !2, line: 8, type: !9)
!22 = !DILocation(line: 8, column: 5, scope: !16)
!23 = !DILocation(line: 8, column: 11, scope: !16)
!24 = !DILocalVariable(name: "$t_6", scope: !16, file: !2, line: 9, type: !9)
!25 = !DILocation(line: 9, column: 1, scope: !16)
