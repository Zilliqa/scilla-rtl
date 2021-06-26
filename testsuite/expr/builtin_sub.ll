; let false = False in
; let test = True in
; 
; let arg1 = Uint32 1844 in
; let arg2 = Uint32 1843 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Uint32 1 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg2 = Int32 1844 in
; let arg1 = Int32 1843 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Int32 -1 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint64 18446744073709551615 in
; let arg2 = Uint64 18446744073709551614 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Uint64 1 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg2 = Int64 9223372036854775807 in
; let arg1 = Int64 9223372036854775807 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Int64 0 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int64 9223372036854775806 in
; let arg2 = Int64 -1 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Int64 9223372036854775807 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint128 340282366920938463463374607431768211455 in
; let arg2 = Uint128 1 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Uint128 340282366920938463463374607431768211454 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint128 340282366920938463463374607431768211455 in
; let arg2 = Uint128 0 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Uint128 340282366920938463463374607431768211455 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint256 340282366920938463463374607431768211455 in
; let arg2 = Uint256 1 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Uint256 340282366920938463463374607431768211454 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint256 115792089237316195423570985008687907853269984665640564039457584007913129639935 in
; let arg2 = Uint256 115792089237316195423570985008687907853269984665640564039457584007913129639935 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Uint256 0 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint256 115792089237316195423570985008687907853269984665640564039457584007913129639935 in
; let arg2 = Uint256 115792089237316195423570985008687907853269984665640564039457584007913129639934 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Uint256 1 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 0 in
; let arg2 = Int256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Int256 57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg2 = Int256 0 in
; let arg1 = Int256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Int256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 0 in
; let arg2 = Int256 -1 in
; let test =
; let res = builtin sub arg1 arg2 in
; let res_ = Int256 1 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; test
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_104" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_134" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_133"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_133" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_135"**, %"$TyDescrTy_ADTTyp_134"* }
%"$TyDescrTy_ADTTyp_Constr_135" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1170" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1171" = type { %ParamDescrString, i32, %"$ParamDescr_1170"* }
%"$$fundef_101_env_152" = type { %TName_Bool* }
%"$$fundef_99_env_153" = type {}
%Uint32 = type { i32 }
%Int32 = type { i32 }
%Uint64 = type { i64 }
%Int64 = type { i64 }
%Uint128 = type { i128 }
%Uint256 = type { i256 }
%Int256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_105" = global %"$TyDescrTy_PrimTyp_104" zeroinitializer
@"$TyDescr_Int32_106" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Int32_Prim_105" to i8*) }
@"$TyDescr_Uint32_Prim_107" = global %"$TyDescrTy_PrimTyp_104" { i32 1, i32 0 }
@"$TyDescr_Uint32_108" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Uint32_Prim_107" to i8*) }
@"$TyDescr_Int64_Prim_109" = global %"$TyDescrTy_PrimTyp_104" { i32 0, i32 1 }
@"$TyDescr_Int64_110" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Int64_Prim_109" to i8*) }
@"$TyDescr_Uint64_Prim_111" = global %"$TyDescrTy_PrimTyp_104" { i32 1, i32 1 }
@"$TyDescr_Uint64_112" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Uint64_Prim_111" to i8*) }
@"$TyDescr_Int128_Prim_113" = global %"$TyDescrTy_PrimTyp_104" { i32 0, i32 2 }
@"$TyDescr_Int128_114" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Int128_Prim_113" to i8*) }
@"$TyDescr_Uint128_Prim_115" = global %"$TyDescrTy_PrimTyp_104" { i32 1, i32 2 }
@"$TyDescr_Uint128_116" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Uint128_Prim_115" to i8*) }
@"$TyDescr_Int256_Prim_117" = global %"$TyDescrTy_PrimTyp_104" { i32 0, i32 3 }
@"$TyDescr_Int256_118" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Int256_Prim_117" to i8*) }
@"$TyDescr_Uint256_Prim_119" = global %"$TyDescrTy_PrimTyp_104" { i32 1, i32 3 }
@"$TyDescr_Uint256_120" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Uint256_Prim_119" to i8*) }
@"$TyDescr_String_Prim_121" = global %"$TyDescrTy_PrimTyp_104" { i32 2, i32 0 }
@"$TyDescr_String_122" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_String_Prim_121" to i8*) }
@"$TyDescr_Bnum_Prim_123" = global %"$TyDescrTy_PrimTyp_104" { i32 3, i32 0 }
@"$TyDescr_Bnum_124" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Bnum_Prim_123" to i8*) }
@"$TyDescr_Message_Prim_125" = global %"$TyDescrTy_PrimTyp_104" { i32 4, i32 0 }
@"$TyDescr_Message_126" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Message_Prim_125" to i8*) }
@"$TyDescr_Event_Prim_127" = global %"$TyDescrTy_PrimTyp_104" { i32 5, i32 0 }
@"$TyDescr_Event_128" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Event_Prim_127" to i8*) }
@"$TyDescr_Exception_Prim_129" = global %"$TyDescrTy_PrimTyp_104" { i32 6, i32 0 }
@"$TyDescr_Exception_130" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Exception_Prim_129" to i8*) }
@"$TyDescr_Bystr_Prim_131" = global %"$TyDescrTy_PrimTyp_104" { i32 7, i32 0 }
@"$TyDescr_Bystr_132" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_104"* @"$TyDescr_Bystr_Prim_131" to i8*) }
@"$TyDescr_ADT_Bool_136" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_133"* @"$TyDescr_Bool_ADTTyp_Specl_149" to i8*) }
@"$TyDescr_Bool_ADTTyp_140" = unnamed_addr constant %"$TyDescrTy_ADTTyp_134" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_151", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_133"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_133"*], [1 x %"$TyDescrTy_ADTTyp_Specl_133"*]* @"$TyDescr_Bool_ADTTyp_m_specls_150", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_141" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_142" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_143" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_135" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_142", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_141", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_144" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_145" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_146" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_135" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_145", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_144", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_147" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_135"*] [%"$TyDescrTy_ADTTyp_Constr_135"* @"$TyDescr_Bool_True_ADTTyp_Constr_143", %"$TyDescrTy_ADTTyp_Constr_135"* @"$TyDescr_Bool_False_ADTTyp_Constr_146"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_148" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_149" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_133" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_148", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_135"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_135"*], [2 x %"$TyDescrTy_ADTTyp_Constr_135"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_147", i32 0, i32 0), %"$TyDescrTy_ADTTyp_134"* @"$TyDescr_Bool_ADTTyp_140" }
@"$TyDescr_Bool_ADTTyp_m_specls_150" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_133"*] [%"$TyDescrTy_ADTTyp_Specl_133"* @"$TyDescr_Bool_ADTTyp_Specl_149"]
@"$TyDescr_ADT_Bool_151" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_128", %_TyDescrTy_Typ* @"$TyDescr_Int64_110", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_136", %_TyDescrTy_Typ* @"$TyDescr_Uint256_120", %_TyDescrTy_Typ* @"$TyDescr_Uint32_108", %_TyDescrTy_Typ* @"$TyDescr_Uint64_112", %_TyDescrTy_Typ* @"$TyDescr_Bnum_124", %_TyDescrTy_Typ* @"$TyDescr_Uint128_116", %_TyDescrTy_Typ* @"$TyDescr_Exception_130", %_TyDescrTy_Typ* @"$TyDescr_String_122", %_TyDescrTy_Typ* @"$TyDescr_Int256_118", %_TyDescrTy_Typ* @"$TyDescr_Int128_114", %_TyDescrTy_Typ* @"$TyDescr_Bystr_132", %_TyDescrTy_Typ* @"$TyDescr_Message_126", %_TyDescrTy_Typ* @"$TyDescr_Int32_106"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_1170"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1171"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_101"(%"$$fundef_101_env_152"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_101_env_b_165" = getelementptr inbounds %"$$fundef_101_env_152", %"$$fundef_101_env_152"* %0, i32 0, i32 0
  %"$b_envload_166" = load %TName_Bool*, %TName_Bool** %"$$fundef_101_env_b_165", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_166", %TName_Bool** %b, align 8
  %"$retval_102" = alloca %TName_Bool*, align 8
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 2, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %entry
  %"$consume_171" = sub i64 %"$gasrem_167", 2
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$b_173" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_174" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_173", i32 0, i32 0
  %"$b_tag_175" = load i8, i8* %"$b_tag_174", align 1
  switch i8 %"$b_tag_175", label %"$empty_default_176" [
    i8 1, label %"$False_177"
    i8 0, label %"$True_187"
  ]

"$False_177":                                     ; preds = %"$have_gas_170"
  %"$b_178" = bitcast %TName_Bool* %"$b_173" to %CName_False*
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$False_177"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$False_177"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$adtval_184_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_184_salloc" = call i8* @_salloc(i8* %"$adtval_184_load", i64 1)
  %"$adtval_184" = bitcast i8* %"$adtval_184_salloc" to %CName_False*
  %"$adtgep_185" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_184", i32 0, i32 0
  store i8 1, i8* %"$adtgep_185", align 1
  %"$adtptr_186" = bitcast %CName_False* %"$adtval_184" to %TName_Bool*
  store %TName_Bool* %"$adtptr_186", %TName_Bool** %"$retval_102", align 8
  br label %"$matchsucc_172"

"$True_187":                                      ; preds = %"$have_gas_170"
  %"$b_188" = bitcast %TName_Bool* %"$b_173" to %CName_True*
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$True_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$True_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_102", align 8
  br label %"$matchsucc_172"

"$empty_default_176":                             ; preds = %"$have_gas_170"
  br label %"$matchsucc_172"

"$matchsucc_172":                                 ; preds = %"$have_gas_192", %"$have_gas_182", %"$empty_default_176"
  %"$$retval_102_194" = load %TName_Bool*, %TName_Bool** %"$retval_102", align 8
  ret %TName_Bool* %"$$retval_102_194"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_99"(%"$$fundef_99_env_153"* %0, %TName_Bool* %1) {
