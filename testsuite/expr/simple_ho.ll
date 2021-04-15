; let ho =
; fun( h : Int32 -> Int32) =>
; fun (i : Int32) =>
; h i
; in
; 
; let inc =
; fun (a : Int32) =>
; let b = Int32 1 in
; builtin add a b
; in
; 
; let hundred = Int32 100 in
; ho inc hundred
; 
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_10" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_8_env_43" = type {}
%Int32 = type { i32 }
%"$$fundef_6_env_44" = type { { %Int32 (i8*, %Int32)*, i8* } }
%"$$fundef_4_env_45" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_11" = global %"$TyDescrTy_PrimTyp_10" zeroinitializer
@"$TyDescr_Int32_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int32_Prim_11" to i8*) }
@"$TyDescr_Uint32_Prim_13" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 0 }
@"$TyDescr_Uint32_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint32_Prim_13" to i8*) }
@"$TyDescr_Int64_Prim_15" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 1 }
@"$TyDescr_Int64_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int64_Prim_15" to i8*) }
@"$TyDescr_Uint64_Prim_17" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 1 }
@"$TyDescr_Uint64_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint64_Prim_17" to i8*) }
@"$TyDescr_Int128_Prim_19" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 2 }
@"$TyDescr_Int128_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int128_Prim_19" to i8*) }
@"$TyDescr_Uint128_Prim_21" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 2 }
@"$TyDescr_Uint128_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint128_Prim_21" to i8*) }
@"$TyDescr_Int256_Prim_23" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 3 }
@"$TyDescr_Int256_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int256_Prim_23" to i8*) }
@"$TyDescr_Uint256_Prim_25" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 3 }
@"$TyDescr_Uint256_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint256_Prim_25" to i8*) }
@"$TyDescr_String_Prim_27" = global %"$TyDescrTy_PrimTyp_10" { i32 2, i32 0 }
@"$TyDescr_String_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_String_Prim_27" to i8*) }
@"$TyDescr_Bnum_Prim_29" = global %"$TyDescrTy_PrimTyp_10" { i32 3, i32 0 }
@"$TyDescr_Bnum_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bnum_Prim_29" to i8*) }
@"$TyDescr_Message_Prim_31" = global %"$TyDescrTy_PrimTyp_10" { i32 4, i32 0 }
@"$TyDescr_Message_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Message_Prim_31" to i8*) }
@"$TyDescr_Event_Prim_33" = global %"$TyDescrTy_PrimTyp_10" { i32 5, i32 0 }
@"$TyDescr_Event_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Event_Prim_33" to i8*) }
@"$TyDescr_Exception_Prim_35" = global %"$TyDescrTy_PrimTyp_10" { i32 6, i32 0 }
@"$TyDescr_Exception_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Exception_Prim_35" to i8*) }
@"$TyDescr_Bystr_Prim_37" = global %"$TyDescrTy_PrimTyp_10" { i32 7, i32 0 }
@"$TyDescr_Bystr_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr_Prim_37" to i8*) }

define internal %Int32 @"$fundef_8"(%"$$fundef_8_env_43"* %0, %Int32 %1) !dbg !4 {
entry:
  %"$retval_9" = alloca %Int32, align 8
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %entry
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %b = alloca %Int32, align 8
  %"$gasrem_75" = load i64, i64* @_gasrem, align 8
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_73"
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %b, align 4, !dbg !8
  %"$b_80" = load %Int32, %Int32* %b, align 4
  %"$add_call_81" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$b_80")
  store %Int32 %"$add_call_81", %Int32* %"$retval_9", align 4, !dbg !9
  %"$$retval_9_82" = load %Int32, %Int32* %"$retval_9", align 4
  ret %Int32 %"$$retval_9_82"
}

