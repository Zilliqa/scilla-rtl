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
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_24" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_309" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_310" = type { %ParamDescrString, i32, %"$ParamDescr_309"* }
%Uint32 = type { i32 }
%"$$fundef_22_env_61" = type {}
%"$$fundef_20_env_62" = type { { i8*, i8* }* }
%"$$fundef_18_env_63" = type { { i8*, i8* }* }
%"$$fundef_16_env_64" = type {}
%"$$fundef_14_env_65" = type {}
%"$$fundef_12_env_66" = type {}

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
@"$TyDescr_ReplicateContr_Prim_51" = global %"$TyDescrTy_PrimTyp_24" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_ReplicateContr_Prim_51" to i8*) }
@"$TyDescr_Bystr_Prim_53" = global %"$TyDescrTy_PrimTyp_24" { i32 7, i32 0 }
@"$TyDescr_Bystr_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Bystr_Prim_53" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_48", %_TyDescrTy_Typ* @"$TyDescr_Int64_30", %_TyDescrTy_Typ* @"$TyDescr_Uint256_40", %_TyDescrTy_Typ* @"$TyDescr_Uint32_28", %_TyDescrTy_Typ* @"$TyDescr_Uint64_32", %_TyDescrTy_Typ* @"$TyDescr_Bnum_44", %_TyDescrTy_Typ* @"$TyDescr_Uint128_36", %_TyDescrTy_Typ* @"$TyDescr_Exception_50", %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ* @"$TyDescr_Int256_38", %_TyDescrTy_Typ* @"$TyDescr_Int128_34", %_TyDescrTy_Typ* @"$TyDescr_Bystr_54", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_52", %_TyDescrTy_Typ* @"$TyDescr_Message_46", %_TyDescrTy_Typ* @"$TyDescr_Int32_26"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_309"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_310"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_22"(%"$$fundef_22_env_61"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_23" = alloca %Uint32, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %entry
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_159"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %c32 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %"$c_171" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_172" = bitcast { i8*, i8* }* %"$c_171" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$c_173" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$c_172", align 8
  %"$c_fptr_174" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_173", 0
  %"$c_envptr_175" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_173", 1
  %"$c_call_176" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c_fptr_174"(i8* %"$c_envptr_175")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c_call_176", { %Uint32 (i8*, %Uint32)*, i8* }* %c32, align 8
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_169"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %"$c32_7" = alloca %Uint32, align 8
  %"$c32_182" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %c32, align 8
  %"$c32_fptr_183" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_182", 0
  %"$c32_envptr_184" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_182", 1
  %"$zero_185" = load %Uint32, %Uint32* %zero, align 4
  %"$c32_call_186" = call %Uint32 %"$c32_fptr_183"(i8* %"$c32_envptr_184", %Uint32 %"$zero_185")
  store %Uint32 %"$c32_call_186", %Uint32* %"$c32_7", align 4
  %"$$c32_7_187" = load %Uint32, %Uint32* %"$c32_7", align 4
  store %Uint32 %"$$c32_7_187", %Uint32* %"$retval_23", align 4
  %"$$retval_23_188" = load %Uint32, %Uint32* %"$retval_23", align 4
  ret %Uint32 %"$$retval_23_188"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_62"* %0, %Uint32 %1) {
entry:
  %"$$fundef_20_env_n_110" = getelementptr inbounds %"$$fundef_20_env_62", %"$$fundef_20_env_62"* %0, i32 0, i32 0
  %"$n_envload_111" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_20_env_n_110", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_111", { i8*, i8* }** %n, align 8
  %"$retval_21" = alloca %Uint32, align 8
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %nX = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %"$n_122" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_123" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_122", i32 0
  %"$n_124" = bitcast { i8*, i8* }* %"$n_123" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$n_125" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$n_124", align 8
  %"$n_fptr_126" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_125", 0
  %"$n_envptr_127" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_125", 1
  %"$n_call_128" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_126"(i8* %"$n_envptr_127")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_128", { %Uint32 (i8*, %Uint32)*, i8* }* %nX, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_120"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %nXz = alloca %Uint32, align 8
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %"$nX_6" = alloca %Uint32, align 8
  %"$nX_139" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %nX, align 8
  %"$nX_fptr_140" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_139", 0
  %"$nX_envptr_141" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_139", 1
  %"$nX_call_142" = call %Uint32 %"$nX_fptr_140"(i8* %"$nX_envptr_141", %Uint32 %1)
  store %Uint32 %"$nX_call_142", %Uint32* %"$nX_6", align 4
  %"$$nX_6_143" = load %Uint32, %Uint32* %"$nX_6", align 4
  store %Uint32 %"$$nX_6_143", %Uint32* %nXz, align 4
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_137"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %"$nXz_149" = load %Uint32, %Uint32* %nXz, align 4
  store %Uint32 %"$nXz_149", %Uint32* %"$retval_21", align 4
  %"$$retval_21_150" = load %Uint32, %Uint32* %"$retval_21", align 4
  ret %Uint32 %"$$retval_21_150"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_18"(%"$$fundef_18_env_63"* %0) {
