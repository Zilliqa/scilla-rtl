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

%"$TyDescrTy_PrimTyp_174" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_204" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_203"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_203" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_205"**, %"$TyDescrTy_ADTTyp_204"* }
%"$TyDescrTy_ADTTyp_Constr_205" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_2120" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2121" = type { %ParamDescrString, i32, %"$ParamDescr_2120"* }
%"$$fundef_171_env_222" = type { %TName_Bool* }
%"$$fundef_169_env_223" = type {}
%Uint32 = type { i32 }
%Int64 = type { i64 }
%Uint64 = type { i64 }
%Uint128 = type { i128 }
%Int128 = type { i128 }
%Int256 = type { i256 }
%Uint256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_175" = global %"$TyDescrTy_PrimTyp_174" zeroinitializer
@"$TyDescr_Int32_176" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Int32_Prim_175" to i8*) }
@"$TyDescr_Uint32_Prim_177" = global %"$TyDescrTy_PrimTyp_174" { i32 1, i32 0 }
@"$TyDescr_Uint32_178" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Uint32_Prim_177" to i8*) }
@"$TyDescr_Int64_Prim_179" = global %"$TyDescrTy_PrimTyp_174" { i32 0, i32 1 }
@"$TyDescr_Int64_180" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Int64_Prim_179" to i8*) }
@"$TyDescr_Uint64_Prim_181" = global %"$TyDescrTy_PrimTyp_174" { i32 1, i32 1 }
@"$TyDescr_Uint64_182" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Uint64_Prim_181" to i8*) }
@"$TyDescr_Int128_Prim_183" = global %"$TyDescrTy_PrimTyp_174" { i32 0, i32 2 }
@"$TyDescr_Int128_184" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Int128_Prim_183" to i8*) }
@"$TyDescr_Uint128_Prim_185" = global %"$TyDescrTy_PrimTyp_174" { i32 1, i32 2 }
@"$TyDescr_Uint128_186" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Uint128_Prim_185" to i8*) }
@"$TyDescr_Int256_Prim_187" = global %"$TyDescrTy_PrimTyp_174" { i32 0, i32 3 }
@"$TyDescr_Int256_188" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Int256_Prim_187" to i8*) }
@"$TyDescr_Uint256_Prim_189" = global %"$TyDescrTy_PrimTyp_174" { i32 1, i32 3 }
@"$TyDescr_Uint256_190" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Uint256_Prim_189" to i8*) }
@"$TyDescr_String_Prim_191" = global %"$TyDescrTy_PrimTyp_174" { i32 2, i32 0 }
@"$TyDescr_String_192" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_String_Prim_191" to i8*) }
@"$TyDescr_Bnum_Prim_193" = global %"$TyDescrTy_PrimTyp_174" { i32 3, i32 0 }
@"$TyDescr_Bnum_194" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Bnum_Prim_193" to i8*) }
@"$TyDescr_Message_Prim_195" = global %"$TyDescrTy_PrimTyp_174" { i32 4, i32 0 }
@"$TyDescr_Message_196" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Message_Prim_195" to i8*) }
@"$TyDescr_Event_Prim_197" = global %"$TyDescrTy_PrimTyp_174" { i32 5, i32 0 }
@"$TyDescr_Event_198" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Event_Prim_197" to i8*) }
@"$TyDescr_Exception_Prim_199" = global %"$TyDescrTy_PrimTyp_174" { i32 6, i32 0 }
@"$TyDescr_Exception_200" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Exception_Prim_199" to i8*) }
@"$TyDescr_Bystr_Prim_201" = global %"$TyDescrTy_PrimTyp_174" { i32 7, i32 0 }
@"$TyDescr_Bystr_202" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Bystr_Prim_201" to i8*) }
@"$TyDescr_ADT_Bool_206" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_203"* @"$TyDescr_Bool_ADTTyp_Specl_219" to i8*) }
@"$TyDescr_Bool_ADTTyp_210" = unnamed_addr constant %"$TyDescrTy_ADTTyp_204" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_221", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_203"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_203"*], [1 x %"$TyDescrTy_ADTTyp_Specl_203"*]* @"$TyDescr_Bool_ADTTyp_m_specls_220", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_211" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_212" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_213" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_205" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_212", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_211", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_214" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_215" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_216" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_205" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_215", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_214", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_217" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_205"*] [%"$TyDescrTy_ADTTyp_Constr_205"* @"$TyDescr_Bool_True_ADTTyp_Constr_213", %"$TyDescrTy_ADTTyp_Constr_205"* @"$TyDescr_Bool_False_ADTTyp_Constr_216"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_218" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_219" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_203" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_218", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_205"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_205"*], [2 x %"$TyDescrTy_ADTTyp_Constr_205"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_217", i32 0, i32 0), %"$TyDescrTy_ADTTyp_204"* @"$TyDescr_Bool_ADTTyp_210" }
@"$TyDescr_Bool_ADTTyp_m_specls_220" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_203"*] [%"$TyDescrTy_ADTTyp_Specl_203"* @"$TyDescr_Bool_ADTTyp_Specl_219"]
@"$TyDescr_ADT_Bool_221" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_198", %_TyDescrTy_Typ* @"$TyDescr_Int64_180", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_206", %_TyDescrTy_Typ* @"$TyDescr_Uint256_190", %_TyDescrTy_Typ* @"$TyDescr_Uint32_178", %_TyDescrTy_Typ* @"$TyDescr_Uint64_182", %_TyDescrTy_Typ* @"$TyDescr_Bnum_194", %_TyDescrTy_Typ* @"$TyDescr_Uint128_186", %_TyDescrTy_Typ* @"$TyDescr_Exception_200", %_TyDescrTy_Typ* @"$TyDescr_String_192", %_TyDescrTy_Typ* @"$TyDescr_Int256_188", %_TyDescrTy_Typ* @"$TyDescr_Int128_184", %_TyDescrTy_Typ* @"$TyDescr_Bystr_202", %_TyDescrTy_Typ* @"$TyDescr_Message_196", %_TyDescrTy_Typ* @"$TyDescr_Int32_176"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_2120"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2121"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_171"(%"$$fundef_171_env_222"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_171_env_b_235" = getelementptr inbounds %"$$fundef_171_env_222", %"$$fundef_171_env_222"* %0, i32 0, i32 0
  %"$b_envload_236" = load %TName_Bool*, %TName_Bool** %"$$fundef_171_env_b_235", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_236", %TName_Bool** %b, align 8
  %"$retval_172" = alloca %TName_Bool*, align 8
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 2, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %entry
  %"$consume_241" = sub i64 %"$gasrem_237", 2
  store i64 %"$consume_241", i64* @_gasrem, align 8
  %"$b_243" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_244" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_243", i32 0, i32 0
  %"$b_tag_245" = load i8, i8* %"$b_tag_244", align 1
  switch i8 %"$b_tag_245", label %"$empty_default_246" [
    i8 1, label %"$False_247"
    i8 0, label %"$True_257"
  ], !dbg !9

"$False_247":                                     ; preds = %"$have_gas_240"
  %"$b_248" = bitcast %TName_Bool* %"$b_243" to %CName_False*
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$False_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$False_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$adtval_254_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_254_salloc" = call i8* @_salloc(i8* %"$adtval_254_load", i64 1)
  %"$adtval_254" = bitcast i8* %"$adtval_254_salloc" to %CName_False*
  %"$adtgep_255" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_254", i32 0, i32 0
  store i8 1, i8* %"$adtgep_255", align 1
  %"$adtptr_256" = bitcast %CName_False* %"$adtval_254" to %TName_Bool*
  store %TName_Bool* %"$adtptr_256", %TName_Bool** %"$retval_172", align 8, !dbg !10
  br label %"$matchsucc_242"

"$True_257":                                      ; preds = %"$have_gas_240"
  %"$b_258" = bitcast %TName_Bool* %"$b_243" to %CName_True*
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$True_257"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$True_257"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_172", align 8, !dbg !13
  br label %"$matchsucc_242"

"$empty_default_246":                             ; preds = %"$have_gas_240"
  br label %"$matchsucc_242"

"$matchsucc_242":                                 ; preds = %"$have_gas_262", %"$have_gas_252", %"$empty_default_246"
  %"$$retval_172_264" = load %TName_Bool*, %TName_Bool** %"$retval_172", align 8
  ret %TName_Bool* %"$$retval_172_264"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_169"(%"$$fundef_169_env_223"* %0, %TName_Bool* %1) !dbg !15 {
entry:
  %"$retval_170" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %entry
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %"$$fundef_171_envp_229_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_171_envp_229_salloc" = call i8* @_salloc(i8* %"$$fundef_171_envp_229_load", i64 8)
  %"$$fundef_171_envp_229" = bitcast i8* %"$$fundef_171_envp_229_salloc" to %"$$fundef_171_env_222"*
  %"$$fundef_171_env_voidp_231" = bitcast %"$$fundef_171_env_222"* %"$$fundef_171_envp_229" to i8*
  %"$$fundef_171_cloval_232" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_171_env_222"*, %TName_Bool*)* @"$fundef_171" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_171_env_voidp_231", 1
  %"$$fundef_171_env_b_233" = getelementptr inbounds %"$$fundef_171_env_222", %"$$fundef_171_env_222"* %"$$fundef_171_envp_229", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_171_env_b_233", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_171_cloval_232", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_170", align 8, !dbg !16
  %"$$retval_170_234" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_170", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_170_234"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !17 {
entry:
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 5, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %entry
  %"$consume_269" = sub i64 %"$gasrem_265", 5
  store i64 %"$consume_269", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !19
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 7, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_268"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_268"
  %"$consume_274" = sub i64 %"$gasrem_270", 7
  store i64 %"$consume_274", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !19
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_273"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_169_env_223"*, %TName_Bool*)* @"$fundef_169" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !20
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 196, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_278"
  %"$consume_287" = sub i64 %"$gasrem_283", 196
  store i64 %"$consume_287", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !19
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 20, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %"$have_gas_286"
  %"$consume_292" = sub i64 %"$gasrem_288", 20
  store i64 %"$consume_292", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !19
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 12, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_291"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_291"
  %"$consume_297" = sub i64 %"$gasrem_293", 12
  store i64 %"$consume_297", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !19
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 2, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_296"
  %"$consume_302" = sub i64 %"$gasrem_298", 2
  store i64 %"$consume_302", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !19
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !21 {
entry:
  %"$expr_173" = alloca %TName_Bool*, align 8
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %entry
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %"$gasrem_308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_306"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem, align 8
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_311"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_316"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$adtval_323_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_323_salloc" = call i8* @_salloc(i8* %"$adtval_323_load", i64 1)
  %"$adtval_323" = bitcast i8* %"$adtval_323_salloc" to %CName_True*
  %"$adtgep_324" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_323", i32 0, i32 0
  store i8 0, i8* %"$adtgep_324", align 1
  %"$adtptr_325" = bitcast %CName_True* %"$adtval_323" to %TName_Bool*
  store %TName_Bool* %"$adtptr_325", %TName_Bool** %test, align 8, !dbg !22
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_321"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4, !dbg !23
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 1, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_334"
  %"$consume_340" = sub i64 %"$gasrem_336", 1
  store i64 %"$consume_340", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_339"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_339"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4, !dbg !24
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_349"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 20, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_354"
  %"$consume_360" = sub i64 %"$gasrem_356", 20
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$arg1_361" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_362" = load %Uint32, %Uint32* %arg2, align 4
  %"$mul_call_363" = call %Uint32 @_mul_Uint32(%Uint32 %"$arg1_361", %Uint32 %"$arg2_362"), !dbg !25
  store %Uint32 %"$mul_call_363", %Uint32* %res, align 4, !dbg !25
  %"$gasrem_364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_365" = icmp ugt i64 1, %"$gasrem_364"
  br i1 %"$gascmp_365", label %"$out_of_gas_366", label %"$have_gas_367"

"$out_of_gas_366":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_367"

"$have_gas_367":                                  ; preds = %"$out_of_gas_366", %"$have_gas_359"
  %"$consume_368" = sub i64 %"$gasrem_364", 1
  store i64 %"$consume_368", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  %"$gasrem_369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_370" = icmp ugt i64 1, %"$gasrem_369"
  br i1 %"$gascmp_370", label %"$out_of_gas_371", label %"$have_gas_372"

"$out_of_gas_371":                                ; preds = %"$have_gas_367"
  call void @_out_of_gas()
  br label %"$have_gas_372"

"$have_gas_372":                                  ; preds = %"$out_of_gas_371", %"$have_gas_367"
  %"$consume_373" = sub i64 %"$gasrem_369", 1
  store i64 %"$consume_373", i64* @_gasrem, align 8
  store %Uint32 { i32 3398492 }, %Uint32* %res_, align 4, !dbg !26
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_372"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_372"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 4, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 4
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$execptr_load_384" = load i8*, i8** @_execptr, align 8
  %"$res_385" = load %Uint32, %Uint32* %res, align 4
  %"$res__386" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_387" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_384", %Uint32 %"$res_385", %Uint32 %"$res__386"), !dbg !27
  store %TName_Bool* %"$eq_call_387", %TName_Bool** %test_, align 8, !dbg !27
  %"$gasrem_389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_382"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem, align 8
  %"$BoolUtils.andb_127" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_394" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_395" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_394", 0
  %"$BoolUtils.andb_envptr_396" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_394", 1
  %"$test_397" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_398" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_395"(i8* %"$BoolUtils.andb_envptr_396", %TName_Bool* %"$test_397"), !dbg !28
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_398", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8, !dbg !28
  %"$BoolUtils.andb_128" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_127_399" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8
  %"$$BoolUtils.andb_127_fptr_400" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_399", 0
  %"$$BoolUtils.andb_127_envptr_401" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_399", 1
  %"$test__402" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_127_call_403" = call %TName_Bool* %"$$BoolUtils.andb_127_fptr_400"(i8* %"$$BoolUtils.andb_127_envptr_401", %TName_Bool* %"$test__402"), !dbg !28
  store %TName_Bool* %"$$BoolUtils.andb_127_call_403", %TName_Bool** %"$BoolUtils.andb_128", align 8, !dbg !28
  %"$$BoolUtils.andb_128_404" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_128", align 8
  store %TName_Bool* %"$$BoolUtils.andb_128_404", %TName_Bool** %"$test_6", align 8, !dbg !28
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_392"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %"$arg2_7" = alloca %Int32, align 8
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg2_7", align 4, !dbg !29
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %"$arg1_8" = alloca %Int32, align 8
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg1_8", align 4, !dbg !30
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %"$res_9" = alloca %Int32, align 8
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 20, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_433"
  %"$consume_439" = sub i64 %"$gasrem_435", 20
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %"$$arg1_8_440" = load %Int32, %Int32* %"$arg1_8", align 4
  %"$$arg2_7_441" = load %Int32, %Int32* %"$arg2_7", align 4
  %"$mul_call_442" = call %Int32 @_mul_Int32(%Int32 %"$$arg1_8_440", %Int32 %"$$arg2_7_441"), !dbg !31
  store %Int32 %"$mul_call_442", %Int32* %"$res_9", align 4, !dbg !31
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_438"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %"$res__10" = alloca %Int32, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  store %Int32 { i32 -3398492 }, %Int32* %"$res__10", align 4, !dbg !32
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 4, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 4
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %"$execptr_load_463" = load i8*, i8** @_execptr, align 8
  %"$$res_9_464" = load %Int32, %Int32* %"$res_9", align 4
  %"$$res__10_465" = load %Int32, %Int32* %"$res__10", align 4
  %"$eq_call_466" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_463", %Int32 %"$$res_9_464", %Int32 %"$$res__10_465"), !dbg !33
  store %TName_Bool* %"$eq_call_466", %TName_Bool** %"$test__11", align 8, !dbg !33
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_461"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %"$BoolUtils.andb_129" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_473" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_474" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_473", 0
  %"$BoolUtils.andb_envptr_475" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_473", 1
  %"$$test_6_476" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_477" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_474"(i8* %"$BoolUtils.andb_envptr_475", %TName_Bool* %"$$test_6_476"), !dbg !34
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_477", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_129", align 8, !dbg !34
  %"$BoolUtils.andb_130" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_129_478" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_129", align 8
  %"$$BoolUtils.andb_129_fptr_479" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_129_478", 0
  %"$$BoolUtils.andb_129_envptr_480" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_129_478", 1
  %"$$test__11_481" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_129_call_482" = call %TName_Bool* %"$$BoolUtils.andb_129_fptr_479"(i8* %"$$BoolUtils.andb_129_envptr_480", %TName_Bool* %"$$test__11_481"), !dbg !34
  store %TName_Bool* %"$$BoolUtils.andb_129_call_482", %TName_Bool** %"$BoolUtils.andb_130", align 8, !dbg !34
  %"$$BoolUtils.andb_130_483" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_130", align 8
  store %TName_Bool* %"$$BoolUtils.andb_130_483", %TName_Bool** %"$test_12", align 8, !dbg !34
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_471"
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  %"$arg1_13" = alloca %Int64, align 8
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_487"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775806 }, %Int64* %"$arg1_13", align 8, !dbg !35
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_492"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$arg2_14" = alloca %Int64, align 8
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$have_gas_497"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  store %Int64 { i64 -1 }, %Int64* %"$arg2_14", align 8, !dbg !36
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 1, %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %"$have_gas_502"
  %"$consume_508" = sub i64 %"$gasrem_504", 1
  store i64 %"$consume_508", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_507"
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$res_15" = alloca %Int64, align 8
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 20, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_512"
  %"$consume_518" = sub i64 %"$gasrem_514", 20
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %"$$arg1_13_519" = load %Int64, %Int64* %"$arg1_13", align 8
  %"$$arg2_14_520" = load %Int64, %Int64* %"$arg2_14", align 8
  %"$mul_call_521" = call %Int64 @_mul_Int64(%Int64 %"$$arg1_13_519", %Int64 %"$$arg2_14_520"), !dbg !37
  store %Int64 %"$mul_call_521", %Int64* %"$res_15", align 8, !dbg !37
  %"$gasrem_522" = load i64, i64* @_gasrem, align 8
  %"$gascmp_523" = icmp ugt i64 1, %"$gasrem_522"
  br i1 %"$gascmp_523", label %"$out_of_gas_524", label %"$have_gas_525"

"$out_of_gas_524":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_525"

"$have_gas_525":                                  ; preds = %"$out_of_gas_524", %"$have_gas_517"
  %"$consume_526" = sub i64 %"$gasrem_522", 1
  store i64 %"$consume_526", i64* @_gasrem, align 8
  %"$res__16" = alloca %Int64, align 8
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 1, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %"$have_gas_525"
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %"$have_gas_525"
  %"$consume_531" = sub i64 %"$gasrem_527", 1
  store i64 %"$consume_531", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775806 }, %Int64* %"$res__16", align 8, !dbg !38
  %"$gasrem_532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_533" = icmp ugt i64 1, %"$gasrem_532"
  br i1 %"$gascmp_533", label %"$out_of_gas_534", label %"$have_gas_535"

"$out_of_gas_534":                                ; preds = %"$have_gas_530"
  call void @_out_of_gas()
  br label %"$have_gas_535"

"$have_gas_535":                                  ; preds = %"$out_of_gas_534", %"$have_gas_530"
  %"$consume_536" = sub i64 %"$gasrem_532", 1
  store i64 %"$consume_536", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 4, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_535"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_535"
  %"$consume_541" = sub i64 %"$gasrem_537", 4
  store i64 %"$consume_541", i64* @_gasrem, align 8
  %"$execptr_load_542" = load i8*, i8** @_execptr, align 8
  %"$$res_15_543" = load %Int64, %Int64* %"$res_15", align 8
  %"$$res__16_544" = load %Int64, %Int64* %"$res__16", align 8
  %"$eq_call_545" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_542", %Int64 %"$$res_15_543", %Int64 %"$$res__16_544"), !dbg !39
  store %TName_Bool* %"$eq_call_545", %TName_Bool** %"$test__17", align 8, !dbg !39
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_540"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$BoolUtils.andb_131" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_552" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_553" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_552", 0
  %"$BoolUtils.andb_envptr_554" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_552", 1
  %"$$test_12_555" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_556" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_553"(i8* %"$BoolUtils.andb_envptr_554", %TName_Bool* %"$$test_12_555"), !dbg !40
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_556", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_131", align 8, !dbg !40
  %"$BoolUtils.andb_132" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_131_557" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_131", align 8
  %"$$BoolUtils.andb_131_fptr_558" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_131_557", 0
  %"$$BoolUtils.andb_131_envptr_559" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_131_557", 1
  %"$$test__17_560" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_131_call_561" = call %TName_Bool* %"$$BoolUtils.andb_131_fptr_558"(i8* %"$$BoolUtils.andb_131_envptr_559", %TName_Bool* %"$$test__17_560"), !dbg !40
  store %TName_Bool* %"$$BoolUtils.andb_131_call_561", %TName_Bool** %"$BoolUtils.andb_132", align 8, !dbg !40
  %"$$BoolUtils.andb_132_562" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_132", align 8
  store %TName_Bool* %"$$BoolUtils.andb_132_562", %TName_Bool** %"$test_18", align 8, !dbg !40
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$have_gas_550"
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem, align 8
  %"$arg2_19" = alloca %Uint64, align 8
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_566"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_566"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  store %Uint64 { i64 2147483647 }, %Uint64* %"$arg2_19", align 8, !dbg !41
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 1, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %"$have_gas_571"
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %"$have_gas_571"
  %"$consume_577" = sub i64 %"$gasrem_573", 1
  store i64 %"$consume_577", i64* @_gasrem, align 8
  %"$arg1_20" = alloca %Uint64, align 8
  %"$gasrem_578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_579" = icmp ugt i64 1, %"$gasrem_578"
  br i1 %"$gascmp_579", label %"$out_of_gas_580", label %"$have_gas_581"

"$out_of_gas_580":                                ; preds = %"$have_gas_576"
  call void @_out_of_gas()
  br label %"$have_gas_581"

"$have_gas_581":                                  ; preds = %"$out_of_gas_580", %"$have_gas_576"
  %"$consume_582" = sub i64 %"$gasrem_578", 1
  store i64 %"$consume_582", i64* @_gasrem, align 8
  store %Uint64 { i64 2147483647 }, %Uint64* %"$arg1_20", align 8, !dbg !42
  %"$gasrem_583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_584" = icmp ugt i64 1, %"$gasrem_583"
  br i1 %"$gascmp_584", label %"$out_of_gas_585", label %"$have_gas_586"

"$out_of_gas_585":                                ; preds = %"$have_gas_581"
  call void @_out_of_gas()
  br label %"$have_gas_586"

"$have_gas_586":                                  ; preds = %"$out_of_gas_585", %"$have_gas_581"
  %"$consume_587" = sub i64 %"$gasrem_583", 1
  store i64 %"$consume_587", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_586"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_586"
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem, align 8
  %"$res_21" = alloca %Uint64, align 8
  %"$gasrem_593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_594" = icmp ugt i64 20, %"$gasrem_593"
  br i1 %"$gascmp_594", label %"$out_of_gas_595", label %"$have_gas_596"

"$out_of_gas_595":                                ; preds = %"$have_gas_591"
  call void @_out_of_gas()
  br label %"$have_gas_596"

"$have_gas_596":                                  ; preds = %"$out_of_gas_595", %"$have_gas_591"
  %"$consume_597" = sub i64 %"$gasrem_593", 20
  store i64 %"$consume_597", i64* @_gasrem, align 8
  %"$$arg1_20_598" = load %Uint64, %Uint64* %"$arg1_20", align 8
  %"$$arg2_19_599" = load %Uint64, %Uint64* %"$arg2_19", align 8
  %"$mul_call_600" = call %Uint64 @_mul_Uint64(%Uint64 %"$$arg1_20_598", %Uint64 %"$$arg2_19_599"), !dbg !43
  store %Uint64 %"$mul_call_600", %Uint64* %"$res_21", align 8, !dbg !43
  %"$gasrem_601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_602" = icmp ugt i64 1, %"$gasrem_601"
  br i1 %"$gascmp_602", label %"$out_of_gas_603", label %"$have_gas_604"

"$out_of_gas_603":                                ; preds = %"$have_gas_596"
  call void @_out_of_gas()
  br label %"$have_gas_604"

"$have_gas_604":                                  ; preds = %"$out_of_gas_603", %"$have_gas_596"
  %"$consume_605" = sub i64 %"$gasrem_601", 1
  store i64 %"$consume_605", i64* @_gasrem, align 8
  %"$res__22" = alloca %Uint64, align 8
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 1, %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %"$have_gas_604"
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %"$have_gas_604"
  %"$consume_610" = sub i64 %"$gasrem_606", 1
  store i64 %"$consume_610", i64* @_gasrem, align 8
  store %Uint64 { i64 4611686014132420609 }, %Uint64* %"$res__22", align 8, !dbg !44
  %"$gasrem_611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_612" = icmp ugt i64 1, %"$gasrem_611"
  br i1 %"$gascmp_612", label %"$out_of_gas_613", label %"$have_gas_614"

