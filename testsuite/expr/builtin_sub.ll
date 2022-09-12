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

%"$TyDescrTy_PrimTyp_110" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_142" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_141"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_141" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_143"**, %"$TyDescrTy_ADTTyp_142"* }
%"$TyDescrTy_ADTTyp_Constr_143" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1359" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1360" = type { %ParamDescrString, i32, %"$ParamDescr_1359"* }
%"$$fundef_107_env_160" = type { %TName_Bool* }
%"$$fundef_105_env_161" = type {}
%Uint32 = type { i32 }
%Uint64 = type { i64 }
%Int64 = type { i64 }
%Uint128 = type { i128 }
%Uint256 = type { i256 }
%Int256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_111" = global %"$TyDescrTy_PrimTyp_110" zeroinitializer
@"$TyDescr_Int32_112" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Int32_Prim_111" to i8*) }
@"$TyDescr_Uint32_Prim_113" = global %"$TyDescrTy_PrimTyp_110" { i32 1, i32 0 }
@"$TyDescr_Uint32_114" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Uint32_Prim_113" to i8*) }
@"$TyDescr_Int64_Prim_115" = global %"$TyDescrTy_PrimTyp_110" { i32 0, i32 1 }
@"$TyDescr_Int64_116" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Int64_Prim_115" to i8*) }
@"$TyDescr_Uint64_Prim_117" = global %"$TyDescrTy_PrimTyp_110" { i32 1, i32 1 }
@"$TyDescr_Uint64_118" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Uint64_Prim_117" to i8*) }
@"$TyDescr_Int128_Prim_119" = global %"$TyDescrTy_PrimTyp_110" { i32 0, i32 2 }
@"$TyDescr_Int128_120" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Int128_Prim_119" to i8*) }
@"$TyDescr_Uint128_Prim_121" = global %"$TyDescrTy_PrimTyp_110" { i32 1, i32 2 }
@"$TyDescr_Uint128_122" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Uint128_Prim_121" to i8*) }
@"$TyDescr_Int256_Prim_123" = global %"$TyDescrTy_PrimTyp_110" { i32 0, i32 3 }
@"$TyDescr_Int256_124" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Int256_Prim_123" to i8*) }
@"$TyDescr_Uint256_Prim_125" = global %"$TyDescrTy_PrimTyp_110" { i32 1, i32 3 }
@"$TyDescr_Uint256_126" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Uint256_Prim_125" to i8*) }
@"$TyDescr_String_Prim_127" = global %"$TyDescrTy_PrimTyp_110" { i32 2, i32 0 }
@"$TyDescr_String_128" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_String_Prim_127" to i8*) }
@"$TyDescr_Bnum_Prim_129" = global %"$TyDescrTy_PrimTyp_110" { i32 3, i32 0 }
@"$TyDescr_Bnum_130" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Bnum_Prim_129" to i8*) }
@"$TyDescr_Message_Prim_131" = global %"$TyDescrTy_PrimTyp_110" { i32 4, i32 0 }
@"$TyDescr_Message_132" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Message_Prim_131" to i8*) }
@"$TyDescr_Event_Prim_133" = global %"$TyDescrTy_PrimTyp_110" { i32 5, i32 0 }
@"$TyDescr_Event_134" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Event_Prim_133" to i8*) }
@"$TyDescr_Exception_Prim_135" = global %"$TyDescrTy_PrimTyp_110" { i32 6, i32 0 }
@"$TyDescr_Exception_136" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Exception_Prim_135" to i8*) }
@"$TyDescr_ReplicateContr_Prim_137" = global %"$TyDescrTy_PrimTyp_110" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_138" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_ReplicateContr_Prim_137" to i8*) }
@"$TyDescr_Bystr_Prim_139" = global %"$TyDescrTy_PrimTyp_110" { i32 7, i32 0 }
@"$TyDescr_Bystr_140" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Bystr_Prim_139" to i8*) }
@"$TyDescr_ADT_Bool_144" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_141"* @"$TyDescr_Bool_ADTTyp_Specl_157" to i8*) }
@"$TyDescr_Bool_ADTTyp_148" = unnamed_addr constant %"$TyDescrTy_ADTTyp_142" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_159", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_141"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_141"*], [1 x %"$TyDescrTy_ADTTyp_Specl_141"*]* @"$TyDescr_Bool_ADTTyp_m_specls_158", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_149" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_150" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_151" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_143" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_150", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_149", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_152" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_153" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_154" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_143" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_153", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_152", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_155" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_143"*] [%"$TyDescrTy_ADTTyp_Constr_143"* @"$TyDescr_Bool_True_ADTTyp_Constr_151", %"$TyDescrTy_ADTTyp_Constr_143"* @"$TyDescr_Bool_False_ADTTyp_Constr_154"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_156" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_157" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_141" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_156", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_143"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_143"*], [2 x %"$TyDescrTy_ADTTyp_Constr_143"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_155", i32 0, i32 0), %"$TyDescrTy_ADTTyp_142"* @"$TyDescr_Bool_ADTTyp_148" }
@"$TyDescr_Bool_ADTTyp_m_specls_158" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_141"*] [%"$TyDescrTy_ADTTyp_Specl_141"* @"$TyDescr_Bool_ADTTyp_Specl_157"]
@"$TyDescr_ADT_Bool_159" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_134", %_TyDescrTy_Typ* @"$TyDescr_Int64_116", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_144", %_TyDescrTy_Typ* @"$TyDescr_Uint256_126", %_TyDescrTy_Typ* @"$TyDescr_Uint32_114", %_TyDescrTy_Typ* @"$TyDescr_Uint64_118", %_TyDescrTy_Typ* @"$TyDescr_Bnum_130", %_TyDescrTy_Typ* @"$TyDescr_Uint128_122", %_TyDescrTy_Typ* @"$TyDescr_Exception_136", %_TyDescrTy_Typ* @"$TyDescr_String_128", %_TyDescrTy_Typ* @"$TyDescr_Int256_124", %_TyDescrTy_Typ* @"$TyDescr_Int128_120", %_TyDescrTy_Typ* @"$TyDescr_Bystr_140", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_138", %_TyDescrTy_Typ* @"$TyDescr_Message_132", %_TyDescrTy_Typ* @"$TyDescr_Int32_112"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_1359"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1360"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_107"(%"$$fundef_107_env_160"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_107_env_b_173" = getelementptr inbounds %"$$fundef_107_env_160", %"$$fundef_107_env_160"* %0, i32 0, i32 0
  %"$b_envload_174" = load %TName_Bool*, %TName_Bool** %"$$fundef_107_env_b_173", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_174", %TName_Bool** %b, align 8
  %"$retval_108" = alloca %TName_Bool*, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 2, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %entry
  %"$consume_179" = sub i64 %"$gasrem_175", 2
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %"$b_181" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_182" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_181", i32 0, i32 0
  %"$b_tag_183" = load i8, i8* %"$b_tag_182", align 1
  switch i8 %"$b_tag_183", label %"$empty_default_184" [
    i8 1, label %"$False_185"
    i8 0, label %"$True_195"
  ]

"$False_185":                                     ; preds = %"$have_gas_178"
  %"$b_186" = bitcast %TName_Bool* %"$b_181" to %CName_False*
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$False_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$False_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$adtval_192_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_192_salloc" = call i8* @_salloc(i8* %"$adtval_192_load", i64 1)
  %"$adtval_192" = bitcast i8* %"$adtval_192_salloc" to %CName_False*
  %"$adtgep_193" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_192", i32 0, i32 0
  store i8 1, i8* %"$adtgep_193", align 1
  %"$adtptr_194" = bitcast %CName_False* %"$adtval_192" to %TName_Bool*
  store %TName_Bool* %"$adtptr_194", %TName_Bool** %"$retval_108", align 8
  br label %"$matchsucc_180"

"$True_195":                                      ; preds = %"$have_gas_178"
  %"$b_196" = bitcast %TName_Bool* %"$b_181" to %CName_True*
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$True_195"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$True_195"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_108", align 8
  br label %"$matchsucc_180"

"$empty_default_184":                             ; preds = %"$have_gas_178"
  br label %"$matchsucc_180"

"$matchsucc_180":                                 ; preds = %"$have_gas_200", %"$have_gas_190", %"$empty_default_184"
  %"$$retval_108_202" = load %TName_Bool*, %TName_Bool** %"$retval_108", align 8
  ret %TName_Bool* %"$$retval_108_202"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_105"(%"$$fundef_105_env_161"* %0, %TName_Bool* %1) {
entry:
  %"$retval_106" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %entry
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$$fundef_107_envp_167_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_107_envp_167_salloc" = call i8* @_salloc(i8* %"$$fundef_107_envp_167_load", i64 8)
  %"$$fundef_107_envp_167" = bitcast i8* %"$$fundef_107_envp_167_salloc" to %"$$fundef_107_env_160"*
  %"$$fundef_107_env_voidp_169" = bitcast %"$$fundef_107_env_160"* %"$$fundef_107_envp_167" to i8*
  %"$$fundef_107_cloval_170" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_107_env_160"*, %TName_Bool*)* @"$fundef_107" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_107_env_voidp_169", 1
  %"$$fundef_107_env_b_171" = getelementptr inbounds %"$$fundef_107_env_160", %"$$fundef_107_env_160"* %"$$fundef_107_envp_167", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_107_env_b_171", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_107_cloval_170", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_106", align 8
  %"$$retval_106_172" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_106", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_106_172"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 5, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %entry
  %"$consume_207" = sub i64 %"$gasrem_203", 5
  store i64 %"$consume_207", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 7, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_206"
  %"$consume_212" = sub i64 %"$gasrem_208", 7
  store i64 %"$consume_212", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_211"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_105_env_161"*, %TName_Bool*)* @"$fundef_105" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 196, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_216"
  %"$consume_225" = sub i64 %"$gasrem_221", 196
  store i64 %"$consume_225", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 20, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_224"
  %"$consume_230" = sub i64 %"$gasrem_226", 20
  store i64 %"$consume_230", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 12, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_229"
  %"$consume_235" = sub i64 %"$gasrem_231", 12
  store i64 %"$consume_235", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 2, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_234"
  %"$consume_240" = sub i64 %"$gasrem_236", 2
  store i64 %"$consume_240", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_109" = alloca %TName_Bool*, align 8
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %entry
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_244"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_254"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %"$adtval_261_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_261_salloc" = call i8* @_salloc(i8* %"$adtval_261_load", i64 1)
  %"$adtval_261" = bitcast i8* %"$adtval_261_salloc" to %CName_True*
  %"$adtgep_262" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_261", i32 0, i32 0
  store i8 0, i8* %"$adtgep_262", align 1
  %"$adtptr_263" = bitcast %CName_True* %"$adtval_261" to %TName_Bool*
  store %TName_Bool* %"$adtptr_263", %TName_Bool** %test, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_259"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_267"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_282"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 4, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$have_gas_292"
  %"$consume_298" = sub i64 %"$gasrem_294", 4
  store i64 %"$consume_298", i64* @_gasrem, align 8
  %"$arg1_299" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_300" = load %Uint32, %Uint32* %arg2, align 4
  %"$sub_call_301" = call %Uint32 @_sub_Uint32(%Uint32 %"$arg1_299", %Uint32 %"$arg2_300")
  store %Uint32 %"$sub_call_301", %Uint32* %res, align 4
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_297"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_297"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_305"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %res_, align 4
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_310"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 4, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_315"
  %"$consume_321" = sub i64 %"$gasrem_317", 4
  store i64 %"$consume_321", i64* @_gasrem, align 8
  %"$execptr_load_322" = load i8*, i8** @_execptr, align 8
  %"$res_323" = load %Uint32, %Uint32* %res, align 4
  %"$res__324" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_325" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_322", %Uint32 %"$res_323", %Uint32 %"$res__324")
  store %TName_Bool* %"$eq_call_325", %TName_Bool** %test_, align 8
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_320"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$BoolUtils.andb_79" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_332" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_333" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_332", 0
  %"$BoolUtils.andb_envptr_334" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_332", 1
  %"$test_335" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_336" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_333"(i8* %"$BoolUtils.andb_envptr_334", %TName_Bool* %"$test_335")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_336", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$BoolUtils.andb_80" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_79_337" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_fptr_338" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_337", 0
  %"$$BoolUtils.andb_79_envptr_339" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_337", 1
  %"$test__340" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_79_call_341" = call %TName_Bool* %"$$BoolUtils.andb_79_fptr_338"(i8* %"$$BoolUtils.andb_79_envptr_339", %TName_Bool* %"$test__340")
  store %TName_Bool* %"$$BoolUtils.andb_79_call_341", %TName_Bool** %"$BoolUtils.andb_80", align 8
  %"$$BoolUtils.andb_80_342" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_80", align 8
  store %TName_Bool* %"$$BoolUtils.andb_80_342", %TName_Bool** %"$test_6", align 8
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_330"
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %"$arg2_7" = alloca %Int32, align 8
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_346"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg2_7", align 4
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_351"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %"$arg1_8" = alloca %Int32, align 8
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  store %Int32 { i32 1843 }, %Int32* %"$arg1_8", align 4
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_361"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_366"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$res_9" = alloca %Int32, align 8
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 4, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 4
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$$arg1_8_378" = load %Int32, %Int32* %"$arg1_8", align 4
  %"$$arg2_7_379" = load %Int32, %Int32* %"$arg2_7", align 4
  %"$sub_call_380" = call %Int32 @_sub_Int32(%Int32 %"$$arg1_8_378", %Int32 %"$$arg2_7_379")
  store %Int32 %"$sub_call_380", %Int32* %"$res_9", align 4
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 1, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_376"
  %"$consume_385" = sub i64 %"$gasrem_381", 1
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %"$res__10" = alloca %Int32, align 8
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 1, %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_384"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_384"
  %"$consume_390" = sub i64 %"$gasrem_386", 1
  store i64 %"$consume_390", i64* @_gasrem, align 8
  store %Int32 { i32 -1 }, %Int32* %"$res__10", align 4
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 1, %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$have_gas_389"
  %"$consume_395" = sub i64 %"$gasrem_391", 1
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 4, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %"$have_gas_394"
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %"$have_gas_394"
  %"$consume_400" = sub i64 %"$gasrem_396", 4
  store i64 %"$consume_400", i64* @_gasrem, align 8
  %"$execptr_load_401" = load i8*, i8** @_execptr, align 8
  %"$$res_9_402" = load %Int32, %Int32* %"$res_9", align 4
  %"$$res__10_403" = load %Int32, %Int32* %"$res__10", align 4
  %"$eq_call_404" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_401", %Int32 %"$$res_9_402", %Int32 %"$$res__10_403")
  store %TName_Bool* %"$eq_call_404", %TName_Bool** %"$test__11", align 8
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$have_gas_399"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$have_gas_399"
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %"$BoolUtils.andb_81" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_411" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_412" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_411", 0
  %"$BoolUtils.andb_envptr_413" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_411", 1
  %"$$test_6_414" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_415" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_412"(i8* %"$BoolUtils.andb_envptr_413", %TName_Bool* %"$$test_6_414")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_415", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_81", align 8
  %"$BoolUtils.andb_82" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_81_416" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_81", align 8
  %"$$BoolUtils.andb_81_fptr_417" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_81_416", 0
  %"$$BoolUtils.andb_81_envptr_418" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_81_416", 1
  %"$$test__11_419" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_81_call_420" = call %TName_Bool* %"$$BoolUtils.andb_81_fptr_417"(i8* %"$$BoolUtils.andb_81_envptr_418", %TName_Bool* %"$$test__11_419")
  store %TName_Bool* %"$$BoolUtils.andb_81_call_420", %TName_Bool** %"$BoolUtils.andb_82", align 8
  %"$$BoolUtils.andb_82_421" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_82", align 8
  store %TName_Bool* %"$$BoolUtils.andb_82_421", %TName_Bool** %"$test_12", align 8
  %"$gasrem_422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_423" = icmp ugt i64 1, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %"$have_gas_409"
  %"$consume_426" = sub i64 %"$gasrem_422", 1
  store i64 %"$consume_426", i64* @_gasrem, align 8
  %"$arg1_13" = alloca %Uint64, align 8
  %"$gasrem_427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_428" = icmp ugt i64 1, %"$gasrem_427"
  br i1 %"$gascmp_428", label %"$out_of_gas_429", label %"$have_gas_430"

