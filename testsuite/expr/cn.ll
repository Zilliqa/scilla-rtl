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
%Uint32 = type { i32 }
%"$$fundef_16_env_51" = type {}
%"$$fundef_14_env_52" = type { { i8*, i8* }* }
%"$$fundef_12_env_53" = type { { i8*, i8* }* }
%"$$fundef_10_env_54" = type {}
%"$$fundef_8_env_55" = type {}
%"$$fundef_6_env_56" = type {}

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

define internal %Uint32 @"$fundef_16"(%"$$fundef_16_env_51"* %0, { i8*, i8* }* %1) !dbg !4 {
entry:
  %"$retval_17" = alloca %Uint32, align 8
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %entry
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %c32 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %"$c_161" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_162" = bitcast { i8*, i8* }* %"$c_161" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$c_163" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$c_162", align 8
  %"$c_fptr_164" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_163", 0
  %"$c_envptr_165" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$c_163", 1
  %"$c_call_166" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c_fptr_164"(i8* %"$c_envptr_165"), !dbg !9
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c_call_166", { %Uint32 (i8*, %Uint32)*, i8* }* %c32, align 8, !dbg !10
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_159"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$c32_1" = alloca %Uint32, align 8
  %"$c32_172" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %c32, align 8
  %"$c32_fptr_173" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_172", 0
  %"$c32_envptr_174" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_172", 1
  %"$zero_175" = load %Uint32, %Uint32* %zero, align 4
  %"$c32_call_176" = call %Uint32 %"$c32_fptr_173"(i8* %"$c32_envptr_174", %Uint32 %"$zero_175"), !dbg !11
  store %Uint32 %"$c32_call_176", %Uint32* %"$c32_1", align 4, !dbg !11
  %"$$c32_1_177" = load %Uint32, %Uint32* %"$c32_1", align 4
  store %Uint32 %"$$c32_1_177", %Uint32* %"$retval_17", align 4, !dbg !11
  %"$$retval_17_178" = load %Uint32, %Uint32* %"$retval_17", align 4
  ret %Uint32 %"$$retval_17_178"
}

define internal %Uint32 @"$fundef_14"(%"$$fundef_14_env_52"* %0, %Uint32 %1) !dbg !12 {
entry:
  %"$$fundef_14_env_n_100" = getelementptr inbounds %"$$fundef_14_env_52", %"$$fundef_14_env_52"* %0, i32 0, i32 0
  %"$n_envload_101" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_14_env_n_100", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_101", { i8*, i8* }** %n, align 8
  %"$retval_15" = alloca %Uint32, align 8
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %entry
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %nX = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 1, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$have_gas_105"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$have_gas_105"
  %"$consume_111" = sub i64 %"$gasrem_107", 1
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %"$n_112" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_113" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_112", i32 0
  %"$n_114" = bitcast { i8*, i8* }* %"$n_113" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$n_115" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$n_114", align 8
  %"$n_fptr_116" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_115", 0
  %"$n_envptr_117" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$n_115", 1
  %"$n_call_118" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_116"(i8* %"$n_envptr_117"), !dbg !13
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_118", { %Uint32 (i8*, %Uint32)*, i8* }* %nX, align 8, !dbg !14
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_110"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_110"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem, align 8
  %nXz = alloca %Uint32, align 8
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %"$nX_0" = alloca %Uint32, align 8
  %"$nX_129" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %nX, align 8
  %"$nX_fptr_130" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_129", 0
  %"$nX_envptr_131" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_129", 1
  %"$nX_call_132" = call %Uint32 %"$nX_fptr_130"(i8* %"$nX_envptr_131", %Uint32 %1), !dbg !15
  store %Uint32 %"$nX_call_132", %Uint32* %"$nX_0", align 4, !dbg !15
  %"$$nX_0_133" = load %Uint32, %Uint32* %"$nX_0", align 4
  store %Uint32 %"$$nX_0_133", %Uint32* %nXz, align 4, !dbg !15
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_127"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %"$nXz_139" = load %Uint32, %Uint32* %nXz, align 4
  store %Uint32 %"$nXz_139", %Uint32* %"$retval_15", align 4, !dbg !16
  %"$$retval_15_140" = load %Uint32, %Uint32* %"$retval_15", align 4
  ret %Uint32 %"$$retval_15_140"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_12"(%"$$fundef_12_env_53"* %0) !dbg !17 {
entry:
  %"$$fundef_12_env_n_86" = getelementptr inbounds %"$$fundef_12_env_53", %"$$fundef_12_env_53"* %0, i32 0, i32 0
  %"$n_envload_87" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_12_env_n_86", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_87", { i8*, i8* }** %n, align 8
  %"$retval_13" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %entry
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %"$$fundef_14_envp_93_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_14_envp_93_salloc" = call i8* @_salloc(i8* %"$$fundef_14_envp_93_load", i64 8)
  %"$$fundef_14_envp_93" = bitcast i8* %"$$fundef_14_envp_93_salloc" to %"$$fundef_14_env_52"*
  %"$$fundef_14_env_voidp_95" = bitcast %"$$fundef_14_env_52"* %"$$fundef_14_envp_93" to i8*
  %"$$fundef_14_cloval_96" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_14_env_52"*, %Uint32)* @"$fundef_14" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_14_env_voidp_95", 1
  %"$$fundef_14_env_n_97" = getelementptr inbounds %"$$fundef_14_env_52", %"$$fundef_14_env_52"* %"$$fundef_14_envp_93", i32 0, i32 0
  %"$n_98" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_98", { i8*, i8* }** %"$$fundef_14_env_n_97", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_14_cloval_96", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13", align 8, !dbg !18
  %"$$retval_13_99" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_13", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_13_99"
}

