; let false = False in
; let test = True in
; 
; let arg1 = Uint32 1844 in
; let arg2 = Uint32 1843 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Uint32 3398492 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg2 = Int32 1844 in
; let arg1 = Int32 -1843 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int32 -3398492 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int64 9223372036854775806 in
; let arg2 = Int64 -1 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int64 -9223372036854775806 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg2 = Uint64 2147483647 in
; let arg1 = Uint64 2147483647 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Uint64 4611686014132420609 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint128 9223372036854775806 in
; let arg2 = Uint128 9223372036854775806 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Uint128 85070591730234615828950163710522949636 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int128 9223372036854775806 in
; let arg2 = Int128 9223372036854775806 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int128 85070591730234615828950163710522949636 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int128 9223372036854775806 in
; let arg2 = Int128 0 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int128 0 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int128 9223372036854775806 in
; let arg2 = Int128 -1 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int128 -9223372036854775806 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 9223372036854775806 in
; let arg2 = Int256 -1 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int256 -9223372036854775806 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 9223372036854775806 in
; let arg2 = Int256 0 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int256 0 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 170141183460469231731687303715884105727 in
; let arg2 = Int256 -170141183460469231731687303715884105728 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int256 -28948022309329048855892746252171976963147354982949671778132708698262398304256 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 170141183460469231731687303715884105727 in
; let arg2 = Int256 170141183460469231731687303715884105728 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int256 28948022309329048855892746252171976963147354982949671778132708698262398304256 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint256 170141183460469231731687303715884105727 in
; let arg2 = Uint256 170141183460469231731687303715884105728 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Uint256 28948022309329048855892746252171976963147354982949671778132708698262398304256 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint256 1 in
; let arg2 = Uint256 115792089237316195423570985008687907853269984665640564039457584007913129639935 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Uint256 115792089237316195423570985008687907853269984665640564039457584007913129639935 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Uint256 2 in
; let arg2 = Uint256 57896044618658097711785492504343953926634992332820282019728792003956564819967 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Uint256 115792089237316195423570985008687907853269984665640564039457584007913129639934 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 2 in
; let arg2 = Int256 28948022309329048855892746252171976963317496166410141009864396001978282409983 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int256 57896044618658097711785492504343953926634992332820282019728792003956564819966 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 -2 in
; let arg2 = Int256 28948022309329048855892746252171976963317496166410141009864396001978282409983 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 2 in
; let arg2 = Int256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 -2 in
; let arg2 = Int256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int256 57896044618658097711785492504343953926634992332820282019728792003956564819966 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 in
; let arg2 = Int256 1 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; let arg1 = Int256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 in
; let arg2 = Int256 0 in
; let test =
; let res = builtin mul arg1 arg2 in
; let res_ = Int256 0 in
; let test_ = builtin eq res res_ in
; andb test test_
; in
; 
; test
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_168" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_198" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_197"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_197" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_199"**, %"$TyDescrTy_ADTTyp_198"* }
%"$TyDescrTy_ADTTyp_Constr_199" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1835" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1836" = type { %ParamDescrString, i32, %"$ParamDescr_1835"* }
%"$$fundef_165_env_216" = type { %TName_Bool* }
%"$$fundef_163_env_217" = type {}
%Uint32 = type { i32 }
%Int32 = type { i32 }
%Int64 = type { i64 }
%Uint64 = type { i64 }
%Uint128 = type { i128 }
%Int128 = type { i128 }
%Int256 = type { i256 }
%Uint256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_169" = global %"$TyDescrTy_PrimTyp_168" zeroinitializer
@"$TyDescr_Int32_170" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Int32_Prim_169" to i8*) }
@"$TyDescr_Uint32_Prim_171" = global %"$TyDescrTy_PrimTyp_168" { i32 1, i32 0 }
@"$TyDescr_Uint32_172" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Uint32_Prim_171" to i8*) }
@"$TyDescr_Int64_Prim_173" = global %"$TyDescrTy_PrimTyp_168" { i32 0, i32 1 }
@"$TyDescr_Int64_174" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Int64_Prim_173" to i8*) }
@"$TyDescr_Uint64_Prim_175" = global %"$TyDescrTy_PrimTyp_168" { i32 1, i32 1 }
@"$TyDescr_Uint64_176" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Uint64_Prim_175" to i8*) }
@"$TyDescr_Int128_Prim_177" = global %"$TyDescrTy_PrimTyp_168" { i32 0, i32 2 }
@"$TyDescr_Int128_178" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Int128_Prim_177" to i8*) }
@"$TyDescr_Uint128_Prim_179" = global %"$TyDescrTy_PrimTyp_168" { i32 1, i32 2 }
@"$TyDescr_Uint128_180" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Uint128_Prim_179" to i8*) }
@"$TyDescr_Int256_Prim_181" = global %"$TyDescrTy_PrimTyp_168" { i32 0, i32 3 }
@"$TyDescr_Int256_182" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Int256_Prim_181" to i8*) }
@"$TyDescr_Uint256_Prim_183" = global %"$TyDescrTy_PrimTyp_168" { i32 1, i32 3 }
@"$TyDescr_Uint256_184" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Uint256_Prim_183" to i8*) }
@"$TyDescr_String_Prim_185" = global %"$TyDescrTy_PrimTyp_168" { i32 2, i32 0 }
@"$TyDescr_String_186" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_String_Prim_185" to i8*) }
@"$TyDescr_Bnum_Prim_187" = global %"$TyDescrTy_PrimTyp_168" { i32 3, i32 0 }
@"$TyDescr_Bnum_188" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Bnum_Prim_187" to i8*) }
@"$TyDescr_Message_Prim_189" = global %"$TyDescrTy_PrimTyp_168" { i32 4, i32 0 }
@"$TyDescr_Message_190" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Message_Prim_189" to i8*) }
@"$TyDescr_Event_Prim_191" = global %"$TyDescrTy_PrimTyp_168" { i32 5, i32 0 }
@"$TyDescr_Event_192" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Event_Prim_191" to i8*) }
@"$TyDescr_Exception_Prim_193" = global %"$TyDescrTy_PrimTyp_168" { i32 6, i32 0 }
@"$TyDescr_Exception_194" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Exception_Prim_193" to i8*) }
@"$TyDescr_Bystr_Prim_195" = global %"$TyDescrTy_PrimTyp_168" { i32 7, i32 0 }
@"$TyDescr_Bystr_196" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_168"* @"$TyDescr_Bystr_Prim_195" to i8*) }
@"$TyDescr_ADT_Bool_200" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_197"* @"$TyDescr_Bool_ADTTyp_Specl_213" to i8*) }
@"$TyDescr_Bool_ADTTyp_204" = unnamed_addr constant %"$TyDescrTy_ADTTyp_198" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_215", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_197"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_197"*], [1 x %"$TyDescrTy_ADTTyp_Specl_197"*]* @"$TyDescr_Bool_ADTTyp_m_specls_214", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_205" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_206" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_207" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_199" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_206", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_205", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_208" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_209" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_210" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_199" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_209", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_208", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_211" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_199"*] [%"$TyDescrTy_ADTTyp_Constr_199"* @"$TyDescr_Bool_True_ADTTyp_Constr_207", %"$TyDescrTy_ADTTyp_Constr_199"* @"$TyDescr_Bool_False_ADTTyp_Constr_210"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_212" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_213" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_197" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_212", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_199"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_199"*], [2 x %"$TyDescrTy_ADTTyp_Constr_199"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_211", i32 0, i32 0), %"$TyDescrTy_ADTTyp_198"* @"$TyDescr_Bool_ADTTyp_204" }
@"$TyDescr_Bool_ADTTyp_m_specls_214" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_197"*] [%"$TyDescrTy_ADTTyp_Specl_197"* @"$TyDescr_Bool_ADTTyp_Specl_213"]
@"$TyDescr_ADT_Bool_215" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_192", %_TyDescrTy_Typ* @"$TyDescr_Int64_174", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_200", %_TyDescrTy_Typ* @"$TyDescr_Uint256_184", %_TyDescrTy_Typ* @"$TyDescr_Uint32_172", %_TyDescrTy_Typ* @"$TyDescr_Uint64_176", %_TyDescrTy_Typ* @"$TyDescr_Bnum_188", %_TyDescrTy_Typ* @"$TyDescr_Uint128_180", %_TyDescrTy_Typ* @"$TyDescr_Exception_194", %_TyDescrTy_Typ* @"$TyDescr_String_186", %_TyDescrTy_Typ* @"$TyDescr_Int256_182", %_TyDescrTy_Typ* @"$TyDescr_Int128_178", %_TyDescrTy_Typ* @"$TyDescr_Bystr_196", %_TyDescrTy_Typ* @"$TyDescr_Message_190", %_TyDescrTy_Typ* @"$TyDescr_Int32_170"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_1835"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1836"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_165"(%"$$fundef_165_env_216"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_165_env_b_229" = getelementptr inbounds %"$$fundef_165_env_216", %"$$fundef_165_env_216"* %0, i32 0, i32 0
  %"$b_envload_230" = load %TName_Bool*, %TName_Bool** %"$$fundef_165_env_b_229", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_230", %TName_Bool** %b, align 8
  %"$retval_166" = alloca %TName_Bool*, align 8
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 2, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %entry
  %"$consume_235" = sub i64 %"$gasrem_231", 2
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %"$b_237" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_238" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_237", i32 0, i32 0
  %"$b_tag_239" = load i8, i8* %"$b_tag_238", align 1
  switch i8 %"$b_tag_239", label %"$empty_default_240" [
    i8 1, label %"$False_241"
    i8 0, label %"$True_251"
  ]

"$False_241":                                     ; preds = %"$have_gas_234"
  %"$b_242" = bitcast %TName_Bool* %"$b_237" to %CName_False*
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$False_241"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$False_241"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$adtval_248_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_248_salloc" = call i8* @_salloc(i8* %"$adtval_248_load", i64 1)
  %"$adtval_248" = bitcast i8* %"$adtval_248_salloc" to %CName_False*
  %"$adtgep_249" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_248", i32 0, i32 0
  store i8 1, i8* %"$adtgep_249", align 1
  %"$adtptr_250" = bitcast %CName_False* %"$adtval_248" to %TName_Bool*
  store %TName_Bool* %"$adtptr_250", %TName_Bool** %"$retval_166", align 8
  br label %"$matchsucc_236"

"$True_251":                                      ; preds = %"$have_gas_234"
  %"$b_252" = bitcast %TName_Bool* %"$b_237" to %CName_True*
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$True_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$True_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_166", align 8
  br label %"$matchsucc_236"

"$empty_default_240":                             ; preds = %"$have_gas_234"
  br label %"$matchsucc_236"

"$matchsucc_236":                                 ; preds = %"$have_gas_256", %"$have_gas_246", %"$empty_default_240"
  %"$$retval_166_258" = load %TName_Bool*, %TName_Bool** %"$retval_166", align 8
  ret %TName_Bool* %"$$retval_166_258"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_163"(%"$$fundef_163_env_217"* %0, %TName_Bool* %1) {
entry:
  %"$retval_164" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %entry
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$$fundef_165_envp_223_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_165_envp_223_salloc" = call i8* @_salloc(i8* %"$$fundef_165_envp_223_load", i64 8)
  %"$$fundef_165_envp_223" = bitcast i8* %"$$fundef_165_envp_223_salloc" to %"$$fundef_165_env_216"*
  %"$$fundef_165_env_voidp_225" = bitcast %"$$fundef_165_env_216"* %"$$fundef_165_envp_223" to i8*
  %"$$fundef_165_cloval_226" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_165_env_216"*, %TName_Bool*)* @"$fundef_165" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_165_env_voidp_225", 1
  %"$$fundef_165_env_b_227" = getelementptr inbounds %"$$fundef_165_env_216", %"$$fundef_165_env_216"* %"$$fundef_165_envp_223", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_165_env_b_227", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_165_cloval_226", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_164", align 8
  %"$$retval_164_228" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_164", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_164_228"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %entry
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_163_env_217"*, %TName_Bool*)* @"$fundef_163" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$expr_167" = alloca %TName_Bool*, align 8
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_262"
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
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$adtval_282_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_282_salloc" = call i8* @_salloc(i8* %"$adtval_282_load", i64 1)
  %"$adtval_282" = bitcast i8* %"$adtval_282_salloc" to %CName_True*
  %"$adtgep_283" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_282", i32 0, i32 0
  store i8 0, i8* %"$adtgep_283", align 1
  %"$adtptr_284" = bitcast %CName_True* %"$adtval_282" to %TName_Bool*
  store %TName_Bool* %"$adtptr_284", %TName_Bool** %test, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_280"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_293"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$test_0" = alloca %TName_Bool*, align 8
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 1, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_308"
  %"$consume_314" = sub i64 %"$gasrem_310", 1
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$arg1_315" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_316" = load %Uint32, %Uint32* %arg2, align 4
  %"$mul_call_317" = call %Uint32 @_mul_Uint32(%Uint32 %"$arg1_315", %Uint32 %"$arg2_316")
  store %Uint32 %"$mul_call_317", %Uint32* %res, align 4
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_313"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_321"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  store %Uint32 { i32 3398492 }, %Uint32* %res_, align 4
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_326"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$execptr_load_333" = load i8*, i8** @_execptr, align 8
  %"$res_334" = load %Uint32, %Uint32* %res, align 4
  %"$res__335" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_336" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_333", %Uint32 %"$res_334", %Uint32 %"$res__335")
  store %TName_Bool* %"$eq_call_336", %TName_Bool** %test_, align 8
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_331"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$BoolUtils.andb_121" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_343" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_344" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_343", 0
  %"$BoolUtils.andb_envptr_345" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_343", 1
  %"$test_346" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_347" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_344"(i8* %"$BoolUtils.andb_envptr_345", %TName_Bool* %"$test_346")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_347", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_121", align 8
  %"$BoolUtils.andb_122" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_121_348" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_121", align 8
  %"$$BoolUtils.andb_121_fptr_349" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_121_348", 0
  %"$$BoolUtils.andb_121_envptr_350" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_121_348", 1
  %"$test__351" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_121_call_352" = call %TName_Bool* %"$$BoolUtils.andb_121_fptr_349"(i8* %"$$BoolUtils.andb_121_envptr_350", %TName_Bool* %"$test__351")
  store %TName_Bool* %"$$BoolUtils.andb_121_call_352", %TName_Bool** %"$BoolUtils.andb_122", align 8
  %"$$BoolUtils.andb_122_353" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_122", align 8
  store %TName_Bool* %"$$BoolUtils.andb_122_353", %TName_Bool** %"$test_0", align 8
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_341"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %"$arg2_1" = alloca %Int32, align 8
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 1, %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_357"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_357"
  %"$consume_363" = sub i64 %"$gasrem_359", 1
  store i64 %"$consume_363", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg2_1", align 4
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_362"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_362"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  %"$arg1_2" = alloca %Int32, align 8
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_367"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg1_2", align 4
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$res_3" = alloca %Int32, align 8
  %"$$arg1_2_384" = load %Int32, %Int32* %"$arg1_2", align 4
  %"$$arg2_1_385" = load %Int32, %Int32* %"$arg2_1", align 4
  %"$mul_call_386" = call %Int32 @_mul_Int32(%Int32 %"$$arg1_2_384", %Int32 %"$$arg2_1_385")
  store %Int32 %"$mul_call_386", %Int32* %"$res_3", align 4
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_382"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$res__4" = alloca %Int32, align 8
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_390"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  store %Int32 { i32 -3398492 }, %Int32* %"$res__4", align 4
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$test__5" = alloca %TName_Bool*, align 8
  %"$execptr_load_402" = load i8*, i8** @_execptr, align 8
  %"$$res_3_403" = load %Int32, %Int32* %"$res_3", align 4
  %"$$res__4_404" = load %Int32, %Int32* %"$res__4", align 4
  %"$eq_call_405" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_402", %Int32 %"$$res_3_403", %Int32 %"$$res__4_404")
  store %TName_Bool* %"$eq_call_405", %TName_Bool** %"$test__5", align 8
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$have_gas_400"
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %"$BoolUtils.andb_123" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_412" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_413" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_412", 0
  %"$BoolUtils.andb_envptr_414" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_412", 1
  %"$$test_0_415" = load %TName_Bool*, %TName_Bool** %"$test_0", align 8
  %"$BoolUtils.andb_call_416" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_413"(i8* %"$BoolUtils.andb_envptr_414", %TName_Bool* %"$$test_0_415")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_416", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123", align 8
  %"$BoolUtils.andb_124" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_123_417" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123", align 8
  %"$$BoolUtils.andb_123_fptr_418" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_417", 0
  %"$$BoolUtils.andb_123_envptr_419" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_417", 1
  %"$$test__5_420" = load %TName_Bool*, %TName_Bool** %"$test__5", align 8
  %"$$BoolUtils.andb_123_call_421" = call %TName_Bool* %"$$BoolUtils.andb_123_fptr_418"(i8* %"$$BoolUtils.andb_123_envptr_419", %TName_Bool* %"$$test__5_420")
  store %TName_Bool* %"$$BoolUtils.andb_123_call_421", %TName_Bool** %"$BoolUtils.andb_124", align 8
  %"$$BoolUtils.andb_124_422" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_124", align 8
  store %TName_Bool* %"$$BoolUtils.andb_124_422", %TName_Bool** %"$test_6", align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_410"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_410"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$arg1_7" = alloca %Int64, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_426"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775806 }, %Int64* %"$arg1_7", align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_431"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$arg2_8" = alloca %Int64, align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  store %Int64 { i64 -1 }, %Int64* %"$arg2_8", align 8
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_441"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %"$res_9" = alloca %Int64, align 8
  %"$$arg1_7_453" = load %Int64, %Int64* %"$arg1_7", align 8
  %"$$arg2_8_454" = load %Int64, %Int64* %"$arg2_8", align 8
  %"$mul_call_455" = call %Int64 @_mul_Int64(%Int64 %"$$arg1_7_453", %Int64 %"$$arg2_8_454")
  store %Int64 %"$mul_call_455", %Int64* %"$res_9", align 8
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_451"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$res__10" = alloca %Int64, align 8
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_459"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775806 }, %Int64* %"$res__10", align 8
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_464"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  %"$execptr_load_471" = load i8*, i8** @_execptr, align 8
  %"$$res_9_472" = load %Int64, %Int64* %"$res_9", align 8
  %"$$res__10_473" = load %Int64, %Int64* %"$res__10", align 8
  %"$eq_call_474" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_471", %Int64 %"$$res_9_472", %Int64 %"$$res__10_473")
  store %TName_Bool* %"$eq_call_474", %TName_Bool** %"$test__11", align 8
  %"$gasrem_476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_469"
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem, align 8
  %"$BoolUtils.andb_125" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_481" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_482" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_481", 0
  %"$BoolUtils.andb_envptr_483" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_481", 1
  %"$$test_6_484" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_485" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_482"(i8* %"$BoolUtils.andb_envptr_483", %TName_Bool* %"$$test_6_484")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_485", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_125", align 8
  %"$BoolUtils.andb_126" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_125_486" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_125", align 8
  %"$$BoolUtils.andb_125_fptr_487" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_125_486", 0
  %"$$BoolUtils.andb_125_envptr_488" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_125_486", 1
  %"$$test__11_489" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_125_call_490" = call %TName_Bool* %"$$BoolUtils.andb_125_fptr_487"(i8* %"$$BoolUtils.andb_125_envptr_488", %TName_Bool* %"$$test__11_489")
  store %TName_Bool* %"$$BoolUtils.andb_125_call_490", %TName_Bool** %"$BoolUtils.andb_126", align 8
  %"$$BoolUtils.andb_126_491" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_126", align 8
  store %TName_Bool* %"$$BoolUtils.andb_126_491", %TName_Bool** %"$test_12", align 8
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 1, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$have_gas_479"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$have_gas_479"
  %"$consume_496" = sub i64 %"$gasrem_492", 1
  store i64 %"$consume_496", i64* @_gasrem, align 8
  %"$arg2_13" = alloca %Uint64, align 8
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_495"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_495"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  store %Uint64 { i64 2147483647 }, %Uint64* %"$arg2_13", align 8
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_500"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_500"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %"$arg1_14" = alloca %Uint64, align 8
  %"$gasrem_507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_508" = icmp ugt i64 1, %"$gasrem_507"
  br i1 %"$gascmp_508", label %"$out_of_gas_509", label %"$have_gas_510"

