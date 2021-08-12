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
%"$ParamDescr_1316" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1317" = type { %ParamDescrString, i32, %"$ParamDescr_1316"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_1316"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1317"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_101"(%"$$fundef_101_env_152"* %0, %TName_Bool* %1) !dbg !4 {
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
  ], !dbg !9

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
  store %TName_Bool* %"$adtptr_186", %TName_Bool** %"$retval_102", align 8, !dbg !10
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
  store %TName_Bool* %1, %TName_Bool** %"$retval_102", align 8, !dbg !13
  br label %"$matchsucc_172"

"$empty_default_176":                             ; preds = %"$have_gas_170"
  br label %"$matchsucc_172"

"$matchsucc_172":                                 ; preds = %"$have_gas_192", %"$have_gas_182", %"$empty_default_176"
  %"$$retval_102_194" = load %TName_Bool*, %TName_Bool** %"$retval_102", align 8
  ret %TName_Bool* %"$$retval_102_194"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_99"(%"$$fundef_99_env_153"* %0, %TName_Bool* %1) !dbg !15 {
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_101_cloval_162", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_100", align 8, !dbg !16
  %"$$retval_100_164" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_100", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_100_164"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !17 {
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
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_99_env_153"*, %TName_Bool*)* @"$fundef_99" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !19
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !20 {
entry:
  %"$expr_103" = alloca %TName_Bool*, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %entry
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
  store %TName_Bool* %"$adtptr_220", %TName_Bool** %test, align 8, !dbg !21
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
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4, !dbg !22
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
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4, !dbg !23
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
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 4, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 4
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$arg1_256" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_257" = load %Uint32, %Uint32* %arg2, align 4
  %"$sub_call_258" = call %Uint32 @_sub_Uint32(%Uint32 %"$arg1_256", %Uint32 %"$arg2_257"), !dbg !24
  store %Uint32 %"$sub_call_258", %Uint32* %res, align 4, !dbg !24
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_254"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %res_, align 4, !dbg !25
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_267"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 4, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 4
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$execptr_load_279" = load i8*, i8** @_execptr, align 8
  %"$res_280" = load %Uint32, %Uint32* %res, align 4
  %"$res__281" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_282" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_279", %Uint32 %"$res_280", %Uint32 %"$res__281"), !dbg !26
  store %TName_Bool* %"$eq_call_282", %TName_Bool** %test_, align 8, !dbg !26
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_277"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$BoolUtils.andb_73" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_289" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_290" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_289", 0
  %"$BoolUtils.andb_envptr_291" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_289", 1
  %"$test_292" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_293" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_290"(i8* %"$BoolUtils.andb_envptr_291", %TName_Bool* %"$test_292"), !dbg !27
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_293", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8, !dbg !27
  %"$BoolUtils.andb_74" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_73_294" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_73", align 8
  %"$$BoolUtils.andb_73_fptr_295" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_294", 0
  %"$$BoolUtils.andb_73_envptr_296" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_73_294", 1
  %"$test__297" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_73_call_298" = call %TName_Bool* %"$$BoolUtils.andb_73_fptr_295"(i8* %"$$BoolUtils.andb_73_envptr_296", %TName_Bool* %"$test__297"), !dbg !27
  store %TName_Bool* %"$$BoolUtils.andb_73_call_298", %TName_Bool** %"$BoolUtils.andb_74", align 8, !dbg !27
  %"$$BoolUtils.andb_74_299" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_74", align 8
  store %TName_Bool* %"$$BoolUtils.andb_74_299", %TName_Bool** %"$test_0", align 8, !dbg !27
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_287"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %"$arg2_1" = alloca %Int32, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg2_1", align 4, !dbg !28
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 1, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_308"
  %"$consume_314" = sub i64 %"$gasrem_310", 1
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$arg1_2" = alloca %Int32, align 8
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_313"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  store %Int32 { i32 1843 }, %Int32* %"$arg1_2", align 4, !dbg !29
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_323"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$res_3" = alloca %Int32, align 8
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 4, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_328"
  %"$consume_334" = sub i64 %"$gasrem_330", 4
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %"$$arg1_2_335" = load %Int32, %Int32* %"$arg1_2", align 4
  %"$$arg2_1_336" = load %Int32, %Int32* %"$arg2_1", align 4
  %"$sub_call_337" = call %Int32 @_sub_Int32(%Int32 %"$$arg1_2_335", %Int32 %"$$arg2_1_336"), !dbg !30
  store %Int32 %"$sub_call_337", %Int32* %"$res_3", align 4, !dbg !30
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_333"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$res__4" = alloca %Int32, align 8
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_341"
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem, align 8
  store %Int32 { i32 -1 }, %Int32* %"$res__4", align 4, !dbg !31
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_346"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %"$test__5" = alloca %TName_Bool*, align 8
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 4, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_351"
  %"$consume_357" = sub i64 %"$gasrem_353", 4
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %"$execptr_load_358" = load i8*, i8** @_execptr, align 8
  %"$$res_3_359" = load %Int32, %Int32* %"$res_3", align 4
  %"$$res__4_360" = load %Int32, %Int32* %"$res__4", align 4
  %"$eq_call_361" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_358", %Int32 %"$$res_3_359", %Int32 %"$$res__4_360"), !dbg !32
  store %TName_Bool* %"$eq_call_361", %TName_Bool** %"$test__5", align 8, !dbg !32
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_356"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %"$BoolUtils.andb_75" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_368" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_369" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_368", 0
  %"$BoolUtils.andb_envptr_370" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_368", 1
  %"$$test_0_371" = load %TName_Bool*, %TName_Bool** %"$test_0", align 8
  %"$BoolUtils.andb_call_372" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_369"(i8* %"$BoolUtils.andb_envptr_370", %TName_Bool* %"$$test_0_371"), !dbg !33
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_372", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8, !dbg !33
  %"$BoolUtils.andb_76" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_75_373" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_75", align 8
  %"$$BoolUtils.andb_75_fptr_374" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_373", 0
  %"$$BoolUtils.andb_75_envptr_375" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_75_373", 1
  %"$$test__5_376" = load %TName_Bool*, %TName_Bool** %"$test__5", align 8
  %"$$BoolUtils.andb_75_call_377" = call %TName_Bool* %"$$BoolUtils.andb_75_fptr_374"(i8* %"$$BoolUtils.andb_75_envptr_375", %TName_Bool* %"$$test__5_376"), !dbg !33
  store %TName_Bool* %"$$BoolUtils.andb_75_call_377", %TName_Bool** %"$BoolUtils.andb_76", align 8, !dbg !33
  %"$$BoolUtils.andb_76_378" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_76", align 8
  store %TName_Bool* %"$$BoolUtils.andb_76_378", %TName_Bool** %"$test_6", align 8, !dbg !33
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_366"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$arg1_7" = alloca %Uint64, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$arg1_7", align 8, !dbg !34
  %"$gasrem_389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_387"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem, align 8
  %"$arg2_8" = alloca %Uint64, align 8
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_392"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  store %Uint64 { i64 -2 }, %Uint64* %"$arg2_8", align 8, !dbg !35
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_397"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_402"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$res_9" = alloca %Uint64, align 8
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 4, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_407"
  %"$consume_413" = sub i64 %"$gasrem_409", 4
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$$arg1_7_414" = load %Uint64, %Uint64* %"$arg1_7", align 8
  %"$$arg2_8_415" = load %Uint64, %Uint64* %"$arg2_8", align 8
  %"$sub_call_416" = call %Uint64 @_sub_Uint64(%Uint64 %"$$arg1_7_414", %Uint64 %"$$arg2_8_415"), !dbg !36
  store %Uint64 %"$sub_call_416", %Uint64* %"$res_9", align 8, !dbg !36
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_412"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$res__10" = alloca %Uint64, align 8
  %"$gasrem_422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_423" = icmp ugt i64 1, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %"$have_gas_420"
  %"$consume_426" = sub i64 %"$gasrem_422", 1
  store i64 %"$consume_426", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %"$res__10", align 8, !dbg !37
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_425"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_425"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  %"$gasrem_432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_433" = icmp ugt i64 4, %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %"$have_gas_430"
  %"$consume_436" = sub i64 %"$gasrem_432", 4
  store i64 %"$consume_436", i64* @_gasrem, align 8
  %"$execptr_load_437" = load i8*, i8** @_execptr, align 8
  %"$$res_9_438" = load %Uint64, %Uint64* %"$res_9", align 8
  %"$$res__10_439" = load %Uint64, %Uint64* %"$res__10", align 8
  %"$eq_call_440" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_437", %Uint64 %"$$res_9_438", %Uint64 %"$$res__10_439"), !dbg !38
  store %TName_Bool* %"$eq_call_440", %TName_Bool** %"$test__11", align 8, !dbg !38
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 1, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_435"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_435"
  %"$consume_446" = sub i64 %"$gasrem_442", 1
  store i64 %"$consume_446", i64* @_gasrem, align 8
  %"$BoolUtils.andb_77" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_447" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_448" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_447", 0
  %"$BoolUtils.andb_envptr_449" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_447", 1
  %"$$test_6_450" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_451" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_448"(i8* %"$BoolUtils.andb_envptr_449", %TName_Bool* %"$$test_6_450"), !dbg !39
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_451", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8, !dbg !39
  %"$BoolUtils.andb_78" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_77_452" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_77", align 8
  %"$$BoolUtils.andb_77_fptr_453" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_452", 0
  %"$$BoolUtils.andb_77_envptr_454" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_77_452", 1
  %"$$test__11_455" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_77_call_456" = call %TName_Bool* %"$$BoolUtils.andb_77_fptr_453"(i8* %"$$BoolUtils.andb_77_envptr_454", %TName_Bool* %"$$test__11_455"), !dbg !39
  store %TName_Bool* %"$$BoolUtils.andb_77_call_456", %TName_Bool** %"$BoolUtils.andb_78", align 8, !dbg !39
  %"$$BoolUtils.andb_78_457" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_78", align 8
  store %TName_Bool* %"$$BoolUtils.andb_78_457", %TName_Bool** %"$test_12", align 8, !dbg !39
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_445"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_445"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %"$arg2_13" = alloca %Int64, align 8
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_461"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$arg2_13", align 8, !dbg !40
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %"$arg1_14" = alloca %Int64, align 8
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_471"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$arg1_14", align 8, !dbg !41
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 1, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %"$have_gas_476"
  %"$consume_482" = sub i64 %"$gasrem_478", 1
  store i64 %"$consume_482", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_481"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %"$res_15" = alloca %Int64, align 8
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 4, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_486"
  %"$consume_492" = sub i64 %"$gasrem_488", 4
  store i64 %"$consume_492", i64* @_gasrem, align 8
  %"$$arg1_14_493" = load %Int64, %Int64* %"$arg1_14", align 8
  %"$$arg2_13_494" = load %Int64, %Int64* %"$arg2_13", align 8
  %"$sub_call_495" = call %Int64 @_sub_Int64(%Int64 %"$$arg1_14_493", %Int64 %"$$arg2_13_494"), !dbg !42
  store %Int64 %"$sub_call_495", %Int64* %"$res_15", align 8, !dbg !42
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 1, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_491"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_491"
  %"$consume_500" = sub i64 %"$gasrem_496", 1
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %"$res__16" = alloca %Int64, align 8
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_499"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_499"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  store %Int64 zeroinitializer, %Int64* %"$res__16", align 8, !dbg !43
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_504"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 4, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 4
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$execptr_load_516" = load i8*, i8** @_execptr, align 8
  %"$$res_15_517" = load %Int64, %Int64* %"$res_15", align 8
  %"$$res__16_518" = load %Int64, %Int64* %"$res__16", align 8
  %"$eq_call_519" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_516", %Int64 %"$$res_15_517", %Int64 %"$$res__16_518"), !dbg !44
  store %TName_Bool* %"$eq_call_519", %TName_Bool** %"$test__17", align 8, !dbg !44
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 1, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$have_gas_514"
  %"$consume_525" = sub i64 %"$gasrem_521", 1
  store i64 %"$consume_525", i64* @_gasrem, align 8
  %"$BoolUtils.andb_79" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_526" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_527" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_526", 0
  %"$BoolUtils.andb_envptr_528" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_526", 1
  %"$$test_12_529" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_530" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_527"(i8* %"$BoolUtils.andb_envptr_528", %TName_Bool* %"$$test_12_529"), !dbg !45
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_530", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8, !dbg !45
  %"$BoolUtils.andb_80" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_79_531" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_fptr_532" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_531", 0
  %"$$BoolUtils.andb_79_envptr_533" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_531", 1
  %"$$test__17_534" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_79_call_535" = call %TName_Bool* %"$$BoolUtils.andb_79_fptr_532"(i8* %"$$BoolUtils.andb_79_envptr_533", %TName_Bool* %"$$test__17_534"), !dbg !45
  store %TName_Bool* %"$$BoolUtils.andb_79_call_535", %TName_Bool** %"$BoolUtils.andb_80", align 8, !dbg !45
  %"$$BoolUtils.andb_80_536" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_80", align 8
  store %TName_Bool* %"$$BoolUtils.andb_80_536", %TName_Bool** %"$test_18", align 8, !dbg !45
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 1, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_524"
  %"$consume_541" = sub i64 %"$gasrem_537", 1
  store i64 %"$consume_541", i64* @_gasrem, align 8
  %"$arg1_19" = alloca %Int64, align 8
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_540"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775806 }, %Int64* %"$arg1_19", align 8, !dbg !46
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$arg2_20" = alloca %Int64, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_550"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  store %Int64 { i64 -1 }, %Int64* %"$arg2_20", align 8, !dbg !47
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_555"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_560"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  %"$res_21" = alloca %Int64, align 8
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 4, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_565"
  %"$consume_571" = sub i64 %"$gasrem_567", 4
  store i64 %"$consume_571", i64* @_gasrem, align 8
  %"$$arg1_19_572" = load %Int64, %Int64* %"$arg1_19", align 8
  %"$$arg2_20_573" = load %Int64, %Int64* %"$arg2_20", align 8
  %"$sub_call_574" = call %Int64 @_sub_Int64(%Int64 %"$$arg1_19_572", %Int64 %"$$arg2_20_573"), !dbg !48
  store %Int64 %"$sub_call_574", %Int64* %"$res_21", align 8, !dbg !48
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 1, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$have_gas_570"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$have_gas_570"
  %"$consume_579" = sub i64 %"$gasrem_575", 1
  store i64 %"$consume_579", i64* @_gasrem, align 8
  %"$res__22" = alloca %Int64, align 8
  %"$gasrem_580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_581" = icmp ugt i64 1, %"$gasrem_580"
  br i1 %"$gascmp_581", label %"$out_of_gas_582", label %"$have_gas_583"

"$out_of_gas_582":                                ; preds = %"$have_gas_578"
  call void @_out_of_gas()
  br label %"$have_gas_583"

"$have_gas_583":                                  ; preds = %"$out_of_gas_582", %"$have_gas_578"
  %"$consume_584" = sub i64 %"$gasrem_580", 1
  store i64 %"$consume_584", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$res__22", align 8, !dbg !49
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_583"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_583"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  %"$gasrem_590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_591" = icmp ugt i64 4, %"$gasrem_590"
  br i1 %"$gascmp_591", label %"$out_of_gas_592", label %"$have_gas_593"

"$out_of_gas_592":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_593"

"$have_gas_593":                                  ; preds = %"$out_of_gas_592", %"$have_gas_588"
  %"$consume_594" = sub i64 %"$gasrem_590", 4
  store i64 %"$consume_594", i64* @_gasrem, align 8
  %"$execptr_load_595" = load i8*, i8** @_execptr, align 8
  %"$$res_21_596" = load %Int64, %Int64* %"$res_21", align 8
  %"$$res__22_597" = load %Int64, %Int64* %"$res__22", align 8
  %"$eq_call_598" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_595", %Int64 %"$$res_21_596", %Int64 %"$$res__22_597"), !dbg !50
  store %TName_Bool* %"$eq_call_598", %TName_Bool** %"$test__23", align 8, !dbg !50
  %"$gasrem_600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_601" = icmp ugt i64 1, %"$gasrem_600"
  br i1 %"$gascmp_601", label %"$out_of_gas_602", label %"$have_gas_603"

"$out_of_gas_602":                                ; preds = %"$have_gas_593"
  call void @_out_of_gas()
  br label %"$have_gas_603"

"$have_gas_603":                                  ; preds = %"$out_of_gas_602", %"$have_gas_593"
  %"$consume_604" = sub i64 %"$gasrem_600", 1
  store i64 %"$consume_604", i64* @_gasrem, align 8
  %"$BoolUtils.andb_81" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_605" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_606" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_605", 0
  %"$BoolUtils.andb_envptr_607" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_605", 1
  %"$$test_18_608" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_609" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_606"(i8* %"$BoolUtils.andb_envptr_607", %TName_Bool* %"$$test_18_608"), !dbg !51
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_609", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_81", align 8, !dbg !51
  %"$BoolUtils.andb_82" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_81_610" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_81", align 8
  %"$$BoolUtils.andb_81_fptr_611" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_81_610", 0
  %"$$BoolUtils.andb_81_envptr_612" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_81_610", 1
  %"$$test__23_613" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_81_call_614" = call %TName_Bool* %"$$BoolUtils.andb_81_fptr_611"(i8* %"$$BoolUtils.andb_81_envptr_612", %TName_Bool* %"$$test__23_613"), !dbg !51
  store %TName_Bool* %"$$BoolUtils.andb_81_call_614", %TName_Bool** %"$BoolUtils.andb_82", align 8, !dbg !51
  %"$$BoolUtils.andb_82_615" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_82", align 8
  store %TName_Bool* %"$$BoolUtils.andb_82_615", %TName_Bool** %"$test_24", align 8, !dbg !51
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %"$have_gas_603"
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %"$have_gas_603"
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Uint128, align 8
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_619"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$arg1_25", align 8, !dbg !52
  %"$gasrem_626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_627" = icmp ugt i64 1, %"$gasrem_626"
  br i1 %"$gascmp_627", label %"$out_of_gas_628", label %"$have_gas_629"

"$out_of_gas_628":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_629"

"$have_gas_629":                                  ; preds = %"$out_of_gas_628", %"$have_gas_624"
  %"$consume_630" = sub i64 %"$gasrem_626", 1
  store i64 %"$consume_630", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Uint128, align 8
  %"$gasrem_631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_632" = icmp ugt i64 1, %"$gasrem_631"
  br i1 %"$gascmp_632", label %"$out_of_gas_633", label %"$have_gas_634"

"$out_of_gas_633":                                ; preds = %"$have_gas_629"
  call void @_out_of_gas()
  br label %"$have_gas_634"

"$have_gas_634":                                  ; preds = %"$out_of_gas_633", %"$have_gas_629"
  %"$consume_635" = sub i64 %"$gasrem_631", 1
  store i64 %"$consume_635", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %"$arg2_26", align 8, !dbg !53
  %"$gasrem_636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_637" = icmp ugt i64 1, %"$gasrem_636"
  br i1 %"$gascmp_637", label %"$out_of_gas_638", label %"$have_gas_639"

"$out_of_gas_638":                                ; preds = %"$have_gas_634"
  call void @_out_of_gas()
  br label %"$have_gas_639"

"$have_gas_639":                                  ; preds = %"$out_of_gas_638", %"$have_gas_634"
  %"$consume_640" = sub i64 %"$gasrem_636", 1
  store i64 %"$consume_640", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_642" = icmp ugt i64 1, %"$gasrem_641"
  br i1 %"$gascmp_642", label %"$out_of_gas_643", label %"$have_gas_644"

"$out_of_gas_643":                                ; preds = %"$have_gas_639"
  call void @_out_of_gas()
  br label %"$have_gas_644"

"$have_gas_644":                                  ; preds = %"$out_of_gas_643", %"$have_gas_639"
  %"$consume_645" = sub i64 %"$gasrem_641", 1
  store i64 %"$consume_645", i64* @_gasrem, align 8
  %"$res_27" = alloca %Uint128, align 8
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 8, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$have_gas_644"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$have_gas_644"
  %"$consume_651" = sub i64 %"$gasrem_647", 8
  store i64 %"$consume_651", i64* @_gasrem, align 8
  %"$$arg1_25_652" = load %Uint128, %Uint128* %"$arg1_25", align 8
  %"$$arg2_26_653" = load %Uint128, %Uint128* %"$arg2_26", align 8
  %"$sub_call_654" = call %Uint128 @_sub_Uint128(%Uint128 %"$$arg1_25_652", %Uint128 %"$$arg2_26_653"), !dbg !54
  store %Uint128 %"$sub_call_654", %Uint128* %"$res_27", align 8, !dbg !54
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 1, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_650"
  %"$consume_659" = sub i64 %"$gasrem_655", 1
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %"$res__28" = alloca %Uint128, align 8
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 1, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %"$have_gas_658"
  %"$consume_664" = sub i64 %"$gasrem_660", 1
  store i64 %"$consume_664", i64* @_gasrem, align 8
  store %Uint128 { i128 -2 }, %Uint128* %"$res__28", align 8, !dbg !55
  %"$gasrem_665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_666" = icmp ugt i64 1, %"$gasrem_665"
  br i1 %"$gascmp_666", label %"$out_of_gas_667", label %"$have_gas_668"

"$out_of_gas_667":                                ; preds = %"$have_gas_663"
  call void @_out_of_gas()
  br label %"$have_gas_668"

"$have_gas_668":                                  ; preds = %"$out_of_gas_667", %"$have_gas_663"
  %"$consume_669" = sub i64 %"$gasrem_665", 1
  store i64 %"$consume_669", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  %"$gasrem_671" = load i64, i64* @_gasrem, align 8
  %"$gascmp_672" = icmp ugt i64 8, %"$gasrem_671"
  br i1 %"$gascmp_672", label %"$out_of_gas_673", label %"$have_gas_674"

"$out_of_gas_673":                                ; preds = %"$have_gas_668"
  call void @_out_of_gas()
  br label %"$have_gas_674"

"$have_gas_674":                                  ; preds = %"$out_of_gas_673", %"$have_gas_668"
  %"$consume_675" = sub i64 %"$gasrem_671", 8
  store i64 %"$consume_675", i64* @_gasrem, align 8
  %"$execptr_load_676" = load i8*, i8** @_execptr, align 8
  %"$$res_27_677" = load %Uint128, %Uint128* %"$res_27", align 8
  %"$$res__28_678" = load %Uint128, %Uint128* %"$res__28", align 8
  %"$eq_call_679" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_676", %Uint128 %"$$res_27_677", %Uint128 %"$$res__28_678"), !dbg !56
  store %TName_Bool* %"$eq_call_679", %TName_Bool** %"$test__29", align 8, !dbg !56
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %"$have_gas_674"
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %"$have_gas_674"
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem, align 8
  %"$BoolUtils.andb_83" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_686" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_687" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_686", 0
  %"$BoolUtils.andb_envptr_688" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_686", 1
  %"$$test_24_689" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_690" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_687"(i8* %"$BoolUtils.andb_envptr_688", %TName_Bool* %"$$test_24_689"), !dbg !57
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_690", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_83", align 8, !dbg !57
  %"$BoolUtils.andb_84" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_83_691" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_83", align 8
  %"$$BoolUtils.andb_83_fptr_692" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_83_691", 0
  %"$$BoolUtils.andb_83_envptr_693" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_83_691", 1
  %"$$test__29_694" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_83_call_695" = call %TName_Bool* %"$$BoolUtils.andb_83_fptr_692"(i8* %"$$BoolUtils.andb_83_envptr_693", %TName_Bool* %"$$test__29_694"), !dbg !57
  store %TName_Bool* %"$$BoolUtils.andb_83_call_695", %TName_Bool** %"$BoolUtils.andb_84", align 8, !dbg !57
  %"$$BoolUtils.andb_84_696" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_84", align 8
  store %TName_Bool* %"$$BoolUtils.andb_84_696", %TName_Bool** %"$test_30", align 8, !dbg !57
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 1, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %"$have_gas_684"
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %"$have_gas_684"
  %"$consume_701" = sub i64 %"$gasrem_697", 1
  store i64 %"$consume_701", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Uint128, align 8
  %"$gasrem_702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_703" = icmp ugt i64 1, %"$gasrem_702"
  br i1 %"$gascmp_703", label %"$out_of_gas_704", label %"$have_gas_705"

"$out_of_gas_704":                                ; preds = %"$have_gas_700"
  call void @_out_of_gas()
  br label %"$have_gas_705"

"$have_gas_705":                                  ; preds = %"$out_of_gas_704", %"$have_gas_700"
  %"$consume_706" = sub i64 %"$gasrem_702", 1
  store i64 %"$consume_706", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$arg1_31", align 8, !dbg !58
  %"$gasrem_707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_708" = icmp ugt i64 1, %"$gasrem_707"
  br i1 %"$gascmp_708", label %"$out_of_gas_709", label %"$have_gas_710"

"$out_of_gas_709":                                ; preds = %"$have_gas_705"
  call void @_out_of_gas()
  br label %"$have_gas_710"

"$have_gas_710":                                  ; preds = %"$out_of_gas_709", %"$have_gas_705"
  %"$consume_711" = sub i64 %"$gasrem_707", 1
  store i64 %"$consume_711", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Uint128, align 8
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_710"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_710"
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$arg2_32", align 8, !dbg !59
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 1, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %"$have_gas_715"
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %"$have_gas_715"
  %"$consume_721" = sub i64 %"$gasrem_717", 1
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_723" = icmp ugt i64 1, %"$gasrem_722"
  br i1 %"$gascmp_723", label %"$out_of_gas_724", label %"$have_gas_725"

"$out_of_gas_724":                                ; preds = %"$have_gas_720"
  call void @_out_of_gas()
  br label %"$have_gas_725"

"$have_gas_725":                                  ; preds = %"$out_of_gas_724", %"$have_gas_720"
  %"$consume_726" = sub i64 %"$gasrem_722", 1
  store i64 %"$consume_726", i64* @_gasrem, align 8
  %"$res_33" = alloca %Uint128, align 8
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 8, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$have_gas_725"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$have_gas_725"
  %"$consume_732" = sub i64 %"$gasrem_728", 8
  store i64 %"$consume_732", i64* @_gasrem, align 8
  %"$$arg1_31_733" = load %Uint128, %Uint128* %"$arg1_31", align 8
  %"$$arg2_32_734" = load %Uint128, %Uint128* %"$arg2_32", align 8
  %"$sub_call_735" = call %Uint128 @_sub_Uint128(%Uint128 %"$$arg1_31_733", %Uint128 %"$$arg2_32_734"), !dbg !60
  store %Uint128 %"$sub_call_735", %Uint128* %"$res_33", align 8, !dbg !60
  %"$gasrem_736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_737" = icmp ugt i64 1, %"$gasrem_736"
  br i1 %"$gascmp_737", label %"$out_of_gas_738", label %"$have_gas_739"

"$out_of_gas_738":                                ; preds = %"$have_gas_731"
  call void @_out_of_gas()
  br label %"$have_gas_739"

"$have_gas_739":                                  ; preds = %"$out_of_gas_738", %"$have_gas_731"
  %"$consume_740" = sub i64 %"$gasrem_736", 1
  store i64 %"$consume_740", i64* @_gasrem, align 8
  %"$res__34" = alloca %Uint128, align 8
  %"$gasrem_741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_742" = icmp ugt i64 1, %"$gasrem_741"
  br i1 %"$gascmp_742", label %"$out_of_gas_743", label %"$have_gas_744"

"$out_of_gas_743":                                ; preds = %"$have_gas_739"
  call void @_out_of_gas()
  br label %"$have_gas_744"

"$have_gas_744":                                  ; preds = %"$out_of_gas_743", %"$have_gas_739"
  %"$consume_745" = sub i64 %"$gasrem_741", 1
  store i64 %"$consume_745", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$res__34", align 8, !dbg !61
  %"$gasrem_746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_747" = icmp ugt i64 1, %"$gasrem_746"
  br i1 %"$gascmp_747", label %"$out_of_gas_748", label %"$have_gas_749"

"$out_of_gas_748":                                ; preds = %"$have_gas_744"
  call void @_out_of_gas()
  br label %"$have_gas_749"

"$have_gas_749":                                  ; preds = %"$out_of_gas_748", %"$have_gas_744"
  %"$consume_750" = sub i64 %"$gasrem_746", 1
  store i64 %"$consume_750", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 8, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_749"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_749"
  %"$consume_756" = sub i64 %"$gasrem_752", 8
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %"$execptr_load_757" = load i8*, i8** @_execptr, align 8
  %"$$res_33_758" = load %Uint128, %Uint128* %"$res_33", align 8
  %"$$res__34_759" = load %Uint128, %Uint128* %"$res__34", align 8
  %"$eq_call_760" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_757", %Uint128 %"$$res_33_758", %Uint128 %"$$res__34_759"), !dbg !62
  store %TName_Bool* %"$eq_call_760", %TName_Bool** %"$test__35", align 8, !dbg !62
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_755"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$BoolUtils.andb_85" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_767" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_768" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_767", 0
  %"$BoolUtils.andb_envptr_769" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_767", 1
  %"$$test_30_770" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_771" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_768"(i8* %"$BoolUtils.andb_envptr_769", %TName_Bool* %"$$test_30_770"), !dbg !63
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_771", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_85", align 8, !dbg !63
  %"$BoolUtils.andb_86" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_85_772" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_85", align 8
  %"$$BoolUtils.andb_85_fptr_773" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_85_772", 0
  %"$$BoolUtils.andb_85_envptr_774" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_85_772", 1
  %"$$test__35_775" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_85_call_776" = call %TName_Bool* %"$$BoolUtils.andb_85_fptr_773"(i8* %"$$BoolUtils.andb_85_envptr_774", %TName_Bool* %"$$test__35_775"), !dbg !63
  store %TName_Bool* %"$$BoolUtils.andb_85_call_776", %TName_Bool** %"$BoolUtils.andb_86", align 8, !dbg !63
  %"$$BoolUtils.andb_86_777" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_86", align 8
  store %TName_Bool* %"$$BoolUtils.andb_86_777", %TName_Bool** %"$test_36", align 8, !dbg !63
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_765"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_765"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Uint256, align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_781"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211455 }, %Uint256* %"$arg1_37", align 8, !dbg !64
  %"$gasrem_788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_789" = icmp ugt i64 1, %"$gasrem_788"
  br i1 %"$gascmp_789", label %"$out_of_gas_790", label %"$have_gas_791"

"$out_of_gas_790":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_791"

"$have_gas_791":                                  ; preds = %"$out_of_gas_790", %"$have_gas_786"
  %"$consume_792" = sub i64 %"$gasrem_788", 1
  store i64 %"$consume_792", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Uint256, align 8
  %"$gasrem_793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_794" = icmp ugt i64 1, %"$gasrem_793"
  br i1 %"$gascmp_794", label %"$out_of_gas_795", label %"$have_gas_796"

"$out_of_gas_795":                                ; preds = %"$have_gas_791"
  call void @_out_of_gas()
  br label %"$have_gas_796"

"$have_gas_796":                                  ; preds = %"$out_of_gas_795", %"$have_gas_791"
  %"$consume_797" = sub i64 %"$gasrem_793", 1
  store i64 %"$consume_797", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$arg2_38", align 8, !dbg !65
  %"$gasrem_798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_799" = icmp ugt i64 1, %"$gasrem_798"
  br i1 %"$gascmp_799", label %"$out_of_gas_800", label %"$have_gas_801"

"$out_of_gas_800":                                ; preds = %"$have_gas_796"
  call void @_out_of_gas()
  br label %"$have_gas_801"

"$have_gas_801":                                  ; preds = %"$out_of_gas_800", %"$have_gas_796"
  %"$consume_802" = sub i64 %"$gasrem_798", 1
  store i64 %"$consume_802", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_804" = icmp ugt i64 1, %"$gasrem_803"
  br i1 %"$gascmp_804", label %"$out_of_gas_805", label %"$have_gas_806"

"$out_of_gas_805":                                ; preds = %"$have_gas_801"
  call void @_out_of_gas()
  br label %"$have_gas_806"

"$have_gas_806":                                  ; preds = %"$out_of_gas_805", %"$have_gas_801"
  %"$consume_807" = sub i64 %"$gasrem_803", 1
  store i64 %"$consume_807", i64* @_gasrem, align 8
  %"$res_39" = alloca %Uint256, align 8
  %"$gasrem_809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_810" = icmp ugt i64 16, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %"$have_gas_806"
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %"$have_gas_806"
  %"$consume_813" = sub i64 %"$gasrem_809", 16
  store i64 %"$consume_813", i64* @_gasrem, align 8
  %"$execptr_load_814" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_37_815" = alloca %Uint256, align 8
  %"$$arg1_37_816" = load %Uint256, %Uint256* %"$arg1_37", align 8
  store %Uint256 %"$$arg1_37_816", %Uint256* %"$sub_$arg1_37_815", align 8
  %"$sub_$arg2_38_817" = alloca %Uint256, align 8
  %"$$arg2_38_818" = load %Uint256, %Uint256* %"$arg2_38", align 8
  store %Uint256 %"$$arg2_38_818", %Uint256* %"$sub_$arg2_38_817", align 8
  %"$sub_call_819" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_814", %Uint256* %"$sub_$arg1_37_815", %Uint256* %"$sub_$arg2_38_817"), !dbg !66
  %"$sub_821" = load %Uint256, %Uint256* %"$sub_call_819", align 8
  store %Uint256 %"$sub_821", %Uint256* %"$res_39", align 8, !dbg !66
  %"$gasrem_822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_823" = icmp ugt i64 1, %"$gasrem_822"
  br i1 %"$gascmp_823", label %"$out_of_gas_824", label %"$have_gas_825"

"$out_of_gas_824":                                ; preds = %"$have_gas_812"
  call void @_out_of_gas()
  br label %"$have_gas_825"

"$have_gas_825":                                  ; preds = %"$out_of_gas_824", %"$have_gas_812"
  %"$consume_826" = sub i64 %"$gasrem_822", 1
  store i64 %"$consume_826", i64* @_gasrem, align 8
  %"$res__40" = alloca %Uint256, align 8
  %"$gasrem_827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_828" = icmp ugt i64 1, %"$gasrem_827"
  br i1 %"$gascmp_828", label %"$out_of_gas_829", label %"$have_gas_830"

"$out_of_gas_829":                                ; preds = %"$have_gas_825"
  call void @_out_of_gas()
  br label %"$have_gas_830"

"$have_gas_830":                                  ; preds = %"$out_of_gas_829", %"$have_gas_825"
  %"$consume_831" = sub i64 %"$gasrem_827", 1
  store i64 %"$consume_831", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211454 }, %Uint256* %"$res__40", align 8, !dbg !67
  %"$gasrem_832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_833" = icmp ugt i64 1, %"$gasrem_832"
  br i1 %"$gascmp_833", label %"$out_of_gas_834", label %"$have_gas_835"

