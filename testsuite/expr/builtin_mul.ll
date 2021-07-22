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
%"$ParamDescr_2079" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2080" = type { %ParamDescrString, i32, %"$ParamDescr_2079"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_2079"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2080"] zeroinitializer
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
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_167" = alloca %TName_Bool*, align 8
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %entry
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
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 20, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_313"
  %"$consume_319" = sub i64 %"$gasrem_315", 20
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %"$arg1_320" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_321" = load %Uint32, %Uint32* %arg2, align 4
  %"$mul_call_322" = call %Uint32 @_mul_Uint32(%Uint32 %"$arg1_320", %Uint32 %"$arg2_321")
  store %Uint32 %"$mul_call_322", %Uint32* %res, align 4
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_318"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_326"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  store %Uint32 { i32 3398492 }, %Uint32* %res_, align 4
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 1, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_331"
  %"$consume_337" = sub i64 %"$gasrem_333", 1
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 4, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_336"
  %"$consume_342" = sub i64 %"$gasrem_338", 4
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$execptr_load_343" = load i8*, i8** @_execptr, align 8
  %"$res_344" = load %Uint32, %Uint32* %res, align 4
  %"$res__345" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_346" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_343", %Uint32 %"$res_344", %Uint32 %"$res__345")
  store %TName_Bool* %"$eq_call_346", %TName_Bool** %test_, align 8
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_341"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %"$BoolUtils.andb_121" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_353" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_354" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_353", 0
  %"$BoolUtils.andb_envptr_355" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_353", 1
  %"$test_356" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_357" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_354"(i8* %"$BoolUtils.andb_envptr_355", %TName_Bool* %"$test_356")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_357", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_121", align 8
  %"$BoolUtils.andb_122" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_121_358" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_121", align 8
  %"$$BoolUtils.andb_121_fptr_359" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_121_358", 0
  %"$$BoolUtils.andb_121_envptr_360" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_121_358", 1
  %"$test__361" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_121_call_362" = call %TName_Bool* %"$$BoolUtils.andb_121_fptr_359"(i8* %"$$BoolUtils.andb_121_envptr_360", %TName_Bool* %"$test__361")
  store %TName_Bool* %"$$BoolUtils.andb_121_call_362", %TName_Bool** %"$BoolUtils.andb_122", align 8
  %"$$BoolUtils.andb_122_363" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_122", align 8
  store %TName_Bool* %"$$BoolUtils.andb_122_363", %TName_Bool** %"$test_0", align 8
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_351"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  %"$arg2_1" = alloca %Int32, align 8
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_367"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg2_1", align 4
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %"$arg1_2" = alloca %Int32, align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg1_2", align 4
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_387"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem, align 8
  %"$res_3" = alloca %Int32, align 8
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 20, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_392"
  %"$consume_398" = sub i64 %"$gasrem_394", 20
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %"$$arg1_2_399" = load %Int32, %Int32* %"$arg1_2", align 4
  %"$$arg2_1_400" = load %Int32, %Int32* %"$arg2_1", align 4
  %"$mul_call_401" = call %Int32 @_mul_Int32(%Int32 %"$$arg1_2_399", %Int32 %"$$arg2_1_400")
  store %Int32 %"$mul_call_401", %Int32* %"$res_3", align 4
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_397"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  %"$res__4" = alloca %Int32, align 8
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$have_gas_405"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$have_gas_405"
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  store %Int32 { i32 -3398492 }, %Int32* %"$res__4", align 4
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$have_gas_410"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$have_gas_410"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  %"$test__5" = alloca %TName_Bool*, align 8
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 4, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_415"
  %"$consume_421" = sub i64 %"$gasrem_417", 4
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$execptr_load_422" = load i8*, i8** @_execptr, align 8
  %"$$res_3_423" = load %Int32, %Int32* %"$res_3", align 4
  %"$$res__4_424" = load %Int32, %Int32* %"$res__4", align 4
  %"$eq_call_425" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_422", %Int32 %"$$res_3_423", %Int32 %"$$res__4_424")
  store %TName_Bool* %"$eq_call_425", %TName_Bool** %"$test__5", align 8
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_420"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %"$BoolUtils.andb_123" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_432" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_433" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_432", 0
  %"$BoolUtils.andb_envptr_434" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_432", 1
  %"$$test_0_435" = load %TName_Bool*, %TName_Bool** %"$test_0", align 8
  %"$BoolUtils.andb_call_436" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_433"(i8* %"$BoolUtils.andb_envptr_434", %TName_Bool* %"$$test_0_435")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_436", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123", align 8
  %"$BoolUtils.andb_124" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_123_437" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_123", align 8
  %"$$BoolUtils.andb_123_fptr_438" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_437", 0
  %"$$BoolUtils.andb_123_envptr_439" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_123_437", 1
  %"$$test__5_440" = load %TName_Bool*, %TName_Bool** %"$test__5", align 8
  %"$$BoolUtils.andb_123_call_441" = call %TName_Bool* %"$$BoolUtils.andb_123_fptr_438"(i8* %"$$BoolUtils.andb_123_envptr_439", %TName_Bool* %"$$test__5_440")
  store %TName_Bool* %"$$BoolUtils.andb_123_call_441", %TName_Bool** %"$BoolUtils.andb_124", align 8
  %"$$BoolUtils.andb_124_442" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_124", align 8
  store %TName_Bool* %"$$BoolUtils.andb_124_442", %TName_Bool** %"$test_6", align 8
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_430"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %"$arg1_7" = alloca %Int64, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775806 }, %Int64* %"$arg1_7", align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$arg2_8" = alloca %Int64, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  store %Int64 { i64 -1 }, %Int64* %"$arg2_8", align 8
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_461"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %"$res_9" = alloca %Int64, align 8
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 20, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_471"
  %"$consume_477" = sub i64 %"$gasrem_473", 20
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %"$$arg1_7_478" = load %Int64, %Int64* %"$arg1_7", align 8
  %"$$arg2_8_479" = load %Int64, %Int64* %"$arg2_8", align 8
  %"$mul_call_480" = call %Int64 @_mul_Int64(%Int64 %"$$arg1_7_478", %Int64 %"$$arg2_8_479")
  store %Int64 %"$mul_call_480", %Int64* %"$res_9", align 8
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_476"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %"$res__10" = alloca %Int64, align 8
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %"$have_gas_484"
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775806 }, %Int64* %"$res__10", align 8
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 1, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$have_gas_489"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$have_gas_489"
  %"$consume_495" = sub i64 %"$gasrem_491", 1
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 4, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_494"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_494"
  %"$consume_500" = sub i64 %"$gasrem_496", 4
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %"$execptr_load_501" = load i8*, i8** @_execptr, align 8
  %"$$res_9_502" = load %Int64, %Int64* %"$res_9", align 8
  %"$$res__10_503" = load %Int64, %Int64* %"$res__10", align 8
  %"$eq_call_504" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_501", %Int64 %"$$res_9_502", %Int64 %"$$res__10_503")
  store %TName_Bool* %"$eq_call_504", %TName_Bool** %"$test__11", align 8
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_499"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_499"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$BoolUtils.andb_125" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_511" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_512" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_511", 0
  %"$BoolUtils.andb_envptr_513" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_511", 1
  %"$$test_6_514" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_515" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_512"(i8* %"$BoolUtils.andb_envptr_513", %TName_Bool* %"$$test_6_514")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_515", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_125", align 8
  %"$BoolUtils.andb_126" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_125_516" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_125", align 8
  %"$$BoolUtils.andb_125_fptr_517" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_125_516", 0
  %"$$BoolUtils.andb_125_envptr_518" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_125_516", 1
  %"$$test__11_519" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_125_call_520" = call %TName_Bool* %"$$BoolUtils.andb_125_fptr_517"(i8* %"$$BoolUtils.andb_125_envptr_518", %TName_Bool* %"$$test__11_519")
  store %TName_Bool* %"$$BoolUtils.andb_125_call_520", %TName_Bool** %"$BoolUtils.andb_126", align 8
  %"$$BoolUtils.andb_126_521" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_126", align 8
  store %TName_Bool* %"$$BoolUtils.andb_126_521", %TName_Bool** %"$test_12", align 8
  %"$gasrem_522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_523" = icmp ugt i64 1, %"$gasrem_522"
  br i1 %"$gascmp_523", label %"$out_of_gas_524", label %"$have_gas_525"

"$out_of_gas_524":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_525"

"$have_gas_525":                                  ; preds = %"$out_of_gas_524", %"$have_gas_509"
  %"$consume_526" = sub i64 %"$gasrem_522", 1
  store i64 %"$consume_526", i64* @_gasrem, align 8
  %"$arg2_13" = alloca %Uint64, align 8
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 1, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %"$have_gas_525"
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %"$have_gas_525"
  %"$consume_531" = sub i64 %"$gasrem_527", 1
  store i64 %"$consume_531", i64* @_gasrem, align 8
  store %Uint64 { i64 2147483647 }, %Uint64* %"$arg2_13", align 8
  %"$gasrem_532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_533" = icmp ugt i64 1, %"$gasrem_532"
  br i1 %"$gascmp_533", label %"$out_of_gas_534", label %"$have_gas_535"

"$out_of_gas_534":                                ; preds = %"$have_gas_530"
  call void @_out_of_gas()
  br label %"$have_gas_535"

"$have_gas_535":                                  ; preds = %"$out_of_gas_534", %"$have_gas_530"
  %"$consume_536" = sub i64 %"$gasrem_532", 1
  store i64 %"$consume_536", i64* @_gasrem, align 8
  %"$arg1_14" = alloca %Uint64, align 8
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 1, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_535"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_535"
  %"$consume_541" = sub i64 %"$gasrem_537", 1
  store i64 %"$consume_541", i64* @_gasrem, align 8
  store %Uint64 { i64 2147483647 }, %Uint64* %"$arg1_14", align 8
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_540"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$res_15" = alloca %Uint64, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 20, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_550"
  %"$consume_556" = sub i64 %"$gasrem_552", 20
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$$arg1_14_557" = load %Uint64, %Uint64* %"$arg1_14", align 8
  %"$$arg2_13_558" = load %Uint64, %Uint64* %"$arg2_13", align 8
  %"$mul_call_559" = call %Uint64 @_mul_Uint64(%Uint64 %"$$arg1_14_557", %Uint64 %"$$arg2_13_558")
  store %Uint64 %"$mul_call_559", %Uint64* %"$res_15", align 8
  %"$gasrem_560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_561" = icmp ugt i64 1, %"$gasrem_560"
  br i1 %"$gascmp_561", label %"$out_of_gas_562", label %"$have_gas_563"

"$out_of_gas_562":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_563"

"$have_gas_563":                                  ; preds = %"$out_of_gas_562", %"$have_gas_555"
  %"$consume_564" = sub i64 %"$gasrem_560", 1
  store i64 %"$consume_564", i64* @_gasrem, align 8
  %"$res__16" = alloca %Uint64, align 8
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 1, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %"$have_gas_563"
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %"$have_gas_563"
  %"$consume_569" = sub i64 %"$gasrem_565", 1
  store i64 %"$consume_569", i64* @_gasrem, align 8
  store %Uint64 { i64 4611686014132420609 }, %Uint64* %"$res__16", align 8
  %"$gasrem_570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_571" = icmp ugt i64 1, %"$gasrem_570"
  br i1 %"$gascmp_571", label %"$out_of_gas_572", label %"$have_gas_573"

"$out_of_gas_572":                                ; preds = %"$have_gas_568"
  call void @_out_of_gas()
  br label %"$have_gas_573"

"$have_gas_573":                                  ; preds = %"$out_of_gas_572", %"$have_gas_568"
  %"$consume_574" = sub i64 %"$gasrem_570", 1
  store i64 %"$consume_574", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 4, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$have_gas_573"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$have_gas_573"
  %"$consume_579" = sub i64 %"$gasrem_575", 4
  store i64 %"$consume_579", i64* @_gasrem, align 8
  %"$execptr_load_580" = load i8*, i8** @_execptr, align 8
  %"$$res_15_581" = load %Uint64, %Uint64* %"$res_15", align 8
  %"$$res__16_582" = load %Uint64, %Uint64* %"$res__16", align 8
  %"$eq_call_583" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_580", %Uint64 %"$$res_15_581", %Uint64 %"$$res__16_582")
  store %TName_Bool* %"$eq_call_583", %TName_Bool** %"$test__17", align 8
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_578"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_578"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %"$BoolUtils.andb_127" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_590" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_591" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_590", 0
  %"$BoolUtils.andb_envptr_592" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_590", 1
  %"$$test_12_593" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_594" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_591"(i8* %"$BoolUtils.andb_envptr_592", %TName_Bool* %"$$test_12_593")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_594", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8
  %"$BoolUtils.andb_128" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_127_595" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8
  %"$$BoolUtils.andb_127_fptr_596" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_595", 0
  %"$$BoolUtils.andb_127_envptr_597" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_595", 1
  %"$$test__17_598" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_127_call_599" = call %TName_Bool* %"$$BoolUtils.andb_127_fptr_596"(i8* %"$$BoolUtils.andb_127_envptr_597", %TName_Bool* %"$$test__17_598")
  store %TName_Bool* %"$$BoolUtils.andb_127_call_599", %TName_Bool** %"$BoolUtils.andb_128", align 8
  %"$$BoolUtils.andb_128_600" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_128", align 8
  store %TName_Bool* %"$$BoolUtils.andb_128_600", %TName_Bool** %"$test_18", align 8
  %"$gasrem_601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_602" = icmp ugt i64 1, %"$gasrem_601"
  br i1 %"$gascmp_602", label %"$out_of_gas_603", label %"$have_gas_604"

"$out_of_gas_603":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_604"

"$have_gas_604":                                  ; preds = %"$out_of_gas_603", %"$have_gas_588"
  %"$consume_605" = sub i64 %"$gasrem_601", 1
  store i64 %"$consume_605", i64* @_gasrem, align 8
  %"$arg1_19" = alloca %Uint128, align 8
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 1, %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %"$have_gas_604"
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %"$have_gas_604"
  %"$consume_610" = sub i64 %"$gasrem_606", 1
  store i64 %"$consume_610", i64* @_gasrem, align 8
  store %Uint128 { i128 9223372036854775806 }, %Uint128* %"$arg1_19", align 8
  %"$gasrem_611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_612" = icmp ugt i64 1, %"$gasrem_611"
  br i1 %"$gascmp_612", label %"$out_of_gas_613", label %"$have_gas_614"

"$out_of_gas_613":                                ; preds = %"$have_gas_609"
  call void @_out_of_gas()
  br label %"$have_gas_614"

"$have_gas_614":                                  ; preds = %"$out_of_gas_613", %"$have_gas_609"
  %"$consume_615" = sub i64 %"$gasrem_611", 1
  store i64 %"$consume_615", i64* @_gasrem, align 8
  %"$arg2_20" = alloca %Uint128, align 8
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %"$have_gas_614"
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %"$have_gas_614"
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  store %Uint128 { i128 9223372036854775806 }, %Uint128* %"$arg2_20", align 8
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_619"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_627" = icmp ugt i64 1, %"$gasrem_626"
  br i1 %"$gascmp_627", label %"$out_of_gas_628", label %"$have_gas_629"

"$out_of_gas_628":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_629"

"$have_gas_629":                                  ; preds = %"$out_of_gas_628", %"$have_gas_624"
  %"$consume_630" = sub i64 %"$gasrem_626", 1
  store i64 %"$consume_630", i64* @_gasrem, align 8
  %"$res_21" = alloca %Uint128, align 8
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 40, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_629"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_629"
  %"$consume_636" = sub i64 %"$gasrem_632", 40
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %"$$arg1_19_637" = load %Uint128, %Uint128* %"$arg1_19", align 8
  %"$$arg2_20_638" = load %Uint128, %Uint128* %"$arg2_20", align 8
  %"$mul_call_639" = call %Uint128 @_mul_Uint128(%Uint128 %"$$arg1_19_637", %Uint128 %"$$arg2_20_638")
  store %Uint128 %"$mul_call_639", %Uint128* %"$res_21", align 8
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$have_gas_635"
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  %"$res__22" = alloca %Uint128, align 8
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_643"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_643"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  store %Uint128 { i128 85070591730234615828950163710522949636 }, %Uint128* %"$res__22", align 8
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 1, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$have_gas_648"
  %"$consume_654" = sub i64 %"$gasrem_650", 1
  store i64 %"$consume_654", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  %"$gasrem_656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_657" = icmp ugt i64 8, %"$gasrem_656"
  br i1 %"$gascmp_657", label %"$out_of_gas_658", label %"$have_gas_659"

"$out_of_gas_658":                                ; preds = %"$have_gas_653"
  call void @_out_of_gas()
  br label %"$have_gas_659"

"$have_gas_659":                                  ; preds = %"$out_of_gas_658", %"$have_gas_653"
  %"$consume_660" = sub i64 %"$gasrem_656", 8
  store i64 %"$consume_660", i64* @_gasrem, align 8
  %"$execptr_load_661" = load i8*, i8** @_execptr, align 8
  %"$$res_21_662" = load %Uint128, %Uint128* %"$res_21", align 8
  %"$$res__22_663" = load %Uint128, %Uint128* %"$res__22", align 8
  %"$eq_call_664" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_661", %Uint128 %"$$res_21_662", %Uint128 %"$$res__22_663")
  store %TName_Bool* %"$eq_call_664", %TName_Bool** %"$test__23", align 8
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_659"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_659"
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$BoolUtils.andb_129" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_671" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_672" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_671", 0
  %"$BoolUtils.andb_envptr_673" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_671", 1
  %"$$test_18_674" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_675" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_672"(i8* %"$BoolUtils.andb_envptr_673", %TName_Bool* %"$$test_18_674")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_675", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_129", align 8
  %"$BoolUtils.andb_130" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_129_676" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_129", align 8
  %"$$BoolUtils.andb_129_fptr_677" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_129_676", 0
  %"$$BoolUtils.andb_129_envptr_678" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_129_676", 1
  %"$$test__23_679" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_129_call_680" = call %TName_Bool* %"$$BoolUtils.andb_129_fptr_677"(i8* %"$$BoolUtils.andb_129_envptr_678", %TName_Bool* %"$$test__23_679")
  store %TName_Bool* %"$$BoolUtils.andb_129_call_680", %TName_Bool** %"$BoolUtils.andb_130", align 8
  %"$$BoolUtils.andb_130_681" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_130", align 8
  store %TName_Bool* %"$$BoolUtils.andb_130_681", %TName_Bool** %"$test_24", align 8
  %"$gasrem_682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_683" = icmp ugt i64 1, %"$gasrem_682"
  br i1 %"$gascmp_683", label %"$out_of_gas_684", label %"$have_gas_685"

"$out_of_gas_684":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_685"

"$have_gas_685":                                  ; preds = %"$out_of_gas_684", %"$have_gas_669"
  %"$consume_686" = sub i64 %"$gasrem_682", 1
  store i64 %"$consume_686", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Int128, align 8
  %"$gasrem_687" = load i64, i64* @_gasrem, align 8
  %"$gascmp_688" = icmp ugt i64 1, %"$gasrem_687"
  br i1 %"$gascmp_688", label %"$out_of_gas_689", label %"$have_gas_690"

"$out_of_gas_689":                                ; preds = %"$have_gas_685"
  call void @_out_of_gas()
  br label %"$have_gas_690"

"$have_gas_690":                                  ; preds = %"$out_of_gas_689", %"$have_gas_685"
  %"$consume_691" = sub i64 %"$gasrem_687", 1
  store i64 %"$consume_691", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_25", align 8
  %"$gasrem_692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_693" = icmp ugt i64 1, %"$gasrem_692"
  br i1 %"$gascmp_693", label %"$out_of_gas_694", label %"$have_gas_695"

"$out_of_gas_694":                                ; preds = %"$have_gas_690"
  call void @_out_of_gas()
  br label %"$have_gas_695"

"$have_gas_695":                                  ; preds = %"$out_of_gas_694", %"$have_gas_690"
  %"$consume_696" = sub i64 %"$gasrem_692", 1
  store i64 %"$consume_696", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Int128, align 8
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 1, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %"$have_gas_695"
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %"$have_gas_695"
  %"$consume_701" = sub i64 %"$gasrem_697", 1
  store i64 %"$consume_701", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg2_26", align 8
  %"$gasrem_702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_703" = icmp ugt i64 1, %"$gasrem_702"
  br i1 %"$gascmp_703", label %"$out_of_gas_704", label %"$have_gas_705"

"$out_of_gas_704":                                ; preds = %"$have_gas_700"
  call void @_out_of_gas()
  br label %"$have_gas_705"

"$have_gas_705":                                  ; preds = %"$out_of_gas_704", %"$have_gas_700"
  %"$consume_706" = sub i64 %"$gasrem_702", 1
  store i64 %"$consume_706", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_708" = icmp ugt i64 1, %"$gasrem_707"
  br i1 %"$gascmp_708", label %"$out_of_gas_709", label %"$have_gas_710"

"$out_of_gas_709":                                ; preds = %"$have_gas_705"
  call void @_out_of_gas()
  br label %"$have_gas_710"

