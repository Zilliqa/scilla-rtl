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
%"$TyDescrTy_ADTTyp_140" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_139"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_139" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_141"**, %"$TyDescrTy_ADTTyp_140"* }
%"$TyDescrTy_ADTTyp_Constr_141" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_1357" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1358" = type { %ParamDescrString, i32, %"$ParamDescr_1357"* }
%"$$fundef_107_env_158" = type { %TName_Bool* }
%"$$fundef_105_env_159" = type {}
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
@"$TyDescr_Bystr_Prim_137" = global %"$TyDescrTy_PrimTyp_110" { i32 7, i32 0 }
@"$TyDescr_Bystr_138" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_110"* @"$TyDescr_Bystr_Prim_137" to i8*) }
@"$TyDescr_ADT_Bool_142" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_139"* @"$TyDescr_Bool_ADTTyp_Specl_155" to i8*) }
@"$TyDescr_Bool_ADTTyp_146" = unnamed_addr constant %"$TyDescrTy_ADTTyp_140" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_157", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_139"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_139"*], [1 x %"$TyDescrTy_ADTTyp_Specl_139"*]* @"$TyDescr_Bool_ADTTyp_m_specls_156", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_147" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_148" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_149" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_141" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_148", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_147", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_150" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_151" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_152" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_141" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_151", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_150", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_153" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_141"*] [%"$TyDescrTy_ADTTyp_Constr_141"* @"$TyDescr_Bool_True_ADTTyp_Constr_149", %"$TyDescrTy_ADTTyp_Constr_141"* @"$TyDescr_Bool_False_ADTTyp_Constr_152"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_154" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_155" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_139" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_154", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_141"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_141"*], [2 x %"$TyDescrTy_ADTTyp_Constr_141"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_153", i32 0, i32 0), %"$TyDescrTy_ADTTyp_140"* @"$TyDescr_Bool_ADTTyp_146" }
@"$TyDescr_Bool_ADTTyp_m_specls_156" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_139"*] [%"$TyDescrTy_ADTTyp_Specl_139"* @"$TyDescr_Bool_ADTTyp_Specl_155"]
@"$TyDescr_ADT_Bool_157" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_134", %_TyDescrTy_Typ* @"$TyDescr_Int64_116", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_142", %_TyDescrTy_Typ* @"$TyDescr_Uint256_126", %_TyDescrTy_Typ* @"$TyDescr_Uint32_114", %_TyDescrTy_Typ* @"$TyDescr_Uint64_118", %_TyDescrTy_Typ* @"$TyDescr_Bnum_130", %_TyDescrTy_Typ* @"$TyDescr_Uint128_122", %_TyDescrTy_Typ* @"$TyDescr_Exception_136", %_TyDescrTy_Typ* @"$TyDescr_String_128", %_TyDescrTy_Typ* @"$TyDescr_Int256_124", %_TyDescrTy_Typ* @"$TyDescr_Int128_120", %_TyDescrTy_Typ* @"$TyDescr_Bystr_138", %_TyDescrTy_Typ* @"$TyDescr_Message_132", %_TyDescrTy_Typ* @"$TyDescr_Int32_112"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_1357"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1358"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_107"(%"$$fundef_107_env_158"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$$fundef_107_env_b_171" = getelementptr inbounds %"$$fundef_107_env_158", %"$$fundef_107_env_158"* %0, i32 0, i32 0
  %"$b_envload_172" = load %TName_Bool*, %TName_Bool** %"$$fundef_107_env_b_171", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_172", %TName_Bool** %b, align 8
  %"$retval_108" = alloca %TName_Bool*, align 8
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 2, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %entry
  %"$consume_177" = sub i64 %"$gasrem_173", 2
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %"$b_179" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_180" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_179", i32 0, i32 0
  %"$b_tag_181" = load i8, i8* %"$b_tag_180", align 1
  switch i8 %"$b_tag_181", label %"$empty_default_182" [
    i8 1, label %"$False_183"
    i8 0, label %"$True_193"
  ], !dbg !9

"$False_183":                                     ; preds = %"$have_gas_176"
  %"$b_184" = bitcast %TName_Bool* %"$b_179" to %CName_False*
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$False_183"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$False_183"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$adtval_190_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_190_salloc" = call i8* @_salloc(i8* %"$adtval_190_load", i64 1)
  %"$adtval_190" = bitcast i8* %"$adtval_190_salloc" to %CName_False*
  %"$adtgep_191" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_190", i32 0, i32 0
  store i8 1, i8* %"$adtgep_191", align 1
  %"$adtptr_192" = bitcast %CName_False* %"$adtval_190" to %TName_Bool*
  store %TName_Bool* %"$adtptr_192", %TName_Bool** %"$retval_108", align 8, !dbg !10
  br label %"$matchsucc_178"

"$True_193":                                      ; preds = %"$have_gas_176"
  %"$b_194" = bitcast %TName_Bool* %"$b_179" to %CName_True*
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$True_193"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$True_193"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_108", align 8, !dbg !13
  br label %"$matchsucc_178"

"$empty_default_182":                             ; preds = %"$have_gas_176"
  br label %"$matchsucc_178"

"$matchsucc_178":                                 ; preds = %"$have_gas_198", %"$have_gas_188", %"$empty_default_182"
  %"$$retval_108_200" = load %TName_Bool*, %TName_Bool** %"$retval_108", align 8
  ret %TName_Bool* %"$$retval_108_200"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_105"(%"$$fundef_105_env_159"* %0, %TName_Bool* %1) !dbg !15 {
