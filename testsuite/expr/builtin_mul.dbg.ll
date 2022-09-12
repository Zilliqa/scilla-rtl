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
%"$TyDescrTy_ADTTyp_206" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_205"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_205" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_207"**, %"$TyDescrTy_ADTTyp_206"* }
%"$TyDescrTy_ADTTyp_Constr_207" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_2124" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2125" = type { %ParamDescrString, i32, %"$ParamDescr_2124"* }
%"$$fundef_171_env_224" = type { %TName_Bool* }
%"$$fundef_169_env_225" = type {}
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
@"$TyDescr_ReplicateContr_Prim_201" = global %"$TyDescrTy_PrimTyp_174" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_202" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_ReplicateContr_Prim_201" to i8*) }
@"$TyDescr_Bystr_Prim_203" = global %"$TyDescrTy_PrimTyp_174" { i32 7, i32 0 }
@"$TyDescr_Bystr_204" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_174"* @"$TyDescr_Bystr_Prim_203" to i8*) }
@"$TyDescr_ADT_Bool_208" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_205"* @"$TyDescr_Bool_ADTTyp_Specl_221" to i8*) }
@"$TyDescr_Bool_ADTTyp_212" = unnamed_addr constant %"$TyDescrTy_ADTTyp_206" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_223", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_205"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_205"*], [1 x %"$TyDescrTy_ADTTyp_Specl_205"*]* @"$TyDescr_Bool_ADTTyp_m_specls_222", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_213" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_214" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_215" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_207" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_214", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_213", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_216" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_217" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_218" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_207" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_217", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_216", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_219" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_207"*] [%"$TyDescrTy_ADTTyp_Constr_207"* @"$TyDescr_Bool_True_ADTTyp_Constr_215", %"$TyDescrTy_ADTTyp_Constr_207"* @"$TyDescr_Bool_False_ADTTyp_Constr_218"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_220" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_221" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_205" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_220", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_207"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_207"*], [2 x %"$TyDescrTy_ADTTyp_Constr_207"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_219", i32 0, i32 0), %"$TyDescrTy_ADTTyp_206"* @"$TyDescr_Bool_ADTTyp_212" }
@"$TyDescr_Bool_ADTTyp_m_specls_222" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_205"*] [%"$TyDescrTy_ADTTyp_Specl_205"* @"$TyDescr_Bool_ADTTyp_Specl_221"]
@"$TyDescr_ADT_Bool_223" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_198", %_TyDescrTy_Typ* @"$TyDescr_Int64_180", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_208", %_TyDescrTy_Typ* @"$TyDescr_Uint256_190", %_TyDescrTy_Typ* @"$TyDescr_Uint32_178", %_TyDescrTy_Typ* @"$TyDescr_Uint64_182", %_TyDescrTy_Typ* @"$TyDescr_Bnum_194", %_TyDescrTy_Typ* @"$TyDescr_Uint128_186", %_TyDescrTy_Typ* @"$TyDescr_Exception_200", %_TyDescrTy_Typ* @"$TyDescr_String_192", %_TyDescrTy_Typ* @"$TyDescr_Int256_188", %_TyDescrTy_Typ* @"$TyDescr_Int128_184", %_TyDescrTy_Typ* @"$TyDescr_Bystr_204", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_202", %_TyDescrTy_Typ* @"$TyDescr_Message_196", %_TyDescrTy_Typ* @"$TyDescr_Int32_176"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_2124"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2125"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_171"(%"$$fundef_171_env_224"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$c_268" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$c_268", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_268", metadata !9, metadata !DIExpression()), !dbg !12
  %"$$fundef_171_env_b_238" = getelementptr inbounds %"$$fundef_171_env_224", %"$$fundef_171_env_224"* %0, i32 0, i32 0
  %"$b_envload_239" = load %TName_Bool*, %TName_Bool** %"$$fundef_171_env_b_238", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_239", %TName_Bool** %b, align 8
  %"$retval_172" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_172", metadata !13, metadata !DIExpression()), !dbg !14
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 2, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %entry
  %"$consume_244" = sub i64 %"$gasrem_240", 2
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %"$b_246" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_247" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_246", i32 0, i32 0
  %"$b_tag_248" = load i8, i8* %"$b_tag_247", align 1
  switch i8 %"$b_tag_248", label %"$empty_default_249" [
    i8 1, label %"$False_250"
    i8 0, label %"$True_260"
  ], !dbg !14

"$False_250":                                     ; preds = %"$have_gas_243"
  %"$b_251" = bitcast %TName_Bool* %"$b_246" to %CName_False*
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 1, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$False_250"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$False_250"
  %"$consume_256" = sub i64 %"$gasrem_252", 1
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %"$adtval_257_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_257_salloc" = call i8* @_salloc(i8* %"$adtval_257_load", i64 1)
  %"$adtval_257" = bitcast i8* %"$adtval_257_salloc" to %CName_False*
  %"$adtgep_258" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_257", i32 0, i32 0
  store i8 1, i8* %"$adtgep_258", align 1
  %"$adtptr_259" = bitcast %CName_False* %"$adtval_257" to %TName_Bool*
  store %TName_Bool* %"$adtptr_259", %TName_Bool** %"$retval_172", align 8, !dbg !15
  br label %"$matchsucc_245"

"$True_260":                                      ; preds = %"$have_gas_243"
  %"$b_261" = bitcast %TName_Bool* %"$b_246" to %CName_True*
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$True_260"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$True_260"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_172", align 8, !dbg !18
  br label %"$matchsucc_245"

"$empty_default_249":                             ; preds = %"$have_gas_243"
  br label %"$matchsucc_245"

"$matchsucc_245":                                 ; preds = %"$have_gas_265", %"$have_gas_255", %"$empty_default_249"
  %"$$retval_172_267" = load %TName_Bool*, %TName_Bool** %"$retval_172", align 8
  ret %TName_Bool* %"$$retval_172_267"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_169"(%"$$fundef_169_env_225"* %0, %TName_Bool* %1) !dbg !20 {
entry:
  %"$b_237" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_237", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_237", metadata !21, metadata !DIExpression()), !dbg !22
  %"$retval_170" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %entry
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %"$$fundef_171_envp_231_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_171_envp_231_salloc" = call i8* @_salloc(i8* %"$$fundef_171_envp_231_load", i64 8)
  %"$$fundef_171_envp_231" = bitcast i8* %"$$fundef_171_envp_231_salloc" to %"$$fundef_171_env_224"*
  %"$$fundef_171_env_voidp_233" = bitcast %"$$fundef_171_env_224"* %"$$fundef_171_envp_231" to i8*
  %"$$fundef_171_cloval_234" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_171_env_224"*, %TName_Bool*)* @"$fundef_171" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_171_env_voidp_233", 1
  %"$$fundef_171_env_b_235" = getelementptr inbounds %"$$fundef_171_env_224", %"$$fundef_171_env_224"* %"$$fundef_171_envp_231", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_171_env_b_235", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_171_cloval_234", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_170", align 8, !dbg !23
  %"$$retval_170_236" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_170", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_170_236"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !24 {
entry:
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 5, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %entry
  %"$consume_273" = sub i64 %"$gasrem_269", 5
  store i64 %"$consume_273", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !26
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 7, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 7
  store i64 %"$consume_278", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !26
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_169_env_225"*, %TName_Bool*)* @"$fundef_169" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !27
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 196, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_282"
  %"$consume_291" = sub i64 %"$gasrem_287", 196
  store i64 %"$consume_291", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !26
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 20, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_290"
  %"$consume_296" = sub i64 %"$gasrem_292", 20
  store i64 %"$consume_296", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !26
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 12, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_295"
  %"$consume_301" = sub i64 %"$gasrem_297", 12
  store i64 %"$consume_301", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !26
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 2, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_300"
  %"$consume_306" = sub i64 %"$gasrem_302", 2
  store i64 %"$consume_306", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !26
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !28 {
entry:
  %"$expr_173" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_173", metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %entry
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_310"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_315"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test, metadata !31, metadata !DIExpression()), !dbg !32
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$have_gas_320"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %"$adtval_327_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_327_salloc" = call i8* @_salloc(i8* %"$adtval_327_load", i64 1)
  %"$adtval_327" = bitcast i8* %"$adtval_327_salloc" to %CName_True*
  %"$adtgep_328" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_327", i32 0, i32 0
  store i8 0, i8* %"$adtgep_328", align 1
  %"$adtptr_329" = bitcast %CName_True* %"$adtval_327" to %TName_Bool*
  store %TName_Bool* %"$adtptr_329", %TName_Bool** %test, align 8, !dbg !33
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_325"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_325"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %arg1, metadata !34, metadata !DIExpression()), !dbg !36
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_333"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4, !dbg !37
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %arg2, metadata !38, metadata !DIExpression()), !dbg !39
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4, !dbg !40
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_348"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_6", metadata !41, metadata !DIExpression()), !dbg !42
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_353"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res, metadata !43, metadata !DIExpression()), !dbg !44
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 20, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 20
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %"$arg1_365" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_366" = load %Uint32, %Uint32* %arg2, align 4
  %"$mul_call_367" = call %Uint32 @_mul_Uint32(%Uint32 %"$arg1_365", %Uint32 %"$arg2_366"), !dbg !45
  store %Uint32 %"$mul_call_367", %Uint32* %res, align 4, !dbg !45
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_363"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res_, metadata !46, metadata !DIExpression()), !dbg !47
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  store %Uint32 { i32 3398492 }, %Uint32* %res_, align 4, !dbg !48
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_376"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_, metadata !49, metadata !DIExpression()), !dbg !50
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 4, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_381"
  %"$consume_387" = sub i64 %"$gasrem_383", 4
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %"$execptr_load_388" = load i8*, i8** @_execptr, align 8
  %"$res_389" = load %Uint32, %Uint32* %res, align 4
  %"$res__390" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_391" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_388", %Uint32 %"$res_389", %Uint32 %"$res__390"), !dbg !51
  store %TName_Bool* %"$eq_call_391", %TName_Bool** %test_, align 8, !dbg !51
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_386"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %"$BoolUtils.andb_127" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_398" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_399" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_398", 0
  %"$BoolUtils.andb_envptr_400" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_398", 1
  %"$test_401" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_402" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_399"(i8* %"$BoolUtils.andb_envptr_400", %TName_Bool* %"$test_401"), !dbg !52
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_402", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8, !dbg !52
  %"$BoolUtils.andb_128" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_128", metadata !53, metadata !DIExpression()), !dbg !52
  %"$$BoolUtils.andb_127_403" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8
  %"$$BoolUtils.andb_127_fptr_404" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_403", 0
  %"$$BoolUtils.andb_127_envptr_405" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_403", 1
  %"$test__406" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_127_call_407" = call %TName_Bool* %"$$BoolUtils.andb_127_fptr_404"(i8* %"$$BoolUtils.andb_127_envptr_405", %TName_Bool* %"$test__406"), !dbg !52
  store %TName_Bool* %"$$BoolUtils.andb_127_call_407", %TName_Bool** %"$BoolUtils.andb_128", align 8, !dbg !52
  %"$$BoolUtils.andb_128_408" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_128", align 8
  store %TName_Bool* %"$$BoolUtils.andb_128_408", %TName_Bool** %"$test_6", align 8, !dbg !52
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_396"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$arg2_7" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$arg2_7", metadata !54, metadata !DIExpression()), !dbg !56
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_412"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg2_7", align 4, !dbg !57
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$arg1_8" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$arg1_8", metadata !58, metadata !DIExpression()), !dbg !59
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg1_8", align 4, !dbg !60
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_427"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_12", metadata !61, metadata !DIExpression()), !dbg !62
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_432"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %"$res_9" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$res_9", metadata !63, metadata !DIExpression()), !dbg !64
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 20, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 20
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$$arg1_8_444" = load %Int32, %Int32* %"$arg1_8", align 4
  %"$$arg2_7_445" = load %Int32, %Int32* %"$arg2_7", align 4
  %"$mul_call_446" = call %Int32 @_mul_Int32(%Int32 %"$$arg1_8_444", %Int32 %"$$arg2_7_445"), !dbg !65
  store %Int32 %"$mul_call_446", %Int32* %"$res_9", align 4, !dbg !65
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_442"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %"$res__10" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$res__10", metadata !66, metadata !DIExpression()), !dbg !67
  %"$gasrem_452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_453" = icmp ugt i64 1, %"$gasrem_452"
  br i1 %"$gascmp_453", label %"$out_of_gas_454", label %"$have_gas_455"

"$out_of_gas_454":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_455"

"$have_gas_455":                                  ; preds = %"$out_of_gas_454", %"$have_gas_450"
  %"$consume_456" = sub i64 %"$gasrem_452", 1
  store i64 %"$consume_456", i64* @_gasrem, align 8
  store %Int32 { i32 -3398492 }, %Int32* %"$res__10", align 4, !dbg !68
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_455"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_455"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__11", metadata !69, metadata !DIExpression()), !dbg !70
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 4, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_460"
  %"$consume_466" = sub i64 %"$gasrem_462", 4
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %"$execptr_load_467" = load i8*, i8** @_execptr, align 8
  %"$$res_9_468" = load %Int32, %Int32* %"$res_9", align 4
  %"$$res__10_469" = load %Int32, %Int32* %"$res__10", align 4
  %"$eq_call_470" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_467", %Int32 %"$$res_9_468", %Int32 %"$$res__10_469"), !dbg !71
  store %TName_Bool* %"$eq_call_470", %TName_Bool** %"$test__11", align 8, !dbg !71
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_465"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %"$BoolUtils.andb_129" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_477" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_478" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_477", 0
  %"$BoolUtils.andb_envptr_479" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_477", 1
  %"$$test_6_480" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_481" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_478"(i8* %"$BoolUtils.andb_envptr_479", %TName_Bool* %"$$test_6_480"), !dbg !72
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_481", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_129", align 8, !dbg !72
  %"$BoolUtils.andb_130" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_130", metadata !73, metadata !DIExpression()), !dbg !72
  %"$$BoolUtils.andb_129_482" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_129", align 8
  %"$$BoolUtils.andb_129_fptr_483" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_129_482", 0
  %"$$BoolUtils.andb_129_envptr_484" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_129_482", 1
  %"$$test__11_485" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_129_call_486" = call %TName_Bool* %"$$BoolUtils.andb_129_fptr_483"(i8* %"$$BoolUtils.andb_129_envptr_484", %TName_Bool* %"$$test__11_485"), !dbg !72
  store %TName_Bool* %"$$BoolUtils.andb_129_call_486", %TName_Bool** %"$BoolUtils.andb_130", align 8, !dbg !72
  %"$$BoolUtils.andb_130_487" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_130", align 8
  store %TName_Bool* %"$$BoolUtils.andb_130_487", %TName_Bool** %"$test_12", align 8, !dbg !72
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_475"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  %"$arg1_13" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$arg1_13", metadata !74, metadata !DIExpression()), !dbg !76
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 1, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_491"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_491"
  %"$consume_497" = sub i64 %"$gasrem_493", 1
  store i64 %"$consume_497", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775806 }, %Int64* %"$arg1_13", align 8, !dbg !77
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_496"
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$arg2_14" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$arg2_14", metadata !78, metadata !DIExpression()), !dbg !79
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$have_gas_501"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  store %Int64 { i64 -1 }, %Int64* %"$arg2_14", align 8, !dbg !80
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_506"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_18", metadata !81, metadata !DIExpression()), !dbg !82
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_511"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$res_15" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$res_15", metadata !83, metadata !DIExpression()), !dbg !84
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 20, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_516"
  %"$consume_522" = sub i64 %"$gasrem_518", 20
  store i64 %"$consume_522", i64* @_gasrem, align 8
  %"$$arg1_13_523" = load %Int64, %Int64* %"$arg1_13", align 8
  %"$$arg2_14_524" = load %Int64, %Int64* %"$arg2_14", align 8
  %"$mul_call_525" = call %Int64 @_mul_Int64(%Int64 %"$$arg1_13_523", %Int64 %"$$arg2_14_524"), !dbg !85
  store %Int64 %"$mul_call_525", %Int64* %"$res_15", align 8, !dbg !85
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_521"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %"$res__16" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$res__16", metadata !86, metadata !DIExpression()), !dbg !87
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_529"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775806 }, %Int64* %"$res__16", align 8, !dbg !88
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_534"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__17", metadata !89, metadata !DIExpression()), !dbg !90
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 4, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$have_gas_539"
  %"$consume_545" = sub i64 %"$gasrem_541", 4
  store i64 %"$consume_545", i64* @_gasrem, align 8
  %"$execptr_load_546" = load i8*, i8** @_execptr, align 8
  %"$$res_15_547" = load %Int64, %Int64* %"$res_15", align 8
  %"$$res__16_548" = load %Int64, %Int64* %"$res__16", align 8
  %"$eq_call_549" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_546", %Int64 %"$$res_15_547", %Int64 %"$$res__16_548"), !dbg !91
  store %TName_Bool* %"$eq_call_549", %TName_Bool** %"$test__17", align 8, !dbg !91
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_544"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %"$BoolUtils.andb_131" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_556" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_557" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_556", 0
  %"$BoolUtils.andb_envptr_558" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_556", 1
  %"$$test_12_559" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_560" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_557"(i8* %"$BoolUtils.andb_envptr_558", %TName_Bool* %"$$test_12_559"), !dbg !92
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_560", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_131", align 8, !dbg !92
  %"$BoolUtils.andb_132" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_132", metadata !93, metadata !DIExpression()), !dbg !92
  %"$$BoolUtils.andb_131_561" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_131", align 8
  %"$$BoolUtils.andb_131_fptr_562" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_131_561", 0
  %"$$BoolUtils.andb_131_envptr_563" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_131_561", 1
  %"$$test__17_564" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_131_call_565" = call %TName_Bool* %"$$BoolUtils.andb_131_fptr_562"(i8* %"$$BoolUtils.andb_131_envptr_563", %TName_Bool* %"$$test__17_564"), !dbg !92
  store %TName_Bool* %"$$BoolUtils.andb_131_call_565", %TName_Bool** %"$BoolUtils.andb_132", align 8, !dbg !92
  %"$$BoolUtils.andb_132_566" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_132", align 8
  store %TName_Bool* %"$$BoolUtils.andb_132_566", %TName_Bool** %"$test_18", align 8, !dbg !92
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_554"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem, align 8
  %"$arg2_19" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$arg2_19", metadata !94, metadata !DIExpression()), !dbg !96
  %"$gasrem_572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_573" = icmp ugt i64 1, %"$gasrem_572"
  br i1 %"$gascmp_573", label %"$out_of_gas_574", label %"$have_gas_575"

"$out_of_gas_574":                                ; preds = %"$have_gas_570"
  call void @_out_of_gas()
  br label %"$have_gas_575"

"$have_gas_575":                                  ; preds = %"$out_of_gas_574", %"$have_gas_570"
  %"$consume_576" = sub i64 %"$gasrem_572", 1
  store i64 %"$consume_576", i64* @_gasrem, align 8
  store %Uint64 { i64 2147483647 }, %Uint64* %"$arg2_19", align 8, !dbg !97
  %"$gasrem_577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_578" = icmp ugt i64 1, %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %"$have_gas_575"
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %"$have_gas_575"
  %"$consume_581" = sub i64 %"$gasrem_577", 1
  store i64 %"$consume_581", i64* @_gasrem, align 8
  %"$arg1_20" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$arg1_20", metadata !98, metadata !DIExpression()), !dbg !99
  %"$gasrem_582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_583" = icmp ugt i64 1, %"$gasrem_582"
  br i1 %"$gascmp_583", label %"$out_of_gas_584", label %"$have_gas_585"

"$out_of_gas_584":                                ; preds = %"$have_gas_580"
  call void @_out_of_gas()
  br label %"$have_gas_585"

"$have_gas_585":                                  ; preds = %"$out_of_gas_584", %"$have_gas_580"
  %"$consume_586" = sub i64 %"$gasrem_582", 1
  store i64 %"$consume_586", i64* @_gasrem, align 8
  store %Uint64 { i64 2147483647 }, %Uint64* %"$arg1_20", align 8, !dbg !100
  %"$gasrem_587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_588" = icmp ugt i64 1, %"$gasrem_587"
  br i1 %"$gascmp_588", label %"$out_of_gas_589", label %"$have_gas_590"

"$out_of_gas_589":                                ; preds = %"$have_gas_585"
  call void @_out_of_gas()
  br label %"$have_gas_590"

"$have_gas_590":                                  ; preds = %"$out_of_gas_589", %"$have_gas_585"
  %"$consume_591" = sub i64 %"$gasrem_587", 1
  store i64 %"$consume_591", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_24", metadata !101, metadata !DIExpression()), !dbg !102
  %"$gasrem_592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_593" = icmp ugt i64 1, %"$gasrem_592"
  br i1 %"$gascmp_593", label %"$out_of_gas_594", label %"$have_gas_595"

"$out_of_gas_594":                                ; preds = %"$have_gas_590"
  call void @_out_of_gas()
  br label %"$have_gas_595"

"$have_gas_595":                                  ; preds = %"$out_of_gas_594", %"$have_gas_590"
  %"$consume_596" = sub i64 %"$gasrem_592", 1
  store i64 %"$consume_596", i64* @_gasrem, align 8
  %"$res_21" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$res_21", metadata !103, metadata !DIExpression()), !dbg !104
  %"$gasrem_597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_598" = icmp ugt i64 20, %"$gasrem_597"
  br i1 %"$gascmp_598", label %"$out_of_gas_599", label %"$have_gas_600"

"$out_of_gas_599":                                ; preds = %"$have_gas_595"
  call void @_out_of_gas()
  br label %"$have_gas_600"

"$have_gas_600":                                  ; preds = %"$out_of_gas_599", %"$have_gas_595"
  %"$consume_601" = sub i64 %"$gasrem_597", 20
  store i64 %"$consume_601", i64* @_gasrem, align 8
  %"$$arg1_20_602" = load %Uint64, %Uint64* %"$arg1_20", align 8
  %"$$arg2_19_603" = load %Uint64, %Uint64* %"$arg2_19", align 8
  %"$mul_call_604" = call %Uint64 @_mul_Uint64(%Uint64 %"$$arg1_20_602", %Uint64 %"$$arg2_19_603"), !dbg !105
  store %Uint64 %"$mul_call_604", %Uint64* %"$res_21", align 8, !dbg !105
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 1, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %"$have_gas_600"
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %"$have_gas_600"
  %"$consume_609" = sub i64 %"$gasrem_605", 1
  store i64 %"$consume_609", i64* @_gasrem, align 8
  %"$res__22" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$res__22", metadata !106, metadata !DIExpression()), !dbg !107
  %"$gasrem_610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_611" = icmp ugt i64 1, %"$gasrem_610"
  br i1 %"$gascmp_611", label %"$out_of_gas_612", label %"$have_gas_613"

"$out_of_gas_612":                                ; preds = %"$have_gas_608"
  call void @_out_of_gas()
  br label %"$have_gas_613"

"$have_gas_613":                                  ; preds = %"$out_of_gas_612", %"$have_gas_608"
  %"$consume_614" = sub i64 %"$gasrem_610", 1
  store i64 %"$consume_614", i64* @_gasrem, align 8
  store %Uint64 { i64 4611686014132420609 }, %Uint64* %"$res__22", align 8, !dbg !108
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$have_gas_613"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$have_gas_613"
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__23", metadata !109, metadata !DIExpression()), !dbg !110
  %"$gasrem_620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_621" = icmp ugt i64 4, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %"$have_gas_618"
  %"$consume_624" = sub i64 %"$gasrem_620", 4
  store i64 %"$consume_624", i64* @_gasrem, align 8
  %"$execptr_load_625" = load i8*, i8** @_execptr, align 8
  %"$$res_21_626" = load %Uint64, %Uint64* %"$res_21", align 8
  %"$$res__22_627" = load %Uint64, %Uint64* %"$res__22", align 8
  %"$eq_call_628" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_625", %Uint64 %"$$res_21_626", %Uint64 %"$$res__22_627"), !dbg !111
  store %TName_Bool* %"$eq_call_628", %TName_Bool** %"$test__23", align 8, !dbg !111
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 1, %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %"$have_gas_623"
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %"$have_gas_623"
  %"$consume_634" = sub i64 %"$gasrem_630", 1
  store i64 %"$consume_634", i64* @_gasrem, align 8
  %"$BoolUtils.andb_133" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_635" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_636" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_635", 0
  %"$BoolUtils.andb_envptr_637" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_635", 1
  %"$$test_18_638" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_639" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_636"(i8* %"$BoolUtils.andb_envptr_637", %TName_Bool* %"$$test_18_638"), !dbg !112
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_639", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8, !dbg !112
  %"$BoolUtils.andb_134" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_134", metadata !113, metadata !DIExpression()), !dbg !112
  %"$$BoolUtils.andb_133_640" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8
  %"$$BoolUtils.andb_133_fptr_641" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_640", 0
  %"$$BoolUtils.andb_133_envptr_642" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_640", 1
  %"$$test__23_643" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_133_call_644" = call %TName_Bool* %"$$BoolUtils.andb_133_fptr_641"(i8* %"$$BoolUtils.andb_133_envptr_642", %TName_Bool* %"$$test__23_643"), !dbg !112
  store %TName_Bool* %"$$BoolUtils.andb_133_call_644", %TName_Bool** %"$BoolUtils.andb_134", align 8, !dbg !112
  %"$$BoolUtils.andb_134_645" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_134", align 8
  store %TName_Bool* %"$$BoolUtils.andb_134_645", %TName_Bool** %"$test_24", align 8, !dbg !112
  %"$gasrem_646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_647" = icmp ugt i64 1, %"$gasrem_646"
  br i1 %"$gascmp_647", label %"$out_of_gas_648", label %"$have_gas_649"

"$out_of_gas_648":                                ; preds = %"$have_gas_633"
  call void @_out_of_gas()
  br label %"$have_gas_649"

"$have_gas_649":                                  ; preds = %"$out_of_gas_648", %"$have_gas_633"
  %"$consume_650" = sub i64 %"$gasrem_646", 1
  store i64 %"$consume_650", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$arg1_25", metadata !114, metadata !DIExpression()), !dbg !116
  %"$gasrem_651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_652" = icmp ugt i64 1, %"$gasrem_651"
  br i1 %"$gascmp_652", label %"$out_of_gas_653", label %"$have_gas_654"

"$out_of_gas_653":                                ; preds = %"$have_gas_649"
  call void @_out_of_gas()
  br label %"$have_gas_654"

"$have_gas_654":                                  ; preds = %"$out_of_gas_653", %"$have_gas_649"
  %"$consume_655" = sub i64 %"$gasrem_651", 1
  store i64 %"$consume_655", i64* @_gasrem, align 8
  store %Uint128 { i128 9223372036854775806 }, %Uint128* %"$arg1_25", align 8, !dbg !117
  %"$gasrem_656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_657" = icmp ugt i64 1, %"$gasrem_656"
  br i1 %"$gascmp_657", label %"$out_of_gas_658", label %"$have_gas_659"

"$out_of_gas_658":                                ; preds = %"$have_gas_654"
  call void @_out_of_gas()
  br label %"$have_gas_659"

"$have_gas_659":                                  ; preds = %"$out_of_gas_658", %"$have_gas_654"
  %"$consume_660" = sub i64 %"$gasrem_656", 1
  store i64 %"$consume_660", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$arg2_26", metadata !118, metadata !DIExpression()), !dbg !119
  %"$gasrem_661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_662" = icmp ugt i64 1, %"$gasrem_661"
  br i1 %"$gascmp_662", label %"$out_of_gas_663", label %"$have_gas_664"

"$out_of_gas_663":                                ; preds = %"$have_gas_659"
  call void @_out_of_gas()
  br label %"$have_gas_664"

"$have_gas_664":                                  ; preds = %"$out_of_gas_663", %"$have_gas_659"
  %"$consume_665" = sub i64 %"$gasrem_661", 1
  store i64 %"$consume_665", i64* @_gasrem, align 8
  store %Uint128 { i128 9223372036854775806 }, %Uint128* %"$arg2_26", align 8, !dbg !120
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_664"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_664"
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_30", metadata !121, metadata !DIExpression()), !dbg !122
  %"$gasrem_671" = load i64, i64* @_gasrem, align 8
  %"$gascmp_672" = icmp ugt i64 1, %"$gasrem_671"
  br i1 %"$gascmp_672", label %"$out_of_gas_673", label %"$have_gas_674"

"$out_of_gas_673":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_674"

"$have_gas_674":                                  ; preds = %"$out_of_gas_673", %"$have_gas_669"
  %"$consume_675" = sub i64 %"$gasrem_671", 1
  store i64 %"$consume_675", i64* @_gasrem, align 8
  %"$res_27" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$res_27", metadata !123, metadata !DIExpression()), !dbg !124
  %"$gasrem_677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_678" = icmp ugt i64 40, %"$gasrem_677"
  br i1 %"$gascmp_678", label %"$out_of_gas_679", label %"$have_gas_680"