"$have_gas_710":                                  ; preds = %"$out_of_gas_709", %"$have_gas_705"
  %"$consume_711" = sub i64 %"$gasrem_707", 1
  store i64 %"$consume_711", i64* @_gasrem, align 8
  %"$res_27" = alloca %Int128, align 8
  %"$gasrem_713" = load i64, i64* @_gasrem, align 8
  %"$gascmp_714" = icmp ugt i64 40, %"$gasrem_713"
  br i1 %"$gascmp_714", label %"$out_of_gas_715", label %"$have_gas_716"

"$out_of_gas_715":                                ; preds = %"$have_gas_710"
  call void @_out_of_gas()
  br label %"$have_gas_716"

"$have_gas_716":                                  ; preds = %"$out_of_gas_715", %"$have_gas_710"
  %"$consume_717" = sub i64 %"$gasrem_713", 40
  store i64 %"$consume_717", i64* @_gasrem, align 8
  %"$$arg1_25_718" = load %Int128, %Int128* %"$arg1_25", align 8
  %"$$arg2_26_719" = load %Int128, %Int128* %"$arg2_26", align 8
  %"$mul_call_720" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_25_718", %Int128 %"$$arg2_26_719")
  store %Int128 %"$mul_call_720", %Int128* %"$res_27", align 8
  %"$gasrem_721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_722" = icmp ugt i64 1, %"$gasrem_721"
  br i1 %"$gascmp_722", label %"$out_of_gas_723", label %"$have_gas_724"

"$out_of_gas_723":                                ; preds = %"$have_gas_716"
  call void @_out_of_gas()
  br label %"$have_gas_724"

"$have_gas_724":                                  ; preds = %"$out_of_gas_723", %"$have_gas_716"
  %"$consume_725" = sub i64 %"$gasrem_721", 1
  store i64 %"$consume_725", i64* @_gasrem, align 8
  %"$res__28" = alloca %Int128, align 8
  %"$gasrem_726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_727" = icmp ugt i64 1, %"$gasrem_726"
  br i1 %"$gascmp_727", label %"$out_of_gas_728", label %"$have_gas_729"

"$out_of_gas_728":                                ; preds = %"$have_gas_724"
  call void @_out_of_gas()
  br label %"$have_gas_729"

"$have_gas_729":                                  ; preds = %"$out_of_gas_728", %"$have_gas_724"
  %"$consume_730" = sub i64 %"$gasrem_726", 1
  store i64 %"$consume_730", i64* @_gasrem, align 8
  store %Int128 { i128 85070591730234615828950163710522949636 }, %Int128* %"$res__28", align 8
  %"$gasrem_731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_732" = icmp ugt i64 1, %"$gasrem_731"
  br i1 %"$gascmp_732", label %"$out_of_gas_733", label %"$have_gas_734"

"$out_of_gas_733":                                ; preds = %"$have_gas_729"
  call void @_out_of_gas()
  br label %"$have_gas_734"

"$have_gas_734":                                  ; preds = %"$out_of_gas_733", %"$have_gas_729"
  %"$consume_735" = sub i64 %"$gasrem_731", 1
  store i64 %"$consume_735", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  %"$gasrem_737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_738" = icmp ugt i64 8, %"$gasrem_737"
  br i1 %"$gascmp_738", label %"$out_of_gas_739", label %"$have_gas_740"

"$out_of_gas_739":                                ; preds = %"$have_gas_734"
  call void @_out_of_gas()
  br label %"$have_gas_740"

"$have_gas_740":                                  ; preds = %"$out_of_gas_739", %"$have_gas_734"
  %"$consume_741" = sub i64 %"$gasrem_737", 8
  store i64 %"$consume_741", i64* @_gasrem, align 8
  %"$execptr_load_742" = load i8*, i8** @_execptr, align 8
  %"$$res_27_743" = load %Int128, %Int128* %"$res_27", align 8
  %"$$res__28_744" = load %Int128, %Int128* %"$res__28", align 8
  %"$eq_call_745" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_742", %Int128 %"$$res_27_743", %Int128 %"$$res__28_744")
  store %TName_Bool* %"$eq_call_745", %TName_Bool** %"$test__29", align 8
  %"$gasrem_747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_748" = icmp ugt i64 1, %"$gasrem_747"
  br i1 %"$gascmp_748", label %"$out_of_gas_749", label %"$have_gas_750"

"$out_of_gas_749":                                ; preds = %"$have_gas_740"
  call void @_out_of_gas()
  br label %"$have_gas_750"

"$have_gas_750":                                  ; preds = %"$out_of_gas_749", %"$have_gas_740"
  %"$consume_751" = sub i64 %"$gasrem_747", 1
  store i64 %"$consume_751", i64* @_gasrem, align 8
  %"$BoolUtils.andb_131" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_752" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_753" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_752", 0
  %"$BoolUtils.andb_envptr_754" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_752", 1
  %"$$test_24_755" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_756" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_753"(i8* %"$BoolUtils.andb_envptr_754", %TName_Bool* %"$$test_24_755")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_756", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_131", align 8
  %"$BoolUtils.andb_132" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_131_757" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_131", align 8
  %"$$BoolUtils.andb_131_fptr_758" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_131_757", 0
  %"$$BoolUtils.andb_131_envptr_759" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_131_757", 1
  %"$$test__29_760" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_131_call_761" = call %TName_Bool* %"$$BoolUtils.andb_131_fptr_758"(i8* %"$$BoolUtils.andb_131_envptr_759", %TName_Bool* %"$$test__29_760")
  store %TName_Bool* %"$$BoolUtils.andb_131_call_761", %TName_Bool** %"$BoolUtils.andb_132", align 8
  %"$$BoolUtils.andb_132_762" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_132", align 8
  store %TName_Bool* %"$$BoolUtils.andb_132_762", %TName_Bool** %"$test_30", align 8
  %"$gasrem_763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_764" = icmp ugt i64 1, %"$gasrem_763"
  br i1 %"$gascmp_764", label %"$out_of_gas_765", label %"$have_gas_766"

"$out_of_gas_765":                                ; preds = %"$have_gas_750"
  call void @_out_of_gas()
  br label %"$have_gas_766"

"$have_gas_766":                                  ; preds = %"$out_of_gas_765", %"$have_gas_750"
  %"$consume_767" = sub i64 %"$gasrem_763", 1
  store i64 %"$consume_767", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Int128, align 8
  %"$gasrem_768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_769" = icmp ugt i64 1, %"$gasrem_768"
  br i1 %"$gascmp_769", label %"$out_of_gas_770", label %"$have_gas_771"

"$out_of_gas_770":                                ; preds = %"$have_gas_766"
  call void @_out_of_gas()
  br label %"$have_gas_771"

"$have_gas_771":                                  ; preds = %"$out_of_gas_770", %"$have_gas_766"
  %"$consume_772" = sub i64 %"$gasrem_768", 1
  store i64 %"$consume_772", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_31", align 8
  %"$gasrem_773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_774" = icmp ugt i64 1, %"$gasrem_773"
  br i1 %"$gascmp_774", label %"$out_of_gas_775", label %"$have_gas_776"

"$out_of_gas_775":                                ; preds = %"$have_gas_771"
  call void @_out_of_gas()
  br label %"$have_gas_776"

"$have_gas_776":                                  ; preds = %"$out_of_gas_775", %"$have_gas_771"
  %"$consume_777" = sub i64 %"$gasrem_773", 1
  store i64 %"$consume_777", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Int128, align 8
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_776"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_776"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  store %Int128 zeroinitializer, %Int128* %"$arg2_32", align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_781"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_789" = icmp ugt i64 1, %"$gasrem_788"
  br i1 %"$gascmp_789", label %"$out_of_gas_790", label %"$have_gas_791"

"$out_of_gas_790":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_791"

"$have_gas_791":                                  ; preds = %"$out_of_gas_790", %"$have_gas_786"
  %"$consume_792" = sub i64 %"$gasrem_788", 1
  store i64 %"$consume_792", i64* @_gasrem, align 8
  %"$res_33" = alloca %Int128, align 8
  %"$gasrem_794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_795" = icmp ugt i64 40, %"$gasrem_794"
  br i1 %"$gascmp_795", label %"$out_of_gas_796", label %"$have_gas_797"

"$out_of_gas_796":                                ; preds = %"$have_gas_791"
  call void @_out_of_gas()
  br label %"$have_gas_797"

"$have_gas_797":                                  ; preds = %"$out_of_gas_796", %"$have_gas_791"
  %"$consume_798" = sub i64 %"$gasrem_794", 40
  store i64 %"$consume_798", i64* @_gasrem, align 8
  %"$$arg1_31_799" = load %Int128, %Int128* %"$arg1_31", align 8
  %"$$arg2_32_800" = load %Int128, %Int128* %"$arg2_32", align 8
  %"$mul_call_801" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_31_799", %Int128 %"$$arg2_32_800")
  store %Int128 %"$mul_call_801", %Int128* %"$res_33", align 8
  %"$gasrem_802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_803" = icmp ugt i64 1, %"$gasrem_802"
  br i1 %"$gascmp_803", label %"$out_of_gas_804", label %"$have_gas_805"

"$out_of_gas_804":                                ; preds = %"$have_gas_797"
  call void @_out_of_gas()
  br label %"$have_gas_805"

"$have_gas_805":                                  ; preds = %"$out_of_gas_804", %"$have_gas_797"
  %"$consume_806" = sub i64 %"$gasrem_802", 1
  store i64 %"$consume_806", i64* @_gasrem, align 8
  %"$res__34" = alloca %Int128, align 8
  %"$gasrem_807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_808" = icmp ugt i64 1, %"$gasrem_807"
  br i1 %"$gascmp_808", label %"$out_of_gas_809", label %"$have_gas_810"

"$out_of_gas_809":                                ; preds = %"$have_gas_805"
  call void @_out_of_gas()
  br label %"$have_gas_810"

"$have_gas_810":                                  ; preds = %"$out_of_gas_809", %"$have_gas_805"
  %"$consume_811" = sub i64 %"$gasrem_807", 1
  store i64 %"$consume_811", i64* @_gasrem, align 8
  store %Int128 zeroinitializer, %Int128* %"$res__34", align 8
  %"$gasrem_812" = load i64, i64* @_gasrem, align 8
  %"$gascmp_813" = icmp ugt i64 1, %"$gasrem_812"
  br i1 %"$gascmp_813", label %"$out_of_gas_814", label %"$have_gas_815"

"$out_of_gas_814":                                ; preds = %"$have_gas_810"
  call void @_out_of_gas()
  br label %"$have_gas_815"

"$have_gas_815":                                  ; preds = %"$out_of_gas_814", %"$have_gas_810"
  %"$consume_816" = sub i64 %"$gasrem_812", 1
  store i64 %"$consume_816", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 8, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %"$have_gas_815"
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %"$have_gas_815"
  %"$consume_822" = sub i64 %"$gasrem_818", 8
  store i64 %"$consume_822", i64* @_gasrem, align 8
  %"$execptr_load_823" = load i8*, i8** @_execptr, align 8
  %"$$res_33_824" = load %Int128, %Int128* %"$res_33", align 8
  %"$$res__34_825" = load %Int128, %Int128* %"$res__34", align 8
  %"$eq_call_826" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_823", %Int128 %"$$res_33_824", %Int128 %"$$res__34_825")
  store %TName_Bool* %"$eq_call_826", %TName_Bool** %"$test__35", align 8
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$have_gas_821"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$have_gas_821"
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  %"$BoolUtils.andb_133" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_833" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_834" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_833", 0
  %"$BoolUtils.andb_envptr_835" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_833", 1
  %"$$test_30_836" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_837" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_834"(i8* %"$BoolUtils.andb_envptr_835", %TName_Bool* %"$$test_30_836")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_837", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8
  %"$BoolUtils.andb_134" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_133_838" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8
  %"$$BoolUtils.andb_133_fptr_839" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_838", 0
  %"$$BoolUtils.andb_133_envptr_840" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_838", 1
  %"$$test__35_841" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_133_call_842" = call %TName_Bool* %"$$BoolUtils.andb_133_fptr_839"(i8* %"$$BoolUtils.andb_133_envptr_840", %TName_Bool* %"$$test__35_841")
  store %TName_Bool* %"$$BoolUtils.andb_133_call_842", %TName_Bool** %"$BoolUtils.andb_134", align 8
  %"$$BoolUtils.andb_134_843" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_134", align 8
  store %TName_Bool* %"$$BoolUtils.andb_134_843", %TName_Bool** %"$test_36", align 8
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 1, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$have_gas_831"
  %"$consume_848" = sub i64 %"$gasrem_844", 1
  store i64 %"$consume_848", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Int128, align 8
  %"$gasrem_849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_850" = icmp ugt i64 1, %"$gasrem_849"
  br i1 %"$gascmp_850", label %"$out_of_gas_851", label %"$have_gas_852"

"$out_of_gas_851":                                ; preds = %"$have_gas_847"
  call void @_out_of_gas()
  br label %"$have_gas_852"

"$have_gas_852":                                  ; preds = %"$out_of_gas_851", %"$have_gas_847"
  %"$consume_853" = sub i64 %"$gasrem_849", 1
  store i64 %"$consume_853", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_37", align 8
  %"$gasrem_854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_855" = icmp ugt i64 1, %"$gasrem_854"
  br i1 %"$gascmp_855", label %"$out_of_gas_856", label %"$have_gas_857"

"$out_of_gas_856":                                ; preds = %"$have_gas_852"
  call void @_out_of_gas()
  br label %"$have_gas_857"

"$have_gas_857":                                  ; preds = %"$out_of_gas_856", %"$have_gas_852"
  %"$consume_858" = sub i64 %"$gasrem_854", 1
  store i64 %"$consume_858", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Int128, align 8
  %"$gasrem_859" = load i64, i64* @_gasrem, align 8
  %"$gascmp_860" = icmp ugt i64 1, %"$gasrem_859"
  br i1 %"$gascmp_860", label %"$out_of_gas_861", label %"$have_gas_862"

"$out_of_gas_861":                                ; preds = %"$have_gas_857"
  call void @_out_of_gas()
  br label %"$have_gas_862"

"$have_gas_862":                                  ; preds = %"$out_of_gas_861", %"$have_gas_857"
  %"$consume_863" = sub i64 %"$gasrem_859", 1
  store i64 %"$consume_863", i64* @_gasrem, align 8
  store %Int128 { i128 -1 }, %Int128* %"$arg2_38", align 8
  %"$gasrem_864" = load i64, i64* @_gasrem, align 8
  %"$gascmp_865" = icmp ugt i64 1, %"$gasrem_864"
  br i1 %"$gascmp_865", label %"$out_of_gas_866", label %"$have_gas_867"

"$out_of_gas_866":                                ; preds = %"$have_gas_862"
  call void @_out_of_gas()
  br label %"$have_gas_867"

"$have_gas_867":                                  ; preds = %"$out_of_gas_866", %"$have_gas_862"
  %"$consume_868" = sub i64 %"$gasrem_864", 1
  store i64 %"$consume_868", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_870" = icmp ugt i64 1, %"$gasrem_869"
  br i1 %"$gascmp_870", label %"$out_of_gas_871", label %"$have_gas_872"

"$out_of_gas_871":                                ; preds = %"$have_gas_867"
  call void @_out_of_gas()
  br label %"$have_gas_872"

"$have_gas_872":                                  ; preds = %"$out_of_gas_871", %"$have_gas_867"
  %"$consume_873" = sub i64 %"$gasrem_869", 1
  store i64 %"$consume_873", i64* @_gasrem, align 8
  %"$res_39" = alloca %Int128, align 8
  %"$gasrem_875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_876" = icmp ugt i64 40, %"$gasrem_875"
  br i1 %"$gascmp_876", label %"$out_of_gas_877", label %"$have_gas_878"

"$out_of_gas_877":                                ; preds = %"$have_gas_872"
  call void @_out_of_gas()
  br label %"$have_gas_878"

"$have_gas_878":                                  ; preds = %"$out_of_gas_877", %"$have_gas_872"
  %"$consume_879" = sub i64 %"$gasrem_875", 40
  store i64 %"$consume_879", i64* @_gasrem, align 8
  %"$$arg1_37_880" = load %Int128, %Int128* %"$arg1_37", align 8
  %"$$arg2_38_881" = load %Int128, %Int128* %"$arg2_38", align 8
  %"$mul_call_882" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_37_880", %Int128 %"$$arg2_38_881")
  store %Int128 %"$mul_call_882", %Int128* %"$res_39", align 8
  %"$gasrem_883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_884" = icmp ugt i64 1, %"$gasrem_883"
  br i1 %"$gascmp_884", label %"$out_of_gas_885", label %"$have_gas_886"

"$out_of_gas_885":                                ; preds = %"$have_gas_878"
  call void @_out_of_gas()
  br label %"$have_gas_886"

"$have_gas_886":                                  ; preds = %"$out_of_gas_885", %"$have_gas_878"
  %"$consume_887" = sub i64 %"$gasrem_883", 1
  store i64 %"$consume_887", i64* @_gasrem, align 8
  %"$res__40" = alloca %Int128, align 8
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 1, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %"$have_gas_886"
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %"$have_gas_886"
  %"$consume_892" = sub i64 %"$gasrem_888", 1
  store i64 %"$consume_892", i64* @_gasrem, align 8
  store %Int128 { i128 -9223372036854775806 }, %Int128* %"$res__40", align 8
  %"$gasrem_893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_894" = icmp ugt i64 1, %"$gasrem_893"
  br i1 %"$gascmp_894", label %"$out_of_gas_895", label %"$have_gas_896"

"$out_of_gas_895":                                ; preds = %"$have_gas_891"
  call void @_out_of_gas()
  br label %"$have_gas_896"

"$have_gas_896":                                  ; preds = %"$out_of_gas_895", %"$have_gas_891"
  %"$consume_897" = sub i64 %"$gasrem_893", 1
  store i64 %"$consume_897", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 8, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_896"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_896"
  %"$consume_903" = sub i64 %"$gasrem_899", 8
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %"$execptr_load_904" = load i8*, i8** @_execptr, align 8
  %"$$res_39_905" = load %Int128, %Int128* %"$res_39", align 8
  %"$$res__40_906" = load %Int128, %Int128* %"$res__40", align 8
  %"$eq_call_907" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_904", %Int128 %"$$res_39_905", %Int128 %"$$res__40_906")
  store %TName_Bool* %"$eq_call_907", %TName_Bool** %"$test__41", align 8
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 1, %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$have_gas_902"
  %"$consume_913" = sub i64 %"$gasrem_909", 1
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %"$BoolUtils.andb_135" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_914" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_915" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_914", 0
  %"$BoolUtils.andb_envptr_916" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_914", 1
  %"$$test_36_917" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_918" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_915"(i8* %"$BoolUtils.andb_envptr_916", %TName_Bool* %"$$test_36_917")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_918", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$BoolUtils.andb_136" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_135_919" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$$BoolUtils.andb_135_fptr_920" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_919", 0
  %"$$BoolUtils.andb_135_envptr_921" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_919", 1
  %"$$test__41_922" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_135_call_923" = call %TName_Bool* %"$$BoolUtils.andb_135_fptr_920"(i8* %"$$BoolUtils.andb_135_envptr_921", %TName_Bool* %"$$test__41_922")
  store %TName_Bool* %"$$BoolUtils.andb_135_call_923", %TName_Bool** %"$BoolUtils.andb_136", align 8
  %"$$BoolUtils.andb_136_924" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_136", align 8
  store %TName_Bool* %"$$BoolUtils.andb_136_924", %TName_Bool** %"$test_42", align 8
  %"$gasrem_925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_926" = icmp ugt i64 1, %"$gasrem_925"
  br i1 %"$gascmp_926", label %"$out_of_gas_927", label %"$have_gas_928"

"$out_of_gas_927":                                ; preds = %"$have_gas_912"
  call void @_out_of_gas()
  br label %"$have_gas_928"

"$have_gas_928":                                  ; preds = %"$out_of_gas_927", %"$have_gas_912"
  %"$consume_929" = sub i64 %"$gasrem_925", 1
  store i64 %"$consume_929", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Int256, align 8
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 1, %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$have_gas_928"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$have_gas_928"
  %"$consume_934" = sub i64 %"$gasrem_930", 1
  store i64 %"$consume_934", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775806 }, %Int256* %"$arg1_43", align 8
  %"$gasrem_935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_936" = icmp ugt i64 1, %"$gasrem_935"
  br i1 %"$gascmp_936", label %"$out_of_gas_937", label %"$have_gas_938"

"$out_of_gas_937":                                ; preds = %"$have_gas_933"
  call void @_out_of_gas()
  br label %"$have_gas_938"

"$have_gas_938":                                  ; preds = %"$out_of_gas_937", %"$have_gas_933"
  %"$consume_939" = sub i64 %"$gasrem_935", 1
  store i64 %"$consume_939", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Int256, align 8
  %"$gasrem_940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_941" = icmp ugt i64 1, %"$gasrem_940"
  br i1 %"$gascmp_941", label %"$out_of_gas_942", label %"$have_gas_943"

"$out_of_gas_942":                                ; preds = %"$have_gas_938"
  call void @_out_of_gas()
  br label %"$have_gas_943"

