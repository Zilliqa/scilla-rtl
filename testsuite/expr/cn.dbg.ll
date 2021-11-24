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

%"$TyDescrTy_PrimTyp_24" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_307" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_308" = type { %ParamDescrString, i32, %"$ParamDescr_307"* }
%Uint32 = type { i32 }
%"$$fundef_22_env_59" = type {}
%"$$fundef_20_env_60" = type { { i8*, i8* }* }
%"$$fundef_18_env_61" = type { { i8*, i8* }* }
%"$$fundef_16_env_62" = type {}
%"$$fundef_14_env_63" = type {}
%"$$fundef_12_env_64" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_25" = global %"$TyDescrTy_PrimTyp_24" zeroinitializer
@"$TyDescr_Int32_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int32_Prim_25" to i8*) }
@"$TyDescr_Uint32_Prim_27" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 0 }
@"$TyDescr_Uint32_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint32_Prim_27" to i8*) }
@"$TyDescr_Int64_Prim_29" = global %"$TyDescrTy_PrimTyp_24" { i32 0, i32 1 }
@"$TyDescr_Int64_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int64_Prim_29" to i8*) }
@"$TyDescr_Uint64_Prim_31" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 1 }
@"$TyDescr_Uint64_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint64_Prim_31" to i8*) }
@"$TyDescr_Int128_Prim_33" = global %"$TyDescrTy_PrimTyp_24" { i32 0, i32 2 }
@"$TyDescr_Int128_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int128_Prim_33" to i8*) }
@"$TyDescr_Uint128_Prim_35" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 2 }
@"$TyDescr_Uint128_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint128_Prim_35" to i8*) }
@"$TyDescr_Int256_Prim_37" = global %"$TyDescrTy_PrimTyp_24" { i32 0, i32 3 }
@"$TyDescr_Int256_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int256_Prim_37" to i8*) }
@"$TyDescr_Uint256_Prim_39" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 3 }
@"$TyDescr_Uint256_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint256_Prim_39" to i8*) }
@"$TyDescr_String_Prim_41" = global %"$TyDescrTy_PrimTyp_24" { i32 2, i32 0 }
@"$TyDescr_String_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_String_Prim_41" to i8*) }
@"$TyDescr_Bnum_Prim_43" = global %"$TyDescrTy_PrimTyp_24" { i32 3, i32 0 }
@"$TyDescr_Bnum_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Bnum_Prim_43" to i8*) }
@"$TyDescr_Message_Prim_45" = global %"$TyDescrTy_PrimTyp_24" { i32 4, i32 0 }
@"$TyDescr_Message_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Message_Prim_45" to i8*) }
@"$TyDescr_Event_Prim_47" = global %"$TyDescrTy_PrimTyp_24" { i32 5, i32 0 }
@"$TyDescr_Event_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Event_Prim_47" to i8*) }
@"$TyDescr_Exception_Prim_49" = global %"$TyDescrTy_PrimTyp_24" { i32 6, i32 0 }
@"$TyDescr_Exception_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Exception_Prim_49" to i8*) }
@"$TyDescr_Bystr_Prim_51" = global %"$TyDescrTy_PrimTyp_24" { i32 7, i32 0 }
@"$TyDescr_Bystr_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Bystr_Prim_51" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_48", %_TyDescrTy_Typ* @"$TyDescr_Int64_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_40", %_TyDescrTy_Typ* @"$TyDescr_Uint32_28", %_TyDescrTy_Typ* @"$TyDescr_Uint64_32", %_TyDescrTy_Typ* @"$TyDescr_Bnum_44", %_TyDescrTy_Typ* @"$TyDescr_Uint128_36", %_TyDescrTy_Typ* @"$TyDescr_Exception_50", %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ* @"$TyDescr_Int256_38", %_TyDescrTy_Typ* @"$TyDescr_Int128_34", %_TyDescrTy_Typ* @"$TyDescr_Bystr_52", %_TyDescrTy_Typ* @"$TyDescr_Message_46", %_TyDescrTy_Typ* @"$TyDescr_Int32_26"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_307"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_308"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_22"(%"$$fundef_22_env_59"* %0, { i8*, i8* }* %1) !dbg !4 {
entry:
  %"$retval_23" = alloca %Uint32, align 8
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %entry
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_152"
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !8
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_157"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %c32 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %"$c_169" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_170" = bitcast { i8*, i8* }* %"$c_169" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$c_171" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$c_170", align 8
  %"$c_fptr_172" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_171", 0
  %"$c_envptr_173" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_171", 1
  %"$c_call_174" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c_fptr_172"(i8* %"$c_envptr_173"), !dbg !9
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c_call_174", { %Uint32 (i8*, %Uint32)*, i8* }* %c32, align 8, !dbg !10
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_167"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %"$c32_7" = alloca %Uint32, align 8
  %"$c32_180" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %c32, align 8
  %"$c32_fptr_181" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_180", 0
  %"$c32_envptr_182" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_180", 1
  %"$zero_183" = load %Uint32, %Uint32* %zero, align 4
  %"$c32_call_184" = call %Uint32 %"$c32_fptr_181"(i8* %"$c32_envptr_182", %Uint32 %"$zero_183"), !dbg !11
  store %Uint32 %"$c32_call_184", %Uint32* %"$c32_7", align 4, !dbg !11
  %"$$c32_7_185" = load %Uint32, %Uint32* %"$c32_7", align 4
  store %Uint32 %"$$c32_7_185", %Uint32* %"$retval_23", align 4, !dbg !11
  %"$$retval_23_186" = load %Uint32, %Uint32* %"$retval_23", align 4
  ret %Uint32 %"$$retval_23_186"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_60"* %0, %Uint32 %1) !dbg !12 {
entry:
  %"$$fundef_20_env_n_108" = getelementptr inbounds %"$$fundef_20_env_60", %"$$fundef_20_env_60"* %0, i32 0, i32 0
  %"$n_envload_109" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_20_env_n_108", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_109", { i8*, i8* }** %n, align 8
  %"$retval_21" = alloca %Uint32, align 8
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %entry
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %nX = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %"$n_120" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_121" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_120", i32 0
  %"$n_122" = bitcast { i8*, i8* }* %"$n_121" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$n_123" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$n_122", align 8
  %"$n_fptr_124" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_123", 0
  %"$n_envptr_125" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_123", 1
  %"$n_call_126" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_124"(i8* %"$n_envptr_125"), !dbg !13
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_126", { %Uint32 (i8*, %Uint32)*, i8* }* %nX, align 8, !dbg !14
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_118"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %nXz = alloca %Uint32, align 8
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %"$nX_6" = alloca %Uint32, align 8
  %"$nX_137" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %nX, align 8
  %"$nX_fptr_138" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_137", 0
  %"$nX_envptr_139" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_137", 1
  %"$nX_call_140" = call %Uint32 %"$nX_fptr_138"(i8* %"$nX_envptr_139", %Uint32 %1), !dbg !15
  store %Uint32 %"$nX_call_140", %Uint32* %"$nX_6", align 4, !dbg !15
  %"$$nX_6_141" = load %Uint32, %Uint32* %"$nX_6", align 4
  store %Uint32 %"$$nX_6_141", %Uint32* %nXz, align 4, !dbg !15
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_135"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %"$nXz_147" = load %Uint32, %Uint32* %nXz, align 4
  store %Uint32 %"$nXz_147", %Uint32* %"$retval_21", align 4, !dbg !16
  %"$$retval_21_148" = load %Uint32, %Uint32* %"$retval_21", align 4
  ret %Uint32 %"$$retval_21_148"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_18"(%"$$fundef_18_env_61"* %0) !dbg !17 {
entry:
  %"$$fundef_18_env_n_94" = getelementptr inbounds %"$$fundef_18_env_61", %"$$fundef_18_env_61"* %0, i32 0, i32 0
  %"$n_envload_95" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_18_env_n_94", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_95", { i8*, i8* }** %n, align 8
  %"$retval_19" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %entry
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %"$$fundef_20_envp_101_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_20_envp_101_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_101_load", i64 8)
  %"$$fundef_20_envp_101" = bitcast i8* %"$$fundef_20_envp_101_salloc" to %"$$fundef_20_env_60"*
  %"$$fundef_20_env_voidp_103" = bitcast %"$$fundef_20_env_60"* %"$$fundef_20_envp_101" to i8*
  %"$$fundef_20_cloval_104" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_20_env_60"*, %Uint32)* @"$fundef_20" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_20_env_voidp_103", 1
  %"$$fundef_20_env_n_105" = getelementptr inbounds %"$$fundef_20_env_60", %"$$fundef_20_env_60"* %"$$fundef_20_envp_101", i32 0, i32 0
  %"$n_106" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_106", { i8*, i8* }** %"$$fundef_20_env_n_105", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_20_cloval_104", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_19", align 8, !dbg !18
  %"$$retval_19_107" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_19", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_19_107"
}