"$out_of_gas_834":                                ; preds = %"$have_gas_830"
  call void @_out_of_gas()
  br label %"$have_gas_835"

"$have_gas_835":                                  ; preds = %"$out_of_gas_834", %"$have_gas_830"
  %"$consume_836" = sub i64 %"$gasrem_832", 1
  store i64 %"$consume_836", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  %"$gasrem_838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_839" = icmp ugt i64 16, %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %"$have_gas_835"
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %"$have_gas_835"
  %"$consume_842" = sub i64 %"$gasrem_838", 16
  store i64 %"$consume_842", i64* @_gasrem, align 8
  %"$execptr_load_843" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_39_844" = alloca %Uint256, align 8
  %"$$res_39_845" = load %Uint256, %Uint256* %"$res_39", align 8
  store %Uint256 %"$$res_39_845", %Uint256* %"$eq_$res_39_844", align 8
  %"$eq_$res__40_846" = alloca %Uint256, align 8
  %"$$res__40_847" = load %Uint256, %Uint256* %"$res__40", align 8
  store %Uint256 %"$$res__40_847", %Uint256* %"$eq_$res__40_846", align 8
  %"$eq_call_848" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_843", %Uint256* %"$eq_$res_39_844", %Uint256* %"$eq_$res__40_846"), !dbg !68
  store %TName_Bool* %"$eq_call_848", %TName_Bool** %"$test__41", align 8, !dbg !68
  %"$gasrem_850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_851" = icmp ugt i64 1, %"$gasrem_850"
  br i1 %"$gascmp_851", label %"$out_of_gas_852", label %"$have_gas_853"

