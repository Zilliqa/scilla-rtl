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
%"$ParamDescr_2122" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2123" = type { %ParamDescrString, i32, %"$ParamDescr_2122"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_2122"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2123"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_171"(%"$$fundef_171_env_224"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$$fundef_171_env_b_237" = getelementptr inbounds %"$$fundef_171_env_224", %"$$fundef_171_env_224"* %0, i32 0, i32 0
  %"$b_envload_238" = load %TName_Bool*, %TName_Bool** %"$$fundef_171_env_b_237", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_238", %TName_Bool** %b, align 8
  %"$retval_172" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_172", metadata !9, metadata !DIExpression()), !dbg !12
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 2, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %entry
  %"$consume_243" = sub i64 %"$gasrem_239", 2
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$b_245" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_246" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_245", i32 0, i32 0
  %"$b_tag_247" = load i8, i8* %"$b_tag_246", align 1
  switch i8 %"$b_tag_247", label %"$empty_default_248" [
    i8 1, label %"$False_249"
    i8 0, label %"$True_259"
  ], !dbg !12

"$False_249":                                     ; preds = %"$have_gas_242"
  %"$b_250" = bitcast %TName_Bool* %"$b_245" to %CName_False*
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$False_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$False_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$adtval_256_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_256_salloc" = call i8* @_salloc(i8* %"$adtval_256_load", i64 1)
  %"$adtval_256" = bitcast i8* %"$adtval_256_salloc" to %CName_False*
  %"$adtgep_257" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_256", i32 0, i32 0
  store i8 1, i8* %"$adtgep_257", align 1
  %"$adtptr_258" = bitcast %CName_False* %"$adtval_256" to %TName_Bool*
  store %TName_Bool* %"$adtptr_258", %TName_Bool** %"$retval_172", align 8, !dbg !13
  br label %"$matchsucc_244"

"$True_259":                                      ; preds = %"$have_gas_242"
  %"$b_260" = bitcast %TName_Bool* %"$b_245" to %CName_True*
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$True_259"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$True_259"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_172", align 8, !dbg !16
  br label %"$matchsucc_244"

"$empty_default_248":                             ; preds = %"$have_gas_242"
  br label %"$matchsucc_244"

"$matchsucc_244":                                 ; preds = %"$have_gas_264", %"$have_gas_254", %"$empty_default_248"
  %"$$retval_172_266" = load %TName_Bool*, %TName_Bool** %"$retval_172", align 8
  ret %TName_Bool* %"$$retval_172_266"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_169"(%"$$fundef_169_env_225"* %0, %TName_Bool* %1) !dbg !18 {
entry:
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_171_cloval_234", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_170", align 8, !dbg !19
  %"$$retval_170_236" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_170", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_170_236"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !20 {
entry:
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 5, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %entry
  %"$consume_271" = sub i64 %"$gasrem_267", 5
  store i64 %"$consume_271", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !22
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 7, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_270"
  %"$consume_276" = sub i64 %"$gasrem_272", 7
  store i64 %"$consume_276", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !22
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_169_env_225"*, %TName_Bool*)* @"$fundef_169" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !23
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 196, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_280"
  %"$consume_289" = sub i64 %"$gasrem_285", 196
  store i64 %"$consume_289", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !22
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 20, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 20
  store i64 %"$consume_294", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !22
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 12, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_293"
  %"$consume_299" = sub i64 %"$gasrem_295", 12
  store i64 %"$consume_299", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !22
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 2, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 2
  store i64 %"$consume_304", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !22
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !24 {
entry:
  %"$expr_173" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_173", metadata !25, metadata !DIExpression()), !dbg !26
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %entry
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 1, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_308"
  %"$consume_314" = sub i64 %"$gasrem_310", 1
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_313"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test, metadata !27, metadata !DIExpression()), !dbg !28
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$adtval_325_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_325_salloc" = call i8* @_salloc(i8* %"$adtval_325_load", i64 1)
  %"$adtval_325" = bitcast i8* %"$adtval_325_salloc" to %CName_True*
  %"$adtgep_326" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_325", i32 0, i32 0
  store i8 0, i8* %"$adtgep_326", align 1
  %"$adtptr_327" = bitcast %CName_True* %"$adtval_325" to %TName_Bool*
  store %TName_Bool* %"$adtptr_327", %TName_Bool** %test, align 8, !dbg !29
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_323"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %arg1, metadata !30, metadata !DIExpression()), !dbg !32
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 1, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_331"
  %"$consume_337" = sub i64 %"$gasrem_333", 1
  store i64 %"$consume_337", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4, !dbg !33
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_336"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %arg2, metadata !34, metadata !DIExpression()), !dbg !35
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_341"
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4, !dbg !36
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_346"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_6", metadata !37, metadata !DIExpression()), !dbg !38
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_351"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res, metadata !39, metadata !DIExpression()), !dbg !40
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 20, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 20
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %"$arg1_363" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_364" = load %Uint32, %Uint32* %arg2, align 4
  %"$mul_call_365" = call %Uint32 @_mul_Uint32(%Uint32 %"$arg1_363", %Uint32 %"$arg2_364"), !dbg !41
  store %Uint32 %"$mul_call_365", %Uint32* %res, align 4, !dbg !41
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_361"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res_, metadata !42, metadata !DIExpression()), !dbg !43
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  store %Uint32 { i32 3398492 }, %Uint32* %res_, align 4, !dbg !44
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_374"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_, metadata !45, metadata !DIExpression()), !dbg !46
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 4, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_379"
  %"$consume_385" = sub i64 %"$gasrem_381", 4
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %"$execptr_load_386" = load i8*, i8** @_execptr, align 8
  %"$res_387" = load %Uint32, %Uint32* %res, align 4
  %"$res__388" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_389" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_386", %Uint32 %"$res_387", %Uint32 %"$res__388"), !dbg !47
  store %TName_Bool* %"$eq_call_389", %TName_Bool** %test_, align 8, !dbg !47
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 1, %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$have_gas_384"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$have_gas_384"
  %"$consume_395" = sub i64 %"$gasrem_391", 1
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %"$BoolUtils.andb_127" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_396" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_397" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_396", 0
  %"$BoolUtils.andb_envptr_398" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_396", 1
  %"$test_399" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_400" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_397"(i8* %"$BoolUtils.andb_envptr_398", %TName_Bool* %"$test_399"), !dbg !48
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_400", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8, !dbg !48
  %"$BoolUtils.andb_128" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_128", metadata !49, metadata !DIExpression()), !dbg !48
  %"$$BoolUtils.andb_127_401" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_127", align 8
  %"$$BoolUtils.andb_127_fptr_402" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_401", 0
  %"$$BoolUtils.andb_127_envptr_403" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_127_401", 1
  %"$test__404" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_127_call_405" = call %TName_Bool* %"$$BoolUtils.andb_127_fptr_402"(i8* %"$$BoolUtils.andb_127_envptr_403", %TName_Bool* %"$test__404"), !dbg !48
  store %TName_Bool* %"$$BoolUtils.andb_127_call_405", %TName_Bool** %"$BoolUtils.andb_128", align 8, !dbg !48
  %"$$BoolUtils.andb_128_406" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_128", align 8
  store %TName_Bool* %"$$BoolUtils.andb_128_406", %TName_Bool** %"$test_6", align 8, !dbg !48
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$have_gas_394"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$have_gas_394"
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %"$arg2_7" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$arg2_7", metadata !50, metadata !DIExpression()), !dbg !52
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$have_gas_410"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$have_gas_410"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg2_7", align 4, !dbg !53
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_415"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$arg1_8" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$arg1_8", metadata !54, metadata !DIExpression()), !dbg !55
  %"$gasrem_422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_423" = icmp ugt i64 1, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %"$have_gas_420"
  %"$consume_426" = sub i64 %"$gasrem_422", 1
  store i64 %"$consume_426", i64* @_gasrem, align 8
  store %Int32 { i32 -1843 }, %Int32* %"$arg1_8", align 4, !dbg !56
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_425"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_425"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_12", metadata !57, metadata !DIExpression()), !dbg !58
  %"$gasrem_432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_433" = icmp ugt i64 1, %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %"$have_gas_430"
  %"$consume_436" = sub i64 %"$gasrem_432", 1
  store i64 %"$consume_436", i64* @_gasrem, align 8
  %"$res_9" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$res_9", metadata !59, metadata !DIExpression()), !dbg !60
  %"$gasrem_437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_438" = icmp ugt i64 20, %"$gasrem_437"
  br i1 %"$gascmp_438", label %"$out_of_gas_439", label %"$have_gas_440"

"$out_of_gas_439":                                ; preds = %"$have_gas_435"
  call void @_out_of_gas()
  br label %"$have_gas_440"

"$have_gas_440":                                  ; preds = %"$out_of_gas_439", %"$have_gas_435"
  %"$consume_441" = sub i64 %"$gasrem_437", 20
  store i64 %"$consume_441", i64* @_gasrem, align 8
  %"$$arg1_8_442" = load %Int32, %Int32* %"$arg1_8", align 4
  %"$$arg2_7_443" = load %Int32, %Int32* %"$arg2_7", align 4
  %"$mul_call_444" = call %Int32 @_mul_Int32(%Int32 %"$$arg1_8_442", %Int32 %"$$arg2_7_443"), !dbg !61
  store %Int32 %"$mul_call_444", %Int32* %"$res_9", align 4, !dbg !61
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_440"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_440"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  %"$res__10" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$res__10", metadata !62, metadata !DIExpression()), !dbg !63
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_448"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  store %Int32 { i32 -3398492 }, %Int32* %"$res__10", align 4, !dbg !64
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_453"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__11", metadata !65, metadata !DIExpression()), !dbg !66
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 4, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 4
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %"$execptr_load_465" = load i8*, i8** @_execptr, align 8
  %"$$res_9_466" = load %Int32, %Int32* %"$res_9", align 4
  %"$$res__10_467" = load %Int32, %Int32* %"$res__10", align 4
  %"$eq_call_468" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_465", %Int32 %"$$res_9_466", %Int32 %"$$res__10_467"), !dbg !67
  store %TName_Bool* %"$eq_call_468", %TName_Bool** %"$test__11", align 8, !dbg !67
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_463"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %"$BoolUtils.andb_129" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_475" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_476" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_475", 0
  %"$BoolUtils.andb_envptr_477" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_475", 1
  %"$$test_6_478" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_479" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_476"(i8* %"$BoolUtils.andb_envptr_477", %TName_Bool* %"$$test_6_478"), !dbg !68
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_479", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_129", align 8, !dbg !68
  %"$BoolUtils.andb_130" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_130", metadata !69, metadata !DIExpression()), !dbg !68
  %"$$BoolUtils.andb_129_480" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_129", align 8
  %"$$BoolUtils.andb_129_fptr_481" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_129_480", 0
  %"$$BoolUtils.andb_129_envptr_482" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_129_480", 1
  %"$$test__11_483" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_129_call_484" = call %TName_Bool* %"$$BoolUtils.andb_129_fptr_481"(i8* %"$$BoolUtils.andb_129_envptr_482", %TName_Bool* %"$$test__11_483"), !dbg !68
  store %TName_Bool* %"$$BoolUtils.andb_129_call_484", %TName_Bool** %"$BoolUtils.andb_130", align 8, !dbg !68
  %"$$BoolUtils.andb_130_485" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_130", align 8
  store %TName_Bool* %"$$BoolUtils.andb_130_485", %TName_Bool** %"$test_12", align 8, !dbg !68
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %"$have_gas_473"
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  %"$arg1_13" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$arg1_13", metadata !70, metadata !DIExpression()), !dbg !72
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 1, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$have_gas_489"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$have_gas_489"
  %"$consume_495" = sub i64 %"$gasrem_491", 1
  store i64 %"$consume_495", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775806 }, %Int64* %"$arg1_13", align 8, !dbg !73
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 1, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_494"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_494"
  %"$consume_500" = sub i64 %"$gasrem_496", 1
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %"$arg2_14" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$arg2_14", metadata !74, metadata !DIExpression()), !dbg !75
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_499"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_499"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  store %Int64 { i64 -1 }, %Int64* %"$arg2_14", align 8, !dbg !76
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_504"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_18", metadata !77, metadata !DIExpression()), !dbg !78
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$res_15" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$res_15", metadata !79, metadata !DIExpression()), !dbg !80
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 20, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_514"
  %"$consume_520" = sub i64 %"$gasrem_516", 20
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %"$$arg1_13_521" = load %Int64, %Int64* %"$arg1_13", align 8
  %"$$arg2_14_522" = load %Int64, %Int64* %"$arg2_14", align 8
  %"$mul_call_523" = call %Int64 @_mul_Int64(%Int64 %"$$arg1_13_521", %Int64 %"$$arg2_14_522"), !dbg !81
  store %Int64 %"$mul_call_523", %Int64* %"$res_15", align 8, !dbg !81
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_519"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %"$res__16" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$res__16", metadata !82, metadata !DIExpression()), !dbg !83
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_527"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  store %Int64 { i64 -9223372036854775806 }, %Int64* %"$res__16", align 8, !dbg !84
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 1, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_532"
  %"$consume_538" = sub i64 %"$gasrem_534", 1
  store i64 %"$consume_538", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__17", metadata !85, metadata !DIExpression()), !dbg !86
  %"$gasrem_539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_540" = icmp ugt i64 4, %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_537"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_537"
  %"$consume_543" = sub i64 %"$gasrem_539", 4
  store i64 %"$consume_543", i64* @_gasrem, align 8
  %"$execptr_load_544" = load i8*, i8** @_execptr, align 8
  %"$$res_15_545" = load %Int64, %Int64* %"$res_15", align 8
  %"$$res__16_546" = load %Int64, %Int64* %"$res__16", align 8
  %"$eq_call_547" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_544", %Int64 %"$$res_15_545", %Int64 %"$$res__16_546"), !dbg !87
  store %TName_Bool* %"$eq_call_547", %TName_Bool** %"$test__17", align 8, !dbg !87
  %"$gasrem_549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_550" = icmp ugt i64 1, %"$gasrem_549"
  br i1 %"$gascmp_550", label %"$out_of_gas_551", label %"$have_gas_552"

"$out_of_gas_551":                                ; preds = %"$have_gas_542"
  call void @_out_of_gas()
  br label %"$have_gas_552"

"$have_gas_552":                                  ; preds = %"$out_of_gas_551", %"$have_gas_542"
  %"$consume_553" = sub i64 %"$gasrem_549", 1
  store i64 %"$consume_553", i64* @_gasrem, align 8
  %"$BoolUtils.andb_131" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_554" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_555" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_554", 0
  %"$BoolUtils.andb_envptr_556" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_554", 1
  %"$$test_12_557" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_558" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_555"(i8* %"$BoolUtils.andb_envptr_556", %TName_Bool* %"$$test_12_557"), !dbg !88
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_558", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_131", align 8, !dbg !88
  %"$BoolUtils.andb_132" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_132", metadata !89, metadata !DIExpression()), !dbg !88
  %"$$BoolUtils.andb_131_559" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_131", align 8
  %"$$BoolUtils.andb_131_fptr_560" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_131_559", 0
  %"$$BoolUtils.andb_131_envptr_561" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_131_559", 1
  %"$$test__17_562" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_131_call_563" = call %TName_Bool* %"$$BoolUtils.andb_131_fptr_560"(i8* %"$$BoolUtils.andb_131_envptr_561", %TName_Bool* %"$$test__17_562"), !dbg !88
  store %TName_Bool* %"$$BoolUtils.andb_131_call_563", %TName_Bool** %"$BoolUtils.andb_132", align 8, !dbg !88
  %"$$BoolUtils.andb_132_564" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_132", align 8
  store %TName_Bool* %"$$BoolUtils.andb_132_564", %TName_Bool** %"$test_18", align 8, !dbg !88
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 1, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %"$have_gas_552"
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %"$have_gas_552"
  %"$consume_569" = sub i64 %"$gasrem_565", 1
  store i64 %"$consume_569", i64* @_gasrem, align 8
  %"$arg2_19" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$arg2_19", metadata !90, metadata !DIExpression()), !dbg !92
  %"$gasrem_570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_571" = icmp ugt i64 1, %"$gasrem_570"
  br i1 %"$gascmp_571", label %"$out_of_gas_572", label %"$have_gas_573"

"$out_of_gas_572":                                ; preds = %"$have_gas_568"
  call void @_out_of_gas()
  br label %"$have_gas_573"

"$have_gas_573":                                  ; preds = %"$out_of_gas_572", %"$have_gas_568"
  %"$consume_574" = sub i64 %"$gasrem_570", 1
  store i64 %"$consume_574", i64* @_gasrem, align 8
  store %Uint64 { i64 2147483647 }, %Uint64* %"$arg2_19", align 8, !dbg !93
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 1, %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$have_gas_573"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$have_gas_573"
  %"$consume_579" = sub i64 %"$gasrem_575", 1
  store i64 %"$consume_579", i64* @_gasrem, align 8
  %"$arg1_20" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$arg1_20", metadata !94, metadata !DIExpression()), !dbg !95
  %"$gasrem_580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_581" = icmp ugt i64 1, %"$gasrem_580"
  br i1 %"$gascmp_581", label %"$out_of_gas_582", label %"$have_gas_583"

"$out_of_gas_582":                                ; preds = %"$have_gas_578"
  call void @_out_of_gas()
  br label %"$have_gas_583"

"$have_gas_583":                                  ; preds = %"$out_of_gas_582", %"$have_gas_578"
  %"$consume_584" = sub i64 %"$gasrem_580", 1
  store i64 %"$consume_584", i64* @_gasrem, align 8
  store %Uint64 { i64 2147483647 }, %Uint64* %"$arg1_20", align 8, !dbg !96
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_583"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_583"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_24", metadata !97, metadata !DIExpression()), !dbg !98
  %"$gasrem_590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_591" = icmp ugt i64 1, %"$gasrem_590"
  br i1 %"$gascmp_591", label %"$out_of_gas_592", label %"$have_gas_593"

"$out_of_gas_592":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_593"

"$have_gas_593":                                  ; preds = %"$out_of_gas_592", %"$have_gas_588"
  %"$consume_594" = sub i64 %"$gasrem_590", 1
  store i64 %"$consume_594", i64* @_gasrem, align 8
  %"$res_21" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$res_21", metadata !99, metadata !DIExpression()), !dbg !100
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 20, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %"$have_gas_593"
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %"$have_gas_593"
  %"$consume_599" = sub i64 %"$gasrem_595", 20
  store i64 %"$consume_599", i64* @_gasrem, align 8
  %"$$arg1_20_600" = load %Uint64, %Uint64* %"$arg1_20", align 8
  %"$$arg2_19_601" = load %Uint64, %Uint64* %"$arg2_19", align 8
  %"$mul_call_602" = call %Uint64 @_mul_Uint64(%Uint64 %"$$arg1_20_600", %Uint64 %"$$arg2_19_601"), !dbg !101
  store %Uint64 %"$mul_call_602", %Uint64* %"$res_21", align 8, !dbg !101
  %"$gasrem_603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_604" = icmp ugt i64 1, %"$gasrem_603"
  br i1 %"$gascmp_604", label %"$out_of_gas_605", label %"$have_gas_606"

"$out_of_gas_605":                                ; preds = %"$have_gas_598"
  call void @_out_of_gas()
  br label %"$have_gas_606"

"$have_gas_606":                                  ; preds = %"$out_of_gas_605", %"$have_gas_598"
  %"$consume_607" = sub i64 %"$gasrem_603", 1
  store i64 %"$consume_607", i64* @_gasrem, align 8
  %"$res__22" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$res__22", metadata !102, metadata !DIExpression()), !dbg !103
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 1, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_606"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_606"
  %"$consume_612" = sub i64 %"$gasrem_608", 1
  store i64 %"$consume_612", i64* @_gasrem, align 8
  store %Uint64 { i64 4611686014132420609 }, %Uint64* %"$res__22", align 8, !dbg !104
  %"$gasrem_613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_614" = icmp ugt i64 1, %"$gasrem_613"
  br i1 %"$gascmp_614", label %"$out_of_gas_615", label %"$have_gas_616"

"$out_of_gas_615":                                ; preds = %"$have_gas_611"
  call void @_out_of_gas()
  br label %"$have_gas_616"

"$have_gas_616":                                  ; preds = %"$out_of_gas_615", %"$have_gas_611"
  %"$consume_617" = sub i64 %"$gasrem_613", 1
  store i64 %"$consume_617", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__23", metadata !105, metadata !DIExpression()), !dbg !106
  %"$gasrem_618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_619" = icmp ugt i64 4, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %"$have_gas_616"
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %"$have_gas_616"
  %"$consume_622" = sub i64 %"$gasrem_618", 4
  store i64 %"$consume_622", i64* @_gasrem, align 8
  %"$execptr_load_623" = load i8*, i8** @_execptr, align 8
  %"$$res_21_624" = load %Uint64, %Uint64* %"$res_21", align 8
  %"$$res__22_625" = load %Uint64, %Uint64* %"$res__22", align 8
  %"$eq_call_626" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_623", %Uint64 %"$$res_21_624", %Uint64 %"$$res__22_625"), !dbg !107
  store %TName_Bool* %"$eq_call_626", %TName_Bool** %"$test__23", align 8, !dbg !107
  %"$gasrem_628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_629" = icmp ugt i64 1, %"$gasrem_628"
  br i1 %"$gascmp_629", label %"$out_of_gas_630", label %"$have_gas_631"

"$out_of_gas_630":                                ; preds = %"$have_gas_621"
  call void @_out_of_gas()
  br label %"$have_gas_631"

"$have_gas_631":                                  ; preds = %"$out_of_gas_630", %"$have_gas_621"
  %"$consume_632" = sub i64 %"$gasrem_628", 1
  store i64 %"$consume_632", i64* @_gasrem, align 8
  %"$BoolUtils.andb_133" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_633" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_634" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_633", 0
  %"$BoolUtils.andb_envptr_635" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_633", 1
  %"$$test_18_636" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_637" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_634"(i8* %"$BoolUtils.andb_envptr_635", %TName_Bool* %"$$test_18_636"), !dbg !108
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_637", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8, !dbg !108
  %"$BoolUtils.andb_134" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_134", metadata !109, metadata !DIExpression()), !dbg !108
  %"$$BoolUtils.andb_133_638" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8
  %"$$BoolUtils.andb_133_fptr_639" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_638", 0
  %"$$BoolUtils.andb_133_envptr_640" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_638", 1
  %"$$test__23_641" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_133_call_642" = call %TName_Bool* %"$$BoolUtils.andb_133_fptr_639"(i8* %"$$BoolUtils.andb_133_envptr_640", %TName_Bool* %"$$test__23_641"), !dbg !108
  store %TName_Bool* %"$$BoolUtils.andb_133_call_642", %TName_Bool** %"$BoolUtils.andb_134", align 8, !dbg !108
  %"$$BoolUtils.andb_134_643" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_134", align 8
  store %TName_Bool* %"$$BoolUtils.andb_134_643", %TName_Bool** %"$test_24", align 8, !dbg !108
  %"$gasrem_644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_645" = icmp ugt i64 1, %"$gasrem_644"
  br i1 %"$gascmp_645", label %"$out_of_gas_646", label %"$have_gas_647"

"$out_of_gas_646":                                ; preds = %"$have_gas_631"
  call void @_out_of_gas()
  br label %"$have_gas_647"

"$have_gas_647":                                  ; preds = %"$out_of_gas_646", %"$have_gas_631"
  %"$consume_648" = sub i64 %"$gasrem_644", 1
  store i64 %"$consume_648", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$arg1_25", metadata !110, metadata !DIExpression()), !dbg !112
  %"$gasrem_649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_650" = icmp ugt i64 1, %"$gasrem_649"
  br i1 %"$gascmp_650", label %"$out_of_gas_651", label %"$have_gas_652"

"$out_of_gas_651":                                ; preds = %"$have_gas_647"
  call void @_out_of_gas()
  br label %"$have_gas_652"

"$have_gas_652":                                  ; preds = %"$out_of_gas_651", %"$have_gas_647"
  %"$consume_653" = sub i64 %"$gasrem_649", 1
  store i64 %"$consume_653", i64* @_gasrem, align 8
  store %Uint128 { i128 9223372036854775806 }, %Uint128* %"$arg1_25", align 8, !dbg !113
  %"$gasrem_654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_655" = icmp ugt i64 1, %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_652"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_652"
  %"$consume_658" = sub i64 %"$gasrem_654", 1
  store i64 %"$consume_658", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$arg2_26", metadata !114, metadata !DIExpression()), !dbg !115
  %"$gasrem_659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_660" = icmp ugt i64 1, %"$gasrem_659"
  br i1 %"$gascmp_660", label %"$out_of_gas_661", label %"$have_gas_662"

"$out_of_gas_661":                                ; preds = %"$have_gas_657"
  call void @_out_of_gas()
  br label %"$have_gas_662"

"$have_gas_662":                                  ; preds = %"$out_of_gas_661", %"$have_gas_657"
  %"$consume_663" = sub i64 %"$gasrem_659", 1
  store i64 %"$consume_663", i64* @_gasrem, align 8
  store %Uint128 { i128 9223372036854775806 }, %Uint128* %"$arg2_26", align 8, !dbg !116
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_662"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_662"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_30", metadata !117, metadata !DIExpression()), !dbg !118
  %"$gasrem_669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %"$have_gas_667"
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem, align 8
  %"$res_27" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$res_27", metadata !119, metadata !DIExpression()), !dbg !120
  %"$gasrem_675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_676" = icmp ugt i64 40, %"$gasrem_675"
  br i1 %"$gascmp_676", label %"$out_of_gas_677", label %"$have_gas_678"

"$out_of_gas_677":                                ; preds = %"$have_gas_672"
  call void @_out_of_gas()
  br label %"$have_gas_678"

"$have_gas_678":                                  ; preds = %"$out_of_gas_677", %"$have_gas_672"
  %"$consume_679" = sub i64 %"$gasrem_675", 40
  store i64 %"$consume_679", i64* @_gasrem, align 8
  %"$$arg1_25_680" = load %Uint128, %Uint128* %"$arg1_25", align 8
  %"$$arg2_26_681" = load %Uint128, %Uint128* %"$arg2_26", align 8
  %"$mul_call_682" = call %Uint128 @_mul_Uint128(%Uint128 %"$$arg1_25_680", %Uint128 %"$$arg2_26_681"), !dbg !121
  store %Uint128 %"$mul_call_682", %Uint128* %"$res_27", align 8, !dbg !121
  %"$gasrem_683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_684" = icmp ugt i64 1, %"$gasrem_683"
  br i1 %"$gascmp_684", label %"$out_of_gas_685", label %"$have_gas_686"

"$out_of_gas_685":                                ; preds = %"$have_gas_678"
  call void @_out_of_gas()
  br label %"$have_gas_686"

"$have_gas_686":                                  ; preds = %"$out_of_gas_685", %"$have_gas_678"
  %"$consume_687" = sub i64 %"$gasrem_683", 1
  store i64 %"$consume_687", i64* @_gasrem, align 8
  %"$res__28" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$res__28", metadata !122, metadata !DIExpression()), !dbg !123
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 1, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_686"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_686"
  %"$consume_692" = sub i64 %"$gasrem_688", 1
  store i64 %"$consume_692", i64* @_gasrem, align 8
  store %Uint128 { i128 85070591730234615828950163710522949636 }, %Uint128* %"$res__28", align 8, !dbg !124
  %"$gasrem_693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_694" = icmp ugt i64 1, %"$gasrem_693"
  br i1 %"$gascmp_694", label %"$out_of_gas_695", label %"$have_gas_696"

"$out_of_gas_695":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_696"

"$have_gas_696":                                  ; preds = %"$out_of_gas_695", %"$have_gas_691"
  %"$consume_697" = sub i64 %"$gasrem_693", 1
  store i64 %"$consume_697", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__29", metadata !125, metadata !DIExpression()), !dbg !126
  %"$gasrem_699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_700" = icmp ugt i64 8, %"$gasrem_699"
  br i1 %"$gascmp_700", label %"$out_of_gas_701", label %"$have_gas_702"

"$out_of_gas_701":                                ; preds = %"$have_gas_696"
  call void @_out_of_gas()
  br label %"$have_gas_702"

