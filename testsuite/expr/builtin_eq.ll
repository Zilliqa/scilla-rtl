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
%"$ParamDescr_664" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_665" = type { %ParamDescrString, i32, %"$ParamDescr_664"* }
%"$$fundef_15_env_78" = type {}
%"$$fundef_19_env_79" = type { %TName_Bool* }
%"$$fundef_17_env_80" = type {}
%"$$fundef_23_env_81" = type { %TName_Bool* }
%"$$fundef_21_env_82" = type {}
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
@"$TyDescr_ADT_Bool_62" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_59"* @"$TyDescr_Bool_ADTTyp_Specl_75" to i8*) }
@"$TyDescr_Bool_ADTTyp_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_60" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_77", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_59"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_59"*], [1 x %"$TyDescrTy_ADTTyp_Specl_59"*]* @"$TyDescr_Bool_ADTTyp_m_specls_76", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_67" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_68" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_61" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_68", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_67", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_70" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_71" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_61" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_71", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_70", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_73" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_61"*] [%"$TyDescrTy_ADTTyp_Constr_61"* @"$TyDescr_Bool_True_ADTTyp_Constr_69", %"$TyDescrTy_ADTTyp_Constr_61"* @"$TyDescr_Bool_False_ADTTyp_Constr_72"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_74" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_59" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_74", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_61"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_61"*], [2 x %"$TyDescrTy_ADTTyp_Constr_61"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_73", i32 0, i32 0), %"$TyDescrTy_ADTTyp_60"* @"$TyDescr_Bool_ADTTyp_66" }
@"$TyDescr_Bool_ADTTyp_m_specls_76" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_59"*] [%"$TyDescrTy_ADTTyp_Specl_59"* @"$TyDescr_Bool_ADTTyp_Specl_75"]
@"$TyDescr_ADT_Bool_77" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.orb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.negb = global { %TName_Bool* (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$stringlit_338" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_349" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_360" = unnamed_addr constant [5 x i8] c"Hello"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_50", %_TyDescrTy_Typ* @"$TyDescr_Int64_32", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_62", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_56", %_TyDescrTy_Typ* @"$TyDescr_Uint256_42", %_TyDescrTy_Typ* @"$TyDescr_Uint32_30", %_TyDescrTy_Typ* @"$TyDescr_Uint64_34", %_TyDescrTy_Typ* @"$TyDescr_Bnum_46", %_TyDescrTy_Typ* @"$TyDescr_Uint128_38", %_TyDescrTy_Typ* @"$TyDescr_Exception_52", %_TyDescrTy_Typ* @"$TyDescr_String_44", %_TyDescrTy_Typ* @"$TyDescr_Int256_40", %_TyDescrTy_Typ* @"$TyDescr_Int128_36", %_TyDescrTy_Typ* @"$TyDescr_Bystr_54", %_TyDescrTy_Typ* @"$TyDescr_Message_48", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_58", %_TyDescrTy_Typ* @"$TyDescr_Int32_28"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_664"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_665"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_15"(%"$$fundef_15_env_78"* %0, %TName_Bool* %1) {
entry:
  %"$retval_16" = alloca %TName_Bool*, align 8
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 2, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %entry
  %"$consume_169" = sub i64 %"$gasrem_165", 2
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %"$b_tag_171" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_172" = load i8, i8* %"$b_tag_171", align 1
  switch i8 %"$b_tag_172", label %"$empty_default_173" [
    i8 0, label %"$True_174"
    i8 1, label %"$False_184"
  ]

"$True_174":                                      ; preds = %"$have_gas_168"
  %"$b_175" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$True_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$True_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %"$adtval_181_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_181_salloc" = call i8* @_salloc(i8* %"$adtval_181_load", i64 1)
  %"$adtval_181" = bitcast i8* %"$adtval_181_salloc" to %CName_False*
  %"$adtgep_182" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_181", i32 0, i32 0
  store i8 1, i8* %"$adtgep_182", align 1
  %"$adtptr_183" = bitcast %CName_False* %"$adtval_181" to %TName_Bool*
  store %TName_Bool* %"$adtptr_183", %TName_Bool** %"$retval_16", align 8
  br label %"$matchsucc_170"

"$False_184":                                     ; preds = %"$have_gas_168"
  %"$b_185" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$False_184"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$False_184"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$adtval_191_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_191_salloc" = call i8* @_salloc(i8* %"$adtval_191_load", i64 1)
  %"$adtval_191" = bitcast i8* %"$adtval_191_salloc" to %CName_True*
  %"$adtgep_192" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_191", i32 0, i32 0
  store i8 0, i8* %"$adtgep_192", align 1
  %"$adtptr_193" = bitcast %CName_True* %"$adtval_191" to %TName_Bool*
  store %TName_Bool* %"$adtptr_193", %TName_Bool** %"$retval_16", align 8
  br label %"$matchsucc_170"

"$empty_default_173":                             ; preds = %"$have_gas_168"
  br label %"$matchsucc_170"

"$matchsucc_170":                                 ; preds = %"$have_gas_189", %"$have_gas_179", %"$empty_default_173"
  %"$$retval_16_194" = load %TName_Bool*, %TName_Bool** %"$retval_16", align 8
  ret %TName_Bool* %"$$retval_16_194"
}

define internal %TName_Bool* @"$fundef_19"(%"$$fundef_19_env_79"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_19_env_b_135" = getelementptr inbounds %"$$fundef_19_env_79", %"$$fundef_19_env_79"* %0, i32 0, i32 0
  %"$b_envload_136" = load %TName_Bool*, %TName_Bool** %"$$fundef_19_env_b_135", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_136", %TName_Bool** %b, align 8
  %"$retval_20" = alloca %TName_Bool*, align 8
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 2, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %entry
  %"$consume_141" = sub i64 %"$gasrem_137", 2
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %"$b_143" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_144" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_143", i32 0, i32 0
  %"$b_tag_145" = load i8, i8* %"$b_tag_144", align 1
  switch i8 %"$b_tag_145", label %"$empty_default_146" [
    i8 0, label %"$True_147"
    i8 1, label %"$False_157"
  ]

"$True_147":                                      ; preds = %"$have_gas_140"
  %"$b_148" = bitcast %TName_Bool* %"$b_143" to %CName_True*
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$True_147"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$True_147"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %"$adtval_154_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_154_salloc" = call i8* @_salloc(i8* %"$adtval_154_load", i64 1)
  %"$adtval_154" = bitcast i8* %"$adtval_154_salloc" to %CName_True*
  %"$adtgep_155" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_154", i32 0, i32 0
  store i8 0, i8* %"$adtgep_155", align 1
  %"$adtptr_156" = bitcast %CName_True* %"$adtval_154" to %TName_Bool*
  store %TName_Bool* %"$adtptr_156", %TName_Bool** %"$retval_20", align 8
  br label %"$matchsucc_142"

"$False_157":                                     ; preds = %"$have_gas_140"
  %"$b_158" = bitcast %TName_Bool* %"$b_143" to %CName_False*
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$False_157"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$False_157"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_20", align 8
  br label %"$matchsucc_142"

"$empty_default_146":                             ; preds = %"$have_gas_140"
  br label %"$matchsucc_142"

"$matchsucc_142":                                 ; preds = %"$have_gas_162", %"$have_gas_152", %"$empty_default_146"
  %"$$retval_20_164" = load %TName_Bool*, %TName_Bool** %"$retval_20", align 8
  ret %TName_Bool* %"$$retval_20_164"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_17"(%"$$fundef_17_env_80"* %0, %TName_Bool* %1) {
entry:
  %"$retval_18" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %entry
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %"$$fundef_19_envp_129_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_19_envp_129_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_129_load", i64 8)
  %"$$fundef_19_envp_129" = bitcast i8* %"$$fundef_19_envp_129_salloc" to %"$$fundef_19_env_79"*
  %"$$fundef_19_env_voidp_131" = bitcast %"$$fundef_19_env_79"* %"$$fundef_19_envp_129" to i8*
  %"$$fundef_19_cloval_132" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_19_env_79"*, %TName_Bool*)* @"$fundef_19" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_19_env_voidp_131", 1
  %"$$fundef_19_env_b_133" = getelementptr inbounds %"$$fundef_19_env_79", %"$$fundef_19_env_79"* %"$$fundef_19_envp_129", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_19_env_b_133", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_19_cloval_132", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18", align 8
  %"$$retval_18_134" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_18_134"
}

define internal %TName_Bool* @"$fundef_23"(%"$$fundef_23_env_81"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_23_env_b_94" = getelementptr inbounds %"$$fundef_23_env_81", %"$$fundef_23_env_81"* %0, i32 0, i32 0
  %"$b_envload_95" = load %TName_Bool*, %TName_Bool** %"$$fundef_23_env_b_94", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_95", %TName_Bool** %b, align 8
  %"$retval_24" = alloca %TName_Bool*, align 8
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 2, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %entry
  %"$consume_100" = sub i64 %"$gasrem_96", 2
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %"$b_102" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_103" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_102", i32 0, i32 0
  %"$b_tag_104" = load i8, i8* %"$b_tag_103", align 1
  switch i8 %"$b_tag_104", label %"$empty_default_105" [
    i8 1, label %"$False_106"
    i8 0, label %"$True_116"
  ]

"$False_106":                                     ; preds = %"$have_gas_99"
  %"$b_107" = bitcast %TName_Bool* %"$b_102" to %CName_False*
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$False_106"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$False_106"
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %"$adtval_113_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_113_salloc" = call i8* @_salloc(i8* %"$adtval_113_load", i64 1)
  %"$adtval_113" = bitcast i8* %"$adtval_113_salloc" to %CName_False*
  %"$adtgep_114" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_113", i32 0, i32 0
  store i8 1, i8* %"$adtgep_114", align 1
  %"$adtptr_115" = bitcast %CName_False* %"$adtval_113" to %TName_Bool*
  store %TName_Bool* %"$adtptr_115", %TName_Bool** %"$retval_24", align 8
  br label %"$matchsucc_101"

"$True_116":                                      ; preds = %"$have_gas_99"
  %"$b_117" = bitcast %TName_Bool* %"$b_102" to %CName_True*
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$True_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$True_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_24", align 8
  br label %"$matchsucc_101"

"$empty_default_105":                             ; preds = %"$have_gas_99"
  br label %"$matchsucc_101"

"$matchsucc_101":                                 ; preds = %"$have_gas_121", %"$have_gas_111", %"$empty_default_105"
  %"$$retval_24_123" = load %TName_Bool*, %TName_Bool** %"$retval_24", align 8
  ret %TName_Bool* %"$$retval_24_123"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_21"(%"$$fundef_21_env_82"* %0, %TName_Bool* %1) {
entry:
  %"$retval_22" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %entry
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %"$$fundef_23_envp_88_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_23_envp_88_salloc" = call i8* @_salloc(i8* %"$$fundef_23_envp_88_load", i64 8)
  %"$$fundef_23_envp_88" = bitcast i8* %"$$fundef_23_envp_88_salloc" to %"$$fundef_23_env_81"*
  %"$$fundef_23_env_voidp_90" = bitcast %"$$fundef_23_env_81"* %"$$fundef_23_envp_88" to i8*
  %"$$fundef_23_cloval_91" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_23_env_81"*, %TName_Bool*)* @"$fundef_23" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_23_env_voidp_90", 1
  %"$$fundef_23_env_b_92" = getelementptr inbounds %"$$fundef_23_env_81", %"$$fundef_23_env_81"* %"$$fundef_23_envp_88", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_23_env_b_92", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_23_cloval_91", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_22", align 8
  %"$$retval_22_93" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_22", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_22_93"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %entry
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_21_env_82"*, %TName_Bool*)* @"$fundef_21" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_198"
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_17_env_80"*, %TName_Bool*)* @"$fundef_17" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 1, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %"$have_gas_206"
  %"$consume_215" = sub i64 %"$gasrem_211", 1
  store i64 %"$consume_215", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_15_env_78"*, %TName_Bool*)* @"$fundef_15" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$expr_25" = alloca %TName_Bool*, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_214"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_214"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_222"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_227"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_237"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_242"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_252"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_257"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_267"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_282"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %ui256a = alloca %Uint128, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  store %Uint128 { i128 11 }, %Uint128* %ui256a, align 8
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 1, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$have_gas_292"
  %"$consume_298" = sub i64 %"$gasrem_294", 1
  store i64 %"$consume_298", i64* @_gasrem, align 8
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_297"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_297"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_302"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 1, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_307"
  %"$consume_313" = sub i64 %"$gasrem_309", 1
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %b9 = alloca %TName_Bool*, align 8
  %"$execptr_load_314" = load i8*, i8** @_execptr, align 8
  %"$ui256a_315" = load %Uint128, %Uint128* %ui256a, align 8
  %"$ui256a_316" = load %Uint128, %Uint128* %ui256a, align 8
  %"$eq_call_317" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_314", %Uint128 %"$ui256a_315", %Uint128 %"$ui256a_316")
  store %TName_Bool* %"$eq_call_317", %TName_Bool** %b9, align 8
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_312"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_321"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_326"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 1, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_331"
  %"$consume_337" = sub i64 %"$gasrem_333", 1
  store i64 %"$consume_337", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_338", i32 0, i32 0), i32 5 }, %String* %s1, align 8
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$have_gas_336"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_342"
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_349", i32 0, i32 0), i32 5 }, %String* %s2, align 8
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_347"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  %s11 = alloca %String, align 8
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_353"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_360", i32 0, i32 0), i32 5 }, %String* %s11, align 8
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_358"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %b12 = alloca %TName_Bool*, align 8
  %"$execptr_load_366" = load i8*, i8** @_execptr, align 8
  %"$s1_367" = load %String, %String* %s1, align 8
  %"$s2_368" = load %String, %String* %s2, align 8
  %"$eq_call_369" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_366", %String %"$s1_367", %String %"$s2_368")
  store %TName_Bool* %"$eq_call_369", %TName_Bool** %b12, align 8
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_364"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %b13 = alloca %TName_Bool*, align 8
  %"$execptr_load_375" = load i8*, i8** @_execptr, align 8
  %"$s1_376" = load %String, %String* %s1, align 8
  %"$s11_377" = load %String, %String* %s11, align 8
  %"$eq_call_378" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_375", %String %"$s1_376", %String %"$s11_377")
  store %TName_Bool* %"$eq_call_378", %TName_Bool** %b13, align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_373"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %b14 = alloca %TName_Bool*, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %"$BoolUtils.andb_1" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_389" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_390" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_389", 0
  %"$BoolUtils.andb_envptr_391" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_389", 1
  %"$b9_392" = load %TName_Bool*, %TName_Bool** %b9, align 8
  %"$BoolUtils.andb_call_393" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_390"(i8* %"$BoolUtils.andb_envptr_391", %TName_Bool* %"$b9_392")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_393", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_1", align 8
  %"$BoolUtils.andb_2" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_1_394" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_1", align 8
  %"$$BoolUtils.andb_1_fptr_395" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_1_394", 0
  %"$$BoolUtils.andb_1_envptr_396" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_1_394", 1
  %"$b12_397" = load %TName_Bool*, %TName_Bool** %b12, align 8
  %"$$BoolUtils.andb_1_call_398" = call %TName_Bool* %"$$BoolUtils.andb_1_fptr_395"(i8* %"$$BoolUtils.andb_1_envptr_396", %TName_Bool* %"$b12_397")
  store %TName_Bool* %"$$BoolUtils.andb_1_call_398", %TName_Bool** %"$BoolUtils.andb_2", align 8
  %"$$BoolUtils.andb_2_399" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_2", align 8
  store %TName_Bool* %"$$BoolUtils.andb_2_399", %TName_Bool** %b14, align 8
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_387"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %b15 = alloca %TName_Bool*, align 8
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %"$BoolUtils.orb_3" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_410" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_411" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_410", 0
  %"$BoolUtils.orb_envptr_412" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_410", 1
  %"$b13_413" = load %TName_Bool*, %TName_Bool** %b13, align 8
  %"$BoolUtils.orb_call_414" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_411"(i8* %"$BoolUtils.orb_envptr_412", %TName_Bool* %"$b13_413")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_414", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_3", align 8
  %"$BoolUtils.orb_4" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_3_415" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_3", align 8
  %"$$BoolUtils.orb_3_fptr_416" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_3_415", 0
  %"$$BoolUtils.orb_3_envptr_417" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_3_415", 1
  %"$b14_418" = load %TName_Bool*, %TName_Bool** %b14, align 8
  %"$$BoolUtils.orb_3_call_419" = call %TName_Bool* %"$$BoolUtils.orb_3_fptr_416"(i8* %"$$BoolUtils.orb_3_envptr_417", %TName_Bool* %"$b14_418")
  store %TName_Bool* %"$$BoolUtils.orb_3_call_419", %TName_Bool** %"$BoolUtils.orb_4", align 8
  %"$$BoolUtils.orb_4_420" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_4", align 8
  store %TName_Bool* %"$$BoolUtils.orb_4_420", %TName_Bool** %b15, align 8
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_408"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %bs1 = alloca [2 x i8], align 1
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 1, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_424"
  %"$consume_430" = sub i64 %"$gasrem_426", 1
  store i64 %"$consume_430", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs1, align 1
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_429"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %bs2 = alloca [2 x i8], align 1
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_434"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\00", [2 x i8]* %bs2, align 1
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_439"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %bs11 = alloca [2 x i8], align 1
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_444"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs11, align 1
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %b16 = alloca %TName_Bool*, align 8
  %"$execptr_load_456" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_457" = alloca [2 x i8], align 1
  %"$bs1_458" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_458", [2 x i8]* %"$eq_bs1_457", align 1
  %"$$eq_bs1_457_459" = bitcast [2 x i8]* %"$eq_bs1_457" to i8*
  %"$eq_bs2_460" = alloca [2 x i8], align 1
  %"$bs2_461" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_461", [2 x i8]* %"$eq_bs2_460", align 1
  %"$$eq_bs2_460_462" = bitcast [2 x i8]* %"$eq_bs2_460" to i8*
  %"$eq_call_463" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_456", i32 2, i8* %"$$eq_bs1_457_459", i8* %"$$eq_bs2_460_462")
  store %TName_Bool* %"$eq_call_463", %TName_Bool** %b16, align 8
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_454"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %b17 = alloca %TName_Bool*, align 8
  %"$execptr_load_469" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_470" = alloca [2 x i8], align 1
  %"$bs1_471" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_471", [2 x i8]* %"$eq_bs1_470", align 1
  %"$$eq_bs1_470_472" = bitcast [2 x i8]* %"$eq_bs1_470" to i8*
  %"$eq_bs11_473" = alloca [2 x i8], align 1
  %"$bs11_474" = load [2 x i8], [2 x i8]* %bs11, align 1
  store [2 x i8] %"$bs11_474", [2 x i8]* %"$eq_bs11_473", align 1
  %"$$eq_bs11_473_475" = bitcast [2 x i8]* %"$eq_bs11_473" to i8*
  %"$eq_call_476" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_469", i32 2, i8* %"$$eq_bs1_470_472", i8* %"$$eq_bs11_473_475")
  store %TName_Bool* %"$eq_call_476", %TName_Bool** %b17, align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_467"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %b18 = alloca %TName_Bool*, align 8
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  %"$BoolUtils.orb_5" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_487" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_488" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_487", 0
  %"$BoolUtils.orb_envptr_489" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_487", 1
  %"$b16_490" = load %TName_Bool*, %TName_Bool** %b16, align 8
  %"$BoolUtils.orb_call_491" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_488"(i8* %"$BoolUtils.orb_envptr_489", %TName_Bool* %"$b16_490")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_491", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_5", align 8
  %"$BoolUtils.orb_6" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_5_492" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_5", align 8
  %"$$BoolUtils.orb_5_fptr_493" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_5_492", 0
  %"$$BoolUtils.orb_5_envptr_494" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_5_492", 1
  %"$b17_495" = load %TName_Bool*, %TName_Bool** %b17, align 8
  %"$$BoolUtils.orb_5_call_496" = call %TName_Bool* %"$$BoolUtils.orb_5_fptr_493"(i8* %"$$BoolUtils.orb_5_envptr_494", %TName_Bool* %"$b17_495")
  store %TName_Bool* %"$$BoolUtils.orb_5_call_496", %TName_Bool** %"$BoolUtils.orb_6", align 8
  %"$$BoolUtils.orb_6_497" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_6", align 8
  store %TName_Bool* %"$$BoolUtils.orb_6_497", %TName_Bool** %b18, align 8
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_485"
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %b19 = alloca %TName_Bool*, align 8
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$have_gas_501"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %"$BoolUtils.andb_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_508" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_509" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_508", 0
  %"$BoolUtils.andb_envptr_510" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_508", 1
  %"$b18_511" = load %TName_Bool*, %TName_Bool** %b18, align 8
  %"$BoolUtils.andb_call_512" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_509"(i8* %"$BoolUtils.andb_envptr_510", %TName_Bool* %"$b18_511")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_512", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$BoolUtils.andb_8" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_7_513" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$$BoolUtils.andb_7_fptr_514" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_513", 0
  %"$$BoolUtils.andb_7_envptr_515" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_513", 1
  %"$b15_516" = load %TName_Bool*, %TName_Bool** %b15, align 8
  %"$$BoolUtils.andb_7_call_517" = call %TName_Bool* %"$$BoolUtils.andb_7_fptr_514"(i8* %"$$BoolUtils.andb_7_envptr_515", %TName_Bool* %"$b15_516")
  store %TName_Bool* %"$$BoolUtils.andb_7_call_517", %TName_Bool** %"$BoolUtils.andb_8", align 8
  %"$$BoolUtils.andb_8_518" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_8", align 8
  store %TName_Bool* %"$$BoolUtils.andb_8_518", %TName_Bool** %b19, align 8
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 1, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %"$have_gas_506"
  %"$consume_523" = sub i64 %"$gasrem_519", 1
  store i64 %"$consume_523", i64* @_gasrem, align 8
  %bs3 = alloca [3 x i8], align 1
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_522"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0F", [3 x i8]* %bs3, align 1
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_527"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %bs4 = alloca [3 x i8], align 1
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 1, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_532"
  %"$consume_538" = sub i64 %"$gasrem_534", 1
  store i64 %"$consume_538", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0E", [3 x i8]* %bs4, align 1
  %"$gasrem_539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_540" = icmp ugt i64 1, %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_537"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_537"
  %"$consume_543" = sub i64 %"$gasrem_539", 1
  store i64 %"$consume_543", i64* @_gasrem, align 8
  %b20 = alloca %TName_Bool*, align 8
  %"$execptr_load_544" = load i8*, i8** @_execptr, align 8
  %"$eq_bs3_545" = alloca [3 x i8], align 1
  %"$bs3_546" = load [3 x i8], [3 x i8]* %bs3, align 1
  store [3 x i8] %"$bs3_546", [3 x i8]* %"$eq_bs3_545", align 1
  %"$$eq_bs3_545_547" = bitcast [3 x i8]* %"$eq_bs3_545" to i8*
  %"$eq_bs4_548" = alloca [3 x i8], align 1
  %"$bs4_549" = load [3 x i8], [3 x i8]* %bs4, align 1
  store [3 x i8] %"$bs4_549", [3 x i8]* %"$eq_bs4_548", align 1
  %"$$eq_bs4_548_550" = bitcast [3 x i8]* %"$eq_bs4_548" to i8*
  %"$eq_call_551" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_544", i32 3, i8* %"$$eq_bs3_545_547", i8* %"$$eq_bs4_548_550")
  store %TName_Bool* %"$eq_call_551", %TName_Bool** %b20, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_542"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_542"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %b21 = alloca %TName_Bool*, align 8
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_555"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  %"$BoolUtils.negb_9" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_562" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_563" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_562", 0
  %"$BoolUtils.negb_envptr_564" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_562", 1
  %"$b20_565" = load %TName_Bool*, %TName_Bool** %b20, align 8
  %"$BoolUtils.negb_call_566" = call %TName_Bool* %"$BoolUtils.negb_fptr_563"(i8* %"$BoolUtils.negb_envptr_564", %TName_Bool* %"$b20_565")
  store %TName_Bool* %"$BoolUtils.negb_call_566", %TName_Bool** %"$BoolUtils.negb_9", align 8
  %"$$BoolUtils.negb_9_567" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_9", align 8
  store %TName_Bool* %"$$BoolUtils.negb_9_567", %TName_Bool** %b21, align 8
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_560"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  %b22 = alloca %TName_Bool*, align 8
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 1, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %"$have_gas_571"
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %"$have_gas_571"
  %"$consume_577" = sub i64 %"$gasrem_573", 1
  store i64 %"$consume_577", i64* @_gasrem, align 8
  %"$BoolUtils.andb_10" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_578" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_579" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_578", 0
  %"$BoolUtils.andb_envptr_580" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_578", 1
  %"$b19_581" = load %TName_Bool*, %TName_Bool** %b19, align 8
  %"$BoolUtils.andb_call_582" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_579"(i8* %"$BoolUtils.andb_envptr_580", %TName_Bool* %"$b19_581")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_582", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_10", align 8
  %"$BoolUtils.andb_11" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_10_583" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_10", align 8
  %"$$BoolUtils.andb_10_fptr_584" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_10_583", 0
  %"$$BoolUtils.andb_10_envptr_585" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_10_583", 1
  %"$b21_586" = load %TName_Bool*, %TName_Bool** %b21, align 8
  %"$$BoolUtils.andb_10_call_587" = call %TName_Bool* %"$$BoolUtils.andb_10_fptr_584"(i8* %"$$BoolUtils.andb_10_envptr_585", %TName_Bool* %"$b21_586")
  store %TName_Bool* %"$$BoolUtils.andb_10_call_587", %TName_Bool** %"$BoolUtils.andb_11", align 8
  %"$$BoolUtils.andb_11_588" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_11", align 8
  store %TName_Bool* %"$$BoolUtils.andb_11_588", %TName_Bool** %b22, align 8
  %"$gasrem_589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_590" = icmp ugt i64 1, %"$gasrem_589"
  br i1 %"$gascmp_590", label %"$out_of_gas_591", label %"$have_gas_592"

"$out_of_gas_591":                                ; preds = %"$have_gas_576"
  call void @_out_of_gas()
  br label %"$have_gas_592"

"$have_gas_592":                                  ; preds = %"$out_of_gas_591", %"$have_gas_576"
  %"$consume_593" = sub i64 %"$gasrem_589", 1
  store i64 %"$consume_593", i64* @_gasrem, align 8
  %"$bs11_0" = alloca %Bystr, align 8
  %"$execptr_load_594" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs1_595" = alloca [2 x i8], align 1
  %"$bs1_596" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_596", [2 x i8]* %"$to_bystr_bs1_595", align 1
  %"$$to_bystr_bs1_595_597" = bitcast [2 x i8]* %"$to_bystr_bs1_595" to i8*
  %"$to_bystr_call_598" = call %Bystr @_to_bystr(i8* %"$execptr_load_594", i32 2, i8* %"$$to_bystr_bs1_595_597")
  store %Bystr %"$to_bystr_call_598", %Bystr* %"$bs11_0", align 8
  %"$gasrem_599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %"$have_gas_592"
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %"$have_gas_592"
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem, align 8
  %bs22 = alloca %Bystr, align 8
  %"$execptr_load_604" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs2_605" = alloca [2 x i8], align 1
  %"$bs2_606" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_606", [2 x i8]* %"$to_bystr_bs2_605", align 1
  %"$$to_bystr_bs2_605_607" = bitcast [2 x i8]* %"$to_bystr_bs2_605" to i8*
  %"$to_bystr_call_608" = call %Bystr @_to_bystr(i8* %"$execptr_load_604", i32 2, i8* %"$$to_bystr_bs2_605_607")
  store %Bystr %"$to_bystr_call_608", %Bystr* %bs22, align 8
  %"$gasrem_609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_610" = icmp ugt i64 1, %"$gasrem_609"
  br i1 %"$gascmp_610", label %"$out_of_gas_611", label %"$have_gas_612"

"$out_of_gas_611":                                ; preds = %"$have_gas_602"
  call void @_out_of_gas()
  br label %"$have_gas_612"

"$have_gas_612":                                  ; preds = %"$out_of_gas_611", %"$have_gas_602"
  %"$consume_613" = sub i64 %"$gasrem_609", 1
  store i64 %"$consume_613", i64* @_gasrem, align 8
  %b23 = alloca %TName_Bool*, align 8
  %"$execptr_load_614" = load i8*, i8** @_execptr, align 8
  %"$$bs11_0_615" = load %Bystr, %Bystr* %"$bs11_0", align 8
  %"$bs22_616" = load %Bystr, %Bystr* %bs22, align 8
  %"$eq_call_617" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_614", %Bystr %"$$bs11_0_615", %Bystr %"$bs22_616")
  store %TName_Bool* %"$eq_call_617", %TName_Bool** %b23, align 8
  %"$gasrem_618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_619" = icmp ugt i64 1, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %"$have_gas_612"
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %"$have_gas_612"
  %"$consume_622" = sub i64 %"$gasrem_618", 1
  store i64 %"$consume_622", i64* @_gasrem, align 8
  %b24 = alloca %TName_Bool*, align 8
  %"$gasrem_623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_624" = icmp ugt i64 1, %"$gasrem_623"
  br i1 %"$gascmp_624", label %"$out_of_gas_625", label %"$have_gas_626"

"$out_of_gas_625":                                ; preds = %"$have_gas_621"
  call void @_out_of_gas()
  br label %"$have_gas_626"

"$have_gas_626":                                  ; preds = %"$out_of_gas_625", %"$have_gas_621"
  %"$consume_627" = sub i64 %"$gasrem_623", 1
  store i64 %"$consume_627", i64* @_gasrem, align 8
  %"$BoolUtils.negb_12" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_628" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_629" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_628", 0
  %"$BoolUtils.negb_envptr_630" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_628", 1
  %"$b23_631" = load %TName_Bool*, %TName_Bool** %b23, align 8
  %"$BoolUtils.negb_call_632" = call %TName_Bool* %"$BoolUtils.negb_fptr_629"(i8* %"$BoolUtils.negb_envptr_630", %TName_Bool* %"$b23_631")
  store %TName_Bool* %"$BoolUtils.negb_call_632", %TName_Bool** %"$BoolUtils.negb_12", align 8
  %"$$BoolUtils.negb_12_633" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_12", align 8
  store %TName_Bool* %"$$BoolUtils.negb_12_633", %TName_Bool** %b24, align 8
  %"$gasrem_634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_635" = icmp ugt i64 1, %"$gasrem_634"
  br i1 %"$gascmp_635", label %"$out_of_gas_636", label %"$have_gas_637"

"$out_of_gas_636":                                ; preds = %"$have_gas_626"
  call void @_out_of_gas()
  br label %"$have_gas_637"

"$have_gas_637":                                  ; preds = %"$out_of_gas_636", %"$have_gas_626"
  %"$consume_638" = sub i64 %"$gasrem_634", 1
  store i64 %"$consume_638", i64* @_gasrem, align 8
  %b25 = alloca %TName_Bool*, align 8
  %"$gasrem_639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_640" = icmp ugt i64 1, %"$gasrem_639"
  br i1 %"$gascmp_640", label %"$out_of_gas_641", label %"$have_gas_642"

"$out_of_gas_641":                                ; preds = %"$have_gas_637"
  call void @_out_of_gas()
  br label %"$have_gas_642"

"$have_gas_642":                                  ; preds = %"$out_of_gas_641", %"$have_gas_637"
  %"$consume_643" = sub i64 %"$gasrem_639", 1
  store i64 %"$consume_643", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_644" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_645" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_644", 0
  %"$BoolUtils.andb_envptr_646" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_644", 1
  %"$b22_647" = load %TName_Bool*, %TName_Bool** %b22, align 8
  %"$BoolUtils.andb_call_648" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_645"(i8* %"$BoolUtils.andb_envptr_646", %TName_Bool* %"$b22_647")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_648", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_13_649" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_650" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_649", 0
  %"$$BoolUtils.andb_13_envptr_651" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_649", 1
  %"$b24_652" = load %TName_Bool*, %TName_Bool** %b24, align 8
  %"$$BoolUtils.andb_13_call_653" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_650"(i8* %"$$BoolUtils.andb_13_envptr_651", %TName_Bool* %"$b24_652")
  store %TName_Bool* %"$$BoolUtils.andb_13_call_653", %TName_Bool** %"$BoolUtils.andb_14", align 8
  %"$$BoolUtils.andb_14_654" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_654", %TName_Bool** %b25, align 8
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 1, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_642"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_642"
  %"$consume_659" = sub i64 %"$gasrem_655", 1
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %"$b25_660" = load %TName_Bool*, %TName_Bool** %b25, align 8
  store %TName_Bool* %"$b25_660", %TName_Bool** %"$expr_25", align 8
  %"$$expr_25_661" = load %TName_Bool*, %TName_Bool** %"$expr_25", align 8
  ret %TName_Bool* %"$$expr_25_661"
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare %TName_Bool* @_eq_String(i8*, %String, %String)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %TName_Bool* @_eq_ByStr(i8*, %Bystr, %Bystr)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_662" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_663" = bitcast %TName_Bool* %"$exprval_662" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_62", i8* %"$memvoidcast_663")
  ret void
}
