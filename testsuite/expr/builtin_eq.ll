; let i32a = Int32 0 in
; let i32b = Int32 1 in
; let i32aa = Int32 0 in
; let b1 = builtin eq i32a i32aa in
; let b2 = builtin eq i32a i32b in
; 
; let i128a = Uint128 11 in
; let i128b = Uint128 12 in
; let i128aa = Uint128 11 in
; let b3 = builtin eq i128a i128b in
; let b4 = builtin eq i128a i128a in
; let b5 = andb b1 b2 in
; let b6 = orb b3 b4 in
; let b7 = andb b5 b6 in
; 
; let ui256a = Uint128 11 in
; let ui256b = Uint128 12 in
; let ui256aa = Uint128 11 in
; let b8 = builtin eq ui256a ui256b in
; let b9 = builtin eq ui256a ui256a in
; let b10 = andb b7 b8 in
; let b11 = orb b10 b9 in
; 
; let s1 = "Hello" in
; let s2 = "World" in
; let s11 = "Hello" in
; let b12 = builtin eq s1 s2 in
; let b13 = builtin eq s1 s11 in
; let b14 = andb b9 b12 in
; let b15 = orb b13 b14 in
; 
; let bs1 = 0x00ff in
; let bs2 = 0xff00 in
; let bs11 = 0x00ff in
; let b16 = builtin eq bs1 bs2 in
; let b17 = builtin eq bs1 bs11 in
; let b18 = orb b16 b17 in
; let b19 = andb b18 b15 in
; 
; let bs3 = 0x0f0f0f in
; let bs4 = 0x0f0f0e in
; let b20 = builtin eq bs3 bs4 in
; let b21 = negb b20 in
; let b22 = andb b19 b21 in
; 
; let bs11 = builtin to_bystr bs1 in
; let bs22 = builtin to_bystr bs2 in
; let b23 = builtin eq bs11 bs22 in
; let b24 = negb b23 in
; let b25 = andb b22 b24 in
; 
; b25
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_26" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_60" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_59"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_59" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_61"**, %"$TyDescrTy_ADTTyp_60"* }
%"$TyDescrTy_ADTTyp_Constr_61" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$$fundef_15_env_76" = type {}
%"$$fundef_19_env_77" = type { %TName_Bool* }
%"$$fundef_17_env_78" = type {}
%"$$fundef_23_env_79" = type { %TName_Bool* }
%"$$fundef_21_env_80" = type {}
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%Bystr = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_27" = global %"$TyDescrTy_PrimTyp_26" zeroinitializer
@"$TyDescr_Int32_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int32_Prim_27" to i8*) }
@"$TyDescr_Uint32_Prim_29" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 0 }
@"$TyDescr_Uint32_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint32_Prim_29" to i8*) }
@"$TyDescr_Int64_Prim_31" = global %"$TyDescrTy_PrimTyp_26" { i32 0, i32 1 }
@"$TyDescr_Int64_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int64_Prim_31" to i8*) }
@"$TyDescr_Uint64_Prim_33" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 1 }
@"$TyDescr_Uint64_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint64_Prim_33" to i8*) }
@"$TyDescr_Int128_Prim_35" = global %"$TyDescrTy_PrimTyp_26" { i32 0, i32 2 }
@"$TyDescr_Int128_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int128_Prim_35" to i8*) }
@"$TyDescr_Uint128_Prim_37" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 2 }
@"$TyDescr_Uint128_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint128_Prim_37" to i8*) }
@"$TyDescr_Int256_Prim_39" = global %"$TyDescrTy_PrimTyp_26" { i32 0, i32 3 }
@"$TyDescr_Int256_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int256_Prim_39" to i8*) }
@"$TyDescr_Uint256_Prim_41" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 3 }
@"$TyDescr_Uint256_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint256_Prim_41" to i8*) }
@"$TyDescr_String_Prim_43" = global %"$TyDescrTy_PrimTyp_26" { i32 2, i32 0 }
@"$TyDescr_String_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_String_Prim_43" to i8*) }
@"$TyDescr_Bnum_Prim_45" = global %"$TyDescrTy_PrimTyp_26" { i32 3, i32 0 }
@"$TyDescr_Bnum_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Bnum_Prim_45" to i8*) }
@"$TyDescr_Message_Prim_47" = global %"$TyDescrTy_PrimTyp_26" { i32 4, i32 0 }
@"$TyDescr_Message_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Message_Prim_47" to i8*) }
@"$TyDescr_Event_Prim_49" = global %"$TyDescrTy_PrimTyp_26" { i32 5, i32 0 }
@"$TyDescr_Event_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Event_Prim_49" to i8*) }
@"$TyDescr_Exception_Prim_51" = global %"$TyDescrTy_PrimTyp_26" { i32 6, i32 0 }
@"$TyDescr_Exception_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Exception_Prim_51" to i8*) }
@"$TyDescr_Bystr_Prim_53" = global %"$TyDescrTy_PrimTyp_26" { i32 7, i32 0 }
@"$TyDescr_Bystr_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Bystr_Prim_53" to i8*) }
@"$TyDescr_Bystr3_Prim_55" = global %"$TyDescrTy_PrimTyp_26" { i32 8, i32 3 }
@"$TyDescr_Bystr3_56" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Bystr3_Prim_55" to i8*) }
@"$TyDescr_Bystr2_Prim_57" = global %"$TyDescrTy_PrimTyp_26" { i32 8, i32 2 }
@"$TyDescr_Bystr2_58" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Bystr2_Prim_57" to i8*) }
@"$TyDescr_ADT_Bool_62" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_59"* @"$TyDescr_Bool_ADTTyp_Specl_73" to i8*) }
@"$TyDescr_Bool_ADTTyp_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_75", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_59"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_59"*], [1 x %"$TyDescrTy_ADTTyp_Specl_59"*]* @"$TyDescr_Bool_ADTTyp_m_specls_74", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_65" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_66" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_61" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_66", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_68" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_69" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_61" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_69", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_71" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_61"*] [%"$TyDescrTy_ADTTyp_Constr_61"* @"$TyDescr_Bool_True_ADTTyp_Constr_67", %"$TyDescrTy_ADTTyp_Constr_61"* @"$TyDescr_Bool_False_ADTTyp_Constr_70"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_72" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_59" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_61"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_61"*], [2 x %"$TyDescrTy_ADTTyp_Constr_61"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_60"* @"$TyDescr_Bool_ADTTyp_64" }
@"$TyDescr_Bool_ADTTyp_m_specls_74" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_59"*] [%"$TyDescrTy_ADTTyp_Specl_59"* @"$TyDescr_Bool_ADTTyp_Specl_73"]
@"$TyDescr_ADT_Bool_75" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.orb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.negb = global { %TName_Bool* (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$stringlit_336" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_347" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_358" = unnamed_addr constant [5 x i8] c"Hello"

define internal %TName_Bool* @"$fundef_15"(%"$$fundef_15_env_76"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$retval_16" = alloca %TName_Bool*, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 2, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %entry
  %"$consume_167" = sub i64 %"$gasrem_163", 2
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$b_tag_169" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_170" = load i8, i8* %"$b_tag_169", align 1
  switch i8 %"$b_tag_170", label %"$empty_default_171" [
    i8 0, label %"$True_172"
    i8 1, label %"$False_182"
  ], !dbg !9

"$True_172":                                      ; preds = %"$have_gas_166"
  %"$b_173" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$True_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$True_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$adtval_179_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_179_salloc" = call i8* @_salloc(i8* %"$adtval_179_load", i64 1)
  %"$adtval_179" = bitcast i8* %"$adtval_179_salloc" to %CName_False*
  %"$adtgep_180" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_179", i32 0, i32 0
  store i8 1, i8* %"$adtgep_180", align 1
  %"$adtptr_181" = bitcast %CName_False* %"$adtval_179" to %TName_Bool*
  store %TName_Bool* %"$adtptr_181", %TName_Bool** %"$retval_16", align 8, !dbg !10
  br label %"$matchsucc_168"

"$False_182":                                     ; preds = %"$have_gas_166"
  %"$b_183" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$False_182"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$False_182"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$adtval_189_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_189_salloc" = call i8* @_salloc(i8* %"$adtval_189_load", i64 1)
  %"$adtval_189" = bitcast i8* %"$adtval_189_salloc" to %CName_True*
  %"$adtgep_190" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_189", i32 0, i32 0
  store i8 0, i8* %"$adtgep_190", align 1
  %"$adtptr_191" = bitcast %CName_True* %"$adtval_189" to %TName_Bool*
  store %TName_Bool* %"$adtptr_191", %TName_Bool** %"$retval_16", align 8, !dbg !13
  br label %"$matchsucc_168"

"$empty_default_171":                             ; preds = %"$have_gas_166"
  br label %"$matchsucc_168"

"$matchsucc_168":                                 ; preds = %"$have_gas_187", %"$have_gas_177", %"$empty_default_171"
  %"$$retval_16_192" = load %TName_Bool*, %TName_Bool** %"$retval_16", align 8
  ret %TName_Bool* %"$$retval_16_192"
}

define internal %TName_Bool* @"$fundef_19"(%"$$fundef_19_env_77"* %0, %TName_Bool* %1) !dbg !15 {
entry:
  %"$$fundef_19_env_b_133" = getelementptr inbounds %"$$fundef_19_env_77", %"$$fundef_19_env_77"* %0, i32 0, i32 0
  %"$b_envload_134" = load %TName_Bool*, %TName_Bool** %"$$fundef_19_env_b_133", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_134", %TName_Bool** %b, align 8
  %"$retval_20" = alloca %TName_Bool*, align 8
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 2, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %entry
  %"$consume_139" = sub i64 %"$gasrem_135", 2
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %"$b_141" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_142" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_141", i32 0, i32 0
  %"$b_tag_143" = load i8, i8* %"$b_tag_142", align 1
  switch i8 %"$b_tag_143", label %"$empty_default_144" [
    i8 0, label %"$True_145"
    i8 1, label %"$False_155"
  ], !dbg !16

"$True_145":                                      ; preds = %"$have_gas_138"
  %"$b_146" = bitcast %TName_Bool* %"$b_141" to %CName_True*
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$True_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$True_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %"$adtval_152_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_152_salloc" = call i8* @_salloc(i8* %"$adtval_152_load", i64 1)
  %"$adtval_152" = bitcast i8* %"$adtval_152_salloc" to %CName_True*
  %"$adtgep_153" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_152", i32 0, i32 0
  store i8 0, i8* %"$adtgep_153", align 1
  %"$adtptr_154" = bitcast %CName_True* %"$adtval_152" to %TName_Bool*
  store %TName_Bool* %"$adtptr_154", %TName_Bool** %"$retval_20", align 8, !dbg !17
  br label %"$matchsucc_140"

"$False_155":                                     ; preds = %"$have_gas_138"
  %"$b_156" = bitcast %TName_Bool* %"$b_141" to %CName_False*
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$False_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$False_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_20", align 8, !dbg !20
  br label %"$matchsucc_140"

"$empty_default_144":                             ; preds = %"$have_gas_138"
  br label %"$matchsucc_140"

"$matchsucc_140":                                 ; preds = %"$have_gas_160", %"$have_gas_150", %"$empty_default_144"
  %"$$retval_20_162" = load %TName_Bool*, %TName_Bool** %"$retval_20", align 8
  ret %TName_Bool* %"$$retval_20_162"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_17"(%"$$fundef_17_env_78"* %0, %TName_Bool* %1) !dbg !22 {
entry:
  %"$retval_18" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %entry
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem, align 8
  %"$$fundef_19_envp_127_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_19_envp_127_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_127_load", i64 8)
  %"$$fundef_19_envp_127" = bitcast i8* %"$$fundef_19_envp_127_salloc" to %"$$fundef_19_env_77"*
  %"$$fundef_19_env_voidp_129" = bitcast %"$$fundef_19_env_77"* %"$$fundef_19_envp_127" to i8*
  %"$$fundef_19_cloval_130" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_19_env_77"*, %TName_Bool*)* @"$fundef_19" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_19_env_voidp_129", 1
  %"$$fundef_19_env_b_131" = getelementptr inbounds %"$$fundef_19_env_77", %"$$fundef_19_env_77"* %"$$fundef_19_envp_127", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_19_env_b_131", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_19_cloval_130", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18", align 8, !dbg !23
  %"$$retval_18_132" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_18_132"
}

define internal %TName_Bool* @"$fundef_23"(%"$$fundef_23_env_79"* %0, %TName_Bool* %1) !dbg !24 {
entry:
  %"$$fundef_23_env_b_92" = getelementptr inbounds %"$$fundef_23_env_79", %"$$fundef_23_env_79"* %0, i32 0, i32 0
  %"$b_envload_93" = load %TName_Bool*, %TName_Bool** %"$$fundef_23_env_b_92", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_93", %TName_Bool** %b, align 8
  %"$retval_24" = alloca %TName_Bool*, align 8
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 2, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %entry
  %"$consume_98" = sub i64 %"$gasrem_94", 2
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %"$b_100" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_101" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_100", i32 0, i32 0
  %"$b_tag_102" = load i8, i8* %"$b_tag_101", align 1
  switch i8 %"$b_tag_102", label %"$empty_default_103" [
    i8 1, label %"$False_104"
    i8 0, label %"$True_114"
  ], !dbg !25

"$False_104":                                     ; preds = %"$have_gas_97"
  %"$b_105" = bitcast %TName_Bool* %"$b_100" to %CName_False*
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$False_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$False_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$adtval_111_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_111_salloc" = call i8* @_salloc(i8* %"$adtval_111_load", i64 1)
  %"$adtval_111" = bitcast i8* %"$adtval_111_salloc" to %CName_False*
  %"$adtgep_112" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_111", i32 0, i32 0
  store i8 1, i8* %"$adtgep_112", align 1
  %"$adtptr_113" = bitcast %CName_False* %"$adtval_111" to %TName_Bool*
  store %TName_Bool* %"$adtptr_113", %TName_Bool** %"$retval_24", align 8, !dbg !26
  br label %"$matchsucc_99"

"$True_114":                                      ; preds = %"$have_gas_97"
  %"$b_115" = bitcast %TName_Bool* %"$b_100" to %CName_True*
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$True_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$True_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_24", align 8, !dbg !29
  br label %"$matchsucc_99"

"$empty_default_103":                             ; preds = %"$have_gas_97"
  br label %"$matchsucc_99"

"$matchsucc_99":                                  ; preds = %"$have_gas_119", %"$have_gas_109", %"$empty_default_103"
  %"$$retval_24_121" = load %TName_Bool*, %TName_Bool** %"$retval_24", align 8
  ret %TName_Bool* %"$$retval_24_121"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_21"(%"$$fundef_21_env_80"* %0, %TName_Bool* %1) !dbg !31 {
entry:
  %"$retval_22" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_81" = load i64, i64* @_gasrem, align 8
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %entry
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem, align 8
  %"$$fundef_23_envp_86_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_23_envp_86_salloc" = call i8* @_salloc(i8* %"$$fundef_23_envp_86_load", i64 8)
  %"$$fundef_23_envp_86" = bitcast i8* %"$$fundef_23_envp_86_salloc" to %"$$fundef_23_env_79"*
  %"$$fundef_23_env_voidp_88" = bitcast %"$$fundef_23_env_79"* %"$$fundef_23_envp_86" to i8*
  %"$$fundef_23_cloval_89" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_23_env_79"*, %TName_Bool*)* @"$fundef_23" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_23_env_voidp_88", 1
  %"$$fundef_23_env_b_90" = getelementptr inbounds %"$$fundef_23_env_79", %"$$fundef_23_env_79"* %"$$fundef_23_envp_86", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_23_env_b_90", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_23_cloval_89", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_22", align 8, !dbg !32
  %"$$retval_22_91" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_22", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_22_91"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !33 {
entry:
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !35 {
entry:
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %entry
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_21_env_80"*, %TName_Bool*)* @"$fundef_21" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !36
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 1, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %"$have_gas_196"
  %"$consume_205" = sub i64 %"$gasrem_201", 1
  store i64 %"$consume_205", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_17_env_78"*, %TName_Bool*)* @"$fundef_17" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8, !dbg !37
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_204"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_15_env_76"*, %TName_Bool*)* @"$fundef_15" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8, !dbg !38
  %"$expr_25" = alloca %TName_Bool*, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_212"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_220"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_225"
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_230"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_230"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 1, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_235"
  %"$consume_241" = sub i64 %"$gasrem_237", 1
  store i64 %"$consume_241", i64* @_gasrem, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_240"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 1, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_250"
  %"$consume_256" = sub i64 %"$gasrem_252", 1
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_255"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_260"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_265"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_270"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %ui256a = alloca %Uint128, align 8
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  store %Uint128 { i128 11 }, %Uint128* %ui256a, align 8, !dbg !39
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 1, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_290"
  %"$consume_296" = sub i64 %"$gasrem_292", 1
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_295"
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_300"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %b9 = alloca %TName_Bool*, align 8
  %"$execptr_load_312" = load i8*, i8** @_execptr, align 8
  %"$ui256a_313" = load %Uint128, %Uint128* %ui256a, align 8
  %"$ui256a_314" = load %Uint128, %Uint128* %ui256a, align 8
  %"$eq_call_315" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_312", %Uint128 %"$ui256a_313", %Uint128 %"$ui256a_314")
  store %TName_Bool* %"$eq_call_315", %TName_Bool** %b9, align 8, !dbg !40
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_310"
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 1, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_319"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_319"
  %"$consume_325" = sub i64 %"$gasrem_321", 1
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_324"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_336", i32 0, i32 0), i32 5 }, %String* %s1, align 8, !dbg !41
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_334"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %"$have_gas_340"
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_347", i32 0, i32 0), i32 5 }, %String* %s2, align 8, !dbg !42
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_345"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_345"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %s11 = alloca %String, align 8
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_351"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_358", i32 0, i32 0), i32 5 }, %String* %s11, align 8, !dbg !43
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_356"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %b12 = alloca %TName_Bool*, align 8
  %"$execptr_load_364" = load i8*, i8** @_execptr, align 8
  %"$s1_365" = load %String, %String* %s1, align 8
  %"$s2_366" = load %String, %String* %s2, align 8
  %"$eq_call_367" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_364", %String %"$s1_365", %String %"$s2_366")
  store %TName_Bool* %"$eq_call_367", %TName_Bool** %b12, align 8, !dbg !44
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_362"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %b13 = alloca %TName_Bool*, align 8
  %"$execptr_load_373" = load i8*, i8** @_execptr, align 8
  %"$s1_374" = load %String, %String* %s1, align 8
  %"$s11_375" = load %String, %String* %s11, align 8
  %"$eq_call_376" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_373", %String %"$s1_374", %String %"$s11_375")
  store %TName_Bool* %"$eq_call_376", %TName_Bool** %b13, align 8, !dbg !45
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_371"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %b14 = alloca %TName_Bool*, align 8
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_380"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %"$BoolUtils.andb_1" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_387" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_388" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_387", 0
  %"$BoolUtils.andb_envptr_389" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_387", 1
  %"$b9_390" = load %TName_Bool*, %TName_Bool** %b9, align 8
  %"$BoolUtils.andb_call_391" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_388"(i8* %"$BoolUtils.andb_envptr_389", %TName_Bool* %"$b9_390"), !dbg !46
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_391", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_1", align 8, !dbg !46
  %"$BoolUtils.andb_2" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_1_392" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_1", align 8
  %"$$BoolUtils.andb_1_fptr_393" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_1_392", 0
  %"$$BoolUtils.andb_1_envptr_394" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_1_392", 1
  %"$b12_395" = load %TName_Bool*, %TName_Bool** %b12, align 8
  %"$$BoolUtils.andb_1_call_396" = call %TName_Bool* %"$$BoolUtils.andb_1_fptr_393"(i8* %"$$BoolUtils.andb_1_envptr_394", %TName_Bool* %"$b12_395"), !dbg !46
  store %TName_Bool* %"$$BoolUtils.andb_1_call_396", %TName_Bool** %"$BoolUtils.andb_2", align 8, !dbg !46
  %"$$BoolUtils.andb_2_397" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_2", align 8
  store %TName_Bool* %"$$BoolUtils.andb_2_397", %TName_Bool** %b14, align 8, !dbg !46
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_385"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %b15 = alloca %TName_Bool*, align 8
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_401"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %"$BoolUtils.orb_3" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_408" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_409" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_408", 0
  %"$BoolUtils.orb_envptr_410" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_408", 1
  %"$b13_411" = load %TName_Bool*, %TName_Bool** %b13, align 8
  %"$BoolUtils.orb_call_412" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_409"(i8* %"$BoolUtils.orb_envptr_410", %TName_Bool* %"$b13_411"), !dbg !47
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_412", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_3", align 8, !dbg !47
  %"$BoolUtils.orb_4" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_3_413" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_3", align 8
  %"$$BoolUtils.orb_3_fptr_414" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_3_413", 0
  %"$$BoolUtils.orb_3_envptr_415" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_3_413", 1
  %"$b14_416" = load %TName_Bool*, %TName_Bool** %b14, align 8
  %"$$BoolUtils.orb_3_call_417" = call %TName_Bool* %"$$BoolUtils.orb_3_fptr_414"(i8* %"$$BoolUtils.orb_3_envptr_415", %TName_Bool* %"$b14_416"), !dbg !47
  store %TName_Bool* %"$$BoolUtils.orb_3_call_417", %TName_Bool** %"$BoolUtils.orb_4", align 8, !dbg !47
  %"$$BoolUtils.orb_4_418" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_4", align 8
  store %TName_Bool* %"$$BoolUtils.orb_4_418", %TName_Bool** %b15, align 8, !dbg !47
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_406"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %bs1 = alloca [2 x i8], align 1
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs1, align 1, !dbg !48
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_427"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %bs2 = alloca [2 x i8], align 1
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_432"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\00", [2 x i8]* %bs2, align 1, !dbg !49
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %bs11 = alloca [2 x i8], align 1
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs11, align 1, !dbg !50
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %b16 = alloca %TName_Bool*, align 8
  %"$execptr_load_454" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_455" = alloca [2 x i8], align 1
  %"$bs1_456" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_456", [2 x i8]* %"$eq_bs1_455", align 1
  %"$$eq_bs1_455_457" = bitcast [2 x i8]* %"$eq_bs1_455" to i8*
  %"$eq_bs2_458" = alloca [2 x i8], align 1
  %"$bs2_459" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_459", [2 x i8]* %"$eq_bs2_458", align 1
  %"$$eq_bs2_458_460" = bitcast [2 x i8]* %"$eq_bs2_458" to i8*
  %"$eq_call_461" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_454", i32 2, i8* %"$$eq_bs1_455_457", i8* %"$$eq_bs2_458_460")
  store %TName_Bool* %"$eq_call_461", %TName_Bool** %b16, align 8, !dbg !51
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_452"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %b17 = alloca %TName_Bool*, align 8
  %"$execptr_load_467" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_468" = alloca [2 x i8], align 1
  %"$bs1_469" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_469", [2 x i8]* %"$eq_bs1_468", align 1
  %"$$eq_bs1_468_470" = bitcast [2 x i8]* %"$eq_bs1_468" to i8*
  %"$eq_bs11_471" = alloca [2 x i8], align 1
  %"$bs11_472" = load [2 x i8], [2 x i8]* %bs11, align 1
  store [2 x i8] %"$bs11_472", [2 x i8]* %"$eq_bs11_471", align 1
  %"$$eq_bs11_471_473" = bitcast [2 x i8]* %"$eq_bs11_471" to i8*
  %"$eq_call_474" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_467", i32 2, i8* %"$$eq_bs1_468_470", i8* %"$$eq_bs11_471_473")
  store %TName_Bool* %"$eq_call_474", %TName_Bool** %b17, align 8, !dbg !52
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_465"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %b18 = alloca %TName_Bool*, align 8
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_478"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %"$BoolUtils.orb_5" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_485" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_486" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_485", 0
  %"$BoolUtils.orb_envptr_487" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_485", 1
  %"$b16_488" = load %TName_Bool*, %TName_Bool** %b16, align 8
  %"$BoolUtils.orb_call_489" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_486"(i8* %"$BoolUtils.orb_envptr_487", %TName_Bool* %"$b16_488"), !dbg !53
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_489", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_5", align 8, !dbg !53
  %"$BoolUtils.orb_6" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_5_490" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_5", align 8
  %"$$BoolUtils.orb_5_fptr_491" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_5_490", 0
  %"$$BoolUtils.orb_5_envptr_492" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_5_490", 1
  %"$b17_493" = load %TName_Bool*, %TName_Bool** %b17, align 8
  %"$$BoolUtils.orb_5_call_494" = call %TName_Bool* %"$$BoolUtils.orb_5_fptr_491"(i8* %"$$BoolUtils.orb_5_envptr_492", %TName_Bool* %"$b17_493"), !dbg !53
  store %TName_Bool* %"$$BoolUtils.orb_5_call_494", %TName_Bool** %"$BoolUtils.orb_6", align 8, !dbg !53
  %"$$BoolUtils.orb_6_495" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_6", align 8
  store %TName_Bool* %"$$BoolUtils.orb_6_495", %TName_Bool** %b18, align 8, !dbg !53
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 1, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_483"
  %"$consume_500" = sub i64 %"$gasrem_496", 1
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %b19 = alloca %TName_Bool*, align 8
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_499"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_499"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %"$BoolUtils.andb_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_506" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_507" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_506", 0
  %"$BoolUtils.andb_envptr_508" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_506", 1
  %"$b18_509" = load %TName_Bool*, %TName_Bool** %b18, align 8
  %"$BoolUtils.andb_call_510" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_507"(i8* %"$BoolUtils.andb_envptr_508", %TName_Bool* %"$b18_509"), !dbg !54
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_510", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8, !dbg !54
  %"$BoolUtils.andb_8" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_7_511" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$$BoolUtils.andb_7_fptr_512" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_511", 0
  %"$$BoolUtils.andb_7_envptr_513" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_511", 1
  %"$b15_514" = load %TName_Bool*, %TName_Bool** %b15, align 8
  %"$$BoolUtils.andb_7_call_515" = call %TName_Bool* %"$$BoolUtils.andb_7_fptr_512"(i8* %"$$BoolUtils.andb_7_envptr_513", %TName_Bool* %"$b15_514"), !dbg !54
  store %TName_Bool* %"$$BoolUtils.andb_7_call_515", %TName_Bool** %"$BoolUtils.andb_8", align 8, !dbg !54
  %"$$BoolUtils.andb_8_516" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_8", align 8
  store %TName_Bool* %"$$BoolUtils.andb_8_516", %TName_Bool** %b19, align 8, !dbg !54
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 1, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_504"
  %"$consume_521" = sub i64 %"$gasrem_517", 1
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %bs3 = alloca [3 x i8], align 1
  %"$gasrem_522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_523" = icmp ugt i64 1, %"$gasrem_522"
  br i1 %"$gascmp_523", label %"$out_of_gas_524", label %"$have_gas_525"