entry:
  %"$retval_106" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %entry
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$$fundef_107_envp_165_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_107_envp_165_salloc" = call i8* @_salloc(i8* %"$$fundef_107_envp_165_load", i64 8)
  %"$$fundef_107_envp_165" = bitcast i8* %"$$fundef_107_envp_165_salloc" to %"$$fundef_107_env_158"*
  %"$$fundef_107_env_voidp_167" = bitcast %"$$fundef_107_env_158"* %"$$fundef_107_envp_165" to i8*
  %"$$fundef_107_cloval_168" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_107_env_158"*, %TName_Bool*)* @"$fundef_107" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_107_env_voidp_167", 1
  %"$$fundef_107_env_b_169" = getelementptr inbounds %"$$fundef_107_env_158", %"$$fundef_107_env_158"* %"$$fundef_107_envp_165", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_107_env_b_169", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_107_cloval_168", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_106", align 8, !dbg !16
  %"$$retval_106_170" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_106", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_106_170"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !17 {
entry:
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 5, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %entry
  %"$consume_205" = sub i64 %"$gasrem_201", 5
  store i64 %"$consume_205", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !19
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 7, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_204"
  %"$consume_210" = sub i64 %"$gasrem_206", 7
  store i64 %"$consume_210", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !19
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 1, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %"$have_gas_209"
  %"$consume_215" = sub i64 %"$gasrem_211", 1
  store i64 %"$consume_215", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_105_env_159"*, %TName_Bool*)* @"$fundef_105" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !20
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 196, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_214"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_214"
  %"$consume_223" = sub i64 %"$gasrem_219", 196
  store i64 %"$consume_223", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !19
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 20, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_222"
  %"$consume_228" = sub i64 %"$gasrem_224", 20
  store i64 %"$consume_228", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !19
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 12, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_227"
  %"$consume_233" = sub i64 %"$gasrem_229", 12
  store i64 %"$consume_233", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !19
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 2, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 2
  store i64 %"$consume_238", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !19
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !21 {
entry:
  %"$expr_109" = alloca %TName_Bool*, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %entry
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
  %test = alloca %TName_Bool*, align 8
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_252"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %"$adtval_259_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_259_salloc" = call i8* @_salloc(i8* %"$adtval_259_load", i64 1)
  %"$adtval_259" = bitcast i8* %"$adtval_259_salloc" to %CName_True*
  %"$adtgep_260" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_259", i32 0, i32 0
  store i8 0, i8* %"$adtgep_260", align 1
  %"$adtptr_261" = bitcast %CName_True* %"$adtval_259" to %TName_Bool*
  store %TName_Bool* %"$adtptr_261", %TName_Bool** %test, align 8, !dbg !22
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_257"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_265"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4, !dbg !23
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_270"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4, !dbg !24
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_280"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  %"$gasrem_292" = load i64, i64* @_gasrem, align 8
  %"$gascmp_293" = icmp ugt i64 4, %"$gasrem_292"
  br i1 %"$gascmp_293", label %"$out_of_gas_294", label %"$have_gas_295"

"$out_of_gas_294":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_295"

"$have_gas_295":                                  ; preds = %"$out_of_gas_294", %"$have_gas_290"
  %"$consume_296" = sub i64 %"$gasrem_292", 4
  store i64 %"$consume_296", i64* @_gasrem, align 8
  %"$arg1_297" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_298" = load %Uint32, %Uint32* %arg2, align 4
  %"$sub_call_299" = call %Uint32 @_sub_Uint32(%Uint32 %"$arg1_297", %Uint32 %"$arg2_298"), !dbg !25
  store %Uint32 %"$sub_call_299", %Uint32* %res, align 4, !dbg !25
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_295"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_295"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %res_, align 4, !dbg !26
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 1, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_308"
  %"$consume_314" = sub i64 %"$gasrem_310", 1
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 4, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_313"
  %"$consume_319" = sub i64 %"$gasrem_315", 4
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %"$execptr_load_320" = load i8*, i8** @_execptr, align 8
  %"$res_321" = load %Uint32, %Uint32* %res, align 4
  %"$res__322" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_323" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_320", %Uint32 %"$res_321", %Uint32 %"$res__322"), !dbg !27
  store %TName_Bool* %"$eq_call_323", %TName_Bool** %test_, align 8, !dbg !27
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_318"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$BoolUtils.andb_79" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_330" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_331" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_330", 0
  %"$BoolUtils.andb_envptr_332" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_330", 1
  %"$test_333" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_334" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_331"(i8* %"$BoolUtils.andb_envptr_332", %TName_Bool* %"$test_333"), !dbg !28
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_334", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8, !dbg !28
  %"$BoolUtils.andb_80" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_79_335" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_fptr_336" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_335", 0
  %"$$BoolUtils.andb_79_envptr_337" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_335", 1
  %"$test__338" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_79_call_339" = call %TName_Bool* %"$$BoolUtils.andb_79_fptr_336"(i8* %"$$BoolUtils.andb_79_envptr_337", %TName_Bool* %"$test__338"), !dbg !28
  store %TName_Bool* %"$$BoolUtils.andb_79_call_339", %TName_Bool** %"$BoolUtils.andb_80", align 8, !dbg !28
  %"$$BoolUtils.andb_80_340" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_80", align 8
  store %TName_Bool* %"$$BoolUtils.andb_80_340", %TName_Bool** %"$test_6", align 8, !dbg !28
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_328"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %"$arg2_7" = alloca %Int32, align 8
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg2_7", align 4, !dbg !29
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_349"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %"$arg1_8" = alloca %Int32, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_354"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  store %Int32 { i32 1843 }, %Int32* %"$arg1_8", align 4, !dbg !30
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_359"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %"$res_9" = alloca %Int32, align 8
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 4, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 4
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %"$$arg1_8_376" = load %Int32, %Int32* %"$arg1_8", align 4
  %"$$arg2_7_377" = load %Int32, %Int32* %"$arg2_7", align 4
  %"$sub_call_378" = call %Int32 @_sub_Int32(%Int32 %"$$arg1_8_376", %Int32 %"$$arg2_7_377"), !dbg !31
  store %Int32 %"$sub_call_378", %Int32* %"$res_9", align 4, !dbg !31
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_374"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$res__10" = alloca %Int32, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  store %Int32 { i32 -1 }, %Int32* %"$res__10", align 4, !dbg !32
  %"$gasrem_389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_387"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 4, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_392"
  %"$consume_398" = sub i64 %"$gasrem_394", 4
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %"$execptr_load_399" = load i8*, i8** @_execptr, align 8
  %"$$res_9_400" = load %Int32, %Int32* %"$res_9", align 4
  %"$$res__10_401" = load %Int32, %Int32* %"$res__10", align 4
  %"$eq_call_402" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_399", %Int32 %"$$res_9_400", %Int32 %"$$res__10_401"), !dbg !33
  store %TName_Bool* %"$eq_call_402", %TName_Bool** %"$test__11", align 8, !dbg !33
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_397"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$BoolUtils.andb_81" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_409" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_410" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_409", 0
  %"$BoolUtils.andb_envptr_411" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_409", 1
  %"$$test_6_412" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_413" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_410"(i8* %"$BoolUtils.andb_envptr_411", %TName_Bool* %"$$test_6_412"), !dbg !34
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_413", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_81", align 8, !dbg !34
  %"$BoolUtils.andb_82" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_81_414" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_81", align 8
  %"$$BoolUtils.andb_81_fptr_415" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_81_414", 0
  %"$$BoolUtils.andb_81_envptr_416" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_81_414", 1
  %"$$test__11_417" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_81_call_418" = call %TName_Bool* %"$$BoolUtils.andb_81_fptr_415"(i8* %"$$BoolUtils.andb_81_envptr_416", %TName_Bool* %"$$test__11_417"), !dbg !34
  store %TName_Bool* %"$$BoolUtils.andb_81_call_418", %TName_Bool** %"$BoolUtils.andb_82", align 8, !dbg !34
  %"$$BoolUtils.andb_82_419" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_82", align 8
  store %TName_Bool* %"$$BoolUtils.andb_82_419", %TName_Bool** %"$test_12", align 8, !dbg !34
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_407"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %"$arg1_13" = alloca %Uint64, align 8
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$arg1_13", align 8, !dbg !35
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %"$arg2_14" = alloca %Uint64, align 8
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_433"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  store %Uint64 { i64 -2 }, %Uint64* %"$arg2_14", align 8, !dbg !36
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_438"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_443"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  %"$res_15" = alloca %Uint64, align 8
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 4, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_448"
  %"$consume_454" = sub i64 %"$gasrem_450", 4
  store i64 %"$consume_454", i64* @_gasrem, align 8
  %"$$arg1_13_455" = load %Uint64, %Uint64* %"$arg1_13", align 8
  %"$$arg2_14_456" = load %Uint64, %Uint64* %"$arg2_14", align 8
  %"$sub_call_457" = call %Uint64 @_sub_Uint64(%Uint64 %"$$arg1_13_455", %Uint64 %"$$arg2_14_456"), !dbg !37
  store %Uint64 %"$sub_call_457", %Uint64* %"$res_15", align 8, !dbg !37
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_453"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %"$res__16" = alloca %Uint64, align 8
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_461"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %"$res__16", align 8, !dbg !38
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 4, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_471"
  %"$consume_477" = sub i64 %"$gasrem_473", 4
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %"$execptr_load_478" = load i8*, i8** @_execptr, align 8
  %"$$res_15_479" = load %Uint64, %Uint64* %"$res_15", align 8
  %"$$res__16_480" = load %Uint64, %Uint64* %"$res__16", align 8
  %"$eq_call_481" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_478", %Uint64 %"$$res_15_479", %Uint64 %"$$res__16_480"), !dbg !39
  store %TName_Bool* %"$eq_call_481", %TName_Bool** %"$test__17", align 8, !dbg !39
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_476"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %"$BoolUtils.andb_83" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_488" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_489" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_488", 0
  %"$BoolUtils.andb_envptr_490" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_488", 1
  %"$$test_12_491" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_492" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_489"(i8* %"$BoolUtils.andb_envptr_490", %TName_Bool* %"$$test_12_491"), !dbg !40
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_492", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_83", align 8, !dbg !40
  %"$BoolUtils.andb_84" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_83_493" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_83", align 8
  %"$$BoolUtils.andb_83_fptr_494" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_83_493", 0
  %"$$BoolUtils.andb_83_envptr_495" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_83_493", 1
  %"$$test__17_496" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_83_call_497" = call %TName_Bool* %"$$BoolUtils.andb_83_fptr_494"(i8* %"$$BoolUtils.andb_83_envptr_495", %TName_Bool* %"$$test__17_496"), !dbg !40
  store %TName_Bool* %"$$BoolUtils.andb_83_call_497", %TName_Bool** %"$BoolUtils.andb_84", align 8, !dbg !40
  %"$$BoolUtils.andb_84_498" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_84", align 8
  store %TName_Bool* %"$$BoolUtils.andb_84_498", %TName_Bool** %"$test_18", align 8, !dbg !40
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$have_gas_486"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  %"$arg2_19" = alloca %Int64, align 8
  %"$gasrem_504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_505" = icmp ugt i64 1, %"$gasrem_504"
  br i1 %"$gascmp_505", label %"$out_of_gas_506", label %"$have_gas_507"

"$out_of_gas_506":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_507"

"$have_gas_507":                                  ; preds = %"$out_of_gas_506", %"$have_gas_502"
  %"$consume_508" = sub i64 %"$gasrem_504", 1
  store i64 %"$consume_508", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$arg2_19", align 8, !dbg !41
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_507"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_507"
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$arg1_20" = alloca %Int64, align 8
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_512"
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$arg1_20", align 8, !dbg !42
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 1, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %"$have_gas_517"
  %"$consume_523" = sub i64 %"$gasrem_519", 1
  store i64 %"$consume_523", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_522"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %"$res_21" = alloca %Int64, align 8
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 4, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_527"
  %"$consume_533" = sub i64 %"$gasrem_529", 4
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$$arg1_20_534" = load %Int64, %Int64* %"$arg1_20", align 8
  %"$$arg2_19_535" = load %Int64, %Int64* %"$arg2_19", align 8
  %"$sub_call_536" = call %Int64 @_sub_Int64(%Int64 %"$$arg1_20_534", %Int64 %"$$arg2_19_535"), !dbg !43
  store %Int64 %"$sub_call_536", %Int64* %"$res_21", align 8, !dbg !43
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 1, %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_532"
  %"$consume_541" = sub i64 %"$gasrem_537", 1
  store i64 %"$consume_541", i64* @_gasrem, align 8
  %"$res__22" = alloca %Int64, align 8
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_540"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  store %Int64 zeroinitializer, %Int64* %"$res__22", align 8, !dbg !44
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 4, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_550"
  %"$consume_556" = sub i64 %"$gasrem_552", 4
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$execptr_load_557" = load i8*, i8** @_execptr, align 8
  %"$$res_21_558" = load %Int64, %Int64* %"$res_21", align 8
  %"$$res__22_559" = load %Int64, %Int64* %"$res__22", align 8
  %"$eq_call_560" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_557", %Int64 %"$$res_21_558", %Int64 %"$$res__22_559"), !dbg !45
  store %TName_Bool* %"$eq_call_560", %TName_Bool** %"$test__23", align 8, !dbg !45
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_555"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  %"$BoolUtils.andb_85" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_567" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_568" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_567", 0
  %"$BoolUtils.andb_envptr_569" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_567", 1
  %"$$test_18_570" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_571" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_568"(i8* %"$BoolUtils.andb_envptr_569", %TName_Bool* %"$$test_18_570"), !dbg !46
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_571", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_85", align 8, !dbg !46
  %"$BoolUtils.andb_86" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_85_572" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_85", align 8
  %"$$BoolUtils.andb_85_fptr_573" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_85_572", 0
  %"$$BoolUtils.andb_85_envptr_574" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_85_572", 1
  %"$$test__23_575" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_85_call_576" = call %TName_Bool* %"$$BoolUtils.andb_85_fptr_573"(i8* %"$$BoolUtils.andb_85_envptr_574", %TName_Bool* %"$$test__23_575"), !dbg !46
  store %TName_Bool* %"$$BoolUtils.andb_85_call_576", %TName_Bool** %"$BoolUtils.andb_86", align 8, !dbg !46
  %"$$BoolUtils.andb_86_577" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_86", align 8
  store %TName_Bool* %"$$BoolUtils.andb_86_577", %TName_Bool** %"$test_24", align 8, !dbg !46
  %"$gasrem_578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_579" = icmp ugt i64 1, %"$gasrem_578"
  br i1 %"$gascmp_579", label %"$out_of_gas_580", label %"$have_gas_581"

"$out_of_gas_580":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_581"

"$have_gas_581":                                  ; preds = %"$out_of_gas_580", %"$have_gas_565"
  %"$consume_582" = sub i64 %"$gasrem_578", 1
  store i64 %"$consume_582", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Int64, align 8
  %"$gasrem_583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_584" = icmp ugt i64 1, %"$gasrem_583"
  br i1 %"$gascmp_584", label %"$out_of_gas_585", label %"$have_gas_586"

"$out_of_gas_585":                                ; preds = %"$have_gas_581"
  call void @_out_of_gas()
  br label %"$have_gas_586"

"$have_gas_586":                                  ; preds = %"$out_of_gas_585", %"$have_gas_581"
  %"$consume_587" = sub i64 %"$gasrem_583", 1
  store i64 %"$consume_587", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775806 }, %Int64* %"$arg1_25", align 8, !dbg !47
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_586"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_586"
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Int64, align 8
  %"$gasrem_593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_594" = icmp ugt i64 1, %"$gasrem_593"
  br i1 %"$gascmp_594", label %"$out_of_gas_595", label %"$have_gas_596"

"$out_of_gas_595":                                ; preds = %"$have_gas_591"
  call void @_out_of_gas()
  br label %"$have_gas_596"

"$have_gas_596":                                  ; preds = %"$out_of_gas_595", %"$have_gas_591"
  %"$consume_597" = sub i64 %"$gasrem_593", 1
  store i64 %"$consume_597", i64* @_gasrem, align 8
  store %Int64 { i64 -1 }, %Int64* %"$arg2_26", align 8, !dbg !48
  %"$gasrem_598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_599" = icmp ugt i64 1, %"$gasrem_598"
  br i1 %"$gascmp_599", label %"$out_of_gas_600", label %"$have_gas_601"

"$out_of_gas_600":                                ; preds = %"$have_gas_596"
  call void @_out_of_gas()
  br label %"$have_gas_601"

"$have_gas_601":                                  ; preds = %"$out_of_gas_600", %"$have_gas_596"
  %"$consume_602" = sub i64 %"$gasrem_598", 1
  store i64 %"$consume_602", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  %"$gasrem_603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_604" = icmp ugt i64 1, %"$gasrem_603"
  br i1 %"$gascmp_604", label %"$out_of_gas_605", label %"$have_gas_606"

"$out_of_gas_605":                                ; preds = %"$have_gas_601"
  call void @_out_of_gas()
  br label %"$have_gas_606"

"$have_gas_606":                                  ; preds = %"$out_of_gas_605", %"$have_gas_601"
  %"$consume_607" = sub i64 %"$gasrem_603", 1
  store i64 %"$consume_607", i64* @_gasrem, align 8
  %"$res_27" = alloca %Int64, align 8
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 4, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_606"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_606"
  %"$consume_612" = sub i64 %"$gasrem_608", 4
  store i64 %"$consume_612", i64* @_gasrem, align 8
  %"$$arg1_25_613" = load %Int64, %Int64* %"$arg1_25", align 8
  %"$$arg2_26_614" = load %Int64, %Int64* %"$arg2_26", align 8
  %"$sub_call_615" = call %Int64 @_sub_Int64(%Int64 %"$$arg1_25_613", %Int64 %"$$arg2_26_614"), !dbg !49
  store %Int64 %"$sub_call_615", %Int64* %"$res_27", align 8, !dbg !49
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %"$have_gas_611"
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %"$have_gas_611"
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %"$res__28" = alloca %Int64, align 8
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_619"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$res__28", align 8, !dbg !50
  %"$gasrem_626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_627" = icmp ugt i64 1, %"$gasrem_626"
  br i1 %"$gascmp_627", label %"$out_of_gas_628", label %"$have_gas_629"