"$have_gas_702":                                  ; preds = %"$out_of_gas_701", %"$have_gas_696"
  %"$consume_703" = sub i64 %"$gasrem_699", 8
  store i64 %"$consume_703", i64* @_gasrem, align 8
  %"$execptr_load_704" = load i8*, i8** @_execptr, align 8
  %"$$res_27_705" = load %Uint128, %Uint128* %"$res_27", align 8
  %"$$res__28_706" = load %Uint128, %Uint128* %"$res__28", align 8
  %"$eq_call_707" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_704", %Uint128 %"$$res_27_705", %Uint128 %"$$res__28_706"), !dbg !127
  store %TName_Bool* %"$eq_call_707", %TName_Bool** %"$test__29", align 8, !dbg !127
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 1, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_702"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_702"
  %"$consume_713" = sub i64 %"$gasrem_709", 1
  store i64 %"$consume_713", i64* @_gasrem, align 8
  %"$BoolUtils.andb_135" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_714" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_715" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_714", 0
  %"$BoolUtils.andb_envptr_716" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_714", 1
  %"$$test_24_717" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_718" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_715"(i8* %"$BoolUtils.andb_envptr_716", %TName_Bool* %"$$test_24_717"), !dbg !128
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_718", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8, !dbg !128
  %"$BoolUtils.andb_136" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_136", metadata !129, metadata !DIExpression()), !dbg !128
  %"$$BoolUtils.andb_135_719" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$$BoolUtils.andb_135_fptr_720" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_719", 0
  %"$$BoolUtils.andb_135_envptr_721" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_719", 1
  %"$$test__29_722" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_135_call_723" = call %TName_Bool* %"$$BoolUtils.andb_135_fptr_720"(i8* %"$$BoolUtils.andb_135_envptr_721", %TName_Bool* %"$$test__29_722"), !dbg !128
  store %TName_Bool* %"$$BoolUtils.andb_135_call_723", %TName_Bool** %"$BoolUtils.andb_136", align 8, !dbg !128
  %"$$BoolUtils.andb_136_724" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_136", align 8
  store %TName_Bool* %"$$BoolUtils.andb_136_724", %TName_Bool** %"$test_30", align 8, !dbg !128
  %"$gasrem_725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_726" = icmp ugt i64 1, %"$gasrem_725"
  br i1 %"$gascmp_726", label %"$out_of_gas_727", label %"$have_gas_728"

"$out_of_gas_727":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_728"

"$have_gas_728":                                  ; preds = %"$out_of_gas_727", %"$have_gas_712"
  %"$consume_729" = sub i64 %"$gasrem_725", 1
  store i64 %"$consume_729", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg1_31", metadata !130, metadata !DIExpression()), !dbg !132
  %"$gasrem_730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_731" = icmp ugt i64 1, %"$gasrem_730"
  br i1 %"$gascmp_731", label %"$out_of_gas_732", label %"$have_gas_733"

"$out_of_gas_732":                                ; preds = %"$have_gas_728"
  call void @_out_of_gas()
  br label %"$have_gas_733"

"$have_gas_733":                                  ; preds = %"$out_of_gas_732", %"$have_gas_728"
  %"$consume_734" = sub i64 %"$gasrem_730", 1
  store i64 %"$consume_734", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_31", align 8, !dbg !133
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %"$have_gas_733"
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %"$have_gas_733"
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg2_32", metadata !134, metadata !DIExpression()), !dbg !135
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_738"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg2_32", align 8, !dbg !136
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 1, %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %"$have_gas_743"
  %"$consume_749" = sub i64 %"$gasrem_745", 1
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_36", metadata !137, metadata !DIExpression()), !dbg !138
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_748"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_748"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  %"$res_33" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res_33", metadata !139, metadata !DIExpression()), !dbg !140
  %"$gasrem_756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_757" = icmp ugt i64 40, %"$gasrem_756"
  br i1 %"$gascmp_757", label %"$out_of_gas_758", label %"$have_gas_759"

"$out_of_gas_758":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_759"

"$have_gas_759":                                  ; preds = %"$out_of_gas_758", %"$have_gas_753"
  %"$consume_760" = sub i64 %"$gasrem_756", 40
  store i64 %"$consume_760", i64* @_gasrem, align 8
  %"$$arg1_31_761" = load %Int128, %Int128* %"$arg1_31", align 8
  %"$$arg2_32_762" = load %Int128, %Int128* %"$arg2_32", align 8
  %"$mul_call_763" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_31_761", %Int128 %"$$arg2_32_762"), !dbg !141
  store %Int128 %"$mul_call_763", %Int128* %"$res_33", align 8, !dbg !141
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_759"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_759"
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %"$res__34" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res__34", metadata !142, metadata !DIExpression()), !dbg !143
  %"$gasrem_769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_770" = icmp ugt i64 1, %"$gasrem_769"
  br i1 %"$gascmp_770", label %"$out_of_gas_771", label %"$have_gas_772"

"$out_of_gas_771":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_772"

"$have_gas_772":                                  ; preds = %"$out_of_gas_771", %"$have_gas_767"
  %"$consume_773" = sub i64 %"$gasrem_769", 1
  store i64 %"$consume_773", i64* @_gasrem, align 8
  store %Int128 { i128 85070591730234615828950163710522949636 }, %Int128* %"$res__34", align 8, !dbg !144
  %"$gasrem_774" = load i64, i64* @_gasrem, align 8
  %"$gascmp_775" = icmp ugt i64 1, %"$gasrem_774"
  br i1 %"$gascmp_775", label %"$out_of_gas_776", label %"$have_gas_777"

"$out_of_gas_776":                                ; preds = %"$have_gas_772"
  call void @_out_of_gas()
  br label %"$have_gas_777"

"$have_gas_777":                                  ; preds = %"$out_of_gas_776", %"$have_gas_772"
  %"$consume_778" = sub i64 %"$gasrem_774", 1
  store i64 %"$consume_778", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__35", metadata !145, metadata !DIExpression()), !dbg !146
  %"$gasrem_780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_781" = icmp ugt i64 8, %"$gasrem_780"
  br i1 %"$gascmp_781", label %"$out_of_gas_782", label %"$have_gas_783"

"$out_of_gas_782":                                ; preds = %"$have_gas_777"
  call void @_out_of_gas()
  br label %"$have_gas_783"

"$have_gas_783":                                  ; preds = %"$out_of_gas_782", %"$have_gas_777"
  %"$consume_784" = sub i64 %"$gasrem_780", 8
  store i64 %"$consume_784", i64* @_gasrem, align 8
  %"$execptr_load_785" = load i8*, i8** @_execptr, align 8
  %"$$res_33_786" = load %Int128, %Int128* %"$res_33", align 8
  %"$$res__34_787" = load %Int128, %Int128* %"$res__34", align 8
  %"$eq_call_788" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_785", %Int128 %"$$res_33_786", %Int128 %"$$res__34_787"), !dbg !147
  store %TName_Bool* %"$eq_call_788", %TName_Bool** %"$test__35", align 8, !dbg !147
  %"$gasrem_790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_791" = icmp ugt i64 1, %"$gasrem_790"
  br i1 %"$gascmp_791", label %"$out_of_gas_792", label %"$have_gas_793"

"$out_of_gas_792":                                ; preds = %"$have_gas_783"
  call void @_out_of_gas()
  br label %"$have_gas_793"

"$have_gas_793":                                  ; preds = %"$out_of_gas_792", %"$have_gas_783"
  %"$consume_794" = sub i64 %"$gasrem_790", 1
  store i64 %"$consume_794", i64* @_gasrem, align 8
  %"$BoolUtils.andb_137" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_795" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_796" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_795", 0
  %"$BoolUtils.andb_envptr_797" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_795", 1
  %"$$test_30_798" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_799" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_796"(i8* %"$BoolUtils.andb_envptr_797", %TName_Bool* %"$$test_30_798"), !dbg !148
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_799", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8, !dbg !148
  %"$BoolUtils.andb_138" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_138", metadata !149, metadata !DIExpression()), !dbg !148
  %"$$BoolUtils.andb_137_800" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8
  %"$$BoolUtils.andb_137_fptr_801" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_800", 0
  %"$$BoolUtils.andb_137_envptr_802" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_800", 1
  %"$$test__35_803" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_137_call_804" = call %TName_Bool* %"$$BoolUtils.andb_137_fptr_801"(i8* %"$$BoolUtils.andb_137_envptr_802", %TName_Bool* %"$$test__35_803"), !dbg !148
  store %TName_Bool* %"$$BoolUtils.andb_137_call_804", %TName_Bool** %"$BoolUtils.andb_138", align 8, !dbg !148
  %"$$BoolUtils.andb_138_805" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_138", align 8
  store %TName_Bool* %"$$BoolUtils.andb_138_805", %TName_Bool** %"$test_36", align 8, !dbg !148
  %"$gasrem_806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_807" = icmp ugt i64 1, %"$gasrem_806"
  br i1 %"$gascmp_807", label %"$out_of_gas_808", label %"$have_gas_809"

"$out_of_gas_808":                                ; preds = %"$have_gas_793"
  call void @_out_of_gas()
  br label %"$have_gas_809"

"$have_gas_809":                                  ; preds = %"$out_of_gas_808", %"$have_gas_793"
  %"$consume_810" = sub i64 %"$gasrem_806", 1
  store i64 %"$consume_810", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg1_37", metadata !150, metadata !DIExpression()), !dbg !151
  %"$gasrem_811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_812" = icmp ugt i64 1, %"$gasrem_811"
  br i1 %"$gascmp_812", label %"$out_of_gas_813", label %"$have_gas_814"

"$out_of_gas_813":                                ; preds = %"$have_gas_809"
  call void @_out_of_gas()
  br label %"$have_gas_814"

"$have_gas_814":                                  ; preds = %"$out_of_gas_813", %"$have_gas_809"
  %"$consume_815" = sub i64 %"$gasrem_811", 1
  store i64 %"$consume_815", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_37", align 8, !dbg !152
  %"$gasrem_816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_817" = icmp ugt i64 1, %"$gasrem_816"
  br i1 %"$gascmp_817", label %"$out_of_gas_818", label %"$have_gas_819"

"$out_of_gas_818":                                ; preds = %"$have_gas_814"
  call void @_out_of_gas()
  br label %"$have_gas_819"

"$have_gas_819":                                  ; preds = %"$out_of_gas_818", %"$have_gas_814"
  %"$consume_820" = sub i64 %"$gasrem_816", 1
  store i64 %"$consume_820", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg2_38", metadata !153, metadata !DIExpression()), !dbg !154
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 1, %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %"$have_gas_819"
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %"$have_gas_819"
  %"$consume_825" = sub i64 %"$gasrem_821", 1
  store i64 %"$consume_825", i64* @_gasrem, align 8
  store %Int128 zeroinitializer, %Int128* %"$arg2_38", align 8, !dbg !155
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 1, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_824"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_824"
  %"$consume_830" = sub i64 %"$gasrem_826", 1
  store i64 %"$consume_830", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_42", metadata !156, metadata !DIExpression()), !dbg !157
  %"$gasrem_831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_832" = icmp ugt i64 1, %"$gasrem_831"
  br i1 %"$gascmp_832", label %"$out_of_gas_833", label %"$have_gas_834"

"$out_of_gas_833":                                ; preds = %"$have_gas_829"
  call void @_out_of_gas()
  br label %"$have_gas_834"

"$have_gas_834":                                  ; preds = %"$out_of_gas_833", %"$have_gas_829"
  %"$consume_835" = sub i64 %"$gasrem_831", 1
  store i64 %"$consume_835", i64* @_gasrem, align 8
  %"$res_39" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res_39", metadata !158, metadata !DIExpression()), !dbg !159
  %"$gasrem_837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_838" = icmp ugt i64 40, %"$gasrem_837"
  br i1 %"$gascmp_838", label %"$out_of_gas_839", label %"$have_gas_840"

"$out_of_gas_839":                                ; preds = %"$have_gas_834"
  call void @_out_of_gas()
  br label %"$have_gas_840"

"$have_gas_840":                                  ; preds = %"$out_of_gas_839", %"$have_gas_834"
  %"$consume_841" = sub i64 %"$gasrem_837", 40
  store i64 %"$consume_841", i64* @_gasrem, align 8
  %"$$arg1_37_842" = load %Int128, %Int128* %"$arg1_37", align 8
  %"$$arg2_38_843" = load %Int128, %Int128* %"$arg2_38", align 8
  %"$mul_call_844" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_37_842", %Int128 %"$$arg2_38_843"), !dbg !160
  store %Int128 %"$mul_call_844", %Int128* %"$res_39", align 8, !dbg !160
  %"$gasrem_845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_846" = icmp ugt i64 1, %"$gasrem_845"
  br i1 %"$gascmp_846", label %"$out_of_gas_847", label %"$have_gas_848"

"$out_of_gas_847":                                ; preds = %"$have_gas_840"
  call void @_out_of_gas()
  br label %"$have_gas_848"

"$have_gas_848":                                  ; preds = %"$out_of_gas_847", %"$have_gas_840"
  %"$consume_849" = sub i64 %"$gasrem_845", 1
  store i64 %"$consume_849", i64* @_gasrem, align 8
  %"$res__40" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res__40", metadata !161, metadata !DIExpression()), !dbg !162
  %"$gasrem_850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_851" = icmp ugt i64 1, %"$gasrem_850"
  br i1 %"$gascmp_851", label %"$out_of_gas_852", label %"$have_gas_853"

"$out_of_gas_852":                                ; preds = %"$have_gas_848"
  call void @_out_of_gas()
  br label %"$have_gas_853"

"$have_gas_853":                                  ; preds = %"$out_of_gas_852", %"$have_gas_848"
  %"$consume_854" = sub i64 %"$gasrem_850", 1
  store i64 %"$consume_854", i64* @_gasrem, align 8
  store %Int128 zeroinitializer, %Int128* %"$res__40", align 8, !dbg !163
  %"$gasrem_855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_856" = icmp ugt i64 1, %"$gasrem_855"
  br i1 %"$gascmp_856", label %"$out_of_gas_857", label %"$have_gas_858"

"$out_of_gas_857":                                ; preds = %"$have_gas_853"
  call void @_out_of_gas()
  br label %"$have_gas_858"

"$have_gas_858":                                  ; preds = %"$out_of_gas_857", %"$have_gas_853"
  %"$consume_859" = sub i64 %"$gasrem_855", 1
  store i64 %"$consume_859", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__41", metadata !164, metadata !DIExpression()), !dbg !165
  %"$gasrem_861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_862" = icmp ugt i64 8, %"$gasrem_861"
  br i1 %"$gascmp_862", label %"$out_of_gas_863", label %"$have_gas_864"

"$out_of_gas_863":                                ; preds = %"$have_gas_858"
  call void @_out_of_gas()
  br label %"$have_gas_864"

"$have_gas_864":                                  ; preds = %"$out_of_gas_863", %"$have_gas_858"
  %"$consume_865" = sub i64 %"$gasrem_861", 8
  store i64 %"$consume_865", i64* @_gasrem, align 8
  %"$execptr_load_866" = load i8*, i8** @_execptr, align 8
  %"$$res_39_867" = load %Int128, %Int128* %"$res_39", align 8
  %"$$res__40_868" = load %Int128, %Int128* %"$res__40", align 8
  %"$eq_call_869" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_866", %Int128 %"$$res_39_867", %Int128 %"$$res__40_868"), !dbg !166
  store %TName_Bool* %"$eq_call_869", %TName_Bool** %"$test__41", align 8, !dbg !166
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 1, %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_864"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_864"
  %"$consume_875" = sub i64 %"$gasrem_871", 1
  store i64 %"$consume_875", i64* @_gasrem, align 8
  %"$BoolUtils.andb_139" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_876" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_877" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_876", 0
  %"$BoolUtils.andb_envptr_878" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_876", 1
  %"$$test_36_879" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_880" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_877"(i8* %"$BoolUtils.andb_envptr_878", %TName_Bool* %"$$test_36_879"), !dbg !167
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_880", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8, !dbg !167
  %"$BoolUtils.andb_140" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_140", metadata !168, metadata !DIExpression()), !dbg !167
  %"$$BoolUtils.andb_139_881" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_fptr_882" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_881", 0
  %"$$BoolUtils.andb_139_envptr_883" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_881", 1
  %"$$test__41_884" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_139_call_885" = call %TName_Bool* %"$$BoolUtils.andb_139_fptr_882"(i8* %"$$BoolUtils.andb_139_envptr_883", %TName_Bool* %"$$test__41_884"), !dbg !167
  store %TName_Bool* %"$$BoolUtils.andb_139_call_885", %TName_Bool** %"$BoolUtils.andb_140", align 8, !dbg !167
  %"$$BoolUtils.andb_140_886" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_140", align 8
  store %TName_Bool* %"$$BoolUtils.andb_140_886", %TName_Bool** %"$test_42", align 8, !dbg !167
  %"$gasrem_887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_888" = icmp ugt i64 1, %"$gasrem_887"
  br i1 %"$gascmp_888", label %"$out_of_gas_889", label %"$have_gas_890"

"$out_of_gas_889":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_890"

"$have_gas_890":                                  ; preds = %"$out_of_gas_889", %"$have_gas_874"
  %"$consume_891" = sub i64 %"$gasrem_887", 1
  store i64 %"$consume_891", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg1_43", metadata !169, metadata !DIExpression()), !dbg !170
  %"$gasrem_892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_893" = icmp ugt i64 1, %"$gasrem_892"
  br i1 %"$gascmp_893", label %"$out_of_gas_894", label %"$have_gas_895"

"$out_of_gas_894":                                ; preds = %"$have_gas_890"
  call void @_out_of_gas()
  br label %"$have_gas_895"

"$have_gas_895":                                  ; preds = %"$out_of_gas_894", %"$have_gas_890"
  %"$consume_896" = sub i64 %"$gasrem_892", 1
  store i64 %"$consume_896", i64* @_gasrem, align 8
  store %Int128 { i128 9223372036854775806 }, %Int128* %"$arg1_43", align 8, !dbg !171
  %"$gasrem_897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_898" = icmp ugt i64 1, %"$gasrem_897"
  br i1 %"$gascmp_898", label %"$out_of_gas_899", label %"$have_gas_900"

"$out_of_gas_899":                                ; preds = %"$have_gas_895"
  call void @_out_of_gas()
  br label %"$have_gas_900"

"$have_gas_900":                                  ; preds = %"$out_of_gas_899", %"$have_gas_895"
  %"$consume_901" = sub i64 %"$gasrem_897", 1
  store i64 %"$consume_901", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$arg2_44", metadata !172, metadata !DIExpression()), !dbg !173
  %"$gasrem_902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_903" = icmp ugt i64 1, %"$gasrem_902"
  br i1 %"$gascmp_903", label %"$out_of_gas_904", label %"$have_gas_905"

"$out_of_gas_904":                                ; preds = %"$have_gas_900"
  call void @_out_of_gas()
  br label %"$have_gas_905"

"$have_gas_905":                                  ; preds = %"$out_of_gas_904", %"$have_gas_900"
  %"$consume_906" = sub i64 %"$gasrem_902", 1
  store i64 %"$consume_906", i64* @_gasrem, align 8
  store %Int128 { i128 -1 }, %Int128* %"$arg2_44", align 8, !dbg !174
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_905"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_905"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_48", metadata !175, metadata !DIExpression()), !dbg !176
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 1, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_910"
  %"$consume_916" = sub i64 %"$gasrem_912", 1
  store i64 %"$consume_916", i64* @_gasrem, align 8
  %"$res_45" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res_45", metadata !177, metadata !DIExpression()), !dbg !178
  %"$gasrem_918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_919" = icmp ugt i64 40, %"$gasrem_918"
  br i1 %"$gascmp_919", label %"$out_of_gas_920", label %"$have_gas_921"

"$out_of_gas_920":                                ; preds = %"$have_gas_915"
  call void @_out_of_gas()
  br label %"$have_gas_921"

"$have_gas_921":                                  ; preds = %"$out_of_gas_920", %"$have_gas_915"
  %"$consume_922" = sub i64 %"$gasrem_918", 40
  store i64 %"$consume_922", i64* @_gasrem, align 8
  %"$$arg1_43_923" = load %Int128, %Int128* %"$arg1_43", align 8
  %"$$arg2_44_924" = load %Int128, %Int128* %"$arg2_44", align 8
  %"$mul_call_925" = call %Int128 @_mul_Int128(%Int128 %"$$arg1_43_923", %Int128 %"$$arg2_44_924"), !dbg !179
  store %Int128 %"$mul_call_925", %Int128* %"$res_45", align 8, !dbg !179
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 1, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %"$have_gas_921"
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %"$have_gas_921"
  %"$consume_930" = sub i64 %"$gasrem_926", 1
  store i64 %"$consume_930", i64* @_gasrem, align 8
  %"$res__46" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$res__46", metadata !180, metadata !DIExpression()), !dbg !181
  %"$gasrem_931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_932" = icmp ugt i64 1, %"$gasrem_931"
  br i1 %"$gascmp_932", label %"$out_of_gas_933", label %"$have_gas_934"

"$out_of_gas_933":                                ; preds = %"$have_gas_929"
  call void @_out_of_gas()
  br label %"$have_gas_934"

"$have_gas_934":                                  ; preds = %"$out_of_gas_933", %"$have_gas_929"
  %"$consume_935" = sub i64 %"$gasrem_931", 1
  store i64 %"$consume_935", i64* @_gasrem, align 8
  store %Int128 { i128 -9223372036854775806 }, %Int128* %"$res__46", align 8, !dbg !182
  %"$gasrem_936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_937" = icmp ugt i64 1, %"$gasrem_936"
  br i1 %"$gascmp_937", label %"$out_of_gas_938", label %"$have_gas_939"

"$out_of_gas_938":                                ; preds = %"$have_gas_934"
  call void @_out_of_gas()
  br label %"$have_gas_939"

"$have_gas_939":                                  ; preds = %"$out_of_gas_938", %"$have_gas_934"
  %"$consume_940" = sub i64 %"$gasrem_936", 1
  store i64 %"$consume_940", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__47", metadata !183, metadata !DIExpression()), !dbg !184
  %"$gasrem_942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_943" = icmp ugt i64 8, %"$gasrem_942"
  br i1 %"$gascmp_943", label %"$out_of_gas_944", label %"$have_gas_945"

"$out_of_gas_944":                                ; preds = %"$have_gas_939"
  call void @_out_of_gas()
  br label %"$have_gas_945"

"$have_gas_945":                                  ; preds = %"$out_of_gas_944", %"$have_gas_939"
  %"$consume_946" = sub i64 %"$gasrem_942", 8
  store i64 %"$consume_946", i64* @_gasrem, align 8
  %"$execptr_load_947" = load i8*, i8** @_execptr, align 8
  %"$$res_45_948" = load %Int128, %Int128* %"$res_45", align 8
  %"$$res__46_949" = load %Int128, %Int128* %"$res__46", align 8
  %"$eq_call_950" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_947", %Int128 %"$$res_45_948", %Int128 %"$$res__46_949"), !dbg !185
  store %TName_Bool* %"$eq_call_950", %TName_Bool** %"$test__47", align 8, !dbg !185
  %"$gasrem_952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_953" = icmp ugt i64 1, %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %"$have_gas_945"
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %"$have_gas_945"
  %"$consume_956" = sub i64 %"$gasrem_952", 1
  store i64 %"$consume_956", i64* @_gasrem, align 8
  %"$BoolUtils.andb_141" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_957" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_958" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_957", 0
  %"$BoolUtils.andb_envptr_959" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_957", 1
  %"$$test_42_960" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_961" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_958"(i8* %"$BoolUtils.andb_envptr_959", %TName_Bool* %"$$test_42_960"), !dbg !186
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_961", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8, !dbg !186
  %"$BoolUtils.andb_142" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_142", metadata !187, metadata !DIExpression()), !dbg !186
  %"$$BoolUtils.andb_141_962" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$$BoolUtils.andb_141_fptr_963" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_962", 0
  %"$$BoolUtils.andb_141_envptr_964" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_962", 1
  %"$$test__47_965" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_141_call_966" = call %TName_Bool* %"$$BoolUtils.andb_141_fptr_963"(i8* %"$$BoolUtils.andb_141_envptr_964", %TName_Bool* %"$$test__47_965"), !dbg !186
  store %TName_Bool* %"$$BoolUtils.andb_141_call_966", %TName_Bool** %"$BoolUtils.andb_142", align 8, !dbg !186
  %"$$BoolUtils.andb_142_967" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_142", align 8
  store %TName_Bool* %"$$BoolUtils.andb_142_967", %TName_Bool** %"$test_48", align 8, !dbg !186
  %"$gasrem_968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_969" = icmp ugt i64 1, %"$gasrem_968"
  br i1 %"$gascmp_969", label %"$out_of_gas_970", label %"$have_gas_971"

"$out_of_gas_970":                                ; preds = %"$have_gas_955"
  call void @_out_of_gas()
  br label %"$have_gas_971"

"$have_gas_971":                                  ; preds = %"$out_of_gas_970", %"$have_gas_955"
  %"$consume_972" = sub i64 %"$gasrem_968", 1
  store i64 %"$consume_972", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_49", metadata !188, metadata !DIExpression()), !dbg !190
  %"$gasrem_973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_974" = icmp ugt i64 1, %"$gasrem_973"
  br i1 %"$gascmp_974", label %"$out_of_gas_975", label %"$have_gas_976"

"$out_of_gas_975":                                ; preds = %"$have_gas_971"
  call void @_out_of_gas()
  br label %"$have_gas_976"

"$have_gas_976":                                  ; preds = %"$out_of_gas_975", %"$have_gas_971"
  %"$consume_977" = sub i64 %"$gasrem_973", 1
  store i64 %"$consume_977", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775806 }, %Int256* %"$arg1_49", align 8, !dbg !191
  %"$gasrem_978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_979" = icmp ugt i64 1, %"$gasrem_978"
  br i1 %"$gascmp_979", label %"$out_of_gas_980", label %"$have_gas_981"

"$out_of_gas_980":                                ; preds = %"$have_gas_976"
  call void @_out_of_gas()
  br label %"$have_gas_981"

"$have_gas_981":                                  ; preds = %"$out_of_gas_980", %"$have_gas_976"
  %"$consume_982" = sub i64 %"$gasrem_978", 1
  store i64 %"$consume_982", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_50", metadata !192, metadata !DIExpression()), !dbg !193
  %"$gasrem_983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_984" = icmp ugt i64 1, %"$gasrem_983"
  br i1 %"$gascmp_984", label %"$out_of_gas_985", label %"$have_gas_986"

"$out_of_gas_985":                                ; preds = %"$have_gas_981"
  call void @_out_of_gas()
  br label %"$have_gas_986"

"$have_gas_986":                                  ; preds = %"$out_of_gas_985", %"$have_gas_981"
  %"$consume_987" = sub i64 %"$gasrem_983", 1
  store i64 %"$consume_987", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$arg2_50", align 8, !dbg !194
  %"$gasrem_988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_989" = icmp ugt i64 1, %"$gasrem_988"
  br i1 %"$gascmp_989", label %"$out_of_gas_990", label %"$have_gas_991"

"$out_of_gas_990":                                ; preds = %"$have_gas_986"
  call void @_out_of_gas()
  br label %"$have_gas_991"

"$have_gas_991":                                  ; preds = %"$out_of_gas_990", %"$have_gas_986"
  %"$consume_992" = sub i64 %"$gasrem_988", 1
  store i64 %"$consume_992", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_54", metadata !195, metadata !DIExpression()), !dbg !196
  %"$gasrem_993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_994" = icmp ugt i64 1, %"$gasrem_993"
  br i1 %"$gascmp_994", label %"$out_of_gas_995", label %"$have_gas_996"

"$out_of_gas_995":                                ; preds = %"$have_gas_991"
  call void @_out_of_gas()
  br label %"$have_gas_996"

"$have_gas_996":                                  ; preds = %"$out_of_gas_995", %"$have_gas_991"
  %"$consume_997" = sub i64 %"$gasrem_993", 1
  store i64 %"$consume_997", i64* @_gasrem, align 8
  %"$res_51" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_51", metadata !197, metadata !DIExpression()), !dbg !198
  %"$gasrem_999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1000" = icmp ugt i64 80, %"$gasrem_999"
  br i1 %"$gascmp_1000", label %"$out_of_gas_1001", label %"$have_gas_1002"

"$out_of_gas_1001":                               ; preds = %"$have_gas_996"
  call void @_out_of_gas()
  br label %"$have_gas_1002"