"$have_gas_943":                                  ; preds = %"$out_of_gas_942", %"$have_gas_938"
  %"$consume_944" = sub i64 %"$gasrem_940", 1
  store i64 %"$consume_944", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$arg2_44", align 8
  %"$gasrem_945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_946" = icmp ugt i64 1, %"$gasrem_945"
  br i1 %"$gascmp_946", label %"$out_of_gas_947", label %"$have_gas_948"

"$out_of_gas_947":                                ; preds = %"$have_gas_943"
  call void @_out_of_gas()
  br label %"$have_gas_948"

"$have_gas_948":                                  ; preds = %"$out_of_gas_947", %"$have_gas_943"
  %"$consume_949" = sub i64 %"$gasrem_945", 1
  store i64 %"$consume_949", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_951" = icmp ugt i64 1, %"$gasrem_950"
  br i1 %"$gascmp_951", label %"$out_of_gas_952", label %"$have_gas_953"

"$out_of_gas_952":                                ; preds = %"$have_gas_948"
  call void @_out_of_gas()
  br label %"$have_gas_953"

"$have_gas_953":                                  ; preds = %"$out_of_gas_952", %"$have_gas_948"
  %"$consume_954" = sub i64 %"$gasrem_950", 1
  store i64 %"$consume_954", i64* @_gasrem, align 8
  %"$res_45" = alloca %Int256, align 8
  %"$gasrem_956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_957" = icmp ugt i64 80, %"$gasrem_956"
  br i1 %"$gascmp_957", label %"$out_of_gas_958", label %"$have_gas_959"

"$out_of_gas_958":                                ; preds = %"$have_gas_953"
  call void @_out_of_gas()
  br label %"$have_gas_959"

"$have_gas_959":                                  ; preds = %"$out_of_gas_958", %"$have_gas_953"
  %"$consume_960" = sub i64 %"$gasrem_956", 80
  store i64 %"$consume_960", i64* @_gasrem, align 8
  %"$execptr_load_961" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_43_962" = alloca %Int256, align 8
  %"$$arg1_43_963" = load %Int256, %Int256* %"$arg1_43", align 8
  store %Int256 %"$$arg1_43_963", %Int256* %"$mul_$arg1_43_962", align 8
  %"$mul_$arg2_44_964" = alloca %Int256, align 8
  %"$$arg2_44_965" = load %Int256, %Int256* %"$arg2_44", align 8
  store %Int256 %"$$arg2_44_965", %Int256* %"$mul_$arg2_44_964", align 8
  %"$mul_call_966" = call %Int256* @_mul_Int256(i8* %"$execptr_load_961", %Int256* %"$mul_$arg1_43_962", %Int256* %"$mul_$arg2_44_964")
  %"$mul_968" = load %Int256, %Int256* %"$mul_call_966", align 8
  store %Int256 %"$mul_968", %Int256* %"$res_45", align 8
  %"$gasrem_969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_970" = icmp ugt i64 1, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %"$have_gas_959"
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %"$have_gas_959"
  %"$consume_973" = sub i64 %"$gasrem_969", 1
  store i64 %"$consume_973", i64* @_gasrem, align 8
  %"$res__46" = alloca %Int256, align 8
  %"$gasrem_974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_975" = icmp ugt i64 1, %"$gasrem_974"
  br i1 %"$gascmp_975", label %"$out_of_gas_976", label %"$have_gas_977"

"$out_of_gas_976":                                ; preds = %"$have_gas_972"
  call void @_out_of_gas()
  br label %"$have_gas_977"

"$have_gas_977":                                  ; preds = %"$out_of_gas_976", %"$have_gas_972"
  %"$consume_978" = sub i64 %"$gasrem_974", 1
  store i64 %"$consume_978", i64* @_gasrem, align 8
  store %Int256 { i256 -9223372036854775806 }, %Int256* %"$res__46", align 8
  %"$gasrem_979" = load i64, i64* @_gasrem, align 8
  %"$gascmp_980" = icmp ugt i64 1, %"$gasrem_979"
  br i1 %"$gascmp_980", label %"$out_of_gas_981", label %"$have_gas_982"

"$out_of_gas_981":                                ; preds = %"$have_gas_977"
  call void @_out_of_gas()
  br label %"$have_gas_982"

"$have_gas_982":                                  ; preds = %"$out_of_gas_981", %"$have_gas_977"
  %"$consume_983" = sub i64 %"$gasrem_979", 1
  store i64 %"$consume_983", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
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
  %"$eq_$res_45_991" = alloca %Int256, align 8
  %"$$res_45_992" = load %Int256, %Int256* %"$res_45", align 8
  store %Int256 %"$$res_45_992", %Int256* %"$eq_$res_45_991", align 8
  %"$eq_$res__46_993" = alloca %Int256, align 8
  %"$$res__46_994" = load %Int256, %Int256* %"$res__46", align 8
  store %Int256 %"$$res__46_994", %Int256* %"$eq_$res__46_993", align 8
  %"$eq_call_995" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_990", %Int256* %"$eq_$res_45_991", %Int256* %"$eq_$res__46_993")
  store %TName_Bool* %"$eq_call_995", %TName_Bool** %"$test__47", align 8
  %"$gasrem_997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_998" = icmp ugt i64 1, %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %"$have_gas_988"
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %"$have_gas_988"
  %"$consume_1001" = sub i64 %"$gasrem_997", 1
  store i64 %"$consume_1001", i64* @_gasrem, align 8
  %"$BoolUtils.andb_137" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1002" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1003" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1002", 0
  %"$BoolUtils.andb_envptr_1004" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1002", 1
  %"$$test_42_1005" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_1006" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1003"(i8* %"$BoolUtils.andb_envptr_1004", %TName_Bool* %"$$test_42_1005")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1006", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8
  %"$BoolUtils.andb_138" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_137_1007" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8
  %"$$BoolUtils.andb_137_fptr_1008" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_1007", 0
  %"$$BoolUtils.andb_137_envptr_1009" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_1007", 1
  %"$$test__47_1010" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_137_call_1011" = call %TName_Bool* %"$$BoolUtils.andb_137_fptr_1008"(i8* %"$$BoolUtils.andb_137_envptr_1009", %TName_Bool* %"$$test__47_1010")
  store %TName_Bool* %"$$BoolUtils.andb_137_call_1011", %TName_Bool** %"$BoolUtils.andb_138", align 8
  %"$$BoolUtils.andb_138_1012" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_138", align 8
  store %TName_Bool* %"$$BoolUtils.andb_138_1012", %TName_Bool** %"$test_48", align 8
  %"$gasrem_1013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1014" = icmp ugt i64 1, %"$gasrem_1013"
  br i1 %"$gascmp_1014", label %"$out_of_gas_1015", label %"$have_gas_1016"

"$out_of_gas_1015":                               ; preds = %"$have_gas_1000"
  call void @_out_of_gas()
  br label %"$have_gas_1016"

"$have_gas_1016":                                 ; preds = %"$out_of_gas_1015", %"$have_gas_1000"
  %"$consume_1017" = sub i64 %"$gasrem_1013", 1
  store i64 %"$consume_1017", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Int256, align 8
  %"$gasrem_1018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1019" = icmp ugt i64 1, %"$gasrem_1018"
  br i1 %"$gascmp_1019", label %"$out_of_gas_1020", label %"$have_gas_1021"

"$out_of_gas_1020":                               ; preds = %"$have_gas_1016"
  call void @_out_of_gas()
  br label %"$have_gas_1021"

"$have_gas_1021":                                 ; preds = %"$out_of_gas_1020", %"$have_gas_1016"
  %"$consume_1022" = sub i64 %"$gasrem_1018", 1
  store i64 %"$consume_1022", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775806 }, %Int256* %"$arg1_49", align 8
  %"$gasrem_1023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1024" = icmp ugt i64 1, %"$gasrem_1023"
  br i1 %"$gascmp_1024", label %"$out_of_gas_1025", label %"$have_gas_1026"

"$out_of_gas_1025":                               ; preds = %"$have_gas_1021"
  call void @_out_of_gas()
  br label %"$have_gas_1026"

"$have_gas_1026":                                 ; preds = %"$out_of_gas_1025", %"$have_gas_1021"
  %"$consume_1027" = sub i64 %"$gasrem_1023", 1
  store i64 %"$consume_1027", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Int256, align 8
  %"$gasrem_1028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1029" = icmp ugt i64 1, %"$gasrem_1028"
  br i1 %"$gascmp_1029", label %"$out_of_gas_1030", label %"$have_gas_1031"

"$out_of_gas_1030":                               ; preds = %"$have_gas_1026"
  call void @_out_of_gas()
  br label %"$have_gas_1031"

"$have_gas_1031":                                 ; preds = %"$out_of_gas_1030", %"$have_gas_1026"
  %"$consume_1032" = sub i64 %"$gasrem_1028", 1
  store i64 %"$consume_1032", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_50", align 8
  %"$gasrem_1033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1034" = icmp ugt i64 1, %"$gasrem_1033"
  br i1 %"$gascmp_1034", label %"$out_of_gas_1035", label %"$have_gas_1036"

"$out_of_gas_1035":                               ; preds = %"$have_gas_1031"
  call void @_out_of_gas()
  br label %"$have_gas_1036"

"$have_gas_1036":                                 ; preds = %"$out_of_gas_1035", %"$have_gas_1031"
  %"$consume_1037" = sub i64 %"$gasrem_1033", 1
  store i64 %"$consume_1037", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_1038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1039" = icmp ugt i64 1, %"$gasrem_1038"
  br i1 %"$gascmp_1039", label %"$out_of_gas_1040", label %"$have_gas_1041"

"$out_of_gas_1040":                               ; preds = %"$have_gas_1036"
  call void @_out_of_gas()
  br label %"$have_gas_1041"

"$have_gas_1041":                                 ; preds = %"$out_of_gas_1040", %"$have_gas_1036"
  %"$consume_1042" = sub i64 %"$gasrem_1038", 1
  store i64 %"$consume_1042", i64* @_gasrem, align 8
  %"$res_51" = alloca %Int256, align 8
  %"$gasrem_1044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1045" = icmp ugt i64 80, %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1041"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1041"
  %"$consume_1048" = sub i64 %"$gasrem_1044", 80
  store i64 %"$consume_1048", i64* @_gasrem, align 8
  %"$execptr_load_1049" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_49_1050" = alloca %Int256, align 8
  %"$$arg1_49_1051" = load %Int256, %Int256* %"$arg1_49", align 8
  store %Int256 %"$$arg1_49_1051", %Int256* %"$mul_$arg1_49_1050", align 8
  %"$mul_$arg2_50_1052" = alloca %Int256, align 8
  %"$$arg2_50_1053" = load %Int256, %Int256* %"$arg2_50", align 8
  store %Int256 %"$$arg2_50_1053", %Int256* %"$mul_$arg2_50_1052", align 8
  %"$mul_call_1054" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1049", %Int256* %"$mul_$arg1_49_1050", %Int256* %"$mul_$arg2_50_1052")
  %"$mul_1056" = load %Int256, %Int256* %"$mul_call_1054", align 8
  store %Int256 %"$mul_1056", %Int256* %"$res_51", align 8
  %"$gasrem_1057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1058" = icmp ugt i64 1, %"$gasrem_1057"
  br i1 %"$gascmp_1058", label %"$out_of_gas_1059", label %"$have_gas_1060"

"$out_of_gas_1059":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1060"

"$have_gas_1060":                                 ; preds = %"$out_of_gas_1059", %"$have_gas_1047"
  %"$consume_1061" = sub i64 %"$gasrem_1057", 1
  store i64 %"$consume_1061", i64* @_gasrem, align 8
  %"$res__52" = alloca %Int256, align 8
  %"$gasrem_1062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1063" = icmp ugt i64 1, %"$gasrem_1062"
  br i1 %"$gascmp_1063", label %"$out_of_gas_1064", label %"$have_gas_1065"

"$out_of_gas_1064":                               ; preds = %"$have_gas_1060"
  call void @_out_of_gas()
  br label %"$have_gas_1065"

"$have_gas_1065":                                 ; preds = %"$out_of_gas_1064", %"$have_gas_1060"
  %"$consume_1066" = sub i64 %"$gasrem_1062", 1
  store i64 %"$consume_1066", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__52", align 8
  %"$gasrem_1067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1068" = icmp ugt i64 1, %"$gasrem_1067"
  br i1 %"$gascmp_1068", label %"$out_of_gas_1069", label %"$have_gas_1070"

"$out_of_gas_1069":                               ; preds = %"$have_gas_1065"
  call void @_out_of_gas()
  br label %"$have_gas_1070"

"$have_gas_1070":                                 ; preds = %"$out_of_gas_1069", %"$have_gas_1065"
  %"$consume_1071" = sub i64 %"$gasrem_1067", 1
  store i64 %"$consume_1071", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
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
  %"$eq_$res_51_1079" = alloca %Int256, align 8
  %"$$res_51_1080" = load %Int256, %Int256* %"$res_51", align 8
  store %Int256 %"$$res_51_1080", %Int256* %"$eq_$res_51_1079", align 8
  %"$eq_$res__52_1081" = alloca %Int256, align 8
  %"$$res__52_1082" = load %Int256, %Int256* %"$res__52", align 8
  store %Int256 %"$$res__52_1082", %Int256* %"$eq_$res__52_1081", align 8
  %"$eq_call_1083" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1078", %Int256* %"$eq_$res_51_1079", %Int256* %"$eq_$res__52_1081")
  store %TName_Bool* %"$eq_call_1083", %TName_Bool** %"$test__53", align 8
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 1, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$have_gas_1076"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$have_gas_1076"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 1
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %"$BoolUtils.andb_139" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1090" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1091" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1090", 0
  %"$BoolUtils.andb_envptr_1092" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1090", 1
  %"$$test_48_1093" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_1094" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1091"(i8* %"$BoolUtils.andb_envptr_1092", %TName_Bool* %"$$test_48_1093")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1094", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$BoolUtils.andb_140" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_139_1095" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_fptr_1096" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_1095", 0
  %"$$BoolUtils.andb_139_envptr_1097" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_1095", 1
  %"$$test__53_1098" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_139_call_1099" = call %TName_Bool* %"$$BoolUtils.andb_139_fptr_1096"(i8* %"$$BoolUtils.andb_139_envptr_1097", %TName_Bool* %"$$test__53_1098")
  store %TName_Bool* %"$$BoolUtils.andb_139_call_1099", %TName_Bool** %"$BoolUtils.andb_140", align 8
  %"$$BoolUtils.andb_140_1100" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_140", align 8
  store %TName_Bool* %"$$BoolUtils.andb_140_1100", %TName_Bool** %"$test_54", align 8
  %"$gasrem_1101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1102" = icmp ugt i64 1, %"$gasrem_1101"
  br i1 %"$gascmp_1102", label %"$out_of_gas_1103", label %"$have_gas_1104"

"$out_of_gas_1103":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1104"

"$have_gas_1104":                                 ; preds = %"$out_of_gas_1103", %"$have_gas_1088"
  %"$consume_1105" = sub i64 %"$gasrem_1101", 1
  store i64 %"$consume_1105", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Int256, align 8
  %"$gasrem_1106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1107" = icmp ugt i64 1, %"$gasrem_1106"
  br i1 %"$gascmp_1107", label %"$out_of_gas_1108", label %"$have_gas_1109"

"$out_of_gas_1108":                               ; preds = %"$have_gas_1104"
  call void @_out_of_gas()
  br label %"$have_gas_1109"

"$have_gas_1109":                                 ; preds = %"$out_of_gas_1108", %"$have_gas_1104"
  %"$consume_1110" = sub i64 %"$gasrem_1106", 1
  store i64 %"$consume_1110", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105727 }, %Int256* %"$arg1_55", align 8
  %"$gasrem_1111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1112" = icmp ugt i64 1, %"$gasrem_1111"
  br i1 %"$gascmp_1112", label %"$out_of_gas_1113", label %"$have_gas_1114"

"$out_of_gas_1113":                               ; preds = %"$have_gas_1109"
  call void @_out_of_gas()
  br label %"$have_gas_1114"

"$have_gas_1114":                                 ; preds = %"$out_of_gas_1113", %"$have_gas_1109"
  %"$consume_1115" = sub i64 %"$gasrem_1111", 1
  store i64 %"$consume_1115", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Int256, align 8
  %"$gasrem_1116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1117" = icmp ugt i64 1, %"$gasrem_1116"
  br i1 %"$gascmp_1117", label %"$out_of_gas_1118", label %"$have_gas_1119"

"$out_of_gas_1118":                               ; preds = %"$have_gas_1114"
  call void @_out_of_gas()
  br label %"$have_gas_1119"

"$have_gas_1119":                                 ; preds = %"$out_of_gas_1118", %"$have_gas_1114"
  %"$consume_1120" = sub i64 %"$gasrem_1116", 1
  store i64 %"$consume_1120", i64* @_gasrem, align 8
  store %Int256 { i256 -170141183460469231731687303715884105728 }, %Int256* %"$arg2_56", align 8
  %"$gasrem_1121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1122" = icmp ugt i64 1, %"$gasrem_1121"
  br i1 %"$gascmp_1122", label %"$out_of_gas_1123", label %"$have_gas_1124"

"$out_of_gas_1123":                               ; preds = %"$have_gas_1119"
  call void @_out_of_gas()
  br label %"$have_gas_1124"

"$have_gas_1124":                                 ; preds = %"$out_of_gas_1123", %"$have_gas_1119"
  %"$consume_1125" = sub i64 %"$gasrem_1121", 1
  store i64 %"$consume_1125", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1127" = icmp ugt i64 1, %"$gasrem_1126"
  br i1 %"$gascmp_1127", label %"$out_of_gas_1128", label %"$have_gas_1129"

"$out_of_gas_1128":                               ; preds = %"$have_gas_1124"
  call void @_out_of_gas()
  br label %"$have_gas_1129"

"$have_gas_1129":                                 ; preds = %"$out_of_gas_1128", %"$have_gas_1124"
  %"$consume_1130" = sub i64 %"$gasrem_1126", 1
  store i64 %"$consume_1130", i64* @_gasrem, align 8
  %"$res_57" = alloca %Int256, align 8
  %"$gasrem_1132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1133" = icmp ugt i64 80, %"$gasrem_1132"
  br i1 %"$gascmp_1133", label %"$out_of_gas_1134", label %"$have_gas_1135"

"$out_of_gas_1134":                               ; preds = %"$have_gas_1129"
  call void @_out_of_gas()
  br label %"$have_gas_1135"

"$have_gas_1135":                                 ; preds = %"$out_of_gas_1134", %"$have_gas_1129"
  %"$consume_1136" = sub i64 %"$gasrem_1132", 80
  store i64 %"$consume_1136", i64* @_gasrem, align 8
  %"$execptr_load_1137" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_55_1138" = alloca %Int256, align 8
  %"$$arg1_55_1139" = load %Int256, %Int256* %"$arg1_55", align 8
  store %Int256 %"$$arg1_55_1139", %Int256* %"$mul_$arg1_55_1138", align 8
  %"$mul_$arg2_56_1140" = alloca %Int256, align 8
  %"$$arg2_56_1141" = load %Int256, %Int256* %"$arg2_56", align 8
  store %Int256 %"$$arg2_56_1141", %Int256* %"$mul_$arg2_56_1140", align 8
  %"$mul_call_1142" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1137", %Int256* %"$mul_$arg1_55_1138", %Int256* %"$mul_$arg2_56_1140")
  %"$mul_1144" = load %Int256, %Int256* %"$mul_call_1142", align 8
  store %Int256 %"$mul_1144", %Int256* %"$res_57", align 8
  %"$gasrem_1145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1146" = icmp ugt i64 1, %"$gasrem_1145"
  br i1 %"$gascmp_1146", label %"$out_of_gas_1147", label %"$have_gas_1148"

"$out_of_gas_1147":                               ; preds = %"$have_gas_1135"
  call void @_out_of_gas()
  br label %"$have_gas_1148"

"$have_gas_1148":                                 ; preds = %"$out_of_gas_1147", %"$have_gas_1135"
  %"$consume_1149" = sub i64 %"$gasrem_1145", 1
  store i64 %"$consume_1149", i64* @_gasrem, align 8
  %"$res__58" = alloca %Int256, align 8
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 1, %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1148"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1148"
  %"$consume_1154" = sub i64 %"$gasrem_1150", 1
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Int256* %"$res__58", align 8
  %"$gasrem_1155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1156" = icmp ugt i64 1, %"$gasrem_1155"
  br i1 %"$gascmp_1156", label %"$out_of_gas_1157", label %"$have_gas_1158"

"$out_of_gas_1157":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1158"

"$have_gas_1158":                                 ; preds = %"$out_of_gas_1157", %"$have_gas_1153"
  %"$consume_1159" = sub i64 %"$gasrem_1155", 1
  store i64 %"$consume_1159", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
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
  %"$eq_$res_57_1167" = alloca %Int256, align 8
  %"$$res_57_1168" = load %Int256, %Int256* %"$res_57", align 8
  store %Int256 %"$$res_57_1168", %Int256* %"$eq_$res_57_1167", align 8
  %"$eq_$res__58_1169" = alloca %Int256, align 8
  %"$$res__58_1170" = load %Int256, %Int256* %"$res__58", align 8
  store %Int256 %"$$res__58_1170", %Int256* %"$eq_$res__58_1169", align 8
  %"$eq_call_1171" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1166", %Int256* %"$eq_$res_57_1167", %Int256* %"$eq_$res__58_1169")
  store %TName_Bool* %"$eq_call_1171", %TName_Bool** %"$test__59", align 8
  %"$gasrem_1173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1174" = icmp ugt i64 1, %"$gasrem_1173"
  br i1 %"$gascmp_1174", label %"$out_of_gas_1175", label %"$have_gas_1176"