"$out_of_gas_628":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_629"

"$have_gas_629":                                  ; preds = %"$out_of_gas_628", %"$have_gas_624"
  %"$consume_630" = sub i64 %"$gasrem_626", 1
  store i64 %"$consume_630", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  %"$gasrem_631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_632" = icmp ugt i64 4, %"$gasrem_631"
  br i1 %"$gascmp_632", label %"$out_of_gas_633", label %"$have_gas_634"

"$out_of_gas_633":                                ; preds = %"$have_gas_629"
  call void @_out_of_gas()
  br label %"$have_gas_634"

"$have_gas_634":                                  ; preds = %"$out_of_gas_633", %"$have_gas_629"
  %"$consume_635" = sub i64 %"$gasrem_631", 4
  store i64 %"$consume_635", i64* @_gasrem, align 8
  %"$execptr_load_636" = load i8*, i8** @_execptr, align 8
  %"$$res_27_637" = load %Int64, %Int64* %"$res_27", align 8
  %"$$res__28_638" = load %Int64, %Int64* %"$res__28", align 8
  %"$eq_call_639" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_636", %Int64 %"$$res_27_637", %Int64 %"$$res__28_638"), !dbg !51
  store %TName_Bool* %"$eq_call_639", %TName_Bool** %"$test__29", align 8, !dbg !51
  %"$gasrem_641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_642" = icmp ugt i64 1, %"$gasrem_641"
  br i1 %"$gascmp_642", label %"$out_of_gas_643", label %"$have_gas_644"

"$out_of_gas_643":                                ; preds = %"$have_gas_634"
  call void @_out_of_gas()
  br label %"$have_gas_644"

"$have_gas_644":                                  ; preds = %"$out_of_gas_643", %"$have_gas_634"
  %"$consume_645" = sub i64 %"$gasrem_641", 1
  store i64 %"$consume_645", i64* @_gasrem, align 8
  %"$BoolUtils.andb_87" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_646" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_647" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_646", 0
  %"$BoolUtils.andb_envptr_648" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_646", 1
  %"$$test_24_649" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_650" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_647"(i8* %"$BoolUtils.andb_envptr_648", %TName_Bool* %"$$test_24_649"), !dbg !52
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_650", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_87", align 8, !dbg !52
  %"$BoolUtils.andb_88" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_87_651" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_87", align 8
  %"$$BoolUtils.andb_87_fptr_652" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_87_651", 0
  %"$$BoolUtils.andb_87_envptr_653" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_87_651", 1
  %"$$test__29_654" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_87_call_655" = call %TName_Bool* %"$$BoolUtils.andb_87_fptr_652"(i8* %"$$BoolUtils.andb_87_envptr_653", %TName_Bool* %"$$test__29_654"), !dbg !52
  store %TName_Bool* %"$$BoolUtils.andb_87_call_655", %TName_Bool** %"$BoolUtils.andb_88", align 8, !dbg !52
  %"$$BoolUtils.andb_88_656" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_88", align 8
  store %TName_Bool* %"$$BoolUtils.andb_88_656", %TName_Bool** %"$test_30", align 8, !dbg !52
  %"$gasrem_657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_658" = icmp ugt i64 1, %"$gasrem_657"
  br i1 %"$gascmp_658", label %"$out_of_gas_659", label %"$have_gas_660"

"$out_of_gas_659":                                ; preds = %"$have_gas_644"
  call void @_out_of_gas()
  br label %"$have_gas_660"

"$have_gas_660":                                  ; preds = %"$out_of_gas_659", %"$have_gas_644"
  %"$consume_661" = sub i64 %"$gasrem_657", 1
  store i64 %"$consume_661", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Uint128, align 8
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 1, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_660"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_660"
  %"$consume_666" = sub i64 %"$gasrem_662", 1
  store i64 %"$consume_666", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$arg1_31", align 8, !dbg !53
  %"$gasrem_667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_668" = icmp ugt i64 1, %"$gasrem_667"
  br i1 %"$gascmp_668", label %"$out_of_gas_669", label %"$have_gas_670"

"$out_of_gas_669":                                ; preds = %"$have_gas_665"
  call void @_out_of_gas()
  br label %"$have_gas_670"

"$have_gas_670":                                  ; preds = %"$out_of_gas_669", %"$have_gas_665"
  %"$consume_671" = sub i64 %"$gasrem_667", 1
  store i64 %"$consume_671", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Uint128, align 8
  %"$gasrem_672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_673" = icmp ugt i64 1, %"$gasrem_672"
  br i1 %"$gascmp_673", label %"$out_of_gas_674", label %"$have_gas_675"

"$out_of_gas_674":                                ; preds = %"$have_gas_670"
  call void @_out_of_gas()
  br label %"$have_gas_675"

"$have_gas_675":                                  ; preds = %"$out_of_gas_674", %"$have_gas_670"
  %"$consume_676" = sub i64 %"$gasrem_672", 1
  store i64 %"$consume_676", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %"$arg2_32", align 8, !dbg !54
  %"$gasrem_677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_678" = icmp ugt i64 1, %"$gasrem_677"
  br i1 %"$gascmp_678", label %"$out_of_gas_679", label %"$have_gas_680"

"$out_of_gas_679":                                ; preds = %"$have_gas_675"
  call void @_out_of_gas()
  br label %"$have_gas_680"

"$have_gas_680":                                  ; preds = %"$out_of_gas_679", %"$have_gas_675"
  %"$consume_681" = sub i64 %"$gasrem_677", 1
  store i64 %"$consume_681", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  %"$gasrem_682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_683" = icmp ugt i64 1, %"$gasrem_682"
  br i1 %"$gascmp_683", label %"$out_of_gas_684", label %"$have_gas_685"

"$out_of_gas_684":                                ; preds = %"$have_gas_680"
  call void @_out_of_gas()
  br label %"$have_gas_685"

"$have_gas_685":                                  ; preds = %"$out_of_gas_684", %"$have_gas_680"
  %"$consume_686" = sub i64 %"$gasrem_682", 1
  store i64 %"$consume_686", i64* @_gasrem, align 8
  %"$res_33" = alloca %Uint128, align 8
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 8, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_685"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_685"
  %"$consume_692" = sub i64 %"$gasrem_688", 8
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %"$$arg1_31_693" = load %Uint128, %Uint128* %"$arg1_31", align 8
  %"$$arg2_32_694" = load %Uint128, %Uint128* %"$arg2_32", align 8
  %"$sub_call_695" = call %Uint128 @_sub_Uint128(%Uint128 %"$$arg1_31_693", %Uint128 %"$$arg2_32_694"), !dbg !55
  store %Uint128 %"$sub_call_695", %Uint128* %"$res_33", align 8, !dbg !55
  %"$gasrem_696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_697" = icmp ugt i64 1, %"$gasrem_696"
  br i1 %"$gascmp_697", label %"$out_of_gas_698", label %"$have_gas_699"

"$out_of_gas_698":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_699"

"$have_gas_699":                                  ; preds = %"$out_of_gas_698", %"$have_gas_691"
  %"$consume_700" = sub i64 %"$gasrem_696", 1
  store i64 %"$consume_700", i64* @_gasrem, align 8
  %"$res__34" = alloca %Uint128, align 8
  %"$gasrem_701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_702" = icmp ugt i64 1, %"$gasrem_701"
  br i1 %"$gascmp_702", label %"$out_of_gas_703", label %"$have_gas_704"

"$out_of_gas_703":                                ; preds = %"$have_gas_699"
  call void @_out_of_gas()
  br label %"$have_gas_704"

"$have_gas_704":                                  ; preds = %"$out_of_gas_703", %"$have_gas_699"
  %"$consume_705" = sub i64 %"$gasrem_701", 1
  store i64 %"$consume_705", i64* @_gasrem, align 8
  store %Uint128 { i128 -2 }, %Uint128* %"$res__34", align 8, !dbg !56
  %"$gasrem_706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_707" = icmp ugt i64 1, %"$gasrem_706"
  br i1 %"$gascmp_707", label %"$out_of_gas_708", label %"$have_gas_709"

"$out_of_gas_708":                                ; preds = %"$have_gas_704"
  call void @_out_of_gas()
  br label %"$have_gas_709"

"$have_gas_709":                                  ; preds = %"$out_of_gas_708", %"$have_gas_704"
  %"$consume_710" = sub i64 %"$gasrem_706", 1
  store i64 %"$consume_710", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 8, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_709"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_709"
  %"$consume_716" = sub i64 %"$gasrem_712", 8
  store i64 %"$consume_716", i64* @_gasrem, align 8
  %"$execptr_load_717" = load i8*, i8** @_execptr, align 8
  %"$$res_33_718" = load %Uint128, %Uint128* %"$res_33", align 8
  %"$$res__34_719" = load %Uint128, %Uint128* %"$res__34", align 8
  %"$eq_call_720" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_717", %Uint128 %"$$res_33_718", %Uint128 %"$$res__34_719"), !dbg !57
  store %TName_Bool* %"$eq_call_720", %TName_Bool** %"$test__35", align 8, !dbg !57
  %"$gasrem_722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_723" = icmp ugt i64 1, %"$gasrem_722"
  br i1 %"$gascmp_723", label %"$out_of_gas_724", label %"$have_gas_725"

"$out_of_gas_724":                                ; preds = %"$have_gas_715"
  call void @_out_of_gas()
  br label %"$have_gas_725"

"$have_gas_725":                                  ; preds = %"$out_of_gas_724", %"$have_gas_715"
  %"$consume_726" = sub i64 %"$gasrem_722", 1
  store i64 %"$consume_726", i64* @_gasrem, align 8
  %"$BoolUtils.andb_89" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_727" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_728" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_727", 0
  %"$BoolUtils.andb_envptr_729" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_727", 1
  %"$$test_30_730" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_731" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_728"(i8* %"$BoolUtils.andb_envptr_729", %TName_Bool* %"$$test_30_730"), !dbg !58
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_731", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_89", align 8, !dbg !58
  %"$BoolUtils.andb_90" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_89_732" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_89", align 8
  %"$$BoolUtils.andb_89_fptr_733" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_89_732", 0
  %"$$BoolUtils.andb_89_envptr_734" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_89_732", 1
  %"$$test__35_735" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_89_call_736" = call %TName_Bool* %"$$BoolUtils.andb_89_fptr_733"(i8* %"$$BoolUtils.andb_89_envptr_734", %TName_Bool* %"$$test__35_735"), !dbg !58
  store %TName_Bool* %"$$BoolUtils.andb_89_call_736", %TName_Bool** %"$BoolUtils.andb_90", align 8, !dbg !58
  %"$$BoolUtils.andb_90_737" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_90", align 8
  store %TName_Bool* %"$$BoolUtils.andb_90_737", %TName_Bool** %"$test_36", align 8, !dbg !58
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_725"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_725"
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Uint128, align 8
  %"$gasrem_743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_744" = icmp ugt i64 1, %"$gasrem_743"
  br i1 %"$gascmp_744", label %"$out_of_gas_745", label %"$have_gas_746"

"$out_of_gas_745":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_746"

"$have_gas_746":                                  ; preds = %"$out_of_gas_745", %"$have_gas_741"
  %"$consume_747" = sub i64 %"$gasrem_743", 1
  store i64 %"$consume_747", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$arg1_37", align 8, !dbg !59
  %"$gasrem_748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_749" = icmp ugt i64 1, %"$gasrem_748"
  br i1 %"$gascmp_749", label %"$out_of_gas_750", label %"$have_gas_751"

"$out_of_gas_750":                                ; preds = %"$have_gas_746"
  call void @_out_of_gas()
  br label %"$have_gas_751"