"$out_of_gas_852":                                ; preds = %"$have_gas_841"
  call void @_out_of_gas()
  br label %"$have_gas_853"

"$have_gas_853":                                  ; preds = %"$out_of_gas_852", %"$have_gas_841"
  %"$consume_854" = sub i64 %"$gasrem_850", 1
  store i64 %"$consume_854", i64* @_gasrem, align 8
  %"$BoolUtils.andb_87" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_855" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_856" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_855", 0
  %"$BoolUtils.andb_envptr_857" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_855", 1
  %"$$test_36_858" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_859" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_856"(i8* %"$BoolUtils.andb_envptr_857", %TName_Bool* %"$$test_36_858"), !dbg !69
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_859", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_87", align 8, !dbg !69
  %"$BoolUtils.andb_88" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_87_860" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_87", align 8
  %"$$BoolUtils.andb_87_fptr_861" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_87_860", 0
  %"$$BoolUtils.andb_87_envptr_862" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_87_860", 1
  %"$$test__41_863" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_87_call_864" = call %TName_Bool* %"$$BoolUtils.andb_87_fptr_861"(i8* %"$$BoolUtils.andb_87_envptr_862", %TName_Bool* %"$$test__41_863"), !dbg !69
  store %TName_Bool* %"$$BoolUtils.andb_87_call_864", %TName_Bool** %"$BoolUtils.andb_88", align 8, !dbg !69
  %"$$BoolUtils.andb_88_865" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_88", align 8
  store %TName_Bool* %"$$BoolUtils.andb_88_865", %TName_Bool** %"$test_42", align 8, !dbg !69
  %"$gasrem_866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_867" = icmp ugt i64 1, %"$gasrem_866"
  br i1 %"$gascmp_867", label %"$out_of_gas_868", label %"$have_gas_869"