"$have_gas_1002":                                 ; preds = %"$out_of_gas_1001", %"$have_gas_996"
  %"$consume_1003" = sub i64 %"$gasrem_999", 80
  store i64 %"$consume_1003", i64* @_gasrem, align 8
  %"$execptr_load_1004" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_49_1005" = alloca %Int256, align 8
  %"$$arg1_49_1006" = load %Int256, %Int256* %"$arg1_49", align 8
  store %Int256 %"$$arg1_49_1006", %Int256* %"$mul_$arg1_49_1005", align 8
  %"$mul_$arg2_50_1007" = alloca %Int256, align 8
  %"$$arg2_50_1008" = load %Int256, %Int256* %"$arg2_50", align 8
  store %Int256 %"$$arg2_50_1008", %Int256* %"$mul_$arg2_50_1007", align 8
  %"$mul_call_1009" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1004", %Int256* %"$mul_$arg1_49_1005", %Int256* %"$mul_$arg2_50_1007"), !dbg !199
  %"$mul_1011" = load %Int256, %Int256* %"$mul_call_1009", align 8
  store %Int256 %"$mul_1011", %Int256* %"$res_51", align 8, !dbg !199
  %"$gasrem_1012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1013" = icmp ugt i64 1, %"$gasrem_1012"
  br i1 %"$gascmp_1013", label %"$out_of_gas_1014", label %"$have_gas_1015"

"$out_of_gas_1014":                               ; preds = %"$have_gas_1002"
  call void @_out_of_gas()
  br label %"$have_gas_1015"

"$have_gas_1015":                                 ; preds = %"$out_of_gas_1014", %"$have_gas_1002"
  %"$consume_1016" = sub i64 %"$gasrem_1012", 1
  store i64 %"$consume_1016", i64* @_gasrem, align 8
  %"$res__52" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__52", metadata !200, metadata !DIExpression()), !dbg !201
  %"$gasrem_1017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1018" = icmp ugt i64 1, %"$gasrem_1017"
  br i1 %"$gascmp_1018", label %"$out_of_gas_1019", label %"$have_gas_1020"

"$out_of_gas_1019":                               ; preds = %"$have_gas_1015"
  call void @_out_of_gas()
  br label %"$have_gas_1020"

"$have_gas_1020":                                 ; preds = %"$out_of_gas_1019", %"$have_gas_1015"
  %"$consume_1021" = sub i64 %"$gasrem_1017", 1
  store i64 %"$consume_1021", i64* @_gasrem, align 8
  store %Int256 { i256 -9223372036854775806 }, %Int256* %"$res__52", align 8, !dbg !202
  %"$gasrem_1022" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1023" = icmp ugt i64 1, %"$gasrem_1022"
  br i1 %"$gascmp_1023", label %"$out_of_gas_1024", label %"$have_gas_1025"

"$out_of_gas_1024":                               ; preds = %"$have_gas_1020"
  call void @_out_of_gas()
  br label %"$have_gas_1025"

"$have_gas_1025":                                 ; preds = %"$out_of_gas_1024", %"$have_gas_1020"
  %"$consume_1026" = sub i64 %"$gasrem_1022", 1
  store i64 %"$consume_1026", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__53", metadata !203, metadata !DIExpression()), !dbg !204
  %"$gasrem_1028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1029" = icmp ugt i64 16, %"$gasrem_1028"
  br i1 %"$gascmp_1029", label %"$out_of_gas_1030", label %"$have_gas_1031"

"$out_of_gas_1030":                               ; preds = %"$have_gas_1025"
  call void @_out_of_gas()
  br label %"$have_gas_1031"

"$have_gas_1031":                                 ; preds = %"$out_of_gas_1030", %"$have_gas_1025"
  %"$consume_1032" = sub i64 %"$gasrem_1028", 16
  store i64 %"$consume_1032", i64* @_gasrem, align 8
  %"$execptr_load_1033" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_1034" = alloca %Int256, align 8
  %"$$res_51_1035" = load %Int256, %Int256* %"$res_51", align 8
  store %Int256 %"$$res_51_1035", %Int256* %"$eq_$res_51_1034", align 8
  %"$eq_$res__52_1036" = alloca %Int256, align 8
  %"$$res__52_1037" = load %Int256, %Int256* %"$res__52", align 8
  store %Int256 %"$$res__52_1037", %Int256* %"$eq_$res__52_1036", align 8
  %"$eq_call_1038" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1033", %Int256* %"$eq_$res_51_1034", %Int256* %"$eq_$res__52_1036"), !dbg !205
  store %TName_Bool* %"$eq_call_1038", %TName_Bool** %"$test__53", align 8, !dbg !205
  %"$gasrem_1040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1041" = icmp ugt i64 1, %"$gasrem_1040"
  br i1 %"$gascmp_1041", label %"$out_of_gas_1042", label %"$have_gas_1043"

"$out_of_gas_1042":                               ; preds = %"$have_gas_1031"
  call void @_out_of_gas()
  br label %"$have_gas_1043"

"$have_gas_1043":                                 ; preds = %"$out_of_gas_1042", %"$have_gas_1031"
  %"$consume_1044" = sub i64 %"$gasrem_1040", 1
  store i64 %"$consume_1044", i64* @_gasrem, align 8
  %"$BoolUtils.andb_143" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1045" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1046" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1045", 0
  %"$BoolUtils.andb_envptr_1047" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1045", 1
  %"$$test_48_1048" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_1049" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1046"(i8* %"$BoolUtils.andb_envptr_1047", %TName_Bool* %"$$test_48_1048"), !dbg !206
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1049", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8, !dbg !206
  %"$BoolUtils.andb_144" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_144", metadata !207, metadata !DIExpression()), !dbg !206
  %"$$BoolUtils.andb_143_1050" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$$BoolUtils.andb_143_fptr_1051" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_1050", 0
  %"$$BoolUtils.andb_143_envptr_1052" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_1050", 1
  %"$$test__53_1053" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_143_call_1054" = call %TName_Bool* %"$$BoolUtils.andb_143_fptr_1051"(i8* %"$$BoolUtils.andb_143_envptr_1052", %TName_Bool* %"$$test__53_1053"), !dbg !206
  store %TName_Bool* %"$$BoolUtils.andb_143_call_1054", %TName_Bool** %"$BoolUtils.andb_144", align 8, !dbg !206
  %"$$BoolUtils.andb_144_1055" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_144", align 8
  store %TName_Bool* %"$$BoolUtils.andb_144_1055", %TName_Bool** %"$test_54", align 8, !dbg !206
  %"$gasrem_1056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1057" = icmp ugt i64 1, %"$gasrem_1056"
  br i1 %"$gascmp_1057", label %"$out_of_gas_1058", label %"$have_gas_1059"

"$out_of_gas_1058":                               ; preds = %"$have_gas_1043"
  call void @_out_of_gas()
  br label %"$have_gas_1059"

"$have_gas_1059":                                 ; preds = %"$out_of_gas_1058", %"$have_gas_1043"
  %"$consume_1060" = sub i64 %"$gasrem_1056", 1
  store i64 %"$consume_1060", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_55", metadata !208, metadata !DIExpression()), !dbg !209
  %"$gasrem_1061" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1062" = icmp ugt i64 1, %"$gasrem_1061"
  br i1 %"$gascmp_1062", label %"$out_of_gas_1063", label %"$have_gas_1064"

"$out_of_gas_1063":                               ; preds = %"$have_gas_1059"
  call void @_out_of_gas()
  br label %"$have_gas_1064"

"$have_gas_1064":                                 ; preds = %"$out_of_gas_1063", %"$have_gas_1059"
  %"$consume_1065" = sub i64 %"$gasrem_1061", 1
  store i64 %"$consume_1065", i64* @_gasrem, align 8
  store %Int256 { i256 9223372036854775806 }, %Int256* %"$arg1_55", align 8, !dbg !210
  %"$gasrem_1066" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1067" = icmp ugt i64 1, %"$gasrem_1066"
  br i1 %"$gascmp_1067", label %"$out_of_gas_1068", label %"$have_gas_1069"

"$out_of_gas_1068":                               ; preds = %"$have_gas_1064"
  call void @_out_of_gas()
  br label %"$have_gas_1069"

"$have_gas_1069":                                 ; preds = %"$out_of_gas_1068", %"$have_gas_1064"
  %"$consume_1070" = sub i64 %"$gasrem_1066", 1
  store i64 %"$consume_1070", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_56", metadata !211, metadata !DIExpression()), !dbg !212
  %"$gasrem_1071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1072" = icmp ugt i64 1, %"$gasrem_1071"
  br i1 %"$gascmp_1072", label %"$out_of_gas_1073", label %"$have_gas_1074"

"$out_of_gas_1073":                               ; preds = %"$have_gas_1069"
  call void @_out_of_gas()
  br label %"$have_gas_1074"

"$have_gas_1074":                                 ; preds = %"$out_of_gas_1073", %"$have_gas_1069"
  %"$consume_1075" = sub i64 %"$gasrem_1071", 1
  store i64 %"$consume_1075", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_56", align 8, !dbg !213
  %"$gasrem_1076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1077" = icmp ugt i64 1, %"$gasrem_1076"
  br i1 %"$gascmp_1077", label %"$out_of_gas_1078", label %"$have_gas_1079"

"$out_of_gas_1078":                               ; preds = %"$have_gas_1074"
  call void @_out_of_gas()
  br label %"$have_gas_1079"

"$have_gas_1079":                                 ; preds = %"$out_of_gas_1078", %"$have_gas_1074"
  %"$consume_1080" = sub i64 %"$gasrem_1076", 1
  store i64 %"$consume_1080", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_60", metadata !214, metadata !DIExpression()), !dbg !215
  %"$gasrem_1081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1082" = icmp ugt i64 1, %"$gasrem_1081"
  br i1 %"$gascmp_1082", label %"$out_of_gas_1083", label %"$have_gas_1084"

"$out_of_gas_1083":                               ; preds = %"$have_gas_1079"
  call void @_out_of_gas()
  br label %"$have_gas_1084"

"$have_gas_1084":                                 ; preds = %"$out_of_gas_1083", %"$have_gas_1079"
  %"$consume_1085" = sub i64 %"$gasrem_1081", 1
  store i64 %"$consume_1085", i64* @_gasrem, align 8
  %"$res_57" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_57", metadata !216, metadata !DIExpression()), !dbg !217
  %"$gasrem_1087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1088" = icmp ugt i64 80, %"$gasrem_1087"
  br i1 %"$gascmp_1088", label %"$out_of_gas_1089", label %"$have_gas_1090"

"$out_of_gas_1089":                               ; preds = %"$have_gas_1084"
  call void @_out_of_gas()
  br label %"$have_gas_1090"

"$have_gas_1090":                                 ; preds = %"$out_of_gas_1089", %"$have_gas_1084"
  %"$consume_1091" = sub i64 %"$gasrem_1087", 80
  store i64 %"$consume_1091", i64* @_gasrem, align 8
  %"$execptr_load_1092" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_55_1093" = alloca %Int256, align 8
  %"$$arg1_55_1094" = load %Int256, %Int256* %"$arg1_55", align 8
  store %Int256 %"$$arg1_55_1094", %Int256* %"$mul_$arg1_55_1093", align 8
  %"$mul_$arg2_56_1095" = alloca %Int256, align 8
  %"$$arg2_56_1096" = load %Int256, %Int256* %"$arg2_56", align 8
  store %Int256 %"$$arg2_56_1096", %Int256* %"$mul_$arg2_56_1095", align 8
  %"$mul_call_1097" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1092", %Int256* %"$mul_$arg1_55_1093", %Int256* %"$mul_$arg2_56_1095"), !dbg !218
  %"$mul_1099" = load %Int256, %Int256* %"$mul_call_1097", align 8
  store %Int256 %"$mul_1099", %Int256* %"$res_57", align 8, !dbg !218
  %"$gasrem_1100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1101" = icmp ugt i64 1, %"$gasrem_1100"
  br i1 %"$gascmp_1101", label %"$out_of_gas_1102", label %"$have_gas_1103"

"$out_of_gas_1102":                               ; preds = %"$have_gas_1090"
  call void @_out_of_gas()
  br label %"$have_gas_1103"

"$have_gas_1103":                                 ; preds = %"$out_of_gas_1102", %"$have_gas_1090"
  %"$consume_1104" = sub i64 %"$gasrem_1100", 1
  store i64 %"$consume_1104", i64* @_gasrem, align 8
  %"$res__58" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__58", metadata !219, metadata !DIExpression()), !dbg !220
  %"$gasrem_1105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1106" = icmp ugt i64 1, %"$gasrem_1105"
  br i1 %"$gascmp_1106", label %"$out_of_gas_1107", label %"$have_gas_1108"

"$out_of_gas_1107":                               ; preds = %"$have_gas_1103"
  call void @_out_of_gas()
  br label %"$have_gas_1108"

"$have_gas_1108":                                 ; preds = %"$out_of_gas_1107", %"$have_gas_1103"
  %"$consume_1109" = sub i64 %"$gasrem_1105", 1
  store i64 %"$consume_1109", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__58", align 8, !dbg !221
  %"$gasrem_1110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1111" = icmp ugt i64 1, %"$gasrem_1110"
  br i1 %"$gascmp_1111", label %"$out_of_gas_1112", label %"$have_gas_1113"

"$out_of_gas_1112":                               ; preds = %"$have_gas_1108"
  call void @_out_of_gas()
  br label %"$have_gas_1113"

"$have_gas_1113":                                 ; preds = %"$out_of_gas_1112", %"$have_gas_1108"
  %"$consume_1114" = sub i64 %"$gasrem_1110", 1
  store i64 %"$consume_1114", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__59", metadata !222, metadata !DIExpression()), !dbg !223
  %"$gasrem_1116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1117" = icmp ugt i64 16, %"$gasrem_1116"
  br i1 %"$gascmp_1117", label %"$out_of_gas_1118", label %"$have_gas_1119"

"$out_of_gas_1118":                               ; preds = %"$have_gas_1113"
  call void @_out_of_gas()
  br label %"$have_gas_1119"

"$have_gas_1119":                                 ; preds = %"$out_of_gas_1118", %"$have_gas_1113"
  %"$consume_1120" = sub i64 %"$gasrem_1116", 16
  store i64 %"$consume_1120", i64* @_gasrem, align 8
  %"$execptr_load_1121" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_1122" = alloca %Int256, align 8
  %"$$res_57_1123" = load %Int256, %Int256* %"$res_57", align 8
  store %Int256 %"$$res_57_1123", %Int256* %"$eq_$res_57_1122", align 8
  %"$eq_$res__58_1124" = alloca %Int256, align 8
  %"$$res__58_1125" = load %Int256, %Int256* %"$res__58", align 8
  store %Int256 %"$$res__58_1125", %Int256* %"$eq_$res__58_1124", align 8
  %"$eq_call_1126" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1121", %Int256* %"$eq_$res_57_1122", %Int256* %"$eq_$res__58_1124"), !dbg !224
  store %TName_Bool* %"$eq_call_1126", %TName_Bool** %"$test__59", align 8, !dbg !224
  %"$gasrem_1128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1129" = icmp ugt i64 1, %"$gasrem_1128"
  br i1 %"$gascmp_1129", label %"$out_of_gas_1130", label %"$have_gas_1131"

"$out_of_gas_1130":                               ; preds = %"$have_gas_1119"
  call void @_out_of_gas()
  br label %"$have_gas_1131"

"$have_gas_1131":                                 ; preds = %"$out_of_gas_1130", %"$have_gas_1119"
  %"$consume_1132" = sub i64 %"$gasrem_1128", 1
  store i64 %"$consume_1132", i64* @_gasrem, align 8
  %"$BoolUtils.andb_145" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1133" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1134" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1133", 0
  %"$BoolUtils.andb_envptr_1135" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1133", 1
  %"$$test_54_1136" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1137" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1134"(i8* %"$BoolUtils.andb_envptr_1135", %TName_Bool* %"$$test_54_1136"), !dbg !225
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1137", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8, !dbg !225
  %"$BoolUtils.andb_146" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_146", metadata !226, metadata !DIExpression()), !dbg !225
  %"$$BoolUtils.andb_145_1138" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$$BoolUtils.andb_145_fptr_1139" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_1138", 0
  %"$$BoolUtils.andb_145_envptr_1140" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_1138", 1
  %"$$test__59_1141" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_145_call_1142" = call %TName_Bool* %"$$BoolUtils.andb_145_fptr_1139"(i8* %"$$BoolUtils.andb_145_envptr_1140", %TName_Bool* %"$$test__59_1141"), !dbg !225
  store %TName_Bool* %"$$BoolUtils.andb_145_call_1142", %TName_Bool** %"$BoolUtils.andb_146", align 8, !dbg !225
  %"$$BoolUtils.andb_146_1143" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_146", align 8
  store %TName_Bool* %"$$BoolUtils.andb_146_1143", %TName_Bool** %"$test_60", align 8, !dbg !225
  %"$gasrem_1144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1145" = icmp ugt i64 1, %"$gasrem_1144"
  br i1 %"$gascmp_1145", label %"$out_of_gas_1146", label %"$have_gas_1147"

"$out_of_gas_1146":                               ; preds = %"$have_gas_1131"
  call void @_out_of_gas()
  br label %"$have_gas_1147"

"$have_gas_1147":                                 ; preds = %"$out_of_gas_1146", %"$have_gas_1131"
  %"$consume_1148" = sub i64 %"$gasrem_1144", 1
  store i64 %"$consume_1148", i64* @_gasrem, align 8
  %"$arg1_61" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_61", metadata !227, metadata !DIExpression()), !dbg !228
  %"$gasrem_1149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1150" = icmp ugt i64 1, %"$gasrem_1149"
  br i1 %"$gascmp_1150", label %"$out_of_gas_1151", label %"$have_gas_1152"

"$out_of_gas_1151":                               ; preds = %"$have_gas_1147"
  call void @_out_of_gas()
  br label %"$have_gas_1152"

"$have_gas_1152":                                 ; preds = %"$out_of_gas_1151", %"$have_gas_1147"
  %"$consume_1153" = sub i64 %"$gasrem_1149", 1
  store i64 %"$consume_1153", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105727 }, %Int256* %"$arg1_61", align 8, !dbg !229
  %"$gasrem_1154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1155" = icmp ugt i64 1, %"$gasrem_1154"
  br i1 %"$gascmp_1155", label %"$out_of_gas_1156", label %"$have_gas_1157"

"$out_of_gas_1156":                               ; preds = %"$have_gas_1152"
  call void @_out_of_gas()
  br label %"$have_gas_1157"

"$have_gas_1157":                                 ; preds = %"$out_of_gas_1156", %"$have_gas_1152"
  %"$consume_1158" = sub i64 %"$gasrem_1154", 1
  store i64 %"$consume_1158", i64* @_gasrem, align 8
  %"$arg2_62" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_62", metadata !230, metadata !DIExpression()), !dbg !231
  %"$gasrem_1159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1160" = icmp ugt i64 1, %"$gasrem_1159"
  br i1 %"$gascmp_1160", label %"$out_of_gas_1161", label %"$have_gas_1162"

"$out_of_gas_1161":                               ; preds = %"$have_gas_1157"
  call void @_out_of_gas()
  br label %"$have_gas_1162"

"$have_gas_1162":                                 ; preds = %"$out_of_gas_1161", %"$have_gas_1157"
  %"$consume_1163" = sub i64 %"$gasrem_1159", 1
  store i64 %"$consume_1163", i64* @_gasrem, align 8
  store %Int256 { i256 -170141183460469231731687303715884105728 }, %Int256* %"$arg2_62", align 8, !dbg !232
  %"$gasrem_1164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1165" = icmp ugt i64 1, %"$gasrem_1164"
  br i1 %"$gascmp_1165", label %"$out_of_gas_1166", label %"$have_gas_1167"

"$out_of_gas_1166":                               ; preds = %"$have_gas_1162"
  call void @_out_of_gas()
  br label %"$have_gas_1167"

"$have_gas_1167":                                 ; preds = %"$out_of_gas_1166", %"$have_gas_1162"
  %"$consume_1168" = sub i64 %"$gasrem_1164", 1
  store i64 %"$consume_1168", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_66", metadata !233, metadata !DIExpression()), !dbg !234
  %"$gasrem_1169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1170" = icmp ugt i64 1, %"$gasrem_1169"
  br i1 %"$gascmp_1170", label %"$out_of_gas_1171", label %"$have_gas_1172"

"$out_of_gas_1171":                               ; preds = %"$have_gas_1167"
  call void @_out_of_gas()
  br label %"$have_gas_1172"

"$have_gas_1172":                                 ; preds = %"$out_of_gas_1171", %"$have_gas_1167"
  %"$consume_1173" = sub i64 %"$gasrem_1169", 1
  store i64 %"$consume_1173", i64* @_gasrem, align 8
  %"$res_63" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_63", metadata !235, metadata !DIExpression()), !dbg !236
  %"$gasrem_1175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1176" = icmp ugt i64 80, %"$gasrem_1175"
  br i1 %"$gascmp_1176", label %"$out_of_gas_1177", label %"$have_gas_1178"

"$out_of_gas_1177":                               ; preds = %"$have_gas_1172"
  call void @_out_of_gas()
  br label %"$have_gas_1178"

"$have_gas_1178":                                 ; preds = %"$out_of_gas_1177", %"$have_gas_1172"
  %"$consume_1179" = sub i64 %"$gasrem_1175", 80
  store i64 %"$consume_1179", i64* @_gasrem, align 8
  %"$execptr_load_1180" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_61_1181" = alloca %Int256, align 8
  %"$$arg1_61_1182" = load %Int256, %Int256* %"$arg1_61", align 8
  store %Int256 %"$$arg1_61_1182", %Int256* %"$mul_$arg1_61_1181", align 8
  %"$mul_$arg2_62_1183" = alloca %Int256, align 8
  %"$$arg2_62_1184" = load %Int256, %Int256* %"$arg2_62", align 8
  store %Int256 %"$$arg2_62_1184", %Int256* %"$mul_$arg2_62_1183", align 8
  %"$mul_call_1185" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1180", %Int256* %"$mul_$arg1_61_1181", %Int256* %"$mul_$arg2_62_1183"), !dbg !237
  %"$mul_1187" = load %Int256, %Int256* %"$mul_call_1185", align 8
  store %Int256 %"$mul_1187", %Int256* %"$res_63", align 8, !dbg !237
  %"$gasrem_1188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1189" = icmp ugt i64 1, %"$gasrem_1188"
  br i1 %"$gascmp_1189", label %"$out_of_gas_1190", label %"$have_gas_1191"

"$out_of_gas_1190":                               ; preds = %"$have_gas_1178"
  call void @_out_of_gas()
  br label %"$have_gas_1191"

"$have_gas_1191":                                 ; preds = %"$out_of_gas_1190", %"$have_gas_1178"
  %"$consume_1192" = sub i64 %"$gasrem_1188", 1
  store i64 %"$consume_1192", i64* @_gasrem, align 8
  %"$res__64" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__64", metadata !238, metadata !DIExpression()), !dbg !239
  %"$gasrem_1193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1194" = icmp ugt i64 1, %"$gasrem_1193"
  br i1 %"$gascmp_1194", label %"$out_of_gas_1195", label %"$have_gas_1196"

"$out_of_gas_1195":                               ; preds = %"$have_gas_1191"
  call void @_out_of_gas()
  br label %"$have_gas_1196"

"$have_gas_1196":                                 ; preds = %"$out_of_gas_1195", %"$have_gas_1191"
  %"$consume_1197" = sub i64 %"$gasrem_1193", 1
  store i64 %"$consume_1197", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Int256* %"$res__64", align 8, !dbg !240
  %"$gasrem_1198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1199" = icmp ugt i64 1, %"$gasrem_1198"
  br i1 %"$gascmp_1199", label %"$out_of_gas_1200", label %"$have_gas_1201"

"$out_of_gas_1200":                               ; preds = %"$have_gas_1196"
  call void @_out_of_gas()
  br label %"$have_gas_1201"

"$have_gas_1201":                                 ; preds = %"$out_of_gas_1200", %"$have_gas_1196"
  %"$consume_1202" = sub i64 %"$gasrem_1198", 1
  store i64 %"$consume_1202", i64* @_gasrem, align 8
  %"$test__65" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__65", metadata !241, metadata !DIExpression()), !dbg !242
  %"$gasrem_1204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1205" = icmp ugt i64 16, %"$gasrem_1204"
  br i1 %"$gascmp_1205", label %"$out_of_gas_1206", label %"$have_gas_1207"

"$out_of_gas_1206":                               ; preds = %"$have_gas_1201"
  call void @_out_of_gas()
  br label %"$have_gas_1207"

"$have_gas_1207":                                 ; preds = %"$out_of_gas_1206", %"$have_gas_1201"
  %"$consume_1208" = sub i64 %"$gasrem_1204", 16
  store i64 %"$consume_1208", i64* @_gasrem, align 8
  %"$execptr_load_1209" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_63_1210" = alloca %Int256, align 8
  %"$$res_63_1211" = load %Int256, %Int256* %"$res_63", align 8
  store %Int256 %"$$res_63_1211", %Int256* %"$eq_$res_63_1210", align 8
  %"$eq_$res__64_1212" = alloca %Int256, align 8
  %"$$res__64_1213" = load %Int256, %Int256* %"$res__64", align 8
  store %Int256 %"$$res__64_1213", %Int256* %"$eq_$res__64_1212", align 8
  %"$eq_call_1214" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1209", %Int256* %"$eq_$res_63_1210", %Int256* %"$eq_$res__64_1212"), !dbg !243
  store %TName_Bool* %"$eq_call_1214", %TName_Bool** %"$test__65", align 8, !dbg !243
  %"$gasrem_1216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1217" = icmp ugt i64 1, %"$gasrem_1216"
  br i1 %"$gascmp_1217", label %"$out_of_gas_1218", label %"$have_gas_1219"

"$out_of_gas_1218":                               ; preds = %"$have_gas_1207"
  call void @_out_of_gas()
  br label %"$have_gas_1219"

"$have_gas_1219":                                 ; preds = %"$out_of_gas_1218", %"$have_gas_1207"
  %"$consume_1220" = sub i64 %"$gasrem_1216", 1
  store i64 %"$consume_1220", i64* @_gasrem, align 8
  %"$BoolUtils.andb_147" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1221" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1222" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1221", 0
  %"$BoolUtils.andb_envptr_1223" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1221", 1
  %"$$test_60_1224" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1225" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1222"(i8* %"$BoolUtils.andb_envptr_1223", %TName_Bool* %"$$test_60_1224"), !dbg !244
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1225", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8, !dbg !244
  %"$BoolUtils.andb_148" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_148", metadata !245, metadata !DIExpression()), !dbg !244
  %"$$BoolUtils.andb_147_1226" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$$BoolUtils.andb_147_fptr_1227" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_1226", 0
  %"$$BoolUtils.andb_147_envptr_1228" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_1226", 1
  %"$$test__65_1229" = load %TName_Bool*, %TName_Bool** %"$test__65", align 8
  %"$$BoolUtils.andb_147_call_1230" = call %TName_Bool* %"$$BoolUtils.andb_147_fptr_1227"(i8* %"$$BoolUtils.andb_147_envptr_1228", %TName_Bool* %"$$test__65_1229"), !dbg !244
  store %TName_Bool* %"$$BoolUtils.andb_147_call_1230", %TName_Bool** %"$BoolUtils.andb_148", align 8, !dbg !244
  %"$$BoolUtils.andb_148_1231" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_148", align 8
  store %TName_Bool* %"$$BoolUtils.andb_148_1231", %TName_Bool** %"$test_66", align 8, !dbg !244
  %"$gasrem_1232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1233" = icmp ugt i64 1, %"$gasrem_1232"
  br i1 %"$gascmp_1233", label %"$out_of_gas_1234", label %"$have_gas_1235"

"$out_of_gas_1234":                               ; preds = %"$have_gas_1219"
  call void @_out_of_gas()
  br label %"$have_gas_1235"

"$have_gas_1235":                                 ; preds = %"$out_of_gas_1234", %"$have_gas_1219"
  %"$consume_1236" = sub i64 %"$gasrem_1232", 1
  store i64 %"$consume_1236", i64* @_gasrem, align 8
  %"$arg1_67" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_67", metadata !246, metadata !DIExpression()), !dbg !247
  %"$gasrem_1237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1238" = icmp ugt i64 1, %"$gasrem_1237"
  br i1 %"$gascmp_1238", label %"$out_of_gas_1239", label %"$have_gas_1240"

"$out_of_gas_1239":                               ; preds = %"$have_gas_1235"
  call void @_out_of_gas()
  br label %"$have_gas_1240"

"$have_gas_1240":                                 ; preds = %"$out_of_gas_1239", %"$have_gas_1235"
  %"$consume_1241" = sub i64 %"$gasrem_1237", 1
  store i64 %"$consume_1241", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105727 }, %Int256* %"$arg1_67", align 8, !dbg !248
  %"$gasrem_1242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1243" = icmp ugt i64 1, %"$gasrem_1242"
  br i1 %"$gascmp_1243", label %"$out_of_gas_1244", label %"$have_gas_1245"

"$out_of_gas_1244":                               ; preds = %"$have_gas_1240"
  call void @_out_of_gas()
  br label %"$have_gas_1245"

