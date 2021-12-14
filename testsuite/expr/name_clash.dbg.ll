; let a = Uint32 1 in
; let x =
; let a = Uint32 2 in
; a
; in
; builtin add a x
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_8" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_117" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_118" = type { %ParamDescrString, i32, %"$ParamDescr_117"* }
%Uint32 = type { i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_9" = global %"$TyDescrTy_PrimTyp_8" zeroinitializer
@"$TyDescr_Int32_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Int32_Prim_9" to i8*) }
@"$TyDescr_Uint32_Prim_11" = global %"$TyDescrTy_PrimTyp_8" { i32 1, i32 0 }
@"$TyDescr_Uint32_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Uint32_Prim_11" to i8*) }
@"$TyDescr_Int64_Prim_13" = global %"$TyDescrTy_PrimTyp_8" { i32 0, i32 1 }
@"$TyDescr_Int64_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Int64_Prim_13" to i8*) }
@"$TyDescr_Uint64_Prim_15" = global %"$TyDescrTy_PrimTyp_8" { i32 1, i32 1 }
@"$TyDescr_Uint64_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Uint64_Prim_15" to i8*) }
@"$TyDescr_Int128_Prim_17" = global %"$TyDescrTy_PrimTyp_8" { i32 0, i32 2 }
@"$TyDescr_Int128_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Int128_Prim_17" to i8*) }
@"$TyDescr_Uint128_Prim_19" = global %"$TyDescrTy_PrimTyp_8" { i32 1, i32 2 }
@"$TyDescr_Uint128_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Uint128_Prim_19" to i8*) }
@"$TyDescr_Int256_Prim_21" = global %"$TyDescrTy_PrimTyp_8" { i32 0, i32 3 }
@"$TyDescr_Int256_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Int256_Prim_21" to i8*) }
@"$TyDescr_Uint256_Prim_23" = global %"$TyDescrTy_PrimTyp_8" { i32 1, i32 3 }
@"$TyDescr_Uint256_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Uint256_Prim_23" to i8*) }
@"$TyDescr_String_Prim_25" = global %"$TyDescrTy_PrimTyp_8" { i32 2, i32 0 }
@"$TyDescr_String_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_String_Prim_25" to i8*) }
@"$TyDescr_Bnum_Prim_27" = global %"$TyDescrTy_PrimTyp_8" { i32 3, i32 0 }
@"$TyDescr_Bnum_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Bnum_Prim_27" to i8*) }
@"$TyDescr_Message_Prim_29" = global %"$TyDescrTy_PrimTyp_8" { i32 4, i32 0 }
@"$TyDescr_Message_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Message_Prim_29" to i8*) }
@"$TyDescr_Event_Prim_31" = global %"$TyDescrTy_PrimTyp_8" { i32 5, i32 0 }
@"$TyDescr_Event_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Event_Prim_31" to i8*) }
@"$TyDescr_Exception_Prim_33" = global %"$TyDescrTy_PrimTyp_8" { i32 6, i32 0 }
@"$TyDescr_Exception_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Exception_Prim_33" to i8*) }
@"$TyDescr_Bystr_Prim_35" = global %"$TyDescrTy_PrimTyp_8" { i32 7, i32 0 }
@"$TyDescr_Bystr_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Bystr_Prim_35" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_32", %_TyDescrTy_Typ* @"$TyDescr_Int64_14", %_TyDescrTy_Typ* @"$TyDescr_Uint256_24", %_TyDescrTy_Typ* @"$TyDescr_Uint32_12", %_TyDescrTy_Typ* @"$TyDescr_Uint64_16", %_TyDescrTy_Typ* @"$TyDescr_Bnum_28", %_TyDescrTy_Typ* @"$TyDescr_Uint128_20", %_TyDescrTy_Typ* @"$TyDescr_Exception_34", %_TyDescrTy_Typ* @"$TyDescr_String_26", %_TyDescrTy_Typ* @"$TyDescr_Int256_22", %_TyDescrTy_Typ* @"$TyDescr_Int128_18", %_TyDescrTy_Typ* @"$TyDescr_Bystr_36", %_TyDescrTy_Typ* @"$TyDescr_Message_30", %_TyDescrTy_Typ* @"$TyDescr_Int32_10"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_117"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_118"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_43" = load i64, i64* @_gasrem, align 8
  %"$gascmp_44" = icmp ugt i64 5, %"$gasrem_43"
  br i1 %"$gascmp_44", label %"$out_of_gas_45", label %"$have_gas_46"

