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
target triple = "x86_64-pc-linux-gnu"

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
@"$stringlit_337" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_348" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_359" = unnamed_addr constant [5 x i8] c"Hello"

define internal %TName_Bool* @"$fundef_15"(%"$$fundef_15_env_76"* %0, %TName_Bool* %1) {
entry:
  %"$retval_16" = alloca %TName_Bool*
  %"$gasrem_163" = load i64, i64* @_gasrem
  %"$gascmp_164" = icmp ugt i64 2, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %entry
  %"$consume_167" = sub i64 %"$gasrem_163", 2
  store i64 %"$consume_167", i64* @_gasrem
  %"$b_tag_169" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_170" = load i8, i8* %"$b_tag_169"
  switch i8 %"$b_tag_170", label %"$empty_default_171" [
    i8 0, label %"$True_172"
    i8 1, label %"$False_182"
  ]

"$True_172":                                      ; preds = %"$have_gas_166"
  %"$b_173" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_174" = load i64, i64* @_gasrem
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$True_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$True_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem
  %"$adtval_179_load" = load i8*, i8** @_execptr
  %"$adtval_179_salloc" = call i8* @_salloc(i8* %"$adtval_179_load", i64 1)
  %"$adtval_179" = bitcast i8* %"$adtval_179_salloc" to %CName_False*
  %"$adtgep_180" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_179", i32 0, i32 0
  store i8 1, i8* %"$adtgep_180"
  %"$adtptr_181" = bitcast %CName_False* %"$adtval_179" to %TName_Bool*
  store %TName_Bool* %"$adtptr_181", %TName_Bool** %"$retval_16"
  br label %"$matchsucc_168"

"$False_182":                                     ; preds = %"$have_gas_166"
  %"$b_183" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_184" = load i64, i64* @_gasrem
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$False_182"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$False_182"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem
  %"$adtval_189_load" = load i8*, i8** @_execptr
  %"$adtval_189_salloc" = call i8* @_salloc(i8* %"$adtval_189_load", i64 1)
  %"$adtval_189" = bitcast i8* %"$adtval_189_salloc" to %CName_True*
  %"$adtgep_190" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_189", i32 0, i32 0
  store i8 0, i8* %"$adtgep_190"
  %"$adtptr_191" = bitcast %CName_True* %"$adtval_189" to %TName_Bool*
  store %TName_Bool* %"$adtptr_191", %TName_Bool** %"$retval_16"
  br label %"$matchsucc_168"

"$empty_default_171":                             ; preds = %"$have_gas_166"
  br label %"$matchsucc_168"

"$matchsucc_168":                                 ; preds = %"$have_gas_187", %"$have_gas_177", %"$empty_default_171"
  %"$$retval_16_192" = load %TName_Bool*, %TName_Bool** %"$retval_16"
  ret %TName_Bool* %"$$retval_16_192"
}

define internal %TName_Bool* @"$fundef_19"(%"$$fundef_19_env_77"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_19_env_b_133" = getelementptr inbounds %"$$fundef_19_env_77", %"$$fundef_19_env_77"* %0, i32 0, i32 0
  %"$b_envload_134" = load %TName_Bool*, %TName_Bool** %"$$fundef_19_env_b_133"
  %b = alloca %TName_Bool*
  store %TName_Bool* %"$b_envload_134", %TName_Bool** %b
  %"$retval_20" = alloca %TName_Bool*
  %"$gasrem_135" = load i64, i64* @_gasrem
  %"$gascmp_136" = icmp ugt i64 2, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %entry
  %"$consume_139" = sub i64 %"$gasrem_135", 2
  store i64 %"$consume_139", i64* @_gasrem
  %"$b_141" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_142" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_141", i32 0, i32 0
  %"$b_tag_143" = load i8, i8* %"$b_tag_142"
  switch i8 %"$b_tag_143", label %"$empty_default_144" [
    i8 0, label %"$True_145"
    i8 1, label %"$False_155"
  ]

"$True_145":                                      ; preds = %"$have_gas_138"
  %"$b_146" = bitcast %TName_Bool* %"$b_141" to %CName_True*
  %"$gasrem_147" = load i64, i64* @_gasrem
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$True_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$True_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem
  %"$adtval_152_load" = load i8*, i8** @_execptr
  %"$adtval_152_salloc" = call i8* @_salloc(i8* %"$adtval_152_load", i64 1)
  %"$adtval_152" = bitcast i8* %"$adtval_152_salloc" to %CName_True*
  %"$adtgep_153" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_152", i32 0, i32 0
  store i8 0, i8* %"$adtgep_153"
  %"$adtptr_154" = bitcast %CName_True* %"$adtval_152" to %TName_Bool*
  store %TName_Bool* %"$adtptr_154", %TName_Bool** %"$retval_20"
  br label %"$matchsucc_140"

"$False_155":                                     ; preds = %"$have_gas_138"
  %"$b_156" = bitcast %TName_Bool* %"$b_141" to %CName_False*
  %"$gasrem_157" = load i64, i64* @_gasrem
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$False_155"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$False_155"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem
  store %TName_Bool* %1, %TName_Bool** %"$retval_20"
  br label %"$matchsucc_140"

"$empty_default_144":                             ; preds = %"$have_gas_138"
  br label %"$matchsucc_140"

"$matchsucc_140":                                 ; preds = %"$have_gas_160", %"$have_gas_150", %"$empty_default_144"
  %"$$retval_20_162" = load %TName_Bool*, %TName_Bool** %"$retval_20"
  ret %TName_Bool* %"$$retval_20_162"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_17"(%"$$fundef_17_env_78"* %0, %TName_Bool* %1) {
entry:
  %"$retval_18" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_122" = load i64, i64* @_gasrem
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %entry
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem
  %"$$fundef_19_envp_127_load" = load i8*, i8** @_execptr
  %"$$fundef_19_envp_127_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_127_load", i64 8)
  %"$$fundef_19_envp_127" = bitcast i8* %"$$fundef_19_envp_127_salloc" to %"$$fundef_19_env_77"*
  %"$$fundef_19_env_voidp_129" = bitcast %"$$fundef_19_env_77"* %"$$fundef_19_envp_127" to i8*
  %"$$fundef_19_cloval_130" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_19_env_77"*, %TName_Bool*)* @"$fundef_19" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_19_env_voidp_129", 1
  %"$$fundef_19_env_b_131" = getelementptr inbounds %"$$fundef_19_env_77", %"$$fundef_19_env_77"* %"$$fundef_19_envp_127", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_19_env_b_131"
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_19_cloval_130", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18"
  %"$$retval_18_132" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18"
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_18_132"
}