"$out_of_gas_868":                                ; preds = %"$have_gas_853"
  call void @_out_of_gas()
  br label %"$have_gas_869"

"$have_gas_869":                                  ; preds = %"$out_of_gas_868", %"$have_gas_853"
  %"$consume_870" = sub i64 %"$gasrem_866", 1
  store i64 %"$consume_870", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Uint256, align 8
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 1, %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_869"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_869"
  %"$consume_875" = sub i64 %"$gasrem_871", 1
  store i64 %"$consume_875", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg1_43", align 8, !dbg !70
  %"$gasrem_876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_877" = icmp ugt i64 1, %"$gasrem_876"
  br i1 %"$gascmp_877", label %"$out_of_gas_878", label %"$have_gas_879"

"$out_of_gas_878":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_879"

"$have_gas_879":                                  ; preds = %"$out_of_gas_878", %"$have_gas_874"
  %"$consume_880" = sub i64 %"$gasrem_876", 1
  store i64 %"$consume_880", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Uint256, align 8
  %"$gasrem_881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_882" = icmp ugt i64 1, %"$gasrem_881"
  br i1 %"$gascmp_882", label %"$out_of_gas_883", label %"$have_gas_884"

"$out_of_gas_883":                                ; preds = %"$have_gas_879"
  call void @_out_of_gas()
  br label %"$have_gas_884"

"$have_gas_884":                                  ; preds = %"$out_of_gas_883", %"$have_gas_879"
  %"$consume_885" = sub i64 %"$gasrem_881", 1
  store i64 %"$consume_885", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg2_44", align 8, !dbg !71
  %"$gasrem_886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_887" = icmp ugt i64 1, %"$gasrem_886"
  br i1 %"$gascmp_887", label %"$out_of_gas_888", label %"$have_gas_889"

"$out_of_gas_888":                                ; preds = %"$have_gas_884"
  call void @_out_of_gas()
  br label %"$have_gas_889"

"$have_gas_889":                                  ; preds = %"$out_of_gas_888", %"$have_gas_884"
  %"$consume_890" = sub i64 %"$gasrem_886", 1
  store i64 %"$consume_890", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_892" = icmp ugt i64 1, %"$gasrem_891"
  br i1 %"$gascmp_892", label %"$out_of_gas_893", label %"$have_gas_894"

"$out_of_gas_893":                                ; preds = %"$have_gas_889"
  call void @_out_of_gas()
  br label %"$have_gas_894"

"$have_gas_894":                                  ; preds = %"$out_of_gas_893", %"$have_gas_889"
  %"$consume_895" = sub i64 %"$gasrem_891", 1
  store i64 %"$consume_895", i64* @_gasrem, align 8
  %"$res_45" = alloca %Uint256, align 8
  %"$gasrem_897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_898" = icmp ugt i64 16, %"$gasrem_897"
  br i1 %"$gascmp_898", label %"$out_of_gas_899", label %"$have_gas_900"

"$out_of_gas_899":                                ; preds = %"$have_gas_894"
  call void @_out_of_gas()
  br label %"$have_gas_900"

"$have_gas_900":                                  ; preds = %"$out_of_gas_899", %"$have_gas_894"
  %"$consume_901" = sub i64 %"$gasrem_897", 16
  store i64 %"$consume_901", i64* @_gasrem, align 8
  %"$execptr_load_902" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_43_903" = alloca %Uint256, align 8
  %"$$arg1_43_904" = load %Uint256, %Uint256* %"$arg1_43", align 8
  store %Uint256 %"$$arg1_43_904", %Uint256* %"$sub_$arg1_43_903", align 8
  %"$sub_$arg2_44_905" = alloca %Uint256, align 8
  %"$$arg2_44_906" = load %Uint256, %Uint256* %"$arg2_44", align 8
  store %Uint256 %"$$arg2_44_906", %Uint256* %"$sub_$arg2_44_905", align 8
  %"$sub_call_907" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_902", %Uint256* %"$sub_$arg1_43_903", %Uint256* %"$sub_$arg2_44_905"), !dbg !72
  %"$sub_909" = load %Uint256, %Uint256* %"$sub_call_907", align 8
  store %Uint256 %"$sub_909", %Uint256* %"$res_45", align 8, !dbg !72
  %"$gasrem_910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_911" = icmp ugt i64 1, %"$gasrem_910"
  br i1 %"$gascmp_911", label %"$out_of_gas_912", label %"$have_gas_913"

"$out_of_gas_912":                                ; preds = %"$have_gas_900"
  call void @_out_of_gas()
  br label %"$have_gas_913"

"$have_gas_913":                                  ; preds = %"$out_of_gas_912", %"$have_gas_900"
  %"$consume_914" = sub i64 %"$gasrem_910", 1
  store i64 %"$consume_914", i64* @_gasrem, align 8
  %"$res__46" = alloca %Uint256, align 8
  %"$gasrem_915" = load i64, i64* @_gasrem, align 8
  %"$gascmp_916" = icmp ugt i64 1, %"$gasrem_915"
  br i1 %"$gascmp_916", label %"$out_of_gas_917", label %"$have_gas_918"

"$out_of_gas_917":                                ; preds = %"$have_gas_913"
  call void @_out_of_gas()
  br label %"$have_gas_918"

"$have_gas_918":                                  ; preds = %"$out_of_gas_917", %"$have_gas_913"
  %"$consume_919" = sub i64 %"$gasrem_915", 1
  store i64 %"$consume_919", i64* @_gasrem, align 8
  store %Uint256 zeroinitializer, %Uint256* %"$res__46", align 8, !dbg !73
  %"$gasrem_920" = load i64, i64* @_gasrem, align 8
  %"$gascmp_921" = icmp ugt i64 1, %"$gasrem_920"
  br i1 %"$gascmp_921", label %"$out_of_gas_922", label %"$have_gas_923"

"$out_of_gas_922":                                ; preds = %"$have_gas_918"
  call void @_out_of_gas()
  br label %"$have_gas_923"

"$have_gas_923":                                  ; preds = %"$out_of_gas_922", %"$have_gas_918"
  %"$consume_924" = sub i64 %"$gasrem_920", 1
  store i64 %"$consume_924", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 16, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %"$have_gas_923"
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %"$have_gas_923"
  %"$consume_930" = sub i64 %"$gasrem_926", 16
  store i64 %"$consume_930", i64* @_gasrem, align 8
  %"$execptr_load_931" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_45_932" = alloca %Uint256, align 8
  %"$$res_45_933" = load %Uint256, %Uint256* %"$res_45", align 8
  store %Uint256 %"$$res_45_933", %Uint256* %"$eq_$res_45_932", align 8
  %"$eq_$res__46_934" = alloca %Uint256, align 8
  %"$$res__46_935" = load %Uint256, %Uint256* %"$res__46", align 8
  store %Uint256 %"$$res__46_935", %Uint256* %"$eq_$res__46_934", align 8
  %"$eq_call_936" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_931", %Uint256* %"$eq_$res_45_932", %Uint256* %"$eq_$res__46_934"), !dbg !74
  store %TName_Bool* %"$eq_call_936", %TName_Bool** %"$test__47", align 8, !dbg !74
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_929"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_929"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %"$BoolUtils.andb_89" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_943" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_944" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_943", 0
  %"$BoolUtils.andb_envptr_945" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_943", 1
  %"$$test_42_946" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_947" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_944"(i8* %"$BoolUtils.andb_envptr_945", %TName_Bool* %"$$test_42_946"), !dbg !75
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_947", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_89", align 8, !dbg !75
  %"$BoolUtils.andb_90" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_89_948" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_89", align 8
  %"$$BoolUtils.andb_89_fptr_949" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_89_948", 0
  %"$$BoolUtils.andb_89_envptr_950" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_89_948", 1
  %"$$test__47_951" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_89_call_952" = call %TName_Bool* %"$$BoolUtils.andb_89_fptr_949"(i8* %"$$BoolUtils.andb_89_envptr_950", %TName_Bool* %"$$test__47_951"), !dbg !75
  store %TName_Bool* %"$$BoolUtils.andb_89_call_952", %TName_Bool** %"$BoolUtils.andb_90", align 8, !dbg !75
  %"$$BoolUtils.andb_90_953" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_90", align 8
  store %TName_Bool* %"$$BoolUtils.andb_90_953", %TName_Bool** %"$test_48", align 8, !dbg !75
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 1, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %"$have_gas_941"
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %"$have_gas_941"
  %"$consume_958" = sub i64 %"$gasrem_954", 1
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Uint256, align 8
  %"$gasrem_959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_960" = icmp ugt i64 1, %"$gasrem_959"
  br i1 %"$gascmp_960", label %"$out_of_gas_961", label %"$have_gas_962"

