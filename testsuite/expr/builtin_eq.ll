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
%"$ParamDescr_672" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_673" = type { %ParamDescrString, i32, %"$ParamDescr_672"* }
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
@"$stringlit_339" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_350" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_361" = unnamed_addr constant [5 x i8] c"Hello"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_50", %_TyDescrTy_Typ* @"$TyDescr_Int64_32", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_62", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_56", %_TyDescrTy_Typ* @"$TyDescr_Uint256_42", %_TyDescrTy_Typ* @"$TyDescr_Uint32_30", %_TyDescrTy_Typ* @"$TyDescr_Uint64_34", %_TyDescrTy_Typ* @"$TyDescr_Bnum_46", %_TyDescrTy_Typ* @"$TyDescr_Uint128_38", %_TyDescrTy_Typ* @"$TyDescr_Exception_52", %_TyDescrTy_Typ* @"$TyDescr_String_44", %_TyDescrTy_Typ* @"$TyDescr_Int256_40", %_TyDescrTy_Typ* @"$TyDescr_Int128_36", %_TyDescrTy_Typ* @"$TyDescr_Bystr_54", %_TyDescrTy_Typ* @"$TyDescr_Message_48", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_58", %_TyDescrTy_Typ* @"$TyDescr_Int32_28"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_672"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_673"] zeroinitializer
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
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_312"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$have_gas_322"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_327"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$have_gas_332"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_339", i32 0, i32 0), i32 5 }, %String* %s1, align 8
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_337"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_350", i32 0, i32 0), i32 5 }, %String* %s2, align 8
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_348"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %s11 = alloca %String, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_354"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_361", i32 0, i32 0), i32 5 }, %String* %s11, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_359"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %b12 = alloca %TName_Bool*, align 8
  %"$execptr_load_367" = load i8*, i8** @_execptr, align 8
  %"$s1_368" = load %String, %String* %s1, align 8
  %"$s2_369" = load %String, %String* %s2, align 8
  %"$eq_call_370" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_367", %String %"$s1_368", %String %"$s2_369")
  store %TName_Bool* %"$eq_call_370", %TName_Bool** %b12, align 8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_365"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %b13 = alloca %TName_Bool*, align 8
  %"$execptr_load_377" = load i8*, i8** @_execptr, align 8
  %"$s1_378" = load %String, %String* %s1, align 8
  %"$s11_379" = load %String, %String* %s11, align 8
  %"$eq_call_380" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_377", %String %"$s1_378", %String %"$s11_379")
  store %TName_Bool* %"$eq_call_380", %TName_Bool** %b13, align 8
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_375"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %b14 = alloca %TName_Bool*, align 8
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$BoolUtils.andb_1" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_392" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_393" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_392", 0
  %"$BoolUtils.andb_envptr_394" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_392", 1
  %"$b9_395" = load %TName_Bool*, %TName_Bool** %b9, align 8
  %"$BoolUtils.andb_call_396" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_393"(i8* %"$BoolUtils.andb_envptr_394", %TName_Bool* %"$b9_395")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_396", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_1", align 8
  %"$BoolUtils.andb_2" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_1_397" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_1", align 8
  %"$$BoolUtils.andb_1_fptr_398" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_1_397", 0
  %"$$BoolUtils.andb_1_envptr_399" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_1_397", 1
  %"$b12_400" = load %TName_Bool*, %TName_Bool** %b12, align 8
  %"$$BoolUtils.andb_1_call_401" = call %TName_Bool* %"$$BoolUtils.andb_1_fptr_398"(i8* %"$$BoolUtils.andb_1_envptr_399", %TName_Bool* %"$b12_400")
  store %TName_Bool* %"$$BoolUtils.andb_1_call_401", %TName_Bool** %"$BoolUtils.andb_2", align 8
  %"$$BoolUtils.andb_2_402" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_2", align 8
  store %TName_Bool* %"$$BoolUtils.andb_2_402", %TName_Bool** %b14, align 8
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_390"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %b15 = alloca %TName_Bool*, align 8
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_406"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %"$BoolUtils.orb_3" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_413" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_414" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_413", 0
  %"$BoolUtils.orb_envptr_415" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_413", 1
  %"$b13_416" = load %TName_Bool*, %TName_Bool** %b13, align 8
  %"$BoolUtils.orb_call_417" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_414"(i8* %"$BoolUtils.orb_envptr_415", %TName_Bool* %"$b13_416")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_417", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_3", align 8
  %"$BoolUtils.orb_4" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_3_418" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_3", align 8
  %"$$BoolUtils.orb_3_fptr_419" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_3_418", 0
  %"$$BoolUtils.orb_3_envptr_420" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_3_418", 1
  %"$b14_421" = load %TName_Bool*, %TName_Bool** %b14, align 8
  %"$$BoolUtils.orb_3_call_422" = call %TName_Bool* %"$$BoolUtils.orb_3_fptr_419"(i8* %"$$BoolUtils.orb_3_envptr_420", %TName_Bool* %"$b14_421")
  store %TName_Bool* %"$$BoolUtils.orb_3_call_422", %TName_Bool** %"$BoolUtils.orb_4", align 8
  %"$$BoolUtils.orb_4_423" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_4", align 8
  store %TName_Bool* %"$$BoolUtils.orb_4_423", %TName_Bool** %b15, align 8
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_411"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %bs1 = alloca [2 x i8], align 1
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_427"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs1, align 1
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_432"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %bs2 = alloca [2 x i8], align 1
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\00", [2 x i8]* %bs2, align 1
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %bs11 = alloca [2 x i8], align 1
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs11, align 1
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 1, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %"$have_gas_452"
  %"$consume_458" = sub i64 %"$gasrem_454", 1
  store i64 %"$consume_458", i64* @_gasrem, align 8
  %b16 = alloca %TName_Bool*, align 8
  %"$execptr_load_459" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_460" = alloca [2 x i8], align 1
  %"$bs1_461" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_461", [2 x i8]* %"$eq_bs1_460", align 1
  %"$$eq_bs1_460_462" = bitcast [2 x i8]* %"$eq_bs1_460" to i8*
  %"$eq_bs2_463" = alloca [2 x i8], align 1
  %"$bs2_464" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_464", [2 x i8]* %"$eq_bs2_463", align 1
  %"$$eq_bs2_463_465" = bitcast [2 x i8]* %"$eq_bs2_463" to i8*
  %"$eq_call_466" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_459", i32 2, i8* %"$$eq_bs1_460_462", i8* %"$$eq_bs2_463_465")
  store %TName_Bool* %"$eq_call_466", %TName_Bool** %b16, align 8
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_457"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_457"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %b17 = alloca %TName_Bool*, align 8
  %"$execptr_load_473" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_474" = alloca [2 x i8], align 1
  %"$bs1_475" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_475", [2 x i8]* %"$eq_bs1_474", align 1
  %"$$eq_bs1_474_476" = bitcast [2 x i8]* %"$eq_bs1_474" to i8*
  %"$eq_bs11_477" = alloca [2 x i8], align 1
  %"$bs11_478" = load [2 x i8], [2 x i8]* %bs11, align 1
  store [2 x i8] %"$bs11_478", [2 x i8]* %"$eq_bs11_477", align 1
  %"$$eq_bs11_477_479" = bitcast [2 x i8]* %"$eq_bs11_477" to i8*
  %"$eq_call_480" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_473", i32 2, i8* %"$$eq_bs1_474_476", i8* %"$$eq_bs11_477_479")
  store %TName_Bool* %"$eq_call_480", %TName_Bool** %b17, align 8
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_471"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  %b18 = alloca %TName_Bool*, align 8
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_485"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %"$BoolUtils.orb_5" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_492" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_493" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_492", 0
  %"$BoolUtils.orb_envptr_494" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_492", 1
  %"$b16_495" = load %TName_Bool*, %TName_Bool** %b16, align 8
  %"$BoolUtils.orb_call_496" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_493"(i8* %"$BoolUtils.orb_envptr_494", %TName_Bool* %"$b16_495")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_496", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_5", align 8
  %"$BoolUtils.orb_6" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_5_497" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_5", align 8
  %"$$BoolUtils.orb_5_fptr_498" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_5_497", 0
  %"$$BoolUtils.orb_5_envptr_499" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_5_497", 1
  %"$b17_500" = load %TName_Bool*, %TName_Bool** %b17, align 8
  %"$$BoolUtils.orb_5_call_501" = call %TName_Bool* %"$$BoolUtils.orb_5_fptr_498"(i8* %"$$BoolUtils.orb_5_envptr_499", %TName_Bool* %"$b17_500")
  store %TName_Bool* %"$$BoolUtils.orb_5_call_501", %TName_Bool** %"$BoolUtils.orb_6", align 8
  %"$$BoolUtils.orb_6_502" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_6", align 8
  store %TName_Bool* %"$$BoolUtils.orb_6_502", %TName_Bool** %b18, align 8
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$have_gas_490"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %b19 = alloca %TName_Bool*, align 8
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_506"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %"$BoolUtils.andb_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_513" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_514" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_513", 0
  %"$BoolUtils.andb_envptr_515" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_513", 1
  %"$b18_516" = load %TName_Bool*, %TName_Bool** %b18, align 8
  %"$BoolUtils.andb_call_517" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_514"(i8* %"$BoolUtils.andb_envptr_515", %TName_Bool* %"$b18_516")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_517", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$BoolUtils.andb_8" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_7_518" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$$BoolUtils.andb_7_fptr_519" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_518", 0
  %"$$BoolUtils.andb_7_envptr_520" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_518", 1
  %"$b15_521" = load %TName_Bool*, %TName_Bool** %b15, align 8
  %"$$BoolUtils.andb_7_call_522" = call %TName_Bool* %"$$BoolUtils.andb_7_fptr_519"(i8* %"$$BoolUtils.andb_7_envptr_520", %TName_Bool* %"$b15_521")
  store %TName_Bool* %"$$BoolUtils.andb_7_call_522", %TName_Bool** %"$BoolUtils.andb_8", align 8
  %"$$BoolUtils.andb_8_523" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_8", align 8
  store %TName_Bool* %"$$BoolUtils.andb_8_523", %TName_Bool** %b19, align 8
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_511"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %bs3 = alloca [3 x i8], align 1
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_527"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0F", [3 x i8]* %bs3, align 1
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 1, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_532"
  %"$consume_538" = sub i64 %"$gasrem_534", 1
  store i64 %"$consume_538", i64* @_gasrem, align 8
  %bs4 = alloca [3 x i8], align 1
  %"$gasrem_539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_540" = icmp ugt i64 1, %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_537"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_537"
  %"$consume_543" = sub i64 %"$gasrem_539", 1
  store i64 %"$consume_543", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0E", [3 x i8]* %bs4, align 1
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %"$have_gas_542"
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %"$have_gas_542"
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  %b20 = alloca %TName_Bool*, align 8
  %"$execptr_load_549" = load i8*, i8** @_execptr, align 8
  %"$eq_bs3_550" = alloca [3 x i8], align 1
  %"$bs3_551" = load [3 x i8], [3 x i8]* %bs3, align 1
  store [3 x i8] %"$bs3_551", [3 x i8]* %"$eq_bs3_550", align 1
  %"$$eq_bs3_550_552" = bitcast [3 x i8]* %"$eq_bs3_550" to i8*
  %"$eq_bs4_553" = alloca [3 x i8], align 1
  %"$bs4_554" = load [3 x i8], [3 x i8]* %bs4, align 1
  store [3 x i8] %"$bs4_554", [3 x i8]* %"$eq_bs4_553", align 1
  %"$$eq_bs4_553_555" = bitcast [3 x i8]* %"$eq_bs4_553" to i8*
  %"$eq_call_556" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_549", i32 3, i8* %"$$eq_bs3_550_552", i8* %"$$eq_bs4_553_555")
  store %TName_Bool* %"$eq_call_556", %TName_Bool** %b20, align 8
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 1, %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$have_gas_547"
  %"$consume_562" = sub i64 %"$gasrem_558", 1
  store i64 %"$consume_562", i64* @_gasrem, align 8
  %b21 = alloca %TName_Bool*, align 8
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$have_gas_561"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$have_gas_561"
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem, align 8
  %"$BoolUtils.negb_9" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_568" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_569" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_568", 0
  %"$BoolUtils.negb_envptr_570" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_568", 1
  %"$b20_571" = load %TName_Bool*, %TName_Bool** %b20, align 8
  %"$BoolUtils.negb_call_572" = call %TName_Bool* %"$BoolUtils.negb_fptr_569"(i8* %"$BoolUtils.negb_envptr_570", %TName_Bool* %"$b20_571")
  store %TName_Bool* %"$BoolUtils.negb_call_572", %TName_Bool** %"$BoolUtils.negb_9", align 8
  %"$$BoolUtils.negb_9_573" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_9", align 8
  store %TName_Bool* %"$$BoolUtils.negb_9_573", %TName_Bool** %b21, align 8
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 1, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_566"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_566"
  %"$consume_578" = sub i64 %"$gasrem_574", 1
  store i64 %"$consume_578", i64* @_gasrem, align 8
  %b22 = alloca %TName_Bool*, align 8
  %"$gasrem_579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_580" = icmp ugt i64 1, %"$gasrem_579"
  br i1 %"$gascmp_580", label %"$out_of_gas_581", label %"$have_gas_582"

