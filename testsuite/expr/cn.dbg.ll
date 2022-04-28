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
%"$ParamDescr_311" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_312" = type { %ParamDescrString, i32, %"$ParamDescr_311"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_311"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_312"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_22"(%"$$fundef_22_env_61"* %0, { i8*, i8* }* %1) !dbg !3 {
entry:
  %"$retval_23" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_23", metadata !8, metadata !DIExpression()), !dbg !10
  %"$gasrem_153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_154" = icmp ugt i64 1, %"$gasrem_153"
  br i1 %"$gascmp_154", label %"$out_of_gas_155", label %"$have_gas_156"

"$out_of_gas_155":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_156"

"$have_gas_156":                                  ; preds = %"$out_of_gas_155", %entry
  %"$consume_157" = sub i64 %"$gasrem_153", 1
  store i64 %"$consume_157", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero, metadata !11, metadata !DIExpression()), !dbg !12
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_156"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_156"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !13
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$have_gas_161"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$have_gas_161"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %c32 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %"$c_173" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_174" = bitcast { i8*, i8* }* %"$c_173" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$c_175" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$c_174", align 8
  %"$c_fptr_176" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_175", 0
  %"$c_envptr_177" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_175", 1
  %"$c_call_178" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c_fptr_176"(i8* %"$c_envptr_177"), !dbg !14
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c_call_178", { %Uint32 (i8*, %Uint32)*, i8* }* %c32, align 8, !dbg !15
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_171"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$c32_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$c32_7", metadata !16, metadata !DIExpression()), !dbg !17
  %"$c32_184" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %c32, align 8
  %"$c32_fptr_185" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_184", 0
  %"$c32_envptr_186" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_184", 1
  %"$zero_187" = load %Uint32, %Uint32* %zero, align 4
  %"$c32_call_188" = call %Uint32 %"$c32_fptr_185"(i8* %"$c32_envptr_186", %Uint32 %"$zero_187"), !dbg !17
  store %Uint32 %"$c32_call_188", %Uint32* %"$c32_7", align 4, !dbg !17
  %"$$c32_7_189" = load %Uint32, %Uint32* %"$c32_7", align 4
  store %Uint32 %"$$c32_7_189", %Uint32* %"$retval_23", align 4, !dbg !17
  %"$$retval_23_190" = load %Uint32, %Uint32* %"$retval_23", align 4
  ret %Uint32 %"$$retval_23_190"
}

define internal %Uint32 @"$fundef_20"(%"$$fundef_20_env_62"* %0, %Uint32 %1) !dbg !18 {
entry:
  %"$z_152" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_152", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_152", metadata !19, metadata !DIExpression()), !dbg !20
  %"$$fundef_20_env_n_111" = getelementptr inbounds %"$$fundef_20_env_62", %"$$fundef_20_env_62"* %0, i32 0, i32 0
  %"$n_envload_112" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_20_env_n_111", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_112", { i8*, i8* }** %n, align 8
  %"$retval_21" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_21", metadata !21, metadata !DIExpression()), !dbg !22
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %entry
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %nX = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  %"$n_123" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_124" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_123", i32 0
  %"$n_125" = bitcast { i8*, i8* }* %"$n_124" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$n_126" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$n_125", align 8
  %"$n_fptr_127" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_126", 0
  %"$n_envptr_128" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_126", 1
  %"$n_call_129" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_127"(i8* %"$n_envptr_128"), !dbg !23
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_129", { %Uint32 (i8*, %Uint32)*, i8* }* %nX, align 8, !dbg !24
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_121"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  %nXz = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %nXz, metadata !25, metadata !DIExpression()), !dbg !26
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %"$nX_6" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$nX_6", metadata !27, metadata !DIExpression()), !dbg !28
  %"$nX_140" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %nX, align 8
  %"$nX_fptr_141" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_140", 0
  %"$nX_envptr_142" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_140", 1
  %"$nX_call_143" = call %Uint32 %"$nX_fptr_141"(i8* %"$nX_envptr_142", %Uint32 %1), !dbg !28
  store %Uint32 %"$nX_call_143", %Uint32* %"$nX_6", align 4, !dbg !28
  %"$$nX_6_144" = load %Uint32, %Uint32* %"$nX_6", align 4
  store %Uint32 %"$$nX_6_144", %Uint32* %nXz, align 4, !dbg !28
  %"$gasrem_145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_138"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem, align 8
  %"$nXz_150" = load %Uint32, %Uint32* %nXz, align 4
  store %Uint32 %"$nXz_150", %Uint32* %"$retval_21", align 4, !dbg !29
  %"$$retval_21_151" = load %Uint32, %Uint32* %"$retval_21", align 4
  ret %Uint32 %"$$retval_21_151"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_18"(%"$$fundef_18_env_63"* %0) !dbg !30 {