"$out_of_gas_613":                                ; preds = %"$have_gas_609"
  call void @_out_of_gas()
  br label %"$have_gas_614"

"$have_gas_614":                                  ; preds = %"$out_of_gas_613", %"$have_gas_609"
  %"$consume_615" = sub i64 %"$gasrem_611", 1
  store i64 %"$consume_615", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 4, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %"$have_gas_614"
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %"$have_gas_614"
  %"$consume_620" = sub i64 %"$gasrem_616", 4
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %"$execptr_load_621" = load i8*, i8** @_execptr, align 8
  %"$$res_21_622" = load %Uint64, %Uint64* %"$res_21", align 8
  %"$$res__22_623" = load %Uint64, %Uint64* %"$res__22", align 8
  %"$eq_call_624" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_621", %Uint64 %"$$res_21_622", %Uint64 %"$$res__22_623"), !dbg !45
  store %TName_Bool* %"$eq_call_624", %TName_Bool** %"$test__23", align 8, !dbg !45
  %"$gasrem_626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_627" = icmp ugt i64 1, %"$gasrem_626"
  br i1 %"$gascmp_627", label %"$out_of_gas_628", label %"$have_gas_629"

"$out_of_gas_628":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_629"

"$have_gas_629":                                  ; preds = %"$out_of_gas_628", %"$have_gas_619"
  %"$consume_630" = sub i64 %"$gasrem_626", 1
  store i64 %"$consume_630", i64* @_gasrem, align 8
  %"$BoolUtils.andb_133" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_631" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_632" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_631", 0
  %"$BoolUtils.andb_envptr_633" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_631", 1
  %"$$test_18_634" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_635" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_632"(i8* %"$BoolUtils.andb_envptr_633", %TName_Bool* %"$$test_18_634"), !dbg !46
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_635", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8, !dbg !46
  %"$BoolUtils.andb_134" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_133_636" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8
  %"$$BoolUtils.andb_133_fptr_637" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_636", 0
  %"$$BoolUtils.andb_133_envptr_638" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_636", 1
  %"$$test__23_639" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_133_call_640" = call %TName_Bool* %"$$BoolUtils.andb_133_fptr_637"(i8* %"$$BoolUtils.andb_133_envptr_638", %TName_Bool* %"$$test__23_639"), !dbg !46
  store %TName_Bool* %"$$BoolUtils.andb_133_call_640", %TName_Bool** %"$BoolUtils.andb_134", align 8, !dbg !46
  %"$$BoolUtils.andb_134_641" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_134", align 8
  store %TName_Bool* %"$$BoolUtils.andb_134_641", %TName_Bool** %"$test_24", align 8, !dbg !46
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 1, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %"$have_gas_629"
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %"$have_gas_629"
  %"$consume_646" = sub i64 %"$gasrem_642", 1
  store i64 %"$consume_646", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Uint128, align 8
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 1, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$have_gas_645"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$have_gas_645"
  %"$consume_651" = sub i64 %"$gasrem_647", 1
  store i64 %"$consume_651", i64* @_gasrem, align 8
  store %Uint128 { i128 9223372036854775806 }, %Uint128* %"$arg1_25", align 8, !dbg !47
  %"$gasrem_652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_653" = icmp ugt i64 1, %"$gasrem_652"
  br i1 %"$gascmp_653", label %"$out_of_gas_654", label %"$have_gas_655"

"$out_of_gas_654":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_655"

"$have_gas_655":                                  ; preds = %"$out_of_gas_654", %"$have_gas_650"
  %"$consume_656" = sub i64 %"$gasrem_652", 1
  store i64 %"$consume_656", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Uint128, align 8
  %"$gasrem_657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_658" = icmp ugt i64 1, %"$gasrem_657"
  br i1 %"$gascmp_658", label %"$out_of_gas_659", label %"$have_gas_660"

"$out_of_gas_659":                                ; preds = %"$have_gas_655"
  call void @_out_of_gas()
  br label %"$have_gas_660"

"$have_gas_660":                                  ; preds = %"$out_of_gas_659", %"$have_gas_655"
  %"$consume_661" = sub i64 %"$gasrem_657", 1
  store i64 %"$consume_661", i64* @_gasrem, align 8
  store %Uint128 { i128 9223372036854775806 }, %Uint128* %"$arg2_26", align 8, !dbg !48
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 1, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_660"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_660"
  %"$consume_666" = sub i64 %"$gasrem_662", 1
  store i64 %"$consume_666", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_668" = icmp ugt i64 1, %"$gasrem_667"
  br i1 %"$gascmp_668", label %"$out_of_gas_669", label %"$have_gas_670"

"$out_of_gas_669":                                ; preds = %"$have_gas_665"
  call void @_out_of_gas()
  br label %"$have_gas_670"

"$have_gas_670":                                  ; preds = %"$out_of_gas_669", %"$have_gas_665"
  %"$consume_671" = sub i64 %"$gasrem_667", 1
  store i64 %"$consume_671", i64* @_gasrem, align 8
  %"$res_27" = alloca %Uint128, align 8
  %"$gasrem_673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_674" = icmp ugt i64 40, %"$gasrem_673"
  br i1 %"$gascmp_674", label %"$out_of_gas_675", label %"$have_gas_676"

"$out_of_gas_675":                                ; preds = %"$have_gas_670"
  call void @_out_of_gas()
  br label %"$have_gas_676"

"$have_gas_676":                                  ; preds = %"$out_of_gas_675", %"$have_gas_670"
  %"$consume_677" = sub i64 %"$gasrem_673", 40
  store i64 %"$consume_677", i64* @_gasrem, align 8
  %"$$arg1_25_678" = load %Uint128, %Uint128* %"$arg1_25", align 8
  %"$$arg2_26_679" = load %Uint128, %Uint128* %"$arg2_26", align 8
  %"$mul_call_680" = call %Uint128 @_mul_Uint128(%Uint128 %"$$arg1_25_678", %Uint128 %"$$arg2_26_679"), !dbg !49
  store %Uint128 %"$mul_call_680", %Uint128* %"$res_27", align 8, !dbg !49
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %"$have_gas_676"
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %"$have_gas_676"
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem, align 8
  %"$res__28" = alloca %Uint128, align 8
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 1, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$have_gas_684"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$have_gas_684"
  %"$consume_690" = sub i64 %"$gasrem_686", 1
  store i64 %"$consume_690", i64* @_gasrem, align 8
  store %Uint128 { i128 85070591730234615828950163710522949636 }, %Uint128* %"$res__28", align 8, !dbg !50
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 1, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %"$have_gas_689"
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %"$have_gas_689"
  %"$consume_695" = sub i64 %"$gasrem_691", 1
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 8, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %"$have_gas_694"
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %"$have_gas_694"
  %"$consume_701" = sub i64 %"$gasrem_697", 8
  store i64 %"$consume_701", i64* @_gasrem, align 8
  %"$execptr_load_702" = load i8*, i8** @_execptr, align 8
  %"$$res_27_703" = load %Uint128, %Uint128* %"$res_27", align 8
  %"$$res__28_704" = load %Uint128, %Uint128* %"$res__28", align 8
  %"$eq_call_705" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_702", %Uint128 %"$$res_27_703", %Uint128 %"$$res__28_704"), !dbg !51
  store %TName_Bool* %"$eq_call_705", %TName_Bool** %"$test__29", align 8, !dbg !51
  %"$gasrem_707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_708" = icmp ugt i64 1, %"$gasrem_707"
  br i1 %"$gascmp_708", label %"$out_of_gas_709", label %"$have_gas_710"

"$out_of_gas_709":                                ; preds = %"$have_gas_700"
  call void @_out_of_gas()
  br label %"$have_gas_710"

"$have_gas_710":                                  ; preds = %"$out_of_gas_709", %"$have_gas_700"
  %"$consume_711" = sub i64 %"$gasrem_707", 1
  store i64 %"$consume_711", i64* @_gasrem, align 8
  %"$BoolUtils.andb_135" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_712" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_713" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_712", 0
  %"$BoolUtils.andb_envptr_714" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_712", 1
  %"$$test_24_715" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_716" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_713"(i8* %"$BoolUtils.andb_envptr_714", %TName_Bool* %"$$test_24_715"), !dbg !52
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_716", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8, !dbg !52
  %"$BoolUtils.andb_136" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_135_717" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$$BoolUtils.andb_135_fptr_718" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_717", 0
  %"$$BoolUtils.andb_135_envptr_719" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_717", 1
  %"$$test__29_720" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_135_call_721" = call %TName_Bool* %"$$BoolUtils.andb_135_fptr_718"(i8* %"$$BoolUtils.andb_135_envptr_719", %TName_Bool* %"$$test__29_720"), !dbg !52
  store %TName_Bool* %"$$BoolUtils.andb_135_call_721", %TName_Bool** %"$BoolUtils.andb_136", align 8, !dbg !52
  %"$$BoolUtils.andb_136_722" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_136", align 8
  store %TName_Bool* %"$$BoolUtils.andb_136_722", %TName_Bool** %"$test_30", align 8, !dbg !52
  %"$gasrem_723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_724" = icmp ugt i64 1, %"$gasrem_723"
  br i1 %"$gascmp_724", label %"$out_of_gas_725", label %"$have_gas_726"

"$out_of_gas_725":                                ; preds = %"$have_gas_710"
  call void @_out_of_gas()
  br label %"$have_gas_726"

"$have_gas_726":                                  ; preds = %"$out_of_gas_725", %"$have_gas_710"
  %"$consume_727" = sub i64 %"$gasrem_723", 1
  store i64 %"$consume_727", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Int128, align 8
  %"$gasrem_728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_729" = icmp ugt i64 1, %"$gasrem_728"
  br i1 %"$gascmp_729", label %"$out_of_gas_730", label %"$have_gas_731"

"$out_of_gas_730":                                ; preds = %"$have_gas_726"
  call void @_out_of_gas()
  br label %"$have_gas_731"

"$have_gas_731":                                  ; preds = %"$out_of_gas_730", %"$have_gas_726"
  %"$consume_732" = sub i64 %"$gasrem_728", 1
  store i64 %"$consume_732", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_31", align 8, !dbg !53
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %"$have_gas_731"
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %"$have_gas_731"
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Int128, align 8
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_736"
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg2_32", align 8, !dbg !54
  %"$gasrem_743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_744" = icmp ugt i64 1, %"$gasrem_743"
  br i1 %"$gascmp_744", label %"$out_of_gas_745", label %"$have_gas_746"

"$out_of_gas_745":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_746"

"$have_gas_746":                                  ; preds = %"$out_of_gas_745", %"$have_gas_741"
  %"$consume_747" = sub i64 %"$gasrem_743", 1
  store i64 %"$consume_747", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_749" = icmp ugt i64 1, %"$gasrem_748"
  br i1 %"$gascmp_749", label %"$out_of_gas_750", label %"$have_gas_751"

"$out_of_gas_750":                                ; preds = %"$have_gas_746"
  call void @_out_of_gas()
  br label %"$have_gas_751"

"$have_gas_751":                                  ; preds = %"$out_of_gas_750", %"$have_gas_746"
  %"$consume_752" = sub i64 %"$gasrem_748", 1
  store i64 %"$consume_752", i64* @_gasrem, align 8
  %"$res_33" = alloca %Int128, align 8
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 40, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %"$have_gas_751"
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %"$have_gas_751"
  %"$consume_758" = sub i64 %"$gasrem_754", 40
  store i64 %"$consume_758", i64* @_gasrem, align 8
  %"$$arg1_31_759" = load %Int128, %Int128* %"$arg1_31", align 8
  %"$$arg2_32_760" = load %Int128, %Int128* %"$arg2_32", align 8
  %"$mul_call_761" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_31_759", %Int128 %"$$arg2_32_760"), !dbg !55
  store %Int128 %"$mul_call_761", %Int128* %"$res_33", align 8, !dbg !55
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_757"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_757"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$res__34" = alloca %Int128, align 8
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %"$have_gas_765"
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %"$have_gas_765"
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem, align 8
  store %Int128 { i128 85070591730234615828950163710522949636 }, %Int128* %"$res__34", align 8, !dbg !56
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 1, %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$have_gas_770"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$have_gas_770"
  %"$consume_776" = sub i64 %"$gasrem_772", 1
  store i64 %"$consume_776", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 8, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_775"
  %"$consume_782" = sub i64 %"$gasrem_778", 8
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %"$execptr_load_783" = load i8*, i8** @_execptr, align 8
  %"$$res_33_784" = load %Int128, %Int128* %"$res_33", align 8
  %"$$res__34_785" = load %Int128, %Int128* %"$res__34", align 8
  %"$eq_call_786" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_783", %Int128 %"$$res_33_784", %Int128 %"$$res__34_785"), !dbg !57
  store %TName_Bool* %"$eq_call_786", %TName_Bool** %"$test__35", align 8, !dbg !57
  %"$gasrem_788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_789" = icmp ugt i64 1, %"$gasrem_788"
  br i1 %"$gascmp_789", label %"$out_of_gas_790", label %"$have_gas_791"

"$out_of_gas_790":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_791"

"$have_gas_791":                                  ; preds = %"$out_of_gas_790", %"$have_gas_781"
  %"$consume_792" = sub i64 %"$gasrem_788", 1
  store i64 %"$consume_792", i64* @_gasrem, align 8
  %"$BoolUtils.andb_137" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_793" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_794" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_793", 0
  %"$BoolUtils.andb_envptr_795" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_793", 1
  %"$$test_30_796" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_797" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_794"(i8* %"$BoolUtils.andb_envptr_795", %TName_Bool* %"$$test_30_796"), !dbg !58
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_797", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8, !dbg !58
  %"$BoolUtils.andb_138" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_137_798" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8
  %"$$BoolUtils.andb_137_fptr_799" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_798", 0
  %"$$BoolUtils.andb_137_envptr_800" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_798", 1
  %"$$test__35_801" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_137_call_802" = call %TName_Bool* %"$$BoolUtils.andb_137_fptr_799"(i8* %"$$BoolUtils.andb_137_envptr_800", %TName_Bool* %"$$test__35_801"), !dbg !58
  store %TName_Bool* %"$$BoolUtils.andb_137_call_802", %TName_Bool** %"$BoolUtils.andb_138", align 8, !dbg !58
  %"$$BoolUtils.andb_138_803" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_138", align 8
  store %TName_Bool* %"$$BoolUtils.andb_138_803", %TName_Bool** %"$test_36", align 8, !dbg !58
  %"$gasrem_804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_805" = icmp ugt i64 1, %"$gasrem_804"
  br i1 %"$gascmp_805", label %"$out_of_gas_806", label %"$have_gas_807"

"$out_of_gas_806":                                ; preds = %"$have_gas_791"
  call void @_out_of_gas()
  br label %"$have_gas_807"

"$have_gas_807":                                  ; preds = %"$out_of_gas_806", %"$have_gas_791"
  %"$consume_808" = sub i64 %"$gasrem_804", 1
  store i64 %"$consume_808", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Int128, align 8
  %"$gasrem_809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_810" = icmp ugt i64 1, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %"$have_gas_807"
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %"$have_gas_807"
  %"$consume_813" = sub i64 %"$gasrem_809", 1
  store i64 %"$consume_813", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_37", align 8, !dbg !59
  %"$gasrem_814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_815" = icmp ugt i64 1, %"$gasrem_814"
  br i1 %"$gascmp_815", label %"$out_of_gas_816", label %"$have_gas_817"

"$out_of_gas_816":                                ; preds = %"$have_gas_812"
  call void @_out_of_gas()
  br label %"$have_gas_817"

"$have_gas_817":                                  ; preds = %"$out_of_gas_816", %"$have_gas_812"
  %"$consume_818" = sub i64 %"$gasrem_814", 1
  store i64 %"$consume_818", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Int128, align 8
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 1, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$have_gas_817"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$have_gas_817"
  %"$consume_823" = sub i64 %"$gasrem_819", 1
  store i64 %"$consume_823", i64* @_gasrem, align 8
  store %Int128 zeroinitializer, %Int128* %"$arg2_38", align 8, !dbg !60
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 1, %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_822"
  %"$consume_828" = sub i64 %"$gasrem_824", 1
  store i64 %"$consume_828", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_830" = icmp ugt i64 1, %"$gasrem_829"
  br i1 %"$gascmp_830", label %"$out_of_gas_831", label %"$have_gas_832"

"$out_of_gas_831":                                ; preds = %"$have_gas_827"
  call void @_out_of_gas()
  br label %"$have_gas_832"

"$have_gas_832":                                  ; preds = %"$out_of_gas_831", %"$have_gas_827"
  %"$consume_833" = sub i64 %"$gasrem_829", 1
  store i64 %"$consume_833", i64* @_gasrem, align 8
  %"$res_39" = alloca %Int128, align 8
  %"$gasrem_835" = load i64, i64* @_gasrem, align 8
  %"$gascmp_836" = icmp ugt i64 40, %"$gasrem_835"
  br i1 %"$gascmp_836", label %"$out_of_gas_837", label %"$have_gas_838"

"$out_of_gas_837":                                ; preds = %"$have_gas_832"
  call void @_out_of_gas()
  br label %"$have_gas_838"

"$have_gas_838":                                  ; preds = %"$out_of_gas_837", %"$have_gas_832"
  %"$consume_839" = sub i64 %"$gasrem_835", 40
  store i64 %"$consume_839", i64* @_gasrem, align 8
  %"$$arg1_37_840" = load %Int128, %Int128* %"$arg1_37", align 8
  %"$$arg2_38_841" = load %Int128, %Int128* %"$arg2_38", align 8
  %"$mul_call_842" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_37_840", %Int128 %"$$arg2_38_841"), !dbg !61
  store %Int128 %"$mul_call_842", %Int128* %"$res_39", align 8, !dbg !61
  %"$gasrem_843" = load i64, i64* @_gasrem, align 8
  %"$gascmp_844" = icmp ugt i64 1, %"$gasrem_843"
  br i1 %"$gascmp_844", label %"$out_of_gas_845", label %"$have_gas_846"

"$out_of_gas_845":                                ; preds = %"$have_gas_838"
  call void @_out_of_gas()
  br label %"$have_gas_846"

"$have_gas_846":                                  ; preds = %"$out_of_gas_845", %"$have_gas_838"
  %"$consume_847" = sub i64 %"$gasrem_843", 1
  store i64 %"$consume_847", i64* @_gasrem, align 8
  %"$res__40" = alloca %Int128, align 8
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 1, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %"$have_gas_846"
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %"$have_gas_846"
  %"$consume_852" = sub i64 %"$gasrem_848", 1
  store i64 %"$consume_852", i64* @_gasrem, align 8
  store %Int128 zeroinitializer, %Int128* %"$res__40", align 8, !dbg !62
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 1, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$have_gas_851"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$have_gas_851"
  %"$consume_857" = sub i64 %"$gasrem_853", 1
  store i64 %"$consume_857", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  %"$gasrem_859" = load i64, i64* @_gasrem, align 8
  %"$gascmp_860" = icmp ugt i64 8, %"$gasrem_859"
  br i1 %"$gascmp_860", label %"$out_of_gas_861", label %"$have_gas_862"

"$out_of_gas_861":                                ; preds = %"$have_gas_856"
  call void @_out_of_gas()
  br label %"$have_gas_862"

"$have_gas_862":                                  ; preds = %"$out_of_gas_861", %"$have_gas_856"
  %"$consume_863" = sub i64 %"$gasrem_859", 8
  store i64 %"$consume_863", i64* @_gasrem, align 8
  %"$execptr_load_864" = load i8*, i8** @_execptr, align 8
  %"$$res_39_865" = load %Int128, %Int128* %"$res_39", align 8
  %"$$res__40_866" = load %Int128, %Int128* %"$res__40", align 8
  %"$eq_call_867" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_864", %Int128 %"$$res_39_865", %Int128 %"$$res__40_866"), !dbg !63
  store %TName_Bool* %"$eq_call_867", %TName_Bool** %"$test__41", align 8, !dbg !63
  %"$gasrem_869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_870" = icmp ugt i64 1, %"$gasrem_869"
  br i1 %"$gascmp_870", label %"$out_of_gas_871", label %"$have_gas_872"

"$out_of_gas_871":                                ; preds = %"$have_gas_862"
  call void @_out_of_gas()
  br label %"$have_gas_872"

"$have_gas_872":                                  ; preds = %"$out_of_gas_871", %"$have_gas_862"
  %"$consume_873" = sub i64 %"$gasrem_869", 1
  store i64 %"$consume_873", i64* @_gasrem, align 8
  %"$BoolUtils.andb_139" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_874" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_875" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_874", 0
  %"$BoolUtils.andb_envptr_876" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_874", 1
  %"$$test_36_877" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_878" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_875"(i8* %"$BoolUtils.andb_envptr_876", %TName_Bool* %"$$test_36_877"), !dbg !64
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_878", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8, !dbg !64
  %"$BoolUtils.andb_140" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_139_879" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_fptr_880" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_879", 0
  %"$$BoolUtils.andb_139_envptr_881" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_879", 1
  %"$$test__41_882" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_139_call_883" = call %TName_Bool* %"$$BoolUtils.andb_139_fptr_880"(i8* %"$$BoolUtils.andb_139_envptr_881", %TName_Bool* %"$$test__41_882"), !dbg !64
  store %TName_Bool* %"$$BoolUtils.andb_139_call_883", %TName_Bool** %"$BoolUtils.andb_140", align 8, !dbg !64
  %"$$BoolUtils.andb_140_884" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_140", align 8
  store %TName_Bool* %"$$BoolUtils.andb_140_884", %TName_Bool** %"$test_42", align 8, !dbg !64
  %"$gasrem_885" = load i64, i64* @_gasrem, align 8
  %"$gascmp_886" = icmp ugt i64 1, %"$gasrem_885"
  br i1 %"$gascmp_886", label %"$out_of_gas_887", label %"$have_gas_888"

"$out_of_gas_887":                                ; preds = %"$have_gas_872"
  call void @_out_of_gas()
  br label %"$have_gas_888"

"$have_gas_888":                                  ; preds = %"$out_of_gas_887", %"$have_gas_872"
  %"$consume_889" = sub i64 %"$gasrem_885", 1
  store i64 %"$consume_889", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Int128, align 8
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 1, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$have_gas_888"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$have_gas_888"
  %"$consume_894" = sub i64 %"$gasrem_890", 1
  store i64 %"$consume_894", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_43", align 8, !dbg !65
  %"$gasrem_895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_896" = icmp ugt i64 1, %"$gasrem_895"
  br i1 %"$gascmp_896", label %"$out_of_gas_897", label %"$have_gas_898"

"$out_of_gas_897":                                ; preds = %"$have_gas_893"
  call void @_out_of_gas()
  br label %"$have_gas_898"

"$have_gas_898":                                  ; preds = %"$out_of_gas_897", %"$have_gas_893"
  %"$consume_899" = sub i64 %"$gasrem_895", 1
  store i64 %"$consume_899", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Int128, align 8
  %"$gasrem_900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_901" = icmp ugt i64 1, %"$gasrem_900"
  br i1 %"$gascmp_901", label %"$out_of_gas_902", label %"$have_gas_903"

"$out_of_gas_902":                                ; preds = %"$have_gas_898"
  call void @_out_of_gas()
  br label %"$have_gas_903"

"$have_gas_903":                                  ; preds = %"$out_of_gas_902", %"$have_gas_898"
  %"$consume_904" = sub i64 %"$gasrem_900", 1
  store i64 %"$consume_904", i64* @_gasrem, align 8
  store %Int128 { i128 -1 }, %Int128* %"$arg2_44", align 8, !dbg !66
  %"$gasrem_905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_906" = icmp ugt i64 1, %"$gasrem_905"
  br i1 %"$gascmp_906", label %"$out_of_gas_907", label %"$have_gas_908"

"$out_of_gas_907":                                ; preds = %"$have_gas_903"
  call void @_out_of_gas()
  br label %"$have_gas_908"

"$have_gas_908":                                  ; preds = %"$out_of_gas_907", %"$have_gas_903"
  %"$consume_909" = sub i64 %"$gasrem_905", 1
  store i64 %"$consume_909", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_911" = icmp ugt i64 1, %"$gasrem_910"
  br i1 %"$gascmp_911", label %"$out_of_gas_912", label %"$have_gas_913"

"$out_of_gas_912":                                ; preds = %"$have_gas_908"
  call void @_out_of_gas()
  br label %"$have_gas_913"