"$out_of_gas_679":                                ; preds = %"$have_gas_674"
  call void @_out_of_gas()
  br label %"$have_gas_680"

"$have_gas_680":                                  ; preds = %"$out_of_gas_679", %"$have_gas_674"
  %"$consume_681" = sub i64 %"$gasrem_677", 40
  store i64 %"$consume_681", i64* @_gasrem, align 8
  %"$$arg1_25_682" = load %Uint128, %Uint128* %"$arg1_25", align 8
  %"$$arg2_26_683" = load %Uint128, %Uint128* %"$arg2_26", align 8
  %"$mul_call_684" = call %Uint128 @_mul_Uint128(%Uint128 %"$$arg1_25_682", %Uint128 %"$$arg2_26_683"), !dbg !125
  store %Uint128 %"$mul_call_684", %Uint128* %"$res_27", align 8, !dbg !125
  %"$gasrem_685" = load i64, i64* @_gasrem, align 8
  %"$gascmp_686" = icmp ugt i64 1, %"$gasrem_685"
  br i1 %"$gascmp_686", label %"$out_of_gas_687", label %"$have_gas_688"

"$out_of_gas_687":                                ; preds = %"$have_gas_680"
  call void @_out_of_gas()
  br label %"$have_gas_688"

"$have_gas_688":                                  ; preds = %"$out_of_gas_687", %"$have_gas_680"
  %"$consume_689" = sub i64 %"$gasrem_685", 1
  store i64 %"$consume_689", i64* @_gasrem, align 8
  %"$res__28" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$res__28", metadata !126, metadata !DIExpression()), !dbg !127
  %"$gasrem_690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_691" = icmp ugt i64 1, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %"$have_gas_688"
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %"$have_gas_688"
  %"$consume_694" = sub i64 %"$gasrem_690", 1
  store i64 %"$consume_694", i64* @_gasrem, align 8
  store %Uint128 { i128 85070591730234615828950163710522949636 }, %Uint128* %"$res__28", align 8, !dbg !128
  %"$gasrem_695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_696" = icmp ugt i64 1, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %"$have_gas_693"
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %"$have_gas_693"
  %"$consume_699" = sub i64 %"$gasrem_695", 1
  store i64 %"$consume_699", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__29", metadata !129, metadata !DIExpression()), !dbg !130
  %"$gasrem_701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_702" = icmp ugt i64 8, %"$gasrem_701"
  br i1 %"$gascmp_702", label %"$out_of_gas_703", label %"$have_gas_704"

"$out_of_gas_703":                                ; preds = %"$have_gas_698"
  call void @_out_of_gas()
  br label %"$have_gas_704"

"$have_gas_704":                                  ; preds = %"$out_of_gas_703", %"$have_gas_698"
  %"$consume_705" = sub i64 %"$gasrem_701", 8
  store i64 %"$consume_705", i64* @_gasrem, align 8
  %"$execptr_load_706" = load i8*, i8** @_execptr, align 8
  %"$$res_27_707" = load %Uint128, %Uint128* %"$res_27", align 8
  %"$$res__28_708" = load %Uint128, %Uint128* %"$res__28", align 8
  %"$eq_call_709" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_706", %Uint128 %"$$res_27_707", %Uint128 %"$$res__28_708"), !dbg !131
  store %TName_Bool* %"$eq_call_709", %TName_Bool** %"$test__29", align 8, !dbg !131
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 1, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %"$have_gas_704"
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %"$have_gas_704"
  %"$consume_715" = sub i64 %"$gasrem_711", 1
  store i64 %"$consume_715", i64* @_gasrem, align 8
  %"$BoolUtils.andb_135" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_716" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_717" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_716", 0
  %"$BoolUtils.andb_envptr_718" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_716", 1
  %"$$test_24_719" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_720" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_717"(i8* %"$BoolUtils.andb_envptr_718", %TName_Bool* %"$$test_24_719"), !dbg !132
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_720", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8, !dbg !132
  %"$BoolUtils.andb_136" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_136", metadata !133, metadata !DIExpression()), !dbg !132
  %"$$BoolUtils.andb_135_721" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$$BoolUtils.andb_135_fptr_722" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_721", 0
  %"$$BoolUtils.andb_135_envptr_723" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_721", 1
  %"$$test__29_724" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_135_call_725" = call %TName_Bool* %"$$BoolUtils.andb_135_fptr_722"(i8* %"$$BoolUtils.andb_135_envptr_723", %TName_Bool* %"$$test__29_724"), !dbg !132
  store %TName_Bool* %"$$BoolUtils.andb_135_call_725", %TName_Bool** %"$BoolUtils.andb_136", align 8, !dbg !132
  %"$$BoolUtils.andb_136_726" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_136", align 8
  store %TName_Bool* %"$$BoolUtils.andb_136_726", %TName_Bool** %"$test_30", align 8, !dbg !132
  %"$gasrem_727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_728" = icmp ugt i64 1, %"$gasrem_727"
  br i1 %"$gascmp_728", label %"$out_of_gas_729", label %"$have_gas_730"

"$out_of_gas_729":                                ; preds = %"$have_gas_714"
  call void @_out_of_gas()
  br label %"$have_gas_730"

"$have_gas_730":                                  ; preds = %"$out_of_gas_729", %"$have_gas_714"
  %"$consume_731" = sub i64 %"$gasrem_727", 1
  store i64 %"$consume_731", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg1_31", metadata !134, metadata !DIExpression()), !dbg !136
  %"$gasrem_732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_733" = icmp ugt i64 1, %"$gasrem_732"
  br i1 %"$gascmp_733", label %"$out_of_gas_734", label %"$have_gas_735"

"$out_of_gas_734":                                ; preds = %"$have_gas_730"
  call void @_out_of_gas()
  br label %"$have_gas_735"

"$have_gas_735":                                  ; preds = %"$out_of_gas_734", %"$have_gas_730"
  %"$consume_736" = sub i64 %"$gasrem_732", 1
  store i64 %"$consume_736", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_31", align 8, !dbg !137
  %"$gasrem_737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_738" = icmp ugt i64 1, %"$gasrem_737"
  br i1 %"$gascmp_738", label %"$out_of_gas_739", label %"$have_gas_740"

"$out_of_gas_739":                                ; preds = %"$have_gas_735"
  call void @_out_of_gas()
  br label %"$have_gas_740"

"$have_gas_740":                                  ; preds = %"$out_of_gas_739", %"$have_gas_735"
  %"$consume_741" = sub i64 %"$gasrem_737", 1
  store i64 %"$consume_741", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg2_32", metadata !138, metadata !DIExpression()), !dbg !139
  %"$gasrem_742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_743" = icmp ugt i64 1, %"$gasrem_742"
  br i1 %"$gascmp_743", label %"$out_of_gas_744", label %"$have_gas_745"

"$out_of_gas_744":                                ; preds = %"$have_gas_740"
  call void @_out_of_gas()
  br label %"$have_gas_745"

"$have_gas_745":                                  ; preds = %"$out_of_gas_744", %"$have_gas_740"
  %"$consume_746" = sub i64 %"$gasrem_742", 1
  store i64 %"$consume_746", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg2_32", align 8, !dbg !140
  %"$gasrem_747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_748" = icmp ugt i64 1, %"$gasrem_747"
  br i1 %"$gascmp_748", label %"$out_of_gas_749", label %"$have_gas_750"

"$out_of_gas_749":                                ; preds = %"$have_gas_745"
  call void @_out_of_gas()
  br label %"$have_gas_750"

"$have_gas_750":                                  ; preds = %"$out_of_gas_749", %"$have_gas_745"
  %"$consume_751" = sub i64 %"$gasrem_747", 1
  store i64 %"$consume_751", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_36", metadata !141, metadata !DIExpression()), !dbg !142
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 1, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_750"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_750"
  %"$consume_756" = sub i64 %"$gasrem_752", 1
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %"$res_33" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res_33", metadata !143, metadata !DIExpression()), !dbg !144
  %"$gasrem_758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_759" = icmp ugt i64 40, %"$gasrem_758"
  br i1 %"$gascmp_759", label %"$out_of_gas_760", label %"$have_gas_761"

"$out_of_gas_760":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_761"

"$have_gas_761":                                  ; preds = %"$out_of_gas_760", %"$have_gas_755"
  %"$consume_762" = sub i64 %"$gasrem_758", 40
  store i64 %"$consume_762", i64* @_gasrem, align 8
  %"$$arg1_31_763" = load %Int128, %Int128* %"$arg1_31", align 8
  %"$$arg2_32_764" = load %Int128, %Int128* %"$arg2_32", align 8
  %"$mul_call_765" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_31_763", %Int128 %"$$arg2_32_764"), !dbg !145
  store %Int128 %"$mul_call_765", %Int128* %"$res_33", align 8, !dbg !145
  %"$gasrem_766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_767" = icmp ugt i64 1, %"$gasrem_766"
  br i1 %"$gascmp_767", label %"$out_of_gas_768", label %"$have_gas_769"

"$out_of_gas_768":                                ; preds = %"$have_gas_761"
  call void @_out_of_gas()
  br label %"$have_gas_769"

"$have_gas_769":                                  ; preds = %"$out_of_gas_768", %"$have_gas_761"
  %"$consume_770" = sub i64 %"$gasrem_766", 1
  store i64 %"$consume_770", i64* @_gasrem, align 8
  %"$res__34" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res__34", metadata !146, metadata !DIExpression()), !dbg !147
  %"$gasrem_771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_772" = icmp ugt i64 1, %"$gasrem_771"
  br i1 %"$gascmp_772", label %"$out_of_gas_773", label %"$have_gas_774"

"$out_of_gas_773":                                ; preds = %"$have_gas_769"
  call void @_out_of_gas()
  br label %"$have_gas_774"

"$have_gas_774":                                  ; preds = %"$out_of_gas_773", %"$have_gas_769"
  %"$consume_775" = sub i64 %"$gasrem_771", 1
  store i64 %"$consume_775", i64* @_gasrem, align 8
  store %Int128 { i128 85070591730234615828950163710522949636 }, %Int128* %"$res__34", align 8, !dbg !148
  %"$gasrem_776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_777" = icmp ugt i64 1, %"$gasrem_776"
  br i1 %"$gascmp_777", label %"$out_of_gas_778", label %"$have_gas_779"

"$out_of_gas_778":                                ; preds = %"$have_gas_774"
  call void @_out_of_gas()
  br label %"$have_gas_779"

"$have_gas_779":                                  ; preds = %"$out_of_gas_778", %"$have_gas_774"
  %"$consume_780" = sub i64 %"$gasrem_776", 1
  store i64 %"$consume_780", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__35", metadata !149, metadata !DIExpression()), !dbg !150
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 8, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$have_gas_779"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$have_gas_779"
  %"$consume_786" = sub i64 %"$gasrem_782", 8
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$execptr_load_787" = load i8*, i8** @_execptr, align 8
  %"$$res_33_788" = load %Int128, %Int128* %"$res_33", align 8
  %"$$res__34_789" = load %Int128, %Int128* %"$res__34", align 8
  %"$eq_call_790" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_787", %Int128 %"$$res_33_788", %Int128 %"$$res__34_789"), !dbg !151
  store %TName_Bool* %"$eq_call_790", %TName_Bool** %"$test__35", align 8, !dbg !151
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 1, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %"$have_gas_785"
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %"$have_gas_785"
  %"$consume_796" = sub i64 %"$gasrem_792", 1
  store i64 %"$consume_796", i64* @_gasrem, align 8
  %"$BoolUtils.andb_137" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_797" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_798" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_797", 0
  %"$BoolUtils.andb_envptr_799" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_797", 1
  %"$$test_30_800" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_801" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_798"(i8* %"$BoolUtils.andb_envptr_799", %TName_Bool* %"$$test_30_800"), !dbg !152
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_801", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8, !dbg !152
  %"$BoolUtils.andb_138" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_138", metadata !153, metadata !DIExpression()), !dbg !152
  %"$$BoolUtils.andb_137_802" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8
  %"$$BoolUtils.andb_137_fptr_803" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_802", 0
  %"$$BoolUtils.andb_137_envptr_804" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_802", 1
  %"$$test__35_805" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_137_call_806" = call %TName_Bool* %"$$BoolUtils.andb_137_fptr_803"(i8* %"$$BoolUtils.andb_137_envptr_804", %TName_Bool* %"$$test__35_805"), !dbg !152
  store %TName_Bool* %"$$BoolUtils.andb_137_call_806", %TName_Bool** %"$BoolUtils.andb_138", align 8, !dbg !152
  %"$$BoolUtils.andb_138_807" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_138", align 8
  store %TName_Bool* %"$$BoolUtils.andb_138_807", %TName_Bool** %"$test_36", align 8, !dbg !152
  %"$gasrem_808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_809" = icmp ugt i64 1, %"$gasrem_808"
  br i1 %"$gascmp_809", label %"$out_of_gas_810", label %"$have_gas_811"

"$out_of_gas_810":                                ; preds = %"$have_gas_795"
  call void @_out_of_gas()
  br label %"$have_gas_811"

"$have_gas_811":                                  ; preds = %"$out_of_gas_810", %"$have_gas_795"
  %"$consume_812" = sub i64 %"$gasrem_808", 1
  store i64 %"$consume_812", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg1_37", metadata !154, metadata !DIExpression()), !dbg !155
  %"$gasrem_813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_814" = icmp ugt i64 1, %"$gasrem_813"
  br i1 %"$gascmp_814", label %"$out_of_gas_815", label %"$have_gas_816"

"$out_of_gas_815":                                ; preds = %"$have_gas_811"
  call void @_out_of_gas()
  br label %"$have_gas_816"

"$have_gas_816":                                  ; preds = %"$out_of_gas_815", %"$have_gas_811"
  %"$consume_817" = sub i64 %"$gasrem_813", 1
  store i64 %"$consume_817", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_37", align 8, !dbg !156
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 1, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %"$have_gas_816"
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %"$have_gas_816"
  %"$consume_822" = sub i64 %"$gasrem_818", 1
  store i64 %"$consume_822", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg2_38", metadata !157, metadata !DIExpression()), !dbg !158
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 1, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %"$have_gas_821"
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %"$have_gas_821"
  %"$consume_827" = sub i64 %"$gasrem_823", 1
  store i64 %"$consume_827", i64* @_gasrem, align 8
  store %Int128 zeroinitializer, %Int128* %"$arg2_38", align 8, !dbg !159
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$have_gas_826"
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_42", metadata !160, metadata !DIExpression()), !dbg !161
  %"$gasrem_833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_834" = icmp ugt i64 1, %"$gasrem_833"
  br i1 %"$gascmp_834", label %"$out_of_gas_835", label %"$have_gas_836"

"$out_of_gas_835":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_836"

"$have_gas_836":                                  ; preds = %"$out_of_gas_835", %"$have_gas_831"
  %"$consume_837" = sub i64 %"$gasrem_833", 1
  store i64 %"$consume_837", i64* @_gasrem, align 8
  %"$res_39" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res_39", metadata !162, metadata !DIExpression()), !dbg !163
  %"$gasrem_839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_840" = icmp ugt i64 40, %"$gasrem_839"
  br i1 %"$gascmp_840", label %"$out_of_gas_841", label %"$have_gas_842"

"$out_of_gas_841":                                ; preds = %"$have_gas_836"
  call void @_out_of_gas()
  br label %"$have_gas_842"

"$have_gas_842":                                  ; preds = %"$out_of_gas_841", %"$have_gas_836"
  %"$consume_843" = sub i64 %"$gasrem_839", 40
  store i64 %"$consume_843", i64* @_gasrem, align 8
  %"$$arg1_37_844" = load %Int128, %Int128* %"$arg1_37", align 8
  %"$$arg2_38_845" = load %Int128, %Int128* %"$arg2_38", align 8
  %"$mul_call_846" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_37_844", %Int128 %"$$arg2_38_845"), !dbg !164
  store %Int128 %"$mul_call_846", %Int128* %"$res_39", align 8, !dbg !164
  %"$gasrem_847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_848" = icmp ugt i64 1, %"$gasrem_847"
  br i1 %"$gascmp_848", label %"$out_of_gas_849", label %"$have_gas_850"

"$out_of_gas_849":                                ; preds = %"$have_gas_842"
  call void @_out_of_gas()
  br label %"$have_gas_850"

"$have_gas_850":                                  ; preds = %"$out_of_gas_849", %"$have_gas_842"
  %"$consume_851" = sub i64 %"$gasrem_847", 1
  store i64 %"$consume_851", i64* @_gasrem, align 8
  %"$res__40" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res__40", metadata !165, metadata !DIExpression()), !dbg !166
  %"$gasrem_852" = load i64, i64* @_gasrem, align 8
  %"$gascmp_853" = icmp ugt i64 1, %"$gasrem_852"
  br i1 %"$gascmp_853", label %"$out_of_gas_854", label %"$have_gas_855"

"$out_of_gas_854":                                ; preds = %"$have_gas_850"
  call void @_out_of_gas()
  br label %"$have_gas_855"

"$have_gas_855":                                  ; preds = %"$out_of_gas_854", %"$have_gas_850"
  %"$consume_856" = sub i64 %"$gasrem_852", 1
  store i64 %"$consume_856", i64* @_gasrem, align 8
  store %Int128 zeroinitializer, %Int128* %"$res__40", align 8, !dbg !167
  %"$gasrem_857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_858" = icmp ugt i64 1, %"$gasrem_857"
  br i1 %"$gascmp_858", label %"$out_of_gas_859", label %"$have_gas_860"

"$out_of_gas_859":                                ; preds = %"$have_gas_855"
  call void @_out_of_gas()
  br label %"$have_gas_860"

"$have_gas_860":                                  ; preds = %"$out_of_gas_859", %"$have_gas_855"
  %"$consume_861" = sub i64 %"$gasrem_857", 1
  store i64 %"$consume_861", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__41", metadata !168, metadata !DIExpression()), !dbg !169
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 8, %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_860"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_860"
  %"$consume_867" = sub i64 %"$gasrem_863", 8
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %"$execptr_load_868" = load i8*, i8** @_execptr, align 8
  %"$$res_39_869" = load %Int128, %Int128* %"$res_39", align 8
  %"$$res__40_870" = load %Int128, %Int128* %"$res__40", align 8
  %"$eq_call_871" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_868", %Int128 %"$$res_39_869", %Int128 %"$$res__40_870"), !dbg !170
  store %TName_Bool* %"$eq_call_871", %TName_Bool** %"$test__41", align 8, !dbg !170
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_866"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %"$BoolUtils.andb_139" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_878" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_879" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_878", 0
  %"$BoolUtils.andb_envptr_880" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_878", 1
  %"$$test_36_881" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_882" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_879"(i8* %"$BoolUtils.andb_envptr_880", %TName_Bool* %"$$test_36_881"), !dbg !171
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_882", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8, !dbg !171
  %"$BoolUtils.andb_140" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_140", metadata !172, metadata !DIExpression()), !dbg !171
  %"$$BoolUtils.andb_139_883" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_fptr_884" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_883", 0
  %"$$BoolUtils.andb_139_envptr_885" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_883", 1
  %"$$test__41_886" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_139_call_887" = call %TName_Bool* %"$$BoolUtils.andb_139_fptr_884"(i8* %"$$BoolUtils.andb_139_envptr_885", %TName_Bool* %"$$test__41_886"), !dbg !171
  store %TName_Bool* %"$$BoolUtils.andb_139_call_887", %TName_Bool** %"$BoolUtils.andb_140", align 8, !dbg !171
  %"$$BoolUtils.andb_140_888" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_140", align 8
  store %TName_Bool* %"$$BoolUtils.andb_140_888", %TName_Bool** %"$test_42", align 8, !dbg !171
  %"$gasrem_889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_890" = icmp ugt i64 1, %"$gasrem_889"
  br i1 %"$gascmp_890", label %"$out_of_gas_891", label %"$have_gas_892"

"$out_of_gas_891":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_892"

"$have_gas_892":                                  ; preds = %"$out_of_gas_891", %"$have_gas_876"
  %"$consume_893" = sub i64 %"$gasrem_889", 1
  store i64 %"$consume_893", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg1_43", metadata !173, metadata !DIExpression()), !dbg !174
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_892"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_892"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_43", align 8, !dbg !175
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 1, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_897"
  %"$consume_903" = sub i64 %"$gasrem_899", 1
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg2_44", metadata !176, metadata !DIExpression()), !dbg !177
  %"$gasrem_904" = load i64, i64* @_gasrem, align 8
  %"$gascmp_905" = icmp ugt i64 1, %"$gasrem_904"
  br i1 %"$gascmp_905", label %"$out_of_gas_906", label %"$have_gas_907"

"$out_of_gas_906":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_907"

"$have_gas_907":                                  ; preds = %"$out_of_gas_906", %"$have_gas_902"
  %"$consume_908" = sub i64 %"$gasrem_904", 1
  store i64 %"$consume_908", i64* @_gasrem, align 8
  store %Int128 { i128 -1 }, %Int128* %"$arg2_44", align 8, !dbg !178
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 1, %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$have_gas_907"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$have_gas_907"
  %"$consume_913" = sub i64 %"$gasrem_909", 1
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_48", metadata !179, metadata !DIExpression()), !dbg !180
  %"$gasrem_914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_915" = icmp ugt i64 1, %"$gasrem_914"
  br i1 %"$gascmp_915", label %"$out_of_gas_916", label %"$have_gas_917"

"$out_of_gas_916":                                ; preds = %"$have_gas_912"
  call void @_out_of_gas()
  br label %"$have_gas_917"

"$have_gas_917":                                  ; preds = %"$out_of_gas_916", %"$have_gas_912"
  %"$consume_918" = sub i64 %"$gasrem_914", 1
  store i64 %"$consume_918", i64* @_gasrem, align 8
  %"$res_45" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res_45", metadata !181, metadata !DIExpression()), !dbg !182
  %"$gasrem_920" = load i64, i64* @_gasrem, align 8
  %"$gascmp_921" = icmp ugt i64 40, %"$gasrem_920"
  br i1 %"$gascmp_921", label %"$out_of_gas_922", label %"$have_gas_923"

"$out_of_gas_922":                                ; preds = %"$have_gas_917"
  call void @_out_of_gas()
  br label %"$have_gas_923"

"$have_gas_923":                                  ; preds = %"$out_of_gas_922", %"$have_gas_917"
  %"$consume_924" = sub i64 %"$gasrem_920", 40
  store i64 %"$consume_924", i64* @_gasrem, align 8
  %"$$arg1_43_925" = load %Int128, %Int128* %"$arg1_43", align 8
  %"$$arg2_44_926" = load %Int128, %Int128* %"$arg2_44", align 8
  %"$mul_call_927" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_43_925", %Int128 %"$$arg2_44_926"), !dbg !183
  store %Int128 %"$mul_call_927", %Int128* %"$res_45", align 8, !dbg !183
  %"$gasrem_928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_929" = icmp ugt i64 1, %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %"$have_gas_923"
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %"$have_gas_923"
  %"$consume_932" = sub i64 %"$gasrem_928", 1
  store i64 %"$consume_932", i64* @_gasrem, align 8
  %"$res__46" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res__46", metadata !184, metadata !DIExpression()), !dbg !185
  %"$gasrem_933" = load i64, i64* @_gasrem, align 8
  %"$gascmp_934" = icmp ugt i64 1, %"$gasrem_933"
  br i1 %"$gascmp_934", label %"$out_of_gas_935", label %"$have_gas_936"

"$out_of_gas_935":                                ; preds = %"$have_gas_931"
  call void @_out_of_gas()
  br label %"$have_gas_936"

"$have_gas_936":                                  ; preds = %"$out_of_gas_935", %"$have_gas_931"
  %"$consume_937" = sub i64 %"$gasrem_933", 1
  store i64 %"$consume_937", i64* @_gasrem, align 8
  store %Int128 { i128 -9223372036854775806 }, %Int128* %"$res__46", align 8, !dbg !186
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_936"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_936"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__47", metadata !187, metadata !DIExpression()), !dbg !188
  %"$gasrem_944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_945" = icmp ugt i64 8, %"$gasrem_944"
  br i1 %"$gascmp_945", label %"$out_of_gas_946", label %"$have_gas_947"

"$out_of_gas_946":                                ; preds = %"$have_gas_941"
  call void @_out_of_gas()
  br label %"$have_gas_947"

"$have_gas_947":                                  ; preds = %"$out_of_gas_946", %"$have_gas_941"
  %"$consume_948" = sub i64 %"$gasrem_944", 8
  store i64 %"$consume_948", i64* @_gasrem, align 8
  %"$execptr_load_949" = load i8*, i8** @_execptr, align 8
  %"$$res_45_950" = load %Int128, %Int128* %"$res_45", align 8
  %"$$res__46_951" = load %Int128, %Int128* %"$res__46", align 8
  %"$eq_call_952" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_949", %Int128 %"$$res_45_950", %Int128 %"$$res__46_951"), !dbg !189
  store %TName_Bool* %"$eq_call_952", %TName_Bool** %"$test__47", align 8, !dbg !189
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 1, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %"$have_gas_947"
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %"$have_gas_947"
  %"$consume_958" = sub i64 %"$gasrem_954", 1
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %"$BoolUtils.andb_141" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_959" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_960" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_959", 0
  %"$BoolUtils.andb_envptr_961" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_959", 1
  %"$$test_42_962" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_963" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_960"(i8* %"$BoolUtils.andb_envptr_961", %TName_Bool* %"$$test_42_962"), !dbg !190
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_963", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8, !dbg !190
  %"$BoolUtils.andb_142" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_142", metadata !191, metadata !DIExpression()), !dbg !190
  %"$$BoolUtils.andb_141_964" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$$BoolUtils.andb_141_fptr_965" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_964", 0
  %"$$BoolUtils.andb_141_envptr_966" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_964", 1
  %"$$test__47_967" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_141_call_968" = call %TName_Bool* %"$$BoolUtils.andb_141_fptr_965"(i8* %"$$BoolUtils.andb_141_envptr_966", %TName_Bool* %"$$test__47_967"), !dbg !190
  store %TName_Bool* %"$$BoolUtils.andb_141_call_968", %TName_Bool** %"$BoolUtils.andb_142", align 8, !dbg !190
  %"$$BoolUtils.andb_142_969" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_142", align 8
  store %TName_Bool* %"$$BoolUtils.andb_142_969", %TName_Bool** %"$test_48", align 8, !dbg !190
  %"$gasrem_970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_971" = icmp ugt i64 1, %"$gasrem_970"
  br i1 %"$gascmp_971", label %"$out_of_gas_972", label %"$have_gas_973"

"$out_of_gas_972":                                ; preds = %"$have_gas_957"
  call void @_out_of_gas()
  br label %"$have_gas_973"

"$have_gas_973":                                  ; preds = %"$out_of_gas_972", %"$have_gas_957"
  %"$consume_974" = sub i64 %"$gasrem_970", 1
  store i64 %"$consume_974", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_49", metadata !192, metadata !DIExpression()), !dbg !194
  %"$gasrem_975" = load i64, i64* @_gasrem, align 8
  %"$gascmp_976" = icmp ugt i64 1, %"$gasrem_975"
  br i1 %"$gascmp_976", label %"$out_of_gas_977", label %"$have_gas_978"

"$out_of_gas_977":                                ; preds = %"$have_gas_973"
  call void @_out_of_gas()
  br label %"$have_gas_978"

"$have_gas_978":                                  ; preds = %"$out_of_gas_977", %"$have_gas_973"
  %"$consume_979" = sub i64 %"$gasrem_975", 1
  store i64 %"$consume_979", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775806 }, %Int256* %"$arg1_49", align 8, !dbg !195
  %"$gasrem_980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_981" = icmp ugt i64 1, %"$gasrem_980"
  br i1 %"$gascmp_981", label %"$out_of_gas_982", label %"$have_gas_983"

"$out_of_gas_982":                                ; preds = %"$have_gas_978"
  call void @_out_of_gas()
  br label %"$have_gas_983"

"$have_gas_983":                                  ; preds = %"$out_of_gas_982", %"$have_gas_978"
  %"$consume_984" = sub i64 %"$gasrem_980", 1
  store i64 %"$consume_984", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_50", metadata !196, metadata !DIExpression()), !dbg !197
  %"$gasrem_985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_986" = icmp ugt i64 1, %"$gasrem_985"
  br i1 %"$gascmp_986", label %"$out_of_gas_987", label %"$have_gas_988"

"$out_of_gas_987":                                ; preds = %"$have_gas_983"
  call void @_out_of_gas()
  br label %"$have_gas_988"