"$out_of_gas_509":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_510"

"$have_gas_510":                                  ; preds = %"$out_of_gas_509", %"$have_gas_505"
  %"$consume_511" = sub i64 %"$gasrem_507", 1
  store i64 %"$consume_511", i64* @_gasrem, align 8
  store %Uint64 { i64 2147483647 }, %Uint64* %"$arg1_14", align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_510"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_510"
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 1, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_515"
  %"$consume_521" = sub i64 %"$gasrem_517", 1
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %"$res_15" = alloca %Uint64, align 8
  %"$$arg1_14_522" = load %Uint64, %Uint64* %"$arg1_14", align 8
  %"$$arg2_13_523" = load %Uint64, %Uint64* %"$arg2_13", align 8
  %"$mul_call_524" = call %Uint64 @_mul_Uint64(%Uint64 %"$$arg1_14_522", %Uint64 %"$$arg2_13_523")
  store %Uint64 %"$mul_call_524", %Uint64* %"$res_15", align 8
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_520"
  %"$consume_529" = sub i64 %"$gasrem_525", 1
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$res__16" = alloca %Uint64, align 8
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 1, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %"$have_gas_528"
  %"$consume_534" = sub i64 %"$gasrem_530", 1
  store i64 %"$consume_534", i64* @_gasrem, align 8
  store %Uint64 { i64 4611686014132420609 }, %Uint64* %"$res__16", align 8
  %"$gasrem_535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_536" = icmp ugt i64 1, %"$gasrem_535"
  br i1 %"$gascmp_536", label %"$out_of_gas_537", label %"$have_gas_538"

"$out_of_gas_537":                                ; preds = %"$have_gas_533"
  call void @_out_of_gas()
  br label %"$have_gas_538"

"$have_gas_538":                                  ; preds = %"$out_of_gas_537", %"$have_gas_533"
  %"$consume_539" = sub i64 %"$gasrem_535", 1
  store i64 %"$consume_539", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  %"$execptr_load_540" = load i8*, i8** @_execptr, align 8
  %"$$res_15_541" = load %Uint64, %Uint64* %"$res_15", align 8
  %"$$res__16_542" = load %Uint64, %Uint64* %"$res__16", align 8
  %"$eq_call_543" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_540", %Uint64 %"$$res_15_541", %Uint64 %"$$res__16_542")
  store %TName_Bool* %"$eq_call_543", %TName_Bool** %"$test__17", align 8
  %"$gasrem_545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_546" = icmp ugt i64 1, %"$gasrem_545"
  br i1 %"$gascmp_546", label %"$out_of_gas_547", label %"$have_gas_548"

"$out_of_gas_547":                                ; preds = %"$have_gas_538"
  call void @_out_of_gas()
  br label %"$have_gas_548"

"$have_gas_548":                                  ; preds = %"$out_of_gas_547", %"$have_gas_538"
  %"$consume_549" = sub i64 %"$gasrem_545", 1
  store i64 %"$consume_549", i64* @_gasrem, align 8
  %"$BoolUtils.andb_127" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_550" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_551" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_550", 0
  %"$BoolUtils.andb_envptr_552" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_550", 1
  %"$$test_12_553" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_554" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_551"(i8* %"$BoolUtils.andb_envptr_552", %TName_Bool* %"$$test_12_553")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_554", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8
  %"$BoolUtils.andb_128" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_127_555" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8
  %"$$BoolUtils.andb_127_fptr_556" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_555", 0
  %"$$BoolUtils.andb_127_envptr_557" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_555", 1
  %"$$test__17_558" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_127_call_559" = call %TName_Bool* %"$$BoolUtils.andb_127_fptr_556"(i8* %"$$BoolUtils.andb_127_envptr_557", %TName_Bool* %"$$test__17_558")
  store %TName_Bool* %"$$BoolUtils.andb_127_call_559", %TName_Bool** %"$BoolUtils.andb_128", align 8
  %"$$BoolUtils.andb_128_560" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_128", align 8
  store %TName_Bool* %"$$BoolUtils.andb_128_560", %TName_Bool** %"$test_18", align 8
  %"$gasrem_561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_562" = icmp ugt i64 1, %"$gasrem_561"
  br i1 %"$gascmp_562", label %"$out_of_gas_563", label %"$have_gas_564"

"$out_of_gas_563":                                ; preds = %"$have_gas_548"
  call void @_out_of_gas()
  br label %"$have_gas_564"

"$have_gas_564":                                  ; preds = %"$out_of_gas_563", %"$have_gas_548"
  %"$consume_565" = sub i64 %"$gasrem_561", 1
  store i64 %"$consume_565", i64* @_gasrem, align 8
  %"$arg1_19" = alloca %Uint128, align 8
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_564"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_564"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  store %Uint128 { i128 9223372036854775806 }, %Uint128* %"$arg1_19", align 8
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %"$have_gas_569"
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  %"$arg2_20" = alloca %Uint128, align 8
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_574"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  store %Uint128 { i128 9223372036854775806 }, %Uint128* %"$arg2_20", align 8
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_579"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_584"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  %"$res_21" = alloca %Uint128, align 8
  %"$$arg1_19_591" = load %Uint128, %Uint128* %"$arg1_19", align 8
  %"$$arg2_20_592" = load %Uint128, %Uint128* %"$arg2_20", align 8
  %"$mul_call_593" = call %Uint128 @_mul_Uint128(%Uint128 %"$$arg1_19_591", %Uint128 %"$$arg2_20_592")
  store %Uint128 %"$mul_call_593", %Uint128* %"$res_21", align 8
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 1, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %"$have_gas_589"
  %"$consume_598" = sub i64 %"$gasrem_594", 1
  store i64 %"$consume_598", i64* @_gasrem, align 8
  %"$res__22" = alloca %Uint128, align 8
  %"$gasrem_599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %"$have_gas_597"
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %"$have_gas_597"
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem, align 8
  store %Uint128 { i128 85070591730234615828950163710522949636 }, %Uint128* %"$res__22", align 8
  %"$gasrem_604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_605" = icmp ugt i64 1, %"$gasrem_604"
  br i1 %"$gascmp_605", label %"$out_of_gas_606", label %"$have_gas_607"

"$out_of_gas_606":                                ; preds = %"$have_gas_602"
  call void @_out_of_gas()
  br label %"$have_gas_607"

"$have_gas_607":                                  ; preds = %"$out_of_gas_606", %"$have_gas_602"
  %"$consume_608" = sub i64 %"$gasrem_604", 1
  store i64 %"$consume_608", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  %"$execptr_load_609" = load i8*, i8** @_execptr, align 8
  %"$$res_21_610" = load %Uint128, %Uint128* %"$res_21", align 8
  %"$$res__22_611" = load %Uint128, %Uint128* %"$res__22", align 8
  %"$eq_call_612" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_609", %Uint128 %"$$res_21_610", %Uint128 %"$$res__22_611")
  store %TName_Bool* %"$eq_call_612", %TName_Bool** %"$test__23", align 8
  %"$gasrem_614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_615" = icmp ugt i64 1, %"$gasrem_614"
  br i1 %"$gascmp_615", label %"$out_of_gas_616", label %"$have_gas_617"

"$out_of_gas_616":                                ; preds = %"$have_gas_607"
  call void @_out_of_gas()
  br label %"$have_gas_617"

"$have_gas_617":                                  ; preds = %"$out_of_gas_616", %"$have_gas_607"
  %"$consume_618" = sub i64 %"$gasrem_614", 1
  store i64 %"$consume_618", i64* @_gasrem, align 8
  %"$BoolUtils.andb_129" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_619" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_620" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_619", 0
  %"$BoolUtils.andb_envptr_621" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_619", 1
  %"$$test_18_622" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_623" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_620"(i8* %"$BoolUtils.andb_envptr_621", %TName_Bool* %"$$test_18_622")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_623", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_129", align 8
  %"$BoolUtils.andb_130" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_129_624" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_129", align 8
  %"$$BoolUtils.andb_129_fptr_625" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_129_624", 0
  %"$$BoolUtils.andb_129_envptr_626" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_129_624", 1
  %"$$test__23_627" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_129_call_628" = call %TName_Bool* %"$$BoolUtils.andb_129_fptr_625"(i8* %"$$BoolUtils.andb_129_envptr_626", %TName_Bool* %"$$test__23_627")
  store %TName_Bool* %"$$BoolUtils.andb_129_call_628", %TName_Bool** %"$BoolUtils.andb_130", align 8
  %"$$BoolUtils.andb_130_629" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_130", align 8
  store %TName_Bool* %"$$BoolUtils.andb_130_629", %TName_Bool** %"$test_24", align 8
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 1, %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %"$have_gas_617"
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %"$have_gas_617"
  %"$consume_634" = sub i64 %"$gasrem_630", 1
  store i64 %"$consume_634", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Int128, align 8
  %"$gasrem_635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_636" = icmp ugt i64 1, %"$gasrem_635"
  br i1 %"$gascmp_636", label %"$out_of_gas_637", label %"$have_gas_638"

"$out_of_gas_637":                                ; preds = %"$have_gas_633"
  call void @_out_of_gas()
  br label %"$have_gas_638"

"$have_gas_638":                                  ; preds = %"$out_of_gas_637", %"$have_gas_633"
  %"$consume_639" = sub i64 %"$gasrem_635", 1
  store i64 %"$consume_639", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_25", align 8
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$have_gas_638"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$have_gas_638"
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Int128, align 8
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_643"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_643"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg2_26", align 8
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 1, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$have_gas_648"
  %"$consume_654" = sub i64 %"$gasrem_650", 1
  store i64 %"$consume_654", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 1, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_653"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_653"
  %"$consume_659" = sub i64 %"$gasrem_655", 1
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %"$res_27" = alloca %Int128, align 8
  %"$$arg1_25_660" = load %Int128, %Int128* %"$arg1_25", align 8
  %"$$arg2_26_661" = load %Int128, %Int128* %"$arg2_26", align 8
  %"$mul_call_662" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_25_660", %Int128 %"$$arg2_26_661")
  store %Int128 %"$mul_call_662", %Int128* %"$res_27", align 8
  %"$gasrem_663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_664" = icmp ugt i64 1, %"$gasrem_663"
  br i1 %"$gascmp_664", label %"$out_of_gas_665", label %"$have_gas_666"

"$out_of_gas_665":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_666"

"$have_gas_666":                                  ; preds = %"$out_of_gas_665", %"$have_gas_658"
  %"$consume_667" = sub i64 %"$gasrem_663", 1
  store i64 %"$consume_667", i64* @_gasrem, align 8
  %"$res__28" = alloca %Int128, align 8
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 1, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$have_gas_666"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$have_gas_666"
  %"$consume_672" = sub i64 %"$gasrem_668", 1
  store i64 %"$consume_672", i64* @_gasrem, align 8
  store %Int128 { i128 85070591730234615828950163710522949636 }, %Int128* %"$res__28", align 8
  %"$gasrem_673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_674" = icmp ugt i64 1, %"$gasrem_673"
  br i1 %"$gascmp_674", label %"$out_of_gas_675", label %"$have_gas_676"

"$out_of_gas_675":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_676"

"$have_gas_676":                                  ; preds = %"$out_of_gas_675", %"$have_gas_671"
  %"$consume_677" = sub i64 %"$gasrem_673", 1
  store i64 %"$consume_677", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  %"$execptr_load_678" = load i8*, i8** @_execptr, align 8
  %"$$res_27_679" = load %Int128, %Int128* %"$res_27", align 8
  %"$$res__28_680" = load %Int128, %Int128* %"$res__28", align 8
  %"$eq_call_681" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_678", %Int128 %"$$res_27_679", %Int128 %"$$res__28_680")
  store %TName_Bool* %"$eq_call_681", %TName_Bool** %"$test__29", align 8
  %"$gasrem_683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_684" = icmp ugt i64 1, %"$gasrem_683"
  br i1 %"$gascmp_684", label %"$out_of_gas_685", label %"$have_gas_686"

"$out_of_gas_685":                                ; preds = %"$have_gas_676"
  call void @_out_of_gas()
  br label %"$have_gas_686"

"$have_gas_686":                                  ; preds = %"$out_of_gas_685", %"$have_gas_676"
  %"$consume_687" = sub i64 %"$gasrem_683", 1
  store i64 %"$consume_687", i64* @_gasrem, align 8
  %"$BoolUtils.andb_131" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_688" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_689" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_688", 0
  %"$BoolUtils.andb_envptr_690" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_688", 1
  %"$$test_24_691" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_692" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_689"(i8* %"$BoolUtils.andb_envptr_690", %TName_Bool* %"$$test_24_691")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_692", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_131", align 8
  %"$BoolUtils.andb_132" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_131_693" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_131", align 8
  %"$$BoolUtils.andb_131_fptr_694" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_131_693", 0
  %"$$BoolUtils.andb_131_envptr_695" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_131_693", 1
  %"$$test__29_696" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_131_call_697" = call %TName_Bool* %"$$BoolUtils.andb_131_fptr_694"(i8* %"$$BoolUtils.andb_131_envptr_695", %TName_Bool* %"$$test__29_696")
  store %TName_Bool* %"$$BoolUtils.andb_131_call_697", %TName_Bool** %"$BoolUtils.andb_132", align 8
  %"$$BoolUtils.andb_132_698" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_132", align 8
  store %TName_Bool* %"$$BoolUtils.andb_132_698", %TName_Bool** %"$test_30", align 8
  %"$gasrem_699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_700" = icmp ugt i64 1, %"$gasrem_699"
  br i1 %"$gascmp_700", label %"$out_of_gas_701", label %"$have_gas_702"

"$out_of_gas_701":                                ; preds = %"$have_gas_686"
  call void @_out_of_gas()
  br label %"$have_gas_702"

"$have_gas_702":                                  ; preds = %"$out_of_gas_701", %"$have_gas_686"
  %"$consume_703" = sub i64 %"$gasrem_699", 1
  store i64 %"$consume_703", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Int128, align 8
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 1, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_702"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_702"
  %"$consume_708" = sub i64 %"$gasrem_704", 1
  store i64 %"$consume_708", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_31", align 8
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 1, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_707"
  %"$consume_713" = sub i64 %"$gasrem_709", 1
  store i64 %"$consume_713", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Int128, align 8
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_712"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  store %Int128 zeroinitializer, %Int128* %"$arg2_32", align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_717"
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_725" = icmp ugt i64 1, %"$gasrem_724"
  br i1 %"$gascmp_725", label %"$out_of_gas_726", label %"$have_gas_727"

"$out_of_gas_726":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_727"

"$have_gas_727":                                  ; preds = %"$out_of_gas_726", %"$have_gas_722"
  %"$consume_728" = sub i64 %"$gasrem_724", 1
  store i64 %"$consume_728", i64* @_gasrem, align 8
  %"$res_33" = alloca %Int128, align 8
  %"$$arg1_31_729" = load %Int128, %Int128* %"$arg1_31", align 8
  %"$$arg2_32_730" = load %Int128, %Int128* %"$arg2_32", align 8
  %"$mul_call_731" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_31_729", %Int128 %"$$arg2_32_730")
  store %Int128 %"$mul_call_731", %Int128* %"$res_33", align 8
  %"$gasrem_732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_733" = icmp ugt i64 1, %"$gasrem_732"
  br i1 %"$gascmp_733", label %"$out_of_gas_734", label %"$have_gas_735"

"$out_of_gas_734":                                ; preds = %"$have_gas_727"
  call void @_out_of_gas()
  br label %"$have_gas_735"

"$have_gas_735":                                  ; preds = %"$out_of_gas_734", %"$have_gas_727"
  %"$consume_736" = sub i64 %"$gasrem_732", 1
  store i64 %"$consume_736", i64* @_gasrem, align 8
  %"$res__34" = alloca %Int128, align 8
  %"$gasrem_737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_738" = icmp ugt i64 1, %"$gasrem_737"
  br i1 %"$gascmp_738", label %"$out_of_gas_739", label %"$have_gas_740"

"$out_of_gas_739":                                ; preds = %"$have_gas_735"
  call void @_out_of_gas()
  br label %"$have_gas_740"

"$have_gas_740":                                  ; preds = %"$out_of_gas_739", %"$have_gas_735"
  %"$consume_741" = sub i64 %"$gasrem_737", 1
  store i64 %"$consume_741", i64* @_gasrem, align 8
  store %Int128 zeroinitializer, %Int128* %"$res__34", align 8
  %"$gasrem_742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_743" = icmp ugt i64 1, %"$gasrem_742"
  br i1 %"$gascmp_743", label %"$out_of_gas_744", label %"$have_gas_745"

"$out_of_gas_744":                                ; preds = %"$have_gas_740"
  call void @_out_of_gas()
  br label %"$have_gas_745"

"$have_gas_745":                                  ; preds = %"$out_of_gas_744", %"$have_gas_740"
  %"$consume_746" = sub i64 %"$gasrem_742", 1
  store i64 %"$consume_746", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  %"$execptr_load_747" = load i8*, i8** @_execptr, align 8
  %"$$res_33_748" = load %Int128, %Int128* %"$res_33", align 8
  %"$$res__34_749" = load %Int128, %Int128* %"$res__34", align 8
  %"$eq_call_750" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_747", %Int128 %"$$res_33_748", %Int128 %"$$res__34_749")
  store %TName_Bool* %"$eq_call_750", %TName_Bool** %"$test__35", align 8
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 1, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_745"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_745"
  %"$consume_756" = sub i64 %"$gasrem_752", 1
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %"$BoolUtils.andb_133" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_757" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_758" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_757", 0
  %"$BoolUtils.andb_envptr_759" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_757", 1
  %"$$test_30_760" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_761" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_758"(i8* %"$BoolUtils.andb_envptr_759", %TName_Bool* %"$$test_30_760")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_761", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8
  %"$BoolUtils.andb_134" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_133_762" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8
  %"$$BoolUtils.andb_133_fptr_763" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_762", 0
  %"$$BoolUtils.andb_133_envptr_764" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_762", 1
  %"$$test__35_765" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_133_call_766" = call %TName_Bool* %"$$BoolUtils.andb_133_fptr_763"(i8* %"$$BoolUtils.andb_133_envptr_764", %TName_Bool* %"$$test__35_765")
  store %TName_Bool* %"$$BoolUtils.andb_133_call_766", %TName_Bool** %"$BoolUtils.andb_134", align 8
  %"$$BoolUtils.andb_134_767" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_134", align 8
  store %TName_Bool* %"$$BoolUtils.andb_134_767", %TName_Bool** %"$test_36", align 8
  %"$gasrem_768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_769" = icmp ugt i64 1, %"$gasrem_768"
  br i1 %"$gascmp_769", label %"$out_of_gas_770", label %"$have_gas_771"

"$out_of_gas_770":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_771"

"$have_gas_771":                                  ; preds = %"$out_of_gas_770", %"$have_gas_755"
  %"$consume_772" = sub i64 %"$gasrem_768", 1
  store i64 %"$consume_772", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Int128, align 8
  %"$gasrem_773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_774" = icmp ugt i64 1, %"$gasrem_773"
  br i1 %"$gascmp_774", label %"$out_of_gas_775", label %"$have_gas_776"

"$out_of_gas_775":                                ; preds = %"$have_gas_771"
  call void @_out_of_gas()
  br label %"$have_gas_776"

"$have_gas_776":                                  ; preds = %"$out_of_gas_775", %"$have_gas_771"
  %"$consume_777" = sub i64 %"$gasrem_773", 1
  store i64 %"$consume_777", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_37", align 8
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_776"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_776"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Int128, align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_781"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  store %Int128 { i128 -1 }, %Int128* %"$arg2_38", align 8
  %"$gasrem_788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_789" = icmp ugt i64 1, %"$gasrem_788"
  br i1 %"$gascmp_789", label %"$out_of_gas_790", label %"$have_gas_791"

