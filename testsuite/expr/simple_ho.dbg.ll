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
%"$ParamDescr_185" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_186" = type { %ParamDescrString, i32, %"$ParamDescr_185"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_185"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_186"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_14"(%"$$fundef_14_env_53"* %0, %Int32 %1) !dbg !3 {
entry:
  %"$retval_15" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$retval_15", metadata !8, metadata !DIExpression()), !dbg !10
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 1, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %entry
  %"$consume_84" = sub i64 %"$gasrem_80", 1
  store i64 %"$consume_84", i64* @_gasrem, align 8
  %b = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %b, metadata !11, metadata !DIExpression()), !dbg !12
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %"$have_gas_83"
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %"$have_gas_83"
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %b, align 4, !dbg !13
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 4, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 4
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %"$b_95" = load %Int32, %Int32* %b, align 4
  %"$add_call_96" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %"$b_95"), !dbg !14
  store %Int32 %"$add_call_96", %Int32* %"$retval_15", align 4, !dbg !14
  %"$$retval_15_97" = load %Int32, %Int32* %"$retval_15", align 4
  ret %Int32 %"$$retval_15_97"
}

define internal %Int32 @"$fundef_12"(%"$$fundef_12_env_54"* %0, %Int32 %1) !dbg !15 {
entry:
  %"$$fundef_12_env_h_67" = getelementptr inbounds %"$$fundef_12_env_54", %"$$fundef_12_env_54"* %0, i32 0, i32 0
  %"$h_envload_68" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$$fundef_12_env_h_67", align 8
  %h = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  store { %Int32 (i8*, %Int32)*, i8* } %"$h_envload_68", { %Int32 (i8*, %Int32)*, i8* }* %h, align 8
  %"$retval_13" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$retval_13", metadata !16, metadata !DIExpression()), !dbg !17
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
  call void @llvm.dbg.declare(metadata %Int32* %"$h_6", metadata !18, metadata !DIExpression()), !dbg !17
  %"$h_74" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %h, align 8
  %"$h_fptr_75" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_74", 0
  %"$h_envptr_76" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$h_74", 1
  %"$h_call_77" = call %Int32 %"$h_fptr_75"(i8* %"$h_envptr_76", %Int32 %1), !dbg !17
  store %Int32 %"$h_call_77", %Int32* %"$h_6", align 4, !dbg !17
  %"$$h_6_78" = load %Int32, %Int32* %"$h_6", align 4
  store %Int32 %"$$h_6_78", %Int32* %"$retval_13", align 4, !dbg !17
  %"$$retval_13_79" = load %Int32, %Int32* %"$retval_13", align 4
  ret %Int32 %"$$retval_13_79"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_10"(%"$$fundef_10_env_55"* %0, { %Int32 (i8*, %Int32)*, i8* } %1) !dbg !19 {
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
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_12_cloval_64", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_11", align 8, !dbg !20
  %"$$retval_11_66" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_11", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_11_66"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !21 {
entry:
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 5, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %entry
  %"$consume_102" = sub i64 %"$gasrem_98", 5
  store i64 %"$consume_102", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !23
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 8, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 8
  store i64 %"$consume_107", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !23
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 196, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_106"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_106"
  %"$consume_112" = sub i64 %"$gasrem_108", 196
  store i64 %"$consume_112", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !23
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 20, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 20
  store i64 %"$consume_117", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !23
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 12, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 12
  store i64 %"$consume_122", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !23
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 2, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 2
  store i64 %"$consume_127", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !23
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !24 {
entry:
  %"$expr_9" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$expr_9", metadata !25, metadata !DIExpression()), !dbg !26
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %entry
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %ho = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, align 8
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_10_env_55"*, { %Int32 (i8*, %Int32)*, i8* })* @"$fundef_10" to { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho, align 8, !dbg !27
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_136"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %inc = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_14_env_53"*, %Int32)* @"$fundef_14" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %inc, align 8, !dbg !28
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_149"
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %hundred = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %hundred, metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_157"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  store %Int32 { i32 100 }, %Int32* %hundred, align 4, !dbg !31
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %"$ho_7" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$ho_169" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* }* %ho, align 8
  %"$ho_fptr_170" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_169", 0
  %"$ho_envptr_171" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, { %Int32 (i8*, %Int32)*, i8* })*, i8* } %"$ho_169", 1
  %"$inc_172" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %inc, align 8
  %"$ho_call_173" = call { %Int32 (i8*, %Int32)*, i8* } %"$ho_fptr_170"(i8* %"$ho_envptr_171", { %Int32 (i8*, %Int32)*, i8* } %"$inc_172"), !dbg !32
  store { %Int32 (i8*, %Int32)*, i8* } %"$ho_call_173", { %Int32 (i8*, %Int32)*, i8* }* %"$ho_7", align 8, !dbg !32
  %"$ho_8" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$ho_8", metadata !33, metadata !DIExpression()), !dbg !32
  %"$$ho_7_174" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$ho_7", align 8
  %"$$ho_7_fptr_175" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_7_174", 0
  %"$$ho_7_envptr_176" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$ho_7_174", 1
  %"$hundred_177" = load %Int32, %Int32* %hundred, align 4
  %"$$ho_7_call_178" = call %Int32 %"$$ho_7_fptr_175"(i8* %"$$ho_7_envptr_176", %Int32 %"$hundred_177"), !dbg !32
  store %Int32 %"$$ho_7_call_178", %Int32* %"$ho_8", align 4, !dbg !32
  %"$$ho_8_179" = load %Int32, %Int32* %"$ho_8", align 4
  store %Int32 %"$$ho_8_179", %Int32* %"$expr_9", align 4, !dbg !32
  %"$$expr_9_180" = load %Int32, %Int32* %"$expr_9", align 4
  ret %Int32 %"$$expr_9_180"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_181" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_182" = alloca %Int32, align 8
  %"$memvoidcast_183" = bitcast %Int32* %"$pval_182" to i8*
  store %Int32 %"$exprval_181", %Int32* %"$pval_182", align 4
  %"$execptr_load_184" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_184", %_TyDescrTy_Typ* @"$TyDescr_Int32_18", i8* %"$memvoidcast_183")
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
!8 = !DILocalVariable(name: "$retval_15", scope: !3, file: !2, line: 9, type: !9)
!9 = !DIBasicType(name: "Int32", size: 4)
!10 = !DILocation(line: 9, column: 5, scope: !3)
!11 = !DILocalVariable(name: "b", scope: !3, file: !2, line: 9, type: !9)
!12 = !DILocation(line: 9, column: 9, scope: !3)
!13 = !DILocation(line: 9, column: 13, scope: !3)
!14 = !DILocation(line: 10, column: 5, scope: !3)
!15 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !2, file: !2, line: 4, type: !4, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!16 = !DILocalVariable(name: "$retval_13", scope: !15, file: !2, line: 4, type: !9)
!17 = !DILocation(line: 4, column: 5, scope: !15)
!18 = !DILocalVariable(name: "$h_6", scope: !15, file: !2, line: 4, type: !9)
!19 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!20 = !DILocation(line: 4, column: 5, scope: !19)
!21 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !22, file: !22, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!22 = !DIFile(filename: ".", directory: ".")
!23 = !DILocation(line: 0, scope: !21)
!24 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!25 = !DILocalVariable(name: "$expr_9", scope: !24, file: !2, line: 2, type: !9)
!26 = !DILocation(line: 2, column: 3, scope: !24)
!27 = !DILocation(line: 3, column: 3, scope: !24)
!28 = !DILocation(line: 9, column: 5, scope: !24)
!29 = !DILocalVariable(name: "hundred", scope: !24, file: !2, line: 13, type: !9)
!30 = !DILocation(line: 13, column: 5, scope: !24)
!31 = !DILocation(line: 13, column: 15, scope: !24)
!32 = !DILocation(line: 14, column: 1, scope: !24)
!33 = !DILocalVariable(name: "$ho_8", scope: !24, file: !2, line: 14, type: !9)
