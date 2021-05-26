; 
; let c1 = tfun 'X => fun (z : 'X) => z in
; 
; let app_arg =
; fun (n : forall 'X. 'X -> 'X) =>
; tfun 'X =>
; fun (z : 'X) =>
; let nX = @n 'X in
; let nXz = nX z in
; nXz
; in
; 
; let start =
; fun (c : forall 'X. 'X -> 'X) =>
; let zero = Uint32 0 in
; let c32 = @c Uint32 in
; c32 zero
; in
; 
; let c2 = app_arg c1 in
; let c3 = app_arg c2 in
; start c3
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_18" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$ParamDescr_270" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_271" = type { %ParamDescrString, i32, %"$ParamDescr_270"* }
%Uint32 = type { i32 }
%"$$fundef_16_env_53" = type {}
%"$$fundef_14_env_54" = type { { i8*, i8* }* }
%"$$fundef_12_env_55" = type { { i8*, i8* }* }
%"$$fundef_10_env_56" = type {}
%"$$fundef_8_env_57" = type {}
%"$$fundef_6_env_58" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_19" = global %"$TyDescrTy_PrimTyp_18" zeroinitializer
@"$TyDescr_Int32_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Int32_Prim_19" to i8*) }
@"$TyDescr_Uint32_Prim_21" = global %"$TyDescrTy_PrimTyp_18" { i32 1, i32 0 }
@"$TyDescr_Uint32_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Uint32_Prim_21" to i8*) }
@"$TyDescr_Int64_Prim_23" = global %"$TyDescrTy_PrimTyp_18" { i32 0, i32 1 }
@"$TyDescr_Int64_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Int64_Prim_23" to i8*) }
@"$TyDescr_Uint64_Prim_25" = global %"$TyDescrTy_PrimTyp_18" { i32 1, i32 1 }
@"$TyDescr_Uint64_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Uint64_Prim_25" to i8*) }
@"$TyDescr_Int128_Prim_27" = global %"$TyDescrTy_PrimTyp_18" { i32 0, i32 2 }
@"$TyDescr_Int128_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Int128_Prim_27" to i8*) }
@"$TyDescr_Uint128_Prim_29" = global %"$TyDescrTy_PrimTyp_18" { i32 1, i32 2 }
@"$TyDescr_Uint128_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Uint128_Prim_29" to i8*) }
@"$TyDescr_Int256_Prim_31" = global %"$TyDescrTy_PrimTyp_18" { i32 0, i32 3 }
@"$TyDescr_Int256_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Int256_Prim_31" to i8*) }
@"$TyDescr_Uint256_Prim_33" = global %"$TyDescrTy_PrimTyp_18" { i32 1, i32 3 }
@"$TyDescr_Uint256_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Uint256_Prim_33" to i8*) }
@"$TyDescr_String_Prim_35" = global %"$TyDescrTy_PrimTyp_18" { i32 2, i32 0 }
@"$TyDescr_String_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_String_Prim_35" to i8*) }
@"$TyDescr_Bnum_Prim_37" = global %"$TyDescrTy_PrimTyp_18" { i32 3, i32 0 }
@"$TyDescr_Bnum_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Bnum_Prim_37" to i8*) }
@"$TyDescr_Message_Prim_39" = global %"$TyDescrTy_PrimTyp_18" { i32 4, i32 0 }
@"$TyDescr_Message_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Message_Prim_39" to i8*) }
@"$TyDescr_Event_Prim_41" = global %"$TyDescrTy_PrimTyp_18" { i32 5, i32 0 }
@"$TyDescr_Event_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Event_Prim_41" to i8*) }
@"$TyDescr_Exception_Prim_43" = global %"$TyDescrTy_PrimTyp_18" { i32 6, i32 0 }
@"$TyDescr_Exception_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Exception_Prim_43" to i8*) }
@"$TyDescr_Bystr_Prim_45" = global %"$TyDescrTy_PrimTyp_18" { i32 7, i32 0 }
@"$TyDescr_Bystr_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_18"* @"$TyDescr_Bystr_Prim_45" to i8*) }
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_42", %_TyDescrTy_Typ* @"$TyDescr_Int64_24", %_TyDescrTy_Typ* @"$TyDescr_Uint256_34", %_TyDescrTy_Typ* @"$TyDescr_Uint32_22", %_TyDescrTy_Typ* @"$TyDescr_Uint64_26", %_TyDescrTy_Typ* @"$TyDescr_Bnum_38", %_TyDescrTy_Typ* @"$TyDescr_Uint128_30", %_TyDescrTy_Typ* @"$TyDescr_Exception_44", %_TyDescrTy_Typ* @"$TyDescr_String_36", %_TyDescrTy_Typ* @"$TyDescr_Int256_32", %_TyDescrTy_Typ* @"$TyDescr_Int128_28", %_TyDescrTy_Typ* @"$TyDescr_Bystr_46", %_TyDescrTy_Typ* @"$TyDescr_Message_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_20"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_270"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_271"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_16"(%"$$fundef_16_env_53"* %0, { i8*, i8* }* %1) !dbg !4 {
entry:
  %"$retval_17" = alloca %Uint32, align 8
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %entry
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_146"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !8
  %"$gasrem_153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_154" = icmp ugt i64 1, %"$gasrem_153"
  br i1 %"$gascmp_154", label %"$out_of_gas_155", label %"$have_gas_156"

"$out_of_gas_155":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_156"

"$have_gas_156":                                  ; preds = %"$out_of_gas_155", %"$have_gas_151"
  %"$consume_157" = sub i64 %"$gasrem_153", 1
  store i64 %"$consume_157", i64* @_gasrem, align 8
  %c32 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_156"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_156"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %"$c_163" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_164" = bitcast { i8*, i8* }* %"$c_163" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$c_165" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$c_164", align 8
  %"$c_fptr_166" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_165", 0
  %"$c_envptr_167" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_165", 1
  %"$c_call_168" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c_fptr_166"(i8* %"$c_envptr_167"), !dbg !9
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c_call_168", { %Uint32 (i8*, %Uint32)*, i8* }* %c32, align 8, !dbg !10
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_161"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_161"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %"$c32_1" = alloca %Uint32, align 8
  %"$c32_174" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %c32, align 8
  %"$c32_fptr_175" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_174", 0
  %"$c32_envptr_176" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_174", 1
  %"$zero_177" = load %Uint32, %Uint32* %zero, align 4
  %"$c32_call_178" = call %Uint32 %"$c32_fptr_175"(i8* %"$c32_envptr_176", %Uint32 %"$zero_177"), !dbg !11
  store %Uint32 %"$c32_call_178", %Uint32* %"$c32_1", align 4, !dbg !11
  %"$$c32_1_179" = load %Uint32, %Uint32* %"$c32_1", align 4
  store %Uint32 %"$$c32_1_179", %Uint32* %"$retval_17", align 4, !dbg !11
  %"$$retval_17_180" = load %Uint32, %Uint32* %"$retval_17", align 4
  ret %Uint32 %"$$retval_17_180"
}