"$out_of_gas_790":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_791"

"$have_gas_791":                                  ; preds = %"$out_of_gas_790", %"$have_gas_786"
  %"$consume_792" = sub i64 %"$gasrem_788", 1
  store i64 %"$consume_792", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_794" = icmp ugt i64 1, %"$gasrem_793"
  br i1 %"$gascmp_794", label %"$out_of_gas_795", label %"$have_gas_796"

"$out_of_gas_795":                                ; preds = %"$have_gas_791"
  call void @_out_of_gas()
  br label %"$have_gas_796"

"$have_gas_796":                                  ; preds = %"$out_of_gas_795", %"$have_gas_791"
  %"$consume_797" = sub i64 %"$gasrem_793", 1
  store i64 %"$consume_797", i64* @_gasrem, align 8
  %"$res_39" = alloca %Int128, align 8
  %"$$arg1_37_798" = load %Int128, %Int128* %"$arg1_37", align 8
  %"$$arg2_38_799" = load %Int128, %Int128* %"$arg2_38", align 8
  %"$mul_call_800" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_37_798", %Int128 %"$$arg2_38_799")
  store %Int128 %"$mul_call_800", %Int128* %"$res_39", align 8
  %"$gasrem_801" = load i64, i64* @_gasrem, align 8
  %"$gascmp_802" = icmp ugt i64 1, %"$gasrem_801"
  br i1 %"$gascmp_802", label %"$out_of_gas_803", label %"$have_gas_804"

"$out_of_gas_803":                                ; preds = %"$have_gas_796"
  call void @_out_of_gas()
  br label %"$have_gas_804"

"$have_gas_804":                                  ; preds = %"$out_of_gas_803", %"$have_gas_796"
  %"$consume_805" = sub i64 %"$gasrem_801", 1
  store i64 %"$consume_805", i64* @_gasrem, align 8
  %"$res__40" = alloca %Int128, align 8
  %"$gasrem_806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_807" = icmp ugt i64 1, %"$gasrem_806"
  br i1 %"$gascmp_807", label %"$out_of_gas_808", label %"$have_gas_809"

"$out_of_gas_808":                                ; preds = %"$have_gas_804"
  call void @_out_of_gas()
  br label %"$have_gas_809"

"$have_gas_809":                                  ; preds = %"$out_of_gas_808", %"$have_gas_804"
  %"$consume_810" = sub i64 %"$gasrem_806", 1
  store i64 %"$consume_810", i64* @_gasrem, align 8
  store %Int128 { i128 -9223372036854775806 }, %Int128* %"$res__40", align 8
  %"$gasrem_811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_812" = icmp ugt i64 1, %"$gasrem_811"
  br i1 %"$gascmp_812", label %"$out_of_gas_813", label %"$have_gas_814"

"$out_of_gas_813":                                ; preds = %"$have_gas_809"
  call void @_out_of_gas()
  br label %"$have_gas_814"

"$have_gas_814":                                  ; preds = %"$out_of_gas_813", %"$have_gas_809"
  %"$consume_815" = sub i64 %"$gasrem_811", 1
  store i64 %"$consume_815", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  %"$execptr_load_816" = load i8*, i8** @_execptr, align 8
  %"$$res_39_817" = load %Int128, %Int128* %"$res_39", align 8
  %"$$res__40_818" = load %Int128, %Int128* %"$res__40", align 8
  %"$eq_call_819" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_816", %Int128 %"$$res_39_817", %Int128 %"$$res__40_818")
  store %TName_Bool* %"$eq_call_819", %TName_Bool** %"$test__41", align 8
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 1, %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %"$have_gas_814"
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %"$have_gas_814"
  %"$consume_825" = sub i64 %"$gasrem_821", 1
  store i64 %"$consume_825", i64* @_gasrem, align 8
  %"$BoolUtils.andb_135" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_826" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_827" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_826", 0
  %"$BoolUtils.andb_envptr_828" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_826", 1
  %"$$test_36_829" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_830" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_827"(i8* %"$BoolUtils.andb_envptr_828", %TName_Bool* %"$$test_36_829")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_830", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$BoolUtils.andb_136" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_135_831" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$$BoolUtils.andb_135_fptr_832" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_831", 0
  %"$$BoolUtils.andb_135_envptr_833" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_831", 1
  %"$$test__41_834" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_135_call_835" = call %TName_Bool* %"$$BoolUtils.andb_135_fptr_832"(i8* %"$$BoolUtils.andb_135_envptr_833", %TName_Bool* %"$$test__41_834")
  store %TName_Bool* %"$$BoolUtils.andb_135_call_835", %TName_Bool** %"$BoolUtils.andb_136", align 8
  %"$$BoolUtils.andb_136_836" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_136", align 8
  store %TName_Bool* %"$$BoolUtils.andb_136_836", %TName_Bool** %"$test_42", align 8
  %"$gasrem_837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_838" = icmp ugt i64 1, %"$gasrem_837"
  br i1 %"$gascmp_838", label %"$out_of_gas_839", label %"$have_gas_840"

"$out_of_gas_839":                                ; preds = %"$have_gas_824"
  call void @_out_of_gas()
  br label %"$have_gas_840"

"$have_gas_840":                                  ; preds = %"$out_of_gas_839", %"$have_gas_824"
  %"$consume_841" = sub i64 %"$gasrem_837", 1
  store i64 %"$consume_841", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Int256, align 8
  %"$gasrem_842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_843" = icmp ugt i64 1, %"$gasrem_842"
  br i1 %"$gascmp_843", label %"$out_of_gas_844", label %"$have_gas_845"

"$out_of_gas_844":                                ; preds = %"$have_gas_840"
  call void @_out_of_gas()
  br label %"$have_gas_845"

"$have_gas_845":                                  ; preds = %"$out_of_gas_844", %"$have_gas_840"
  %"$consume_846" = sub i64 %"$gasrem_842", 1
  store i64 %"$consume_846", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775806 }, %Int256* %"$arg1_43", align 8
  %"$gasrem_847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_848" = icmp ugt i64 1, %"$gasrem_847"
  br i1 %"$gascmp_848", label %"$out_of_gas_849", label %"$have_gas_850"

"$out_of_gas_849":                                ; preds = %"$have_gas_845"
  call void @_out_of_gas()
  br label %"$have_gas_850"

"$have_gas_850":                                  ; preds = %"$out_of_gas_849", %"$have_gas_845"
  %"$consume_851" = sub i64 %"$gasrem_847", 1
  store i64 %"$consume_851", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Int256, align 8
  %"$gasrem_852" = load i64, i64* @_gasrem, align 8
  %"$gascmp_853" = icmp ugt i64 1, %"$gasrem_852"
  br i1 %"$gascmp_853", label %"$out_of_gas_854", label %"$have_gas_855"

"$out_of_gas_854":                                ; preds = %"$have_gas_850"
  call void @_out_of_gas()
  br label %"$have_gas_855"

"$have_gas_855":                                  ; preds = %"$out_of_gas_854", %"$have_gas_850"
  %"$consume_856" = sub i64 %"$gasrem_852", 1
  store i64 %"$consume_856", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$arg2_44", align 8
  %"$gasrem_857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_858" = icmp ugt i64 1, %"$gasrem_857"
  br i1 %"$gascmp_858", label %"$out_of_gas_859", label %"$have_gas_860"

"$out_of_gas_859":                                ; preds = %"$have_gas_855"
  call void @_out_of_gas()
  br label %"$have_gas_860"

"$have_gas_860":                                  ; preds = %"$out_of_gas_859", %"$have_gas_855"
  %"$consume_861" = sub i64 %"$gasrem_857", 1
  store i64 %"$consume_861", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_863" = icmp ugt i64 1, %"$gasrem_862"
  br i1 %"$gascmp_863", label %"$out_of_gas_864", label %"$have_gas_865"

"$out_of_gas_864":                                ; preds = %"$have_gas_860"
  call void @_out_of_gas()
  br label %"$have_gas_865"

"$have_gas_865":                                  ; preds = %"$out_of_gas_864", %"$have_gas_860"
  %"$consume_866" = sub i64 %"$gasrem_862", 1
  store i64 %"$consume_866", i64* @_gasrem, align 8
  %"$res_45" = alloca %Int256, align 8
  %"$execptr_load_867" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_43_868" = alloca %Int256, align 8
  %"$$arg1_43_869" = load %Int256, %Int256* %"$arg1_43", align 8
  store %Int256 %"$$arg1_43_869", %Int256* %"$mul_$arg1_43_868", align 8
  %"$mul_$arg2_44_870" = alloca %Int256, align 8
  %"$$arg2_44_871" = load %Int256, %Int256* %"$arg2_44", align 8
  store %Int256 %"$$arg2_44_871", %Int256* %"$mul_$arg2_44_870", align 8
  %"$mul_call_872" = call %Int256* @_mul_Int256(i8* %"$execptr_load_867", %Int256* %"$mul_$arg1_43_868", %Int256* %"$mul_$arg2_44_870")
  %"$mul_874" = load %Int256, %Int256* %"$mul_call_872", align 8
  store %Int256 %"$mul_874", %Int256* %"$res_45", align 8
  %"$gasrem_875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_876" = icmp ugt i64 1, %"$gasrem_875"
  br i1 %"$gascmp_876", label %"$out_of_gas_877", label %"$have_gas_878"

"$out_of_gas_877":                                ; preds = %"$have_gas_865"
  call void @_out_of_gas()
  br label %"$have_gas_878"

"$have_gas_878":                                  ; preds = %"$out_of_gas_877", %"$have_gas_865"
  %"$consume_879" = sub i64 %"$gasrem_875", 1
  store i64 %"$consume_879", i64* @_gasrem, align 8
  %"$res__46" = alloca %Int256, align 8
  %"$gasrem_880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_881" = icmp ugt i64 1, %"$gasrem_880"
  br i1 %"$gascmp_881", label %"$out_of_gas_882", label %"$have_gas_883"

"$out_of_gas_882":                                ; preds = %"$have_gas_878"
  call void @_out_of_gas()
  br label %"$have_gas_883"

"$have_gas_883":                                  ; preds = %"$out_of_gas_882", %"$have_gas_878"
  %"$consume_884" = sub i64 %"$gasrem_880", 1
  store i64 %"$consume_884", i64* @_gasrem, align 8
  store %Int256 { i256 -9223372036854775806 }, %Int256* %"$res__46", align 8
  %"$gasrem_885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_886" = icmp ugt i64 1, %"$gasrem_885"
  br i1 %"$gascmp_886", label %"$out_of_gas_887", label %"$have_gas_888"

"$out_of_gas_887":                                ; preds = %"$have_gas_883"
  call void @_out_of_gas()
  br label %"$have_gas_888"

"$have_gas_888":                                  ; preds = %"$out_of_gas_887", %"$have_gas_883"
  %"$consume_889" = sub i64 %"$gasrem_885", 1
  store i64 %"$consume_889", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  %"$execptr_load_890" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_45_891" = alloca %Int256, align 8
  %"$$res_45_892" = load %Int256, %Int256* %"$res_45", align 8
  store %Int256 %"$$res_45_892", %Int256* %"$eq_$res_45_891", align 8
  %"$eq_$res__46_893" = alloca %Int256, align 8
  %"$$res__46_894" = load %Int256, %Int256* %"$res__46", align 8
  store %Int256 %"$$res__46_894", %Int256* %"$eq_$res__46_893", align 8
  %"$eq_call_895" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_890", %Int256* %"$eq_$res_45_891", %Int256* %"$eq_$res__46_893")
  store %TName_Bool* %"$eq_call_895", %TName_Bool** %"$test__47", align 8
  %"$gasrem_897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_898" = icmp ugt i64 1, %"$gasrem_897"
  br i1 %"$gascmp_898", label %"$out_of_gas_899", label %"$have_gas_900"

"$out_of_gas_899":                                ; preds = %"$have_gas_888"
  call void @_out_of_gas()
  br label %"$have_gas_900"

"$have_gas_900":                                  ; preds = %"$out_of_gas_899", %"$have_gas_888"
  %"$consume_901" = sub i64 %"$gasrem_897", 1
  store i64 %"$consume_901", i64* @_gasrem, align 8
  %"$BoolUtils.andb_137" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_902" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_903" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_902", 0
  %"$BoolUtils.andb_envptr_904" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_902", 1
  %"$$test_42_905" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_906" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_903"(i8* %"$BoolUtils.andb_envptr_904", %TName_Bool* %"$$test_42_905")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_906", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8
  %"$BoolUtils.andb_138" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_137_907" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8
  %"$$BoolUtils.andb_137_fptr_908" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_907", 0
  %"$$BoolUtils.andb_137_envptr_909" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_907", 1
  %"$$test__47_910" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_137_call_911" = call %TName_Bool* %"$$BoolUtils.andb_137_fptr_908"(i8* %"$$BoolUtils.andb_137_envptr_909", %TName_Bool* %"$$test__47_910")
  store %TName_Bool* %"$$BoolUtils.andb_137_call_911", %TName_Bool** %"$BoolUtils.andb_138", align 8
  %"$$BoolUtils.andb_138_912" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_138", align 8
  store %TName_Bool* %"$$BoolUtils.andb_138_912", %TName_Bool** %"$test_48", align 8
  %"$gasrem_913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_914" = icmp ugt i64 1, %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$have_gas_900"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$have_gas_900"
  %"$consume_917" = sub i64 %"$gasrem_913", 1
  store i64 %"$consume_917", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Int256, align 8
  %"$gasrem_918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_919" = icmp ugt i64 1, %"$gasrem_918"
  br i1 %"$gascmp_919", label %"$out_of_gas_920", label %"$have_gas_921"

"$out_of_gas_920":                                ; preds = %"$have_gas_916"
  call void @_out_of_gas()
  br label %"$have_gas_921"

"$have_gas_921":                                  ; preds = %"$out_of_gas_920", %"$have_gas_916"
  %"$consume_922" = sub i64 %"$gasrem_918", 1
  store i64 %"$consume_922", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775806 }, %Int256* %"$arg1_49", align 8
  %"$gasrem_923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_924" = icmp ugt i64 1, %"$gasrem_923"
  br i1 %"$gascmp_924", label %"$out_of_gas_925", label %"$have_gas_926"

"$out_of_gas_925":                                ; preds = %"$have_gas_921"
  call void @_out_of_gas()
  br label %"$have_gas_926"

"$have_gas_926":                                  ; preds = %"$out_of_gas_925", %"$have_gas_921"
  %"$consume_927" = sub i64 %"$gasrem_923", 1
  store i64 %"$consume_927", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Int256, align 8
  %"$gasrem_928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_929" = icmp ugt i64 1, %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %"$have_gas_926"
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %"$have_gas_926"
  %"$consume_932" = sub i64 %"$gasrem_928", 1
  store i64 %"$consume_932", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_50", align 8
  %"$gasrem_933" = load i64, i64* @_gasrem, align 8
  %"$gascmp_934" = icmp ugt i64 1, %"$gasrem_933"
  br i1 %"$gascmp_934", label %"$out_of_gas_935", label %"$have_gas_936"

"$out_of_gas_935":                                ; preds = %"$have_gas_931"
  call void @_out_of_gas()
  br label %"$have_gas_936"

"$have_gas_936":                                  ; preds = %"$out_of_gas_935", %"$have_gas_931"
  %"$consume_937" = sub i64 %"$gasrem_933", 1
  store i64 %"$consume_937", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_936"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_936"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %"$res_51" = alloca %Int256, align 8
  %"$execptr_load_943" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_49_944" = alloca %Int256, align 8
  %"$$arg1_49_945" = load %Int256, %Int256* %"$arg1_49", align 8
  store %Int256 %"$$arg1_49_945", %Int256* %"$mul_$arg1_49_944", align 8
  %"$mul_$arg2_50_946" = alloca %Int256, align 8
  %"$$arg2_50_947" = load %Int256, %Int256* %"$arg2_50", align 8
  store %Int256 %"$$arg2_50_947", %Int256* %"$mul_$arg2_50_946", align 8
  %"$mul_call_948" = call %Int256* @_mul_Int256(i8* %"$execptr_load_943", %Int256* %"$mul_$arg1_49_944", %Int256* %"$mul_$arg2_50_946")
  %"$mul_950" = load %Int256, %Int256* %"$mul_call_948", align 8
  store %Int256 %"$mul_950", %Int256* %"$res_51", align 8
  %"$gasrem_951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_952" = icmp ugt i64 1, %"$gasrem_951"
  br i1 %"$gascmp_952", label %"$out_of_gas_953", label %"$have_gas_954"

"$out_of_gas_953":                                ; preds = %"$have_gas_941"
  call void @_out_of_gas()
  br label %"$have_gas_954"

"$have_gas_954":                                  ; preds = %"$out_of_gas_953", %"$have_gas_941"
  %"$consume_955" = sub i64 %"$gasrem_951", 1
  store i64 %"$consume_955", i64* @_gasrem, align 8
  %"$res__52" = alloca %Int256, align 8
  %"$gasrem_956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_957" = icmp ugt i64 1, %"$gasrem_956"
  br i1 %"$gascmp_957", label %"$out_of_gas_958", label %"$have_gas_959"

"$out_of_gas_958":                                ; preds = %"$have_gas_954"
  call void @_out_of_gas()
  br label %"$have_gas_959"

"$have_gas_959":                                  ; preds = %"$out_of_gas_958", %"$have_gas_954"
  %"$consume_960" = sub i64 %"$gasrem_956", 1
  store i64 %"$consume_960", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__52", align 8
  %"$gasrem_961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_962" = icmp ugt i64 1, %"$gasrem_961"
  br i1 %"$gascmp_962", label %"$out_of_gas_963", label %"$have_gas_964"

"$out_of_gas_963":                                ; preds = %"$have_gas_959"
  call void @_out_of_gas()
  br label %"$have_gas_964"

"$have_gas_964":                                  ; preds = %"$out_of_gas_963", %"$have_gas_959"
  %"$consume_965" = sub i64 %"$gasrem_961", 1
  store i64 %"$consume_965", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  %"$execptr_load_966" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_967" = alloca %Int256, align 8
  %"$$res_51_968" = load %Int256, %Int256* %"$res_51", align 8
  store %Int256 %"$$res_51_968", %Int256* %"$eq_$res_51_967", align 8
  %"$eq_$res__52_969" = alloca %Int256, align 8
  %"$$res__52_970" = load %Int256, %Int256* %"$res__52", align 8
  store %Int256 %"$$res__52_970", %Int256* %"$eq_$res__52_969", align 8
  %"$eq_call_971" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_966", %Int256* %"$eq_$res_51_967", %Int256* %"$eq_$res__52_969")
  store %TName_Bool* %"$eq_call_971", %TName_Bool** %"$test__53", align 8
  %"$gasrem_973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_974" = icmp ugt i64 1, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %"$have_gas_964"
  %"$consume_977" = sub i64 %"$gasrem_973", 1
  store i64 %"$consume_977", i64* @_gasrem, align 8
  %"$BoolUtils.andb_139" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_978" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_979" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_978", 0
  %"$BoolUtils.andb_envptr_980" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_978", 1
  %"$$test_48_981" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_982" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_979"(i8* %"$BoolUtils.andb_envptr_980", %TName_Bool* %"$$test_48_981")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_982", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$BoolUtils.andb_140" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_139_983" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_fptr_984" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_983", 0
  %"$$BoolUtils.andb_139_envptr_985" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_983", 1
  %"$$test__53_986" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_139_call_987" = call %TName_Bool* %"$$BoolUtils.andb_139_fptr_984"(i8* %"$$BoolUtils.andb_139_envptr_985", %TName_Bool* %"$$test__53_986")
  store %TName_Bool* %"$$BoolUtils.andb_139_call_987", %TName_Bool** %"$BoolUtils.andb_140", align 8
  %"$$BoolUtils.andb_140_988" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_140", align 8
  store %TName_Bool* %"$$BoolUtils.andb_140_988", %TName_Bool** %"$test_54", align 8
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 1, %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_976"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_976"
  %"$consume_993" = sub i64 %"$gasrem_989", 1
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Int256, align 8
  %"$gasrem_994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_995" = icmp ugt i64 1, %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$have_gas_992"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$have_gas_992"
  %"$consume_998" = sub i64 %"$gasrem_994", 1
  store i64 %"$consume_998", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105727 }, %Int256* %"$arg1_55", align 8
  %"$gasrem_999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1000" = icmp ugt i64 1, %"$gasrem_999"
  br i1 %"$gascmp_1000", label %"$out_of_gas_1001", label %"$have_gas_1002"