define internal %TName_Bool* @"$fundef_23"(%"$$fundef_23_env_79"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_23_env_b_92" = getelementptr inbounds %"$$fundef_23_env_79", %"$$fundef_23_env_79"* %0, i32 0, i32 0
  %"$b_envload_93" = load %TName_Bool*, %TName_Bool** %"$$fundef_23_env_b_92"
  %b = alloca %TName_Bool*
  store %TName_Bool* %"$b_envload_93", %TName_Bool** %b
  %"$retval_24" = alloca %TName_Bool*
  %"$gasrem_94" = load i64, i64* @_gasrem
  %"$gascmp_95" = icmp ugt i64 2, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %entry
  %"$consume_98" = sub i64 %"$gasrem_94", 2
  store i64 %"$consume_98", i64* @_gasrem
  %"$b_100" = load %TName_Bool*, %TName_Bool** %b
  %"$b_tag_101" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_100", i32 0, i32 0
  %"$b_tag_102" = load i8, i8* %"$b_tag_101"
  switch i8 %"$b_tag_102", label %"$empty_default_103" [
    i8 1, label %"$False_104"
    i8 0, label %"$True_114"
  ]

"$False_104":                                     ; preds = %"$have_gas_97"
  %"$b_105" = bitcast %TName_Bool* %"$b_100" to %CName_False*
  %"$gasrem_106" = load i64, i64* @_gasrem
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$False_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$False_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem
  %"$adtval_111_load" = load i8*, i8** @_execptr
  %"$adtval_111_salloc" = call i8* @_salloc(i8* %"$adtval_111_load", i64 1)
  %"$adtval_111" = bitcast i8* %"$adtval_111_salloc" to %CName_False*
  %"$adtgep_112" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_111", i32 0, i32 0
  store i8 1, i8* %"$adtgep_112"
  %"$adtptr_113" = bitcast %CName_False* %"$adtval_111" to %TName_Bool*
  store %TName_Bool* %"$adtptr_113", %TName_Bool** %"$retval_24"
  br label %"$matchsucc_99"

"$True_114":                                      ; preds = %"$have_gas_97"
  %"$b_115" = bitcast %TName_Bool* %"$b_100" to %CName_True*
  %"$gasrem_116" = load i64, i64* @_gasrem
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$True_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$True_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem
  store %TName_Bool* %1, %TName_Bool** %"$retval_24"
  br label %"$matchsucc_99"

"$empty_default_103":                             ; preds = %"$have_gas_97"
  br label %"$matchsucc_99"

"$matchsucc_99":                                  ; preds = %"$have_gas_119", %"$have_gas_109", %"$empty_default_103"
  %"$$retval_24_121" = load %TName_Bool*, %TName_Bool** %"$retval_24"
  ret %TName_Bool* %"$$retval_24_121"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_21"(%"$$fundef_21_env_80"* %0, %TName_Bool* %1) {
entry:
  %"$retval_22" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_81" = load i64, i64* @_gasrem
  %"$gascmp_82" = icmp ugt i64 1, %"$gasrem_81"
  br i1 %"$gascmp_82", label %"$out_of_gas_83", label %"$have_gas_84"

"$out_of_gas_83":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_84"

"$have_gas_84":                                   ; preds = %"$out_of_gas_83", %entry
  %"$consume_85" = sub i64 %"$gasrem_81", 1
  store i64 %"$consume_85", i64* @_gasrem
  %"$$fundef_23_envp_86_load" = load i8*, i8** @_execptr
  %"$$fundef_23_envp_86_salloc" = call i8* @_salloc(i8* %"$$fundef_23_envp_86_load", i64 8)
  %"$$fundef_23_envp_86" = bitcast i8* %"$$fundef_23_envp_86_salloc" to %"$$fundef_23_env_79"*
  %"$$fundef_23_env_voidp_88" = bitcast %"$$fundef_23_env_79"* %"$$fundef_23_envp_86" to i8*
  %"$$fundef_23_cloval_89" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_23_env_79"*, %TName_Bool*)* @"$fundef_23" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_23_env_voidp_88", 1
  %"$$fundef_23_env_b_90" = getelementptr inbounds %"$$fundef_23_env_79", %"$$fundef_23_env_79"* %"$$fundef_23_envp_86", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_23_env_b_90"
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_23_cloval_89", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_22"
  %"$$retval_22_91" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_22"
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_22_91"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Bool* @"$scilla_expr_193"(i8* %0) {
entry:
  %"$gasrem_194" = load i64, i64* @_gasrem
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %entry
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_21_env_80"*, %TName_Bool*)* @"$fundef_21" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  %"$gasrem_202" = load i64, i64* @_gasrem
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_197"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_17_env_78"*, %TName_Bool*)* @"$fundef_17" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb
  %"$gasrem_210" = load i64, i64* @_gasrem
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_205"
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_15_env_76"*, %TName_Bool*)* @"$fundef_15" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb
  %"$expr_25" = alloca %TName_Bool*
  %"$gasrem_218" = load i64, i64* @_gasrem
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_213"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem
  %"$gasrem_223" = load i64, i64* @_gasrem
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_221"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem
  %"$gasrem_228" = load i64, i64* @_gasrem
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem
  %"$gasrem_233" = load i64, i64* @_gasrem
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem
  %"$gasrem_238" = load i64, i64* @_gasrem
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem
  %"$gasrem_243" = load i64, i64* @_gasrem
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_241"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem
  %"$gasrem_248" = load i64, i64* @_gasrem
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem
  %"$gasrem_253" = load i64, i64* @_gasrem
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem
  %"$gasrem_258" = load i64, i64* @_gasrem
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_256"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem
  %"$gasrem_263" = load i64, i64* @_gasrem
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_261"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem
  %"$gasrem_268" = load i64, i64* @_gasrem
  %"$gascmp_269" = icmp ugt i64 1, %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %"$have_gas_266"
  %"$consume_272" = sub i64 %"$gasrem_268", 1
  store i64 %"$consume_272", i64* @_gasrem
  %"$gasrem_273" = load i64, i64* @_gasrem
  %"$gascmp_274" = icmp ugt i64 1, %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %"$have_gas_271"
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %"$have_gas_271"
  %"$consume_277" = sub i64 %"$gasrem_273", 1
  store i64 %"$consume_277", i64* @_gasrem
  %"$gasrem_278" = load i64, i64* @_gasrem
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_276"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_276"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem
  %"$gasrem_283" = load i64, i64* @_gasrem
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_281"
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem
  %ui256a = alloca %Uint128
  %"$gasrem_288" = load i64, i64* @_gasrem
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$have_gas_286"
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem
  store %Uint128 { i128 11 }, %Uint128* %ui256a
  %"$gasrem_293" = load i64, i64* @_gasrem
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_291"
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem
  %"$gasrem_298" = load i64, i64* @_gasrem
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_296"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem
  %"$gasrem_303" = load i64, i64* @_gasrem
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_301"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem
  %"$gasrem_308" = load i64, i64* @_gasrem
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_306"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem
  %b9 = alloca %TName_Bool*
  %"$execptr_load_313" = load i8*, i8** @_execptr
  %"$ui256a_314" = load %Uint128, %Uint128* %ui256a
  %"$ui256a_315" = load %Uint128, %Uint128* %ui256a
  %"$eq_call_316" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_313", %Uint128 %"$ui256a_314", %Uint128 %"$ui256a_315")
  store %TName_Bool* %"$eq_call_316", %TName_Bool** %b9
  %"$gasrem_317" = load i64, i64* @_gasrem
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_311"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem
  %"$gasrem_322" = load i64, i64* @_gasrem
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_320"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem
  %"$gasrem_327" = load i64, i64* @_gasrem
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_325"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem
  %s1 = alloca %String
  %"$gasrem_332" = load i64, i64* @_gasrem
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_330"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_337", i32 0, i32 0), i32 5 }, %String* %s1
  %"$gasrem_338" = load i64, i64* @_gasrem
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_335"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem
  %s2 = alloca %String
  %"$gasrem_343" = load i64, i64* @_gasrem
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_341"
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_348", i32 0, i32 0), i32 5 }, %String* %s2
  %"$gasrem_349" = load i64, i64* @_gasrem
  %"$gascmp_350" = icmp ugt i64 1, %"$gasrem_349"
  br i1 %"$gascmp_350", label %"$out_of_gas_351", label %"$have_gas_352"