define internal %Uint32 @"$fundef_14"(%"$$fundef_14_env_54"* %0, %Uint32 %1) !dbg !12 {
entry:
  %"$$fundef_14_env_n_102" = getelementptr inbounds %"$$fundef_14_env_54", %"$$fundef_14_env_54"* %0, i32 0, i32 0
  %"$n_envload_103" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_14_env_n_102", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_103", { i8*, i8* }** %n, align 8
  %"$retval_15" = alloca %Uint32, align 8
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %entry
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %nX = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_107"
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %"$n_114" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_115" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_114", i32 0
  %"$n_116" = bitcast { i8*, i8* }* %"$n_115" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$n_117" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$n_116", align 8
  %"$n_fptr_118" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_117", 0
  %"$n_envptr_119" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_117", 1
  %"$n_call_120" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_118"(i8* %"$n_envptr_119"), !dbg !13
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_120", { %Uint32 (i8*, %Uint32)*, i8* }* %nX, align 8, !dbg !14
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_112"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %nXz = alloca %Uint32, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %"$nX_0" = alloca %Uint32, align 8
  %"$nX_131" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %nX, align 8
  %"$nX_fptr_132" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_131", 0
  %"$nX_envptr_133" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_131", 1
  %"$nX_call_134" = call %Uint32 %"$nX_fptr_132"(i8* %"$nX_envptr_133", %Uint32 %1), !dbg !15
  store %Uint32 %"$nX_call_134", %Uint32* %"$nX_0", align 4, !dbg !15
  %"$$nX_0_135" = load %Uint32, %Uint32* %"$nX_0", align 4
  store %Uint32 %"$$nX_0_135", %Uint32* %nXz, align 4, !dbg !15
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_129"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %"$nXz_141" = load %Uint32, %Uint32* %nXz, align 4
  store %Uint32 %"$nXz_141", %Uint32* %"$retval_15", align 4, !dbg !16
  %"$$retval_15_142" = load %Uint32, %Uint32* %"$retval_15", align 4
  ret %Uint32 %"$$retval_15_142"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_12"(%"$$fundef_12_env_55"* %0) !dbg !17 {
entry:
  %"$$fundef_12_env_n_88" = getelementptr inbounds %"$$fundef_12_env_55", %"$$fundef_12_env_55"* %0, i32 0, i32 0
  %"$n_envload_89" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_12_env_n_88", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_89", { i8*, i8* }** %n, align 8
  %"$retval_13" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %entry
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  %"$$fundef_14_envp_95_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_14_envp_95_salloc" = call i8* @_salloc(i8* %"$$fundef_14_envp_95_load", i64 8)
  %"$$fundef_14_envp_95" = bitcast i8* %"$$fundef_14_envp_95_salloc" to %"$$fundef_14_env_54"*
  %"$$fundef_14_env_voidp_97" = bitcast %"$$fundef_14_env_54"* %"$$fundef_14_envp_95" to i8*
  %"$$fundef_14_cloval_98" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_14_env_54"*, %Uint32)* @"$fundef_14" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_14_env_voidp_97", 1
  %"$$fundef_14_env_n_99" = getelementptr inbounds %"$$fundef_14_env_54", %"$$fundef_14_env_54"* %"$$fundef_14_envp_95", i32 0, i32 0
  %"$n_100" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_100", { i8*, i8* }** %"$$fundef_14_env_n_99", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_14_cloval_98", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13", align 8, !dbg !18
  %"$$retval_13_101" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_13_101"
}