"$have_gas_913":                                  ; preds = %"$out_of_gas_912", %"$have_gas_908"
  %"$consume_914" = sub i64 %"$gasrem_910", 1
  store i64 %"$consume_914", i64* @_gasrem, align 8
  %"$res_45" = alloca %Int128, align 8
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 40, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_913"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_913"
  %"$consume_920" = sub i64 %"$gasrem_916", 40
  store i64 %"$consume_920", i64* @_gasrem, align 8
  %"$$arg1_43_921" = load %Int128, %Int128* %"$arg1_43", align 8
  %"$$arg2_44_922" = load %Int128, %Int128* %"$arg2_44", align 8
  %"$mul_call_923" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_43_921", %Int128 %"$$arg2_44_922"), !dbg !67
  store %Int128 %"$mul_call_923", %Int128* %"$res_45", align 8, !dbg !67
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 1, %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$have_gas_919"
  %"$consume_928" = sub i64 %"$gasrem_924", 1
  store i64 %"$consume_928", i64* @_gasrem, align 8
  %"$res__46" = alloca %Int128, align 8
  %"$gasrem_929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_930" = icmp ugt i64 1, %"$gasrem_929"
  br i1 %"$gascmp_930", label %"$out_of_gas_931", label %"$have_gas_932"

"$out_of_gas_931":                                ; preds = %"$have_gas_927"
  call void @_out_of_gas()
  br label %"$have_gas_932"

"$have_gas_932":                                  ; preds = %"$out_of_gas_931", %"$have_gas_927"
  %"$consume_933" = sub i64 %"$gasrem_929", 1
  store i64 %"$consume_933", i64* @_gasrem, align 8
  store %Int128 { i128 -9223372036854775806 }, %Int128* %"$res__46", align 8, !dbg !68
  %"$gasrem_934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_935" = icmp ugt i64 1, %"$gasrem_934"
  br i1 %"$gascmp_935", label %"$out_of_gas_936", label %"$have_gas_937"

"$out_of_gas_936":                                ; preds = %"$have_gas_932"
  call void @_out_of_gas()
  br label %"$have_gas_937"

"$have_gas_937":                                  ; preds = %"$out_of_gas_936", %"$have_gas_932"
  %"$consume_938" = sub i64 %"$gasrem_934", 1
  store i64 %"$consume_938", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  %"$gasrem_940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_941" = icmp ugt i64 8, %"$gasrem_940"
  br i1 %"$gascmp_941", label %"$out_of_gas_942", label %"$have_gas_943"

"$out_of_gas_942":                                ; preds = %"$have_gas_937"
  call void @_out_of_gas()
  br label %"$have_gas_943"

"$have_gas_943":                                  ; preds = %"$out_of_gas_942", %"$have_gas_937"
  %"$consume_944" = sub i64 %"$gasrem_940", 8
  store i64 %"$consume_944", i64* @_gasrem, align 8
  %"$execptr_load_945" = load i8*, i8** @_execptr, align 8
  %"$$res_45_946" = load %Int128, %Int128* %"$res_45", align 8
  %"$$res__46_947" = load %Int128, %Int128* %"$res__46", align 8
  %"$eq_call_948" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_945", %Int128 %"$$res_45_946", %Int128 %"$$res__46_947"), !dbg !69
  store %TName_Bool* %"$eq_call_948", %TName_Bool** %"$test__47", align 8, !dbg !69
  %"$gasrem_950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_951" = icmp ugt i64 1, %"$gasrem_950"
  br i1 %"$gascmp_951", label %"$out_of_gas_952", label %"$have_gas_953"

"$out_of_gas_952":                                ; preds = %"$have_gas_943"
  call void @_out_of_gas()
  br label %"$have_gas_953"

"$have_gas_953":                                  ; preds = %"$out_of_gas_952", %"$have_gas_943"
  %"$consume_954" = sub i64 %"$gasrem_950", 1
  store i64 %"$consume_954", i64* @_gasrem, align 8
  %"$BoolUtils.andb_141" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_955" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_956" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_955", 0
  %"$BoolUtils.andb_envptr_957" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_955", 1
  %"$$test_42_958" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_959" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_956"(i8* %"$BoolUtils.andb_envptr_957", %TName_Bool* %"$$test_42_958"), !dbg !70
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_959", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8, !dbg !70
  %"$BoolUtils.andb_142" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_141_960" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$$BoolUtils.andb_141_fptr_961" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_960", 0
  %"$$BoolUtils.andb_141_envptr_962" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_960", 1
  %"$$test__47_963" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_141_call_964" = call %TName_Bool* %"$$BoolUtils.andb_141_fptr_961"(i8* %"$$BoolUtils.andb_141_envptr_962", %TName_Bool* %"$$test__47_963"), !dbg !70
  store %TName_Bool* %"$$BoolUtils.andb_141_call_964", %TName_Bool** %"$BoolUtils.andb_142", align 8, !dbg !70
  %"$$BoolUtils.andb_142_965" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_142", align 8
  store %TName_Bool* %"$$BoolUtils.andb_142_965", %TName_Bool** %"$test_48", align 8, !dbg !70
  %"$gasrem_966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_967" = icmp ugt i64 1, %"$gasrem_966"
  br i1 %"$gascmp_967", label %"$out_of_gas_968", label %"$have_gas_969"

"$out_of_gas_968":                                ; preds = %"$have_gas_953"
  call void @_out_of_gas()
  br label %"$have_gas_969"

"$have_gas_969":                                  ; preds = %"$out_of_gas_968", %"$have_gas_953"
  %"$consume_970" = sub i64 %"$gasrem_966", 1
  store i64 %"$consume_970", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Int256, align 8
  %"$gasrem_971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_972" = icmp ugt i64 1, %"$gasrem_971"
  br i1 %"$gascmp_972", label %"$out_of_gas_973", label %"$have_gas_974"

"$out_of_gas_973":                                ; preds = %"$have_gas_969"
  call void @_out_of_gas()
  br label %"$have_gas_974"

"$have_gas_974":                                  ; preds = %"$out_of_gas_973", %"$have_gas_969"
  %"$consume_975" = sub i64 %"$gasrem_971", 1
  store i64 %"$consume_975", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775806 }, %Int256* %"$arg1_49", align 8, !dbg !71
  %"$gasrem_976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_977" = icmp ugt i64 1, %"$gasrem_976"
  br i1 %"$gascmp_977", label %"$out_of_gas_978", label %"$have_gas_979"

"$out_of_gas_978":                                ; preds = %"$have_gas_974"
  call void @_out_of_gas()
  br label %"$have_gas_979"

"$have_gas_979":                                  ; preds = %"$out_of_gas_978", %"$have_gas_974"
  %"$consume_980" = sub i64 %"$gasrem_976", 1
  store i64 %"$consume_980", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Int256, align 8
  %"$gasrem_981" = load i64, i64* @_gasrem, align 8
  %"$gascmp_982" = icmp ugt i64 1, %"$gasrem_981"
  br i1 %"$gascmp_982", label %"$out_of_gas_983", label %"$have_gas_984"

"$out_of_gas_983":                                ; preds = %"$have_gas_979"
  call void @_out_of_gas()
  br label %"$have_gas_984"

"$have_gas_984":                                  ; preds = %"$out_of_gas_983", %"$have_gas_979"
  %"$consume_985" = sub i64 %"$gasrem_981", 1
  store i64 %"$consume_985", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$arg2_50", align 8, !dbg !72
  %"$gasrem_986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_987" = icmp ugt i64 1, %"$gasrem_986"
  br i1 %"$gascmp_987", label %"$out_of_gas_988", label %"$have_gas_989"

"$out_of_gas_988":                                ; preds = %"$have_gas_984"
  call void @_out_of_gas()
  br label %"$have_gas_989"

"$have_gas_989":                                  ; preds = %"$out_of_gas_988", %"$have_gas_984"
  %"$consume_990" = sub i64 %"$gasrem_986", 1
  store i64 %"$consume_990", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_991" = load i64, i64* @_gasrem, align 8
  %"$gascmp_992" = icmp ugt i64 1, %"$gasrem_991"
  br i1 %"$gascmp_992", label %"$out_of_gas_993", label %"$have_gas_994"

"$out_of_gas_993":                                ; preds = %"$have_gas_989"
  call void @_out_of_gas()
  br label %"$have_gas_994"

"$have_gas_994":                                  ; preds = %"$out_of_gas_993", %"$have_gas_989"
  %"$consume_995" = sub i64 %"$gasrem_991", 1
  store i64 %"$consume_995", i64* @_gasrem, align 8
  %"$res_51" = alloca %Int256, align 8
  %"$gasrem_997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_998" = icmp ugt i64 80, %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %"$have_gas_994"
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %"$have_gas_994"
  %"$consume_1001" = sub i64 %"$gasrem_997", 80
  store i64 %"$consume_1001", i64* @_gasrem, align 8
  %"$execptr_load_1002" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_49_1003" = alloca %Int256, align 8
  %"$$arg1_49_1004" = load %Int256, %Int256* %"$arg1_49", align 8
  store %Int256 %"$$arg1_49_1004", %Int256* %"$mul_$arg1_49_1003", align 8
  %"$mul_$arg2_50_1005" = alloca %Int256, align 8
  %"$$arg2_50_1006" = load %Int256, %Int256* %"$arg2_50", align 8
  store %Int256 %"$$arg2_50_1006", %Int256* %"$mul_$arg2_50_1005", align 8
  %"$mul_call_1007" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1002", %Int256* %"$mul_$arg1_49_1003", %Int256* %"$mul_$arg2_50_1005"), !dbg !73
  %"$mul_1009" = load %Int256, %Int256* %"$mul_call_1007", align 8
  store %Int256 %"$mul_1009", %Int256* %"$res_51", align 8, !dbg !73
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$have_gas_1000"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$have_gas_1000"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  %"$res__52" = alloca %Int256, align 8
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$have_gas_1013"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  store %Int256 { i256 -9223372036854775806 }, %Int256* %"$res__52", align 8, !dbg !74
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 1, %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %"$have_gas_1018"
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %"$have_gas_1018"
  %"$consume_1024" = sub i64 %"$gasrem_1020", 1
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  %"$gasrem_1026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1027" = icmp ugt i64 16, %"$gasrem_1026"
  br i1 %"$gascmp_1027", label %"$out_of_gas_1028", label %"$have_gas_1029"

"$out_of_gas_1028":                               ; preds = %"$have_gas_1023"
  call void @_out_of_gas()
  br label %"$have_gas_1029"

"$have_gas_1029":                                 ; preds = %"$out_of_gas_1028", %"$have_gas_1023"
  %"$consume_1030" = sub i64 %"$gasrem_1026", 16
  store i64 %"$consume_1030", i64* @_gasrem, align 8
  %"$execptr_load_1031" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_1032" = alloca %Int256, align 8
  %"$$res_51_1033" = load %Int256, %Int256* %"$res_51", align 8
  store %Int256 %"$$res_51_1033", %Int256* %"$eq_$res_51_1032", align 8
  %"$eq_$res__52_1034" = alloca %Int256, align 8
  %"$$res__52_1035" = load %Int256, %Int256* %"$res__52", align 8
  store %Int256 %"$$res__52_1035", %Int256* %"$eq_$res__52_1034", align 8
  %"$eq_call_1036" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1031", %Int256* %"$eq_$res_51_1032", %Int256* %"$eq_$res__52_1034"), !dbg !75
  store %TName_Bool* %"$eq_call_1036", %TName_Bool** %"$test__53", align 8, !dbg !75
  %"$gasrem_1038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1039" = icmp ugt i64 1, %"$gasrem_1038"
  br i1 %"$gascmp_1039", label %"$out_of_gas_1040", label %"$have_gas_1041"

"$out_of_gas_1040":                               ; preds = %"$have_gas_1029"
  call void @_out_of_gas()
  br label %"$have_gas_1041"

"$have_gas_1041":                                 ; preds = %"$out_of_gas_1040", %"$have_gas_1029"
  %"$consume_1042" = sub i64 %"$gasrem_1038", 1
  store i64 %"$consume_1042", i64* @_gasrem, align 8
  %"$BoolUtils.andb_143" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1043" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1044" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1043", 0
  %"$BoolUtils.andb_envptr_1045" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1043", 1
  %"$$test_48_1046" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_1047" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1044"(i8* %"$BoolUtils.andb_envptr_1045", %TName_Bool* %"$$test_48_1046"), !dbg !76
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1047", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8, !dbg !76
  %"$BoolUtils.andb_144" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_143_1048" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$$BoolUtils.andb_143_fptr_1049" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_1048", 0
  %"$$BoolUtils.andb_143_envptr_1050" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_1048", 1
  %"$$test__53_1051" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_143_call_1052" = call %TName_Bool* %"$$BoolUtils.andb_143_fptr_1049"(i8* %"$$BoolUtils.andb_143_envptr_1050", %TName_Bool* %"$$test__53_1051"), !dbg !76
  store %TName_Bool* %"$$BoolUtils.andb_143_call_1052", %TName_Bool** %"$BoolUtils.andb_144", align 8, !dbg !76
  %"$$BoolUtils.andb_144_1053" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_144", align 8
  store %TName_Bool* %"$$BoolUtils.andb_144_1053", %TName_Bool** %"$test_54", align 8, !dbg !76
  %"$gasrem_1054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1055" = icmp ugt i64 1, %"$gasrem_1054"
  br i1 %"$gascmp_1055", label %"$out_of_gas_1056", label %"$have_gas_1057"

"$out_of_gas_1056":                               ; preds = %"$have_gas_1041"
  call void @_out_of_gas()
  br label %"$have_gas_1057"

"$have_gas_1057":                                 ; preds = %"$out_of_gas_1056", %"$have_gas_1041"
  %"$consume_1058" = sub i64 %"$gasrem_1054", 1
  store i64 %"$consume_1058", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Int256, align 8
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 1, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1057"
  %"$consume_1063" = sub i64 %"$gasrem_1059", 1
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775806 }, %Int256* %"$arg1_55", align 8, !dbg !77
  %"$gasrem_1064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1065" = icmp ugt i64 1, %"$gasrem_1064"
  br i1 %"$gascmp_1065", label %"$out_of_gas_1066", label %"$have_gas_1067"

"$out_of_gas_1066":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1067"

"$have_gas_1067":                                 ; preds = %"$out_of_gas_1066", %"$have_gas_1062"
  %"$consume_1068" = sub i64 %"$gasrem_1064", 1
  store i64 %"$consume_1068", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Int256, align 8
  %"$gasrem_1069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1070" = icmp ugt i64 1, %"$gasrem_1069"
  br i1 %"$gascmp_1070", label %"$out_of_gas_1071", label %"$have_gas_1072"

"$out_of_gas_1071":                               ; preds = %"$have_gas_1067"
  call void @_out_of_gas()
  br label %"$have_gas_1072"

"$have_gas_1072":                                 ; preds = %"$out_of_gas_1071", %"$have_gas_1067"
  %"$consume_1073" = sub i64 %"$gasrem_1069", 1
  store i64 %"$consume_1073", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_56", align 8, !dbg !78
  %"$gasrem_1074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1075" = icmp ugt i64 1, %"$gasrem_1074"
  br i1 %"$gascmp_1075", label %"$out_of_gas_1076", label %"$have_gas_1077"

"$out_of_gas_1076":                               ; preds = %"$have_gas_1072"
  call void @_out_of_gas()
  br label %"$have_gas_1077"

"$have_gas_1077":                                 ; preds = %"$out_of_gas_1076", %"$have_gas_1072"
  %"$consume_1078" = sub i64 %"$gasrem_1074", 1
  store i64 %"$consume_1078", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1079" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1080" = icmp ugt i64 1, %"$gasrem_1079"
  br i1 %"$gascmp_1080", label %"$out_of_gas_1081", label %"$have_gas_1082"

"$out_of_gas_1081":                               ; preds = %"$have_gas_1077"
  call void @_out_of_gas()
  br label %"$have_gas_1082"

"$have_gas_1082":                                 ; preds = %"$out_of_gas_1081", %"$have_gas_1077"
  %"$consume_1083" = sub i64 %"$gasrem_1079", 1
  store i64 %"$consume_1083", i64* @_gasrem, align 8
  %"$res_57" = alloca %Int256, align 8
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 80, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$have_gas_1082"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$have_gas_1082"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 80
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %"$execptr_load_1090" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_55_1091" = alloca %Int256, align 8
  %"$$arg1_55_1092" = load %Int256, %Int256* %"$arg1_55", align 8
  store %Int256 %"$$arg1_55_1092", %Int256* %"$mul_$arg1_55_1091", align 8
  %"$mul_$arg2_56_1093" = alloca %Int256, align 8
  %"$$arg2_56_1094" = load %Int256, %Int256* %"$arg2_56", align 8
  store %Int256 %"$$arg2_56_1094", %Int256* %"$mul_$arg2_56_1093", align 8
  %"$mul_call_1095" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1090", %Int256* %"$mul_$arg1_55_1091", %Int256* %"$mul_$arg2_56_1093"), !dbg !79
  %"$mul_1097" = load %Int256, %Int256* %"$mul_call_1095", align 8
  store %Int256 %"$mul_1097", %Int256* %"$res_57", align 8, !dbg !79
  %"$gasrem_1098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1099" = icmp ugt i64 1, %"$gasrem_1098"
  br i1 %"$gascmp_1099", label %"$out_of_gas_1100", label %"$have_gas_1101"

"$out_of_gas_1100":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1101"

"$have_gas_1101":                                 ; preds = %"$out_of_gas_1100", %"$have_gas_1088"
  %"$consume_1102" = sub i64 %"$gasrem_1098", 1
  store i64 %"$consume_1102", i64* @_gasrem, align 8
  %"$res__58" = alloca %Int256, align 8
  %"$gasrem_1103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1104" = icmp ugt i64 1, %"$gasrem_1103"
  br i1 %"$gascmp_1104", label %"$out_of_gas_1105", label %"$have_gas_1106"

"$out_of_gas_1105":                               ; preds = %"$have_gas_1101"
  call void @_out_of_gas()
  br label %"$have_gas_1106"

"$have_gas_1106":                                 ; preds = %"$out_of_gas_1105", %"$have_gas_1101"
  %"$consume_1107" = sub i64 %"$gasrem_1103", 1
  store i64 %"$consume_1107", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__58", align 8, !dbg !80
  %"$gasrem_1108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1109" = icmp ugt i64 1, %"$gasrem_1108"
  br i1 %"$gascmp_1109", label %"$out_of_gas_1110", label %"$have_gas_1111"

"$out_of_gas_1110":                               ; preds = %"$have_gas_1106"
  call void @_out_of_gas()
  br label %"$have_gas_1111"

"$have_gas_1111":                                 ; preds = %"$out_of_gas_1110", %"$have_gas_1106"
  %"$consume_1112" = sub i64 %"$gasrem_1108", 1
  store i64 %"$consume_1112", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  %"$gasrem_1114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1115" = icmp ugt i64 16, %"$gasrem_1114"
  br i1 %"$gascmp_1115", label %"$out_of_gas_1116", label %"$have_gas_1117"

"$out_of_gas_1116":                               ; preds = %"$have_gas_1111"
  call void @_out_of_gas()
  br label %"$have_gas_1117"

"$have_gas_1117":                                 ; preds = %"$out_of_gas_1116", %"$have_gas_1111"
  %"$consume_1118" = sub i64 %"$gasrem_1114", 16
  store i64 %"$consume_1118", i64* @_gasrem, align 8
  %"$execptr_load_1119" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_1120" = alloca %Int256, align 8
  %"$$res_57_1121" = load %Int256, %Int256* %"$res_57", align 8
  store %Int256 %"$$res_57_1121", %Int256* %"$eq_$res_57_1120", align 8
  %"$eq_$res__58_1122" = alloca %Int256, align 8
  %"$$res__58_1123" = load %Int256, %Int256* %"$res__58", align 8
  store %Int256 %"$$res__58_1123", %Int256* %"$eq_$res__58_1122", align 8
  %"$eq_call_1124" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1119", %Int256* %"$eq_$res_57_1120", %Int256* %"$eq_$res__58_1122"), !dbg !81
  store %TName_Bool* %"$eq_call_1124", %TName_Bool** %"$test__59", align 8, !dbg !81
  %"$gasrem_1126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1127" = icmp ugt i64 1, %"$gasrem_1126"
  br i1 %"$gascmp_1127", label %"$out_of_gas_1128", label %"$have_gas_1129"

"$out_of_gas_1128":                               ; preds = %"$have_gas_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1129"

"$have_gas_1129":                                 ; preds = %"$out_of_gas_1128", %"$have_gas_1117"
  %"$consume_1130" = sub i64 %"$gasrem_1126", 1
  store i64 %"$consume_1130", i64* @_gasrem, align 8
  %"$BoolUtils.andb_145" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1131" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1132" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1131", 0
  %"$BoolUtils.andb_envptr_1133" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1131", 1
  %"$$test_54_1134" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1135" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1132"(i8* %"$BoolUtils.andb_envptr_1133", %TName_Bool* %"$$test_54_1134"), !dbg !82
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1135", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8, !dbg !82
  %"$BoolUtils.andb_146" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_145_1136" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$$BoolUtils.andb_145_fptr_1137" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_1136", 0
  %"$$BoolUtils.andb_145_envptr_1138" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_1136", 1
  %"$$test__59_1139" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_145_call_1140" = call %TName_Bool* %"$$BoolUtils.andb_145_fptr_1137"(i8* %"$$BoolUtils.andb_145_envptr_1138", %TName_Bool* %"$$test__59_1139"), !dbg !82
  store %TName_Bool* %"$$BoolUtils.andb_145_call_1140", %TName_Bool** %"$BoolUtils.andb_146", align 8, !dbg !82
  %"$$BoolUtils.andb_146_1141" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_146", align 8
  store %TName_Bool* %"$$BoolUtils.andb_146_1141", %TName_Bool** %"$test_60", align 8, !dbg !82
  %"$gasrem_1142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1143" = icmp ugt i64 1, %"$gasrem_1142"
  br i1 %"$gascmp_1143", label %"$out_of_gas_1144", label %"$have_gas_1145"

"$out_of_gas_1144":                               ; preds = %"$have_gas_1129"
  call void @_out_of_gas()
  br label %"$have_gas_1145"

"$have_gas_1145":                                 ; preds = %"$out_of_gas_1144", %"$have_gas_1129"
  %"$consume_1146" = sub i64 %"$gasrem_1142", 1
  store i64 %"$consume_1146", i64* @_gasrem, align 8
  %"$arg1_61" = alloca %Int256, align 8
  %"$gasrem_1147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1148" = icmp ugt i64 1, %"$gasrem_1147"
  br i1 %"$gascmp_1148", label %"$out_of_gas_1149", label %"$have_gas_1150"

"$out_of_gas_1149":                               ; preds = %"$have_gas_1145"
  call void @_out_of_gas()
  br label %"$have_gas_1150"

"$have_gas_1150":                                 ; preds = %"$out_of_gas_1149", %"$have_gas_1145"
  %"$consume_1151" = sub i64 %"$gasrem_1147", 1
  store i64 %"$consume_1151", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105727 }, %Int256* %"$arg1_61", align 8, !dbg !83
  %"$gasrem_1152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1153" = icmp ugt i64 1, %"$gasrem_1152"
  br i1 %"$gascmp_1153", label %"$out_of_gas_1154", label %"$have_gas_1155"

"$out_of_gas_1154":                               ; preds = %"$have_gas_1150"
  call void @_out_of_gas()
  br label %"$have_gas_1155"

"$have_gas_1155":                                 ; preds = %"$out_of_gas_1154", %"$have_gas_1150"
  %"$consume_1156" = sub i64 %"$gasrem_1152", 1
  store i64 %"$consume_1156", i64* @_gasrem, align 8
  %"$arg2_62" = alloca %Int256, align 8
  %"$gasrem_1157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1158" = icmp ugt i64 1, %"$gasrem_1157"
  br i1 %"$gascmp_1158", label %"$out_of_gas_1159", label %"$have_gas_1160"

"$out_of_gas_1159":                               ; preds = %"$have_gas_1155"
  call void @_out_of_gas()
  br label %"$have_gas_1160"

"$have_gas_1160":                                 ; preds = %"$out_of_gas_1159", %"$have_gas_1155"
  %"$consume_1161" = sub i64 %"$gasrem_1157", 1
  store i64 %"$consume_1161", i64* @_gasrem, align 8
  store %Int256 { i256 -170141183460469231731687303715884105728 }, %Int256* %"$arg2_62", align 8, !dbg !84
  %"$gasrem_1162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1163" = icmp ugt i64 1, %"$gasrem_1162"
  br i1 %"$gascmp_1163", label %"$out_of_gas_1164", label %"$have_gas_1165"