"$out_of_gas_351":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_352"

"$have_gas_352":                                  ; preds = %"$out_of_gas_351", %"$have_gas_346"
  %"$consume_353" = sub i64 %"$gasrem_349", 1
  store i64 %"$consume_353", i64* @_gasrem
  %s11 = alloca %String
  %"$gasrem_354" = load i64, i64* @_gasrem
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_352"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_352"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_359", i32 0, i32 0), i32 5 }, %String* %s11
  %"$gasrem_360" = load i64, i64* @_gasrem
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_357"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem
  %b12 = alloca %TName_Bool*
  %"$execptr_load_365" = load i8*, i8** @_execptr
  %"$s1_366" = load %String, %String* %s1
  %"$s2_367" = load %String, %String* %s2
  %"$eq_call_368" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_365", %String %"$s1_366", %String %"$s2_367")
  store %TName_Bool* %"$eq_call_368", %TName_Bool** %b12
  %"$gasrem_369" = load i64, i64* @_gasrem
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_363"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem
  %b13 = alloca %TName_Bool*
  %"$execptr_load_374" = load i8*, i8** @_execptr
  %"$s1_375" = load %String, %String* %s1
  %"$s11_376" = load %String, %String* %s11
  %"$eq_call_377" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_374", %String %"$s1_375", %String %"$s11_376")
  store %TName_Bool* %"$eq_call_377", %TName_Bool** %b13
  %"$gasrem_378" = load i64, i64* @_gasrem
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_372"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem
  %b14 = alloca %TName_Bool*
  %"$gasrem_383" = load i64, i64* @_gasrem
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_381"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem
  %"$BoolUtils.andb_1" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.andb_388" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  %"$BoolUtils.andb_fptr_389" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_388", 0
  %"$BoolUtils.andb_envptr_390" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_388", 1
  %"$b9_391" = load %TName_Bool*, %TName_Bool** %b9
  %"$BoolUtils.andb_call_392" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_389"(i8* %"$BoolUtils.andb_envptr_390", %TName_Bool* %"$b9_391")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_392", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_1"
  %"$BoolUtils.andb_2" = alloca %TName_Bool*
  %"$$BoolUtils.andb_1_393" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_1"
  %"$$BoolUtils.andb_1_fptr_394" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_1_393", 0
  %"$$BoolUtils.andb_1_envptr_395" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_1_393", 1
  %"$b12_396" = load %TName_Bool*, %TName_Bool** %b12
  %"$$BoolUtils.andb_1_call_397" = call %TName_Bool* %"$$BoolUtils.andb_1_fptr_394"(i8* %"$$BoolUtils.andb_1_envptr_395", %TName_Bool* %"$b12_396")
  store %TName_Bool* %"$$BoolUtils.andb_1_call_397", %TName_Bool** %"$BoolUtils.andb_2"
  %"$$BoolUtils.andb_2_398" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_2"
  store %TName_Bool* %"$$BoolUtils.andb_2_398", %TName_Bool** %b14
  %"$gasrem_399" = load i64, i64* @_gasrem
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_386"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem
  %b15 = alloca %TName_Bool*
  %"$gasrem_404" = load i64, i64* @_gasrem
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_402"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem
  %"$BoolUtils.orb_3" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.orb_409" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb
  %"$BoolUtils.orb_fptr_410" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_409", 0
  %"$BoolUtils.orb_envptr_411" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_409", 1
  %"$b13_412" = load %TName_Bool*, %TName_Bool** %b13
  %"$BoolUtils.orb_call_413" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_410"(i8* %"$BoolUtils.orb_envptr_411", %TName_Bool* %"$b13_412")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_413", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_3"
  %"$BoolUtils.orb_4" = alloca %TName_Bool*
  %"$$BoolUtils.orb_3_414" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_3"
  %"$$BoolUtils.orb_3_fptr_415" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_3_414", 0
  %"$$BoolUtils.orb_3_envptr_416" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_3_414", 1
  %"$b14_417" = load %TName_Bool*, %TName_Bool** %b14
  %"$$BoolUtils.orb_3_call_418" = call %TName_Bool* %"$$BoolUtils.orb_3_fptr_415"(i8* %"$$BoolUtils.orb_3_envptr_416", %TName_Bool* %"$b14_417")
  store %TName_Bool* %"$$BoolUtils.orb_3_call_418", %TName_Bool** %"$BoolUtils.orb_4"
  %"$$BoolUtils.orb_4_419" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_4"
  store %TName_Bool* %"$$BoolUtils.orb_4_419", %TName_Bool** %b15
  %"$gasrem_420" = load i64, i64* @_gasrem
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_407"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem
  %bs1 = alloca [2 x i8]
  %"$gasrem_425" = load i64, i64* @_gasrem
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem
  store [2 x i8] c"\00\FF", [2 x i8]* %bs1
  %"$gasrem_430" = load i64, i64* @_gasrem
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem
  %bs2 = alloca [2 x i8]
  %"$gasrem_435" = load i64, i64* @_gasrem
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_433"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem
  store [2 x i8] c"\FF\00", [2 x i8]* %bs2
  %"$gasrem_440" = load i64, i64* @_gasrem
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_438"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem
  %bs11 = alloca [2 x i8]
  %"$gasrem_445" = load i64, i64* @_gasrem
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_443"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem
  store [2 x i8] c"\00\FF", [2 x i8]* %bs11
  %"$gasrem_450" = load i64, i64* @_gasrem
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_448"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem
  %b16 = alloca %TName_Bool*
  %"$execptr_load_455" = load i8*, i8** @_execptr
  %"$eq_bs1_456" = alloca [2 x i8]
  %"$bs1_457" = load [2 x i8], [2 x i8]* %bs1
  store [2 x i8] %"$bs1_457", [2 x i8]* %"$eq_bs1_456"
  %"$$eq_bs1_456_458" = bitcast [2 x i8]* %"$eq_bs1_456" to i8*
  %"$eq_bs2_459" = alloca [2 x i8]
  %"$bs2_460" = load [2 x i8], [2 x i8]* %bs2
  store [2 x i8] %"$bs2_460", [2 x i8]* %"$eq_bs2_459"
  %"$$eq_bs2_459_461" = bitcast [2 x i8]* %"$eq_bs2_459" to i8*
  %"$eq_call_462" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_455", i32 2, i8* %"$$eq_bs1_456_458", i8* %"$$eq_bs2_459_461")
  store %TName_Bool* %"$eq_call_462", %TName_Bool** %b16
  %"$gasrem_463" = load i64, i64* @_gasrem
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_453"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem
  %b17 = alloca %TName_Bool*
  %"$execptr_load_468" = load i8*, i8** @_execptr
  %"$eq_bs1_469" = alloca [2 x i8]
  %"$bs1_470" = load [2 x i8], [2 x i8]* %bs1
  store [2 x i8] %"$bs1_470", [2 x i8]* %"$eq_bs1_469"
  %"$$eq_bs1_469_471" = bitcast [2 x i8]* %"$eq_bs1_469" to i8*
  %"$eq_bs11_472" = alloca [2 x i8]
  %"$bs11_473" = load [2 x i8], [2 x i8]* %bs11
  store [2 x i8] %"$bs11_473", [2 x i8]* %"$eq_bs11_472"
  %"$$eq_bs11_472_474" = bitcast [2 x i8]* %"$eq_bs11_472" to i8*
  %"$eq_call_475" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_468", i32 2, i8* %"$$eq_bs1_469_471", i8* %"$$eq_bs11_472_474")
  store %TName_Bool* %"$eq_call_475", %TName_Bool** %b17
  %"$gasrem_476" = load i64, i64* @_gasrem
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_466"
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem
  %b18 = alloca %TName_Bool*
  %"$gasrem_481" = load i64, i64* @_gasrem
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_479"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_479"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem
  %"$BoolUtils.orb_5" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.orb_486" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb
  %"$BoolUtils.orb_fptr_487" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_486", 0
  %"$BoolUtils.orb_envptr_488" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_486", 1
  %"$b16_489" = load %TName_Bool*, %TName_Bool** %b16
  %"$BoolUtils.orb_call_490" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_487"(i8* %"$BoolUtils.orb_envptr_488", %TName_Bool* %"$b16_489")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_490", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_5"
  %"$BoolUtils.orb_6" = alloca %TName_Bool*
  %"$$BoolUtils.orb_5_491" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_5"
  %"$$BoolUtils.orb_5_fptr_492" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_5_491", 0
  %"$$BoolUtils.orb_5_envptr_493" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_5_491", 1
  %"$b17_494" = load %TName_Bool*, %TName_Bool** %b17
  %"$$BoolUtils.orb_5_call_495" = call %TName_Bool* %"$$BoolUtils.orb_5_fptr_492"(i8* %"$$BoolUtils.orb_5_envptr_493", %TName_Bool* %"$b17_494")
  store %TName_Bool* %"$$BoolUtils.orb_5_call_495", %TName_Bool** %"$BoolUtils.orb_6"
  %"$$BoolUtils.orb_6_496" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_6"
  store %TName_Bool* %"$$BoolUtils.orb_6_496", %TName_Bool** %b18
  %"$gasrem_497" = load i64, i64* @_gasrem
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_484"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem
  %b19 = alloca %TName_Bool*
  %"$gasrem_502" = load i64, i64* @_gasrem
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_500"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_500"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem
  %"$BoolUtils.andb_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.andb_507" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  %"$BoolUtils.andb_fptr_508" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_507", 0
  %"$BoolUtils.andb_envptr_509" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_507", 1
  %"$b18_510" = load %TName_Bool*, %TName_Bool** %b18
  %"$BoolUtils.andb_call_511" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_508"(i8* %"$BoolUtils.andb_envptr_509", %TName_Bool* %"$b18_510")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_511", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7"
  %"$BoolUtils.andb_8" = alloca %TName_Bool*
  %"$$BoolUtils.andb_7_512" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7"
  %"$$BoolUtils.andb_7_fptr_513" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_512", 0
  %"$$BoolUtils.andb_7_envptr_514" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_512", 1
  %"$b15_515" = load %TName_Bool*, %TName_Bool** %b15
  %"$$BoolUtils.andb_7_call_516" = call %TName_Bool* %"$$BoolUtils.andb_7_fptr_513"(i8* %"$$BoolUtils.andb_7_envptr_514", %TName_Bool* %"$b15_515")
  store %TName_Bool* %"$$BoolUtils.andb_7_call_516", %TName_Bool** %"$BoolUtils.andb_8"
  %"$$BoolUtils.andb_8_517" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_8"
  store %TName_Bool* %"$$BoolUtils.andb_8_517", %TName_Bool** %b19
  %"$gasrem_518" = load i64, i64* @_gasrem
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_505"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem
  %bs3 = alloca [3 x i8]
  %"$gasrem_523" = load i64, i64* @_gasrem
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_521"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem
  store [3 x i8] c"\0F\0F\0F", [3 x i8]* %bs3
  %"$gasrem_528" = load i64, i64* @_gasrem
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_526"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem
  %bs4 = alloca [3 x i8]
  %"$gasrem_533" = load i64, i64* @_gasrem
  %"$gascmp_534" = icmp ugt i64 1, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %"$have_gas_531"
  %"$consume_537" = sub i64 %"$gasrem_533", 1
  store i64 %"$consume_537", i64* @_gasrem
  store [3 x i8] c"\0F\0F\0E", [3 x i8]* %bs4
  %"$gasrem_538" = load i64, i64* @_gasrem
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_536"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_536"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem
  %b20 = alloca %TName_Bool*
  %"$execptr_load_543" = load i8*, i8** @_execptr
  %"$eq_bs3_544" = alloca [3 x i8]
  %"$bs3_545" = load [3 x i8], [3 x i8]* %bs3
  store [3 x i8] %"$bs3_545", [3 x i8]* %"$eq_bs3_544"
  %"$$eq_bs3_544_546" = bitcast [3 x i8]* %"$eq_bs3_544" to i8*
  %"$eq_bs4_547" = alloca [3 x i8]
  %"$bs4_548" = load [3 x i8], [3 x i8]* %bs4
  store [3 x i8] %"$bs4_548", [3 x i8]* %"$eq_bs4_547"
  %"$$eq_bs4_547_549" = bitcast [3 x i8]* %"$eq_bs4_547" to i8*
  %"$eq_call_550" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_543", i32 3, i8* %"$$eq_bs3_544_546", i8* %"$$eq_bs4_547_549")
  store %TName_Bool* %"$eq_call_550", %TName_Bool** %b20
  %"$gasrem_551" = load i64, i64* @_gasrem
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_541"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem
  %b21 = alloca %TName_Bool*
  %"$gasrem_556" = load i64, i64* @_gasrem
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_554"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem
  %"$BoolUtils.negb_9" = alloca %TName_Bool*
  %"$BoolUtils.negb_561" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb
  %"$BoolUtils.negb_fptr_562" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_561", 0
  %"$BoolUtils.negb_envptr_563" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_561", 1
  %"$b20_564" = load %TName_Bool*, %TName_Bool** %b20
  %"$BoolUtils.negb_call_565" = call %TName_Bool* %"$BoolUtils.negb_fptr_562"(i8* %"$BoolUtils.negb_envptr_563", %TName_Bool* %"$b20_564")
  store %TName_Bool* %"$BoolUtils.negb_call_565", %TName_Bool** %"$BoolUtils.negb_9"
  %"$$BoolUtils.negb_9_566" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_9"
  store %TName_Bool* %"$$BoolUtils.negb_9_566", %TName_Bool** %b21
  %"$gasrem_567" = load i64, i64* @_gasrem
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_559"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem
  %b22 = alloca %TName_Bool*
  %"$gasrem_572" = load i64, i64* @_gasrem
  %"$gascmp_573" = icmp ugt i64 1, %"$gasrem_572"
  br i1 %"$gascmp_573", label %"$out_of_gas_574", label %"$have_gas_575"