"$out_of_gas_524":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_525"

"$have_gas_525":                                  ; preds = %"$out_of_gas_524", %"$have_gas_520"
  %"$consume_526" = sub i64 %"$gasrem_522", 1
  store i64 %"$consume_526", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0F", [3 x i8]* %bs3, align 1, !dbg !55
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 1, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %"$have_gas_525"
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %"$have_gas_525"
  %"$consume_531" = sub i64 %"$gasrem_527", 1
  store i64 %"$consume_531", i64* @_gasrem, align 8
  %bs4 = alloca [3 x i8], align 1
  %"$gasrem_532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_533" = icmp ugt i64 1, %"$gasrem_532"
  br i1 %"$gascmp_533", label %"$out_of_gas_534", label %"$have_gas_535"

"$out_of_gas_534":                                ; preds = %"$have_gas_530"
  call void @_out_of_gas()
  br label %"$have_gas_535"

"$have_gas_535":                                  ; preds = %"$out_of_gas_534", %"$have_gas_530"
  %"$consume_536" = sub i64 %"$gasrem_532", 1
  store i64 %"$consume_536", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0E", [3 x i8]* %bs4, align 1, !dbg !56
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 1, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_535"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_535"
  %"$consume_541" = sub i64 %"$gasrem_537", 1
  store i64 %"$consume_541", i64* @_gasrem, align 8
  %b20 = alloca %TName_Bool*, align 8
  %"$execptr_load_542" = load i8*, i8** @_execptr, align 8
  %"$eq_bs3_543" = alloca [3 x i8], align 1
  %"$bs3_544" = load [3 x i8], [3 x i8]* %bs3, align 1
  store [3 x i8] %"$bs3_544", [3 x i8]* %"$eq_bs3_543", align 1
  %"$$eq_bs3_543_545" = bitcast [3 x i8]* %"$eq_bs3_543" to i8*
  %"$eq_bs4_546" = alloca [3 x i8], align 1
  %"$bs4_547" = load [3 x i8], [3 x i8]* %bs4, align 1
  store [3 x i8] %"$bs4_547", [3 x i8]* %"$eq_bs4_546", align 1
  %"$$eq_bs4_546_548" = bitcast [3 x i8]* %"$eq_bs4_546" to i8*
  %"$eq_call_549" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_542", i32 3, i8* %"$$eq_bs3_543_545", i8* %"$$eq_bs4_546_548")
  store %TName_Bool* %"$eq_call_549", %TName_Bool** %b20, align 8, !dbg !57
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 1, %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %"$have_gas_540"
  %"$consume_554" = sub i64 %"$gasrem_550", 1
  store i64 %"$consume_554", i64* @_gasrem, align 8
  %b21 = alloca %TName_Bool*, align 8
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$have_gas_553"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$have_gas_553"
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  %"$BoolUtils.negb_9" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_560" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_561" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_560", 0
  %"$BoolUtils.negb_envptr_562" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_560", 1
  %"$b20_563" = load %TName_Bool*, %TName_Bool** %b20, align 8
  %"$BoolUtils.negb_call_564" = call %TName_Bool* %"$BoolUtils.negb_fptr_561"(i8* %"$BoolUtils.negb_envptr_562", %TName_Bool* %"$b20_563"), !dbg !58
  store %TName_Bool* %"$BoolUtils.negb_call_564", %TName_Bool** %"$BoolUtils.negb_9", align 8, !dbg !58
  %"$$BoolUtils.negb_9_565" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_9", align 8
  store %TName_Bool* %"$$BoolUtils.negb_9_565", %TName_Bool** %b21, align 8, !dbg !58
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_558"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_558"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %b22 = alloca %TName_Bool*, align 8
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_569"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  %"$BoolUtils.andb_10" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_576" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_577" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_576", 0
  %"$BoolUtils.andb_envptr_578" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_576", 1
  %"$b19_579" = load %TName_Bool*, %TName_Bool** %b19, align 8
  %"$BoolUtils.andb_call_580" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_577"(i8* %"$BoolUtils.andb_envptr_578", %TName_Bool* %"$b19_579"), !dbg !59
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_580", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_10", align 8, !dbg !59
  %"$BoolUtils.andb_11" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_10_581" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_10", align 8
  %"$$BoolUtils.andb_10_fptr_582" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_10_581", 0
  %"$$BoolUtils.andb_10_envptr_583" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_10_581", 1
  %"$b21_584" = load %TName_Bool*, %TName_Bool** %b21, align 8
  %"$$BoolUtils.andb_10_call_585" = call %TName_Bool* %"$$BoolUtils.andb_10_fptr_582"(i8* %"$$BoolUtils.andb_10_envptr_583", %TName_Bool* %"$b21_584"), !dbg !59
  store %TName_Bool* %"$$BoolUtils.andb_10_call_585", %TName_Bool** %"$BoolUtils.andb_11", align 8, !dbg !59
  %"$$BoolUtils.andb_11_586" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_11", align 8
  store %TName_Bool* %"$$BoolUtils.andb_11_586", %TName_Bool** %b22, align 8, !dbg !59
  %"$gasrem_587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_588" = icmp ugt i64 1, %"$gasrem_587"
  br i1 %"$gascmp_588", label %"$out_of_gas_589", label %"$have_gas_590"