"$out_of_gas_1001":                               ; preds = %"$have_gas_997"
  call void @_out_of_gas()
  br label %"$have_gas_1002"

"$have_gas_1002":                                 ; preds = %"$out_of_gas_1001", %"$have_gas_997"
  %"$consume_1003" = sub i64 %"$gasrem_999", 1
  store i64 %"$consume_1003", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Int256, align 8
  %"$gasrem_1004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1005" = icmp ugt i64 1, %"$gasrem_1004"
  br i1 %"$gascmp_1005", label %"$out_of_gas_1006", label %"$have_gas_1007"

"$out_of_gas_1006":                               ; preds = %"$have_gas_1002"
  call void @_out_of_gas()
  br label %"$have_gas_1007"

"$have_gas_1007":                                 ; preds = %"$out_of_gas_1006", %"$have_gas_1002"
  %"$consume_1008" = sub i64 %"$gasrem_1004", 1
  store i64 %"$consume_1008", i64* @_gasrem, align 8
  store %Int256 { i256 -170141183460469231731687303715884105728 }, %Int256* %"$arg2_56", align 8
  %"$gasrem_1009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1010" = icmp ugt i64 1, %"$gasrem_1009"
  br i1 %"$gascmp_1010", label %"$out_of_gas_1011", label %"$have_gas_1012"

"$out_of_gas_1011":                               ; preds = %"$have_gas_1007"
  call void @_out_of_gas()
  br label %"$have_gas_1012"

"$have_gas_1012":                                 ; preds = %"$out_of_gas_1011", %"$have_gas_1007"
  %"$consume_1013" = sub i64 %"$gasrem_1009", 1
  store i64 %"$consume_1013", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1015" = icmp ugt i64 1, %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$have_gas_1012"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$have_gas_1012"
  %"$consume_1018" = sub i64 %"$gasrem_1014", 1
  store i64 %"$consume_1018", i64* @_gasrem, align 8
  %"$res_57" = alloca %Int256, align 8
  %"$execptr_load_1019" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_55_1020" = alloca %Int256, align 8
  %"$$arg1_55_1021" = load %Int256, %Int256* %"$arg1_55", align 8
  store %Int256 %"$$arg1_55_1021", %Int256* %"$mul_$arg1_55_1020", align 8
  %"$mul_$arg2_56_1022" = alloca %Int256, align 8
  %"$$arg2_56_1023" = load %Int256, %Int256* %"$arg2_56", align 8
  store %Int256 %"$$arg2_56_1023", %Int256* %"$mul_$arg2_56_1022", align 8
  %"$mul_call_1024" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1019", %Int256* %"$mul_$arg1_55_1020", %Int256* %"$mul_$arg2_56_1022")
  %"$mul_1026" = load %Int256, %Int256* %"$mul_call_1024", align 8
  store %Int256 %"$mul_1026", %Int256* %"$res_57", align 8
  %"$gasrem_1027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1028" = icmp ugt i64 1, %"$gasrem_1027"
  br i1 %"$gascmp_1028", label %"$out_of_gas_1029", label %"$have_gas_1030"

"$out_of_gas_1029":                               ; preds = %"$have_gas_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1030"

"$have_gas_1030":                                 ; preds = %"$out_of_gas_1029", %"$have_gas_1017"
  %"$consume_1031" = sub i64 %"$gasrem_1027", 1
  store i64 %"$consume_1031", i64* @_gasrem, align 8
  %"$res__58" = alloca %Int256, align 8
  %"$gasrem_1032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1033" = icmp ugt i64 1, %"$gasrem_1032"
  br i1 %"$gascmp_1033", label %"$out_of_gas_1034", label %"$have_gas_1035"

"$out_of_gas_1034":                               ; preds = %"$have_gas_1030"
  call void @_out_of_gas()
  br label %"$have_gas_1035"

"$have_gas_1035":                                 ; preds = %"$out_of_gas_1034", %"$have_gas_1030"
  %"$consume_1036" = sub i64 %"$gasrem_1032", 1
  store i64 %"$consume_1036", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Int256* %"$res__58", align 8
  %"$gasrem_1037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1038" = icmp ugt i64 1, %"$gasrem_1037"
  br i1 %"$gascmp_1038", label %"$out_of_gas_1039", label %"$have_gas_1040"

"$out_of_gas_1039":                               ; preds = %"$have_gas_1035"
  call void @_out_of_gas()
  br label %"$have_gas_1040"

"$have_gas_1040":                                 ; preds = %"$out_of_gas_1039", %"$have_gas_1035"
  %"$consume_1041" = sub i64 %"$gasrem_1037", 1
  store i64 %"$consume_1041", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  %"$execptr_load_1042" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_1043" = alloca %Int256, align 8
  %"$$res_57_1044" = load %Int256, %Int256* %"$res_57", align 8
  store %Int256 %"$$res_57_1044", %Int256* %"$eq_$res_57_1043", align 8
  %"$eq_$res__58_1045" = alloca %Int256, align 8
  %"$$res__58_1046" = load %Int256, %Int256* %"$res__58", align 8
  store %Int256 %"$$res__58_1046", %Int256* %"$eq_$res__58_1045", align 8
  %"$eq_call_1047" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1042", %Int256* %"$eq_$res_57_1043", %Int256* %"$eq_$res__58_1045")
  store %TName_Bool* %"$eq_call_1047", %TName_Bool** %"$test__59", align 8
  %"$gasrem_1049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1050" = icmp ugt i64 1, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$have_gas_1040"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$have_gas_1040"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 1
  store i64 %"$consume_1053", i64* @_gasrem, align 8
  %"$BoolUtils.andb_141" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1054" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1055" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1054", 0
  %"$BoolUtils.andb_envptr_1056" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1054", 1
  %"$$test_54_1057" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1058" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1055"(i8* %"$BoolUtils.andb_envptr_1056", %TName_Bool* %"$$test_54_1057")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1058", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$BoolUtils.andb_142" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_141_1059" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$$BoolUtils.andb_141_fptr_1060" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_1059", 0
  %"$$BoolUtils.andb_141_envptr_1061" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_1059", 1
  %"$$test__59_1062" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_141_call_1063" = call %TName_Bool* %"$$BoolUtils.andb_141_fptr_1060"(i8* %"$$BoolUtils.andb_141_envptr_1061", %TName_Bool* %"$$test__59_1062")
  store %TName_Bool* %"$$BoolUtils.andb_141_call_1063", %TName_Bool** %"$BoolUtils.andb_142", align 8
  %"$$BoolUtils.andb_142_1064" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_142", align 8
  store %TName_Bool* %"$$BoolUtils.andb_142_1064", %TName_Bool** %"$test_60", align 8
  %"$gasrem_1065" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1066" = icmp ugt i64 1, %"$gasrem_1065"
  br i1 %"$gascmp_1066", label %"$out_of_gas_1067", label %"$have_gas_1068"

"$out_of_gas_1067":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1068"

"$have_gas_1068":                                 ; preds = %"$out_of_gas_1067", %"$have_gas_1052"
  %"$consume_1069" = sub i64 %"$gasrem_1065", 1
  store i64 %"$consume_1069", i64* @_gasrem, align 8
  %"$arg1_61" = alloca %Int256, align 8
  %"$gasrem_1070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1071" = icmp ugt i64 1, %"$gasrem_1070"
  br i1 %"$gascmp_1071", label %"$out_of_gas_1072", label %"$have_gas_1073"

"$out_of_gas_1072":                               ; preds = %"$have_gas_1068"
  call void @_out_of_gas()
  br label %"$have_gas_1073"

"$have_gas_1073":                                 ; preds = %"$out_of_gas_1072", %"$have_gas_1068"
  %"$consume_1074" = sub i64 %"$gasrem_1070", 1
  store i64 %"$consume_1074", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105727 }, %Int256* %"$arg1_61", align 8
  %"$gasrem_1075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1076" = icmp ugt i64 1, %"$gasrem_1075"
  br i1 %"$gascmp_1076", label %"$out_of_gas_1077", label %"$have_gas_1078"

"$out_of_gas_1077":                               ; preds = %"$have_gas_1073"
  call void @_out_of_gas()
  br label %"$have_gas_1078"

"$have_gas_1078":                                 ; preds = %"$out_of_gas_1077", %"$have_gas_1073"
  %"$consume_1079" = sub i64 %"$gasrem_1075", 1
  store i64 %"$consume_1079", i64* @_gasrem, align 8
  %"$arg2_62" = alloca %Int256, align 8
  %"$gasrem_1080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1081" = icmp ugt i64 1, %"$gasrem_1080"
  br i1 %"$gascmp_1081", label %"$out_of_gas_1082", label %"$have_gas_1083"

"$out_of_gas_1082":                               ; preds = %"$have_gas_1078"
  call void @_out_of_gas()
  br label %"$have_gas_1083"

"$have_gas_1083":                                 ; preds = %"$out_of_gas_1082", %"$have_gas_1078"
  %"$consume_1084" = sub i64 %"$gasrem_1080", 1
  store i64 %"$consume_1084", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105728 }, %Int256* %"$arg2_62", align 8
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 1, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$have_gas_1083"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$have_gas_1083"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 1
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1091" = icmp ugt i64 1, %"$gasrem_1090"
  br i1 %"$gascmp_1091", label %"$out_of_gas_1092", label %"$have_gas_1093"

"$out_of_gas_1092":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1093"

"$have_gas_1093":                                 ; preds = %"$out_of_gas_1092", %"$have_gas_1088"
  %"$consume_1094" = sub i64 %"$gasrem_1090", 1
  store i64 %"$consume_1094", i64* @_gasrem, align 8
  %"$res_63" = alloca %Int256, align 8
  %"$execptr_load_1095" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_61_1096" = alloca %Int256, align 8
  %"$$arg1_61_1097" = load %Int256, %Int256* %"$arg1_61", align 8
  store %Int256 %"$$arg1_61_1097", %Int256* %"$mul_$arg1_61_1096", align 8
  %"$mul_$arg2_62_1098" = alloca %Int256, align 8
  %"$$arg2_62_1099" = load %Int256, %Int256* %"$arg2_62", align 8
  store %Int256 %"$$arg2_62_1099", %Int256* %"$mul_$arg2_62_1098", align 8
  %"$mul_call_1100" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1095", %Int256* %"$mul_$arg1_61_1096", %Int256* %"$mul_$arg2_62_1098")
  %"$mul_1102" = load %Int256, %Int256* %"$mul_call_1100", align 8
  store %Int256 %"$mul_1102", %Int256* %"$res_63", align 8
  %"$gasrem_1103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1104" = icmp ugt i64 1, %"$gasrem_1103"
  br i1 %"$gascmp_1104", label %"$out_of_gas_1105", label %"$have_gas_1106"

"$out_of_gas_1105":                               ; preds = %"$have_gas_1093"
  call void @_out_of_gas()
  br label %"$have_gas_1106"

"$have_gas_1106":                                 ; preds = %"$out_of_gas_1105", %"$have_gas_1093"
  %"$consume_1107" = sub i64 %"$gasrem_1103", 1
  store i64 %"$consume_1107", i64* @_gasrem, align 8
  %"$res__64" = alloca %Int256, align 8
  %"$gasrem_1108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1109" = icmp ugt i64 1, %"$gasrem_1108"
  br i1 %"$gascmp_1109", label %"$out_of_gas_1110", label %"$have_gas_1111"

"$out_of_gas_1110":                               ; preds = %"$have_gas_1106"
  call void @_out_of_gas()
  br label %"$have_gas_1111"

"$have_gas_1111":                                 ; preds = %"$out_of_gas_1110", %"$have_gas_1106"
  %"$consume_1112" = sub i64 %"$gasrem_1108", 1
  store i64 %"$consume_1112", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Int256* %"$res__64", align 8
  %"$gasrem_1113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1114" = icmp ugt i64 1, %"$gasrem_1113"
  br i1 %"$gascmp_1114", label %"$out_of_gas_1115", label %"$have_gas_1116"

"$out_of_gas_1115":                               ; preds = %"$have_gas_1111"
  call void @_out_of_gas()
  br label %"$have_gas_1116"

"$have_gas_1116":                                 ; preds = %"$out_of_gas_1115", %"$have_gas_1111"
  %"$consume_1117" = sub i64 %"$gasrem_1113", 1
  store i64 %"$consume_1117", i64* @_gasrem, align 8
  %"$test__65" = alloca %TName_Bool*, align 8
  %"$execptr_load_1118" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_63_1119" = alloca %Int256, align 8
  %"$$res_63_1120" = load %Int256, %Int256* %"$res_63", align 8
  store %Int256 %"$$res_63_1120", %Int256* %"$eq_$res_63_1119", align 8
  %"$eq_$res__64_1121" = alloca %Int256, align 8
  %"$$res__64_1122" = load %Int256, %Int256* %"$res__64", align 8
  store %Int256 %"$$res__64_1122", %Int256* %"$eq_$res__64_1121", align 8
  %"$eq_call_1123" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1118", %Int256* %"$eq_$res_63_1119", %Int256* %"$eq_$res__64_1121")
  store %TName_Bool* %"$eq_call_1123", %TName_Bool** %"$test__65", align 8
  %"$gasrem_1125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1126" = icmp ugt i64 1, %"$gasrem_1125"
  br i1 %"$gascmp_1126", label %"$out_of_gas_1127", label %"$have_gas_1128"

"$out_of_gas_1127":                               ; preds = %"$have_gas_1116"
  call void @_out_of_gas()
  br label %"$have_gas_1128"

"$have_gas_1128":                                 ; preds = %"$out_of_gas_1127", %"$have_gas_1116"
  %"$consume_1129" = sub i64 %"$gasrem_1125", 1
  store i64 %"$consume_1129", i64* @_gasrem, align 8
  %"$BoolUtils.andb_143" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1130" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1131" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1130", 0
  %"$BoolUtils.andb_envptr_1132" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1130", 1
  %"$$test_60_1133" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1134" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1131"(i8* %"$BoolUtils.andb_envptr_1132", %TName_Bool* %"$$test_60_1133")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1134", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$BoolUtils.andb_144" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_143_1135" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$$BoolUtils.andb_143_fptr_1136" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_1135", 0
  %"$$BoolUtils.andb_143_envptr_1137" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_1135", 1
  %"$$test__65_1138" = load %TName_Bool*, %TName_Bool** %"$test__65", align 8
  %"$$BoolUtils.andb_143_call_1139" = call %TName_Bool* %"$$BoolUtils.andb_143_fptr_1136"(i8* %"$$BoolUtils.andb_143_envptr_1137", %TName_Bool* %"$$test__65_1138")
  store %TName_Bool* %"$$BoolUtils.andb_143_call_1139", %TName_Bool** %"$BoolUtils.andb_144", align 8
  %"$$BoolUtils.andb_144_1140" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_144", align 8
  store %TName_Bool* %"$$BoolUtils.andb_144_1140", %TName_Bool** %"$test_66", align 8
  %"$gasrem_1141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1142" = icmp ugt i64 1, %"$gasrem_1141"
  br i1 %"$gascmp_1142", label %"$out_of_gas_1143", label %"$have_gas_1144"

"$out_of_gas_1143":                               ; preds = %"$have_gas_1128"
  call void @_out_of_gas()
  br label %"$have_gas_1144"

"$have_gas_1144":                                 ; preds = %"$out_of_gas_1143", %"$have_gas_1128"
  %"$consume_1145" = sub i64 %"$gasrem_1141", 1
  store i64 %"$consume_1145", i64* @_gasrem, align 8
  %"$arg1_67" = alloca %Uint256, align 8
  %"$gasrem_1146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1147" = icmp ugt i64 1, %"$gasrem_1146"
  br i1 %"$gascmp_1147", label %"$out_of_gas_1148", label %"$have_gas_1149"

"$out_of_gas_1148":                               ; preds = %"$have_gas_1144"
  call void @_out_of_gas()
  br label %"$have_gas_1149"

"$have_gas_1149":                                 ; preds = %"$out_of_gas_1148", %"$have_gas_1144"
  %"$consume_1150" = sub i64 %"$gasrem_1146", 1
  store i64 %"$consume_1150", i64* @_gasrem, align 8
  store %Uint256 { i256 170141183460469231731687303715884105727 }, %Uint256* %"$arg1_67", align 8
  %"$gasrem_1151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1152" = icmp ugt i64 1, %"$gasrem_1151"
  br i1 %"$gascmp_1152", label %"$out_of_gas_1153", label %"$have_gas_1154"

"$out_of_gas_1153":                               ; preds = %"$have_gas_1149"
  call void @_out_of_gas()
  br label %"$have_gas_1154"

"$have_gas_1154":                                 ; preds = %"$out_of_gas_1153", %"$have_gas_1149"
  %"$consume_1155" = sub i64 %"$gasrem_1151", 1
  store i64 %"$consume_1155", i64* @_gasrem, align 8
  %"$arg2_68" = alloca %Uint256, align 8
  %"$gasrem_1156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1157" = icmp ugt i64 1, %"$gasrem_1156"
  br i1 %"$gascmp_1157", label %"$out_of_gas_1158", label %"$have_gas_1159"

"$out_of_gas_1158":                               ; preds = %"$have_gas_1154"
  call void @_out_of_gas()
  br label %"$have_gas_1159"

"$have_gas_1159":                                 ; preds = %"$out_of_gas_1158", %"$have_gas_1154"
  %"$consume_1160" = sub i64 %"$gasrem_1156", 1
  store i64 %"$consume_1160", i64* @_gasrem, align 8
  store %Uint256 { i256 170141183460469231731687303715884105728 }, %Uint256* %"$arg2_68", align 8
  %"$gasrem_1161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1162" = icmp ugt i64 1, %"$gasrem_1161"
  br i1 %"$gascmp_1162", label %"$out_of_gas_1163", label %"$have_gas_1164"

"$out_of_gas_1163":                               ; preds = %"$have_gas_1159"
  call void @_out_of_gas()
  br label %"$have_gas_1164"

"$have_gas_1164":                                 ; preds = %"$out_of_gas_1163", %"$have_gas_1159"
  %"$consume_1165" = sub i64 %"$gasrem_1161", 1
  store i64 %"$consume_1165", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  %"$gasrem_1166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1167" = icmp ugt i64 1, %"$gasrem_1166"
  br i1 %"$gascmp_1167", label %"$out_of_gas_1168", label %"$have_gas_1169"

"$out_of_gas_1168":                               ; preds = %"$have_gas_1164"
  call void @_out_of_gas()
  br label %"$have_gas_1169"

"$have_gas_1169":                                 ; preds = %"$out_of_gas_1168", %"$have_gas_1164"
  %"$consume_1170" = sub i64 %"$gasrem_1166", 1
  store i64 %"$consume_1170", i64* @_gasrem, align 8
  %"$res_69" = alloca %Uint256, align 8
  %"$execptr_load_1171" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_67_1172" = alloca %Uint256, align 8
  %"$$arg1_67_1173" = load %Uint256, %Uint256* %"$arg1_67", align 8
  store %Uint256 %"$$arg1_67_1173", %Uint256* %"$mul_$arg1_67_1172", align 8
  %"$mul_$arg2_68_1174" = alloca %Uint256, align 8
  %"$$arg2_68_1175" = load %Uint256, %Uint256* %"$arg2_68", align 8
  store %Uint256 %"$$arg2_68_1175", %Uint256* %"$mul_$arg2_68_1174", align 8
  %"$mul_call_1176" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1171", %Uint256* %"$mul_$arg1_67_1172", %Uint256* %"$mul_$arg2_68_1174")
  %"$mul_1178" = load %Uint256, %Uint256* %"$mul_call_1176", align 8
  store %Uint256 %"$mul_1178", %Uint256* %"$res_69", align 8
  %"$gasrem_1179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1180" = icmp ugt i64 1, %"$gasrem_1179"
  br i1 %"$gascmp_1180", label %"$out_of_gas_1181", label %"$have_gas_1182"

