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

%"$TyDescrTy_PrimTyp_16" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_187" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_188" = type { %ParamDescrString, i32, %"$ParamDescr_187"* }
%"$$fundef_14_env_53" = type {}
%"$$fundef_12_env_54" = type { { %Int32 (i8*, %Int32)*, i8* } }
%"$$fundef_10_env_55" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_17" = global %"$TyDescrTy_PrimTyp_16" zeroinitializer
@"$TyDescr_Int32_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int32_Prim_17" to i8*) }
@"$TyDescr_Uint32_Prim_19" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 0 }
@"$TyDescr_Uint32_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint32_Prim_19" to i8*) }
@"$TyDescr_Int64_Prim_21" = global %"$TyDescrTy_PrimTyp_16" { i32 0, i32 1 }
@"$TyDescr_Int64_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int64_Prim_21" to i8*) }
@"$TyDescr_Uint64_Prim_23" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 1 }
@"$TyDescr_Uint64_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint64_Prim_23" to i8*) }
@"$TyDescr_Int128_Prim_25" = global %"$TyDescrTy_PrimTyp_16" { i32 0, i32 2 }
@"$TyDescr_Int128_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int128_Prim_25" to i8*) }
@"$TyDescr_Uint128_Prim_27" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 2 }
@"$TyDescr_Uint128_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint128_Prim_27" to i8*) }
@"$TyDescr_Int256_Prim_29" = global %"$TyDescrTy_PrimTyp_16" { i32 0, i32 3 }
@"$TyDescr_Int256_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int256_Prim_29" to i8*) }
@"$TyDescr_Uint256_Prim_31" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 3 }
@"$TyDescr_Uint256_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint256_Prim_31" to i8*) }
@"$TyDescr_String_Prim_33" = global %"$TyDescrTy_PrimTyp_16" { i32 2, i32 0 }
@"$TyDescr_String_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_String_Prim_33" to i8*) }
@"$TyDescr_Bnum_Prim_35" = global %"$TyDescrTy_PrimTyp_16" { i32 3, i32 0 }
@"$TyDescr_Bnum_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Bnum_Prim_35" to i8*) }
@"$TyDescr_Message_Prim_37" = global %"$TyDescrTy_PrimTyp_16" { i32 4, i32 0 }
@"$TyDescr_Message_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Message_Prim_37" to i8*) }
@"$TyDescr_Event_Prim_39" = global %"$TyDescrTy_PrimTyp_16" { i32 5, i32 0 }
@"$TyDescr_Event_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Event_Prim_39" to i8*) }
@"$TyDescr_Exception_Prim_41" = global %"$TyDescrTy_PrimTyp_16" { i32 6, i32 0 }
@"$TyDescr_Exception_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Exception_Prim_41" to i8*) }
@"$TyDescr_ReplicateContr_Prim_43" = global %"$TyDescrTy_PrimTyp_16" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_ReplicateContr_Prim_43" to i8*) }
@"$TyDescr_Bystr_Prim_45" = global %"$TyDescrTy_PrimTyp_16" { i32 7, i32 0 }
@"$TyDescr_Bystr_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Bystr_Prim_45" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_40", %_TyDescrTy_Typ* @"$TyDescr_Int64_22", %_TyDescrTy_Typ* @"$TyDescr_Uint256_32", %_TyDescrTy_Typ* @"$TyDescr_Uint32_20", %_TyDescrTy_Typ* @"$TyDescr_Uint64_24", %_TyDescrTy_Typ* @"$TyDescr_Bnum_36", %_TyDescrTy_Typ* @"$TyDescr_Uint128_28", %_TyDescrTy_Typ* @"$TyDescr_Exception_42", %_TyDescrTy_Typ* @"$TyDescr_String_34", %_TyDescrTy_Typ* @"$TyDescr_Int256_30", %_TyDescrTy_Typ* @"$TyDescr_Int128_26", %_TyDescrTy_Typ* @"$TyDescr_Bystr_46", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_44", %_TyDescrTy_Typ* @"$TyDescr_Message_38", %_TyDescrTy_Typ* @"$TyDescr_Int32_18"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_187"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_188"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_14"(%"$$fundef_14_env_53"* %0, %Int32 %1) !dbg !3 {
entry:
  %"$a_99" = alloca %Int32, align 8
  store %Int32 %1, %Int32* %"$a_99", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$a_99", metadata !8, metadata !DIExpression()), !dbg !10
  %"$retval_15" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$retval_15", metadata !11, metadata !DIExpression()), !dbg !12
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %entry
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem, align 8
  %b = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %b, metadata !13, metadata !DIExpression()), !dbg !14
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 1, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %"$have_gas_84"
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %"$have_gas_84"
  %"$consume_90" = sub i64 %"$gasrem_86", 1
  store i64 %"$consume_90", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %b, align 4, !dbg !15
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 4, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 4
  store i64 %"$consume_95", i64* @_gasrem, align 8
  %"$b_96" = load %Int32, %Int32* %b, align 4
  %"$add_call_97" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$b_96"), !dbg !16
  store %Int32 %"$add_call_97", %Int32* %"$retval_15", align 4, !dbg !16
  %"$$retval_15_98" = load %Int32, %Int32* %"$retval_15", align 4
  ret %Int32 %"$$retval_15_98"
}