"$out_of_gas_1175":                               ; preds = %"$have_gas_1164"
  call void @_out_of_gas()
  br label %"$have_gas_1176"

"$have_gas_1176":                                 ; preds = %"$out_of_gas_1175", %"$have_gas_1164"
  %"$consume_1177" = sub i64 %"$gasrem_1173", 1
  store i64 %"$consume_1177", i64* @_gasrem, align 8
  %"$BoolUtils.andb_141" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1178" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1179" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1178", 0
  %"$BoolUtils.andb_envptr_1180" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1178", 1
  %"$$test_54_1181" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1182" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1179"(i8* %"$BoolUtils.andb_envptr_1180", %TName_Bool* %"$$test_54_1181")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1182", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$BoolUtils.andb_142" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_141_1183" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$$BoolUtils.andb_141_fptr_1184" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_1183", 0
  %"$$BoolUtils.andb_141_envptr_1185" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_1183", 1
  %"$$test__59_1186" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_141_call_1187" = call %TName_Bool* %"$$BoolUtils.andb_141_fptr_1184"(i8* %"$$BoolUtils.andb_141_envptr_1185", %TName_Bool* %"$$test__59_1186")
  store %TName_Bool* %"$$BoolUtils.andb_141_call_1187", %TName_Bool** %"$BoolUtils.andb_142", align 8
  %"$$BoolUtils.andb_142_1188" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_142", align 8
  store %TName_Bool* %"$$BoolUtils.andb_142_1188", %TName_Bool** %"$test_60", align 8
  %"$gasrem_1189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1190" = icmp ugt i64 1, %"$gasrem_1189"
  br i1 %"$gascmp_1190", label %"$out_of_gas_1191", label %"$have_gas_1192"

"$out_of_gas_1191":                               ; preds = %"$have_gas_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1192"

"$have_gas_1192":                                 ; preds = %"$out_of_gas_1191", %"$have_gas_1176"
  %"$consume_1193" = sub i64 %"$gasrem_1189", 1
  store i64 %"$consume_1193", i64* @_gasrem, align 8
  %"$arg1_61" = alloca %Int256, align 8
  %"$gasrem_1194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1195" = icmp ugt i64 1, %"$gasrem_1194"
  br i1 %"$gascmp_1195", label %"$out_of_gas_1196", label %"$have_gas_1197"

"$out_of_gas_1196":                               ; preds = %"$have_gas_1192"
  call void @_out_of_gas()
  br label %"$have_gas_1197"

"$have_gas_1197":                                 ; preds = %"$out_of_gas_1196", %"$have_gas_1192"
  %"$consume_1198" = sub i64 %"$gasrem_1194", 1
  store i64 %"$consume_1198", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105727 }, %Int256* %"$arg1_61", align 8
  %"$gasrem_1199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1200" = icmp ugt i64 1, %"$gasrem_1199"
  br i1 %"$gascmp_1200", label %"$out_of_gas_1201", label %"$have_gas_1202"

"$out_of_gas_1201":                               ; preds = %"$have_gas_1197"
  call void @_out_of_gas()
  br label %"$have_gas_1202"

"$have_gas_1202":                                 ; preds = %"$out_of_gas_1201", %"$have_gas_1197"
  %"$consume_1203" = sub i64 %"$gasrem_1199", 1
  store i64 %"$consume_1203", i64* @_gasrem, align 8
  %"$arg2_62" = alloca %Int256, align 8
  %"$gasrem_1204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1205" = icmp ugt i64 1, %"$gasrem_1204"
  br i1 %"$gascmp_1205", label %"$out_of_gas_1206", label %"$have_gas_1207"

"$out_of_gas_1206":                               ; preds = %"$have_gas_1202"
  call void @_out_of_gas()
  br label %"$have_gas_1207"

"$have_gas_1207":                                 ; preds = %"$out_of_gas_1206", %"$have_gas_1202"
  %"$consume_1208" = sub i64 %"$gasrem_1204", 1
  store i64 %"$consume_1208", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105728 }, %Int256* %"$arg2_62", align 8
  %"$gasrem_1209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1210" = icmp ugt i64 1, %"$gasrem_1209"
  br i1 %"$gascmp_1210", label %"$out_of_gas_1211", label %"$have_gas_1212"

"$out_of_gas_1211":                               ; preds = %"$have_gas_1207"
  call void @_out_of_gas()
  br label %"$have_gas_1212"

"$have_gas_1212":                                 ; preds = %"$out_of_gas_1211", %"$have_gas_1207"
  %"$consume_1213" = sub i64 %"$gasrem_1209", 1
  store i64 %"$consume_1213", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1215" = icmp ugt i64 1, %"$gasrem_1214"
  br i1 %"$gascmp_1215", label %"$out_of_gas_1216", label %"$have_gas_1217"

"$out_of_gas_1216":                               ; preds = %"$have_gas_1212"
  call void @_out_of_gas()
  br label %"$have_gas_1217"

"$have_gas_1217":                                 ; preds = %"$out_of_gas_1216", %"$have_gas_1212"
  %"$consume_1218" = sub i64 %"$gasrem_1214", 1
  store i64 %"$consume_1218", i64* @_gasrem, align 8
  %"$res_63" = alloca %Int256, align 8
  %"$gasrem_1220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1221" = icmp ugt i64 80, %"$gasrem_1220"
  br i1 %"$gascmp_1221", label %"$out_of_gas_1222", label %"$have_gas_1223"

"$out_of_gas_1222":                               ; preds = %"$have_gas_1217"
  call void @_out_of_gas()
  br label %"$have_gas_1223"

"$have_gas_1223":                                 ; preds = %"$out_of_gas_1222", %"$have_gas_1217"
  %"$consume_1224" = sub i64 %"$gasrem_1220", 80
  store i64 %"$consume_1224", i64* @_gasrem, align 8
  %"$execptr_load_1225" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_61_1226" = alloca %Int256, align 8
  %"$$arg1_61_1227" = load %Int256, %Int256* %"$arg1_61", align 8
  store %Int256 %"$$arg1_61_1227", %Int256* %"$mul_$arg1_61_1226", align 8
  %"$mul_$arg2_62_1228" = alloca %Int256, align 8
  %"$$arg2_62_1229" = load %Int256, %Int256* %"$arg2_62", align 8
  store %Int256 %"$$arg2_62_1229", %Int256* %"$mul_$arg2_62_1228", align 8
  %"$mul_call_1230" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1225", %Int256* %"$mul_$arg1_61_1226", %Int256* %"$mul_$arg2_62_1228")
  %"$mul_1232" = load %Int256, %Int256* %"$mul_call_1230", align 8
  store %Int256 %"$mul_1232", %Int256* %"$res_63", align 8
  %"$gasrem_1233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1234" = icmp ugt i64 1, %"$gasrem_1233"
  br i1 %"$gascmp_1234", label %"$out_of_gas_1235", label %"$have_gas_1236"

"$out_of_gas_1235":                               ; preds = %"$have_gas_1223"
  call void @_out_of_gas()
  br label %"$have_gas_1236"

"$have_gas_1236":                                 ; preds = %"$out_of_gas_1235", %"$have_gas_1223"
  %"$consume_1237" = sub i64 %"$gasrem_1233", 1
  store i64 %"$consume_1237", i64* @_gasrem, align 8
  %"$res__64" = alloca %Int256, align 8
  %"$gasrem_1238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1239" = icmp ugt i64 1, %"$gasrem_1238"
  br i1 %"$gascmp_1239", label %"$out_of_gas_1240", label %"$have_gas_1241"

"$out_of_gas_1240":                               ; preds = %"$have_gas_1236"
  call void @_out_of_gas()
  br label %"$have_gas_1241"

"$have_gas_1241":                                 ; preds = %"$out_of_gas_1240", %"$have_gas_1236"
  %"$consume_1242" = sub i64 %"$gasrem_1238", 1
  store i64 %"$consume_1242", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Int256* %"$res__64", align 8
  %"$gasrem_1243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1244" = icmp ugt i64 1, %"$gasrem_1243"
  br i1 %"$gascmp_1244", label %"$out_of_gas_1245", label %"$have_gas_1246"

"$out_of_gas_1245":                               ; preds = %"$have_gas_1241"
  call void @_out_of_gas()
  br label %"$have_gas_1246"

"$have_gas_1246":                                 ; preds = %"$out_of_gas_1245", %"$have_gas_1241"
  %"$consume_1247" = sub i64 %"$gasrem_1243", 1
  store i64 %"$consume_1247", i64* @_gasrem, align 8
  %"$test__65" = alloca %TName_Bool*, align 8
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
  %"$eq_$res_63_1255" = alloca %Int256, align 8
  %"$$res_63_1256" = load %Int256, %Int256* %"$res_63", align 8
  store %Int256 %"$$res_63_1256", %Int256* %"$eq_$res_63_1255", align 8
  %"$eq_$res__64_1257" = alloca %Int256, align 8
  %"$$res__64_1258" = load %Int256, %Int256* %"$res__64", align 8
  store %Int256 %"$$res__64_1258", %Int256* %"$eq_$res__64_1257", align 8
  %"$eq_call_1259" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1254", %Int256* %"$eq_$res_63_1255", %Int256* %"$eq_$res__64_1257")
  store %TName_Bool* %"$eq_call_1259", %TName_Bool** %"$test__65", align 8
  %"$gasrem_1261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1262" = icmp ugt i64 1, %"$gasrem_1261"
  br i1 %"$gascmp_1262", label %"$out_of_gas_1263", label %"$have_gas_1264"

"$out_of_gas_1263":                               ; preds = %"$have_gas_1252"
  call void @_out_of_gas()
  br label %"$have_gas_1264"

"$have_gas_1264":                                 ; preds = %"$out_of_gas_1263", %"$have_gas_1252"
  %"$consume_1265" = sub i64 %"$gasrem_1261", 1
  store i64 %"$consume_1265", i64* @_gasrem, align 8
  %"$BoolUtils.andb_143" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1266" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1267" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1266", 0
  %"$BoolUtils.andb_envptr_1268" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1266", 1
  %"$$test_60_1269" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1270" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1267"(i8* %"$BoolUtils.andb_envptr_1268", %TName_Bool* %"$$test_60_1269")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1270", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$BoolUtils.andb_144" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_143_1271" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$$BoolUtils.andb_143_fptr_1272" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_1271", 0
  %"$$BoolUtils.andb_143_envptr_1273" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_1271", 1
  %"$$test__65_1274" = load %TName_Bool*, %TName_Bool** %"$test__65", align 8
  %"$$BoolUtils.andb_143_call_1275" = call %TName_Bool* %"$$BoolUtils.andb_143_fptr_1272"(i8* %"$$BoolUtils.andb_143_envptr_1273", %TName_Bool* %"$$test__65_1274")
  store %TName_Bool* %"$$BoolUtils.andb_143_call_1275", %TName_Bool** %"$BoolUtils.andb_144", align 8
  %"$$BoolUtils.andb_144_1276" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_144", align 8
  store %TName_Bool* %"$$BoolUtils.andb_144_1276", %TName_Bool** %"$test_66", align 8
  %"$gasrem_1277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1278" = icmp ugt i64 1, %"$gasrem_1277"
  br i1 %"$gascmp_1278", label %"$out_of_gas_1279", label %"$have_gas_1280"

"$out_of_gas_1279":                               ; preds = %"$have_gas_1264"
  call void @_out_of_gas()
  br label %"$have_gas_1280"

"$have_gas_1280":                                 ; preds = %"$out_of_gas_1279", %"$have_gas_1264"
  %"$consume_1281" = sub i64 %"$gasrem_1277", 1
  store i64 %"$consume_1281", i64* @_gasrem, align 8
  %"$arg1_67" = alloca %Uint256, align 8
  %"$gasrem_1282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1283" = icmp ugt i64 1, %"$gasrem_1282"
  br i1 %"$gascmp_1283", label %"$out_of_gas_1284", label %"$have_gas_1285"

"$out_of_gas_1284":                               ; preds = %"$have_gas_1280"
  call void @_out_of_gas()
  br label %"$have_gas_1285"

"$have_gas_1285":                                 ; preds = %"$out_of_gas_1284", %"$have_gas_1280"
  %"$consume_1286" = sub i64 %"$gasrem_1282", 1
  store i64 %"$consume_1286", i64* @_gasrem, align 8
  store %Uint256 { i256 170141183460469231731687303715884105727 }, %Uint256* %"$arg1_67", align 8
  %"$gasrem_1287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1288" = icmp ugt i64 1, %"$gasrem_1287"
  br i1 %"$gascmp_1288", label %"$out_of_gas_1289", label %"$have_gas_1290"

"$out_of_gas_1289":                               ; preds = %"$have_gas_1285"
  call void @_out_of_gas()
  br label %"$have_gas_1290"

"$have_gas_1290":                                 ; preds = %"$out_of_gas_1289", %"$have_gas_1285"
  %"$consume_1291" = sub i64 %"$gasrem_1287", 1
  store i64 %"$consume_1291", i64* @_gasrem, align 8
  %"$arg2_68" = alloca %Uint256, align 8
  %"$gasrem_1292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1293" = icmp ugt i64 1, %"$gasrem_1292"
  br i1 %"$gascmp_1293", label %"$out_of_gas_1294", label %"$have_gas_1295"

"$out_of_gas_1294":                               ; preds = %"$have_gas_1290"
  call void @_out_of_gas()
  br label %"$have_gas_1295"

"$have_gas_1295":                                 ; preds = %"$out_of_gas_1294", %"$have_gas_1290"
  %"$consume_1296" = sub i64 %"$gasrem_1292", 1
  store i64 %"$consume_1296", i64* @_gasrem, align 8
  store %Uint256 { i256 170141183460469231731687303715884105728 }, %Uint256* %"$arg2_68", align 8
  %"$gasrem_1297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1298" = icmp ugt i64 1, %"$gasrem_1297"
  br i1 %"$gascmp_1298", label %"$out_of_gas_1299", label %"$have_gas_1300"

"$out_of_gas_1299":                               ; preds = %"$have_gas_1295"
  call void @_out_of_gas()
  br label %"$have_gas_1300"

"$have_gas_1300":                                 ; preds = %"$out_of_gas_1299", %"$have_gas_1295"
  %"$consume_1301" = sub i64 %"$gasrem_1297", 1
  store i64 %"$consume_1301", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  %"$gasrem_1302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1303" = icmp ugt i64 1, %"$gasrem_1302"
  br i1 %"$gascmp_1303", label %"$out_of_gas_1304", label %"$have_gas_1305"

"$out_of_gas_1304":                               ; preds = %"$have_gas_1300"
  call void @_out_of_gas()
  br label %"$have_gas_1305"

"$have_gas_1305":                                 ; preds = %"$out_of_gas_1304", %"$have_gas_1300"
  %"$consume_1306" = sub i64 %"$gasrem_1302", 1
  store i64 %"$consume_1306", i64* @_gasrem, align 8
  %"$res_69" = alloca %Uint256, align 8
  %"$gasrem_1308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1309" = icmp ugt i64 80, %"$gasrem_1308"
  br i1 %"$gascmp_1309", label %"$out_of_gas_1310", label %"$have_gas_1311"

"$out_of_gas_1310":                               ; preds = %"$have_gas_1305"
  call void @_out_of_gas()
  br label %"$have_gas_1311"

"$have_gas_1311":                                 ; preds = %"$out_of_gas_1310", %"$have_gas_1305"
  %"$consume_1312" = sub i64 %"$gasrem_1308", 80
  store i64 %"$consume_1312", i64* @_gasrem, align 8
  %"$execptr_load_1313" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_67_1314" = alloca %Uint256, align 8
  %"$$arg1_67_1315" = load %Uint256, %Uint256* %"$arg1_67", align 8
  store %Uint256 %"$$arg1_67_1315", %Uint256* %"$mul_$arg1_67_1314", align 8
  %"$mul_$arg2_68_1316" = alloca %Uint256, align 8
  %"$$arg2_68_1317" = load %Uint256, %Uint256* %"$arg2_68", align 8
  store %Uint256 %"$$arg2_68_1317", %Uint256* %"$mul_$arg2_68_1316", align 8
  %"$mul_call_1318" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1313", %Uint256* %"$mul_$arg1_67_1314", %Uint256* %"$mul_$arg2_68_1316")
  %"$mul_1320" = load %Uint256, %Uint256* %"$mul_call_1318", align 8
  store %Uint256 %"$mul_1320", %Uint256* %"$res_69", align 8
  %"$gasrem_1321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1322" = icmp ugt i64 1, %"$gasrem_1321"
  br i1 %"$gascmp_1322", label %"$out_of_gas_1323", label %"$have_gas_1324"

"$out_of_gas_1323":                               ; preds = %"$have_gas_1311"
  call void @_out_of_gas()
  br label %"$have_gas_1324"

"$have_gas_1324":                                 ; preds = %"$out_of_gas_1323", %"$have_gas_1311"
  %"$consume_1325" = sub i64 %"$gasrem_1321", 1
  store i64 %"$consume_1325", i64* @_gasrem, align 8
  %"$res__70" = alloca %Uint256, align 8
  %"$gasrem_1326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1327" = icmp ugt i64 1, %"$gasrem_1326"
  br i1 %"$gascmp_1327", label %"$out_of_gas_1328", label %"$have_gas_1329"

"$out_of_gas_1328":                               ; preds = %"$have_gas_1324"
  call void @_out_of_gas()
  br label %"$have_gas_1329"