"$out_of_gas_1181":                               ; preds = %"$have_gas_1169"
  call void @_out_of_gas()
  br label %"$have_gas_1182"

"$have_gas_1182":                                 ; preds = %"$out_of_gas_1181", %"$have_gas_1169"
  %"$consume_1183" = sub i64 %"$gasrem_1179", 1
  store i64 %"$consume_1183", i64* @_gasrem, align 8
  %"$res__70" = alloca %Uint256, align 8
  %"$gasrem_1184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1185" = icmp ugt i64 1, %"$gasrem_1184"
  br i1 %"$gascmp_1185", label %"$out_of_gas_1186", label %"$have_gas_1187"

"$out_of_gas_1186":                               ; preds = %"$have_gas_1182"
  call void @_out_of_gas()
  br label %"$have_gas_1187"

"$have_gas_1187":                                 ; preds = %"$out_of_gas_1186", %"$have_gas_1182"
  %"$consume_1188" = sub i64 %"$gasrem_1184", 1
  store i64 %"$consume_1188", i64* @_gasrem, align 8
  store %Uint256 { i256 28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Uint256* %"$res__70", align 8
  %"$gasrem_1189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1190" = icmp ugt i64 1, %"$gasrem_1189"
  br i1 %"$gascmp_1190", label %"$out_of_gas_1191", label %"$have_gas_1192"

"$out_of_gas_1191":                               ; preds = %"$have_gas_1187"
  call void @_out_of_gas()
  br label %"$have_gas_1192"

"$have_gas_1192":                                 ; preds = %"$out_of_gas_1191", %"$have_gas_1187"
  %"$consume_1193" = sub i64 %"$gasrem_1189", 1
  store i64 %"$consume_1193", i64* @_gasrem, align 8
  %"$test__71" = alloca %TName_Bool*, align 8
  %"$execptr_load_1194" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_69_1195" = alloca %Uint256, align 8
  %"$$res_69_1196" = load %Uint256, %Uint256* %"$res_69", align 8
  store %Uint256 %"$$res_69_1196", %Uint256* %"$eq_$res_69_1195", align 8
  %"$eq_$res__70_1197" = alloca %Uint256, align 8
  %"$$res__70_1198" = load %Uint256, %Uint256* %"$res__70", align 8
  store %Uint256 %"$$res__70_1198", %Uint256* %"$eq_$res__70_1197", align 8
  %"$eq_call_1199" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1194", %Uint256* %"$eq_$res_69_1195", %Uint256* %"$eq_$res__70_1197")
  store %TName_Bool* %"$eq_call_1199", %TName_Bool** %"$test__71", align 8
  %"$gasrem_1201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1202" = icmp ugt i64 1, %"$gasrem_1201"
  br i1 %"$gascmp_1202", label %"$out_of_gas_1203", label %"$have_gas_1204"

"$out_of_gas_1203":                               ; preds = %"$have_gas_1192"
  call void @_out_of_gas()
  br label %"$have_gas_1204"

"$have_gas_1204":                                 ; preds = %"$out_of_gas_1203", %"$have_gas_1192"
  %"$consume_1205" = sub i64 %"$gasrem_1201", 1
  store i64 %"$consume_1205", i64* @_gasrem, align 8
  %"$BoolUtils.andb_145" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1206" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1207" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1206", 0
  %"$BoolUtils.andb_envptr_1208" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1206", 1
  %"$$test_66_1209" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  %"$BoolUtils.andb_call_1210" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1207"(i8* %"$BoolUtils.andb_envptr_1208", %TName_Bool* %"$$test_66_1209")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1210", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$BoolUtils.andb_146" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_145_1211" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$$BoolUtils.andb_145_fptr_1212" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_1211", 0
  %"$$BoolUtils.andb_145_envptr_1213" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_1211", 1
  %"$$test__71_1214" = load %TName_Bool*, %TName_Bool** %"$test__71", align 8
  %"$$BoolUtils.andb_145_call_1215" = call %TName_Bool* %"$$BoolUtils.andb_145_fptr_1212"(i8* %"$$BoolUtils.andb_145_envptr_1213", %TName_Bool* %"$$test__71_1214")
  store %TName_Bool* %"$$BoolUtils.andb_145_call_1215", %TName_Bool** %"$BoolUtils.andb_146", align 8
  %"$$BoolUtils.andb_146_1216" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_146", align 8
  store %TName_Bool* %"$$BoolUtils.andb_146_1216", %TName_Bool** %"$test_72", align 8
  %"$gasrem_1217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1218" = icmp ugt i64 1, %"$gasrem_1217"
  br i1 %"$gascmp_1218", label %"$out_of_gas_1219", label %"$have_gas_1220"

"$out_of_gas_1219":                               ; preds = %"$have_gas_1204"
  call void @_out_of_gas()
  br label %"$have_gas_1220"

"$have_gas_1220":                                 ; preds = %"$out_of_gas_1219", %"$have_gas_1204"
  %"$consume_1221" = sub i64 %"$gasrem_1217", 1
  store i64 %"$consume_1221", i64* @_gasrem, align 8
  %"$arg1_73" = alloca %Uint256, align 8
  %"$gasrem_1222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1223" = icmp ugt i64 1, %"$gasrem_1222"
  br i1 %"$gascmp_1223", label %"$out_of_gas_1224", label %"$have_gas_1225"

"$out_of_gas_1224":                               ; preds = %"$have_gas_1220"
  call void @_out_of_gas()
  br label %"$have_gas_1225"

"$have_gas_1225":                                 ; preds = %"$out_of_gas_1224", %"$have_gas_1220"
  %"$consume_1226" = sub i64 %"$gasrem_1222", 1
  store i64 %"$consume_1226", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$arg1_73", align 8
  %"$gasrem_1227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1228" = icmp ugt i64 1, %"$gasrem_1227"
  br i1 %"$gascmp_1228", label %"$out_of_gas_1229", label %"$have_gas_1230"

"$out_of_gas_1229":                               ; preds = %"$have_gas_1225"
  call void @_out_of_gas()
  br label %"$have_gas_1230"

"$have_gas_1230":                                 ; preds = %"$out_of_gas_1229", %"$have_gas_1225"
  %"$consume_1231" = sub i64 %"$gasrem_1227", 1
  store i64 %"$consume_1231", i64* @_gasrem, align 8
  %"$arg2_74" = alloca %Uint256, align 8
  %"$gasrem_1232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1233" = icmp ugt i64 1, %"$gasrem_1232"
  br i1 %"$gascmp_1233", label %"$out_of_gas_1234", label %"$have_gas_1235"

"$out_of_gas_1234":                               ; preds = %"$have_gas_1230"
  call void @_out_of_gas()
  br label %"$have_gas_1235"

"$have_gas_1235":                                 ; preds = %"$out_of_gas_1234", %"$have_gas_1230"
  %"$consume_1236" = sub i64 %"$gasrem_1232", 1
  store i64 %"$consume_1236", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg2_74", align 8
  %"$gasrem_1237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1238" = icmp ugt i64 1, %"$gasrem_1237"
  br i1 %"$gascmp_1238", label %"$out_of_gas_1239", label %"$have_gas_1240"

"$out_of_gas_1239":                               ; preds = %"$have_gas_1235"
  call void @_out_of_gas()
  br label %"$have_gas_1240"

"$have_gas_1240":                                 ; preds = %"$out_of_gas_1239", %"$have_gas_1235"
  %"$consume_1241" = sub i64 %"$gasrem_1237", 1
  store i64 %"$consume_1241", i64* @_gasrem, align 8
  %"$test_78" = alloca %TName_Bool*, align 8
  %"$gasrem_1242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1243" = icmp ugt i64 1, %"$gasrem_1242"
  br i1 %"$gascmp_1243", label %"$out_of_gas_1244", label %"$have_gas_1245"

"$out_of_gas_1244":                               ; preds = %"$have_gas_1240"
  call void @_out_of_gas()
  br label %"$have_gas_1245"

"$have_gas_1245":                                 ; preds = %"$out_of_gas_1244", %"$have_gas_1240"
  %"$consume_1246" = sub i64 %"$gasrem_1242", 1
  store i64 %"$consume_1246", i64* @_gasrem, align 8
  %"$res_75" = alloca %Uint256, align 8
  %"$execptr_load_1247" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_73_1248" = alloca %Uint256, align 8
  %"$$arg1_73_1249" = load %Uint256, %Uint256* %"$arg1_73", align 8
  store %Uint256 %"$$arg1_73_1249", %Uint256* %"$mul_$arg1_73_1248", align 8
  %"$mul_$arg2_74_1250" = alloca %Uint256, align 8
  %"$$arg2_74_1251" = load %Uint256, %Uint256* %"$arg2_74", align 8
  store %Uint256 %"$$arg2_74_1251", %Uint256* %"$mul_$arg2_74_1250", align 8
  %"$mul_call_1252" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1247", %Uint256* %"$mul_$arg1_73_1248", %Uint256* %"$mul_$arg2_74_1250")
  %"$mul_1254" = load %Uint256, %Uint256* %"$mul_call_1252", align 8
  store %Uint256 %"$mul_1254", %Uint256* %"$res_75", align 8
  %"$gasrem_1255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1256" = icmp ugt i64 1, %"$gasrem_1255"
  br i1 %"$gascmp_1256", label %"$out_of_gas_1257", label %"$have_gas_1258"

"$out_of_gas_1257":                               ; preds = %"$have_gas_1245"
  call void @_out_of_gas()
  br label %"$have_gas_1258"

"$have_gas_1258":                                 ; preds = %"$out_of_gas_1257", %"$have_gas_1245"
  %"$consume_1259" = sub i64 %"$gasrem_1255", 1
  store i64 %"$consume_1259", i64* @_gasrem, align 8
  %"$res__76" = alloca %Uint256, align 8
  %"$gasrem_1260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1261" = icmp ugt i64 1, %"$gasrem_1260"
  br i1 %"$gascmp_1261", label %"$out_of_gas_1262", label %"$have_gas_1263"

"$out_of_gas_1262":                               ; preds = %"$have_gas_1258"
  call void @_out_of_gas()
  br label %"$have_gas_1263"

"$have_gas_1263":                                 ; preds = %"$out_of_gas_1262", %"$have_gas_1258"
  %"$consume_1264" = sub i64 %"$gasrem_1260", 1
  store i64 %"$consume_1264", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$res__76", align 8
  %"$gasrem_1265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1266" = icmp ugt i64 1, %"$gasrem_1265"
  br i1 %"$gascmp_1266", label %"$out_of_gas_1267", label %"$have_gas_1268"

"$out_of_gas_1267":                               ; preds = %"$have_gas_1263"
  call void @_out_of_gas()
  br label %"$have_gas_1268"

"$have_gas_1268":                                 ; preds = %"$out_of_gas_1267", %"$have_gas_1263"
  %"$consume_1269" = sub i64 %"$gasrem_1265", 1
  store i64 %"$consume_1269", i64* @_gasrem, align 8
  %"$test__77" = alloca %TName_Bool*, align 8
  %"$execptr_load_1270" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_75_1271" = alloca %Uint256, align 8
  %"$$res_75_1272" = load %Uint256, %Uint256* %"$res_75", align 8
  store %Uint256 %"$$res_75_1272", %Uint256* %"$eq_$res_75_1271", align 8
  %"$eq_$res__76_1273" = alloca %Uint256, align 8
  %"$$res__76_1274" = load %Uint256, %Uint256* %"$res__76", align 8
  store %Uint256 %"$$res__76_1274", %Uint256* %"$eq_$res__76_1273", align 8
  %"$eq_call_1275" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1270", %Uint256* %"$eq_$res_75_1271", %Uint256* %"$eq_$res__76_1273")
  store %TName_Bool* %"$eq_call_1275", %TName_Bool** %"$test__77", align 8
  %"$gasrem_1277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1278" = icmp ugt i64 1, %"$gasrem_1277"
  br i1 %"$gascmp_1278", label %"$out_of_gas_1279", label %"$have_gas_1280"

"$out_of_gas_1279":                               ; preds = %"$have_gas_1268"
  call void @_out_of_gas()
  br label %"$have_gas_1280"

"$have_gas_1280":                                 ; preds = %"$out_of_gas_1279", %"$have_gas_1268"
  %"$consume_1281" = sub i64 %"$gasrem_1277", 1
  store i64 %"$consume_1281", i64* @_gasrem, align 8
  %"$BoolUtils.andb_147" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1282" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1283" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1282", 0
  %"$BoolUtils.andb_envptr_1284" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1282", 1
  %"$$test_72_1285" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  %"$BoolUtils.andb_call_1286" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1283"(i8* %"$BoolUtils.andb_envptr_1284", %TName_Bool* %"$$test_72_1285")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1286", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$BoolUtils.andb_148" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_147_1287" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$$BoolUtils.andb_147_fptr_1288" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_1287", 0
  %"$$BoolUtils.andb_147_envptr_1289" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_1287", 1
  %"$$test__77_1290" = load %TName_Bool*, %TName_Bool** %"$test__77", align 8
  %"$$BoolUtils.andb_147_call_1291" = call %TName_Bool* %"$$BoolUtils.andb_147_fptr_1288"(i8* %"$$BoolUtils.andb_147_envptr_1289", %TName_Bool* %"$$test__77_1290")
  store %TName_Bool* %"$$BoolUtils.andb_147_call_1291", %TName_Bool** %"$BoolUtils.andb_148", align 8
  %"$$BoolUtils.andb_148_1292" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_148", align 8
  store %TName_Bool* %"$$BoolUtils.andb_148_1292", %TName_Bool** %"$test_78", align 8
  %"$gasrem_1293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1294" = icmp ugt i64 1, %"$gasrem_1293"
  br i1 %"$gascmp_1294", label %"$out_of_gas_1295", label %"$have_gas_1296"

"$out_of_gas_1295":                               ; preds = %"$have_gas_1280"
  call void @_out_of_gas()
  br label %"$have_gas_1296"

"$have_gas_1296":                                 ; preds = %"$out_of_gas_1295", %"$have_gas_1280"
  %"$consume_1297" = sub i64 %"$gasrem_1293", 1
  store i64 %"$consume_1297", i64* @_gasrem, align 8
  %"$arg1_79" = alloca %Uint256, align 8
  %"$gasrem_1298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1299" = icmp ugt i64 1, %"$gasrem_1298"
  br i1 %"$gascmp_1299", label %"$out_of_gas_1300", label %"$have_gas_1301"

"$out_of_gas_1300":                               ; preds = %"$have_gas_1296"
  call void @_out_of_gas()
  br label %"$have_gas_1301"

"$have_gas_1301":                                 ; preds = %"$out_of_gas_1300", %"$have_gas_1296"
  %"$consume_1302" = sub i64 %"$gasrem_1298", 1
  store i64 %"$consume_1302", i64* @_gasrem, align 8
  store %Uint256 { i256 2 }, %Uint256* %"$arg1_79", align 8
  %"$gasrem_1303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1304" = icmp ugt i64 1, %"$gasrem_1303"
  br i1 %"$gascmp_1304", label %"$out_of_gas_1305", label %"$have_gas_1306"

"$out_of_gas_1305":                               ; preds = %"$have_gas_1301"
  call void @_out_of_gas()
  br label %"$have_gas_1306"

"$have_gas_1306":                                 ; preds = %"$out_of_gas_1305", %"$have_gas_1301"
  %"$consume_1307" = sub i64 %"$gasrem_1303", 1
  store i64 %"$consume_1307", i64* @_gasrem, align 8
  %"$arg2_80" = alloca %Uint256, align 8
  %"$gasrem_1308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1309" = icmp ugt i64 1, %"$gasrem_1308"
  br i1 %"$gascmp_1309", label %"$out_of_gas_1310", label %"$have_gas_1311"

"$out_of_gas_1310":                               ; preds = %"$have_gas_1306"
  call void @_out_of_gas()
  br label %"$have_gas_1311"

"$have_gas_1311":                                 ; preds = %"$out_of_gas_1310", %"$have_gas_1306"
  %"$consume_1312" = sub i64 %"$gasrem_1308", 1
  store i64 %"$consume_1312", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %"$arg2_80", align 8
  %"$gasrem_1313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1314" = icmp ugt i64 1, %"$gasrem_1313"
  br i1 %"$gascmp_1314", label %"$out_of_gas_1315", label %"$have_gas_1316"

"$out_of_gas_1315":                               ; preds = %"$have_gas_1311"
  call void @_out_of_gas()
  br label %"$have_gas_1316"

"$have_gas_1316":                                 ; preds = %"$out_of_gas_1315", %"$have_gas_1311"
  %"$consume_1317" = sub i64 %"$gasrem_1313", 1
  store i64 %"$consume_1317", i64* @_gasrem, align 8
  %"$test_84" = alloca %TName_Bool*, align 8
  %"$gasrem_1318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1319" = icmp ugt i64 1, %"$gasrem_1318"
  br i1 %"$gascmp_1319", label %"$out_of_gas_1320", label %"$have_gas_1321"

"$out_of_gas_1320":                               ; preds = %"$have_gas_1316"
  call void @_out_of_gas()
  br label %"$have_gas_1321"

"$have_gas_1321":                                 ; preds = %"$out_of_gas_1320", %"$have_gas_1316"
  %"$consume_1322" = sub i64 %"$gasrem_1318", 1
  store i64 %"$consume_1322", i64* @_gasrem, align 8
  %"$res_81" = alloca %Uint256, align 8
  %"$execptr_load_1323" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_79_1324" = alloca %Uint256, align 8
  %"$$arg1_79_1325" = load %Uint256, %Uint256* %"$arg1_79", align 8
  store %Uint256 %"$$arg1_79_1325", %Uint256* %"$mul_$arg1_79_1324", align 8
  %"$mul_$arg2_80_1326" = alloca %Uint256, align 8
  %"$$arg2_80_1327" = load %Uint256, %Uint256* %"$arg2_80", align 8
  store %Uint256 %"$$arg2_80_1327", %Uint256* %"$mul_$arg2_80_1326", align 8
  %"$mul_call_1328" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1323", %Uint256* %"$mul_$arg1_79_1324", %Uint256* %"$mul_$arg2_80_1326")
  %"$mul_1330" = load %Uint256, %Uint256* %"$mul_call_1328", align 8
  store %Uint256 %"$mul_1330", %Uint256* %"$res_81", align 8
  %"$gasrem_1331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1332" = icmp ugt i64 1, %"$gasrem_1331"
  br i1 %"$gascmp_1332", label %"$out_of_gas_1333", label %"$have_gas_1334"

"$out_of_gas_1333":                               ; preds = %"$have_gas_1321"
  call void @_out_of_gas()
  br label %"$have_gas_1334"

"$have_gas_1334":                                 ; preds = %"$out_of_gas_1333", %"$have_gas_1321"
  %"$consume_1335" = sub i64 %"$gasrem_1331", 1
  store i64 %"$consume_1335", i64* @_gasrem, align 8
  %"$res__82" = alloca %Uint256, align 8
  %"$gasrem_1336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1337" = icmp ugt i64 1, %"$gasrem_1336"
  br i1 %"$gascmp_1337", label %"$out_of_gas_1338", label %"$have_gas_1339"

"$out_of_gas_1338":                               ; preds = %"$have_gas_1334"
  call void @_out_of_gas()
  br label %"$have_gas_1339"

"$have_gas_1339":                                 ; preds = %"$out_of_gas_1338", %"$have_gas_1334"
  %"$consume_1340" = sub i64 %"$gasrem_1336", 1
  store i64 %"$consume_1340", i64* @_gasrem, align 8
  store %Uint256 { i256 -2 }, %Uint256* %"$res__82", align 8
  %"$gasrem_1341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1342" = icmp ugt i64 1, %"$gasrem_1341"
  br i1 %"$gascmp_1342", label %"$out_of_gas_1343", label %"$have_gas_1344"

"$out_of_gas_1343":                               ; preds = %"$have_gas_1339"
  call void @_out_of_gas()
  br label %"$have_gas_1344"

"$have_gas_1344":                                 ; preds = %"$out_of_gas_1343", %"$have_gas_1339"
  %"$consume_1345" = sub i64 %"$gasrem_1341", 1
  store i64 %"$consume_1345", i64* @_gasrem, align 8
  %"$test__83" = alloca %TName_Bool*, align 8
  %"$execptr_load_1346" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_81_1347" = alloca %Uint256, align 8
  %"$$res_81_1348" = load %Uint256, %Uint256* %"$res_81", align 8
  store %Uint256 %"$$res_81_1348", %Uint256* %"$eq_$res_81_1347", align 8
  %"$eq_$res__82_1349" = alloca %Uint256, align 8
  %"$$res__82_1350" = load %Uint256, %Uint256* %"$res__82", align 8
  store %Uint256 %"$$res__82_1350", %Uint256* %"$eq_$res__82_1349", align 8
  %"$eq_call_1351" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1346", %Uint256* %"$eq_$res_81_1347", %Uint256* %"$eq_$res__82_1349")
  store %TName_Bool* %"$eq_call_1351", %TName_Bool** %"$test__83", align 8
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 1, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$have_gas_1344"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$have_gas_1344"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 1
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  %"$BoolUtils.andb_149" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1358" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1359" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1358", 0
  %"$BoolUtils.andb_envptr_1360" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1358", 1
  %"$$test_78_1361" = load %TName_Bool*, %TName_Bool** %"$test_78", align 8
  %"$BoolUtils.andb_call_1362" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1359"(i8* %"$BoolUtils.andb_envptr_1360", %TName_Bool* %"$$test_78_1361")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1362", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$BoolUtils.andb_150" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_149_1363" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$$BoolUtils.andb_149_fptr_1364" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1363", 0
  %"$$BoolUtils.andb_149_envptr_1365" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1363", 1
  %"$$test__83_1366" = load %TName_Bool*, %TName_Bool** %"$test__83", align 8
  %"$$BoolUtils.andb_149_call_1367" = call %TName_Bool* %"$$BoolUtils.andb_149_fptr_1364"(i8* %"$$BoolUtils.andb_149_envptr_1365", %TName_Bool* %"$$test__83_1366")
  store %TName_Bool* %"$$BoolUtils.andb_149_call_1367", %TName_Bool** %"$BoolUtils.andb_150", align 8
  %"$$BoolUtils.andb_150_1368" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_150", align 8
  store %TName_Bool* %"$$BoolUtils.andb_150_1368", %TName_Bool** %"$test_84", align 8
  %"$gasrem_1369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1370" = icmp ugt i64 1, %"$gasrem_1369"
  br i1 %"$gascmp_1370", label %"$out_of_gas_1371", label %"$have_gas_1372"

"$out_of_gas_1371":                               ; preds = %"$have_gas_1356"
  call void @_out_of_gas()
  br label %"$have_gas_1372"

"$have_gas_1372":                                 ; preds = %"$out_of_gas_1371", %"$have_gas_1356"
  %"$consume_1373" = sub i64 %"$gasrem_1369", 1
  store i64 %"$consume_1373", i64* @_gasrem, align 8
  %"$arg1_85" = alloca %Int256, align 8
  %"$gasrem_1374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1375" = icmp ugt i64 1, %"$gasrem_1374"
  br i1 %"$gascmp_1375", label %"$out_of_gas_1376", label %"$have_gas_1377"

"$out_of_gas_1376":                               ; preds = %"$have_gas_1372"
  call void @_out_of_gas()
  br label %"$have_gas_1377"

"$have_gas_1377":                                 ; preds = %"$out_of_gas_1376", %"$have_gas_1372"
  %"$consume_1378" = sub i64 %"$gasrem_1374", 1
  store i64 %"$consume_1378", i64* @_gasrem, align 8
  store %Int256 { i256 2 }, %Int256* %"$arg1_85", align 8
  %"$gasrem_1379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1380" = icmp ugt i64 1, %"$gasrem_1379"
  br i1 %"$gascmp_1380", label %"$out_of_gas_1381", label %"$have_gas_1382"

"$out_of_gas_1381":                               ; preds = %"$have_gas_1377"
  call void @_out_of_gas()
  br label %"$have_gas_1382"

"$have_gas_1382":                                 ; preds = %"$out_of_gas_1381", %"$have_gas_1377"
  %"$consume_1383" = sub i64 %"$gasrem_1379", 1
  store i64 %"$consume_1383", i64* @_gasrem, align 8
  %"$arg2_86" = alloca %Int256, align 8
  %"$gasrem_1384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1385" = icmp ugt i64 1, %"$gasrem_1384"
  br i1 %"$gascmp_1385", label %"$out_of_gas_1386", label %"$have_gas_1387"

"$out_of_gas_1386":                               ; preds = %"$have_gas_1382"
  call void @_out_of_gas()
  br label %"$have_gas_1387"

"$have_gas_1387":                                 ; preds = %"$out_of_gas_1386", %"$have_gas_1382"
  %"$consume_1388" = sub i64 %"$gasrem_1384", 1
  store i64 %"$consume_1388", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_86", align 8
  %"$gasrem_1389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1390" = icmp ugt i64 1, %"$gasrem_1389"
  br i1 %"$gascmp_1390", label %"$out_of_gas_1391", label %"$have_gas_1392"

"$out_of_gas_1391":                               ; preds = %"$have_gas_1387"
  call void @_out_of_gas()
  br label %"$have_gas_1392"

"$have_gas_1392":                                 ; preds = %"$out_of_gas_1391", %"$have_gas_1387"
  %"$consume_1393" = sub i64 %"$gasrem_1389", 1
  store i64 %"$consume_1393", i64* @_gasrem, align 8
  %"$test_90" = alloca %TName_Bool*, align 8
  %"$gasrem_1394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1395" = icmp ugt i64 1, %"$gasrem_1394"
  br i1 %"$gascmp_1395", label %"$out_of_gas_1396", label %"$have_gas_1397"

"$out_of_gas_1396":                               ; preds = %"$have_gas_1392"
  call void @_out_of_gas()
  br label %"$have_gas_1397"

"$have_gas_1397":                                 ; preds = %"$out_of_gas_1396", %"$have_gas_1392"
  %"$consume_1398" = sub i64 %"$gasrem_1394", 1
  store i64 %"$consume_1398", i64* @_gasrem, align 8
  %"$res_87" = alloca %Int256, align 8
  %"$execptr_load_1399" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_85_1400" = alloca %Int256, align 8
  %"$$arg1_85_1401" = load %Int256, %Int256* %"$arg1_85", align 8
  store %Int256 %"$$arg1_85_1401", %Int256* %"$mul_$arg1_85_1400", align 8
  %"$mul_$arg2_86_1402" = alloca %Int256, align 8
  %"$$arg2_86_1403" = load %Int256, %Int256* %"$arg2_86", align 8
  store %Int256 %"$$arg2_86_1403", %Int256* %"$mul_$arg2_86_1402", align 8
  %"$mul_call_1404" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1399", %Int256* %"$mul_$arg1_85_1400", %Int256* %"$mul_$arg2_86_1402")
  %"$mul_1406" = load %Int256, %Int256* %"$mul_call_1404", align 8
  store %Int256 %"$mul_1406", %Int256* %"$res_87", align 8
  %"$gasrem_1407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1408" = icmp ugt i64 1, %"$gasrem_1407"
  br i1 %"$gascmp_1408", label %"$out_of_gas_1409", label %"$have_gas_1410"

"$out_of_gas_1409":                               ; preds = %"$have_gas_1397"
  call void @_out_of_gas()
  br label %"$have_gas_1410"

"$have_gas_1410":                                 ; preds = %"$out_of_gas_1409", %"$have_gas_1397"
  %"$consume_1411" = sub i64 %"$gasrem_1407", 1
  store i64 %"$consume_1411", i64* @_gasrem, align 8
  %"$res__88" = alloca %Int256, align 8
  %"$gasrem_1412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1413" = icmp ugt i64 1, %"$gasrem_1412"
  br i1 %"$gascmp_1413", label %"$out_of_gas_1414", label %"$have_gas_1415"

"$out_of_gas_1414":                               ; preds = %"$have_gas_1410"
  call void @_out_of_gas()
  br label %"$have_gas_1415"

"$have_gas_1415":                                 ; preds = %"$out_of_gas_1414", %"$have_gas_1410"
  %"$consume_1416" = sub i64 %"$gasrem_1412", 1
  store i64 %"$consume_1416", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__88", align 8
  %"$gasrem_1417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1418" = icmp ugt i64 1, %"$gasrem_1417"
  br i1 %"$gascmp_1418", label %"$out_of_gas_1419", label %"$have_gas_1420"

"$out_of_gas_1419":                               ; preds = %"$have_gas_1415"
  call void @_out_of_gas()
  br label %"$have_gas_1420"

"$have_gas_1420":                                 ; preds = %"$out_of_gas_1419", %"$have_gas_1415"
  %"$consume_1421" = sub i64 %"$gasrem_1417", 1
  store i64 %"$consume_1421", i64* @_gasrem, align 8
  %"$test__89" = alloca %TName_Bool*, align 8
  %"$execptr_load_1422" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_87_1423" = alloca %Int256, align 8
  %"$$res_87_1424" = load %Int256, %Int256* %"$res_87", align 8
  store %Int256 %"$$res_87_1424", %Int256* %"$eq_$res_87_1423", align 8
  %"$eq_$res__88_1425" = alloca %Int256, align 8
  %"$$res__88_1426" = load %Int256, %Int256* %"$res__88", align 8
  store %Int256 %"$$res__88_1426", %Int256* %"$eq_$res__88_1425", align 8
  %"$eq_call_1427" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1422", %Int256* %"$eq_$res_87_1423", %Int256* %"$eq_$res__88_1425")
  store %TName_Bool* %"$eq_call_1427", %TName_Bool** %"$test__89", align 8
  %"$gasrem_1429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1430" = icmp ugt i64 1, %"$gasrem_1429"
  br i1 %"$gascmp_1430", label %"$out_of_gas_1431", label %"$have_gas_1432"

"$out_of_gas_1431":                               ; preds = %"$have_gas_1420"
  call void @_out_of_gas()
  br label %"$have_gas_1432"

"$have_gas_1432":                                 ; preds = %"$out_of_gas_1431", %"$have_gas_1420"
  %"$consume_1433" = sub i64 %"$gasrem_1429", 1
  store i64 %"$consume_1433", i64* @_gasrem, align 8
  %"$BoolUtils.andb_151" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1434" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1435" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1434", 0
  %"$BoolUtils.andb_envptr_1436" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1434", 1
  %"$$test_84_1437" = load %TName_Bool*, %TName_Bool** %"$test_84", align 8
  %"$BoolUtils.andb_call_1438" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1435"(i8* %"$BoolUtils.andb_envptr_1436", %TName_Bool* %"$$test_84_1437")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1438", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$BoolUtils.andb_152" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_151_1439" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$$BoolUtils.andb_151_fptr_1440" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1439", 0
  %"$$BoolUtils.andb_151_envptr_1441" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1439", 1
  %"$$test__89_1442" = load %TName_Bool*, %TName_Bool** %"$test__89", align 8
  %"$$BoolUtils.andb_151_call_1443" = call %TName_Bool* %"$$BoolUtils.andb_151_fptr_1440"(i8* %"$$BoolUtils.andb_151_envptr_1441", %TName_Bool* %"$$test__89_1442")
  store %TName_Bool* %"$$BoolUtils.andb_151_call_1443", %TName_Bool** %"$BoolUtils.andb_152", align 8
  %"$$BoolUtils.andb_152_1444" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_152", align 8
  store %TName_Bool* %"$$BoolUtils.andb_152_1444", %TName_Bool** %"$test_90", align 8
  %"$gasrem_1445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1446" = icmp ugt i64 1, %"$gasrem_1445"
  br i1 %"$gascmp_1446", label %"$out_of_gas_1447", label %"$have_gas_1448"

"$out_of_gas_1447":                               ; preds = %"$have_gas_1432"
  call void @_out_of_gas()
  br label %"$have_gas_1448"

"$have_gas_1448":                                 ; preds = %"$out_of_gas_1447", %"$have_gas_1432"
  %"$consume_1449" = sub i64 %"$gasrem_1445", 1
  store i64 %"$consume_1449", i64* @_gasrem, align 8
  %"$arg1_91" = alloca %Int256, align 8
  %"$gasrem_1450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1451" = icmp ugt i64 1, %"$gasrem_1450"
  br i1 %"$gascmp_1451", label %"$out_of_gas_1452", label %"$have_gas_1453"

"$out_of_gas_1452":                               ; preds = %"$have_gas_1448"
  call void @_out_of_gas()
  br label %"$have_gas_1453"

"$have_gas_1453":                                 ; preds = %"$out_of_gas_1452", %"$have_gas_1448"
  %"$consume_1454" = sub i64 %"$gasrem_1450", 1
  store i64 %"$consume_1454", i64* @_gasrem, align 8
  store %Int256 { i256 -2 }, %Int256* %"$arg1_91", align 8
  %"$gasrem_1455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1456" = icmp ugt i64 1, %"$gasrem_1455"
  br i1 %"$gascmp_1456", label %"$out_of_gas_1457", label %"$have_gas_1458"

"$out_of_gas_1457":                               ; preds = %"$have_gas_1453"
  call void @_out_of_gas()
  br label %"$have_gas_1458"

"$have_gas_1458":                                 ; preds = %"$out_of_gas_1457", %"$have_gas_1453"
  %"$consume_1459" = sub i64 %"$gasrem_1455", 1
  store i64 %"$consume_1459", i64* @_gasrem, align 8
  %"$arg2_92" = alloca %Int256, align 8
  %"$gasrem_1460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1461" = icmp ugt i64 1, %"$gasrem_1460"
  br i1 %"$gascmp_1461", label %"$out_of_gas_1462", label %"$have_gas_1463"

"$out_of_gas_1462":                               ; preds = %"$have_gas_1458"
  call void @_out_of_gas()
  br label %"$have_gas_1463"

"$have_gas_1463":                                 ; preds = %"$out_of_gas_1462", %"$have_gas_1458"
  %"$consume_1464" = sub i64 %"$gasrem_1460", 1
  store i64 %"$consume_1464", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_92", align 8
  %"$gasrem_1465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1466" = icmp ugt i64 1, %"$gasrem_1465"
  br i1 %"$gascmp_1466", label %"$out_of_gas_1467", label %"$have_gas_1468"

"$out_of_gas_1467":                               ; preds = %"$have_gas_1463"
  call void @_out_of_gas()
  br label %"$have_gas_1468"

"$have_gas_1468":                                 ; preds = %"$out_of_gas_1467", %"$have_gas_1463"
  %"$consume_1469" = sub i64 %"$gasrem_1465", 1
  store i64 %"$consume_1469", i64* @_gasrem, align 8
  %"$test_96" = alloca %TName_Bool*, align 8
  %"$gasrem_1470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1471" = icmp ugt i64 1, %"$gasrem_1470"
  br i1 %"$gascmp_1471", label %"$out_of_gas_1472", label %"$have_gas_1473"

"$out_of_gas_1472":                               ; preds = %"$have_gas_1468"
  call void @_out_of_gas()
  br label %"$have_gas_1473"

"$have_gas_1473":                                 ; preds = %"$out_of_gas_1472", %"$have_gas_1468"
  %"$consume_1474" = sub i64 %"$gasrem_1470", 1
  store i64 %"$consume_1474", i64* @_gasrem, align 8
  %"$res_93" = alloca %Int256, align 8
  %"$execptr_load_1475" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_91_1476" = alloca %Int256, align 8
  %"$$arg1_91_1477" = load %Int256, %Int256* %"$arg1_91", align 8
  store %Int256 %"$$arg1_91_1477", %Int256* %"$mul_$arg1_91_1476", align 8
  %"$mul_$arg2_92_1478" = alloca %Int256, align 8
  %"$$arg2_92_1479" = load %Int256, %Int256* %"$arg2_92", align 8
  store %Int256 %"$$arg2_92_1479", %Int256* %"$mul_$arg2_92_1478", align 8
  %"$mul_call_1480" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1475", %Int256* %"$mul_$arg1_91_1476", %Int256* %"$mul_$arg2_92_1478")
  %"$mul_1482" = load %Int256, %Int256* %"$mul_call_1480", align 8
  store %Int256 %"$mul_1482", %Int256* %"$res_93", align 8
  %"$gasrem_1483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1484" = icmp ugt i64 1, %"$gasrem_1483"
  br i1 %"$gascmp_1484", label %"$out_of_gas_1485", label %"$have_gas_1486"

"$out_of_gas_1485":                               ; preds = %"$have_gas_1473"
  call void @_out_of_gas()
  br label %"$have_gas_1486"

"$have_gas_1486":                                 ; preds = %"$out_of_gas_1485", %"$have_gas_1473"
  %"$consume_1487" = sub i64 %"$gasrem_1483", 1
  store i64 %"$consume_1487", i64* @_gasrem, align 8
  %"$res__94" = alloca %Int256, align 8
  %"$gasrem_1488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1489" = icmp ugt i64 1, %"$gasrem_1488"
  br i1 %"$gascmp_1489", label %"$out_of_gas_1490", label %"$have_gas_1491"

"$out_of_gas_1490":                               ; preds = %"$have_gas_1486"
  call void @_out_of_gas()
  br label %"$have_gas_1491"

"$have_gas_1491":                                 ; preds = %"$out_of_gas_1490", %"$have_gas_1486"
  %"$consume_1492" = sub i64 %"$gasrem_1488", 1
  store i64 %"$consume_1492", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__94", align 8
  %"$gasrem_1493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1494" = icmp ugt i64 1, %"$gasrem_1493"
  br i1 %"$gascmp_1494", label %"$out_of_gas_1495", label %"$have_gas_1496"

"$out_of_gas_1495":                               ; preds = %"$have_gas_1491"
  call void @_out_of_gas()
  br label %"$have_gas_1496"

"$have_gas_1496":                                 ; preds = %"$out_of_gas_1495", %"$have_gas_1491"
  %"$consume_1497" = sub i64 %"$gasrem_1493", 1
  store i64 %"$consume_1497", i64* @_gasrem, align 8
  %"$test__95" = alloca %TName_Bool*, align 8
  %"$execptr_load_1498" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_93_1499" = alloca %Int256, align 8
  %"$$res_93_1500" = load %Int256, %Int256* %"$res_93", align 8
  store %Int256 %"$$res_93_1500", %Int256* %"$eq_$res_93_1499", align 8
  %"$eq_$res__94_1501" = alloca %Int256, align 8
  %"$$res__94_1502" = load %Int256, %Int256* %"$res__94", align 8
  store %Int256 %"$$res__94_1502", %Int256* %"$eq_$res__94_1501", align 8
  %"$eq_call_1503" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1498", %Int256* %"$eq_$res_93_1499", %Int256* %"$eq_$res__94_1501")
  store %TName_Bool* %"$eq_call_1503", %TName_Bool** %"$test__95", align 8
  %"$gasrem_1505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1506" = icmp ugt i64 1, %"$gasrem_1505"
  br i1 %"$gascmp_1506", label %"$out_of_gas_1507", label %"$have_gas_1508"

"$out_of_gas_1507":                               ; preds = %"$have_gas_1496"
  call void @_out_of_gas()
  br label %"$have_gas_1508"

"$have_gas_1508":                                 ; preds = %"$out_of_gas_1507", %"$have_gas_1496"
  %"$consume_1509" = sub i64 %"$gasrem_1505", 1
  store i64 %"$consume_1509", i64* @_gasrem, align 8
  %"$BoolUtils.andb_153" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1510" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1511" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1510", 0
  %"$BoolUtils.andb_envptr_1512" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1510", 1
  %"$$test_90_1513" = load %TName_Bool*, %TName_Bool** %"$test_90", align 8
  %"$BoolUtils.andb_call_1514" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1511"(i8* %"$BoolUtils.andb_envptr_1512", %TName_Bool* %"$$test_90_1513")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1514", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$BoolUtils.andb_154" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_153_1515" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$$BoolUtils.andb_153_fptr_1516" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1515", 0
  %"$$BoolUtils.andb_153_envptr_1517" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1515", 1
  %"$$test__95_1518" = load %TName_Bool*, %TName_Bool** %"$test__95", align 8
  %"$$BoolUtils.andb_153_call_1519" = call %TName_Bool* %"$$BoolUtils.andb_153_fptr_1516"(i8* %"$$BoolUtils.andb_153_envptr_1517", %TName_Bool* %"$$test__95_1518")
  store %TName_Bool* %"$$BoolUtils.andb_153_call_1519", %TName_Bool** %"$BoolUtils.andb_154", align 8
  %"$$BoolUtils.andb_154_1520" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_154", align 8
  store %TName_Bool* %"$$BoolUtils.andb_154_1520", %TName_Bool** %"$test_96", align 8
  %"$gasrem_1521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1522" = icmp ugt i64 1, %"$gasrem_1521"
  br i1 %"$gascmp_1522", label %"$out_of_gas_1523", label %"$have_gas_1524"

"$out_of_gas_1523":                               ; preds = %"$have_gas_1508"
  call void @_out_of_gas()
  br label %"$have_gas_1524"

"$have_gas_1524":                                 ; preds = %"$out_of_gas_1523", %"$have_gas_1508"
  %"$consume_1525" = sub i64 %"$gasrem_1521", 1
  store i64 %"$consume_1525", i64* @_gasrem, align 8
  %"$arg1_97" = alloca %Int256, align 8
  %"$gasrem_1526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1527" = icmp ugt i64 1, %"$gasrem_1526"
  br i1 %"$gascmp_1527", label %"$out_of_gas_1528", label %"$have_gas_1529"

"$out_of_gas_1528":                               ; preds = %"$have_gas_1524"
  call void @_out_of_gas()
  br label %"$have_gas_1529"

"$have_gas_1529":                                 ; preds = %"$out_of_gas_1528", %"$have_gas_1524"
  %"$consume_1530" = sub i64 %"$gasrem_1526", 1
  store i64 %"$consume_1530", i64* @_gasrem, align 8
  store %Int256 { i256 2 }, %Int256* %"$arg1_97", align 8
  %"$gasrem_1531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1532" = icmp ugt i64 1, %"$gasrem_1531"
  br i1 %"$gascmp_1532", label %"$out_of_gas_1533", label %"$have_gas_1534"

"$out_of_gas_1533":                               ; preds = %"$have_gas_1529"
  call void @_out_of_gas()
  br label %"$have_gas_1534"

"$have_gas_1534":                                 ; preds = %"$out_of_gas_1533", %"$have_gas_1529"
  %"$consume_1535" = sub i64 %"$gasrem_1531", 1
  store i64 %"$consume_1535", i64* @_gasrem, align 8
  %"$arg2_98" = alloca %Int256, align 8
  %"$gasrem_1536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1537" = icmp ugt i64 1, %"$gasrem_1536"
  br i1 %"$gascmp_1537", label %"$out_of_gas_1538", label %"$have_gas_1539"

"$out_of_gas_1538":                               ; preds = %"$have_gas_1534"
  call void @_out_of_gas()
  br label %"$have_gas_1539"

"$have_gas_1539":                                 ; preds = %"$out_of_gas_1538", %"$have_gas_1534"
  %"$consume_1540" = sub i64 %"$gasrem_1536", 1
  store i64 %"$consume_1540", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_98", align 8
  %"$gasrem_1541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1542" = icmp ugt i64 1, %"$gasrem_1541"
  br i1 %"$gascmp_1542", label %"$out_of_gas_1543", label %"$have_gas_1544"

"$out_of_gas_1543":                               ; preds = %"$have_gas_1539"
  call void @_out_of_gas()
  br label %"$have_gas_1544"

"$have_gas_1544":                                 ; preds = %"$out_of_gas_1543", %"$have_gas_1539"
  %"$consume_1545" = sub i64 %"$gasrem_1541", 1
  store i64 %"$consume_1545", i64* @_gasrem, align 8
  %"$test_102" = alloca %TName_Bool*, align 8
  %"$gasrem_1546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1547" = icmp ugt i64 1, %"$gasrem_1546"
  br i1 %"$gascmp_1547", label %"$out_of_gas_1548", label %"$have_gas_1549"

"$out_of_gas_1548":                               ; preds = %"$have_gas_1544"
  call void @_out_of_gas()
  br label %"$have_gas_1549"

"$have_gas_1549":                                 ; preds = %"$out_of_gas_1548", %"$have_gas_1544"
  %"$consume_1550" = sub i64 %"$gasrem_1546", 1
  store i64 %"$consume_1550", i64* @_gasrem, align 8
  %"$res_99" = alloca %Int256, align 8
  %"$execptr_load_1551" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_97_1552" = alloca %Int256, align 8
  %"$$arg1_97_1553" = load %Int256, %Int256* %"$arg1_97", align 8
  store %Int256 %"$$arg1_97_1553", %Int256* %"$mul_$arg1_97_1552", align 8
  %"$mul_$arg2_98_1554" = alloca %Int256, align 8
  %"$$arg2_98_1555" = load %Int256, %Int256* %"$arg2_98", align 8
  store %Int256 %"$$arg2_98_1555", %Int256* %"$mul_$arg2_98_1554", align 8
  %"$mul_call_1556" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1551", %Int256* %"$mul_$arg1_97_1552", %Int256* %"$mul_$arg2_98_1554")
  %"$mul_1558" = load %Int256, %Int256* %"$mul_call_1556", align 8
  store %Int256 %"$mul_1558", %Int256* %"$res_99", align 8
  %"$gasrem_1559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1560" = icmp ugt i64 1, %"$gasrem_1559"
  br i1 %"$gascmp_1560", label %"$out_of_gas_1561", label %"$have_gas_1562"

"$out_of_gas_1561":                               ; preds = %"$have_gas_1549"
  call void @_out_of_gas()
  br label %"$have_gas_1562"

"$have_gas_1562":                                 ; preds = %"$out_of_gas_1561", %"$have_gas_1549"
  %"$consume_1563" = sub i64 %"$gasrem_1559", 1
  store i64 %"$consume_1563", i64* @_gasrem, align 8
  %"$res__100" = alloca %Int256, align 8
  %"$gasrem_1564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1565" = icmp ugt i64 1, %"$gasrem_1564"
  br i1 %"$gascmp_1565", label %"$out_of_gas_1566", label %"$have_gas_1567"

"$out_of_gas_1566":                               ; preds = %"$have_gas_1562"
  call void @_out_of_gas()
  br label %"$have_gas_1567"

"$have_gas_1567":                                 ; preds = %"$out_of_gas_1566", %"$have_gas_1562"
  %"$consume_1568" = sub i64 %"$gasrem_1564", 1
  store i64 %"$consume_1568", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__100", align 8
  %"$gasrem_1569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1570" = icmp ugt i64 1, %"$gasrem_1569"
  br i1 %"$gascmp_1570", label %"$out_of_gas_1571", label %"$have_gas_1572"

"$out_of_gas_1571":                               ; preds = %"$have_gas_1567"
  call void @_out_of_gas()
  br label %"$have_gas_1572"

"$have_gas_1572":                                 ; preds = %"$out_of_gas_1571", %"$have_gas_1567"
  %"$consume_1573" = sub i64 %"$gasrem_1569", 1
  store i64 %"$consume_1573", i64* @_gasrem, align 8
  %"$test__101" = alloca %TName_Bool*, align 8
  %"$execptr_load_1574" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_99_1575" = alloca %Int256, align 8
  %"$$res_99_1576" = load %Int256, %Int256* %"$res_99", align 8
  store %Int256 %"$$res_99_1576", %Int256* %"$eq_$res_99_1575", align 8
  %"$eq_$res__100_1577" = alloca %Int256, align 8
  %"$$res__100_1578" = load %Int256, %Int256* %"$res__100", align 8
  store %Int256 %"$$res__100_1578", %Int256* %"$eq_$res__100_1577", align 8
  %"$eq_call_1579" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1574", %Int256* %"$eq_$res_99_1575", %Int256* %"$eq_$res__100_1577")
  store %TName_Bool* %"$eq_call_1579", %TName_Bool** %"$test__101", align 8
  %"$gasrem_1581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1582" = icmp ugt i64 1, %"$gasrem_1581"
  br i1 %"$gascmp_1582", label %"$out_of_gas_1583", label %"$have_gas_1584"

"$out_of_gas_1583":                               ; preds = %"$have_gas_1572"
  call void @_out_of_gas()
  br label %"$have_gas_1584"

"$have_gas_1584":                                 ; preds = %"$out_of_gas_1583", %"$have_gas_1572"
  %"$consume_1585" = sub i64 %"$gasrem_1581", 1
  store i64 %"$consume_1585", i64* @_gasrem, align 8
  %"$BoolUtils.andb_155" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1586" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1587" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1586", 0
  %"$BoolUtils.andb_envptr_1588" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1586", 1
  %"$$test_96_1589" = load %TName_Bool*, %TName_Bool** %"$test_96", align 8
  %"$BoolUtils.andb_call_1590" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1587"(i8* %"$BoolUtils.andb_envptr_1588", %TName_Bool* %"$$test_96_1589")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1590", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$BoolUtils.andb_156" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_155_1591" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$$BoolUtils.andb_155_fptr_1592" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1591", 0
  %"$$BoolUtils.andb_155_envptr_1593" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1591", 1
  %"$$test__101_1594" = load %TName_Bool*, %TName_Bool** %"$test__101", align 8
  %"$$BoolUtils.andb_155_call_1595" = call %TName_Bool* %"$$BoolUtils.andb_155_fptr_1592"(i8* %"$$BoolUtils.andb_155_envptr_1593", %TName_Bool* %"$$test__101_1594")
  store %TName_Bool* %"$$BoolUtils.andb_155_call_1595", %TName_Bool** %"$BoolUtils.andb_156", align 8
  %"$$BoolUtils.andb_156_1596" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_156", align 8
  store %TName_Bool* %"$$BoolUtils.andb_156_1596", %TName_Bool** %"$test_102", align 8
  %"$gasrem_1597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1598" = icmp ugt i64 1, %"$gasrem_1597"
  br i1 %"$gascmp_1598", label %"$out_of_gas_1599", label %"$have_gas_1600"

"$out_of_gas_1599":                               ; preds = %"$have_gas_1584"
  call void @_out_of_gas()
  br label %"$have_gas_1600"

"$have_gas_1600":                                 ; preds = %"$out_of_gas_1599", %"$have_gas_1584"
  %"$consume_1601" = sub i64 %"$gasrem_1597", 1
  store i64 %"$consume_1601", i64* @_gasrem, align 8
  %"$arg1_103" = alloca %Int256, align 8
  %"$gasrem_1602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1603" = icmp ugt i64 1, %"$gasrem_1602"
  br i1 %"$gascmp_1603", label %"$out_of_gas_1604", label %"$have_gas_1605"

"$out_of_gas_1604":                               ; preds = %"$have_gas_1600"
  call void @_out_of_gas()
  br label %"$have_gas_1605"

"$have_gas_1605":                                 ; preds = %"$out_of_gas_1604", %"$have_gas_1600"
  %"$consume_1606" = sub i64 %"$gasrem_1602", 1
  store i64 %"$consume_1606", i64* @_gasrem, align 8
  store %Int256 { i256 -2 }, %Int256* %"$arg1_103", align 8
  %"$gasrem_1607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1608" = icmp ugt i64 1, %"$gasrem_1607"
  br i1 %"$gascmp_1608", label %"$out_of_gas_1609", label %"$have_gas_1610"

"$out_of_gas_1609":                               ; preds = %"$have_gas_1605"
  call void @_out_of_gas()
  br label %"$have_gas_1610"

"$have_gas_1610":                                 ; preds = %"$out_of_gas_1609", %"$have_gas_1605"
  %"$consume_1611" = sub i64 %"$gasrem_1607", 1
  store i64 %"$consume_1611", i64* @_gasrem, align 8
  %"$arg2_104" = alloca %Int256, align 8
  %"$gasrem_1612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1613" = icmp ugt i64 1, %"$gasrem_1612"
  br i1 %"$gascmp_1613", label %"$out_of_gas_1614", label %"$have_gas_1615"

"$out_of_gas_1614":                               ; preds = %"$have_gas_1610"
  call void @_out_of_gas()
  br label %"$have_gas_1615"

"$have_gas_1615":                                 ; preds = %"$out_of_gas_1614", %"$have_gas_1610"
  %"$consume_1616" = sub i64 %"$gasrem_1612", 1
  store i64 %"$consume_1616", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_104", align 8
  %"$gasrem_1617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1618" = icmp ugt i64 1, %"$gasrem_1617"
  br i1 %"$gascmp_1618", label %"$out_of_gas_1619", label %"$have_gas_1620"

"$out_of_gas_1619":                               ; preds = %"$have_gas_1615"
  call void @_out_of_gas()
  br label %"$have_gas_1620"

"$have_gas_1620":                                 ; preds = %"$out_of_gas_1619", %"$have_gas_1615"
  %"$consume_1621" = sub i64 %"$gasrem_1617", 1
  store i64 %"$consume_1621", i64* @_gasrem, align 8
  %"$test_108" = alloca %TName_Bool*, align 8
  %"$gasrem_1622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1623" = icmp ugt i64 1, %"$gasrem_1622"
  br i1 %"$gascmp_1623", label %"$out_of_gas_1624", label %"$have_gas_1625"

"$out_of_gas_1624":                               ; preds = %"$have_gas_1620"
  call void @_out_of_gas()
  br label %"$have_gas_1625"

"$have_gas_1625":                                 ; preds = %"$out_of_gas_1624", %"$have_gas_1620"
  %"$consume_1626" = sub i64 %"$gasrem_1622", 1
  store i64 %"$consume_1626", i64* @_gasrem, align 8
  %"$res_105" = alloca %Int256, align 8
  %"$execptr_load_1627" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_103_1628" = alloca %Int256, align 8
  %"$$arg1_103_1629" = load %Int256, %Int256* %"$arg1_103", align 8
  store %Int256 %"$$arg1_103_1629", %Int256* %"$mul_$arg1_103_1628", align 8
  %"$mul_$arg2_104_1630" = alloca %Int256, align 8
  %"$$arg2_104_1631" = load %Int256, %Int256* %"$arg2_104", align 8
  store %Int256 %"$$arg2_104_1631", %Int256* %"$mul_$arg2_104_1630", align 8
  %"$mul_call_1632" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1627", %Int256* %"$mul_$arg1_103_1628", %Int256* %"$mul_$arg2_104_1630")
  %"$mul_1634" = load %Int256, %Int256* %"$mul_call_1632", align 8
  store %Int256 %"$mul_1634", %Int256* %"$res_105", align 8
  %"$gasrem_1635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1636" = icmp ugt i64 1, %"$gasrem_1635"
  br i1 %"$gascmp_1636", label %"$out_of_gas_1637", label %"$have_gas_1638"

"$out_of_gas_1637":                               ; preds = %"$have_gas_1625"
  call void @_out_of_gas()
  br label %"$have_gas_1638"

"$have_gas_1638":                                 ; preds = %"$out_of_gas_1637", %"$have_gas_1625"
  %"$consume_1639" = sub i64 %"$gasrem_1635", 1
  store i64 %"$consume_1639", i64* @_gasrem, align 8
  %"$res__106" = alloca %Int256, align 8
  %"$gasrem_1640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1641" = icmp ugt i64 1, %"$gasrem_1640"
  br i1 %"$gascmp_1641", label %"$out_of_gas_1642", label %"$have_gas_1643"

"$out_of_gas_1642":                               ; preds = %"$have_gas_1638"
  call void @_out_of_gas()
  br label %"$have_gas_1643"

"$have_gas_1643":                                 ; preds = %"$out_of_gas_1642", %"$have_gas_1638"
  %"$consume_1644" = sub i64 %"$gasrem_1640", 1
  store i64 %"$consume_1644", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__106", align 8
  %"$gasrem_1645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1646" = icmp ugt i64 1, %"$gasrem_1645"
  br i1 %"$gascmp_1646", label %"$out_of_gas_1647", label %"$have_gas_1648"

"$out_of_gas_1647":                               ; preds = %"$have_gas_1643"
  call void @_out_of_gas()
  br label %"$have_gas_1648"

"$have_gas_1648":                                 ; preds = %"$out_of_gas_1647", %"$have_gas_1643"
  %"$consume_1649" = sub i64 %"$gasrem_1645", 1
  store i64 %"$consume_1649", i64* @_gasrem, align 8
  %"$test__107" = alloca %TName_Bool*, align 8
  %"$execptr_load_1650" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_105_1651" = alloca %Int256, align 8
  %"$$res_105_1652" = load %Int256, %Int256* %"$res_105", align 8
  store %Int256 %"$$res_105_1652", %Int256* %"$eq_$res_105_1651", align 8
  %"$eq_$res__106_1653" = alloca %Int256, align 8
  %"$$res__106_1654" = load %Int256, %Int256* %"$res__106", align 8
  store %Int256 %"$$res__106_1654", %Int256* %"$eq_$res__106_1653", align 8
  %"$eq_call_1655" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1650", %Int256* %"$eq_$res_105_1651", %Int256* %"$eq_$res__106_1653")
  store %TName_Bool* %"$eq_call_1655", %TName_Bool** %"$test__107", align 8
  %"$gasrem_1657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1658" = icmp ugt i64 1, %"$gasrem_1657"
  br i1 %"$gascmp_1658", label %"$out_of_gas_1659", label %"$have_gas_1660"

"$out_of_gas_1659":                               ; preds = %"$have_gas_1648"
  call void @_out_of_gas()
  br label %"$have_gas_1660"

"$have_gas_1660":                                 ; preds = %"$out_of_gas_1659", %"$have_gas_1648"
  %"$consume_1661" = sub i64 %"$gasrem_1657", 1
  store i64 %"$consume_1661", i64* @_gasrem, align 8
  %"$BoolUtils.andb_157" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1662" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1663" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1662", 0
  %"$BoolUtils.andb_envptr_1664" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1662", 1
  %"$$test_102_1665" = load %TName_Bool*, %TName_Bool** %"$test_102", align 8
  %"$BoolUtils.andb_call_1666" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1663"(i8* %"$BoolUtils.andb_envptr_1664", %TName_Bool* %"$$test_102_1665")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1666", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$BoolUtils.andb_158" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_157_1667" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$$BoolUtils.andb_157_fptr_1668" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1667", 0
  %"$$BoolUtils.andb_157_envptr_1669" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1667", 1
  %"$$test__107_1670" = load %TName_Bool*, %TName_Bool** %"$test__107", align 8
  %"$$BoolUtils.andb_157_call_1671" = call %TName_Bool* %"$$BoolUtils.andb_157_fptr_1668"(i8* %"$$BoolUtils.andb_157_envptr_1669", %TName_Bool* %"$$test__107_1670")
  store %TName_Bool* %"$$BoolUtils.andb_157_call_1671", %TName_Bool** %"$BoolUtils.andb_158", align 8
  %"$$BoolUtils.andb_158_1672" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_158", align 8
  store %TName_Bool* %"$$BoolUtils.andb_158_1672", %TName_Bool** %"$test_108", align 8
  %"$gasrem_1673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1674" = icmp ugt i64 1, %"$gasrem_1673"
  br i1 %"$gascmp_1674", label %"$out_of_gas_1675", label %"$have_gas_1676"

"$out_of_gas_1675":                               ; preds = %"$have_gas_1660"
  call void @_out_of_gas()
  br label %"$have_gas_1676"

"$have_gas_1676":                                 ; preds = %"$out_of_gas_1675", %"$have_gas_1660"
  %"$consume_1677" = sub i64 %"$gasrem_1673", 1
  store i64 %"$consume_1677", i64* @_gasrem, align 8
  %"$arg1_109" = alloca %Int256, align 8
  %"$gasrem_1678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1679" = icmp ugt i64 1, %"$gasrem_1678"
  br i1 %"$gascmp_1679", label %"$out_of_gas_1680", label %"$have_gas_1681"

"$out_of_gas_1680":                               ; preds = %"$have_gas_1676"
  call void @_out_of_gas()
  br label %"$have_gas_1681"

"$have_gas_1681":                                 ; preds = %"$out_of_gas_1680", %"$have_gas_1676"
  %"$consume_1682" = sub i64 %"$gasrem_1678", 1
  store i64 %"$consume_1682", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$arg1_109", align 8
  %"$gasrem_1683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1684" = icmp ugt i64 1, %"$gasrem_1683"
  br i1 %"$gascmp_1684", label %"$out_of_gas_1685", label %"$have_gas_1686"

"$out_of_gas_1685":                               ; preds = %"$have_gas_1681"
  call void @_out_of_gas()
  br label %"$have_gas_1686"

"$have_gas_1686":                                 ; preds = %"$out_of_gas_1685", %"$have_gas_1681"
  %"$consume_1687" = sub i64 %"$gasrem_1683", 1
  store i64 %"$consume_1687", i64* @_gasrem, align 8
  %"$arg2_110" = alloca %Int256, align 8
  %"$gasrem_1688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1689" = icmp ugt i64 1, %"$gasrem_1688"
  br i1 %"$gascmp_1689", label %"$out_of_gas_1690", label %"$have_gas_1691"

"$out_of_gas_1690":                               ; preds = %"$have_gas_1686"
  call void @_out_of_gas()
  br label %"$have_gas_1691"

"$have_gas_1691":                                 ; preds = %"$out_of_gas_1690", %"$have_gas_1686"
  %"$consume_1692" = sub i64 %"$gasrem_1688", 1
  store i64 %"$consume_1692", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$arg2_110", align 8
  %"$gasrem_1693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1694" = icmp ugt i64 1, %"$gasrem_1693"
  br i1 %"$gascmp_1694", label %"$out_of_gas_1695", label %"$have_gas_1696"

"$out_of_gas_1695":                               ; preds = %"$have_gas_1691"
  call void @_out_of_gas()
  br label %"$have_gas_1696"

"$have_gas_1696":                                 ; preds = %"$out_of_gas_1695", %"$have_gas_1691"
  %"$consume_1697" = sub i64 %"$gasrem_1693", 1
  store i64 %"$consume_1697", i64* @_gasrem, align 8
  %"$test_114" = alloca %TName_Bool*, align 8
  %"$gasrem_1698" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1699" = icmp ugt i64 1, %"$gasrem_1698"
  br i1 %"$gascmp_1699", label %"$out_of_gas_1700", label %"$have_gas_1701"

"$out_of_gas_1700":                               ; preds = %"$have_gas_1696"
  call void @_out_of_gas()
  br label %"$have_gas_1701"

"$have_gas_1701":                                 ; preds = %"$out_of_gas_1700", %"$have_gas_1696"
  %"$consume_1702" = sub i64 %"$gasrem_1698", 1
  store i64 %"$consume_1702", i64* @_gasrem, align 8
  %"$res_111" = alloca %Int256, align 8
  %"$execptr_load_1703" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_109_1704" = alloca %Int256, align 8
  %"$$arg1_109_1705" = load %Int256, %Int256* %"$arg1_109", align 8
  store %Int256 %"$$arg1_109_1705", %Int256* %"$mul_$arg1_109_1704", align 8
  %"$mul_$arg2_110_1706" = alloca %Int256, align 8
  %"$$arg2_110_1707" = load %Int256, %Int256* %"$arg2_110", align 8
  store %Int256 %"$$arg2_110_1707", %Int256* %"$mul_$arg2_110_1706", align 8
  %"$mul_call_1708" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1703", %Int256* %"$mul_$arg1_109_1704", %Int256* %"$mul_$arg2_110_1706")
  %"$mul_1710" = load %Int256, %Int256* %"$mul_call_1708", align 8
  store %Int256 %"$mul_1710", %Int256* %"$res_111", align 8
  %"$gasrem_1711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1712" = icmp ugt i64 1, %"$gasrem_1711"
  br i1 %"$gascmp_1712", label %"$out_of_gas_1713", label %"$have_gas_1714"

"$out_of_gas_1713":                               ; preds = %"$have_gas_1701"
  call void @_out_of_gas()
  br label %"$have_gas_1714"

"$have_gas_1714":                                 ; preds = %"$out_of_gas_1713", %"$have_gas_1701"
  %"$consume_1715" = sub i64 %"$gasrem_1711", 1
  store i64 %"$consume_1715", i64* @_gasrem, align 8
  %"$res__112" = alloca %Int256, align 8
  %"$gasrem_1716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1717" = icmp ugt i64 1, %"$gasrem_1716"
  br i1 %"$gascmp_1717", label %"$out_of_gas_1718", label %"$have_gas_1719"

"$out_of_gas_1718":                               ; preds = %"$have_gas_1714"
  call void @_out_of_gas()
  br label %"$have_gas_1719"

"$have_gas_1719":                                 ; preds = %"$out_of_gas_1718", %"$have_gas_1714"
  %"$consume_1720" = sub i64 %"$gasrem_1716", 1
  store i64 %"$consume_1720", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$res__112", align 8
  %"$gasrem_1721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1722" = icmp ugt i64 1, %"$gasrem_1721"
  br i1 %"$gascmp_1722", label %"$out_of_gas_1723", label %"$have_gas_1724"

"$out_of_gas_1723":                               ; preds = %"$have_gas_1719"
  call void @_out_of_gas()
  br label %"$have_gas_1724"

"$have_gas_1724":                                 ; preds = %"$out_of_gas_1723", %"$have_gas_1719"
  %"$consume_1725" = sub i64 %"$gasrem_1721", 1
  store i64 %"$consume_1725", i64* @_gasrem, align 8
  %"$test__113" = alloca %TName_Bool*, align 8
  %"$execptr_load_1726" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_111_1727" = alloca %Int256, align 8
  %"$$res_111_1728" = load %Int256, %Int256* %"$res_111", align 8
  store %Int256 %"$$res_111_1728", %Int256* %"$eq_$res_111_1727", align 8
  %"$eq_$res__112_1729" = alloca %Int256, align 8
  %"$$res__112_1730" = load %Int256, %Int256* %"$res__112", align 8
  store %Int256 %"$$res__112_1730", %Int256* %"$eq_$res__112_1729", align 8
  %"$eq_call_1731" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1726", %Int256* %"$eq_$res_111_1727", %Int256* %"$eq_$res__112_1729")
  store %TName_Bool* %"$eq_call_1731", %TName_Bool** %"$test__113", align 8
  %"$gasrem_1733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1734" = icmp ugt i64 1, %"$gasrem_1733"
  br i1 %"$gascmp_1734", label %"$out_of_gas_1735", label %"$have_gas_1736"

"$out_of_gas_1735":                               ; preds = %"$have_gas_1724"
  call void @_out_of_gas()
  br label %"$have_gas_1736"

"$have_gas_1736":                                 ; preds = %"$out_of_gas_1735", %"$have_gas_1724"
  %"$consume_1737" = sub i64 %"$gasrem_1733", 1
  store i64 %"$consume_1737", i64* @_gasrem, align 8
  %"$BoolUtils.andb_159" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1738" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1739" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1738", 0
  %"$BoolUtils.andb_envptr_1740" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1738", 1
  %"$$test_108_1741" = load %TName_Bool*, %TName_Bool** %"$test_108", align 8
  %"$BoolUtils.andb_call_1742" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1739"(i8* %"$BoolUtils.andb_envptr_1740", %TName_Bool* %"$$test_108_1741")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1742", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$BoolUtils.andb_160" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_159_1743" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$$BoolUtils.andb_159_fptr_1744" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1743", 0
  %"$$BoolUtils.andb_159_envptr_1745" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1743", 1
  %"$$test__113_1746" = load %TName_Bool*, %TName_Bool** %"$test__113", align 8
  %"$$BoolUtils.andb_159_call_1747" = call %TName_Bool* %"$$BoolUtils.andb_159_fptr_1744"(i8* %"$$BoolUtils.andb_159_envptr_1745", %TName_Bool* %"$$test__113_1746")
  store %TName_Bool* %"$$BoolUtils.andb_159_call_1747", %TName_Bool** %"$BoolUtils.andb_160", align 8
  %"$$BoolUtils.andb_160_1748" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_160", align 8
  store %TName_Bool* %"$$BoolUtils.andb_160_1748", %TName_Bool** %"$test_114", align 8
  %"$gasrem_1749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1750" = icmp ugt i64 1, %"$gasrem_1749"
  br i1 %"$gascmp_1750", label %"$out_of_gas_1751", label %"$have_gas_1752"

"$out_of_gas_1751":                               ; preds = %"$have_gas_1736"
  call void @_out_of_gas()
  br label %"$have_gas_1752"

"$have_gas_1752":                                 ; preds = %"$out_of_gas_1751", %"$have_gas_1736"
  %"$consume_1753" = sub i64 %"$gasrem_1749", 1
  store i64 %"$consume_1753", i64* @_gasrem, align 8
  %"$arg1_115" = alloca %Int256, align 8
  %"$gasrem_1754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1755" = icmp ugt i64 1, %"$gasrem_1754"
  br i1 %"$gascmp_1755", label %"$out_of_gas_1756", label %"$have_gas_1757"

"$out_of_gas_1756":                               ; preds = %"$have_gas_1752"
  call void @_out_of_gas()
  br label %"$have_gas_1757"

"$have_gas_1757":                                 ; preds = %"$out_of_gas_1756", %"$have_gas_1752"
  %"$consume_1758" = sub i64 %"$gasrem_1754", 1
  store i64 %"$consume_1758", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$arg1_115", align 8
  %"$gasrem_1759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1760" = icmp ugt i64 1, %"$gasrem_1759"
  br i1 %"$gascmp_1760", label %"$out_of_gas_1761", label %"$have_gas_1762"

"$out_of_gas_1761":                               ; preds = %"$have_gas_1757"
  call void @_out_of_gas()
  br label %"$have_gas_1762"

"$have_gas_1762":                                 ; preds = %"$out_of_gas_1761", %"$have_gas_1757"
  %"$consume_1763" = sub i64 %"$gasrem_1759", 1
  store i64 %"$consume_1763", i64* @_gasrem, align 8
  %"$arg2_116" = alloca %Int256, align 8
  %"$gasrem_1764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1765" = icmp ugt i64 1, %"$gasrem_1764"
  br i1 %"$gascmp_1765", label %"$out_of_gas_1766", label %"$have_gas_1767"

"$out_of_gas_1766":                               ; preds = %"$have_gas_1762"
  call void @_out_of_gas()
  br label %"$have_gas_1767"

"$have_gas_1767":                                 ; preds = %"$out_of_gas_1766", %"$have_gas_1762"
  %"$consume_1768" = sub i64 %"$gasrem_1764", 1
  store i64 %"$consume_1768", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_116", align 8
  %"$gasrem_1769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1770" = icmp ugt i64 1, %"$gasrem_1769"
  br i1 %"$gascmp_1770", label %"$out_of_gas_1771", label %"$have_gas_1772"

"$out_of_gas_1771":                               ; preds = %"$have_gas_1767"
  call void @_out_of_gas()
  br label %"$have_gas_1772"

"$have_gas_1772":                                 ; preds = %"$out_of_gas_1771", %"$have_gas_1767"
  %"$consume_1773" = sub i64 %"$gasrem_1769", 1
  store i64 %"$consume_1773", i64* @_gasrem, align 8
  %"$test_120" = alloca %TName_Bool*, align 8
  %"$gasrem_1774" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1775" = icmp ugt i64 1, %"$gasrem_1774"
  br i1 %"$gascmp_1775", label %"$out_of_gas_1776", label %"$have_gas_1777"

"$out_of_gas_1776":                               ; preds = %"$have_gas_1772"
  call void @_out_of_gas()
  br label %"$have_gas_1777"

"$have_gas_1777":                                 ; preds = %"$out_of_gas_1776", %"$have_gas_1772"
  %"$consume_1778" = sub i64 %"$gasrem_1774", 1
  store i64 %"$consume_1778", i64* @_gasrem, align 8
  %"$res_117" = alloca %Int256, align 8
  %"$execptr_load_1779" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_115_1780" = alloca %Int256, align 8
  %"$$arg1_115_1781" = load %Int256, %Int256* %"$arg1_115", align 8
  store %Int256 %"$$arg1_115_1781", %Int256* %"$mul_$arg1_115_1780", align 8
  %"$mul_$arg2_116_1782" = alloca %Int256, align 8
  %"$$arg2_116_1783" = load %Int256, %Int256* %"$arg2_116", align 8
  store %Int256 %"$$arg2_116_1783", %Int256* %"$mul_$arg2_116_1782", align 8
  %"$mul_call_1784" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1779", %Int256* %"$mul_$arg1_115_1780", %Int256* %"$mul_$arg2_116_1782")
  %"$mul_1786" = load %Int256, %Int256* %"$mul_call_1784", align 8
  store %Int256 %"$mul_1786", %Int256* %"$res_117", align 8
  %"$gasrem_1787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1788" = icmp ugt i64 1, %"$gasrem_1787"
  br i1 %"$gascmp_1788", label %"$out_of_gas_1789", label %"$have_gas_1790"

"$out_of_gas_1789":                               ; preds = %"$have_gas_1777"
  call void @_out_of_gas()
  br label %"$have_gas_1790"

"$have_gas_1790":                                 ; preds = %"$out_of_gas_1789", %"$have_gas_1777"
  %"$consume_1791" = sub i64 %"$gasrem_1787", 1
  store i64 %"$consume_1791", i64* @_gasrem, align 8
  %"$res__118" = alloca %Int256, align 8
  %"$gasrem_1792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1793" = icmp ugt i64 1, %"$gasrem_1792"
  br i1 %"$gascmp_1793", label %"$out_of_gas_1794", label %"$have_gas_1795"

"$out_of_gas_1794":                               ; preds = %"$have_gas_1790"
  call void @_out_of_gas()
  br label %"$have_gas_1795"

"$have_gas_1795":                                 ; preds = %"$out_of_gas_1794", %"$have_gas_1790"
  %"$consume_1796" = sub i64 %"$gasrem_1792", 1
  store i64 %"$consume_1796", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__118", align 8
  %"$gasrem_1797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1798" = icmp ugt i64 1, %"$gasrem_1797"
  br i1 %"$gascmp_1798", label %"$out_of_gas_1799", label %"$have_gas_1800"

"$out_of_gas_1799":                               ; preds = %"$have_gas_1795"
  call void @_out_of_gas()
  br label %"$have_gas_1800"

"$have_gas_1800":                                 ; preds = %"$out_of_gas_1799", %"$have_gas_1795"
  %"$consume_1801" = sub i64 %"$gasrem_1797", 1
  store i64 %"$consume_1801", i64* @_gasrem, align 8
  %"$test__119" = alloca %TName_Bool*, align 8
  %"$execptr_load_1802" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_117_1803" = alloca %Int256, align 8
  %"$$res_117_1804" = load %Int256, %Int256* %"$res_117", align 8
  store %Int256 %"$$res_117_1804", %Int256* %"$eq_$res_117_1803", align 8
  %"$eq_$res__118_1805" = alloca %Int256, align 8
  %"$$res__118_1806" = load %Int256, %Int256* %"$res__118", align 8
  store %Int256 %"$$res__118_1806", %Int256* %"$eq_$res__118_1805", align 8
  %"$eq_call_1807" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1802", %Int256* %"$eq_$res_117_1803", %Int256* %"$eq_$res__118_1805")
  store %TName_Bool* %"$eq_call_1807", %TName_Bool** %"$test__119", align 8
  %"$gasrem_1809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1810" = icmp ugt i64 1, %"$gasrem_1809"
  br i1 %"$gascmp_1810", label %"$out_of_gas_1811", label %"$have_gas_1812"

"$out_of_gas_1811":                               ; preds = %"$have_gas_1800"
  call void @_out_of_gas()
  br label %"$have_gas_1812"

"$have_gas_1812":                                 ; preds = %"$out_of_gas_1811", %"$have_gas_1800"
  %"$consume_1813" = sub i64 %"$gasrem_1809", 1
  store i64 %"$consume_1813", i64* @_gasrem, align 8
  %"$BoolUtils.andb_161" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1814" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1815" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1814", 0
  %"$BoolUtils.andb_envptr_1816" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1814", 1
  %"$$test_114_1817" = load %TName_Bool*, %TName_Bool** %"$test_114", align 8
  %"$BoolUtils.andb_call_1818" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1815"(i8* %"$BoolUtils.andb_envptr_1816", %TName_Bool* %"$$test_114_1817")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1818", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$BoolUtils.andb_162" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_161_1819" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$$BoolUtils.andb_161_fptr_1820" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1819", 0
  %"$$BoolUtils.andb_161_envptr_1821" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1819", 1
  %"$$test__119_1822" = load %TName_Bool*, %TName_Bool** %"$test__119", align 8
  %"$$BoolUtils.andb_161_call_1823" = call %TName_Bool* %"$$BoolUtils.andb_161_fptr_1820"(i8* %"$$BoolUtils.andb_161_envptr_1821", %TName_Bool* %"$$test__119_1822")
  store %TName_Bool* %"$$BoolUtils.andb_161_call_1823", %TName_Bool** %"$BoolUtils.andb_162", align 8
  %"$$BoolUtils.andb_162_1824" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_162", align 8
  store %TName_Bool* %"$$BoolUtils.andb_162_1824", %TName_Bool** %"$test_120", align 8
  %"$gasrem_1825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1826" = icmp ugt i64 1, %"$gasrem_1825"
  br i1 %"$gascmp_1826", label %"$out_of_gas_1827", label %"$have_gas_1828"

"$out_of_gas_1827":                               ; preds = %"$have_gas_1812"
  call void @_out_of_gas()
  br label %"$have_gas_1828"

"$have_gas_1828":                                 ; preds = %"$out_of_gas_1827", %"$have_gas_1812"
  %"$consume_1829" = sub i64 %"$gasrem_1825", 1
  store i64 %"$consume_1829", i64* @_gasrem, align 8
  %"$$test_120_1830" = load %TName_Bool*, %TName_Bool** %"$test_120", align 8
  store %TName_Bool* %"$$test_120_1830", %TName_Bool** %"$expr_167", align 8
  %"$$expr_167_1831" = load %TName_Bool*, %TName_Bool** %"$expr_167", align 8
  ret %TName_Bool* %"$$expr_167_1831"
}