"$have_gas_751":                                  ; preds = %"$out_of_gas_750", %"$have_gas_746"
  %"$consume_752" = sub i64 %"$gasrem_748", 1
  store i64 %"$consume_752", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Uint128, align 8
  %"$gasrem_753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_754" = icmp ugt i64 1, %"$gasrem_753"
  br i1 %"$gascmp_754", label %"$out_of_gas_755", label %"$have_gas_756"

"$out_of_gas_755":                                ; preds = %"$have_gas_751"
  call void @_out_of_gas()
  br label %"$have_gas_756"

"$have_gas_756":                                  ; preds = %"$out_of_gas_755", %"$have_gas_751"
  %"$consume_757" = sub i64 %"$gasrem_753", 1
  store i64 %"$consume_757", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$arg2_38", align 8, !dbg !60
  %"$gasrem_758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_759" = icmp ugt i64 1, %"$gasrem_758"
  br i1 %"$gascmp_759", label %"$out_of_gas_760", label %"$have_gas_761"

"$out_of_gas_760":                                ; preds = %"$have_gas_756"
  call void @_out_of_gas()
  br label %"$have_gas_761"

"$have_gas_761":                                  ; preds = %"$out_of_gas_760", %"$have_gas_756"
  %"$consume_762" = sub i64 %"$gasrem_758", 1
  store i64 %"$consume_762", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  %"$gasrem_763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_764" = icmp ugt i64 1, %"$gasrem_763"
  br i1 %"$gascmp_764", label %"$out_of_gas_765", label %"$have_gas_766"

"$out_of_gas_765":                                ; preds = %"$have_gas_761"
  call void @_out_of_gas()
  br label %"$have_gas_766"

"$have_gas_766":                                  ; preds = %"$out_of_gas_765", %"$have_gas_761"
  %"$consume_767" = sub i64 %"$gasrem_763", 1
  store i64 %"$consume_767", i64* @_gasrem, align 8
  %"$res_39" = alloca %Uint128, align 8
  %"$gasrem_769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_770" = icmp ugt i64 8, %"$gasrem_769"
  br i1 %"$gascmp_770", label %"$out_of_gas_771", label %"$have_gas_772"

"$out_of_gas_771":                                ; preds = %"$have_gas_766"
  call void @_out_of_gas()
  br label %"$have_gas_772"

"$have_gas_772":                                  ; preds = %"$out_of_gas_771", %"$have_gas_766"
  %"$consume_773" = sub i64 %"$gasrem_769", 8
  store i64 %"$consume_773", i64* @_gasrem, align 8
  %"$$arg1_37_774" = load %Uint128, %Uint128* %"$arg1_37", align 8
  %"$$arg2_38_775" = load %Uint128, %Uint128* %"$arg2_38", align 8
  %"$sub_call_776" = call %Uint128 @_sub_Uint128(%Uint128 %"$$arg1_37_774", %Uint128 %"$$arg2_38_775"), !dbg !61
  store %Uint128 %"$sub_call_776", %Uint128* %"$res_39", align 8, !dbg !61
  %"$gasrem_777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_778" = icmp ugt i64 1, %"$gasrem_777"
  br i1 %"$gascmp_778", label %"$out_of_gas_779", label %"$have_gas_780"

"$out_of_gas_779":                                ; preds = %"$have_gas_772"
  call void @_out_of_gas()
  br label %"$have_gas_780"

"$have_gas_780":                                  ; preds = %"$out_of_gas_779", %"$have_gas_772"
  %"$consume_781" = sub i64 %"$gasrem_777", 1
  store i64 %"$consume_781", i64* @_gasrem, align 8
  %"$res__40" = alloca %Uint128, align 8
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 1, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$have_gas_780"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$have_gas_780"
  %"$consume_786" = sub i64 %"$gasrem_782", 1
  store i64 %"$consume_786", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$res__40", align 8, !dbg !62
  %"$gasrem_787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_788" = icmp ugt i64 1, %"$gasrem_787"
  br i1 %"$gascmp_788", label %"$out_of_gas_789", label %"$have_gas_790"

"$out_of_gas_789":                                ; preds = %"$have_gas_785"
  call void @_out_of_gas()
  br label %"$have_gas_790"

"$have_gas_790":                                  ; preds = %"$out_of_gas_789", %"$have_gas_785"
  %"$consume_791" = sub i64 %"$gasrem_787", 1
  store i64 %"$consume_791", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  %"$gasrem_793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_794" = icmp ugt i64 8, %"$gasrem_793"
  br i1 %"$gascmp_794", label %"$out_of_gas_795", label %"$have_gas_796"

"$out_of_gas_795":                                ; preds = %"$have_gas_790"
  call void @_out_of_gas()
  br label %"$have_gas_796"

"$have_gas_796":                                  ; preds = %"$out_of_gas_795", %"$have_gas_790"
  %"$consume_797" = sub i64 %"$gasrem_793", 8
  store i64 %"$consume_797", i64* @_gasrem, align 8
  %"$execptr_load_798" = load i8*, i8** @_execptr, align 8
  %"$$res_39_799" = load %Uint128, %Uint128* %"$res_39", align 8
  %"$$res__40_800" = load %Uint128, %Uint128* %"$res__40", align 8
  %"$eq_call_801" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_798", %Uint128 %"$$res_39_799", %Uint128 %"$$res__40_800"), !dbg !63
  store %TName_Bool* %"$eq_call_801", %TName_Bool** %"$test__41", align 8, !dbg !63
  %"$gasrem_803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_804" = icmp ugt i64 1, %"$gasrem_803"
  br i1 %"$gascmp_804", label %"$out_of_gas_805", label %"$have_gas_806"

"$out_of_gas_805":                                ; preds = %"$have_gas_796"
  call void @_out_of_gas()
  br label %"$have_gas_806"

"$have_gas_806":                                  ; preds = %"$out_of_gas_805", %"$have_gas_796"
  %"$consume_807" = sub i64 %"$gasrem_803", 1
  store i64 %"$consume_807", i64* @_gasrem, align 8
  %"$BoolUtils.andb_91" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_808" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_809" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_808", 0
  %"$BoolUtils.andb_envptr_810" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_808", 1
  %"$$test_36_811" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_812" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_809"(i8* %"$BoolUtils.andb_envptr_810", %TName_Bool* %"$$test_36_811"), !dbg !64
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_812", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_91", align 8, !dbg !64
  %"$BoolUtils.andb_92" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_91_813" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_91", align 8
  %"$$BoolUtils.andb_91_fptr_814" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_91_813", 0
  %"$$BoolUtils.andb_91_envptr_815" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_91_813", 1
  %"$$test__41_816" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_91_call_817" = call %TName_Bool* %"$$BoolUtils.andb_91_fptr_814"(i8* %"$$BoolUtils.andb_91_envptr_815", %TName_Bool* %"$$test__41_816"), !dbg !64
  store %TName_Bool* %"$$BoolUtils.andb_91_call_817", %TName_Bool** %"$BoolUtils.andb_92", align 8, !dbg !64
  %"$$BoolUtils.andb_92_818" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_92", align 8
  store %TName_Bool* %"$$BoolUtils.andb_92_818", %TName_Bool** %"$test_42", align 8, !dbg !64
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 1, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$have_gas_806"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$have_gas_806"
  %"$consume_823" = sub i64 %"$gasrem_819", 1
  store i64 %"$consume_823", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Uint256, align 8
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 1, %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_822"
  %"$consume_828" = sub i64 %"$gasrem_824", 1
  store i64 %"$consume_828", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211455 }, %Uint256* %"$arg1_43", align 8, !dbg !65
  %"$gasrem_829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_830" = icmp ugt i64 1, %"$gasrem_829"
  br i1 %"$gascmp_830", label %"$out_of_gas_831", label %"$have_gas_832"

"$out_of_gas_831":                                ; preds = %"$have_gas_827"
  call void @_out_of_gas()
  br label %"$have_gas_832"

"$have_gas_832":                                  ; preds = %"$out_of_gas_831", %"$have_gas_827"
  %"$consume_833" = sub i64 %"$gasrem_829", 1
  store i64 %"$consume_833", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Uint256, align 8
  %"$gasrem_834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_835" = icmp ugt i64 1, %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %"$have_gas_832"
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %"$have_gas_832"
  %"$consume_838" = sub i64 %"$gasrem_834", 1
  store i64 %"$consume_838", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$arg2_44", align 8, !dbg !66
  %"$gasrem_839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_840" = icmp ugt i64 1, %"$gasrem_839"
  br i1 %"$gascmp_840", label %"$out_of_gas_841", label %"$have_gas_842"

"$out_of_gas_841":                                ; preds = %"$have_gas_837"
  call void @_out_of_gas()
  br label %"$have_gas_842"

"$have_gas_842":                                  ; preds = %"$out_of_gas_841", %"$have_gas_837"
  %"$consume_843" = sub i64 %"$gasrem_839", 1
  store i64 %"$consume_843", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 1, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$have_gas_842"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$have_gas_842"
  %"$consume_848" = sub i64 %"$gasrem_844", 1
  store i64 %"$consume_848", i64* @_gasrem, align 8
  %"$res_45" = alloca %Uint256, align 8
  %"$gasrem_850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_851" = icmp ugt i64 16, %"$gasrem_850"
  br i1 %"$gascmp_851", label %"$out_of_gas_852", label %"$have_gas_853"

"$out_of_gas_852":                                ; preds = %"$have_gas_847"
  call void @_out_of_gas()
  br label %"$have_gas_853"

"$have_gas_853":                                  ; preds = %"$out_of_gas_852", %"$have_gas_847"
  %"$consume_854" = sub i64 %"$gasrem_850", 16
  store i64 %"$consume_854", i64* @_gasrem, align 8
  %"$execptr_load_855" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_43_856" = alloca %Uint256, align 8
  %"$$arg1_43_857" = load %Uint256, %Uint256* %"$arg1_43", align 8
  store %Uint256 %"$$arg1_43_857", %Uint256* %"$sub_$arg1_43_856", align 8
  %"$sub_$arg2_44_858" = alloca %Uint256, align 8
  %"$$arg2_44_859" = load %Uint256, %Uint256* %"$arg2_44", align 8
  store %Uint256 %"$$arg2_44_859", %Uint256* %"$sub_$arg2_44_858", align 8
  %"$sub_call_860" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_855", %Uint256* %"$sub_$arg1_43_856", %Uint256* %"$sub_$arg2_44_858"), !dbg !67
  %"$sub_862" = load %Uint256, %Uint256* %"$sub_call_860", align 8
  store %Uint256 %"$sub_862", %Uint256* %"$res_45", align 8, !dbg !67
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 1, %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_853"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_853"
  %"$consume_867" = sub i64 %"$gasrem_863", 1
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %"$res__46" = alloca %Uint256, align 8
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 1, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$have_gas_866"
  %"$consume_872" = sub i64 %"$gasrem_868", 1
  store i64 %"$consume_872", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211454 }, %Uint256* %"$res__46", align 8, !dbg !68
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_871"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  %"$gasrem_879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_880" = icmp ugt i64 16, %"$gasrem_879"
  br i1 %"$gascmp_880", label %"$out_of_gas_881", label %"$have_gas_882"

"$out_of_gas_881":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_882"

"$have_gas_882":                                  ; preds = %"$out_of_gas_881", %"$have_gas_876"
  %"$consume_883" = sub i64 %"$gasrem_879", 16
  store i64 %"$consume_883", i64* @_gasrem, align 8
  %"$execptr_load_884" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_45_885" = alloca %Uint256, align 8
  %"$$res_45_886" = load %Uint256, %Uint256* %"$res_45", align 8
  store %Uint256 %"$$res_45_886", %Uint256* %"$eq_$res_45_885", align 8
  %"$eq_$res__46_887" = alloca %Uint256, align 8
  %"$$res__46_888" = load %Uint256, %Uint256* %"$res__46", align 8
  store %Uint256 %"$$res__46_888", %Uint256* %"$eq_$res__46_887", align 8
  %"$eq_call_889" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_884", %Uint256* %"$eq_$res_45_885", %Uint256* %"$eq_$res__46_887"), !dbg !69
  store %TName_Bool* %"$eq_call_889", %TName_Bool** %"$test__47", align 8, !dbg !69
  %"$gasrem_891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_892" = icmp ugt i64 1, %"$gasrem_891"
  br i1 %"$gascmp_892", label %"$out_of_gas_893", label %"$have_gas_894"