"$have_gas_1245":                                 ; preds = %"$out_of_gas_1244", %"$have_gas_1240"
  %"$consume_1246" = sub i64 %"$gasrem_1242", 1
  store i64 %"$consume_1246", i64* @_gasrem, align 8
  %"$arg2_68" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_68", metadata !249, metadata !DIExpression()), !dbg !250
  %"$gasrem_1247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1248" = icmp ugt i64 1, %"$gasrem_1247"
  br i1 %"$gascmp_1248", label %"$out_of_gas_1249", label %"$have_gas_1250"

"$out_of_gas_1249":                               ; preds = %"$have_gas_1245"
  call void @_out_of_gas()
  br label %"$have_gas_1250"

"$have_gas_1250":                                 ; preds = %"$out_of_gas_1249", %"$have_gas_1245"
  %"$consume_1251" = sub i64 %"$gasrem_1247", 1
  store i64 %"$consume_1251", i64* @_gasrem, align 8
  store %Int256 { i256 170141183460469231731687303715884105728 }, %Int256* %"$arg2_68", align 8, !dbg !251
  %"$gasrem_1252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1253" = icmp ugt i64 1, %"$gasrem_1252"
  br i1 %"$gascmp_1253", label %"$out_of_gas_1254", label %"$have_gas_1255"

"$out_of_gas_1254":                               ; preds = %"$have_gas_1250"
  call void @_out_of_gas()
  br label %"$have_gas_1255"

"$have_gas_1255":                                 ; preds = %"$out_of_gas_1254", %"$have_gas_1250"
  %"$consume_1256" = sub i64 %"$gasrem_1252", 1
  store i64 %"$consume_1256", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_72", metadata !252, metadata !DIExpression()), !dbg !253
  %"$gasrem_1257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1258" = icmp ugt i64 1, %"$gasrem_1257"
  br i1 %"$gascmp_1258", label %"$out_of_gas_1259", label %"$have_gas_1260"

"$out_of_gas_1259":                               ; preds = %"$have_gas_1255"
  call void @_out_of_gas()
  br label %"$have_gas_1260"

"$have_gas_1260":                                 ; preds = %"$out_of_gas_1259", %"$have_gas_1255"
  %"$consume_1261" = sub i64 %"$gasrem_1257", 1
  store i64 %"$consume_1261", i64* @_gasrem, align 8
  %"$res_69" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_69", metadata !254, metadata !DIExpression()), !dbg !255
  %"$gasrem_1263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1264" = icmp ugt i64 80, %"$gasrem_1263"
  br i1 %"$gascmp_1264", label %"$out_of_gas_1265", label %"$have_gas_1266"

"$out_of_gas_1265":                               ; preds = %"$have_gas_1260"
  call void @_out_of_gas()
  br label %"$have_gas_1266"

"$have_gas_1266":                                 ; preds = %"$out_of_gas_1265", %"$have_gas_1260"
  %"$consume_1267" = sub i64 %"$gasrem_1263", 80
  store i64 %"$consume_1267", i64* @_gasrem, align 8
  %"$execptr_load_1268" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_67_1269" = alloca %Int256, align 8
  %"$$arg1_67_1270" = load %Int256, %Int256* %"$arg1_67", align 8
  store %Int256 %"$$arg1_67_1270", %Int256* %"$mul_$arg1_67_1269", align 8
  %"$mul_$arg2_68_1271" = alloca %Int256, align 8
  %"$$arg2_68_1272" = load %Int256, %Int256* %"$arg2_68", align 8
  store %Int256 %"$$arg2_68_1272", %Int256* %"$mul_$arg2_68_1271", align 8
  %"$mul_call_1273" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1268", %Int256* %"$mul_$arg1_67_1269", %Int256* %"$mul_$arg2_68_1271"), !dbg !256
  %"$mul_1275" = load %Int256, %Int256* %"$mul_call_1273", align 8
  store %Int256 %"$mul_1275", %Int256* %"$res_69", align 8, !dbg !256
  %"$gasrem_1276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1277" = icmp ugt i64 1, %"$gasrem_1276"
  br i1 %"$gascmp_1277", label %"$out_of_gas_1278", label %"$have_gas_1279"

"$out_of_gas_1278":                               ; preds = %"$have_gas_1266"
  call void @_out_of_gas()
  br label %"$have_gas_1279"

"$have_gas_1279":                                 ; preds = %"$out_of_gas_1278", %"$have_gas_1266"
  %"$consume_1280" = sub i64 %"$gasrem_1276", 1
  store i64 %"$consume_1280", i64* @_gasrem, align 8
  %"$res__70" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__70", metadata !257, metadata !DIExpression()), !dbg !258
  %"$gasrem_1281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1282" = icmp ugt i64 1, %"$gasrem_1281"
  br i1 %"$gascmp_1282", label %"$out_of_gas_1283", label %"$have_gas_1284"

"$out_of_gas_1283":                               ; preds = %"$have_gas_1279"
  call void @_out_of_gas()
  br label %"$have_gas_1284"

"$have_gas_1284":                                 ; preds = %"$out_of_gas_1283", %"$have_gas_1279"
  %"$consume_1285" = sub i64 %"$gasrem_1281", 1
  store i64 %"$consume_1285", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Int256* %"$res__70", align 8, !dbg !259
  %"$gasrem_1286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1287" = icmp ugt i64 1, %"$gasrem_1286"
  br i1 %"$gascmp_1287", label %"$out_of_gas_1288", label %"$have_gas_1289"

"$out_of_gas_1288":                               ; preds = %"$have_gas_1284"
  call void @_out_of_gas()
  br label %"$have_gas_1289"

"$have_gas_1289":                                 ; preds = %"$out_of_gas_1288", %"$have_gas_1284"
  %"$consume_1290" = sub i64 %"$gasrem_1286", 1
  store i64 %"$consume_1290", i64* @_gasrem, align 8
  %"$test__71" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__71", metadata !260, metadata !DIExpression()), !dbg !261
  %"$gasrem_1292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1293" = icmp ugt i64 16, %"$gasrem_1292"
  br i1 %"$gascmp_1293", label %"$out_of_gas_1294", label %"$have_gas_1295"

"$out_of_gas_1294":                               ; preds = %"$have_gas_1289"
  call void @_out_of_gas()
  br label %"$have_gas_1295"

"$have_gas_1295":                                 ; preds = %"$out_of_gas_1294", %"$have_gas_1289"
  %"$consume_1296" = sub i64 %"$gasrem_1292", 16
  store i64 %"$consume_1296", i64* @_gasrem, align 8
  %"$execptr_load_1297" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_69_1298" = alloca %Int256, align 8
  %"$$res_69_1299" = load %Int256, %Int256* %"$res_69", align 8
  store %Int256 %"$$res_69_1299", %Int256* %"$eq_$res_69_1298", align 8
  %"$eq_$res__70_1300" = alloca %Int256, align 8
  %"$$res__70_1301" = load %Int256, %Int256* %"$res__70", align 8
  store %Int256 %"$$res__70_1301", %Int256* %"$eq_$res__70_1300", align 8
  %"$eq_call_1302" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1297", %Int256* %"$eq_$res_69_1298", %Int256* %"$eq_$res__70_1300"), !dbg !262
  store %TName_Bool* %"$eq_call_1302", %TName_Bool** %"$test__71", align 8, !dbg !262
  %"$gasrem_1304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1305" = icmp ugt i64 1, %"$gasrem_1304"
  br i1 %"$gascmp_1305", label %"$out_of_gas_1306", label %"$have_gas_1307"

"$out_of_gas_1306":                               ; preds = %"$have_gas_1295"
  call void @_out_of_gas()
  br label %"$have_gas_1307"

"$have_gas_1307":                                 ; preds = %"$out_of_gas_1306", %"$have_gas_1295"
  %"$consume_1308" = sub i64 %"$gasrem_1304", 1
  store i64 %"$consume_1308", i64* @_gasrem, align 8
  %"$BoolUtils.andb_149" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1309" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1310" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1309", 0
  %"$BoolUtils.andb_envptr_1311" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1309", 1
  %"$$test_66_1312" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  %"$BoolUtils.andb_call_1313" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1310"(i8* %"$BoolUtils.andb_envptr_1311", %TName_Bool* %"$$test_66_1312"), !dbg !263
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1313", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8, !dbg !263
  %"$BoolUtils.andb_150" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_150", metadata !264, metadata !DIExpression()), !dbg !263
  %"$$BoolUtils.andb_149_1314" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$$BoolUtils.andb_149_fptr_1315" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1314", 0
  %"$$BoolUtils.andb_149_envptr_1316" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1314", 1
  %"$$test__71_1317" = load %TName_Bool*, %TName_Bool** %"$test__71", align 8
  %"$$BoolUtils.andb_149_call_1318" = call %TName_Bool* %"$$BoolUtils.andb_149_fptr_1315"(i8* %"$$BoolUtils.andb_149_envptr_1316", %TName_Bool* %"$$test__71_1317"), !dbg !263
  store %TName_Bool* %"$$BoolUtils.andb_149_call_1318", %TName_Bool** %"$BoolUtils.andb_150", align 8, !dbg !263
  %"$$BoolUtils.andb_150_1319" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_150", align 8
  store %TName_Bool* %"$$BoolUtils.andb_150_1319", %TName_Bool** %"$test_72", align 8, !dbg !263
  %"$gasrem_1320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1321" = icmp ugt i64 1, %"$gasrem_1320"
  br i1 %"$gascmp_1321", label %"$out_of_gas_1322", label %"$have_gas_1323"

"$out_of_gas_1322":                               ; preds = %"$have_gas_1307"
  call void @_out_of_gas()
  br label %"$have_gas_1323"

"$have_gas_1323":                                 ; preds = %"$out_of_gas_1322", %"$have_gas_1307"
  %"$consume_1324" = sub i64 %"$gasrem_1320", 1
  store i64 %"$consume_1324", i64* @_gasrem, align 8
  %"$arg1_73" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_73", metadata !265, metadata !DIExpression()), !dbg !267
  %"$gasrem_1325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1326" = icmp ugt i64 1, %"$gasrem_1325"
  br i1 %"$gascmp_1326", label %"$out_of_gas_1327", label %"$have_gas_1328"

"$out_of_gas_1327":                               ; preds = %"$have_gas_1323"
  call void @_out_of_gas()
  br label %"$have_gas_1328"

"$have_gas_1328":                                 ; preds = %"$out_of_gas_1327", %"$have_gas_1323"
  %"$consume_1329" = sub i64 %"$gasrem_1325", 1
  store i64 %"$consume_1329", i64* @_gasrem, align 8
  store %Uint256 { i256 170141183460469231731687303715884105727 }, %Uint256* %"$arg1_73", align 8, !dbg !268
  %"$gasrem_1330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1331" = icmp ugt i64 1, %"$gasrem_1330"
  br i1 %"$gascmp_1331", label %"$out_of_gas_1332", label %"$have_gas_1333"

"$out_of_gas_1332":                               ; preds = %"$have_gas_1328"
  call void @_out_of_gas()
  br label %"$have_gas_1333"

"$have_gas_1333":                                 ; preds = %"$out_of_gas_1332", %"$have_gas_1328"
  %"$consume_1334" = sub i64 %"$gasrem_1330", 1
  store i64 %"$consume_1334", i64* @_gasrem, align 8
  %"$arg2_74" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_74", metadata !269, metadata !DIExpression()), !dbg !270
  %"$gasrem_1335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1336" = icmp ugt i64 1, %"$gasrem_1335"
  br i1 %"$gascmp_1336", label %"$out_of_gas_1337", label %"$have_gas_1338"

"$out_of_gas_1337":                               ; preds = %"$have_gas_1333"
  call void @_out_of_gas()
  br label %"$have_gas_1338"

"$have_gas_1338":                                 ; preds = %"$out_of_gas_1337", %"$have_gas_1333"
  %"$consume_1339" = sub i64 %"$gasrem_1335", 1
  store i64 %"$consume_1339", i64* @_gasrem, align 8
  store %Uint256 { i256 170141183460469231731687303715884105728 }, %Uint256* %"$arg2_74", align 8, !dbg !271
  %"$gasrem_1340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1341" = icmp ugt i64 1, %"$gasrem_1340"
  br i1 %"$gascmp_1341", label %"$out_of_gas_1342", label %"$have_gas_1343"

"$out_of_gas_1342":                               ; preds = %"$have_gas_1338"
  call void @_out_of_gas()
  br label %"$have_gas_1343"

"$have_gas_1343":                                 ; preds = %"$out_of_gas_1342", %"$have_gas_1338"
  %"$consume_1344" = sub i64 %"$gasrem_1340", 1
  store i64 %"$consume_1344", i64* @_gasrem, align 8
  %"$test_78" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_78", metadata !272, metadata !DIExpression()), !dbg !273
  %"$gasrem_1345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1346" = icmp ugt i64 1, %"$gasrem_1345"
  br i1 %"$gascmp_1346", label %"$out_of_gas_1347", label %"$have_gas_1348"

"$out_of_gas_1347":                               ; preds = %"$have_gas_1343"
  call void @_out_of_gas()
  br label %"$have_gas_1348"

"$have_gas_1348":                                 ; preds = %"$out_of_gas_1347", %"$have_gas_1343"
  %"$consume_1349" = sub i64 %"$gasrem_1345", 1
  store i64 %"$consume_1349", i64* @_gasrem, align 8
  %"$res_75" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_75", metadata !274, metadata !DIExpression()), !dbg !275
  %"$gasrem_1351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1352" = icmp ugt i64 80, %"$gasrem_1351"
  br i1 %"$gascmp_1352", label %"$out_of_gas_1353", label %"$have_gas_1354"

"$out_of_gas_1353":                               ; preds = %"$have_gas_1348"
  call void @_out_of_gas()
  br label %"$have_gas_1354"

"$have_gas_1354":                                 ; preds = %"$out_of_gas_1353", %"$have_gas_1348"
  %"$consume_1355" = sub i64 %"$gasrem_1351", 80
  store i64 %"$consume_1355", i64* @_gasrem, align 8
  %"$execptr_load_1356" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_73_1357" = alloca %Uint256, align 8
  %"$$arg1_73_1358" = load %Uint256, %Uint256* %"$arg1_73", align 8
  store %Uint256 %"$$arg1_73_1358", %Uint256* %"$mul_$arg1_73_1357", align 8
  %"$mul_$arg2_74_1359" = alloca %Uint256, align 8
  %"$$arg2_74_1360" = load %Uint256, %Uint256* %"$arg2_74", align 8
  store %Uint256 %"$$arg2_74_1360", %Uint256* %"$mul_$arg2_74_1359", align 8
  %"$mul_call_1361" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1356", %Uint256* %"$mul_$arg1_73_1357", %Uint256* %"$mul_$arg2_74_1359"), !dbg !276
  %"$mul_1363" = load %Uint256, %Uint256* %"$mul_call_1361", align 8
  store %Uint256 %"$mul_1363", %Uint256* %"$res_75", align 8, !dbg !276
  %"$gasrem_1364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1365" = icmp ugt i64 1, %"$gasrem_1364"
  br i1 %"$gascmp_1365", label %"$out_of_gas_1366", label %"$have_gas_1367"

"$out_of_gas_1366":                               ; preds = %"$have_gas_1354"
  call void @_out_of_gas()
  br label %"$have_gas_1367"

"$have_gas_1367":                                 ; preds = %"$out_of_gas_1366", %"$have_gas_1354"
  %"$consume_1368" = sub i64 %"$gasrem_1364", 1
  store i64 %"$consume_1368", i64* @_gasrem, align 8
  %"$res__76" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__76", metadata !277, metadata !DIExpression()), !dbg !278
  %"$gasrem_1369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1370" = icmp ugt i64 1, %"$gasrem_1369"
  br i1 %"$gascmp_1370", label %"$out_of_gas_1371", label %"$have_gas_1372"

"$out_of_gas_1371":                               ; preds = %"$have_gas_1367"
  call void @_out_of_gas()
  br label %"$have_gas_1372"

"$have_gas_1372":                                 ; preds = %"$out_of_gas_1371", %"$have_gas_1367"
  %"$consume_1373" = sub i64 %"$gasrem_1369", 1
  store i64 %"$consume_1373", i64* @_gasrem, align 8
  store %Uint256 { i256 28948022309329048855892746252171976963147354982949671778132708698262398304256 }, %Uint256* %"$res__76", align 8, !dbg !279
  %"$gasrem_1374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1375" = icmp ugt i64 1, %"$gasrem_1374"
  br i1 %"$gascmp_1375", label %"$out_of_gas_1376", label %"$have_gas_1377"

"$out_of_gas_1376":                               ; preds = %"$have_gas_1372"
  call void @_out_of_gas()
  br label %"$have_gas_1377"

"$have_gas_1377":                                 ; preds = %"$out_of_gas_1376", %"$have_gas_1372"
  %"$consume_1378" = sub i64 %"$gasrem_1374", 1
  store i64 %"$consume_1378", i64* @_gasrem, align 8
  %"$test__77" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__77", metadata !280, metadata !DIExpression()), !dbg !281
  %"$gasrem_1380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1381" = icmp ugt i64 16, %"$gasrem_1380"
  br i1 %"$gascmp_1381", label %"$out_of_gas_1382", label %"$have_gas_1383"

"$out_of_gas_1382":                               ; preds = %"$have_gas_1377"
  call void @_out_of_gas()
  br label %"$have_gas_1383"

"$have_gas_1383":                                 ; preds = %"$out_of_gas_1382", %"$have_gas_1377"
  %"$consume_1384" = sub i64 %"$gasrem_1380", 16
  store i64 %"$consume_1384", i64* @_gasrem, align 8
  %"$execptr_load_1385" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_75_1386" = alloca %Uint256, align 8
  %"$$res_75_1387" = load %Uint256, %Uint256* %"$res_75", align 8
  store %Uint256 %"$$res_75_1387", %Uint256* %"$eq_$res_75_1386", align 8
  %"$eq_$res__76_1388" = alloca %Uint256, align 8
  %"$$res__76_1389" = load %Uint256, %Uint256* %"$res__76", align 8
  store %Uint256 %"$$res__76_1389", %Uint256* %"$eq_$res__76_1388", align 8
  %"$eq_call_1390" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1385", %Uint256* %"$eq_$res_75_1386", %Uint256* %"$eq_$res__76_1388"), !dbg !282
  store %TName_Bool* %"$eq_call_1390", %TName_Bool** %"$test__77", align 8, !dbg !282
  %"$gasrem_1392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1393" = icmp ugt i64 1, %"$gasrem_1392"
  br i1 %"$gascmp_1393", label %"$out_of_gas_1394", label %"$have_gas_1395"

"$out_of_gas_1394":                               ; preds = %"$have_gas_1383"
  call void @_out_of_gas()
  br label %"$have_gas_1395"

"$have_gas_1395":                                 ; preds = %"$out_of_gas_1394", %"$have_gas_1383"
  %"$consume_1396" = sub i64 %"$gasrem_1392", 1
  store i64 %"$consume_1396", i64* @_gasrem, align 8
  %"$BoolUtils.andb_151" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1397" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1398" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1397", 0
  %"$BoolUtils.andb_envptr_1399" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1397", 1
  %"$$test_72_1400" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  %"$BoolUtils.andb_call_1401" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1398"(i8* %"$BoolUtils.andb_envptr_1399", %TName_Bool* %"$$test_72_1400"), !dbg !283
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1401", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8, !dbg !283
  %"$BoolUtils.andb_152" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_152", metadata !284, metadata !DIExpression()), !dbg !283
  %"$$BoolUtils.andb_151_1402" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$$BoolUtils.andb_151_fptr_1403" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1402", 0
  %"$$BoolUtils.andb_151_envptr_1404" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1402", 1
  %"$$test__77_1405" = load %TName_Bool*, %TName_Bool** %"$test__77", align 8
  %"$$BoolUtils.andb_151_call_1406" = call %TName_Bool* %"$$BoolUtils.andb_151_fptr_1403"(i8* %"$$BoolUtils.andb_151_envptr_1404", %TName_Bool* %"$$test__77_1405"), !dbg !283
  store %TName_Bool* %"$$BoolUtils.andb_151_call_1406", %TName_Bool** %"$BoolUtils.andb_152", align 8, !dbg !283
  %"$$BoolUtils.andb_152_1407" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_152", align 8
  store %TName_Bool* %"$$BoolUtils.andb_152_1407", %TName_Bool** %"$test_78", align 8, !dbg !283
  %"$gasrem_1408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1409" = icmp ugt i64 1, %"$gasrem_1408"
  br i1 %"$gascmp_1409", label %"$out_of_gas_1410", label %"$have_gas_1411"

"$out_of_gas_1410":                               ; preds = %"$have_gas_1395"
  call void @_out_of_gas()
  br label %"$have_gas_1411"

"$have_gas_1411":                                 ; preds = %"$out_of_gas_1410", %"$have_gas_1395"
  %"$consume_1412" = sub i64 %"$gasrem_1408", 1
  store i64 %"$consume_1412", i64* @_gasrem, align 8
  %"$arg1_79" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_79", metadata !285, metadata !DIExpression()), !dbg !286
  %"$gasrem_1413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1414" = icmp ugt i64 1, %"$gasrem_1413"
  br i1 %"$gascmp_1414", label %"$out_of_gas_1415", label %"$have_gas_1416"

"$out_of_gas_1415":                               ; preds = %"$have_gas_1411"
  call void @_out_of_gas()
  br label %"$have_gas_1416"

"$have_gas_1416":                                 ; preds = %"$out_of_gas_1415", %"$have_gas_1411"
  %"$consume_1417" = sub i64 %"$gasrem_1413", 1
  store i64 %"$consume_1417", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$arg1_79", align 8, !dbg !287
  %"$gasrem_1418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1419" = icmp ugt i64 1, %"$gasrem_1418"
  br i1 %"$gascmp_1419", label %"$out_of_gas_1420", label %"$have_gas_1421"

"$out_of_gas_1420":                               ; preds = %"$have_gas_1416"
  call void @_out_of_gas()
  br label %"$have_gas_1421"

"$have_gas_1421":                                 ; preds = %"$out_of_gas_1420", %"$have_gas_1416"
  %"$consume_1422" = sub i64 %"$gasrem_1418", 1
  store i64 %"$consume_1422", i64* @_gasrem, align 8
  %"$arg2_80" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_80", metadata !288, metadata !DIExpression()), !dbg !289
  %"$gasrem_1423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1424" = icmp ugt i64 1, %"$gasrem_1423"
  br i1 %"$gascmp_1424", label %"$out_of_gas_1425", label %"$have_gas_1426"

"$out_of_gas_1425":                               ; preds = %"$have_gas_1421"
  call void @_out_of_gas()
  br label %"$have_gas_1426"

"$have_gas_1426":                                 ; preds = %"$out_of_gas_1425", %"$have_gas_1421"
  %"$consume_1427" = sub i64 %"$gasrem_1423", 1
  store i64 %"$consume_1427", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg2_80", align 8, !dbg !290
  %"$gasrem_1428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1429" = icmp ugt i64 1, %"$gasrem_1428"
  br i1 %"$gascmp_1429", label %"$out_of_gas_1430", label %"$have_gas_1431"

"$out_of_gas_1430":                               ; preds = %"$have_gas_1426"
  call void @_out_of_gas()
  br label %"$have_gas_1431"

"$have_gas_1431":                                 ; preds = %"$out_of_gas_1430", %"$have_gas_1426"
  %"$consume_1432" = sub i64 %"$gasrem_1428", 1
  store i64 %"$consume_1432", i64* @_gasrem, align 8
  %"$test_84" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_84", metadata !291, metadata !DIExpression()), !dbg !292
  %"$gasrem_1433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1434" = icmp ugt i64 1, %"$gasrem_1433"
  br i1 %"$gascmp_1434", label %"$out_of_gas_1435", label %"$have_gas_1436"

"$out_of_gas_1435":                               ; preds = %"$have_gas_1431"
  call void @_out_of_gas()
  br label %"$have_gas_1436"

"$have_gas_1436":                                 ; preds = %"$out_of_gas_1435", %"$have_gas_1431"
  %"$consume_1437" = sub i64 %"$gasrem_1433", 1
  store i64 %"$consume_1437", i64* @_gasrem, align 8
  %"$res_81" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_81", metadata !293, metadata !DIExpression()), !dbg !294
  %"$gasrem_1439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1440" = icmp ugt i64 80, %"$gasrem_1439"
  br i1 %"$gascmp_1440", label %"$out_of_gas_1441", label %"$have_gas_1442"

"$out_of_gas_1441":                               ; preds = %"$have_gas_1436"
  call void @_out_of_gas()
  br label %"$have_gas_1442"

"$have_gas_1442":                                 ; preds = %"$out_of_gas_1441", %"$have_gas_1436"
  %"$consume_1443" = sub i64 %"$gasrem_1439", 80
  store i64 %"$consume_1443", i64* @_gasrem, align 8
  %"$execptr_load_1444" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_79_1445" = alloca %Uint256, align 8
  %"$$arg1_79_1446" = load %Uint256, %Uint256* %"$arg1_79", align 8
  store %Uint256 %"$$arg1_79_1446", %Uint256* %"$mul_$arg1_79_1445", align 8
  %"$mul_$arg2_80_1447" = alloca %Uint256, align 8
  %"$$arg2_80_1448" = load %Uint256, %Uint256* %"$arg2_80", align 8
  store %Uint256 %"$$arg2_80_1448", %Uint256* %"$mul_$arg2_80_1447", align 8
  %"$mul_call_1449" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1444", %Uint256* %"$mul_$arg1_79_1445", %Uint256* %"$mul_$arg2_80_1447"), !dbg !295
  %"$mul_1451" = load %Uint256, %Uint256* %"$mul_call_1449", align 8
  store %Uint256 %"$mul_1451", %Uint256* %"$res_81", align 8, !dbg !295
  %"$gasrem_1452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1453" = icmp ugt i64 1, %"$gasrem_1452"
  br i1 %"$gascmp_1453", label %"$out_of_gas_1454", label %"$have_gas_1455"

"$out_of_gas_1454":                               ; preds = %"$have_gas_1442"
  call void @_out_of_gas()
  br label %"$have_gas_1455"

"$have_gas_1455":                                 ; preds = %"$out_of_gas_1454", %"$have_gas_1442"
  %"$consume_1456" = sub i64 %"$gasrem_1452", 1
  store i64 %"$consume_1456", i64* @_gasrem, align 8
  %"$res__82" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__82", metadata !296, metadata !DIExpression()), !dbg !297
  %"$gasrem_1457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1458" = icmp ugt i64 1, %"$gasrem_1457"
  br i1 %"$gascmp_1458", label %"$out_of_gas_1459", label %"$have_gas_1460"

"$out_of_gas_1459":                               ; preds = %"$have_gas_1455"
  call void @_out_of_gas()
  br label %"$have_gas_1460"

"$have_gas_1460":                                 ; preds = %"$out_of_gas_1459", %"$have_gas_1455"
  %"$consume_1461" = sub i64 %"$gasrem_1457", 1
  store i64 %"$consume_1461", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$res__82", align 8, !dbg !298
  %"$gasrem_1462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1463" = icmp ugt i64 1, %"$gasrem_1462"
  br i1 %"$gascmp_1463", label %"$out_of_gas_1464", label %"$have_gas_1465"

"$out_of_gas_1464":                               ; preds = %"$have_gas_1460"
  call void @_out_of_gas()
  br label %"$have_gas_1465"

"$have_gas_1465":                                 ; preds = %"$out_of_gas_1464", %"$have_gas_1460"
  %"$consume_1466" = sub i64 %"$gasrem_1462", 1
  store i64 %"$consume_1466", i64* @_gasrem, align 8
  %"$test__83" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__83", metadata !299, metadata !DIExpression()), !dbg !300
  %"$gasrem_1468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1469" = icmp ugt i64 16, %"$gasrem_1468"
  br i1 %"$gascmp_1469", label %"$out_of_gas_1470", label %"$have_gas_1471"

"$out_of_gas_1470":                               ; preds = %"$have_gas_1465"
  call void @_out_of_gas()
  br label %"$have_gas_1471"

"$have_gas_1471":                                 ; preds = %"$out_of_gas_1470", %"$have_gas_1465"
  %"$consume_1472" = sub i64 %"$gasrem_1468", 16
  store i64 %"$consume_1472", i64* @_gasrem, align 8
  %"$execptr_load_1473" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_81_1474" = alloca %Uint256, align 8
  %"$$res_81_1475" = load %Uint256, %Uint256* %"$res_81", align 8
  store %Uint256 %"$$res_81_1475", %Uint256* %"$eq_$res_81_1474", align 8
  %"$eq_$res__82_1476" = alloca %Uint256, align 8
  %"$$res__82_1477" = load %Uint256, %Uint256* %"$res__82", align 8
  store %Uint256 %"$$res__82_1477", %Uint256* %"$eq_$res__82_1476", align 8
  %"$eq_call_1478" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1473", %Uint256* %"$eq_$res_81_1474", %Uint256* %"$eq_$res__82_1476"), !dbg !301
  store %TName_Bool* %"$eq_call_1478", %TName_Bool** %"$test__83", align 8, !dbg !301
  %"$gasrem_1480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1481" = icmp ugt i64 1, %"$gasrem_1480"
  br i1 %"$gascmp_1481", label %"$out_of_gas_1482", label %"$have_gas_1483"