define internal { i8*, i8* }* @"$fundef_10"(%"$$fundef_10_env_56"* %0, { i8*, i8* }* %1) !dbg !19 {
entry:
  %"$retval_11" = alloca { i8*, i8* }*, align 8
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 1, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %entry
  %"$consume_78" = sub i64 %"$gasrem_74", 1
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %"$$fundef_12_envp_79_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_12_envp_79_salloc" = call i8* @_salloc(i8* %"$$fundef_12_envp_79_load", i64 8)
  %"$$fundef_12_envp_79" = bitcast i8* %"$$fundef_12_envp_79_salloc" to %"$$fundef_12_env_55"*
  %"$$fundef_12_env_voidp_81" = bitcast %"$$fundef_12_env_55"* %"$$fundef_12_envp_79" to i8*
  %"$$fundef_12_cloval_82" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_12_env_55"*)* @"$fundef_12" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_12_env_voidp_81", 1
  %"$$fundef_12_env_n_83" = getelementptr inbounds %"$$fundef_12_env_55", %"$$fundef_12_env_55"* %"$$fundef_12_envp_79", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_12_env_n_83", align 8
  %"$dyndisp_table_84_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_84_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_84_salloc_load", i64 16)
  %"$dyndisp_table_84_salloc" = bitcast i8* %"$dyndisp_table_84_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_84" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_84_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_85" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_84", i32 0
  %"$dyndisp_pcast_86" = bitcast { i8*, i8* }* %"$dyndisp_gep_85" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_12_cloval_82", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_86", align 8
  store { i8*, i8* }* %"$dyndisp_table_84", { i8*, i8* }** %"$retval_11", align 8, !dbg !20
  %"$$retval_11_87" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_11", align 8
  ret { i8*, i8* }* %"$$retval_11_87"
}