declare %Uint32 @_mul_Uint32(%Uint32, %Uint32)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

declare %Int32 @_mul_Int32(%Int32, %Int32)

declare %TName_Bool* @_eq_Int32(i8*, %Int32, %Int32)

declare %Int64 @_mul_Int64(%Int64, %Int64)

declare %TName_Bool* @_eq_Int64(i8*, %Int64, %Int64)

declare %Uint64 @_mul_Uint64(%Uint64, %Uint64)

declare %TName_Bool* @_eq_Uint64(i8*, %Uint64, %Uint64)

declare %Uint128 @_mul_Uint128(%Uint128, %Uint128)

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare %Int128 @_mul_Int128(%Int128, %Int128)

declare %TName_Bool* @_eq_Int128(i8*, %Int128, %Int128)

declare %Int256* @_mul_Int256(i8*, %Int256*, %Int256*)

declare %TName_Bool* @_eq_Int256(i8*, %Int256*, %Int256*)

declare %Uint256* @_mul_Uint256(i8*, %Uint256*, %Uint256*)

declare %TName_Bool* @_eq_Uint256(i8*, %Uint256*, %Uint256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_1832" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1833" = bitcast %TName_Bool* %"$exprval_1832" to i8*
  %"$execptr_load_1834" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1834", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_200", i8* %"$memvoidcast_1833")
  ret void
}