"$out_of_gas_1482":                               ; preds = %"$have_gas_1471"
  call void @_out_of_gas()
  br label %"$have_gas_1483"

"$have_gas_1483":                                 ; preds = %"$out_of_gas_1482", %"$have_gas_1471"
  %"$consume_1484" = sub i64 %"$gasrem_1480", 1
  store i64 %"$consume_1484", i64* @_gasrem, align 8
  %"$BoolUtils.andb_153" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1485" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1486" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1485", 0
  %"$BoolUtils.andb_envptr_1487" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1485", 1
  %"$$test_78_1488" = load %TName_Bool*, %TName_Bool** %"$test_78", align 8
  %"$BoolUtils.andb_call_1489" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1486"(i8* %"$BoolUtils.andb_envptr_1487", %TName_Bool* %"$$test_78_1488"), !dbg !302
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1489", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8, !dbg !302
  %"$BoolUtils.andb_154" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_154", metadata !303, metadata !DIExpression()), !dbg !302
  %"$$BoolUtils.andb_153_1490" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$$BoolUtils.andb_153_fptr_1491" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1490", 0
  %"$$BoolUtils.andb_153_envptr_1492" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1490", 1
  %"$$test__83_1493" = load %TName_Bool*, %TName_Bool** %"$test__83", align 8
  %"$$BoolUtils.andb_153_call_1494" = call %TName_Bool* %"$$BoolUtils.andb_153_fptr_1491"(i8* %"$$BoolUtils.andb_153_envptr_1492", %TName_Bool* %"$$test__83_1493"), !dbg !302
  store %TName_Bool* %"$$BoolUtils.andb_153_call_1494", %TName_Bool** %"$BoolUtils.andb_154", align 8, !dbg !302
  %"$$BoolUtils.andb_154_1495" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_154", align 8
  store %TName_Bool* %"$$BoolUtils.andb_154_1495", %TName_Bool** %"$test_84", align 8, !dbg !302
  %"$gasrem_1496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1497" = icmp ugt i64 1, %"$gasrem_1496"
  br i1 %"$gascmp_1497", label %"$out_of_gas_1498", label %"$have_gas_1499"

"$out_of_gas_1498":                               ; preds = %"$have_gas_1483"
  call void @_out_of_gas()
  br label %"$have_gas_1499"

"$have_gas_1499":                                 ; preds = %"$out_of_gas_1498", %"$have_gas_1483"
  %"$consume_1500" = sub i64 %"$gasrem_1496", 1
  store i64 %"$consume_1500", i64* @_gasrem, align 8
  %"$arg1_85" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_85", metadata !304, metadata !DIExpression()), !dbg !305
  %"$gasrem_1501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1502" = icmp ugt i64 1, %"$gasrem_1501"
  br i1 %"$gascmp_1502", label %"$out_of_gas_1503", label %"$have_gas_1504"

"$out_of_gas_1503":                               ; preds = %"$have_gas_1499"
  call void @_out_of_gas()
  br label %"$have_gas_1504"

"$have_gas_1504":                                 ; preds = %"$out_of_gas_1503", %"$have_gas_1499"
  %"$consume_1505" = sub i64 %"$gasrem_1501", 1
  store i64 %"$consume_1505", i64* @_gasrem, align 8
  store %Uint256 { i256 2 }, %Uint256* %"$arg1_85", align 8, !dbg !306
  %"$gasrem_1506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1507" = icmp ugt i64 1, %"$gasrem_1506"
  br i1 %"$gascmp_1507", label %"$out_of_gas_1508", label %"$have_gas_1509"

"$out_of_gas_1508":                               ; preds = %"$have_gas_1504"
  call void @_out_of_gas()
  br label %"$have_gas_1509"

"$have_gas_1509":                                 ; preds = %"$out_of_gas_1508", %"$have_gas_1504"
  %"$consume_1510" = sub i64 %"$gasrem_1506", 1
  store i64 %"$consume_1510", i64* @_gasrem, align 8
  %"$arg2_86" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_86", metadata !307, metadata !DIExpression()), !dbg !308
  %"$gasrem_1511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1512" = icmp ugt i64 1, %"$gasrem_1511"
  br i1 %"$gascmp_1512", label %"$out_of_gas_1513", label %"$have_gas_1514"

"$out_of_gas_1513":                               ; preds = %"$have_gas_1509"
  call void @_out_of_gas()
  br label %"$have_gas_1514"

"$have_gas_1514":                                 ; preds = %"$out_of_gas_1513", %"$have_gas_1509"
  %"$consume_1515" = sub i64 %"$gasrem_1511", 1
  store i64 %"$consume_1515", i64* @_gasrem, align 8
  store %Uint256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Uint256* %"$arg2_86", align 8, !dbg !309
  %"$gasrem_1516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1517" = icmp ugt i64 1, %"$gasrem_1516"
  br i1 %"$gascmp_1517", label %"$out_of_gas_1518", label %"$have_gas_1519"

"$out_of_gas_1518":                               ; preds = %"$have_gas_1514"
  call void @_out_of_gas()
  br label %"$have_gas_1519"

"$have_gas_1519":                                 ; preds = %"$out_of_gas_1518", %"$have_gas_1514"
  %"$consume_1520" = sub i64 %"$gasrem_1516", 1
  store i64 %"$consume_1520", i64* @_gasrem, align 8
  %"$test_90" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_90", metadata !310, metadata !DIExpression()), !dbg !311
  %"$gasrem_1521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1522" = icmp ugt i64 1, %"$gasrem_1521"
  br i1 %"$gascmp_1522", label %"$out_of_gas_1523", label %"$have_gas_1524"

"$out_of_gas_1523":                               ; preds = %"$have_gas_1519"
  call void @_out_of_gas()
  br label %"$have_gas_1524"

"$have_gas_1524":                                 ; preds = %"$out_of_gas_1523", %"$have_gas_1519"
  %"$consume_1525" = sub i64 %"$gasrem_1521", 1
  store i64 %"$consume_1525", i64* @_gasrem, align 8
  %"$res_87" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_87", metadata !312, metadata !DIExpression()), !dbg !313
  %"$gasrem_1527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1528" = icmp ugt i64 80, %"$gasrem_1527"
  br i1 %"$gascmp_1528", label %"$out_of_gas_1529", label %"$have_gas_1530"

"$out_of_gas_1529":                               ; preds = %"$have_gas_1524"
  call void @_out_of_gas()
  br label %"$have_gas_1530"

"$have_gas_1530":                                 ; preds = %"$out_of_gas_1529", %"$have_gas_1524"
  %"$consume_1531" = sub i64 %"$gasrem_1527", 80
  store i64 %"$consume_1531", i64* @_gasrem, align 8
  %"$execptr_load_1532" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_85_1533" = alloca %Uint256, align 8
  %"$$arg1_85_1534" = load %Uint256, %Uint256* %"$arg1_85", align 8
  store %Uint256 %"$$arg1_85_1534", %Uint256* %"$mul_$arg1_85_1533", align 8
  %"$mul_$arg2_86_1535" = alloca %Uint256, align 8
  %"$$arg2_86_1536" = load %Uint256, %Uint256* %"$arg2_86", align 8
  store %Uint256 %"$$arg2_86_1536", %Uint256* %"$mul_$arg2_86_1535", align 8
  %"$mul_call_1537" = call %Uint256* @_mul_Uint256(i8* %"$execptr_load_1532", %Uint256* %"$mul_$arg1_85_1533", %Uint256* %"$mul_$arg2_86_1535"), !dbg !314
  %"$mul_1539" = load %Uint256, %Uint256* %"$mul_call_1537", align 8
  store %Uint256 %"$mul_1539", %Uint256* %"$res_87", align 8, !dbg !314
  %"$gasrem_1540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1541" = icmp ugt i64 1, %"$gasrem_1540"
  br i1 %"$gascmp_1541", label %"$out_of_gas_1542", label %"$have_gas_1543"

"$out_of_gas_1542":                               ; preds = %"$have_gas_1530"
  call void @_out_of_gas()
  br label %"$have_gas_1543"

"$have_gas_1543":                                 ; preds = %"$out_of_gas_1542", %"$have_gas_1530"
  %"$consume_1544" = sub i64 %"$gasrem_1540", 1
  store i64 %"$consume_1544", i64* @_gasrem, align 8
  %"$res__88" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__88", metadata !315, metadata !DIExpression()), !dbg !316
  %"$gasrem_1545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1546" = icmp ugt i64 1, %"$gasrem_1545"
  br i1 %"$gascmp_1546", label %"$out_of_gas_1547", label %"$have_gas_1548"

"$out_of_gas_1547":                               ; preds = %"$have_gas_1543"
  call void @_out_of_gas()
  br label %"$have_gas_1548"

"$have_gas_1548":                                 ; preds = %"$out_of_gas_1547", %"$have_gas_1543"
  %"$consume_1549" = sub i64 %"$gasrem_1545", 1
  store i64 %"$consume_1549", i64* @_gasrem, align 8
  store %Uint256 { i256 -2 }, %Uint256* %"$res__88", align 8, !dbg !317
  %"$gasrem_1550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1551" = icmp ugt i64 1, %"$gasrem_1550"
  br i1 %"$gascmp_1551", label %"$out_of_gas_1552", label %"$have_gas_1553"

"$out_of_gas_1552":                               ; preds = %"$have_gas_1548"
  call void @_out_of_gas()
  br label %"$have_gas_1553"

"$have_gas_1553":                                 ; preds = %"$out_of_gas_1552", %"$have_gas_1548"
  %"$consume_1554" = sub i64 %"$gasrem_1550", 1
  store i64 %"$consume_1554", i64* @_gasrem, align 8
  %"$test__89" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__89", metadata !318, metadata !DIExpression()), !dbg !319
  %"$gasrem_1556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1557" = icmp ugt i64 16, %"$gasrem_1556"
  br i1 %"$gascmp_1557", label %"$out_of_gas_1558", label %"$have_gas_1559"

"$out_of_gas_1558":                               ; preds = %"$have_gas_1553"
  call void @_out_of_gas()
  br label %"$have_gas_1559"

"$have_gas_1559":                                 ; preds = %"$out_of_gas_1558", %"$have_gas_1553"
  %"$consume_1560" = sub i64 %"$gasrem_1556", 16
  store i64 %"$consume_1560", i64* @_gasrem, align 8
  %"$execptr_load_1561" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_87_1562" = alloca %Uint256, align 8
  %"$$res_87_1563" = load %Uint256, %Uint256* %"$res_87", align 8
  store %Uint256 %"$$res_87_1563", %Uint256* %"$eq_$res_87_1562", align 8
  %"$eq_$res__88_1564" = alloca %Uint256, align 8
  %"$$res__88_1565" = load %Uint256, %Uint256* %"$res__88", align 8
  store %Uint256 %"$$res__88_1565", %Uint256* %"$eq_$res__88_1564", align 8
  %"$eq_call_1566" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1561", %Uint256* %"$eq_$res_87_1562", %Uint256* %"$eq_$res__88_1564"), !dbg !320
  store %TName_Bool* %"$eq_call_1566", %TName_Bool** %"$test__89", align 8, !dbg !320
  %"$gasrem_1568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1569" = icmp ugt i64 1, %"$gasrem_1568"
  br i1 %"$gascmp_1569", label %"$out_of_gas_1570", label %"$have_gas_1571"

"$out_of_gas_1570":                               ; preds = %"$have_gas_1559"
  call void @_out_of_gas()
  br label %"$have_gas_1571"

"$have_gas_1571":                                 ; preds = %"$out_of_gas_1570", %"$have_gas_1559"
  %"$consume_1572" = sub i64 %"$gasrem_1568", 1
  store i64 %"$consume_1572", i64* @_gasrem, align 8
  %"$BoolUtils.andb_155" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1573" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1574" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1573", 0
  %"$BoolUtils.andb_envptr_1575" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1573", 1
  %"$$test_84_1576" = load %TName_Bool*, %TName_Bool** %"$test_84", align 8
  %"$BoolUtils.andb_call_1577" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1574"(i8* %"$BoolUtils.andb_envptr_1575", %TName_Bool* %"$$test_84_1576"), !dbg !321
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1577", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8, !dbg !321
  %"$BoolUtils.andb_156" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_156", metadata !322, metadata !DIExpression()), !dbg !321
  %"$$BoolUtils.andb_155_1578" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$$BoolUtils.andb_155_fptr_1579" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1578", 0
  %"$$BoolUtils.andb_155_envptr_1580" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1578", 1
  %"$$test__89_1581" = load %TName_Bool*, %TName_Bool** %"$test__89", align 8
  %"$$BoolUtils.andb_155_call_1582" = call %TName_Bool* %"$$BoolUtils.andb_155_fptr_1579"(i8* %"$$BoolUtils.andb_155_envptr_1580", %TName_Bool* %"$$test__89_1581"), !dbg !321
  store %TName_Bool* %"$$BoolUtils.andb_155_call_1582", %TName_Bool** %"$BoolUtils.andb_156", align 8, !dbg !321
  %"$$BoolUtils.andb_156_1583" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_156", align 8
  store %TName_Bool* %"$$BoolUtils.andb_156_1583", %TName_Bool** %"$test_90", align 8, !dbg !321
  %"$gasrem_1584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1585" = icmp ugt i64 1, %"$gasrem_1584"
  br i1 %"$gascmp_1585", label %"$out_of_gas_1586", label %"$have_gas_1587"

"$out_of_gas_1586":                               ; preds = %"$have_gas_1571"
  call void @_out_of_gas()
  br label %"$have_gas_1587"

"$have_gas_1587":                                 ; preds = %"$out_of_gas_1586", %"$have_gas_1571"
  %"$consume_1588" = sub i64 %"$gasrem_1584", 1
  store i64 %"$consume_1588", i64* @_gasrem, align 8
  %"$arg1_91" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_91", metadata !323, metadata !DIExpression()), !dbg !324
  %"$gasrem_1589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1590" = icmp ugt i64 1, %"$gasrem_1589"
  br i1 %"$gascmp_1590", label %"$out_of_gas_1591", label %"$have_gas_1592"

"$out_of_gas_1591":                               ; preds = %"$have_gas_1587"
  call void @_out_of_gas()
  br label %"$have_gas_1592"

"$have_gas_1592":                                 ; preds = %"$out_of_gas_1591", %"$have_gas_1587"
  %"$consume_1593" = sub i64 %"$gasrem_1589", 1
  store i64 %"$consume_1593", i64* @_gasrem, align 8
  store %Int256 { i256 2 }, %Int256* %"$arg1_91", align 8, !dbg !325
  %"$gasrem_1594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1595" = icmp ugt i64 1, %"$gasrem_1594"
  br i1 %"$gascmp_1595", label %"$out_of_gas_1596", label %"$have_gas_1597"

"$out_of_gas_1596":                               ; preds = %"$have_gas_1592"
  call void @_out_of_gas()
  br label %"$have_gas_1597"

"$have_gas_1597":                                 ; preds = %"$out_of_gas_1596", %"$have_gas_1592"
  %"$consume_1598" = sub i64 %"$gasrem_1594", 1
  store i64 %"$consume_1598", i64* @_gasrem, align 8
  %"$arg2_92" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_92", metadata !326, metadata !DIExpression()), !dbg !327
  %"$gasrem_1599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1600" = icmp ugt i64 1, %"$gasrem_1599"
  br i1 %"$gascmp_1600", label %"$out_of_gas_1601", label %"$have_gas_1602"

"$out_of_gas_1601":                               ; preds = %"$have_gas_1597"
  call void @_out_of_gas()
  br label %"$have_gas_1602"

"$have_gas_1602":                                 ; preds = %"$out_of_gas_1601", %"$have_gas_1597"
  %"$consume_1603" = sub i64 %"$gasrem_1599", 1
  store i64 %"$consume_1603", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_92", align 8, !dbg !328
  %"$gasrem_1604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1605" = icmp ugt i64 1, %"$gasrem_1604"
  br i1 %"$gascmp_1605", label %"$out_of_gas_1606", label %"$have_gas_1607"

"$out_of_gas_1606":                               ; preds = %"$have_gas_1602"
  call void @_out_of_gas()
  br label %"$have_gas_1607"

"$have_gas_1607":                                 ; preds = %"$out_of_gas_1606", %"$have_gas_1602"
  %"$consume_1608" = sub i64 %"$gasrem_1604", 1
  store i64 %"$consume_1608", i64* @_gasrem, align 8
  %"$test_96" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_96", metadata !329, metadata !DIExpression()), !dbg !330
  %"$gasrem_1609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1610" = icmp ugt i64 1, %"$gasrem_1609"
  br i1 %"$gascmp_1610", label %"$out_of_gas_1611", label %"$have_gas_1612"

"$out_of_gas_1611":                               ; preds = %"$have_gas_1607"
  call void @_out_of_gas()
  br label %"$have_gas_1612"

"$have_gas_1612":                                 ; preds = %"$out_of_gas_1611", %"$have_gas_1607"
  %"$consume_1613" = sub i64 %"$gasrem_1609", 1
  store i64 %"$consume_1613", i64* @_gasrem, align 8
  %"$res_93" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_93", metadata !331, metadata !DIExpression()), !dbg !332
  %"$gasrem_1615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1616" = icmp ugt i64 80, %"$gasrem_1615"
  br i1 %"$gascmp_1616", label %"$out_of_gas_1617", label %"$have_gas_1618"

"$out_of_gas_1617":                               ; preds = %"$have_gas_1612"
  call void @_out_of_gas()
  br label %"$have_gas_1618"

"$have_gas_1618":                                 ; preds = %"$out_of_gas_1617", %"$have_gas_1612"
  %"$consume_1619" = sub i64 %"$gasrem_1615", 80
  store i64 %"$consume_1619", i64* @_gasrem, align 8
  %"$execptr_load_1620" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_91_1621" = alloca %Int256, align 8
  %"$$arg1_91_1622" = load %Int256, %Int256* %"$arg1_91", align 8
  store %Int256 %"$$arg1_91_1622", %Int256* %"$mul_$arg1_91_1621", align 8
  %"$mul_$arg2_92_1623" = alloca %Int256, align 8
  %"$$arg2_92_1624" = load %Int256, %Int256* %"$arg2_92", align 8
  store %Int256 %"$$arg2_92_1624", %Int256* %"$mul_$arg2_92_1623", align 8
  %"$mul_call_1625" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1620", %Int256* %"$mul_$arg1_91_1621", %Int256* %"$mul_$arg2_92_1623"), !dbg !333
  %"$mul_1627" = load %Int256, %Int256* %"$mul_call_1625", align 8
  store %Int256 %"$mul_1627", %Int256* %"$res_93", align 8, !dbg !333
  %"$gasrem_1628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1629" = icmp ugt i64 1, %"$gasrem_1628"
  br i1 %"$gascmp_1629", label %"$out_of_gas_1630", label %"$have_gas_1631"

"$out_of_gas_1630":                               ; preds = %"$have_gas_1618"
  call void @_out_of_gas()
  br label %"$have_gas_1631"

"$have_gas_1631":                                 ; preds = %"$out_of_gas_1630", %"$have_gas_1618"
  %"$consume_1632" = sub i64 %"$gasrem_1628", 1
  store i64 %"$consume_1632", i64* @_gasrem, align 8
  %"$res__94" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__94", metadata !334, metadata !DIExpression()), !dbg !335
  %"$gasrem_1633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1634" = icmp ugt i64 1, %"$gasrem_1633"
  br i1 %"$gascmp_1634", label %"$out_of_gas_1635", label %"$have_gas_1636"

"$out_of_gas_1635":                               ; preds = %"$have_gas_1631"
  call void @_out_of_gas()
  br label %"$have_gas_1636"

"$have_gas_1636":                                 ; preds = %"$out_of_gas_1635", %"$have_gas_1631"
  %"$consume_1637" = sub i64 %"$gasrem_1633", 1
  store i64 %"$consume_1637", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__94", align 8, !dbg !336
  %"$gasrem_1638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1639" = icmp ugt i64 1, %"$gasrem_1638"
  br i1 %"$gascmp_1639", label %"$out_of_gas_1640", label %"$have_gas_1641"

"$out_of_gas_1640":                               ; preds = %"$have_gas_1636"
  call void @_out_of_gas()
  br label %"$have_gas_1641"

"$have_gas_1641":                                 ; preds = %"$out_of_gas_1640", %"$have_gas_1636"
  %"$consume_1642" = sub i64 %"$gasrem_1638", 1
  store i64 %"$consume_1642", i64* @_gasrem, align 8
  %"$test__95" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__95", metadata !337, metadata !DIExpression()), !dbg !338
  %"$gasrem_1644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1645" = icmp ugt i64 16, %"$gasrem_1644"
  br i1 %"$gascmp_1645", label %"$out_of_gas_1646", label %"$have_gas_1647"

"$out_of_gas_1646":                               ; preds = %"$have_gas_1641"
  call void @_out_of_gas()
  br label %"$have_gas_1647"

"$have_gas_1647":                                 ; preds = %"$out_of_gas_1646", %"$have_gas_1641"
  %"$consume_1648" = sub i64 %"$gasrem_1644", 16
  store i64 %"$consume_1648", i64* @_gasrem, align 8
  %"$execptr_load_1649" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_93_1650" = alloca %Int256, align 8
  %"$$res_93_1651" = load %Int256, %Int256* %"$res_93", align 8
  store %Int256 %"$$res_93_1651", %Int256* %"$eq_$res_93_1650", align 8
  %"$eq_$res__94_1652" = alloca %Int256, align 8
  %"$$res__94_1653" = load %Int256, %Int256* %"$res__94", align 8
  store %Int256 %"$$res__94_1653", %Int256* %"$eq_$res__94_1652", align 8
  %"$eq_call_1654" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1649", %Int256* %"$eq_$res_93_1650", %Int256* %"$eq_$res__94_1652"), !dbg !339
  store %TName_Bool* %"$eq_call_1654", %TName_Bool** %"$test__95", align 8, !dbg !339
  %"$gasrem_1656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1657" = icmp ugt i64 1, %"$gasrem_1656"
  br i1 %"$gascmp_1657", label %"$out_of_gas_1658", label %"$have_gas_1659"

"$out_of_gas_1658":                               ; preds = %"$have_gas_1647"
  call void @_out_of_gas()
  br label %"$have_gas_1659"

"$have_gas_1659":                                 ; preds = %"$out_of_gas_1658", %"$have_gas_1647"
  %"$consume_1660" = sub i64 %"$gasrem_1656", 1
  store i64 %"$consume_1660", i64* @_gasrem, align 8
  %"$BoolUtils.andb_157" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1661" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1662" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1661", 0
  %"$BoolUtils.andb_envptr_1663" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1661", 1
  %"$$test_90_1664" = load %TName_Bool*, %TName_Bool** %"$test_90", align 8
  %"$BoolUtils.andb_call_1665" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1662"(i8* %"$BoolUtils.andb_envptr_1663", %TName_Bool* %"$$test_90_1664"), !dbg !340
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1665", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8, !dbg !340
  %"$BoolUtils.andb_158" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_158", metadata !341, metadata !DIExpression()), !dbg !340
  %"$$BoolUtils.andb_157_1666" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$$BoolUtils.andb_157_fptr_1667" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1666", 0
  %"$$BoolUtils.andb_157_envptr_1668" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1666", 1
  %"$$test__95_1669" = load %TName_Bool*, %TName_Bool** %"$test__95", align 8
  %"$$BoolUtils.andb_157_call_1670" = call %TName_Bool* %"$$BoolUtils.andb_157_fptr_1667"(i8* %"$$BoolUtils.andb_157_envptr_1668", %TName_Bool* %"$$test__95_1669"), !dbg !340
  store %TName_Bool* %"$$BoolUtils.andb_157_call_1670", %TName_Bool** %"$BoolUtils.andb_158", align 8, !dbg !340
  %"$$BoolUtils.andb_158_1671" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_158", align 8
  store %TName_Bool* %"$$BoolUtils.andb_158_1671", %TName_Bool** %"$test_96", align 8, !dbg !340
  %"$gasrem_1672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1673" = icmp ugt i64 1, %"$gasrem_1672"
  br i1 %"$gascmp_1673", label %"$out_of_gas_1674", label %"$have_gas_1675"

"$out_of_gas_1674":                               ; preds = %"$have_gas_1659"
  call void @_out_of_gas()
  br label %"$have_gas_1675"

"$have_gas_1675":                                 ; preds = %"$out_of_gas_1674", %"$have_gas_1659"
  %"$consume_1676" = sub i64 %"$gasrem_1672", 1
  store i64 %"$consume_1676", i64* @_gasrem, align 8
  %"$arg1_97" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_97", metadata !342, metadata !DIExpression()), !dbg !343
  %"$gasrem_1677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1678" = icmp ugt i64 1, %"$gasrem_1677"
  br i1 %"$gascmp_1678", label %"$out_of_gas_1679", label %"$have_gas_1680"

"$out_of_gas_1679":                               ; preds = %"$have_gas_1675"
  call void @_out_of_gas()
  br label %"$have_gas_1680"

"$have_gas_1680":                                 ; preds = %"$out_of_gas_1679", %"$have_gas_1675"
  %"$consume_1681" = sub i64 %"$gasrem_1677", 1
  store i64 %"$consume_1681", i64* @_gasrem, align 8
  store %Int256 { i256 -2 }, %Int256* %"$arg1_97", align 8, !dbg !344
  %"$gasrem_1682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1683" = icmp ugt i64 1, %"$gasrem_1682"
  br i1 %"$gascmp_1683", label %"$out_of_gas_1684", label %"$have_gas_1685"

"$out_of_gas_1684":                               ; preds = %"$have_gas_1680"
  call void @_out_of_gas()
  br label %"$have_gas_1685"

"$have_gas_1685":                                 ; preds = %"$out_of_gas_1684", %"$have_gas_1680"
  %"$consume_1686" = sub i64 %"$gasrem_1682", 1
  store i64 %"$consume_1686", i64* @_gasrem, align 8
  %"$arg2_98" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_98", metadata !345, metadata !DIExpression()), !dbg !346
  %"$gasrem_1687" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1688" = icmp ugt i64 1, %"$gasrem_1687"
  br i1 %"$gascmp_1688", label %"$out_of_gas_1689", label %"$have_gas_1690"

"$out_of_gas_1689":                               ; preds = %"$have_gas_1685"
  call void @_out_of_gas()
  br label %"$have_gas_1690"