"$out_of_gas_429":                                ; preds = %"$have_gas_425"
  call void @_out_of_gas()
  br label %"$have_gas_430"

"$have_gas_430":                                  ; preds = %"$out_of_gas_429", %"$have_gas_425"
  %"$consume_431" = sub i64 %"$gasrem_427", 1
  store i64 %"$consume_431", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$arg1_13", align 8
  %"$gasrem_432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_433" = icmp ugt i64 1, %"$gasrem_432"
  br i1 %"$gascmp_433", label %"$out_of_gas_434", label %"$have_gas_435"

"$out_of_gas_434":                                ; preds = %"$have_gas_430"
  call void @_out_of_gas()
  br label %"$have_gas_435"

"$have_gas_435":                                  ; preds = %"$out_of_gas_434", %"$have_gas_430"
  %"$consume_436" = sub i64 %"$gasrem_432", 1
  store i64 %"$consume_436", i64* @_gasrem, align 8
  %"$arg2_14" = alloca %Uint64, align 8
  %"$gasrem_437" = load i64, i64* @_gasrem, align 8
  %"$gascmp_438" = icmp ugt i64 1, %"$gasrem_437"
  br i1 %"$gascmp_438", label %"$out_of_gas_439", label %"$have_gas_440"

"$out_of_gas_439":                                ; preds = %"$have_gas_435"
  call void @_out_of_gas()
  br label %"$have_gas_440"

"$have_gas_440":                                  ; preds = %"$out_of_gas_439", %"$have_gas_435"
  %"$consume_441" = sub i64 %"$gasrem_437", 1
  store i64 %"$consume_441", i64* @_gasrem, align 8
  store %Uint64 { i64 -2 }, %Uint64* %"$arg2_14", align 8
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 1, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_440"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_440"
  %"$consume_446" = sub i64 %"$gasrem_442", 1
  store i64 %"$consume_446", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_445"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_445"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %"$res_15" = alloca %Uint64, align 8
  %"$gasrem_452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_453" = icmp ugt i64 4, %"$gasrem_452"
  br i1 %"$gascmp_453", label %"$out_of_gas_454", label %"$have_gas_455"

"$out_of_gas_454":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_455"

"$have_gas_455":                                  ; preds = %"$out_of_gas_454", %"$have_gas_450"
  %"$consume_456" = sub i64 %"$gasrem_452", 4
  store i64 %"$consume_456", i64* @_gasrem, align 8
  %"$$arg1_13_457" = load %Uint64, %Uint64* %"$arg1_13", align 8
  %"$$arg2_14_458" = load %Uint64, %Uint64* %"$arg2_14", align 8
  %"$sub_call_459" = call %Uint64 @_sub_Uint64(%Uint64 %"$$arg1_13_457", %Uint64 %"$$arg2_14_458")
  store %Uint64 %"$sub_call_459", %Uint64* %"$res_15", align 8
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_455"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_455"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %"$res__16" = alloca %Uint64, align 8
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_463"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %"$res__16", align 8
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 4, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_473"
  %"$consume_479" = sub i64 %"$gasrem_475", 4
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %"$execptr_load_480" = load i8*, i8** @_execptr, align 8
  %"$$res_15_481" = load %Uint64, %Uint64* %"$res_15", align 8
  %"$$res__16_482" = load %Uint64, %Uint64* %"$res__16", align 8
  %"$eq_call_483" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_480", %Uint64 %"$$res_15_481", %Uint64 %"$$res__16_482")
  store %TName_Bool* %"$eq_call_483", %TName_Bool** %"$test__17", align 8
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_478"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %"$BoolUtils.andb_83" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_490" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_491" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_490", 0
  %"$BoolUtils.andb_envptr_492" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_490", 1
  %"$$test_12_493" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_494" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_491"(i8* %"$BoolUtils.andb_envptr_492", %TName_Bool* %"$$test_12_493")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_494", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_83", align 8
  %"$BoolUtils.andb_84" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_83_495" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_83", align 8
  %"$$BoolUtils.andb_83_fptr_496" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_83_495", 0
  %"$$BoolUtils.andb_83_envptr_497" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_83_495", 1
  %"$$test__17_498" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_83_call_499" = call %TName_Bool* %"$$BoolUtils.andb_83_fptr_496"(i8* %"$$BoolUtils.andb_83_envptr_497", %TName_Bool* %"$$test__17_498")
  store %TName_Bool* %"$$BoolUtils.andb_83_call_499", %TName_Bool** %"$BoolUtils.andb_84", align 8
  %"$$BoolUtils.andb_84_500" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_84", align 8
  store %TName_Bool* %"$$BoolUtils.andb_84_500", %TName_Bool** %"$test_18", align 8
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_488"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %"$arg2_19" = alloca %Int64, align 8
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_504"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$arg2_19", align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$arg1_20" = alloca %Int64, align 8
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 1, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_514"
  %"$consume_520" = sub i64 %"$gasrem_516", 1
  store i64 %"$consume_520", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$arg1_20", align 8
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 1, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$have_gas_519"
  %"$consume_525" = sub i64 %"$gasrem_521", 1
  store i64 %"$consume_525", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_524"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %"$res_21" = alloca %Int64, align 8
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 4, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_529"
  %"$consume_535" = sub i64 %"$gasrem_531", 4
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$$arg1_20_536" = load %Int64, %Int64* %"$arg1_20", align 8
  %"$$arg2_19_537" = load %Int64, %Int64* %"$arg2_19", align 8
  %"$sub_call_538" = call %Int64 @_sub_Int64(%Int64 %"$$arg1_20_536", %Int64 %"$$arg2_19_537")
  store %Int64 %"$sub_call_538", %Int64* %"$res_21", align 8
  %"$gasrem_539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_540" = icmp ugt i64 1, %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_534"
  %"$consume_543" = sub i64 %"$gasrem_539", 1
  store i64 %"$consume_543", i64* @_gasrem, align 8
  %"$res__22" = alloca %Int64, align 8
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %"$have_gas_542"
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %"$have_gas_542"
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  store %Int64 zeroinitializer, %Int64* %"$res__22", align 8
  %"$gasrem_549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_550" = icmp ugt i64 1, %"$gasrem_549"
  br i1 %"$gascmp_550", label %"$out_of_gas_551", label %"$have_gas_552"

"$out_of_gas_551":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_552"

"$have_gas_552":                                  ; preds = %"$out_of_gas_551", %"$have_gas_547"
  %"$consume_553" = sub i64 %"$gasrem_549", 1
  store i64 %"$consume_553", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 4, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_552"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_552"
  %"$consume_558" = sub i64 %"$gasrem_554", 4
  store i64 %"$consume_558", i64* @_gasrem, align 8
  %"$execptr_load_559" = load i8*, i8** @_execptr, align 8
  %"$$res_21_560" = load %Int64, %Int64* %"$res_21", align 8
  %"$$res__22_561" = load %Int64, %Int64* %"$res__22", align 8
  %"$eq_call_562" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_559", %Int64 %"$$res_21_560", %Int64 %"$$res__22_561")
  store %TName_Bool* %"$eq_call_562", %TName_Bool** %"$test__23", align 8
  %"$gasrem_564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_565" = icmp ugt i64 1, %"$gasrem_564"
  br i1 %"$gascmp_565", label %"$out_of_gas_566", label %"$have_gas_567"

"$out_of_gas_566":                                ; preds = %"$have_gas_557"
  call void @_out_of_gas()
  br label %"$have_gas_567"

"$have_gas_567":                                  ; preds = %"$out_of_gas_566", %"$have_gas_557"
  %"$consume_568" = sub i64 %"$gasrem_564", 1
  store i64 %"$consume_568", i64* @_gasrem, align 8
  %"$BoolUtils.andb_85" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_569" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_570" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_569", 0
  %"$BoolUtils.andb_envptr_571" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_569", 1
  %"$$test_18_572" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_573" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_570"(i8* %"$BoolUtils.andb_envptr_571", %TName_Bool* %"$$test_18_572")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_573", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_85", align 8
  %"$BoolUtils.andb_86" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_85_574" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_85", align 8
  %"$$BoolUtils.andb_85_fptr_575" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_85_574", 0
  %"$$BoolUtils.andb_85_envptr_576" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_85_574", 1
  %"$$test__23_577" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_85_call_578" = call %TName_Bool* %"$$BoolUtils.andb_85_fptr_575"(i8* %"$$BoolUtils.andb_85_envptr_576", %TName_Bool* %"$$test__23_577")
  store %TName_Bool* %"$$BoolUtils.andb_85_call_578", %TName_Bool** %"$BoolUtils.andb_86", align 8
  %"$$BoolUtils.andb_86_579" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_86", align 8
  store %TName_Bool* %"$$BoolUtils.andb_86_579", %TName_Bool** %"$test_24", align 8
  %"$gasrem_580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_581" = icmp ugt i64 1, %"$gasrem_580"
  br i1 %"$gascmp_581", label %"$out_of_gas_582", label %"$have_gas_583"