"$out_of_gas_574":                                ; preds = %"$have_gas_570"
  call void @_out_of_gas()
  br label %"$have_gas_575"

"$have_gas_575":                                  ; preds = %"$out_of_gas_574", %"$have_gas_570"
  %"$consume_576" = sub i64 %"$gasrem_572", 1
  store i64 %"$consume_576", i64* @_gasrem
  %"$BoolUtils.andb_10" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.andb_577" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  %"$BoolUtils.andb_fptr_578" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_577", 0
  %"$BoolUtils.andb_envptr_579" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_577", 1
  %"$b19_580" = load %TName_Bool*, %TName_Bool** %b19
  %"$BoolUtils.andb_call_581" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_578"(i8* %"$BoolUtils.andb_envptr_579", %TName_Bool* %"$b19_580")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_581", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_10"
  %"$BoolUtils.andb_11" = alloca %TName_Bool*
  %"$$BoolUtils.andb_10_582" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_10"
  %"$$BoolUtils.andb_10_fptr_583" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_10_582", 0
  %"$$BoolUtils.andb_10_envptr_584" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_10_582", 1
  %"$b21_585" = load %TName_Bool*, %TName_Bool** %b21
  %"$$BoolUtils.andb_10_call_586" = call %TName_Bool* %"$$BoolUtils.andb_10_fptr_583"(i8* %"$$BoolUtils.andb_10_envptr_584", %TName_Bool* %"$b21_585")
  store %TName_Bool* %"$$BoolUtils.andb_10_call_586", %TName_Bool** %"$BoolUtils.andb_11"
  %"$$BoolUtils.andb_11_587" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_11"
  store %TName_Bool* %"$$BoolUtils.andb_11_587", %TName_Bool** %b22
  %"$gasrem_588" = load i64, i64* @_gasrem
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_575"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_575"
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem
  %"$bs11_0" = alloca %Bystr
  %"$execptr_load_593" = load i8*, i8** @_execptr
  %"$to_bystr_bs1_594" = alloca [2 x i8]
  %"$bs1_595" = load [2 x i8], [2 x i8]* %bs1
  store [2 x i8] %"$bs1_595", [2 x i8]* %"$to_bystr_bs1_594"
  %"$$to_bystr_bs1_594_596" = bitcast [2 x i8]* %"$to_bystr_bs1_594" to i8*
  %"$to_bystr_call_597" = call %Bystr @_to_bystr(i8* %"$execptr_load_593", i32 2, i8* %"$$to_bystr_bs1_594_596")
  store %Bystr %"$to_bystr_call_597", %Bystr* %"$bs11_0"
  %"$gasrem_598" = load i64, i64* @_gasrem
  %"$gascmp_599" = icmp ugt i64 1, %"$gasrem_598"
  br i1 %"$gascmp_599", label %"$out_of_gas_600", label %"$have_gas_601"