"$out_of_gas_893":                                ; preds = %"$have_gas_882"
  call void @_out_of_gas()
  br label %"$have_gas_894"

"$have_gas_894":                                  ; preds = %"$out_of_gas_893", %"$have_gas_882"
  %"$consume_895" = sub i64 %"$gasrem_891", 1
  store i64 %"$consume_895", i64* @_gasrem, align 8
  %"$BoolUtils.andb_93" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_896" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_897" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_896", 0
  %"$BoolUtils.andb_envptr_898" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_896", 1
  %"$$test_42_899" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_900" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_897"(i8* %"$BoolUtils.andb_envptr_898", %TName_Bool* %"$$test_42_899"), !dbg !70
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_900", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_93", align 8, !dbg !70
  %"$BoolUtils.andb_94" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_93_901" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_93", align 8
  %"$$BoolUtils.andb_93_fptr_902" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_93_901", 0
  %"$$BoolUtils.andb_93_envptr_903" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_93_901", 1
  %"$$test__47_904" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_93_call_905" = call %TName_Bool* %"$$BoolUtils.andb_93_fptr_902"(i8* %"$$BoolUtils.andb_93_envptr_903", %TName_Bool* %"$$test__47_904"), !dbg !70
  store %TName_Bool* %"$$BoolUtils.andb_93_call_905", %TName_Bool** %"$BoolUtils.andb_94", align 8, !dbg !70
  %"$$BoolUtils.andb_94_906" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_94", align 8
  store %TName_Bool* %"$$BoolUtils.andb_94_906", %TName_Bool** %"$test_48", align 8, !dbg !70
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_894"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_894"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Uint256, align 8
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 1, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_910"
  %"$consume_916" = sub i64 %"$gasrem_912", 1
  store i64 %"$consume_916", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg1_49", align 8, !dbg !71
  %"$gasrem_917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_918" = icmp ugt i64 1, %"$gasrem_917"
  br i1 %"$gascmp_918", label %"$out_of_gas_919", label %"$have_gas_920"

"$out_of_gas_919":                                ; preds = %"$have_gas_915"
  call void @_out_of_gas()
  br label %"$have_gas_920"

"$have_gas_920":                                  ; preds = %"$out_of_gas_919", %"$have_gas_915"
  %"$consume_921" = sub i64 %"$gasrem_917", 1
  store i64 %"$consume_921", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Uint256, align 8
  %"$gasrem_922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_923" = icmp ugt i64 1, %"$gasrem_922"
  br i1 %"$gascmp_923", label %"$out_of_gas_924", label %"$have_gas_925"

"$out_of_gas_924":                                ; preds = %"$have_gas_920"
  call void @_out_of_gas()
  br label %"$have_gas_925"

"$have_gas_925":                                  ; preds = %"$out_of_gas_924", %"$have_gas_920"
  %"$consume_926" = sub i64 %"$gasrem_922", 1
  store i64 %"$consume_926", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg2_50", align 8, !dbg !72
  %"$gasrem_927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_928" = icmp ugt i64 1, %"$gasrem_927"
  br i1 %"$gascmp_928", label %"$out_of_gas_929", label %"$have_gas_930"

"$out_of_gas_929":                                ; preds = %"$have_gas_925"
  call void @_out_of_gas()
  br label %"$have_gas_930"

"$have_gas_930":                                  ; preds = %"$out_of_gas_929", %"$have_gas_925"
  %"$consume_931" = sub i64 %"$gasrem_927", 1
  store i64 %"$consume_931", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  %"$gasrem_932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_933" = icmp ugt i64 1, %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$have_gas_930"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$have_gas_930"
  %"$consume_936" = sub i64 %"$gasrem_932", 1
  store i64 %"$consume_936", i64* @_gasrem, align 8
  %"$res_51" = alloca %Uint256, align 8
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 16, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_935"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_935"
  %"$consume_942" = sub i64 %"$gasrem_938", 16
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %"$execptr_load_943" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_49_944" = alloca %Uint256, align 8
  %"$$arg1_49_945" = load %Uint256, %Uint256* %"$arg1_49", align 8
  store %Uint256 %"$$arg1_49_945", %Uint256* %"$sub_$arg1_49_944", align 8
  %"$sub_$arg2_50_946" = alloca %Uint256, align 8
  %"$$arg2_50_947" = load %Uint256, %Uint256* %"$arg2_50", align 8
  store %Uint256 %"$$arg2_50_947", %Uint256* %"$sub_$arg2_50_946", align 8
  %"$sub_call_948" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_943", %Uint256* %"$sub_$arg1_49_944", %Uint256* %"$sub_$arg2_50_946"), !dbg !73
  %"$sub_950" = load %Uint256, %Uint256* %"$sub_call_948", align 8
  store %Uint256 %"$sub_950", %Uint256* %"$res_51", align 8, !dbg !73
  %"$gasrem_951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_952" = icmp ugt i64 1, %"$gasrem_951"
  br i1 %"$gascmp_952", label %"$out_of_gas_953", label %"$have_gas_954"

"$out_of_gas_953":                                ; preds = %"$have_gas_941"
  call void @_out_of_gas()
  br label %"$have_gas_954"

"$have_gas_954":                                  ; preds = %"$out_of_gas_953", %"$have_gas_941"
  %"$consume_955" = sub i64 %"$gasrem_951", 1
  store i64 %"$consume_955", i64* @_gasrem, align 8
  %"$res__52" = alloca %Uint256, align 8
  %"$gasrem_956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_957" = icmp ugt i64 1, %"$gasrem_956"
  br i1 %"$gascmp_957", label %"$out_of_gas_958", label %"$have_gas_959"

"$out_of_gas_958":                                ; preds = %"$have_gas_954"
  call void @_out_of_gas()
  br label %"$have_gas_959"

"$have_gas_959":                                  ; preds = %"$out_of_gas_958", %"$have_gas_954"
  %"$consume_960" = sub i64 %"$gasrem_956", 1
  store i64 %"$consume_960", i64* @_gasrem, align 8
  store %Uint256 zeroinitializer, %Uint256* %"$res__52", align 8, !dbg !74
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
  %"$gasrem_967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_968" = icmp ugt i64 16, %"$gasrem_967"
  br i1 %"$gascmp_968", label %"$out_of_gas_969", label %"$have_gas_970"

"$out_of_gas_969":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_970"

"$have_gas_970":                                  ; preds = %"$out_of_gas_969", %"$have_gas_964"
  %"$consume_971" = sub i64 %"$gasrem_967", 16
  store i64 %"$consume_971", i64* @_gasrem, align 8
  %"$execptr_load_972" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_973" = alloca %Uint256, align 8
  %"$$res_51_974" = load %Uint256, %Uint256* %"$res_51", align 8
  store %Uint256 %"$$res_51_974", %Uint256* %"$eq_$res_51_973", align 8
  %"$eq_$res__52_975" = alloca %Uint256, align 8
  %"$$res__52_976" = load %Uint256, %Uint256* %"$res__52", align 8
  store %Uint256 %"$$res__52_976", %Uint256* %"$eq_$res__52_975", align 8
  %"$eq_call_977" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_972", %Uint256* %"$eq_$res_51_973", %Uint256* %"$eq_$res__52_975"), !dbg !75
  store %TName_Bool* %"$eq_call_977", %TName_Bool** %"$test__53", align 8, !dbg !75
  %"$gasrem_979" = load i64, i64* @_gasrem, align 8
  %"$gascmp_980" = icmp ugt i64 1, %"$gasrem_979"
  br i1 %"$gascmp_980", label %"$out_of_gas_981", label %"$have_gas_982"

"$out_of_gas_981":                                ; preds = %"$have_gas_970"
  call void @_out_of_gas()
  br label %"$have_gas_982"

"$have_gas_982":                                  ; preds = %"$out_of_gas_981", %"$have_gas_970"
  %"$consume_983" = sub i64 %"$gasrem_979", 1
  store i64 %"$consume_983", i64* @_gasrem, align 8
  %"$BoolUtils.andb_95" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_984" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_985" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_984", 0
  %"$BoolUtils.andb_envptr_986" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_984", 1
  %"$$test_48_987" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_988" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_985"(i8* %"$BoolUtils.andb_envptr_986", %TName_Bool* %"$$test_48_987"), !dbg !76
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_988", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_95", align 8, !dbg !76
  %"$BoolUtils.andb_96" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_95_989" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_95", align 8
  %"$$BoolUtils.andb_95_fptr_990" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_95_989", 0
  %"$$BoolUtils.andb_95_envptr_991" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_95_989", 1
  %"$$test__53_992" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_95_call_993" = call %TName_Bool* %"$$BoolUtils.andb_95_fptr_990"(i8* %"$$BoolUtils.andb_95_envptr_991", %TName_Bool* %"$$test__53_992"), !dbg !76
  store %TName_Bool* %"$$BoolUtils.andb_95_call_993", %TName_Bool** %"$BoolUtils.andb_96", align 8, !dbg !76
  %"$$BoolUtils.andb_96_994" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_96", align 8
  store %TName_Bool* %"$$BoolUtils.andb_96_994", %TName_Bool** %"$test_54", align 8, !dbg !76
  %"$gasrem_995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_996" = icmp ugt i64 1, %"$gasrem_995"
  br i1 %"$gascmp_996", label %"$out_of_gas_997", label %"$have_gas_998"

"$out_of_gas_997":                                ; preds = %"$have_gas_982"
  call void @_out_of_gas()
  br label %"$have_gas_998"

"$have_gas_998":                                  ; preds = %"$out_of_gas_997", %"$have_gas_982"
  %"$consume_999" = sub i64 %"$gasrem_995", 1
  store i64 %"$consume_999", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Uint256, align 8
  %"$gasrem_1000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1001" = icmp ugt i64 1, %"$gasrem_1000"
  br i1 %"$gascmp_1001", label %"$out_of_gas_1002", label %"$have_gas_1003"

"$out_of_gas_1002":                               ; preds = %"$have_gas_998"
  call void @_out_of_gas()
  br label %"$have_gas_1003"

"$have_gas_1003":                                 ; preds = %"$out_of_gas_1002", %"$have_gas_998"
  %"$consume_1004" = sub i64 %"$gasrem_1000", 1
  store i64 %"$consume_1004", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg1_55", align 8, !dbg !77
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$have_gas_1003"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$have_gas_1003"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Uint256, align 8
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$have_gas_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  store %Uint256 { i256 -2 }, %Uint256* %"$arg2_56", align 8, !dbg !78
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$have_gas_1013"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 1, %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %"$have_gas_1018"
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %"$have_gas_1018"
  %"$consume_1024" = sub i64 %"$gasrem_1020", 1
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  %"$res_57" = alloca %Uint256, align 8
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
  %"$sub_$arg1_55_1032" = alloca %Uint256, align 8
  %"$$arg1_55_1033" = load %Uint256, %Uint256* %"$arg1_55", align 8
  store %Uint256 %"$$arg1_55_1033", %Uint256* %"$sub_$arg1_55_1032", align 8
  %"$sub_$arg2_56_1034" = alloca %Uint256, align 8
  %"$$arg2_56_1035" = load %Uint256, %Uint256* %"$arg2_56", align 8
  store %Uint256 %"$$arg2_56_1035", %Uint256* %"$sub_$arg2_56_1034", align 8
  %"$sub_call_1036" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_1031", %Uint256* %"$sub_$arg1_55_1032", %Uint256* %"$sub_$arg2_56_1034"), !dbg !79
  %"$sub_1038" = load %Uint256, %Uint256* %"$sub_call_1036", align 8
  store %Uint256 %"$sub_1038", %Uint256* %"$res_57", align 8, !dbg !79
  %"$gasrem_1039" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1040" = icmp ugt i64 1, %"$gasrem_1039"
  br i1 %"$gascmp_1040", label %"$out_of_gas_1041", label %"$have_gas_1042"