"$out_of_gas_582":                                ; preds = %"$have_gas_567"
  call void @_out_of_gas()
  br label %"$have_gas_583"

"$have_gas_583":                                  ; preds = %"$out_of_gas_582", %"$have_gas_567"
  %"$consume_584" = sub i64 %"$gasrem_580", 1
  store i64 %"$consume_584", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Int64, align 8
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_583"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_583"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775806 }, %Int64* %"$arg1_25", align 8
  %"$gasrem_590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_591" = icmp ugt i64 1, %"$gasrem_590"
  br i1 %"$gascmp_591", label %"$out_of_gas_592", label %"$have_gas_593"

"$out_of_gas_592":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_593"

"$have_gas_593":                                  ; preds = %"$out_of_gas_592", %"$have_gas_588"
  %"$consume_594" = sub i64 %"$gasrem_590", 1
  store i64 %"$consume_594", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Int64, align 8
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %"$have_gas_593"
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %"$have_gas_593"
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  store %Int64 { i64 -1 }, %Int64* %"$arg2_26", align 8
  %"$gasrem_600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_601" = icmp ugt i64 1, %"$gasrem_600"
  br i1 %"$gascmp_601", label %"$out_of_gas_602", label %"$have_gas_603"

"$out_of_gas_602":                                ; preds = %"$have_gas_598"
  call void @_out_of_gas()
  br label %"$have_gas_603"

"$have_gas_603":                                  ; preds = %"$out_of_gas_602", %"$have_gas_598"
  %"$consume_604" = sub i64 %"$gasrem_600", 1
  store i64 %"$consume_604", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 1, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %"$have_gas_603"
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %"$have_gas_603"
  %"$consume_609" = sub i64 %"$gasrem_605", 1
  store i64 %"$consume_609", i64* @_gasrem, align 8
  %"$res_27" = alloca %Int64, align 8
  %"$gasrem_610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_611" = icmp ugt i64 4, %"$gasrem_610"
  br i1 %"$gascmp_611", label %"$out_of_gas_612", label %"$have_gas_613"

"$out_of_gas_612":                                ; preds = %"$have_gas_608"
  call void @_out_of_gas()
  br label %"$have_gas_613"

"$have_gas_613":                                  ; preds = %"$out_of_gas_612", %"$have_gas_608"
  %"$consume_614" = sub i64 %"$gasrem_610", 4
  store i64 %"$consume_614", i64* @_gasrem, align 8
  %"$$arg1_25_615" = load %Int64, %Int64* %"$arg1_25", align 8
  %"$$arg2_26_616" = load %Int64, %Int64* %"$arg2_26", align 8
  %"$sub_call_617" = call %Int64 @_sub_Int64(%Int64 %"$$arg1_25_615", %Int64 %"$$arg2_26_616")
  store %Int64 %"$sub_call_617", %Int64* %"$res_27", align 8
  %"$gasrem_618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_619" = icmp ugt i64 1, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %"$have_gas_613"
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %"$have_gas_613"
  %"$consume_622" = sub i64 %"$gasrem_618", 1
  store i64 %"$consume_622", i64* @_gasrem, align 8
  %"$res__28" = alloca %Int64, align 8
  %"$gasrem_623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_624" = icmp ugt i64 1, %"$gasrem_623"
  br i1 %"$gascmp_624", label %"$out_of_gas_625", label %"$have_gas_626"

"$out_of_gas_625":                                ; preds = %"$have_gas_621"
  call void @_out_of_gas()
  br label %"$have_gas_626"

"$have_gas_626":                                  ; preds = %"$out_of_gas_625", %"$have_gas_621"
  %"$consume_627" = sub i64 %"$gasrem_623", 1
  store i64 %"$consume_627", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$res__28", align 8
  %"$gasrem_628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_629" = icmp ugt i64 1, %"$gasrem_628"
  br i1 %"$gascmp_629", label %"$out_of_gas_630", label %"$have_gas_631"

"$out_of_gas_630":                                ; preds = %"$have_gas_626"
  call void @_out_of_gas()
  br label %"$have_gas_631"

"$have_gas_631":                                  ; preds = %"$out_of_gas_630", %"$have_gas_626"
  %"$consume_632" = sub i64 %"$gasrem_628", 1
  store i64 %"$consume_632", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  %"$gasrem_633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_634" = icmp ugt i64 4, %"$gasrem_633"
  br i1 %"$gascmp_634", label %"$out_of_gas_635", label %"$have_gas_636"

"$out_of_gas_635":                                ; preds = %"$have_gas_631"
  call void @_out_of_gas()
  br label %"$have_gas_636"

"$have_gas_636":                                  ; preds = %"$out_of_gas_635", %"$have_gas_631"
  %"$consume_637" = sub i64 %"$gasrem_633", 4
  store i64 %"$consume_637", i64* @_gasrem, align 8
  %"$execptr_load_638" = load i8*, i8** @_execptr, align 8
  %"$$res_27_639" = load %Int64, %Int64* %"$res_27", align 8
  %"$$res__28_640" = load %Int64, %Int64* %"$res__28", align 8
  %"$eq_call_641" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_638", %Int64 %"$$res_27_639", %Int64 %"$$res__28_640")
  store %TName_Bool* %"$eq_call_641", %TName_Bool** %"$test__29", align 8
  %"$gasrem_643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_644" = icmp ugt i64 1, %"$gasrem_643"
  br i1 %"$gascmp_644", label %"$out_of_gas_645", label %"$have_gas_646"

"$out_of_gas_645":                                ; preds = %"$have_gas_636"
  call void @_out_of_gas()
  br label %"$have_gas_646"

"$have_gas_646":                                  ; preds = %"$out_of_gas_645", %"$have_gas_636"
  %"$consume_647" = sub i64 %"$gasrem_643", 1
  store i64 %"$consume_647", i64* @_gasrem, align 8
  %"$BoolUtils.andb_87" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_648" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_649" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_648", 0
  %"$BoolUtils.andb_envptr_650" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_648", 1
  %"$$test_24_651" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_652" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_649"(i8* %"$BoolUtils.andb_envptr_650", %TName_Bool* %"$$test_24_651")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_652", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_87", align 8
  %"$BoolUtils.andb_88" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_87_653" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_87", align 8
  %"$$BoolUtils.andb_87_fptr_654" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_87_653", 0
  %"$$BoolUtils.andb_87_envptr_655" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_87_653", 1
  %"$$test__29_656" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_87_call_657" = call %TName_Bool* %"$$BoolUtils.andb_87_fptr_654"(i8* %"$$BoolUtils.andb_87_envptr_655", %TName_Bool* %"$$test__29_656")
  store %TName_Bool* %"$$BoolUtils.andb_87_call_657", %TName_Bool** %"$BoolUtils.andb_88", align 8
  %"$$BoolUtils.andb_88_658" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_88", align 8
  store %TName_Bool* %"$$BoolUtils.andb_88_658", %TName_Bool** %"$test_30", align 8
  %"$gasrem_659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_660" = icmp ugt i64 1, %"$gasrem_659"
  br i1 %"$gascmp_660", label %"$out_of_gas_661", label %"$have_gas_662"

"$out_of_gas_661":                                ; preds = %"$have_gas_646"
  call void @_out_of_gas()
  br label %"$have_gas_662"

"$have_gas_662":                                  ; preds = %"$out_of_gas_661", %"$have_gas_646"
  %"$consume_663" = sub i64 %"$gasrem_659", 1
  store i64 %"$consume_663", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Uint128, align 8
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_662"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_662"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$arg1_31", align 8
  %"$gasrem_669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %"$have_gas_667"
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Uint128, align 8
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 1, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %"$have_gas_672"
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %"$have_gas_672"
  %"$consume_678" = sub i64 %"$gasrem_674", 1
  store i64 %"$consume_678", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %"$arg2_32", align 8
  %"$gasrem_679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_680" = icmp ugt i64 1, %"$gasrem_679"
  br i1 %"$gascmp_680", label %"$out_of_gas_681", label %"$have_gas_682"

"$out_of_gas_681":                                ; preds = %"$have_gas_677"
  call void @_out_of_gas()
  br label %"$have_gas_682"

"$have_gas_682":                                  ; preds = %"$out_of_gas_681", %"$have_gas_677"
  %"$consume_683" = sub i64 %"$gasrem_679", 1
  store i64 %"$consume_683", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_685" = icmp ugt i64 1, %"$gasrem_684"
  br i1 %"$gascmp_685", label %"$out_of_gas_686", label %"$have_gas_687"

"$out_of_gas_686":                                ; preds = %"$have_gas_682"
  call void @_out_of_gas()
  br label %"$have_gas_687"

"$have_gas_687":                                  ; preds = %"$out_of_gas_686", %"$have_gas_682"
  %"$consume_688" = sub i64 %"$gasrem_684", 1
  store i64 %"$consume_688", i64* @_gasrem, align 8
  %"$res_33" = alloca %Uint128, align 8
  %"$gasrem_690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_691" = icmp ugt i64 8, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %"$have_gas_687"
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %"$have_gas_687"
  %"$consume_694" = sub i64 %"$gasrem_690", 8
  store i64 %"$consume_694", i64* @_gasrem, align 8
  %"$$arg1_31_695" = load %Uint128, %Uint128* %"$arg1_31", align 8
  %"$$arg2_32_696" = load %Uint128, %Uint128* %"$arg2_32", align 8
  %"$sub_call_697" = call %Uint128 @_sub_Uint128(%Uint128 %"$$arg1_31_695", %Uint128 %"$$arg2_32_696")
  store %Uint128 %"$sub_call_697", %Uint128* %"$res_33", align 8
  %"$gasrem_698" = load i64, i64* @_gasrem, align 8
  %"$gascmp_699" = icmp ugt i64 1, %"$gasrem_698"
  br i1 %"$gascmp_699", label %"$out_of_gas_700", label %"$have_gas_701"

"$out_of_gas_700":                                ; preds = %"$have_gas_693"
  call void @_out_of_gas()
  br label %"$have_gas_701"

"$have_gas_701":                                  ; preds = %"$out_of_gas_700", %"$have_gas_693"
  %"$consume_702" = sub i64 %"$gasrem_698", 1
  store i64 %"$consume_702", i64* @_gasrem, align 8
  %"$res__34" = alloca %Uint128, align 8
  %"$gasrem_703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_704" = icmp ugt i64 1, %"$gasrem_703"
  br i1 %"$gascmp_704", label %"$out_of_gas_705", label %"$have_gas_706"

"$out_of_gas_705":                                ; preds = %"$have_gas_701"
  call void @_out_of_gas()
  br label %"$have_gas_706"

"$have_gas_706":                                  ; preds = %"$out_of_gas_705", %"$have_gas_701"
  %"$consume_707" = sub i64 %"$gasrem_703", 1
  store i64 %"$consume_707", i64* @_gasrem, align 8
  store %Uint128 { i128 -2 }, %Uint128* %"$res__34", align 8
  %"$gasrem_708" = load i64, i64* @_gasrem, align 8
  %"$gascmp_709" = icmp ugt i64 1, %"$gasrem_708"
  br i1 %"$gascmp_709", label %"$out_of_gas_710", label %"$have_gas_711"

"$out_of_gas_710":                                ; preds = %"$have_gas_706"
  call void @_out_of_gas()
  br label %"$have_gas_711"

"$have_gas_711":                                  ; preds = %"$out_of_gas_710", %"$have_gas_706"
  %"$consume_712" = sub i64 %"$gasrem_708", 1
  store i64 %"$consume_712", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 8, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_711"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_711"
  %"$consume_718" = sub i64 %"$gasrem_714", 8
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %"$execptr_load_719" = load i8*, i8** @_execptr, align 8
  %"$$res_33_720" = load %Uint128, %Uint128* %"$res_33", align 8
  %"$$res__34_721" = load %Uint128, %Uint128* %"$res__34", align 8
  %"$eq_call_722" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_719", %Uint128 %"$$res_33_720", %Uint128 %"$$res__34_721")
  store %TName_Bool* %"$eq_call_722", %TName_Bool** %"$test__35", align 8
  %"$gasrem_724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_725" = icmp ugt i64 1, %"$gasrem_724"
  br i1 %"$gascmp_725", label %"$out_of_gas_726", label %"$have_gas_727"

"$out_of_gas_726":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_727"