"$out_of_gas_581":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_582"

"$have_gas_582":                                  ; preds = %"$out_of_gas_581", %"$have_gas_577"
  %"$consume_583" = sub i64 %"$gasrem_579", 1
  store i64 %"$consume_583", i64* @_gasrem, align 8
  %"$BoolUtils.andb_10" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_584" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_585" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_584", 0
  %"$BoolUtils.andb_envptr_586" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_584", 1
  %"$b19_587" = load %TName_Bool*, %TName_Bool** %b19, align 8
  %"$BoolUtils.andb_call_588" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_585"(i8* %"$BoolUtils.andb_envptr_586", %TName_Bool* %"$b19_587")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_588", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_10", align 8
  %"$BoolUtils.andb_11" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_10_589" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_10", align 8
  %"$$BoolUtils.andb_10_fptr_590" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_10_589", 0
  %"$$BoolUtils.andb_10_envptr_591" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_10_589", 1
  %"$b21_592" = load %TName_Bool*, %TName_Bool** %b21, align 8
  %"$$BoolUtils.andb_10_call_593" = call %TName_Bool* %"$$BoolUtils.andb_10_fptr_590"(i8* %"$$BoolUtils.andb_10_envptr_591", %TName_Bool* %"$b21_592")
  store %TName_Bool* %"$$BoolUtils.andb_10_call_593", %TName_Bool** %"$BoolUtils.andb_11", align 8
  %"$$BoolUtils.andb_11_594" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_11", align 8
  store %TName_Bool* %"$$BoolUtils.andb_11_594", %TName_Bool** %b22, align 8
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %"$have_gas_582"
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %"$have_gas_582"
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  %"$bs11_0" = alloca %Bystr, align 8
  %"$execptr_load_600" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs1_601" = alloca [2 x i8], align 1
  %"$bs1_602" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_602", [2 x i8]* %"$to_bystr_bs1_601", align 1
  %"$$to_bystr_bs1_601_603" = bitcast [2 x i8]* %"$to_bystr_bs1_601" to i8*
  %"$to_bystr_call_604" = call %Bystr @_to_bystr(i8* %"$execptr_load_600", i32 2, i8* %"$$to_bystr_bs1_601_603")
  store %Bystr %"$to_bystr_call_604", %Bystr* %"$bs11_0", align 8
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 1, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %"$have_gas_598"
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %"$have_gas_598"
  %"$consume_609" = sub i64 %"$gasrem_605", 1
  store i64 %"$consume_609", i64* @_gasrem, align 8
  %bs22 = alloca %Bystr, align 8
  %"$execptr_load_610" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs2_611" = alloca [2 x i8], align 1
  %"$bs2_612" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_612", [2 x i8]* %"$to_bystr_bs2_611", align 1
  %"$$to_bystr_bs2_611_613" = bitcast [2 x i8]* %"$to_bystr_bs2_611" to i8*
  %"$to_bystr_call_614" = call %Bystr @_to_bystr(i8* %"$execptr_load_610", i32 2, i8* %"$$to_bystr_bs2_611_613")
  store %Bystr %"$to_bystr_call_614", %Bystr* %bs22, align 8
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$have_gas_608"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$have_gas_608"
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %b23 = alloca %TName_Bool*, align 8
  %"$execptr_load_620" = load i8*, i8** @_execptr, align 8
  %"$$bs11_0_621" = load %Bystr, %Bystr* %"$bs11_0", align 8
  %"$bs22_622" = load %Bystr, %Bystr* %bs22, align 8
  %"$eq_call_623" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_620", %Bystr %"$$bs11_0_621", %Bystr %"$bs22_622")
  store %TName_Bool* %"$eq_call_623", %TName_Bool** %b23, align 8
  %"$gasrem_625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_626" = icmp ugt i64 1, %"$gasrem_625"
  br i1 %"$gascmp_626", label %"$out_of_gas_627", label %"$have_gas_628"