"$out_of_gas_1041":                               ; preds = %"$have_gas_1029"
  call void @_out_of_gas()
  br label %"$have_gas_1042"

"$have_gas_1042":                                 ; preds = %"$out_of_gas_1041", %"$have_gas_1029"
  %"$consume_1043" = sub i64 %"$gasrem_1039", 1
  store i64 %"$consume_1043", i64* @_gasrem, align 8
  %"$res__58" = alloca %Uint256, align 8
  %"$gasrem_1044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1045" = icmp ugt i64 1, %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1042"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1042"
  %"$consume_1048" = sub i64 %"$gasrem_1044", 1
  store i64 %"$consume_1048", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__58", align 8, !dbg !80
  %"$gasrem_1049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1050" = icmp ugt i64 1, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$have_gas_1047"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 1
  store i64 %"$consume_1053", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  %"$gasrem_1055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1056" = icmp ugt i64 16, %"$gasrem_1055"
  br i1 %"$gascmp_1056", label %"$out_of_gas_1057", label %"$have_gas_1058"

"$out_of_gas_1057":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1058"

"$have_gas_1058":                                 ; preds = %"$out_of_gas_1057", %"$have_gas_1052"
  %"$consume_1059" = sub i64 %"$gasrem_1055", 16
  store i64 %"$consume_1059", i64* @_gasrem, align 8
  %"$execptr_load_1060" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_1061" = alloca %Uint256, align 8
  %"$$res_57_1062" = load %Uint256, %Uint256* %"$res_57", align 8
  store %Uint256 %"$$res_57_1062", %Uint256* %"$eq_$res_57_1061", align 8
  %"$eq_$res__58_1063" = alloca %Uint256, align 8
  %"$$res__58_1064" = load %Uint256, %Uint256* %"$res__58", align 8
  store %Uint256 %"$$res__58_1064", %Uint256* %"$eq_$res__58_1063", align 8
  %"$eq_call_1065" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1060", %Uint256* %"$eq_$res_57_1061", %Uint256* %"$eq_$res__58_1063"), !dbg !81
  store %TName_Bool* %"$eq_call_1065", %TName_Bool** %"$test__59", align 8, !dbg !81
  %"$gasrem_1067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1068" = icmp ugt i64 1, %"$gasrem_1067"
  br i1 %"$gascmp_1068", label %"$out_of_gas_1069", label %"$have_gas_1070"

"$out_of_gas_1069":                               ; preds = %"$have_gas_1058"
  call void @_out_of_gas()
  br label %"$have_gas_1070"

"$have_gas_1070":                                 ; preds = %"$out_of_gas_1069", %"$have_gas_1058"
  %"$consume_1071" = sub i64 %"$gasrem_1067", 1
  store i64 %"$consume_1071", i64* @_gasrem, align 8
  %"$BoolUtils.andb_97" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1072" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1073" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1072", 0
  %"$BoolUtils.andb_envptr_1074" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1072", 1
  %"$$test_54_1075" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1076" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1073"(i8* %"$BoolUtils.andb_envptr_1074", %TName_Bool* %"$$test_54_1075"), !dbg !82
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1076", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_97", align 8, !dbg !82
  %"$BoolUtils.andb_98" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_97_1077" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_97", align 8
  %"$$BoolUtils.andb_97_fptr_1078" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_97_1077", 0
  %"$$BoolUtils.andb_97_envptr_1079" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_97_1077", 1
  %"$$test__59_1080" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_97_call_1081" = call %TName_Bool* %"$$BoolUtils.andb_97_fptr_1078"(i8* %"$$BoolUtils.andb_97_envptr_1079", %TName_Bool* %"$$test__59_1080"), !dbg !82
  store %TName_Bool* %"$$BoolUtils.andb_97_call_1081", %TName_Bool** %"$BoolUtils.andb_98", align 8, !dbg !82
  %"$$BoolUtils.andb_98_1082" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_98", align 8
  store %TName_Bool* %"$$BoolUtils.andb_98_1082", %TName_Bool** %"$test_60", align 8, !dbg !82
  %"$gasrem_1083" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1084" = icmp ugt i64 1, %"$gasrem_1083"
  br i1 %"$gascmp_1084", label %"$out_of_gas_1085", label %"$have_gas_1086"

"$out_of_gas_1085":                               ; preds = %"$have_gas_1070"
  call void @_out_of_gas()
  br label %"$have_gas_1086"

"$have_gas_1086":                                 ; preds = %"$out_of_gas_1085", %"$have_gas_1070"
  %"$consume_1087" = sub i64 %"$gasrem_1083", 1
  store i64 %"$consume_1087", i64* @_gasrem, align 8
  %"$arg1_61" = alloca %Int256, align 8
  %"$gasrem_1088" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1089" = icmp ugt i64 1, %"$gasrem_1088"
  br i1 %"$gascmp_1089", label %"$out_of_gas_1090", label %"$have_gas_1091"

"$out_of_gas_1090":                               ; preds = %"$have_gas_1086"
  call void @_out_of_gas()
  br label %"$have_gas_1091"

"$have_gas_1091":                                 ; preds = %"$out_of_gas_1090", %"$have_gas_1086"
  %"$consume_1092" = sub i64 %"$gasrem_1088", 1
  store i64 %"$consume_1092", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_61", align 8, !dbg !83
  %"$gasrem_1093" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1094" = icmp ugt i64 1, %"$gasrem_1093"
  br i1 %"$gascmp_1094", label %"$out_of_gas_1095", label %"$have_gas_1096"

"$out_of_gas_1095":                               ; preds = %"$have_gas_1091"
  call void @_out_of_gas()
  br label %"$have_gas_1096"

"$have_gas_1096":                                 ; preds = %"$out_of_gas_1095", %"$have_gas_1091"
  %"$consume_1097" = sub i64 %"$gasrem_1093", 1
  store i64 %"$consume_1097", i64* @_gasrem, align 8
  %"$arg2_62" = alloca %Int256, align 8
  %"$gasrem_1098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1099" = icmp ugt i64 1, %"$gasrem_1098"
  br i1 %"$gascmp_1099", label %"$out_of_gas_1100", label %"$have_gas_1101"

"$out_of_gas_1100":                               ; preds = %"$have_gas_1096"
  call void @_out_of_gas()
  br label %"$have_gas_1101"

"$have_gas_1101":                                 ; preds = %"$out_of_gas_1100", %"$have_gas_1096"
  %"$consume_1102" = sub i64 %"$gasrem_1098", 1
  store i64 %"$consume_1102", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$arg2_62", align 8, !dbg !84
  %"$gasrem_1103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1104" = icmp ugt i64 1, %"$gasrem_1103"
  br i1 %"$gascmp_1104", label %"$out_of_gas_1105", label %"$have_gas_1106"

"$out_of_gas_1105":                               ; preds = %"$have_gas_1101"
  call void @_out_of_gas()
  br label %"$have_gas_1106"

"$have_gas_1106":                                 ; preds = %"$out_of_gas_1105", %"$have_gas_1101"
  %"$consume_1107" = sub i64 %"$gasrem_1103", 1
  store i64 %"$consume_1107", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1109" = icmp ugt i64 1, %"$gasrem_1108"
  br i1 %"$gascmp_1109", label %"$out_of_gas_1110", label %"$have_gas_1111"

"$out_of_gas_1110":                               ; preds = %"$have_gas_1106"
  call void @_out_of_gas()
  br label %"$have_gas_1111"

"$have_gas_1111":                                 ; preds = %"$out_of_gas_1110", %"$have_gas_1106"
  %"$consume_1112" = sub i64 %"$gasrem_1108", 1
  store i64 %"$consume_1112", i64* @_gasrem, align 8
  %"$res_63" = alloca %Int256, align 8
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
  %"$sub_$arg1_61_1120" = alloca %Int256, align 8
  %"$$arg1_61_1121" = load %Int256, %Int256* %"$arg1_61", align 8
  store %Int256 %"$$arg1_61_1121", %Int256* %"$sub_$arg1_61_1120", align 8
  %"$sub_$arg2_62_1122" = alloca %Int256, align 8
  %"$$arg2_62_1123" = load %Int256, %Int256* %"$arg2_62", align 8
  store %Int256 %"$$arg2_62_1123", %Int256* %"$sub_$arg2_62_1122", align 8
  %"$sub_call_1124" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1119", %Int256* %"$sub_$arg1_61_1120", %Int256* %"$sub_$arg2_62_1122"), !dbg !85
  %"$sub_1126" = load %Int256, %Int256* %"$sub_call_1124", align 8
  store %Int256 %"$sub_1126", %Int256* %"$res_63", align 8, !dbg !85
  %"$gasrem_1127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1128" = icmp ugt i64 1, %"$gasrem_1127"
  br i1 %"$gascmp_1128", label %"$out_of_gas_1129", label %"$have_gas_1130"

"$out_of_gas_1129":                               ; preds = %"$have_gas_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1130"

"$have_gas_1130":                                 ; preds = %"$out_of_gas_1129", %"$have_gas_1117"
  %"$consume_1131" = sub i64 %"$gasrem_1127", 1
  store i64 %"$consume_1131", i64* @_gasrem, align 8
  %"$res__64" = alloca %Int256, align 8
  %"$gasrem_1132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1133" = icmp ugt i64 1, %"$gasrem_1132"
  br i1 %"$gascmp_1133", label %"$out_of_gas_1134", label %"$have_gas_1135"

"$out_of_gas_1134":                               ; preds = %"$have_gas_1130"
  call void @_out_of_gas()
  br label %"$have_gas_1135"

"$have_gas_1135":                                 ; preds = %"$out_of_gas_1134", %"$have_gas_1130"
  %"$consume_1136" = sub i64 %"$gasrem_1132", 1
  store i64 %"$consume_1136", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$res__64", align 8, !dbg !86
  %"$gasrem_1137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1138" = icmp ugt i64 1, %"$gasrem_1137"
  br i1 %"$gascmp_1138", label %"$out_of_gas_1139", label %"$have_gas_1140"

"$out_of_gas_1139":                               ; preds = %"$have_gas_1135"
  call void @_out_of_gas()
  br label %"$have_gas_1140"

"$have_gas_1140":                                 ; preds = %"$out_of_gas_1139", %"$have_gas_1135"
  %"$consume_1141" = sub i64 %"$gasrem_1137", 1
  store i64 %"$consume_1141", i64* @_gasrem, align 8
  %"$test__65" = alloca %TName_Bool*, align 8
  %"$gasrem_1143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1144" = icmp ugt i64 16, %"$gasrem_1143"
  br i1 %"$gascmp_1144", label %"$out_of_gas_1145", label %"$have_gas_1146"

"$out_of_gas_1145":                               ; preds = %"$have_gas_1140"
  call void @_out_of_gas()
  br label %"$have_gas_1146"