"$have_gas_988":                                  ; preds = %"$out_of_gas_987", %"$have_gas_983"
  %"$consume_989" = sub i64 %"$gasrem_985", 1
  store i64 %"$consume_989", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$arg2_50", align 8, !dbg !198
  %"$gasrem_990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_991" = icmp ugt i64 1, %"$gasrem_990"
  br i1 %"$gascmp_991", label %"$out_of_gas_992", label %"$have_gas_993"

"$out_of_gas_992":                                ; preds = %"$have_gas_988"
  call void @_out_of_gas()
  br label %"$have_gas_993"

"$have_gas_993":                                  ; preds = %"$out_of_gas_992", %"$have_gas_988"
  %"$consume_994" = sub i64 %"$gasrem_990", 1
  store i64 %"$consume_994", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_54", metadata !199, metadata !DIExpression()), !dbg !200
  %"$gasrem_995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_996" = icmp ugt i64 1, %"$gasrem_995"
  br i1 %"$gascmp_996", label %"$out_of_gas_997", label %"$have_gas_998"

"$out_of_gas_997":                                ; preds = %"$have_gas_993"
  call void @_out_of_gas()
  br label %"$have_gas_998"

"$have_gas_998":                                  ; preds = %"$out_of_gas_997", %"$have_gas_993"
  %"$consume_999" = sub i64 %"$gasrem_995", 1
  store i64 %"$consume_999", i64* @_gasrem, align 8
  %"$res_51" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_51", metadata !201, metadata !DIExpression()), !dbg !202
  %"$gasrem_1001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1002" = icmp ugt i64 80, %"$gasrem_1001"
  br i1 %"$gascmp_1002", label %"$out_of_gas_1003", label %"$have_gas_1004"

"$out_of_gas_1003":                               ; preds = %"$have_gas_998"
  call void @_out_of_gas()
  br label %"$have_gas_1004"

"$have_gas_1004":                                 ; preds = %"$out_of_gas_1003", %"$have_gas_998"
  %"$consume_1005" = sub i64 %"$gasrem_1001", 80
  store i64 %"$consume_1005", i64* @_gasrem, align 8
  %"$execptr_load_1006" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_49_1007" = alloca %Int256, align 8
  %"$$arg1_49_1008" = load %Int256, %Int256* %"$arg1_49", align 8
  store %Int256 %"$$arg1_49_1008", %Int256* %"$mul_$arg1_49_1007", align 8
  %"$mul_$arg2_50_1009" = alloca %Int256, align 8
  %"$$arg2_50_1010" = load %Int256, %Int256* %"$arg2_50", align 8
  store %Int256 %"$$arg2_50_1010", %Int256* %"$mul_$arg2_50_1009", align 8
  %"$mul_call_1011" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1006", %Int256* %"$mul_$arg1_49_1007", %Int256* %"$mul_$arg2_50_1009"), !dbg !203
  %"$mul_1013" = load %Int256, %Int256* %"$mul_call_1011", align 8
  store %Int256 %"$mul_1013", %Int256* %"$res_51", align 8, !dbg !203
  %"$gasrem_1014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1015" = icmp ugt i64 1, %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$have_gas_1004"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$have_gas_1004"
  %"$consume_1018" = sub i64 %"$gasrem_1014", 1
  store i64 %"$consume_1018", i64* @_gasrem, align 8
  %"$res__52" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__52", metadata !204, metadata !DIExpression()), !dbg !205
  %"$gasrem_1019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1020" = icmp ugt i64 1, %"$gasrem_1019"
  br i1 %"$gascmp_1020", label %"$out_of_gas_1021", label %"$have_gas_1022"

"$out_of_gas_1021":                               ; preds = %"$have_gas_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1022"

"$have_gas_1022":                                 ; preds = %"$out_of_gas_1021", %"$have_gas_1017"
  %"$consume_1023" = sub i64 %"$gasrem_1019", 1
  store i64 %"$consume_1023", i64* @_gasrem, align 8
  store %Int256 { i256 -9223372036854775806 }, %Int256* %"$res__52", align 8, !dbg !206
  %"$gasrem_1024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1025" = icmp ugt i64 1, %"$gasrem_1024"
  br i1 %"$gascmp_1025", label %"$out_of_gas_1026", label %"$have_gas_1027"

"$out_of_gas_1026":                               ; preds = %"$have_gas_1022"
  call void @_out_of_gas()
  br label %"$have_gas_1027"

"$have_gas_1027":                                 ; preds = %"$out_of_gas_1026", %"$have_gas_1022"
  %"$consume_1028" = sub i64 %"$gasrem_1024", 1
  store i64 %"$consume_1028", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__53", metadata !207, metadata !DIExpression()), !dbg !208
  %"$gasrem_1030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1031" = icmp ugt i64 16, %"$gasrem_1030"
  br i1 %"$gascmp_1031", label %"$out_of_gas_1032", label %"$have_gas_1033"

"$out_of_gas_1032":                               ; preds = %"$have_gas_1027"
  call void @_out_of_gas()
  br label %"$have_gas_1033"

"$have_gas_1033":                                 ; preds = %"$out_of_gas_1032", %"$have_gas_1027"
  %"$consume_1034" = sub i64 %"$gasrem_1030", 16
  store i64 %"$consume_1034", i64* @_gasrem, align 8
  %"$execptr_load_1035" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_1036" = alloca %Int256, align 8
  %"$$res_51_1037" = load %Int256, %Int256* %"$res_51", align 8
  store %Int256 %"$$res_51_1037", %Int256* %"$eq_$res_51_1036", align 8
  %"$eq_$res__52_1038" = alloca %Int256, align 8
  %"$$res__52_1039" = load %Int256, %Int256* %"$res__52", align 8
  store %Int256 %"$$res__52_1039", %Int256* %"$eq_$res__52_1038", align 8
  %"$eq_call_1040" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1035", %Int256* %"$eq_$res_51_1036", %Int256* %"$eq_$res__52_1038"), !dbg !209
  store %TName_Bool* %"$eq_call_1040", %TName_Bool** %"$test__53", align 8, !dbg !209
  %"$gasrem_1042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1043" = icmp ugt i64 1, %"$gasrem_1042"
  br i1 %"$gascmp_1043", label %"$out_of_gas_1044", label %"$have_gas_1045"

"$out_of_gas_1044":                               ; preds = %"$have_gas_1033"
  call void @_out_of_gas()
  br label %"$have_gas_1045"

"$have_gas_1045":                                 ; preds = %"$out_of_gas_1044", %"$have_gas_1033"
  %"$consume_1046" = sub i64 %"$gasrem_1042", 1
  store i64 %"$consume_1046", i64* @_gasrem, align 8
  %"$BoolUtils.andb_143" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1047" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1048" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1047", 0
  %"$BoolUtils.andb_envptr_1049" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1047", 1
  %"$$test_48_1050" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_1051" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1048"(i8* %"$BoolUtils.andb_envptr_1049", %TName_Bool* %"$$test_48_1050"), !dbg !210
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1051", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8, !dbg !210
  %"$BoolUtils.andb_144" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_144", metadata !211, metadata !DIExpression()), !dbg !210
  %"$$BoolUtils.andb_143_1052" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$$BoolUtils.andb_143_fptr_1053" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_1052", 0
  %"$$BoolUtils.andb_143_envptr_1054" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_1052", 1
  %"$$test__53_1055" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_143_call_1056" = call %TName_Bool* %"$$BoolUtils.andb_143_fptr_1053"(i8* %"$$BoolUtils.andb_143_envptr_1054", %TName_Bool* %"$$test__53_1055"), !dbg !210
  store %TName_Bool* %"$$BoolUtils.andb_143_call_1056", %TName_Bool** %"$BoolUtils.andb_144", align 8, !dbg !210
  %"$$BoolUtils.andb_144_1057" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_144", align 8
  store %TName_Bool* %"$$BoolUtils.andb_144_1057", %TName_Bool** %"$test_54", align 8, !dbg !210
  %"$gasrem_1058" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1059" = icmp ugt i64 1, %"$gasrem_1058"
  br i1 %"$gascmp_1059", label %"$out_of_gas_1060", label %"$have_gas_1061"

"$out_of_gas_1060":                               ; preds = %"$have_gas_1045"
  call void @_out_of_gas()
  br label %"$have_gas_1061"

"$have_gas_1061":                                 ; preds = %"$out_of_gas_1060", %"$have_gas_1045"
  %"$consume_1062" = sub i64 %"$gasrem_1058", 1
  store i64 %"$consume_1062", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_55", metadata !212, metadata !DIExpression()), !dbg !213
  %"$gasrem_1063" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1064" = icmp ugt i64 1, %"$gasrem_1063"
  br i1 %"$gascmp_1064", label %"$out_of_gas_1065", label %"$have_gas_1066"

"$out_of_gas_1065":                               ; preds = %"$have_gas_1061"
  call void @_out_of_gas()
  br label %"$have_gas_1066"

"$have_gas_1066":                                 ; preds = %"$out_of_gas_1065", %"$have_gas_1061"
  %"$consume_1067" = sub i64 %"$gasrem_1063", 1
  store i64 %"$consume_1067", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775806 }, %Int256* %"$arg1_55", align 8, !dbg !214
  %"$gasrem_1068" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1069" = icmp ugt i64 1, %"$gasrem_1068"
  br i1 %"$gascmp_1069", label %"$out_of_gas_1070", label %"$have_gas_1071"

"$out_of_gas_1070":                               ; preds = %"$have_gas_1066"
  call void @_out_of_gas()
  br label %"$have_gas_1071"

"$have_gas_1071":                                 ; preds = %"$out_of_gas_1070", %"$have_gas_1066"
  %"$consume_1072" = sub i64 %"$gasrem_1068", 1
  store i64 %"$consume_1072", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_56", metadata !215, metadata !DIExpression()), !dbg !216
  %"$gasrem_1073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1074" = icmp ugt i64 1, %"$gasrem_1073"
  br i1 %"$gascmp_1074", label %"$out_of_gas_1075", label %"$have_gas_1076"

"$out_of_gas_1075":                               ; preds = %"$have_gas_1071"
  call void @_out_of_gas()
  br label %"$have_gas_1076"

"$have_gas_1076":                                 ; preds = %"$out_of_gas_1075", %"$have_gas_1071"
  %"$consume_1077" = sub i64 %"$gasrem_1073", 1
  store i64 %"$consume_1077", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_56", align 8, !dbg !217
  %"$gasrem_1078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1079" = icmp ugt i64 1, %"$gasrem_1078"
  br i1 %"$gascmp_1079", label %"$out_of_gas_1080", label %"$have_gas_1081"

"$out_of_gas_1080":                               ; preds = %"$have_gas_1076"
  call void @_out_of_gas()
  br label %"$have_gas_1081"

"$have_gas_1081":                                 ; preds = %"$out_of_gas_1080", %"$have_gas_1076"
  %"$consume_1082" = sub i64 %"$gasrem_1078", 1
  store i64 %"$consume_1082", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_60", metadata !218, metadata !DIExpression()), !dbg !219
  %"$gasrem_1083" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1084" = icmp ugt i64 1, %"$gasrem_1083"
  br i1 %"$gascmp_1084", label %"$out_of_gas_1085", label %"$have_gas_1086"

"$out_of_gas_1085":                               ; preds = %"$have_gas_1081"
  call void @_out_of_gas()
  br label %"$have_gas_1086"

"$have_gas_1086":                                 ; preds = %"$out_of_gas_1085", %"$have_gas_1081"
  %"$consume_1087" = sub i64 %"$gasrem_1083", 1
  store i64 %"$consume_1087", i64* @_gasrem, align 8
  %"$res_57" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_57", metadata !220, metadata !DIExpression()), !dbg !221
  %"$gasrem_1089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1090" = icmp ugt i64 80, %"$gasrem_1089"
  br i1 %"$gascmp_1090", label %"$out_of_gas_1091", label %"$have_gas_1092"

"$out_of_gas_1091":                               ; preds = %"$have_gas_1086"
  call void @_out_of_gas()
  br label %"$have_gas_1092"

"$have_gas_1092":                                 ; preds = %"$out_of_gas_1091", %"$have_gas_1086"
  %"$consume_1093" = sub i64 %"$gasrem_1089", 80
  store i64 %"$consume_1093", i64* @_gasrem, align 8
  %"$execptr_load_1094" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_55_1095" = alloca %Int256, align 8
  %"$$arg1_55_1096" = load %Int256, %Int256* %"$arg1_55", align 8
  store %Int256 %"$$arg1_55_1096", %Int256* %"$mul_$arg1_55_1095", align 8
  %"$mul_$arg2_56_1097" = alloca %Int256, align 8
  %"$$arg2_56_1098" = load %Int256, %Int256* %"$arg2_56", align 8
  store %Int256 %"$$arg2_56_1098", %Int256* %"$mul_$arg2_56_1097", align 8
  %"$mul_call_1099" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1094", %Int256* %"$mul_$arg1_55_1095", %Int256* %"$mul_$arg2_56_1097"), !dbg !222
  %"$mul_1101" = load %Int256, %Int256* %"$mul_call_1099", align 8
  store %Int256 %"$mul_1101", %Int256* %"$res_57", align 8, !dbg !222
  %"$gasrem_1102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1103" = icmp ugt i64 1, %"$gasrem_1102"
  br i1 %"$gascmp_1103", label %"$out_of_gas_1104", label %"$have_gas_1105"

"$out_of_gas_1104":                               ; preds = %"$have_gas_1092"
  call void @_out_of_gas()
  br label %"$have_gas_1105"

"$have_gas_1105":                                 ; preds = %"$out_of_gas_1104", %"$have_gas_1092"
  %"$consume_1106" = sub i64 %"$gasrem_1102", 1
  store i64 %"$consume_1106", i64* @_gasrem, align 8
  %"$res__58" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__58", metadata !223, metadata !DIExpression()), !dbg !224
  %"$gasrem_1107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1108" = icmp ugt i64 1, %"$gasrem_1107"
  br i1 %"$gascmp_1108", label %"$out_of_gas_1109", label %"$have_gas_1110"

"$out_of_gas_1109":                               ; preds = %"$have_gas_1105"
  call void @_out_of_gas()
  br label %"$have_gas_1110"

"$have_gas_1110":                                 ; preds = %"$out_of_gas_1109", %"$have_gas_1105"
  %"$consume_1111" = sub i64 %"$gasrem_1107", 1
  store i64 %"$consume_1111", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__58", align 8, !dbg !225
  %"$gasrem_1112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1113" = icmp ugt i64 1, %"$gasrem_1112"
  br i1 %"$gascmp_1113", label %"$out_of_gas_1114", label %"$have_gas_1115"

"$out_of_gas_1114":                               ; preds = %"$have_gas_1110"
  call void @_out_of_gas()
  br label %"$have_gas_1115"

"$have_gas_1115":                                 ; preds = %"$out_of_gas_1114", %"$have_gas_1110"
  %"$consume_1116" = sub i64 %"$gasrem_1112", 1
  store i64 %"$consume_1116", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__59", metadata !226, metadata !DIExpression()), !dbg !227
  %"$gasrem_1118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1119" = icmp ugt i64 16, %"$gasrem_1118"
  br i1 %"$gascmp_1119", label %"$out_of_gas_1120", label %"$have_gas_1121"

"$out_of_gas_1120":                               ; preds = %"$have_gas_1115"
  call void @_out_of_gas()
  br label %"$have_gas_1121"

"$have_gas_1121":                                 ; preds = %"$out_of_gas_1120", %"$have_gas_1115"
  %"$consume_1122" = sub i64 %"$gasrem_1118", 16
  store i64 %"$consume_1122", i64* @_gasrem, align 8
  %"$execptr_load_1123" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_1124" = alloca %Int256, align 8
  %"$$res_57_1125" = load %Int256, %Int256* %"$res_57", align 8
  store %Int256 %"$$res_57_1125", %Int256* %"$eq_$res_57_1124", align 8
  %"$eq_$res__58_1126" = alloca %Int256, align 8
  %"$$res__58_1127" = load %Int256, %Int256* %"$res__58", align 8
  store %Int256 %"$$res__58_1127", %Int256* %"$eq_$res__58_1126", align 8
  %"$eq_call_1128" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1123", %Int256* %"$eq_$res_57_1124", %Int256* %"$eq_$res__58_1126"), !dbg !228
  store %TName_Bool* %"$eq_call_1128", %TName_Bool** %"$test__59", align 8, !dbg !228
  %"$gasrem_1130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1131" = icmp ugt i64 1, %"$gasrem_1130"
  br i1 %"$gascmp_1131", label %"$out_of_gas_1132", label %"$have_gas_1133"

"$out_of_gas_1132":                               ; preds = %"$have_gas_1121"
  call void @_out_of_gas()
  br label %"$have_gas_1133"

"$have_gas_1133":                                 ; preds = %"$out_of_gas_1132", %"$have_gas_1121"
  %"$consume_1134" = sub i64 %"$gasrem_1130", 1
  store i64 %"$consume_1134", i64* @_gasrem, align 8
  %"$BoolUtils.andb_145" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1135" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1136" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1135", 0
  %"$BoolUtils.andb_envptr_1137" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1135", 1
  %"$$test_54_1138" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1139" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1136"(i8* %"$BoolUtils.andb_envptr_1137", %TName_Bool* %"$$test_54_1138"), !dbg !229
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1139", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8, !dbg !229
  %"$BoolUtils.andb_146" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_146", metadata !230, metadata !DIExpression()), !dbg !229
  %"$$BoolUtils.andb_145_1140" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$$BoolUtils.andb_145_fptr_1141" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_1140", 0
  %"$$BoolUtils.andb_145_envptr_1142" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_1140", 1
  %"$$test__59_1143" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_145_call_1144" = call %TName_Bool* %"$$BoolUtils.andb_145_fptr_1141"(i8* %"$$BoolUtils.andb_145_envptr_1142", %TName_Bool* %"$$test__59_1143"), !dbg !229
  store %TName_Bool* %"$$BoolUtils.andb_145_call_1144", %TName_Bool** %"$BoolUtils.andb_146", align 8, !dbg !229
  %"$$BoolUtils.andb_146_1145" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_146", align 8
  store %TName_Bool* %"$$BoolUtils.andb_146_1145", %TName_Bool** %"$test_60", align 8, !dbg !229
  %"$gasrem_1146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1147" = icmp ugt i64 1, %"$gasrem_1146"
  br i1 %"$gascmp_1147", label %"$out_of_gas_1148", label %"$have_gas_1149"

"$out_of_gas_1148":                               ; preds = %"$have_gas_1133"
  call void @_out_of_gas()
  br label %"$have_gas_1149"

"$have_gas_1149":                                 ; preds = %"$out_of_gas_1148", %"$have_gas_1133"
  %"$consume_1150" = sub i64 %"$gasrem_1146", 1
  store i64 %"$consume_1150", i64* @_gasrem, align 8
  %"$arg1_61" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_61", metadata !231, metadata !DIExpression()), !dbg !232
  %"$gasrem_1151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1152" = icmp ugt i64 1, %"$gasrem_1151"
  br i1 %"$gascmp_1152", label %"$out_of_gas_1153", label %"$have_gas_1154"

"$out_of_gas_1153":                               ; preds = %"$have_gas_1149"
  call void @_out_of_gas()
  br label %"$have_gas_1154"

"$have_gas_1154":                                 ; preds = %"$out_of_gas_1153", %"$have_gas_1149"
  %"$consume_1155" = sub i64 %"$gasrem_1151", 1
  store i64 %"$consume_1155", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105727 }, %Int256* %"$arg1_61", align 8, !dbg !233
  %"$gasrem_1156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1157" = icmp ugt i64 1, %"$gasrem_1156"
  br i1 %"$gascmp_1157", label %"$out_of_gas_1158", label %"$have_gas_1159"

"$out_of_gas_1158":                               ; preds = %"$have_gas_1154"
  call void @_out_of_gas()
  br label %"$have_gas_1159"

"$have_gas_1159":                                 ; preds = %"$out_of_gas_1158", %"$have_gas_1154"
  %"$consume_1160" = sub i64 %"$gasrem_1156", 1
  store i64 %"$consume_1160", i64* @_gasrem, align 8
  %"$arg2_62" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_62", metadata !234, metadata !DIExpression()), !dbg !235
  %"$gasrem_1161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1162" = icmp ugt i64 1, %"$gasrem_1161"
  br i1 %"$gascmp_1162", label %"$out_of_gas_1163", label %"$have_gas_1164"

"$out_of_gas_1163":                               ; preds = %"$have_gas_1159"
  call void @_out_of_gas()
  br label %"$have_gas_1164"

"$have_gas_1164":                                 ; preds = %"$out_of_gas_1163", %"$have_gas_1159"
  %"$consume_1165" = sub i64 %"$gasrem_1161", 1
  store i64 %"$consume_1165", i64* @_gasrem, align 8
  store %Int256 { i256 -170141183460469231731687303715884105728 }, %Int256* %"$arg2_62", align 8, !dbg !236
  %"$gasrem_1166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1167" = icmp ugt i64 1, %"$gasrem_1166"
  br i1 %"$gascmp_1167", label %"$out_of_gas_1168", label %"$have_gas_1169"

"$out_of_gas_1168":                               ; preds = %"$have_gas_1164"
  call void @_out_of_gas()
  br label %"$have_gas_1169"

"$have_gas_1169":                                 ; preds = %"$out_of_gas_1168", %"$have_gas_1164"
  %"$consume_1170" = sub i64 %"$gasrem_1166", 1
  store i64 %"$consume_1170", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_66", metadata !237, metadata !DIExpression()), !dbg !238
  %"$gasrem_1171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1172" = icmp ugt i64 1, %"$gasrem_1171"
  br i1 %"$gascmp_1172", label %"$out_of_gas_1173", label %"$have_gas_1174"

"$out_of_gas_1173":                               ; preds = %"$have_gas_1169"
  call void @_out_of_gas()
  br label %"$have_gas_1174"

"$have_gas_1174":                                 ; preds = %"$out_of_gas_1173", %"$have_gas_1169"
  %"$consume_1175" = sub i64 %"$gasrem_1171", 1
  store i64 %"$consume_1175", i64* @_gasrem, align 8
  %"$res_63" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_63", metadata !239, metadata !DIExpression()), !dbg !240
  %"$gasrem_1177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1178" = icmp ugt i64 80, %"$gasrem_1177"
  br i1 %"$gascmp_1178", label %"$out_of_gas_1179", label %"$have_gas_1180"

"$out_of_gas_1179":                               ; preds = %"$have_gas_1174"
  call void @_out_of_gas()
  br label %"$have_gas_1180"

"$have_gas_1180":                                 ; preds = %"$out_of_gas_1179", %"$have_gas_1174"
  %"$consume_1181" = sub i64 %"$gasrem_1177", 80
  store i64 %"$consume_1181", i64* @_gasrem, align 8
  %"$execptr_load_1182" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_61_1183" = alloca %Int256, align 8
  %"$$arg1_61_1184" = load %Int256, %Int256* %"$arg1_61", align 8
  store %Int256 %"$$arg1_61_1184", %Int256* %"$mul_$arg1_61_1183", align 8
  %"$mul_$arg2_62_1185" = alloca %Int256, align 8
  %"$$arg2_62_1186" = load %Int256, %Int256* %"$arg2_62", align 8
  store %Int256 %"$$arg2_62_1186", %Int256* %"$mul_$arg2_62_1185", align 8
  %"$mul_call_1187" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1182", %Int256* %"$mul_$arg1_61_1183", %Int256* %"$mul_$arg2_62_1185"), !dbg !241
  %"$mul_1189" = load %Int256, %Int256* %"$mul_call_1187", align 8
  store %Int256 %"$mul_1189", %Int256* %"$res_63", align 8, !dbg !241
  %"$gasrem_1190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1191" = icmp ugt i64 1, %"$gasrem_1190"
  br i1 %"$gascmp_1191", label %"$out_of_gas_1192", label %"$have_gas_1193"

"$out_of_gas_1192":                               ; preds = %"$have_gas_1180"
  call void @_out_of_gas()
  br label %"$have_gas_1193"

"$have_gas_1193":                                 ; preds = %"$out_of_gas_1192", %"$have_gas_1180"
  %"$consume_1194" = sub i64 %"$gasrem_1190", 1
  store i64 %"$consume_1194", i64* @_gasrem, align 8
  %"$res__64" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__64", metadata !242, metadata !DIExpression()), !dbg !243
  %"$gasrem_1195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1196" = icmp ugt i64 1, %"$gasrem_1195"
  br i1 %"$gascmp_1196", label %"$out_of_gas_1197", label %"$have_gas_1198"

"$out_of_gas_1197":                               ; preds = %"$have_gas_1193"
  call void @_out_of_gas()
  br label %"$have_gas_1198"

"$have_gas_1198":                                 ; preds = %"$out_of_gas_1197", %"$have_gas_1193"
  %"$consume_1199" = sub i64 %"$gasrem_1195", 1
  store i64 %"$consume_1199", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Int256* %"$res__64", align 8, !dbg !244
  %"$gasrem_1200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1201" = icmp ugt i64 1, %"$gasrem_1200"
  br i1 %"$gascmp_1201", label %"$out_of_gas_1202", label %"$have_gas_1203"

"$out_of_gas_1202":                               ; preds = %"$have_gas_1198"
  call void @_out_of_gas()
  br label %"$have_gas_1203"

"$have_gas_1203":                                 ; preds = %"$out_of_gas_1202", %"$have_gas_1198"
  %"$consume_1204" = sub i64 %"$gasrem_1200", 1
  store i64 %"$consume_1204", i64* @_gasrem, align 8
  %"$test__65" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__65", metadata !245, metadata !DIExpression()), !dbg !246
  %"$gasrem_1206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1207" = icmp ugt i64 16, %"$gasrem_1206"
  br i1 %"$gascmp_1207", label %"$out_of_gas_1208", label %"$have_gas_1209"

"$out_of_gas_1208":                               ; preds = %"$have_gas_1203"
  call void @_out_of_gas()
  br label %"$have_gas_1209"

"$have_gas_1209":                                 ; preds = %"$out_of_gas_1208", %"$have_gas_1203"
  %"$consume_1210" = sub i64 %"$gasrem_1206", 16
  store i64 %"$consume_1210", i64* @_gasrem, align 8
  %"$execptr_load_1211" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_63_1212" = alloca %Int256, align 8
  %"$$res_63_1213" = load %Int256, %Int256* %"$res_63", align 8
  store %Int256 %"$$res_63_1213", %Int256* %"$eq_$res_63_1212", align 8
  %"$eq_$res__64_1214" = alloca %Int256, align 8
  %"$$res__64_1215" = load %Int256, %Int256* %"$res__64", align 8
  store %Int256 %"$$res__64_1215", %Int256* %"$eq_$res__64_1214", align 8
  %"$eq_call_1216" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1211", %Int256* %"$eq_$res_63_1212", %Int256* %"$eq_$res__64_1214"), !dbg !247
  store %TName_Bool* %"$eq_call_1216", %TName_Bool** %"$test__65", align 8, !dbg !247
  %"$gasrem_1218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1219" = icmp ugt i64 1, %"$gasrem_1218"
  br i1 %"$gascmp_1219", label %"$out_of_gas_1220", label %"$have_gas_1221"

"$out_of_gas_1220":                               ; preds = %"$have_gas_1209"
  call void @_out_of_gas()
  br label %"$have_gas_1221"

"$have_gas_1221":                                 ; preds = %"$out_of_gas_1220", %"$have_gas_1209"
  %"$consume_1222" = sub i64 %"$gasrem_1218", 1
  store i64 %"$consume_1222", i64* @_gasrem, align 8
  %"$BoolUtils.andb_147" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1223" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1224" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1223", 0
  %"$BoolUtils.andb_envptr_1225" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1223", 1
  %"$$test_60_1226" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1227" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1224"(i8* %"$BoolUtils.andb_envptr_1225", %TName_Bool* %"$$test_60_1226"), !dbg !248
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1227", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8, !dbg !248
  %"$BoolUtils.andb_148" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_148", metadata !249, metadata !DIExpression()), !dbg !248
  %"$$BoolUtils.andb_147_1228" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$$BoolUtils.andb_147_fptr_1229" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_1228", 0
  %"$$BoolUtils.andb_147_envptr_1230" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_1228", 1
  %"$$test__65_1231" = load %TName_Bool*, %TName_Bool** %"$test__65", align 8
  %"$$BoolUtils.andb_147_call_1232" = call %TName_Bool* %"$$BoolUtils.andb_147_fptr_1229"(i8* %"$$BoolUtils.andb_147_envptr_1230", %TName_Bool* %"$$test__65_1231"), !dbg !248
  store %TName_Bool* %"$$BoolUtils.andb_147_call_1232", %TName_Bool** %"$BoolUtils.andb_148", align 8, !dbg !248
  %"$$BoolUtils.andb_148_1233" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_148", align 8
  store %TName_Bool* %"$$BoolUtils.andb_148_1233", %TName_Bool** %"$test_66", align 8, !dbg !248
  %"$gasrem_1234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1235" = icmp ugt i64 1, %"$gasrem_1234"
  br i1 %"$gascmp_1235", label %"$out_of_gas_1236", label %"$have_gas_1237"