"$out_of_gas_1164":                               ; preds = %"$have_gas_1160"
  call void @_out_of_gas()
  br label %"$have_gas_1165"

"$have_gas_1165":                                 ; preds = %"$out_of_gas_1164", %"$have_gas_1160"
  %"$consume_1166" = sub i64 %"$gasrem_1162", 1
  store i64 %"$consume_1166", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1168" = icmp ugt i64 1, %"$gasrem_1167"
  br i1 %"$gascmp_1168", label %"$out_of_gas_1169", label %"$have_gas_1170"

"$out_of_gas_1169":                               ; preds = %"$have_gas_1165"
  call void @_out_of_gas()
  br label %"$have_gas_1170"

"$have_gas_1170":                                 ; preds = %"$out_of_gas_1169", %"$have_gas_1165"
  %"$consume_1171" = sub i64 %"$gasrem_1167", 1
  store i64 %"$consume_1171", i64* @_gasrem, align 8
  %"$res_63" = alloca %Int256, align 8
  %"$gasrem_1173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1174" = icmp ugt i64 80, %"$gasrem_1173"
  br i1 %"$gascmp_1174", label %"$out_of_gas_1175", label %"$have_gas_1176"

"$out_of_gas_1175":                               ; preds = %"$have_gas_1170"
  call void @_out_of_gas()
  br label %"$have_gas_1176"

"$have_gas_1176":                                 ; preds = %"$out_of_gas_1175", %"$have_gas_1170"
  %"$consume_1177" = sub i64 %"$gasrem_1173", 80
  store i64 %"$consume_1177", i64* @_gasrem, align 8
  %"$execptr_load_1178" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_61_1179" = alloca %Int256, align 8
  %"$$arg1_61_1180" = load %Int256, %Int256* %"$arg1_61", align 8
  store %Int256 %"$$arg1_61_1180", %Int256* %"$mul_$arg1_61_1179", align 8
  %"$mul_$arg2_62_1181" = alloca %Int256, align 8
  %"$$arg2_62_1182" = load %Int256, %Int256* %"$arg2_62", align 8
  store %Int256 %"$$arg2_62_1182", %Int256* %"$mul_$arg2_62_1181", align 8
  %"$mul_call_1183" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1178", %Int256* %"$mul_$arg1_61_1179", %Int256* %"$mul_$arg2_62_1181"), !dbg !85
  %"$mul_1185" = load %Int256, %Int256* %"$mul_call_1183", align 8
  store %Int256 %"$mul_1185", %Int256* %"$res_63", align 8, !dbg !85
  %"$gasrem_1186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1187" = icmp ugt i64 1, %"$gasrem_1186"
  br i1 %"$gascmp_1187", label %"$out_of_gas_1188", label %"$have_gas_1189"

"$out_of_gas_1188":                               ; preds = %"$have_gas_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1189"

"$have_gas_1189":                                 ; preds = %"$out_of_gas_1188", %"$have_gas_1176"
  %"$consume_1190" = sub i64 %"$gasrem_1186", 1
  store i64 %"$consume_1190", i64* @_gasrem, align 8
  %"$res__64" = alloca %Int256, align 8
  %"$gasrem_1191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1192" = icmp ugt i64 1, %"$gasrem_1191"
  br i1 %"$gascmp_1192", label %"$out_of_gas_1193", label %"$have_gas_1194"

"$out_of_gas_1193":                               ; preds = %"$have_gas_1189"
  call void @_out_of_gas()
  br label %"$have_gas_1194"

"$have_gas_1194":                                 ; preds = %"$out_of_gas_1193", %"$have_gas_1189"
  %"$consume_1195" = sub i64 %"$gasrem_1191", 1
  store i64 %"$consume_1195", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Int256* %"$res__64", align 8, !dbg !86
  %"$gasrem_1196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1197" = icmp ugt i64 1, %"$gasrem_1196"
  br i1 %"$gascmp_1197", label %"$out_of_gas_1198", label %"$have_gas_1199"

"$out_of_gas_1198":                               ; preds = %"$have_gas_1194"
  call void @_out_of_gas()
  br label %"$have_gas_1199"

"$have_gas_1199":                                 ; preds = %"$out_of_gas_1198", %"$have_gas_1194"
  %"$consume_1200" = sub i64 %"$gasrem_1196", 1
  store i64 %"$consume_1200", i64* @_gasrem, align 8
  %"$test__65" = alloca %TName_Bool*, align 8
  %"$gasrem_1202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1203" = icmp ugt i64 16, %"$gasrem_1202"
  br i1 %"$gascmp_1203", label %"$out_of_gas_1204", label %"$have_gas_1205"

"$out_of_gas_1204":                               ; preds = %"$have_gas_1199"
  call void @_out_of_gas()
  br label %"$have_gas_1205"

"$have_gas_1205":                                 ; preds = %"$out_of_gas_1204", %"$have_gas_1199"
  %"$consume_1206" = sub i64 %"$gasrem_1202", 16
  store i64 %"$consume_1206", i64* @_gasrem, align 8
  %"$execptr_load_1207" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_63_1208" = alloca %Int256, align 8
  %"$$res_63_1209" = load %Int256, %Int256* %"$res_63", align 8
  store %Int256 %"$$res_63_1209", %Int256* %"$eq_$res_63_1208", align 8
  %"$eq_$res__64_1210" = alloca %Int256, align 8
  %"$$res__64_1211" = load %Int256, %Int256* %"$res__64", align 8
  store %Int256 %"$$res__64_1211", %Int256* %"$eq_$res__64_1210", align 8
  %"$eq_call_1212" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1207", %Int256* %"$eq_$res_63_1208", %Int256* %"$eq_$res__64_1210"), !dbg !87
  store %TName_Bool* %"$eq_call_1212", %TName_Bool** %"$test__65", align 8, !dbg !87
  %"$gasrem_1214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1215" = icmp ugt i64 1, %"$gasrem_1214"
  br i1 %"$gascmp_1215", label %"$out_of_gas_1216", label %"$have_gas_1217"

"$out_of_gas_1216":                               ; preds = %"$have_gas_1205"
  call void @_out_of_gas()
  br label %"$have_gas_1217"

"$have_gas_1217":                                 ; preds = %"$out_of_gas_1216", %"$have_gas_1205"
  %"$consume_1218" = sub i64 %"$gasrem_1214", 1
  store i64 %"$consume_1218", i64* @_gasrem, align 8
  %"$BoolUtils.andb_147" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1219" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1220" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1219", 0
  %"$BoolUtils.andb_envptr_1221" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1219", 1
  %"$$test_60_1222" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1223" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1220"(i8* %"$BoolUtils.andb_envptr_1221", %TName_Bool* %"$$test_60_1222"), !dbg !88
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1223", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8, !dbg !88
  %"$BoolUtils.andb_148" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_147_1224" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$$BoolUtils.andb_147_fptr_1225" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_1224", 0
  %"$$BoolUtils.andb_147_envptr_1226" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_1224", 1
  %"$$test__65_1227" = load %TName_Bool*, %TName_Bool** %"$test__65", align 8
  %"$$BoolUtils.andb_147_call_1228" = call %TName_Bool* %"$$BoolUtils.andb_147_fptr_1225"(i8* %"$$BoolUtils.andb_147_envptr_1226", %TName_Bool* %"$$test__65_1227"), !dbg !88
  store %TName_Bool* %"$$BoolUtils.andb_147_call_1228", %TName_Bool** %"$BoolUtils.andb_148", align 8, !dbg !88
  %"$$BoolUtils.andb_148_1229" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_148", align 8
  store %TName_Bool* %"$$BoolUtils.andb_148_1229", %TName_Bool** %"$test_66", align 8, !dbg !88
  %"$gasrem_1230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1231" = icmp ugt i64 1, %"$gasrem_1230"
  br i1 %"$gascmp_1231", label %"$out_of_gas_1232", label %"$have_gas_1233"

"$out_of_gas_1232":                               ; preds = %"$have_gas_1217"
  call void @_out_of_gas()
  br label %"$have_gas_1233"

"$have_gas_1233":                                 ; preds = %"$out_of_gas_1232", %"$have_gas_1217"
  %"$consume_1234" = sub i64 %"$gasrem_1230", 1
  store i64 %"$consume_1234", i64* @_gasrem, align 8
  %"$arg1_67" = alloca %Int256, align 8
  %"$gasrem_1235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1236" = icmp ugt i64 1, %"$gasrem_1235"
  br i1 %"$gascmp_1236", label %"$out_of_gas_1237", label %"$have_gas_1238"

"$out_of_gas_1237":                               ; preds = %"$have_gas_1233"
  call void @_out_of_gas()
  br label %"$have_gas_1238"

"$have_gas_1238":                                 ; preds = %"$out_of_gas_1237", %"$have_gas_1233"
  %"$consume_1239" = sub i64 %"$gasrem_1235", 1
  store i64 %"$consume_1239", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105727 }, %Int256* %"$arg1_67", align 8, !dbg !89
  %"$gasrem_1240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1241" = icmp ugt i64 1, %"$gasrem_1240"
  br i1 %"$gascmp_1241", label %"$out_of_gas_1242", label %"$have_gas_1243"

"$out_of_gas_1242":                               ; preds = %"$have_gas_1238"
  call void @_out_of_gas()
  br label %"$have_gas_1243"

"$have_gas_1243":                                 ; preds = %"$out_of_gas_1242", %"$have_gas_1238"
  %"$consume_1244" = sub i64 %"$gasrem_1240", 1
  store i64 %"$consume_1244", i64* @_gasrem, align 8
  %"$arg2_68" = alloca %Int256, align 8
  %"$gasrem_1245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1246" = icmp ugt i64 1, %"$gasrem_1245"
  br i1 %"$gascmp_1246", label %"$out_of_gas_1247", label %"$have_gas_1248"

"$out_of_gas_1247":                               ; preds = %"$have_gas_1243"
  call void @_out_of_gas()
  br label %"$have_gas_1248"

"$have_gas_1248":                                 ; preds = %"$out_of_gas_1247", %"$have_gas_1243"
  %"$consume_1249" = sub i64 %"$gasrem_1245", 1
  store i64 %"$consume_1249", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105728 }, %Int256* %"$arg2_68", align 8, !dbg !90
  %"$gasrem_1250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1251" = icmp ugt i64 1, %"$gasrem_1250"
  br i1 %"$gascmp_1251", label %"$out_of_gas_1252", label %"$have_gas_1253"

"$out_of_gas_1252":                               ; preds = %"$have_gas_1248"
  call void @_out_of_gas()
  br label %"$have_gas_1253"

"$have_gas_1253":                                 ; preds = %"$out_of_gas_1252", %"$have_gas_1248"
  %"$consume_1254" = sub i64 %"$gasrem_1250", 1
  store i64 %"$consume_1254", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  %"$gasrem_1255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1256" = icmp ugt i64 1, %"$gasrem_1255"
  br i1 %"$gascmp_1256", label %"$out_of_gas_1257", label %"$have_gas_1258"

"$out_of_gas_1257":                               ; preds = %"$have_gas_1253"
  call void @_out_of_gas()
  br label %"$have_gas_1258"

"$have_gas_1258":                                 ; preds = %"$out_of_gas_1257", %"$have_gas_1253"
  %"$consume_1259" = sub i64 %"$gasrem_1255", 1
  store i64 %"$consume_1259", i64* @_gasrem, align 8
  %"$res_69" = alloca %Int256, align 8
  %"$gasrem_1261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1262" = icmp ugt i64 80, %"$gasrem_1261"
  br i1 %"$gascmp_1262", label %"$out_of_gas_1263", label %"$have_gas_1264"

"$out_of_gas_1263":                               ; preds = %"$have_gas_1258"
  call void @_out_of_gas()
  br label %"$have_gas_1264"

"$have_gas_1264":                                 ; preds = %"$out_of_gas_1263", %"$have_gas_1258"
  %"$consume_1265" = sub i64 %"$gasrem_1261", 80
  store i64 %"$consume_1265", i64* @_gasrem, align 8
  %"$execptr_load_1266" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_67_1267" = alloca %Int256, align 8
  %"$$arg1_67_1268" = load %Int256, %Int256* %"$arg1_67", align 8
  store %Int256 %"$$arg1_67_1268", %Int256* %"$mul_$arg1_67_1267", align 8
  %"$mul_$arg2_68_1269" = alloca %Int256, align 8
  %"$$arg2_68_1270" = load %Int256, %Int256* %"$arg2_68", align 8
  store %Int256 %"$$arg2_68_1270", %Int256* %"$mul_$arg2_68_1269", align 8
  %"$mul_call_1271" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1266", %Int256* %"$mul_$arg1_67_1267", %Int256* %"$mul_$arg2_68_1269"), !dbg !91
  %"$mul_1273" = load %Int256, %Int256* %"$mul_call_1271", align 8
  store %Int256 %"$mul_1273", %Int256* %"$res_69", align 8, !dbg !91
  %"$gasrem_1274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1275" = icmp ugt i64 1, %"$gasrem_1274"
  br i1 %"$gascmp_1275", label %"$out_of_gas_1276", label %"$have_gas_1277"

"$out_of_gas_1276":                               ; preds = %"$have_gas_1264"
  call void @_out_of_gas()
  br label %"$have_gas_1277"

"$have_gas_1277":                                 ; preds = %"$out_of_gas_1276", %"$have_gas_1264"
  %"$consume_1278" = sub i64 %"$gasrem_1274", 1
  store i64 %"$consume_1278", i64* @_gasrem, align 8
  %"$res__70" = alloca %Int256, align 8
  %"$gasrem_1279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1280" = icmp ugt i64 1, %"$gasrem_1279"
  br i1 %"$gascmp_1280", label %"$out_of_gas_1281", label %"$have_gas_1282"

"$out_of_gas_1281":                               ; preds = %"$have_gas_1277"
  call void @_out_of_gas()
  br label %"$have_gas_1282"

"$have_gas_1282":                                 ; preds = %"$out_of_gas_1281", %"$have_gas_1277"
  %"$consume_1283" = sub i64 %"$gasrem_1279", 1
  store i64 %"$consume_1283", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Int256* %"$res__70", align 8, !dbg !92
  %"$gasrem_1284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1285" = icmp ugt i64 1, %"$gasrem_1284"
  br i1 %"$gascmp_1285", label %"$out_of_gas_1286", label %"$have_gas_1287"

"$out_of_gas_1286":                               ; preds = %"$have_gas_1282"
  call void @_out_of_gas()
  br label %"$have_gas_1287"

"$have_gas_1287":                                 ; preds = %"$out_of_gas_1286", %"$have_gas_1282"
  %"$consume_1288" = sub i64 %"$gasrem_1284", 1
  store i64 %"$consume_1288", i64* @_gasrem, align 8
  %"$test__71" = alloca %TName_Bool*, align 8
  %"$gasrem_1290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1291" = icmp ugt i64 16, %"$gasrem_1290"
  br i1 %"$gascmp_1291", label %"$out_of_gas_1292", label %"$have_gas_1293"

"$out_of_gas_1292":                               ; preds = %"$have_gas_1287"
  call void @_out_of_gas()
  br label %"$have_gas_1293"

"$have_gas_1293":                                 ; preds = %"$out_of_gas_1292", %"$have_gas_1287"
  %"$consume_1294" = sub i64 %"$gasrem_1290", 16
  store i64 %"$consume_1294", i64* @_gasrem, align 8
  %"$execptr_load_1295" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_69_1296" = alloca %Int256, align 8
  %"$$res_69_1297" = load %Int256, %Int256* %"$res_69", align 8
  store %Int256 %"$$res_69_1297", %Int256* %"$eq_$res_69_1296", align 8
  %"$eq_$res__70_1298" = alloca %Int256, align 8
  %"$$res__70_1299" = load %Int256, %Int256* %"$res__70", align 8
  store %Int256 %"$$res__70_1299", %Int256* %"$eq_$res__70_1298", align 8
  %"$eq_call_1300" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1295", %Int256* %"$eq_$res_69_1296", %Int256* %"$eq_$res__70_1298"), !dbg !93
  store %TName_Bool* %"$eq_call_1300", %TName_Bool** %"$test__71", align 8, !dbg !93
  %"$gasrem_1302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1303" = icmp ugt i64 1, %"$gasrem_1302"
  br i1 %"$gascmp_1303", label %"$out_of_gas_1304", label %"$have_gas_1305"

"$out_of_gas_1304":                               ; preds = %"$have_gas_1293"
  call void @_out_of_gas()
  br label %"$have_gas_1305"

"$have_gas_1305":                                 ; preds = %"$out_of_gas_1304", %"$have_gas_1293"
  %"$consume_1306" = sub i64 %"$gasrem_1302", 1
  store i64 %"$consume_1306", i64* @_gasrem, align 8
  %"$BoolUtils.andb_149" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1307" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1308" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1307", 0
  %"$BoolUtils.andb_envptr_1309" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1307", 1
  %"$$test_66_1310" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  %"$BoolUtils.andb_call_1311" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1308"(i8* %"$BoolUtils.andb_envptr_1309", %TName_Bool* %"$$test_66_1310"), !dbg !94
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1311", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8, !dbg !94
  %"$BoolUtils.andb_150" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_149_1312" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$$BoolUtils.andb_149_fptr_1313" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1312", 0
  %"$$BoolUtils.andb_149_envptr_1314" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1312", 1
  %"$$test__71_1315" = load %TName_Bool*, %TName_Bool** %"$test__71", align 8
  %"$$BoolUtils.andb_149_call_1316" = call %TName_Bool* %"$$BoolUtils.andb_149_fptr_1313"(i8* %"$$BoolUtils.andb_149_envptr_1314", %TName_Bool* %"$$test__71_1315"), !dbg !94
  store %TName_Bool* %"$$BoolUtils.andb_149_call_1316", %TName_Bool** %"$BoolUtils.andb_150", align 8, !dbg !94
  %"$$BoolUtils.andb_150_1317" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_150", align 8
  store %TName_Bool* %"$$BoolUtils.andb_150_1317", %TName_Bool** %"$test_72", align 8, !dbg !94
  %"$gasrem_1318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1319" = icmp ugt i64 1, %"$gasrem_1318"
  br i1 %"$gascmp_1319", label %"$out_of_gas_1320", label %"$have_gas_1321"

"$out_of_gas_1320":                               ; preds = %"$have_gas_1305"
  call void @_out_of_gas()
  br label %"$have_gas_1321"

"$have_gas_1321":                                 ; preds = %"$out_of_gas_1320", %"$have_gas_1305"
  %"$consume_1322" = sub i64 %"$gasrem_1318", 1
  store i64 %"$consume_1322", i64* @_gasrem, align 8
  %"$arg1_73" = alloca %Uint256, align 8
  %"$gasrem_1323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1324" = icmp ugt i64 1, %"$gasrem_1323"
  br i1 %"$gascmp_1324", label %"$out_of_gas_1325", label %"$have_gas_1326"

"$out_of_gas_1325":                               ; preds = %"$have_gas_1321"
  call void @_out_of_gas()
  br label %"$have_gas_1326"

"$have_gas_1326":                                 ; preds = %"$out_of_gas_1325", %"$have_gas_1321"
  %"$consume_1327" = sub i64 %"$gasrem_1323", 1
  store i64 %"$consume_1327", i64* @_gasrem, align 8
  store %Uint256 { i256 170141183460469231731687303715884105727 }, %Uint256* %"$arg1_73", align 8, !dbg !95
  %"$gasrem_1328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1329" = icmp ugt i64 1, %"$gasrem_1328"
  br i1 %"$gascmp_1329", label %"$out_of_gas_1330", label %"$have_gas_1331"

"$out_of_gas_1330":                               ; preds = %"$have_gas_1326"
  call void @_out_of_gas()
  br label %"$have_gas_1331"

"$have_gas_1331":                                 ; preds = %"$out_of_gas_1330", %"$have_gas_1326"
  %"$consume_1332" = sub i64 %"$gasrem_1328", 1
  store i64 %"$consume_1332", i64* @_gasrem, align 8
  %"$arg2_74" = alloca %Uint256, align 8
  %"$gasrem_1333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1334" = icmp ugt i64 1, %"$gasrem_1333"
  br i1 %"$gascmp_1334", label %"$out_of_gas_1335", label %"$have_gas_1336"

"$out_of_gas_1335":                               ; preds = %"$have_gas_1331"
  call void @_out_of_gas()
  br label %"$have_gas_1336"

"$have_gas_1336":                                 ; preds = %"$out_of_gas_1335", %"$have_gas_1331"
  %"$consume_1337" = sub i64 %"$gasrem_1333", 1
  store i64 %"$consume_1337", i64* @_gasrem, align 8
  store %Uint256 { i256 170141183460469231731687303715884105728 }, %Uint256* %"$arg2_74", align 8, !dbg !96
  %"$gasrem_1338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1339" = icmp ugt i64 1, %"$gasrem_1338"
  br i1 %"$gascmp_1339", label %"$out_of_gas_1340", label %"$have_gas_1341"

"$out_of_gas_1340":                               ; preds = %"$have_gas_1336"
  call void @_out_of_gas()
  br label %"$have_gas_1341"

"$have_gas_1341":                                 ; preds = %"$out_of_gas_1340", %"$have_gas_1336"
  %"$consume_1342" = sub i64 %"$gasrem_1338", 1
  store i64 %"$consume_1342", i64* @_gasrem, align 8
  %"$test_78" = alloca %TName_Bool*, align 8
  %"$gasrem_1343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1344" = icmp ugt i64 1, %"$gasrem_1343"
  br i1 %"$gascmp_1344", label %"$out_of_gas_1345", label %"$have_gas_1346"

"$out_of_gas_1345":                               ; preds = %"$have_gas_1341"
  call void @_out_of_gas()
  br label %"$have_gas_1346"

"$have_gas_1346":                                 ; preds = %"$out_of_gas_1345", %"$have_gas_1341"
  %"$consume_1347" = sub i64 %"$gasrem_1343", 1
  store i64 %"$consume_1347", i64* @_gasrem, align 8
  %"$res_75" = alloca %Uint256, align 8
  %"$gasrem_1349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1350" = icmp ugt i64 80, %"$gasrem_1349"
  br i1 %"$gascmp_1350", label %"$out_of_gas_1351", label %"$have_gas_1352"

"$out_of_gas_1351":                               ; preds = %"$have_gas_1346"
  call void @_out_of_gas()
  br label %"$have_gas_1352"

"$have_gas_1352":                                 ; preds = %"$out_of_gas_1351", %"$have_gas_1346"
  %"$consume_1353" = sub i64 %"$gasrem_1349", 80
  store i64 %"$consume_1353", i64* @_gasrem, align 8
  %"$execptr_load_1354" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_73_1355" = alloca %Uint256, align 8
  %"$$arg1_73_1356" = load %Uint256, %Uint256* %"$arg1_73", align 8
  store %Uint256 %"$$arg1_73_1356", %Uint256* %"$mul_$arg1_73_1355", align 8
  %"$mul_$arg2_74_1357" = alloca %Uint256, align 8
  %"$$arg2_74_1358" = load %Uint256, %Uint256* %"$arg2_74", align 8
  store %Uint256 %"$$arg2_74_1358", %Uint256* %"$mul_$arg2_74_1357", align 8
  %"$mul_call_1359" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1354", %Uint256* %"$mul_$arg1_73_1355", %Uint256* %"$mul_$arg2_74_1357"), !dbg !97
  %"$mul_1361" = load %Uint256, %Uint256* %"$mul_call_1359", align 8
  store %Uint256 %"$mul_1361", %Uint256* %"$res_75", align 8, !dbg !97
  %"$gasrem_1362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1363" = icmp ugt i64 1, %"$gasrem_1362"
  br i1 %"$gascmp_1363", label %"$out_of_gas_1364", label %"$have_gas_1365"

"$out_of_gas_1364":                               ; preds = %"$have_gas_1352"
  call void @_out_of_gas()
  br label %"$have_gas_1365"

"$have_gas_1365":                                 ; preds = %"$out_of_gas_1364", %"$have_gas_1352"
  %"$consume_1366" = sub i64 %"$gasrem_1362", 1
  store i64 %"$consume_1366", i64* @_gasrem, align 8
  %"$res__76" = alloca %Uint256, align 8
  %"$gasrem_1367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1368" = icmp ugt i64 1, %"$gasrem_1367"
  br i1 %"$gascmp_1368", label %"$out_of_gas_1369", label %"$have_gas_1370"

"$out_of_gas_1369":                               ; preds = %"$have_gas_1365"
  call void @_out_of_gas()
  br label %"$have_gas_1370"