entry:
  %"$retval_100" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %entry
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %"$$fundef_101_envp_159_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_101_envp_159_salloc" = call i8* @_salloc(i8* %"$$fundef_101_envp_159_load", i64 8)
  %"$$fundef_101_envp_159" = bitcast i8* %"$$fundef_101_envp_159_salloc" to %"$$fundef_101_env_152"*
  %"$$fundef_101_env_voidp_161" = bitcast %"$$fundef_101_env_152"* %"$$fundef_101_envp_159" to i8*
  %"$$fundef_101_cloval_162" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_101_env_152"*, %TName_Bool*)* @"$fundef_101" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_101_env_voidp_161", 1
  %"$$fundef_101_env_b_163" = getelementptr inbounds %"$$fundef_101_env_152", %"$$fundef_101_env_152"* %"$$fundef_101_envp_159", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_101_env_b_163", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_101_cloval_162", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_100", align 8
  %"$$retval_100_164" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_100", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_100_164"
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
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_99_env_153"*, %TName_Bool*)* @"$fundef_99" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$expr_103" = alloca %TName_Bool*, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_198"
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_206"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_211"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %"$adtval_218_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_218_salloc" = call i8* @_salloc(i8* %"$adtval_218_load", i64 1)
  %"$adtval_218" = bitcast i8* %"$adtval_218_salloc" to %CName_True*
  %"$adtgep_219" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_218", i32 0, i32 0
  store i8 0, i8* %"$adtgep_219", align 1
  %"$adtptr_220" = bitcast %CName_True* %"$adtval_218" to %TName_Bool*
  store %TName_Bool* %"$adtptr_220", %TName_Bool** %test, align 8
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 1, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_216"
  %"$consume_225" = sub i64 %"$gasrem_221", 1
  store i64 %"$consume_225", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_224"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_229"
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_234"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_239"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$test_0" = alloca %TName_Bool*, align 8
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_244"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$arg1_251" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_252" = load %Uint32, %Uint32* %arg2, align 4
  %"$sub_call_253" = call %Uint32 @_sub_Uint32(%Uint32 %"$arg1_251", %Uint32 %"$arg2_252")
  store %Uint32 %"$sub_call_253", %Uint32* %res, align 4
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_249"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_257"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %res_, align 4
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$execptr_load_269" = load i8*, i8** @_execptr, align 8
  %"$res_270" = load %Uint32, %Uint32* %res, align 4
  %"$res__271" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_272" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_269", %Uint32 %"$res_270", %Uint32 %"$res__271")
  store %TName_Bool* %"$eq_call_272", %TName_Bool** %test_, align 8
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_267"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_279" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_280" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_279", 0
  %"$BoolUtils.andb_envptr_281" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_279", 1
  %"$test_282" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_283" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_280"(i8* %"$BoolUtils.andb_envptr_281", %TName_Bool* %"$test_282")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_283", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_73_284" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_285" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_284", 0
  %"$$BoolUtils.andb_73_envptr_286" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_284", 1
  %"$test__287" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_73_call_288" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_285"(i8* %"$$BoolUtils.andb_73_envptr_286", %TName_Bool* %"$test__287")
  store %TName_Bool* %"$$BoolUtils.andb_73_call_288", %TName_Bool** %"$BoolUtils.andb_74", align 8
  %"$$BoolUtils.andb_74_289" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_289", %TName_Bool** %"$test_0", align 8
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_277"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$arg2_1" = alloca %Int32, align 8
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_293"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg2_1", align 4
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %"$arg1_2" = alloca %Int32, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  store %Int32 { i32 1843 }, %Int32* %"$arg1_2", align 4
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 1, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_308"
  %"$consume_314" = sub i64 %"$gasrem_310", 1
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_313"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %"$res_3" = alloca %Int32, align 8
  %"$$arg1_2_320" = load %Int32, %Int32* %"$arg1_2", align 4
  %"$$arg2_1_321" = load %Int32, %Int32* %"$arg2_1", align 4
  %"$sub_call_322" = call %Int32 @_sub_Int32(%Int32 %"$$arg1_2_320", %Int32 %"$$arg2_1_321")
  store %Int32 %"$sub_call_322", %Int32* %"$res_3", align 4
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_318"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %"$res__4" = alloca %Int32, align 8
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_326"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  store %Int32 { i32 -1 }, %Int32* %"$res__4", align 4
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 1, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_331"
  %"$consume_337" = sub i64 %"$gasrem_333", 1
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %"$test__5" = alloca %TName_Bool*, align 8
  %"$execptr_load_338" = load i8*, i8** @_execptr, align 8
  %"$$res_3_339" = load %Int32, %Int32* %"$res_3", align 4
  %"$$res__4_340" = load %Int32, %Int32* %"$res__4", align 4
  %"$eq_call_341" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_338", %Int32 %"$$res_3_339", %Int32 %"$$res__4_340")
  store %TName_Bool* %"$eq_call_341", %TName_Bool** %"$test__5", align 8
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_336"
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %"$BoolUtils.andb_75" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_348" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_349" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_348", 0
  %"$BoolUtils.andb_envptr_350" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_348", 1
  %"$$test_0_351" = load %TName_Bool*, %TName_Bool** %"$test_0", align 8
  %"$BoolUtils.andb_call_352" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_349"(i8* %"$BoolUtils.andb_envptr_350", %TName_Bool* %"$$test_0_351")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_352", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8
  %"$BoolUtils.andb_76" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_75_353" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8
  %"$$BoolUtils.andb_75_fptr_354" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_353", 0
  %"$$BoolUtils.andb_75_envptr_355" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_353", 1
  %"$$test__5_356" = load %TName_Bool*, %TName_Bool** %"$test__5", align 8
  %"$$BoolUtils.andb_75_call_357" = call %TName_Bool* %"$$BoolUtils.andb_75_fptr_354"(i8* %"$$BoolUtils.andb_75_envptr_355", %TName_Bool* %"$$test__5_356")
  store %TName_Bool* %"$$BoolUtils.andb_75_call_357", %TName_Bool** %"$BoolUtils.andb_76", align 8
  %"$$BoolUtils.andb_76_358" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_76", align 8
  store %TName_Bool* %"$$BoolUtils.andb_76_358", %TName_Bool** %"$test_6", align 8
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_346"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %"$arg1_7" = alloca %Uint64, align 8
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_362"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$arg1_7", align 8
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_367"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  %"$arg2_8" = alloca %Uint64, align 8
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  store %Uint64 { i64 -2 }, %Uint64* %"$arg2_8", align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %"$res_9" = alloca %Uint64, align 8
  %"$$arg1_7_389" = load %Uint64, %Uint64* %"$arg1_7", align 8
  %"$$arg2_8_390" = load %Uint64, %Uint64* %"$arg2_8", align 8
  %"$sub_call_391" = call %Uint64 @_sub_Uint64(%Uint64 %"$$arg1_7_389", %Uint64 %"$$arg2_8_390")
  store %Uint64 %"$sub_call_391", %Uint64* %"$res_9", align 8
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_387"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %"$res__10" = alloca %Uint64, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %"$res__10", align 8
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_400"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  %"$execptr_load_407" = load i8*, i8** @_execptr, align 8
  %"$$res_9_408" = load %Uint64, %Uint64* %"$res_9", align 8
  %"$$res__10_409" = load %Uint64, %Uint64* %"$res__10", align 8
  %"$eq_call_410" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_407", %Uint64 %"$$res_9_408", %Uint64 %"$$res__10_409")
  store %TName_Bool* %"$eq_call_410", %TName_Bool** %"$test__11", align 8
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$have_gas_405"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$have_gas_405"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  %"$BoolUtils.andb_77" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_417" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_418" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_417", 0
  %"$BoolUtils.andb_envptr_419" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_417", 1
  %"$$test_6_420" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_421" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_418"(i8* %"$BoolUtils.andb_envptr_419", %TName_Bool* %"$$test_6_420")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_421", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8
  %"$BoolUtils.andb_78" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_77_422" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8
  %"$$BoolUtils.andb_77_fptr_423" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_422", 0
  %"$$BoolUtils.andb_77_envptr_424" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_422", 1
  %"$$test__11_425" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_77_call_426" = call %TName_Bool* %"$$BoolUtils.andb_77_fptr_423"(i8* %"$$BoolUtils.andb_77_envptr_424", %TName_Bool* %"$$test__11_425")
  store %TName_Bool* %"$$BoolUtils.andb_77_call_426", %TName_Bool** %"$BoolUtils.andb_78", align 8
  %"$$BoolUtils.andb_78_427" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_78", align 8
  store %TName_Bool* %"$$BoolUtils.andb_78_427", %TName_Bool** %"$test_12", align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_415"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %"$arg2_13" = alloca %Int64, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_431"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$arg2_13", align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$arg1_14" = alloca %Int64, align 8
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_441"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$arg1_14", align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$res_15" = alloca %Int64, align 8
  %"$$arg1_14_458" = load %Int64, %Int64* %"$arg1_14", align 8
  %"$$arg2_13_459" = load %Int64, %Int64* %"$arg2_13", align 8
  %"$sub_call_460" = call %Int64 @_sub_Int64(%Int64 %"$$arg1_14_458", %Int64 %"$$arg2_13_459")
  store %Int64 %"$sub_call_460", %Int64* %"$res_15", align 8
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_456"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %"$res__16" = alloca %Int64, align 8
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_464"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  store %Int64 zeroinitializer, %Int64* %"$res__16", align 8
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_469"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  %"$execptr_load_476" = load i8*, i8** @_execptr, align 8
  %"$$res_15_477" = load %Int64, %Int64* %"$res_15", align 8
  %"$$res__16_478" = load %Int64, %Int64* %"$res__16", align 8
  %"$eq_call_479" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_476", %Int64 %"$$res_15_477", %Int64 %"$$res__16_478")
  store %TName_Bool* %"$eq_call_479", %TName_Bool** %"$test__17", align 8
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_474"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %"$BoolUtils.andb_79" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_486" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_487" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_486", 0
  %"$BoolUtils.andb_envptr_488" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_486", 1
  %"$$test_12_489" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_490" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_487"(i8* %"$BoolUtils.andb_envptr_488", %TName_Bool* %"$$test_12_489")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_490", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$BoolUtils.andb_80" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_79_491" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_fptr_492" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_491", 0
  %"$$BoolUtils.andb_79_envptr_493" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_491", 1
  %"$$test__17_494" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_79_call_495" = call %TName_Bool* %"$$BoolUtils.andb_79_fptr_492"(i8* %"$$BoolUtils.andb_79_envptr_493", %TName_Bool* %"$$test__17_494")
  store %TName_Bool* %"$$BoolUtils.andb_79_call_495", %TName_Bool** %"$BoolUtils.andb_80", align 8
  %"$$BoolUtils.andb_80_496" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_80", align 8
  store %TName_Bool* %"$$BoolUtils.andb_80_496", %TName_Bool** %"$test_18", align 8
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_484"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %"$arg1_19" = alloca %Int64, align 8
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_500"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_500"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775806 }, %Int64* %"$arg1_19", align 8
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 1, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %"$have_gas_505"
  %"$consume_511" = sub i64 %"$gasrem_507", 1
  store i64 %"$consume_511", i64* @_gasrem, align 8
  %"$arg2_20" = alloca %Int64, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_510"
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  store %Int64 { i64 -1 }, %Int64* %"$arg2_20", align 8
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 1, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_515"
  %"$consume_521" = sub i64 %"$gasrem_517", 1
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_523" = icmp ugt i64 1, %"$gasrem_522"
  br i1 %"$gascmp_523", label %"$out_of_gas_524", label %"$have_gas_525"