"$have_gas_727":                                  ; preds = %"$out_of_gas_726", %"$have_gas_717"
  %"$consume_728" = sub i64 %"$gasrem_724", 1
  store i64 %"$consume_728", i64* @_gasrem, align 8
  %"$BoolUtils.andb_89" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_729" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_730" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_729", 0
  %"$BoolUtils.andb_envptr_731" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_729", 1
  %"$$test_30_732" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_733" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_730"(i8* %"$BoolUtils.andb_envptr_731", %TName_Bool* %"$$test_30_732")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_733", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_89", align 8
  %"$BoolUtils.andb_90" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_89_734" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_89", align 8
  %"$$BoolUtils.andb_89_fptr_735" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_89_734", 0
  %"$$BoolUtils.andb_89_envptr_736" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_89_734", 1
  %"$$test__35_737" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_89_call_738" = call %TName_Bool* %"$$BoolUtils.andb_89_fptr_735"(i8* %"$$BoolUtils.andb_89_envptr_736", %TName_Bool* %"$$test__35_737")
  store %TName_Bool* %"$$BoolUtils.andb_89_call_738", %TName_Bool** %"$BoolUtils.andb_90", align 8
  %"$$BoolUtils.andb_90_739" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_90", align 8
  store %TName_Bool* %"$$BoolUtils.andb_90_739", %TName_Bool** %"$test_36", align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_727"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_727"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Uint128, align 8
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 1, %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %"$have_gas_743"
  %"$consume_749" = sub i64 %"$gasrem_745", 1
  store i64 %"$consume_749", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$arg1_37", align 8
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_748"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_748"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Uint128, align 8
  %"$gasrem_755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_756" = icmp ugt i64 1, %"$gasrem_755"
  br i1 %"$gascmp_756", label %"$out_of_gas_757", label %"$have_gas_758"

"$out_of_gas_757":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_758"

"$have_gas_758":                                  ; preds = %"$out_of_gas_757", %"$have_gas_753"
  %"$consume_759" = sub i64 %"$gasrem_755", 1
  store i64 %"$consume_759", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$arg2_38", align 8
  %"$gasrem_760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_761" = icmp ugt i64 1, %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$have_gas_758"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$have_gas_758"
  %"$consume_764" = sub i64 %"$gasrem_760", 1
  store i64 %"$consume_764", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_766" = icmp ugt i64 1, %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %"$have_gas_763"
  %"$consume_769" = sub i64 %"$gasrem_765", 1
  store i64 %"$consume_769", i64* @_gasrem, align 8
  %"$res_39" = alloca %Uint128, align 8
  %"$gasrem_771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_772" = icmp ugt i64 8, %"$gasrem_771"
  br i1 %"$gascmp_772", label %"$out_of_gas_773", label %"$have_gas_774"

"$out_of_gas_773":                                ; preds = %"$have_gas_768"
  call void @_out_of_gas()
  br label %"$have_gas_774"

"$have_gas_774":                                  ; preds = %"$out_of_gas_773", %"$have_gas_768"
  %"$consume_775" = sub i64 %"$gasrem_771", 8
  store i64 %"$consume_775", i64* @_gasrem, align 8
  %"$$arg1_37_776" = load %Uint128, %Uint128* %"$arg1_37", align 8
  %"$$arg2_38_777" = load %Uint128, %Uint128* %"$arg2_38", align 8
  %"$sub_call_778" = call %Uint128 @_sub_Uint128(%Uint128 %"$$arg1_37_776", %Uint128 %"$$arg2_38_777")
  store %Uint128 %"$sub_call_778", %Uint128* %"$res_39", align 8
  %"$gasrem_779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_780" = icmp ugt i64 1, %"$gasrem_779"
  br i1 %"$gascmp_780", label %"$out_of_gas_781", label %"$have_gas_782"

"$out_of_gas_781":                                ; preds = %"$have_gas_774"
  call void @_out_of_gas()
  br label %"$have_gas_782"

"$have_gas_782":                                  ; preds = %"$out_of_gas_781", %"$have_gas_774"
  %"$consume_783" = sub i64 %"$gasrem_779", 1
  store i64 %"$consume_783", i64* @_gasrem, align 8
  %"$res__40" = alloca %Uint128, align 8
  %"$gasrem_784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_785" = icmp ugt i64 1, %"$gasrem_784"
  br i1 %"$gascmp_785", label %"$out_of_gas_786", label %"$have_gas_787"

"$out_of_gas_786":                                ; preds = %"$have_gas_782"
  call void @_out_of_gas()
  br label %"$have_gas_787"

"$have_gas_787":                                  ; preds = %"$out_of_gas_786", %"$have_gas_782"
  %"$consume_788" = sub i64 %"$gasrem_784", 1
  store i64 %"$consume_788", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$res__40", align 8
  %"$gasrem_789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_790" = icmp ugt i64 1, %"$gasrem_789"
  br i1 %"$gascmp_790", label %"$out_of_gas_791", label %"$have_gas_792"

"$out_of_gas_791":                                ; preds = %"$have_gas_787"
  call void @_out_of_gas()
  br label %"$have_gas_792"

"$have_gas_792":                                  ; preds = %"$out_of_gas_791", %"$have_gas_787"
  %"$consume_793" = sub i64 %"$gasrem_789", 1
  store i64 %"$consume_793", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 8, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_792"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_792"
  %"$consume_799" = sub i64 %"$gasrem_795", 8
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %"$execptr_load_800" = load i8*, i8** @_execptr, align 8
  %"$$res_39_801" = load %Uint128, %Uint128* %"$res_39", align 8
  %"$$res__40_802" = load %Uint128, %Uint128* %"$res__40", align 8
  %"$eq_call_803" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_800", %Uint128 %"$$res_39_801", %Uint128 %"$$res__40_802")
  store %TName_Bool* %"$eq_call_803", %TName_Bool** %"$test__41", align 8
  %"$gasrem_805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_806" = icmp ugt i64 1, %"$gasrem_805"
  br i1 %"$gascmp_806", label %"$out_of_gas_807", label %"$have_gas_808"

"$out_of_gas_807":                                ; preds = %"$have_gas_798"
  call void @_out_of_gas()
  br label %"$have_gas_808"

"$have_gas_808":                                  ; preds = %"$out_of_gas_807", %"$have_gas_798"
  %"$consume_809" = sub i64 %"$gasrem_805", 1
  store i64 %"$consume_809", i64* @_gasrem, align 8
  %"$BoolUtils.andb_91" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_810" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_811" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_810", 0
  %"$BoolUtils.andb_envptr_812" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_810", 1
  %"$$test_36_813" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_814" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_811"(i8* %"$BoolUtils.andb_envptr_812", %TName_Bool* %"$$test_36_813")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_814", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_91", align 8
  %"$BoolUtils.andb_92" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_91_815" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_91", align 8
  %"$$BoolUtils.andb_91_fptr_816" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_91_815", 0
  %"$$BoolUtils.andb_91_envptr_817" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_91_815", 1
  %"$$test__41_818" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_91_call_819" = call %TName_Bool* %"$$BoolUtils.andb_91_fptr_816"(i8* %"$$BoolUtils.andb_91_envptr_817", %TName_Bool* %"$$test__41_818")
  store %TName_Bool* %"$$BoolUtils.andb_91_call_819", %TName_Bool** %"$BoolUtils.andb_92", align 8
  %"$$BoolUtils.andb_92_820" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_92", align 8
  store %TName_Bool* %"$$BoolUtils.andb_92_820", %TName_Bool** %"$test_42", align 8
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 1, %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %"$have_gas_808"
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %"$have_gas_808"
  %"$consume_825" = sub i64 %"$gasrem_821", 1
  store i64 %"$consume_825", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Uint256, align 8
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 1, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_824"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_824"
  %"$consume_830" = sub i64 %"$gasrem_826", 1
  store i64 %"$consume_830", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211455 }, %Uint256* %"$arg1_43", align 8
  %"$gasrem_831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_832" = icmp ugt i64 1, %"$gasrem_831"
  br i1 %"$gascmp_832", label %"$out_of_gas_833", label %"$have_gas_834"

"$out_of_gas_833":                                ; preds = %"$have_gas_829"
  call void @_out_of_gas()
  br label %"$have_gas_834"

"$have_gas_834":                                  ; preds = %"$out_of_gas_833", %"$have_gas_829"
  %"$consume_835" = sub i64 %"$gasrem_831", 1
  store i64 %"$consume_835", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Uint256, align 8
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 1, %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %"$have_gas_834"
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %"$have_gas_834"
  %"$consume_840" = sub i64 %"$gasrem_836", 1
  store i64 %"$consume_840", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$arg2_44", align 8
  %"$gasrem_841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_842" = icmp ugt i64 1, %"$gasrem_841"
  br i1 %"$gascmp_842", label %"$out_of_gas_843", label %"$have_gas_844"

"$out_of_gas_843":                                ; preds = %"$have_gas_839"
  call void @_out_of_gas()
  br label %"$have_gas_844"

"$have_gas_844":                                  ; preds = %"$out_of_gas_843", %"$have_gas_839"
  %"$consume_845" = sub i64 %"$gasrem_841", 1
  store i64 %"$consume_845", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_847" = icmp ugt i64 1, %"$gasrem_846"
  br i1 %"$gascmp_847", label %"$out_of_gas_848", label %"$have_gas_849"

"$out_of_gas_848":                                ; preds = %"$have_gas_844"
  call void @_out_of_gas()
  br label %"$have_gas_849"

"$have_gas_849":                                  ; preds = %"$out_of_gas_848", %"$have_gas_844"
  %"$consume_850" = sub i64 %"$gasrem_846", 1
  store i64 %"$consume_850", i64* @_gasrem, align 8
  %"$res_45" = alloca %Uint256, align 8
  %"$gasrem_852" = load i64, i64* @_gasrem, align 8
  %"$gascmp_853" = icmp ugt i64 16, %"$gasrem_852"
  br i1 %"$gascmp_853", label %"$out_of_gas_854", label %"$have_gas_855"

"$out_of_gas_854":                                ; preds = %"$have_gas_849"
  call void @_out_of_gas()
  br label %"$have_gas_855"

"$have_gas_855":                                  ; preds = %"$out_of_gas_854", %"$have_gas_849"
  %"$consume_856" = sub i64 %"$gasrem_852", 16
  store i64 %"$consume_856", i64* @_gasrem, align 8
  %"$execptr_load_857" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_43_858" = alloca %Uint256, align 8
  %"$$arg1_43_859" = load %Uint256, %Uint256* %"$arg1_43", align 8
  store %Uint256 %"$$arg1_43_859", %Uint256* %"$sub_$arg1_43_858", align 8
  %"$sub_$arg2_44_860" = alloca %Uint256, align 8
  %"$$arg2_44_861" = load %Uint256, %Uint256* %"$arg2_44", align 8
  store %Uint256 %"$$arg2_44_861", %Uint256* %"$sub_$arg2_44_860", align 8
  %"$sub_call_862" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_857", %Uint256* %"$sub_$arg1_43_858", %Uint256* %"$sub_$arg2_44_860")
  %"$sub_864" = load %Uint256, %Uint256* %"$sub_call_862", align 8
  store %Uint256 %"$sub_864", %Uint256* %"$res_45", align 8
  %"$gasrem_865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_866" = icmp ugt i64 1, %"$gasrem_865"
  br i1 %"$gascmp_866", label %"$out_of_gas_867", label %"$have_gas_868"

"$out_of_gas_867":                                ; preds = %"$have_gas_855"
  call void @_out_of_gas()
  br label %"$have_gas_868"

"$have_gas_868":                                  ; preds = %"$out_of_gas_867", %"$have_gas_855"
  %"$consume_869" = sub i64 %"$gasrem_865", 1
  store i64 %"$consume_869", i64* @_gasrem, align 8
  %"$res__46" = alloca %Uint256, align 8
  %"$gasrem_870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_871" = icmp ugt i64 1, %"$gasrem_870"
  br i1 %"$gascmp_871", label %"$out_of_gas_872", label %"$have_gas_873"

"$out_of_gas_872":                                ; preds = %"$have_gas_868"
  call void @_out_of_gas()
  br label %"$have_gas_873"

"$have_gas_873":                                  ; preds = %"$out_of_gas_872", %"$have_gas_868"
  %"$consume_874" = sub i64 %"$gasrem_870", 1
  store i64 %"$consume_874", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211454 }, %Uint256* %"$res__46", align 8
  %"$gasrem_875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_876" = icmp ugt i64 1, %"$gasrem_875"
  br i1 %"$gascmp_876", label %"$out_of_gas_877", label %"$have_gas_878"