define internal { i8*, i8* }* @"$fundef_16"(%"$$fundef_16_env_62"* %0, { i8*, i8* }* %1) !dbg !19 {
entry:
  %"$retval_17" = alloca { i8*, i8* }*, align 8
  %"$gasrem_80" = load i64, i64* @_gasrem, align 8
  %"$gascmp_81" = icmp ugt i64 1, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %entry
  %"$consume_84" = sub i64 %"$gasrem_80", 1
  store i64 %"$consume_84", i64* @_gasrem, align 8
  %"$$fundef_18_envp_85_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_18_envp_85_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_85_load", i64 8)
  %"$$fundef_18_envp_85" = bitcast i8* %"$$fundef_18_envp_85_salloc" to %"$$fundef_18_env_61"*
  %"$$fundef_18_env_voidp_87" = bitcast %"$$fundef_18_env_61"* %"$$fundef_18_envp_85" to i8*
  %"$$fundef_18_cloval_88" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_18_env_61"*)* @"$fundef_18" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_18_env_voidp_87", 1
  %"$$fundef_18_env_n_89" = getelementptr inbounds %"$$fundef_18_env_61", %"$$fundef_18_env_61"* %"$$fundef_18_envp_85", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_18_env_n_89", align 8
  %"$dyndisp_table_90_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_90_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_90_salloc_load", i64 16)
  %"$dyndisp_table_90_salloc" = bitcast i8* %"$dyndisp_table_90_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_90" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_90_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_91" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_90", i32 0
  %"$dyndisp_pcast_92" = bitcast { i8*, i8* }* %"$dyndisp_gep_91" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_18_cloval_88", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_92", align 8
  store { i8*, i8* }* %"$dyndisp_table_90", { i8*, i8* }** %"$retval_17", align 8, !dbg !20
  %"$$retval_17_93" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_17", align 8
  ret { i8*, i8* }* %"$$retval_17_93"
}