entry:
  %"$$fundef_18_env_n_96" = getelementptr inbounds %"$$fundef_18_env_63", %"$$fundef_18_env_63"* %0, i32 0, i32 0
  %"$n_envload_97" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_18_env_n_96", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_97", { i8*, i8* }** %n, align 8
  %"$retval_19" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %entry
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$$fundef_20_envp_103_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_20_envp_103_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_103_load", i64 8)
  %"$$fundef_20_envp_103" = bitcast i8* %"$$fundef_20_envp_103_salloc" to %"$$fundef_20_env_62"*
  %"$$fundef_20_env_voidp_105" = bitcast %"$$fundef_20_env_62"* %"$$fundef_20_envp_103" to i8*
  %"$$fundef_20_cloval_106" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_20_env_62"*, %Uint32)* @"$fundef_20" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_20_env_voidp_105", 1
  %"$$fundef_20_env_n_107" = getelementptr inbounds %"$$fundef_20_env_62", %"$$fundef_20_env_62"* %"$$fundef_20_envp_103", i32 0, i32 0
  %"$n_108" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_108", { i8*, i8* }** %"$$fundef_20_env_n_107", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_20_cloval_106", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_19", align 8
  %"$$retval_19_109" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_19", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_19_109"
}

define internal { i8*, i8* }* @"$fundef_16"(%"$$fundef_16_env_64"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_17" = alloca { i8*, i8* }*, align 8
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %entry
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  %"$$fundef_18_envp_87_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_18_envp_87_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_87_load", i64 8)
  %"$$fundef_18_envp_87" = bitcast i8* %"$$fundef_18_envp_87_salloc" to %"$$fundef_18_env_63"*
  %"$$fundef_18_env_voidp_89" = bitcast %"$$fundef_18_env_63"* %"$$fundef_18_envp_87" to i8*
  %"$$fundef_18_cloval_90" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_18_env_63"*)* @"$fundef_18" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_18_env_voidp_89", 1
  %"$$fundef_18_env_n_91" = getelementptr inbounds %"$$fundef_18_env_63", %"$$fundef_18_env_63"* %"$$fundef_18_envp_87", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_18_env_n_91", align 8
  %"$dyndisp_table_92_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_92_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_92_salloc_load", i64 16)
  %"$dyndisp_table_92_salloc" = bitcast i8* %"$dyndisp_table_92_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_92" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_92_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_93" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_92", i32 0
  %"$dyndisp_pcast_94" = bitcast { i8*, i8* }* %"$dyndisp_gep_93" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_18_cloval_90", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_94", align 8
  store { i8*, i8* }* %"$dyndisp_table_92", { i8*, i8* }** %"$retval_17", align 8
  %"$$retval_17_95" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_17", align 8
  ret { i8*, i8* }* %"$$retval_17_95"
}