"$out_of_gas_524":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_525"

"$have_gas_525":                                  ; preds = %"$out_of_gas_524", %"$have_gas_520"
  %"$consume_526" = sub i64 %"$gasrem_522", 1
  store i64 %"$consume_526", i64* @_gasrem, align 8
  %"$res_21" = alloca %Int64, align 8
  %"$$arg1_19_527" = load %Int64, %Int64* %"$arg1_19", align 8
  %"$$arg2_20_528" = load %Int64, %Int64* %"$arg2_20", align 8
  %"$sub_call_529" = call %Int64 @_sub_Int64(%Int64 %"$$arg1_19_527", %Int64 %"$$arg2_20_528")
  store %Int64 %"$sub_call_529", %Int64* %"$res_21", align 8
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 1, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %"$have_gas_525"
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %"$have_gas_525"
  %"$consume_534" = sub i64 %"$gasrem_530", 1
  store i64 %"$consume_534", i64* @_gasrem, align 8
  %"$res__22" = alloca %Int64, align 8
  %"$gasrem_535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_536" = icmp ugt i64 1, %"$gasrem_535"
  br i1 %"$gascmp_536", label %"$out_of_gas_537", label %"$have_gas_538"

"$out_of_gas_537":                                ; preds = %"$have_gas_533"
  call void @_out_of_gas()
  br label %"$have_gas_538"

"$have_gas_538":                                  ; preds = %"$out_of_gas_537", %"$have_gas_533"
  %"$consume_539" = sub i64 %"$gasrem_535", 1
  store i64 %"$consume_539", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$res__22", align 8
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 1, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %"$have_gas_538"
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %"$have_gas_538"
  %"$consume_544" = sub i64 %"$gasrem_540", 1
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  %"$execptr_load_545" = load i8*, i8** @_execptr, align 8
  %"$$res_21_546" = load %Int64, %Int64* %"$res_21", align 8
  %"$$res__22_547" = load %Int64, %Int64* %"$res__22", align 8
  %"$eq_call_548" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_545", %Int64 %"$$res_21_546", %Int64 %"$$res__22_547")
  store %TName_Bool* %"$eq_call_548", %TName_Bool** %"$test__23", align 8
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 1, %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %"$have_gas_543"
  %"$consume_554" = sub i64 %"$gasrem_550", 1
  store i64 %"$consume_554", i64* @_gasrem, align 8
  %"$BoolUtils.andb_81" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_555" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_556" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_555", 0
  %"$BoolUtils.andb_envptr_557" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_555", 1
  %"$$test_18_558" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_559" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_556"(i8* %"$BoolUtils.andb_envptr_557", %TName_Bool* %"$$test_18_558")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_559", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_81", align 8
  %"$BoolUtils.andb_82" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_81_560" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_81", align 8
  %"$$BoolUtils.andb_81_fptr_561" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_81_560", 0
  %"$$BoolUtils.andb_81_envptr_562" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_81_560", 1
  %"$$test__23_563" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_81_call_564" = call %TName_Bool* %"$$BoolUtils.andb_81_fptr_561"(i8* %"$$BoolUtils.andb_81_envptr_562", %TName_Bool* %"$$test__23_563")
  store %TName_Bool* %"$$BoolUtils.andb_81_call_564", %TName_Bool** %"$BoolUtils.andb_82", align 8
  %"$$BoolUtils.andb_82_565" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_82", align 8
  store %TName_Bool* %"$$BoolUtils.andb_82_565", %TName_Bool** %"$test_24", align 8
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_553"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_553"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Uint128, align 8
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_569"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$arg1_25", align 8
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_574"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Uint128, align 8
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_579"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %"$arg2_26", align 8
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_584"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_589"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %"$res_27" = alloca %Uint128, align 8
  %"$$arg1_25_596" = load %Uint128, %Uint128* %"$arg1_25", align 8
  %"$$arg2_26_597" = load %Uint128, %Uint128* %"$arg2_26", align 8
  %"$sub_call_598" = call %Uint128 @_sub_Uint128(%Uint128 %"$$arg1_25_596", %Uint128 %"$$arg2_26_597")
  store %Uint128 %"$sub_call_598", %Uint128* %"$res_27", align 8
  %"$gasrem_599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %"$have_gas_594"
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem, align 8
  %"$res__28" = alloca %Uint128, align 8
  %"$gasrem_604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_605" = icmp ugt i64 1, %"$gasrem_604"
  br i1 %"$gascmp_605", label %"$out_of_gas_606", label %"$have_gas_607"

"$out_of_gas_606":                                ; preds = %"$have_gas_602"
  call void @_out_of_gas()
  br label %"$have_gas_607"

"$have_gas_607":                                  ; preds = %"$out_of_gas_606", %"$have_gas_602"
  %"$consume_608" = sub i64 %"$gasrem_604", 1
  store i64 %"$consume_608", i64* @_gasrem, align 8
  store %Uint128 { i128 -2 }, %Uint128* %"$res__28", align 8
  %"$gasrem_609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_610" = icmp ugt i64 1, %"$gasrem_609"
  br i1 %"$gascmp_610", label %"$out_of_gas_611", label %"$have_gas_612"

"$out_of_gas_611":                                ; preds = %"$have_gas_607"
  call void @_out_of_gas()
  br label %"$have_gas_612"

"$have_gas_612":                                  ; preds = %"$out_of_gas_611", %"$have_gas_607"
  %"$consume_613" = sub i64 %"$gasrem_609", 1
  store i64 %"$consume_613", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  %"$execptr_load_614" = load i8*, i8** @_execptr, align 8
  %"$$res_27_615" = load %Uint128, %Uint128* %"$res_27", align 8
  %"$$res__28_616" = load %Uint128, %Uint128* %"$res__28", align 8
  %"$eq_call_617" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_614", %Uint128 %"$$res_27_615", %Uint128 %"$$res__28_616")
  store %TName_Bool* %"$eq_call_617", %TName_Bool** %"$test__29", align 8
  %"$gasrem_619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_620" = icmp ugt i64 1, %"$gasrem_619"
  br i1 %"$gascmp_620", label %"$out_of_gas_621", label %"$have_gas_622"

"$out_of_gas_621":                                ; preds = %"$have_gas_612"
  call void @_out_of_gas()
  br label %"$have_gas_622"

"$have_gas_622":                                  ; preds = %"$out_of_gas_621", %"$have_gas_612"
  %"$consume_623" = sub i64 %"$gasrem_619", 1
  store i64 %"$consume_623", i64* @_gasrem, align 8
  %"$BoolUtils.andb_83" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_624" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_625" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_624", 0
  %"$BoolUtils.andb_envptr_626" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_624", 1
  %"$$test_24_627" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_628" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_625"(i8* %"$BoolUtils.andb_envptr_626", %TName_Bool* %"$$test_24_627")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_628", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_83", align 8
  %"$BoolUtils.andb_84" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_83_629" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_83", align 8
  %"$$BoolUtils.andb_83_fptr_630" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_83_629", 0
  %"$$BoolUtils.andb_83_envptr_631" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_83_629", 1
  %"$$test__29_632" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_83_call_633" = call %TName_Bool* %"$$BoolUtils.andb_83_fptr_630"(i8* %"$$BoolUtils.andb_83_envptr_631", %TName_Bool* %"$$test__29_632")
  store %TName_Bool* %"$$BoolUtils.andb_83_call_633", %TName_Bool** %"$BoolUtils.andb_84", align 8
  %"$$BoolUtils.andb_84_634" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_84", align 8
  store %TName_Bool* %"$$BoolUtils.andb_84_634", %TName_Bool** %"$test_30", align 8
  %"$gasrem_635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_636" = icmp ugt i64 1, %"$gasrem_635"
  br i1 %"$gascmp_636", label %"$out_of_gas_637", label %"$have_gas_638"

"$out_of_gas_637":                                ; preds = %"$have_gas_622"
  call void @_out_of_gas()
  br label %"$have_gas_638"