define internal %Uint32 @"$fundef_8"(%"$$fundef_8_env_57"* %0, %Uint32 %1) !dbg !21 {
entry:
  %"$retval_9" = alloca %Uint32, align 8
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %entry
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_9", align 4, !dbg !22
  %"$$retval_9_73" = load %Uint32, %Uint32* %"$retval_9", align 4
  ret %Uint32 %"$$retval_9_73"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_6"(%"$$fundef_6_env_58"* %0) !dbg !23 {
entry:
  %"$retval_7" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %entry
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_8_env_57"*, %Uint32)* @"$fundef_8" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_7", align 8, !dbg !24
  %"$$retval_7_67" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_7", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_7_67"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !25 {
entry:
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !27 {
entry:
  %"$expr_5" = alloca %Uint32, align 8
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %entry
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %c1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_184"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$dyndisp_table_194_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_194_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_194_salloc_load", i64 16)
  %"$dyndisp_table_194_salloc" = bitcast i8* %"$dyndisp_table_194_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_194" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_194_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_195" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_194", i32 0
  %"$dyndisp_pcast_196" = bitcast { i8*, i8* }* %"$dyndisp_gep_195" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_6_env_58"*)* @"$fundef_6" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_196", align 8
  store { i8*, i8* }* %"$dyndisp_table_194", { i8*, i8* }** %c1, align 8, !dbg !28
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_189"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %app_arg = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_10_env_56"*, { i8*, i8* }*)* @"$fundef_10" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8, !dbg !29
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_205"
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %start = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_213"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_16_env_53"*, { i8*, i8* }*)* @"$fundef_16" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start, align 8, !dbg !30
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_218"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  %c2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$app_arg_2" = alloca { i8*, i8* }*, align 8
  %"$app_arg_233" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8
  %"$app_arg_fptr_234" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_233", 0
  %"$app_arg_envptr_235" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_233", 1
  %"$c1_236" = load { i8*, i8* }*, { i8*, i8* }** %c1, align 8
  %"$app_arg_call_237" = call { i8*, i8* }* %"$app_arg_fptr_234"(i8* %"$app_arg_envptr_235", { i8*, i8* }* %"$c1_236"), !dbg !31
  store { i8*, i8* }* %"$app_arg_call_237", { i8*, i8* }** %"$app_arg_2", align 8, !dbg !31
  %"$$app_arg_2_238" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_2", align 8
  store { i8*, i8* }* %"$$app_arg_2_238", { i8*, i8* }** %c2, align 8, !dbg !31
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_231"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %c3 = alloca { i8*, i8* }*, align 8
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_242"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %"$app_arg_3" = alloca { i8*, i8* }*, align 8
  %"$app_arg_249" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8
  %"$app_arg_fptr_250" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_249", 0
  %"$app_arg_envptr_251" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_249", 1
  %"$c2_252" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$app_arg_call_253" = call { i8*, i8* }* %"$app_arg_fptr_250"(i8* %"$app_arg_envptr_251", { i8*, i8* }* %"$c2_252"), !dbg !32
  store { i8*, i8* }* %"$app_arg_call_253", { i8*, i8* }** %"$app_arg_3", align 8, !dbg !32
  %"$$app_arg_3_254" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_3", align 8
  store { i8*, i8* }* %"$$app_arg_3_254", { i8*, i8* }** %c3, align 8, !dbg !32
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_247"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %"$start_4" = alloca %Uint32, align 8
  %"$start_260" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start, align 8
  %"$start_fptr_261" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_260", 0
  %"$start_envptr_262" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_260", 1
  %"$c3_263" = load { i8*, i8* }*, { i8*, i8* }** %c3, align 8
  %"$start_call_264" = call %Uint32 %"$start_fptr_261"(i8* %"$start_envptr_262", { i8*, i8* }* %"$c3_263"), !dbg !33
  store %Uint32 %"$start_call_264", %Uint32* %"$start_4", align 4, !dbg !33
  %"$$start_4_265" = load %Uint32, %Uint32* %"$start_4", align 4
  store %Uint32 %"$$start_4_265", %Uint32* %"$expr_5", align 4, !dbg !33
  %"$$expr_5_266" = load %Uint32, %Uint32* %"$expr_5", align 4
  ret %Uint32 %"$$expr_5_266"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_267" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_268" = alloca %Uint32, align 8
  %"$memvoidcast_269" = bitcast %Uint32* %"$pval_268" to i8*
  store %Uint32 %"$exprval_267", %Uint32* %"$pval_268", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_22", i8* %"$memvoidcast_269")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "cn.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !2, file: !2, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 15, column: 16, scope: !4)
!9 = !DILocation(line: 16, column: 16, scope: !4)
!10 = !DILocation(line: 16, column: 15, scope: !4)
!11 = !DILocation(line: 17, column: 5, scope: !4)
!12 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !2, file: !2, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 8, column: 13, scope: !12)
!14 = !DILocation(line: 8, column: 12, scope: !12)
!15 = !DILocation(line: 9, column: 13, scope: !12)
!16 = !DILocation(line: 10, column: 3, scope: !12)
!17 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !2, file: !2, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 8, column: 3, scope: !17)
!19 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 6, column: 3, scope: !19)
!21 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 2, column: 37, scope: !21)
!23 = distinct !DISubprogram(name: "$fundef_6", linkageName: "$fundef_6", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 2, column: 37, scope: !23)
!25 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !26, file: !26, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DIFile(filename: ".", directory: ".")
!27 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 2, column: 10, scope: !27)
!29 = !DILocation(line: 6, column: 3, scope: !27)
!30 = !DILocation(line: 15, column: 5, scope: !27)
!31 = !DILocation(line: 20, column: 10, scope: !27)
!32 = !DILocation(line: 21, column: 10, scope: !27)
!33 = !DILocation(line: 22, column: 1, scope: !27)