"$have_gas_1370":                                 ; preds = %"$out_of_gas_1369", %"$have_gas_1365"
  %"$consume_1371" = sub i64 %"$gasrem_1367", 1
  store i64 %"$consume_1371", i64* @_gasrem, align 8
  store %Uint256 { i256 28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Uint256* %"$res__76", align 8, !dbg !98
  %"$gasrem_1372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1373" = icmp ugt i64 1, %"$gasrem_1372"
  br i1 %"$gascmp_1373", label %"$out_of_gas_1374", label %"$have_gas_1375"

"$out_of_gas_1374":                               ; preds = %"$have_gas_1370"
  call void @_out_of_gas()
  br label %"$have_gas_1375"

"$have_gas_1375":                                 ; preds = %"$out_of_gas_1374", %"$have_gas_1370"
  %"$consume_1376" = sub i64 %"$gasrem_1372", 1
  store i64 %"$consume_1376", i64* @_gasrem, align 8
  %"$test__77" = alloca %TName_Bool*, align 8
  %"$gasrem_1378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1379" = icmp ugt i64 16, %"$gasrem_1378"
  br i1 %"$gascmp_1379", label %"$out_of_gas_1380", label %"$have_gas_1381"

"$out_of_gas_1380":                               ; preds = %"$have_gas_1375"
  call void @_out_of_gas()
  br label %"$have_gas_1381"

"$have_gas_1381":                                 ; preds = %"$out_of_gas_1380", %"$have_gas_1375"
  %"$consume_1382" = sub i64 %"$gasrem_1378", 16
  store i64 %"$consume_1382", i64* @_gasrem, align 8
  %"$execptr_load_1383" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_75_1384" = alloca %Uint256, align 8
  %"$$res_75_1385" = load %Uint256, %Uint256* %"$res_75", align 8
  store %Uint256 %"$$res_75_1385", %Uint256* %"$eq_$res_75_1384", align 8
  %"$eq_$res__76_1386" = alloca %Uint256, align 8
  %"$$res__76_1387" = load %Uint256, %Uint256* %"$res__76", align 8
  store %Uint256 %"$$res__76_1387", %Uint256* %"$eq_$res__76_1386", align 8
  %"$eq_call_1388" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1383", %Uint256* %"$eq_$res_75_1384", %Uint256* %"$eq_$res__76_1386"), !dbg !99
  store %TName_Bool* %"$eq_call_1388", %TName_Bool** %"$test__77", align 8, !dbg !99
  %"$gasrem_1390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1391" = icmp ugt i64 1, %"$gasrem_1390"
  br i1 %"$gascmp_1391", label %"$out_of_gas_1392", label %"$have_gas_1393"

"$out_of_gas_1392":                               ; preds = %"$have_gas_1381"
  call void @_out_of_gas()
  br label %"$have_gas_1393"

"$have_gas_1393":                                 ; preds = %"$out_of_gas_1392", %"$have_gas_1381"
  %"$consume_1394" = sub i64 %"$gasrem_1390", 1
  store i64 %"$consume_1394", i64* @_gasrem, align 8
  %"$BoolUtils.andb_151" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1395" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1396" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1395", 0
  %"$BoolUtils.andb_envptr_1397" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1395", 1
  %"$$test_72_1398" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  %"$BoolUtils.andb_call_1399" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1396"(i8* %"$BoolUtils.andb_envptr_1397", %TName_Bool* %"$$test_72_1398"), !dbg !100
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1399", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8, !dbg !100
  %"$BoolUtils.andb_152" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_151_1400" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$$BoolUtils.andb_151_fptr_1401" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1400", 0
  %"$$BoolUtils.andb_151_envptr_1402" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1400", 1
  %"$$test__77_1403" = load %TName_Bool*, %TName_Bool** %"$test__77", align 8
  %"$$BoolUtils.andb_151_call_1404" = call %TName_Bool* %"$$BoolUtils.andb_151_fptr_1401"(i8* %"$$BoolUtils.andb_151_envptr_1402", %TName_Bool* %"$$test__77_1403"), !dbg !100
  store %TName_Bool* %"$$BoolUtils.andb_151_call_1404", %TName_Bool** %"$BoolUtils.andb_152", align 8, !dbg !100
  %"$$BoolUtils.andb_152_1405" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_152", align 8
  store %TName_Bool* %"$$BoolUtils.andb_152_1405", %TName_Bool** %"$test_78", align 8, !dbg !100
  %"$gasrem_1406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1407" = icmp ugt i64 1, %"$gasrem_1406"
  br i1 %"$gascmp_1407", label %"$out_of_gas_1408", label %"$have_gas_1409"

"$out_of_gas_1408":                               ; preds = %"$have_gas_1393"
  call void @_out_of_gas()
  br label %"$have_gas_1409"

"$have_gas_1409":                                 ; preds = %"$out_of_gas_1408", %"$have_gas_1393"
  %"$consume_1410" = sub i64 %"$gasrem_1406", 1
  store i64 %"$consume_1410", i64* @_gasrem, align 8
  %"$arg1_79" = alloca %Uint256, align 8
  %"$gasrem_1411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1412" = icmp ugt i64 1, %"$gasrem_1411"
  br i1 %"$gascmp_1412", label %"$out_of_gas_1413", label %"$have_gas_1414"

"$out_of_gas_1413":                               ; preds = %"$have_gas_1409"
  call void @_out_of_gas()
  br label %"$have_gas_1414"

"$have_gas_1414":                                 ; preds = %"$out_of_gas_1413", %"$have_gas_1409"
  %"$consume_1415" = sub i64 %"$gasrem_1411", 1
  store i64 %"$consume_1415", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$arg1_79", align 8, !dbg !101
  %"$gasrem_1416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1417" = icmp ugt i64 1, %"$gasrem_1416"
  br i1 %"$gascmp_1417", label %"$out_of_gas_1418", label %"$have_gas_1419"

"$out_of_gas_1418":                               ; preds = %"$have_gas_1414"
  call void @_out_of_gas()
  br label %"$have_gas_1419"

"$have_gas_1419":                                 ; preds = %"$out_of_gas_1418", %"$have_gas_1414"
  %"$consume_1420" = sub i64 %"$gasrem_1416", 1
  store i64 %"$consume_1420", i64* @_gasrem, align 8
  %"$arg2_80" = alloca %Uint256, align 8
  %"$gasrem_1421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1422" = icmp ugt i64 1, %"$gasrem_1421"
  br i1 %"$gascmp_1422", label %"$out_of_gas_1423", label %"$have_gas_1424"

"$out_of_gas_1423":                               ; preds = %"$have_gas_1419"
  call void @_out_of_gas()
  br label %"$have_gas_1424"

"$have_gas_1424":                                 ; preds = %"$out_of_gas_1423", %"$have_gas_1419"
  %"$consume_1425" = sub i64 %"$gasrem_1421", 1
  store i64 %"$consume_1425", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg2_80", align 8, !dbg !102
  %"$gasrem_1426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1427" = icmp ugt i64 1, %"$gasrem_1426"
  br i1 %"$gascmp_1427", label %"$out_of_gas_1428", label %"$have_gas_1429"

"$out_of_gas_1428":                               ; preds = %"$have_gas_1424"
  call void @_out_of_gas()
  br label %"$have_gas_1429"

"$have_gas_1429":                                 ; preds = %"$out_of_gas_1428", %"$have_gas_1424"
  %"$consume_1430" = sub i64 %"$gasrem_1426", 1
  store i64 %"$consume_1430", i64* @_gasrem, align 8
  %"$test_84" = alloca %TName_Bool*, align 8
  %"$gasrem_1431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1432" = icmp ugt i64 1, %"$gasrem_1431"
  br i1 %"$gascmp_1432", label %"$out_of_gas_1433", label %"$have_gas_1434"

"$out_of_gas_1433":                               ; preds = %"$have_gas_1429"
  call void @_out_of_gas()
  br label %"$have_gas_1434"

"$have_gas_1434":                                 ; preds = %"$out_of_gas_1433", %"$have_gas_1429"
  %"$consume_1435" = sub i64 %"$gasrem_1431", 1
  store i64 %"$consume_1435", i64* @_gasrem, align 8
  %"$res_81" = alloca %Uint256, align 8
  %"$gasrem_1437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1438" = icmp ugt i64 80, %"$gasrem_1437"
  br i1 %"$gascmp_1438", label %"$out_of_gas_1439", label %"$have_gas_1440"

"$out_of_gas_1439":                               ; preds = %"$have_gas_1434"
  call void @_out_of_gas()
  br label %"$have_gas_1440"

"$have_gas_1440":                                 ; preds = %"$out_of_gas_1439", %"$have_gas_1434"
  %"$consume_1441" = sub i64 %"$gasrem_1437", 80
  store i64 %"$consume_1441", i64* @_gasrem, align 8
  %"$execptr_load_1442" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_79_1443" = alloca %Uint256, align 8
  %"$$arg1_79_1444" = load %Uint256, %Uint256* %"$arg1_79", align 8
  store %Uint256 %"$$arg1_79_1444", %Uint256* %"$mul_$arg1_79_1443", align 8
  %"$mul_$arg2_80_1445" = alloca %Uint256, align 8
  %"$$arg2_80_1446" = load %Uint256, %Uint256* %"$arg2_80", align 8
  store %Uint256 %"$$arg2_80_1446", %Uint256* %"$mul_$arg2_80_1445", align 8
  %"$mul_call_1447" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1442", %Uint256* %"$mul_$arg1_79_1443", %Uint256* %"$mul_$arg2_80_1445"), !dbg !103
  %"$mul_1449" = load %Uint256, %Uint256* %"$mul_call_1447", align 8
  store %Uint256 %"$mul_1449", %Uint256* %"$res_81", align 8, !dbg !103
  %"$gasrem_1450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1451" = icmp ugt i64 1, %"$gasrem_1450"
  br i1 %"$gascmp_1451", label %"$out_of_gas_1452", label %"$have_gas_1453"

"$out_of_gas_1452":                               ; preds = %"$have_gas_1440"
  call void @_out_of_gas()
  br label %"$have_gas_1453"

"$have_gas_1453":                                 ; preds = %"$out_of_gas_1452", %"$have_gas_1440"
  %"$consume_1454" = sub i64 %"$gasrem_1450", 1
  store i64 %"$consume_1454", i64* @_gasrem, align 8
  %"$res__82" = alloca %Uint256, align 8
  %"$gasrem_1455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1456" = icmp ugt i64 1, %"$gasrem_1455"
  br i1 %"$gascmp_1456", label %"$out_of_gas_1457", label %"$have_gas_1458"

"$out_of_gas_1457":                               ; preds = %"$have_gas_1453"
  call void @_out_of_gas()
  br label %"$have_gas_1458"

"$have_gas_1458":                                 ; preds = %"$out_of_gas_1457", %"$have_gas_1453"
  %"$consume_1459" = sub i64 %"$gasrem_1455", 1
  store i64 %"$consume_1459", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$res__82", align 8, !dbg !104
  %"$gasrem_1460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1461" = icmp ugt i64 1, %"$gasrem_1460"
  br i1 %"$gascmp_1461", label %"$out_of_gas_1462", label %"$have_gas_1463"

"$out_of_gas_1462":                               ; preds = %"$have_gas_1458"
  call void @_out_of_gas()
  br label %"$have_gas_1463"

"$have_gas_1463":                                 ; preds = %"$out_of_gas_1462", %"$have_gas_1458"
  %"$consume_1464" = sub i64 %"$gasrem_1460", 1
  store i64 %"$consume_1464", i64* @_gasrem, align 8
  %"$test__83" = alloca %TName_Bool*, align 8
  %"$gasrem_1466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1467" = icmp ugt i64 16, %"$gasrem_1466"
  br i1 %"$gascmp_1467", label %"$out_of_gas_1468", label %"$have_gas_1469"

"$out_of_gas_1468":                               ; preds = %"$have_gas_1463"
  call void @_out_of_gas()
  br label %"$have_gas_1469"

"$have_gas_1469":                                 ; preds = %"$out_of_gas_1468", %"$have_gas_1463"
  %"$consume_1470" = sub i64 %"$gasrem_1466", 16
  store i64 %"$consume_1470", i64* @_gasrem, align 8
  %"$execptr_load_1471" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_81_1472" = alloca %Uint256, align 8
  %"$$res_81_1473" = load %Uint256, %Uint256* %"$res_81", align 8
  store %Uint256 %"$$res_81_1473", %Uint256* %"$eq_$res_81_1472", align 8
  %"$eq_$res__82_1474" = alloca %Uint256, align 8
  %"$$res__82_1475" = load %Uint256, %Uint256* %"$res__82", align 8
  store %Uint256 %"$$res__82_1475", %Uint256* %"$eq_$res__82_1474", align 8
  %"$eq_call_1476" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1471", %Uint256* %"$eq_$res_81_1472", %Uint256* %"$eq_$res__82_1474"), !dbg !105
  store %TName_Bool* %"$eq_call_1476", %TName_Bool** %"$test__83", align 8, !dbg !105
  %"$gasrem_1478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1479" = icmp ugt i64 1, %"$gasrem_1478"
  br i1 %"$gascmp_1479", label %"$out_of_gas_1480", label %"$have_gas_1481"

"$out_of_gas_1480":                               ; preds = %"$have_gas_1469"
  call void @_out_of_gas()
  br label %"$have_gas_1481"

"$have_gas_1481":                                 ; preds = %"$out_of_gas_1480", %"$have_gas_1469"
  %"$consume_1482" = sub i64 %"$gasrem_1478", 1
  store i64 %"$consume_1482", i64* @_gasrem, align 8
  %"$BoolUtils.andb_153" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1483" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1484" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1483", 0
  %"$BoolUtils.andb_envptr_1485" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1483", 1
  %"$$test_78_1486" = load %TName_Bool*, %TName_Bool** %"$test_78", align 8
  %"$BoolUtils.andb_call_1487" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1484"(i8* %"$BoolUtils.andb_envptr_1485", %TName_Bool* %"$$test_78_1486"), !dbg !106
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1487", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8, !dbg !106
  %"$BoolUtils.andb_154" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_153_1488" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$$BoolUtils.andb_153_fptr_1489" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1488", 0
  %"$$BoolUtils.andb_153_envptr_1490" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1488", 1
  %"$$test__83_1491" = load %TName_Bool*, %TName_Bool** %"$test__83", align 8
  %"$$BoolUtils.andb_153_call_1492" = call %TName_Bool* %"$$BoolUtils.andb_153_fptr_1489"(i8* %"$$BoolUtils.andb_153_envptr_1490", %TName_Bool* %"$$test__83_1491"), !dbg !106
  store %TName_Bool* %"$$BoolUtils.andb_153_call_1492", %TName_Bool** %"$BoolUtils.andb_154", align 8, !dbg !106
  %"$$BoolUtils.andb_154_1493" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_154", align 8
  store %TName_Bool* %"$$BoolUtils.andb_154_1493", %TName_Bool** %"$test_84", align 8, !dbg !106
  %"$gasrem_1494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1495" = icmp ugt i64 1, %"$gasrem_1494"
  br i1 %"$gascmp_1495", label %"$out_of_gas_1496", label %"$have_gas_1497"

"$out_of_gas_1496":                               ; preds = %"$have_gas_1481"
  call void @_out_of_gas()
  br label %"$have_gas_1497"

"$have_gas_1497":                                 ; preds = %"$out_of_gas_1496", %"$have_gas_1481"
  %"$consume_1498" = sub i64 %"$gasrem_1494", 1
  store i64 %"$consume_1498", i64* @_gasrem, align 8
  %"$arg1_85" = alloca %Uint256, align 8
  %"$gasrem_1499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1500" = icmp ugt i64 1, %"$gasrem_1499"
  br i1 %"$gascmp_1500", label %"$out_of_gas_1501", label %"$have_gas_1502"

"$out_of_gas_1501":                               ; preds = %"$have_gas_1497"
  call void @_out_of_gas()
  br label %"$have_gas_1502"

"$have_gas_1502":                                 ; preds = %"$out_of_gas_1501", %"$have_gas_1497"
  %"$consume_1503" = sub i64 %"$gasrem_1499", 1
  store i64 %"$consume_1503", i64* @_gasrem, align 8
  store %Uint256 { i256 2 }, %Uint256* %"$arg1_85", align 8, !dbg !107
  %"$gasrem_1504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1505" = icmp ugt i64 1, %"$gasrem_1504"
  br i1 %"$gascmp_1505", label %"$out_of_gas_1506", label %"$have_gas_1507"

"$out_of_gas_1506":                               ; preds = %"$have_gas_1502"
  call void @_out_of_gas()
  br label %"$have_gas_1507"

"$have_gas_1507":                                 ; preds = %"$out_of_gas_1506", %"$have_gas_1502"
  %"$consume_1508" = sub i64 %"$gasrem_1504", 1
  store i64 %"$consume_1508", i64* @_gasrem, align 8
  %"$arg2_86" = alloca %Uint256, align 8
  %"$gasrem_1509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1510" = icmp ugt i64 1, %"$gasrem_1509"
  br i1 %"$gascmp_1510", label %"$out_of_gas_1511", label %"$have_gas_1512"

"$out_of_gas_1511":                               ; preds = %"$have_gas_1507"
  call void @_out_of_gas()
  br label %"$have_gas_1512"

"$have_gas_1512":                                 ; preds = %"$out_of_gas_1511", %"$have_gas_1507"
  %"$consume_1513" = sub i64 %"$gasrem_1509", 1
  store i64 %"$consume_1513", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %"$arg2_86", align 8, !dbg !108
  %"$gasrem_1514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1515" = icmp ugt i64 1, %"$gasrem_1514"
  br i1 %"$gascmp_1515", label %"$out_of_gas_1516", label %"$have_gas_1517"

"$out_of_gas_1516":                               ; preds = %"$have_gas_1512"
  call void @_out_of_gas()
  br label %"$have_gas_1517"

"$have_gas_1517":                                 ; preds = %"$out_of_gas_1516", %"$have_gas_1512"
  %"$consume_1518" = sub i64 %"$gasrem_1514", 1
  store i64 %"$consume_1518", i64* @_gasrem, align 8
  %"$test_90" = alloca %TName_Bool*, align 8
  %"$gasrem_1519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1520" = icmp ugt i64 1, %"$gasrem_1519"
  br i1 %"$gascmp_1520", label %"$out_of_gas_1521", label %"$have_gas_1522"

"$out_of_gas_1521":                               ; preds = %"$have_gas_1517"
  call void @_out_of_gas()
  br label %"$have_gas_1522"

"$have_gas_1522":                                 ; preds = %"$out_of_gas_1521", %"$have_gas_1517"
  %"$consume_1523" = sub i64 %"$gasrem_1519", 1
  store i64 %"$consume_1523", i64* @_gasrem, align 8
  %"$res_87" = alloca %Uint256, align 8
  %"$gasrem_1525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1526" = icmp ugt i64 80, %"$gasrem_1525"
  br i1 %"$gascmp_1526", label %"$out_of_gas_1527", label %"$have_gas_1528"

"$out_of_gas_1527":                               ; preds = %"$have_gas_1522"
  call void @_out_of_gas()
  br label %"$have_gas_1528"

"$have_gas_1528":                                 ; preds = %"$out_of_gas_1527", %"$have_gas_1522"
  %"$consume_1529" = sub i64 %"$gasrem_1525", 80
  store i64 %"$consume_1529", i64* @_gasrem, align 8
  %"$execptr_load_1530" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_85_1531" = alloca %Uint256, align 8
  %"$$arg1_85_1532" = load %Uint256, %Uint256* %"$arg1_85", align 8
  store %Uint256 %"$$arg1_85_1532", %Uint256* %"$mul_$arg1_85_1531", align 8
  %"$mul_$arg2_86_1533" = alloca %Uint256, align 8
  %"$$arg2_86_1534" = load %Uint256, %Uint256* %"$arg2_86", align 8
  store %Uint256 %"$$arg2_86_1534", %Uint256* %"$mul_$arg2_86_1533", align 8
  %"$mul_call_1535" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1530", %Uint256* %"$mul_$arg1_85_1531", %Uint256* %"$mul_$arg2_86_1533"), !dbg !109
  %"$mul_1537" = load %Uint256, %Uint256* %"$mul_call_1535", align 8
  store %Uint256 %"$mul_1537", %Uint256* %"$res_87", align 8, !dbg !109
  %"$gasrem_1538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1539" = icmp ugt i64 1, %"$gasrem_1538"
  br i1 %"$gascmp_1539", label %"$out_of_gas_1540", label %"$have_gas_1541"

"$out_of_gas_1540":                               ; preds = %"$have_gas_1528"
  call void @_out_of_gas()
  br label %"$have_gas_1541"

"$have_gas_1541":                                 ; preds = %"$out_of_gas_1540", %"$have_gas_1528"
  %"$consume_1542" = sub i64 %"$gasrem_1538", 1
  store i64 %"$consume_1542", i64* @_gasrem, align 8
  %"$res__88" = alloca %Uint256, align 8
  %"$gasrem_1543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1544" = icmp ugt i64 1, %"$gasrem_1543"
  br i1 %"$gascmp_1544", label %"$out_of_gas_1545", label %"$have_gas_1546"

"$out_of_gas_1545":                               ; preds = %"$have_gas_1541"
  call void @_out_of_gas()
  br label %"$have_gas_1546"

"$have_gas_1546":                                 ; preds = %"$out_of_gas_1545", %"$have_gas_1541"
  %"$consume_1547" = sub i64 %"$gasrem_1543", 1
  store i64 %"$consume_1547", i64* @_gasrem, align 8
  store %Uint256 { i256 -2 }, %Uint256* %"$res__88", align 8, !dbg !110
  %"$gasrem_1548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1549" = icmp ugt i64 1, %"$gasrem_1548"
  br i1 %"$gascmp_1549", label %"$out_of_gas_1550", label %"$have_gas_1551"

"$out_of_gas_1550":                               ; preds = %"$have_gas_1546"
  call void @_out_of_gas()
  br label %"$have_gas_1551"

"$have_gas_1551":                                 ; preds = %"$out_of_gas_1550", %"$have_gas_1546"
  %"$consume_1552" = sub i64 %"$gasrem_1548", 1
  store i64 %"$consume_1552", i64* @_gasrem, align 8
  %"$test__89" = alloca %TName_Bool*, align 8
  %"$gasrem_1554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1555" = icmp ugt i64 16, %"$gasrem_1554"
  br i1 %"$gascmp_1555", label %"$out_of_gas_1556", label %"$have_gas_1557"

"$out_of_gas_1556":                               ; preds = %"$have_gas_1551"
  call void @_out_of_gas()
  br label %"$have_gas_1557"

"$have_gas_1557":                                 ; preds = %"$out_of_gas_1556", %"$have_gas_1551"
  %"$consume_1558" = sub i64 %"$gasrem_1554", 16
  store i64 %"$consume_1558", i64* @_gasrem, align 8
  %"$execptr_load_1559" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_87_1560" = alloca %Uint256, align 8
  %"$$res_87_1561" = load %Uint256, %Uint256* %"$res_87", align 8
  store %Uint256 %"$$res_87_1561", %Uint256* %"$eq_$res_87_1560", align 8
  %"$eq_$res__88_1562" = alloca %Uint256, align 8
  %"$$res__88_1563" = load %Uint256, %Uint256* %"$res__88", align 8
  store %Uint256 %"$$res__88_1563", %Uint256* %"$eq_$res__88_1562", align 8
  %"$eq_call_1564" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1559", %Uint256* %"$eq_$res_87_1560", %Uint256* %"$eq_$res__88_1562"), !dbg !111
  store %TName_Bool* %"$eq_call_1564", %TName_Bool** %"$test__89", align 8, !dbg !111
  %"$gasrem_1566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1567" = icmp ugt i64 1, %"$gasrem_1566"
  br i1 %"$gascmp_1567", label %"$out_of_gas_1568", label %"$have_gas_1569"

"$out_of_gas_1568":                               ; preds = %"$have_gas_1557"
  call void @_out_of_gas()
  br label %"$have_gas_1569"

"$have_gas_1569":                                 ; preds = %"$out_of_gas_1568", %"$have_gas_1557"
  %"$consume_1570" = sub i64 %"$gasrem_1566", 1
  store i64 %"$consume_1570", i64* @_gasrem, align 8
  %"$BoolUtils.andb_155" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1571" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1572" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1571", 0
  %"$BoolUtils.andb_envptr_1573" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1571", 1
  %"$$test_84_1574" = load %TName_Bool*, %TName_Bool** %"$test_84", align 8
  %"$BoolUtils.andb_call_1575" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1572"(i8* %"$BoolUtils.andb_envptr_1573", %TName_Bool* %"$$test_84_1574"), !dbg !112
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1575", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8, !dbg !112
  %"$BoolUtils.andb_156" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_155_1576" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$$BoolUtils.andb_155_fptr_1577" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1576", 0
  %"$$BoolUtils.andb_155_envptr_1578" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1576", 1
  %"$$test__89_1579" = load %TName_Bool*, %TName_Bool** %"$test__89", align 8
  %"$$BoolUtils.andb_155_call_1580" = call %TName_Bool* %"$$BoolUtils.andb_155_fptr_1577"(i8* %"$$BoolUtils.andb_155_envptr_1578", %TName_Bool* %"$$test__89_1579"), !dbg !112
  store %TName_Bool* %"$$BoolUtils.andb_155_call_1580", %TName_Bool** %"$BoolUtils.andb_156", align 8, !dbg !112
  %"$$BoolUtils.andb_156_1581" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_156", align 8
  store %TName_Bool* %"$$BoolUtils.andb_156_1581", %TName_Bool** %"$test_90", align 8, !dbg !112
  %"$gasrem_1582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1583" = icmp ugt i64 1, %"$gasrem_1582"
  br i1 %"$gascmp_1583", label %"$out_of_gas_1584", label %"$have_gas_1585"

"$out_of_gas_1584":                               ; preds = %"$have_gas_1569"
  call void @_out_of_gas()
  br label %"$have_gas_1585"

"$have_gas_1585":                                 ; preds = %"$out_of_gas_1584", %"$have_gas_1569"
  %"$consume_1586" = sub i64 %"$gasrem_1582", 1
  store i64 %"$consume_1586", i64* @_gasrem, align 8
  %"$arg1_91" = alloca %Int256, align 8
  %"$gasrem_1587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1588" = icmp ugt i64 1, %"$gasrem_1587"
  br i1 %"$gascmp_1588", label %"$out_of_gas_1589", label %"$have_gas_1590"

"$out_of_gas_1589":                               ; preds = %"$have_gas_1585"
  call void @_out_of_gas()
  br label %"$have_gas_1590"

"$have_gas_1590":                                 ; preds = %"$out_of_gas_1589", %"$have_gas_1585"
  %"$consume_1591" = sub i64 %"$gasrem_1587", 1
  store i64 %"$consume_1591", i64* @_gasrem, align 8
  store %Int256 { i256 2 }, %Int256* %"$arg1_91", align 8, !dbg !113
  %"$gasrem_1592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1593" = icmp ugt i64 1, %"$gasrem_1592"
  br i1 %"$gascmp_1593", label %"$out_of_gas_1594", label %"$have_gas_1595"

"$out_of_gas_1594":                               ; preds = %"$have_gas_1590"
  call void @_out_of_gas()
  br label %"$have_gas_1595"

"$have_gas_1595":                                 ; preds = %"$out_of_gas_1594", %"$have_gas_1590"
  %"$consume_1596" = sub i64 %"$gasrem_1592", 1
  store i64 %"$consume_1596", i64* @_gasrem, align 8
  %"$arg2_92" = alloca %Int256, align 8
  %"$gasrem_1597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1598" = icmp ugt i64 1, %"$gasrem_1597"
  br i1 %"$gascmp_1598", label %"$out_of_gas_1599", label %"$have_gas_1600"

"$out_of_gas_1599":                               ; preds = %"$have_gas_1595"
  call void @_out_of_gas()
  br label %"$have_gas_1600"

"$have_gas_1600":                                 ; preds = %"$out_of_gas_1599", %"$have_gas_1595"
  %"$consume_1601" = sub i64 %"$gasrem_1597", 1
  store i64 %"$consume_1601", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_92", align 8, !dbg !114
  %"$gasrem_1602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1603" = icmp ugt i64 1, %"$gasrem_1602"
  br i1 %"$gascmp_1603", label %"$out_of_gas_1604", label %"$have_gas_1605"

"$out_of_gas_1604":                               ; preds = %"$have_gas_1600"
  call void @_out_of_gas()
  br label %"$have_gas_1605"

"$have_gas_1605":                                 ; preds = %"$out_of_gas_1604", %"$have_gas_1600"
  %"$consume_1606" = sub i64 %"$gasrem_1602", 1
  store i64 %"$consume_1606", i64* @_gasrem, align 8
  %"$test_96" = alloca %TName_Bool*, align 8
  %"$gasrem_1607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1608" = icmp ugt i64 1, %"$gasrem_1607"
  br i1 %"$gascmp_1608", label %"$out_of_gas_1609", label %"$have_gas_1610"

"$out_of_gas_1609":                               ; preds = %"$have_gas_1605"
  call void @_out_of_gas()
  br label %"$have_gas_1610"

"$have_gas_1610":                                 ; preds = %"$out_of_gas_1609", %"$have_gas_1605"
  %"$consume_1611" = sub i64 %"$gasrem_1607", 1
  store i64 %"$consume_1611", i64* @_gasrem, align 8
  %"$res_93" = alloca %Int256, align 8
  %"$gasrem_1613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1614" = icmp ugt i64 80, %"$gasrem_1613"
  br i1 %"$gascmp_1614", label %"$out_of_gas_1615", label %"$have_gas_1616"

"$out_of_gas_1615":                               ; preds = %"$have_gas_1610"
  call void @_out_of_gas()
  br label %"$have_gas_1616"

"$have_gas_1616":                                 ; preds = %"$out_of_gas_1615", %"$have_gas_1610"
  %"$consume_1617" = sub i64 %"$gasrem_1613", 80
  store i64 %"$consume_1617", i64* @_gasrem, align 8
  %"$execptr_load_1618" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_91_1619" = alloca %Int256, align 8
  %"$$arg1_91_1620" = load %Int256, %Int256* %"$arg1_91", align 8
  store %Int256 %"$$arg1_91_1620", %Int256* %"$mul_$arg1_91_1619", align 8
  %"$mul_$arg2_92_1621" = alloca %Int256, align 8
  %"$$arg2_92_1622" = load %Int256, %Int256* %"$arg2_92", align 8
  store %Int256 %"$$arg2_92_1622", %Int256* %"$mul_$arg2_92_1621", align 8
  %"$mul_call_1623" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1618", %Int256* %"$mul_$arg1_91_1619", %Int256* %"$mul_$arg2_92_1621"), !dbg !115
  %"$mul_1625" = load %Int256, %Int256* %"$mul_call_1623", align 8
  store %Int256 %"$mul_1625", %Int256* %"$res_93", align 8, !dbg !115
  %"$gasrem_1626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1627" = icmp ugt i64 1, %"$gasrem_1626"
  br i1 %"$gascmp_1627", label %"$out_of_gas_1628", label %"$have_gas_1629"

"$out_of_gas_1628":                               ; preds = %"$have_gas_1616"
  call void @_out_of_gas()
  br label %"$have_gas_1629"

"$have_gas_1629":                                 ; preds = %"$out_of_gas_1628", %"$have_gas_1616"
  %"$consume_1630" = sub i64 %"$gasrem_1626", 1
  store i64 %"$consume_1630", i64* @_gasrem, align 8
  %"$res__94" = alloca %Int256, align 8
  %"$gasrem_1631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1632" = icmp ugt i64 1, %"$gasrem_1631"
  br i1 %"$gascmp_1632", label %"$out_of_gas_1633", label %"$have_gas_1634"

"$out_of_gas_1633":                               ; preds = %"$have_gas_1629"
  call void @_out_of_gas()
  br label %"$have_gas_1634"

"$have_gas_1634":                                 ; preds = %"$out_of_gas_1633", %"$have_gas_1629"
  %"$consume_1635" = sub i64 %"$gasrem_1631", 1
  store i64 %"$consume_1635", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__94", align 8, !dbg !116
  %"$gasrem_1636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1637" = icmp ugt i64 1, %"$gasrem_1636"
  br i1 %"$gascmp_1637", label %"$out_of_gas_1638", label %"$have_gas_1639"

"$out_of_gas_1638":                               ; preds = %"$have_gas_1634"
  call void @_out_of_gas()
  br label %"$have_gas_1639"

"$have_gas_1639":                                 ; preds = %"$out_of_gas_1638", %"$have_gas_1634"
  %"$consume_1640" = sub i64 %"$gasrem_1636", 1
  store i64 %"$consume_1640", i64* @_gasrem, align 8
  %"$test__95" = alloca %TName_Bool*, align 8
  %"$gasrem_1642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1643" = icmp ugt i64 16, %"$gasrem_1642"
  br i1 %"$gascmp_1643", label %"$out_of_gas_1644", label %"$have_gas_1645"

"$out_of_gas_1644":                               ; preds = %"$have_gas_1639"
  call void @_out_of_gas()
  br label %"$have_gas_1645"

"$have_gas_1645":                                 ; preds = %"$out_of_gas_1644", %"$have_gas_1639"
  %"$consume_1646" = sub i64 %"$gasrem_1642", 16
  store i64 %"$consume_1646", i64* @_gasrem, align 8
  %"$execptr_load_1647" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_93_1648" = alloca %Int256, align 8
  %"$$res_93_1649" = load %Int256, %Int256* %"$res_93", align 8
  store %Int256 %"$$res_93_1649", %Int256* %"$eq_$res_93_1648", align 8
  %"$eq_$res__94_1650" = alloca %Int256, align 8
  %"$$res__94_1651" = load %Int256, %Int256* %"$res__94", align 8
  store %Int256 %"$$res__94_1651", %Int256* %"$eq_$res__94_1650", align 8
  %"$eq_call_1652" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1647", %Int256* %"$eq_$res_93_1648", %Int256* %"$eq_$res__94_1650"), !dbg !117
  store %TName_Bool* %"$eq_call_1652", %TName_Bool** %"$test__95", align 8, !dbg !117
  %"$gasrem_1654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1655" = icmp ugt i64 1, %"$gasrem_1654"
  br i1 %"$gascmp_1655", label %"$out_of_gas_1656", label %"$have_gas_1657"

"$out_of_gas_1656":                               ; preds = %"$have_gas_1645"
  call void @_out_of_gas()
  br label %"$have_gas_1657"

"$have_gas_1657":                                 ; preds = %"$out_of_gas_1656", %"$have_gas_1645"
  %"$consume_1658" = sub i64 %"$gasrem_1654", 1
  store i64 %"$consume_1658", i64* @_gasrem, align 8
  %"$BoolUtils.andb_157" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1659" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1660" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1659", 0
  %"$BoolUtils.andb_envptr_1661" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1659", 1
  %"$$test_90_1662" = load %TName_Bool*, %TName_Bool** %"$test_90", align 8
  %"$BoolUtils.andb_call_1663" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1660"(i8* %"$BoolUtils.andb_envptr_1661", %TName_Bool* %"$$test_90_1662"), !dbg !118
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1663", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8, !dbg !118
  %"$BoolUtils.andb_158" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_157_1664" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$$BoolUtils.andb_157_fptr_1665" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1664", 0
  %"$$BoolUtils.andb_157_envptr_1666" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1664", 1
  %"$$test__95_1667" = load %TName_Bool*, %TName_Bool** %"$test__95", align 8
  %"$$BoolUtils.andb_157_call_1668" = call %TName_Bool* %"$$BoolUtils.andb_157_fptr_1665"(i8* %"$$BoolUtils.andb_157_envptr_1666", %TName_Bool* %"$$test__95_1667"), !dbg !118
  store %TName_Bool* %"$$BoolUtils.andb_157_call_1668", %TName_Bool** %"$BoolUtils.andb_158", align 8, !dbg !118
  %"$$BoolUtils.andb_158_1669" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_158", align 8
  store %TName_Bool* %"$$BoolUtils.andb_158_1669", %TName_Bool** %"$test_96", align 8, !dbg !118
  %"$gasrem_1670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1671" = icmp ugt i64 1, %"$gasrem_1670"
  br i1 %"$gascmp_1671", label %"$out_of_gas_1672", label %"$have_gas_1673"

"$out_of_gas_1672":                               ; preds = %"$have_gas_1657"
  call void @_out_of_gas()
  br label %"$have_gas_1673"

"$have_gas_1673":                                 ; preds = %"$out_of_gas_1672", %"$have_gas_1657"
  %"$consume_1674" = sub i64 %"$gasrem_1670", 1
  store i64 %"$consume_1674", i64* @_gasrem, align 8
  %"$arg1_97" = alloca %Int256, align 8
  %"$gasrem_1675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1676" = icmp ugt i64 1, %"$gasrem_1675"
  br i1 %"$gascmp_1676", label %"$out_of_gas_1677", label %"$have_gas_1678"

"$out_of_gas_1677":                               ; preds = %"$have_gas_1673"
  call void @_out_of_gas()
  br label %"$have_gas_1678"

"$have_gas_1678":                                 ; preds = %"$out_of_gas_1677", %"$have_gas_1673"
  %"$consume_1679" = sub i64 %"$gasrem_1675", 1
  store i64 %"$consume_1679", i64* @_gasrem, align 8
  store %Int256 { i256 -2 }, %Int256* %"$arg1_97", align 8, !dbg !119
  %"$gasrem_1680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1681" = icmp ugt i64 1, %"$gasrem_1680"
  br i1 %"$gascmp_1681", label %"$out_of_gas_1682", label %"$have_gas_1683"

"$out_of_gas_1682":                               ; preds = %"$have_gas_1678"
  call void @_out_of_gas()
  br label %"$have_gas_1683"

"$have_gas_1683":                                 ; preds = %"$out_of_gas_1682", %"$have_gas_1678"
  %"$consume_1684" = sub i64 %"$gasrem_1680", 1
  store i64 %"$consume_1684", i64* @_gasrem, align 8
  %"$arg2_98" = alloca %Int256, align 8
  %"$gasrem_1685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1686" = icmp ugt i64 1, %"$gasrem_1685"
  br i1 %"$gascmp_1686", label %"$out_of_gas_1687", label %"$have_gas_1688"

"$out_of_gas_1687":                               ; preds = %"$have_gas_1683"
  call void @_out_of_gas()
  br label %"$have_gas_1688"

"$have_gas_1688":                                 ; preds = %"$out_of_gas_1687", %"$have_gas_1683"
  %"$consume_1689" = sub i64 %"$gasrem_1685", 1
  store i64 %"$consume_1689", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_98", align 8, !dbg !120
  %"$gasrem_1690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1691" = icmp ugt i64 1, %"$gasrem_1690"
  br i1 %"$gascmp_1691", label %"$out_of_gas_1692", label %"$have_gas_1693"

"$out_of_gas_1692":                               ; preds = %"$have_gas_1688"
  call void @_out_of_gas()
  br label %"$have_gas_1693"

"$have_gas_1693":                                 ; preds = %"$out_of_gas_1692", %"$have_gas_1688"
  %"$consume_1694" = sub i64 %"$gasrem_1690", 1
  store i64 %"$consume_1694", i64* @_gasrem, align 8
  %"$test_102" = alloca %TName_Bool*, align 8
  %"$gasrem_1695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1696" = icmp ugt i64 1, %"$gasrem_1695"
  br i1 %"$gascmp_1696", label %"$out_of_gas_1697", label %"$have_gas_1698"

"$out_of_gas_1697":                               ; preds = %"$have_gas_1693"
  call void @_out_of_gas()
  br label %"$have_gas_1698"

"$have_gas_1698":                                 ; preds = %"$out_of_gas_1697", %"$have_gas_1693"
  %"$consume_1699" = sub i64 %"$gasrem_1695", 1
  store i64 %"$consume_1699", i64* @_gasrem, align 8
  %"$res_99" = alloca %Int256, align 8
  %"$gasrem_1701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1702" = icmp ugt i64 80, %"$gasrem_1701"
  br i1 %"$gascmp_1702", label %"$out_of_gas_1703", label %"$have_gas_1704"

"$out_of_gas_1703":                               ; preds = %"$have_gas_1698"
  call void @_out_of_gas()
  br label %"$have_gas_1704"

"$have_gas_1704":                                 ; preds = %"$out_of_gas_1703", %"$have_gas_1698"
  %"$consume_1705" = sub i64 %"$gasrem_1701", 80
  store i64 %"$consume_1705", i64* @_gasrem, align 8
  %"$execptr_load_1706" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_97_1707" = alloca %Int256, align 8
  %"$$arg1_97_1708" = load %Int256, %Int256* %"$arg1_97", align 8
  store %Int256 %"$$arg1_97_1708", %Int256* %"$mul_$arg1_97_1707", align 8
  %"$mul_$arg2_98_1709" = alloca %Int256, align 8
  %"$$arg2_98_1710" = load %Int256, %Int256* %"$arg2_98", align 8
  store %Int256 %"$$arg2_98_1710", %Int256* %"$mul_$arg2_98_1709", align 8
  %"$mul_call_1711" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1706", %Int256* %"$mul_$arg1_97_1707", %Int256* %"$mul_$arg2_98_1709"), !dbg !121
  %"$mul_1713" = load %Int256, %Int256* %"$mul_call_1711", align 8
  store %Int256 %"$mul_1713", %Int256* %"$res_99", align 8, !dbg !121
  %"$gasrem_1714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1715" = icmp ugt i64 1, %"$gasrem_1714"
  br i1 %"$gascmp_1715", label %"$out_of_gas_1716", label %"$have_gas_1717"

"$out_of_gas_1716":                               ; preds = %"$have_gas_1704"
  call void @_out_of_gas()
  br label %"$have_gas_1717"

"$have_gas_1717":                                 ; preds = %"$out_of_gas_1716", %"$have_gas_1704"
  %"$consume_1718" = sub i64 %"$gasrem_1714", 1
  store i64 %"$consume_1718", i64* @_gasrem, align 8
  %"$res__100" = alloca %Int256, align 8
  %"$gasrem_1719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1720" = icmp ugt i64 1, %"$gasrem_1719"
  br i1 %"$gascmp_1720", label %"$out_of_gas_1721", label %"$have_gas_1722"

"$out_of_gas_1721":                               ; preds = %"$have_gas_1717"
  call void @_out_of_gas()
  br label %"$have_gas_1722"

"$have_gas_1722":                                 ; preds = %"$out_of_gas_1721", %"$have_gas_1717"
  %"$consume_1723" = sub i64 %"$gasrem_1719", 1
  store i64 %"$consume_1723", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__100", align 8, !dbg !122
  %"$gasrem_1724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1725" = icmp ugt i64 1, %"$gasrem_1724"
  br i1 %"$gascmp_1725", label %"$out_of_gas_1726", label %"$have_gas_1727"

"$out_of_gas_1726":                               ; preds = %"$have_gas_1722"
  call void @_out_of_gas()
  br label %"$have_gas_1727"

"$have_gas_1727":                                 ; preds = %"$out_of_gas_1726", %"$have_gas_1722"
  %"$consume_1728" = sub i64 %"$gasrem_1724", 1
  store i64 %"$consume_1728", i64* @_gasrem, align 8
  %"$test__101" = alloca %TName_Bool*, align 8
  %"$gasrem_1730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1731" = icmp ugt i64 16, %"$gasrem_1730"
  br i1 %"$gascmp_1731", label %"$out_of_gas_1732", label %"$have_gas_1733"

"$out_of_gas_1732":                               ; preds = %"$have_gas_1727"
  call void @_out_of_gas()
  br label %"$have_gas_1733"

"$have_gas_1733":                                 ; preds = %"$out_of_gas_1732", %"$have_gas_1727"
  %"$consume_1734" = sub i64 %"$gasrem_1730", 16
  store i64 %"$consume_1734", i64* @_gasrem, align 8
  %"$execptr_load_1735" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_99_1736" = alloca %Int256, align 8
  %"$$res_99_1737" = load %Int256, %Int256* %"$res_99", align 8
  store %Int256 %"$$res_99_1737", %Int256* %"$eq_$res_99_1736", align 8
  %"$eq_$res__100_1738" = alloca %Int256, align 8
  %"$$res__100_1739" = load %Int256, %Int256* %"$res__100", align 8
  store %Int256 %"$$res__100_1739", %Int256* %"$eq_$res__100_1738", align 8
  %"$eq_call_1740" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1735", %Int256* %"$eq_$res_99_1736", %Int256* %"$eq_$res__100_1738"), !dbg !123
  store %TName_Bool* %"$eq_call_1740", %TName_Bool** %"$test__101", align 8, !dbg !123
  %"$gasrem_1742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1743" = icmp ugt i64 1, %"$gasrem_1742"
  br i1 %"$gascmp_1743", label %"$out_of_gas_1744", label %"$have_gas_1745"

"$out_of_gas_1744":                               ; preds = %"$have_gas_1733"
  call void @_out_of_gas()
  br label %"$have_gas_1745"

"$have_gas_1745":                                 ; preds = %"$out_of_gas_1744", %"$have_gas_1733"
  %"$consume_1746" = sub i64 %"$gasrem_1742", 1
  store i64 %"$consume_1746", i64* @_gasrem, align 8
  %"$BoolUtils.andb_159" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1747" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1748" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1747", 0
  %"$BoolUtils.andb_envptr_1749" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1747", 1
  %"$$test_96_1750" = load %TName_Bool*, %TName_Bool** %"$test_96", align 8
  %"$BoolUtils.andb_call_1751" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1748"(i8* %"$BoolUtils.andb_envptr_1749", %TName_Bool* %"$$test_96_1750"), !dbg !124
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1751", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8, !dbg !124
  %"$BoolUtils.andb_160" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_159_1752" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$$BoolUtils.andb_159_fptr_1753" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1752", 0
  %"$$BoolUtils.andb_159_envptr_1754" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1752", 1
  %"$$test__101_1755" = load %TName_Bool*, %TName_Bool** %"$test__101", align 8
  %"$$BoolUtils.andb_159_call_1756" = call %TName_Bool* %"$$BoolUtils.andb_159_fptr_1753"(i8* %"$$BoolUtils.andb_159_envptr_1754", %TName_Bool* %"$$test__101_1755"), !dbg !124
  store %TName_Bool* %"$$BoolUtils.andb_159_call_1756", %TName_Bool** %"$BoolUtils.andb_160", align 8, !dbg !124
  %"$$BoolUtils.andb_160_1757" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_160", align 8
  store %TName_Bool* %"$$BoolUtils.andb_160_1757", %TName_Bool** %"$test_102", align 8, !dbg !124
  %"$gasrem_1758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1759" = icmp ugt i64 1, %"$gasrem_1758"
  br i1 %"$gascmp_1759", label %"$out_of_gas_1760", label %"$have_gas_1761"

"$out_of_gas_1760":                               ; preds = %"$have_gas_1745"
  call void @_out_of_gas()
  br label %"$have_gas_1761"

"$have_gas_1761":                                 ; preds = %"$out_of_gas_1760", %"$have_gas_1745"
  %"$consume_1762" = sub i64 %"$gasrem_1758", 1
  store i64 %"$consume_1762", i64* @_gasrem, align 8
  %"$arg1_103" = alloca %Int256, align 8
  %"$gasrem_1763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1764" = icmp ugt i64 1, %"$gasrem_1763"
  br i1 %"$gascmp_1764", label %"$out_of_gas_1765", label %"$have_gas_1766"

"$out_of_gas_1765":                               ; preds = %"$have_gas_1761"
  call void @_out_of_gas()
  br label %"$have_gas_1766"

"$have_gas_1766":                                 ; preds = %"$out_of_gas_1765", %"$have_gas_1761"
  %"$consume_1767" = sub i64 %"$gasrem_1763", 1
  store i64 %"$consume_1767", i64* @_gasrem, align 8
  store %Int256 { i256 2 }, %Int256* %"$arg1_103", align 8, !dbg !125
  %"$gasrem_1768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1769" = icmp ugt i64 1, %"$gasrem_1768"
  br i1 %"$gascmp_1769", label %"$out_of_gas_1770", label %"$have_gas_1771"

"$out_of_gas_1770":                               ; preds = %"$have_gas_1766"
  call void @_out_of_gas()
  br label %"$have_gas_1771"

"$have_gas_1771":                                 ; preds = %"$out_of_gas_1770", %"$have_gas_1766"
  %"$consume_1772" = sub i64 %"$gasrem_1768", 1
  store i64 %"$consume_1772", i64* @_gasrem, align 8
  %"$arg2_104" = alloca %Int256, align 8
  %"$gasrem_1773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1774" = icmp ugt i64 1, %"$gasrem_1773"
  br i1 %"$gascmp_1774", label %"$out_of_gas_1775", label %"$have_gas_1776"

"$out_of_gas_1775":                               ; preds = %"$have_gas_1771"
  call void @_out_of_gas()
  br label %"$have_gas_1776"

"$have_gas_1776":                                 ; preds = %"$out_of_gas_1775", %"$have_gas_1771"
  %"$consume_1777" = sub i64 %"$gasrem_1773", 1
  store i64 %"$consume_1777", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_104", align 8, !dbg !126
  %"$gasrem_1778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1779" = icmp ugt i64 1, %"$gasrem_1778"
  br i1 %"$gascmp_1779", label %"$out_of_gas_1780", label %"$have_gas_1781"

"$out_of_gas_1780":                               ; preds = %"$have_gas_1776"
  call void @_out_of_gas()
  br label %"$have_gas_1781"

"$have_gas_1781":                                 ; preds = %"$out_of_gas_1780", %"$have_gas_1776"
  %"$consume_1782" = sub i64 %"$gasrem_1778", 1
  store i64 %"$consume_1782", i64* @_gasrem, align 8
  %"$test_108" = alloca %TName_Bool*, align 8
  %"$gasrem_1783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1784" = icmp ugt i64 1, %"$gasrem_1783"
  br i1 %"$gascmp_1784", label %"$out_of_gas_1785", label %"$have_gas_1786"

"$out_of_gas_1785":                               ; preds = %"$have_gas_1781"
  call void @_out_of_gas()
  br label %"$have_gas_1786"

"$have_gas_1786":                                 ; preds = %"$out_of_gas_1785", %"$have_gas_1781"
  %"$consume_1787" = sub i64 %"$gasrem_1783", 1
  store i64 %"$consume_1787", i64* @_gasrem, align 8
  %"$res_105" = alloca %Int256, align 8
  %"$gasrem_1789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1790" = icmp ugt i64 80, %"$gasrem_1789"
  br i1 %"$gascmp_1790", label %"$out_of_gas_1791", label %"$have_gas_1792"

"$out_of_gas_1791":                               ; preds = %"$have_gas_1786"
  call void @_out_of_gas()
  br label %"$have_gas_1792"

"$have_gas_1792":                                 ; preds = %"$out_of_gas_1791", %"$have_gas_1786"
  %"$consume_1793" = sub i64 %"$gasrem_1789", 80
  store i64 %"$consume_1793", i64* @_gasrem, align 8
  %"$execptr_load_1794" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_103_1795" = alloca %Int256, align 8
  %"$$arg1_103_1796" = load %Int256, %Int256* %"$arg1_103", align 8
  store %Int256 %"$$arg1_103_1796", %Int256* %"$mul_$arg1_103_1795", align 8
  %"$mul_$arg2_104_1797" = alloca %Int256, align 8
  %"$$arg2_104_1798" = load %Int256, %Int256* %"$arg2_104", align 8
  store %Int256 %"$$arg2_104_1798", %Int256* %"$mul_$arg2_104_1797", align 8
  %"$mul_call_1799" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1794", %Int256* %"$mul_$arg1_103_1795", %Int256* %"$mul_$arg2_104_1797"), !dbg !127
  %"$mul_1801" = load %Int256, %Int256* %"$mul_call_1799", align 8
  store %Int256 %"$mul_1801", %Int256* %"$res_105", align 8, !dbg !127
  %"$gasrem_1802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1803" = icmp ugt i64 1, %"$gasrem_1802"
  br i1 %"$gascmp_1803", label %"$out_of_gas_1804", label %"$have_gas_1805"

"$out_of_gas_1804":                               ; preds = %"$have_gas_1792"
  call void @_out_of_gas()
  br label %"$have_gas_1805"

"$have_gas_1805":                                 ; preds = %"$out_of_gas_1804", %"$have_gas_1792"
  %"$consume_1806" = sub i64 %"$gasrem_1802", 1
  store i64 %"$consume_1806", i64* @_gasrem, align 8
  %"$res__106" = alloca %Int256, align 8
  %"$gasrem_1807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1808" = icmp ugt i64 1, %"$gasrem_1807"
  br i1 %"$gascmp_1808", label %"$out_of_gas_1809", label %"$have_gas_1810"

"$out_of_gas_1809":                               ; preds = %"$have_gas_1805"
  call void @_out_of_gas()
  br label %"$have_gas_1810"

"$have_gas_1810":                                 ; preds = %"$out_of_gas_1809", %"$have_gas_1805"
  %"$consume_1811" = sub i64 %"$gasrem_1807", 1
  store i64 %"$consume_1811", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__106", align 8, !dbg !128
  %"$gasrem_1812" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1813" = icmp ugt i64 1, %"$gasrem_1812"
  br i1 %"$gascmp_1813", label %"$out_of_gas_1814", label %"$have_gas_1815"

"$out_of_gas_1814":                               ; preds = %"$have_gas_1810"
  call void @_out_of_gas()
  br label %"$have_gas_1815"

"$have_gas_1815":                                 ; preds = %"$out_of_gas_1814", %"$have_gas_1810"
  %"$consume_1816" = sub i64 %"$gasrem_1812", 1
  store i64 %"$consume_1816", i64* @_gasrem, align 8
  %"$test__107" = alloca %TName_Bool*, align 8
  %"$gasrem_1818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1819" = icmp ugt i64 16, %"$gasrem_1818"
  br i1 %"$gascmp_1819", label %"$out_of_gas_1820", label %"$have_gas_1821"

"$out_of_gas_1820":                               ; preds = %"$have_gas_1815"
  call void @_out_of_gas()
  br label %"$have_gas_1821"

"$have_gas_1821":                                 ; preds = %"$out_of_gas_1820", %"$have_gas_1815"
  %"$consume_1822" = sub i64 %"$gasrem_1818", 16
  store i64 %"$consume_1822", i64* @_gasrem, align 8
  %"$execptr_load_1823" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_105_1824" = alloca %Int256, align 8
  %"$$res_105_1825" = load %Int256, %Int256* %"$res_105", align 8
  store %Int256 %"$$res_105_1825", %Int256* %"$eq_$res_105_1824", align 8
  %"$eq_$res__106_1826" = alloca %Int256, align 8
  %"$$res__106_1827" = load %Int256, %Int256* %"$res__106", align 8
  store %Int256 %"$$res__106_1827", %Int256* %"$eq_$res__106_1826", align 8
  %"$eq_call_1828" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1823", %Int256* %"$eq_$res_105_1824", %Int256* %"$eq_$res__106_1826"), !dbg !129
  store %TName_Bool* %"$eq_call_1828", %TName_Bool** %"$test__107", align 8, !dbg !129
  %"$gasrem_1830" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1831" = icmp ugt i64 1, %"$gasrem_1830"
  br i1 %"$gascmp_1831", label %"$out_of_gas_1832", label %"$have_gas_1833"

"$out_of_gas_1832":                               ; preds = %"$have_gas_1821"
  call void @_out_of_gas()
  br label %"$have_gas_1833"

"$have_gas_1833":                                 ; preds = %"$out_of_gas_1832", %"$have_gas_1821"
  %"$consume_1834" = sub i64 %"$gasrem_1830", 1
  store i64 %"$consume_1834", i64* @_gasrem, align 8
  %"$BoolUtils.andb_161" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1835" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1836" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1835", 0
  %"$BoolUtils.andb_envptr_1837" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1835", 1
  %"$$test_102_1838" = load %TName_Bool*, %TName_Bool** %"$test_102", align 8
  %"$BoolUtils.andb_call_1839" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1836"(i8* %"$BoolUtils.andb_envptr_1837", %TName_Bool* %"$$test_102_1838"), !dbg !130
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1839", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8, !dbg !130
  %"$BoolUtils.andb_162" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_161_1840" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$$BoolUtils.andb_161_fptr_1841" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1840", 0
  %"$$BoolUtils.andb_161_envptr_1842" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1840", 1
  %"$$test__107_1843" = load %TName_Bool*, %TName_Bool** %"$test__107", align 8
  %"$$BoolUtils.andb_161_call_1844" = call %TName_Bool* %"$$BoolUtils.andb_161_fptr_1841"(i8* %"$$BoolUtils.andb_161_envptr_1842", %TName_Bool* %"$$test__107_1843"), !dbg !130
  store %TName_Bool* %"$$BoolUtils.andb_161_call_1844", %TName_Bool** %"$BoolUtils.andb_162", align 8, !dbg !130
  %"$$BoolUtils.andb_162_1845" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_162", align 8
  store %TName_Bool* %"$$BoolUtils.andb_162_1845", %TName_Bool** %"$test_108", align 8, !dbg !130
  %"$gasrem_1846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1847" = icmp ugt i64 1, %"$gasrem_1846"
  br i1 %"$gascmp_1847", label %"$out_of_gas_1848", label %"$have_gas_1849"

"$out_of_gas_1848":                               ; preds = %"$have_gas_1833"
  call void @_out_of_gas()
  br label %"$have_gas_1849"

"$have_gas_1849":                                 ; preds = %"$out_of_gas_1848", %"$have_gas_1833"
  %"$consume_1850" = sub i64 %"$gasrem_1846", 1
  store i64 %"$consume_1850", i64* @_gasrem, align 8
  %"$arg1_109" = alloca %Int256, align 8
  %"$gasrem_1851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1852" = icmp ugt i64 1, %"$gasrem_1851"
  br i1 %"$gascmp_1852", label %"$out_of_gas_1853", label %"$have_gas_1854"

"$out_of_gas_1853":                               ; preds = %"$have_gas_1849"
  call void @_out_of_gas()
  br label %"$have_gas_1854"

"$have_gas_1854":                                 ; preds = %"$out_of_gas_1853", %"$have_gas_1849"
  %"$consume_1855" = sub i64 %"$gasrem_1851", 1
  store i64 %"$consume_1855", i64* @_gasrem, align 8
  store %Int256 { i256 -2 }, %Int256* %"$arg1_109", align 8, !dbg !131
  %"$gasrem_1856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1857" = icmp ugt i64 1, %"$gasrem_1856"
  br i1 %"$gascmp_1857", label %"$out_of_gas_1858", label %"$have_gas_1859"

"$out_of_gas_1858":                               ; preds = %"$have_gas_1854"
  call void @_out_of_gas()
  br label %"$have_gas_1859"

"$have_gas_1859":                                 ; preds = %"$out_of_gas_1858", %"$have_gas_1854"
  %"$consume_1860" = sub i64 %"$gasrem_1856", 1
  store i64 %"$consume_1860", i64* @_gasrem, align 8
  %"$arg2_110" = alloca %Int256, align 8
  %"$gasrem_1861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1862" = icmp ugt i64 1, %"$gasrem_1861"
  br i1 %"$gascmp_1862", label %"$out_of_gas_1863", label %"$have_gas_1864"

"$out_of_gas_1863":                               ; preds = %"$have_gas_1859"
  call void @_out_of_gas()
  br label %"$have_gas_1864"

"$have_gas_1864":                                 ; preds = %"$out_of_gas_1863", %"$have_gas_1859"
  %"$consume_1865" = sub i64 %"$gasrem_1861", 1
  store i64 %"$consume_1865", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_110", align 8, !dbg !132
  %"$gasrem_1866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1867" = icmp ugt i64 1, %"$gasrem_1866"
  br i1 %"$gascmp_1867", label %"$out_of_gas_1868", label %"$have_gas_1869"

"$out_of_gas_1868":                               ; preds = %"$have_gas_1864"
  call void @_out_of_gas()
  br label %"$have_gas_1869"

"$have_gas_1869":                                 ; preds = %"$out_of_gas_1868", %"$have_gas_1864"
  %"$consume_1870" = sub i64 %"$gasrem_1866", 1
  store i64 %"$consume_1870", i64* @_gasrem, align 8
  %"$test_114" = alloca %TName_Bool*, align 8
  %"$gasrem_1871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1872" = icmp ugt i64 1, %"$gasrem_1871"
  br i1 %"$gascmp_1872", label %"$out_of_gas_1873", label %"$have_gas_1874"

"$out_of_gas_1873":                               ; preds = %"$have_gas_1869"
  call void @_out_of_gas()
  br label %"$have_gas_1874"

"$have_gas_1874":                                 ; preds = %"$out_of_gas_1873", %"$have_gas_1869"
  %"$consume_1875" = sub i64 %"$gasrem_1871", 1
  store i64 %"$consume_1875", i64* @_gasrem, align 8
  %"$res_111" = alloca %Int256, align 8
  %"$gasrem_1877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1878" = icmp ugt i64 80, %"$gasrem_1877"
  br i1 %"$gascmp_1878", label %"$out_of_gas_1879", label %"$have_gas_1880"

"$out_of_gas_1879":                               ; preds = %"$have_gas_1874"
  call void @_out_of_gas()
  br label %"$have_gas_1880"

"$have_gas_1880":                                 ; preds = %"$out_of_gas_1879", %"$have_gas_1874"
  %"$consume_1881" = sub i64 %"$gasrem_1877", 80
  store i64 %"$consume_1881", i64* @_gasrem, align 8
  %"$execptr_load_1882" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_109_1883" = alloca %Int256, align 8
  %"$$arg1_109_1884" = load %Int256, %Int256* %"$arg1_109", align 8
  store %Int256 %"$$arg1_109_1884", %Int256* %"$mul_$arg1_109_1883", align 8
  %"$mul_$arg2_110_1885" = alloca %Int256, align 8
  %"$$arg2_110_1886" = load %Int256, %Int256* %"$arg2_110", align 8
  store %Int256 %"$$arg2_110_1886", %Int256* %"$mul_$arg2_110_1885", align 8
  %"$mul_call_1887" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1882", %Int256* %"$mul_$arg1_109_1883", %Int256* %"$mul_$arg2_110_1885"), !dbg !133
  %"$mul_1889" = load %Int256, %Int256* %"$mul_call_1887", align 8
  store %Int256 %"$mul_1889", %Int256* %"$res_111", align 8, !dbg !133
  %"$gasrem_1890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1891" = icmp ugt i64 1, %"$gasrem_1890"
  br i1 %"$gascmp_1891", label %"$out_of_gas_1892", label %"$have_gas_1893"

"$out_of_gas_1892":                               ; preds = %"$have_gas_1880"
  call void @_out_of_gas()
  br label %"$have_gas_1893"

"$have_gas_1893":                                 ; preds = %"$out_of_gas_1892", %"$have_gas_1880"
  %"$consume_1894" = sub i64 %"$gasrem_1890", 1
  store i64 %"$consume_1894", i64* @_gasrem, align 8
  %"$res__112" = alloca %Int256, align 8
  %"$gasrem_1895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1896" = icmp ugt i64 1, %"$gasrem_1895"
  br i1 %"$gascmp_1896", label %"$out_of_gas_1897", label %"$have_gas_1898"

"$out_of_gas_1897":                               ; preds = %"$have_gas_1893"
  call void @_out_of_gas()
  br label %"$have_gas_1898"

"$have_gas_1898":                                 ; preds = %"$out_of_gas_1897", %"$have_gas_1893"
  %"$consume_1899" = sub i64 %"$gasrem_1895", 1
  store i64 %"$consume_1899", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__112", align 8, !dbg !134
  %"$gasrem_1900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1901" = icmp ugt i64 1, %"$gasrem_1900"
  br i1 %"$gascmp_1901", label %"$out_of_gas_1902", label %"$have_gas_1903"

"$out_of_gas_1902":                               ; preds = %"$have_gas_1898"
  call void @_out_of_gas()
  br label %"$have_gas_1903"

"$have_gas_1903":                                 ; preds = %"$out_of_gas_1902", %"$have_gas_1898"
  %"$consume_1904" = sub i64 %"$gasrem_1900", 1
  store i64 %"$consume_1904", i64* @_gasrem, align 8
  %"$test__113" = alloca %TName_Bool*, align 8
  %"$gasrem_1906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1907" = icmp ugt i64 16, %"$gasrem_1906"
  br i1 %"$gascmp_1907", label %"$out_of_gas_1908", label %"$have_gas_1909"

"$out_of_gas_1908":                               ; preds = %"$have_gas_1903"
  call void @_out_of_gas()
  br label %"$have_gas_1909"

"$have_gas_1909":                                 ; preds = %"$out_of_gas_1908", %"$have_gas_1903"
  %"$consume_1910" = sub i64 %"$gasrem_1906", 16
  store i64 %"$consume_1910", i64* @_gasrem, align 8
  %"$execptr_load_1911" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_111_1912" = alloca %Int256, align 8
  %"$$res_111_1913" = load %Int256, %Int256* %"$res_111", align 8
  store %Int256 %"$$res_111_1913", %Int256* %"$eq_$res_111_1912", align 8
  %"$eq_$res__112_1914" = alloca %Int256, align 8
  %"$$res__112_1915" = load %Int256, %Int256* %"$res__112", align 8
  store %Int256 %"$$res__112_1915", %Int256* %"$eq_$res__112_1914", align 8
  %"$eq_call_1916" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1911", %Int256* %"$eq_$res_111_1912", %Int256* %"$eq_$res__112_1914"), !dbg !135
  store %TName_Bool* %"$eq_call_1916", %TName_Bool** %"$test__113", align 8, !dbg !135
  %"$gasrem_1918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1919" = icmp ugt i64 1, %"$gasrem_1918"
  br i1 %"$gascmp_1919", label %"$out_of_gas_1920", label %"$have_gas_1921"

"$out_of_gas_1920":                               ; preds = %"$have_gas_1909"
  call void @_out_of_gas()
  br label %"$have_gas_1921"

"$have_gas_1921":                                 ; preds = %"$out_of_gas_1920", %"$have_gas_1909"
  %"$consume_1922" = sub i64 %"$gasrem_1918", 1
  store i64 %"$consume_1922", i64* @_gasrem, align 8
  %"$BoolUtils.andb_163" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1923" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1924" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1923", 0
  %"$BoolUtils.andb_envptr_1925" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1923", 1
  %"$$test_108_1926" = load %TName_Bool*, %TName_Bool** %"$test_108", align 8
  %"$BoolUtils.andb_call_1927" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1924"(i8* %"$BoolUtils.andb_envptr_1925", %TName_Bool* %"$$test_108_1926"), !dbg !136
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1927", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8, !dbg !136
  %"$BoolUtils.andb_164" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_163_1928" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$$BoolUtils.andb_163_fptr_1929" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1928", 0
  %"$$BoolUtils.andb_163_envptr_1930" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1928", 1
  %"$$test__113_1931" = load %TName_Bool*, %TName_Bool** %"$test__113", align 8
  %"$$BoolUtils.andb_163_call_1932" = call %TName_Bool* %"$$BoolUtils.andb_163_fptr_1929"(i8* %"$$BoolUtils.andb_163_envptr_1930", %TName_Bool* %"$$test__113_1931"), !dbg !136
  store %TName_Bool* %"$$BoolUtils.andb_163_call_1932", %TName_Bool** %"$BoolUtils.andb_164", align 8, !dbg !136
  %"$$BoolUtils.andb_164_1933" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_164", align 8
  store %TName_Bool* %"$$BoolUtils.andb_164_1933", %TName_Bool** %"$test_114", align 8, !dbg !136
  %"$gasrem_1934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1935" = icmp ugt i64 1, %"$gasrem_1934"
  br i1 %"$gascmp_1935", label %"$out_of_gas_1936", label %"$have_gas_1937"

"$out_of_gas_1936":                               ; preds = %"$have_gas_1921"
  call void @_out_of_gas()
  br label %"$have_gas_1937"

"$have_gas_1937":                                 ; preds = %"$out_of_gas_1936", %"$have_gas_1921"
  %"$consume_1938" = sub i64 %"$gasrem_1934", 1
  store i64 %"$consume_1938", i64* @_gasrem, align 8
  %"$arg1_115" = alloca %Int256, align 8
  %"$gasrem_1939" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1940" = icmp ugt i64 1, %"$gasrem_1939"
  br i1 %"$gascmp_1940", label %"$out_of_gas_1941", label %"$have_gas_1942"

"$out_of_gas_1941":                               ; preds = %"$have_gas_1937"
  call void @_out_of_gas()
  br label %"$have_gas_1942"

"$have_gas_1942":                                 ; preds = %"$out_of_gas_1941", %"$have_gas_1937"
  %"$consume_1943" = sub i64 %"$gasrem_1939", 1
  store i64 %"$consume_1943", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$arg1_115", align 8, !dbg !137
  %"$gasrem_1944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1945" = icmp ugt i64 1, %"$gasrem_1944"
  br i1 %"$gascmp_1945", label %"$out_of_gas_1946", label %"$have_gas_1947"

"$out_of_gas_1946":                               ; preds = %"$have_gas_1942"
  call void @_out_of_gas()
  br label %"$have_gas_1947"

"$have_gas_1947":                                 ; preds = %"$out_of_gas_1946", %"$have_gas_1942"
  %"$consume_1948" = sub i64 %"$gasrem_1944", 1
  store i64 %"$consume_1948", i64* @_gasrem, align 8
  %"$arg2_116" = alloca %Int256, align 8
  %"$gasrem_1949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1950" = icmp ugt i64 1, %"$gasrem_1949"
  br i1 %"$gascmp_1950", label %"$out_of_gas_1951", label %"$have_gas_1952"

"$out_of_gas_1951":                               ; preds = %"$have_gas_1947"
  call void @_out_of_gas()
  br label %"$have_gas_1952"

"$have_gas_1952":                                 ; preds = %"$out_of_gas_1951", %"$have_gas_1947"
  %"$consume_1953" = sub i64 %"$gasrem_1949", 1
  store i64 %"$consume_1953", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$arg2_116", align 8, !dbg !138
  %"$gasrem_1954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1955" = icmp ugt i64 1, %"$gasrem_1954"
  br i1 %"$gascmp_1955", label %"$out_of_gas_1956", label %"$have_gas_1957"

"$out_of_gas_1956":                               ; preds = %"$have_gas_1952"
  call void @_out_of_gas()
  br label %"$have_gas_1957"

"$have_gas_1957":                                 ; preds = %"$out_of_gas_1956", %"$have_gas_1952"
  %"$consume_1958" = sub i64 %"$gasrem_1954", 1
  store i64 %"$consume_1958", i64* @_gasrem, align 8
  %"$test_120" = alloca %TName_Bool*, align 8
  %"$gasrem_1959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1960" = icmp ugt i64 1, %"$gasrem_1959"
  br i1 %"$gascmp_1960", label %"$out_of_gas_1961", label %"$have_gas_1962"

"$out_of_gas_1961":                               ; preds = %"$have_gas_1957"
  call void @_out_of_gas()
  br label %"$have_gas_1962"

"$have_gas_1962":                                 ; preds = %"$out_of_gas_1961", %"$have_gas_1957"
  %"$consume_1963" = sub i64 %"$gasrem_1959", 1
  store i64 %"$consume_1963", i64* @_gasrem, align 8
  %"$res_117" = alloca %Int256, align 8
  %"$gasrem_1965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1966" = icmp ugt i64 80, %"$gasrem_1965"
  br i1 %"$gascmp_1966", label %"$out_of_gas_1967", label %"$have_gas_1968"

"$out_of_gas_1967":                               ; preds = %"$have_gas_1962"
  call void @_out_of_gas()
  br label %"$have_gas_1968"

"$have_gas_1968":                                 ; preds = %"$out_of_gas_1967", %"$have_gas_1962"
  %"$consume_1969" = sub i64 %"$gasrem_1965", 80
  store i64 %"$consume_1969", i64* @_gasrem, align 8
  %"$execptr_load_1970" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_115_1971" = alloca %Int256, align 8
  %"$$arg1_115_1972" = load %Int256, %Int256* %"$arg1_115", align 8
  store %Int256 %"$$arg1_115_1972", %Int256* %"$mul_$arg1_115_1971", align 8
  %"$mul_$arg2_116_1973" = alloca %Int256, align 8
  %"$$arg2_116_1974" = load %Int256, %Int256* %"$arg2_116", align 8
  store %Int256 %"$$arg2_116_1974", %Int256* %"$mul_$arg2_116_1973", align 8
  %"$mul_call_1975" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1970", %Int256* %"$mul_$arg1_115_1971", %Int256* %"$mul_$arg2_116_1973"), !dbg !139
  %"$mul_1977" = load %Int256, %Int256* %"$mul_call_1975", align 8
  store %Int256 %"$mul_1977", %Int256* %"$res_117", align 8, !dbg !139
  %"$gasrem_1978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1979" = icmp ugt i64 1, %"$gasrem_1978"
  br i1 %"$gascmp_1979", label %"$out_of_gas_1980", label %"$have_gas_1981"

"$out_of_gas_1980":                               ; preds = %"$have_gas_1968"
  call void @_out_of_gas()
  br label %"$have_gas_1981"

"$have_gas_1981":                                 ; preds = %"$out_of_gas_1980", %"$have_gas_1968"
  %"$consume_1982" = sub i64 %"$gasrem_1978", 1
  store i64 %"$consume_1982", i64* @_gasrem, align 8
  %"$res__118" = alloca %Int256, align 8
  %"$gasrem_1983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1984" = icmp ugt i64 1, %"$gasrem_1983"
  br i1 %"$gascmp_1984", label %"$out_of_gas_1985", label %"$have_gas_1986"

"$out_of_gas_1985":                               ; preds = %"$have_gas_1981"
  call void @_out_of_gas()
  br label %"$have_gas_1986"

"$have_gas_1986":                                 ; preds = %"$out_of_gas_1985", %"$have_gas_1981"
  %"$consume_1987" = sub i64 %"$gasrem_1983", 1
  store i64 %"$consume_1987", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$res__118", align 8, !dbg !140
  %"$gasrem_1988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1989" = icmp ugt i64 1, %"$gasrem_1988"
  br i1 %"$gascmp_1989", label %"$out_of_gas_1990", label %"$have_gas_1991"

"$out_of_gas_1990":                               ; preds = %"$have_gas_1986"
  call void @_out_of_gas()
  br label %"$have_gas_1991"

"$have_gas_1991":                                 ; preds = %"$out_of_gas_1990", %"$have_gas_1986"
  %"$consume_1992" = sub i64 %"$gasrem_1988", 1
  store i64 %"$consume_1992", i64* @_gasrem, align 8
  %"$test__119" = alloca %TName_Bool*, align 8
  %"$gasrem_1994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1995" = icmp ugt i64 16, %"$gasrem_1994"
  br i1 %"$gascmp_1995", label %"$out_of_gas_1996", label %"$have_gas_1997"

"$out_of_gas_1996":                               ; preds = %"$have_gas_1991"
  call void @_out_of_gas()
  br label %"$have_gas_1997"

"$have_gas_1997":                                 ; preds = %"$out_of_gas_1996", %"$have_gas_1991"
  %"$consume_1998" = sub i64 %"$gasrem_1994", 16
  store i64 %"$consume_1998", i64* @_gasrem, align 8
  %"$execptr_load_1999" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_117_2000" = alloca %Int256, align 8
  %"$$res_117_2001" = load %Int256, %Int256* %"$res_117", align 8
  store %Int256 %"$$res_117_2001", %Int256* %"$eq_$res_117_2000", align 8
  %"$eq_$res__118_2002" = alloca %Int256, align 8
  %"$$res__118_2003" = load %Int256, %Int256* %"$res__118", align 8
  store %Int256 %"$$res__118_2003", %Int256* %"$eq_$res__118_2002", align 8
  %"$eq_call_2004" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1999", %Int256* %"$eq_$res_117_2000", %Int256* %"$eq_$res__118_2002"), !dbg !141
  store %TName_Bool* %"$eq_call_2004", %TName_Bool** %"$test__119", align 8, !dbg !141
  %"$gasrem_2006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2007" = icmp ugt i64 1, %"$gasrem_2006"
  br i1 %"$gascmp_2007", label %"$out_of_gas_2008", label %"$have_gas_2009"

"$out_of_gas_2008":                               ; preds = %"$have_gas_1997"
  call void @_out_of_gas()
  br label %"$have_gas_2009"

"$have_gas_2009":                                 ; preds = %"$out_of_gas_2008", %"$have_gas_1997"
  %"$consume_2010" = sub i64 %"$gasrem_2006", 1
  store i64 %"$consume_2010", i64* @_gasrem, align 8
  %"$BoolUtils.andb_165" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2011" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2012" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2011", 0
  %"$BoolUtils.andb_envptr_2013" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2011", 1
  %"$$test_114_2014" = load %TName_Bool*, %TName_Bool** %"$test_114", align 8
  %"$BoolUtils.andb_call_2015" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2012"(i8* %"$BoolUtils.andb_envptr_2013", %TName_Bool* %"$$test_114_2014"), !dbg !142
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2015", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8, !dbg !142
  %"$BoolUtils.andb_166" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_165_2016" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$$BoolUtils.andb_165_fptr_2017" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_2016", 0
  %"$$BoolUtils.andb_165_envptr_2018" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_2016", 1
  %"$$test__119_2019" = load %TName_Bool*, %TName_Bool** %"$test__119", align 8
  %"$$BoolUtils.andb_165_call_2020" = call %TName_Bool* %"$$BoolUtils.andb_165_fptr_2017"(i8* %"$$BoolUtils.andb_165_envptr_2018", %TName_Bool* %"$$test__119_2019"), !dbg !142
  store %TName_Bool* %"$$BoolUtils.andb_165_call_2020", %TName_Bool** %"$BoolUtils.andb_166", align 8, !dbg !142
  %"$$BoolUtils.andb_166_2021" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_166", align 8
  store %TName_Bool* %"$$BoolUtils.andb_166_2021", %TName_Bool** %"$test_120", align 8, !dbg !142
  %"$gasrem_2022" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2023" = icmp ugt i64 1, %"$gasrem_2022"
  br i1 %"$gascmp_2023", label %"$out_of_gas_2024", label %"$have_gas_2025"

"$out_of_gas_2024":                               ; preds = %"$have_gas_2009"
  call void @_out_of_gas()
  br label %"$have_gas_2025"

"$have_gas_2025":                                 ; preds = %"$out_of_gas_2024", %"$have_gas_2009"
  %"$consume_2026" = sub i64 %"$gasrem_2022", 1
  store i64 %"$consume_2026", i64* @_gasrem, align 8
  %"$arg1_121" = alloca %Int256, align 8
  %"$gasrem_2027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2028" = icmp ugt i64 1, %"$gasrem_2027"
  br i1 %"$gascmp_2028", label %"$out_of_gas_2029", label %"$have_gas_2030"

"$out_of_gas_2029":                               ; preds = %"$have_gas_2025"
  call void @_out_of_gas()
  br label %"$have_gas_2030"

"$have_gas_2030":                                 ; preds = %"$out_of_gas_2029", %"$have_gas_2025"
  %"$consume_2031" = sub i64 %"$gasrem_2027", 1
  store i64 %"$consume_2031", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$arg1_121", align 8, !dbg !143
  %"$gasrem_2032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2033" = icmp ugt i64 1, %"$gasrem_2032"
  br i1 %"$gascmp_2033", label %"$out_of_gas_2034", label %"$have_gas_2035"

"$out_of_gas_2034":                               ; preds = %"$have_gas_2030"
  call void @_out_of_gas()
  br label %"$have_gas_2035"

"$have_gas_2035":                                 ; preds = %"$out_of_gas_2034", %"$have_gas_2030"
  %"$consume_2036" = sub i64 %"$gasrem_2032", 1
  store i64 %"$consume_2036", i64* @_gasrem, align 8
  %"$arg2_122" = alloca %Int256, align 8
  %"$gasrem_2037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2038" = icmp ugt i64 1, %"$gasrem_2037"
  br i1 %"$gascmp_2038", label %"$out_of_gas_2039", label %"$have_gas_2040"

"$out_of_gas_2039":                               ; preds = %"$have_gas_2035"
  call void @_out_of_gas()
  br label %"$have_gas_2040"

"$have_gas_2040":                                 ; preds = %"$out_of_gas_2039", %"$have_gas_2035"
  %"$consume_2041" = sub i64 %"$gasrem_2037", 1
  store i64 %"$consume_2041", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_122", align 8, !dbg !144
  %"$gasrem_2042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2043" = icmp ugt i64 1, %"$gasrem_2042"
  br i1 %"$gascmp_2043", label %"$out_of_gas_2044", label %"$have_gas_2045"

"$out_of_gas_2044":                               ; preds = %"$have_gas_2040"
  call void @_out_of_gas()
  br label %"$have_gas_2045"

"$have_gas_2045":                                 ; preds = %"$out_of_gas_2044", %"$have_gas_2040"
  %"$consume_2046" = sub i64 %"$gasrem_2042", 1
  store i64 %"$consume_2046", i64* @_gasrem, align 8
  %"$test_126" = alloca %TName_Bool*, align 8
  %"$gasrem_2047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2048" = icmp ugt i64 1, %"$gasrem_2047"
  br i1 %"$gascmp_2048", label %"$out_of_gas_2049", label %"$have_gas_2050"

"$out_of_gas_2049":                               ; preds = %"$have_gas_2045"
  call void @_out_of_gas()
  br label %"$have_gas_2050"

"$have_gas_2050":                                 ; preds = %"$out_of_gas_2049", %"$have_gas_2045"
  %"$consume_2051" = sub i64 %"$gasrem_2047", 1
  store i64 %"$consume_2051", i64* @_gasrem, align 8
  %"$res_123" = alloca %Int256, align 8
  %"$gasrem_2053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2054" = icmp ugt i64 80, %"$gasrem_2053"
  br i1 %"$gascmp_2054", label %"$out_of_gas_2055", label %"$have_gas_2056"

"$out_of_gas_2055":                               ; preds = %"$have_gas_2050"
  call void @_out_of_gas()
  br label %"$have_gas_2056"

"$have_gas_2056":                                 ; preds = %"$out_of_gas_2055", %"$have_gas_2050"
  %"$consume_2057" = sub i64 %"$gasrem_2053", 80
  store i64 %"$consume_2057", i64* @_gasrem, align 8
  %"$execptr_load_2058" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_121_2059" = alloca %Int256, align 8
  %"$$arg1_121_2060" = load %Int256, %Int256* %"$arg1_121", align 8
  store %Int256 %"$$arg1_121_2060", %Int256* %"$mul_$arg1_121_2059", align 8
  %"$mul_$arg2_122_2061" = alloca %Int256, align 8
  %"$$arg2_122_2062" = load %Int256, %Int256* %"$arg2_122", align 8
  store %Int256 %"$$arg2_122_2062", %Int256* %"$mul_$arg2_122_2061", align 8
  %"$mul_call_2063" = call %Int256* @_mul_Int256(i8* %"$execptr_load_2058", %Int256* %"$mul_$arg1_121_2059", %Int256* %"$mul_$arg2_122_2061"), !dbg !145
  %"$mul_2065" = load %Int256, %Int256* %"$mul_call_2063", align 8
  store %Int256 %"$mul_2065", %Int256* %"$res_123", align 8, !dbg !145
  %"$gasrem_2066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2067" = icmp ugt i64 1, %"$gasrem_2066"
  br i1 %"$gascmp_2067", label %"$out_of_gas_2068", label %"$have_gas_2069"

"$out_of_gas_2068":                               ; preds = %"$have_gas_2056"
  call void @_out_of_gas()
  br label %"$have_gas_2069"

"$have_gas_2069":                                 ; preds = %"$out_of_gas_2068", %"$have_gas_2056"
  %"$consume_2070" = sub i64 %"$gasrem_2066", 1
  store i64 %"$consume_2070", i64* @_gasrem, align 8
  %"$res__124" = alloca %Int256, align 8
  %"$gasrem_2071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2072" = icmp ugt i64 1, %"$gasrem_2071"
  br i1 %"$gascmp_2072", label %"$out_of_gas_2073", label %"$have_gas_2074"

"$out_of_gas_2073":                               ; preds = %"$have_gas_2069"
  call void @_out_of_gas()
  br label %"$have_gas_2074"

"$have_gas_2074":                                 ; preds = %"$out_of_gas_2073", %"$have_gas_2069"
  %"$consume_2075" = sub i64 %"$gasrem_2071", 1
  store i64 %"$consume_2075", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__124", align 8, !dbg !146
  %"$gasrem_2076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2077" = icmp ugt i64 1, %"$gasrem_2076"
  br i1 %"$gascmp_2077", label %"$out_of_gas_2078", label %"$have_gas_2079"

"$out_of_gas_2078":                               ; preds = %"$have_gas_2074"
  call void @_out_of_gas()
  br label %"$have_gas_2079"

"$have_gas_2079":                                 ; preds = %"$out_of_gas_2078", %"$have_gas_2074"
  %"$consume_2080" = sub i64 %"$gasrem_2076", 1
  store i64 %"$consume_2080", i64* @_gasrem, align 8
  %"$test__125" = alloca %TName_Bool*, align 8
  %"$gasrem_2082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2083" = icmp ugt i64 16, %"$gasrem_2082"
  br i1 %"$gascmp_2083", label %"$out_of_gas_2084", label %"$have_gas_2085"

"$out_of_gas_2084":                               ; preds = %"$have_gas_2079"
  call void @_out_of_gas()
  br label %"$have_gas_2085"

"$have_gas_2085":                                 ; preds = %"$out_of_gas_2084", %"$have_gas_2079"
  %"$consume_2086" = sub i64 %"$gasrem_2082", 16
  store i64 %"$consume_2086", i64* @_gasrem, align 8
  %"$execptr_load_2087" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_123_2088" = alloca %Int256, align 8
  %"$$res_123_2089" = load %Int256, %Int256* %"$res_123", align 8
  store %Int256 %"$$res_123_2089", %Int256* %"$eq_$res_123_2088", align 8
  %"$eq_$res__124_2090" = alloca %Int256, align 8
  %"$$res__124_2091" = load %Int256, %Int256* %"$res__124", align 8
  store %Int256 %"$$res__124_2091", %Int256* %"$eq_$res__124_2090", align 8
  %"$eq_call_2092" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2087", %Int256* %"$eq_$res_123_2088", %Int256* %"$eq_$res__124_2090"), !dbg !147
  store %TName_Bool* %"$eq_call_2092", %TName_Bool** %"$test__125", align 8, !dbg !147
  %"$gasrem_2094" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2095" = icmp ugt i64 1, %"$gasrem_2094"
  br i1 %"$gascmp_2095", label %"$out_of_gas_2096", label %"$have_gas_2097"

"$out_of_gas_2096":                               ; preds = %"$have_gas_2085"
  call void @_out_of_gas()
  br label %"$have_gas_2097"

"$have_gas_2097":                                 ; preds = %"$out_of_gas_2096", %"$have_gas_2085"
  %"$consume_2098" = sub i64 %"$gasrem_2094", 1
  store i64 %"$consume_2098", i64* @_gasrem, align 8
  %"$BoolUtils.andb_167" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2099" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2100" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2099", 0
  %"$BoolUtils.andb_envptr_2101" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2099", 1
  %"$$test_120_2102" = load %TName_Bool*, %TName_Bool** %"$test_120", align 8
  %"$BoolUtils.andb_call_2103" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2100"(i8* %"$BoolUtils.andb_envptr_2101", %TName_Bool* %"$$test_120_2102"), !dbg !148
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2103", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8, !dbg !148
  %"$BoolUtils.andb_168" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_167_2104" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$$BoolUtils.andb_167_fptr_2105" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_2104", 0
  %"$$BoolUtils.andb_167_envptr_2106" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_2104", 1
  %"$$test__125_2107" = load %TName_Bool*, %TName_Bool** %"$test__125", align 8
  %"$$BoolUtils.andb_167_call_2108" = call %TName_Bool* %"$$BoolUtils.andb_167_fptr_2105"(i8* %"$$BoolUtils.andb_167_envptr_2106", %TName_Bool* %"$$test__125_2107"), !dbg !148
  store %TName_Bool* %"$$BoolUtils.andb_167_call_2108", %TName_Bool** %"$BoolUtils.andb_168", align 8, !dbg !148
  %"$$BoolUtils.andb_168_2109" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_168", align 8
  store %TName_Bool* %"$$BoolUtils.andb_168_2109", %TName_Bool** %"$test_126", align 8, !dbg !148
  %"$gasrem_2110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2111" = icmp ugt i64 1, %"$gasrem_2110"
  br i1 %"$gascmp_2111", label %"$out_of_gas_2112", label %"$have_gas_2113"

"$out_of_gas_2112":                               ; preds = %"$have_gas_2097"
  call void @_out_of_gas()
  br label %"$have_gas_2113"

"$have_gas_2113":                                 ; preds = %"$out_of_gas_2112", %"$have_gas_2097"
  %"$consume_2114" = sub i64 %"$gasrem_2110", 1
  store i64 %"$consume_2114", i64* @_gasrem, align 8
  %"$$test_126_2115" = load %TName_Bool*, %TName_Bool** %"$test_126", align 8
  store %TName_Bool* %"$$test_126_2115", %TName_Bool** %"$expr_173", align 8, !dbg !149
  %"$$expr_173_2116" = load %TName_Bool*, %TName_Bool** %"$expr_173", align 8
  ret %TName_Bool* %"$$expr_173_2116"
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
  %"$exprval_2117" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2118" = bitcast %TName_Bool* %"$exprval_2117" to i8*
  %"$execptr_load_2119" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2119", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_206", i8* %"$memvoidcast_2118")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_mul.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_171", linkageName: "$fundef_171", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!15 = distinct !DISubprogram(name: "$fundef_169", linkageName: "$fundef_169", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 8, column: 5, scope: !15)
