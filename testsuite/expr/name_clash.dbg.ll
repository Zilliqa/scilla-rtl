; let a = Uint32 1 in
; let x =
; let a = Uint32 2 in
; a
; in
; builtin add a x
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_8" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_119" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_120" = type { %ParamDescrString, i32, %"$ParamDescr_119"* }
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
@"$TyDescr_ReplicateContr_Prim_35" = global %"$TyDescrTy_PrimTyp_8" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_ReplicateContr_Prim_35" to i8*) }
@"$TyDescr_Bystr_Prim_37" = global %"$TyDescrTy_PrimTyp_8" { i32 7, i32 0 }
@"$TyDescr_Bystr_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_8"* @"$TyDescr_Bystr_Prim_37" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_32", %_TyDescrTy_Typ* @"$TyDescr_Int64_14", %_TyDescrTy_Typ* @"$TyDescr_Uint256_24", %_TyDescrTy_Typ* @"$TyDescr_Uint32_12", %_TyDescrTy_Typ* @"$TyDescr_Uint64_16", %_TyDescrTy_Typ* @"$TyDescr_Bnum_28", %_TyDescrTy_Typ* @"$TyDescr_Uint128_20", %_TyDescrTy_Typ* @"$TyDescr_Exception_34", %_TyDescrTy_Typ* @"$TyDescr_String_26", %_TyDescrTy_Typ* @"$TyDescr_Int256_22", %_TyDescrTy_Typ* @"$TyDescr_Int128_18", %_TyDescrTy_Typ* @"$TyDescr_Bystr_38", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_36", %_TyDescrTy_Typ* @"$TyDescr_Message_30", %_TyDescrTy_Typ* @"$TyDescr_Int32_10"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_119"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_120"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() !dbg !4 {
entry:
  %"$gasrem_45" = load i64, i64* @_gasrem, align 8
  %"$gascmp_46" = icmp ugt i64 5, %"$gasrem_45"
  br i1 %"$gascmp_46", label %"$out_of_gas_47", label %"$have_gas_48"

"$out_of_gas_47":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_48"

"$have_gas_48":                                   ; preds = %"$out_of_gas_47", %entry
  %"$consume_49" = sub i64 %"$gasrem_45", 5
  store i64 %"$consume_49", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !9
  %"$gasrem_50" = load i64, i64* @_gasrem, align 8
  %"$gascmp_51" = icmp ugt i64 8, %"$gasrem_50"
  br i1 %"$gascmp_51", label %"$out_of_gas_52", label %"$have_gas_53"

"$out_of_gas_52":                                 ; preds = %"$have_gas_48"
  call void @_out_of_gas()
  br label %"$have_gas_53"

"$have_gas_53":                                   ; preds = %"$out_of_gas_52", %"$have_gas_48"
  %"$consume_54" = sub i64 %"$gasrem_50", 8
  store i64 %"$consume_54", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !9
  %"$gasrem_55" = load i64, i64* @_gasrem, align 8
  %"$gascmp_56" = icmp ugt i64 196, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %"$have_gas_53"
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %"$have_gas_53"
  %"$consume_59" = sub i64 %"$gasrem_55", 196
  store i64 %"$consume_59", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !9
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 20, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %"$have_gas_58"
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %"$have_gas_58"
  %"$consume_64" = sub i64 %"$gasrem_60", 20
  store i64 %"$consume_64", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !9
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 12, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %"$have_gas_63"
  %"$consume_69" = sub i64 %"$gasrem_65", 12
  store i64 %"$consume_69", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !9
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 2, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$have_gas_68"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$have_gas_68"
  %"$consume_74" = sub i64 %"$gasrem_70", 2
  store i64 %"$consume_74", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !10 {
entry:
  %"$expr_7" = alloca %Uint32, align 8
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %entry
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem, align 8
  %a = alloca %Uint32, align 8
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 1, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %"$have_gas_78"
  %"$consume_84" = sub i64 %"$gasrem_80", 1
  store i64 %"$consume_84", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %a, align 4, !dbg !11
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %"$have_gas_83"
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %"$have_gas_83"
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  %x = alloca %Uint32, align 8
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %"$a_6" = alloca %Uint32, align 8
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %"$a_6", align 4, !dbg !12
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$$a_6_105" = load %Uint32, %Uint32* %"$a_6", align 4
  store %Uint32 %"$$a_6_105", %Uint32* %x, align 4, !dbg !13
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 4, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_103"
  %"$consume_110" = sub i64 %"$gasrem_106", 4
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$a_111" = load %Uint32, %Uint32* %a, align 4
  %"$x_112" = load %Uint32, %Uint32* %x, align 4
  %"$add_call_113" = call %Uint32 @_add_Uint32(%Uint32 %"$a_111", %Uint32 %"$x_112"), !dbg !14
  store %Uint32 %"$add_call_113", %Uint32* %"$expr_7", align 4, !dbg !14
  %"$$expr_7_114" = load %Uint32, %Uint32* %"$expr_7", align 4
  ret %Uint32 %"$$expr_7_114"
}

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_115" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_116" = alloca %Uint32, align 8
  %"$memvoidcast_117" = bitcast %Uint32* %"$pval_116" to i8*
  store %Uint32 %"$exprval_115", %Uint32* %"$pval_116", align 4
  %"$execptr_load_118" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_118", %_TyDescrTy_Typ* @"$TyDescr_Uint32_12", i8* %"$memvoidcast_117")
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