define internal %Uint32 @"$fundef_14"(%"$$fundef_14_env_63"* %0, %Uint32 %1) !dbg !21 {
entry:
  %"$retval_15" = alloca %Uint32, align 8
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 1, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %entry
  %"$consume_78" = sub i64 %"$gasrem_74", 1
  store i64 %"$consume_78", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_15", align 4, !dbg !22
  %"$$retval_15_79" = load %Uint32, %Uint32* %"$retval_15", align 4
  ret %Uint32 %"$$retval_15_79"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_12"(%"$$fundef_12_env_64"* %0) !dbg !23 {
entry:
  %"$retval_13" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 1, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %entry
  %"$consume_69" = sub i64 %"$gasrem_65", 1
  store i64 %"$consume_69", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_14_env_63"*, %Uint32)* @"$fundef_14" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13", align 8, !dbg !24
  %"$$retval_13_73" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_13_73"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !25 {
entry:
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 5, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %entry
  %"$consume_191" = sub i64 %"$gasrem_187", 5
  store i64 %"$consume_191", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !27
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 8, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_190"
  %"$consume_196" = sub i64 %"$gasrem_192", 8
  store i64 %"$consume_196", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !27
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 196, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_195"
  %"$consume_201" = sub i64 %"$gasrem_197", 196
  store i64 %"$consume_201", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !27
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 20, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 20
  store i64 %"$consume_206", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !27
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 12, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 12
  store i64 %"$consume_211", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !27
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 2, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_210"
  %"$consume_216" = sub i64 %"$gasrem_212", 2
  store i64 %"$consume_216", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !27
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !28 {
entry:
  %"$expr_11" = alloca %Uint32, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %entry
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %c1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_220"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %"$dyndisp_table_230_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_230_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_230_salloc_load", i64 16)
  %"$dyndisp_table_230_salloc" = bitcast i8* %"$dyndisp_table_230_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_230" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_230_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_231" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_230", i32 0
  %"$dyndisp_pcast_232" = bitcast { i8*, i8* }* %"$dyndisp_gep_231" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_12_env_64"*)* @"$fundef_12" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_232", align 8
  store { i8*, i8* }* %"$dyndisp_table_230", { i8*, i8* }** %c1, align 8, !dbg !29
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_225"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %app_arg = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_16_env_62"*, { i8*, i8* }*)* @"$fundef_16" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8, !dbg !30
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_241"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %start = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_22_env_59"*, { i8*, i8* }*)* @"$fundef_22" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start, align 8, !dbg !31
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_254"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %c2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$app_arg_8" = alloca { i8*, i8* }*, align 8
  %"$app_arg_269" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8
  %"$app_arg_fptr_270" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_269", 0
  %"$app_arg_envptr_271" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_269", 1
  %"$c1_272" = load { i8*, i8* }*, { i8*, i8* }** %c1, align 8
  %"$app_arg_call_273" = call { i8*, i8* }* %"$app_arg_fptr_270"(i8* %"$app_arg_envptr_271", { i8*, i8* }* %"$c1_272"), !dbg !32
  store { i8*, i8* }* %"$app_arg_call_273", { i8*, i8* }** %"$app_arg_8", align 8, !dbg !32
  %"$$app_arg_8_274" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_8", align 8
  store { i8*, i8* }* %"$$app_arg_8_274", { i8*, i8* }** %c2, align 8, !dbg !32
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_267"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %c3 = alloca { i8*, i8* }*, align 8
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_278"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %"$app_arg_9" = alloca { i8*, i8* }*, align 8
  %"$app_arg_285" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8
  %"$app_arg_fptr_286" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_285", 0
  %"$app_arg_envptr_287" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_285", 1
  %"$c2_288" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$app_arg_call_289" = call { i8*, i8* }* %"$app_arg_fptr_286"(i8* %"$app_arg_envptr_287", { i8*, i8* }* %"$c2_288"), !dbg !33
  store { i8*, i8* }* %"$app_arg_call_289", { i8*, i8* }** %"$app_arg_9", align 8, !dbg !33
  %"$$app_arg_9_290" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_9", align 8
  store { i8*, i8* }* %"$$app_arg_9_290", { i8*, i8* }** %c3, align 8, !dbg !33
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_283"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$start_10" = alloca %Uint32, align 8
  %"$start_296" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start, align 8
  %"$start_fptr_297" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_296", 0
  %"$start_envptr_298" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_296", 1
  %"$c3_299" = load { i8*, i8* }*, { i8*, i8* }** %c3, align 8
  %"$start_call_300" = call %Uint32 %"$start_fptr_297"(i8* %"$start_envptr_298", { i8*, i8* }* %"$c3_299"), !dbg !34
  store %Uint32 %"$start_call_300", %Uint32* %"$start_10", align 4, !dbg !34
  %"$$start_10_301" = load %Uint32, %Uint32* %"$start_10", align 4
  store %Uint32 %"$$start_10_301", %Uint32* %"$expr_11", align 4, !dbg !34
  %"$$expr_11_302" = load %Uint32, %Uint32* %"$expr_11", align 4
  ret %Uint32 %"$$expr_11_302"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_303" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_304" = alloca %Uint32, align 8
  %"$memvoidcast_305" = bitcast %Uint32* %"$pval_304" to i8*
  store %Uint32 %"$exprval_303", %Uint32* %"$pval_304", align 4
  %"$execptr_load_306" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_306", %_TyDescrTy_Typ* @"$TyDescr_Uint32_28", i8* %"$memvoidcast_305")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "cn.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !2, file: !2, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 15, column: 16, scope: !4)