"$out_of_gas_627":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_628"

"$have_gas_628":                                  ; preds = %"$out_of_gas_627", %"$have_gas_618"
  %"$consume_629" = sub i64 %"$gasrem_625", 1
  store i64 %"$consume_629", i64* @_gasrem, align 8
  %b24 = alloca %TName_Bool*, align 8
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 1, %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %"$have_gas_628"
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %"$have_gas_628"
  %"$consume_634" = sub i64 %"$gasrem_630", 1
  store i64 %"$consume_634", i64* @_gasrem, align 8
  %"$BoolUtils.negb_12" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_635" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_636" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_635", 0
  %"$BoolUtils.negb_envptr_637" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_635", 1
  %"$b23_638" = load %TName_Bool*, %TName_Bool** %b23, align 8
  %"$BoolUtils.negb_call_639" = call %TName_Bool* %"$BoolUtils.negb_fptr_636"(i8* %"$BoolUtils.negb_envptr_637", %TName_Bool* %"$b23_638")
  store %TName_Bool* %"$BoolUtils.negb_call_639", %TName_Bool** %"$BoolUtils.negb_12", align 8
  %"$$BoolUtils.negb_12_640" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_12", align 8
  store %TName_Bool* %"$$BoolUtils.negb_12_640", %TName_Bool** %b24, align 8
  %"$gasrem_641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_642" = icmp ugt i64 1, %"$gasrem_641"
  br i1 %"$gascmp_642", label %"$out_of_gas_643", label %"$have_gas_644"