"$out_of_gas_877":                                ; preds = %"$have_gas_873"
  call void @_out_of_gas()
  br label %"$have_gas_878"

"$have_gas_878":                                  ; preds = %"$out_of_gas_877", %"$have_gas_873"
  %"$consume_879" = sub i64 %"$gasrem_875", 1
  store i64 %"$consume_879", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  %"$gasrem_881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_882" = icmp ugt i64 16, %"$gasrem_881"
  br i1 %"$gascmp_882", label %"$out_of_gas_883", label %"$have_gas_884"

"$out_of_gas_883":                                ; preds = %"$have_gas_878"
  call void @_out_of_gas()
  br label %"$have_gas_884"

"$have_gas_884":                                  ; preds = %"$out_of_gas_883", %"$have_gas_878"
  %"$consume_885" = sub i64 %"$gasrem_881", 16
  store i64 %"$consume_885", i64* @_gasrem, align 8
  %"$execptr_load_886" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_45_887" = alloca %Uint256, align 8
  %"$$res_45_888" = load %Uint256, %Uint256* %"$res_45", align 8
  store %Uint256 %"$$res_45_888", %Uint256* %"$eq_$res_45_887", align 8
  %"$eq_$res__46_889" = alloca %Uint256, align 8
  %"$$res__46_890" = load %Uint256, %Uint256* %"$res__46", align 8
  store %Uint256 %"$$res__46_890", %Uint256* %"$eq_$res__46_889", align 8
  %"$eq_call_891" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_886", %Uint256* %"$eq_$res_45_887", %Uint256* %"$eq_$res__46_889")
  store %TName_Bool* %"$eq_call_891", %TName_Bool** %"$test__47", align 8
  %"$gasrem_893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_894" = icmp ugt i64 1, %"$gasrem_893"
  br i1 %"$gascmp_894", label %"$out_of_gas_895", label %"$have_gas_896"

"$out_of_gas_895":                                ; preds = %"$have_gas_884"
  call void @_out_of_gas()
  br label %"$have_gas_896"

"$have_gas_896":                                  ; preds = %"$out_of_gas_895", %"$have_gas_884"
  %"$consume_897" = sub i64 %"$gasrem_893", 1
  store i64 %"$consume_897", i64* @_gasrem, align 8
  %"$BoolUtils.andb_93" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_898" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_899" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_898", 0
  %"$BoolUtils.andb_envptr_900" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_898", 1
  %"$$test_42_901" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_902" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_899"(i8* %"$BoolUtils.andb_envptr_900", %TName_Bool* %"$$test_42_901")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_902", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_93", align 8
  %"$BoolUtils.andb_94" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_93_903" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_93", align 8
  %"$$BoolUtils.andb_93_fptr_904" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_93_903", 0
  %"$$BoolUtils.andb_93_envptr_905" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_93_903", 1
  %"$$test__47_906" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_93_call_907" = call %TName_Bool* %"$$BoolUtils.andb_93_fptr_904"(i8* %"$$BoolUtils.andb_93_envptr_905", %TName_Bool* %"$$test__47_906")
  store %TName_Bool* %"$$BoolUtils.andb_93_call_907", %TName_Bool** %"$BoolUtils.andb_94", align 8
  %"$$BoolUtils.andb_94_908" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_94", align 8
  store %TName_Bool* %"$$BoolUtils.andb_94_908", %TName_Bool** %"$test_48", align 8
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 1, %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$have_gas_896"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$have_gas_896"
  %"$consume_913" = sub i64 %"$gasrem_909", 1
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Uint256, align 8
  %"$gasrem_914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_915" = icmp ugt i64 1, %"$gasrem_914"
  br i1 %"$gascmp_915", label %"$out_of_gas_916", label %"$have_gas_917"

"$out_of_gas_916":                                ; preds = %"$have_gas_912"
  call void @_out_of_gas()
  br label %"$have_gas_917"

"$have_gas_917":                                  ; preds = %"$out_of_gas_916", %"$have_gas_912"
  %"$consume_918" = sub i64 %"$gasrem_914", 1
  store i64 %"$consume_918", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg1_49", align 8
  %"$gasrem_919" = load i64, i64* @_gasrem, align 8
  %"$gascmp_920" = icmp ugt i64 1, %"$gasrem_919"
  br i1 %"$gascmp_920", label %"$out_of_gas_921", label %"$have_gas_922"

"$out_of_gas_921":                                ; preds = %"$have_gas_917"
  call void @_out_of_gas()
  br label %"$have_gas_922"

"$have_gas_922":                                  ; preds = %"$out_of_gas_921", %"$have_gas_917"
  %"$consume_923" = sub i64 %"$gasrem_919", 1
  store i64 %"$consume_923", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Uint256, align 8
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 1, %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$have_gas_922"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$have_gas_922"
  %"$consume_928" = sub i64 %"$gasrem_924", 1
  store i64 %"$consume_928", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg2_50", align 8
  %"$gasrem_929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_930" = icmp ugt i64 1, %"$gasrem_929"
  br i1 %"$gascmp_930", label %"$out_of_gas_931", label %"$have_gas_932"

"$out_of_gas_931":                                ; preds = %"$have_gas_927"
  call void @_out_of_gas()
  br label %"$have_gas_932"

"$have_gas_932":                                  ; preds = %"$out_of_gas_931", %"$have_gas_927"
  %"$consume_933" = sub i64 %"$gasrem_929", 1
  store i64 %"$consume_933", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_935" = icmp ugt i64 1, %"$gasrem_934"
  br i1 %"$gascmp_935", label %"$out_of_gas_936", label %"$have_gas_937"

"$out_of_gas_936":                                ; preds = %"$have_gas_932"
  call void @_out_of_gas()
  br label %"$have_gas_937"

"$have_gas_937":                                  ; preds = %"$out_of_gas_936", %"$have_gas_932"
  %"$consume_938" = sub i64 %"$gasrem_934", 1
  store i64 %"$consume_938", i64* @_gasrem, align 8
  %"$res_51" = alloca %Uint256, align 8
  %"$gasrem_940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_941" = icmp ugt i64 16, %"$gasrem_940"
  br i1 %"$gascmp_941", label %"$out_of_gas_942", label %"$have_gas_943"

"$out_of_gas_942":                                ; preds = %"$have_gas_937"
  call void @_out_of_gas()
  br label %"$have_gas_943"

"$have_gas_943":                                  ; preds = %"$out_of_gas_942", %"$have_gas_937"
  %"$consume_944" = sub i64 %"$gasrem_940", 16
  store i64 %"$consume_944", i64* @_gasrem, align 8
  %"$execptr_load_945" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_49_946" = alloca %Uint256, align 8
  %"$$arg1_49_947" = load %Uint256, %Uint256* %"$arg1_49", align 8
  store %Uint256 %"$$arg1_49_947", %Uint256* %"$sub_$arg1_49_946", align 8
  %"$sub_$arg2_50_948" = alloca %Uint256, align 8
  %"$$arg2_50_949" = load %Uint256, %Uint256* %"$arg2_50", align 8
  store %Uint256 %"$$arg2_50_949", %Uint256* %"$sub_$arg2_50_948", align 8
  %"$sub_call_950" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_945", %Uint256* %"$sub_$arg1_49_946", %Uint256* %"$sub_$arg2_50_948")
  %"$sub_952" = load %Uint256, %Uint256* %"$sub_call_950", align 8
  store %Uint256 %"$sub_952", %Uint256* %"$res_51", align 8
  %"$gasrem_953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_954" = icmp ugt i64 1, %"$gasrem_953"
  br i1 %"$gascmp_954", label %"$out_of_gas_955", label %"$have_gas_956"

"$out_of_gas_955":                                ; preds = %"$have_gas_943"
  call void @_out_of_gas()
  br label %"$have_gas_956"

"$have_gas_956":                                  ; preds = %"$out_of_gas_955", %"$have_gas_943"
  %"$consume_957" = sub i64 %"$gasrem_953", 1
  store i64 %"$consume_957", i64* @_gasrem, align 8
  %"$res__52" = alloca %Uint256, align 8
  %"$gasrem_958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_959" = icmp ugt i64 1, %"$gasrem_958"
  br i1 %"$gascmp_959", label %"$out_of_gas_960", label %"$have_gas_961"

"$out_of_gas_960":                                ; preds = %"$have_gas_956"
  call void @_out_of_gas()
  br label %"$have_gas_961"

"$have_gas_961":                                  ; preds = %"$out_of_gas_960", %"$have_gas_956"
  %"$consume_962" = sub i64 %"$gasrem_958", 1
  store i64 %"$consume_962", i64* @_gasrem, align 8
  store %Uint256 zeroinitializer, %Uint256* %"$res__52", align 8
  %"$gasrem_963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_964" = icmp ugt i64 1, %"$gasrem_963"
  br i1 %"$gascmp_964", label %"$out_of_gas_965", label %"$have_gas_966"

"$out_of_gas_965":                                ; preds = %"$have_gas_961"
  call void @_out_of_gas()
  br label %"$have_gas_966"

"$have_gas_966":                                  ; preds = %"$out_of_gas_965", %"$have_gas_961"
  %"$consume_967" = sub i64 %"$gasrem_963", 1
  store i64 %"$consume_967", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  %"$gasrem_969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_970" = icmp ugt i64 16, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %"$have_gas_966"
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %"$have_gas_966"
  %"$consume_973" = sub i64 %"$gasrem_969", 16
  store i64 %"$consume_973", i64* @_gasrem, align 8
  %"$execptr_load_974" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_975" = alloca %Uint256, align 8
  %"$$res_51_976" = load %Uint256, %Uint256* %"$res_51", align 8
  store %Uint256 %"$$res_51_976", %Uint256* %"$eq_$res_51_975", align 8
  %"$eq_$res__52_977" = alloca %Uint256, align 8
  %"$$res__52_978" = load %Uint256, %Uint256* %"$res__52", align 8
  store %Uint256 %"$$res__52_978", %Uint256* %"$eq_$res__52_977", align 8
  %"$eq_call_979" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_974", %Uint256* %"$eq_$res_51_975", %Uint256* %"$eq_$res__52_977")
  store %TName_Bool* %"$eq_call_979", %TName_Bool** %"$test__53", align 8
  %"$gasrem_981" = load i64, i64* @_gasrem, align 8
  %"$gascmp_982" = icmp ugt i64 1, %"$gasrem_981"
  br i1 %"$gascmp_982", label %"$out_of_gas_983", label %"$have_gas_984"

"$out_of_gas_983":                                ; preds = %"$have_gas_972"
  call void @_out_of_gas()
  br label %"$have_gas_984"

"$have_gas_984":                                  ; preds = %"$out_of_gas_983", %"$have_gas_972"
  %"$consume_985" = sub i64 %"$gasrem_981", 1
  store i64 %"$consume_985", i64* @_gasrem, align 8
  %"$BoolUtils.andb_95" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_986" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_987" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_986", 0
  %"$BoolUtils.andb_envptr_988" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_986", 1
  %"$$test_48_989" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_990" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_987"(i8* %"$BoolUtils.andb_envptr_988", %TName_Bool* %"$$test_48_989")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_990", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_95", align 8
  %"$BoolUtils.andb_96" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_95_991" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_95", align 8
  %"$$BoolUtils.andb_95_fptr_992" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_95_991", 0
  %"$$BoolUtils.andb_95_envptr_993" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_95_991", 1
  %"$$test__53_994" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_95_call_995" = call %TName_Bool* %"$$BoolUtils.andb_95_fptr_992"(i8* %"$$BoolUtils.andb_95_envptr_993", %TName_Bool* %"$$test__53_994")
  store %TName_Bool* %"$$BoolUtils.andb_95_call_995", %TName_Bool** %"$BoolUtils.andb_96", align 8
  %"$$BoolUtils.andb_96_996" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_96", align 8
  store %TName_Bool* %"$$BoolUtils.andb_96_996", %TName_Bool** %"$test_54", align 8
  %"$gasrem_997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_998" = icmp ugt i64 1, %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %"$have_gas_984"
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %"$have_gas_984"
  %"$consume_1001" = sub i64 %"$gasrem_997", 1
  store i64 %"$consume_1001", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Uint256, align 8
  %"$gasrem_1002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1003" = icmp ugt i64 1, %"$gasrem_1002"
  br i1 %"$gascmp_1003", label %"$out_of_gas_1004", label %"$have_gas_1005"

"$out_of_gas_1004":                               ; preds = %"$have_gas_1000"
  call void @_out_of_gas()
  br label %"$have_gas_1005"