"$have_gas_1690":                                 ; preds = %"$out_of_gas_1689", %"$have_gas_1685"
  %"$consume_1691" = sub i64 %"$gasrem_1687", 1
  store i64 %"$consume_1691", i64* @_gasrem, align 8
  store %Int256 { i256 28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_98", align 8, !dbg !347
  %"$gasrem_1692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1693" = icmp ugt i64 1, %"$gasrem_1692"
  br i1 %"$gascmp_1693", label %"$out_of_gas_1694", label %"$have_gas_1695"

"$out_of_gas_1694":                               ; preds = %"$have_gas_1690"
  call void @_out_of_gas()
  br label %"$have_gas_1695"

"$have_gas_1695":                                 ; preds = %"$out_of_gas_1694", %"$have_gas_1690"
  %"$consume_1696" = sub i64 %"$gasrem_1692", 1
  store i64 %"$consume_1696", i64* @_gasrem, align 8
  %"$test_102" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_102", metadata !348, metadata !DIExpression()), !dbg !349
  %"$gasrem_1697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1698" = icmp ugt i64 1, %"$gasrem_1697"
  br i1 %"$gascmp_1698", label %"$out_of_gas_1699", label %"$have_gas_1700"

"$out_of_gas_1699":                               ; preds = %"$have_gas_1695"
  call void @_out_of_gas()
  br label %"$have_gas_1700"

"$have_gas_1700":                                 ; preds = %"$out_of_gas_1699", %"$have_gas_1695"
  %"$consume_1701" = sub i64 %"$gasrem_1697", 1
  store i64 %"$consume_1701", i64* @_gasrem, align 8
  %"$res_99" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_99", metadata !350, metadata !DIExpression()), !dbg !351
  %"$gasrem_1703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1704" = icmp ugt i64 80, %"$gasrem_1703"
  br i1 %"$gascmp_1704", label %"$out_of_gas_1705", label %"$have_gas_1706"

"$out_of_gas_1705":                               ; preds = %"$have_gas_1700"
  call void @_out_of_gas()
  br label %"$have_gas_1706"

"$have_gas_1706":                                 ; preds = %"$out_of_gas_1705", %"$have_gas_1700"
  %"$consume_1707" = sub i64 %"$gasrem_1703", 80
  store i64 %"$consume_1707", i64* @_gasrem, align 8
  %"$execptr_load_1708" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_97_1709" = alloca %Int256, align 8
  %"$$arg1_97_1710" = load %Int256, %Int256* %"$arg1_97", align 8
  store %Int256 %"$$arg1_97_1710", %Int256* %"$mul_$arg1_97_1709", align 8
  %"$mul_$arg2_98_1711" = alloca %Int256, align 8
  %"$$arg2_98_1712" = load %Int256, %Int256* %"$arg2_98", align 8
  store %Int256 %"$$arg2_98_1712", %Int256* %"$mul_$arg2_98_1711", align 8
  %"$mul_call_1713" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1708", %Int256* %"$mul_$arg1_97_1709", %Int256* %"$mul_$arg2_98_1711"), !dbg !352
  %"$mul_1715" = load %Int256, %Int256* %"$mul_call_1713", align 8
  store %Int256 %"$mul_1715", %Int256* %"$res_99", align 8, !dbg !352
  %"$gasrem_1716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1717" = icmp ugt i64 1, %"$gasrem_1716"
  br i1 %"$gascmp_1717", label %"$out_of_gas_1718", label %"$have_gas_1719"

"$out_of_gas_1718":                               ; preds = %"$have_gas_1706"
  call void @_out_of_gas()
  br label %"$have_gas_1719"

"$have_gas_1719":                                 ; preds = %"$out_of_gas_1718", %"$have_gas_1706"
  %"$consume_1720" = sub i64 %"$gasrem_1716", 1
  store i64 %"$consume_1720", i64* @_gasrem, align 8
  %"$res__100" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__100", metadata !353, metadata !DIExpression()), !dbg !354
  %"$gasrem_1721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1722" = icmp ugt i64 1, %"$gasrem_1721"
  br i1 %"$gascmp_1722", label %"$out_of_gas_1723", label %"$have_gas_1724"

"$out_of_gas_1723":                               ; preds = %"$have_gas_1719"
  call void @_out_of_gas()
  br label %"$have_gas_1724"

"$have_gas_1724":                                 ; preds = %"$out_of_gas_1723", %"$have_gas_1719"
  %"$consume_1725" = sub i64 %"$gasrem_1721", 1
  store i64 %"$consume_1725", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__100", align 8, !dbg !355
  %"$gasrem_1726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1727" = icmp ugt i64 1, %"$gasrem_1726"
  br i1 %"$gascmp_1727", label %"$out_of_gas_1728", label %"$have_gas_1729"

"$out_of_gas_1728":                               ; preds = %"$have_gas_1724"
  call void @_out_of_gas()
  br label %"$have_gas_1729"

"$have_gas_1729":                                 ; preds = %"$out_of_gas_1728", %"$have_gas_1724"
  %"$consume_1730" = sub i64 %"$gasrem_1726", 1
  store i64 %"$consume_1730", i64* @_gasrem, align 8
  %"$test__101" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__101", metadata !356, metadata !DIExpression()), !dbg !357
  %"$gasrem_1732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1733" = icmp ugt i64 16, %"$gasrem_1732"
  br i1 %"$gascmp_1733", label %"$out_of_gas_1734", label %"$have_gas_1735"

"$out_of_gas_1734":                               ; preds = %"$have_gas_1729"
  call void @_out_of_gas()
  br label %"$have_gas_1735"

"$have_gas_1735":                                 ; preds = %"$out_of_gas_1734", %"$have_gas_1729"
  %"$consume_1736" = sub i64 %"$gasrem_1732", 16
  store i64 %"$consume_1736", i64* @_gasrem, align 8
  %"$execptr_load_1737" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_99_1738" = alloca %Int256, align 8
  %"$$res_99_1739" = load %Int256, %Int256* %"$res_99", align 8
  store %Int256 %"$$res_99_1739", %Int256* %"$eq_$res_99_1738", align 8
  %"$eq_$res__100_1740" = alloca %Int256, align 8
  %"$$res__100_1741" = load %Int256, %Int256* %"$res__100", align 8
  store %Int256 %"$$res__100_1741", %Int256* %"$eq_$res__100_1740", align 8
  %"$eq_call_1742" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1737", %Int256* %"$eq_$res_99_1738", %Int256* %"$eq_$res__100_1740"), !dbg !358
  store %TName_Bool* %"$eq_call_1742", %TName_Bool** %"$test__101", align 8, !dbg !358
  %"$gasrem_1744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1745" = icmp ugt i64 1, %"$gasrem_1744"
  br i1 %"$gascmp_1745", label %"$out_of_gas_1746", label %"$have_gas_1747"

"$out_of_gas_1746":                               ; preds = %"$have_gas_1735"
  call void @_out_of_gas()
  br label %"$have_gas_1747"

"$have_gas_1747":                                 ; preds = %"$out_of_gas_1746", %"$have_gas_1735"
  %"$consume_1748" = sub i64 %"$gasrem_1744", 1
  store i64 %"$consume_1748", i64* @_gasrem, align 8
  %"$BoolUtils.andb_159" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1749" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1750" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1749", 0
  %"$BoolUtils.andb_envptr_1751" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1749", 1
  %"$$test_96_1752" = load %TName_Bool*, %TName_Bool** %"$test_96", align 8
  %"$BoolUtils.andb_call_1753" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1750"(i8* %"$BoolUtils.andb_envptr_1751", %TName_Bool* %"$$test_96_1752"), !dbg !359
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1753", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8, !dbg !359
  %"$BoolUtils.andb_160" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_160", metadata !360, metadata !DIExpression()), !dbg !359
  %"$$BoolUtils.andb_159_1754" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$$BoolUtils.andb_159_fptr_1755" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1754", 0
  %"$$BoolUtils.andb_159_envptr_1756" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1754", 1
  %"$$test__101_1757" = load %TName_Bool*, %TName_Bool** %"$test__101", align 8
  %"$$BoolUtils.andb_159_call_1758" = call %TName_Bool* %"$$BoolUtils.andb_159_fptr_1755"(i8* %"$$BoolUtils.andb_159_envptr_1756", %TName_Bool* %"$$test__101_1757"), !dbg !359
  store %TName_Bool* %"$$BoolUtils.andb_159_call_1758", %TName_Bool** %"$BoolUtils.andb_160", align 8, !dbg !359
  %"$$BoolUtils.andb_160_1759" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_160", align 8
  store %TName_Bool* %"$$BoolUtils.andb_160_1759", %TName_Bool** %"$test_102", align 8, !dbg !359
  %"$gasrem_1760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1761" = icmp ugt i64 1, %"$gasrem_1760"
  br i1 %"$gascmp_1761", label %"$out_of_gas_1762", label %"$have_gas_1763"

"$out_of_gas_1762":                               ; preds = %"$have_gas_1747"
  call void @_out_of_gas()
  br label %"$have_gas_1763"

"$have_gas_1763":                                 ; preds = %"$out_of_gas_1762", %"$have_gas_1747"
  %"$consume_1764" = sub i64 %"$gasrem_1760", 1
  store i64 %"$consume_1764", i64* @_gasrem, align 8
  %"$arg1_103" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_103", metadata !361, metadata !DIExpression()), !dbg !362
  %"$gasrem_1765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1766" = icmp ugt i64 1, %"$gasrem_1765"
  br i1 %"$gascmp_1766", label %"$out_of_gas_1767", label %"$have_gas_1768"

"$out_of_gas_1767":                               ; preds = %"$have_gas_1763"
  call void @_out_of_gas()
  br label %"$have_gas_1768"

"$have_gas_1768":                                 ; preds = %"$out_of_gas_1767", %"$have_gas_1763"
  %"$consume_1769" = sub i64 %"$gasrem_1765", 1
  store i64 %"$consume_1769", i64* @_gasrem, align 8
  store %Int256 { i256 2 }, %Int256* %"$arg1_103", align 8, !dbg !363
  %"$gasrem_1770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1771" = icmp ugt i64 1, %"$gasrem_1770"
  br i1 %"$gascmp_1771", label %"$out_of_gas_1772", label %"$have_gas_1773"

"$out_of_gas_1772":                               ; preds = %"$have_gas_1768"
  call void @_out_of_gas()
  br label %"$have_gas_1773"

"$have_gas_1773":                                 ; preds = %"$out_of_gas_1772", %"$have_gas_1768"
  %"$consume_1774" = sub i64 %"$gasrem_1770", 1
  store i64 %"$consume_1774", i64* @_gasrem, align 8
  %"$arg2_104" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_104", metadata !364, metadata !DIExpression()), !dbg !365
  %"$gasrem_1775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1776" = icmp ugt i64 1, %"$gasrem_1775"
  br i1 %"$gascmp_1776", label %"$out_of_gas_1777", label %"$have_gas_1778"

"$out_of_gas_1777":                               ; preds = %"$have_gas_1773"
  call void @_out_of_gas()
  br label %"$have_gas_1778"

"$have_gas_1778":                                 ; preds = %"$out_of_gas_1777", %"$have_gas_1773"
  %"$consume_1779" = sub i64 %"$gasrem_1775", 1
  store i64 %"$consume_1779", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_104", align 8, !dbg !366
  %"$gasrem_1780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1781" = icmp ugt i64 1, %"$gasrem_1780"
  br i1 %"$gascmp_1781", label %"$out_of_gas_1782", label %"$have_gas_1783"

"$out_of_gas_1782":                               ; preds = %"$have_gas_1778"
  call void @_out_of_gas()
  br label %"$have_gas_1783"

"$have_gas_1783":                                 ; preds = %"$out_of_gas_1782", %"$have_gas_1778"
  %"$consume_1784" = sub i64 %"$gasrem_1780", 1
  store i64 %"$consume_1784", i64* @_gasrem, align 8
  %"$test_108" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_108", metadata !367, metadata !DIExpression()), !dbg !368
  %"$gasrem_1785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1786" = icmp ugt i64 1, %"$gasrem_1785"
  br i1 %"$gascmp_1786", label %"$out_of_gas_1787", label %"$have_gas_1788"

"$out_of_gas_1787":                               ; preds = %"$have_gas_1783"
  call void @_out_of_gas()
  br label %"$have_gas_1788"

"$have_gas_1788":                                 ; preds = %"$out_of_gas_1787", %"$have_gas_1783"
  %"$consume_1789" = sub i64 %"$gasrem_1785", 1
  store i64 %"$consume_1789", i64* @_gasrem, align 8
  %"$res_105" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_105", metadata !369, metadata !DIExpression()), !dbg !370
  %"$gasrem_1791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1792" = icmp ugt i64 80, %"$gasrem_1791"
  br i1 %"$gascmp_1792", label %"$out_of_gas_1793", label %"$have_gas_1794"

"$out_of_gas_1793":                               ; preds = %"$have_gas_1788"
  call void @_out_of_gas()
  br label %"$have_gas_1794"

"$have_gas_1794":                                 ; preds = %"$out_of_gas_1793", %"$have_gas_1788"
  %"$consume_1795" = sub i64 %"$gasrem_1791", 80
  store i64 %"$consume_1795", i64* @_gasrem, align 8
  %"$execptr_load_1796" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_103_1797" = alloca %Int256, align 8
  %"$$arg1_103_1798" = load %Int256, %Int256* %"$arg1_103", align 8
  store %Int256 %"$$arg1_103_1798", %Int256* %"$mul_$arg1_103_1797", align 8
  %"$mul_$arg2_104_1799" = alloca %Int256, align 8
  %"$$arg2_104_1800" = load %Int256, %Int256* %"$arg2_104", align 8
  store %Int256 %"$$arg2_104_1800", %Int256* %"$mul_$arg2_104_1799", align 8
  %"$mul_call_1801" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1796", %Int256* %"$mul_$arg1_103_1797", %Int256* %"$mul_$arg2_104_1799"), !dbg !371
  %"$mul_1803" = load %Int256, %Int256* %"$mul_call_1801", align 8
  store %Int256 %"$mul_1803", %Int256* %"$res_105", align 8, !dbg !371
  %"$gasrem_1804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1805" = icmp ugt i64 1, %"$gasrem_1804"
  br i1 %"$gascmp_1805", label %"$out_of_gas_1806", label %"$have_gas_1807"

"$out_of_gas_1806":                               ; preds = %"$have_gas_1794"
  call void @_out_of_gas()
  br label %"$have_gas_1807"

"$have_gas_1807":                                 ; preds = %"$out_of_gas_1806", %"$have_gas_1794"
  %"$consume_1808" = sub i64 %"$gasrem_1804", 1
  store i64 %"$consume_1808", i64* @_gasrem, align 8
  %"$res__106" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__106", metadata !372, metadata !DIExpression()), !dbg !373
  %"$gasrem_1809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1810" = icmp ugt i64 1, %"$gasrem_1809"
  br i1 %"$gascmp_1810", label %"$out_of_gas_1811", label %"$have_gas_1812"

"$out_of_gas_1811":                               ; preds = %"$have_gas_1807"
  call void @_out_of_gas()
  br label %"$have_gas_1812"

"$have_gas_1812":                                 ; preds = %"$out_of_gas_1811", %"$have_gas_1807"
  %"$consume_1813" = sub i64 %"$gasrem_1809", 1
  store i64 %"$consume_1813", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__106", align 8, !dbg !374
  %"$gasrem_1814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1815" = icmp ugt i64 1, %"$gasrem_1814"
  br i1 %"$gascmp_1815", label %"$out_of_gas_1816", label %"$have_gas_1817"

"$out_of_gas_1816":                               ; preds = %"$have_gas_1812"
  call void @_out_of_gas()
  br label %"$have_gas_1817"

"$have_gas_1817":                                 ; preds = %"$out_of_gas_1816", %"$have_gas_1812"
  %"$consume_1818" = sub i64 %"$gasrem_1814", 1
  store i64 %"$consume_1818", i64* @_gasrem, align 8
  %"$test__107" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__107", metadata !375, metadata !DIExpression()), !dbg !376
  %"$gasrem_1820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1821" = icmp ugt i64 16, %"$gasrem_1820"
  br i1 %"$gascmp_1821", label %"$out_of_gas_1822", label %"$have_gas_1823"

"$out_of_gas_1822":                               ; preds = %"$have_gas_1817"
  call void @_out_of_gas()
  br label %"$have_gas_1823"

"$have_gas_1823":                                 ; preds = %"$out_of_gas_1822", %"$have_gas_1817"
  %"$consume_1824" = sub i64 %"$gasrem_1820", 16
  store i64 %"$consume_1824", i64* @_gasrem, align 8
  %"$execptr_load_1825" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_105_1826" = alloca %Int256, align 8
  %"$$res_105_1827" = load %Int256, %Int256* %"$res_105", align 8
  store %Int256 %"$$res_105_1827", %Int256* %"$eq_$res_105_1826", align 8
  %"$eq_$res__106_1828" = alloca %Int256, align 8
  %"$$res__106_1829" = load %Int256, %Int256* %"$res__106", align 8
  store %Int256 %"$$res__106_1829", %Int256* %"$eq_$res__106_1828", align 8
  %"$eq_call_1830" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1825", %Int256* %"$eq_$res_105_1826", %Int256* %"$eq_$res__106_1828"), !dbg !377
  store %TName_Bool* %"$eq_call_1830", %TName_Bool** %"$test__107", align 8, !dbg !377
  %"$gasrem_1832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1833" = icmp ugt i64 1, %"$gasrem_1832"
  br i1 %"$gascmp_1833", label %"$out_of_gas_1834", label %"$have_gas_1835"

"$out_of_gas_1834":                               ; preds = %"$have_gas_1823"
  call void @_out_of_gas()
  br label %"$have_gas_1835"

"$have_gas_1835":                                 ; preds = %"$out_of_gas_1834", %"$have_gas_1823"
  %"$consume_1836" = sub i64 %"$gasrem_1832", 1
  store i64 %"$consume_1836", i64* @_gasrem, align 8
  %"$BoolUtils.andb_161" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1837" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1838" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1837", 0
  %"$BoolUtils.andb_envptr_1839" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1837", 1
  %"$$test_102_1840" = load %TName_Bool*, %TName_Bool** %"$test_102", align 8
  %"$BoolUtils.andb_call_1841" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1838"(i8* %"$BoolUtils.andb_envptr_1839", %TName_Bool* %"$$test_102_1840"), !dbg !378
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1841", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8, !dbg !378
  %"$BoolUtils.andb_162" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_162", metadata !379, metadata !DIExpression()), !dbg !378
  %"$$BoolUtils.andb_161_1842" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$$BoolUtils.andb_161_fptr_1843" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1842", 0
  %"$$BoolUtils.andb_161_envptr_1844" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1842", 1
  %"$$test__107_1845" = load %TName_Bool*, %TName_Bool** %"$test__107", align 8
  %"$$BoolUtils.andb_161_call_1846" = call %TName_Bool* %"$$BoolUtils.andb_161_fptr_1843"(i8* %"$$BoolUtils.andb_161_envptr_1844", %TName_Bool* %"$$test__107_1845"), !dbg !378
  store %TName_Bool* %"$$BoolUtils.andb_161_call_1846", %TName_Bool** %"$BoolUtils.andb_162", align 8, !dbg !378
  %"$$BoolUtils.andb_162_1847" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_162", align 8
  store %TName_Bool* %"$$BoolUtils.andb_162_1847", %TName_Bool** %"$test_108", align 8, !dbg !378
  %"$gasrem_1848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1849" = icmp ugt i64 1, %"$gasrem_1848"
  br i1 %"$gascmp_1849", label %"$out_of_gas_1850", label %"$have_gas_1851"

"$out_of_gas_1850":                               ; preds = %"$have_gas_1835"
  call void @_out_of_gas()
  br label %"$have_gas_1851"

"$have_gas_1851":                                 ; preds = %"$out_of_gas_1850", %"$have_gas_1835"
  %"$consume_1852" = sub i64 %"$gasrem_1848", 1
  store i64 %"$consume_1852", i64* @_gasrem, align 8
  %"$arg1_109" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_109", metadata !380, metadata !DIExpression()), !dbg !381
  %"$gasrem_1853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1854" = icmp ugt i64 1, %"$gasrem_1853"
  br i1 %"$gascmp_1854", label %"$out_of_gas_1855", label %"$have_gas_1856"

"$out_of_gas_1855":                               ; preds = %"$have_gas_1851"
  call void @_out_of_gas()
  br label %"$have_gas_1856"

"$have_gas_1856":                                 ; preds = %"$out_of_gas_1855", %"$have_gas_1851"
  %"$consume_1857" = sub i64 %"$gasrem_1853", 1
  store i64 %"$consume_1857", i64* @_gasrem, align 8
  store %Int256 { i256 -2 }, %Int256* %"$arg1_109", align 8, !dbg !382
  %"$gasrem_1858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1859" = icmp ugt i64 1, %"$gasrem_1858"
  br i1 %"$gascmp_1859", label %"$out_of_gas_1860", label %"$have_gas_1861"

"$out_of_gas_1860":                               ; preds = %"$have_gas_1856"
  call void @_out_of_gas()
  br label %"$have_gas_1861"

"$have_gas_1861":                                 ; preds = %"$out_of_gas_1860", %"$have_gas_1856"
  %"$consume_1862" = sub i64 %"$gasrem_1858", 1
  store i64 %"$consume_1862", i64* @_gasrem, align 8
  %"$arg2_110" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_110", metadata !383, metadata !DIExpression()), !dbg !384
  %"$gasrem_1863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1864" = icmp ugt i64 1, %"$gasrem_1863"
  br i1 %"$gascmp_1864", label %"$out_of_gas_1865", label %"$have_gas_1866"

"$out_of_gas_1865":                               ; preds = %"$have_gas_1861"
  call void @_out_of_gas()
  br label %"$have_gas_1866"

"$have_gas_1866":                                 ; preds = %"$out_of_gas_1865", %"$have_gas_1861"
  %"$consume_1867" = sub i64 %"$gasrem_1863", 1
  store i64 %"$consume_1867", i64* @_gasrem, align 8
  store %Int256 { i256 -28948022309329048855892746252171976963317496166410141009864396001978282409983 }, %Int256* %"$arg2_110", align 8, !dbg !385
  %"$gasrem_1868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1869" = icmp ugt i64 1, %"$gasrem_1868"
  br i1 %"$gascmp_1869", label %"$out_of_gas_1870", label %"$have_gas_1871"

"$out_of_gas_1870":                               ; preds = %"$have_gas_1866"
  call void @_out_of_gas()
  br label %"$have_gas_1871"

"$have_gas_1871":                                 ; preds = %"$out_of_gas_1870", %"$have_gas_1866"
  %"$consume_1872" = sub i64 %"$gasrem_1868", 1
  store i64 %"$consume_1872", i64* @_gasrem, align 8
  %"$test_114" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_114", metadata !386, metadata !DIExpression()), !dbg !387
  %"$gasrem_1873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1874" = icmp ugt i64 1, %"$gasrem_1873"
  br i1 %"$gascmp_1874", label %"$out_of_gas_1875", label %"$have_gas_1876"

"$out_of_gas_1875":                               ; preds = %"$have_gas_1871"
  call void @_out_of_gas()
  br label %"$have_gas_1876"

"$have_gas_1876":                                 ; preds = %"$out_of_gas_1875", %"$have_gas_1871"
  %"$consume_1877" = sub i64 %"$gasrem_1873", 1
  store i64 %"$consume_1877", i64* @_gasrem, align 8
  %"$res_111" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_111", metadata !388, metadata !DIExpression()), !dbg !389
  %"$gasrem_1879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1880" = icmp ugt i64 80, %"$gasrem_1879"
  br i1 %"$gascmp_1880", label %"$out_of_gas_1881", label %"$have_gas_1882"

"$out_of_gas_1881":                               ; preds = %"$have_gas_1876"
  call void @_out_of_gas()
  br label %"$have_gas_1882"

"$have_gas_1882":                                 ; preds = %"$out_of_gas_1881", %"$have_gas_1876"
  %"$consume_1883" = sub i64 %"$gasrem_1879", 80
  store i64 %"$consume_1883", i64* @_gasrem, align 8
  %"$execptr_load_1884" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_109_1885" = alloca %Int256, align 8
  %"$$arg1_109_1886" = load %Int256, %Int256* %"$arg1_109", align 8
  store %Int256 %"$$arg1_109_1886", %Int256* %"$mul_$arg1_109_1885", align 8
  %"$mul_$arg2_110_1887" = alloca %Int256, align 8
  %"$$arg2_110_1888" = load %Int256, %Int256* %"$arg2_110", align 8
  store %Int256 %"$$arg2_110_1888", %Int256* %"$mul_$arg2_110_1887", align 8
  %"$mul_call_1889" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1884", %Int256* %"$mul_$arg1_109_1885", %Int256* %"$mul_$arg2_110_1887"), !dbg !390
  %"$mul_1891" = load %Int256, %Int256* %"$mul_call_1889", align 8
  store %Int256 %"$mul_1891", %Int256* %"$res_111", align 8, !dbg !390
  %"$gasrem_1892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1893" = icmp ugt i64 1, %"$gasrem_1892"
  br i1 %"$gascmp_1893", label %"$out_of_gas_1894", label %"$have_gas_1895"

"$out_of_gas_1894":                               ; preds = %"$have_gas_1882"
  call void @_out_of_gas()
  br label %"$have_gas_1895"

"$have_gas_1895":                                 ; preds = %"$out_of_gas_1894", %"$have_gas_1882"
  %"$consume_1896" = sub i64 %"$gasrem_1892", 1
  store i64 %"$consume_1896", i64* @_gasrem, align 8
  %"$res__112" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__112", metadata !391, metadata !DIExpression()), !dbg !392
  %"$gasrem_1897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1898" = icmp ugt i64 1, %"$gasrem_1897"
  br i1 %"$gascmp_1898", label %"$out_of_gas_1899", label %"$have_gas_1900"

"$out_of_gas_1899":                               ; preds = %"$have_gas_1895"
  call void @_out_of_gas()
  br label %"$have_gas_1900"

"$have_gas_1900":                                 ; preds = %"$out_of_gas_1899", %"$have_gas_1895"
  %"$consume_1901" = sub i64 %"$gasrem_1897", 1
  store i64 %"$consume_1901", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819966 }, %Int256* %"$res__112", align 8, !dbg !393
  %"$gasrem_1902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1903" = icmp ugt i64 1, %"$gasrem_1902"
  br i1 %"$gascmp_1903", label %"$out_of_gas_1904", label %"$have_gas_1905"

"$out_of_gas_1904":                               ; preds = %"$have_gas_1900"
  call void @_out_of_gas()
  br label %"$have_gas_1905"

"$have_gas_1905":                                 ; preds = %"$out_of_gas_1904", %"$have_gas_1900"
  %"$consume_1906" = sub i64 %"$gasrem_1902", 1
  store i64 %"$consume_1906", i64* @_gasrem, align 8
  %"$test__113" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__113", metadata !394, metadata !DIExpression()), !dbg !395
  %"$gasrem_1908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1909" = icmp ugt i64 16, %"$gasrem_1908"
  br i1 %"$gascmp_1909", label %"$out_of_gas_1910", label %"$have_gas_1911"

"$out_of_gas_1910":                               ; preds = %"$have_gas_1905"
  call void @_out_of_gas()
  br label %"$have_gas_1911"

"$have_gas_1911":                                 ; preds = %"$out_of_gas_1910", %"$have_gas_1905"
  %"$consume_1912" = sub i64 %"$gasrem_1908", 16
  store i64 %"$consume_1912", i64* @_gasrem, align 8
  %"$execptr_load_1913" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_111_1914" = alloca %Int256, align 8
  %"$$res_111_1915" = load %Int256, %Int256* %"$res_111", align 8
  store %Int256 %"$$res_111_1915", %Int256* %"$eq_$res_111_1914", align 8
  %"$eq_$res__112_1916" = alloca %Int256, align 8
  %"$$res__112_1917" = load %Int256, %Int256* %"$res__112", align 8
  store %Int256 %"$$res__112_1917", %Int256* %"$eq_$res__112_1916", align 8
  %"$eq_call_1918" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1913", %Int256* %"$eq_$res_111_1914", %Int256* %"$eq_$res__112_1916"), !dbg !396
  store %TName_Bool* %"$eq_call_1918", %TName_Bool** %"$test__113", align 8, !dbg !396
  %"$gasrem_1920" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1921" = icmp ugt i64 1, %"$gasrem_1920"
  br i1 %"$gascmp_1921", label %"$out_of_gas_1922", label %"$have_gas_1923"

"$out_of_gas_1922":                               ; preds = %"$have_gas_1911"
  call void @_out_of_gas()
  br label %"$have_gas_1923"

"$have_gas_1923":                                 ; preds = %"$out_of_gas_1922", %"$have_gas_1911"
  %"$consume_1924" = sub i64 %"$gasrem_1920", 1
  store i64 %"$consume_1924", i64* @_gasrem, align 8
  %"$BoolUtils.andb_163" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1925" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1926" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1925", 0
  %"$BoolUtils.andb_envptr_1927" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1925", 1
  %"$$test_108_1928" = load %TName_Bool*, %TName_Bool** %"$test_108", align 8
  %"$BoolUtils.andb_call_1929" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1926"(i8* %"$BoolUtils.andb_envptr_1927", %TName_Bool* %"$$test_108_1928"), !dbg !397
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1929", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8, !dbg !397
  %"$BoolUtils.andb_164" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_164", metadata !398, metadata !DIExpression()), !dbg !397
  %"$$BoolUtils.andb_163_1930" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$$BoolUtils.andb_163_fptr_1931" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1930", 0
  %"$$BoolUtils.andb_163_envptr_1932" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1930", 1
  %"$$test__113_1933" = load %TName_Bool*, %TName_Bool** %"$test__113", align 8
  %"$$BoolUtils.andb_163_call_1934" = call %TName_Bool* %"$$BoolUtils.andb_163_fptr_1931"(i8* %"$$BoolUtils.andb_163_envptr_1932", %TName_Bool* %"$$test__113_1933"), !dbg !397
  store %TName_Bool* %"$$BoolUtils.andb_163_call_1934", %TName_Bool** %"$BoolUtils.andb_164", align 8, !dbg !397
  %"$$BoolUtils.andb_164_1935" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_164", align 8
  store %TName_Bool* %"$$BoolUtils.andb_164_1935", %TName_Bool** %"$test_114", align 8, !dbg !397
  %"$gasrem_1936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1937" = icmp ugt i64 1, %"$gasrem_1936"
  br i1 %"$gascmp_1937", label %"$out_of_gas_1938", label %"$have_gas_1939"