"$out_of_gas_45":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_46"

"$have_gas_46":                                   ; preds = %"$out_of_gas_45", %entry
  %"$consume_47" = sub i64 %"$gasrem_43", 5
  store i64 %"$consume_47", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_48" = load i64, i64* @_gasrem, align 8
  %"$gascmp_49" = icmp ugt i64 8, %"$gasrem_48"
  br i1 %"$gascmp_49", label %"$out_of_gas_50", label %"$have_gas_51"

"$out_of_gas_50":                                 ; preds = %"$have_gas_46"
  call void @_out_of_gas()
  br label %"$have_gas_51"

"$have_gas_51":                                   ; preds = %"$out_of_gas_50", %"$have_gas_46"
  %"$consume_52" = sub i64 %"$gasrem_48", 8
  store i64 %"$consume_52", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 196, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %"$have_gas_51"
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %"$have_gas_51"
  %"$consume_57" = sub i64 %"$gasrem_53", 196
  store i64 %"$consume_57", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 20, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %"$have_gas_56"
  %"$consume_62" = sub i64 %"$gasrem_58", 20
  store i64 %"$consume_62", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 12, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %"$have_gas_61"
  %"$consume_67" = sub i64 %"$gasrem_63", 12
  store i64 %"$consume_67", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 2, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 2
  store i64 %"$consume_72", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_7" = alloca %Uint32, align 8
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 1, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %entry
  %"$consume_77" = sub i64 %"$gasrem_73", 1
  store i64 %"$consume_77", i64* @_gasrem, align 8
  %a = alloca %Uint32, align 8
  %"$gasrem_78" = load i64, i64* @_gasrem, align 8
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_76"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_76"
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %a, align 4, !dbg !11
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %x = alloca %Uint32, align 8
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %"$a_6" = alloca %Uint32, align 8
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_91"
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %"$a_6", align 4, !dbg !12
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$$a_6_103" = load %Uint32, %Uint32* %"$a_6", align 4
  store %Uint32 %"$$a_6_103", %Uint32* %x, align 4, !dbg !13
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 4, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_101"
  %"$consume_108" = sub i64 %"$gasrem_104", 4
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$a_109" = load %Uint32, %Uint32* %a, align 4
  %"$x_110" = load %Uint32, %Uint32* %x, align 4
  %"$add_call_111" = call %Uint32 @_add_Uint32(%Uint32 %"$a_109", %Uint32 %"$x_110"), !dbg !14
  store %Uint32 %"$add_call_111", %Uint32* %"$expr_7", align 4, !dbg !14
  %"$$expr_7_112" = load %Uint32, %Uint32* %"$expr_7", align 4
  ret %Uint32 %"$$expr_7_112"
}

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_113" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_114" = alloca %Uint32, align 8
  %"$memvoidcast_115" = bitcast %Uint32* %"$pval_114" to i8*
  store %Uint32 %"$exprval_113", %Uint32* %"$pval_114", align 4
  %"$execptr_load_116" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_116", %_TyDescrTy_Typ* @"$TyDescr_Uint32_12", i8* %"$memvoidcast_115")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "name_clash.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 0, scope: !4)
!10 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 1, column: 9, scope: !10)
!12 = !DILocation(line: 3, column: 11, scope: !10)
!13 = !DILocation(line: 4, column: 3, scope: !10)
!14 = !DILocation(line: 6, column: 1, scope: !10)