"$have_gas_1005":                                 ; preds = %"$out_of_gas_1004", %"$have_gas_1000"
  %"$consume_1006" = sub i64 %"$gasrem_1002", 1
  store i64 %"$consume_1006", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg1_55", align 8
  %"$gasrem_1007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1008" = icmp ugt i64 1, %"$gasrem_1007"
  br i1 %"$gascmp_1008", label %"$out_of_gas_1009", label %"$have_gas_1010"

"$out_of_gas_1009":                               ; preds = %"$have_gas_1005"
  call void @_out_of_gas()
  br label %"$have_gas_1010"

"$have_gas_1010":                                 ; preds = %"$out_of_gas_1009", %"$have_gas_1005"
  %"$consume_1011" = sub i64 %"$gasrem_1007", 1
  store i64 %"$consume_1011", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Uint256, align 8
  %"$gasrem_1012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1013" = icmp ugt i64 1, %"$gasrem_1012"
  br i1 %"$gascmp_1013", label %"$out_of_gas_1014", label %"$have_gas_1015"

"$out_of_gas_1014":                               ; preds = %"$have_gas_1010"
  call void @_out_of_gas()
  br label %"$have_gas_1015"

"$have_gas_1015":                                 ; preds = %"$out_of_gas_1014", %"$have_gas_1010"
  %"$consume_1016" = sub i64 %"$gasrem_1012", 1
  store i64 %"$consume_1016", i64* @_gasrem, align 8
  store %Uint256 { i256 -2 }, %Uint256* %"$arg2_56", align 8
  %"$gasrem_1017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1018" = icmp ugt i64 1, %"$gasrem_1017"
  br i1 %"$gascmp_1018", label %"$out_of_gas_1019", label %"$have_gas_1020"

"$out_of_gas_1019":                               ; preds = %"$have_gas_1015"
  call void @_out_of_gas()
  br label %"$have_gas_1020"

"$have_gas_1020":                                 ; preds = %"$out_of_gas_1019", %"$have_gas_1015"
  %"$consume_1021" = sub i64 %"$gasrem_1017", 1
  store i64 %"$consume_1021", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1022" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1023" = icmp ugt i64 1, %"$gasrem_1022"
  br i1 %"$gascmp_1023", label %"$out_of_gas_1024", label %"$have_gas_1025"

"$out_of_gas_1024":                               ; preds = %"$have_gas_1020"
  call void @_out_of_gas()
  br label %"$have_gas_1025"

"$have_gas_1025":                                 ; preds = %"$out_of_gas_1024", %"$have_gas_1020"
  %"$consume_1026" = sub i64 %"$gasrem_1022", 1
  store i64 %"$consume_1026", i64* @_gasrem, align 8
  %"$res_57" = alloca %Uint256, align 8
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
  %"$sub_$arg1_55_1034" = alloca %Uint256, align 8
  %"$$arg1_55_1035" = load %Uint256, %Uint256* %"$arg1_55", align 8
  store %Uint256 %"$$arg1_55_1035", %Uint256* %"$sub_$arg1_55_1034", align 8
  %"$sub_$arg2_56_1036" = alloca %Uint256, align 8
  %"$$arg2_56_1037" = load %Uint256, %Uint256* %"$arg2_56", align 8
  store %Uint256 %"$$arg2_56_1037", %Uint256* %"$sub_$arg2_56_1036", align 8
  %"$sub_call_1038" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_1033", %Uint256* %"$sub_$arg1_55_1034", %Uint256* %"$sub_$arg2_56_1036")
  %"$sub_1040" = load %Uint256, %Uint256* %"$sub_call_1038", align 8
  store %Uint256 %"$sub_1040", %Uint256* %"$res_57", align 8
  %"$gasrem_1041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1042" = icmp ugt i64 1, %"$gasrem_1041"
  br i1 %"$gascmp_1042", label %"$out_of_gas_1043", label %"$have_gas_1044"

"$out_of_gas_1043":                               ; preds = %"$have_gas_1031"
  call void @_out_of_gas()
  br label %"$have_gas_1044"

"$have_gas_1044":                                 ; preds = %"$out_of_gas_1043", %"$have_gas_1031"
  %"$consume_1045" = sub i64 %"$gasrem_1041", 1
  store i64 %"$consume_1045", i64* @_gasrem, align 8
  %"$res__58" = alloca %Uint256, align 8
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 1, %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %"$have_gas_1044"
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %"$have_gas_1044"
  %"$consume_1050" = sub i64 %"$gasrem_1046", 1
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__58", align 8
  %"$gasrem_1051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1052" = icmp ugt i64 1, %"$gasrem_1051"
  br i1 %"$gascmp_1052", label %"$out_of_gas_1053", label %"$have_gas_1054"

"$out_of_gas_1053":                               ; preds = %"$have_gas_1049"
  call void @_out_of_gas()
  br label %"$have_gas_1054"

"$have_gas_1054":                                 ; preds = %"$out_of_gas_1053", %"$have_gas_1049"
  %"$consume_1055" = sub i64 %"$gasrem_1051", 1
  store i64 %"$consume_1055", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  %"$gasrem_1057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1058" = icmp ugt i64 16, %"$gasrem_1057"
  br i1 %"$gascmp_1058", label %"$out_of_gas_1059", label %"$have_gas_1060"

"$out_of_gas_1059":                               ; preds = %"$have_gas_1054"
  call void @_out_of_gas()
  br label %"$have_gas_1060"

"$have_gas_1060":                                 ; preds = %"$out_of_gas_1059", %"$have_gas_1054"
  %"$consume_1061" = sub i64 %"$gasrem_1057", 16
  store i64 %"$consume_1061", i64* @_gasrem, align 8
  %"$execptr_load_1062" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_1063" = alloca %Uint256, align 8
  %"$$res_57_1064" = load %Uint256, %Uint256* %"$res_57", align 8
  store %Uint256 %"$$res_57_1064", %Uint256* %"$eq_$res_57_1063", align 8
  %"$eq_$res__58_1065" = alloca %Uint256, align 8
  %"$$res__58_1066" = load %Uint256, %Uint256* %"$res__58", align 8
  store %Uint256 %"$$res__58_1066", %Uint256* %"$eq_$res__58_1065", align 8
  %"$eq_call_1067" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1062", %Uint256* %"$eq_$res_57_1063", %Uint256* %"$eq_$res__58_1065")
  store %TName_Bool* %"$eq_call_1067", %TName_Bool** %"$test__59", align 8
  %"$gasrem_1069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1070" = icmp ugt i64 1, %"$gasrem_1069"
  br i1 %"$gascmp_1070", label %"$out_of_gas_1071", label %"$have_gas_1072"

"$out_of_gas_1071":                               ; preds = %"$have_gas_1060"
  call void @_out_of_gas()
  br label %"$have_gas_1072"

"$have_gas_1072":                                 ; preds = %"$out_of_gas_1071", %"$have_gas_1060"
  %"$consume_1073" = sub i64 %"$gasrem_1069", 1
  store i64 %"$consume_1073", i64* @_gasrem, align 8
  %"$BoolUtils.andb_97" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1074" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1075" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1074", 0
  %"$BoolUtils.andb_envptr_1076" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1074", 1
  %"$$test_54_1077" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1078" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1075"(i8* %"$BoolUtils.andb_envptr_1076", %TName_Bool* %"$$test_54_1077")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1078", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_97", align 8
  %"$BoolUtils.andb_98" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_97_1079" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_97", align 8
  %"$$BoolUtils.andb_97_fptr_1080" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_97_1079", 0
  %"$$BoolUtils.andb_97_envptr_1081" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_97_1079", 1
  %"$$test__59_1082" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_97_call_1083" = call %TName_Bool* %"$$BoolUtils.andb_97_fptr_1080"(i8* %"$$BoolUtils.andb_97_envptr_1081", %TName_Bool* %"$$test__59_1082")
  store %TName_Bool* %"$$BoolUtils.andb_97_call_1083", %TName_Bool** %"$BoolUtils.andb_98", align 8
  %"$$BoolUtils.andb_98_1084" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_98", align 8
  store %TName_Bool* %"$$BoolUtils.andb_98_1084", %TName_Bool** %"$test_60", align 8
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 1, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$have_gas_1072"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$have_gas_1072"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 1
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %"$arg1_61" = alloca %Int256, align 8
  %"$gasrem_1090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1091" = icmp ugt i64 1, %"$gasrem_1090"
  br i1 %"$gascmp_1091", label %"$out_of_gas_1092", label %"$have_gas_1093"

"$out_of_gas_1092":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1093"

"$have_gas_1093":                                 ; preds = %"$out_of_gas_1092", %"$have_gas_1088"
  %"$consume_1094" = sub i64 %"$gasrem_1090", 1
  store i64 %"$consume_1094", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_61", align 8
  %"$gasrem_1095" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1096" = icmp ugt i64 1, %"$gasrem_1095"
  br i1 %"$gascmp_1096", label %"$out_of_gas_1097", label %"$have_gas_1098"

"$out_of_gas_1097":                               ; preds = %"$have_gas_1093"
  call void @_out_of_gas()
  br label %"$have_gas_1098"

"$have_gas_1098":                                 ; preds = %"$out_of_gas_1097", %"$have_gas_1093"
  %"$consume_1099" = sub i64 %"$gasrem_1095", 1
  store i64 %"$consume_1099", i64* @_gasrem, align 8
  %"$arg2_62" = alloca %Int256, align 8
  %"$gasrem_1100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1101" = icmp ugt i64 1, %"$gasrem_1100"
  br i1 %"$gascmp_1101", label %"$out_of_gas_1102", label %"$have_gas_1103"

"$out_of_gas_1102":                               ; preds = %"$have_gas_1098"
  call void @_out_of_gas()
  br label %"$have_gas_1103"

"$have_gas_1103":                                 ; preds = %"$out_of_gas_1102", %"$have_gas_1098"
  %"$consume_1104" = sub i64 %"$gasrem_1100", 1
  store i64 %"$consume_1104", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$arg2_62", align 8
  %"$gasrem_1105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1106" = icmp ugt i64 1, %"$gasrem_1105"
  br i1 %"$gascmp_1106", label %"$out_of_gas_1107", label %"$have_gas_1108"

"$out_of_gas_1107":                               ; preds = %"$have_gas_1103"
  call void @_out_of_gas()
  br label %"$have_gas_1108"

"$have_gas_1108":                                 ; preds = %"$out_of_gas_1107", %"$have_gas_1103"
  %"$consume_1109" = sub i64 %"$gasrem_1105", 1
  store i64 %"$consume_1109", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1111" = icmp ugt i64 1, %"$gasrem_1110"
  br i1 %"$gascmp_1111", label %"$out_of_gas_1112", label %"$have_gas_1113"

"$out_of_gas_1112":                               ; preds = %"$have_gas_1108"
  call void @_out_of_gas()
  br label %"$have_gas_1113"

"$have_gas_1113":                                 ; preds = %"$out_of_gas_1112", %"$have_gas_1108"
  %"$consume_1114" = sub i64 %"$gasrem_1110", 1
  store i64 %"$consume_1114", i64* @_gasrem, align 8
  %"$res_63" = alloca %Int256, align 8
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
  %"$sub_$arg1_61_1122" = alloca %Int256, align 8
  %"$$arg1_61_1123" = load %Int256, %Int256* %"$arg1_61", align 8
  store %Int256 %"$$arg1_61_1123", %Int256* %"$sub_$arg1_61_1122", align 8
  %"$sub_$arg2_62_1124" = alloca %Int256, align 8
  %"$$arg2_62_1125" = load %Int256, %Int256* %"$arg2_62", align 8
  store %Int256 %"$$arg2_62_1125", %Int256* %"$sub_$arg2_62_1124", align 8
  %"$sub_call_1126" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1121", %Int256* %"$sub_$arg1_61_1122", %Int256* %"$sub_$arg2_62_1124")
  %"$sub_1128" = load %Int256, %Int256* %"$sub_call_1126", align 8
  store %Int256 %"$sub_1128", %Int256* %"$res_63", align 8
  %"$gasrem_1129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1130" = icmp ugt i64 1, %"$gasrem_1129"
  br i1 %"$gascmp_1130", label %"$out_of_gas_1131", label %"$have_gas_1132"

"$out_of_gas_1131":                               ; preds = %"$have_gas_1119"
  call void @_out_of_gas()
  br label %"$have_gas_1132"