"$have_gas_638":                                  ; preds = %"$out_of_gas_637", %"$have_gas_622"
  %"$consume_639" = sub i64 %"$gasrem_635", 1
  store i64 %"$consume_639", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Uint128, align 8
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$have_gas_638"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$have_gas_638"
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$arg1_31", align 8
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_643"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_643"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Uint128, align 8
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 1, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$have_gas_648"
  %"$consume_654" = sub i64 %"$gasrem_650", 1
  store i64 %"$consume_654", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$arg2_32", align 8
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 1, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_653"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_653"
  %"$consume_659" = sub i64 %"$gasrem_655", 1
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 1, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %"$have_gas_658"
  %"$consume_664" = sub i64 %"$gasrem_660", 1
  store i64 %"$consume_664", i64* @_gasrem, align 8
  %"$res_33" = alloca %Uint128, align 8
  %"$$arg1_31_665" = load %Uint128, %Uint128* %"$arg1_31", align 8
  %"$$arg2_32_666" = load %Uint128, %Uint128* %"$arg2_32", align 8
  %"$sub_call_667" = call %Uint128 @_sub_Uint128(%Uint128 %"$$arg1_31_665", %Uint128 %"$$arg2_32_666")
  store %Uint128 %"$sub_call_667", %Uint128* %"$res_33", align 8
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 1, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$have_gas_663"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$have_gas_663"
  %"$consume_672" = sub i64 %"$gasrem_668", 1
  store i64 %"$consume_672", i64* @_gasrem, align 8
  %"$res__34" = alloca %Uint128, align 8
  %"$gasrem_673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_674" = icmp ugt i64 1, %"$gasrem_673"
  br i1 %"$gascmp_674", label %"$out_of_gas_675", label %"$have_gas_676"

"$out_of_gas_675":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_676"

"$have_gas_676":                                  ; preds = %"$out_of_gas_675", %"$have_gas_671"
  %"$consume_677" = sub i64 %"$gasrem_673", 1
  store i64 %"$consume_677", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$res__34", align 8
  %"$gasrem_678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_679" = icmp ugt i64 1, %"$gasrem_678"
  br i1 %"$gascmp_679", label %"$out_of_gas_680", label %"$have_gas_681"

"$out_of_gas_680":                                ; preds = %"$have_gas_676"
  call void @_out_of_gas()
  br label %"$have_gas_681"

"$have_gas_681":                                  ; preds = %"$out_of_gas_680", %"$have_gas_676"
  %"$consume_682" = sub i64 %"$gasrem_678", 1
  store i64 %"$consume_682", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  %"$execptr_load_683" = load i8*, i8** @_execptr, align 8
  %"$$res_33_684" = load %Uint128, %Uint128* %"$res_33", align 8
  %"$$res__34_685" = load %Uint128, %Uint128* %"$res__34", align 8
  %"$eq_call_686" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_683", %Uint128 %"$$res_33_684", %Uint128 %"$$res__34_685")
  store %TName_Bool* %"$eq_call_686", %TName_Bool** %"$test__35", align 8
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 1, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_681"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_681"
  %"$consume_692" = sub i64 %"$gasrem_688", 1
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %"$BoolUtils.andb_85" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_693" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_694" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_693", 0
  %"$BoolUtils.andb_envptr_695" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_693", 1
  %"$$test_30_696" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_697" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_694"(i8* %"$BoolUtils.andb_envptr_695", %TName_Bool* %"$$test_30_696")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_697", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_85", align 8
  %"$BoolUtils.andb_86" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_85_698" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_85", align 8
  %"$$BoolUtils.andb_85_fptr_699" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_85_698", 0
  %"$$BoolUtils.andb_85_envptr_700" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_85_698", 1
  %"$$test__35_701" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_85_call_702" = call %TName_Bool* %"$$BoolUtils.andb_85_fptr_699"(i8* %"$$BoolUtils.andb_85_envptr_700", %TName_Bool* %"$$test__35_701")
  store %TName_Bool* %"$$BoolUtils.andb_85_call_702", %TName_Bool** %"$BoolUtils.andb_86", align 8
  %"$$BoolUtils.andb_86_703" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_86", align 8
  store %TName_Bool* %"$$BoolUtils.andb_86_703", %TName_Bool** %"$test_36", align 8
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 1, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_691"
  %"$consume_708" = sub i64 %"$gasrem_704", 1
  store i64 %"$consume_708", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Uint256, align 8
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 1, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_707"
  %"$consume_713" = sub i64 %"$gasrem_709", 1
  store i64 %"$consume_713", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211455 }, %Uint256* %"$arg1_37", align 8
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_712"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Uint256, align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_717"
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$arg2_38", align 8
  %"$gasrem_724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_725" = icmp ugt i64 1, %"$gasrem_724"
  br i1 %"$gascmp_725", label %"$out_of_gas_726", label %"$have_gas_727"

"$out_of_gas_726":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_727"

"$have_gas_727":                                  ; preds = %"$out_of_gas_726", %"$have_gas_722"
  %"$consume_728" = sub i64 %"$gasrem_724", 1
  store i64 %"$consume_728", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_729" = load i64, i64* @_gasrem, align 8
  %"$gascmp_730" = icmp ugt i64 1, %"$gasrem_729"
  br i1 %"$gascmp_730", label %"$out_of_gas_731", label %"$have_gas_732"

"$out_of_gas_731":                                ; preds = %"$have_gas_727"
  call void @_out_of_gas()
  br label %"$have_gas_732"

"$have_gas_732":                                  ; preds = %"$out_of_gas_731", %"$have_gas_727"
  %"$consume_733" = sub i64 %"$gasrem_729", 1
  store i64 %"$consume_733", i64* @_gasrem, align 8
  %"$res_39" = alloca %Uint256, align 8
  %"$execptr_load_734" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_37_735" = alloca %Uint256, align 8
  %"$$arg1_37_736" = load %Uint256, %Uint256* %"$arg1_37", align 8
  store %Uint256 %"$$arg1_37_736", %Uint256* %"$sub_$arg1_37_735", align 8
  %"$sub_$arg2_38_737" = alloca %Uint256, align 8
  %"$$arg2_38_738" = load %Uint256, %Uint256* %"$arg2_38", align 8
  store %Uint256 %"$$arg2_38_738", %Uint256* %"$sub_$arg2_38_737", align 8
  %"$sub_call_739" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_734", %Uint256* %"$sub_$arg1_37_735", %Uint256* %"$sub_$arg2_38_737")
  %"$sub_741" = load %Uint256, %Uint256* %"$sub_call_739", align 8
  store %Uint256 %"$sub_741", %Uint256* %"$res_39", align 8
  %"$gasrem_742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_743" = icmp ugt i64 1, %"$gasrem_742"
  br i1 %"$gascmp_743", label %"$out_of_gas_744", label %"$have_gas_745"

"$out_of_gas_744":                                ; preds = %"$have_gas_732"
  call void @_out_of_gas()
  br label %"$have_gas_745"

"$have_gas_745":                                  ; preds = %"$out_of_gas_744", %"$have_gas_732"
  %"$consume_746" = sub i64 %"$gasrem_742", 1
  store i64 %"$consume_746", i64* @_gasrem, align 8
  %"$res__40" = alloca %Uint256, align 8
  %"$gasrem_747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_748" = icmp ugt i64 1, %"$gasrem_747"
  br i1 %"$gascmp_748", label %"$out_of_gas_749", label %"$have_gas_750"

"$out_of_gas_749":                                ; preds = %"$have_gas_745"
  call void @_out_of_gas()
  br label %"$have_gas_750"

"$have_gas_750":                                  ; preds = %"$out_of_gas_749", %"$have_gas_745"
  %"$consume_751" = sub i64 %"$gasrem_747", 1
  store i64 %"$consume_751", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211454 }, %Uint256* %"$res__40", align 8
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 1, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_750"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_750"
  %"$consume_756" = sub i64 %"$gasrem_752", 1
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  %"$execptr_load_757" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_39_758" = alloca %Uint256, align 8
  %"$$res_39_759" = load %Uint256, %Uint256* %"$res_39", align 8
  store %Uint256 %"$$res_39_759", %Uint256* %"$eq_$res_39_758", align 8
  %"$eq_$res__40_760" = alloca %Uint256, align 8
  %"$$res__40_761" = load %Uint256, %Uint256* %"$res__40", align 8
  store %Uint256 %"$$res__40_761", %Uint256* %"$eq_$res__40_760", align 8
  %"$eq_call_762" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_757", %Uint256* %"$eq_$res_39_758", %Uint256* %"$eq_$res__40_760")
  store %TName_Bool* %"$eq_call_762", %TName_Bool** %"$test__41", align 8
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_755"
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %"$BoolUtils.andb_87" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_769" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_770" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_769", 0
  %"$BoolUtils.andb_envptr_771" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_769", 1
  %"$$test_36_772" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_773" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_770"(i8* %"$BoolUtils.andb_envptr_771", %TName_Bool* %"$$test_36_772")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_773", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_87", align 8
  %"$BoolUtils.andb_88" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_87_774" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_87", align 8
  %"$$BoolUtils.andb_87_fptr_775" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_87_774", 0
  %"$$BoolUtils.andb_87_envptr_776" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_87_774", 1
  %"$$test__41_777" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_87_call_778" = call %TName_Bool* %"$$BoolUtils.andb_87_fptr_775"(i8* %"$$BoolUtils.andb_87_envptr_776", %TName_Bool* %"$$test__41_777")
  store %TName_Bool* %"$$BoolUtils.andb_87_call_778", %TName_Bool** %"$BoolUtils.andb_88", align 8
  %"$$BoolUtils.andb_88_779" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_88", align 8
  store %TName_Bool* %"$$BoolUtils.andb_88_779", %TName_Bool** %"$test_42", align 8
  %"$gasrem_780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_781" = icmp ugt i64 1, %"$gasrem_780"
  br i1 %"$gascmp_781", label %"$out_of_gas_782", label %"$have_gas_783"

"$out_of_gas_782":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_783"

"$have_gas_783":                                  ; preds = %"$out_of_gas_782", %"$have_gas_767"
  %"$consume_784" = sub i64 %"$gasrem_780", 1
  store i64 %"$consume_784", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Uint256, align 8
  %"$gasrem_785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_786" = icmp ugt i64 1, %"$gasrem_785"
  br i1 %"$gascmp_786", label %"$out_of_gas_787", label %"$have_gas_788"

"$out_of_gas_787":                                ; preds = %"$have_gas_783"
  call void @_out_of_gas()
  br label %"$have_gas_788"