"$out_of_gas_589":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_590"

"$have_gas_590":                                  ; preds = %"$out_of_gas_589", %"$have_gas_574"
  %"$consume_591" = sub i64 %"$gasrem_587", 1
  store i64 %"$consume_591", i64* @_gasrem, align 8
  %"$bs11_0" = alloca %Bystr, align 8
  %"$execptr_load_592" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs1_593" = alloca [2 x i8], align 1
  %"$bs1_594" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_594", [2 x i8]* %"$to_bystr_bs1_593", align 1
  %"$$to_bystr_bs1_593_595" = bitcast [2 x i8]* %"$to_bystr_bs1_593" to i8*
  %"$to_bystr_call_596" = call %Bystr @_to_bystr(i8* %"$execptr_load_592", i32 2, i8* %"$$to_bystr_bs1_593_595")
  store %Bystr %"$to_bystr_call_596", %Bystr* %"$bs11_0", align 8, !dbg !60
  %"$gasrem_597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_598" = icmp ugt i64 1, %"$gasrem_597"
  br i1 %"$gascmp_598", label %"$out_of_gas_599", label %"$have_gas_600"

"$out_of_gas_599":                                ; preds = %"$have_gas_590"
  call void @_out_of_gas()
  br label %"$have_gas_600"

"$have_gas_600":                                  ; preds = %"$out_of_gas_599", %"$have_gas_590"
  %"$consume_601" = sub i64 %"$gasrem_597", 1
  store i64 %"$consume_601", i64* @_gasrem, align 8
  %bs22 = alloca %Bystr, align 8
  %"$execptr_load_602" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs2_603" = alloca [2 x i8], align 1
  %"$bs2_604" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_604", [2 x i8]* %"$to_bystr_bs2_603", align 1
  %"$$to_bystr_bs2_603_605" = bitcast [2 x i8]* %"$to_bystr_bs2_603" to i8*
  %"$to_bystr_call_606" = call %Bystr @_to_bystr(i8* %"$execptr_load_602", i32 2, i8* %"$$to_bystr_bs2_603_605")
  store %Bystr %"$to_bystr_call_606", %Bystr* %bs22, align 8, !dbg !61
  %"$gasrem_607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_608" = icmp ugt i64 1, %"$gasrem_607"
  br i1 %"$gascmp_608", label %"$out_of_gas_609", label %"$have_gas_610"