"$have_gas_1132":                                 ; preds = %"$out_of_gas_1131", %"$have_gas_1119"
  %"$consume_1133" = sub i64 %"$gasrem_1129", 1
  store i64 %"$consume_1133", i64* @_gasrem, align 8
  %"$res__64" = alloca %Int256, align 8
  %"$gasrem_1134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1135" = icmp ugt i64 1, %"$gasrem_1134"
  br i1 %"$gascmp_1135", label %"$out_of_gas_1136", label %"$have_gas_1137"

"$out_of_gas_1136":                               ; preds = %"$have_gas_1132"
  call void @_out_of_gas()
  br label %"$have_gas_1137"

"$have_gas_1137":                                 ; preds = %"$out_of_gas_1136", %"$have_gas_1132"
  %"$consume_1138" = sub i64 %"$gasrem_1134", 1
  store i64 %"$consume_1138", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$res__64", align 8
  %"$gasrem_1139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1140" = icmp ugt i64 1, %"$gasrem_1139"
  br i1 %"$gascmp_1140", label %"$out_of_gas_1141", label %"$have_gas_1142"

"$out_of_gas_1141":                               ; preds = %"$have_gas_1137"
  call void @_out_of_gas()
  br label %"$have_gas_1142"

"$have_gas_1142":                                 ; preds = %"$out_of_gas_1141", %"$have_gas_1137"
  %"$consume_1143" = sub i64 %"$gasrem_1139", 1
  store i64 %"$consume_1143", i64* @_gasrem, align 8
  %"$test__65" = alloca %TName_Bool*, align 8
  %"$gasrem_1145" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1146" = icmp ugt i64 16, %"$gasrem_1145"
  br i1 %"$gascmp_1146", label %"$out_of_gas_1147", label %"$have_gas_1148"

"$out_of_gas_1147":                               ; preds = %"$have_gas_1142"
  call void @_out_of_gas()
  br label %"$have_gas_1148"

"$have_gas_1148":                                 ; preds = %"$out_of_gas_1147", %"$have_gas_1142"
  %"$consume_1149" = sub i64 %"$gasrem_1145", 16
  store i64 %"$consume_1149", i64* @_gasrem, align 8
  %"$execptr_load_1150" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_63_1151" = alloca %Int256, align 8
  %"$$res_63_1152" = load %Int256, %Int256* %"$res_63", align 8
  store %Int256 %"$$res_63_1152", %Int256* %"$eq_$res_63_1151", align 8
  %"$eq_$res__64_1153" = alloca %Int256, align 8
  %"$$res__64_1154" = load %Int256, %Int256* %"$res__64", align 8
  store %Int256 %"$$res__64_1154", %Int256* %"$eq_$res__64_1153", align 8
  %"$eq_call_1155" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1150", %Int256* %"$eq_$res_63_1151", %Int256* %"$eq_$res__64_1153")
  store %TName_Bool* %"$eq_call_1155", %TName_Bool** %"$test__65", align 8
  %"$gasrem_1157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1158" = icmp ugt i64 1, %"$gasrem_1157"
  br i1 %"$gascmp_1158", label %"$out_of_gas_1159", label %"$have_gas_1160"

"$out_of_gas_1159":                               ; preds = %"$have_gas_1148"
  call void @_out_of_gas()
  br label %"$have_gas_1160"

"$have_gas_1160":                                 ; preds = %"$out_of_gas_1159", %"$have_gas_1148"
  %"$consume_1161" = sub i64 %"$gasrem_1157", 1
  store i64 %"$consume_1161", i64* @_gasrem, align 8
  %"$BoolUtils.andb_99" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1162" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1163" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1162", 0
  %"$BoolUtils.andb_envptr_1164" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1162", 1
  %"$$test_60_1165" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1166" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1163"(i8* %"$BoolUtils.andb_envptr_1164", %TName_Bool* %"$$test_60_1165")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1166", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_99", align 8
  %"$BoolUtils.andb_100" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_99_1167" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_99", align 8
  %"$$BoolUtils.andb_99_fptr_1168" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_99_1167", 0
  %"$$BoolUtils.andb_99_envptr_1169" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_99_1167", 1
  %"$$test__65_1170" = load %TName_Bool*, %TName_Bool** %"$test__65", align 8
  %"$$BoolUtils.andb_99_call_1171" = call %TName_Bool* %"$$BoolUtils.andb_99_fptr_1168"(i8* %"$$BoolUtils.andb_99_envptr_1169", %TName_Bool* %"$$test__65_1170")
  store %TName_Bool* %"$$BoolUtils.andb_99_call_1171", %TName_Bool** %"$BoolUtils.andb_100", align 8
  %"$$BoolUtils.andb_100_1172" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_100", align 8
  store %TName_Bool* %"$$BoolUtils.andb_100_1172", %TName_Bool** %"$test_66", align 8
  %"$gasrem_1173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1174" = icmp ugt i64 1, %"$gasrem_1173"
  br i1 %"$gascmp_1174", label %"$out_of_gas_1175", label %"$have_gas_1176"

"$out_of_gas_1175":                               ; preds = %"$have_gas_1160"
  call void @_out_of_gas()
  br label %"$have_gas_1176"

"$have_gas_1176":                                 ; preds = %"$out_of_gas_1175", %"$have_gas_1160"
  %"$consume_1177" = sub i64 %"$gasrem_1173", 1
  store i64 %"$consume_1177", i64* @_gasrem, align 8
  %"$arg2_67" = alloca %Int256, align 8
  %"$gasrem_1178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1179" = icmp ugt i64 1, %"$gasrem_1178"
  br i1 %"$gascmp_1179", label %"$out_of_gas_1180", label %"$have_gas_1181"

"$out_of_gas_1180":                               ; preds = %"$have_gas_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1181"

"$have_gas_1181":                                 ; preds = %"$out_of_gas_1180", %"$have_gas_1176"
  %"$consume_1182" = sub i64 %"$gasrem_1178", 1
  store i64 %"$consume_1182", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_67", align 8
  %"$gasrem_1183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1184" = icmp ugt i64 1, %"$gasrem_1183"
  br i1 %"$gascmp_1184", label %"$out_of_gas_1185", label %"$have_gas_1186"

"$out_of_gas_1185":                               ; preds = %"$have_gas_1181"
  call void @_out_of_gas()
  br label %"$have_gas_1186"

"$have_gas_1186":                                 ; preds = %"$out_of_gas_1185", %"$have_gas_1181"
  %"$consume_1187" = sub i64 %"$gasrem_1183", 1
  store i64 %"$consume_1187", i64* @_gasrem, align 8
  %"$arg1_68" = alloca %Int256, align 8
  %"$gasrem_1188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1189" = icmp ugt i64 1, %"$gasrem_1188"
  br i1 %"$gascmp_1189", label %"$out_of_gas_1190", label %"$have_gas_1191"

"$out_of_gas_1190":                               ; preds = %"$have_gas_1186"
  call void @_out_of_gas()
  br label %"$have_gas_1191"

"$have_gas_1191":                                 ; preds = %"$out_of_gas_1190", %"$have_gas_1186"
  %"$consume_1192" = sub i64 %"$gasrem_1188", 1
  store i64 %"$consume_1192", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$arg1_68", align 8
  %"$gasrem_1193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1194" = icmp ugt i64 1, %"$gasrem_1193"
  br i1 %"$gascmp_1194", label %"$out_of_gas_1195", label %"$have_gas_1196"

"$out_of_gas_1195":                               ; preds = %"$have_gas_1191"
  call void @_out_of_gas()
  br label %"$have_gas_1196"

"$have_gas_1196":                                 ; preds = %"$out_of_gas_1195", %"$have_gas_1191"
  %"$consume_1197" = sub i64 %"$gasrem_1193", 1
  store i64 %"$consume_1197", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  %"$gasrem_1198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1199" = icmp ugt i64 1, %"$gasrem_1198"
  br i1 %"$gascmp_1199", label %"$out_of_gas_1200", label %"$have_gas_1201"

"$out_of_gas_1200":                               ; preds = %"$have_gas_1196"
  call void @_out_of_gas()
  br label %"$have_gas_1201"

"$have_gas_1201":                                 ; preds = %"$out_of_gas_1200", %"$have_gas_1196"
  %"$consume_1202" = sub i64 %"$gasrem_1198", 1
  store i64 %"$consume_1202", i64* @_gasrem, align 8
  %"$res_69" = alloca %Int256, align 8
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
  %"$sub_$arg1_68_1210" = alloca %Int256, align 8
  %"$$arg1_68_1211" = load %Int256, %Int256* %"$arg1_68", align 8
  store %Int256 %"$$arg1_68_1211", %Int256* %"$sub_$arg1_68_1210", align 8
  %"$sub_$arg2_67_1212" = alloca %Int256, align 8
  %"$$arg2_67_1213" = load %Int256, %Int256* %"$arg2_67", align 8
  store %Int256 %"$$arg2_67_1213", %Int256* %"$sub_$arg2_67_1212", align 8
  %"$sub_call_1214" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1209", %Int256* %"$sub_$arg1_68_1210", %Int256* %"$sub_$arg2_67_1212")
  %"$sub_1216" = load %Int256, %Int256* %"$sub_call_1214", align 8
  store %Int256 %"$sub_1216", %Int256* %"$res_69", align 8
  %"$gasrem_1217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1218" = icmp ugt i64 1, %"$gasrem_1217"
  br i1 %"$gascmp_1218", label %"$out_of_gas_1219", label %"$have_gas_1220"

"$out_of_gas_1219":                               ; preds = %"$have_gas_1207"
  call void @_out_of_gas()
  br label %"$have_gas_1220"

"$have_gas_1220":                                 ; preds = %"$out_of_gas_1219", %"$have_gas_1207"
  %"$consume_1221" = sub i64 %"$gasrem_1217", 1
  store i64 %"$consume_1221", i64* @_gasrem, align 8
  %"$res__70" = alloca %Int256, align 8
  %"$gasrem_1222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1223" = icmp ugt i64 1, %"$gasrem_1222"
  br i1 %"$gascmp_1223", label %"$out_of_gas_1224", label %"$have_gas_1225"

"$out_of_gas_1224":                               ; preds = %"$have_gas_1220"
  call void @_out_of_gas()
  br label %"$have_gas_1225"

"$have_gas_1225":                                 ; preds = %"$out_of_gas_1224", %"$have_gas_1220"
  %"$consume_1226" = sub i64 %"$gasrem_1222", 1
  store i64 %"$consume_1226", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$res__70", align 8
  %"$gasrem_1227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1228" = icmp ugt i64 1, %"$gasrem_1227"
  br i1 %"$gascmp_1228", label %"$out_of_gas_1229", label %"$have_gas_1230"

"$out_of_gas_1229":                               ; preds = %"$have_gas_1225"
  call void @_out_of_gas()
  br label %"$have_gas_1230"

"$have_gas_1230":                                 ; preds = %"$out_of_gas_1229", %"$have_gas_1225"
  %"$consume_1231" = sub i64 %"$gasrem_1227", 1
  store i64 %"$consume_1231", i64* @_gasrem, align 8
  %"$test__71" = alloca %TName_Bool*, align 8
  %"$gasrem_1233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1234" = icmp ugt i64 16, %"$gasrem_1233"
  br i1 %"$gascmp_1234", label %"$out_of_gas_1235", label %"$have_gas_1236"

"$out_of_gas_1235":                               ; preds = %"$have_gas_1230"
  call void @_out_of_gas()
  br label %"$have_gas_1236"

"$have_gas_1236":                                 ; preds = %"$out_of_gas_1235", %"$have_gas_1230"
  %"$consume_1237" = sub i64 %"$gasrem_1233", 16
  store i64 %"$consume_1237", i64* @_gasrem, align 8
  %"$execptr_load_1238" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_69_1239" = alloca %Int256, align 8
  %"$$res_69_1240" = load %Int256, %Int256* %"$res_69", align 8
  store %Int256 %"$$res_69_1240", %Int256* %"$eq_$res_69_1239", align 8
  %"$eq_$res__70_1241" = alloca %Int256, align 8
  %"$$res__70_1242" = load %Int256, %Int256* %"$res__70", align 8
  store %Int256 %"$$res__70_1242", %Int256* %"$eq_$res__70_1241", align 8
  %"$eq_call_1243" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1238", %Int256* %"$eq_$res_69_1239", %Int256* %"$eq_$res__70_1241")
  store %TName_Bool* %"$eq_call_1243", %TName_Bool** %"$test__71", align 8
  %"$gasrem_1245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1246" = icmp ugt i64 1, %"$gasrem_1245"
  br i1 %"$gascmp_1246", label %"$out_of_gas_1247", label %"$have_gas_1248"

"$out_of_gas_1247":                               ; preds = %"$have_gas_1236"
  call void @_out_of_gas()
  br label %"$have_gas_1248"