"$have_gas_788":                                  ; preds = %"$out_of_gas_787", %"$have_gas_783"
  %"$consume_789" = sub i64 %"$gasrem_785", 1
  store i64 %"$consume_789", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg1_43", align 8
  %"$gasrem_790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_791" = icmp ugt i64 1, %"$gasrem_790"
  br i1 %"$gascmp_791", label %"$out_of_gas_792", label %"$have_gas_793"

"$out_of_gas_792":                                ; preds = %"$have_gas_788"
  call void @_out_of_gas()
  br label %"$have_gas_793"

"$have_gas_793":                                  ; preds = %"$out_of_gas_792", %"$have_gas_788"
  %"$consume_794" = sub i64 %"$gasrem_790", 1
  store i64 %"$consume_794", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Uint256, align 8
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 1, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_793"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_793"
  %"$consume_799" = sub i64 %"$gasrem_795", 1
  store i64 %"$consume_799", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg2_44", align 8
  %"$gasrem_800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_801" = icmp ugt i64 1, %"$gasrem_800"
  br i1 %"$gascmp_801", label %"$out_of_gas_802", label %"$have_gas_803"

"$out_of_gas_802":                                ; preds = %"$have_gas_798"
  call void @_out_of_gas()
  br label %"$have_gas_803"

"$have_gas_803":                                  ; preds = %"$out_of_gas_802", %"$have_gas_798"
  %"$consume_804" = sub i64 %"$gasrem_800", 1
  store i64 %"$consume_804", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_806" = icmp ugt i64 1, %"$gasrem_805"
  br i1 %"$gascmp_806", label %"$out_of_gas_807", label %"$have_gas_808"

"$out_of_gas_807":                                ; preds = %"$have_gas_803"
  call void @_out_of_gas()
  br label %"$have_gas_808"

"$have_gas_808":                                  ; preds = %"$out_of_gas_807", %"$have_gas_803"
  %"$consume_809" = sub i64 %"$gasrem_805", 1
  store i64 %"$consume_809", i64* @_gasrem, align 8
  %"$res_45" = alloca %Uint256, align 8
  %"$execptr_load_810" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_43_811" = alloca %Uint256, align 8
  %"$$arg1_43_812" = load %Uint256, %Uint256* %"$arg1_43", align 8
  store %Uint256 %"$$arg1_43_812", %Uint256* %"$sub_$arg1_43_811", align 8
  %"$sub_$arg2_44_813" = alloca %Uint256, align 8
  %"$$arg2_44_814" = load %Uint256, %Uint256* %"$arg2_44", align 8
  store %Uint256 %"$$arg2_44_814", %Uint256* %"$sub_$arg2_44_813", align 8
  %"$sub_call_815" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_810", %Uint256* %"$sub_$arg1_43_811", %Uint256* %"$sub_$arg2_44_813")
  %"$sub_817" = load %Uint256, %Uint256* %"$sub_call_815", align 8
  store %Uint256 %"$sub_817", %Uint256* %"$res_45", align 8
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 1, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %"$have_gas_808"
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %"$have_gas_808"
  %"$consume_822" = sub i64 %"$gasrem_818", 1
  store i64 %"$consume_822", i64* @_gasrem, align 8
  %"$res__46" = alloca %Uint256, align 8
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 1, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %"$have_gas_821"
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %"$have_gas_821"
  %"$consume_827" = sub i64 %"$gasrem_823", 1
  store i64 %"$consume_827", i64* @_gasrem, align 8
  store %Uint256 zeroinitializer, %Uint256* %"$res__46", align 8
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$have_gas_826"
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  %"$execptr_load_833" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_45_834" = alloca %Uint256, align 8
  %"$$res_45_835" = load %Uint256, %Uint256* %"$res_45", align 8
  store %Uint256 %"$$res_45_835", %Uint256* %"$eq_$res_45_834", align 8
  %"$eq_$res__46_836" = alloca %Uint256, align 8
  %"$$res__46_837" = load %Uint256, %Uint256* %"$res__46", align 8
  store %Uint256 %"$$res__46_837", %Uint256* %"$eq_$res__46_836", align 8
  %"$eq_call_838" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_833", %Uint256* %"$eq_$res_45_834", %Uint256* %"$eq_$res__46_836")
  store %TName_Bool* %"$eq_call_838", %TName_Bool** %"$test__47", align 8
  %"$gasrem_840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_841" = icmp ugt i64 1, %"$gasrem_840"
  br i1 %"$gascmp_841", label %"$out_of_gas_842", label %"$have_gas_843"

"$out_of_gas_842":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_843"

"$have_gas_843":                                  ; preds = %"$out_of_gas_842", %"$have_gas_831"
  %"$consume_844" = sub i64 %"$gasrem_840", 1
  store i64 %"$consume_844", i64* @_gasrem, align 8
  %"$BoolUtils.andb_89" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_845" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_846" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_845", 0
  %"$BoolUtils.andb_envptr_847" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_845", 1
  %"$$test_42_848" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_849" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_846"(i8* %"$BoolUtils.andb_envptr_847", %TName_Bool* %"$$test_42_848")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_849", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_89", align 8
  %"$BoolUtils.andb_90" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_89_850" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_89", align 8
  %"$$BoolUtils.andb_89_fptr_851" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_89_850", 0
  %"$$BoolUtils.andb_89_envptr_852" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_89_850", 1
  %"$$test__47_853" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_89_call_854" = call %TName_Bool* %"$$BoolUtils.andb_89_fptr_851"(i8* %"$$BoolUtils.andb_89_envptr_852", %TName_Bool* %"$$test__47_853")
  store %TName_Bool* %"$$BoolUtils.andb_89_call_854", %TName_Bool** %"$BoolUtils.andb_90", align 8
  %"$$BoolUtils.andb_90_855" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_90", align 8
  store %TName_Bool* %"$$BoolUtils.andb_90_855", %TName_Bool** %"$test_48", align 8
  %"$gasrem_856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_857" = icmp ugt i64 1, %"$gasrem_856"
  br i1 %"$gascmp_857", label %"$out_of_gas_858", label %"$have_gas_859"

"$out_of_gas_858":                                ; preds = %"$have_gas_843"
  call void @_out_of_gas()
  br label %"$have_gas_859"

"$have_gas_859":                                  ; preds = %"$out_of_gas_858", %"$have_gas_843"
  %"$consume_860" = sub i64 %"$gasrem_856", 1
  store i64 %"$consume_860", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Uint256, align 8
  %"$gasrem_861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_862" = icmp ugt i64 1, %"$gasrem_861"
  br i1 %"$gascmp_862", label %"$out_of_gas_863", label %"$have_gas_864"

"$out_of_gas_863":                                ; preds = %"$have_gas_859"
  call void @_out_of_gas()
  br label %"$have_gas_864"

"$have_gas_864":                                  ; preds = %"$out_of_gas_863", %"$have_gas_859"
  %"$consume_865" = sub i64 %"$gasrem_861", 1
  store i64 %"$consume_865", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg1_49", align 8
  %"$gasrem_866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_867" = icmp ugt i64 1, %"$gasrem_866"
  br i1 %"$gascmp_867", label %"$out_of_gas_868", label %"$have_gas_869"

"$out_of_gas_868":                                ; preds = %"$have_gas_864"
  call void @_out_of_gas()
  br label %"$have_gas_869"

"$have_gas_869":                                  ; preds = %"$out_of_gas_868", %"$have_gas_864"
  %"$consume_870" = sub i64 %"$gasrem_866", 1
  store i64 %"$consume_870", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Uint256, align 8
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 1, %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_869"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_869"
  %"$consume_875" = sub i64 %"$gasrem_871", 1
  store i64 %"$consume_875", i64* @_gasrem, align 8
  store %Uint256 { i256 -2 }, %Uint256* %"$arg2_50", align 8
  %"$gasrem_876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_877" = icmp ugt i64 1, %"$gasrem_876"
  br i1 %"$gascmp_877", label %"$out_of_gas_878", label %"$have_gas_879"

"$out_of_gas_878":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_879"

"$have_gas_879":                                  ; preds = %"$out_of_gas_878", %"$have_gas_874"
  %"$consume_880" = sub i64 %"$gasrem_876", 1
  store i64 %"$consume_880", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_882" = icmp ugt i64 1, %"$gasrem_881"
  br i1 %"$gascmp_882", label %"$out_of_gas_883", label %"$have_gas_884"

"$out_of_gas_883":                                ; preds = %"$have_gas_879"
  call void @_out_of_gas()
  br label %"$have_gas_884"

"$have_gas_884":                                  ; preds = %"$out_of_gas_883", %"$have_gas_879"
  %"$consume_885" = sub i64 %"$gasrem_881", 1
  store i64 %"$consume_885", i64* @_gasrem, align 8
  %"$res_51" = alloca %Uint256, align 8
  %"$execptr_load_886" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_49_887" = alloca %Uint256, align 8
  %"$$arg1_49_888" = load %Uint256, %Uint256* %"$arg1_49", align 8
  store %Uint256 %"$$arg1_49_888", %Uint256* %"$sub_$arg1_49_887", align 8
  %"$sub_$arg2_50_889" = alloca %Uint256, align 8
  %"$$arg2_50_890" = load %Uint256, %Uint256* %"$arg2_50", align 8
  store %Uint256 %"$$arg2_50_890", %Uint256* %"$sub_$arg2_50_889", align 8
  %"$sub_call_891" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_886", %Uint256* %"$sub_$arg1_49_887", %Uint256* %"$sub_$arg2_50_889")
  %"$sub_893" = load %Uint256, %Uint256* %"$sub_call_891", align 8
  store %Uint256 %"$sub_893", %Uint256* %"$res_51", align 8
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_884"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_884"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$res__52" = alloca %Uint256, align 8
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 1, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_897"
  %"$consume_903" = sub i64 %"$gasrem_899", 1
  store i64 %"$consume_903", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__52", align 8
  %"$gasrem_904" = load i64, i64* @_gasrem, align 8
  %"$gascmp_905" = icmp ugt i64 1, %"$gasrem_904"
  br i1 %"$gascmp_905", label %"$out_of_gas_906", label %"$have_gas_907"