define internal { i8*, i8* }* @"$fundef_10"(%"$$fundef_10_env_54"* %0, { i8*, i8* }* %1) !dbg !19 {
entry:
  %"$retval_11" = alloca { i8*, i8* }*, align 8
  %"$gasrem_72" = load i64, i64* @_gasrem, align 8
  %"$gascmp_73" = icmp ugt i64 1, %"$gasrem_72"
  br i1 %"$gascmp_73", label %"$out_of_gas_74", label %"$have_gas_75"

"$out_of_gas_74":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_75"

"$have_gas_75":                                   ; preds = %"$out_of_gas_74", %entry
  %"$consume_76" = sub i64 %"$gasrem_72", 1
  store i64 %"$consume_76", i64* @_gasrem, align 8
  %"$$fundef_12_envp_77_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_12_envp_77_salloc" = call i8* @_salloc(i8* %"$$fundef_12_envp_77_load", i64 8)
  %"$$fundef_12_envp_77" = bitcast i8* %"$$fundef_12_envp_77_salloc" to %"$$fundef_12_env_53"*
  %"$$fundef_12_env_voidp_79" = bitcast %"$$fundef_12_env_53"* %"$$fundef_12_envp_77" to i8*
  %"$$fundef_12_cloval_80" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_12_env_53"*)* @"$fundef_12" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_12_env_voidp_79", 1
  %"$$fundef_12_env_n_81" = getelementptr inbounds %"$$fundef_12_env_53", %"$$fundef_12_env_53"* %"$$fundef_12_envp_77", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_12_env_n_81", align 8
  %"$dyndisp_table_82_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_82_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_82_salloc_load", i64 16)
  %"$dyndisp_table_82_salloc" = bitcast i8* %"$dyndisp_table_82_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_82" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_82_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_83" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_82", i32 0
  %"$dyndisp_pcast_84" = bitcast { i8*, i8* }* %"$dyndisp_gep_83" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_12_cloval_80", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_84", align 8
  store { i8*, i8* }* %"$dyndisp_table_82", { i8*, i8* }** %"$retval_11", align 8, !dbg !20
  %"$$retval_11_85" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_11", align 8
  ret { i8*, i8* }* %"$$retval_11_85"
}