define internal %Uint32 @"$fundef_14"(%"$$fundef_14_env_65"* %0, %Uint32 %1) {
entry:
  %"$retval_15" = alloca %Uint32, align 8
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 1, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %entry
  %"$consume_80" = sub i64 %"$gasrem_76", 1
  store i64 %"$consume_80", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_15", align 4
  %"$$retval_15_81" = load %Uint32, %Uint32* %"$retval_15", align 4
  ret %Uint32 %"$$retval_15_81"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_12"(%"$$fundef_12_env_66"* %0) {
entry:
  %"$retval_13" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 1, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %entry
  %"$consume_71" = sub i64 %"$gasrem_67", 1
  store i64 %"$consume_71", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_14_env_65"*, %Uint32)* @"$fundef_14" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13", align 8
  %"$$retval_13_75" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_13_75"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 5, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %entry
  %"$consume_193" = sub i64 %"$gasrem_189", 5
  store i64 %"$consume_193", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 8, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 8
  store i64 %"$consume_198", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 196, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$have_gas_197"
  %"$consume_203" = sub i64 %"$gasrem_199", 196
  store i64 %"$consume_203", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 20, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_202"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_202"
  %"$consume_208" = sub i64 %"$gasrem_204", 20
  store i64 %"$consume_208", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 12, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_207"
  %"$consume_213" = sub i64 %"$gasrem_209", 12
  store i64 %"$consume_213", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 2, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_212"
  %"$consume_218" = sub i64 %"$gasrem_214", 2
  store i64 %"$consume_218", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_11" = alloca %Uint32, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %entry
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %c1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_222"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %"$dyndisp_table_232_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_232_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_232_salloc_load", i64 16)
  %"$dyndisp_table_232_salloc" = bitcast i8* %"$dyndisp_table_232_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_232" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_232_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_233" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_232", i32 0
  %"$dyndisp_pcast_234" = bitcast { i8*, i8* }* %"$dyndisp_gep_233" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_12_env_66"*)* @"$fundef_12" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_234", align 8
  store { i8*, i8* }* %"$dyndisp_table_232", { i8*, i8* }** %c1, align 8
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_227"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %app_arg = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_238"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_16_env_64"*, { i8*, i8* }*)* @"$fundef_16" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_243"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %start = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_22_env_61"*, { i8*, i8* }*)* @"$fundef_22" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start, align 8
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_256"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %c2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_264"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$app_arg_8" = alloca { i8*, i8* }*, align 8
  %"$app_arg_271" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8
  %"$app_arg_fptr_272" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_271", 0
  %"$app_arg_envptr_273" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_271", 1
  %"$c1_274" = load { i8*, i8* }*, { i8*, i8* }** %c1, align 8
  %"$app_arg_call_275" = call { i8*, i8* }* %"$app_arg_fptr_272"(i8* %"$app_arg_envptr_273", { i8*, i8* }* %"$c1_274")
  store { i8*, i8* }* %"$app_arg_call_275", { i8*, i8* }** %"$app_arg_8", align 8
  %"$$app_arg_8_276" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_8", align 8
  store { i8*, i8* }* %"$$app_arg_8_276", { i8*, i8* }** %c2, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_269"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %c3 = alloca { i8*, i8* }*, align 8
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %"$app_arg_9" = alloca { i8*, i8* }*, align 8
  %"$app_arg_287" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8
  %"$app_arg_fptr_288" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_287", 0
  %"$app_arg_envptr_289" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_287", 1
  %"$c2_290" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$app_arg_call_291" = call { i8*, i8* }* %"$app_arg_fptr_288"(i8* %"$app_arg_envptr_289", { i8*, i8* }* %"$c2_290")
  store { i8*, i8* }* %"$app_arg_call_291", { i8*, i8* }** %"$app_arg_9", align 8
  %"$$app_arg_9_292" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_9", align 8
  store { i8*, i8* }* %"$$app_arg_9_292", { i8*, i8* }** %c3, align 8
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_285"
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %"$start_10" = alloca %Uint32, align 8
  %"$start_298" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start, align 8
  %"$start_fptr_299" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_298", 0
  %"$start_envptr_300" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_298", 1
  %"$c3_301" = load { i8*, i8* }*, { i8*, i8* }** %c3, align 8
  %"$start_call_302" = call %Uint32 %"$start_fptr_299"(i8* %"$start_envptr_300", { i8*, i8* }* %"$c3_301")
  store %Uint32 %"$start_call_302", %Uint32* %"$start_10", align 4
  %"$$start_10_303" = load %Uint32, %Uint32* %"$start_10", align 4
  store %Uint32 %"$$start_10_303", %Uint32* %"$expr_11", align 4
  %"$$expr_11_304" = load %Uint32, %Uint32* %"$expr_11", align 4
  ret %Uint32 %"$$expr_11_304"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_305" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_306" = alloca %Uint32, align 8
  %"$memvoidcast_307" = bitcast %Uint32* %"$pval_306" to i8*
  store %Uint32 %"$exprval_305", %Uint32* %"$pval_306", align 4
  %"$execptr_load_308" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_308", %_TyDescrTy_Typ* @"$TyDescr_Uint32_28", i8* %"$memvoidcast_307")
  ret void
}