"$out_of_gas_906":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_907"

"$have_gas_907":                                  ; preds = %"$out_of_gas_906", %"$have_gas_902"
  %"$consume_908" = sub i64 %"$gasrem_904", 1
  store i64 %"$consume_908", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  %"$execptr_load_909" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_910" = alloca %Uint256, align 8
  %"$$res_51_911" = load %Uint256, %Uint256* %"$res_51", align 8
  store %Uint256 %"$$res_51_911", %Uint256* %"$eq_$res_51_910", align 8
  %"$eq_$res__52_912" = alloca %Uint256, align 8
  %"$$res__52_913" = load %Uint256, %Uint256* %"$res__52", align 8
  store %Uint256 %"$$res__52_913", %Uint256* %"$eq_$res__52_912", align 8
  %"$eq_call_914" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_909", %Uint256* %"$eq_$res_51_910", %Uint256* %"$eq_$res__52_912")
  store %TName_Bool* %"$eq_call_914", %TName_Bool** %"$test__53", align 8
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_907"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_907"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem, align 8
  %"$BoolUtils.andb_91" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_921" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_922" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_921", 0
  %"$BoolUtils.andb_envptr_923" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_921", 1
  %"$$test_48_924" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_925" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_922"(i8* %"$BoolUtils.andb_envptr_923", %TName_Bool* %"$$test_48_924")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_925", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_91", align 8
  %"$BoolUtils.andb_92" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_91_926" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_91", align 8
  %"$$BoolUtils.andb_91_fptr_927" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_91_926", 0
  %"$$BoolUtils.andb_91_envptr_928" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_91_926", 1
  %"$$test__53_929" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_91_call_930" = call %TName_Bool* %"$$BoolUtils.andb_91_fptr_927"(i8* %"$$BoolUtils.andb_91_envptr_928", %TName_Bool* %"$$test__53_929")
  store %TName_Bool* %"$$BoolUtils.andb_91_call_930", %TName_Bool** %"$BoolUtils.andb_92", align 8
  %"$$BoolUtils.andb_92_931" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_92", align 8
  store %TName_Bool* %"$$BoolUtils.andb_92_931", %TName_Bool** %"$test_54", align 8
  %"$gasrem_932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_933" = icmp ugt i64 1, %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$have_gas_919"
  %"$consume_936" = sub i64 %"$gasrem_932", 1
  store i64 %"$consume_936", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Int256, align 8
  %"$gasrem_937" = load i64, i64* @_gasrem, align 8
  %"$gascmp_938" = icmp ugt i64 1, %"$gasrem_937"
  br i1 %"$gascmp_938", label %"$out_of_gas_939", label %"$have_gas_940"

"$out_of_gas_939":                                ; preds = %"$have_gas_935"
  call void @_out_of_gas()
  br label %"$have_gas_940"

"$have_gas_940":                                  ; preds = %"$out_of_gas_939", %"$have_gas_935"
  %"$consume_941" = sub i64 %"$gasrem_937", 1
  store i64 %"$consume_941", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_55", align 8
  %"$gasrem_942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_943" = icmp ugt i64 1, %"$gasrem_942"
  br i1 %"$gascmp_943", label %"$out_of_gas_944", label %"$have_gas_945"

"$out_of_gas_944":                                ; preds = %"$have_gas_940"
  call void @_out_of_gas()
  br label %"$have_gas_945"

"$have_gas_945":                                  ; preds = %"$out_of_gas_944", %"$have_gas_940"
  %"$consume_946" = sub i64 %"$gasrem_942", 1
  store i64 %"$consume_946", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Int256, align 8
  %"$gasrem_947" = load i64, i64* @_gasrem, align 8
  %"$gascmp_948" = icmp ugt i64 1, %"$gasrem_947"
  br i1 %"$gascmp_948", label %"$out_of_gas_949", label %"$have_gas_950"

"$out_of_gas_949":                                ; preds = %"$have_gas_945"
  call void @_out_of_gas()
  br label %"$have_gas_950"

"$have_gas_950":                                  ; preds = %"$out_of_gas_949", %"$have_gas_945"
  %"$consume_951" = sub i64 %"$gasrem_947", 1
  store i64 %"$consume_951", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$arg2_56", align 8
  %"$gasrem_952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_953" = icmp ugt i64 1, %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %"$have_gas_950"
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %"$have_gas_950"
  %"$consume_956" = sub i64 %"$gasrem_952", 1
  store i64 %"$consume_956", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_958" = icmp ugt i64 1, %"$gasrem_957"
  br i1 %"$gascmp_958", label %"$out_of_gas_959", label %"$have_gas_960"

"$out_of_gas_959":                                ; preds = %"$have_gas_955"
  call void @_out_of_gas()
  br label %"$have_gas_960"

"$have_gas_960":                                  ; preds = %"$out_of_gas_959", %"$have_gas_955"
  %"$consume_961" = sub i64 %"$gasrem_957", 1
  store i64 %"$consume_961", i64* @_gasrem, align 8
  %"$res_57" = alloca %Int256, align 8
  %"$execptr_load_962" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_55_963" = alloca %Int256, align 8
  %"$$arg1_55_964" = load %Int256, %Int256* %"$arg1_55", align 8
  store %Int256 %"$$arg1_55_964", %Int256* %"$sub_$arg1_55_963", align 8
  %"$sub_$arg2_56_965" = alloca %Int256, align 8
  %"$$arg2_56_966" = load %Int256, %Int256* %"$arg2_56", align 8
  store %Int256 %"$$arg2_56_966", %Int256* %"$sub_$arg2_56_965", align 8
  %"$sub_call_967" = call %Int256* @_sub_Int256(i8* %"$execptr_load_962", %Int256* %"$sub_$arg1_55_963", %Int256* %"$sub_$arg2_56_965")
  %"$sub_969" = load %Int256, %Int256* %"$sub_call_967", align 8
  store %Int256 %"$sub_969", %Int256* %"$res_57", align 8
  %"$gasrem_970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_971" = icmp ugt i64 1, %"$gasrem_970"
  br i1 %"$gascmp_971", label %"$out_of_gas_972", label %"$have_gas_973"

"$out_of_gas_972":                                ; preds = %"$have_gas_960"
  call void @_out_of_gas()
  br label %"$have_gas_973"

"$have_gas_973":                                  ; preds = %"$out_of_gas_972", %"$have_gas_960"
  %"$consume_974" = sub i64 %"$gasrem_970", 1
  store i64 %"$consume_974", i64* @_gasrem, align 8
  %"$res__58" = alloca %Int256, align 8
  %"$gasrem_975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_976" = icmp ugt i64 1, %"$gasrem_975"
  br i1 %"$gascmp_976", label %"$out_of_gas_977", label %"$have_gas_978"

"$out_of_gas_977":                                ; preds = %"$have_gas_973"
  call void @_out_of_gas()
  br label %"$have_gas_978"

"$have_gas_978":                                  ; preds = %"$out_of_gas_977", %"$have_gas_973"
  %"$consume_979" = sub i64 %"$gasrem_975", 1
  store i64 %"$consume_979", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$res__58", align 8
  %"$gasrem_980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_981" = icmp ugt i64 1, %"$gasrem_980"
  br i1 %"$gascmp_981", label %"$out_of_gas_982", label %"$have_gas_983"

"$out_of_gas_982":                                ; preds = %"$have_gas_978"
  call void @_out_of_gas()
  br label %"$have_gas_983"

"$have_gas_983":                                  ; preds = %"$out_of_gas_982", %"$have_gas_978"
  %"$consume_984" = sub i64 %"$gasrem_980", 1
  store i64 %"$consume_984", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  %"$execptr_load_985" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_986" = alloca %Int256, align 8
  %"$$res_57_987" = load %Int256, %Int256* %"$res_57", align 8
  store %Int256 %"$$res_57_987", %Int256* %"$eq_$res_57_986", align 8
  %"$eq_$res__58_988" = alloca %Int256, align 8
  %"$$res__58_989" = load %Int256, %Int256* %"$res__58", align 8
  store %Int256 %"$$res__58_989", %Int256* %"$eq_$res__58_988", align 8
  %"$eq_call_990" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_985", %Int256* %"$eq_$res_57_986", %Int256* %"$eq_$res__58_988")
  store %TName_Bool* %"$eq_call_990", %TName_Bool** %"$test__59", align 8
  %"$gasrem_992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_993" = icmp ugt i64 1, %"$gasrem_992"
  br i1 %"$gascmp_993", label %"$out_of_gas_994", label %"$have_gas_995"

"$out_of_gas_994":                                ; preds = %"$have_gas_983"
  call void @_out_of_gas()
  br label %"$have_gas_995"

"$have_gas_995":                                  ; preds = %"$out_of_gas_994", %"$have_gas_983"
  %"$consume_996" = sub i64 %"$gasrem_992", 1
  store i64 %"$consume_996", i64* @_gasrem, align 8
  %"$BoolUtils.andb_93" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_997" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_998" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_997", 0
  %"$BoolUtils.andb_envptr_999" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_997", 1
  %"$$test_54_1000" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1001" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_998"(i8* %"$BoolUtils.andb_envptr_999", %TName_Bool* %"$$test_54_1000")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1001", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_93", align 8
  %"$BoolUtils.andb_94" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_93_1002" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_93", align 8
  %"$$BoolUtils.andb_93_fptr_1003" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_93_1002", 0
  %"$$BoolUtils.andb_93_envptr_1004" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_93_1002", 1
  %"$$test__59_1005" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_93_call_1006" = call %TName_Bool* %"$$BoolUtils.andb_93_fptr_1003"(i8* %"$$BoolUtils.andb_93_envptr_1004", %TName_Bool* %"$$test__59_1005")
  store %TName_Bool* %"$$BoolUtils.andb_93_call_1006", %TName_Bool** %"$BoolUtils.andb_94", align 8
  %"$$BoolUtils.andb_94_1007" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_94", align 8
  store %TName_Bool* %"$$BoolUtils.andb_94_1007", %TName_Bool** %"$test_60", align 8
  %"$gasrem_1008" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1009" = icmp ugt i64 1, %"$gasrem_1008"
  br i1 %"$gascmp_1009", label %"$out_of_gas_1010", label %"$have_gas_1011"