"$out_of_gas_1236":                               ; preds = %"$have_gas_1221"
  call void @_out_of_gas()
  br label %"$have_gas_1237"

"$have_gas_1237":                                 ; preds = %"$out_of_gas_1236", %"$have_gas_1221"
  %"$consume_1238" = sub i64 %"$gasrem_1234", 1
  store i64 %"$consume_1238", i64* @_gasrem, align 8
  %"$arg1_67" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_67", metadata !250, metadata !DIExpression()), !dbg !251
  %"$gasrem_1239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1240" = icmp ugt i64 1, %"$gasrem_1239"
  br i1 %"$gascmp_1240", label %"$out_of_gas_1241", label %"$have_gas_1242"

"$out_of_gas_1241":                               ; preds = %"$have_gas_1237"
  call void @_out_of_gas()
  br label %"$have_gas_1242"

"$have_gas_1242":                                 ; preds = %"$out_of_gas_1241", %"$have_gas_1237"
  %"$consume_1243" = sub i64 %"$gasrem_1239", 1
  store i64 %"$consume_1243", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105727 }, %Int256* %"$arg1_67", align 8, !dbg !252
  %"$gasrem_1244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1245" = icmp ugt i64 1, %"$gasrem_1244"
  br i1 %"$gascmp_1245", label %"$out_of_gas_1246", label %"$have_gas_1247"

"$out_of_gas_1246":                               ; preds = %"$have_gas_1242"
  call void @_out_of_gas()
  br label %"$have_gas_1247"

"$have_gas_1247":                                 ; preds = %"$out_of_gas_1246", %"$have_gas_1242"
  %"$consume_1248" = sub i64 %"$gasrem_1244", 1
  store i64 %"$consume_1248", i64* @_gasrem, align 8
  %"$arg2_68" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_68", metadata !253, metadata !DIExpression()), !dbg !254
  %"$gasrem_1249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1250" = icmp ugt i64 1, %"$gasrem_1249"
  br i1 %"$gascmp_1250", label %"$out_of_gas_1251", label %"$have_gas_1252"

"$out_of_gas_1251":                               ; preds = %"$have_gas_1247"
  call void @_out_of_gas()
  br label %"$have_gas_1252"

"$have_gas_1252":                                 ; preds = %"$out_of_gas_1251", %"$have_gas_1247"
  %"$consume_1253" = sub i64 %"$gasrem_1249", 1
  store i64 %"$consume_1253", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105728 }, %Int256* %"$arg2_68", align 8, !dbg !255
  %"$gasrem_1254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1255" = icmp ugt i64 1, %"$gasrem_1254"
  br i1 %"$gascmp_1255", label %"$out_of_gas_1256", label %"$have_gas_1257"

"$out_of_gas_1256":                               ; preds = %"$have_gas_1252"
  call void @_out_of_gas()
  br label %"$have_gas_1257"

"$have_gas_1257":                                 ; preds = %"$out_of_gas_1256", %"$have_gas_1252"
  %"$consume_1258" = sub i64 %"$gasrem_1254", 1
  store i64 %"$consume_1258", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_72", metadata !256, metadata !DIExpression()), !dbg !257
  %"$gasrem_1259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1260" = icmp ugt i64 1, %"$gasrem_1259"
  br i1 %"$gascmp_1260", label %"$out_of_gas_1261", label %"$have_gas_1262"

"$out_of_gas_1261":                               ; preds = %"$have_gas_1257"
  call void @_out_of_gas()
  br label %"$have_gas_1262"

"$have_gas_1262":                                 ; preds = %"$out_of_gas_1261", %"$have_gas_1257"
  %"$consume_1263" = sub i64 %"$gasrem_1259", 1
  store i64 %"$consume_1263", i64* @_gasrem, align 8
  %"$res_69" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_69", metadata !258, metadata !DIExpression()), !dbg !259
  %"$gasrem_1265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1266" = icmp ugt i64 80, %"$gasrem_1265"
  br i1 %"$gascmp_1266", label %"$out_of_gas_1267", label %"$have_gas_1268"

"$out_of_gas_1267":                               ; preds = %"$have_gas_1262"
  call void @_out_of_gas()
  br label %"$have_gas_1268"

"$have_gas_1268":                                 ; preds = %"$out_of_gas_1267", %"$have_gas_1262"
  %"$consume_1269" = sub i64 %"$gasrem_1265", 80
  store i64 %"$consume_1269", i64* @_gasrem, align 8
  %"$execptr_load_1270" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_67_1271" = alloca %Int256, align 8
  %"$$arg1_67_1272" = load %Int256, %Int256* %"$arg1_67", align 8
  store %Int256 %"$$arg1_67_1272", %Int256* %"$mul_$arg1_67_1271", align 8
  %"$mul_$arg2_68_1273" = alloca %Int256, align 8
  %"$$arg2_68_1274" = load %Int256, %Int256* %"$arg2_68", align 8
  store %Int256 %"$$arg2_68_1274", %Int256* %"$mul_$arg2_68_1273", align 8
  %"$mul_call_1275" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1270", %Int256* %"$mul_$arg1_67_1271", %Int256* %"$mul_$arg2_68_1273"), !dbg !260
  %"$mul_1277" = load %Int256, %Int256* %"$mul_call_1275", align 8
  store %Int256 %"$mul_1277", %Int256* %"$res_69", align 8, !dbg !260
  %"$gasrem_1278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1279" = icmp ugt i64 1, %"$gasrem_1278"
  br i1 %"$gascmp_1279", label %"$out_of_gas_1280", label %"$have_gas_1281"

"$out_of_gas_1280":                               ; preds = %"$have_gas_1268"
  call void @_out_of_gas()
  br label %"$have_gas_1281"

"$have_gas_1281":                                 ; preds = %"$out_of_gas_1280", %"$have_gas_1268"
  %"$consume_1282" = sub i64 %"$gasrem_1278", 1
  store i64 %"$consume_1282", i64* @_gasrem, align 8
  %"$res__70" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__70", metadata !261, metadata !DIExpression()), !dbg !262
  %"$gasrem_1283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1284" = icmp ugt i64 1, %"$gasrem_1283"
  br i1 %"$gascmp_1284", label %"$out_of_gas_1285", label %"$have_gas_1286"

"$out_of_gas_1285":                               ; preds = %"$have_gas_1281"
  call void @_out_of_gas()
  br label %"$have_gas_1286"

"$have_gas_1286":                                 ; preds = %"$out_of_gas_1285", %"$have_gas_1281"
  %"$consume_1287" = sub i64 %"$gasrem_1283", 1
  store i64 %"$consume_1287", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Int256* %"$res__70", align 8, !dbg !263
  %"$gasrem_1288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1289" = icmp ugt i64 1, %"$gasrem_1288"
  br i1 %"$gascmp_1289", label %"$out_of_gas_1290", label %"$have_gas_1291"

"$out_of_gas_1290":                               ; preds = %"$have_gas_1286"
  call void @_out_of_gas()
  br label %"$have_gas_1291"

"$have_gas_1291":                                 ; preds = %"$out_of_gas_1290", %"$have_gas_1286"
  %"$consume_1292" = sub i64 %"$gasrem_1288", 1
  store i64 %"$consume_1292", i64* @_gasrem, align 8
  %"$test__71" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__71", metadata !264, metadata !DIExpression()), !dbg !265
  %"$gasrem_1294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1295" = icmp ugt i64 16, %"$gasrem_1294"
  br i1 %"$gascmp_1295", label %"$out_of_gas_1296", label %"$have_gas_1297"

"$out_of_gas_1296":                               ; preds = %"$have_gas_1291"
  call void @_out_of_gas()
  br label %"$have_gas_1297"

"$have_gas_1297":                                 ; preds = %"$out_of_gas_1296", %"$have_gas_1291"
  %"$consume_1298" = sub i64 %"$gasrem_1294", 16
  store i64 %"$consume_1298", i64* @_gasrem, align 8
  %"$execptr_load_1299" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_69_1300" = alloca %Int256, align 8
  %"$$res_69_1301" = load %Int256, %Int256* %"$res_69", align 8
  store %Int256 %"$$res_69_1301", %Int256* %"$eq_$res_69_1300", align 8
  %"$eq_$res__70_1302" = alloca %Int256, align 8
  %"$$res__70_1303" = load %Int256, %Int256* %"$res__70", align 8
  store %Int256 %"$$res__70_1303", %Int256* %"$eq_$res__70_1302", align 8
  %"$eq_call_1304" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1299", %Int256* %"$eq_$res_69_1300", %Int256* %"$eq_$res__70_1302"), !dbg !266
  store %TName_Bool* %"$eq_call_1304", %TName_Bool** %"$test__71", align 8, !dbg !266
  %"$gasrem_1306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1307" = icmp ugt i64 1, %"$gasrem_1306"
  br i1 %"$gascmp_1307", label %"$out_of_gas_1308", label %"$have_gas_1309"

"$out_of_gas_1308":                               ; preds = %"$have_gas_1297"
  call void @_out_of_gas()
  br label %"$have_gas_1309"

"$have_gas_1309":                                 ; preds = %"$out_of_gas_1308", %"$have_gas_1297"
  %"$consume_1310" = sub i64 %"$gasrem_1306", 1
  store i64 %"$consume_1310", i64* @_gasrem, align 8
  %"$BoolUtils.andb_149" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1311" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1312" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1311", 0
  %"$BoolUtils.andb_envptr_1313" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1311", 1
  %"$$test_66_1314" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  %"$BoolUtils.andb_call_1315" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1312"(i8* %"$BoolUtils.andb_envptr_1313", %TName_Bool* %"$$test_66_1314"), !dbg !267
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1315", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8, !dbg !267
  %"$BoolUtils.andb_150" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_150", metadata !268, metadata !DIExpression()), !dbg !267
  %"$$BoolUtils.andb_149_1316" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$$BoolUtils.andb_149_fptr_1317" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1316", 0
  %"$$BoolUtils.andb_149_envptr_1318" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1316", 1
  %"$$test__71_1319" = load %TName_Bool*, %TName_Bool** %"$test__71", align 8
  %"$$BoolUtils.andb_149_call_1320" = call %TName_Bool* %"$$BoolUtils.andb_149_fptr_1317"(i8* %"$$BoolUtils.andb_149_envptr_1318", %TName_Bool* %"$$test__71_1319"), !dbg !267
  store %TName_Bool* %"$$BoolUtils.andb_149_call_1320", %TName_Bool** %"$BoolUtils.andb_150", align 8, !dbg !267
  %"$$BoolUtils.andb_150_1321" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_150", align 8
  store %TName_Bool* %"$$BoolUtils.andb_150_1321", %TName_Bool** %"$test_72", align 8, !dbg !267
  %"$gasrem_1322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1323" = icmp ugt i64 1, %"$gasrem_1322"
  br i1 %"$gascmp_1323", label %"$out_of_gas_1324", label %"$have_gas_1325"

"$out_of_gas_1324":                               ; preds = %"$have_gas_1309"
  call void @_out_of_gas()
  br label %"$have_gas_1325"

"$have_gas_1325":                                 ; preds = %"$out_of_gas_1324", %"$have_gas_1309"
  %"$consume_1326" = sub i64 %"$gasrem_1322", 1
  store i64 %"$consume_1326", i64* @_gasrem, align 8
  %"$arg1_73" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_73", metadata !269, metadata !DIExpression()), !dbg !271
  %"$gasrem_1327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1328" = icmp ugt i64 1, %"$gasrem_1327"
  br i1 %"$gascmp_1328", label %"$out_of_gas_1329", label %"$have_gas_1330"

"$out_of_gas_1329":                               ; preds = %"$have_gas_1325"
  call void @_out_of_gas()
  br label %"$have_gas_1330"

"$have_gas_1330":                                 ; preds = %"$out_of_gas_1329", %"$have_gas_1325"
  %"$consume_1331" = sub i64 %"$gasrem_1327", 1
  store i64 %"$consume_1331", i64* @_gasrem, align 8
  store %Uint256 { i256 170141183460469231731687303715884105727 }, %Uint256* %"$arg1_73", align 8, !dbg !272
  %"$gasrem_1332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1333" = icmp ugt i64 1, %"$gasrem_1332"
  br i1 %"$gascmp_1333", label %"$out_of_gas_1334", label %"$have_gas_1335"

"$out_of_gas_1334":                               ; preds = %"$have_gas_1330"
  call void @_out_of_gas()
  br label %"$have_gas_1335"

"$have_gas_1335":                                 ; preds = %"$out_of_gas_1334", %"$have_gas_1330"
  %"$consume_1336" = sub i64 %"$gasrem_1332", 1
  store i64 %"$consume_1336", i64* @_gasrem, align 8
  %"$arg2_74" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_74", metadata !273, metadata !DIExpression()), !dbg !274
  %"$gasrem_1337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1338" = icmp ugt i64 1, %"$gasrem_1337"
  br i1 %"$gascmp_1338", label %"$out_of_gas_1339", label %"$have_gas_1340"

"$out_of_gas_1339":                               ; preds = %"$have_gas_1335"
  call void @_out_of_gas()
  br label %"$have_gas_1340"

"$have_gas_1340":                                 ; preds = %"$out_of_gas_1339", %"$have_gas_1335"
  %"$consume_1341" = sub i64 %"$gasrem_1337", 1
  store i64 %"$consume_1341", i64* @_gasrem, align 8
  store %Uint256 { i256 170141183460469231731687303715884105728 }, %Uint256* %"$arg2_74", align 8, !dbg !275
  %"$gasrem_1342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1343" = icmp ugt i64 1, %"$gasrem_1342"
  br i1 %"$gascmp_1343", label %"$out_of_gas_1344", label %"$have_gas_1345"

"$out_of_gas_1344":                               ; preds = %"$have_gas_1340"
  call void @_out_of_gas()
  br label %"$have_gas_1345"

"$have_gas_1345":                                 ; preds = %"$out_of_gas_1344", %"$have_gas_1340"
  %"$consume_1346" = sub i64 %"$gasrem_1342", 1
  store i64 %"$consume_1346", i64* @_gasrem, align 8
  %"$test_78" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_78", metadata !276, metadata !DIExpression()), !dbg !277
  %"$gasrem_1347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1348" = icmp ugt i64 1, %"$gasrem_1347"
  br i1 %"$gascmp_1348", label %"$out_of_gas_1349", label %"$have_gas_1350"

"$out_of_gas_1349":                               ; preds = %"$have_gas_1345"
  call void @_out_of_gas()
  br label %"$have_gas_1350"

"$have_gas_1350":                                 ; preds = %"$out_of_gas_1349", %"$have_gas_1345"
  %"$consume_1351" = sub i64 %"$gasrem_1347", 1
  store i64 %"$consume_1351", i64* @_gasrem, align 8
  %"$res_75" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_75", metadata !278, metadata !DIExpression()), !dbg !279
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 80, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$have_gas_1350"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$have_gas_1350"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 80
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  %"$execptr_load_1358" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_73_1359" = alloca %Uint256, align 8
  %"$$arg1_73_1360" = load %Uint256, %Uint256* %"$arg1_73", align 8
  store %Uint256 %"$$arg1_73_1360", %Uint256* %"$mul_$arg1_73_1359", align 8
  %"$mul_$arg2_74_1361" = alloca %Uint256, align 8
  %"$$arg2_74_1362" = load %Uint256, %Uint256* %"$arg2_74", align 8
  store %Uint256 %"$$arg2_74_1362", %Uint256* %"$mul_$arg2_74_1361", align 8
  %"$mul_call_1363" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1358", %Uint256* %"$mul_$arg1_73_1359", %Uint256* %"$mul_$arg2_74_1361"), !dbg !280
  %"$mul_1365" = load %Uint256, %Uint256* %"$mul_call_1363", align 8
  store %Uint256 %"$mul_1365", %Uint256* %"$res_75", align 8, !dbg !280
  %"$gasrem_1366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1367" = icmp ugt i64 1, %"$gasrem_1366"
  br i1 %"$gascmp_1367", label %"$out_of_gas_1368", label %"$have_gas_1369"

"$out_of_gas_1368":                               ; preds = %"$have_gas_1356"
  call void @_out_of_gas()
  br label %"$have_gas_1369"

"$have_gas_1369":                                 ; preds = %"$out_of_gas_1368", %"$have_gas_1356"
  %"$consume_1370" = sub i64 %"$gasrem_1366", 1
  store i64 %"$consume_1370", i64* @_gasrem, align 8
  %"$res__76" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__76", metadata !281, metadata !DIExpression()), !dbg !282
  %"$gasrem_1371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1372" = icmp ugt i64 1, %"$gasrem_1371"
  br i1 %"$gascmp_1372", label %"$out_of_gas_1373", label %"$have_gas_1374"

"$out_of_gas_1373":                               ; preds = %"$have_gas_1369"
  call void @_out_of_gas()
  br label %"$have_gas_1374"

