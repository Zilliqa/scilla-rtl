; let hello = 0x68656c6c6f in
; let world = 0x20776f726c64 in
; let worldx = builtin to_bystr world in
; 
; let hello_s = builtin to_ascii hello in
; let world_s = builtin to_ascii worldx in
; builtin concat hello_s world_s
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%String = type { i8*, i32 }
%Bystr = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_Bystr6_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 6 }
@"$TyDescr_Bystr6_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr6_Prim_30" to i8*) }
@"$TyDescr_Bystr5_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 5 }
@"$TyDescr_Bystr5_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr5_Prim_32" to i8*) }

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %String @"$scilla_expr_38"(i8* %0) !dbg !8 {
entry:
  %"$expr_0" = alloca %String, align 8
  %"$gasrem_39" = load i64, i64* @_gasrem, align 8
  %"$gascmp_40" = icmp ugt i64 1, %"$gasrem_39"
  br i1 %"$gascmp_40", label %"$out_of_gas_41", label %"$have_gas_42"

"$out_of_gas_41":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_42"

"$have_gas_42":                                   ; preds = %"$out_of_gas_41", %entry
  %"$consume_43" = sub i64 %"$gasrem_39", 1
  store i64 %"$consume_43", i64* @_gasrem, align 8
  %hello = alloca [5 x i8], align 1
  %"$gasrem_44" = load i64, i64* @_gasrem, align 8
  %"$gascmp_45" = icmp ugt i64 1, %"$gasrem_44"
  br i1 %"$gascmp_45", label %"$out_of_gas_46", label %"$have_gas_47"

"$out_of_gas_46":                                 ; preds = %"$have_gas_42"
  call void @_out_of_gas()
  br label %"$have_gas_47"

"$have_gas_47":                                   ; preds = %"$out_of_gas_46", %"$have_gas_42"
  %"$consume_48" = sub i64 %"$gasrem_44", 1
  store i64 %"$consume_48", i64* @_gasrem, align 8
  store [5 x i8] c"hello", [5 x i8]* %hello, align 1, !dbg !9
  %"$gasrem_49" = load i64, i64* @_gasrem, align 8
  %"$gascmp_50" = icmp ugt i64 1, %"$gasrem_49"
  br i1 %"$gascmp_50", label %"$out_of_gas_51", label %"$have_gas_52"

"$out_of_gas_51":                                 ; preds = %"$have_gas_47"
  call void @_out_of_gas()
  br label %"$have_gas_52"

"$have_gas_52":                                   ; preds = %"$out_of_gas_51", %"$have_gas_47"
  %"$consume_53" = sub i64 %"$gasrem_49", 1
  store i64 %"$consume_53", i64* @_gasrem, align 8
  %world = alloca [6 x i8], align 1
  %"$gasrem_54" = load i64, i64* @_gasrem, align 8
  %"$gascmp_55" = icmp ugt i64 1, %"$gasrem_54"
  br i1 %"$gascmp_55", label %"$out_of_gas_56", label %"$have_gas_57"

"$out_of_gas_56":                                 ; preds = %"$have_gas_52"
  call void @_out_of_gas()
  br label %"$have_gas_57"

"$have_gas_57":                                   ; preds = %"$out_of_gas_56", %"$have_gas_52"
  %"$consume_58" = sub i64 %"$gasrem_54", 1
  store i64 %"$consume_58", i64* @_gasrem, align 8
  store [6 x i8] c" world", [6 x i8]* %world, align 1, !dbg !10
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %"$have_gas_57"
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %"$have_gas_57"
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem, align 8
  %worldx = alloca %Bystr, align 8
  %"$execptr_load_64" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_world_65" = alloca [6 x i8], align 1
  %"$world_66" = load [6 x i8], [6 x i8]* %world, align 1
  store [6 x i8] %"$world_66", [6 x i8]* %"$to_bystr_world_65", align 1
  %"$$to_bystr_world_65_67" = bitcast [6 x i8]* %"$to_bystr_world_65" to i8*
  %"$to_bystr_call_68" = call %Bystr @_to_bystr(i8* %"$execptr_load_64", i32 6, i8* %"$$to_bystr_world_65_67")
  store %Bystr %"$to_bystr_call_68", %Bystr* %worldx, align 8, !dbg !11
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %"$have_gas_62"
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %"$have_gas_62"
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  %hello_s = alloca %String, align 8
  %"$execptr_load_74" = load i8*, i8** @_execptr, align 8
  %"$to_ascii_hello_75" = alloca [5 x i8], align 1
  %"$hello_76" = load [5 x i8], [5 x i8]* %hello, align 1
  store [5 x i8] %"$hello_76", [5 x i8]* %"$to_ascii_hello_75", align 1
  %"$$to_ascii_hello_75_77" = bitcast [5 x i8]* %"$to_ascii_hello_75" to i8*
  %"$to_ascii_call_78" = call %String @_to_ascii(i8* %"$execptr_load_74", i8* %"$$to_ascii_hello_75_77", i32 5)
  store %String %"$to_ascii_call_78", %String* %hello_s, align 8, !dbg !12
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$have_gas_72"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$have_gas_72"
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  %world_s = alloca %String, align 8
  %"$worldx_84" = load %Bystr, %Bystr* %worldx, align 8
  %"$to_ascii_85" = extractvalue %Bystr %"$worldx_84", 0
  %"$to_ascii_86" = extractvalue %Bystr %"$worldx_84", 1
  %"$execptr_load_87" = load i8*, i8** @_execptr, align 8
  %"$to_ascii_call_88" = call %String @_to_ascii(i8* %"$execptr_load_87", i8* %"$to_ascii_85", i32 %"$to_ascii_86")
  store %String %"$to_ascii_call_88", %String* %world_s, align 8, !dbg !13
  %"$execptr_load_89" = load i8*, i8** @_execptr, align 8
  %"$hello_s_90" = load %String, %String* %hello_s, align 8
  %"$world_s_91" = load %String, %String* %world_s, align 8
  %"$concat_call_92" = call %String @_concat_String(i8* %"$execptr_load_89", %String %"$hello_s_90", %String %"$world_s_91")
  store %String %"$concat_call_92", %String* %"$expr_0", align 8, !dbg !14
  %"$$expr_0_93" = load %String, %String* %"$expr_0", align 8
  ret %String %"$$expr_0_93"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %String @_to_ascii(i8*, i8*, i32)

declare %String @_concat_String(i8*, %String, %String)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_94" = call %String @"$scilla_expr_38"(i8* null)
  %"$pval_95" = alloca %String, align 8
  %"$memvoidcast_96" = bitcast %String* %"$pval_95" to i8*
  store %String %"$exprval_94", %String* %"$pval_95", align 8
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$memvoidcast_96")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_to_ascii.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !2, file: !2, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = distinct !DISubprogram(name: "$scilla_expr_38", linkageName: "$scilla_expr_38", scope: !2, file: !2, type: !5, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!9 = !DILocation(line: 1, column: 13, scope: !8)
!10 = !DILocation(line: 2, column: 13, scope: !8)
!11 = !DILocation(line: 3, column: 14, scope: !8)
!12 = !DILocation(line: 5, column: 15, scope: !8)
!13 = !DILocation(line: 6, column: 15, scope: !8)
!14 = !DILocation(line: 7, column: 1, scope: !8)