"$out_of_gas_1010":                               ; preds = %"$have_gas_995"
  call void @_out_of_gas()
  br label %"$have_gas_1011"

"$have_gas_1011":                                 ; preds = %"$out_of_gas_1010", %"$have_gas_995"
  %"$consume_1012" = sub i64 %"$gasrem_1008", 1
  store i64 %"$consume_1012", i64* @_gasrem, align 8
  %"$arg2_61" = alloca %Int256, align 8
  %"$gasrem_1013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1014" = icmp ugt i64 1, %"$gasrem_1013"
  br i1 %"$gascmp_1014", label %"$out_of_gas_1015", label %"$have_gas_1016"

"$out_of_gas_1015":                               ; preds = %"$have_gas_1011"
  call void @_out_of_gas()
  br label %"$have_gas_1016"

"$have_gas_1016":                                 ; preds = %"$out_of_gas_1015", %"$have_gas_1011"
  %"$consume_1017" = sub i64 %"$gasrem_1013", 1
  store i64 %"$consume_1017", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_61", align 8
  %"$gasrem_1018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1019" = icmp ugt i64 1, %"$gasrem_1018"
  br i1 %"$gascmp_1019", label %"$out_of_gas_1020", label %"$have_gas_1021"

"$out_of_gas_1020":                               ; preds = %"$have_gas_1016"
  call void @_out_of_gas()
  br label %"$have_gas_1021"

"$have_gas_1021":                                 ; preds = %"$out_of_gas_1020", %"$have_gas_1016"
  %"$consume_1022" = sub i64 %"$gasrem_1018", 1
  store i64 %"$consume_1022", i64* @_gasrem, align 8
  %"$arg1_62" = alloca %Int256, align 8
  %"$gasrem_1023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1024" = icmp ugt i64 1, %"$gasrem_1023"
  br i1 %"$gascmp_1024", label %"$out_of_gas_1025", label %"$have_gas_1026"

"$out_of_gas_1025":                               ; preds = %"$have_gas_1021"
  call void @_out_of_gas()
  br label %"$have_gas_1026"

"$have_gas_1026":                                 ; preds = %"$out_of_gas_1025", %"$have_gas_1021"
  %"$consume_1027" = sub i64 %"$gasrem_1023", 1
  store i64 %"$consume_1027", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$arg1_62", align 8
  %"$gasrem_1028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1029" = icmp ugt i64 1, %"$gasrem_1028"
  br i1 %"$gascmp_1029", label %"$out_of_gas_1030", label %"$have_gas_1031"

"$out_of_gas_1030":                               ; preds = %"$have_gas_1026"
  call void @_out_of_gas()
  br label %"$have_gas_1031"

"$have_gas_1031":                                 ; preds = %"$out_of_gas_1030", %"$have_gas_1026"
  %"$consume_1032" = sub i64 %"$gasrem_1028", 1
  store i64 %"$consume_1032", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1034" = icmp ugt i64 1, %"$gasrem_1033"
  br i1 %"$gascmp_1034", label %"$out_of_gas_1035", label %"$have_gas_1036"

"$out_of_gas_1035":                               ; preds = %"$have_gas_1031"
  call void @_out_of_gas()
  br label %"$have_gas_1036"

"$have_gas_1036":                                 ; preds = %"$out_of_gas_1035", %"$have_gas_1031"
  %"$consume_1037" = sub i64 %"$gasrem_1033", 1
  store i64 %"$consume_1037", i64* @_gasrem, align 8
  %"$res_63" = alloca %Int256, align 8
  %"$execptr_load_1038" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_62_1039" = alloca %Int256, align 8
  %"$$arg1_62_1040" = load %Int256, %Int256* %"$arg1_62", align 8
  store %Int256 %"$$arg1_62_1040", %Int256* %"$sub_$arg1_62_1039", align 8
  %"$sub_$arg2_61_1041" = alloca %Int256, align 8
  %"$$arg2_61_1042" = load %Int256, %Int256* %"$arg2_61", align 8
  store %Int256 %"$$arg2_61_1042", %Int256* %"$sub_$arg2_61_1041", align 8
  %"$sub_call_1043" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1038", %Int256* %"$sub_$arg1_62_1039", %Int256* %"$sub_$arg2_61_1041")
  %"$sub_1045" = load %Int256, %Int256* %"$sub_call_1043", align 8
  store %Int256 %"$sub_1045", %Int256* %"$res_63", align 8
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 1, %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %"$have_gas_1036"
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %"$have_gas_1036"
  %"$consume_1050" = sub i64 %"$gasrem_1046", 1
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  %"$res__64" = alloca %Int256, align 8
  %"$gasrem_1051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1052" = icmp ugt i64 1, %"$gasrem_1051"
  br i1 %"$gascmp_1052", label %"$out_of_gas_1053", label %"$have_gas_1054"

"$out_of_gas_1053":                               ; preds = %"$have_gas_1049"
  call void @_out_of_gas()
  br label %"$have_gas_1054"

"$have_gas_1054":                                 ; preds = %"$out_of_gas_1053", %"$have_gas_1049"
  %"$consume_1055" = sub i64 %"$gasrem_1051", 1
  store i64 %"$consume_1055", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$res__64", align 8
  %"$gasrem_1056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1057" = icmp ugt i64 1, %"$gasrem_1056"
  br i1 %"$gascmp_1057", label %"$out_of_gas_1058", label %"$have_gas_1059"

"$out_of_gas_1058":                               ; preds = %"$have_gas_1054"
  call void @_out_of_gas()
  br label %"$have_gas_1059"

"$have_gas_1059":                                 ; preds = %"$out_of_gas_1058", %"$have_gas_1054"
  %"$consume_1060" = sub i64 %"$gasrem_1056", 1
  store i64 %"$consume_1060", i64* @_gasrem, align 8
  %"$test__65" = alloca %TName_Bool*, align 8
  %"$execptr_load_1061" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_63_1062" = alloca %Int256, align 8
  %"$$res_63_1063" = load %Int256, %Int256* %"$res_63", align 8
  store %Int256 %"$$res_63_1063", %Int256* %"$eq_$res_63_1062", align 8
  %"$eq_$res__64_1064" = alloca %Int256, align 8
  %"$$res__64_1065" = load %Int256, %Int256* %"$res__64", align 8
  store %Int256 %"$$res__64_1065", %Int256* %"$eq_$res__64_1064", align 8
  %"$eq_call_1066" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1061", %Int256* %"$eq_$res_63_1062", %Int256* %"$eq_$res__64_1064")
  store %TName_Bool* %"$eq_call_1066", %TName_Bool** %"$test__65", align 8
  %"$gasrem_1068" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1069" = icmp ugt i64 1, %"$gasrem_1068"
  br i1 %"$gascmp_1069", label %"$out_of_gas_1070", label %"$have_gas_1071"

"$out_of_gas_1070":                               ; preds = %"$have_gas_1059"
  call void @_out_of_gas()
  br label %"$have_gas_1071"

"$have_gas_1071":                                 ; preds = %"$out_of_gas_1070", %"$have_gas_1059"
  %"$consume_1072" = sub i64 %"$gasrem_1068", 1
  store i64 %"$consume_1072", i64* @_gasrem, align 8
  %"$BoolUtils.andb_95" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1073" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1074" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1073", 0
  %"$BoolUtils.andb_envptr_1075" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1073", 1
  %"$$test_60_1076" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1077" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1074"(i8* %"$BoolUtils.andb_envptr_1075", %TName_Bool* %"$$test_60_1076")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1077", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_95", align 8
  %"$BoolUtils.andb_96" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_95_1078" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_95", align 8
  %"$$BoolUtils.andb_95_fptr_1079" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_95_1078", 0
  %"$$BoolUtils.andb_95_envptr_1080" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_95_1078", 1
  %"$$test__65_1081" = load %TName_Bool*, %TName_Bool** %"$test__65", align 8
  %"$$BoolUtils.andb_95_call_1082" = call %TName_Bool* %"$$BoolUtils.andb_95_fptr_1079"(i8* %"$$BoolUtils.andb_95_envptr_1080", %TName_Bool* %"$$test__65_1081")
  store %TName_Bool* %"$$BoolUtils.andb_95_call_1082", %TName_Bool** %"$BoolUtils.andb_96", align 8
  %"$$BoolUtils.andb_96_1083" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_96", align 8
  store %TName_Bool* %"$$BoolUtils.andb_96_1083", %TName_Bool** %"$test_66", align 8
  %"$gasrem_1084" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1085" = icmp ugt i64 1, %"$gasrem_1084"
  br i1 %"$gascmp_1085", label %"$out_of_gas_1086", label %"$have_gas_1087"

"$out_of_gas_1086":                               ; preds = %"$have_gas_1071"
  call void @_out_of_gas()
  br label %"$have_gas_1087"

"$have_gas_1087":                                 ; preds = %"$out_of_gas_1086", %"$have_gas_1071"
  %"$consume_1088" = sub i64 %"$gasrem_1084", 1
  store i64 %"$consume_1088", i64* @_gasrem, align 8
  %"$arg1_67" = alloca %Int256, align 8
  %"$gasrem_1089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1090" = icmp ugt i64 1, %"$gasrem_1089"
  br i1 %"$gascmp_1090", label %"$out_of_gas_1091", label %"$have_gas_1092"

"$out_of_gas_1091":                               ; preds = %"$have_gas_1087"
  call void @_out_of_gas()
  br label %"$have_gas_1092"