define internal %Int32 @"$fundef_12"(%"$$fundef_12_env_54"* %0, %Int32 %1) !dbg !17 {
entry:
  %"$i_80" = alloca %Int32, align 8
  store %Int32 %1, %Int32* %"$i_80", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$i_80", metadata !18, metadata !DIExpression()), !dbg !19
  %"$$fundef_12_env_h_67" = getelementptr inbounds %"$$fundef_12_env_54", %"$$fundef_12_env_54"* %0, i32 0, i32 0
  %"$h_envload_68" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_12_env_h_67", align 8
  %h = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$h_envload_68", { %Int32 (i8*, %Int32)*, i8* }* %h, align 8
  %"$retval_13" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$retval_13", metadata !20, metadata !DIExpression()), !dbg !21
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %entry
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  %"$h_6" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$h_6", metadata !22, metadata !DIExpression()), !dbg !21
  %"$h_74" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %h, align 8
  %"$h_fptr_75" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_74", 0
  %"$h_envptr_76" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_74", 1
  %"$h_call_77" = call %Int32 %"$h_fptr_75"(i8* %"$h_envptr_76", %Int32 %1), !dbg !21
  store %Int32 %"$h_call_77", %Int32* %"$h_6", align 4, !dbg !21
  %"$$h_6_78" = load %Int32, %Int32* %"$h_6", align 4
  store %Int32 %"$$h_6_78", %Int32* %"$retval_13", align 4, !dbg !21
  %"$$retval_13_79" = load %Int32, %Int32* %"$retval_13", align 4
  ret %Int32 %"$$retval_13_79"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_10"(%"$$fundef_10_env_55"* %0, { %Int32 (i8*, %Int32)*, i8* } %1) !dbg !23 {
entry:
  %"$retval_11" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_56" = load i64, i64* @_gasrem, align 8
  %"$gascmp_57" = icmp ugt i64 1, %"$gasrem_56"
  br i1 %"$gascmp_57", label %"$out_of_gas_58", label %"$have_gas_59"

"$out_of_gas_58":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_59"

"$have_gas_59":                                   ; preds = %"$out_of_gas_58", %entry
  %"$consume_60" = sub i64 %"$gasrem_56", 1
  store i64 %"$consume_60", i64* @_gasrem, align 8
  %"$$fundef_12_envp_61_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_12_envp_61_salloc" = call i8* @_salloc(i8* %"$$fundef_12_envp_61_load", i64 16)
  %"$$fundef_12_envp_61" = bitcast i8* %"$$fundef_12_envp_61_salloc" to %"$$fundef_12_env_54"*
  %"$$fundef_12_env_voidp_63" = bitcast %"$$fundef_12_env_54"* %"$$fundef_12_envp_61" to i8*
  %"$$fundef_12_cloval_64" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_12_env_54"*, %Int32)* @"$fundef_12" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_12_env_voidp_63", 1
  %"$$fundef_12_env_h_65" = getelementptr inbounds %"$$fundef_12_env_54", %"$$fundef_12_env_54"* %"$$fundef_12_envp_61", i32 0, i32 0
  store { %Int32 (i8*, %Int32)*, i8* } %1, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_12_env_h_65", align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_12_cloval_64", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_11", align 8, !dbg !24
  %"$$retval_11_66" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_11", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_11_66"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !25 {
entry:
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 5, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %entry
  %"$consume_104" = sub i64 %"$gasrem_100", 5
  store i64 %"$consume_104", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !27
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 8, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_103"
  %"$consume_109" = sub i64 %"$gasrem_105", 8
  store i64 %"$consume_109", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !27
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 196, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 196
  store i64 %"$consume_114", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !27
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 20, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 20
  store i64 %"$consume_119", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !27
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 12, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 12
  store i64 %"$consume_124", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !27
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 2, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 2
  store i64 %"$consume_129", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !27
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !28 {
entry:
  %"$expr_9" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$expr_9", metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %entry
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %ho = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, align 8
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_10_env_55"*, { %Int32 (i8*, %Int32)*, i8* })* @"$fundef_10" to { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho, align 8, !dbg !31
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_138"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %inc = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_146"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_14_env_53"*, %Int32)* @"$fundef_14" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %inc, align 8, !dbg !32
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_151"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %hundred = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %hundred, metadata !33, metadata !DIExpression()), !dbg !34
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  store %Int32 { i32 100 }, %Int32* %hundred, align 4, !dbg !35
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %"$ho_7" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$ho_171" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho, align 8
  %"$ho_fptr_172" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_171", 0
  %"$ho_envptr_173" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_171", 1
  %"$inc_174" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %inc, align 8
  %"$ho_call_175" = call { %Int32 (i8*, %Int32)*, i8* } %"$ho_fptr_172"(i8* %"$ho_envptr_173", { %Int32 (i8*, %Int32)*, i8* } %"$inc_174"), !dbg !36
  store { %Int32 (i8*, %Int32)*, i8* } %"$ho_call_175", { %Int32 (i8*, %Int32)*, i8* }* %"$ho_7", align 8, !dbg !36
  %"$ho_8" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$ho_8", metadata !37, metadata !DIExpression()), !dbg !36
  %"$$ho_7_176" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$ho_7", align 8
  %"$$ho_7_fptr_177" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_7_176", 0
  %"$$ho_7_envptr_178" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_7_176", 1
  %"$hundred_179" = load %Int32, %Int32* %hundred, align 4
  %"$$ho_7_call_180" = call %Int32 %"$$ho_7_fptr_177"(i8* %"$$ho_7_envptr_178", %Int32 %"$hundred_179"), !dbg !36
  store %Int32 %"$$ho_7_call_180", %Int32* %"$ho_8", align 4, !dbg !36
  %"$$ho_8_181" = load %Int32, %Int32* %"$ho_8", align 4
  store %Int32 %"$$ho_8_181", %Int32* %"$expr_9", align 4, !dbg !36
  %"$$expr_9_182" = load %Int32, %Int32* %"$expr_9", align 4
  ret %Int32 %"$$expr_9_182"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_183" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_184" = alloca %Int32, align 8
  %"$memvoidcast_185" = bitcast %Int32* %"$pval_184" to i8*
  store %Int32 %"$exprval_183", %Int32* %"$pval_184", align 4
  %"$execptr_load_186" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_186", %_TyDescrTy_Typ* @"$TyDescr_Int32_18", i8* %"$memvoidcast_185")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "simple_ho.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !2, file: !2, line: 9, type: !4, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "a", scope: !3, file: !2, line: 8, type: !9)
!9 = !DIBasicType(name: "Int32", size: 4)
!10 = !DILocation(line: 8, column: 8, scope: !3)
!11 = !DILocalVariable(name: "$retval_15", scope: !3, file: !2, line: 9, type: !9)
!12 = !DILocation(line: 9, column: 5, scope: !3)
!13 = !DILocalVariable(name: "b", scope: !3, file: !2, line: 9, type: !9)
!14 = !DILocation(line: 9, column: 9, scope: !3)
!15 = !DILocation(line: 9, column: 13, scope: !3)
!16 = !DILocation(line: 10, column: 5, scope: !3)
!17 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!18 = !DILocalVariable(name: "i", scope: !17, file: !2, line: 3, type: !9)
!19 = !DILocation(line: 3, column: 8, scope: !17)
!20 = !DILocalVariable(name: "$retval_13", scope: !17, file: !2, line: 4, type: !9)
!21 = !DILocation(line: 4, column: 5, scope: !17)
!22 = !DILocalVariable(name: "$h_6", scope: !17, file: !2, line: 4, type: !9)
!23 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!24 = !DILocation(line: 4, column: 5, scope: !23)
!25 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !26, file: !26, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!26 = !DIFile(filename: ".", directory: ".")
!27 = !DILocation(line: 0, scope: !25)
!28 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!29 = !DILocalVariable(name: "$expr_9", scope: !28, file: !2, line: 2, type: !9)
!30 = !DILocation(line: 2, column: 3, scope: !28)
!31 = !DILocation(line: 3, column: 3, scope: !28)
!32 = !DILocation(line: 9, column: 5, scope: !28)
!33 = !DILocalVariable(name: "hundred", scope: !28, file: !2, line: 13, type: !9)
!34 = !DILocation(line: 13, column: 5, scope: !28)
!35 = !DILocation(line: 13, column: 15, scope: !28)
!36 = !DILocation(line: 14, column: 1, scope: !28)
!37 = !DILocalVariable(name: "$ho_8", scope: !28, file: !2, line: 14, type: !9)