"$out_of_gas_961":                                ; preds = %"$have_gas_957"
  call void @_out_of_gas()
  br label %"$have_gas_962"

"$have_gas_962":                                  ; preds = %"$out_of_gas_961", %"$have_gas_957"
  %"$consume_963" = sub i64 %"$gasrem_959", 1
  store i64 %"$consume_963", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg1_49", align 8, !dbg !76
  %"$gasrem_964" = load i64, i64* @_gasrem, align 8
  %"$gascmp_965" = icmp ugt i64 1, %"$gasrem_964"
  br i1 %"$gascmp_965", label %"$out_of_gas_966", label %"$have_gas_967"

"$out_of_gas_966":                                ; preds = %"$have_gas_962"
  call void @_out_of_gas()
  br label %"$have_gas_967"

"$have_gas_967":                                  ; preds = %"$out_of_gas_966", %"$have_gas_962"
  %"$consume_968" = sub i64 %"$gasrem_964", 1
  store i64 %"$consume_968", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Uint256, align 8
  %"$gasrem_969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_970" = icmp ugt i64 1, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %"$have_gas_967"
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %"$have_gas_967"
  %"$consume_973" = sub i64 %"$gasrem_969", 1
  store i64 %"$consume_973", i64* @_gasrem, align 8
  store %Uint256 { i256 -2 }, %Uint256* %"$arg2_50", align 8, !dbg !77
  %"$gasrem_974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_975" = icmp ugt i64 1, %"$gasrem_974"
  br i1 %"$gascmp_975", label %"$out_of_gas_976", label %"$have_gas_977"

"$out_of_gas_976":                                ; preds = %"$have_gas_972"
  call void @_out_of_gas()
  br label %"$have_gas_977"

"$have_gas_977":                                  ; preds = %"$out_of_gas_976", %"$have_gas_972"
  %"$consume_978" = sub i64 %"$gasrem_974", 1
  store i64 %"$consume_978", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_979" = load i64, i64* @_gasrem, align 8
  %"$gascmp_980" = icmp ugt i64 1, %"$gasrem_979"
  br i1 %"$gascmp_980", label %"$out_of_gas_981", label %"$have_gas_982"

"$out_of_gas_981":                                ; preds = %"$have_gas_977"
  call void @_out_of_gas()
  br label %"$have_gas_982"

"$have_gas_982":                                  ; preds = %"$out_of_gas_981", %"$have_gas_977"
  %"$consume_983" = sub i64 %"$gasrem_979", 1
  store i64 %"$consume_983", i64* @_gasrem, align 8
  %"$res_51" = alloca %Uint256, align 8
  %"$gasrem_985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_986" = icmp ugt i64 16, %"$gasrem_985"
  br i1 %"$gascmp_986", label %"$out_of_gas_987", label %"$have_gas_988"

"$out_of_gas_987":                                ; preds = %"$have_gas_982"
  call void @_out_of_gas()
  br label %"$have_gas_988"

"$have_gas_988":                                  ; preds = %"$out_of_gas_987", %"$have_gas_982"
  %"$consume_989" = sub i64 %"$gasrem_985", 16
  store i64 %"$consume_989", i64* @_gasrem, align 8
  %"$execptr_load_990" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_49_991" = alloca %Uint256, align 8
  %"$$arg1_49_992" = load %Uint256, %Uint256* %"$arg1_49", align 8
  store %Uint256 %"$$arg1_49_992", %Uint256* %"$sub_$arg1_49_991", align 8
  %"$sub_$arg2_50_993" = alloca %Uint256, align 8
  %"$$arg2_50_994" = load %Uint256, %Uint256* %"$arg2_50", align 8
  store %Uint256 %"$$arg2_50_994", %Uint256* %"$sub_$arg2_50_993", align 8
  %"$sub_call_995" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_990", %Uint256* %"$sub_$arg1_49_991", %Uint256* %"$sub_$arg2_50_993"), !dbg !78
  %"$sub_997" = load %Uint256, %Uint256* %"$sub_call_995", align 8
  store %Uint256 %"$sub_997", %Uint256* %"$res_51", align 8, !dbg !78
  %"$gasrem_998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_999" = icmp ugt i64 1, %"$gasrem_998"
  br i1 %"$gascmp_999", label %"$out_of_gas_1000", label %"$have_gas_1001"

"$out_of_gas_1000":                               ; preds = %"$have_gas_988"
  call void @_out_of_gas()
  br label %"$have_gas_1001"

"$have_gas_1001":                                 ; preds = %"$out_of_gas_1000", %"$have_gas_988"
  %"$consume_1002" = sub i64 %"$gasrem_998", 1
  store i64 %"$consume_1002", i64* @_gasrem, align 8
  %"$res__52" = alloca %Uint256, align 8
  %"$gasrem_1003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1004" = icmp ugt i64 1, %"$gasrem_1003"
  br i1 %"$gascmp_1004", label %"$out_of_gas_1005", label %"$have_gas_1006"

"$out_of_gas_1005":                               ; preds = %"$have_gas_1001"
  call void @_out_of_gas()
  br label %"$have_gas_1006"

"$have_gas_1006":                                 ; preds = %"$out_of_gas_1005", %"$have_gas_1001"
  %"$consume_1007" = sub i64 %"$gasrem_1003", 1
  store i64 %"$consume_1007", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__52", align 8, !dbg !79
  %"$gasrem_1008" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1009" = icmp ugt i64 1, %"$gasrem_1008"
  br i1 %"$gascmp_1009", label %"$out_of_gas_1010", label %"$have_gas_1011"

"$out_of_gas_1010":                               ; preds = %"$have_gas_1006"
  call void @_out_of_gas()
  br label %"$have_gas_1011"

"$have_gas_1011":                                 ; preds = %"$out_of_gas_1010", %"$have_gas_1006"
  %"$consume_1012" = sub i64 %"$gasrem_1008", 1
  store i64 %"$consume_1012", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  %"$gasrem_1014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1015" = icmp ugt i64 16, %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$have_gas_1011"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$have_gas_1011"
  %"$consume_1018" = sub i64 %"$gasrem_1014", 16
  store i64 %"$consume_1018", i64* @_gasrem, align 8
  %"$execptr_load_1019" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_1020" = alloca %Uint256, align 8
  %"$$res_51_1021" = load %Uint256, %Uint256* %"$res_51", align 8
  store %Uint256 %"$$res_51_1021", %Uint256* %"$eq_$res_51_1020", align 8
  %"$eq_$res__52_1022" = alloca %Uint256, align 8
  %"$$res__52_1023" = load %Uint256, %Uint256* %"$res__52", align 8
  store %Uint256 %"$$res__52_1023", %Uint256* %"$eq_$res__52_1022", align 8
  %"$eq_call_1024" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1019", %Uint256* %"$eq_$res_51_1020", %Uint256* %"$eq_$res__52_1022"), !dbg !80
  store %TName_Bool* %"$eq_call_1024", %TName_Bool** %"$test__53", align 8, !dbg !80
  %"$gasrem_1026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1027" = icmp ugt i64 1, %"$gasrem_1026"
  br i1 %"$gascmp_1027", label %"$out_of_gas_1028", label %"$have_gas_1029"

"$out_of_gas_1028":                               ; preds = %"$have_gas_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1029"

"$have_gas_1029":                                 ; preds = %"$out_of_gas_1028", %"$have_gas_1017"
  %"$consume_1030" = sub i64 %"$gasrem_1026", 1
  store i64 %"$consume_1030", i64* @_gasrem, align 8
  %"$BoolUtils.andb_91" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1031" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1032" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1031", 0
  %"$BoolUtils.andb_envptr_1033" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1031", 1
  %"$$test_48_1034" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_1035" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1032"(i8* %"$BoolUtils.andb_envptr_1033", %TName_Bool* %"$$test_48_1034"), !dbg !81
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1035", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_91", align 8, !dbg !81
  %"$BoolUtils.andb_92" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_91_1036" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_91", align 8
  %"$$BoolUtils.andb_91_fptr_1037" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_91_1036", 0
  %"$$BoolUtils.andb_91_envptr_1038" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_91_1036", 1
  %"$$test__53_1039" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_91_call_1040" = call %TName_Bool* %"$$BoolUtils.andb_91_fptr_1037"(i8* %"$$BoolUtils.andb_91_envptr_1038", %TName_Bool* %"$$test__53_1039"), !dbg !81
  store %TName_Bool* %"$$BoolUtils.andb_91_call_1040", %TName_Bool** %"$BoolUtils.andb_92", align 8, !dbg !81
  %"$$BoolUtils.andb_92_1041" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_92", align 8
  store %TName_Bool* %"$$BoolUtils.andb_92_1041", %TName_Bool** %"$test_54", align 8, !dbg !81
  %"$gasrem_1042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1043" = icmp ugt i64 1, %"$gasrem_1042"
  br i1 %"$gascmp_1043", label %"$out_of_gas_1044", label %"$have_gas_1045"

"$out_of_gas_1044":                               ; preds = %"$have_gas_1029"
  call void @_out_of_gas()
  br label %"$have_gas_1045"

"$have_gas_1045":                                 ; preds = %"$out_of_gas_1044", %"$have_gas_1029"
  %"$consume_1046" = sub i64 %"$gasrem_1042", 1
  store i64 %"$consume_1046", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Int256, align 8
  %"$gasrem_1047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1048" = icmp ugt i64 1, %"$gasrem_1047"
  br i1 %"$gascmp_1048", label %"$out_of_gas_1049", label %"$have_gas_1050"

"$out_of_gas_1049":                               ; preds = %"$have_gas_1045"
  call void @_out_of_gas()
  br label %"$have_gas_1050"

"$have_gas_1050":                                 ; preds = %"$out_of_gas_1049", %"$have_gas_1045"
  %"$consume_1051" = sub i64 %"$gasrem_1047", 1
  store i64 %"$consume_1051", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_55", align 8, !dbg !82
  %"$gasrem_1052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1053" = icmp ugt i64 1, %"$gasrem_1052"
  br i1 %"$gascmp_1053", label %"$out_of_gas_1054", label %"$have_gas_1055"

"$out_of_gas_1054":                               ; preds = %"$have_gas_1050"
  call void @_out_of_gas()
  br label %"$have_gas_1055"

"$have_gas_1055":                                 ; preds = %"$out_of_gas_1054", %"$have_gas_1050"
  %"$consume_1056" = sub i64 %"$gasrem_1052", 1
  store i64 %"$consume_1056", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Int256, align 8
  %"$gasrem_1057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1058" = icmp ugt i64 1, %"$gasrem_1057"
  br i1 %"$gascmp_1058", label %"$out_of_gas_1059", label %"$have_gas_1060"

"$out_of_gas_1059":                               ; preds = %"$have_gas_1055"
  call void @_out_of_gas()
  br label %"$have_gas_1060"