entry:
  %"$$fundef_18_env_n_97" = getelementptr inbounds %"$$fundef_18_env_63", %"$$fundef_18_env_63"* %0, i32 0, i32 0
  %"$n_envload_98" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_18_env_n_97", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_98", { i8*, i8* }** %n, align 8
  %"$retval_19" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %entry
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  %"$$fundef_20_envp_104_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_20_envp_104_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_104_load", i64 8)
  %"$$fundef_20_envp_104" = bitcast i8* %"$$fundef_20_envp_104_salloc" to %"$$fundef_20_env_62"*
  %"$$fundef_20_env_voidp_106" = bitcast %"$$fundef_20_env_62"* %"$$fundef_20_envp_104" to i8*
  %"$$fundef_20_cloval_107" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_20_env_62"*, %Uint32)* @"$fundef_20" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_20_env_voidp_106", 1
  %"$$fundef_20_env_n_108" = getelementptr inbounds %"$$fundef_20_env_62", %"$$fundef_20_env_62"* %"$$fundef_20_envp_104", i32 0, i32 0
  %"$n_109" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_109", { i8*, i8* }** %"$$fundef_20_env_n_108", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_20_cloval_107", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_19", align 8, !dbg !31
  %"$$retval_19_110" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_19", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_19_110"
}

define internal { i8*, i8* }* @"$fundef_16"(%"$$fundef_16_env_64"* %0, { i8*, i8* }* %1) !dbg !32 {
entry:
  %"$retval_17" = alloca { i8*, i8* }*, align 8
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %entry
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %"$$fundef_18_envp_88_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_18_envp_88_salloc" = call i8* @_salloc(i8* %"$$fundef_18_envp_88_load", i64 8)
  %"$$fundef_18_envp_88" = bitcast i8* %"$$fundef_18_envp_88_salloc" to %"$$fundef_18_env_63"*
  %"$$fundef_18_env_voidp_90" = bitcast %"$$fundef_18_env_63"* %"$$fundef_18_envp_88" to i8*
  %"$$fundef_18_cloval_91" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_18_env_63"*)* @"$fundef_18" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_18_env_voidp_90", 1
  %"$$fundef_18_env_n_92" = getelementptr inbounds %"$$fundef_18_env_63", %"$$fundef_18_env_63"* %"$$fundef_18_envp_88", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_18_env_n_92", align 8
  %"$dyndisp_table_93_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_93_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_93_salloc_load", i64 16)
  %"$dyndisp_table_93_salloc" = bitcast i8* %"$dyndisp_table_93_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_93" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_93_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_94" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_93", i32 0
  %"$dyndisp_pcast_95" = bitcast { i8*, i8* }* %"$dyndisp_gep_94" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_18_cloval_91", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_95", align 8
  store { i8*, i8* }* %"$dyndisp_table_93", { i8*, i8* }** %"$retval_17", align 8, !dbg !33
  %"$$retval_17_96" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_17", align 8
  ret { i8*, i8* }* %"$$retval_17_96"
}

define internal %Uint32 @"$fundef_14"(%"$$fundef_14_env_65"* %0, %Uint32 %1) !dbg !34 {
entry:
  %"$z_82" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_82", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_82", metadata !35, metadata !DIExpression()), !dbg !36
  %"$retval_15" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_15", metadata !37, metadata !DIExpression()), !dbg !38
  %"$gasrem_76" = load i64, i64* @_gasrem, align 8
  %"$gascmp_77" = icmp ugt i64 1, %"$gasrem_76"
  br i1 %"$gascmp_77", label %"$out_of_gas_78", label %"$have_gas_79"

"$out_of_gas_78":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_79"

"$have_gas_79":                                   ; preds = %"$out_of_gas_78", %entry
  %"$consume_80" = sub i64 %"$gasrem_76", 1
  store i64 %"$consume_80", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_15", align 4, !dbg !38
  %"$$retval_15_81" = load %Uint32, %Uint32* %"$retval_15", align 4
  ret %Uint32 %"$$retval_15_81"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_12"(%"$$fundef_12_env_66"* %0) !dbg !39 {
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
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_14_env_65"*, %Uint32)* @"$fundef_14" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13", align 8, !dbg !40
  %"$$retval_13_75" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_13_75"
}