"$out_of_gas_1938":                               ; preds = %"$have_gas_1923"
  call void @_out_of_gas()
  br label %"$have_gas_1939"

"$have_gas_1939":                                 ; preds = %"$out_of_gas_1938", %"$have_gas_1923"
  %"$consume_1940" = sub i64 %"$gasrem_1936", 1
  store i64 %"$consume_1940", i64* @_gasrem, align 8
  %"$arg1_115" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_115", metadata !399, metadata !DIExpression()), !dbg !400
  %"$gasrem_1941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1942" = icmp ugt i64 1, %"$gasrem_1941"
  br i1 %"$gascmp_1942", label %"$out_of_gas_1943", label %"$have_gas_1944"

"$out_of_gas_1943":                               ; preds = %"$have_gas_1939"
  call void @_out_of_gas()
  br label %"$have_gas_1944"

"$have_gas_1944":                                 ; preds = %"$out_of_gas_1943", %"$have_gas_1939"
  %"$consume_1945" = sub i64 %"$gasrem_1941", 1
  store i64 %"$consume_1945", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$arg1_115", align 8, !dbg !401
  %"$gasrem_1946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1947" = icmp ugt i64 1, %"$gasrem_1946"
  br i1 %"$gascmp_1947", label %"$out_of_gas_1948", label %"$have_gas_1949"

"$out_of_gas_1948":                               ; preds = %"$have_gas_1944"
  call void @_out_of_gas()
  br label %"$have_gas_1949"

"$have_gas_1949":                                 ; preds = %"$out_of_gas_1948", %"$have_gas_1944"
  %"$consume_1950" = sub i64 %"$gasrem_1946", 1
  store i64 %"$consume_1950", i64* @_gasrem, align 8
  %"$arg2_116" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_116", metadata !402, metadata !DIExpression()), !dbg !403
  %"$gasrem_1951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1952" = icmp ugt i64 1, %"$gasrem_1951"
  br i1 %"$gascmp_1952", label %"$out_of_gas_1953", label %"$have_gas_1954"

"$out_of_gas_1953":                               ; preds = %"$have_gas_1949"
  call void @_out_of_gas()
  br label %"$have_gas_1954"

"$have_gas_1954":                                 ; preds = %"$out_of_gas_1953", %"$have_gas_1949"
  %"$consume_1955" = sub i64 %"$gasrem_1951", 1
  store i64 %"$consume_1955", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$arg2_116", align 8, !dbg !404
  %"$gasrem_1956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1957" = icmp ugt i64 1, %"$gasrem_1956"
  br i1 %"$gascmp_1957", label %"$out_of_gas_1958", label %"$have_gas_1959"

"$out_of_gas_1958":                               ; preds = %"$have_gas_1954"
  call void @_out_of_gas()
  br label %"$have_gas_1959"

"$have_gas_1959":                                 ; preds = %"$out_of_gas_1958", %"$have_gas_1954"
  %"$consume_1960" = sub i64 %"$gasrem_1956", 1
  store i64 %"$consume_1960", i64* @_gasrem, align 8
  %"$test_120" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_120", metadata !405, metadata !DIExpression()), !dbg !406
  %"$gasrem_1961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1962" = icmp ugt i64 1, %"$gasrem_1961"
  br i1 %"$gascmp_1962", label %"$out_of_gas_1963", label %"$have_gas_1964"

"$out_of_gas_1963":                               ; preds = %"$have_gas_1959"
  call void @_out_of_gas()
  br label %"$have_gas_1964"

"$have_gas_1964":                                 ; preds = %"$out_of_gas_1963", %"$have_gas_1959"
  %"$consume_1965" = sub i64 %"$gasrem_1961", 1
  store i64 %"$consume_1965", i64* @_gasrem, align 8
  %"$res_117" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_117", metadata !407, metadata !DIExpression()), !dbg !408
  %"$gasrem_1967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1968" = icmp ugt i64 80, %"$gasrem_1967"
  br i1 %"$gascmp_1968", label %"$out_of_gas_1969", label %"$have_gas_1970"

"$out_of_gas_1969":                               ; preds = %"$have_gas_1964"
  call void @_out_of_gas()
  br label %"$have_gas_1970"

"$have_gas_1970":                                 ; preds = %"$out_of_gas_1969", %"$have_gas_1964"
  %"$consume_1971" = sub i64 %"$gasrem_1967", 80
  store i64 %"$consume_1971", i64* @_gasrem, align 8
  %"$execptr_load_1972" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_115_1973" = alloca %Int256, align 8
  %"$$arg1_115_1974" = load %Int256, %Int256* %"$arg1_115", align 8
  store %Int256 %"$$arg1_115_1974", %Int256* %"$mul_$arg1_115_1973", align 8
  %"$mul_$arg2_116_1975" = alloca %Int256, align 8
  %"$$arg2_116_1976" = load %Int256, %Int256* %"$arg2_116", align 8
  store %Int256 %"$$arg2_116_1976", %Int256* %"$mul_$arg2_116_1975", align 8
  %"$mul_call_1977" = call %Int256* @_mul_Int256(i8* %"$execptr_load_1972", %Int256* %"$mul_$arg1_115_1973", %Int256* %"$mul_$arg2_116_1975"), !dbg !409
  %"$mul_1979" = load %Int256, %Int256* %"$mul_call_1977", align 8
  store %Int256 %"$mul_1979", %Int256* %"$res_117", align 8, !dbg !409
  %"$gasrem_1980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1981" = icmp ugt i64 1, %"$gasrem_1980"
  br i1 %"$gascmp_1981", label %"$out_of_gas_1982", label %"$have_gas_1983"

"$out_of_gas_1982":                               ; preds = %"$have_gas_1970"
  call void @_out_of_gas()
  br label %"$have_gas_1983"

"$have_gas_1983":                                 ; preds = %"$out_of_gas_1982", %"$have_gas_1970"
  %"$consume_1984" = sub i64 %"$gasrem_1980", 1
  store i64 %"$consume_1984", i64* @_gasrem, align 8
  %"$res__118" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__118", metadata !410, metadata !DIExpression()), !dbg !411
  %"$gasrem_1985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1986" = icmp ugt i64 1, %"$gasrem_1985"
  br i1 %"$gascmp_1986", label %"$out_of_gas_1987", label %"$have_gas_1988"

"$out_of_gas_1987":                               ; preds = %"$have_gas_1983"
  call void @_out_of_gas()
  br label %"$have_gas_1988"

"$have_gas_1988":                                 ; preds = %"$out_of_gas_1987", %"$have_gas_1983"
  %"$consume_1989" = sub i64 %"$gasrem_1985", 1
  store i64 %"$consume_1989", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$res__118", align 8, !dbg !412
  %"$gasrem_1990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1991" = icmp ugt i64 1, %"$gasrem_1990"
  br i1 %"$gascmp_1991", label %"$out_of_gas_1992", label %"$have_gas_1993"

"$out_of_gas_1992":                               ; preds = %"$have_gas_1988"
  call void @_out_of_gas()
  br label %"$have_gas_1993"

"$have_gas_1993":                                 ; preds = %"$out_of_gas_1992", %"$have_gas_1988"
  %"$consume_1994" = sub i64 %"$gasrem_1990", 1
  store i64 %"$consume_1994", i64* @_gasrem, align 8
  %"$test__119" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__119", metadata !413, metadata !DIExpression()), !dbg !414
  %"$gasrem_1996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1997" = icmp ugt i64 16, %"$gasrem_1996"
  br i1 %"$gascmp_1997", label %"$out_of_gas_1998", label %"$have_gas_1999"

"$out_of_gas_1998":                               ; preds = %"$have_gas_1993"
  call void @_out_of_gas()
  br label %"$have_gas_1999"

"$have_gas_1999":                                 ; preds = %"$out_of_gas_1998", %"$have_gas_1993"
  %"$consume_2000" = sub i64 %"$gasrem_1996", 16
  store i64 %"$consume_2000", i64* @_gasrem, align 8
  %"$execptr_load_2001" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_117_2002" = alloca %Int256, align 8
  %"$$res_117_2003" = load %Int256, %Int256* %"$res_117", align 8
  store %Int256 %"$$res_117_2003", %Int256* %"$eq_$res_117_2002", align 8
  %"$eq_$res__118_2004" = alloca %Int256, align 8
  %"$$res__118_2005" = load %Int256, %Int256* %"$res__118", align 8
  store %Int256 %"$$res__118_2005", %Int256* %"$eq_$res__118_2004", align 8
  %"$eq_call_2006" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2001", %Int256* %"$eq_$res_117_2002", %Int256* %"$eq_$res__118_2004"), !dbg !415
  store %TName_Bool* %"$eq_call_2006", %TName_Bool** %"$test__119", align 8, !dbg !415
  %"$gasrem_2008" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2009" = icmp ugt i64 1, %"$gasrem_2008"
  br i1 %"$gascmp_2009", label %"$out_of_gas_2010", label %"$have_gas_2011"

"$out_of_gas_2010":                               ; preds = %"$have_gas_1999"
  call void @_out_of_gas()
  br label %"$have_gas_2011"

"$have_gas_2011":                                 ; preds = %"$out_of_gas_2010", %"$have_gas_1999"
  %"$consume_2012" = sub i64 %"$gasrem_2008", 1
  store i64 %"$consume_2012", i64* @_gasrem, align 8
  %"$BoolUtils.andb_165" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2013" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2014" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2013", 0
  %"$BoolUtils.andb_envptr_2015" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2013", 1
  %"$$test_114_2016" = load %TName_Bool*, %TName_Bool** %"$test_114", align 8
  %"$BoolUtils.andb_call_2017" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2014"(i8* %"$BoolUtils.andb_envptr_2015", %TName_Bool* %"$$test_114_2016"), !dbg !416
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2017", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8, !dbg !416
  %"$BoolUtils.andb_166" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_166", metadata !417, metadata !DIExpression()), !dbg !416
  %"$$BoolUtils.andb_165_2018" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$$BoolUtils.andb_165_fptr_2019" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_2018", 0
  %"$$BoolUtils.andb_165_envptr_2020" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_2018", 1
  %"$$test__119_2021" = load %TName_Bool*, %TName_Bool** %"$test__119", align 8
  %"$$BoolUtils.andb_165_call_2022" = call %TName_Bool* %"$$BoolUtils.andb_165_fptr_2019"(i8* %"$$BoolUtils.andb_165_envptr_2020", %TName_Bool* %"$$test__119_2021"), !dbg !416
  store %TName_Bool* %"$$BoolUtils.andb_165_call_2022", %TName_Bool** %"$BoolUtils.andb_166", align 8, !dbg !416
  %"$$BoolUtils.andb_166_2023" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_166", align 8
  store %TName_Bool* %"$$BoolUtils.andb_166_2023", %TName_Bool** %"$test_120", align 8, !dbg !416
  %"$gasrem_2024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2025" = icmp ugt i64 1, %"$gasrem_2024"
  br i1 %"$gascmp_2025", label %"$out_of_gas_2026", label %"$have_gas_2027"

"$out_of_gas_2026":                               ; preds = %"$have_gas_2011"
  call void @_out_of_gas()
  br label %"$have_gas_2027"

"$have_gas_2027":                                 ; preds = %"$out_of_gas_2026", %"$have_gas_2011"
  %"$consume_2028" = sub i64 %"$gasrem_2024", 1
  store i64 %"$consume_2028", i64* @_gasrem, align 8
  %"$arg1_121" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_121", metadata !418, metadata !DIExpression()), !dbg !419
  %"$gasrem_2029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2030" = icmp ugt i64 1, %"$gasrem_2029"
  br i1 %"$gascmp_2030", label %"$out_of_gas_2031", label %"$have_gas_2032"

"$out_of_gas_2031":                               ; preds = %"$have_gas_2027"
  call void @_out_of_gas()
  br label %"$have_gas_2032"

"$have_gas_2032":                                 ; preds = %"$out_of_gas_2031", %"$have_gas_2027"
  %"$consume_2033" = sub i64 %"$gasrem_2029", 1
  store i64 %"$consume_2033", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819968 }, %Int256* %"$arg1_121", align 8, !dbg !420
  %"$gasrem_2034" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2035" = icmp ugt i64 1, %"$gasrem_2034"
  br i1 %"$gascmp_2035", label %"$out_of_gas_2036", label %"$have_gas_2037"

"$out_of_gas_2036":                               ; preds = %"$have_gas_2032"
  call void @_out_of_gas()
  br label %"$have_gas_2037"

"$have_gas_2037":                                 ; preds = %"$out_of_gas_2036", %"$have_gas_2032"
  %"$consume_2038" = sub i64 %"$gasrem_2034", 1
  store i64 %"$consume_2038", i64* @_gasrem, align 8
  %"$arg2_122" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_122", metadata !421, metadata !DIExpression()), !dbg !422
  %"$gasrem_2039" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2040" = icmp ugt i64 1, %"$gasrem_2039"
  br i1 %"$gascmp_2040", label %"$out_of_gas_2041", label %"$have_gas_2042"

"$out_of_gas_2041":                               ; preds = %"$have_gas_2037"
  call void @_out_of_gas()
  br label %"$have_gas_2042"

"$have_gas_2042":                                 ; preds = %"$out_of_gas_2041", %"$have_gas_2037"
  %"$consume_2043" = sub i64 %"$gasrem_2039", 1
  store i64 %"$consume_2043", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_122", align 8, !dbg !423
  %"$gasrem_2044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2045" = icmp ugt i64 1, %"$gasrem_2044"
  br i1 %"$gascmp_2045", label %"$out_of_gas_2046", label %"$have_gas_2047"

"$out_of_gas_2046":                               ; preds = %"$have_gas_2042"
  call void @_out_of_gas()
  br label %"$have_gas_2047"

"$have_gas_2047":                                 ; preds = %"$out_of_gas_2046", %"$have_gas_2042"
  %"$consume_2048" = sub i64 %"$gasrem_2044", 1
  store i64 %"$consume_2048", i64* @_gasrem, align 8
  %"$test_126" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_126", metadata !424, metadata !DIExpression()), !dbg !425
  %"$gasrem_2049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2050" = icmp ugt i64 1, %"$gasrem_2049"
  br i1 %"$gascmp_2050", label %"$out_of_gas_2051", label %"$have_gas_2052"

"$out_of_gas_2051":                               ; preds = %"$have_gas_2047"
  call void @_out_of_gas()
  br label %"$have_gas_2052"

"$have_gas_2052":                                 ; preds = %"$out_of_gas_2051", %"$have_gas_2047"
  %"$consume_2053" = sub i64 %"$gasrem_2049", 1
  store i64 %"$consume_2053", i64* @_gasrem, align 8
  %"$res_123" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_123", metadata !426, metadata !DIExpression()), !dbg !427
  %"$gasrem_2055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2056" = icmp ugt i64 80, %"$gasrem_2055"
  br i1 %"$gascmp_2056", label %"$out_of_gas_2057", label %"$have_gas_2058"

"$out_of_gas_2057":                               ; preds = %"$have_gas_2052"
  call void @_out_of_gas()
  br label %"$have_gas_2058"

"$have_gas_2058":                                 ; preds = %"$out_of_gas_2057", %"$have_gas_2052"
  %"$consume_2059" = sub i64 %"$gasrem_2055", 80
  store i64 %"$consume_2059", i64* @_gasrem, align 8
  %"$execptr_load_2060" = load i8*, i8** @_execptr, align 8
  %"$mul_$arg1_121_2061" = alloca %Int256, align 8
  %"$$arg1_121_2062" = load %Int256, %Int256* %"$arg1_121", align 8
  store %Int256 %"$$arg1_121_2062", %Int256* %"$mul_$arg1_121_2061", align 8
  %"$mul_$arg2_122_2063" = alloca %Int256, align 8
  %"$$arg2_122_2064" = load %Int256, %Int256* %"$arg2_122", align 8
  store %Int256 %"$$arg2_122_2064", %Int256* %"$mul_$arg2_122_2063", align 8
  %"$mul_call_2065" = call %Int256* @_mul_Int256(i8* %"$execptr_load_2060", %Int256* %"$mul_$arg1_121_2061", %Int256* %"$mul_$arg2_122_2063"), !dbg !428
  %"$mul_2067" = load %Int256, %Int256* %"$mul_call_2065", align 8
  store %Int256 %"$mul_2067", %Int256* %"$res_123", align 8, !dbg !428
  %"$gasrem_2068" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2069" = icmp ugt i64 1, %"$gasrem_2068"
  br i1 %"$gascmp_2069", label %"$out_of_gas_2070", label %"$have_gas_2071"

"$out_of_gas_2070":                               ; preds = %"$have_gas_2058"
  call void @_out_of_gas()
  br label %"$have_gas_2071"

"$have_gas_2071":                                 ; preds = %"$out_of_gas_2070", %"$have_gas_2058"
  %"$consume_2072" = sub i64 %"$gasrem_2068", 1
  store i64 %"$consume_2072", i64* @_gasrem, align 8
  %"$res__124" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__124", metadata !429, metadata !DIExpression()), !dbg !430
  %"$gasrem_2073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2074" = icmp ugt i64 1, %"$gasrem_2073"
  br i1 %"$gascmp_2074", label %"$out_of_gas_2075", label %"$have_gas_2076"

"$out_of_gas_2075":                               ; preds = %"$have_gas_2071"
  call void @_out_of_gas()
  br label %"$have_gas_2076"

"$have_gas_2076":                                 ; preds = %"$out_of_gas_2075", %"$have_gas_2071"
  %"$consume_2077" = sub i64 %"$gasrem_2073", 1
  store i64 %"$consume_2077", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$res__124", align 8, !dbg !431
  %"$gasrem_2078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2079" = icmp ugt i64 1, %"$gasrem_2078"
  br i1 %"$gascmp_2079", label %"$out_of_gas_2080", label %"$have_gas_2081"

"$out_of_gas_2080":                               ; preds = %"$have_gas_2076"
  call void @_out_of_gas()
  br label %"$have_gas_2081"

"$have_gas_2081":                                 ; preds = %"$out_of_gas_2080", %"$have_gas_2076"
  %"$consume_2082" = sub i64 %"$gasrem_2078", 1
  store i64 %"$consume_2082", i64* @_gasrem, align 8
  %"$test__125" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__125", metadata !432, metadata !DIExpression()), !dbg !433
  %"$gasrem_2084" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2085" = icmp ugt i64 16, %"$gasrem_2084"
  br i1 %"$gascmp_2085", label %"$out_of_gas_2086", label %"$have_gas_2087"

"$out_of_gas_2086":                               ; preds = %"$have_gas_2081"
  call void @_out_of_gas()
  br label %"$have_gas_2087"

"$have_gas_2087":                                 ; preds = %"$out_of_gas_2086", %"$have_gas_2081"
  %"$consume_2088" = sub i64 %"$gasrem_2084", 16
  store i64 %"$consume_2088", i64* @_gasrem, align 8
  %"$execptr_load_2089" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_123_2090" = alloca %Int256, align 8
  %"$$res_123_2091" = load %Int256, %Int256* %"$res_123", align 8
  store %Int256 %"$$res_123_2091", %Int256* %"$eq_$res_123_2090", align 8
  %"$eq_$res__124_2092" = alloca %Int256, align 8
  %"$$res__124_2093" = load %Int256, %Int256* %"$res__124", align 8
  store %Int256 %"$$res__124_2093", %Int256* %"$eq_$res__124_2092", align 8
  %"$eq_call_2094" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2089", %Int256* %"$eq_$res_123_2090", %Int256* %"$eq_$res__124_2092"), !dbg !434
  store %TName_Bool* %"$eq_call_2094", %TName_Bool** %"$test__125", align 8, !dbg !434
  %"$gasrem_2096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2097" = icmp ugt i64 1, %"$gasrem_2096"
  br i1 %"$gascmp_2097", label %"$out_of_gas_2098", label %"$have_gas_2099"

"$out_of_gas_2098":                               ; preds = %"$have_gas_2087"
  call void @_out_of_gas()
  br label %"$have_gas_2099"

"$have_gas_2099":                                 ; preds = %"$out_of_gas_2098", %"$have_gas_2087"
  %"$consume_2100" = sub i64 %"$gasrem_2096", 1
  store i64 %"$consume_2100", i64* @_gasrem, align 8
  %"$BoolUtils.andb_167" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2101" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2102" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2101", 0
  %"$BoolUtils.andb_envptr_2103" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2101", 1
  %"$$test_120_2104" = load %TName_Bool*, %TName_Bool** %"$test_120", align 8
  %"$BoolUtils.andb_call_2105" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2102"(i8* %"$BoolUtils.andb_envptr_2103", %TName_Bool* %"$$test_120_2104"), !dbg !435
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2105", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8, !dbg !435
  %"$BoolUtils.andb_168" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_168", metadata !436, metadata !DIExpression()), !dbg !435
  %"$$BoolUtils.andb_167_2106" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$$BoolUtils.andb_167_fptr_2107" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_2106", 0
  %"$$BoolUtils.andb_167_envptr_2108" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_2106", 1
  %"$$test__125_2109" = load %TName_Bool*, %TName_Bool** %"$test__125", align 8
  %"$$BoolUtils.andb_167_call_2110" = call %TName_Bool* %"$$BoolUtils.andb_167_fptr_2107"(i8* %"$$BoolUtils.andb_167_envptr_2108", %TName_Bool* %"$$test__125_2109"), !dbg !435
  store %TName_Bool* %"$$BoolUtils.andb_167_call_2110", %TName_Bool** %"$BoolUtils.andb_168", align 8, !dbg !435
  %"$$BoolUtils.andb_168_2111" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_168", align 8
  store %TName_Bool* %"$$BoolUtils.andb_168_2111", %TName_Bool** %"$test_126", align 8, !dbg !435
  %"$gasrem_2112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2113" = icmp ugt i64 1, %"$gasrem_2112"
  br i1 %"$gascmp_2113", label %"$out_of_gas_2114", label %"$have_gas_2115"

"$out_of_gas_2114":                               ; preds = %"$have_gas_2099"
  call void @_out_of_gas()
  br label %"$have_gas_2115"