"$out_of_gas_609":                                ; preds = %"$have_gas_600"
  call void @_out_of_gas()
  br label %"$have_gas_610"

"$have_gas_610":                                  ; preds = %"$out_of_gas_609", %"$have_gas_600"
  %"$consume_611" = sub i64 %"$gasrem_607", 1
  store i64 %"$consume_611", i64* @_gasrem, align 8
  %b23 = alloca %TName_Bool*, align 8
  %"$execptr_load_612" = load i8*, i8** @_execptr, align 8
  %"$$bs11_0_613" = load %Bystr, %Bystr* %"$bs11_0", align 8
  %"$bs22_614" = load %Bystr, %Bystr* %bs22, align 8
  %"$eq_call_615" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_612", %Bystr %"$$bs11_0_613", %Bystr %"$bs22_614")
  store %TName_Bool* %"$eq_call_615", %TName_Bool** %b23, align 8, !dbg !62
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %"$have_gas_610"
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %"$have_gas_610"
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %b24 = alloca %TName_Bool*, align 8
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_619"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  %"$BoolUtils.negb_12" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_626" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_627" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_626", 0
  %"$BoolUtils.negb_envptr_628" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_626", 1
  %"$b23_629" = load %TName_Bool*, %TName_Bool** %b23, align 8
  %"$BoolUtils.negb_call_630" = call %TName_Bool* %"$BoolUtils.negb_fptr_627"(i8* %"$BoolUtils.negb_envptr_628", %TName_Bool* %"$b23_629"), !dbg !63
  store %TName_Bool* %"$BoolUtils.negb_call_630", %TName_Bool** %"$BoolUtils.negb_12", align 8, !dbg !63
  %"$$BoolUtils.negb_12_631" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_12", align 8
  store %TName_Bool* %"$$BoolUtils.negb_12_631", %TName_Bool** %b24, align 8, !dbg !63
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_624"
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %b25 = alloca %TName_Bool*, align 8
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 1, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_635"
  %"$consume_641" = sub i64 %"$gasrem_637", 1
  store i64 %"$consume_641", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_642" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_643" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_642", 0
  %"$BoolUtils.andb_envptr_644" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_642", 1
  %"$b22_645" = load %TName_Bool*, %TName_Bool** %b22, align 8
  %"$BoolUtils.andb_call_646" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_643"(i8* %"$BoolUtils.andb_envptr_644", %TName_Bool* %"$b22_645"), !dbg !64
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_646", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8, !dbg !64
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_13_647" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_648" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_647", 0
  %"$$BoolUtils.andb_13_envptr_649" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_647", 1
  %"$b24_650" = load %TName_Bool*, %TName_Bool** %b24, align 8
  %"$$BoolUtils.andb_13_call_651" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_648"(i8* %"$$BoolUtils.andb_13_envptr_649", %TName_Bool* %"$b24_650"), !dbg !64
  store %TName_Bool* %"$$BoolUtils.andb_13_call_651", %TName_Bool** %"$BoolUtils.andb_14", align 8, !dbg !64
  %"$$BoolUtils.andb_14_652" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_652", %TName_Bool** %b25, align 8, !dbg !64
  %"$gasrem_653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_654" = icmp ugt i64 1, %"$gasrem_653"
  br i1 %"$gascmp_654", label %"$out_of_gas_655", label %"$have_gas_656"