define internal %Uint32 @"$fundef_8"(%"$$fundef_8_env_55"* %0, %Uint32 %1) !dbg !21 {
entry:
  %"$retval_9" = alloca %Uint32, align 8
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %entry
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_9", align 4, !dbg !22
  %"$$retval_9_71" = load %Uint32, %Uint32* %"$retval_9", align 4
  ret %Uint32 %"$$retval_9_71"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_6"(%"$$fundef_6_env_56"* %0) !dbg !23 {
entry:
  %"$retval_7" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 1, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %entry
  %"$consume_61" = sub i64 %"$gasrem_57", 1
  store i64 %"$consume_61", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_8_env_55"*, %Uint32)* @"$fundef_8" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_7", align 8, !dbg !24
  %"$$retval_7_65" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_7", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_7_65"
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
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %entry
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %c1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_182"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$dyndisp_table_192_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_192_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_192_salloc_load", i64 16)
  %"$dyndisp_table_192_salloc" = bitcast i8* %"$dyndisp_table_192_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_192" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_192_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_193" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_192", i32 0
  %"$dyndisp_pcast_194" = bitcast { i8*, i8* }* %"$dyndisp_gep_193" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_6_env_56"*)* @"$fundef_6" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_194", align 8
  store { i8*, i8* }* %"$dyndisp_table_192", { i8*, i8* }** %c1, align 8, !dbg !28
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_187"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %app_arg = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_198"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_10_env_54"*, { i8*, i8* }*)* @"$fundef_10" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8, !dbg !29
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_203"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %start = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_211"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_16_env_51"*, { i8*, i8* }*)* @"$fundef_16" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start, align 8, !dbg !30
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 1, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_216"
  %"$consume_225" = sub i64 %"$gasrem_221", 1
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %c2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_224"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %"$app_arg_2" = alloca { i8*, i8* }*, align 8
  %"$app_arg_231" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8
  %"$app_arg_fptr_232" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_231", 0
  %"$app_arg_envptr_233" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_231", 1
  %"$c1_234" = load { i8*, i8* }*, { i8*, i8* }** %c1, align 8
  %"$app_arg_call_235" = call { i8*, i8* }* %"$app_arg_fptr_232"(i8* %"$app_arg_envptr_233", { i8*, i8* }* %"$c1_234"), !dbg !31
  store { i8*, i8* }* %"$app_arg_call_235", { i8*, i8* }** %"$app_arg_2", align 8, !dbg !31
  %"$$app_arg_2_236" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_2", align 8
  store { i8*, i8* }* %"$$app_arg_2_236", { i8*, i8* }** %c2, align 8, !dbg !31
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 1, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_229"
  %"$consume_241" = sub i64 %"$gasrem_237", 1
  store i64 %"$consume_241", i64* @_gasrem, align 8
  %c3 = alloca { i8*, i8* }*, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_240"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$app_arg_3" = alloca { i8*, i8* }*, align 8
  %"$app_arg_247" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %app_arg, align 8
  %"$app_arg_fptr_248" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_247", 0
  %"$app_arg_envptr_249" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$app_arg_247", 1
  %"$c2_250" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$app_arg_call_251" = call { i8*, i8* }* %"$app_arg_fptr_248"(i8* %"$app_arg_envptr_249", { i8*, i8* }* %"$c2_250"), !dbg !32
  store { i8*, i8* }* %"$app_arg_call_251", { i8*, i8* }** %"$app_arg_3", align 8, !dbg !32
  %"$$app_arg_3_252" = load { i8*, i8* }*, { i8*, i8* }** %"$app_arg_3", align 8
  store { i8*, i8* }* %"$$app_arg_3_252", { i8*, i8* }** %c3, align 8, !dbg !32
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_245"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$start_4" = alloca %Uint32, align 8
  %"$start_258" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %start, align 8
  %"$start_fptr_259" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_258", 0
  %"$start_envptr_260" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$start_258", 1
  %"$c3_261" = load { i8*, i8* }*, { i8*, i8* }** %c3, align 8
  %"$start_call_262" = call %Uint32 %"$start_fptr_259"(i8* %"$start_envptr_260", { i8*, i8* }* %"$c3_261"), !dbg !33
  store %Uint32 %"$start_call_262", %Uint32* %"$start_4", align 4, !dbg !33
  %"$$start_4_263" = load %Uint32, %Uint32* %"$start_4", align 4
  store %Uint32 %"$$start_4_263", %Uint32* %"$expr_5", align 4, !dbg !33
  %"$$expr_5_264" = load %Uint32, %Uint32* %"$expr_5", align 4
  ret %Uint32 %"$$expr_5_264"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_265" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_266" = alloca %Uint32, align 8
  %"$memvoidcast_267" = bitcast %Uint32* %"$pval_266" to i8*
  store %Uint32 %"$exprval_265", %Uint32* %"$pval_266", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_22", i8* %"$memvoidcast_267")
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