"$have_gas_2115":                                 ; preds = %"$out_of_gas_2114", %"$have_gas_2099"
  %"$consume_2116" = sub i64 %"$gasrem_2112", 1
  store i64 %"$consume_2116", i64* @_gasrem, align 8
  %"$$test_126_2117" = load %TName_Bool*, %TName_Bool** %"$test_126", align 8
  store %TName_Bool* %"$$test_126_2117", %TName_Bool** %"$expr_173", align 8, !dbg !437
  %"$$expr_173_2118" = load %TName_Bool*, %TName_Bool** %"$expr_173", align 8
  ret %TName_Bool* %"$$expr_173_2118"
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
  %"$exprval_2119" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2120" = bitcast %TName_Bool* %"$exprval_2119" to i8*
  %"$execptr_load_2121" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2121", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_208", i8* %"$memvoidcast_2120")
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
!9 = !DILocalVariable(name: "$retval_172", scope: !3, file: !4, line: 8, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 8, column: 5, scope: !3)
!13 = !DILocation(line: 9, column: 16, scope: !14)
!14 = distinct !DILexicalBlock(scope: !15, file: !4, line: 9, column: 7)
!15 = distinct !DILexicalBlock(scope: !3, file: !4, line: 8, column: 5)
!16 = !DILocation(line: 10, column: 16, scope: !17)
!17 = distinct !DILexicalBlock(scope: !15, file: !4, line: 10, column: 7)
!18 = distinct !DISubprogram(name: "$fundef_169", linkageName: "$fundef_169", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!19 = !DILocation(line: 8, column: 5, scope: !18)
!20 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !21, file: !21, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DIFile(filename: ".", directory: ".")
!22 = !DILocation(line: 0, scope: !20)
!23 = !DILocation(line: 7, column: 3, scope: !20)
!24 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!25 = !DILocalVariable(name: "$expr_173", scope: !24, file: !2, line: 1, type: !10)
!26 = !DILocation(line: 1, column: 13, scope: !24)
!27 = !DILocalVariable(name: "test", scope: !24, file: !2, line: 2, type: !10)
!28 = !DILocation(line: 2, column: 5, scope: !24)
!29 = !DILocation(line: 2, column: 12, scope: !24)
!30 = !DILocalVariable(name: "arg1", scope: !24, file: !2, line: 4, type: !31)
!31 = !DIBasicType(name: "Uint32", size: 4)
!32 = !DILocation(line: 4, column: 5, scope: !24)
!33 = !DILocation(line: 4, column: 12, scope: !24)
!34 = !DILocalVariable(name: "arg2", scope: !24, file: !2, line: 5, type: !31)
!35 = !DILocation(line: 5, column: 5, scope: !24)
!36 = !DILocation(line: 5, column: 12, scope: !24)
!37 = !DILocalVariable(name: "$test_6", scope: !24, file: !2, line: 6, type: !10)
!38 = !DILocation(line: 6, column: 5, scope: !24)
!39 = !DILocalVariable(name: "res", scope: !24, file: !2, line: 7, type: !31)
!40 = !DILocation(line: 7, column: 7, scope: !24)
!41 = !DILocation(line: 7, column: 13, scope: !24)
!42 = !DILocalVariable(name: "res_", scope: !24, file: !2, line: 8, type: !31)
!43 = !DILocation(line: 8, column: 7, scope: !24)
!44 = !DILocation(line: 8, column: 14, scope: !24)
!45 = !DILocalVariable(name: "test_", scope: !24, file: !2, line: 9, type: !10)
!46 = !DILocation(line: 9, column: 7, scope: !24)
!47 = !DILocation(line: 9, column: 15, scope: !24)
!48 = !DILocation(line: 10, column: 3, scope: !24)
!49 = !DILocalVariable(name: "$BoolUtils.andb_128", scope: !24, file: !2, line: 10, type: !10)
!50 = !DILocalVariable(name: "$arg2_7", scope: !24, file: !2, line: 13, type: !51)
!51 = !DIBasicType(name: "Int32", size: 4)
!52 = !DILocation(line: 13, column: 5, scope: !24)
!53 = !DILocation(line: 13, column: 12, scope: !24)
!54 = !DILocalVariable(name: "$arg1_8", scope: !24, file: !2, line: 14, type: !51)
!55 = !DILocation(line: 14, column: 5, scope: !24)
!56 = !DILocation(line: 14, column: 12, scope: !24)
!57 = !DILocalVariable(name: "$test_12", scope: !24, file: !2, line: 15, type: !10)
!58 = !DILocation(line: 15, column: 5, scope: !24)
!59 = !DILocalVariable(name: "$res_9", scope: !24, file: !2, line: 16, type: !51)
!60 = !DILocation(line: 16, column: 7, scope: !24)
!61 = !DILocation(line: 16, column: 13, scope: !24)
!62 = !DILocalVariable(name: "$res__10", scope: !24, file: !2, line: 17, type: !51)
!63 = !DILocation(line: 17, column: 7, scope: !24)
!64 = !DILocation(line: 17, column: 14, scope: !24)
!65 = !DILocalVariable(name: "$test__11", scope: !24, file: !2, line: 18, type: !10)
!66 = !DILocation(line: 18, column: 7, scope: !24)
!67 = !DILocation(line: 18, column: 15, scope: !24)
!68 = !DILocation(line: 19, column: 3, scope: !24)
!69 = !DILocalVariable(name: "$BoolUtils.andb_130", scope: !24, file: !2, line: 19, type: !10)
!70 = !DILocalVariable(name: "$arg1_13", scope: !24, file: !2, line: 22, type: !71)
!71 = !DIBasicType(name: "Int64", size: 8)
!72 = !DILocation(line: 22, column: 5, scope: !24)
!73 = !DILocation(line: 22, column: 12, scope: !24)
!74 = !DILocalVariable(name: "$arg2_14", scope: !24, file: !2, line: 23, type: !71)
!75 = !DILocation(line: 23, column: 5, scope: !24)
!76 = !DILocation(line: 23, column: 12, scope: !24)
!77 = !DILocalVariable(name: "$test_18", scope: !24, file: !2, line: 24, type: !10)
!78 = !DILocation(line: 24, column: 5, scope: !24)
!79 = !DILocalVariable(name: "$res_15", scope: !24, file: !2, line: 25, type: !71)
!80 = !DILocation(line: 25, column: 7, scope: !24)
!81 = !DILocation(line: 25, column: 13, scope: !24)
!82 = !DILocalVariable(name: "$res__16", scope: !24, file: !2, line: 26, type: !71)
!83 = !DILocation(line: 26, column: 7, scope: !24)
!84 = !DILocation(line: 26, column: 14, scope: !24)
!85 = !DILocalVariable(name: "$test__17", scope: !24, file: !2, line: 27, type: !10)
!86 = !DILocation(line: 27, column: 7, scope: !24)
!87 = !DILocation(line: 27, column: 15, scope: !24)
!88 = !DILocation(line: 28, column: 3, scope: !24)
!89 = !DILocalVariable(name: "$BoolUtils.andb_132", scope: !24, file: !2, line: 28, type: !10)
!90 = !DILocalVariable(name: "$arg2_19", scope: !24, file: !2, line: 31, type: !91)
!91 = !DIBasicType(name: "Uint64", size: 8)
!92 = !DILocation(line: 31, column: 5, scope: !24)
!93 = !DILocation(line: 31, column: 12, scope: !24)
!94 = !DILocalVariable(name: "$arg1_20", scope: !24, file: !2, line: 32, type: !91)
!95 = !DILocation(line: 32, column: 5, scope: !24)
!96 = !DILocation(line: 32, column: 12, scope: !24)
!97 = !DILocalVariable(name: "$test_24", scope: !24, file: !2, line: 33, type: !10)
!98 = !DILocation(line: 33, column: 5, scope: !24)
!99 = !DILocalVariable(name: "$res_21", scope: !24, file: !2, line: 34, type: !91)
!100 = !DILocation(line: 34, column: 7, scope: !24)
!101 = !DILocation(line: 34, column: 13, scope: !24)
!102 = !DILocalVariable(name: "$res__22", scope: !24, file: !2, line: 35, type: !91)
!103 = !DILocation(line: 35, column: 7, scope: !24)
!104 = !DILocation(line: 35, column: 14, scope: !24)
!105 = !DILocalVariable(name: "$test__23", scope: !24, file: !2, line: 36, type: !10)
!106 = !DILocation(line: 36, column: 7, scope: !24)
!107 = !DILocation(line: 36, column: 15, scope: !24)
!108 = !DILocation(line: 37, column: 3, scope: !24)
!109 = !DILocalVariable(name: "$BoolUtils.andb_134", scope: !24, file: !2, line: 37, type: !10)
!110 = !DILocalVariable(name: "$arg1_25", scope: !24, file: !2, line: 40, type: !111)
!111 = !DIBasicType(name: "Uint128", size: 16)
!112 = !DILocation(line: 40, column: 5, scope: !24)
!113 = !DILocation(line: 40, column: 12, scope: !24)
!114 = !DILocalVariable(name: "$arg2_26", scope: !24, file: !2, line: 41, type: !111)
!115 = !DILocation(line: 41, column: 5, scope: !24)
!116 = !DILocation(line: 41, column: 12, scope: !24)
!117 = !DILocalVariable(name: "$test_30", scope: !24, file: !2, line: 42, type: !10)
!118 = !DILocation(line: 42, column: 5, scope: !24)
!119 = !DILocalVariable(name: "$res_27", scope: !24, file: !2, line: 43, type: !111)
!120 = !DILocation(line: 43, column: 7, scope: !24)
!121 = !DILocation(line: 43, column: 13, scope: !24)
!122 = !DILocalVariable(name: "$res__28", scope: !24, file: !2, line: 44, type: !111)
!123 = !DILocation(line: 44, column: 7, scope: !24)
!124 = !DILocation(line: 44, column: 14, scope: !24)
!125 = !DILocalVariable(name: "$test__29", scope: !24, file: !2, line: 45, type: !10)
!126 = !DILocation(line: 45, column: 7, scope: !24)
!127 = !DILocation(line: 45, column: 15, scope: !24)
!128 = !DILocation(line: 46, column: 3, scope: !24)
!129 = !DILocalVariable(name: "$BoolUtils.andb_136", scope: !24, file: !2, line: 46, type: !10)
!130 = !DILocalVariable(name: "$arg1_31", scope: !24, file: !2, line: 49, type: !131)
!131 = !DIBasicType(name: "Int128", size: 16)
!132 = !DILocation(line: 49, column: 5, scope: !24)
!133 = !DILocation(line: 49, column: 12, scope: !24)
!134 = !DILocalVariable(name: "$arg2_32", scope: !24, file: !2, line: 50, type: !131)
!135 = !DILocation(line: 50, column: 5, scope: !24)
!136 = !DILocation(line: 50, column: 12, scope: !24)
!137 = !DILocalVariable(name: "$test_36", scope: !24, file: !2, line: 51, type: !10)
!138 = !DILocation(line: 51, column: 5, scope: !24)
!139 = !DILocalVariable(name: "$res_33", scope: !24, file: !2, line: 52, type: !131)
!140 = !DILocation(line: 52, column: 7, scope: !24)
!141 = !DILocation(line: 52, column: 13, scope: !24)
!142 = !DILocalVariable(name: "$res__34", scope: !24, file: !2, line: 53, type: !131)
!143 = !DILocation(line: 53, column: 7, scope: !24)
!144 = !DILocation(line: 53, column: 14, scope: !24)
!145 = !DILocalVariable(name: "$test__35", scope: !24, file: !2, line: 54, type: !10)
!146 = !DILocation(line: 54, column: 7, scope: !24)
!147 = !DILocation(line: 54, column: 15, scope: !24)
!148 = !DILocation(line: 55, column: 3, scope: !24)
!149 = !DILocalVariable(name: "$BoolUtils.andb_138", scope: !24, file: !2, line: 55, type: !10)
!150 = !DILocalVariable(name: "$arg1_37", scope: !24, file: !2, line: 58, type: !131)
!151 = !DILocation(line: 58, column: 5, scope: !24)
!152 = !DILocation(line: 58, column: 12, scope: !24)
!153 = !DILocalVariable(name: "$arg2_38", scope: !24, file: !2, line: 59, type: !131)
!154 = !DILocation(line: 59, column: 5, scope: !24)
!155 = !DILocation(line: 59, column: 12, scope: !24)
!156 = !DILocalVariable(name: "$test_42", scope: !24, file: !2, line: 60, type: !10)
!157 = !DILocation(line: 60, column: 5, scope: !24)
!158 = !DILocalVariable(name: "$res_39", scope: !24, file: !2, line: 61, type: !131)
!159 = !DILocation(line: 61, column: 7, scope: !24)
!160 = !DILocation(line: 61, column: 13, scope: !24)
!161 = !DILocalVariable(name: "$res__40", scope: !24, file: !2, line: 62, type: !131)
!162 = !DILocation(line: 62, column: 7, scope: !24)
!163 = !DILocation(line: 62, column: 14, scope: !24)
!164 = !DILocalVariable(name: "$test__41", scope: !24, file: !2, line: 63, type: !10)
!165 = !DILocation(line: 63, column: 7, scope: !24)
!166 = !DILocation(line: 63, column: 15, scope: !24)
!167 = !DILocation(line: 64, column: 3, scope: !24)
!168 = !DILocalVariable(name: "$BoolUtils.andb_140", scope: !24, file: !2, line: 64, type: !10)
!169 = !DILocalVariable(name: "$arg1_43", scope: !24, file: !2, line: 67, type: !131)
!170 = !DILocation(line: 67, column: 5, scope: !24)
!171 = !DILocation(line: 67, column: 12, scope: !24)
!172 = !DILocalVariable(name: "$arg2_44", scope: !24, file: !2, line: 68, type: !131)
!173 = !DILocation(line: 68, column: 5, scope: !24)
!174 = !DILocation(line: 68, column: 12, scope: !24)
!175 = !DILocalVariable(name: "$test_48", scope: !24, file: !2, line: 69, type: !10)
!176 = !DILocation(line: 69, column: 5, scope: !24)
!177 = !DILocalVariable(name: "$res_45", scope: !24, file: !2, line: 70, type: !131)
!178 = !DILocation(line: 70, column: 7, scope: !24)
!179 = !DILocation(line: 70, column: 13, scope: !24)
!180 = !DILocalVariable(name: "$res__46", scope: !24, file: !2, line: 71, type: !131)
!181 = !DILocation(line: 71, column: 7, scope: !24)
!182 = !DILocation(line: 71, column: 14, scope: !24)
!183 = !DILocalVariable(name: "$test__47", scope: !24, file: !2, line: 72, type: !10)
!184 = !DILocation(line: 72, column: 7, scope: !24)
!185 = !DILocation(line: 72, column: 15, scope: !24)
!186 = !DILocation(line: 73, column: 3, scope: !24)
!187 = !DILocalVariable(name: "$BoolUtils.andb_142", scope: !24, file: !2, line: 73, type: !10)
!188 = !DILocalVariable(name: "$arg1_49", scope: !24, file: !2, line: 76, type: !189)
!189 = !DIBasicType(name: "Int256", size: 32)
!190 = !DILocation(line: 76, column: 5, scope: !24)
!191 = !DILocation(line: 76, column: 12, scope: !24)
!192 = !DILocalVariable(name: "$arg2_50", scope: !24, file: !2, line: 77, type: !189)
!193 = !DILocation(line: 77, column: 5, scope: !24)
!194 = !DILocation(line: 77, column: 12, scope: !24)
!195 = !DILocalVariable(name: "$test_54", scope: !24, file: !2, line: 78, type: !10)
!196 = !DILocation(line: 78, column: 5, scope: !24)
!197 = !DILocalVariable(name: "$res_51", scope: !24, file: !2, line: 79, type: !189)
!198 = !DILocation(line: 79, column: 7, scope: !24)
!199 = !DILocation(line: 79, column: 13, scope: !24)
!200 = !DILocalVariable(name: "$res__52", scope: !24, file: !2, line: 80, type: !189)
!201 = !DILocation(line: 80, column: 7, scope: !24)
!202 = !DILocation(line: 80, column: 14, scope: !24)
!203 = !DILocalVariable(name: "$test__53", scope: !24, file: !2, line: 81, type: !10)
!204 = !DILocation(line: 81, column: 7, scope: !24)
!205 = !DILocation(line: 81, column: 15, scope: !24)
!206 = !DILocation(line: 82, column: 3, scope: !24)
!207 = !DILocalVariable(name: "$BoolUtils.andb_144", scope: !24, file: !2, line: 82, type: !10)
!208 = !DILocalVariable(name: "$arg1_55", scope: !24, file: !2, line: 85, type: !189)
!209 = !DILocation(line: 85, column: 5, scope: !24)
!210 = !DILocation(line: 85, column: 12, scope: !24)
!211 = !DILocalVariable(name: "$arg2_56", scope: !24, file: !2, line: 86, type: !189)
!212 = !DILocation(line: 86, column: 5, scope: !24)
!213 = !DILocation(line: 86, column: 12, scope: !24)
!214 = !DILocalVariable(name: "$test_60", scope: !24, file: !2, line: 87, type: !10)
!215 = !DILocation(line: 87, column: 5, scope: !24)
!216 = !DILocalVariable(name: "$res_57", scope: !24, file: !2, line: 88, type: !189)
!217 = !DILocation(line: 88, column: 7, scope: !24)
!218 = !DILocation(line: 88, column: 13, scope: !24)
!219 = !DILocalVariable(name: "$res__58", scope: !24, file: !2, line: 89, type: !189)
!220 = !DILocation(line: 89, column: 7, scope: !24)
!221 = !DILocation(line: 89, column: 14, scope: !24)
!222 = !DILocalVariable(name: "$test__59", scope: !24, file: !2, line: 90, type: !10)
!223 = !DILocation(line: 90, column: 7, scope: !24)
!224 = !DILocation(line: 90, column: 15, scope: !24)
!225 = !DILocation(line: 91, column: 3, scope: !24)
!226 = !DILocalVariable(name: "$BoolUtils.andb_146", scope: !24, file: !2, line: 91, type: !10)
!227 = !DILocalVariable(name: "$arg1_61", scope: !24, file: !2, line: 94, type: !189)
!228 = !DILocation(line: 94, column: 5, scope: !24)
!229 = !DILocation(line: 94, column: 12, scope: !24)
!230 = !DILocalVariable(name: "$arg2_62", scope: !24, file: !2, line: 95, type: !189)
!231 = !DILocation(line: 95, column: 5, scope: !24)
!232 = !DILocation(line: 95, column: 12, scope: !24)
!233 = !DILocalVariable(name: "$test_66", scope: !24, file: !2, line: 96, type: !10)
!234 = !DILocation(line: 96, column: 5, scope: !24)
!235 = !DILocalVariable(name: "$res_63", scope: !24, file: !2, line: 97, type: !189)
!236 = !DILocation(line: 97, column: 7, scope: !24)
!237 = !DILocation(line: 97, column: 13, scope: !24)
!238 = !DILocalVariable(name: "$res__64", scope: !24, file: !2, line: 98, type: !189)
!239 = !DILocation(line: 98, column: 7, scope: !24)
!240 = !DILocation(line: 98, column: 14, scope: !24)
!241 = !DILocalVariable(name: "$test__65", scope: !24, file: !2, line: 99, type: !10)
!242 = !DILocation(line: 99, column: 7, scope: !24)
!243 = !DILocation(line: 99, column: 15, scope: !24)
!244 = !DILocation(line: 100, column: 3, scope: !24)
!245 = !DILocalVariable(name: "$BoolUtils.andb_148", scope: !24, file: !2, line: 100, type: !10)
!246 = !DILocalVariable(name: "$arg1_67", scope: !24, file: !2, line: 103, type: !189)
!247 = !DILocation(line: 103, column: 5, scope: !24)
!248 = !DILocation(line: 103, column: 12, scope: !24)
!249 = !DILocalVariable(name: "$arg2_68", scope: !24, file: !2, line: 104, type: !189)
!250 = !DILocation(line: 104, column: 5, scope: !24)
!251 = !DILocation(line: 104, column: 12, scope: !24)
!252 = !DILocalVariable(name: "$test_72", scope: !24, file: !2, line: 105, type: !10)
!253 = !DILocation(line: 105, column: 5, scope: !24)
!254 = !DILocalVariable(name: "$res_69", scope: !24, file: !2, line: 106, type: !189)
!255 = !DILocation(line: 106, column: 7, scope: !24)
!256 = !DILocation(line: 106, column: 13, scope: !24)
!257 = !DILocalVariable(name: "$res__70", scope: !24, file: !2, line: 107, type: !189)
!258 = !DILocation(line: 107, column: 7, scope: !24)
!259 = !DILocation(line: 107, column: 14, scope: !24)
!260 = !DILocalVariable(name: "$test__71", scope: !24, file: !2, line: 108, type: !10)
!261 = !DILocation(line: 108, column: 7, scope: !24)
!262 = !DILocation(line: 108, column: 15, scope: !24)
!263 = !DILocation(line: 109, column: 3, scope: !24)
!264 = !DILocalVariable(name: "$BoolUtils.andb_150", scope: !24, file: !2, line: 109, type: !10)
!265 = !DILocalVariable(name: "$arg1_73", scope: !24, file: !2, line: 112, type: !266)
!266 = !DIBasicType(name: "Uint256", size: 32)
!267 = !DILocation(line: 112, column: 5, scope: !24)
!268 = !DILocation(line: 112, column: 12, scope: !24)
!269 = !DILocalVariable(name: "$arg2_74", scope: !24, file: !2, line: 113, type: !266)
!270 = !DILocation(line: 113, column: 5, scope: !24)
!271 = !DILocation(line: 113, column: 12, scope: !24)
!272 = !DILocalVariable(name: "$test_78", scope: !24, file: !2, line: 114, type: !10)
!273 = !DILocation(line: 114, column: 5, scope: !24)
!274 = !DILocalVariable(name: "$res_75", scope: !24, file: !2, line: 115, type: !266)
!275 = !DILocation(line: 115, column: 7, scope: !24)
!276 = !DILocation(line: 115, column: 13, scope: !24)
!277 = !DILocalVariable(name: "$res__76", scope: !24, file: !2, line: 116, type: !266)
!278 = !DILocation(line: 116, column: 7, scope: !24)
!279 = !DILocation(line: 116, column: 14, scope: !24)
!280 = !DILocalVariable(name: "$test__77", scope: !24, file: !2, line: 117, type: !10)
!281 = !DILocation(line: 117, column: 7, scope: !24)
!282 = !DILocation(line: 117, column: 15, scope: !24)
!283 = !DILocation(line: 118, column: 3, scope: !24)
!284 = !DILocalVariable(name: "$BoolUtils.andb_152", scope: !24, file: !2, line: 118, type: !10)
!285 = !DILocalVariable(name: "$arg1_79", scope: !24, file: !2, line: 121, type: !266)
!286 = !DILocation(line: 121, column: 5, scope: !24)
!287 = !DILocation(line: 121, column: 12, scope: !24)
!288 = !DILocalVariable(name: "$arg2_80", scope: !24, file: !2, line: 122, type: !266)
!289 = !DILocation(line: 122, column: 5, scope: !24)
!290 = !DILocation(line: 122, column: 12, scope: !24)
!291 = !DILocalVariable(name: "$test_84", scope: !24, file: !2, line: 123, type: !10)
!292 = !DILocation(line: 123, column: 5, scope: !24)
!293 = !DILocalVariable(name: "$res_81", scope: !24, file: !2, line: 124, type: !266)
!294 = !DILocation(line: 124, column: 7, scope: !24)
!295 = !DILocation(line: 124, column: 13, scope: !24)
!296 = !DILocalVariable(name: "$res__82", scope: !24, file: !2, line: 125, type: !266)
!297 = !DILocation(line: 125, column: 7, scope: !24)
!298 = !DILocation(line: 125, column: 14, scope: !24)
!299 = !DILocalVariable(name: "$test__83", scope: !24, file: !2, line: 126, type: !10)
!300 = !DILocation(line: 126, column: 7, scope: !24)
!301 = !DILocation(line: 126, column: 15, scope: !24)
!302 = !DILocation(line: 127, column: 3, scope: !24)
!303 = !DILocalVariable(name: "$BoolUtils.andb_154", scope: !24, file: !2, line: 127, type: !10)
!304 = !DILocalVariable(name: "$arg1_85", scope: !24, file: !2, line: 130, type: !266)
!305 = !DILocation(line: 130, column: 5, scope: !24)
!306 = !DILocation(line: 130, column: 12, scope: !24)
!307 = !DILocalVariable(name: "$arg2_86", scope: !24, file: !2, line: 131, type: !266)
!308 = !DILocation(line: 131, column: 5, scope: !24)
!309 = !DILocation(line: 131, column: 12, scope: !24)
!310 = !DILocalVariable(name: "$test_90", scope: !24, file: !2, line: 132, type: !10)
!311 = !DILocation(line: 132, column: 5, scope: !24)
!312 = !DILocalVariable(name: "$res_87", scope: !24, file: !2, line: 133, type: !266)
!313 = !DILocation(line: 133, column: 7, scope: !24)
!314 = !DILocation(line: 133, column: 13, scope: !24)
!315 = !DILocalVariable(name: "$res__88", scope: !24, file: !2, line: 134, type: !266)
!316 = !DILocation(line: 134, column: 7, scope: !24)
!317 = !DILocation(line: 134, column: 14, scope: !24)
!318 = !DILocalVariable(name: "$test__89", scope: !24, file: !2, line: 135, type: !10)
!319 = !DILocation(line: 135, column: 7, scope: !24)
!320 = !DILocation(line: 135, column: 15, scope: !24)
!321 = !DILocation(line: 136, column: 3, scope: !24)
!322 = !DILocalVariable(name: "$BoolUtils.andb_156", scope: !24, file: !2, line: 136, type: !10)
!323 = !DILocalVariable(name: "$arg1_91", scope: !24, file: !2, line: 139, type: !189)
!324 = !DILocation(line: 139, column: 5, scope: !24)
!325 = !DILocation(line: 139, column: 12, scope: !24)
!326 = !DILocalVariable(name: "$arg2_92", scope: !24, file: !2, line: 140, type: !189)
!327 = !DILocation(line: 140, column: 5, scope: !24)
!328 = !DILocation(line: 140, column: 12, scope: !24)
!329 = !DILocalVariable(name: "$test_96", scope: !24, file: !2, line: 141, type: !10)
!330 = !DILocation(line: 141, column: 5, scope: !24)
!331 = !DILocalVariable(name: "$res_93", scope: !24, file: !2, line: 142, type: !189)
!332 = !DILocation(line: 142, column: 7, scope: !24)
!333 = !DILocation(line: 142, column: 13, scope: !24)
!334 = !DILocalVariable(name: "$res__94", scope: !24, file: !2, line: 143, type: !189)
!335 = !DILocation(line: 143, column: 7, scope: !24)
!336 = !DILocation(line: 143, column: 14, scope: !24)
!337 = !DILocalVariable(name: "$test__95", scope: !24, file: !2, line: 144, type: !10)
!338 = !DILocation(line: 144, column: 7, scope: !24)
!339 = !DILocation(line: 144, column: 15, scope: !24)
!340 = !DILocation(line: 145, column: 3, scope: !24)
!341 = !DILocalVariable(name: "$BoolUtils.andb_158", scope: !24, file: !2, line: 145, type: !10)
!342 = !DILocalVariable(name: "$arg1_97", scope: !24, file: !2, line: 148, type: !189)
!343 = !DILocation(line: 148, column: 5, scope: !24)
!344 = !DILocation(line: 148, column: 12, scope: !24)
!345 = !DILocalVariable(name: "$arg2_98", scope: !24, file: !2, line: 149, type: !189)
!346 = !DILocation(line: 149, column: 5, scope: !24)
!347 = !DILocation(line: 149, column: 12, scope: !24)
!348 = !DILocalVariable(name: "$test_102", scope: !24, file: !2, line: 150, type: !10)
!349 = !DILocation(line: 150, column: 5, scope: !24)
!350 = !DILocalVariable(name: "$res_99", scope: !24, file: !2, line: 151, type: !189)
!351 = !DILocation(line: 151, column: 7, scope: !24)
!352 = !DILocation(line: 151, column: 13, scope: !24)
!353 = !DILocalVariable(name: "$res__100", scope: !24, file: !2, line: 152, type: !189)
!354 = !DILocation(line: 152, column: 7, scope: !24)
!355 = !DILocation(line: 152, column: 14, scope: !24)
!356 = !DILocalVariable(name: "$test__101", scope: !24, file: !2, line: 153, type: !10)
!357 = !DILocation(line: 153, column: 7, scope: !24)
!358 = !DILocation(line: 153, column: 15, scope: !24)
!359 = !DILocation(line: 154, column: 3, scope: !24)
!360 = !DILocalVariable(name: "$BoolUtils.andb_160", scope: !24, file: !2, line: 154, type: !10)
!361 = !DILocalVariable(name: "$arg1_103", scope: !24, file: !2, line: 157, type: !189)
!362 = !DILocation(line: 157, column: 5, scope: !24)
!363 = !DILocation(line: 157, column: 12, scope: !24)
!364 = !DILocalVariable(name: "$arg2_104", scope: !24, file: !2, line: 158, type: !189)
!365 = !DILocation(line: 158, column: 5, scope: !24)
!366 = !DILocation(line: 158, column: 12, scope: !24)
!367 = !DILocalVariable(name: "$test_108", scope: !24, file: !2, line: 159, type: !10)
!368 = !DILocation(line: 159, column: 5, scope: !24)
!369 = !DILocalVariable(name: "$res_105", scope: !24, file: !2, line: 160, type: !189)
!370 = !DILocation(line: 160, column: 7, scope: !24)
!371 = !DILocation(line: 160, column: 13, scope: !24)
!372 = !DILocalVariable(name: "$res__106", scope: !24, file: !2, line: 161, type: !189)
!373 = !DILocation(line: 161, column: 7, scope: !24)
!374 = !DILocation(line: 161, column: 14, scope: !24)
!375 = !DILocalVariable(name: "$test__107", scope: !24, file: !2, line: 162, type: !10)
!376 = !DILocation(line: 162, column: 7, scope: !24)
!377 = !DILocation(line: 162, column: 15, scope: !24)
!378 = !DILocation(line: 163, column: 3, scope: !24)
!379 = !DILocalVariable(name: "$BoolUtils.andb_162", scope: !24, file: !2, line: 163, type: !10)
!380 = !DILocalVariable(name: "$arg1_109", scope: !24, file: !2, line: 166, type: !189)
!381 = !DILocation(line: 166, column: 5, scope: !24)
!382 = !DILocation(line: 166, column: 12, scope: !24)
!383 = !DILocalVariable(name: "$arg2_110", scope: !24, file: !2, line: 167, type: !189)
!384 = !DILocation(line: 167, column: 5, scope: !24)
!385 = !DILocation(line: 167, column: 12, scope: !24)
!386 = !DILocalVariable(name: "$test_114", scope: !24, file: !2, line: 168, type: !10)
!387 = !DILocation(line: 168, column: 5, scope: !24)
!388 = !DILocalVariable(name: "$res_111", scope: !24, file: !2, line: 169, type: !189)
!389 = !DILocation(line: 169, column: 7, scope: !24)
!390 = !DILocation(line: 169, column: 13, scope: !24)
!391 = !DILocalVariable(name: "$res__112", scope: !24, file: !2, line: 170, type: !189)
!392 = !DILocation(line: 170, column: 7, scope: !24)
!393 = !DILocation(line: 170, column: 14, scope: !24)
!394 = !DILocalVariable(name: "$test__113", scope: !24, file: !2, line: 171, type: !10)
!395 = !DILocation(line: 171, column: 7, scope: !24)
!396 = !DILocation(line: 171, column: 15, scope: !24)
!397 = !DILocation(line: 172, column: 3, scope: !24)
!398 = !DILocalVariable(name: "$BoolUtils.andb_164", scope: !24, file: !2, line: 172, type: !10)
!399 = !DILocalVariable(name: "$arg1_115", scope: !24, file: !2, line: 175, type: !189)
!400 = !DILocation(line: 175, column: 5, scope: !24)
!401 = !DILocation(line: 175, column: 12, scope: !24)
!402 = !DILocalVariable(name: "$arg2_116", scope: !24, file: !2, line: 176, type: !189)
!403 = !DILocation(line: 176, column: 5, scope: !24)
!404 = !DILocation(line: 176, column: 12, scope: !24)
!405 = !DILocalVariable(name: "$test_120", scope: !24, file: !2, line: 177, type: !10)
!406 = !DILocation(line: 177, column: 5, scope: !24)
!407 = !DILocalVariable(name: "$res_117", scope: !24, file: !2, line: 178, type: !189)
!408 = !DILocation(line: 178, column: 7, scope: !24)
!409 = !DILocation(line: 178, column: 13, scope: !24)
!410 = !DILocalVariable(name: "$res__118", scope: !24, file: !2, line: 179, type: !189)
!411 = !DILocation(line: 179, column: 7, scope: !24)
!412 = !DILocation(line: 179, column: 14, scope: !24)
!413 = !DILocalVariable(name: "$test__119", scope: !24, file: !2, line: 180, type: !10)
!414 = !DILocation(line: 180, column: 7, scope: !24)
!415 = !DILocation(line: 180, column: 15, scope: !24)
!416 = !DILocation(line: 181, column: 3, scope: !24)
!417 = !DILocalVariable(name: "$BoolUtils.andb_166", scope: !24, file: !2, line: 181, type: !10)
!418 = !DILocalVariable(name: "$arg1_121", scope: !24, file: !2, line: 184, type: !189)
!419 = !DILocation(line: 184, column: 5, scope: !24)
!420 = !DILocation(line: 184, column: 12, scope: !24)
!421 = !DILocalVariable(name: "$arg2_122", scope: !24, file: !2, line: 185, type: !189)
!422 = !DILocation(line: 185, column: 5, scope: !24)
!423 = !DILocation(line: 185, column: 12, scope: !24)
!424 = !DILocalVariable(name: "$test_126", scope: !24, file: !2, line: 186, type: !10)
!425 = !DILocation(line: 186, column: 5, scope: !24)
!426 = !DILocalVariable(name: "$res_123", scope: !24, file: !2, line: 187, type: !189)
!427 = !DILocation(line: 187, column: 7, scope: !24)
!428 = !DILocation(line: 187, column: 13, scope: !24)
!429 = !DILocalVariable(name: "$res__124", scope: !24, file: !2, line: 188, type: !189)
!430 = !DILocation(line: 188, column: 7, scope: !24)
!431 = !DILocation(line: 188, column: 14, scope: !24)
!432 = !DILocalVariable(name: "$test__125", scope: !24, file: !2, line: 189, type: !10)
!433 = !DILocation(line: 189, column: 7, scope: !24)
!434 = !DILocation(line: 189, column: 15, scope: !24)
!435 = !DILocation(line: 190, column: 3, scope: !24)
!436 = !DILocalVariable(name: "$BoolUtils.andb_168", scope: !24, file: !2, line: 190, type: !10)
!437 = !DILocation(line: 193, column: 1, scope: !24)