"$have_gas_1146":                                 ; preds = %"$out_of_gas_1145", %"$have_gas_1140"
  %"$consume_1147" = sub i64 %"$gasrem_1143", 16
  store i64 %"$consume_1147", i64* @_gasrem, align 8
  %"$execptr_load_1148" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_63_1149" = alloca %Int256, align 8
  %"$$res_63_1150" = load %Int256, %Int256* %"$res_63", align 8
  store %Int256 %"$$res_63_1150", %Int256* %"$eq_$res_63_1149", align 8
  %"$eq_$res__64_1151" = alloca %Int256, align 8
  %"$$res__64_1152" = load %Int256, %Int256* %"$res__64", align 8
  store %Int256 %"$$res__64_1152", %Int256* %"$eq_$res__64_1151", align 8
  %"$eq_call_1153" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1148", %Int256* %"$eq_$res_63_1149", %Int256* %"$eq_$res__64_1151"), !dbg !87
  store %TName_Bool* %"$eq_call_1153", %TName_Bool** %"$test__65", align 8, !dbg !87
  %"$gasrem_1155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1156" = icmp ugt i64 1, %"$gasrem_1155"
  br i1 %"$gascmp_1156", label %"$out_of_gas_1157", label %"$have_gas_1158"

"$out_of_gas_1157":                               ; preds = %"$have_gas_1146"
  call void @_out_of_gas()
  br label %"$have_gas_1158"

"$have_gas_1158":                                 ; preds = %"$out_of_gas_1157", %"$have_gas_1146"
  %"$consume_1159" = sub i64 %"$gasrem_1155", 1
  store i64 %"$consume_1159", i64* @_gasrem, align 8
  %"$BoolUtils.andb_99" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1160" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1161" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1160", 0
  %"$BoolUtils.andb_envptr_1162" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1160", 1
  %"$$test_60_1163" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1164" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1161"(i8* %"$BoolUtils.andb_envptr_1162", %TName_Bool* %"$$test_60_1163"), !dbg !88
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1164", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_99", align 8, !dbg !88
  %"$BoolUtils.andb_100" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_99_1165" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_99", align 8
  %"$$BoolUtils.andb_99_fptr_1166" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_99_1165", 0
  %"$$BoolUtils.andb_99_envptr_1167" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_99_1165", 1
  %"$$test__65_1168" = load %TName_Bool*, %TName_Bool** %"$test__65", align 8
  %"$$BoolUtils.andb_99_call_1169" = call %TName_Bool* %"$$BoolUtils.andb_99_fptr_1166"(i8* %"$$BoolUtils.andb_99_envptr_1167", %TName_Bool* %"$$test__65_1168"), !dbg !88
  store %TName_Bool* %"$$BoolUtils.andb_99_call_1169", %TName_Bool** %"$BoolUtils.andb_100", align 8, !dbg !88
  %"$$BoolUtils.andb_100_1170" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_100", align 8
  store %TName_Bool* %"$$BoolUtils.andb_100_1170", %TName_Bool** %"$test_66", align 8, !dbg !88
  %"$gasrem_1171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1172" = icmp ugt i64 1, %"$gasrem_1171"
  br i1 %"$gascmp_1172", label %"$out_of_gas_1173", label %"$have_gas_1174"

"$out_of_gas_1173":                               ; preds = %"$have_gas_1158"
  call void @_out_of_gas()
  br label %"$have_gas_1174"

"$have_gas_1174":                                 ; preds = %"$out_of_gas_1173", %"$have_gas_1158"
  %"$consume_1175" = sub i64 %"$gasrem_1171", 1
  store i64 %"$consume_1175", i64* @_gasrem, align 8
  %"$arg2_67" = alloca %Int256, align 8
  %"$gasrem_1176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1177" = icmp ugt i64 1, %"$gasrem_1176"
  br i1 %"$gascmp_1177", label %"$out_of_gas_1178", label %"$have_gas_1179"

"$out_of_gas_1178":                               ; preds = %"$have_gas_1174"
  call void @_out_of_gas()
  br label %"$have_gas_1179"

"$have_gas_1179":                                 ; preds = %"$out_of_gas_1178", %"$have_gas_1174"
  %"$consume_1180" = sub i64 %"$gasrem_1176", 1
  store i64 %"$consume_1180", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_67", align 8, !dbg !89
  %"$gasrem_1181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1182" = icmp ugt i64 1, %"$gasrem_1181"
  br i1 %"$gascmp_1182", label %"$out_of_gas_1183", label %"$have_gas_1184"

"$out_of_gas_1183":                               ; preds = %"$have_gas_1179"
  call void @_out_of_gas()
  br label %"$have_gas_1184"

"$have_gas_1184":                                 ; preds = %"$out_of_gas_1183", %"$have_gas_1179"
  %"$consume_1185" = sub i64 %"$gasrem_1181", 1
  store i64 %"$consume_1185", i64* @_gasrem, align 8
  %"$arg1_68" = alloca %Int256, align 8
  %"$gasrem_1186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1187" = icmp ugt i64 1, %"$gasrem_1186"
  br i1 %"$gascmp_1187", label %"$out_of_gas_1188", label %"$have_gas_1189"

"$out_of_gas_1188":                               ; preds = %"$have_gas_1184"
  call void @_out_of_gas()
  br label %"$have_gas_1189"

"$have_gas_1189":                                 ; preds = %"$out_of_gas_1188", %"$have_gas_1184"
  %"$consume_1190" = sub i64 %"$gasrem_1186", 1
  store i64 %"$consume_1190", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$arg1_68", align 8, !dbg !90
  %"$gasrem_1191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1192" = icmp ugt i64 1, %"$gasrem_1191"
  br i1 %"$gascmp_1192", label %"$out_of_gas_1193", label %"$have_gas_1194"

"$out_of_gas_1193":                               ; preds = %"$have_gas_1189"
  call void @_out_of_gas()
  br label %"$have_gas_1194"

"$have_gas_1194":                                 ; preds = %"$out_of_gas_1193", %"$have_gas_1189"
  %"$consume_1195" = sub i64 %"$gasrem_1191", 1
  store i64 %"$consume_1195", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  %"$gasrem_1196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1197" = icmp ugt i64 1, %"$gasrem_1196"
  br i1 %"$gascmp_1197", label %"$out_of_gas_1198", label %"$have_gas_1199"

"$out_of_gas_1198":                               ; preds = %"$have_gas_1194"
  call void @_out_of_gas()
  br label %"$have_gas_1199"

"$have_gas_1199":                                 ; preds = %"$out_of_gas_1198", %"$have_gas_1194"
  %"$consume_1200" = sub i64 %"$gasrem_1196", 1
  store i64 %"$consume_1200", i64* @_gasrem, align 8
  %"$res_69" = alloca %Int256, align 8
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
  %"$sub_$arg1_68_1208" = alloca %Int256, align 8
  %"$$arg1_68_1209" = load %Int256, %Int256* %"$arg1_68", align 8
  store %Int256 %"$$arg1_68_1209", %Int256* %"$sub_$arg1_68_1208", align 8
  %"$sub_$arg2_67_1210" = alloca %Int256, align 8
  %"$$arg2_67_1211" = load %Int256, %Int256* %"$arg2_67", align 8
  store %Int256 %"$$arg2_67_1211", %Int256* %"$sub_$arg2_67_1210", align 8
  %"$sub_call_1212" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1207", %Int256* %"$sub_$arg1_68_1208", %Int256* %"$sub_$arg2_67_1210"), !dbg !91
  %"$sub_1214" = load %Int256, %Int256* %"$sub_call_1212", align 8
  store %Int256 %"$sub_1214", %Int256* %"$res_69", align 8, !dbg !91
  %"$gasrem_1215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1216" = icmp ugt i64 1, %"$gasrem_1215"
  br i1 %"$gascmp_1216", label %"$out_of_gas_1217", label %"$have_gas_1218"

"$out_of_gas_1217":                               ; preds = %"$have_gas_1205"
  call void @_out_of_gas()
  br label %"$have_gas_1218"

"$have_gas_1218":                                 ; preds = %"$out_of_gas_1217", %"$have_gas_1205"
  %"$consume_1219" = sub i64 %"$gasrem_1215", 1
  store i64 %"$consume_1219", i64* @_gasrem, align 8
  %"$res__70" = alloca %Int256, align 8
  %"$gasrem_1220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1221" = icmp ugt i64 1, %"$gasrem_1220"
  br i1 %"$gascmp_1221", label %"$out_of_gas_1222", label %"$have_gas_1223"

"$out_of_gas_1222":                               ; preds = %"$have_gas_1218"
  call void @_out_of_gas()
  br label %"$have_gas_1223"

"$have_gas_1223":                                 ; preds = %"$out_of_gas_1222", %"$have_gas_1218"
  %"$consume_1224" = sub i64 %"$gasrem_1220", 1
  store i64 %"$consume_1224", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$res__70", align 8, !dbg !92
  %"$gasrem_1225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1226" = icmp ugt i64 1, %"$gasrem_1225"
  br i1 %"$gascmp_1226", label %"$out_of_gas_1227", label %"$have_gas_1228"

"$out_of_gas_1227":                               ; preds = %"$have_gas_1223"
  call void @_out_of_gas()
  br label %"$have_gas_1228"

"$have_gas_1228":                                 ; preds = %"$out_of_gas_1227", %"$have_gas_1223"
  %"$consume_1229" = sub i64 %"$gasrem_1225", 1
  store i64 %"$consume_1229", i64* @_gasrem, align 8
  %"$test__71" = alloca %TName_Bool*, align 8
  %"$gasrem_1231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1232" = icmp ugt i64 16, %"$gasrem_1231"
  br i1 %"$gascmp_1232", label %"$out_of_gas_1233", label %"$have_gas_1234"

"$out_of_gas_1233":                               ; preds = %"$have_gas_1228"
  call void @_out_of_gas()
  br label %"$have_gas_1234"

"$have_gas_1234":                                 ; preds = %"$out_of_gas_1233", %"$have_gas_1228"
  %"$consume_1235" = sub i64 %"$gasrem_1231", 16
  store i64 %"$consume_1235", i64* @_gasrem, align 8
  %"$execptr_load_1236" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_69_1237" = alloca %Int256, align 8
  %"$$res_69_1238" = load %Int256, %Int256* %"$res_69", align 8
  store %Int256 %"$$res_69_1238", %Int256* %"$eq_$res_69_1237", align 8
  %"$eq_$res__70_1239" = alloca %Int256, align 8
  %"$$res__70_1240" = load %Int256, %Int256* %"$res__70", align 8
  store %Int256 %"$$res__70_1240", %Int256* %"$eq_$res__70_1239", align 8
  %"$eq_call_1241" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1236", %Int256* %"$eq_$res_69_1237", %Int256* %"$eq_$res__70_1239"), !dbg !93
  store %TName_Bool* %"$eq_call_1241", %TName_Bool** %"$test__71", align 8, !dbg !93
  %"$gasrem_1243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1244" = icmp ugt i64 1, %"$gasrem_1243"
  br i1 %"$gascmp_1244", label %"$out_of_gas_1245", label %"$have_gas_1246"

"$out_of_gas_1245":                               ; preds = %"$have_gas_1234"
  call void @_out_of_gas()
  br label %"$have_gas_1246"

"$have_gas_1246":                                 ; preds = %"$out_of_gas_1245", %"$have_gas_1234"
  %"$consume_1247" = sub i64 %"$gasrem_1243", 1
  store i64 %"$consume_1247", i64* @_gasrem, align 8
  %"$BoolUtils.andb_101" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1248" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1249" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1248", 0
  %"$BoolUtils.andb_envptr_1250" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1248", 1
  %"$$test_66_1251" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  %"$BoolUtils.andb_call_1252" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1249"(i8* %"$BoolUtils.andb_envptr_1250", %TName_Bool* %"$$test_66_1251"), !dbg !94
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1252", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_101", align 8, !dbg !94
  %"$BoolUtils.andb_102" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_101_1253" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_101", align 8
  %"$$BoolUtils.andb_101_fptr_1254" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_101_1253", 0
  %"$$BoolUtils.andb_101_envptr_1255" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_101_1253", 1
  %"$$test__71_1256" = load %TName_Bool*, %TName_Bool** %"$test__71", align 8
  %"$$BoolUtils.andb_101_call_1257" = call %TName_Bool* %"$$BoolUtils.andb_101_fptr_1254"(i8* %"$$BoolUtils.andb_101_envptr_1255", %TName_Bool* %"$$test__71_1256"), !dbg !94
  store %TName_Bool* %"$$BoolUtils.andb_101_call_1257", %TName_Bool** %"$BoolUtils.andb_102", align 8, !dbg !94
  %"$$BoolUtils.andb_102_1258" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_102", align 8
  store %TName_Bool* %"$$BoolUtils.andb_102_1258", %TName_Bool** %"$test_72", align 8, !dbg !94
  %"$gasrem_1259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1260" = icmp ugt i64 1, %"$gasrem_1259"
  br i1 %"$gascmp_1260", label %"$out_of_gas_1261", label %"$have_gas_1262"