"$out_of_gas_643":                                ; preds = %"$have_gas_633"
  call void @_out_of_gas()
  br label %"$have_gas_644"

"$have_gas_644":                                  ; preds = %"$out_of_gas_643", %"$have_gas_633"
  %"$consume_645" = sub i64 %"$gasrem_641", 1
  store i64 %"$consume_645", i64* @_gasrem, align 8
  %b25 = alloca %TName_Bool*, align 8
  %"$gasrem_646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_647" = icmp ugt i64 1, %"$gasrem_646"
  br i1 %"$gascmp_647", label %"$out_of_gas_648", label %"$have_gas_649"

"$out_of_gas_648":                                ; preds = %"$have_gas_644"
  call void @_out_of_gas()
  br label %"$have_gas_649"

"$have_gas_649":                                  ; preds = %"$out_of_gas_648", %"$have_gas_644"
  %"$consume_650" = sub i64 %"$gasrem_646", 1
  store i64 %"$consume_650", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_651" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_652" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_651", 0
  %"$BoolUtils.andb_envptr_653" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_651", 1
  %"$b22_654" = load %TName_Bool*, %TName_Bool** %b22, align 8
  %"$BoolUtils.andb_call_655" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_652"(i8* %"$BoolUtils.andb_envptr_653", %TName_Bool* %"$b22_654")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_655", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_13_656" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_657" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_656", 0
  %"$$BoolUtils.andb_13_envptr_658" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_656", 1
  %"$b24_659" = load %TName_Bool*, %TName_Bool** %b24, align 8
  %"$$BoolUtils.andb_13_call_660" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_657"(i8* %"$$BoolUtils.andb_13_envptr_658", %TName_Bool* %"$b24_659")
  store %TName_Bool* %"$$BoolUtils.andb_13_call_660", %TName_Bool** %"$BoolUtils.andb_14", align 8
  %"$$BoolUtils.andb_14_661" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_661", %TName_Bool** %b25, align 8
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 1, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_649"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_649"
  %"$consume_666" = sub i64 %"$gasrem_662", 1
  store i64 %"$consume_666", i64* @_gasrem, align 8
  %"$b25_667" = load %TName_Bool*, %TName_Bool** %b25, align 8
  store %TName_Bool* %"$b25_667", %TName_Bool** %"$expr_25", align 8
  %"$$expr_25_668" = load %TName_Bool*, %TName_Bool** %"$expr_25", align 8
  ret %TName_Bool* %"$$expr_25_668"
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare %TName_Bool* @_eq_String(i8*, %String, %String)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %TName_Bool* @_eq_ByStr(i8*, %Bystr, %Bystr)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_669" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_670" = bitcast %TName_Bool* %"$exprval_669" to i8*
  %"$execptr_load_671" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_671", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_62", i8* %"$memvoidcast_670")
  ret void
}