"$have_gas_1374":                                 ; preds = %"$out_of_gas_1373", %"$have_gas_1369"
  %"$consume_1375" = sub i64 %"$gasrem_1371", 1
  store i64 %"$consume_1375", i64* @_gasrem, align 8
  store %Uint256 { i256 28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Uint256* %"$res__76", align 8, !dbg !283
  %"$gasrem_1376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1377" = icmp ugt i64 1, %"$gasrem_1376"
  br i1 %"$gascmp_1377", label %"$out_of_gas_1378", label %"$have_gas_1379"

"$out_of_gas_1378":                               ; preds = %"$have_gas_1374"
  call void @_out_of_gas()
  br label %"$have_gas_1379"

"$have_gas_1379":                                 ; preds = %"$out_of_gas_1378", %"$have_gas_1374"
  %"$consume_1380" = sub i64 %"$gasrem_1376", 1
  store i64 %"$consume_1380", i64* @_gasrem, align 8
  %"$test__77" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__77", metadata !284, metadata !DIExpression()), !dbg !285
  %"$gasrem_1382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1383" = icmp ugt i64 16, %"$gasrem_1382"
  br i1 %"$gascmp_1383", label %"$out_of_gas_1384", label %"$have_gas_1385"

"$out_of_gas_1384":                               ; preds = %"$have_gas_1379"
  call void @_out_of_gas()
  br label %"$have_gas_1385"

"$have_gas_1385":                                 ; preds = %"$out_of_gas_1384", %"$have_gas_1379"
  %"$consume_1386" = sub i64 %"$gasrem_1382", 16
  store i64 %"$consume_1386", i64* @_gasrem, align 8
  %"$execptr_load_1387" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_75_1388" = alloca %Uint256, align 8
  %"$$res_75_1389" = load %Uint256, %Uint256* %"$res_75", align 8
  store %Uint256 %"$$res_75_1389", %Uint256* %"$eq_$res_75_1388", align 8
  %"$eq_$res__76_1390" = alloca %Uint256, align 8
  %"$$res__76_1391" = load %Uint256, %Uint256* %"$res__76", align 8
  store %Uint256 %"$$res__76_1391", %Uint256* %"$eq_$res__76_1390", align 8
  %"$eq_call_1392" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1387", %Uint256* %"$eq_$res_75_1388", %Uint256* %"$eq_$res__76_1390"), !dbg !286
  store %TName_Bool* %"$eq_call_1392", %TName_Bool** %"$test__77", align 8, !dbg !286
  %"$gasrem_1394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1395" = icmp ugt i64 1, %"$gasrem_1394"
  br i1 %"$gascmp_1395", label %"$out_of_gas_1396", label %"$have_gas_1397"

"$out_of_gas_1396":                               ; preds = %"$have_gas_1385"
  call void @_out_of_gas()
  br label %"$have_gas_1397"

"$have_gas_1397":                                 ; preds = %"$out_of_gas_1396", %"$have_gas_1385"
  %"$consume_1398" = sub i64 %"$gasrem_1394", 1
  store i64 %"$consume_1398", i64* @_gasrem, align 8
  %"$BoolUtils.andb_151" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1399" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1400" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1399", 0
  %"$BoolUtils.andb_envptr_1401" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1399", 1
  %"$$test_72_1402" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  %"$BoolUtils.andb_call_1403" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1400"(i8* %"$BoolUtils.andb_envptr_1401", %TName_Bool* %"$$test_72_1402"), !dbg !287
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1403", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8, !dbg !287
  %"$BoolUtils.andb_152" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_152", metadata !288, metadata !DIExpression()), !dbg !287
  %"$$BoolUtils.andb_151_1404" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$$BoolUtils.andb_151_fptr_1405" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1404", 0
  %"$$BoolUtils.andb_151_envptr_1406" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1404", 1
  %"$$test__77_1407" = load %TName_Bool*, %TName_Bool** %"$test__77", align 8
  %"$$BoolUtils.andb_151_call_1408" = call %TName_Bool* %"$$BoolUtils.andb_151_fptr_1405"(i8* %"$$BoolUtils.andb_151_envptr_1406", %TName_Bool* %"$$test__77_1407"), !dbg !287
  store %TName_Bool* %"$$BoolUtils.andb_151_call_1408", %TName_Bool** %"$BoolUtils.andb_152", align 8, !dbg !287
  %"$$BoolUtils.andb_152_1409" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_152", align 8
  store %TName_Bool* %"$$BoolUtils.andb_152_1409", %TName_Bool** %"$test_78", align 8, !dbg !287
  %"$gasrem_1410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1411" = icmp ugt i64 1, %"$gasrem_1410"
  br i1 %"$gascmp_1411", label %"$out_of_gas_1412", label %"$have_gas_1413"

"$out_of_gas_1412":                               ; preds = %"$have_gas_1397"
  call void @_out_of_gas()
  br label %"$have_gas_1413"

"$have_gas_1413":                                 ; preds = %"$out_of_gas_1412", %"$have_gas_1397"
  %"$consume_1414" = sub i64 %"$gasrem_1410", 1
  store i64 %"$consume_1414", i64* @_gasrem, align 8
  %"$arg1_79" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_79", metadata !289, metadata !DIExpression()), !dbg !290
  %"$gasrem_1415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1416" = icmp ugt i64 1, %"$gasrem_1415"
  br i1 %"$gascmp_1416", label %"$out_of_gas_1417", label %"$have_gas_1418"

"$out_of_gas_1417":                               ; preds = %"$have_gas_1413"
  call void @_out_of_gas()
  br label %"$have_gas_1418"

"$have_gas_1418":                                 ; preds = %"$out_of_gas_1417", %"$have_gas_1413"
  %"$consume_1419" = sub i64 %"$gasrem_1415", 1
  store i64 %"$consume_1419", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$arg1_79", align 8, !dbg !291
  %"$gasrem_1420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1421" = icmp ugt i64 1, %"$gasrem_1420"
  br i1 %"$gascmp_1421", label %"$out_of_gas_1422", label %"$have_gas_1423"

"$out_of_gas_1422":                               ; preds = %"$have_gas_1418"
  call void @_out_of_gas()
  br label %"$have_gas_1423"

"$have_gas_1423":                                 ; preds = %"$out_of_gas_1422", %"$have_gas_1418"
  %"$consume_1424" = sub i64 %"$gasrem_1420", 1
  store i64 %"$consume_1424", i64* @_gasrem, align 8
  %"$arg2_80" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_80", metadata !292, metadata !DIExpression()), !dbg !293
  %"$gasrem_1425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1426" = icmp ugt i64 1, %"$gasrem_1425"
  br i1 %"$gascmp_1426", label %"$out_of_gas_1427", label %"$have_gas_1428"

"$out_of_gas_1427":                               ; preds = %"$have_gas_1423"
  call void @_out_of_gas()
  br label %"$have_gas_1428"

"$have_gas_1428":                                 ; preds = %"$out_of_gas_1427", %"$have_gas_1423"
  %"$consume_1429" = sub i64 %"$gasrem_1425", 1
  store i64 %"$consume_1429", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg2_80", align 8, !dbg !294
  %"$gasrem_1430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1431" = icmp ugt i64 1, %"$gasrem_1430"
  br i1 %"$gascmp_1431", label %"$out_of_gas_1432", label %"$have_gas_1433"

"$out_of_gas_1432":                               ; preds = %"$have_gas_1428"
  call void @_out_of_gas()
  br label %"$have_gas_1433"

"$have_gas_1433":                                 ; preds = %"$out_of_gas_1432", %"$have_gas_1428"
  %"$consume_1434" = sub i64 %"$gasrem_1430", 1
  store i64 %"$consume_1434", i64* @_gasrem, align 8
  %"$test_84" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_84", metadata !295, metadata !DIExpression()), !dbg !296
  %"$gasrem_1435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1436" = icmp ugt i64 1, %"$gasrem_1435"
  br i1 %"$gascmp_1436", label %"$out_of_gas_1437", label %"$have_gas_1438"

"$out_of_gas_1437":                               ; preds = %"$have_gas_1433"
  call void @_out_of_gas()
  br label %"$have_gas_1438"

"$have_gas_1438":                                 ; preds = %"$out_of_gas_1437", %"$have_gas_1433"
  %"$consume_1439" = sub i64 %"$gasrem_1435", 1
  store i64 %"$consume_1439", i64* @_gasrem, align 8
  %"$res_81" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_81", metadata !297, metadata !DIExpression()), !dbg !298
  %"$gasrem_1441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1442" = icmp ugt i64 80, %"$gasrem_1441"
  br i1 %"$gascmp_1442", label %"$out_of_gas_1443", label %"$have_gas_1444"

"$out_of_gas_1443":                               ; preds = %"$have_gas_1438"
  call void @_out_of_gas()
  br label %"$have_gas_1444"

"$have_gas_1444":                                 ; preds = %"$out_of_gas_1443", %"$have_gas_1438"
  %"$consume_1445" = sub i64 %"$gasrem_1441", 80
  store i64 %"$consume_1445", i64* @_gasrem, align 8
  %"$execptr_load_1446" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_79_1447" = alloca %Uint256, align 8
  %"$$arg1_79_1448" = load %Uint256, %Uint256* %"$arg1_79", align 8
  store %Uint256 %"$$arg1_79_1448", %Uint256* %"$mul_$arg1_79_1447", align 8
  %"$mul_$arg2_80_1449" = alloca %Uint256, align 8
  %"$$arg2_80_1450" = load %Uint256, %Uint256* %"$arg2_80", align 8
  store %Uint256 %"$$arg2_80_1450", %Uint256* %"$mul_$arg2_80_1449", align 8
  %"$mul_call_1451" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1446", %Uint256* %"$mul_$arg1_79_1447", %Uint256* %"$mul_$arg2_80_1449"), !dbg !299
  %"$mul_1453" = load %Uint256, %Uint256* %"$mul_call_1451", align 8
  store %Uint256 %"$mul_1453", %Uint256* %"$res_81", align 8, !dbg !299
  %"$gasrem_1454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1455" = icmp ugt i64 1, %"$gasrem_1454"
  br i1 %"$gascmp_1455", label %"$out_of_gas_1456", label %"$have_gas_1457"

"$out_of_gas_1456":                               ; preds = %"$have_gas_1444"
  call void @_out_of_gas()
  br label %"$have_gas_1457"

"$have_gas_1457":                                 ; preds = %"$out_of_gas_1456", %"$have_gas_1444"
  %"$consume_1458" = sub i64 %"$gasrem_1454", 1
  store i64 %"$consume_1458", i64* @_gasrem, align 8
  %"$res__82" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__82", metadata !300, metadata !DIExpression()), !dbg !301
  %"$gasrem_1459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1460" = icmp ugt i64 1, %"$gasrem_1459"
  br i1 %"$gascmp_1460", label %"$out_of_gas_1461", label %"$have_gas_1462"

"$out_of_gas_1461":                               ; preds = %"$have_gas_1457"
  call void @_out_of_gas()
  br label %"$have_gas_1462"

"$have_gas_1462":                                 ; preds = %"$out_of_gas_1461", %"$have_gas_1457"
  %"$consume_1463" = sub i64 %"$gasrem_1459", 1
  store i64 %"$consume_1463", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$res__82", align 8, !dbg !302
  %"$gasrem_1464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1465" = icmp ugt i64 1, %"$gasrem_1464"
  br i1 %"$gascmp_1465", label %"$out_of_gas_1466", label %"$have_gas_1467"

"$out_of_gas_1466":                               ; preds = %"$have_gas_1462"
  call void @_out_of_gas()
  br label %"$have_gas_1467"

"$have_gas_1467":                                 ; preds = %"$out_of_gas_1466", %"$have_gas_1462"
  %"$consume_1468" = sub i64 %"$gasrem_1464", 1
  store i64 %"$consume_1468", i64* @_gasrem, align 8
  %"$test__83" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__83", metadata !303, metadata !DIExpression()), !dbg !304
  %"$gasrem_1470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1471" = icmp ugt i64 16, %"$gasrem_1470"
  br i1 %"$gascmp_1471", label %"$out_of_gas_1472", label %"$have_gas_1473"

"$out_of_gas_1472":                               ; preds = %"$have_gas_1467"
  call void @_out_of_gas()
  br label %"$have_gas_1473"

"$have_gas_1473":                                 ; preds = %"$out_of_gas_1472", %"$have_gas_1467"
  %"$consume_1474" = sub i64 %"$gasrem_1470", 16
  store i64 %"$consume_1474", i64* @_gasrem, align 8
  %"$execptr_load_1475" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_81_1476" = alloca %Uint256, align 8
  %"$$res_81_1477" = load %Uint256, %Uint256* %"$res_81", align 8
  store %Uint256 %"$$res_81_1477", %Uint256* %"$eq_$res_81_1476", align 8
  %"$eq_$res__82_1478" = alloca %Uint256, align 8
  %"$$res__82_1479" = load %Uint256, %Uint256* %"$res__82", align 8
  store %Uint256 %"$$res__82_1479", %Uint256* %"$eq_$res__82_1478", align 8
  %"$eq_call_1480" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1475", %Uint256* %"$eq_$res_81_1476", %Uint256* %"$eq_$res__82_1478"), !dbg !305
  store %TName_Bool* %"$eq_call_1480", %TName_Bool** %"$test__83", align 8, !dbg !305
  %"$gasrem_1482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1483" = icmp ugt i64 1, %"$gasrem_1482"
  br i1 %"$gascmp_1483", label %"$out_of_gas_1484", label %"$have_gas_1485"

"$out_of_gas_1484":                               ; preds = %"$have_gas_1473"
  call void @_out_of_gas()
  br label %"$have_gas_1485"

"$have_gas_1485":                                 ; preds = %"$out_of_gas_1484", %"$have_gas_1473"
  %"$consume_1486" = sub i64 %"$gasrem_1482", 1
  store i64 %"$consume_1486", i64* @_gasrem, align 8
  %"$BoolUtils.andb_153" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1487" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1488" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1487", 0
  %"$BoolUtils.andb_envptr_1489" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1487", 1
  %"$$test_78_1490" = load %TName_Bool*, %TName_Bool** %"$test_78", align 8
  %"$BoolUtils.andb_call_1491" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1488"(i8* %"$BoolUtils.andb_envptr_1489", %TName_Bool* %"$$test_78_1490"), !dbg !306
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1491", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8, !dbg !306
  %"$BoolUtils.andb_154" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_154", metadata !307, metadata !DIExpression()), !dbg !306
  %"$$BoolUtils.andb_153_1492" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$$BoolUtils.andb_153_fptr_1493" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1492", 0
  %"$$BoolUtils.andb_153_envptr_1494" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1492", 1
  %"$$test__83_1495" = load %TName_Bool*, %TName_Bool** %"$test__83", align 8
  %"$$BoolUtils.andb_153_call_1496" = call %TName_Bool* %"$$BoolUtils.andb_153_fptr_1493"(i8* %"$$BoolUtils.andb_153_envptr_1494", %TName_Bool* %"$$test__83_1495"), !dbg !306
  store %TName_Bool* %"$$BoolUtils.andb_153_call_1496", %TName_Bool** %"$BoolUtils.andb_154", align 8, !dbg !306
  %"$$BoolUtils.andb_154_1497" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_154", align 8
  store %TName_Bool* %"$$BoolUtils.andb_154_1497", %TName_Bool** %"$test_84", align 8, !dbg !306
  %"$gasrem_1498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1499" = icmp ugt i64 1, %"$gasrem_1498"
  br i1 %"$gascmp_1499", label %"$out_of_gas_1500", label %"$have_gas_1501"

"$out_of_gas_1500":                               ; preds = %"$have_gas_1485"
  call void @_out_of_gas()
  br label %"$have_gas_1501"

"$have_gas_1501":                                 ; preds = %"$out_of_gas_1500", %"$have_gas_1485"
  %"$consume_1502" = sub i64 %"$gasrem_1498", 1
  store i64 %"$consume_1502", i64* @_gasrem, align 8
  %"$arg1_85" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_85", metadata !308, metadata !DIExpression()), !dbg !309
  %"$gasrem_1503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1504" = icmp ugt i64 1, %"$gasrem_1503"
  br i1 %"$gascmp_1504", label %"$out_of_gas_1505", label %"$have_gas_1506"

"$out_of_gas_1505":                               ; preds = %"$have_gas_1501"
  call void @_out_of_gas()
  br label %"$have_gas_1506"

"$have_gas_1506":                                 ; preds = %"$out_of_gas_1505", %"$have_gas_1501"
  %"$consume_1507" = sub i64 %"$gasrem_1503", 1
  store i64 %"$consume_1507", i64* @_gasrem, align 8
  store %Uint256 { i256 2 }, %Uint256* %"$arg1_85", align 8, !dbg !310
  %"$gasrem_1508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1509" = icmp ugt i64 1, %"$gasrem_1508"
  br i1 %"$gascmp_1509", label %"$out_of_gas_1510", label %"$have_gas_1511"

"$out_of_gas_1510":                               ; preds = %"$have_gas_1506"
  call void @_out_of_gas()
  br label %"$have_gas_1511"

"$have_gas_1511":                                 ; preds = %"$out_of_gas_1510", %"$have_gas_1506"
  %"$consume_1512" = sub i64 %"$gasrem_1508", 1
  store i64 %"$consume_1512", i64* @_gasrem, align 8
  %"$arg2_86" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_86", metadata !311, metadata !DIExpression()), !dbg !312
  %"$gasrem_1513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1514" = icmp ugt i64 1, %"$gasrem_1513"
  br i1 %"$gascmp_1514", label %"$out_of_gas_1515", label %"$have_gas_1516"

"$out_of_gas_1515":                               ; preds = %"$have_gas_1511"
  call void @_out_of_gas()
  br label %"$have_gas_1516"

"$have_gas_1516":                                 ; preds = %"$out_of_gas_1515", %"$have_gas_1511"
  %"$consume_1517" = sub i64 %"$gasrem_1513", 1
  store i64 %"$consume_1517", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %"$arg2_86", align 8, !dbg !313
  %"$gasrem_1518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1519" = icmp ugt i64 1, %"$gasrem_1518"
  br i1 %"$gascmp_1519", label %"$out_of_gas_1520", label %"$have_gas_1521"

"$out_of_gas_1520":                               ; preds = %"$have_gas_1516"
  call void @_out_of_gas()
  br label %"$have_gas_1521"

"$have_gas_1521":                                 ; preds = %"$out_of_gas_1520", %"$have_gas_1516"
  %"$consume_1522" = sub i64 %"$gasrem_1518", 1
  store i64 %"$consume_1522", i64* @_gasrem, align 8
  %"$test_90" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_90", metadata !314, metadata !DIExpression()), !dbg !315
  %"$gasrem_1523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1524" = icmp ugt i64 1, %"$gasrem_1523"
  br i1 %"$gascmp_1524", label %"$out_of_gas_1525", label %"$have_gas_1526"

"$out_of_gas_1525":                               ; preds = %"$have_gas_1521"
  call void @_out_of_gas()
  br label %"$have_gas_1526"

"$have_gas_1526":                                 ; preds = %"$out_of_gas_1525", %"$have_gas_1521"
  %"$consume_1527" = sub i64 %"$gasrem_1523", 1
  store i64 %"$consume_1527", i64* @_gasrem, align 8
  %"$res_87" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_87", metadata !316, metadata !DIExpression()), !dbg !317
  %"$gasrem_1529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1530" = icmp ugt i64 80, %"$gasrem_1529"
  br i1 %"$gascmp_1530", label %"$out_of_gas_1531", label %"$have_gas_1532"

"$out_of_gas_1531":                               ; preds = %"$have_gas_1526"
  call void @_out_of_gas()
  br label %"$have_gas_1532"

"$have_gas_1532":                                 ; preds = %"$out_of_gas_1531", %"$have_gas_1526"
  %"$consume_1533" = sub i64 %"$gasrem_1529", 80
  store i64 %"$consume_1533", i64* @_gasrem, align 8
  %"$execptr_load_1534" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_85_1535" = alloca %Uint256, align 8
  %"$$arg1_85_1536" = load %Uint256, %Uint256* %"$arg1_85", align 8
  store %Uint256 %"$$arg1_85_1536", %Uint256* %"$mul_$arg1_85_1535", align 8
  %"$mul_$arg2_86_1537" = alloca %Uint256, align 8
  %"$$arg2_86_1538" = load %Uint256, %Uint256* %"$arg2_86", align 8
  store %Uint256 %"$$arg2_86_1538", %Uint256* %"$mul_$arg2_86_1537", align 8
  %"$mul_call_1539" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1534", %Uint256* %"$mul_$arg1_85_1535", %Uint256* %"$mul_$arg2_86_1537"), !dbg !318
  %"$mul_1541" = load %Uint256, %Uint256* %"$mul_call_1539", align 8
  store %Uint256 %"$mul_1541", %Uint256* %"$res_87", align 8, !dbg !318
  %"$gasrem_1542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1543" = icmp ugt i64 1, %"$gasrem_1542"
  br i1 %"$gascmp_1543", label %"$out_of_gas_1544", label %"$have_gas_1545"

"$out_of_gas_1544":                               ; preds = %"$have_gas_1532"
  call void @_out_of_gas()
  br label %"$have_gas_1545"

"$have_gas_1545":                                 ; preds = %"$out_of_gas_1544", %"$have_gas_1532"
  %"$consume_1546" = sub i64 %"$gasrem_1542", 1
  store i64 %"$consume_1546", i64* @_gasrem, align 8
  %"$res__88" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__88", metadata !319, metadata !DIExpression()), !dbg !320
  %"$gasrem_1547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1548" = icmp ugt i64 1, %"$gasrem_1547"
  br i1 %"$gascmp_1548", label %"$out_of_gas_1549", label %"$have_gas_1550"

"$out_of_gas_1549":                               ; preds = %"$have_gas_1545"
  call void @_out_of_gas()
  br label %"$have_gas_1550"

"$have_gas_1550":                                 ; preds = %"$out_of_gas_1549", %"$have_gas_1545"
  %"$consume_1551" = sub i64 %"$gasrem_1547", 1
  store i64 %"$consume_1551", i64* @_gasrem, align 8
  store %Uint256 { i256 -2 }, %Uint256* %"$res__88", align 8, !dbg !321
  %"$gasrem_1552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1553" = icmp ugt i64 1, %"$gasrem_1552"
  br i1 %"$gascmp_1553", label %"$out_of_gas_1554", label %"$have_gas_1555"

"$out_of_gas_1554":                               ; preds = %"$have_gas_1550"
  call void @_out_of_gas()
  br label %"$have_gas_1555"

"$have_gas_1555":                                 ; preds = %"$out_of_gas_1554", %"$have_gas_1550"
  %"$consume_1556" = sub i64 %"$gasrem_1552", 1
  store i64 %"$consume_1556", i64* @_gasrem, align 8
  %"$test__89" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__89", metadata !322, metadata !DIExpression()), !dbg !323
  %"$gasrem_1558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1559" = icmp ugt i64 16, %"$gasrem_1558"
  br i1 %"$gascmp_1559", label %"$out_of_gas_1560", label %"$have_gas_1561"

"$out_of_gas_1560":                               ; preds = %"$have_gas_1555"
  call void @_out_of_gas()
  br label %"$have_gas_1561"

"$have_gas_1561":                                 ; preds = %"$out_of_gas_1560", %"$have_gas_1555"
  %"$consume_1562" = sub i64 %"$gasrem_1558", 16
  store i64 %"$consume_1562", i64* @_gasrem, align 8
  %"$execptr_load_1563" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_87_1564" = alloca %Uint256, align 8
  %"$$res_87_1565" = load %Uint256, %Uint256* %"$res_87", align 8
  store %Uint256 %"$$res_87_1565", %Uint256* %"$eq_$res_87_1564", align 8
  %"$eq_$res__88_1566" = alloca %Uint256, align 8
  %"$$res__88_1567" = load %Uint256, %Uint256* %"$res__88", align 8
  store %Uint256 %"$$res__88_1567", %Uint256* %"$eq_$res__88_1566", align 8
  %"$eq_call_1568" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1563", %Uint256* %"$eq_$res_87_1564", %Uint256* %"$eq_$res__88_1566"), !dbg !324
  store %TName_Bool* %"$eq_call_1568", %TName_Bool** %"$test__89", align 8, !dbg !324
  %"$gasrem_1570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1571" = icmp ugt i64 1, %"$gasrem_1570"
  br i1 %"$gascmp_1571", label %"$out_of_gas_1572", label %"$have_gas_1573"

"$out_of_gas_1572":                               ; preds = %"$have_gas_1561"
  call void @_out_of_gas()
  br label %"$have_gas_1573"

"$have_gas_1573":                                 ; preds = %"$out_of_gas_1572", %"$have_gas_1561"
  %"$consume_1574" = sub i64 %"$gasrem_1570", 1
  store i64 %"$consume_1574", i64* @_gasrem, align 8
  %"$BoolUtils.andb_155" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1575" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1576" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1575", 0
  %"$BoolUtils.andb_envptr_1577" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1575", 1
  %"$$test_84_1578" = load %TName_Bool*, %TName_Bool** %"$test_84", align 8
  %"$BoolUtils.andb_call_1579" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1576"(i8* %"$BoolUtils.andb_envptr_1577", %TName_Bool* %"$$test_84_1578"), !dbg !325
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1579", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8, !dbg !325
  %"$BoolUtils.andb_156" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_156", metadata !326, metadata !DIExpression()), !dbg !325
  %"$$BoolUtils.andb_155_1580" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$$BoolUtils.andb_155_fptr_1581" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1580", 0
  %"$$BoolUtils.andb_155_envptr_1582" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1580", 1
  %"$$test__89_1583" = load %TName_Bool*, %TName_Bool** %"$test__89", align 8
  %"$$BoolUtils.andb_155_call_1584" = call %TName_Bool* %"$$BoolUtils.andb_155_fptr_1581"(i8* %"$$BoolUtils.andb_155_envptr_1582", %TName_Bool* %"$$test__89_1583"), !dbg !325
  store %TName_Bool* %"$$BoolUtils.andb_155_call_1584", %TName_Bool** %"$BoolUtils.andb_156", align 8, !dbg !325
  %"$$BoolUtils.andb_156_1585" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_156", align 8
  store %TName_Bool* %"$$BoolUtils.andb_156_1585", %TName_Bool** %"$test_90", align 8, !dbg !325
  %"$gasrem_1586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1587" = icmp ugt i64 1, %"$gasrem_1586"
  br i1 %"$gascmp_1587", label %"$out_of_gas_1588", label %"$have_gas_1589"

"$out_of_gas_1588":                               ; preds = %"$have_gas_1573"
  call void @_out_of_gas()
  br label %"$have_gas_1589"

"$have_gas_1589":                                 ; preds = %"$out_of_gas_1588", %"$have_gas_1573"
  %"$consume_1590" = sub i64 %"$gasrem_1586", 1
  store i64 %"$consume_1590", i64* @_gasrem, align 8
  %"$arg1_91" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_91", metadata !327, metadata !DIExpression()), !dbg !328
  %"$gasrem_1591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1592" = icmp ugt i64 1, %"$gasrem_1591"
  br i1 %"$gascmp_1592", label %"$out_of_gas_1593", label %"$have_gas_1594"

"$out_of_gas_1593":                               ; preds = %"$have_gas_1589"
  call void @_out_of_gas()
  br label %"$have_gas_1594"

"$have_gas_1594":                                 ; preds = %"$out_of_gas_1593", %"$have_gas_1589"
  %"$consume_1595" = sub i64 %"$gasrem_1591", 1
  store i64 %"$consume_1595", i64* @_gasrem, align 8
  store %Int256 { i256 2 }, %Int256* %"$arg1_91", align 8, !dbg !329
  %"$gasrem_1596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1597" = icmp ugt i64 1, %"$gasrem_1596"
  br i1 %"$gascmp_1597", label %"$out_of_gas_1598", label %"$have_gas_1599"

"$out_of_gas_1598":                               ; preds = %"$have_gas_1594"
  call void @_out_of_gas()
  br label %"$have_gas_1599"

"$have_gas_1599":                                 ; preds = %"$out_of_gas_1598", %"$have_gas_1594"
  %"$consume_1600" = sub i64 %"$gasrem_1596", 1
  store i64 %"$consume_1600", i64* @_gasrem, align 8
  %"$arg2_92" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_92", metadata !330, metadata !DIExpression()), !dbg !331
  %"$gasrem_1601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1602" = icmp ugt i64 1, %"$gasrem_1601"
  br i1 %"$gascmp_1602", label %"$out_of_gas_1603", label %"$have_gas_1604"

"$out_of_gas_1603":                               ; preds = %"$have_gas_1599"
  call void @_out_of_gas()
  br label %"$have_gas_1604"

"$have_gas_1604":                                 ; preds = %"$out_of_gas_1603", %"$have_gas_1599"
  %"$consume_1605" = sub i64 %"$gasrem_1601", 1
  store i64 %"$consume_1605", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_92", align 8, !dbg !332
  %"$gasrem_1606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1607" = icmp ugt i64 1, %"$gasrem_1606"
  br i1 %"$gascmp_1607", label %"$out_of_gas_1608", label %"$have_gas_1609"

"$out_of_gas_1608":                               ; preds = %"$have_gas_1604"
  call void @_out_of_gas()
  br label %"$have_gas_1609"

"$have_gas_1609":                                 ; preds = %"$out_of_gas_1608", %"$have_gas_1604"
  %"$consume_1610" = sub i64 %"$gasrem_1606", 1
  store i64 %"$consume_1610", i64* @_gasrem, align 8
  %"$test_96" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_96", metadata !333, metadata !DIExpression()), !dbg !334
  %"$gasrem_1611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1612" = icmp ugt i64 1, %"$gasrem_1611"
  br i1 %"$gascmp_1612", label %"$out_of_gas_1613", label %"$have_gas_1614"

"$out_of_gas_1613":                               ; preds = %"$have_gas_1609"
  call void @_out_of_gas()
  br label %"$have_gas_1614"

"$have_gas_1614":                                 ; preds = %"$out_of_gas_1613", %"$have_gas_1609"
  %"$consume_1615" = sub i64 %"$gasrem_1611", 1
  store i64 %"$consume_1615", i64* @_gasrem, align 8
  %"$res_93" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_93", metadata !335, metadata !DIExpression()), !dbg !336
  %"$gasrem_1617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1618" = icmp ugt i64 80, %"$gasrem_1617"
  br i1 %"$gascmp_1618", label %"$out_of_gas_1619", label %"$have_gas_1620"

"$out_of_gas_1619":                               ; preds = %"$have_gas_1614"
  call void @_out_of_gas()
  br label %"$have_gas_1620"

"$have_gas_1620":                                 ; preds = %"$out_of_gas_1619", %"$have_gas_1614"
  %"$consume_1621" = sub i64 %"$gasrem_1617", 80
  store i64 %"$consume_1621", i64* @_gasrem, align 8
  %"$execptr_load_1622" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_91_1623" = alloca %Int256, align 8
  %"$$arg1_91_1624" = load %Int256, %Int256* %"$arg1_91", align 8
  store %Int256 %"$$arg1_91_1624", %Int256* %"$mul_$arg1_91_1623", align 8
  %"$mul_$arg2_92_1625" = alloca %Int256, align 8
  %"$$arg2_92_1626" = load %Int256, %Int256* %"$arg2_92", align 8
  store %Int256 %"$$arg2_92_1626", %Int256* %"$mul_$arg2_92_1625", align 8
  %"$mul_call_1627" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1622", %Int256* %"$mul_$arg1_91_1623", %Int256* %"$mul_$arg2_92_1625"), !dbg !337
  %"$mul_1629" = load %Int256, %Int256* %"$mul_call_1627", align 8
  store %Int256 %"$mul_1629", %Int256* %"$res_93", align 8, !dbg !337
  %"$gasrem_1630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1631" = icmp ugt i64 1, %"$gasrem_1630"
  br i1 %"$gascmp_1631", label %"$out_of_gas_1632", label %"$have_gas_1633"

"$out_of_gas_1632":                               ; preds = %"$have_gas_1620"
  call void @_out_of_gas()
  br label %"$have_gas_1633"

"$have_gas_1633":                                 ; preds = %"$out_of_gas_1632", %"$have_gas_1620"
  %"$consume_1634" = sub i64 %"$gasrem_1630", 1
  store i64 %"$consume_1634", i64* @_gasrem, align 8
  %"$res__94" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__94", metadata !338, metadata !DIExpression()), !dbg !339
  %"$gasrem_1635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1636" = icmp ugt i64 1, %"$gasrem_1635"
  br i1 %"$gascmp_1636", label %"$out_of_gas_1637", label %"$have_gas_1638"

"$out_of_gas_1637":                               ; preds = %"$have_gas_1633"
  call void @_out_of_gas()
  br label %"$have_gas_1638"

"$have_gas_1638":                                 ; preds = %"$out_of_gas_1637", %"$have_gas_1633"
  %"$consume_1639" = sub i64 %"$gasrem_1635", 1
  store i64 %"$consume_1639", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__94", align 8, !dbg !340
  %"$gasrem_1640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1641" = icmp ugt i64 1, %"$gasrem_1640"
  br i1 %"$gascmp_1641", label %"$out_of_gas_1642", label %"$have_gas_1643"

"$out_of_gas_1642":                               ; preds = %"$have_gas_1638"
  call void @_out_of_gas()
  br label %"$have_gas_1643"

"$have_gas_1643":                                 ; preds = %"$out_of_gas_1642", %"$have_gas_1638"
  %"$consume_1644" = sub i64 %"$gasrem_1640", 1
  store i64 %"$consume_1644", i64* @_gasrem, align 8
  %"$test__95" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__95", metadata !341, metadata !DIExpression()), !dbg !342
  %"$gasrem_1646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1647" = icmp ugt i64 16, %"$gasrem_1646"
  br i1 %"$gascmp_1647", label %"$out_of_gas_1648", label %"$have_gas_1649"

"$out_of_gas_1648":                               ; preds = %"$have_gas_1643"
  call void @_out_of_gas()
  br label %"$have_gas_1649"

"$have_gas_1649":                                 ; preds = %"$out_of_gas_1648", %"$have_gas_1643"
  %"$consume_1650" = sub i64 %"$gasrem_1646", 16
  store i64 %"$consume_1650", i64* @_gasrem, align 8
  %"$execptr_load_1651" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_93_1652" = alloca %Int256, align 8
  %"$$res_93_1653" = load %Int256, %Int256* %"$res_93", align 8
  store %Int256 %"$$res_93_1653", %Int256* %"$eq_$res_93_1652", align 8
  %"$eq_$res__94_1654" = alloca %Int256, align 8
  %"$$res__94_1655" = load %Int256, %Int256* %"$res__94", align 8
  store %Int256 %"$$res__94_1655", %Int256* %"$eq_$res__94_1654", align 8
  %"$eq_call_1656" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1651", %Int256* %"$eq_$res_93_1652", %Int256* %"$eq_$res__94_1654"), !dbg !343
  store %TName_Bool* %"$eq_call_1656", %TName_Bool** %"$test__95", align 8, !dbg !343
  %"$gasrem_1658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1659" = icmp ugt i64 1, %"$gasrem_1658"
  br i1 %"$gascmp_1659", label %"$out_of_gas_1660", label %"$have_gas_1661"

"$out_of_gas_1660":                               ; preds = %"$have_gas_1649"
  call void @_out_of_gas()
  br label %"$have_gas_1661"

"$have_gas_1661":                                 ; preds = %"$out_of_gas_1660", %"$have_gas_1649"
  %"$consume_1662" = sub i64 %"$gasrem_1658", 1
  store i64 %"$consume_1662", i64* @_gasrem, align 8
  %"$BoolUtils.andb_157" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1663" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1664" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1663", 0
  %"$BoolUtils.andb_envptr_1665" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1663", 1
  %"$$test_90_1666" = load %TName_Bool*, %TName_Bool** %"$test_90", align 8
  %"$BoolUtils.andb_call_1667" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1664"(i8* %"$BoolUtils.andb_envptr_1665", %TName_Bool* %"$$test_90_1666"), !dbg !344
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1667", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8, !dbg !344
  %"$BoolUtils.andb_158" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_158", metadata !345, metadata !DIExpression()), !dbg !344
  %"$$BoolUtils.andb_157_1668" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$$BoolUtils.andb_157_fptr_1669" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1668", 0
  %"$$BoolUtils.andb_157_envptr_1670" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1668", 1
  %"$$test__95_1671" = load %TName_Bool*, %TName_Bool** %"$test__95", align 8
  %"$$BoolUtils.andb_157_call_1672" = call %TName_Bool* %"$$BoolUtils.andb_157_fptr_1669"(i8* %"$$BoolUtils.andb_157_envptr_1670", %TName_Bool* %"$$test__95_1671"), !dbg !344
  store %TName_Bool* %"$$BoolUtils.andb_157_call_1672", %TName_Bool** %"$BoolUtils.andb_158", align 8, !dbg !344
  %"$$BoolUtils.andb_158_1673" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_158", align 8
  store %TName_Bool* %"$$BoolUtils.andb_158_1673", %TName_Bool** %"$test_96", align 8, !dbg !344
  %"$gasrem_1674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1675" = icmp ugt i64 1, %"$gasrem_1674"
  br i1 %"$gascmp_1675", label %"$out_of_gas_1676", label %"$have_gas_1677"

"$out_of_gas_1676":                               ; preds = %"$have_gas_1661"
  call void @_out_of_gas()
  br label %"$have_gas_1677"

"$have_gas_1677":                                 ; preds = %"$out_of_gas_1676", %"$have_gas_1661"
  %"$consume_1678" = sub i64 %"$gasrem_1674", 1
  store i64 %"$consume_1678", i64* @_gasrem, align 8
  %"$arg1_97" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_97", metadata !346, metadata !DIExpression()), !dbg !347
  %"$gasrem_1679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1680" = icmp ugt i64 1, %"$gasrem_1679"
  br i1 %"$gascmp_1680", label %"$out_of_gas_1681", label %"$have_gas_1682"

"$out_of_gas_1681":                               ; preds = %"$have_gas_1677"
  call void @_out_of_gas()
  br label %"$have_gas_1682"

"$have_gas_1682":                                 ; preds = %"$out_of_gas_1681", %"$have_gas_1677"
  %"$consume_1683" = sub i64 %"$gasrem_1679", 1
  store i64 %"$consume_1683", i64* @_gasrem, align 8
  store %Int256 { i256 -2 }, %Int256* %"$arg1_97", align 8, !dbg !348
  %"$gasrem_1684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1685" = icmp ugt i64 1, %"$gasrem_1684"
  br i1 %"$gascmp_1685", label %"$out_of_gas_1686", label %"$have_gas_1687"

"$out_of_gas_1686":                               ; preds = %"$have_gas_1682"
  call void @_out_of_gas()
  br label %"$have_gas_1687"

"$have_gas_1687":                                 ; preds = %"$out_of_gas_1686", %"$have_gas_1682"
  %"$consume_1688" = sub i64 %"$gasrem_1684", 1
  store i64 %"$consume_1688", i64* @_gasrem, align 8
  %"$arg2_98" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_98", metadata !349, metadata !DIExpression()), !dbg !350
  %"$gasrem_1689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1690" = icmp ugt i64 1, %"$gasrem_1689"
  br i1 %"$gascmp_1690", label %"$out_of_gas_1691", label %"$have_gas_1692"

"$out_of_gas_1691":                               ; preds = %"$have_gas_1687"
  call void @_out_of_gas()
  br label %"$have_gas_1692"

"$have_gas_1692":                                 ; preds = %"$out_of_gas_1691", %"$have_gas_1687"
  %"$consume_1693" = sub i64 %"$gasrem_1689", 1
  store i64 %"$consume_1693", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_98", align 8, !dbg !351
  %"$gasrem_1694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1695" = icmp ugt i64 1, %"$gasrem_1694"
  br i1 %"$gascmp_1695", label %"$out_of_gas_1696", label %"$have_gas_1697"

"$out_of_gas_1696":                               ; preds = %"$have_gas_1692"
  call void @_out_of_gas()
  br label %"$have_gas_1697"

"$have_gas_1697":                                 ; preds = %"$out_of_gas_1696", %"$have_gas_1692"
  %"$consume_1698" = sub i64 %"$gasrem_1694", 1
  store i64 %"$consume_1698", i64* @_gasrem, align 8
  %"$test_102" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_102", metadata !352, metadata !DIExpression()), !dbg !353
  %"$gasrem_1699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1700" = icmp ugt i64 1, %"$gasrem_1699"
  br i1 %"$gascmp_1700", label %"$out_of_gas_1701", label %"$have_gas_1702"

"$out_of_gas_1701":                               ; preds = %"$have_gas_1697"
  call void @_out_of_gas()
  br label %"$have_gas_1702"

"$have_gas_1702":                                 ; preds = %"$out_of_gas_1701", %"$have_gas_1697"
  %"$consume_1703" = sub i64 %"$gasrem_1699", 1
  store i64 %"$consume_1703", i64* @_gasrem, align 8
  %"$res_99" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_99", metadata !354, metadata !DIExpression()), !dbg !355
  %"$gasrem_1705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1706" = icmp ugt i64 80, %"$gasrem_1705"
  br i1 %"$gascmp_1706", label %"$out_of_gas_1707", label %"$have_gas_1708"

"$out_of_gas_1707":                               ; preds = %"$have_gas_1702"
  call void @_out_of_gas()
  br label %"$have_gas_1708"

"$have_gas_1708":                                 ; preds = %"$out_of_gas_1707", %"$have_gas_1702"
  %"$consume_1709" = sub i64 %"$gasrem_1705", 80
  store i64 %"$consume_1709", i64* @_gasrem, align 8
  %"$execptr_load_1710" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_97_1711" = alloca %Int256, align 8
  %"$$arg1_97_1712" = load %Int256, %Int256* %"$arg1_97", align 8
  store %Int256 %"$$arg1_97_1712", %Int256* %"$mul_$arg1_97_1711", align 8
  %"$mul_$arg2_98_1713" = alloca %Int256, align 8
  %"$$arg2_98_1714" = load %Int256, %Int256* %"$arg2_98", align 8
  store %Int256 %"$$arg2_98_1714", %Int256* %"$mul_$arg2_98_1713", align 8
  %"$mul_call_1715" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1710", %Int256* %"$mul_$arg1_97_1711", %Int256* %"$mul_$arg2_98_1713"), !dbg !356
  %"$mul_1717" = load %Int256, %Int256* %"$mul_call_1715", align 8
  store %Int256 %"$mul_1717", %Int256* %"$res_99", align 8, !dbg !356
  %"$gasrem_1718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1719" = icmp ugt i64 1, %"$gasrem_1718"
  br i1 %"$gascmp_1719", label %"$out_of_gas_1720", label %"$have_gas_1721"

"$out_of_gas_1720":                               ; preds = %"$have_gas_1708"
  call void @_out_of_gas()
  br label %"$have_gas_1721"

"$have_gas_1721":                                 ; preds = %"$out_of_gas_1720", %"$have_gas_1708"
  %"$consume_1722" = sub i64 %"$gasrem_1718", 1
  store i64 %"$consume_1722", i64* @_gasrem, align 8
  %"$res__100" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__100", metadata !357, metadata !DIExpression()), !dbg !358
  %"$gasrem_1723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1724" = icmp ugt i64 1, %"$gasrem_1723"
  br i1 %"$gascmp_1724", label %"$out_of_gas_1725", label %"$have_gas_1726"

"$out_of_gas_1725":                               ; preds = %"$have_gas_1721"
  call void @_out_of_gas()
  br label %"$have_gas_1726"

"$have_gas_1726":                                 ; preds = %"$out_of_gas_1725", %"$have_gas_1721"
  %"$consume_1727" = sub i64 %"$gasrem_1723", 1
  store i64 %"$consume_1727", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__100", align 8, !dbg !359
  %"$gasrem_1728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1729" = icmp ugt i64 1, %"$gasrem_1728"
  br i1 %"$gascmp_1729", label %"$out_of_gas_1730", label %"$have_gas_1731"

"$out_of_gas_1730":                               ; preds = %"$have_gas_1726"
  call void @_out_of_gas()
  br label %"$have_gas_1731"

"$have_gas_1731":                                 ; preds = %"$out_of_gas_1730", %"$have_gas_1726"
  %"$consume_1732" = sub i64 %"$gasrem_1728", 1
  store i64 %"$consume_1732", i64* @_gasrem, align 8
  %"$test__101" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__101", metadata !360, metadata !DIExpression()), !dbg !361
  %"$gasrem_1734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1735" = icmp ugt i64 16, %"$gasrem_1734"
  br i1 %"$gascmp_1735", label %"$out_of_gas_1736", label %"$have_gas_1737"

"$out_of_gas_1736":                               ; preds = %"$have_gas_1731"
  call void @_out_of_gas()
  br label %"$have_gas_1737"

"$have_gas_1737":                                 ; preds = %"$out_of_gas_1736", %"$have_gas_1731"
  %"$consume_1738" = sub i64 %"$gasrem_1734", 16
  store i64 %"$consume_1738", i64* @_gasrem, align 8
  %"$execptr_load_1739" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_99_1740" = alloca %Int256, align 8
  %"$$res_99_1741" = load %Int256, %Int256* %"$res_99", align 8
  store %Int256 %"$$res_99_1741", %Int256* %"$eq_$res_99_1740", align 8
  %"$eq_$res__100_1742" = alloca %Int256, align 8
  %"$$res__100_1743" = load %Int256, %Int256* %"$res__100", align 8
  store %Int256 %"$$res__100_1743", %Int256* %"$eq_$res__100_1742", align 8
  %"$eq_call_1744" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1739", %Int256* %"$eq_$res_99_1740", %Int256* %"$eq_$res__100_1742"), !dbg !362
  store %TName_Bool* %"$eq_call_1744", %TName_Bool** %"$test__101", align 8, !dbg !362
  %"$gasrem_1746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1747" = icmp ugt i64 1, %"$gasrem_1746"
  br i1 %"$gascmp_1747", label %"$out_of_gas_1748", label %"$have_gas_1749"

"$out_of_gas_1748":                               ; preds = %"$have_gas_1737"
  call void @_out_of_gas()
  br label %"$have_gas_1749"

"$have_gas_1749":                                 ; preds = %"$out_of_gas_1748", %"$have_gas_1737"
  %"$consume_1750" = sub i64 %"$gasrem_1746", 1
  store i64 %"$consume_1750", i64* @_gasrem, align 8
  %"$BoolUtils.andb_159" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1751" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1752" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1751", 0
  %"$BoolUtils.andb_envptr_1753" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1751", 1
  %"$$test_96_1754" = load %TName_Bool*, %TName_Bool** %"$test_96", align 8
  %"$BoolUtils.andb_call_1755" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1752"(i8* %"$BoolUtils.andb_envptr_1753", %TName_Bool* %"$$test_96_1754"), !dbg !363
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1755", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8, !dbg !363
  %"$BoolUtils.andb_160" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_160", metadata !364, metadata !DIExpression()), !dbg !363
  %"$$BoolUtils.andb_159_1756" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$$BoolUtils.andb_159_fptr_1757" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1756", 0
  %"$$BoolUtils.andb_159_envptr_1758" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1756", 1
  %"$$test__101_1759" = load %TName_Bool*, %TName_Bool** %"$test__101", align 8
  %"$$BoolUtils.andb_159_call_1760" = call %TName_Bool* %"$$BoolUtils.andb_159_fptr_1757"(i8* %"$$BoolUtils.andb_159_envptr_1758", %TName_Bool* %"$$test__101_1759"), !dbg !363
  store %TName_Bool* %"$$BoolUtils.andb_159_call_1760", %TName_Bool** %"$BoolUtils.andb_160", align 8, !dbg !363
  %"$$BoolUtils.andb_160_1761" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_160", align 8
  store %TName_Bool* %"$$BoolUtils.andb_160_1761", %TName_Bool** %"$test_102", align 8, !dbg !363
  %"$gasrem_1762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1763" = icmp ugt i64 1, %"$gasrem_1762"
  br i1 %"$gascmp_1763", label %"$out_of_gas_1764", label %"$have_gas_1765"

"$out_of_gas_1764":                               ; preds = %"$have_gas_1749"
  call void @_out_of_gas()
  br label %"$have_gas_1765"

"$have_gas_1765":                                 ; preds = %"$out_of_gas_1764", %"$have_gas_1749"
  %"$consume_1766" = sub i64 %"$gasrem_1762", 1
  store i64 %"$consume_1766", i64* @_gasrem, align 8
  %"$arg1_103" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_103", metadata !365, metadata !DIExpression()), !dbg !366
  %"$gasrem_1767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1768" = icmp ugt i64 1, %"$gasrem_1767"
  br i1 %"$gascmp_1768", label %"$out_of_gas_1769", label %"$have_gas_1770"

"$out_of_gas_1769":                               ; preds = %"$have_gas_1765"
  call void @_out_of_gas()
  br label %"$have_gas_1770"

"$have_gas_1770":                                 ; preds = %"$out_of_gas_1769", %"$have_gas_1765"
  %"$consume_1771" = sub i64 %"$gasrem_1767", 1
  store i64 %"$consume_1771", i64* @_gasrem, align 8
  store %Int256 { i256 2 }, %Int256* %"$arg1_103", align 8, !dbg !367
  %"$gasrem_1772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1773" = icmp ugt i64 1, %"$gasrem_1772"
  br i1 %"$gascmp_1773", label %"$out_of_gas_1774", label %"$have_gas_1775"

"$out_of_gas_1774":                               ; preds = %"$have_gas_1770"
  call void @_out_of_gas()
  br label %"$have_gas_1775"

"$have_gas_1775":                                 ; preds = %"$out_of_gas_1774", %"$have_gas_1770"
  %"$consume_1776" = sub i64 %"$gasrem_1772", 1
  store i64 %"$consume_1776", i64* @_gasrem, align 8
  %"$arg2_104" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_104", metadata !368, metadata !DIExpression()), !dbg !369
  %"$gasrem_1777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1778" = icmp ugt i64 1, %"$gasrem_1777"
  br i1 %"$gascmp_1778", label %"$out_of_gas_1779", label %"$have_gas_1780"

"$out_of_gas_1779":                               ; preds = %"$have_gas_1775"
  call void @_out_of_gas()
  br label %"$have_gas_1780"

"$have_gas_1780":                                 ; preds = %"$out_of_gas_1779", %"$have_gas_1775"
  %"$consume_1781" = sub i64 %"$gasrem_1777", 1
  store i64 %"$consume_1781", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_104", align 8, !dbg !370
  %"$gasrem_1782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1783" = icmp ugt i64 1, %"$gasrem_1782"
  br i1 %"$gascmp_1783", label %"$out_of_gas_1784", label %"$have_gas_1785"

"$out_of_gas_1784":                               ; preds = %"$have_gas_1780"
  call void @_out_of_gas()
  br label %"$have_gas_1785"

"$have_gas_1785":                                 ; preds = %"$out_of_gas_1784", %"$have_gas_1780"
  %"$consume_1786" = sub i64 %"$gasrem_1782", 1
  store i64 %"$consume_1786", i64* @_gasrem, align 8
  %"$test_108" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_108", metadata !371, metadata !DIExpression()), !dbg !372
  %"$gasrem_1787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1788" = icmp ugt i64 1, %"$gasrem_1787"
  br i1 %"$gascmp_1788", label %"$out_of_gas_1789", label %"$have_gas_1790"

"$out_of_gas_1789":                               ; preds = %"$have_gas_1785"
  call void @_out_of_gas()
  br label %"$have_gas_1790"

"$have_gas_1790":                                 ; preds = %"$out_of_gas_1789", %"$have_gas_1785"
  %"$consume_1791" = sub i64 %"$gasrem_1787", 1
  store i64 %"$consume_1791", i64* @_gasrem, align 8
  %"$res_105" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_105", metadata !373, metadata !DIExpression()), !dbg !374
  %"$gasrem_1793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1794" = icmp ugt i64 80, %"$gasrem_1793"
  br i1 %"$gascmp_1794", label %"$out_of_gas_1795", label %"$have_gas_1796"

"$out_of_gas_1795":                               ; preds = %"$have_gas_1790"
  call void @_out_of_gas()
  br label %"$have_gas_1796"

"$have_gas_1796":                                 ; preds = %"$out_of_gas_1795", %"$have_gas_1790"
  %"$consume_1797" = sub i64 %"$gasrem_1793", 80
  store i64 %"$consume_1797", i64* @_gasrem, align 8
  %"$execptr_load_1798" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_103_1799" = alloca %Int256, align 8
  %"$$arg1_103_1800" = load %Int256, %Int256* %"$arg1_103", align 8
  store %Int256 %"$$arg1_103_1800", %Int256* %"$mul_$arg1_103_1799", align 8
  %"$mul_$arg2_104_1801" = alloca %Int256, align 8
  %"$$arg2_104_1802" = load %Int256, %Int256* %"$arg2_104", align 8
  store %Int256 %"$$arg2_104_1802", %Int256* %"$mul_$arg2_104_1801", align 8
  %"$mul_call_1803" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1798", %Int256* %"$mul_$arg1_103_1799", %Int256* %"$mul_$arg2_104_1801"), !dbg !375
  %"$mul_1805" = load %Int256, %Int256* %"$mul_call_1803", align 8
  store %Int256 %"$mul_1805", %Int256* %"$res_105", align 8, !dbg !375
  %"$gasrem_1806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1807" = icmp ugt i64 1, %"$gasrem_1806"
  br i1 %"$gascmp_1807", label %"$out_of_gas_1808", label %"$have_gas_1809"

"$out_of_gas_1808":                               ; preds = %"$have_gas_1796"
  call void @_out_of_gas()
  br label %"$have_gas_1809"

"$have_gas_1809":                                 ; preds = %"$out_of_gas_1808", %"$have_gas_1796"
  %"$consume_1810" = sub i64 %"$gasrem_1806", 1
  store i64 %"$consume_1810", i64* @_gasrem, align 8
  %"$res__106" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__106", metadata !376, metadata !DIExpression()), !dbg !377
  %"$gasrem_1811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1812" = icmp ugt i64 1, %"$gasrem_1811"
  br i1 %"$gascmp_1812", label %"$out_of_gas_1813", label %"$have_gas_1814"

"$out_of_gas_1813":                               ; preds = %"$have_gas_1809"
  call void @_out_of_gas()
  br label %"$have_gas_1814"

"$have_gas_1814":                                 ; preds = %"$out_of_gas_1813", %"$have_gas_1809"
  %"$consume_1815" = sub i64 %"$gasrem_1811", 1
  store i64 %"$consume_1815", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__106", align 8, !dbg !378
  %"$gasrem_1816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1817" = icmp ugt i64 1, %"$gasrem_1816"
  br i1 %"$gascmp_1817", label %"$out_of_gas_1818", label %"$have_gas_1819"

"$out_of_gas_1818":                               ; preds = %"$have_gas_1814"
  call void @_out_of_gas()
  br label %"$have_gas_1819"

"$have_gas_1819":                                 ; preds = %"$out_of_gas_1818", %"$have_gas_1814"
  %"$consume_1820" = sub i64 %"$gasrem_1816", 1
  store i64 %"$consume_1820", i64* @_gasrem, align 8
  %"$test__107" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__107", metadata !379, metadata !DIExpression()), !dbg !380
  %"$gasrem_1822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1823" = icmp ugt i64 16, %"$gasrem_1822"
  br i1 %"$gascmp_1823", label %"$out_of_gas_1824", label %"$have_gas_1825"

"$out_of_gas_1824":                               ; preds = %"$have_gas_1819"
  call void @_out_of_gas()
  br label %"$have_gas_1825"

"$have_gas_1825":                                 ; preds = %"$out_of_gas_1824", %"$have_gas_1819"
  %"$consume_1826" = sub i64 %"$gasrem_1822", 16
  store i64 %"$consume_1826", i64* @_gasrem, align 8
  %"$execptr_load_1827" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_105_1828" = alloca %Int256, align 8
  %"$$res_105_1829" = load %Int256, %Int256* %"$res_105", align 8
  store %Int256 %"$$res_105_1829", %Int256* %"$eq_$res_105_1828", align 8
  %"$eq_$res__106_1830" = alloca %Int256, align 8
  %"$$res__106_1831" = load %Int256, %Int256* %"$res__106", align 8
  store %Int256 %"$$res__106_1831", %Int256* %"$eq_$res__106_1830", align 8
  %"$eq_call_1832" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1827", %Int256* %"$eq_$res_105_1828", %Int256* %"$eq_$res__106_1830"), !dbg !381
  store %TName_Bool* %"$eq_call_1832", %TName_Bool** %"$test__107", align 8, !dbg !381
  %"$gasrem_1834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1835" = icmp ugt i64 1, %"$gasrem_1834"
  br i1 %"$gascmp_1835", label %"$out_of_gas_1836", label %"$have_gas_1837"

"$out_of_gas_1836":                               ; preds = %"$have_gas_1825"
  call void @_out_of_gas()
  br label %"$have_gas_1837"

"$have_gas_1837":                                 ; preds = %"$out_of_gas_1836", %"$have_gas_1825"
  %"$consume_1838" = sub i64 %"$gasrem_1834", 1
  store i64 %"$consume_1838", i64* @_gasrem, align 8
  %"$BoolUtils.andb_161" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1839" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1840" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1839", 0
  %"$BoolUtils.andb_envptr_1841" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1839", 1
  %"$$test_102_1842" = load %TName_Bool*, %TName_Bool** %"$test_102", align 8
  %"$BoolUtils.andb_call_1843" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1840"(i8* %"$BoolUtils.andb_envptr_1841", %TName_Bool* %"$$test_102_1842"), !dbg !382
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1843", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8, !dbg !382
  %"$BoolUtils.andb_162" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_162", metadata !383, metadata !DIExpression()), !dbg !382
  %"$$BoolUtils.andb_161_1844" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$$BoolUtils.andb_161_fptr_1845" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1844", 0
  %"$$BoolUtils.andb_161_envptr_1846" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1844", 1
  %"$$test__107_1847" = load %TName_Bool*, %TName_Bool** %"$test__107", align 8
  %"$$BoolUtils.andb_161_call_1848" = call %TName_Bool* %"$$BoolUtils.andb_161_fptr_1845"(i8* %"$$BoolUtils.andb_161_envptr_1846", %TName_Bool* %"$$test__107_1847"), !dbg !382
  store %TName_Bool* %"$$BoolUtils.andb_161_call_1848", %TName_Bool** %"$BoolUtils.andb_162", align 8, !dbg !382
  %"$$BoolUtils.andb_162_1849" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_162", align 8
  store %TName_Bool* %"$$BoolUtils.andb_162_1849", %TName_Bool** %"$test_108", align 8, !dbg !382
  %"$gasrem_1850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1851" = icmp ugt i64 1, %"$gasrem_1850"
  br i1 %"$gascmp_1851", label %"$out_of_gas_1852", label %"$have_gas_1853"

"$out_of_gas_1852":                               ; preds = %"$have_gas_1837"
  call void @_out_of_gas()
  br label %"$have_gas_1853"

"$have_gas_1853":                                 ; preds = %"$out_of_gas_1852", %"$have_gas_1837"
  %"$consume_1854" = sub i64 %"$gasrem_1850", 1
  store i64 %"$consume_1854", i64* @_gasrem, align 8
  %"$arg1_109" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_109", metadata !384, metadata !DIExpression()), !dbg !385
  %"$gasrem_1855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1856" = icmp ugt i64 1, %"$gasrem_1855"
  br i1 %"$gascmp_1856", label %"$out_of_gas_1857", label %"$have_gas_1858"

"$out_of_gas_1857":                               ; preds = %"$have_gas_1853"
  call void @_out_of_gas()
  br label %"$have_gas_1858"

"$have_gas_1858":                                 ; preds = %"$out_of_gas_1857", %"$have_gas_1853"
  %"$consume_1859" = sub i64 %"$gasrem_1855", 1
  store i64 %"$consume_1859", i64* @_gasrem, align 8
  store %Int256 { i256 -2 }, %Int256* %"$arg1_109", align 8, !dbg !386
  %"$gasrem_1860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1861" = icmp ugt i64 1, %"$gasrem_1860"
  br i1 %"$gascmp_1861", label %"$out_of_gas_1862", label %"$have_gas_1863"

"$out_of_gas_1862":                               ; preds = %"$have_gas_1858"
  call void @_out_of_gas()
  br label %"$have_gas_1863"

"$have_gas_1863":                                 ; preds = %"$out_of_gas_1862", %"$have_gas_1858"
  %"$consume_1864" = sub i64 %"$gasrem_1860", 1
  store i64 %"$consume_1864", i64* @_gasrem, align 8
  %"$arg2_110" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_110", metadata !387, metadata !DIExpression()), !dbg !388
  %"$gasrem_1865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1866" = icmp ugt i64 1, %"$gasrem_1865"
  br i1 %"$gascmp_1866", label %"$out_of_gas_1867", label %"$have_gas_1868"

"$out_of_gas_1867":                               ; preds = %"$have_gas_1863"
  call void @_out_of_gas()
  br label %"$have_gas_1868"

"$have_gas_1868":                                 ; preds = %"$out_of_gas_1867", %"$have_gas_1863"
  %"$consume_1869" = sub i64 %"$gasrem_1865", 1
  store i64 %"$consume_1869", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_110", align 8, !dbg !389
  %"$gasrem_1870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1871" = icmp ugt i64 1, %"$gasrem_1870"
  br i1 %"$gascmp_1871", label %"$out_of_gas_1872", label %"$have_gas_1873"

"$out_of_gas_1872":                               ; preds = %"$have_gas_1868"
  call void @_out_of_gas()
  br label %"$have_gas_1873"

"$have_gas_1873":                                 ; preds = %"$out_of_gas_1872", %"$have_gas_1868"
  %"$consume_1874" = sub i64 %"$gasrem_1870", 1
  store i64 %"$consume_1874", i64* @_gasrem, align 8
  %"$test_114" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_114", metadata !390, metadata !DIExpression()), !dbg !391
  %"$gasrem_1875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1876" = icmp ugt i64 1, %"$gasrem_1875"
  br i1 %"$gascmp_1876", label %"$out_of_gas_1877", label %"$have_gas_1878"

"$out_of_gas_1877":                               ; preds = %"$have_gas_1873"
  call void @_out_of_gas()
  br label %"$have_gas_1878"

"$have_gas_1878":                                 ; preds = %"$out_of_gas_1877", %"$have_gas_1873"
  %"$consume_1879" = sub i64 %"$gasrem_1875", 1
  store i64 %"$consume_1879", i64* @_gasrem, align 8
  %"$res_111" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_111", metadata !392, metadata !DIExpression()), !dbg !393
  %"$gasrem_1881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1882" = icmp ugt i64 80, %"$gasrem_1881"
  br i1 %"$gascmp_1882", label %"$out_of_gas_1883", label %"$have_gas_1884"

"$out_of_gas_1883":                               ; preds = %"$have_gas_1878"
  call void @_out_of_gas()
  br label %"$have_gas_1884"

"$have_gas_1884":                                 ; preds = %"$out_of_gas_1883", %"$have_gas_1878"
  %"$consume_1885" = sub i64 %"$gasrem_1881", 80
  store i64 %"$consume_1885", i64* @_gasrem, align 8
  %"$execptr_load_1886" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_109_1887" = alloca %Int256, align 8
  %"$$arg1_109_1888" = load %Int256, %Int256* %"$arg1_109", align 8
  store %Int256 %"$$arg1_109_1888", %Int256* %"$mul_$arg1_109_1887", align 8
  %"$mul_$arg2_110_1889" = alloca %Int256, align 8
  %"$$arg2_110_1890" = load %Int256, %Int256* %"$arg2_110", align 8
  store %Int256 %"$$arg2_110_1890", %Int256* %"$mul_$arg2_110_1889", align 8
  %"$mul_call_1891" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1886", %Int256* %"$mul_$arg1_109_1887", %Int256* %"$mul_$arg2_110_1889"), !dbg !394
  %"$mul_1893" = load %Int256, %Int256* %"$mul_call_1891", align 8
  store %Int256 %"$mul_1893", %Int256* %"$res_111", align 8, !dbg !394
  %"$gasrem_1894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1895" = icmp ugt i64 1, %"$gasrem_1894"
  br i1 %"$gascmp_1895", label %"$out_of_gas_1896", label %"$have_gas_1897"

"$out_of_gas_1896":                               ; preds = %"$have_gas_1884"
  call void @_out_of_gas()
  br label %"$have_gas_1897"

"$have_gas_1897":                                 ; preds = %"$out_of_gas_1896", %"$have_gas_1884"
  %"$consume_1898" = sub i64 %"$gasrem_1894", 1
  store i64 %"$consume_1898", i64* @_gasrem, align 8
  %"$res__112" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__112", metadata !395, metadata !DIExpression()), !dbg !396
  %"$gasrem_1899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1900" = icmp ugt i64 1, %"$gasrem_1899"
  br i1 %"$gascmp_1900", label %"$out_of_gas_1901", label %"$have_gas_1902"

"$out_of_gas_1901":                               ; preds = %"$have_gas_1897"
  call void @_out_of_gas()
  br label %"$have_gas_1902"

"$have_gas_1902":                                 ; preds = %"$out_of_gas_1901", %"$have_gas_1897"
  %"$consume_1903" = sub i64 %"$gasrem_1899", 1
  store i64 %"$consume_1903", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__112", align 8, !dbg !397
  %"$gasrem_1904" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1905" = icmp ugt i64 1, %"$gasrem_1904"
  br i1 %"$gascmp_1905", label %"$out_of_gas_1906", label %"$have_gas_1907"

"$out_of_gas_1906":                               ; preds = %"$have_gas_1902"
  call void @_out_of_gas()
  br label %"$have_gas_1907"

"$have_gas_1907":                                 ; preds = %"$out_of_gas_1906", %"$have_gas_1902"
  %"$consume_1908" = sub i64 %"$gasrem_1904", 1
  store i64 %"$consume_1908", i64* @_gasrem, align 8
  %"$test__113" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__113", metadata !398, metadata !DIExpression()), !dbg !399
  %"$gasrem_1910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1911" = icmp ugt i64 16, %"$gasrem_1910"
  br i1 %"$gascmp_1911", label %"$out_of_gas_1912", label %"$have_gas_1913"

"$out_of_gas_1912":                               ; preds = %"$have_gas_1907"
  call void @_out_of_gas()
  br label %"$have_gas_1913"

"$have_gas_1913":                                 ; preds = %"$out_of_gas_1912", %"$have_gas_1907"
  %"$consume_1914" = sub i64 %"$gasrem_1910", 16
  store i64 %"$consume_1914", i64* @_gasrem, align 8
  %"$execptr_load_1915" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_111_1916" = alloca %Int256, align 8
  %"$$res_111_1917" = load %Int256, %Int256* %"$res_111", align 8
  store %Int256 %"$$res_111_1917", %Int256* %"$eq_$res_111_1916", align 8
  %"$eq_$res__112_1918" = alloca %Int256, align 8
  %"$$res__112_1919" = load %Int256, %Int256* %"$res__112", align 8
  store %Int256 %"$$res__112_1919", %Int256* %"$eq_$res__112_1918", align 8
  %"$eq_call_1920" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1915", %Int256* %"$eq_$res_111_1916", %Int256* %"$eq_$res__112_1918"), !dbg !400
  store %TName_Bool* %"$eq_call_1920", %TName_Bool** %"$test__113", align 8, !dbg !400
  %"$gasrem_1922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1923" = icmp ugt i64 1, %"$gasrem_1922"
  br i1 %"$gascmp_1923", label %"$out_of_gas_1924", label %"$have_gas_1925"

"$out_of_gas_1924":                               ; preds = %"$have_gas_1913"
  call void @_out_of_gas()
  br label %"$have_gas_1925"

"$have_gas_1925":                                 ; preds = %"$out_of_gas_1924", %"$have_gas_1913"
  %"$consume_1926" = sub i64 %"$gasrem_1922", 1
  store i64 %"$consume_1926", i64* @_gasrem, align 8
  %"$BoolUtils.andb_163" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1927" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1928" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1927", 0
  %"$BoolUtils.andb_envptr_1929" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1927", 1
  %"$$test_108_1930" = load %TName_Bool*, %TName_Bool** %"$test_108", align 8
  %"$BoolUtils.andb_call_1931" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1928"(i8* %"$BoolUtils.andb_envptr_1929", %TName_Bool* %"$$test_108_1930"), !dbg !401
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1931", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8, !dbg !401
  %"$BoolUtils.andb_164" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_164", metadata !402, metadata !DIExpression()), !dbg !401
  %"$$BoolUtils.andb_163_1932" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$$BoolUtils.andb_163_fptr_1933" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1932", 0
  %"$$BoolUtils.andb_163_envptr_1934" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1932", 1
  %"$$test__113_1935" = load %TName_Bool*, %TName_Bool** %"$test__113", align 8
  %"$$BoolUtils.andb_163_call_1936" = call %TName_Bool* %"$$BoolUtils.andb_163_fptr_1933"(i8* %"$$BoolUtils.andb_163_envptr_1934", %TName_Bool* %"$$test__113_1935"), !dbg !401
  store %TName_Bool* %"$$BoolUtils.andb_163_call_1936", %TName_Bool** %"$BoolUtils.andb_164", align 8, !dbg !401
  %"$$BoolUtils.andb_164_1937" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_164", align 8
  store %TName_Bool* %"$$BoolUtils.andb_164_1937", %TName_Bool** %"$test_114", align 8, !dbg !401
  %"$gasrem_1938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1939" = icmp ugt i64 1, %"$gasrem_1938"
  br i1 %"$gascmp_1939", label %"$out_of_gas_1940", label %"$have_gas_1941"

"$out_of_gas_1940":                               ; preds = %"$have_gas_1925"
  call void @_out_of_gas()
  br label %"$have_gas_1941"

"$have_gas_1941":                                 ; preds = %"$out_of_gas_1940", %"$have_gas_1925"
  %"$consume_1942" = sub i64 %"$gasrem_1938", 1
  store i64 %"$consume_1942", i64* @_gasrem, align 8
  %"$arg1_115" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_115", metadata !403, metadata !DIExpression()), !dbg !404
  %"$gasrem_1943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1944" = icmp ugt i64 1, %"$gasrem_1943"
  br i1 %"$gascmp_1944", label %"$out_of_gas_1945", label %"$have_gas_1946"

"$out_of_gas_1945":                               ; preds = %"$have_gas_1941"
  call void @_out_of_gas()
  br label %"$have_gas_1946"

"$have_gas_1946":                                 ; preds = %"$out_of_gas_1945", %"$have_gas_1941"
  %"$consume_1947" = sub i64 %"$gasrem_1943", 1
  store i64 %"$consume_1947", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$arg1_115", align 8, !dbg !405
  %"$gasrem_1948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1949" = icmp ugt i64 1, %"$gasrem_1948"
  br i1 %"$gascmp_1949", label %"$out_of_gas_1950", label %"$have_gas_1951"

"$out_of_gas_1950":                               ; preds = %"$have_gas_1946"
  call void @_out_of_gas()
  br label %"$have_gas_1951"

"$have_gas_1951":                                 ; preds = %"$out_of_gas_1950", %"$have_gas_1946"
  %"$consume_1952" = sub i64 %"$gasrem_1948", 1
  store i64 %"$consume_1952", i64* @_gasrem, align 8
  %"$arg2_116" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_116", metadata !406, metadata !DIExpression()), !dbg !407
  %"$gasrem_1953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1954" = icmp ugt i64 1, %"$gasrem_1953"
  br i1 %"$gascmp_1954", label %"$out_of_gas_1955", label %"$have_gas_1956"

"$out_of_gas_1955":                               ; preds = %"$have_gas_1951"
  call void @_out_of_gas()
  br label %"$have_gas_1956"

"$have_gas_1956":                                 ; preds = %"$out_of_gas_1955", %"$have_gas_1951"
  %"$consume_1957" = sub i64 %"$gasrem_1953", 1
  store i64 %"$consume_1957", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$arg2_116", align 8, !dbg !408
  %"$gasrem_1958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1959" = icmp ugt i64 1, %"$gasrem_1958"
  br i1 %"$gascmp_1959", label %"$out_of_gas_1960", label %"$have_gas_1961"

"$out_of_gas_1960":                               ; preds = %"$have_gas_1956"
  call void @_out_of_gas()
  br label %"$have_gas_1961"

"$have_gas_1961":                                 ; preds = %"$out_of_gas_1960", %"$have_gas_1956"
  %"$consume_1962" = sub i64 %"$gasrem_1958", 1
  store i64 %"$consume_1962", i64* @_gasrem, align 8
  %"$test_120" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_120", metadata !409, metadata !DIExpression()), !dbg !410
  %"$gasrem_1963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1964" = icmp ugt i64 1, %"$gasrem_1963"
  br i1 %"$gascmp_1964", label %"$out_of_gas_1965", label %"$have_gas_1966"

"$out_of_gas_1965":                               ; preds = %"$have_gas_1961"
  call void @_out_of_gas()
  br label %"$have_gas_1966"

"$have_gas_1966":                                 ; preds = %"$out_of_gas_1965", %"$have_gas_1961"
  %"$consume_1967" = sub i64 %"$gasrem_1963", 1
  store i64 %"$consume_1967", i64* @_gasrem, align 8
  %"$res_117" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_117", metadata !411, metadata !DIExpression()), !dbg !412
  %"$gasrem_1969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1970" = icmp ugt i64 80, %"$gasrem_1969"
  br i1 %"$gascmp_1970", label %"$out_of_gas_1971", label %"$have_gas_1972"

"$out_of_gas_1971":                               ; preds = %"$have_gas_1966"
  call void @_out_of_gas()
  br label %"$have_gas_1972"

"$have_gas_1972":                                 ; preds = %"$out_of_gas_1971", %"$have_gas_1966"
  %"$consume_1973" = sub i64 %"$gasrem_1969", 80
  store i64 %"$consume_1973", i64* @_gasrem, align 8
  %"$execptr_load_1974" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_115_1975" = alloca %Int256, align 8
  %"$$arg1_115_1976" = load %Int256, %Int256* %"$arg1_115", align 8
  store %Int256 %"$$arg1_115_1976", %Int256* %"$mul_$arg1_115_1975", align 8
  %"$mul_$arg2_116_1977" = alloca %Int256, align 8
  %"$$arg2_116_1978" = load %Int256, %Int256* %"$arg2_116", align 8
  store %Int256 %"$$arg2_116_1978", %Int256* %"$mul_$arg2_116_1977", align 8
  %"$mul_call_1979" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1974", %Int256* %"$mul_$arg1_115_1975", %Int256* %"$mul_$arg2_116_1977"), !dbg !413
  %"$mul_1981" = load %Int256, %Int256* %"$mul_call_1979", align 8
  store %Int256 %"$mul_1981", %Int256* %"$res_117", align 8, !dbg !413
  %"$gasrem_1982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1983" = icmp ugt i64 1, %"$gasrem_1982"
  br i1 %"$gascmp_1983", label %"$out_of_gas_1984", label %"$have_gas_1985"

"$out_of_gas_1984":                               ; preds = %"$have_gas_1972"
  call void @_out_of_gas()
  br label %"$have_gas_1985"

"$have_gas_1985":                                 ; preds = %"$out_of_gas_1984", %"$have_gas_1972"
  %"$consume_1986" = sub i64 %"$gasrem_1982", 1
  store i64 %"$consume_1986", i64* @_gasrem, align 8
  %"$res__118" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__118", metadata !414, metadata !DIExpression()), !dbg !415
  %"$gasrem_1987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1988" = icmp ugt i64 1, %"$gasrem_1987"
  br i1 %"$gascmp_1988", label %"$out_of_gas_1989", label %"$have_gas_1990"

"$out_of_gas_1989":                               ; preds = %"$have_gas_1985"
  call void @_out_of_gas()
  br label %"$have_gas_1990"

"$have_gas_1990":                                 ; preds = %"$out_of_gas_1989", %"$have_gas_1985"
  %"$consume_1991" = sub i64 %"$gasrem_1987", 1
  store i64 %"$consume_1991", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$res__118", align 8, !dbg !416
  %"$gasrem_1992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1993" = icmp ugt i64 1, %"$gasrem_1992"
  br i1 %"$gascmp_1993", label %"$out_of_gas_1994", label %"$have_gas_1995"

"$out_of_gas_1994":                               ; preds = %"$have_gas_1990"
  call void @_out_of_gas()
  br label %"$have_gas_1995"

"$have_gas_1995":                                 ; preds = %"$out_of_gas_1994", %"$have_gas_1990"
  %"$consume_1996" = sub i64 %"$gasrem_1992", 1
  store i64 %"$consume_1996", i64* @_gasrem, align 8
  %"$test__119" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__119", metadata !417, metadata !DIExpression()), !dbg !418
  %"$gasrem_1998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1999" = icmp ugt i64 16, %"$gasrem_1998"
  br i1 %"$gascmp_1999", label %"$out_of_gas_2000", label %"$have_gas_2001"

"$out_of_gas_2000":                               ; preds = %"$have_gas_1995"
  call void @_out_of_gas()
  br label %"$have_gas_2001"

"$have_gas_2001":                                 ; preds = %"$out_of_gas_2000", %"$have_gas_1995"
  %"$consume_2002" = sub i64 %"$gasrem_1998", 16
  store i64 %"$consume_2002", i64* @_gasrem, align 8
  %"$execptr_load_2003" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_117_2004" = alloca %Int256, align 8
  %"$$res_117_2005" = load %Int256, %Int256* %"$res_117", align 8
  store %Int256 %"$$res_117_2005", %Int256* %"$eq_$res_117_2004", align 8
  %"$eq_$res__118_2006" = alloca %Int256, align 8
  %"$$res__118_2007" = load %Int256, %Int256* %"$res__118", align 8
  store %Int256 %"$$res__118_2007", %Int256* %"$eq_$res__118_2006", align 8
  %"$eq_call_2008" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2003", %Int256* %"$eq_$res_117_2004", %Int256* %"$eq_$res__118_2006"), !dbg !419
  store %TName_Bool* %"$eq_call_2008", %TName_Bool** %"$test__119", align 8, !dbg !419
  %"$gasrem_2010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2011" = icmp ugt i64 1, %"$gasrem_2010"
  br i1 %"$gascmp_2011", label %"$out_of_gas_2012", label %"$have_gas_2013"

"$out_of_gas_2012":                               ; preds = %"$have_gas_2001"
  call void @_out_of_gas()
  br label %"$have_gas_2013"

"$have_gas_2013":                                 ; preds = %"$out_of_gas_2012", %"$have_gas_2001"
  %"$consume_2014" = sub i64 %"$gasrem_2010", 1
  store i64 %"$consume_2014", i64* @_gasrem, align 8
  %"$BoolUtils.andb_165" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2015" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2016" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2015", 0
  %"$BoolUtils.andb_envptr_2017" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2015", 1
  %"$$test_114_2018" = load %TName_Bool*, %TName_Bool** %"$test_114", align 8
  %"$BoolUtils.andb_call_2019" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2016"(i8* %"$BoolUtils.andb_envptr_2017", %TName_Bool* %"$$test_114_2018"), !dbg !420
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2019", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8, !dbg !420
  %"$BoolUtils.andb_166" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_166", metadata !421, metadata !DIExpression()), !dbg !420
  %"$$BoolUtils.andb_165_2020" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$$BoolUtils.andb_165_fptr_2021" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_2020", 0
  %"$$BoolUtils.andb_165_envptr_2022" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_2020", 1
  %"$$test__119_2023" = load %TName_Bool*, %TName_Bool** %"$test__119", align 8
  %"$$BoolUtils.andb_165_call_2024" = call %TName_Bool* %"$$BoolUtils.andb_165_fptr_2021"(i8* %"$$BoolUtils.andb_165_envptr_2022", %TName_Bool* %"$$test__119_2023"), !dbg !420
  store %TName_Bool* %"$$BoolUtils.andb_165_call_2024", %TName_Bool** %"$BoolUtils.andb_166", align 8, !dbg !420
  %"$$BoolUtils.andb_166_2025" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_166", align 8
  store %TName_Bool* %"$$BoolUtils.andb_166_2025", %TName_Bool** %"$test_120", align 8, !dbg !420
  %"$gasrem_2026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2027" = icmp ugt i64 1, %"$gasrem_2026"
  br i1 %"$gascmp_2027", label %"$out_of_gas_2028", label %"$have_gas_2029"

"$out_of_gas_2028":                               ; preds = %"$have_gas_2013"
  call void @_out_of_gas()
  br label %"$have_gas_2029"

"$have_gas_2029":                                 ; preds = %"$out_of_gas_2028", %"$have_gas_2013"
  %"$consume_2030" = sub i64 %"$gasrem_2026", 1
  store i64 %"$consume_2030", i64* @_gasrem, align 8
  %"$arg1_121" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_121", metadata !422, metadata !DIExpression()), !dbg !423
  %"$gasrem_2031" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2032" = icmp ugt i64 1, %"$gasrem_2031"
  br i1 %"$gascmp_2032", label %"$out_of_gas_2033", label %"$have_gas_2034"

"$out_of_gas_2033":                               ; preds = %"$have_gas_2029"
  call void @_out_of_gas()
  br label %"$have_gas_2034"

"$have_gas_2034":                                 ; preds = %"$out_of_gas_2033", %"$have_gas_2029"
  %"$consume_2035" = sub i64 %"$gasrem_2031", 1
  store i64 %"$consume_2035", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$arg1_121", align 8, !dbg !424
  %"$gasrem_2036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2037" = icmp ugt i64 1, %"$gasrem_2036"
  br i1 %"$gascmp_2037", label %"$out_of_gas_2038", label %"$have_gas_2039"

"$out_of_gas_2038":                               ; preds = %"$have_gas_2034"
  call void @_out_of_gas()
  br label %"$have_gas_2039"

"$have_gas_2039":                                 ; preds = %"$out_of_gas_2038", %"$have_gas_2034"
  %"$consume_2040" = sub i64 %"$gasrem_2036", 1
  store i64 %"$consume_2040", i64* @_gasrem, align 8
  %"$arg2_122" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_122", metadata !425, metadata !DIExpression()), !dbg !426
  %"$gasrem_2041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2042" = icmp ugt i64 1, %"$gasrem_2041"
  br i1 %"$gascmp_2042", label %"$out_of_gas_2043", label %"$have_gas_2044"

"$out_of_gas_2043":                               ; preds = %"$have_gas_2039"
  call void @_out_of_gas()
  br label %"$have_gas_2044"

"$have_gas_2044":                                 ; preds = %"$out_of_gas_2043", %"$have_gas_2039"
  %"$consume_2045" = sub i64 %"$gasrem_2041", 1
  store i64 %"$consume_2045", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_122", align 8, !dbg !427
  %"$gasrem_2046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2047" = icmp ugt i64 1, %"$gasrem_2046"
  br i1 %"$gascmp_2047", label %"$out_of_gas_2048", label %"$have_gas_2049"

"$out_of_gas_2048":                               ; preds = %"$have_gas_2044"
  call void @_out_of_gas()
  br label %"$have_gas_2049"

"$have_gas_2049":                                 ; preds = %"$out_of_gas_2048", %"$have_gas_2044"
  %"$consume_2050" = sub i64 %"$gasrem_2046", 1
  store i64 %"$consume_2050", i64* @_gasrem, align 8
  %"$test_126" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_126", metadata !428, metadata !DIExpression()), !dbg !429
  %"$gasrem_2051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2052" = icmp ugt i64 1, %"$gasrem_2051"
  br i1 %"$gascmp_2052", label %"$out_of_gas_2053", label %"$have_gas_2054"

"$out_of_gas_2053":                               ; preds = %"$have_gas_2049"
  call void @_out_of_gas()
  br label %"$have_gas_2054"

"$have_gas_2054":                                 ; preds = %"$out_of_gas_2053", %"$have_gas_2049"
  %"$consume_2055" = sub i64 %"$gasrem_2051", 1
  store i64 %"$consume_2055", i64* @_gasrem, align 8
  %"$res_123" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_123", metadata !430, metadata !DIExpression()), !dbg !431
  %"$gasrem_2057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2058" = icmp ugt i64 80, %"$gasrem_2057"
  br i1 %"$gascmp_2058", label %"$out_of_gas_2059", label %"$have_gas_2060"

"$out_of_gas_2059":                               ; preds = %"$have_gas_2054"
  call void @_out_of_gas()
  br label %"$have_gas_2060"

"$have_gas_2060":                                 ; preds = %"$out_of_gas_2059", %"$have_gas_2054"
  %"$consume_2061" = sub i64 %"$gasrem_2057", 80
  store i64 %"$consume_2061", i64* @_gasrem, align 8
  %"$execptr_load_2062" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_121_2063" = alloca %Int256, align 8
  %"$$arg1_121_2064" = load %Int256, %Int256* %"$arg1_121", align 8
  store %Int256 %"$$arg1_121_2064", %Int256* %"$mul_$arg1_121_2063", align 8
  %"$mul_$arg2_122_2065" = alloca %Int256, align 8
  %"$$arg2_122_2066" = load %Int256, %Int256* %"$arg2_122", align 8
  store %Int256 %"$$arg2_122_2066", %Int256* %"$mul_$arg2_122_2065", align 8
  %"$mul_call_2067" = call %Int256* @_mul_Int256(i8* %"$execptr_load_2062", %Int256* %"$mul_$arg1_121_2063", %Int256* %"$mul_$arg2_122_2065"), !dbg !432
  %"$mul_2069" = load %Int256, %Int256* %"$mul_call_2067", align 8
  store %Int256 %"$mul_2069", %Int256* %"$res_123", align 8, !dbg !432
  %"$gasrem_2070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2071" = icmp ugt i64 1, %"$gasrem_2070"
  br i1 %"$gascmp_2071", label %"$out_of_gas_2072", label %"$have_gas_2073"

"$out_of_gas_2072":                               ; preds = %"$have_gas_2060"
  call void @_out_of_gas()
  br label %"$have_gas_2073"

"$have_gas_2073":                                 ; preds = %"$out_of_gas_2072", %"$have_gas_2060"
  %"$consume_2074" = sub i64 %"$gasrem_2070", 1
  store i64 %"$consume_2074", i64* @_gasrem, align 8
  %"$res__124" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__124", metadata !433, metadata !DIExpression()), !dbg !434
  %"$gasrem_2075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2076" = icmp ugt i64 1, %"$gasrem_2075"
  br i1 %"$gascmp_2076", label %"$out_of_gas_2077", label %"$have_gas_2078"

"$out_of_gas_2077":                               ; preds = %"$have_gas_2073"
  call void @_out_of_gas()
  br label %"$have_gas_2078"

"$have_gas_2078":                                 ; preds = %"$out_of_gas_2077", %"$have_gas_2073"
  %"$consume_2079" = sub i64 %"$gasrem_2075", 1
  store i64 %"$consume_2079", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__124", align 8, !dbg !435
  %"$gasrem_2080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2081" = icmp ugt i64 1, %"$gasrem_2080"
  br i1 %"$gascmp_2081", label %"$out_of_gas_2082", label %"$have_gas_2083"

"$out_of_gas_2082":                               ; preds = %"$have_gas_2078"
  call void @_out_of_gas()
  br label %"$have_gas_2083"

"$have_gas_2083":                                 ; preds = %"$out_of_gas_2082", %"$have_gas_2078"
  %"$consume_2084" = sub i64 %"$gasrem_2080", 1
  store i64 %"$consume_2084", i64* @_gasrem, align 8
  %"$test__125" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__125", metadata !436, metadata !DIExpression()), !dbg !437
  %"$gasrem_2086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2087" = icmp ugt i64 16, %"$gasrem_2086"
  br i1 %"$gascmp_2087", label %"$out_of_gas_2088", label %"$have_gas_2089"

"$out_of_gas_2088":                               ; preds = %"$have_gas_2083"
  call void @_out_of_gas()
  br label %"$have_gas_2089"

"$have_gas_2089":                                 ; preds = %"$out_of_gas_2088", %"$have_gas_2083"
  %"$consume_2090" = sub i64 %"$gasrem_2086", 16
  store i64 %"$consume_2090", i64* @_gasrem, align 8
  %"$execptr_load_2091" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_123_2092" = alloca %Int256, align 8
  %"$$res_123_2093" = load %Int256, %Int256* %"$res_123", align 8
  store %Int256 %"$$res_123_2093", %Int256* %"$eq_$res_123_2092", align 8
  %"$eq_$res__124_2094" = alloca %Int256, align 8
  %"$$res__124_2095" = load %Int256, %Int256* %"$res__124", align 8
  store %Int256 %"$$res__124_2095", %Int256* %"$eq_$res__124_2094", align 8
  %"$eq_call_2096" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2091", %Int256* %"$eq_$res_123_2092", %Int256* %"$eq_$res__124_2094"), !dbg !438
  store %TName_Bool* %"$eq_call_2096", %TName_Bool** %"$test__125", align 8, !dbg !438
  %"$gasrem_2098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2099" = icmp ugt i64 1, %"$gasrem_2098"
  br i1 %"$gascmp_2099", label %"$out_of_gas_2100", label %"$have_gas_2101"

"$out_of_gas_2100":                               ; preds = %"$have_gas_2089"
  call void @_out_of_gas()
  br label %"$have_gas_2101"

"$have_gas_2101":                                 ; preds = %"$out_of_gas_2100", %"$have_gas_2089"
  %"$consume_2102" = sub i64 %"$gasrem_2098", 1
  store i64 %"$consume_2102", i64* @_gasrem, align 8
  %"$BoolUtils.andb_167" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2103" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2104" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2103", 0
  %"$BoolUtils.andb_envptr_2105" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2103", 1
  %"$$test_120_2106" = load %TName_Bool*, %TName_Bool** %"$test_120", align 8
  %"$BoolUtils.andb_call_2107" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2104"(i8* %"$BoolUtils.andb_envptr_2105", %TName_Bool* %"$$test_120_2106"), !dbg !439
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2107", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8, !dbg !439
  %"$BoolUtils.andb_168" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_168", metadata !440, metadata !DIExpression()), !dbg !439
  %"$$BoolUtils.andb_167_2108" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$$BoolUtils.andb_167_fptr_2109" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_2108", 0
  %"$$BoolUtils.andb_167_envptr_2110" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_2108", 1
  %"$$test__125_2111" = load %TName_Bool*, %TName_Bool** %"$test__125", align 8
  %"$$BoolUtils.andb_167_call_2112" = call %TName_Bool* %"$$BoolUtils.andb_167_fptr_2109"(i8* %"$$BoolUtils.andb_167_envptr_2110", %TName_Bool* %"$$test__125_2111"), !dbg !439
  store %TName_Bool* %"$$BoolUtils.andb_167_call_2112", %TName_Bool** %"$BoolUtils.andb_168", align 8, !dbg !439
  %"$$BoolUtils.andb_168_2113" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_168", align 8
  store %TName_Bool* %"$$BoolUtils.andb_168_2113", %TName_Bool** %"$test_126", align 8, !dbg !439
  %"$gasrem_2114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2115" = icmp ugt i64 1, %"$gasrem_2114"
  br i1 %"$gascmp_2115", label %"$out_of_gas_2116", label %"$have_gas_2117"

"$out_of_gas_2116":                               ; preds = %"$have_gas_2101"
  call void @_out_of_gas()
  br label %"$have_gas_2117"

"$have_gas_2117":                                 ; preds = %"$out_of_gas_2116", %"$have_gas_2101"
  %"$consume_2118" = sub i64 %"$gasrem_2114", 1
  store i64 %"$consume_2118", i64* @_gasrem, align 8
  %"$$test_126_2119" = load %TName_Bool*, %TName_Bool** %"$test_126", align 8
  store %TName_Bool* %"$$test_126_2119", %TName_Bool** %"$expr_173", align 8, !dbg !441
  %"$$expr_173_2120" = load %TName_Bool*, %TName_Bool** %"$expr_173", align 8
  ret %TName_Bool* %"$$expr_173_2120"
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
  %"$exprval_2121" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2122" = bitcast %TName_Bool* %"$exprval_2121" to i8*
  %"$execptr_load_2123" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2123", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_208", i8* %"$memvoidcast_2122")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_mul.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_171", linkageName: "$fundef_171", scope: !4, file: !4, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocalVariable(name: "c", scope: !3, file: !4, line: 7, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 7, column: 8, scope: !3)