"$have_gas_1092":                                 ; preds = %"$out_of_gas_1091", %"$have_gas_1087"
  %"$consume_1093" = sub i64 %"$gasrem_1089", 1
  store i64 %"$consume_1093", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_67", align 8
  %"$gasrem_1094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1095" = icmp ugt i64 1, %"$gasrem_1094"
  br i1 %"$gascmp_1095", label %"$out_of_gas_1096", label %"$have_gas_1097"

"$out_of_gas_1096":                               ; preds = %"$have_gas_1092"
  call void @_out_of_gas()
  br label %"$have_gas_1097"

"$have_gas_1097":                                 ; preds = %"$out_of_gas_1096", %"$have_gas_1092"
  %"$consume_1098" = sub i64 %"$gasrem_1094", 1
  store i64 %"$consume_1098", i64* @_gasrem, align 8
  %"$arg2_68" = alloca %Int256, align 8
  %"$gasrem_1099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1100" = icmp ugt i64 1, %"$gasrem_1099"
  br i1 %"$gascmp_1100", label %"$out_of_gas_1101", label %"$have_gas_1102"

"$out_of_gas_1101":                               ; preds = %"$have_gas_1097"
  call void @_out_of_gas()
  br label %"$have_gas_1102"

"$have_gas_1102":                                 ; preds = %"$out_of_gas_1101", %"$have_gas_1097"
  %"$consume_1103" = sub i64 %"$gasrem_1099", 1
  store i64 %"$consume_1103", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$arg2_68", align 8
  %"$gasrem_1104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1105" = icmp ugt i64 1, %"$gasrem_1104"
  br i1 %"$gascmp_1105", label %"$out_of_gas_1106", label %"$have_gas_1107"

"$out_of_gas_1106":                               ; preds = %"$have_gas_1102"
  call void @_out_of_gas()
  br label %"$have_gas_1107"

"$have_gas_1107":                                 ; preds = %"$out_of_gas_1106", %"$have_gas_1102"
  %"$consume_1108" = sub i64 %"$gasrem_1104", 1
  store i64 %"$consume_1108", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  %"$gasrem_1109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1110" = icmp ugt i64 1, %"$gasrem_1109"
  br i1 %"$gascmp_1110", label %"$out_of_gas_1111", label %"$have_gas_1112"

"$out_of_gas_1111":                               ; preds = %"$have_gas_1107"
  call void @_out_of_gas()
  br label %"$have_gas_1112"

"$have_gas_1112":                                 ; preds = %"$out_of_gas_1111", %"$have_gas_1107"
  %"$consume_1113" = sub i64 %"$gasrem_1109", 1
  store i64 %"$consume_1113", i64* @_gasrem, align 8
  %"$res_69" = alloca %Int256, align 8
  %"$execptr_load_1114" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_67_1115" = alloca %Int256, align 8
  %"$$arg1_67_1116" = load %Int256, %Int256* %"$arg1_67", align 8
  store %Int256 %"$$arg1_67_1116", %Int256* %"$sub_$arg1_67_1115", align 8
  %"$sub_$arg2_68_1117" = alloca %Int256, align 8
  %"$$arg2_68_1118" = load %Int256, %Int256* %"$arg2_68", align 8
  store %Int256 %"$$arg2_68_1118", %Int256* %"$sub_$arg2_68_1117", align 8
  %"$sub_call_1119" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1114", %Int256* %"$sub_$arg1_67_1115", %Int256* %"$sub_$arg2_68_1117")
  %"$sub_1121" = load %Int256, %Int256* %"$sub_call_1119", align 8
  store %Int256 %"$sub_1121", %Int256* %"$res_69", align 8
  %"$gasrem_1122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1123" = icmp ugt i64 1, %"$gasrem_1122"
  br i1 %"$gascmp_1123", label %"$out_of_gas_1124", label %"$have_gas_1125"

"$out_of_gas_1124":                               ; preds = %"$have_gas_1112"
  call void @_out_of_gas()
  br label %"$have_gas_1125"

"$have_gas_1125":                                 ; preds = %"$out_of_gas_1124", %"$have_gas_1112"
  %"$consume_1126" = sub i64 %"$gasrem_1122", 1
  store i64 %"$consume_1126", i64* @_gasrem, align 8
  %"$res__70" = alloca %Int256, align 8
  %"$gasrem_1127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1128" = icmp ugt i64 1, %"$gasrem_1127"
  br i1 %"$gascmp_1128", label %"$out_of_gas_1129", label %"$have_gas_1130"

"$out_of_gas_1129":                               ; preds = %"$have_gas_1125"
  call void @_out_of_gas()
  br label %"$have_gas_1130"

"$have_gas_1130":                                 ; preds = %"$out_of_gas_1129", %"$have_gas_1125"
  %"$consume_1131" = sub i64 %"$gasrem_1127", 1
  store i64 %"$consume_1131", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$res__70", align 8
  %"$gasrem_1132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1133" = icmp ugt i64 1, %"$gasrem_1132"
  br i1 %"$gascmp_1133", label %"$out_of_gas_1134", label %"$have_gas_1135"

"$out_of_gas_1134":                               ; preds = %"$have_gas_1130"
  call void @_out_of_gas()
  br label %"$have_gas_1135"

"$have_gas_1135":                                 ; preds = %"$out_of_gas_1134", %"$have_gas_1130"
  %"$consume_1136" = sub i64 %"$gasrem_1132", 1
  store i64 %"$consume_1136", i64* @_gasrem, align 8
  %"$test__71" = alloca %TName_Bool*, align 8
  %"$execptr_load_1137" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_69_1138" = alloca %Int256, align 8
  %"$$res_69_1139" = load %Int256, %Int256* %"$res_69", align 8
  store %Int256 %"$$res_69_1139", %Int256* %"$eq_$res_69_1138", align 8
  %"$eq_$res__70_1140" = alloca %Int256, align 8
  %"$$res__70_1141" = load %Int256, %Int256* %"$res__70", align 8
  store %Int256 %"$$res__70_1141", %Int256* %"$eq_$res__70_1140", align 8
  %"$eq_call_1142" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1137", %Int256* %"$eq_$res_69_1138", %Int256* %"$eq_$res__70_1140")
  store %TName_Bool* %"$eq_call_1142", %TName_Bool** %"$test__71", align 8
  %"$gasrem_1144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1145" = icmp ugt i64 1, %"$gasrem_1144"
  br i1 %"$gascmp_1145", label %"$out_of_gas_1146", label %"$have_gas_1147"

"$out_of_gas_1146":                               ; preds = %"$have_gas_1135"
  call void @_out_of_gas()
  br label %"$have_gas_1147"

"$have_gas_1147":                                 ; preds = %"$out_of_gas_1146", %"$have_gas_1135"
  %"$consume_1148" = sub i64 %"$gasrem_1144", 1
  store i64 %"$consume_1148", i64* @_gasrem, align 8
  %"$BoolUtils.andb_97" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1149" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1150" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1149", 0
  %"$BoolUtils.andb_envptr_1151" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1149", 1
  %"$$test_66_1152" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  %"$BoolUtils.andb_call_1153" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1150"(i8* %"$BoolUtils.andb_envptr_1151", %TName_Bool* %"$$test_66_1152")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1153", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_97", align 8
  %"$BoolUtils.andb_98" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_97_1154" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_97", align 8
  %"$$BoolUtils.andb_97_fptr_1155" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_97_1154", 0
  %"$$BoolUtils.andb_97_envptr_1156" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_97_1154", 1
  %"$$test__71_1157" = load %TName_Bool*, %TName_Bool** %"$test__71", align 8
  %"$$BoolUtils.andb_97_call_1158" = call %TName_Bool* %"$$BoolUtils.andb_97_fptr_1155"(i8* %"$$BoolUtils.andb_97_envptr_1156", %TName_Bool* %"$$test__71_1157")
  store %TName_Bool* %"$$BoolUtils.andb_97_call_1158", %TName_Bool** %"$BoolUtils.andb_98", align 8
  %"$$BoolUtils.andb_98_1159" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_98", align 8
  store %TName_Bool* %"$$BoolUtils.andb_98_1159", %TName_Bool** %"$test_72", align 8
  %"$gasrem_1160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1161" = icmp ugt i64 1, %"$gasrem_1160"
  br i1 %"$gascmp_1161", label %"$out_of_gas_1162", label %"$have_gas_1163"

"$out_of_gas_1162":                               ; preds = %"$have_gas_1147"
  call void @_out_of_gas()
  br label %"$have_gas_1163"

"$have_gas_1163":                                 ; preds = %"$out_of_gas_1162", %"$have_gas_1147"
  %"$consume_1164" = sub i64 %"$gasrem_1160", 1
  store i64 %"$consume_1164", i64* @_gasrem, align 8
  %"$$test_72_1165" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  store %TName_Bool* %"$$test_72_1165", %TName_Bool** %"$expr_103", align 8
  %"$$expr_103_1166" = load %TName_Bool*, %TName_Bool** %"$expr_103", align 8
  ret %TName_Bool* %"$$expr_103_1166"
}

declare %Uint32 @_sub_Uint32(%Uint32, %Uint32)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

declare %Int32 @_sub_Int32(%Int32, %Int32)

declare %TName_Bool* @_eq_Int32(i8*, %Int32, %Int32)

declare %Uint64 @_sub_Uint64(%Uint64, %Uint64)

declare %TName_Bool* @_eq_Uint64(i8*, %Uint64, %Uint64)

declare %Int64 @_sub_Int64(%Int64, %Int64)

declare %TName_Bool* @_eq_Int64(i8*, %Int64, %Int64)

declare %Uint128 @_sub_Uint128(%Uint128, %Uint128)

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare %Uint256* @_sub_Uint256(i8*, %Uint256*, %Uint256*)

declare %TName_Bool* @_eq_Uint256(i8*, %Uint256*, %Uint256*)

declare %Int256* @_sub_Int256(i8*, %Int256*, %Int256*)

declare %TName_Bool* @_eq_Int256(i8*, %Int256*, %Int256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1167" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1168" = bitcast %TName_Bool* %"$exprval_1167" to i8*
  %"$execptr_load_1169" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1169", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_136", i8* %"$memvoidcast_1168")
  ret void
}