"$out_of_gas_655":                                ; preds = %"$have_gas_640"
  call void @_out_of_gas()
  br label %"$have_gas_656"

"$have_gas_656":                                  ; preds = %"$out_of_gas_655", %"$have_gas_640"
  %"$consume_657" = sub i64 %"$gasrem_653", 1
  store i64 %"$consume_657", i64* @_gasrem, align 8
  %"$b25_658" = load %TName_Bool*, %TName_Bool** %b25, align 8
  store %TName_Bool* %"$b25_658", %TName_Bool** %"$expr_25", align 8, !dbg !65
  %"$$expr_25_659" = load %TName_Bool*, %TName_Bool** %"$expr_25", align 8
  ret %TName_Bool* %"$$expr_25_659"
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare %TName_Bool* @_eq_String(i8*, %String, %String)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %TName_Bool* @_eq_ByStr(i8*, %Bystr, %Bystr)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_660" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_661" = bitcast %TName_Bool* %"$exprval_660" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_62", i8* %"$memvoidcast_661")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_eq.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !5, file: !5, line: 22, type: !6, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 22, column: 5, scope: !4)
!10 = !DILocation(line: 23, column: 15, scope: !11)
!11 = distinct !DILexicalBlock(scope: !12, file: !5, line: 23, column: 7)
!12 = distinct !DILexicalBlock(scope: !4, file: !5, line: 22, column: 5)
!13 = !DILocation(line: 24, column: 16, scope: !14)
!14 = distinct !DILexicalBlock(scope: !12, file: !5, line: 24, column: 7)
!15 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !5, file: !5, line: 15, type: !6, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 15, column: 5, scope: !15)
!17 = !DILocation(line: 16, column: 16, scope: !18)
!18 = distinct !DILexicalBlock(scope: !19, file: !5, line: 16, column: 7)
!19 = distinct !DILexicalBlock(scope: !15, file: !5, line: 15, column: 5)
!20 = !DILocation(line: 17, column: 16, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !5, line: 17, column: 7)
!22 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !5, file: !5, line: 14, type: !6, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DILocation(line: 15, column: 5, scope: !22)
!24 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 8, column: 5, scope: !24)
!26 = !DILocation(line: 9, column: 16, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !5, line: 9, column: 7)
!28 = distinct !DILexicalBlock(scope: !24, file: !5, line: 8, column: 5)
!29 = !DILocation(line: 10, column: 16, scope: !30)
!30 = distinct !DILexicalBlock(scope: !28, file: !5, line: 10, column: 7)
!31 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 8, column: 5, scope: !31)
!33 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !34, file: !34, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!34 = !DIFile(filename: ".", directory: ".")
!35 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!36 = !DILocation(line: 7, column: 3, scope: !35)
!37 = !DILocation(line: 14, column: 21, scope: !35)
!38 = !DILocation(line: 22, column: 5, scope: !35)
!39 = !DILocation(line: 16, column: 14, scope: !35)
!40 = !DILocation(line: 20, column: 10, scope: !35)
!41 = !DILocation(line: 24, column: 16, scope: !35)
!42 = !DILocation(line: 25, column: 16, scope: !35)
!43 = !DILocation(line: 26, column: 17, scope: !35)
!44 = !DILocation(line: 27, column: 11, scope: !35)
!45 = !DILocation(line: 28, column: 11, scope: !35)
!46 = !DILocation(line: 29, column: 11, scope: !35)
!47 = !DILocation(line: 30, column: 11, scope: !35)
!48 = !DILocation(line: 32, column: 11, scope: !35)
!49 = !DILocation(line: 33, column: 11, scope: !35)
!50 = !DILocation(line: 34, column: 12, scope: !35)
!51 = !DILocation(line: 35, column: 11, scope: !35)
!52 = !DILocation(line: 36, column: 11, scope: !35)
!53 = !DILocation(line: 37, column: 11, scope: !35)
!54 = !DILocation(line: 38, column: 11, scope: !35)
!55 = !DILocation(line: 40, column: 11, scope: !35)
!56 = !DILocation(line: 41, column: 11, scope: !35)
!57 = !DILocation(line: 42, column: 11, scope: !35)
!58 = !DILocation(line: 43, column: 11, scope: !35)
!59 = !DILocation(line: 44, column: 11, scope: !35)
!60 = !DILocation(line: 46, column: 12, scope: !35)
!61 = !DILocation(line: 47, column: 12, scope: !35)
!62 = !DILocation(line: 48, column: 11, scope: !35)
!63 = !DILocation(line: 49, column: 11, scope: !35)
!64 = !DILocation(line: 50, column: 11, scope: !35)
!65 = !DILocation(line: 52, column: 1, scope: !35)