!13 = !DILocalVariable(name: "$retval_172", scope: !3, file: !4, line: 8, type: !10)
!14 = !DILocation(line: 8, column: 5, scope: !3)
!15 = !DILocation(line: 9, column: 16, scope: !16)
!16 = distinct !DILexicalBlock(scope: !17, file: !4, line: 9, column: 7)
!17 = distinct !DILexicalBlock(scope: !3, file: !4, line: 8, column: 5)
!18 = !DILocation(line: 10, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !17, file: !4, line: 10, column: 7)
!20 = distinct !DISubprogram(name: "$fundef_169", linkageName: "$fundef_169", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DILocalVariable(name: "b", scope: !20, file: !4, line: 6, type: !10)
!22 = !DILocation(line: 6, column: 8, scope: !20)
!23 = !DILocation(line: 8, column: 5, scope: !20)
!24 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !25, file: !25, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!25 = !DIFile(filename: ".", directory: ".")
!26 = !DILocation(line: 0, scope: !24)
!27 = !DILocation(line: 7, column: 3, scope: !24)
!28 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!29 = !DILocalVariable(name: "$expr_173", scope: !28, file: !2, line: 1, type: !10)
!30 = !DILocation(line: 1, column: 13, scope: !28)
!31 = !DILocalVariable(name: "test", scope: !28, file: !2, line: 2, type: !10)
!32 = !DILocation(line: 2, column: 5, scope: !28)
!33 = !DILocation(line: 2, column: 12, scope: !28)
!34 = !DILocalVariable(name: "arg1", scope: !28, file: !2, line: 4, type: !35)
!35 = !DIBasicType(name: "Uint32", size: 4)
!36 = !DILocation(line: 4, column: 5, scope: !28)
!37 = !DILocation(line: 4, column: 12, scope: !28)
!38 = !DILocalVariable(name: "arg2", scope: !28, file: !2, line: 5, type: !35)
!39 = !DILocation(line: 5, column: 5, scope: !28)
!40 = !DILocation(line: 5, column: 12, scope: !28)
!41 = !DILocalVariable(name: "$test_6", scope: !28, file: !2, line: 6, type: !10)
!42 = !DILocation(line: 6, column: 5, scope: !28)
!43 = !DILocalVariable(name: "res", scope: !28, file: !2, line: 7, type: !35)
!44 = !DILocation(line: 7, column: 7, scope: !28)
!45 = !DILocation(line: 7, column: 13, scope: !28)
!46 = !DILocalVariable(name: "res_", scope: !28, file: !2, line: 8, type: !35)
!47 = !DILocation(line: 8, column: 7, scope: !28)
!48 = !DILocation(line: 8, column: 14, scope: !28)
!49 = !DILocalVariable(name: "test_", scope: !28, file: !2, line: 9, type: !10)
!50 = !DILocation(line: 9, column: 7, scope: !28)
!51 = !DILocation(line: 9, column: 15, scope: !28)
!52 = !DILocation(line: 10, column: 3, scope: !28)
!53 = !DILocalVariable(name: "$BoolUtils.andb_128", scope: !28, file: !2, line: 10, type: !10)
!54 = !DILocalVariable(name: "$arg2_7", scope: !28, file: !2, line: 13, type: !55)
!55 = !DIBasicType(name: "Int32", size: 4)
!56 = !DILocation(line: 13, column: 5, scope: !28)
!57 = !DILocation(line: 13, column: 12, scope: !28)
!58 = !DILocalVariable(name: "$arg1_8", scope: !28, file: !2, line: 14, type: !55)
!59 = !DILocation(line: 14, column: 5, scope: !28)
!60 = !DILocation(line: 14, column: 12, scope: !28)
!61 = !DILocalVariable(name: "$test_12", scope: !28, file: !2, line: 15, type: !10)
!62 = !DILocation(line: 15, column: 5, scope: !28)
!63 = !DILocalVariable(name: "$res_9", scope: !28, file: !2, line: 16, type: !55)
!64 = !DILocation(line: 16, column: 7, scope: !28)
!65 = !DILocation(line: 16, column: 13, scope: !28)
!66 = !DILocalVariable(name: "$res__10", scope: !28, file: !2, line: 17, type: !55)
!67 = !DILocation(line: 17, column: 7, scope: !28)
!68 = !DILocation(line: 17, column: 14, scope: !28)
!69 = !DILocalVariable(name: "$test__11", scope: !28, file: !2, line: 18, type: !10)
!70 = !DILocation(line: 18, column: 7, scope: !28)
!71 = !DILocation(line: 18, column: 15, scope: !28)
!72 = !DILocation(line: 19, column: 3, scope: !28)
!73 = !DILocalVariable(name: "$BoolUtils.andb_130", scope: !28, file: !2, line: 19, type: !10)
!74 = !DILocalVariable(name: "$arg1_13", scope: !28, file: !2, line: 22, type: !75)
!75 = !DIBasicType(name: "Int64", size: 8)
!76 = !DILocation(line: 22, column: 5, scope: !28)
!77 = !DILocation(line: 22, column: 12, scope: !28)
!78 = !DILocalVariable(name: "$arg2_14", scope: !28, file: !2, line: 23, type: !75)
!79 = !DILocation(line: 23, column: 5, scope: !28)
!80 = !DILocation(line: 23, column: 12, scope: !28)
!81 = !DILocalVariable(name: "$test_18", scope: !28, file: !2, line: 24, type: !10)
!82 = !DILocation(line: 24, column: 5, scope: !28)
!83 = !DILocalVariable(name: "$res_15", scope: !28, file: !2, line: 25, type: !75)
!84 = !DILocation(line: 25, column: 7, scope: !28)
!85 = !DILocation(line: 25, column: 13, scope: !28)
!86 = !DILocalVariable(name: "$res__16", scope: !28, file: !2, line: 26, type: !75)
!87 = !DILocation(line: 26, column: 7, scope: !28)
!88 = !DILocation(line: 26, column: 14, scope: !28)
!89 = !DILocalVariable(name: "$test__17", scope: !28, file: !2, line: 27, type: !10)
!90 = !DILocation(line: 27, column: 7, scope: !28)
!91 = !DILocation(line: 27, column: 15, scope: !28)
!92 = !DILocation(line: 28, column: 3, scope: !28)
!93 = !DILocalVariable(name: "$BoolUtils.andb_132", scope: !28, file: !2, line: 28, type: !10)
!94 = !DILocalVariable(name: "$arg2_19", scope: !28, file: !2, line: 31, type: !95)
!95 = !DIBasicType(name: "Uint64", size: 8)
!96 = !DILocation(line: 31, column: 5, scope: !28)
!97 = !DILocation(line: 31, column: 12, scope: !28)
!98 = !DILocalVariable(name: "$arg1_20", scope: !28, file: !2, line: 32, type: !95)
!99 = !DILocation(line: 32, column: 5, scope: !28)
!100 = !DILocation(line: 32, column: 12, scope: !28)
!101 = !DILocalVariable(name: "$test_24", scope: !28, file: !2, line: 33, type: !10)
!102 = !DILocation(line: 33, column: 5, scope: !28)
!103 = !DILocalVariable(name: "$res_21", scope: !28, file: !2, line: 34, type: !95)
!104 = !DILocation(line: 34, column: 7, scope: !28)
!105 = !DILocation(line: 34, column: 13, scope: !28)
!106 = !DILocalVariable(name: "$res__22", scope: !28, file: !2, line: 35, type: !95)
!107 = !DILocation(line: 35, column: 7, scope: !28)
!108 = !DILocation(line: 35, column: 14, scope: !28)
!109 = !DILocalVariable(name: "$test__23", scope: !28, file: !2, line: 36, type: !10)
!110 = !DILocation(line: 36, column: 7, scope: !28)
!111 = !DILocation(line: 36, column: 15, scope: !28)
!112 = !DILocation(line: 37, column: 3, scope: !28)
!113 = !DILocalVariable(name: "$BoolUtils.andb_134", scope: !28, file: !2, line: 37, type: !10)
!114 = !DILocalVariable(name: "$arg1_25", scope: !28, file: !2, line: 40, type: !115)
!115 = !DIBasicType(name: "Uint128", size: 16)
!116 = !DILocation(line: 40, column: 5, scope: !28)
!117 = !DILocation(line: 40, column: 12, scope: !28)
!118 = !DILocalVariable(name: "$arg2_26", scope: !28, file: !2, line: 41, type: !115)
!119 = !DILocation(line: 41, column: 5, scope: !28)
!120 = !DILocation(line: 41, column: 12, scope: !28)
!121 = !DILocalVariable(name: "$test_30", scope: !28, file: !2, line: 42, type: !10)
!122 = !DILocation(line: 42, column: 5, scope: !28)
!123 = !DILocalVariable(name: "$res_27", scope: !28, file: !2, line: 43, type: !115)
!124 = !DILocation(line: 43, column: 7, scope: !28)
!125 = !DILocation(line: 43, column: 13, scope: !28)
!126 = !DILocalVariable(name: "$res__28", scope: !28, file: !2, line: 44, type: !115)
!127 = !DILocation(line: 44, column: 7, scope: !28)
!128 = !DILocation(line: 44, column: 14, scope: !28)
!129 = !DILocalVariable(name: "$test__29", scope: !28, file: !2, line: 45, type: !10)
!130 = !DILocation(line: 45, column: 7, scope: !28)
!131 = !DILocation(line: 45, column: 15, scope: !28)
!132 = !DILocation(line: 46, column: 3, scope: !28)
!133 = !DILocalVariable(name: "$BoolUtils.andb_136", scope: !28, file: !2, line: 46, type: !10)
!134 = !DILocalVariable(name: "$arg1_31", scope: !28, file: !2, line: 49, type: !135)
!135 = !DIBasicType(name: "Int128", size: 16)
!136 = !DILocation(line: 49, column: 5, scope: !28)
!137 = !DILocation(line: 49, column: 12, scope: !28)
!138 = !DILocalVariable(name: "$arg2_32", scope: !28, file: !2, line: 50, type: !135)
!139 = !DILocation(line: 50, column: 5, scope: !28)
!140 = !DILocation(line: 50, column: 12, scope: !28)
!141 = !DILocalVariable(name: "$test_36", scope: !28, file: !2, line: 51, type: !10)
!142 = !DILocation(line: 51, column: 5, scope: !28)
!143 = !DILocalVariable(name: "$res_33", scope: !28, file: !2, line: 52, type: !135)
!144 = !DILocation(line: 52, column: 7, scope: !28)
!145 = !DILocation(line: 52, column: 13, scope: !28)
!146 = !DILocalVariable(name: "$res__34", scope: !28, file: !2, line: 53, type: !135)
!147 = !DILocation(line: 53, column: 7, scope: !28)
!148 = !DILocation(line: 53, column: 14, scope: !28)
!149 = !DILocalVariable(name: "$test__35", scope: !28, file: !2, line: 54, type: !10)
!150 = !DILocation(line: 54, column: 7, scope: !28)
!151 = !DILocation(line: 54, column: 15, scope: !28)
!152 = !DILocation(line: 55, column: 3, scope: !28)
!153 = !DILocalVariable(name: "$BoolUtils.andb_138", scope: !28, file: !2, line: 55, type: !10)
!154 = !DILocalVariable(name: "$arg1_37", scope: !28, file: !2, line: 58, type: !135)
!155 = !DILocation(line: 58, column: 5, scope: !28)
!156 = !DILocation(line: 58, column: 12, scope: !28)
!157 = !DILocalVariable(name: "$arg2_38", scope: !28, file: !2, line: 59, type: !135)
!158 = !DILocation(line: 59, column: 5, scope: !28)
!159 = !DILocation(line: 59, column: 12, scope: !28)
!160 = !DILocalVariable(name: "$test_42", scope: !28, file: !2, line: 60, type: !10)
!161 = !DILocation(line: 60, column: 5, scope: !28)
!162 = !DILocalVariable(name: "$res_39", scope: !28, file: !2, line: 61, type: !135)
!163 = !DILocation(line: 61, column: 7, scope: !28)
!164 = !DILocation(line: 61, column: 13, scope: !28)
!165 = !DILocalVariable(name: "$res__40", scope: !28, file: !2, line: 62, type: !135)
!166 = !DILocation(line: 62, column: 7, scope: !28)
!167 = !DILocation(line: 62, column: 14, scope: !28)
!168 = !DILocalVariable(name: "$test__41", scope: !28, file: !2, line: 63, type: !10)
!169 = !DILocation(line: 63, column: 7, scope: !28)
!170 = !DILocation(line: 63, column: 15, scope: !28)
!171 = !DILocation(line: 64, column: 3, scope: !28)
!172 = !DILocalVariable(name: "$BoolUtils.andb_140", scope: !28, file: !2, line: 64, type: !10)
!173 = !DILocalVariable(name: "$arg1_43", scope: !28, file: !2, line: 67, type: !135)
!174 = !DILocation(line: 67, column: 5, scope: !28)
!175 = !DILocation(line: 67, column: 12, scope: !28)
!176 = !DILocalVariable(name: "$arg2_44", scope: !28, file: !2, line: 68, type: !135)
!177 = !DILocation(line: 68, column: 5, scope: !28)
!178 = !DILocation(line: 68, column: 12, scope: !28)
!179 = !DILocalVariable(name: "$test_48", scope: !28, file: !2, line: 69, type: !10)
!180 = !DILocation(line: 69, column: 5, scope: !28)
!181 = !DILocalVariable(name: "$res_45", scope: !28, file: !2, line: 70, type: !135)
!182 = !DILocation(line: 70, column: 7, scope: !28)
!183 = !DILocation(line: 70, column: 13, scope: !28)
!184 = !DILocalVariable(name: "$res__46", scope: !28, file: !2, line: 71, type: !135)
!185 = !DILocation(line: 71, column: 7, scope: !28)
!186 = !DILocation(line: 71, column: 14, scope: !28)
!187 = !DILocalVariable(name: "$test__47", scope: !28, file: !2, line: 72, type: !10)
!188 = !DILocation(line: 72, column: 7, scope: !28)
!189 = !DILocation(line: 72, column: 15, scope: !28)
!190 = !DILocation(line: 73, column: 3, scope: !28)
!191 = !DILocalVariable(name: "$BoolUtils.andb_142", scope: !28, file: !2, line: 73, type: !10)
!192 = !DILocalVariable(name: "$arg1_49", scope: !28, file: !2, line: 76, type: !193)
!193 = !DIBasicType(name: "Int256", size: 32)
!194 = !DILocation(line: 76, column: 5, scope: !28)
!195 = !DILocation(line: 76, column: 12, scope: !28)
!196 = !DILocalVariable(name: "$arg2_50", scope: !28, file: !2, line: 77, type: !193)
!197 = !DILocation(line: 77, column: 5, scope: !28)
!198 = !DILocation(line: 77, column: 12, scope: !28)
!199 = !DILocalVariable(name: "$test_54", scope: !28, file: !2, line: 78, type: !10)
!200 = !DILocation(line: 78, column: 5, scope: !28)
!201 = !DILocalVariable(name: "$res_51", scope: !28, file: !2, line: 79, type: !193)
!202 = !DILocation(line: 79, column: 7, scope: !28)
!203 = !DILocation(line: 79, column: 13, scope: !28)
!204 = !DILocalVariable(name: "$res__52", scope: !28, file: !2, line: 80, type: !193)
!205 = !DILocation(line: 80, column: 7, scope: !28)
!206 = !DILocation(line: 80, column: 14, scope: !28)
!207 = !DILocalVariable(name: "$test__53", scope: !28, file: !2, line: 81, type: !10)
!208 = !DILocation(line: 81, column: 7, scope: !28)
!209 = !DILocation(line: 81, column: 15, scope: !28)
!210 = !DILocation(line: 82, column: 3, scope: !28)
!211 = !DILocalVariable(name: "$BoolUtils.andb_144", scope: !28, file: !2, line: 82, type: !10)
!212 = !DILocalVariable(name: "$arg1_55", scope: !28, file: !2, line: 85, type: !193)
!213 = !DILocation(line: 85, column: 5, scope: !28)
!214 = !DILocation(line: 85, column: 12, scope: !28)
!215 = !DILocalVariable(name: "$arg2_56", scope: !28, file: !2, line: 86, type: !193)
!216 = !DILocation(line: 86, column: 5, scope: !28)
!217 = !DILocation(line: 86, column: 12, scope: !28)
!218 = !DILocalVariable(name: "$test_60", scope: !28, file: !2, line: 87, type: !10)
!219 = !DILocation(line: 87, column: 5, scope: !28)
!220 = !DILocalVariable(name: "$res_57", scope: !28, file: !2, line: 88, type: !193)
!221 = !DILocation(line: 88, column: 7, scope: !28)
!222 = !DILocation(line: 88, column: 13, scope: !28)
!223 = !DILocalVariable(name: "$res__58", scope: !28, file: !2, line: 89, type: !193)
!224 = !DILocation(line: 89, column: 7, scope: !28)
!225 = !DILocation(line: 89, column: 14, scope: !28)
!226 = !DILocalVariable(name: "$test__59", scope: !28, file: !2, line: 90, type: !10)
!227 = !DILocation(line: 90, column: 7, scope: !28)
!228 = !DILocation(line: 90, column: 15, scope: !28)
!229 = !DILocation(line: 91, column: 3, scope: !28)
!230 = !DILocalVariable(name: "$BoolUtils.andb_146", scope: !28, file: !2, line: 91, type: !10)
!231 = !DILocalVariable(name: "$arg1_61", scope: !28, file: !2, line: 94, type: !193)
!232 = !DILocation(line: 94, column: 5, scope: !28)
!233 = !DILocation(line: 94, column: 12, scope: !28)
!234 = !DILocalVariable(name: "$arg2_62", scope: !28, file: !2, line: 95, type: !193)
!235 = !DILocation(line: 95, column: 5, scope: !28)
!236 = !DILocation(line: 95, column: 12, scope: !28)
!237 = !DILocalVariable(name: "$test_66", scope: !28, file: !2, line: 96, type: !10)
!238 = !DILocation(line: 96, column: 5, scope: !28)
!239 = !DILocalVariable(name: "$res_63", scope: !28, file: !2, line: 97, type: !193)
!240 = !DILocation(line: 97, column: 7, scope: !28)
!241 = !DILocation(line: 97, column: 13, scope: !28)
!242 = !DILocalVariable(name: "$res__64", scope: !28, file: !2, line: 98, type: !193)
!243 = !DILocation(line: 98, column: 7, scope: !28)
!244 = !DILocation(line: 98, column: 14, scope: !28)
!245 = !DILocalVariable(name: "$test__65", scope: !28, file: !2, line: 99, type: !10)
!246 = !DILocation(line: 99, column: 7, scope: !28)
!247 = !DILocation(line: 99, column: 15, scope: !28)
!248 = !DILocation(line: 100, column: 3, scope: !28)
!249 = !DILocalVariable(name: "$BoolUtils.andb_148", scope: !28, file: !2, line: 100, type: !10)
!250 = !DILocalVariable(name: "$arg1_67", scope: !28, file: !2, line: 103, type: !193)
!251 = !DILocation(line: 103, column: 5, scope: !28)
!252 = !DILocation(line: 103, column: 12, scope: !28)
!253 = !DILocalVariable(name: "$arg2_68", scope: !28, file: !2, line: 104, type: !193)
!254 = !DILocation(line: 104, column: 5, scope: !28)
!255 = !DILocation(line: 104, column: 12, scope: !28)
!256 = !DILocalVariable(name: "$test_72", scope: !28, file: !2, line: 105, type: !10)
!257 = !DILocation(line: 105, column: 5, scope: !28)
!258 = !DILocalVariable(name: "$res_69", scope: !28, file: !2, line: 106, type: !193)
!259 = !DILocation(line: 106, column: 7, scope: !28)
!260 = !DILocation(line: 106, column: 13, scope: !28)
!261 = !DILocalVariable(name: "$res__70", scope: !28, file: !2, line: 107, type: !193)
!262 = !DILocation(line: 107, column: 7, scope: !28)
!263 = !DILocation(line: 107, column: 14, scope: !28)
!264 = !DILocalVariable(name: "$test__71", scope: !28, file: !2, line: 108, type: !10)
!265 = !DILocation(line: 108, column: 7, scope: !28)
!266 = !DILocation(line: 108, column: 15, scope: !28)
!267 = !DILocation(line: 109, column: 3, scope: !28)
!268 = !DILocalVariable(name: "$BoolUtils.andb_150", scope: !28, file: !2, line: 109, type: !10)
!269 = !DILocalVariable(name: "$arg1_73", scope: !28, file: !2, line: 112, type: !270)
!270 = !DIBasicType(name: "Uint256", size: 32)
!271 = !DILocation(line: 112, column: 5, scope: !28)
!272 = !DILocation(line: 112, column: 12, scope: !28)
!273 = !DILocalVariable(name: "$arg2_74", scope: !28, file: !2, line: 113, type: !270)
!274 = !DILocation(line: 113, column: 5, scope: !28)
!275 = !DILocation(line: 113, column: 12, scope: !28)
!276 = !DILocalVariable(name: "$test_78", scope: !28, file: !2, line: 114, type: !10)
!277 = !DILocation(line: 114, column: 5, scope: !28)
!278 = !DILocalVariable(name: "$res_75", scope: !28, file: !2, line: 115, type: !270)
!279 = !DILocation(line: 115, column: 7, scope: !28)
!280 = !DILocation(line: 115, column: 13, scope: !28)
!281 = !DILocalVariable(name: "$res__76", scope: !28, file: !2, line: 116, type: !270)
!282 = !DILocation(line: 116, column: 7, scope: !28)
!283 = !DILocation(line: 116, column: 14, scope: !28)
!284 = !DILocalVariable(name: "$test__77", scope: !28, file: !2, line: 117, type: !10)
!285 = !DILocation(line: 117, column: 7, scope: !28)
!286 = !DILocation(line: 117, column: 15, scope: !28)
!287 = !DILocation(line: 118, column: 3, scope: !28)
!288 = !DILocalVariable(name: "$BoolUtils.andb_152", scope: !28, file: !2, line: 118, type: !10)
!289 = !DILocalVariable(name: "$arg1_79", scope: !28, file: !2, line: 121, type: !270)
!290 = !DILocation(line: 121, column: 5, scope: !28)
!291 = !DILocation(line: 121, column: 12, scope: !28)
!292 = !DILocalVariable(name: "$arg2_80", scope: !28, file: !2, line: 122, type: !270)
!293 = !DILocation(line: 122, column: 5, scope: !28)
!294 = !DILocation(line: 122, column: 12, scope: !28)
!295 = !DILocalVariable(name: "$test_84", scope: !28, file: !2, line: 123, type: !10)
!296 = !DILocation(line: 123, column: 5, scope: !28)
!297 = !DILocalVariable(name: "$res_81", scope: !28, file: !2, line: 124, type: !270)
!298 = !DILocation(line: 124, column: 7, scope: !28)
!299 = !DILocation(line: 124, column: 13, scope: !28)
!300 = !DILocalVariable(name: "$res__82", scope: !28, file: !2, line: 125, type: !270)
!301 = !DILocation(line: 125, column: 7, scope: !28)
!302 = !DILocation(line: 125, column: 14, scope: !28)
!303 = !DILocalVariable(name: "$test__83", scope: !28, file: !2, line: 126, type: !10)
!304 = !DILocation(line: 126, column: 7, scope: !28)
!305 = !DILocation(line: 126, column: 15, scope: !28)
!306 = !DILocation(line: 127, column: 3, scope: !28)
!307 = !DILocalVariable(name: "$BoolUtils.andb_154", scope: !28, file: !2, line: 127, type: !10)
!308 = !DILocalVariable(name: "$arg1_85", scope: !28, file: !2, line: 130, type: !270)
!309 = !DILocation(line: 130, column: 5, scope: !28)
!310 = !DILocation(line: 130, column: 12, scope: !28)
!311 = !DILocalVariable(name: "$arg2_86", scope: !28, file: !2, line: 131, type: !270)
!312 = !DILocation(line: 131, column: 5, scope: !28)
!313 = !DILocation(line: 131, column: 12, scope: !28)
!314 = !DILocalVariable(name: "$test_90", scope: !28, file: !2, line: 132, type: !10)
!315 = !DILocation(line: 132, column: 5, scope: !28)
!316 = !DILocalVariable(name: "$res_87", scope: !28, file: !2, line: 133, type: !270)
!317 = !DILocation(line: 133, column: 7, scope: !28)
!318 = !DILocation(line: 133, column: 13, scope: !28)
!319 = !DILocalVariable(name: "$res__88", scope: !28, file: !2, line: 134, type: !270)
!320 = !DILocation(line: 134, column: 7, scope: !28)
!321 = !DILocation(line: 134, column: 14, scope: !28)
!322 = !DILocalVariable(name: "$test__89", scope: !28, file: !2, line: 135, type: !10)
!323 = !DILocation(line: 135, column: 7, scope: !28)
!324 = !DILocation(line: 135, column: 15, scope: !28)
!325 = !DILocation(line: 136, column: 3, scope: !28)
!326 = !DILocalVariable(name: "$BoolUtils.andb_156", scope: !28, file: !2, line: 136, type: !10)
!327 = !DILocalVariable(name: "$arg1_91", scope: !28, file: !2, line: 139, type: !193)
!328 = !DILocation(line: 139, column: 5, scope: !28)
!329 = !DILocation(line: 139, column: 12, scope: !28)
!330 = !DILocalVariable(name: "$arg2_92", scope: !28, file: !2, line: 140, type: !193)
!331 = !DILocation(line: 140, column: 5, scope: !28)
!332 = !DILocation(line: 140, column: 12, scope: !28)
!333 = !DILocalVariable(name: "$test_96", scope: !28, file: !2, line: 141, type: !10)
!334 = !DILocation(line: 141, column: 5, scope: !28)
!335 = !DILocalVariable(name: "$res_93", scope: !28, file: !2, line: 142, type: !193)
!336 = !DILocation(line: 142, column: 7, scope: !28)
!337 = !DILocation(line: 142, column: 13, scope: !28)
!338 = !DILocalVariable(name: "$res__94", scope: !28, file: !2, line: 143, type: !193)
!339 = !DILocation(line: 143, column: 7, scope: !28)
!340 = !DILocation(line: 143, column: 14, scope: !28)
!341 = !DILocalVariable(name: "$test__95", scope: !28, file: !2, line: 144, type: !10)
!342 = !DILocation(line: 144, column: 7, scope: !28)
!343 = !DILocation(line: 144, column: 15, scope: !28)
!344 = !DILocation(line: 145, column: 3, scope: !28)
!345 = !DILocalVariable(name: "$BoolUtils.andb_158", scope: !28, file: !2, line: 145, type: !10)
!346 = !DILocalVariable(name: "$arg1_97", scope: !28, file: !2, line: 148, type: !193)
!347 = !DILocation(line: 148, column: 5, scope: !28)
!348 = !DILocation(line: 148, column: 12, scope: !28)
!349 = !DILocalVariable(name: "$arg2_98", scope: !28, file: !2, line: 149, type: !193)
!350 = !DILocation(line: 149, column: 5, scope: !28)
!351 = !DILocation(line: 149, column: 12, scope: !28)
!352 = !DILocalVariable(name: "$test_102", scope: !28, file: !2, line: 150, type: !10)
!353 = !DILocation(line: 150, column: 5, scope: !28)
!354 = !DILocalVariable(name: "$res_99", scope: !28, file: !2, line: 151, type: !193)
!355 = !DILocation(line: 151, column: 7, scope: !28)
!356 = !DILocation(line: 151, column: 13, scope: !28)
!357 = !DILocalVariable(name: "$res__100", scope: !28, file: !2, line: 152, type: !193)
!358 = !DILocation(line: 152, column: 7, scope: !28)
!359 = !DILocation(line: 152, column: 14, scope: !28)
!360 = !DILocalVariable(name: "$test__101", scope: !28, file: !2, line: 153, type: !10)
!361 = !DILocation(line: 153, column: 7, scope: !28)
!362 = !DILocation(line: 153, column: 15, scope: !28)
!363 = !DILocation(line: 154, column: 3, scope: !28)
!364 = !DILocalVariable(name: "$BoolUtils.andb_160", scope: !28, file: !2, line: 154, type: !10)
!365 = !DILocalVariable(name: "$arg1_103", scope: !28, file: !2, line: 157, type: !193)
!366 = !DILocation(line: 157, column: 5, scope: !28)
!367 = !DILocation(line: 157, column: 12, scope: !28)
!368 = !DILocalVariable(name: "$arg2_104", scope: !28, file: !2, line: 158, type: !193)
!369 = !DILocation(line: 158, column: 5, scope: !28)
!370 = !DILocation(line: 158, column: 12, scope: !28)
!371 = !DILocalVariable(name: "$test_108", scope: !28, file: !2, line: 159, type: !10)
!372 = !DILocation(line: 159, column: 5, scope: !28)
!373 = !DILocalVariable(name: "$res_105", scope: !28, file: !2, line: 160, type: !193)
!374 = !DILocation(line: 160, column: 7, scope: !28)
!375 = !DILocation(line: 160, column: 13, scope: !28)
!376 = !DILocalVariable(name: "$res__106", scope: !28, file: !2, line: 161, type: !193)
!377 = !DILocation(line: 161, column: 7, scope: !28)
!378 = !DILocation(line: 161, column: 14, scope: !28)
!379 = !DILocalVariable(name: "$test__107", scope: !28, file: !2, line: 162, type: !10)
!380 = !DILocation(line: 162, column: 7, scope: !28)
!381 = !DILocation(line: 162, column: 15, scope: !28)
!382 = !DILocation(line: 163, column: 3, scope: !28)
!383 = !DILocalVariable(name: "$BoolUtils.andb_162", scope: !28, file: !2, line: 163, type: !10)
!384 = !DILocalVariable(name: "$arg1_109", scope: !28, file: !2, line: 166, type: !193)
!385 = !DILocation(line: 166, column: 5, scope: !28)
!386 = !DILocation(line: 166, column: 12, scope: !28)
!387 = !DILocalVariable(name: "$arg2_110", scope: !28, file: !2, line: 167, type: !193)
!388 = !DILocation(line: 167, column: 5, scope: !28)
!389 = !DILocation(line: 167, column: 12, scope: !28)
!390 = !DILocalVariable(name: "$test_114", scope: !28, file: !2, line: 168, type: !10)
!391 = !DILocation(line: 168, column: 5, scope: !28)
!392 = !DILocalVariable(name: "$res_111", scope: !28, file: !2, line: 169, type: !193)
!393 = !DILocation(line: 169, column: 7, scope: !28)
!394 = !DILocation(line: 169, column: 13, scope: !28)
!395 = !DILocalVariable(name: "$res__112", scope: !28, file: !2, line: 170, type: !193)
!396 = !DILocation(line: 170, column: 7, scope: !28)
!397 = !DILocation(line: 170, column: 14, scope: !28)
!398 = !DILocalVariable(name: "$test__113", scope: !28, file: !2, line: 171, type: !10)
!399 = !DILocation(line: 171, column: 7, scope: !28)
!400 = !DILocation(line: 171, column: 15, scope: !28)
!401 = !DILocation(line: 172, column: 3, scope: !28)
!402 = !DILocalVariable(name: "$BoolUtils.andb_164", scope: !28, file: !2, line: 172, type: !10)
!403 = !DILocalVariable(name: "$arg1_115", scope: !28, file: !2, line: 175, type: !193)
!404 = !DILocation(line: 175, column: 5, scope: !28)
!405 = !DILocation(line: 175, column: 12, scope: !28)
!406 = !DILocalVariable(name: "$arg2_116", scope: !28, file: !2, line: 176, type: !193)
!407 = !DILocation(line: 176, column: 5, scope: !28)
!408 = !DILocation(line: 176, column: 12, scope: !28)
!409 = !DILocalVariable(name: "$test_120", scope: !28, file: !2, line: 177, type: !10)
!410 = !DILocation(line: 177, column: 5, scope: !28)
!411 = !DILocalVariable(name: "$res_117", scope: !28, file: !2, line: 178, type: !193)
!412 = !DILocation(line: 178, column: 7, scope: !28)
!413 = !DILocation(line: 178, column: 13, scope: !28)
!414 = !DILocalVariable(name: "$res__118", scope: !28, file: !2, line: 179, type: !193)
!415 = !DILocation(line: 179, column: 7, scope: !28)
!416 = !DILocation(line: 179, column: 14, scope: !28)
!417 = !DILocalVariable(name: "$test__119", scope: !28, file: !2, line: 180, type: !10)
!418 = !DILocation(line: 180, column: 7, scope: !28)
!419 = !DILocation(line: 180, column: 15, scope: !28)
!420 = !DILocation(line: 181, column: 3, scope: !28)
!421 = !DILocalVariable(name: "$BoolUtils.andb_166", scope: !28, file: !2, line: 181, type: !10)
!422 = !DILocalVariable(name: "$arg1_121", scope: !28, file: !2, line: 184, type: !193)
!423 = !DILocation(line: 184, column: 5, scope: !28)
!424 = !DILocation(line: 184, column: 12, scope: !28)
!425 = !DILocalVariable(name: "$arg2_122", scope: !28, file: !2, line: 185, type: !193)
!426 = !DILocation(line: 185, column: 5, scope: !28)
!427 = !DILocation(line: 185, column: 12, scope: !28)
!428 = !DILocalVariable(name: "$test_126", scope: !28, file: !2, line: 186, type: !10)
!429 = !DILocation(line: 186, column: 5, scope: !28)
!430 = !DILocalVariable(name: "$res_123", scope: !28, file: !2, line: 187, type: !193)
!431 = !DILocation(line: 187, column: 7, scope: !28)
!432 = !DILocation(line: 187, column: 13, scope: !28)
!433 = !DILocalVariable(name: "$res__124", scope: !28, file: !2, line: 188, type: !193)
!434 = !DILocation(line: 188, column: 7, scope: !28)
!435 = !DILocation(line: 188, column: 14, scope: !28)
!436 = !DILocalVariable(name: "$test__125", scope: !28, file: !2, line: 189, type: !10)
!437 = !DILocation(line: 189, column: 7, scope: !28)
!438 = !DILocation(line: 189, column: 15, scope: !28)
!439 = !DILocation(line: 190, column: 3, scope: !28)
!440 = !DILocalVariable(name: "$BoolUtils.andb_168", scope: !28, file: !2, line: 190, type: !10)
!441 = !DILocation(line: 193, column: 1, scope: !28)