declare void @_out_of_gas()

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !41 {
entry:
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 5, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %entry
  %"$consume_195" = sub i64 %"$gasrem_191", 5
  store i64 %"$consume_195", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !43
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 8, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_194"
  %"$consume_200" = sub i64 %"$gasrem_196", 8
  store i64 %"$consume_200", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !43
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 196, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %"$have_gas_199"
  %"$consume_205" = sub i64 %"$gasrem_201", 196
  store i64 %"$consume_205", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !43
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 20, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_204"
  %"$consume_210" = sub i64 %"$gasrem_206", 20
  store i64 %"$consume_210", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !43
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 12, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %"$have_gas_209"
  %"$consume_215" = sub i64 %"$gasrem_211", 12
  store i64 %"$consume_215", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !43
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 2, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_214"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_214"
  %"$consume_220" = sub i64 %"$gasrem_216", 2
  store i64 %"$consume_220", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !43
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !44 {
entry:
  %"$expr_11" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$expr_11", metadata !45, metadata !DIExpression()), !dbg !46
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 1, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %entry
  %"$consume_225" = sub i64 %"$gasrem_221", 1
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %c1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_224"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %"$dyndisp_table_234_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_234_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_234_salloc_load", i64 16)
  %"$dyndisp_table_234_salloc" = bitcast i8* %"$dyndisp_table_234_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_234" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_234_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_235" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_234", i32 0
  %"$dyndisp_pcast_236" = bitcast { i8*, i8* }* %"$dyndisp_gep_235" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_12_env_66"*)* @"$fundef_12" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_236", align 8
  store { i8*, i8* }* %"$dyndisp_table_234", { i8*, i8* }** %c1, align 8, !dbg !46
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 1, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_229"
  %"$consume_241" = sub i64 %"$gasrem_237", 1
  store i64 %"$consume_241", i64* @_gasrem, align 8
  %app_arg = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_240"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_16_env_64"*, { i8*, i8* }*)* @"$fundef_16" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8, !dbg !47
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_245"
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %start = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_253"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_22_env_61"*, { i8*, i8* }*)* @"$fundef_22" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start, align 8, !dbg !48
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_258"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %c2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_269" = icmp ugt i64 1, %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %"$have_gas_266"
  %"$consume_272" = sub i64 %"$gasrem_268", 1
  store i64 %"$consume_272", i64* @_gasrem, align 8
  %"$app_arg_8" = alloca { i8*, i8* }*, align 8
  %"$app_arg_273" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8
  %"$app_arg_fptr_274" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_273", 0
  %"$app_arg_envptr_275" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_273", 1
  %"$c1_276" = load { i8*, i8* }*, { i8*, i8* }** %c1, align 8
  %"$app_arg_call_277" = call { i8*, i8* }* %"$app_arg_fptr_274"(i8* %"$app_arg_envptr_275", { i8*, i8* }* %"$c1_276"), !dbg !49
  store { i8*, i8* }* %"$app_arg_call_277", { i8*, i8* }** %"$app_arg_8", align 8, !dbg !49
  %"$$app_arg_8_278" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_8", align 8
  store { i8*, i8* }* %"$$app_arg_8_278", { i8*, i8* }** %c2, align 8, !dbg !49
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_271"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_271"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %c3 = alloca { i8*, i8* }*, align 8
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_282"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$app_arg_9" = alloca { i8*, i8* }*, align 8
  %"$app_arg_289" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8
  %"$app_arg_fptr_290" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_289", 0
  %"$app_arg_envptr_291" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_289", 1
  %"$c2_292" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$app_arg_call_293" = call { i8*, i8* }* %"$app_arg_fptr_290"(i8* %"$app_arg_envptr_291", { i8*, i8* }* %"$c2_292"), !dbg !50
  store { i8*, i8* }* %"$app_arg_call_293", { i8*, i8* }** %"$app_arg_9", align 8, !dbg !50
  %"$$app_arg_9_294" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_9", align 8
  store { i8*, i8* }* %"$$app_arg_9_294", { i8*, i8* }** %c3, align 8, !dbg !50
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_287"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %"$start_10" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$start_10", metadata !51, metadata !DIExpression()), !dbg !52
  %"$start_300" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start, align 8
  %"$start_fptr_301" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_300", 0
  %"$start_envptr_302" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_300", 1
  %"$c3_303" = load { i8*, i8* }*, { i8*, i8* }** %c3, align 8
  %"$start_call_304" = call %Uint32 %"$start_fptr_301"(i8* %"$start_envptr_302", { i8*, i8* }* %"$c3_303"), !dbg !52
  store %Uint32 %"$start_call_304", %Uint32* %"$start_10", align 4, !dbg !52
  %"$$start_10_305" = load %Uint32, %Uint32* %"$start_10", align 4
  store %Uint32 %"$$start_10_305", %Uint32* %"$expr_11", align 4, !dbg !52
  %"$$expr_11_306" = load %Uint32, %Uint32* %"$expr_11", align 4
  ret %Uint32 %"$$expr_11_306"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_307" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_308" = alloca %Uint32, align 8
  %"$memvoidcast_309" = bitcast %Uint32* %"$pval_308" to i8*
  store %Uint32 %"$exprval_307", %Uint32* %"$pval_308", align 4
  %"$execptr_load_310" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_310", %_TyDescrTy_Typ* @"$TyDescr_Uint32_28", i8* %"$memvoidcast_309")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "cn.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !2, file: !2, line: 15, type: !4, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "$retval_23", scope: !3, file: !2, line: 15, type: !9)