"$have_gas_1060":                                 ; preds = %"$out_of_gas_1059", %"$have_gas_1055"
  %"$consume_1061" = sub i64 %"$gasrem_1057", 1
  store i64 %"$consume_1061", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$arg2_56", align 8, !dbg !83
  %"$gasrem_1062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1063" = icmp ugt i64 1, %"$gasrem_1062"
  br i1 %"$gascmp_1063", label %"$out_of_gas_1064", label %"$have_gas_1065"

"$out_of_gas_1064":                               ; preds = %"$have_gas_1060"
  call void @_out_of_gas()
  br label %"$have_gas_1065"

"$have_gas_1065":                                 ; preds = %"$out_of_gas_1064", %"$have_gas_1060"
  %"$consume_1066" = sub i64 %"$gasrem_1062", 1
  store i64 %"$consume_1066", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1068" = icmp ugt i64 1, %"$gasrem_1067"
  br i1 %"$gascmp_1068", label %"$out_of_gas_1069", label %"$have_gas_1070"

"$out_of_gas_1069":                               ; preds = %"$have_gas_1065"
  call void @_out_of_gas()
  br label %"$have_gas_1070"

"$have_gas_1070":                                 ; preds = %"$out_of_gas_1069", %"$have_gas_1065"
  %"$consume_1071" = sub i64 %"$gasrem_1067", 1
  store i64 %"$consume_1071", i64* @_gasrem, align 8
  %"$res_57" = alloca %Int256, align 8
  %"$gasrem_1073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1074" = icmp ugt i64 16, %"$gasrem_1073"
  br i1 %"$gascmp_1074", label %"$out_of_gas_1075", label %"$have_gas_1076"

"$out_of_gas_1075":                               ; preds = %"$have_gas_1070"
  call void @_out_of_gas()
  br label %"$have_gas_1076"

"$have_gas_1076":                                 ; preds = %"$out_of_gas_1075", %"$have_gas_1070"
  %"$consume_1077" = sub i64 %"$gasrem_1073", 16
  store i64 %"$consume_1077", i64* @_gasrem, align 8
  %"$execptr_load_1078" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_55_1079" = alloca %Int256, align 8
  %"$$arg1_55_1080" = load %Int256, %Int256* %"$arg1_55", align 8
  store %Int256 %"$$arg1_55_1080", %Int256* %"$sub_$arg1_55_1079", align 8
  %"$sub_$arg2_56_1081" = alloca %Int256, align 8
  %"$$arg2_56_1082" = load %Int256, %Int256* %"$arg2_56", align 8
  store %Int256 %"$$arg2_56_1082", %Int256* %"$sub_$arg2_56_1081", align 8
  %"$sub_call_1083" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1078", %Int256* %"$sub_$arg1_55_1079", %Int256* %"$sub_$arg2_56_1081"), !dbg !84
  %"$sub_1085" = load %Int256, %Int256* %"$sub_call_1083", align 8
  store %Int256 %"$sub_1085", %Int256* %"$res_57", align 8, !dbg !84
  %"$gasrem_1086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1087" = icmp ugt i64 1, %"$gasrem_1086"
  br i1 %"$gascmp_1087", label %"$out_of_gas_1088", label %"$have_gas_1089"

"$out_of_gas_1088":                               ; preds = %"$have_gas_1076"
  call void @_out_of_gas()
  br label %"$have_gas_1089"

"$have_gas_1089":                                 ; preds = %"$out_of_gas_1088", %"$have_gas_1076"
  %"$consume_1090" = sub i64 %"$gasrem_1086", 1
  store i64 %"$consume_1090", i64* @_gasrem, align 8
  %"$res__58" = alloca %Int256, align 8
  %"$gasrem_1091" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1092" = icmp ugt i64 1, %"$gasrem_1091"
  br i1 %"$gascmp_1092", label %"$out_of_gas_1093", label %"$have_gas_1094"

"$out_of_gas_1093":                               ; preds = %"$have_gas_1089"
  call void @_out_of_gas()
  br label %"$have_gas_1094"

"$have_gas_1094":                                 ; preds = %"$out_of_gas_1093", %"$have_gas_1089"
  %"$consume_1095" = sub i64 %"$gasrem_1091", 1
  store i64 %"$consume_1095", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$res__58", align 8, !dbg !85
  %"$gasrem_1096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1097" = icmp ugt i64 1, %"$gasrem_1096"
  br i1 %"$gascmp_1097", label %"$out_of_gas_1098", label %"$have_gas_1099"

"$out_of_gas_1098":                               ; preds = %"$have_gas_1094"
  call void @_out_of_gas()
  br label %"$have_gas_1099"

"$have_gas_1099":                                 ; preds = %"$out_of_gas_1098", %"$have_gas_1094"
  %"$consume_1100" = sub i64 %"$gasrem_1096", 1
  store i64 %"$consume_1100", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  %"$gasrem_1102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1103" = icmp ugt i64 16, %"$gasrem_1102"
  br i1 %"$gascmp_1103", label %"$out_of_gas_1104", label %"$have_gas_1105"

"$out_of_gas_1104":                               ; preds = %"$have_gas_1099"
  call void @_out_of_gas()
  br label %"$have_gas_1105"

"$have_gas_1105":                                 ; preds = %"$out_of_gas_1104", %"$have_gas_1099"
  %"$consume_1106" = sub i64 %"$gasrem_1102", 16
  store i64 %"$consume_1106", i64* @_gasrem, align 8
  %"$execptr_load_1107" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_1108" = alloca %Int256, align 8
  %"$$res_57_1109" = load %Int256, %Int256* %"$res_57", align 8
  store %Int256 %"$$res_57_1109", %Int256* %"$eq_$res_57_1108", align 8
  %"$eq_$res__58_1110" = alloca %Int256, align 8
  %"$$res__58_1111" = load %Int256, %Int256* %"$res__58", align 8
  store %Int256 %"$$res__58_1111", %Int256* %"$eq_$res__58_1110", align 8
  %"$eq_call_1112" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1107", %Int256* %"$eq_$res_57_1108", %Int256* %"$eq_$res__58_1110"), !dbg !86
  store %TName_Bool* %"$eq_call_1112", %TName_Bool** %"$test__59", align 8, !dbg !86
  %"$gasrem_1114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1115" = icmp ugt i64 1, %"$gasrem_1114"
  br i1 %"$gascmp_1115", label %"$out_of_gas_1116", label %"$have_gas_1117"

"$out_of_gas_1116":                               ; preds = %"$have_gas_1105"
  call void @_out_of_gas()
  br label %"$have_gas_1117"

"$have_gas_1117":                                 ; preds = %"$out_of_gas_1116", %"$have_gas_1105"
  %"$consume_1118" = sub i64 %"$gasrem_1114", 1
  store i64 %"$consume_1118", i64* @_gasrem, align 8
  %"$BoolUtils.andb_93" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1119" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1120" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1119", 0
  %"$BoolUtils.andb_envptr_1121" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1119", 1
  %"$$test_54_1122" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1123" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1120"(i8* %"$BoolUtils.andb_envptr_1121", %TName_Bool* %"$$test_54_1122"), !dbg !87
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1123", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_93", align 8, !dbg !87
  %"$BoolUtils.andb_94" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_93_1124" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_93", align 8
  %"$$BoolUtils.andb_93_fptr_1125" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_93_1124", 0
  %"$$BoolUtils.andb_93_envptr_1126" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_93_1124", 1
  %"$$test__59_1127" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_93_call_1128" = call %TName_Bool* %"$$BoolUtils.andb_93_fptr_1125"(i8* %"$$BoolUtils.andb_93_envptr_1126", %TName_Bool* %"$$test__59_1127"), !dbg !87
  store %TName_Bool* %"$$BoolUtils.andb_93_call_1128", %TName_Bool** %"$BoolUtils.andb_94", align 8, !dbg !87
  %"$$BoolUtils.andb_94_1129" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_94", align 8
  store %TName_Bool* %"$$BoolUtils.andb_94_1129", %TName_Bool** %"$test_60", align 8, !dbg !87
  %"$gasrem_1130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1131" = icmp ugt i64 1, %"$gasrem_1130"
  br i1 %"$gascmp_1131", label %"$out_of_gas_1132", label %"$have_gas_1133"

"$out_of_gas_1132":                               ; preds = %"$have_gas_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1133"

"$have_gas_1133":                                 ; preds = %"$out_of_gas_1132", %"$have_gas_1117"
  %"$consume_1134" = sub i64 %"$gasrem_1130", 1
  store i64 %"$consume_1134", i64* @_gasrem, align 8
  %"$arg2_61" = alloca %Int256, align 8
  %"$gasrem_1135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1136" = icmp ugt i64 1, %"$gasrem_1135"
  br i1 %"$gascmp_1136", label %"$out_of_gas_1137", label %"$have_gas_1138"

"$out_of_gas_1137":                               ; preds = %"$have_gas_1133"
  call void @_out_of_gas()
  br label %"$have_gas_1138"

"$have_gas_1138":                                 ; preds = %"$out_of_gas_1137", %"$have_gas_1133"
  %"$consume_1139" = sub i64 %"$gasrem_1135", 1
  store i64 %"$consume_1139", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_61", align 8, !dbg !88
  %"$gasrem_1140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1141" = icmp ugt i64 1, %"$gasrem_1140"
  br i1 %"$gascmp_1141", label %"$out_of_gas_1142", label %"$have_gas_1143"

"$out_of_gas_1142":                               ; preds = %"$have_gas_1138"
  call void @_out_of_gas()
  br label %"$have_gas_1143"

"$have_gas_1143":                                 ; preds = %"$out_of_gas_1142", %"$have_gas_1138"
  %"$consume_1144" = sub i64 %"$gasrem_1140", 1
  store i64 %"$consume_1144", i64* @_gasrem, align 8
  %"$arg1_62" = alloca %Int256, align 8
  %"$gasrem_1145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1146" = icmp ugt i64 1, %"$gasrem_1145"
  br i1 %"$gascmp_1146", label %"$out_of_gas_1147", label %"$have_gas_1148"

"$out_of_gas_1147":                               ; preds = %"$have_gas_1143"
  call void @_out_of_gas()
  br label %"$have_gas_1148"

"$have_gas_1148":                                 ; preds = %"$out_of_gas_1147", %"$have_gas_1143"
  %"$consume_1149" = sub i64 %"$gasrem_1145", 1
  store i64 %"$consume_1149", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$arg1_62", align 8, !dbg !89
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 1, %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1148"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1148"
  %"$consume_1154" = sub i64 %"$gasrem_1150", 1
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1156" = icmp ugt i64 1, %"$gasrem_1155"
  br i1 %"$gascmp_1156", label %"$out_of_gas_1157", label %"$have_gas_1158"

"$out_of_gas_1157":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1158"

"$have_gas_1158":                                 ; preds = %"$out_of_gas_1157", %"$have_gas_1153"
  %"$consume_1159" = sub i64 %"$gasrem_1155", 1
  store i64 %"$consume_1159", i64* @_gasrem, align 8
  %"$res_63" = alloca %Int256, align 8
  %"$gasrem_1161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1162" = icmp ugt i64 16, %"$gasrem_1161"
  br i1 %"$gascmp_1162", label %"$out_of_gas_1163", label %"$have_gas_1164"

"$out_of_gas_1163":                               ; preds = %"$have_gas_1158"
  call void @_out_of_gas()
  br label %"$have_gas_1164"

