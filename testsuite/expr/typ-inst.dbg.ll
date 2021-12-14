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
%"$ParamDescr_153" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_154" = type { %ParamDescrString, i32, %"$ParamDescr_153"* }
%"$$fundef_10_env_47" = type {}
%Uint32 = type { i32 }
%"$$fundef_8_env_48" = type {}

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
@"$TyDescr_Bystr_Prim_39" = global %"$TyDescrTy_PrimTyp_12" { i32 7, i32 0 }
@"$TyDescr_Bystr_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_12"* @"$TyDescr_Bystr_Prim_39" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_36", %_TyDescrTy_Typ* @"$TyDescr_Int64_18", %_TyDescrTy_Typ* @"$TyDescr_Uint256_28", %_TyDescrTy_Typ* @"$TyDescr_Uint32_16", %_TyDescrTy_Typ* @"$TyDescr_Uint64_20", %_TyDescrTy_Typ* @"$TyDescr_Bnum_32", %_TyDescrTy_Typ* @"$TyDescr_Uint128_24", %_TyDescrTy_Typ* @"$TyDescr_Exception_38", %_TyDescrTy_Typ* @"$TyDescr_String_30", %_TyDescrTy_Typ* @"$TyDescr_Int256_26", %_TyDescrTy_Typ* @"$TyDescr_Int128_22", %_TyDescrTy_Typ* @"$TyDescr_Bystr_40", %_TyDescrTy_Typ* @"$TyDescr_Message_34", %_TyDescrTy_Typ* @"$TyDescr_Int32_14"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_153"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_154"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_10"(%"$$fundef_10_env_47"* %0, %Uint32 %1) !dbg !4 {
entry:
  %"$retval_11" = alloca %Uint32, align 8
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %entry
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_11", align 4, !dbg !8
  %"$$retval_11_63" = load %Uint32, %Uint32* %"$retval_11", align 4
  ret %Uint32 %"$$retval_11_63"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_8"(%"$$fundef_8_env_48"* %0) !dbg !9 {
entry:
  %"$retval_9" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_49" = load i64, i64* @_gasrem, align 8
  %"$gascmp_50" = icmp ugt i64 1, %"$gasrem_49"
  br i1 %"$gascmp_50", label %"$out_of_gas_51", label %"$have_gas_52"

"$out_of_gas_51":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_52"

"$have_gas_52":                                   ; preds = %"$out_of_gas_51", %entry
  %"$consume_53" = sub i64 %"$gasrem_49", 1
  store i64 %"$consume_53", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_10_env_47"*, %Uint32)* @"$fundef_10" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_9", align 8, !dbg !10
  %"$$retval_9_57" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_9", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_9_57"
}

declare void @_out_of_gas()

define void @_init_libs() !dbg !11 {
entry:
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 5, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %entry
  %"$consume_68" = sub i64 %"$gasrem_64", 5
  store i64 %"$consume_68", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !13
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 8, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %"$have_gas_67"
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %"$have_gas_67"
  %"$consume_73" = sub i64 %"$gasrem_69", 8
  store i64 %"$consume_73", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !13
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 196, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %"$have_gas_72"
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %"$have_gas_72"
  %"$consume_78" = sub i64 %"$gasrem_74", 196
  store i64 %"$consume_78", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !13
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 20, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$have_gas_77"
  %"$consume_83" = sub i64 %"$gasrem_79", 20
  store i64 %"$consume_83", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !13
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 12, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_82"
  %"$consume_88" = sub i64 %"$gasrem_84", 12
  store i64 %"$consume_88", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !13
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 2, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %"$have_gas_87"
  %"$consume_93" = sub i64 %"$gasrem_89", 2
  store i64 %"$consume_93", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !13
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !14 {
entry:
  %"$expr_7" = alloca %Uint32, align 8
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %entry
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  %"$dyndisp_table_107_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_107_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_107_salloc_load", i64 16)
  %"$dyndisp_table_107_salloc" = bitcast i8* %"$dyndisp_table_107_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_107" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_107_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_108" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_107", i32 0
  %"$dyndisp_pcast_109" = bitcast { i8*, i8* }* %"$dyndisp_gep_108" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_8_env_48"*)* @"$fundef_8" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_109", align 8
  store { i8*, i8* }* %"$dyndisp_table_107", { i8*, i8* }** %tf, align 8, !dbg !15
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_102"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %t = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %"$tf_120" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_121" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_120", i32 0
  %"$tf_122" = bitcast { i8*, i8* }* %"$tf_121" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_123" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_122", align 8
  %"$tf_fptr_124" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_123", 0
  %"$tf_envptr_125" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_123", 1
  %"$tf_call_126" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$tf_fptr_124"(i8* %"$tf_envptr_125"), !dbg !16
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$tf_call_126", { %Uint32 (i8*, %Uint32)*, i8* }* %t, align 8, !dbg !17
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_118"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !18
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %"$t_6" = alloca %Uint32, align 8
  %"$t_142" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %t, align 8
  %"$t_fptr_143" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$t_142", 0
  %"$t_envptr_144" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$t_142", 1
  %"$one_145" = load %Uint32, %Uint32* %one, align 4
  %"$t_call_146" = call %Uint32 %"$t_fptr_143"(i8* %"$t_envptr_144", %Uint32 %"$one_145"), !dbg !19
  store %Uint32 %"$t_call_146", %Uint32* %"$t_6", align 4, !dbg !19
  %"$$t_6_147" = load %Uint32, %Uint32* %"$t_6", align 4
  store %Uint32 %"$$t_6_147", %Uint32* %"$expr_7", align 4, !dbg !19
  %"$$expr_7_148" = load %Uint32, %Uint32* %"$expr_7", align 4
  ret %Uint32 %"$$expr_7_148"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_149" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_150" = alloca %Uint32, align 8
  %"$memvoidcast_151" = bitcast %Uint32* %"$pval_150" to i8*
  store %Uint32 %"$exprval_149", %Uint32* %"$pval_150", align 4
  %"$execptr_load_152" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_152", %_TyDescrTy_Typ* @"$TyDescr_Uint32_16", i8* %"$memvoidcast_151")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "typ-inst.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 4, column: 5, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 4, column: 5, scope: !9)
!11 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !12, file: !12, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DIFile(filename: ".", directory: ".")
!13 = !DILocation(line: 0, scope: !11)
!14 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 2, column: 3, scope: !14)
!16 = !DILocation(line: 7, column: 10, scope: !14)
!17 = !DILocation(line: 7, column: 9, scope: !14)
!18 = !DILocation(line: 8, column: 11, scope: !14)
!19 = !DILocation(line: 9, column: 1, scope: !14)