!17 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !18, file: !18, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DIFile(filename: ".", directory: ".")
!19 = !DILocation(line: 0, scope: !17)
!20 = !DILocation(line: 7, column: 3, scope: !17)
!21 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 2, column: 12, scope: !21)
!23 = !DILocation(line: 4, column: 12, scope: !21)
!24 = !DILocation(line: 5, column: 12, scope: !21)
!25 = !DILocation(line: 7, column: 13, scope: !21)
!26 = !DILocation(line: 8, column: 14, scope: !21)
!27 = !DILocation(line: 9, column: 15, scope: !21)
!28 = !DILocation(line: 10, column: 3, scope: !21)
!29 = !DILocation(line: 13, column: 12, scope: !21)
!30 = !DILocation(line: 14, column: 12, scope: !21)
!31 = !DILocation(line: 16, column: 13, scope: !21)
!32 = !DILocation(line: 17, column: 14, scope: !21)
!33 = !DILocation(line: 18, column: 15, scope: !21)
!34 = !DILocation(line: 19, column: 3, scope: !21)
!35 = !DILocation(line: 22, column: 12, scope: !21)
!36 = !DILocation(line: 23, column: 12, scope: !21)
!37 = !DILocation(line: 25, column: 13, scope: !21)
!38 = !DILocation(line: 26, column: 14, scope: !21)
!39 = !DILocation(line: 27, column: 15, scope: !21)
!40 = !DILocation(line: 28, column: 3, scope: !21)
!41 = !DILocation(line: 31, column: 12, scope: !21)
!42 = !DILocation(line: 32, column: 12, scope: !21)
!43 = !DILocation(line: 34, column: 13, scope: !21)
!44 = !DILocation(line: 35, column: 14, scope: !21)
!45 = !DILocation(line: 36, column: 15, scope: !21)
!46 = !DILocation(line: 37, column: 3, scope: !21)
!47 = !DILocation(line: 40, column: 12, scope: !21)
!48 = !DILocation(line: 41, column: 12, scope: !21)
!49 = !DILocation(line: 43, column: 13, scope: !21)
!50 = !DILocation(line: 44, column: 14, scope: !21)
!51 = !DILocation(line: 45, column: 15, scope: !21)
!52 = !DILocation(line: 46, column: 3, scope: !21)
!53 = !DILocation(line: 49, column: 12, scope: !21)
!54 = !DILocation(line: 50, column: 12, scope: !21)
!55 = !DILocation(line: 52, column: 13, scope: !21)
!56 = !DILocation(line: 53, column: 14, scope: !21)
!57 = !DILocation(line: 54, column: 15, scope: !21)
!58 = !DILocation(line: 55, column: 3, scope: !21)
!59 = !DILocation(line: 58, column: 12, scope: !21)
!60 = !DILocation(line: 59, column: 12, scope: !21)
!61 = !DILocation(line: 61, column: 13, scope: !21)
!62 = !DILocation(line: 62, column: 14, scope: !21)
!63 = !DILocation(line: 63, column: 15, scope: !21)
!64 = !DILocation(line: 64, column: 3, scope: !21)
!65 = !DILocation(line: 67, column: 12, scope: !21)
!66 = !DILocation(line: 68, column: 12, scope: !21)
!67 = !DILocation(line: 70, column: 13, scope: !21)
!68 = !DILocation(line: 71, column: 14, scope: !21)
!69 = !DILocation(line: 72, column: 15, scope: !21)
!70 = !DILocation(line: 73, column: 3, scope: !21)
!71 = !DILocation(line: 76, column: 12, scope: !21)
!72 = !DILocation(line: 77, column: 12, scope: !21)
!73 = !DILocation(line: 79, column: 13, scope: !21)
!74 = !DILocation(line: 80, column: 14, scope: !21)
!75 = !DILocation(line: 81, column: 15, scope: !21)
!76 = !DILocation(line: 82, column: 3, scope: !21)
!77 = !DILocation(line: 85, column: 12, scope: !21)
!78 = !DILocation(line: 86, column: 12, scope: !21)
!79 = !DILocation(line: 88, column: 13, scope: !21)
!80 = !DILocation(line: 89, column: 14, scope: !21)
!81 = !DILocation(line: 90, column: 15, scope: !21)
!82 = !DILocation(line: 91, column: 3, scope: !21)
!83 = !DILocation(line: 94, column: 12, scope: !21)
!84 = !DILocation(line: 95, column: 12, scope: !21)
!85 = !DILocation(line: 97, column: 13, scope: !21)
!86 = !DILocation(line: 98, column: 14, scope: !21)
!87 = !DILocation(line: 99, column: 15, scope: !21)
!88 = !DILocation(line: 100, column: 3, scope: !21)
!89 = !DILocation(line: 103, column: 12, scope: !21)
!90 = !DILocation(line: 104, column: 12, scope: !21)
!91 = !DILocation(line: 106, column: 13, scope: !21)
!92 = !DILocation(line: 107, column: 14, scope: !21)
!93 = !DILocation(line: 108, column: 15, scope: !21)
!94 = !DILocation(line: 109, column: 3, scope: !21)
!95 = !DILocation(line: 112, column: 12, scope: !21)
!96 = !DILocation(line: 113, column: 12, scope: !21)
!97 = !DILocation(line: 115, column: 13, scope: !21)
!98 = !DILocation(line: 116, column: 14, scope: !21)
!99 = !DILocation(line: 117, column: 15, scope: !21)
!100 = !DILocation(line: 118, column: 3, scope: !21)
!101 = !DILocation(line: 121, column: 12, scope: !21)
!102 = !DILocation(line: 122, column: 12, scope: !21)
!103 = !DILocation(line: 124, column: 13, scope: !21)
!104 = !DILocation(line: 125, column: 14, scope: !21)
!105 = !DILocation(line: 126, column: 15, scope: !21)
!106 = !DILocation(line: 127, column: 3, scope: !21)
!107 = !DILocation(line: 130, column: 12, scope: !21)
!108 = !DILocation(line: 131, column: 12, scope: !21)
!109 = !DILocation(line: 133, column: 13, scope: !21)
!110 = !DILocation(line: 134, column: 14, scope: !21)
!111 = !DILocation(line: 135, column: 15, scope: !21)
!112 = !DILocation(line: 136, column: 3, scope: !21)
!113 = !DILocation(line: 139, column: 12, scope: !21)
!114 = !DILocation(line: 140, column: 12, scope: !21)
!115 = !DILocation(line: 142, column: 13, scope: !21)
!116 = !DILocation(line: 143, column: 14, scope: !21)
!117 = !DILocation(line: 144, column: 15, scope: !21)
!118 = !DILocation(line: 145, column: 3, scope: !21)
!119 = !DILocation(line: 148, column: 12, scope: !21)
!120 = !DILocation(line: 149, column: 12, scope: !21)
!121 = !DILocation(line: 151, column: 13, scope: !21)
!122 = !DILocation(line: 152, column: 14, scope: !21)
!123 = !DILocation(line: 153, column: 15, scope: !21)
!124 = !DILocation(line: 154, column: 3, scope: !21)
!125 = !DILocation(line: 157, column: 12, scope: !21)
!126 = !DILocation(line: 158, column: 12, scope: !21)
!127 = !DILocation(line: 160, column: 13, scope: !21)
!128 = !DILocation(line: 161, column: 14, scope: !21)
!129 = !DILocation(line: 162, column: 15, scope: !21)
!130 = !DILocation(line: 163, column: 3, scope: !21)
!131 = !DILocation(line: 166, column: 12, scope: !21)
!132 = !DILocation(line: 167, column: 12, scope: !21)
!133 = !DILocation(line: 169, column: 13, scope: !21)
!134 = !DILocation(line: 170, column: 14, scope: !21)
!135 = !DILocation(line: 171, column: 15, scope: !21)
!136 = !DILocation(line: 172, column: 3, scope: !21)
!137 = !DILocation(line: 175, column: 12, scope: !21)
!138 = !DILocation(line: 176, column: 12, scope: !21)
!139 = !DILocation(line: 178, column: 13, scope: !21)
!140 = !DILocation(line: 179, column: 14, scope: !21)
!141 = !DILocation(line: 180, column: 15, scope: !21)
!142 = !DILocation(line: 181, column: 3, scope: !21)
!143 = !DILocation(line: 184, column: 12, scope: !21)
!144 = !DILocation(line: 185, column: 12, scope: !21)
!145 = !DILocation(line: 187, column: 13, scope: !21)
!146 = !DILocation(line: 188, column: 14, scope: !21)
!147 = !DILocation(line: 189, column: 15, scope: !21)
!148 = !DILocation(line: 190, column: 3, scope: !21)
!149 = !DILocation(line: 193, column: 1, scope: !21)