!9 = !DIBasicType(name: "Uint32", size: 4)
!10 = !DILocation(line: 15, column: 5, scope: !3)
!11 = !DILocalVariable(name: "zero", scope: !3, file: !2, line: 15, type: !9)
!12 = !DILocation(line: 15, column: 9, scope: !3)
!13 = !DILocation(line: 15, column: 16, scope: !3)
!14 = !DILocation(line: 16, column: 16, scope: !3)
!15 = !DILocation(line: 16, column: 15, scope: !3)
!16 = !DILocalVariable(name: "$c32_7", scope: !3, file: !2, line: 17, type: !9)
!17 = !DILocation(line: 17, column: 5, scope: !3)
!18 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !2, file: !2, line: 8, type: !4, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!19 = !DILocalVariable(name: "z", scope: !18, file: !2, line: 7, type: !9)
!20 = !DILocation(line: 7, column: 8, scope: !18)
!21 = !DILocalVariable(name: "$retval_21", scope: !18, file: !2, line: 8, type: !9)
!22 = !DILocation(line: 8, column: 3, scope: !18)
!23 = !DILocation(line: 8, column: 13, scope: !18)
!24 = !DILocation(line: 8, column: 12, scope: !18)
!25 = !DILocalVariable(name: "nXz", scope: !18, file: !2, line: 9, type: !9)
!26 = !DILocation(line: 9, column: 7, scope: !18)
!27 = !DILocalVariable(name: "$nX_6", scope: !18, file: !2, line: 9, type: !9)
!28 = !DILocation(line: 9, column: 13, scope: !18)
!29 = !DILocation(line: 10, column: 3, scope: !18)
!30 = distinct !DISubprogram(name: "$fundef_18", linkageName: "$fundef_18", scope: !2, file: !2, line: 8, type: !4, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!31 = !DILocation(line: 8, column: 3, scope: !30)
!32 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !2, file: !2, line: 6, type: !4, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!33 = !DILocation(line: 6, column: 3, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!35 = !DILocalVariable(name: "z", scope: !34, file: !2, line: 2, type: !9)
!36 = !DILocation(line: 2, column: 26, scope: !34)
!37 = !DILocalVariable(name: "$retval_15", scope: !34, file: !2, line: 2, type: !9)
!38 = !DILocation(line: 2, column: 37, scope: !34)
!39 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!40 = !DILocation(line: 2, column: 37, scope: !39)
!41 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !42, file: !42, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!42 = !DIFile(filename: ".", directory: ".")
!43 = !DILocation(line: 0, scope: !41)
!44 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!45 = !DILocalVariable(name: "$expr_11", scope: !44, file: !2, line: 2, type: !9)
!46 = !DILocation(line: 2, column: 10, scope: !44)
!47 = !DILocation(line: 6, column: 3, scope: !44)
!48 = !DILocation(line: 15, column: 5, scope: !44)
!49 = !DILocation(line: 20, column: 10, scope: !44)
!50 = !DILocation(line: 21, column: 10, scope: !44)
!51 = !DILocalVariable(name: "$start_10", scope: !44, file: !2, line: 22, type: !9)
!52 = !DILocation(line: 22, column: 1, scope: !44)