"$out_of_gas_600":                                ; preds = %"$have_gas_591"
  call void @_out_of_gas()
  br label %"$have_gas_601"

"$have_gas_601":                                  ; preds = %"$out_of_gas_600", %"$have_gas_591"
  %"$consume_602" = sub i64 %"$gasrem_598", 1
  store i64 %"$consume_602", i64* @_gasrem
  %bs22 = alloca %Bystr
  %"$execptr_load_603" = load i8*, i8** @_execptr
  %"$to_bystr_bs2_604" = alloca [2 x i8]
  %"$bs2_605" = load [2 x i8], [2 x i8]* %bs2
  store [2 x i8] %"$bs2_605", [2 x i8]* %"$to_bystr_bs2_604"
  %"$$to_bystr_bs2_604_606" = bitcast [2 x i8]* %"$to_bystr_bs2_604" to i8*
  %"$to_bystr_call_607" = call %Bystr @_to_bystr(i8* %"$execptr_load_603", i32 2, i8* %"$$to_bystr_bs2_604_606")
  store %Bystr %"$to_bystr_call_607", %Bystr* %bs22
  %"$gasrem_608" = load i64, i64* @_gasrem
  %"$gascmp_609" = icmp ugt i64 1, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_601"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_601"
  %"$consume_612" = sub i64 %"$gasrem_608", 1
  store i64 %"$consume_612", i64* @_gasrem
  %b23 = alloca %TName_Bool*
  %"$execptr_load_613" = load i8*, i8** @_execptr
  %"$$bs11_0_614" = load %Bystr, %Bystr* %"$bs11_0"
  %"$bs22_615" = load %Bystr, %Bystr* %bs22
  %"$eq_call_616" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_613", %Bystr %"$$bs11_0_614", %Bystr %"$bs22_615")
  store %TName_Bool* %"$eq_call_616", %TName_Bool** %b23
  %"$gasrem_617" = load i64, i64* @_gasrem
  %"$gascmp_618" = icmp ugt i64 1, %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %"$have_gas_611"
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %"$have_gas_611"
  %"$consume_621" = sub i64 %"$gasrem_617", 1
  store i64 %"$consume_621", i64* @_gasrem
  %b24 = alloca %TName_Bool*
  %"$gasrem_622" = load i64, i64* @_gasrem
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %"$have_gas_620"
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %"$have_gas_620"
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem
  %"$BoolUtils.negb_12" = alloca %TName_Bool*
  %"$BoolUtils.negb_627" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb
  %"$BoolUtils.negb_fptr_628" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_627", 0
  %"$BoolUtils.negb_envptr_629" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_627", 1
  %"$b23_630" = load %TName_Bool*, %TName_Bool** %b23
  %"$BoolUtils.negb_call_631" = call %TName_Bool* %"$BoolUtils.negb_fptr_628"(i8* %"$BoolUtils.negb_envptr_629", %TName_Bool* %"$b23_630")
  store %TName_Bool* %"$BoolUtils.negb_call_631", %TName_Bool** %"$BoolUtils.negb_12"
  %"$$BoolUtils.negb_12_632" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_12"
  store %TName_Bool* %"$$BoolUtils.negb_12_632", %TName_Bool** %b24
  %"$gasrem_633" = load i64, i64* @_gasrem
  %"$gascmp_634" = icmp ugt i64 1, %"$gasrem_633"
  br i1 %"$gascmp_634", label %"$out_of_gas_635", label %"$have_gas_636"