define internal %Int32 @"$fundef_6"(%"$$fundef_6_env_44"* %0, %Int32 %1) !dbg !10 {
entry:
  %"$$fundef_6_env_h_57" = getelementptr inbounds %"$$fundef_6_env_44", %"$$fundef_6_env_44"* %0, i32 0, i32 0
  %"$h_envload_58" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_6_env_h_57", align 8
  %h = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$h_envload_58", { %Int32 (i8*, %Int32)*, i8* }* %h, align 8
  %"$retval_7" = alloca %Int32, align 8
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %entry
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem, align 8
  %"$h_0" = alloca %Int32, align 8
  %"$h_64" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %h, align 8
  %"$h_fptr_65" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_64", 0
  %"$h_envptr_66" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_64", 1
  %"$h_call_67" = call %Int32 %"$h_fptr_65"(i8* %"$h_envptr_66", %Int32 %1), !dbg !11
  store %Int32 %"$h_call_67", %Int32* %"$h_0", align 4, !dbg !11
  %"$$h_0_68" = load %Int32, %Int32* %"$h_0", align 4
  store %Int32 %"$$h_0_68", %Int32* %"$retval_7", align 4, !dbg !11
  %"$$retval_7_69" = load %Int32, %Int32* %"$retval_7", align 4
  ret %Int32 %"$$retval_7_69"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_4"(%"$$fundef_4_env_45"* %0, { %Int32 (i8*, %Int32)*, i8* } %1) !dbg !12 {
entry:
  %"$retval_5" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_46" = load i64, i64* @_gasrem, align 8
  %"$gascmp_47" = icmp ugt i64 1, %"$gasrem_46"
  br i1 %"$gascmp_47", label %"$out_of_gas_48", label %"$have_gas_49"

"$out_of_gas_48":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_49"

"$have_gas_49":                                   ; preds = %"$out_of_gas_48", %entry
  %"$consume_50" = sub i64 %"$gasrem_46", 1
  store i64 %"$consume_50", i64* @_gasrem, align 8
  %"$$fundef_6_envp_51_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_6_envp_51_salloc" = call i8* @_salloc(i8* %"$$fundef_6_envp_51_load", i64 16)
  %"$$fundef_6_envp_51" = bitcast i8* %"$$fundef_6_envp_51_salloc" to %"$$fundef_6_env_44"*
  %"$$fundef_6_env_voidp_53" = bitcast %"$$fundef_6_env_44"* %"$$fundef_6_envp_51" to i8*
  %"$$fundef_6_cloval_54" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_6_env_44"*, %Int32)* @"$fundef_6" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_6_env_voidp_53", 1
  %"$$fundef_6_env_h_55" = getelementptr inbounds %"$$fundef_6_env_44", %"$$fundef_6_env_44"* %"$$fundef_6_envp_51", i32 0, i32 0
  store { %Int32 (i8*, %Int32)*, i8* } %1, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_6_env_h_55", align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_6_cloval_54", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_5", align 8, !dbg !13
  %"$$retval_5_56" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_5", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_5_56"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !14 {
entry:
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !16 {
entry:
  %"$expr_3" = alloca %Int32, align 8
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %entry
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %ho = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, align 8
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_4_env_45"*, { %Int32 (i8*, %Int32)*, i8* })* @"$fundef_4" to { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho, align 8, !dbg !17
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$have_gas_91"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %inc = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 1, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 1
  store i64 %"$consume_105", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_8_env_43"*, %Int32)* @"$fundef_8" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %inc, align 8, !dbg !18
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_104"
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %hundred = alloca %Int32, align 8
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  store %Int32 { i32 100 }, %Int32* %hundred, align 4, !dbg !19
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_117"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %"$ho_1" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$ho_124" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho, align 8
  %"$ho_fptr_125" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_124", 0
  %"$ho_envptr_126" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_124", 1
  %"$inc_127" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %inc, align 8
  %"$ho_call_128" = call { %Int32 (i8*, %Int32)*, i8* } %"$ho_fptr_125"(i8* %"$ho_envptr_126", { %Int32 (i8*, %Int32)*, i8* } %"$inc_127"), !dbg !20
  store { %Int32 (i8*, %Int32)*, i8* } %"$ho_call_128", { %Int32 (i8*, %Int32)*, i8* }* %"$ho_1", align 8, !dbg !20
  %"$ho_2" = alloca %Int32, align 8
  %"$$ho_1_129" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$ho_1", align 8
  %"$$ho_1_fptr_130" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_1_129", 0
  %"$$ho_1_envptr_131" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_1_129", 1
  %"$hundred_132" = load %Int32, %Int32* %hundred, align 4
  %"$$ho_1_call_133" = call %Int32 %"$$ho_1_fptr_130"(i8* %"$$ho_1_envptr_131", %Int32 %"$hundred_132"), !dbg !20
  store %Int32 %"$$ho_1_call_133", %Int32* %"$ho_2", align 4, !dbg !20
  %"$$ho_2_134" = load %Int32, %Int32* %"$ho_2", align 4
  store %Int32 %"$$ho_2_134", %Int32* %"$expr_3", align 4, !dbg !20
  %"$$expr_3_135" = load %Int32, %Int32* %"$expr_3", align 4
  ret %Int32 %"$$expr_3_135"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_136" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_137" = alloca %Int32, align 8
  %"$memvoidcast_138" = bitcast %Int32* %"$pval_137" to i8*
  store %Int32 %"$exprval_136", %Int32* %"$pval_137", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_12", i8* %"$memvoidcast_138")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "simple_ho.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 9, column: 13, scope: !4)
!9 = !DILocation(line: 10, column: 5, scope: !4)
!10 = distinct !DISubprogram(name: "$fundef_6", linkageName: "$fundef_6", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 4, column: 5, scope: !10)
!12 = distinct !DISubprogram(name: "$fundef_4", linkageName: "$fundef_4", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 4, column: 5, scope: !12)
!14 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !15, file: !15, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DIFile(filename: ".", directory: ".")
!16 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 3, column: 3, scope: !16)
!18 = !DILocation(line: 9, column: 5, scope: !16)
!19 = !DILocation(line: 13, column: 15, scope: !16)
!20 = !DILocation(line: 14, column: 1, scope: !16)