!9 = !DILocation(line: 16, column: 16, scope: !4)
!10 = !DILocation(line: 16, column: 15, scope: !4)
!11 = !DILocation(line: 17, column: 5, scope: !4)
!12 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !2, file: !2, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!13 = !DILocation(line: 8, column: 13, scope: !12)
!14 = !DILocation(line: 8, column: 12, scope: !12)
!15 = !DILocation(line: 9, column: 13, scope: !12)
!16 = !DILocation(line: 10, column: 3, scope: !12)
!17 = distinct !DISubprogram(name: "$fundef_18", linkageName: "$fundef_18", scope: !2, file: !2, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 8, column: 3, scope: !17)
!19 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !2, file: !2, line: 6, type: !5, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 6, column: 3, scope: !19)
!21 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 2, column: 37, scope: !21)
!23 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 2, column: 37, scope: !23)
!25 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !26, file: !26, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DIFile(filename: ".", directory: ".")
!27 = !DILocation(line: 0, scope: !25)
!28 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!29 = !DILocation(line: 2, column: 10, scope: !28)
!30 = !DILocation(line: 6, column: 3, scope: !28)
!31 = !DILocation(line: 15, column: 5, scope: !28)
!32 = !DILocation(line: 20, column: 10, scope: !28)
!33 = !DILocation(line: 21, column: 10, scope: !28)
!34 = !DILocation(line: 22, column: 1, scope: !28)