"$have_gas_1164":                                 ; preds = %"$out_of_gas_1163", %"$have_gas_1158"
  %"$consume_1165" = sub i64 %"$gasrem_1161", 16
  store i64 %"$consume_1165", i64* @_gasrem, align 8
  %"$execptr_load_1166" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_62_1167" = alloca %Int256, align 8
  %"$$arg1_62_1168" = load %Int256, %Int256* %"$arg1_62", align 8
  store %Int256 %"$$arg1_62_1168", %Int256* %"$sub_$arg1_62_1167", align 8
  %"$sub_$arg2_61_1169" = alloca %Int256, align 8
  %"$$arg2_61_1170" = load %Int256, %Int256* %"$arg2_61", align 8
  store %Int256 %"$$arg2_61_1170", %Int256* %"$sub_$arg2_61_1169", align 8
  %"$sub_call_1171" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1166", %Int256* %"$sub_$arg1_62_1167", %Int256* %"$sub_$arg2_61_1169"), !dbg !90
  %"$sub_1173" = load %Int256, %Int256* %"$sub_call_1171", align 8
  store %Int256 %"$sub_1173", %Int256* %"$res_63", align 8, !dbg !90
  %"$gasrem_1174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1175" = icmp ugt i64 1, %"$gasrem_1174"
  br i1 %"$gascmp_1175", label %"$out_of_gas_1176", label %"$have_gas_1177"

"$out_of_gas_1176":                               ; preds = %"$have_gas_1164"
  call void @_out_of_gas()
  br label %"$have_gas_1177"

"$have_gas_1177":                                 ; preds = %"$out_of_gas_1176", %"$have_gas_1164"
  %"$consume_1178" = sub i64 %"$gasrem_1174", 1
  store i64 %"$consume_1178", i64* @_gasrem, align 8
  %"$res__64" = alloca %Int256, align 8
  %"$gasrem_1179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1180" = icmp ugt i64 1, %"$gasrem_1179"
  br i1 %"$gascmp_1180", label %"$out_of_gas_1181", label %"$have_gas_1182"

"$out_of_gas_1181":                               ; preds = %"$have_gas_1177"
  call void @_out_of_gas()
  br label %"$have_gas_1182"

"$have_gas_1182":                                 ; preds = %"$out_of_gas_1181", %"$have_gas_1177"
  %"$consume_1183" = sub i64 %"$gasrem_1179", 1
  store i64 %"$consume_1183", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$res__64", align 8, !dbg !91
  %"$gasrem_1184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1185" = icmp ugt i64 1, %"$gasrem_1184"
  br i1 %"$gascmp_1185", label %"$out_of_gas_1186", label %"$have_gas_1187"

"$out_of_gas_1186":                               ; preds = %"$have_gas_1182"
  call void @_out_of_gas()
  br label %"$have_gas_1187"

"$have_gas_1187":                                 ; preds = %"$out_of_gas_1186", %"$have_gas_1182"
  %"$consume_1188" = sub i64 %"$gasrem_1184", 1
  store i64 %"$consume_1188", i64* @_gasrem, align 8
  %"$test__65" = alloca %TName_Bool*, align 8
  %"$gasrem_1190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1191" = icmp ugt i64 16, %"$gasrem_1190"
  br i1 %"$gascmp_1191", label %"$out_of_gas_1192", label %"$have_gas_1193"

"$out_of_gas_1192":                               ; preds = %"$have_gas_1187"
  call void @_out_of_gas()
  br label %"$have_gas_1193"

"$have_gas_1193":                                 ; preds = %"$out_of_gas_1192", %"$have_gas_1187"
  %"$consume_1194" = sub i64 %"$gasrem_1190", 16
  store i64 %"$consume_1194", i64* @_gasrem, align 8
  %"$execptr_load_1195" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_63_1196" = alloca %Int256, align 8
  %"$$res_63_1197" = load %Int256, %Int256* %"$res_63", align 8
  store %Int256 %"$$res_63_1197", %Int256* %"$eq_$res_63_1196", align 8
  %"$eq_$res__64_1198" = alloca %Int256, align 8
  %"$$res__64_1199" = load %Int256, %Int256* %"$res__64", align 8
  store %Int256 %"$$res__64_1199", %Int256* %"$eq_$res__64_1198", align 8
  %"$eq_call_1200" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1195", %Int256* %"$eq_$res_63_1196", %Int256* %"$eq_$res__64_1198"), !dbg !92
  store %TName_Bool* %"$eq_call_1200", %TName_Bool** %"$test__65", align 8, !dbg !92
  %"$gasrem_1202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1203" = icmp ugt i64 1, %"$gasrem_1202"
  br i1 %"$gascmp_1203", label %"$out_of_gas_1204", label %"$have_gas_1205"

"$out_of_gas_1204":                               ; preds = %"$have_gas_1193"
  call void @_out_of_gas()
  br label %"$have_gas_1205"

"$have_gas_1205":                                 ; preds = %"$out_of_gas_1204", %"$have_gas_1193"
  %"$consume_1206" = sub i64 %"$gasrem_1202", 1
  store i64 %"$consume_1206", i64* @_gasrem, align 8
  %"$BoolUtils.andb_95" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1207" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1208" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1207", 0
  %"$BoolUtils.andb_envptr_1209" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1207", 1
  %"$$test_60_1210" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1211" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1208"(i8* %"$BoolUtils.andb_envptr_1209", %TName_Bool* %"$$test_60_1210"), !dbg !93
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1211", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_95", align 8, !dbg !93
  %"$BoolUtils.andb_96" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_95_1212" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_95", align 8
  %"$$BoolUtils.andb_95_fptr_1213" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_95_1212", 0
  %"$$BoolUtils.andb_95_envptr_1214" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_95_1212", 1
  %"$$test__65_1215" = load %TName_Bool*, %TName_Bool** %"$test__65", align 8
  %"$$BoolUtils.andb_95_call_1216" = call %TName_Bool* %"$$BoolUtils.andb_95_fptr_1213"(i8* %"$$BoolUtils.andb_95_envptr_1214", %TName_Bool* %"$$test__65_1215"), !dbg !93
  store %TName_Bool* %"$$BoolUtils.andb_95_call_1216", %TName_Bool** %"$BoolUtils.andb_96", align 8, !dbg !93
  %"$$BoolUtils.andb_96_1217" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_96", align 8
  store %TName_Bool* %"$$BoolUtils.andb_96_1217", %TName_Bool** %"$test_66", align 8, !dbg !93
  %"$gasrem_1218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1219" = icmp ugt i64 1, %"$gasrem_1218"
  br i1 %"$gascmp_1219", label %"$out_of_gas_1220", label %"$have_gas_1221"

"$out_of_gas_1220":                               ; preds = %"$have_gas_1205"
  call void @_out_of_gas()
  br label %"$have_gas_1221"

"$have_gas_1221":                                 ; preds = %"$out_of_gas_1220", %"$have_gas_1205"
  %"$consume_1222" = sub i64 %"$gasrem_1218", 1
  store i64 %"$consume_1222", i64* @_gasrem, align 8
  %"$arg1_67" = alloca %Int256, align 8
  %"$gasrem_1223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1224" = icmp ugt i64 1, %"$gasrem_1223"
  br i1 %"$gascmp_1224", label %"$out_of_gas_1225", label %"$have_gas_1226"

"$out_of_gas_1225":                               ; preds = %"$have_gas_1221"
  call void @_out_of_gas()
  br label %"$have_gas_1226"

"$have_gas_1226":                                 ; preds = %"$out_of_gas_1225", %"$have_gas_1221"
  %"$consume_1227" = sub i64 %"$gasrem_1223", 1
  store i64 %"$consume_1227", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_67", align 8, !dbg !94
  %"$gasrem_1228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1229" = icmp ugt i64 1, %"$gasrem_1228"
  br i1 %"$gascmp_1229", label %"$out_of_gas_1230", label %"$have_gas_1231"

"$out_of_gas_1230":                               ; preds = %"$have_gas_1226"
  call void @_out_of_gas()
  br label %"$have_gas_1231"

"$have_gas_1231":                                 ; preds = %"$out_of_gas_1230", %"$have_gas_1226"
  %"$consume_1232" = sub i64 %"$gasrem_1228", 1
  store i64 %"$consume_1232", i64* @_gasrem, align 8
  %"$arg2_68" = alloca %Int256, align 8
  %"$gasrem_1233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1234" = icmp ugt i64 1, %"$gasrem_1233"
  br i1 %"$gascmp_1234", label %"$out_of_gas_1235", label %"$have_gas_1236"

"$out_of_gas_1235":                               ; preds = %"$have_gas_1231"
  call void @_out_of_gas()
  br label %"$have_gas_1236"

"$have_gas_1236":                                 ; preds = %"$out_of_gas_1235", %"$have_gas_1231"
  %"$consume_1237" = sub i64 %"$gasrem_1233", 1
  store i64 %"$consume_1237", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$arg2_68", align 8, !dbg !95
  %"$gasrem_1238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1239" = icmp ugt i64 1, %"$gasrem_1238"
  br i1 %"$gascmp_1239", label %"$out_of_gas_1240", label %"$have_gas_1241"

"$out_of_gas_1240":                               ; preds = %"$have_gas_1236"
  call void @_out_of_gas()
  br label %"$have_gas_1241"

"$have_gas_1241":                                 ; preds = %"$out_of_gas_1240", %"$have_gas_1236"
  %"$consume_1242" = sub i64 %"$gasrem_1238", 1
  store i64 %"$consume_1242", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  %"$gasrem_1243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1244" = icmp ugt i64 1, %"$gasrem_1243"
  br i1 %"$gascmp_1244", label %"$out_of_gas_1245", label %"$have_gas_1246"

"$out_of_gas_1245":                               ; preds = %"$have_gas_1241"
  call void @_out_of_gas()
  br label %"$have_gas_1246"

"$have_gas_1246":                                 ; preds = %"$out_of_gas_1245", %"$have_gas_1241"
  %"$consume_1247" = sub i64 %"$gasrem_1243", 1
  store i64 %"$consume_1247", i64* @_gasrem, align 8
  %"$res_69" = alloca %Int256, align 8
  %"$gasrem_1249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1250" = icmp ugt i64 16, %"$gasrem_1249"
  br i1 %"$gascmp_1250", label %"$out_of_gas_1251", label %"$have_gas_1252"

"$out_of_gas_1251":                               ; preds = %"$have_gas_1246"
  call void @_out_of_gas()
  br label %"$have_gas_1252"

"$have_gas_1252":                                 ; preds = %"$out_of_gas_1251", %"$have_gas_1246"
  %"$consume_1253" = sub i64 %"$gasrem_1249", 16
  store i64 %"$consume_1253", i64* @_gasrem, align 8
  %"$execptr_load_1254" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_67_1255" = alloca %Int256, align 8
  %"$$arg1_67_1256" = load %Int256, %Int256* %"$arg1_67", align 8
  store %Int256 %"$$arg1_67_1256", %Int256* %"$sub_$arg1_67_1255", align 8
  %"$sub_$arg2_68_1257" = alloca %Int256, align 8
  %"$$arg2_68_1258" = load %Int256, %Int256* %"$arg2_68", align 8
  store %Int256 %"$$arg2_68_1258", %Int256* %"$sub_$arg2_68_1257", align 8
  %"$sub_call_1259" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1254", %Int256* %"$sub_$arg1_67_1255", %Int256* %"$sub_$arg2_68_1257"), !dbg !96
  %"$sub_1261" = load %Int256, %Int256* %"$sub_call_1259", align 8
  store %Int256 %"$sub_1261", %Int256* %"$res_69", align 8, !dbg !96
  %"$gasrem_1262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1263" = icmp ugt i64 1, %"$gasrem_1262"
  br i1 %"$gascmp_1263", label %"$out_of_gas_1264", label %"$have_gas_1265"

"$out_of_gas_1264":                               ; preds = %"$have_gas_1252"
  call void @_out_of_gas()
  br label %"$have_gas_1265"