"$out_of_gas_635":                                ; preds = %"$have_gas_625"
  call void @_out_of_gas()
  br label %"$have_gas_636"

"$have_gas_636":                                  ; preds = %"$out_of_gas_635", %"$have_gas_625"
  %"$consume_637" = sub i64 %"$gasrem_633", 1
  store i64 %"$consume_637", i64* @_gasrem
  %b25 = alloca %TName_Bool*
  %"$gasrem_638" = load i64, i64* @_gasrem
  %"$gascmp_639" = icmp ugt i64 1, %"$gasrem_638"
  br i1 %"$gascmp_639", label %"$out_of_gas_640", label %"$have_gas_641"

"$out_of_gas_640":                                ; preds = %"$have_gas_636"
  call void @_out_of_gas()
  br label %"$have_gas_641"

"$have_gas_641":                                  ; preds = %"$out_of_gas_640", %"$have_gas_636"
  %"$consume_642" = sub i64 %"$gasrem_638", 1
  store i64 %"$consume_642", i64* @_gasrem
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }
  %"$BoolUtils.andb_643" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb
  %"$BoolUtils.andb_fptr_644" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_643", 0
  %"$BoolUtils.andb_envptr_645" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_643", 1
  %"$b22_646" = load %TName_Bool*, %TName_Bool** %b22
  %"$BoolUtils.andb_call_647" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_644"(i8* %"$BoolUtils.andb_envptr_645", %TName_Bool* %"$b22_646")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_647", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13"
  %"$BoolUtils.andb_14" = alloca %TName_Bool*
  %"$$BoolUtils.andb_13_648" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13"
  %"$$BoolUtils.andb_13_fptr_649" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_648", 0
  %"$$BoolUtils.andb_13_envptr_650" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_648", 1
  %"$b24_651" = load %TName_Bool*, %TName_Bool** %b24
  %"$$BoolUtils.andb_13_call_652" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_649"(i8* %"$$BoolUtils.andb_13_envptr_650", %TName_Bool* %"$b24_651")
  store %TName_Bool* %"$$BoolUtils.andb_13_call_652", %TName_Bool** %"$BoolUtils.andb_14"
  %"$$BoolUtils.andb_14_653" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14"
  store %TName_Bool* %"$$BoolUtils.andb_14_653", %TName_Bool** %b25
  %"$gasrem_654" = load i64, i64* @_gasrem
  %"$gascmp_655" = icmp ugt i64 1, %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_641"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_641"
  %"$consume_658" = sub i64 %"$gasrem_654", 1
  store i64 %"$consume_658", i64* @_gasrem
  %"$b25_659" = load %TName_Bool*, %TName_Bool** %b25
  store %TName_Bool* %"$b25_659", %TName_Bool** %"$expr_25"
  %"$$expr_25_660" = load %TName_Bool*, %TName_Bool** %"$expr_25"
  ret %TName_Bool* %"$$expr_25_660"
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare %TName_Bool* @_eq_String(i8*, %String, %String)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %TName_Bool* @_eq_ByStr(i8*, %Bystr, %Bystr)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_661" = call %TName_Bool* @"$scilla_expr_193"(i8* null)
  %"$memvoidcast_662" = bitcast %TName_Bool* %"$exprval_661" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_62", i8* %"$memvoidcast_662")
  ret void
}