"$have_gas_1248":                                 ; preds = %"$out_of_gas_1247", %"$have_gas_1236"
  %"$consume_1249" = sub i64 %"$gasrem_1245", 1
  store i64 %"$consume_1249", i64* @_gasrem, align 8
  %"$BoolUtils.andb_101" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1250" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1251" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1250", 0
  %"$BoolUtils.andb_envptr_1252" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1250", 1
  %"$$test_66_1253" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  %"$BoolUtils.andb_call_1254" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1251"(i8* %"$BoolUtils.andb_envptr_1252", %TName_Bool* %"$$test_66_1253")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1254", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_101", align 8
  %"$BoolUtils.andb_102" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_101_1255" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_101", align 8
  %"$$BoolUtils.andb_101_fptr_1256" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_101_1255", 0
  %"$$BoolUtils.andb_101_envptr_1257" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_101_1255", 1
  %"$$test__71_1258" = load %TName_Bool*, %TName_Bool** %"$test__71", align 8
  %"$$BoolUtils.andb_101_call_1259" = call %TName_Bool* %"$$BoolUtils.andb_101_fptr_1256"(i8* %"$$BoolUtils.andb_101_envptr_1257", %TName_Bool* %"$$test__71_1258")
  store %TName_Bool* %"$$BoolUtils.andb_101_call_1259", %TName_Bool** %"$BoolUtils.andb_102", align 8
  %"$$BoolUtils.andb_102_1260" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_102", align 8
  store %TName_Bool* %"$$BoolUtils.andb_102_1260", %TName_Bool** %"$test_72", align 8
  %"$gasrem_1261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1262" = icmp ugt i64 1, %"$gasrem_1261"
  br i1 %"$gascmp_1262", label %"$out_of_gas_1263", label %"$have_gas_1264"

"$out_of_gas_1263":                               ; preds = %"$have_gas_1248"
  call void @_out_of_gas()
  br label %"$have_gas_1264"

"$have_gas_1264":                                 ; preds = %"$out_of_gas_1263", %"$have_gas_1248"
  %"$consume_1265" = sub i64 %"$gasrem_1261", 1
  store i64 %"$consume_1265", i64* @_gasrem, align 8
  %"$arg1_73" = alloca %Int256, align 8
  %"$gasrem_1266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1267" = icmp ugt i64 1, %"$gasrem_1266"
  br i1 %"$gascmp_1267", label %"$out_of_gas_1268", label %"$have_gas_1269"

"$out_of_gas_1268":                               ; preds = %"$have_gas_1264"
  call void @_out_of_gas()
  br label %"$have_gas_1269"

"$have_gas_1269":                                 ; preds = %"$out_of_gas_1268", %"$have_gas_1264"
  %"$consume_1270" = sub i64 %"$gasrem_1266", 1
  store i64 %"$consume_1270", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_73", align 8
  %"$gasrem_1271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1272" = icmp ugt i64 1, %"$gasrem_1271"
  br i1 %"$gascmp_1272", label %"$out_of_gas_1273", label %"$have_gas_1274"

"$out_of_gas_1273":                               ; preds = %"$have_gas_1269"
  call void @_out_of_gas()
  br label %"$have_gas_1274"

"$have_gas_1274":                                 ; preds = %"$out_of_gas_1273", %"$have_gas_1269"
  %"$consume_1275" = sub i64 %"$gasrem_1271", 1
  store i64 %"$consume_1275", i64* @_gasrem, align 8
  %"$arg2_74" = alloca %Int256, align 8
  %"$gasrem_1276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1277" = icmp ugt i64 1, %"$gasrem_1276"
  br i1 %"$gascmp_1277", label %"$out_of_gas_1278", label %"$have_gas_1279"

"$out_of_gas_1278":                               ; preds = %"$have_gas_1274"
  call void @_out_of_gas()
  br label %"$have_gas_1279"

"$have_gas_1279":                                 ; preds = %"$out_of_gas_1278", %"$have_gas_1274"
  %"$consume_1280" = sub i64 %"$gasrem_1276", 1
  store i64 %"$consume_1280", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$arg2_74", align 8
  %"$gasrem_1281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1282" = icmp ugt i64 1, %"$gasrem_1281"
  br i1 %"$gascmp_1282", label %"$out_of_gas_1283", label %"$have_gas_1284"

"$out_of_gas_1283":                               ; preds = %"$have_gas_1279"
  call void @_out_of_gas()
  br label %"$have_gas_1284"

"$have_gas_1284":                                 ; preds = %"$out_of_gas_1283", %"$have_gas_1279"
  %"$consume_1285" = sub i64 %"$gasrem_1281", 1
  store i64 %"$consume_1285", i64* @_gasrem, align 8
  %"$test_78" = alloca %TName_Bool*, align 8
  %"$gasrem_1286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1287" = icmp ugt i64 1, %"$gasrem_1286"
  br i1 %"$gascmp_1287", label %"$out_of_gas_1288", label %"$have_gas_1289"

"$out_of_gas_1288":                               ; preds = %"$have_gas_1284"
  call void @_out_of_gas()
  br label %"$have_gas_1289"

"$have_gas_1289":                                 ; preds = %"$out_of_gas_1288", %"$have_gas_1284"
  %"$consume_1290" = sub i64 %"$gasrem_1286", 1
  store i64 %"$consume_1290", i64* @_gasrem, align 8
  %"$res_75" = alloca %Int256, align 8
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
  %"$sub_$arg1_73_1298" = alloca %Int256, align 8
  %"$$arg1_73_1299" = load %Int256, %Int256* %"$arg1_73", align 8
  store %Int256 %"$$arg1_73_1299", %Int256* %"$sub_$arg1_73_1298", align 8
  %"$sub_$arg2_74_1300" = alloca %Int256, align 8
  %"$$arg2_74_1301" = load %Int256, %Int256* %"$arg2_74", align 8
  store %Int256 %"$$arg2_74_1301", %Int256* %"$sub_$arg2_74_1300", align 8
  %"$sub_call_1302" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1297", %Int256* %"$sub_$arg1_73_1298", %Int256* %"$sub_$arg2_74_1300")
  %"$sub_1304" = load %Int256, %Int256* %"$sub_call_1302", align 8
  store %Int256 %"$sub_1304", %Int256* %"$res_75", align 8
  %"$gasrem_1305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1306" = icmp ugt i64 1, %"$gasrem_1305"
  br i1 %"$gascmp_1306", label %"$out_of_gas_1307", label %"$have_gas_1308"

"$out_of_gas_1307":                               ; preds = %"$have_gas_1295"
  call void @_out_of_gas()
  br label %"$have_gas_1308"

"$have_gas_1308":                                 ; preds = %"$out_of_gas_1307", %"$have_gas_1295"
  %"$consume_1309" = sub i64 %"$gasrem_1305", 1
  store i64 %"$consume_1309", i64* @_gasrem, align 8
  %"$res__76" = alloca %Int256, align 8
  %"$gasrem_1310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1311" = icmp ugt i64 1, %"$gasrem_1310"
  br i1 %"$gascmp_1311", label %"$out_of_gas_1312", label %"$have_gas_1313"

"$out_of_gas_1312":                               ; preds = %"$have_gas_1308"
  call void @_out_of_gas()
  br label %"$have_gas_1313"

"$have_gas_1313":                                 ; preds = %"$out_of_gas_1312", %"$have_gas_1308"
  %"$consume_1314" = sub i64 %"$gasrem_1310", 1
  store i64 %"$consume_1314", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$res__76", align 8
  %"$gasrem_1315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1316" = icmp ugt i64 1, %"$gasrem_1315"
  br i1 %"$gascmp_1316", label %"$out_of_gas_1317", label %"$have_gas_1318"

"$out_of_gas_1317":                               ; preds = %"$have_gas_1313"
  call void @_out_of_gas()
  br label %"$have_gas_1318"

"$have_gas_1318":                                 ; preds = %"$out_of_gas_1317", %"$have_gas_1313"
  %"$consume_1319" = sub i64 %"$gasrem_1315", 1
  store i64 %"$consume_1319", i64* @_gasrem, align 8
  %"$test__77" = alloca %TName_Bool*, align 8
  %"$gasrem_1321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1322" = icmp ugt i64 16, %"$gasrem_1321"
  br i1 %"$gascmp_1322", label %"$out_of_gas_1323", label %"$have_gas_1324"

"$out_of_gas_1323":                               ; preds = %"$have_gas_1318"
  call void @_out_of_gas()
  br label %"$have_gas_1324"

"$have_gas_1324":                                 ; preds = %"$out_of_gas_1323", %"$have_gas_1318"
  %"$consume_1325" = sub i64 %"$gasrem_1321", 16
  store i64 %"$consume_1325", i64* @_gasrem, align 8
  %"$execptr_load_1326" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_75_1327" = alloca %Int256, align 8
  %"$$res_75_1328" = load %Int256, %Int256* %"$res_75", align 8
  store %Int256 %"$$res_75_1328", %Int256* %"$eq_$res_75_1327", align 8
  %"$eq_$res__76_1329" = alloca %Int256, align 8
  %"$$res__76_1330" = load %Int256, %Int256* %"$res__76", align 8
  store %Int256 %"$$res__76_1330", %Int256* %"$eq_$res__76_1329", align 8
  %"$eq_call_1331" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1326", %Int256* %"$eq_$res_75_1327", %Int256* %"$eq_$res__76_1329")
  store %TName_Bool* %"$eq_call_1331", %TName_Bool** %"$test__77", align 8
  %"$gasrem_1333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1334" = icmp ugt i64 1, %"$gasrem_1333"
  br i1 %"$gascmp_1334", label %"$out_of_gas_1335", label %"$have_gas_1336"

"$out_of_gas_1335":                               ; preds = %"$have_gas_1324"
  call void @_out_of_gas()
  br label %"$have_gas_1336"

"$have_gas_1336":                                 ; preds = %"$out_of_gas_1335", %"$have_gas_1324"
  %"$consume_1337" = sub i64 %"$gasrem_1333", 1
  store i64 %"$consume_1337", i64* @_gasrem, align 8
  %"$BoolUtils.andb_103" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1338" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1339" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1338", 0
  %"$BoolUtils.andb_envptr_1340" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1338", 1
  %"$$test_72_1341" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  %"$BoolUtils.andb_call_1342" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1339"(i8* %"$BoolUtils.andb_envptr_1340", %TName_Bool* %"$$test_72_1341")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1342", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_103", align 8
  %"$BoolUtils.andb_104" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_103_1343" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_103", align 8
  %"$$BoolUtils.andb_103_fptr_1344" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_103_1343", 0
  %"$$BoolUtils.andb_103_envptr_1345" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_103_1343", 1
  %"$$test__77_1346" = load %TName_Bool*, %TName_Bool** %"$test__77", align 8
  %"$$BoolUtils.andb_103_call_1347" = call %TName_Bool* %"$$BoolUtils.andb_103_fptr_1344"(i8* %"$$BoolUtils.andb_103_envptr_1345", %TName_Bool* %"$$test__77_1346")
  store %TName_Bool* %"$$BoolUtils.andb_103_call_1347", %TName_Bool** %"$BoolUtils.andb_104", align 8
  %"$$BoolUtils.andb_104_1348" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_104", align 8
  store %TName_Bool* %"$$BoolUtils.andb_104_1348", %TName_Bool** %"$test_78", align 8
  %"$gasrem_1349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1350" = icmp ugt i64 1, %"$gasrem_1349"
  br i1 %"$gascmp_1350", label %"$out_of_gas_1351", label %"$have_gas_1352"

"$out_of_gas_1351":                               ; preds = %"$have_gas_1336"
  call void @_out_of_gas()
  br label %"$have_gas_1352"

"$have_gas_1352":                                 ; preds = %"$out_of_gas_1351", %"$have_gas_1336"
  %"$consume_1353" = sub i64 %"$gasrem_1349", 1
  store i64 %"$consume_1353", i64* @_gasrem, align 8
  %"$$test_78_1354" = load %TName_Bool*, %TName_Bool** %"$test_78", align 8
  store %TName_Bool* %"$$test_78_1354", %TName_Bool** %"$expr_109", align 8
  %"$$expr_109_1355" = load %TName_Bool*, %TName_Bool** %"$expr_109", align 8
  ret %TName_Bool* %"$$expr_109_1355"
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
  %"$exprval_1356" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1357" = bitcast %TName_Bool* %"$exprval_1356" to i8*
  %"$execptr_load_1358" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1358", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_144", i8* %"$memvoidcast_1357")
  ret void
}