"$have_gas_1329":                                 ; preds = %"$out_of_gas_1328", %"$have_gas_1324"
  %"$consume_1330" = sub i64 %"$gasrem_1326", 1
  store i64 %"$consume_1330", i64* @_gasrem, align 8
  store %Uint256 { i256 28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Uint256* %"$res__70", align 8
  %"$gasrem_1331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1332" = icmp ugt i64 1, %"$gasrem_1331"
  br i1 %"$gascmp_1332", label %"$out_of_gas_1333", label %"$have_gas_1334"

"$out_of_gas_1333":                               ; preds = %"$have_gas_1329"
  call void @_out_of_gas()
  br label %"$have_gas_1334"

"$have_gas_1334":                                 ; preds = %"$out_of_gas_1333", %"$have_gas_1329"
  %"$consume_1335" = sub i64 %"$gasrem_1331", 1
  store i64 %"$consume_1335", i64* @_gasrem, align 8
  %"$test__71" = alloca %TName_Bool*, align 8
  %"$gasrem_1337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1338" = icmp ugt i64 16, %"$gasrem_1337"
  br i1 %"$gascmp_1338", label %"$out_of_gas_1339", label %"$have_gas_1340"

"$out_of_gas_1339":                               ; preds = %"$have_gas_1334"
  call void @_out_of_gas()
  br label %"$have_gas_1340"

"$have_gas_1340":                                 ; preds = %"$out_of_gas_1339", %"$have_gas_1334"
  %"$consume_1341" = sub i64 %"$gasrem_1337", 16
  store i64 %"$consume_1341", i64* @_gasrem, align 8
  %"$execptr_load_1342" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_69_1343" = alloca %Uint256, align 8
  %"$$res_69_1344" = load %Uint256, %Uint256* %"$res_69", align 8
  store %Uint256 %"$$res_69_1344", %Uint256* %"$eq_$res_69_1343", align 8
  %"$eq_$res__70_1345" = alloca %Uint256, align 8
  %"$$res__70_1346" = load %Uint256, %Uint256* %"$res__70", align 8
  store %Uint256 %"$$res__70_1346", %Uint256* %"$eq_$res__70_1345", align 8
  %"$eq_call_1347" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1342", %Uint256* %"$eq_$res_69_1343", %Uint256* %"$eq_$res__70_1345")
  store %TName_Bool* %"$eq_call_1347", %TName_Bool** %"$test__71", align 8
  %"$gasrem_1349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1350" = icmp ugt i64 1, %"$gasrem_1349"
  br i1 %"$gascmp_1350", label %"$out_of_gas_1351", label %"$have_gas_1352"

"$out_of_gas_1351":                               ; preds = %"$have_gas_1340"
  call void @_out_of_gas()
  br label %"$have_gas_1352"

"$have_gas_1352":                                 ; preds = %"$out_of_gas_1351", %"$have_gas_1340"
  %"$consume_1353" = sub i64 %"$gasrem_1349", 1
  store i64 %"$consume_1353", i64* @_gasrem, align 8
  %"$BoolUtils.andb_145" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1354" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1355" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1354", 0
  %"$BoolUtils.andb_envptr_1356" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1354", 1
  %"$$test_66_1357" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  %"$BoolUtils.andb_call_1358" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1355"(i8* %"$BoolUtils.andb_envptr_1356", %TName_Bool* %"$$test_66_1357")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1358", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$BoolUtils.andb_146" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_145_1359" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$$BoolUtils.andb_145_fptr_1360" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_1359", 0
  %"$$BoolUtils.andb_145_envptr_1361" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_1359", 1
  %"$$test__71_1362" = load %TName_Bool*, %TName_Bool** %"$test__71", align 8
  %"$$BoolUtils.andb_145_call_1363" = call %TName_Bool* %"$$BoolUtils.andb_145_fptr_1360"(i8* %"$$BoolUtils.andb_145_envptr_1361", %TName_Bool* %"$$test__71_1362")
  store %TName_Bool* %"$$BoolUtils.andb_145_call_1363", %TName_Bool** %"$BoolUtils.andb_146", align 8
  %"$$BoolUtils.andb_146_1364" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_146", align 8
  store %TName_Bool* %"$$BoolUtils.andb_146_1364", %TName_Bool** %"$test_72", align 8
  %"$gasrem_1365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1366" = icmp ugt i64 1, %"$gasrem_1365"
  br i1 %"$gascmp_1366", label %"$out_of_gas_1367", label %"$have_gas_1368"

"$out_of_gas_1367":                               ; preds = %"$have_gas_1352"
  call void @_out_of_gas()
  br label %"$have_gas_1368"

"$have_gas_1368":                                 ; preds = %"$out_of_gas_1367", %"$have_gas_1352"
  %"$consume_1369" = sub i64 %"$gasrem_1365", 1
  store i64 %"$consume_1369", i64* @_gasrem, align 8
  %"$arg1_73" = alloca %Uint256, align 8
  %"$gasrem_1370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1371" = icmp ugt i64 1, %"$gasrem_1370"
  br i1 %"$gascmp_1371", label %"$out_of_gas_1372", label %"$have_gas_1373"

"$out_of_gas_1372":                               ; preds = %"$have_gas_1368"
  call void @_out_of_gas()
  br label %"$have_gas_1373"

"$have_gas_1373":                                 ; preds = %"$out_of_gas_1372", %"$have_gas_1368"
  %"$consume_1374" = sub i64 %"$gasrem_1370", 1
  store i64 %"$consume_1374", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$arg1_73", align 8
  %"$gasrem_1375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1376" = icmp ugt i64 1, %"$gasrem_1375"
  br i1 %"$gascmp_1376", label %"$out_of_gas_1377", label %"$have_gas_1378"

"$out_of_gas_1377":                               ; preds = %"$have_gas_1373"
  call void @_out_of_gas()
  br label %"$have_gas_1378"

"$have_gas_1378":                                 ; preds = %"$out_of_gas_1377", %"$have_gas_1373"
  %"$consume_1379" = sub i64 %"$gasrem_1375", 1
  store i64 %"$consume_1379", i64* @_gasrem, align 8
  %"$arg2_74" = alloca %Uint256, align 8
  %"$gasrem_1380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1381" = icmp ugt i64 1, %"$gasrem_1380"
  br i1 %"$gascmp_1381", label %"$out_of_gas_1382", label %"$have_gas_1383"

"$out_of_gas_1382":                               ; preds = %"$have_gas_1378"
  call void @_out_of_gas()
  br label %"$have_gas_1383"

"$have_gas_1383":                                 ; preds = %"$out_of_gas_1382", %"$have_gas_1378"
  %"$consume_1384" = sub i64 %"$gasrem_1380", 1
  store i64 %"$consume_1384", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg2_74", align 8
  %"$gasrem_1385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1386" = icmp ugt i64 1, %"$gasrem_1385"
  br i1 %"$gascmp_1386", label %"$out_of_gas_1387", label %"$have_gas_1388"

"$out_of_gas_1387":                               ; preds = %"$have_gas_1383"
  call void @_out_of_gas()
  br label %"$have_gas_1388"

"$have_gas_1388":                                 ; preds = %"$out_of_gas_1387", %"$have_gas_1383"
  %"$consume_1389" = sub i64 %"$gasrem_1385", 1
  store i64 %"$consume_1389", i64* @_gasrem, align 8
  %"$test_78" = alloca %TName_Bool*, align 8
  %"$gasrem_1390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1391" = icmp ugt i64 1, %"$gasrem_1390"
  br i1 %"$gascmp_1391", label %"$out_of_gas_1392", label %"$have_gas_1393"

"$out_of_gas_1392":                               ; preds = %"$have_gas_1388"
  call void @_out_of_gas()
  br label %"$have_gas_1393"

"$have_gas_1393":                                 ; preds = %"$out_of_gas_1392", %"$have_gas_1388"
  %"$consume_1394" = sub i64 %"$gasrem_1390", 1
  store i64 %"$consume_1394", i64* @_gasrem, align 8
  %"$res_75" = alloca %Uint256, align 8
  %"$gasrem_1396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1397" = icmp ugt i64 80, %"$gasrem_1396"
  br i1 %"$gascmp_1397", label %"$out_of_gas_1398", label %"$have_gas_1399"

"$out_of_gas_1398":                               ; preds = %"$have_gas_1393"
  call void @_out_of_gas()
  br label %"$have_gas_1399"

"$have_gas_1399":                                 ; preds = %"$out_of_gas_1398", %"$have_gas_1393"
  %"$consume_1400" = sub i64 %"$gasrem_1396", 80
  store i64 %"$consume_1400", i64* @_gasrem, align 8
  %"$execptr_load_1401" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_73_1402" = alloca %Uint256, align 8
  %"$$arg1_73_1403" = load %Uint256, %Uint256* %"$arg1_73", align 8
  store %Uint256 %"$$arg1_73_1403", %Uint256* %"$mul_$arg1_73_1402", align 8
  %"$mul_$arg2_74_1404" = alloca %Uint256, align 8
  %"$$arg2_74_1405" = load %Uint256, %Uint256* %"$arg2_74", align 8
  store %Uint256 %"$$arg2_74_1405", %Uint256* %"$mul_$arg2_74_1404", align 8
  %"$mul_call_1406" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1401", %Uint256* %"$mul_$arg1_73_1402", %Uint256* %"$mul_$arg2_74_1404")
  %"$mul_1408" = load %Uint256, %Uint256* %"$mul_call_1406", align 8
  store %Uint256 %"$mul_1408", %Uint256* %"$res_75", align 8
  %"$gasrem_1409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1410" = icmp ugt i64 1, %"$gasrem_1409"
  br i1 %"$gascmp_1410", label %"$out_of_gas_1411", label %"$have_gas_1412"

"$out_of_gas_1411":                               ; preds = %"$have_gas_1399"
  call void @_out_of_gas()
  br label %"$have_gas_1412"

"$have_gas_1412":                                 ; preds = %"$out_of_gas_1411", %"$have_gas_1399"
  %"$consume_1413" = sub i64 %"$gasrem_1409", 1
  store i64 %"$consume_1413", i64* @_gasrem, align 8
  %"$res__76" = alloca %Uint256, align 8
  %"$gasrem_1414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1415" = icmp ugt i64 1, %"$gasrem_1414"
  br i1 %"$gascmp_1415", label %"$out_of_gas_1416", label %"$have_gas_1417"

"$out_of_gas_1416":                               ; preds = %"$have_gas_1412"
  call void @_out_of_gas()
  br label %"$have_gas_1417"

"$have_gas_1417":                                 ; preds = %"$out_of_gas_1416", %"$have_gas_1412"
  %"$consume_1418" = sub i64 %"$gasrem_1414", 1
  store i64 %"$consume_1418", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$res__76", align 8
  %"$gasrem_1419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1420" = icmp ugt i64 1, %"$gasrem_1419"
  br i1 %"$gascmp_1420", label %"$out_of_gas_1421", label %"$have_gas_1422"

"$out_of_gas_1421":                               ; preds = %"$have_gas_1417"
  call void @_out_of_gas()
  br label %"$have_gas_1422"

"$have_gas_1422":                                 ; preds = %"$out_of_gas_1421", %"$have_gas_1417"
  %"$consume_1423" = sub i64 %"$gasrem_1419", 1
  store i64 %"$consume_1423", i64* @_gasrem, align 8
  %"$test__77" = alloca %TName_Bool*, align 8
  %"$gasrem_1425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1426" = icmp ugt i64 16, %"$gasrem_1425"
  br i1 %"$gascmp_1426", label %"$out_of_gas_1427", label %"$have_gas_1428"

"$out_of_gas_1427":                               ; preds = %"$have_gas_1422"
  call void @_out_of_gas()
  br label %"$have_gas_1428"

"$have_gas_1428":                                 ; preds = %"$out_of_gas_1427", %"$have_gas_1422"
  %"$consume_1429" = sub i64 %"$gasrem_1425", 16
  store i64 %"$consume_1429", i64* @_gasrem, align 8
  %"$execptr_load_1430" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_75_1431" = alloca %Uint256, align 8
  %"$$res_75_1432" = load %Uint256, %Uint256* %"$res_75", align 8
  store %Uint256 %"$$res_75_1432", %Uint256* %"$eq_$res_75_1431", align 8
  %"$eq_$res__76_1433" = alloca %Uint256, align 8
  %"$$res__76_1434" = load %Uint256, %Uint256* %"$res__76", align 8
  store %Uint256 %"$$res__76_1434", %Uint256* %"$eq_$res__76_1433", align 8
  %"$eq_call_1435" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1430", %Uint256* %"$eq_$res_75_1431", %Uint256* %"$eq_$res__76_1433")
  store %TName_Bool* %"$eq_call_1435", %TName_Bool** %"$test__77", align 8
  %"$gasrem_1437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1438" = icmp ugt i64 1, %"$gasrem_1437"
  br i1 %"$gascmp_1438", label %"$out_of_gas_1439", label %"$have_gas_1440"

"$out_of_gas_1439":                               ; preds = %"$have_gas_1428"
  call void @_out_of_gas()
  br label %"$have_gas_1440"

"$have_gas_1440":                                 ; preds = %"$out_of_gas_1439", %"$have_gas_1428"
  %"$consume_1441" = sub i64 %"$gasrem_1437", 1
  store i64 %"$consume_1441", i64* @_gasrem, align 8
  %"$BoolUtils.andb_147" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1442" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1443" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1442", 0
  %"$BoolUtils.andb_envptr_1444" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1442", 1
  %"$$test_72_1445" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  %"$BoolUtils.andb_call_1446" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1443"(i8* %"$BoolUtils.andb_envptr_1444", %TName_Bool* %"$$test_72_1445")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1446", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$BoolUtils.andb_148" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_147_1447" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$$BoolUtils.andb_147_fptr_1448" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_1447", 0
  %"$$BoolUtils.andb_147_envptr_1449" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_1447", 1
  %"$$test__77_1450" = load %TName_Bool*, %TName_Bool** %"$test__77", align 8
  %"$$BoolUtils.andb_147_call_1451" = call %TName_Bool* %"$$BoolUtils.andb_147_fptr_1448"(i8* %"$$BoolUtils.andb_147_envptr_1449", %TName_Bool* %"$$test__77_1450")
  store %TName_Bool* %"$$BoolUtils.andb_147_call_1451", %TName_Bool** %"$BoolUtils.andb_148", align 8
  %"$$BoolUtils.andb_148_1452" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_148", align 8
  store %TName_Bool* %"$$BoolUtils.andb_148_1452", %TName_Bool** %"$test_78", align 8
  %"$gasrem_1453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1454" = icmp ugt i64 1, %"$gasrem_1453"
  br i1 %"$gascmp_1454", label %"$out_of_gas_1455", label %"$have_gas_1456"

"$out_of_gas_1455":                               ; preds = %"$have_gas_1440"
  call void @_out_of_gas()
  br label %"$have_gas_1456"

"$have_gas_1456":                                 ; preds = %"$out_of_gas_1455", %"$have_gas_1440"
  %"$consume_1457" = sub i64 %"$gasrem_1453", 1
  store i64 %"$consume_1457", i64* @_gasrem, align 8
  %"$arg1_79" = alloca %Uint256, align 8
  %"$gasrem_1458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1459" = icmp ugt i64 1, %"$gasrem_1458"
  br i1 %"$gascmp_1459", label %"$out_of_gas_1460", label %"$have_gas_1461"

"$out_of_gas_1460":                               ; preds = %"$have_gas_1456"
  call void @_out_of_gas()
  br label %"$have_gas_1461"

"$have_gas_1461":                                 ; preds = %"$out_of_gas_1460", %"$have_gas_1456"
  %"$consume_1462" = sub i64 %"$gasrem_1458", 1
  store i64 %"$consume_1462", i64* @_gasrem, align 8
  store %Uint256 { i256 2 }, %Uint256* %"$arg1_79", align 8
  %"$gasrem_1463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1464" = icmp ugt i64 1, %"$gasrem_1463"
  br i1 %"$gascmp_1464", label %"$out_of_gas_1465", label %"$have_gas_1466"

"$out_of_gas_1465":                               ; preds = %"$have_gas_1461"
  call void @_out_of_gas()
  br label %"$have_gas_1466"

"$have_gas_1466":                                 ; preds = %"$out_of_gas_1465", %"$have_gas_1461"
  %"$consume_1467" = sub i64 %"$gasrem_1463", 1
  store i64 %"$consume_1467", i64* @_gasrem, align 8
  %"$arg2_80" = alloca %Uint256, align 8
  %"$gasrem_1468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1469" = icmp ugt i64 1, %"$gasrem_1468"
  br i1 %"$gascmp_1469", label %"$out_of_gas_1470", label %"$have_gas_1471"

"$out_of_gas_1470":                               ; preds = %"$have_gas_1466"
  call void @_out_of_gas()
  br label %"$have_gas_1471"

"$have_gas_1471":                                 ; preds = %"$out_of_gas_1470", %"$have_gas_1466"
  %"$consume_1472" = sub i64 %"$gasrem_1468", 1
  store i64 %"$consume_1472", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %"$arg2_80", align 8
  %"$gasrem_1473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1474" = icmp ugt i64 1, %"$gasrem_1473"
  br i1 %"$gascmp_1474", label %"$out_of_gas_1475", label %"$have_gas_1476"

"$out_of_gas_1475":                               ; preds = %"$have_gas_1471"
  call void @_out_of_gas()
  br label %"$have_gas_1476"

"$have_gas_1476":                                 ; preds = %"$out_of_gas_1475", %"$have_gas_1471"
  %"$consume_1477" = sub i64 %"$gasrem_1473", 1
  store i64 %"$consume_1477", i64* @_gasrem, align 8
  %"$test_84" = alloca %TName_Bool*, align 8
  %"$gasrem_1478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1479" = icmp ugt i64 1, %"$gasrem_1478"
  br i1 %"$gascmp_1479", label %"$out_of_gas_1480", label %"$have_gas_1481"

"$out_of_gas_1480":                               ; preds = %"$have_gas_1476"
  call void @_out_of_gas()
  br label %"$have_gas_1481"

"$have_gas_1481":                                 ; preds = %"$out_of_gas_1480", %"$have_gas_1476"
  %"$consume_1482" = sub i64 %"$gasrem_1478", 1
  store i64 %"$consume_1482", i64* @_gasrem, align 8
  %"$res_81" = alloca %Uint256, align 8
  %"$gasrem_1484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1485" = icmp ugt i64 80, %"$gasrem_1484"
  br i1 %"$gascmp_1485", label %"$out_of_gas_1486", label %"$have_gas_1487"

"$out_of_gas_1486":                               ; preds = %"$have_gas_1481"
  call void @_out_of_gas()
  br label %"$have_gas_1487"

"$have_gas_1487":                                 ; preds = %"$out_of_gas_1486", %"$have_gas_1481"
  %"$consume_1488" = sub i64 %"$gasrem_1484", 80
  store i64 %"$consume_1488", i64* @_gasrem, align 8
  %"$execptr_load_1489" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_79_1490" = alloca %Uint256, align 8
  %"$$arg1_79_1491" = load %Uint256, %Uint256* %"$arg1_79", align 8
  store %Uint256 %"$$arg1_79_1491", %Uint256* %"$mul_$arg1_79_1490", align 8
  %"$mul_$arg2_80_1492" = alloca %Uint256, align 8
  %"$$arg2_80_1493" = load %Uint256, %Uint256* %"$arg2_80", align 8
  store %Uint256 %"$$arg2_80_1493", %Uint256* %"$mul_$arg2_80_1492", align 8
  %"$mul_call_1494" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1489", %Uint256* %"$mul_$arg1_79_1490", %Uint256* %"$mul_$arg2_80_1492")
  %"$mul_1496" = load %Uint256, %Uint256* %"$mul_call_1494", align 8
  store %Uint256 %"$mul_1496", %Uint256* %"$res_81", align 8
  %"$gasrem_1497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1498" = icmp ugt i64 1, %"$gasrem_1497"
  br i1 %"$gascmp_1498", label %"$out_of_gas_1499", label %"$have_gas_1500"

"$out_of_gas_1499":                               ; preds = %"$have_gas_1487"
  call void @_out_of_gas()
  br label %"$have_gas_1500"

"$have_gas_1500":                                 ; preds = %"$out_of_gas_1499", %"$have_gas_1487"
  %"$consume_1501" = sub i64 %"$gasrem_1497", 1
  store i64 %"$consume_1501", i64* @_gasrem, align 8
  %"$res__82" = alloca %Uint256, align 8
  %"$gasrem_1502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1503" = icmp ugt i64 1, %"$gasrem_1502"
  br i1 %"$gascmp_1503", label %"$out_of_gas_1504", label %"$have_gas_1505"

"$out_of_gas_1504":                               ; preds = %"$have_gas_1500"
  call void @_out_of_gas()
  br label %"$have_gas_1505"

"$have_gas_1505":                                 ; preds = %"$out_of_gas_1504", %"$have_gas_1500"
  %"$consume_1506" = sub i64 %"$gasrem_1502", 1
  store i64 %"$consume_1506", i64* @_gasrem, align 8
  store %Uint256 { i256 -2 }, %Uint256* %"$res__82", align 8
  %"$gasrem_1507" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1508" = icmp ugt i64 1, %"$gasrem_1507"
  br i1 %"$gascmp_1508", label %"$out_of_gas_1509", label %"$have_gas_1510"

"$out_of_gas_1509":                               ; preds = %"$have_gas_1505"
  call void @_out_of_gas()
  br label %"$have_gas_1510"

"$have_gas_1510":                                 ; preds = %"$out_of_gas_1509", %"$have_gas_1505"
  %"$consume_1511" = sub i64 %"$gasrem_1507", 1
  store i64 %"$consume_1511", i64* @_gasrem, align 8
  %"$test__83" = alloca %TName_Bool*, align 8
  %"$gasrem_1513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1514" = icmp ugt i64 16, %"$gasrem_1513"
  br i1 %"$gascmp_1514", label %"$out_of_gas_1515", label %"$have_gas_1516"

"$out_of_gas_1515":                               ; preds = %"$have_gas_1510"
  call void @_out_of_gas()
  br label %"$have_gas_1516"

"$have_gas_1516":                                 ; preds = %"$out_of_gas_1515", %"$have_gas_1510"
  %"$consume_1517" = sub i64 %"$gasrem_1513", 16
  store i64 %"$consume_1517", i64* @_gasrem, align 8
  %"$execptr_load_1518" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_81_1519" = alloca %Uint256, align 8
  %"$$res_81_1520" = load %Uint256, %Uint256* %"$res_81", align 8
  store %Uint256 %"$$res_81_1520", %Uint256* %"$eq_$res_81_1519", align 8
  %"$eq_$res__82_1521" = alloca %Uint256, align 8
  %"$$res__82_1522" = load %Uint256, %Uint256* %"$res__82", align 8
  store %Uint256 %"$$res__82_1522", %Uint256* %"$eq_$res__82_1521", align 8
  %"$eq_call_1523" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1518", %Uint256* %"$eq_$res_81_1519", %Uint256* %"$eq_$res__82_1521")
  store %TName_Bool* %"$eq_call_1523", %TName_Bool** %"$test__83", align 8
  %"$gasrem_1525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1526" = icmp ugt i64 1, %"$gasrem_1525"
  br i1 %"$gascmp_1526", label %"$out_of_gas_1527", label %"$have_gas_1528"

"$out_of_gas_1527":                               ; preds = %"$have_gas_1516"
  call void @_out_of_gas()
  br label %"$have_gas_1528"

"$have_gas_1528":                                 ; preds = %"$out_of_gas_1527", %"$have_gas_1516"
  %"$consume_1529" = sub i64 %"$gasrem_1525", 1
  store i64 %"$consume_1529", i64* @_gasrem, align 8
  %"$BoolUtils.andb_149" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1530" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1531" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1530", 0
  %"$BoolUtils.andb_envptr_1532" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1530", 1
  %"$$test_78_1533" = load %TName_Bool*, %TName_Bool** %"$test_78", align 8
  %"$BoolUtils.andb_call_1534" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1531"(i8* %"$BoolUtils.andb_envptr_1532", %TName_Bool* %"$$test_78_1533")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1534", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$BoolUtils.andb_150" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_149_1535" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$$BoolUtils.andb_149_fptr_1536" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1535", 0
  %"$$BoolUtils.andb_149_envptr_1537" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1535", 1
  %"$$test__83_1538" = load %TName_Bool*, %TName_Bool** %"$test__83", align 8
  %"$$BoolUtils.andb_149_call_1539" = call %TName_Bool* %"$$BoolUtils.andb_149_fptr_1536"(i8* %"$$BoolUtils.andb_149_envptr_1537", %TName_Bool* %"$$test__83_1538")
  store %TName_Bool* %"$$BoolUtils.andb_149_call_1539", %TName_Bool** %"$BoolUtils.andb_150", align 8
  %"$$BoolUtils.andb_150_1540" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_150", align 8
  store %TName_Bool* %"$$BoolUtils.andb_150_1540", %TName_Bool** %"$test_84", align 8
  %"$gasrem_1541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1542" = icmp ugt i64 1, %"$gasrem_1541"
  br i1 %"$gascmp_1542", label %"$out_of_gas_1543", label %"$have_gas_1544"

"$out_of_gas_1543":                               ; preds = %"$have_gas_1528"
  call void @_out_of_gas()
  br label %"$have_gas_1544"

"$have_gas_1544":                                 ; preds = %"$out_of_gas_1543", %"$have_gas_1528"
  %"$consume_1545" = sub i64 %"$gasrem_1541", 1
  store i64 %"$consume_1545", i64* @_gasrem, align 8
  %"$arg1_85" = alloca %Int256, align 8
  %"$gasrem_1546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1547" = icmp ugt i64 1, %"$gasrem_1546"
  br i1 %"$gascmp_1547", label %"$out_of_gas_1548", label %"$have_gas_1549"

"$out_of_gas_1548":                               ; preds = %"$have_gas_1544"
  call void @_out_of_gas()
  br label %"$have_gas_1549"

"$have_gas_1549":                                 ; preds = %"$out_of_gas_1548", %"$have_gas_1544"
  %"$consume_1550" = sub i64 %"$gasrem_1546", 1
  store i64 %"$consume_1550", i64* @_gasrem, align 8
  store %Int256 { i256 2 }, %Int256* %"$arg1_85", align 8
  %"$gasrem_1551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1552" = icmp ugt i64 1, %"$gasrem_1551"
  br i1 %"$gascmp_1552", label %"$out_of_gas_1553", label %"$have_gas_1554"

"$out_of_gas_1553":                               ; preds = %"$have_gas_1549"
  call void @_out_of_gas()
  br label %"$have_gas_1554"

"$have_gas_1554":                                 ; preds = %"$out_of_gas_1553", %"$have_gas_1549"
  %"$consume_1555" = sub i64 %"$gasrem_1551", 1
  store i64 %"$consume_1555", i64* @_gasrem, align 8
  %"$arg2_86" = alloca %Int256, align 8
  %"$gasrem_1556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1557" = icmp ugt i64 1, %"$gasrem_1556"
  br i1 %"$gascmp_1557", label %"$out_of_gas_1558", label %"$have_gas_1559"

"$out_of_gas_1558":                               ; preds = %"$have_gas_1554"
  call void @_out_of_gas()
  br label %"$have_gas_1559"

"$have_gas_1559":                                 ; preds = %"$out_of_gas_1558", %"$have_gas_1554"
  %"$consume_1560" = sub i64 %"$gasrem_1556", 1
  store i64 %"$consume_1560", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_86", align 8
  %"$gasrem_1561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1562" = icmp ugt i64 1, %"$gasrem_1561"
  br i1 %"$gascmp_1562", label %"$out_of_gas_1563", label %"$have_gas_1564"

"$out_of_gas_1563":                               ; preds = %"$have_gas_1559"
  call void @_out_of_gas()
  br label %"$have_gas_1564"

"$have_gas_1564":                                 ; preds = %"$out_of_gas_1563", %"$have_gas_1559"
  %"$consume_1565" = sub i64 %"$gasrem_1561", 1
  store i64 %"$consume_1565", i64* @_gasrem, align 8
  %"$test_90" = alloca %TName_Bool*, align 8
  %"$gasrem_1566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1567" = icmp ugt i64 1, %"$gasrem_1566"
  br i1 %"$gascmp_1567", label %"$out_of_gas_1568", label %"$have_gas_1569"

"$out_of_gas_1568":                               ; preds = %"$have_gas_1564"
  call void @_out_of_gas()
  br label %"$have_gas_1569"

"$have_gas_1569":                                 ; preds = %"$out_of_gas_1568", %"$have_gas_1564"
  %"$consume_1570" = sub i64 %"$gasrem_1566", 1
  store i64 %"$consume_1570", i64* @_gasrem, align 8
  %"$res_87" = alloca %Int256, align 8
  %"$gasrem_1572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1573" = icmp ugt i64 80, %"$gasrem_1572"
  br i1 %"$gascmp_1573", label %"$out_of_gas_1574", label %"$have_gas_1575"

"$out_of_gas_1574":                               ; preds = %"$have_gas_1569"
  call void @_out_of_gas()
  br label %"$have_gas_1575"

"$have_gas_1575":                                 ; preds = %"$out_of_gas_1574", %"$have_gas_1569"
  %"$consume_1576" = sub i64 %"$gasrem_1572", 80
  store i64 %"$consume_1576", i64* @_gasrem, align 8
  %"$execptr_load_1577" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_85_1578" = alloca %Int256, align 8
  %"$$arg1_85_1579" = load %Int256, %Int256* %"$arg1_85", align 8
  store %Int256 %"$$arg1_85_1579", %Int256* %"$mul_$arg1_85_1578", align 8
  %"$mul_$arg2_86_1580" = alloca %Int256, align 8
  %"$$arg2_86_1581" = load %Int256, %Int256* %"$arg2_86", align 8
  store %Int256 %"$$arg2_86_1581", %Int256* %"$mul_$arg2_86_1580", align 8
  %"$mul_call_1582" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1577", %Int256* %"$mul_$arg1_85_1578", %Int256* %"$mul_$arg2_86_1580")
  %"$mul_1584" = load %Int256, %Int256* %"$mul_call_1582", align 8
  store %Int256 %"$mul_1584", %Int256* %"$res_87", align 8
  %"$gasrem_1585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1586" = icmp ugt i64 1, %"$gasrem_1585"
  br i1 %"$gascmp_1586", label %"$out_of_gas_1587", label %"$have_gas_1588"

"$out_of_gas_1587":                               ; preds = %"$have_gas_1575"
  call void @_out_of_gas()
  br label %"$have_gas_1588"

"$have_gas_1588":                                 ; preds = %"$out_of_gas_1587", %"$have_gas_1575"
  %"$consume_1589" = sub i64 %"$gasrem_1585", 1
  store i64 %"$consume_1589", i64* @_gasrem, align 8
  %"$res__88" = alloca %Int256, align 8
  %"$gasrem_1590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1591" = icmp ugt i64 1, %"$gasrem_1590"
  br i1 %"$gascmp_1591", label %"$out_of_gas_1592", label %"$have_gas_1593"

"$out_of_gas_1592":                               ; preds = %"$have_gas_1588"
  call void @_out_of_gas()
  br label %"$have_gas_1593"

"$have_gas_1593":                                 ; preds = %"$out_of_gas_1592", %"$have_gas_1588"
  %"$consume_1594" = sub i64 %"$gasrem_1590", 1
  store i64 %"$consume_1594", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__88", align 8
  %"$gasrem_1595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1596" = icmp ugt i64 1, %"$gasrem_1595"
  br i1 %"$gascmp_1596", label %"$out_of_gas_1597", label %"$have_gas_1598"

"$out_of_gas_1597":                               ; preds = %"$have_gas_1593"
  call void @_out_of_gas()
  br label %"$have_gas_1598"

"$have_gas_1598":                                 ; preds = %"$out_of_gas_1597", %"$have_gas_1593"
  %"$consume_1599" = sub i64 %"$gasrem_1595", 1
  store i64 %"$consume_1599", i64* @_gasrem, align 8
  %"$test__89" = alloca %TName_Bool*, align 8
  %"$gasrem_1601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1602" = icmp ugt i64 16, %"$gasrem_1601"
  br i1 %"$gascmp_1602", label %"$out_of_gas_1603", label %"$have_gas_1604"

"$out_of_gas_1603":                               ; preds = %"$have_gas_1598"
  call void @_out_of_gas()
  br label %"$have_gas_1604"

"$have_gas_1604":                                 ; preds = %"$out_of_gas_1603", %"$have_gas_1598"
  %"$consume_1605" = sub i64 %"$gasrem_1601", 16
  store i64 %"$consume_1605", i64* @_gasrem, align 8
  %"$execptr_load_1606" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_87_1607" = alloca %Int256, align 8
  %"$$res_87_1608" = load %Int256, %Int256* %"$res_87", align 8
  store %Int256 %"$$res_87_1608", %Int256* %"$eq_$res_87_1607", align 8
  %"$eq_$res__88_1609" = alloca %Int256, align 8
  %"$$res__88_1610" = load %Int256, %Int256* %"$res__88", align 8
  store %Int256 %"$$res__88_1610", %Int256* %"$eq_$res__88_1609", align 8
  %"$eq_call_1611" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1606", %Int256* %"$eq_$res_87_1607", %Int256* %"$eq_$res__88_1609")
  store %TName_Bool* %"$eq_call_1611", %TName_Bool** %"$test__89", align 8
  %"$gasrem_1613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1614" = icmp ugt i64 1, %"$gasrem_1613"
  br i1 %"$gascmp_1614", label %"$out_of_gas_1615", label %"$have_gas_1616"

"$out_of_gas_1615":                               ; preds = %"$have_gas_1604"
  call void @_out_of_gas()
  br label %"$have_gas_1616"

"$have_gas_1616":                                 ; preds = %"$out_of_gas_1615", %"$have_gas_1604"
  %"$consume_1617" = sub i64 %"$gasrem_1613", 1
  store i64 %"$consume_1617", i64* @_gasrem, align 8
  %"$BoolUtils.andb_151" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1618" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1619" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1618", 0
  %"$BoolUtils.andb_envptr_1620" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1618", 1
  %"$$test_84_1621" = load %TName_Bool*, %TName_Bool** %"$test_84", align 8
  %"$BoolUtils.andb_call_1622" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1619"(i8* %"$BoolUtils.andb_envptr_1620", %TName_Bool* %"$$test_84_1621")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1622", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$BoolUtils.andb_152" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_151_1623" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$$BoolUtils.andb_151_fptr_1624" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1623", 0
  %"$$BoolUtils.andb_151_envptr_1625" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1623", 1
  %"$$test__89_1626" = load %TName_Bool*, %TName_Bool** %"$test__89", align 8
  %"$$BoolUtils.andb_151_call_1627" = call %TName_Bool* %"$$BoolUtils.andb_151_fptr_1624"(i8* %"$$BoolUtils.andb_151_envptr_1625", %TName_Bool* %"$$test__89_1626")
  store %TName_Bool* %"$$BoolUtils.andb_151_call_1627", %TName_Bool** %"$BoolUtils.andb_152", align 8
  %"$$BoolUtils.andb_152_1628" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_152", align 8
  store %TName_Bool* %"$$BoolUtils.andb_152_1628", %TName_Bool** %"$test_90", align 8
  %"$gasrem_1629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1630" = icmp ugt i64 1, %"$gasrem_1629"
  br i1 %"$gascmp_1630", label %"$out_of_gas_1631", label %"$have_gas_1632"

"$out_of_gas_1631":                               ; preds = %"$have_gas_1616"
  call void @_out_of_gas()
  br label %"$have_gas_1632"

"$have_gas_1632":                                 ; preds = %"$out_of_gas_1631", %"$have_gas_1616"
  %"$consume_1633" = sub i64 %"$gasrem_1629", 1
  store i64 %"$consume_1633", i64* @_gasrem, align 8
  %"$arg1_91" = alloca %Int256, align 8
  %"$gasrem_1634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1635" = icmp ugt i64 1, %"$gasrem_1634"
  br i1 %"$gascmp_1635", label %"$out_of_gas_1636", label %"$have_gas_1637"

"$out_of_gas_1636":                               ; preds = %"$have_gas_1632"
  call void @_out_of_gas()
  br label %"$have_gas_1637"

"$have_gas_1637":                                 ; preds = %"$out_of_gas_1636", %"$have_gas_1632"
  %"$consume_1638" = sub i64 %"$gasrem_1634", 1
  store i64 %"$consume_1638", i64* @_gasrem, align 8
  store %Int256 { i256 -2 }, %Int256* %"$arg1_91", align 8
  %"$gasrem_1639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1640" = icmp ugt i64 1, %"$gasrem_1639"
  br i1 %"$gascmp_1640", label %"$out_of_gas_1641", label %"$have_gas_1642"

"$out_of_gas_1641":                               ; preds = %"$have_gas_1637"
  call void @_out_of_gas()
  br label %"$have_gas_1642"

"$have_gas_1642":                                 ; preds = %"$out_of_gas_1641", %"$have_gas_1637"
  %"$consume_1643" = sub i64 %"$gasrem_1639", 1
  store i64 %"$consume_1643", i64* @_gasrem, align 8
  %"$arg2_92" = alloca %Int256, align 8
  %"$gasrem_1644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1645" = icmp ugt i64 1, %"$gasrem_1644"
  br i1 %"$gascmp_1645", label %"$out_of_gas_1646", label %"$have_gas_1647"

"$out_of_gas_1646":                               ; preds = %"$have_gas_1642"
  call void @_out_of_gas()
  br label %"$have_gas_1647"

"$have_gas_1647":                                 ; preds = %"$out_of_gas_1646", %"$have_gas_1642"
  %"$consume_1648" = sub i64 %"$gasrem_1644", 1
  store i64 %"$consume_1648", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_92", align 8
  %"$gasrem_1649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1650" = icmp ugt i64 1, %"$gasrem_1649"
  br i1 %"$gascmp_1650", label %"$out_of_gas_1651", label %"$have_gas_1652"

"$out_of_gas_1651":                               ; preds = %"$have_gas_1647"
  call void @_out_of_gas()
  br label %"$have_gas_1652"

"$have_gas_1652":                                 ; preds = %"$out_of_gas_1651", %"$have_gas_1647"
  %"$consume_1653" = sub i64 %"$gasrem_1649", 1
  store i64 %"$consume_1653", i64* @_gasrem, align 8
  %"$test_96" = alloca %TName_Bool*, align 8
  %"$gasrem_1654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1655" = icmp ugt i64 1, %"$gasrem_1654"
  br i1 %"$gascmp_1655", label %"$out_of_gas_1656", label %"$have_gas_1657"

"$out_of_gas_1656":                               ; preds = %"$have_gas_1652"
  call void @_out_of_gas()
  br label %"$have_gas_1657"

"$have_gas_1657":                                 ; preds = %"$out_of_gas_1656", %"$have_gas_1652"
  %"$consume_1658" = sub i64 %"$gasrem_1654", 1
  store i64 %"$consume_1658", i64* @_gasrem, align 8
  %"$res_93" = alloca %Int256, align 8
  %"$gasrem_1660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1661" = icmp ugt i64 80, %"$gasrem_1660"
  br i1 %"$gascmp_1661", label %"$out_of_gas_1662", label %"$have_gas_1663"

"$out_of_gas_1662":                               ; preds = %"$have_gas_1657"
  call void @_out_of_gas()
  br label %"$have_gas_1663"

"$have_gas_1663":                                 ; preds = %"$out_of_gas_1662", %"$have_gas_1657"
  %"$consume_1664" = sub i64 %"$gasrem_1660", 80
  store i64 %"$consume_1664", i64* @_gasrem, align 8
  %"$execptr_load_1665" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_91_1666" = alloca %Int256, align 8
  %"$$arg1_91_1667" = load %Int256, %Int256* %"$arg1_91", align 8
  store %Int256 %"$$arg1_91_1667", %Int256* %"$mul_$arg1_91_1666", align 8
  %"$mul_$arg2_92_1668" = alloca %Int256, align 8
  %"$$arg2_92_1669" = load %Int256, %Int256* %"$arg2_92", align 8
  store %Int256 %"$$arg2_92_1669", %Int256* %"$mul_$arg2_92_1668", align 8
  %"$mul_call_1670" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1665", %Int256* %"$mul_$arg1_91_1666", %Int256* %"$mul_$arg2_92_1668")
  %"$mul_1672" = load %Int256, %Int256* %"$mul_call_1670", align 8
  store %Int256 %"$mul_1672", %Int256* %"$res_93", align 8
  %"$gasrem_1673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1674" = icmp ugt i64 1, %"$gasrem_1673"
  br i1 %"$gascmp_1674", label %"$out_of_gas_1675", label %"$have_gas_1676"

"$out_of_gas_1675":                               ; preds = %"$have_gas_1663"
  call void @_out_of_gas()
  br label %"$have_gas_1676"

"$have_gas_1676":                                 ; preds = %"$out_of_gas_1675", %"$have_gas_1663"
  %"$consume_1677" = sub i64 %"$gasrem_1673", 1
  store i64 %"$consume_1677", i64* @_gasrem, align 8
  %"$res__94" = alloca %Int256, align 8
  %"$gasrem_1678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1679" = icmp ugt i64 1, %"$gasrem_1678"
  br i1 %"$gascmp_1679", label %"$out_of_gas_1680", label %"$have_gas_1681"

"$out_of_gas_1680":                               ; preds = %"$have_gas_1676"
  call void @_out_of_gas()
  br label %"$have_gas_1681"

"$have_gas_1681":                                 ; preds = %"$out_of_gas_1680", %"$have_gas_1676"
  %"$consume_1682" = sub i64 %"$gasrem_1678", 1
  store i64 %"$consume_1682", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__94", align 8
  %"$gasrem_1683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1684" = icmp ugt i64 1, %"$gasrem_1683"
  br i1 %"$gascmp_1684", label %"$out_of_gas_1685", label %"$have_gas_1686"

"$out_of_gas_1685":                               ; preds = %"$have_gas_1681"
  call void @_out_of_gas()
  br label %"$have_gas_1686"

"$have_gas_1686":                                 ; preds = %"$out_of_gas_1685", %"$have_gas_1681"
  %"$consume_1687" = sub i64 %"$gasrem_1683", 1
  store i64 %"$consume_1687", i64* @_gasrem, align 8
  %"$test__95" = alloca %TName_Bool*, align 8
  %"$gasrem_1689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1690" = icmp ugt i64 16, %"$gasrem_1689"
  br i1 %"$gascmp_1690", label %"$out_of_gas_1691", label %"$have_gas_1692"

"$out_of_gas_1691":                               ; preds = %"$have_gas_1686"
  call void @_out_of_gas()
  br label %"$have_gas_1692"

"$have_gas_1692":                                 ; preds = %"$out_of_gas_1691", %"$have_gas_1686"
  %"$consume_1693" = sub i64 %"$gasrem_1689", 16
  store i64 %"$consume_1693", i64* @_gasrem, align 8
  %"$execptr_load_1694" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_93_1695" = alloca %Int256, align 8
  %"$$res_93_1696" = load %Int256, %Int256* %"$res_93", align 8
  store %Int256 %"$$res_93_1696", %Int256* %"$eq_$res_93_1695", align 8
  %"$eq_$res__94_1697" = alloca %Int256, align 8
  %"$$res__94_1698" = load %Int256, %Int256* %"$res__94", align 8
  store %Int256 %"$$res__94_1698", %Int256* %"$eq_$res__94_1697", align 8
  %"$eq_call_1699" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1694", %Int256* %"$eq_$res_93_1695", %Int256* %"$eq_$res__94_1697")
  store %TName_Bool* %"$eq_call_1699", %TName_Bool** %"$test__95", align 8
  %"$gasrem_1701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1702" = icmp ugt i64 1, %"$gasrem_1701"
  br i1 %"$gascmp_1702", label %"$out_of_gas_1703", label %"$have_gas_1704"

"$out_of_gas_1703":                               ; preds = %"$have_gas_1692"
  call void @_out_of_gas()
  br label %"$have_gas_1704"

"$have_gas_1704":                                 ; preds = %"$out_of_gas_1703", %"$have_gas_1692"
  %"$consume_1705" = sub i64 %"$gasrem_1701", 1
  store i64 %"$consume_1705", i64* @_gasrem, align 8
  %"$BoolUtils.andb_153" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1706" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1707" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1706", 0
  %"$BoolUtils.andb_envptr_1708" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1706", 1
  %"$$test_90_1709" = load %TName_Bool*, %TName_Bool** %"$test_90", align 8
  %"$BoolUtils.andb_call_1710" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1707"(i8* %"$BoolUtils.andb_envptr_1708", %TName_Bool* %"$$test_90_1709")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1710", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$BoolUtils.andb_154" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_153_1711" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$$BoolUtils.andb_153_fptr_1712" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1711", 0
  %"$$BoolUtils.andb_153_envptr_1713" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1711", 1
  %"$$test__95_1714" = load %TName_Bool*, %TName_Bool** %"$test__95", align 8
  %"$$BoolUtils.andb_153_call_1715" = call %TName_Bool* %"$$BoolUtils.andb_153_fptr_1712"(i8* %"$$BoolUtils.andb_153_envptr_1713", %TName_Bool* %"$$test__95_1714")
  store %TName_Bool* %"$$BoolUtils.andb_153_call_1715", %TName_Bool** %"$BoolUtils.andb_154", align 8
  %"$$BoolUtils.andb_154_1716" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_154", align 8
  store %TName_Bool* %"$$BoolUtils.andb_154_1716", %TName_Bool** %"$test_96", align 8
  %"$gasrem_1717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1718" = icmp ugt i64 1, %"$gasrem_1717"
  br i1 %"$gascmp_1718", label %"$out_of_gas_1719", label %"$have_gas_1720"

"$out_of_gas_1719":                               ; preds = %"$have_gas_1704"
  call void @_out_of_gas()
  br label %"$have_gas_1720"

"$have_gas_1720":                                 ; preds = %"$out_of_gas_1719", %"$have_gas_1704"
  %"$consume_1721" = sub i64 %"$gasrem_1717", 1
  store i64 %"$consume_1721", i64* @_gasrem, align 8
  %"$arg1_97" = alloca %Int256, align 8
  %"$gasrem_1722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1723" = icmp ugt i64 1, %"$gasrem_1722"
  br i1 %"$gascmp_1723", label %"$out_of_gas_1724", label %"$have_gas_1725"

"$out_of_gas_1724":                               ; preds = %"$have_gas_1720"
  call void @_out_of_gas()
  br label %"$have_gas_1725"

"$have_gas_1725":                                 ; preds = %"$out_of_gas_1724", %"$have_gas_1720"
  %"$consume_1726" = sub i64 %"$gasrem_1722", 1
  store i64 %"$consume_1726", i64* @_gasrem, align 8
  store %Int256 { i256 2 }, %Int256* %"$arg1_97", align 8
  %"$gasrem_1727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1728" = icmp ugt i64 1, %"$gasrem_1727"
  br i1 %"$gascmp_1728", label %"$out_of_gas_1729", label %"$have_gas_1730"

"$out_of_gas_1729":                               ; preds = %"$have_gas_1725"
  call void @_out_of_gas()
  br label %"$have_gas_1730"

"$have_gas_1730":                                 ; preds = %"$out_of_gas_1729", %"$have_gas_1725"
  %"$consume_1731" = sub i64 %"$gasrem_1727", 1
  store i64 %"$consume_1731", i64* @_gasrem, align 8
  %"$arg2_98" = alloca %Int256, align 8
  %"$gasrem_1732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1733" = icmp ugt i64 1, %"$gasrem_1732"
  br i1 %"$gascmp_1733", label %"$out_of_gas_1734", label %"$have_gas_1735"

"$out_of_gas_1734":                               ; preds = %"$have_gas_1730"
  call void @_out_of_gas()
  br label %"$have_gas_1735"

"$have_gas_1735":                                 ; preds = %"$out_of_gas_1734", %"$have_gas_1730"
  %"$consume_1736" = sub i64 %"$gasrem_1732", 1
  store i64 %"$consume_1736", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_98", align 8
  %"$gasrem_1737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1738" = icmp ugt i64 1, %"$gasrem_1737"
  br i1 %"$gascmp_1738", label %"$out_of_gas_1739", label %"$have_gas_1740"

"$out_of_gas_1739":                               ; preds = %"$have_gas_1735"
  call void @_out_of_gas()
  br label %"$have_gas_1740"

"$have_gas_1740":                                 ; preds = %"$out_of_gas_1739", %"$have_gas_1735"
  %"$consume_1741" = sub i64 %"$gasrem_1737", 1
  store i64 %"$consume_1741", i64* @_gasrem, align 8
  %"$test_102" = alloca %TName_Bool*, align 8
  %"$gasrem_1742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1743" = icmp ugt i64 1, %"$gasrem_1742"
  br i1 %"$gascmp_1743", label %"$out_of_gas_1744", label %"$have_gas_1745"

"$out_of_gas_1744":                               ; preds = %"$have_gas_1740"
  call void @_out_of_gas()
  br label %"$have_gas_1745"

"$have_gas_1745":                                 ; preds = %"$out_of_gas_1744", %"$have_gas_1740"
  %"$consume_1746" = sub i64 %"$gasrem_1742", 1
  store i64 %"$consume_1746", i64* @_gasrem, align 8
  %"$res_99" = alloca %Int256, align 8
  %"$gasrem_1748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1749" = icmp ugt i64 80, %"$gasrem_1748"
  br i1 %"$gascmp_1749", label %"$out_of_gas_1750", label %"$have_gas_1751"

"$out_of_gas_1750":                               ; preds = %"$have_gas_1745"
  call void @_out_of_gas()
  br label %"$have_gas_1751"

"$have_gas_1751":                                 ; preds = %"$out_of_gas_1750", %"$have_gas_1745"
  %"$consume_1752" = sub i64 %"$gasrem_1748", 80
  store i64 %"$consume_1752", i64* @_gasrem, align 8
  %"$execptr_load_1753" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_97_1754" = alloca %Int256, align 8
  %"$$arg1_97_1755" = load %Int256, %Int256* %"$arg1_97", align 8
  store %Int256 %"$$arg1_97_1755", %Int256* %"$mul_$arg1_97_1754", align 8
  %"$mul_$arg2_98_1756" = alloca %Int256, align 8
  %"$$arg2_98_1757" = load %Int256, %Int256* %"$arg2_98", align 8
  store %Int256 %"$$arg2_98_1757", %Int256* %"$mul_$arg2_98_1756", align 8
  %"$mul_call_1758" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1753", %Int256* %"$mul_$arg1_97_1754", %Int256* %"$mul_$arg2_98_1756")
  %"$mul_1760" = load %Int256, %Int256* %"$mul_call_1758", align 8
  store %Int256 %"$mul_1760", %Int256* %"$res_99", align 8
  %"$gasrem_1761" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1762" = icmp ugt i64 1, %"$gasrem_1761"
  br i1 %"$gascmp_1762", label %"$out_of_gas_1763", label %"$have_gas_1764"

"$out_of_gas_1763":                               ; preds = %"$have_gas_1751"
  call void @_out_of_gas()
  br label %"$have_gas_1764"

"$have_gas_1764":                                 ; preds = %"$out_of_gas_1763", %"$have_gas_1751"
  %"$consume_1765" = sub i64 %"$gasrem_1761", 1
  store i64 %"$consume_1765", i64* @_gasrem, align 8
  %"$res__100" = alloca %Int256, align 8
  %"$gasrem_1766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1767" = icmp ugt i64 1, %"$gasrem_1766"
  br i1 %"$gascmp_1767", label %"$out_of_gas_1768", label %"$have_gas_1769"

"$out_of_gas_1768":                               ; preds = %"$have_gas_1764"
  call void @_out_of_gas()
  br label %"$have_gas_1769"

"$have_gas_1769":                                 ; preds = %"$out_of_gas_1768", %"$have_gas_1764"
  %"$consume_1770" = sub i64 %"$gasrem_1766", 1
  store i64 %"$consume_1770", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__100", align 8
  %"$gasrem_1771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1772" = icmp ugt i64 1, %"$gasrem_1771"
  br i1 %"$gascmp_1772", label %"$out_of_gas_1773", label %"$have_gas_1774"

"$out_of_gas_1773":                               ; preds = %"$have_gas_1769"
  call void @_out_of_gas()
  br label %"$have_gas_1774"

"$have_gas_1774":                                 ; preds = %"$out_of_gas_1773", %"$have_gas_1769"
  %"$consume_1775" = sub i64 %"$gasrem_1771", 1
  store i64 %"$consume_1775", i64* @_gasrem, align 8
  %"$test__101" = alloca %TName_Bool*, align 8
  %"$gasrem_1777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1778" = icmp ugt i64 16, %"$gasrem_1777"
  br i1 %"$gascmp_1778", label %"$out_of_gas_1779", label %"$have_gas_1780"

"$out_of_gas_1779":                               ; preds = %"$have_gas_1774"
  call void @_out_of_gas()
  br label %"$have_gas_1780"

"$have_gas_1780":                                 ; preds = %"$out_of_gas_1779", %"$have_gas_1774"
  %"$consume_1781" = sub i64 %"$gasrem_1777", 16
  store i64 %"$consume_1781", i64* @_gasrem, align 8
  %"$execptr_load_1782" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_99_1783" = alloca %Int256, align 8
  %"$$res_99_1784" = load %Int256, %Int256* %"$res_99", align 8
  store %Int256 %"$$res_99_1784", %Int256* %"$eq_$res_99_1783", align 8
  %"$eq_$res__100_1785" = alloca %Int256, align 8
  %"$$res__100_1786" = load %Int256, %Int256* %"$res__100", align 8
  store %Int256 %"$$res__100_1786", %Int256* %"$eq_$res__100_1785", align 8
  %"$eq_call_1787" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1782", %Int256* %"$eq_$res_99_1783", %Int256* %"$eq_$res__100_1785")
  store %TName_Bool* %"$eq_call_1787", %TName_Bool** %"$test__101", align 8
  %"$gasrem_1789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1790" = icmp ugt i64 1, %"$gasrem_1789"
  br i1 %"$gascmp_1790", label %"$out_of_gas_1791", label %"$have_gas_1792"

"$out_of_gas_1791":                               ; preds = %"$have_gas_1780"
  call void @_out_of_gas()
  br label %"$have_gas_1792"

"$have_gas_1792":                                 ; preds = %"$out_of_gas_1791", %"$have_gas_1780"
  %"$consume_1793" = sub i64 %"$gasrem_1789", 1
  store i64 %"$consume_1793", i64* @_gasrem, align 8
  %"$BoolUtils.andb_155" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1794" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1795" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1794", 0
  %"$BoolUtils.andb_envptr_1796" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1794", 1
  %"$$test_96_1797" = load %TName_Bool*, %TName_Bool** %"$test_96", align 8
  %"$BoolUtils.andb_call_1798" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1795"(i8* %"$BoolUtils.andb_envptr_1796", %TName_Bool* %"$$test_96_1797")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1798", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$BoolUtils.andb_156" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_155_1799" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$$BoolUtils.andb_155_fptr_1800" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1799", 0
  %"$$BoolUtils.andb_155_envptr_1801" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1799", 1
  %"$$test__101_1802" = load %TName_Bool*, %TName_Bool** %"$test__101", align 8
  %"$$BoolUtils.andb_155_call_1803" = call %TName_Bool* %"$$BoolUtils.andb_155_fptr_1800"(i8* %"$$BoolUtils.andb_155_envptr_1801", %TName_Bool* %"$$test__101_1802")
  store %TName_Bool* %"$$BoolUtils.andb_155_call_1803", %TName_Bool** %"$BoolUtils.andb_156", align 8
  %"$$BoolUtils.andb_156_1804" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_156", align 8
  store %TName_Bool* %"$$BoolUtils.andb_156_1804", %TName_Bool** %"$test_102", align 8
  %"$gasrem_1805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1806" = icmp ugt i64 1, %"$gasrem_1805"
  br i1 %"$gascmp_1806", label %"$out_of_gas_1807", label %"$have_gas_1808"

"$out_of_gas_1807":                               ; preds = %"$have_gas_1792"
  call void @_out_of_gas()
  br label %"$have_gas_1808"

"$have_gas_1808":                                 ; preds = %"$out_of_gas_1807", %"$have_gas_1792"
  %"$consume_1809" = sub i64 %"$gasrem_1805", 1
  store i64 %"$consume_1809", i64* @_gasrem, align 8
  %"$arg1_103" = alloca %Int256, align 8
  %"$gasrem_1810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1811" = icmp ugt i64 1, %"$gasrem_1810"
  br i1 %"$gascmp_1811", label %"$out_of_gas_1812", label %"$have_gas_1813"

"$out_of_gas_1812":                               ; preds = %"$have_gas_1808"
  call void @_out_of_gas()
  br label %"$have_gas_1813"

"$have_gas_1813":                                 ; preds = %"$out_of_gas_1812", %"$have_gas_1808"
  %"$consume_1814" = sub i64 %"$gasrem_1810", 1
  store i64 %"$consume_1814", i64* @_gasrem, align 8
  store %Int256 { i256 -2 }, %Int256* %"$arg1_103", align 8
  %"$gasrem_1815" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1816" = icmp ugt i64 1, %"$gasrem_1815"
  br i1 %"$gascmp_1816", label %"$out_of_gas_1817", label %"$have_gas_1818"

"$out_of_gas_1817":                               ; preds = %"$have_gas_1813"
  call void @_out_of_gas()
  br label %"$have_gas_1818"

"$have_gas_1818":                                 ; preds = %"$out_of_gas_1817", %"$have_gas_1813"
  %"$consume_1819" = sub i64 %"$gasrem_1815", 1
  store i64 %"$consume_1819", i64* @_gasrem, align 8
  %"$arg2_104" = alloca %Int256, align 8
  %"$gasrem_1820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1821" = icmp ugt i64 1, %"$gasrem_1820"
  br i1 %"$gascmp_1821", label %"$out_of_gas_1822", label %"$have_gas_1823"

"$out_of_gas_1822":                               ; preds = %"$have_gas_1818"
  call void @_out_of_gas()
  br label %"$have_gas_1823"

"$have_gas_1823":                                 ; preds = %"$out_of_gas_1822", %"$have_gas_1818"
  %"$consume_1824" = sub i64 %"$gasrem_1820", 1
  store i64 %"$consume_1824", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_104", align 8
  %"$gasrem_1825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1826" = icmp ugt i64 1, %"$gasrem_1825"
  br i1 %"$gascmp_1826", label %"$out_of_gas_1827", label %"$have_gas_1828"

"$out_of_gas_1827":                               ; preds = %"$have_gas_1823"
  call void @_out_of_gas()
  br label %"$have_gas_1828"

"$have_gas_1828":                                 ; preds = %"$out_of_gas_1827", %"$have_gas_1823"
  %"$consume_1829" = sub i64 %"$gasrem_1825", 1
  store i64 %"$consume_1829", i64* @_gasrem, align 8
  %"$test_108" = alloca %TName_Bool*, align 8
  %"$gasrem_1830" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1831" = icmp ugt i64 1, %"$gasrem_1830"
  br i1 %"$gascmp_1831", label %"$out_of_gas_1832", label %"$have_gas_1833"

"$out_of_gas_1832":                               ; preds = %"$have_gas_1828"
  call void @_out_of_gas()
  br label %"$have_gas_1833"

"$have_gas_1833":                                 ; preds = %"$out_of_gas_1832", %"$have_gas_1828"
  %"$consume_1834" = sub i64 %"$gasrem_1830", 1
  store i64 %"$consume_1834", i64* @_gasrem, align 8
  %"$res_105" = alloca %Int256, align 8
  %"$gasrem_1836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1837" = icmp ugt i64 80, %"$gasrem_1836"
  br i1 %"$gascmp_1837", label %"$out_of_gas_1838", label %"$have_gas_1839"

"$out_of_gas_1838":                               ; preds = %"$have_gas_1833"
  call void @_out_of_gas()
  br label %"$have_gas_1839"

"$have_gas_1839":                                 ; preds = %"$out_of_gas_1838", %"$have_gas_1833"
  %"$consume_1840" = sub i64 %"$gasrem_1836", 80
  store i64 %"$consume_1840", i64* @_gasrem, align 8
  %"$execptr_load_1841" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_103_1842" = alloca %Int256, align 8
  %"$$arg1_103_1843" = load %Int256, %Int256* %"$arg1_103", align 8
  store %Int256 %"$$arg1_103_1843", %Int256* %"$mul_$arg1_103_1842", align 8
  %"$mul_$arg2_104_1844" = alloca %Int256, align 8
  %"$$arg2_104_1845" = load %Int256, %Int256* %"$arg2_104", align 8
  store %Int256 %"$$arg2_104_1845", %Int256* %"$mul_$arg2_104_1844", align 8
  %"$mul_call_1846" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1841", %Int256* %"$mul_$arg1_103_1842", %Int256* %"$mul_$arg2_104_1844")
  %"$mul_1848" = load %Int256, %Int256* %"$mul_call_1846", align 8
  store %Int256 %"$mul_1848", %Int256* %"$res_105", align 8
  %"$gasrem_1849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1850" = icmp ugt i64 1, %"$gasrem_1849"
  br i1 %"$gascmp_1850", label %"$out_of_gas_1851", label %"$have_gas_1852"

"$out_of_gas_1851":                               ; preds = %"$have_gas_1839"
  call void @_out_of_gas()
  br label %"$have_gas_1852"

"$have_gas_1852":                                 ; preds = %"$out_of_gas_1851", %"$have_gas_1839"
  %"$consume_1853" = sub i64 %"$gasrem_1849", 1
  store i64 %"$consume_1853", i64* @_gasrem, align 8
  %"$res__106" = alloca %Int256, align 8
  %"$gasrem_1854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1855" = icmp ugt i64 1, %"$gasrem_1854"
  br i1 %"$gascmp_1855", label %"$out_of_gas_1856", label %"$have_gas_1857"

"$out_of_gas_1856":                               ; preds = %"$have_gas_1852"
  call void @_out_of_gas()
  br label %"$have_gas_1857"

"$have_gas_1857":                                 ; preds = %"$out_of_gas_1856", %"$have_gas_1852"
  %"$consume_1858" = sub i64 %"$gasrem_1854", 1
  store i64 %"$consume_1858", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__106", align 8
  %"$gasrem_1859" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1860" = icmp ugt i64 1, %"$gasrem_1859"
  br i1 %"$gascmp_1860", label %"$out_of_gas_1861", label %"$have_gas_1862"

"$out_of_gas_1861":                               ; preds = %"$have_gas_1857"
  call void @_out_of_gas()
  br label %"$have_gas_1862"

"$have_gas_1862":                                 ; preds = %"$out_of_gas_1861", %"$have_gas_1857"
  %"$consume_1863" = sub i64 %"$gasrem_1859", 1
  store i64 %"$consume_1863", i64* @_gasrem, align 8
  %"$test__107" = alloca %TName_Bool*, align 8
  %"$gasrem_1865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1866" = icmp ugt i64 16, %"$gasrem_1865"
  br i1 %"$gascmp_1866", label %"$out_of_gas_1867", label %"$have_gas_1868"

"$out_of_gas_1867":                               ; preds = %"$have_gas_1862"
  call void @_out_of_gas()
  br label %"$have_gas_1868"

"$have_gas_1868":                                 ; preds = %"$out_of_gas_1867", %"$have_gas_1862"
  %"$consume_1869" = sub i64 %"$gasrem_1865", 16
  store i64 %"$consume_1869", i64* @_gasrem, align 8
  %"$execptr_load_1870" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_105_1871" = alloca %Int256, align 8
  %"$$res_105_1872" = load %Int256, %Int256* %"$res_105", align 8
  store %Int256 %"$$res_105_1872", %Int256* %"$eq_$res_105_1871", align 8
  %"$eq_$res__106_1873" = alloca %Int256, align 8
  %"$$res__106_1874" = load %Int256, %Int256* %"$res__106", align 8
  store %Int256 %"$$res__106_1874", %Int256* %"$eq_$res__106_1873", align 8
  %"$eq_call_1875" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1870", %Int256* %"$eq_$res_105_1871", %Int256* %"$eq_$res__106_1873")
  store %TName_Bool* %"$eq_call_1875", %TName_Bool** %"$test__107", align 8
  %"$gasrem_1877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1878" = icmp ugt i64 1, %"$gasrem_1877"
  br i1 %"$gascmp_1878", label %"$out_of_gas_1879", label %"$have_gas_1880"

"$out_of_gas_1879":                               ; preds = %"$have_gas_1868"
  call void @_out_of_gas()
  br label %"$have_gas_1880"

"$have_gas_1880":                                 ; preds = %"$out_of_gas_1879", %"$have_gas_1868"
  %"$consume_1881" = sub i64 %"$gasrem_1877", 1
  store i64 %"$consume_1881", i64* @_gasrem, align 8
  %"$BoolUtils.andb_157" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1882" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1883" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1882", 0
  %"$BoolUtils.andb_envptr_1884" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1882", 1
  %"$$test_102_1885" = load %TName_Bool*, %TName_Bool** %"$test_102", align 8
  %"$BoolUtils.andb_call_1886" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1883"(i8* %"$BoolUtils.andb_envptr_1884", %TName_Bool* %"$$test_102_1885")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1886", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$BoolUtils.andb_158" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_157_1887" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$$BoolUtils.andb_157_fptr_1888" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1887", 0
  %"$$BoolUtils.andb_157_envptr_1889" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1887", 1
  %"$$test__107_1890" = load %TName_Bool*, %TName_Bool** %"$test__107", align 8
  %"$$BoolUtils.andb_157_call_1891" = call %TName_Bool* %"$$BoolUtils.andb_157_fptr_1888"(i8* %"$$BoolUtils.andb_157_envptr_1889", %TName_Bool* %"$$test__107_1890")
  store %TName_Bool* %"$$BoolUtils.andb_157_call_1891", %TName_Bool** %"$BoolUtils.andb_158", align 8
  %"$$BoolUtils.andb_158_1892" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_158", align 8
  store %TName_Bool* %"$$BoolUtils.andb_158_1892", %TName_Bool** %"$test_108", align 8
  %"$gasrem_1893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1894" = icmp ugt i64 1, %"$gasrem_1893"
  br i1 %"$gascmp_1894", label %"$out_of_gas_1895", label %"$have_gas_1896"

"$out_of_gas_1895":                               ; preds = %"$have_gas_1880"
  call void @_out_of_gas()
  br label %"$have_gas_1896"

"$have_gas_1896":                                 ; preds = %"$out_of_gas_1895", %"$have_gas_1880"
  %"$consume_1897" = sub i64 %"$gasrem_1893", 1
  store i64 %"$consume_1897", i64* @_gasrem, align 8
  %"$arg1_109" = alloca %Int256, align 8
  %"$gasrem_1898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1899" = icmp ugt i64 1, %"$gasrem_1898"
  br i1 %"$gascmp_1899", label %"$out_of_gas_1900", label %"$have_gas_1901"

"$out_of_gas_1900":                               ; preds = %"$have_gas_1896"
  call void @_out_of_gas()
  br label %"$have_gas_1901"

"$have_gas_1901":                                 ; preds = %"$out_of_gas_1900", %"$have_gas_1896"
  %"$consume_1902" = sub i64 %"$gasrem_1898", 1
  store i64 %"$consume_1902", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$arg1_109", align 8
  %"$gasrem_1903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1904" = icmp ugt i64 1, %"$gasrem_1903"
  br i1 %"$gascmp_1904", label %"$out_of_gas_1905", label %"$have_gas_1906"

"$out_of_gas_1905":                               ; preds = %"$have_gas_1901"
  call void @_out_of_gas()
  br label %"$have_gas_1906"

"$have_gas_1906":                                 ; preds = %"$out_of_gas_1905", %"$have_gas_1901"
  %"$consume_1907" = sub i64 %"$gasrem_1903", 1
  store i64 %"$consume_1907", i64* @_gasrem, align 8
  %"$arg2_110" = alloca %Int256, align 8
  %"$gasrem_1908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1909" = icmp ugt i64 1, %"$gasrem_1908"
  br i1 %"$gascmp_1909", label %"$out_of_gas_1910", label %"$have_gas_1911"

"$out_of_gas_1910":                               ; preds = %"$have_gas_1906"
  call void @_out_of_gas()
  br label %"$have_gas_1911"

"$have_gas_1911":                                 ; preds = %"$out_of_gas_1910", %"$have_gas_1906"
  %"$consume_1912" = sub i64 %"$gasrem_1908", 1
  store i64 %"$consume_1912", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$arg2_110", align 8
  %"$gasrem_1913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1914" = icmp ugt i64 1, %"$gasrem_1913"
  br i1 %"$gascmp_1914", label %"$out_of_gas_1915", label %"$have_gas_1916"

"$out_of_gas_1915":                               ; preds = %"$have_gas_1911"
  call void @_out_of_gas()
  br label %"$have_gas_1916"

"$have_gas_1916":                                 ; preds = %"$out_of_gas_1915", %"$have_gas_1911"
  %"$consume_1917" = sub i64 %"$gasrem_1913", 1
  store i64 %"$consume_1917", i64* @_gasrem, align 8
  %"$test_114" = alloca %TName_Bool*, align 8
  %"$gasrem_1918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1919" = icmp ugt i64 1, %"$gasrem_1918"
  br i1 %"$gascmp_1919", label %"$out_of_gas_1920", label %"$have_gas_1921"

"$out_of_gas_1920":                               ; preds = %"$have_gas_1916"
  call void @_out_of_gas()
  br label %"$have_gas_1921"

"$have_gas_1921":                                 ; preds = %"$out_of_gas_1920", %"$have_gas_1916"
  %"$consume_1922" = sub i64 %"$gasrem_1918", 1
  store i64 %"$consume_1922", i64* @_gasrem, align 8
  %"$res_111" = alloca %Int256, align 8
  %"$gasrem_1924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1925" = icmp ugt i64 80, %"$gasrem_1924"
  br i1 %"$gascmp_1925", label %"$out_of_gas_1926", label %"$have_gas_1927"

"$out_of_gas_1926":                               ; preds = %"$have_gas_1921"
  call void @_out_of_gas()
  br label %"$have_gas_1927"

"$have_gas_1927":                                 ; preds = %"$out_of_gas_1926", %"$have_gas_1921"
  %"$consume_1928" = sub i64 %"$gasrem_1924", 80
  store i64 %"$consume_1928", i64* @_gasrem, align 8
  %"$execptr_load_1929" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_109_1930" = alloca %Int256, align 8
  %"$$arg1_109_1931" = load %Int256, %Int256* %"$arg1_109", align 8
  store %Int256 %"$$arg1_109_1931", %Int256* %"$mul_$arg1_109_1930", align 8
  %"$mul_$arg2_110_1932" = alloca %Int256, align 8
  %"$$arg2_110_1933" = load %Int256, %Int256* %"$arg2_110", align 8
  store %Int256 %"$$arg2_110_1933", %Int256* %"$mul_$arg2_110_1932", align 8
  %"$mul_call_1934" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1929", %Int256* %"$mul_$arg1_109_1930", %Int256* %"$mul_$arg2_110_1932")
  %"$mul_1936" = load %Int256, %Int256* %"$mul_call_1934", align 8
  store %Int256 %"$mul_1936", %Int256* %"$res_111", align 8
  %"$gasrem_1937" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1938" = icmp ugt i64 1, %"$gasrem_1937"
  br i1 %"$gascmp_1938", label %"$out_of_gas_1939", label %"$have_gas_1940"

"$out_of_gas_1939":                               ; preds = %"$have_gas_1927"
  call void @_out_of_gas()
  br label %"$have_gas_1940"

"$have_gas_1940":                                 ; preds = %"$out_of_gas_1939", %"$have_gas_1927"
  %"$consume_1941" = sub i64 %"$gasrem_1937", 1
  store i64 %"$consume_1941", i64* @_gasrem, align 8
  %"$res__112" = alloca %Int256, align 8
  %"$gasrem_1942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1943" = icmp ugt i64 1, %"$gasrem_1942"
  br i1 %"$gascmp_1943", label %"$out_of_gas_1944", label %"$have_gas_1945"

"$out_of_gas_1944":                               ; preds = %"$have_gas_1940"
  call void @_out_of_gas()
  br label %"$have_gas_1945"

"$have_gas_1945":                                 ; preds = %"$out_of_gas_1944", %"$have_gas_1940"
  %"$consume_1946" = sub i64 %"$gasrem_1942", 1
  store i64 %"$consume_1946", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$res__112", align 8
  %"$gasrem_1947" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1948" = icmp ugt i64 1, %"$gasrem_1947"
  br i1 %"$gascmp_1948", label %"$out_of_gas_1949", label %"$have_gas_1950"

"$out_of_gas_1949":                               ; preds = %"$have_gas_1945"
  call void @_out_of_gas()
  br label %"$have_gas_1950"

"$have_gas_1950":                                 ; preds = %"$out_of_gas_1949", %"$have_gas_1945"
  %"$consume_1951" = sub i64 %"$gasrem_1947", 1
  store i64 %"$consume_1951", i64* @_gasrem, align 8
  %"$test__113" = alloca %TName_Bool*, align 8
  %"$gasrem_1953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1954" = icmp ugt i64 16, %"$gasrem_1953"
  br i1 %"$gascmp_1954", label %"$out_of_gas_1955", label %"$have_gas_1956"

"$out_of_gas_1955":                               ; preds = %"$have_gas_1950"
  call void @_out_of_gas()
  br label %"$have_gas_1956"

"$have_gas_1956":                                 ; preds = %"$out_of_gas_1955", %"$have_gas_1950"
  %"$consume_1957" = sub i64 %"$gasrem_1953", 16
  store i64 %"$consume_1957", i64* @_gasrem, align 8
  %"$execptr_load_1958" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_111_1959" = alloca %Int256, align 8
  %"$$res_111_1960" = load %Int256, %Int256* %"$res_111", align 8
  store %Int256 %"$$res_111_1960", %Int256* %"$eq_$res_111_1959", align 8
  %"$eq_$res__112_1961" = alloca %Int256, align 8
  %"$$res__112_1962" = load %Int256, %Int256* %"$res__112", align 8
  store %Int256 %"$$res__112_1962", %Int256* %"$eq_$res__112_1961", align 8
  %"$eq_call_1963" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1958", %Int256* %"$eq_$res_111_1959", %Int256* %"$eq_$res__112_1961")
  store %TName_Bool* %"$eq_call_1963", %TName_Bool** %"$test__113", align 8
  %"$gasrem_1965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1966" = icmp ugt i64 1, %"$gasrem_1965"
  br i1 %"$gascmp_1966", label %"$out_of_gas_1967", label %"$have_gas_1968"

"$out_of_gas_1967":                               ; preds = %"$have_gas_1956"
  call void @_out_of_gas()
  br label %"$have_gas_1968"

"$have_gas_1968":                                 ; preds = %"$out_of_gas_1967", %"$have_gas_1956"
  %"$consume_1969" = sub i64 %"$gasrem_1965", 1
  store i64 %"$consume_1969", i64* @_gasrem, align 8
  %"$BoolUtils.andb_159" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1970" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1971" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1970", 0
  %"$BoolUtils.andb_envptr_1972" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1970", 1
  %"$$test_108_1973" = load %TName_Bool*, %TName_Bool** %"$test_108", align 8
  %"$BoolUtils.andb_call_1974" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1971"(i8* %"$BoolUtils.andb_envptr_1972", %TName_Bool* %"$$test_108_1973")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1974", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$BoolUtils.andb_160" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_159_1975" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$$BoolUtils.andb_159_fptr_1976" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1975", 0
  %"$$BoolUtils.andb_159_envptr_1977" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1975", 1
  %"$$test__113_1978" = load %TName_Bool*, %TName_Bool** %"$test__113", align 8
  %"$$BoolUtils.andb_159_call_1979" = call %TName_Bool* %"$$BoolUtils.andb_159_fptr_1976"(i8* %"$$BoolUtils.andb_159_envptr_1977", %TName_Bool* %"$$test__113_1978")
  store %TName_Bool* %"$$BoolUtils.andb_159_call_1979", %TName_Bool** %"$BoolUtils.andb_160", align 8
  %"$$BoolUtils.andb_160_1980" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_160", align 8
  store %TName_Bool* %"$$BoolUtils.andb_160_1980", %TName_Bool** %"$test_114", align 8
  %"$gasrem_1981" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1982" = icmp ugt i64 1, %"$gasrem_1981"
  br i1 %"$gascmp_1982", label %"$out_of_gas_1983", label %"$have_gas_1984"

"$out_of_gas_1983":                               ; preds = %"$have_gas_1968"
  call void @_out_of_gas()
  br label %"$have_gas_1984"

"$have_gas_1984":                                 ; preds = %"$out_of_gas_1983", %"$have_gas_1968"
  %"$consume_1985" = sub i64 %"$gasrem_1981", 1
  store i64 %"$consume_1985", i64* @_gasrem, align 8
  %"$arg1_115" = alloca %Int256, align 8
  %"$gasrem_1986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1987" = icmp ugt i64 1, %"$gasrem_1986"
  br i1 %"$gascmp_1987", label %"$out_of_gas_1988", label %"$have_gas_1989"

"$out_of_gas_1988":                               ; preds = %"$have_gas_1984"
  call void @_out_of_gas()
  br label %"$have_gas_1989"

"$have_gas_1989":                                 ; preds = %"$out_of_gas_1988", %"$have_gas_1984"
  %"$consume_1990" = sub i64 %"$gasrem_1986", 1
  store i64 %"$consume_1990", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$arg1_115", align 8
  %"$gasrem_1991" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1992" = icmp ugt i64 1, %"$gasrem_1991"
  br i1 %"$gascmp_1992", label %"$out_of_gas_1993", label %"$have_gas_1994"

"$out_of_gas_1993":                               ; preds = %"$have_gas_1989"
  call void @_out_of_gas()
  br label %"$have_gas_1994"

"$have_gas_1994":                                 ; preds = %"$out_of_gas_1993", %"$have_gas_1989"
  %"$consume_1995" = sub i64 %"$gasrem_1991", 1
  store i64 %"$consume_1995", i64* @_gasrem, align 8
  %"$arg2_116" = alloca %Int256, align 8
  %"$gasrem_1996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1997" = icmp ugt i64 1, %"$gasrem_1996"
  br i1 %"$gascmp_1997", label %"$out_of_gas_1998", label %"$have_gas_1999"

"$out_of_gas_1998":                               ; preds = %"$have_gas_1994"
  call void @_out_of_gas()
  br label %"$have_gas_1999"

"$have_gas_1999":                                 ; preds = %"$out_of_gas_1998", %"$have_gas_1994"
  %"$consume_2000" = sub i64 %"$gasrem_1996", 1
  store i64 %"$consume_2000", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_116", align 8
  %"$gasrem_2001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2002" = icmp ugt i64 1, %"$gasrem_2001"
  br i1 %"$gascmp_2002", label %"$out_of_gas_2003", label %"$have_gas_2004"

"$out_of_gas_2003":                               ; preds = %"$have_gas_1999"
  call void @_out_of_gas()
  br label %"$have_gas_2004"

"$have_gas_2004":                                 ; preds = %"$out_of_gas_2003", %"$have_gas_1999"
  %"$consume_2005" = sub i64 %"$gasrem_2001", 1
  store i64 %"$consume_2005", i64* @_gasrem, align 8
  %"$test_120" = alloca %TName_Bool*, align 8
  %"$gasrem_2006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2007" = icmp ugt i64 1, %"$gasrem_2006"
  br i1 %"$gascmp_2007", label %"$out_of_gas_2008", label %"$have_gas_2009"

"$out_of_gas_2008":                               ; preds = %"$have_gas_2004"
  call void @_out_of_gas()
  br label %"$have_gas_2009"

"$have_gas_2009":                                 ; preds = %"$out_of_gas_2008", %"$have_gas_2004"
  %"$consume_2010" = sub i64 %"$gasrem_2006", 1
  store i64 %"$consume_2010", i64* @_gasrem, align 8
  %"$res_117" = alloca %Int256, align 8
  %"$gasrem_2012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2013" = icmp ugt i64 80, %"$gasrem_2012"
  br i1 %"$gascmp_2013", label %"$out_of_gas_2014", label %"$have_gas_2015"

"$out_of_gas_2014":                               ; preds = %"$have_gas_2009"
  call void @_out_of_gas()
  br label %"$have_gas_2015"

"$have_gas_2015":                                 ; preds = %"$out_of_gas_2014", %"$have_gas_2009"
  %"$consume_2016" = sub i64 %"$gasrem_2012", 80
  store i64 %"$consume_2016", i64* @_gasrem, align 8
  %"$execptr_load_2017" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_115_2018" = alloca %Int256, align 8
  %"$$arg1_115_2019" = load %Int256, %Int256* %"$arg1_115", align 8
  store %Int256 %"$$arg1_115_2019", %Int256* %"$mul_$arg1_115_2018", align 8
  %"$mul_$arg2_116_2020" = alloca %Int256, align 8
  %"$$arg2_116_2021" = load %Int256, %Int256* %"$arg2_116", align 8
  store %Int256 %"$$arg2_116_2021", %Int256* %"$mul_$arg2_116_2020", align 8
  %"$mul_call_2022" = call %Int256* @_mul_Int256(i8* %"$execptr_load_2017", %Int256* %"$mul_$arg1_115_2018", %Int256* %"$mul_$arg2_116_2020")
  %"$mul_2024" = load %Int256, %Int256* %"$mul_call_2022", align 8
  store %Int256 %"$mul_2024", %Int256* %"$res_117", align 8
  %"$gasrem_2025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2026" = icmp ugt i64 1, %"$gasrem_2025"
  br i1 %"$gascmp_2026", label %"$out_of_gas_2027", label %"$have_gas_2028"

"$out_of_gas_2027":                               ; preds = %"$have_gas_2015"
  call void @_out_of_gas()
  br label %"$have_gas_2028"

"$have_gas_2028":                                 ; preds = %"$out_of_gas_2027", %"$have_gas_2015"
  %"$consume_2029" = sub i64 %"$gasrem_2025", 1
  store i64 %"$consume_2029", i64* @_gasrem, align 8
  %"$res__118" = alloca %Int256, align 8
  %"$gasrem_2030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2031" = icmp ugt i64 1, %"$gasrem_2030"
  br i1 %"$gascmp_2031", label %"$out_of_gas_2032", label %"$have_gas_2033"

"$out_of_gas_2032":                               ; preds = %"$have_gas_2028"
  call void @_out_of_gas()
  br label %"$have_gas_2033"

"$have_gas_2033":                                 ; preds = %"$out_of_gas_2032", %"$have_gas_2028"
  %"$consume_2034" = sub i64 %"$gasrem_2030", 1
  store i64 %"$consume_2034", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__118", align 8
  %"$gasrem_2035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2036" = icmp ugt i64 1, %"$gasrem_2035"
  br i1 %"$gascmp_2036", label %"$out_of_gas_2037", label %"$have_gas_2038"

"$out_of_gas_2037":                               ; preds = %"$have_gas_2033"
  call void @_out_of_gas()
  br label %"$have_gas_2038"

"$have_gas_2038":                                 ; preds = %"$out_of_gas_2037", %"$have_gas_2033"
  %"$consume_2039" = sub i64 %"$gasrem_2035", 1
  store i64 %"$consume_2039", i64* @_gasrem, align 8
  %"$test__119" = alloca %TName_Bool*, align 8
  %"$gasrem_2041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2042" = icmp ugt i64 16, %"$gasrem_2041"
  br i1 %"$gascmp_2042", label %"$out_of_gas_2043", label %"$have_gas_2044"

"$out_of_gas_2043":                               ; preds = %"$have_gas_2038"
  call void @_out_of_gas()
  br label %"$have_gas_2044"

"$have_gas_2044":                                 ; preds = %"$out_of_gas_2043", %"$have_gas_2038"
  %"$consume_2045" = sub i64 %"$gasrem_2041", 16
  store i64 %"$consume_2045", i64* @_gasrem, align 8
  %"$execptr_load_2046" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_117_2047" = alloca %Int256, align 8
  %"$$res_117_2048" = load %Int256, %Int256* %"$res_117", align 8
  store %Int256 %"$$res_117_2048", %Int256* %"$eq_$res_117_2047", align 8
  %"$eq_$res__118_2049" = alloca %Int256, align 8
  %"$$res__118_2050" = load %Int256, %Int256* %"$res__118", align 8
  store %Int256 %"$$res__118_2050", %Int256* %"$eq_$res__118_2049", align 8
  %"$eq_call_2051" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2046", %Int256* %"$eq_$res_117_2047", %Int256* %"$eq_$res__118_2049")
  store %TName_Bool* %"$eq_call_2051", %TName_Bool** %"$test__119", align 8
  %"$gasrem_2053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2054" = icmp ugt i64 1, %"$gasrem_2053"
  br i1 %"$gascmp_2054", label %"$out_of_gas_2055", label %"$have_gas_2056"

"$out_of_gas_2055":                               ; preds = %"$have_gas_2044"
  call void @_out_of_gas()
  br label %"$have_gas_2056"

"$have_gas_2056":                                 ; preds = %"$out_of_gas_2055", %"$have_gas_2044"
  %"$consume_2057" = sub i64 %"$gasrem_2053", 1
  store i64 %"$consume_2057", i64* @_gasrem, align 8
  %"$BoolUtils.andb_161" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2058" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2059" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2058", 0
  %"$BoolUtils.andb_envptr_2060" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2058", 1
  %"$$test_114_2061" = load %TName_Bool*, %TName_Bool** %"$test_114", align 8
  %"$BoolUtils.andb_call_2062" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2059"(i8* %"$BoolUtils.andb_envptr_2060", %TName_Bool* %"$$test_114_2061")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2062", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$BoolUtils.andb_162" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_161_2063" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$$BoolUtils.andb_161_fptr_2064" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_2063", 0
  %"$$BoolUtils.andb_161_envptr_2065" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_2063", 1
  %"$$test__119_2066" = load %TName_Bool*, %TName_Bool** %"$test__119", align 8
  %"$$BoolUtils.andb_161_call_2067" = call %TName_Bool* %"$$BoolUtils.andb_161_fptr_2064"(i8* %"$$BoolUtils.andb_161_envptr_2065", %TName_Bool* %"$$test__119_2066")
  store %TName_Bool* %"$$BoolUtils.andb_161_call_2067", %TName_Bool** %"$BoolUtils.andb_162", align 8
  %"$$BoolUtils.andb_162_2068" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_162", align 8
  store %TName_Bool* %"$$BoolUtils.andb_162_2068", %TName_Bool** %"$test_120", align 8
  %"$gasrem_2069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2070" = icmp ugt i64 1, %"$gasrem_2069"
  br i1 %"$gascmp_2070", label %"$out_of_gas_2071", label %"$have_gas_2072"

"$out_of_gas_2071":                               ; preds = %"$have_gas_2056"
  call void @_out_of_gas()
  br label %"$have_gas_2072"

"$have_gas_2072":                                 ; preds = %"$out_of_gas_2071", %"$have_gas_2056"
  %"$consume_2073" = sub i64 %"$gasrem_2069", 1
  store i64 %"$consume_2073", i64* @_gasrem, align 8
  %"$$test_120_2074" = load %TName_Bool*, %TName_Bool** %"$test_120", align 8
  store %TName_Bool* %"$$test_120_2074", %TName_Bool** %"$expr_167", align 8
  %"$$expr_167_2075" = load %TName_Bool*, %TName_Bool** %"$expr_167", align 8
  ret %TName_Bool* %"$$expr_167_2075"
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
  %"$exprval_2076" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2077" = bitcast %TName_Bool* %"$exprval_2076" to i8*
  %"$execptr_load_2078" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2078", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_200", i8* %"$memvoidcast_2077")
  ret void
}