"$have_gas_1265":                                 ; preds = %"$out_of_gas_1264", %"$have_gas_1252"
  %"$consume_1266" = sub i64 %"$gasrem_1262", 1
  store i64 %"$consume_1266", i64* @_gasrem, align 8
  %"$res__70" = alloca %Int256, align 8
  %"$gasrem_1267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1268" = icmp ugt i64 1, %"$gasrem_1267"
  br i1 %"$gascmp_1268", label %"$out_of_gas_1269", label %"$have_gas_1270"

"$out_of_gas_1269":                               ; preds = %"$have_gas_1265"
  call void @_out_of_gas()
  br label %"$have_gas_1270"

"$have_gas_1270":                                 ; preds = %"$out_of_gas_1269", %"$have_gas_1265"
  %"$consume_1271" = sub i64 %"$gasrem_1267", 1
  store i64 %"$consume_1271", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$res__70", align 8, !dbg !97
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 1, %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$have_gas_1270"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$have_gas_1270"
  %"$consume_1276" = sub i64 %"$gasrem_1272", 1
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  %"$test__71" = alloca %TName_Bool*, align 8
  %"$gasrem_1278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1279" = icmp ugt i64 16, %"$gasrem_1278"
  br i1 %"$gascmp_1279", label %"$out_of_gas_1280", label %"$have_gas_1281"

"$out_of_gas_1280":                               ; preds = %"$have_gas_1275"
  call void @_out_of_gas()
  br label %"$have_gas_1281"

"$have_gas_1281":                                 ; preds = %"$out_of_gas_1280", %"$have_gas_1275"
  %"$consume_1282" = sub i64 %"$gasrem_1278", 16
  store i64 %"$consume_1282", i64* @_gasrem, align 8
  %"$execptr_load_1283" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_69_1284" = alloca %Int256, align 8
  %"$$res_69_1285" = load %Int256, %Int256* %"$res_69", align 8
  store %Int256 %"$$res_69_1285", %Int256* %"$eq_$res_69_1284", align 8
  %"$eq_$res__70_1286" = alloca %Int256, align 8
  %"$$res__70_1287" = load %Int256, %Int256* %"$res__70", align 8
  store %Int256 %"$$res__70_1287", %Int256* %"$eq_$res__70_1286", align 8
  %"$eq_call_1288" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1283", %Int256* %"$eq_$res_69_1284", %Int256* %"$eq_$res__70_1286"), !dbg !98
  store %TName_Bool* %"$eq_call_1288", %TName_Bool** %"$test__71", align 8, !dbg !98
  %"$gasrem_1290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1291" = icmp ugt i64 1, %"$gasrem_1290"
  br i1 %"$gascmp_1291", label %"$out_of_gas_1292", label %"$have_gas_1293"

"$out_of_gas_1292":                               ; preds = %"$have_gas_1281"
  call void @_out_of_gas()
  br label %"$have_gas_1293"

"$have_gas_1293":                                 ; preds = %"$out_of_gas_1292", %"$have_gas_1281"
  %"$consume_1294" = sub i64 %"$gasrem_1290", 1
  store i64 %"$consume_1294", i64* @_gasrem, align 8
  %"$BoolUtils.andb_97" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1295" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1296" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1295", 0
  %"$BoolUtils.andb_envptr_1297" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1295", 1
  %"$$test_66_1298" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  %"$BoolUtils.andb_call_1299" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1296"(i8* %"$BoolUtils.andb_envptr_1297", %TName_Bool* %"$$test_66_1298"), !dbg !99
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1299", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_97", align 8, !dbg !99
  %"$BoolUtils.andb_98" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_97_1300" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_97", align 8
  %"$$BoolUtils.andb_97_fptr_1301" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_97_1300", 0
  %"$$BoolUtils.andb_97_envptr_1302" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_97_1300", 1
  %"$$test__71_1303" = load %TName_Bool*, %TName_Bool** %"$test__71", align 8
  %"$$BoolUtils.andb_97_call_1304" = call %TName_Bool* %"$$BoolUtils.andb_97_fptr_1301"(i8* %"$$BoolUtils.andb_97_envptr_1302", %TName_Bool* %"$$test__71_1303"), !dbg !99
  store %TName_Bool* %"$$BoolUtils.andb_97_call_1304", %TName_Bool** %"$BoolUtils.andb_98", align 8, !dbg !99
  %"$$BoolUtils.andb_98_1305" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_98", align 8
  store %TName_Bool* %"$$BoolUtils.andb_98_1305", %TName_Bool** %"$test_72", align 8, !dbg !99
  %"$gasrem_1306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1307" = icmp ugt i64 1, %"$gasrem_1306"
  br i1 %"$gascmp_1307", label %"$out_of_gas_1308", label %"$have_gas_1309"

"$out_of_gas_1308":                               ; preds = %"$have_gas_1293"
  call void @_out_of_gas()
  br label %"$have_gas_1309"

"$have_gas_1309":                                 ; preds = %"$out_of_gas_1308", %"$have_gas_1293"
  %"$consume_1310" = sub i64 %"$gasrem_1306", 1
  store i64 %"$consume_1310", i64* @_gasrem, align 8
  %"$$test_72_1311" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  store %TName_Bool* %"$$test_72_1311", %TName_Bool** %"$expr_103", align 8, !dbg !100
  %"$$expr_103_1312" = load %TName_Bool*, %TName_Bool** %"$expr_103", align 8
  ret %TName_Bool* %"$$expr_103_1312"
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
  %"$exprval_1313" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1314" = bitcast %TName_Bool* %"$exprval_1313" to i8*
  %"$execptr_load_1315" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1315", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_136", i8* %"$memvoidcast_1314")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_sub.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_101", linkageName: "$fundef_101", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 8, column: 5, scope: !4)
!10 = !DILocation(line: 9, column: 16, scope: !11)
!11 = distinct !DILexicalBlock(scope: !12, file: !5, line: 9, column: 7)
!12 = distinct !DILexicalBlock(scope: !4, file: !5, line: 8, column: 5)
!13 = !DILocation(line: 10, column: 16, scope: !14)
!14 = distinct !DILexicalBlock(scope: !12, file: !5, line: 10, column: 7)
!15 = distinct !DISubprogram(name: "$fundef_99", linkageName: "$fundef_99", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 8, column: 5, scope: !15)
!17 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !18, file: !18, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DIFile(filename: ".", directory: ".")
!19 = !DILocation(line: 7, column: 3, scope: !17)
!20 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 2, column: 12, scope: !20)
!22 = !DILocation(line: 4, column: 12, scope: !20)
!23 = !DILocation(line: 5, column: 12, scope: !20)
!24 = !DILocation(line: 7, column: 13, scope: !20)
!25 = !DILocation(line: 8, column: 14, scope: !20)
!26 = !DILocation(line: 9, column: 15, scope: !20)
!27 = !DILocation(line: 10, column: 3, scope: !20)
!28 = !DILocation(line: 13, column: 12, scope: !20)
!29 = !DILocation(line: 14, column: 12, scope: !20)
!30 = !DILocation(line: 16, column: 13, scope: !20)
!31 = !DILocation(line: 17, column: 14, scope: !20)
!32 = !DILocation(line: 18, column: 15, scope: !20)
!33 = !DILocation(line: 19, column: 3, scope: !20)
!34 = !DILocation(line: 22, column: 12, scope: !20)
!35 = !DILocation(line: 23, column: 12, scope: !20)
!36 = !DILocation(line: 25, column: 13, scope: !20)
!37 = !DILocation(line: 26, column: 14, scope: !20)
!38 = !DILocation(line: 27, column: 15, scope: !20)
!39 = !DILocation(line: 28, column: 3, scope: !20)
!40 = !DILocation(line: 31, column: 12, scope: !20)
!41 = !DILocation(line: 32, column: 12, scope: !20)
!42 = !DILocation(line: 34, column: 13, scope: !20)
!43 = !DILocation(line: 35, column: 14, scope: !20)
!44 = !DILocation(line: 36, column: 15, scope: !20)
!45 = !DILocation(line: 37, column: 3, scope: !20)
!46 = !DILocation(line: 40, column: 12, scope: !20)
!47 = !DILocation(line: 41, column: 12, scope: !20)
!48 = !DILocation(line: 43, column: 13, scope: !20)
!49 = !DILocation(line: 44, column: 14, scope: !20)
!50 = !DILocation(line: 45, column: 15, scope: !20)
!51 = !DILocation(line: 46, column: 3, scope: !20)
!52 = !DILocation(line: 49, column: 12, scope: !20)
!53 = !DILocation(line: 50, column: 12, scope: !20)
!54 = !DILocation(line: 52, column: 13, scope: !20)
!55 = !DILocation(line: 53, column: 14, scope: !20)
!56 = !DILocation(line: 54, column: 15, scope: !20)
!57 = !DILocation(line: 55, column: 3, scope: !20)
!58 = !DILocation(line: 58, column: 12, scope: !20)
!59 = !DILocation(line: 59, column: 12, scope: !20)
!60 = !DILocation(line: 61, column: 13, scope: !20)
!61 = !DILocation(line: 62, column: 14, scope: !20)
!62 = !DILocation(line: 63, column: 15, scope: !20)
!63 = !DILocation(line: 64, column: 3, scope: !20)
!64 = !DILocation(line: 67, column: 12, scope: !20)
!65 = !DILocation(line: 68, column: 12, scope: !20)
!66 = !DILocation(line: 70, column: 13, scope: !20)
!67 = !DILocation(line: 71, column: 14, scope: !20)
!68 = !DILocation(line: 72, column: 15, scope: !20)
!69 = !DILocation(line: 73, column: 3, scope: !20)
!70 = !DILocation(line: 76, column: 12, scope: !20)
!71 = !DILocation(line: 77, column: 12, scope: !20)
!72 = !DILocation(line: 79, column: 13, scope: !20)
!73 = !DILocation(line: 80, column: 14, scope: !20)
!74 = !DILocation(line: 81, column: 15, scope: !20)
!75 = !DILocation(line: 82, column: 3, scope: !20)
!76 = !DILocation(line: 85, column: 12, scope: !20)
!77 = !DILocation(line: 86, column: 12, scope: !20)
!78 = !DILocation(line: 88, column: 13, scope: !20)
!79 = !DILocation(line: 89, column: 14, scope: !20)
!80 = !DILocation(line: 90, column: 15, scope: !20)
!81 = !DILocation(line: 91, column: 3, scope: !20)
!82 = !DILocation(line: 94, column: 12, scope: !20)
!83 = !DILocation(line: 95, column: 12, scope: !20)
!84 = !DILocation(line: 97, column: 13, scope: !20)
!85 = !DILocation(line: 98, column: 14, scope: !20)
!86 = !DILocation(line: 99, column: 15, scope: !20)
!87 = !DILocation(line: 100, column: 3, scope: !20)
!88 = !DILocation(line: 103, column: 12, scope: !20)
!89 = !DILocation(line: 104, column: 12, scope: !20)
!90 = !DILocation(line: 106, column: 13, scope: !20)
!91 = !DILocation(line: 107, column: 14, scope: !20)
!92 = !DILocation(line: 108, column: 15, scope: !20)
!93 = !DILocation(line: 109, column: 3, scope: !20)
!94 = !DILocation(line: 112, column: 12, scope: !20)
!95 = !DILocation(line: 113, column: 12, scope: !20)
!96 = !DILocation(line: 115, column: 13, scope: !20)
!97 = !DILocation(line: 116, column: 14, scope: !20)
!98 = !DILocation(line: 117, column: 15, scope: !20)
!99 = !DILocation(line: 118, column: 3, scope: !20)
!100 = !DILocation(line: 121, column: 1, scope: !20)