"$out_of_gas_1261":                               ; preds = %"$have_gas_1246"
  call void @_out_of_gas()
  br label %"$have_gas_1262"

"$have_gas_1262":                                 ; preds = %"$out_of_gas_1261", %"$have_gas_1246"
  %"$consume_1263" = sub i64 %"$gasrem_1259", 1
  store i64 %"$consume_1263", i64* @_gasrem, align 8
  %"$arg1_73" = alloca %Int256, align 8
  %"$gasrem_1264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1265" = icmp ugt i64 1, %"$gasrem_1264"
  br i1 %"$gascmp_1265", label %"$out_of_gas_1266", label %"$have_gas_1267"

"$out_of_gas_1266":                               ; preds = %"$have_gas_1262"
  call void @_out_of_gas()
  br label %"$have_gas_1267"

"$have_gas_1267":                                 ; preds = %"$out_of_gas_1266", %"$have_gas_1262"
  %"$consume_1268" = sub i64 %"$gasrem_1264", 1
  store i64 %"$consume_1268", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_73", align 8, !dbg !95
  %"$gasrem_1269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1270" = icmp ugt i64 1, %"$gasrem_1269"
  br i1 %"$gascmp_1270", label %"$out_of_gas_1271", label %"$have_gas_1272"

"$out_of_gas_1271":                               ; preds = %"$have_gas_1267"
  call void @_out_of_gas()
  br label %"$have_gas_1272"

"$have_gas_1272":                                 ; preds = %"$out_of_gas_1271", %"$have_gas_1267"
  %"$consume_1273" = sub i64 %"$gasrem_1269", 1
  store i64 %"$consume_1273", i64* @_gasrem, align 8
  %"$arg2_74" = alloca %Int256, align 8
  %"$gasrem_1274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1275" = icmp ugt i64 1, %"$gasrem_1274"
  br i1 %"$gascmp_1275", label %"$out_of_gas_1276", label %"$have_gas_1277"

"$out_of_gas_1276":                               ; preds = %"$have_gas_1272"
  call void @_out_of_gas()
  br label %"$have_gas_1277"

"$have_gas_1277":                                 ; preds = %"$out_of_gas_1276", %"$have_gas_1272"
  %"$consume_1278" = sub i64 %"$gasrem_1274", 1
  store i64 %"$consume_1278", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$arg2_74", align 8, !dbg !96
  %"$gasrem_1279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1280" = icmp ugt i64 1, %"$gasrem_1279"
  br i1 %"$gascmp_1280", label %"$out_of_gas_1281", label %"$have_gas_1282"

"$out_of_gas_1281":                               ; preds = %"$have_gas_1277"
  call void @_out_of_gas()
  br label %"$have_gas_1282"

"$have_gas_1282":                                 ; preds = %"$out_of_gas_1281", %"$have_gas_1277"
  %"$consume_1283" = sub i64 %"$gasrem_1279", 1
  store i64 %"$consume_1283", i64* @_gasrem, align 8
  %"$test_78" = alloca %TName_Bool*, align 8
  %"$gasrem_1284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1285" = icmp ugt i64 1, %"$gasrem_1284"
  br i1 %"$gascmp_1285", label %"$out_of_gas_1286", label %"$have_gas_1287"

"$out_of_gas_1286":                               ; preds = %"$have_gas_1282"
  call void @_out_of_gas()
  br label %"$have_gas_1287"

"$have_gas_1287":                                 ; preds = %"$out_of_gas_1286", %"$have_gas_1282"
  %"$consume_1288" = sub i64 %"$gasrem_1284", 1
  store i64 %"$consume_1288", i64* @_gasrem, align 8
  %"$res_75" = alloca %Int256, align 8
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
  %"$sub_$arg1_73_1296" = alloca %Int256, align 8
  %"$$arg1_73_1297" = load %Int256, %Int256* %"$arg1_73", align 8
  store %Int256 %"$$arg1_73_1297", %Int256* %"$sub_$arg1_73_1296", align 8
  %"$sub_$arg2_74_1298" = alloca %Int256, align 8
  %"$$arg2_74_1299" = load %Int256, %Int256* %"$arg2_74", align 8
  store %Int256 %"$$arg2_74_1299", %Int256* %"$sub_$arg2_74_1298", align 8
  %"$sub_call_1300" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1295", %Int256* %"$sub_$arg1_73_1296", %Int256* %"$sub_$arg2_74_1298"), !dbg !97
  %"$sub_1302" = load %Int256, %Int256* %"$sub_call_1300", align 8
  store %Int256 %"$sub_1302", %Int256* %"$res_75", align 8, !dbg !97
  %"$gasrem_1303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1304" = icmp ugt i64 1, %"$gasrem_1303"
  br i1 %"$gascmp_1304", label %"$out_of_gas_1305", label %"$have_gas_1306"

"$out_of_gas_1305":                               ; preds = %"$have_gas_1293"
  call void @_out_of_gas()
  br label %"$have_gas_1306"

"$have_gas_1306":                                 ; preds = %"$out_of_gas_1305", %"$have_gas_1293"
  %"$consume_1307" = sub i64 %"$gasrem_1303", 1
  store i64 %"$consume_1307", i64* @_gasrem, align 8
  %"$res__76" = alloca %Int256, align 8
  %"$gasrem_1308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1309" = icmp ugt i64 1, %"$gasrem_1308"
  br i1 %"$gascmp_1309", label %"$out_of_gas_1310", label %"$have_gas_1311"

"$out_of_gas_1310":                               ; preds = %"$have_gas_1306"
  call void @_out_of_gas()
  br label %"$have_gas_1311"

"$have_gas_1311":                                 ; preds = %"$out_of_gas_1310", %"$have_gas_1306"
  %"$consume_1312" = sub i64 %"$gasrem_1308", 1
  store i64 %"$consume_1312", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$res__76", align 8, !dbg !98
  %"$gasrem_1313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1314" = icmp ugt i64 1, %"$gasrem_1313"
  br i1 %"$gascmp_1314", label %"$out_of_gas_1315", label %"$have_gas_1316"

"$out_of_gas_1315":                               ; preds = %"$have_gas_1311"
  call void @_out_of_gas()
  br label %"$have_gas_1316"

"$have_gas_1316":                                 ; preds = %"$out_of_gas_1315", %"$have_gas_1311"
  %"$consume_1317" = sub i64 %"$gasrem_1313", 1
  store i64 %"$consume_1317", i64* @_gasrem, align 8
  %"$test__77" = alloca %TName_Bool*, align 8
  %"$gasrem_1319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1320" = icmp ugt i64 16, %"$gasrem_1319"
  br i1 %"$gascmp_1320", label %"$out_of_gas_1321", label %"$have_gas_1322"

"$out_of_gas_1321":                               ; preds = %"$have_gas_1316"
  call void @_out_of_gas()
  br label %"$have_gas_1322"

"$have_gas_1322":                                 ; preds = %"$out_of_gas_1321", %"$have_gas_1316"
  %"$consume_1323" = sub i64 %"$gasrem_1319", 16
  store i64 %"$consume_1323", i64* @_gasrem, align 8
  %"$execptr_load_1324" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_75_1325" = alloca %Int256, align 8
  %"$$res_75_1326" = load %Int256, %Int256* %"$res_75", align 8
  store %Int256 %"$$res_75_1326", %Int256* %"$eq_$res_75_1325", align 8
  %"$eq_$res__76_1327" = alloca %Int256, align 8
  %"$$res__76_1328" = load %Int256, %Int256* %"$res__76", align 8
  store %Int256 %"$$res__76_1328", %Int256* %"$eq_$res__76_1327", align 8
  %"$eq_call_1329" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1324", %Int256* %"$eq_$res_75_1325", %Int256* %"$eq_$res__76_1327"), !dbg !99
  store %TName_Bool* %"$eq_call_1329", %TName_Bool** %"$test__77", align 8, !dbg !99
  %"$gasrem_1331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1332" = icmp ugt i64 1, %"$gasrem_1331"
  br i1 %"$gascmp_1332", label %"$out_of_gas_1333", label %"$have_gas_1334"

"$out_of_gas_1333":                               ; preds = %"$have_gas_1322"
  call void @_out_of_gas()
  br label %"$have_gas_1334"

"$have_gas_1334":                                 ; preds = %"$out_of_gas_1333", %"$have_gas_1322"
  %"$consume_1335" = sub i64 %"$gasrem_1331", 1
  store i64 %"$consume_1335", i64* @_gasrem, align 8
  %"$BoolUtils.andb_103" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1336" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1337" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1336", 0
  %"$BoolUtils.andb_envptr_1338" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1336", 1
  %"$$test_72_1339" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  %"$BoolUtils.andb_call_1340" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1337"(i8* %"$BoolUtils.andb_envptr_1338", %TName_Bool* %"$$test_72_1339"), !dbg !100
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1340", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_103", align 8, !dbg !100
  %"$BoolUtils.andb_104" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_103_1341" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_103", align 8
  %"$$BoolUtils.andb_103_fptr_1342" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_103_1341", 0
  %"$$BoolUtils.andb_103_envptr_1343" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_103_1341", 1
  %"$$test__77_1344" = load %TName_Bool*, %TName_Bool** %"$test__77", align 8
  %"$$BoolUtils.andb_103_call_1345" = call %TName_Bool* %"$$BoolUtils.andb_103_fptr_1342"(i8* %"$$BoolUtils.andb_103_envptr_1343", %TName_Bool* %"$$test__77_1344"), !dbg !100
  store %TName_Bool* %"$$BoolUtils.andb_103_call_1345", %TName_Bool** %"$BoolUtils.andb_104", align 8, !dbg !100
  %"$$BoolUtils.andb_104_1346" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_104", align 8
  store %TName_Bool* %"$$BoolUtils.andb_104_1346", %TName_Bool** %"$test_78", align 8, !dbg !100
  %"$gasrem_1347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1348" = icmp ugt i64 1, %"$gasrem_1347"
  br i1 %"$gascmp_1348", label %"$out_of_gas_1349", label %"$have_gas_1350"

"$out_of_gas_1349":                               ; preds = %"$have_gas_1334"
  call void @_out_of_gas()
  br label %"$have_gas_1350"

"$have_gas_1350":                                 ; preds = %"$out_of_gas_1349", %"$have_gas_1334"
  %"$consume_1351" = sub i64 %"$gasrem_1347", 1
  store i64 %"$consume_1351", i64* @_gasrem, align 8
  %"$$test_78_1352" = load %TName_Bool*, %TName_Bool** %"$test_78", align 8
  store %TName_Bool* %"$$test_78_1352", %TName_Bool** %"$expr_109", align 8, !dbg !101
  %"$$expr_109_1353" = load %TName_Bool*, %TName_Bool** %"$expr_109", align 8
  ret %TName_Bool* %"$$expr_109_1353"
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
  %"$exprval_1354" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1355" = bitcast %TName_Bool* %"$exprval_1354" to i8*
  %"$execptr_load_1356" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1356", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_142", i8* %"$memvoidcast_1355")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_sub.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_107", linkageName: "$fundef_107", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!15 = distinct !DISubprogram(name: "$fundef_105", linkageName: "$fundef_105", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!101 = !DILocation(line: 121, column: 1, scope: !21)
