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
%"$ParamDescr_1361" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1362" = type { %ParamDescrString, i32, %"$ParamDescr_1361"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_1361"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_1362"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_107"(%"$$fundef_107_env_160"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$c_204" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$c_204", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_204", metadata !9, metadata !DIExpression()), !dbg !12
  %"$$fundef_107_env_b_174" = getelementptr inbounds %"$$fundef_107_env_160", %"$$fundef_107_env_160"* %0, i32 0, i32 0
  %"$b_envload_175" = load %TName_Bool*, %TName_Bool** %"$$fundef_107_env_b_174", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_175", %TName_Bool** %b, align 8
  %"$retval_108" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_108", metadata !13, metadata !DIExpression()), !dbg !14
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 2, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %entry
  %"$consume_180" = sub i64 %"$gasrem_176", 2
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %"$b_182" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_183" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_182", i32 0, i32 0
  %"$b_tag_184" = load i8, i8* %"$b_tag_183", align 1
  switch i8 %"$b_tag_184", label %"$empty_default_185" [
    i8 1, label %"$False_186"
    i8 0, label %"$True_196"
  ], !dbg !14

"$False_186":                                     ; preds = %"$have_gas_179"
  %"$b_187" = bitcast %TName_Bool* %"$b_182" to %CName_False*
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %"$False_186"
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %"$False_186"
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %"$adtval_193_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_193_salloc" = call i8* @_salloc(i8* %"$adtval_193_load", i64 1)
  %"$adtval_193" = bitcast i8* %"$adtval_193_salloc" to %CName_False*
  %"$adtgep_194" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_193", i32 0, i32 0
  store i8 1, i8* %"$adtgep_194", align 1
  %"$adtptr_195" = bitcast %CName_False* %"$adtval_193" to %TName_Bool*
  store %TName_Bool* %"$adtptr_195", %TName_Bool** %"$retval_108", align 8, !dbg !15
  br label %"$matchsucc_181"

"$True_196":                                      ; preds = %"$have_gas_179"
  %"$b_197" = bitcast %TName_Bool* %"$b_182" to %CName_True*
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$True_196"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$True_196"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_108", align 8, !dbg !18
  br label %"$matchsucc_181"

"$empty_default_185":                             ; preds = %"$have_gas_179"
  br label %"$matchsucc_181"

"$matchsucc_181":                                 ; preds = %"$have_gas_201", %"$have_gas_191", %"$empty_default_185"
  %"$$retval_108_203" = load %TName_Bool*, %TName_Bool** %"$retval_108", align 8
  ret %TName_Bool* %"$$retval_108_203"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_105"(%"$$fundef_105_env_161"* %0, %TName_Bool* %1) !dbg !20 {
entry:
  %"$b_173" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_173", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_173", metadata !21, metadata !DIExpression()), !dbg !22
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_107_cloval_170", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_106", align 8, !dbg !23
  %"$$retval_106_172" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_106", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_106_172"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !24 {
entry:
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 5, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %entry
  %"$consume_209" = sub i64 %"$gasrem_205", 5
  store i64 %"$consume_209", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !26
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 7, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_208"
  %"$consume_214" = sub i64 %"$gasrem_210", 7
  store i64 %"$consume_214", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !26
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_213"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_105_env_161"*, %TName_Bool*)* @"$fundef_105" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !27
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 196, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_218"
  %"$consume_227" = sub i64 %"$gasrem_223", 196
  store i64 %"$consume_227", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !26
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 20, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 20
  store i64 %"$consume_232", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !26
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 12, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 12
  store i64 %"$consume_237", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !26
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 2, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 2
  store i64 %"$consume_242", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !26
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !28 {
entry:
  %"$expr_109" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_109", metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %entry
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %test = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test, metadata !31, metadata !DIExpression()), !dbg !32
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_256"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %"$adtval_263_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_263_salloc" = call i8* @_salloc(i8* %"$adtval_263_load", i64 1)
  %"$adtval_263" = bitcast i8* %"$adtval_263_salloc" to %CName_True*
  %"$adtgep_264" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_263", i32 0, i32 0
  store i8 0, i8* %"$adtgep_264", align 1
  %"$adtptr_265" = bitcast %CName_True* %"$adtval_263" to %TName_Bool*
  store %TName_Bool* %"$adtptr_265", %TName_Bool** %test, align 8, !dbg !33
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_261"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %arg1 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %arg1, metadata !34, metadata !DIExpression()), !dbg !36
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_269"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  store %Uint32 { i32 1844 }, %Uint32* %arg1, align 4, !dbg !37
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_274"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %arg2 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %arg2, metadata !38, metadata !DIExpression()), !dbg !39
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  store %Uint32 { i32 1843 }, %Uint32* %arg2, align 4, !dbg !40
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$have_gas_284"
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  %"$test_6" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_6", metadata !41, metadata !DIExpression()), !dbg !42
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_289"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_289"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %res = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res, metadata !43, metadata !DIExpression()), !dbg !44
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 4, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_294"
  %"$consume_300" = sub i64 %"$gasrem_296", 4
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$arg1_301" = load %Uint32, %Uint32* %arg1, align 4
  %"$arg2_302" = load %Uint32, %Uint32* %arg2, align 4
  %"$sub_call_303" = call %Uint32 @_sub_Uint32(%Uint32 %"$arg1_301", %Uint32 %"$arg2_302"), !dbg !45
  store %Uint32 %"$sub_call_303", %Uint32* %res, align 4, !dbg !45
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_299"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %res_ = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %res_, metadata !46, metadata !DIExpression()), !dbg !47
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 1, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_307"
  %"$consume_313" = sub i64 %"$gasrem_309", 1
  store i64 %"$consume_313", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %res_, align 4, !dbg !48
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_312"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %test_ = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %test_, metadata !49, metadata !DIExpression()), !dbg !50
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 4, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_317"
  %"$consume_323" = sub i64 %"$gasrem_319", 4
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %"$execptr_load_324" = load i8*, i8** @_execptr, align 8
  %"$res_325" = load %Uint32, %Uint32* %res, align 4
  %"$res__326" = load %Uint32, %Uint32* %res_, align 4
  %"$eq_call_327" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_324", %Uint32 %"$res_325", %Uint32 %"$res__326"), !dbg !51
  store %TName_Bool* %"$eq_call_327", %TName_Bool** %test_, align 8, !dbg !51
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_322"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$BoolUtils.andb_79" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_334" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_335" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_334", 0
  %"$BoolUtils.andb_envptr_336" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_334", 1
  %"$test_337" = load %TName_Bool*, %TName_Bool** %test, align 8
  %"$BoolUtils.andb_call_338" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_335"(i8* %"$BoolUtils.andb_envptr_336", %TName_Bool* %"$test_337"), !dbg !52
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_338", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8, !dbg !52
  %"$BoolUtils.andb_80" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_80", metadata !53, metadata !DIExpression()), !dbg !52
  %"$$BoolUtils.andb_79_339" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_79", align 8
  %"$$BoolUtils.andb_79_fptr_340" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_339", 0
  %"$$BoolUtils.andb_79_envptr_341" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_79_339", 1
  %"$test__342" = load %TName_Bool*, %TName_Bool** %test_, align 8
  %"$$BoolUtils.andb_79_call_343" = call %TName_Bool* %"$$BoolUtils.andb_79_fptr_340"(i8* %"$$BoolUtils.andb_79_envptr_341", %TName_Bool* %"$test__342"), !dbg !52
  store %TName_Bool* %"$$BoolUtils.andb_79_call_343", %TName_Bool** %"$BoolUtils.andb_80", align 8, !dbg !52
  %"$$BoolUtils.andb_80_344" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_80", align 8
  store %TName_Bool* %"$$BoolUtils.andb_80_344", %TName_Bool** %"$test_6", align 8, !dbg !52
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_332"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %"$arg2_7" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$arg2_7", metadata !54, metadata !DIExpression()), !dbg !56
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_348"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  store %Int32 { i32 1844 }, %Int32* %"$arg2_7", align 4, !dbg !57
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_353"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %"$arg1_8" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$arg1_8", metadata !58, metadata !DIExpression()), !dbg !59
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  store %Int32 { i32 1843 }, %Int32* %"$arg1_8", align 4, !dbg !60
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %"$test_12" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_12", metadata !61, metadata !DIExpression()), !dbg !62
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %"$res_9" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$res_9", metadata !63, metadata !DIExpression()), !dbg !64
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 4, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 4
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$$arg1_8_380" = load %Int32, %Int32* %"$arg1_8", align 4
  %"$$arg2_7_381" = load %Int32, %Int32* %"$arg2_7", align 4
  %"$sub_call_382" = call %Int32 @_sub_Int32(%Int32 %"$$arg1_8_380", %Int32 %"$$arg2_7_381"), !dbg !65
  store %Int32 %"$sub_call_382", %Int32* %"$res_9", align 4, !dbg !65
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_378"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %"$res__10" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$res__10", metadata !66, metadata !DIExpression()), !dbg !67
  %"$gasrem_388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_389" = icmp ugt i64 1, %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_386"
  %"$consume_392" = sub i64 %"$gasrem_388", 1
  store i64 %"$consume_392", i64* @_gasrem, align 8
  store %Int32 { i32 -1 }, %Int32* %"$res__10", align 4, !dbg !68
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_391"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %"$test__11" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__11", metadata !69, metadata !DIExpression()), !dbg !70
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 4, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_396"
  %"$consume_402" = sub i64 %"$gasrem_398", 4
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$execptr_load_403" = load i8*, i8** @_execptr, align 8
  %"$$res_9_404" = load %Int32, %Int32* %"$res_9", align 4
  %"$$res__10_405" = load %Int32, %Int32* %"$res__10", align 4
  %"$eq_call_406" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_403", %Int32 %"$$res_9_404", %Int32 %"$$res__10_405"), !dbg !71
  store %TName_Bool* %"$eq_call_406", %TName_Bool** %"$test__11", align 8, !dbg !71
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_401"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %"$BoolUtils.andb_81" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_413" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_414" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_413", 0
  %"$BoolUtils.andb_envptr_415" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_413", 1
  %"$$test_6_416" = load %TName_Bool*, %TName_Bool** %"$test_6", align 8
  %"$BoolUtils.andb_call_417" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_414"(i8* %"$BoolUtils.andb_envptr_415", %TName_Bool* %"$$test_6_416"), !dbg !72
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_417", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_81", align 8, !dbg !72
  %"$BoolUtils.andb_82" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_82", metadata !73, metadata !DIExpression()), !dbg !72
  %"$$BoolUtils.andb_81_418" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_81", align 8
  %"$$BoolUtils.andb_81_fptr_419" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_81_418", 0
  %"$$BoolUtils.andb_81_envptr_420" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_81_418", 1
  %"$$test__11_421" = load %TName_Bool*, %TName_Bool** %"$test__11", align 8
  %"$$BoolUtils.andb_81_call_422" = call %TName_Bool* %"$$BoolUtils.andb_81_fptr_419"(i8* %"$$BoolUtils.andb_81_envptr_420", %TName_Bool* %"$$test__11_421"), !dbg !72
  store %TName_Bool* %"$$BoolUtils.andb_81_call_422", %TName_Bool** %"$BoolUtils.andb_82", align 8, !dbg !72
  %"$$BoolUtils.andb_82_423" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_82", align 8
  store %TName_Bool* %"$$BoolUtils.andb_82_423", %TName_Bool** %"$test_12", align 8, !dbg !72
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_411"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$arg1_13" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$arg1_13", metadata !74, metadata !DIExpression()), !dbg !76
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_427"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem, align 8
  store %Uint64 { i64 -1 }, %Uint64* %"$arg1_13", align 8, !dbg !77
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_432"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_432"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %"$arg2_14" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$arg2_14", metadata !78, metadata !DIExpression()), !dbg !79
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  store %Uint64 { i64 -2 }, %Uint64* %"$arg2_14", align 8, !dbg !80
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %"$test_18" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_18", metadata !81, metadata !DIExpression()), !dbg !82
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %"$res_15" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$res_15", metadata !83, metadata !DIExpression()), !dbg !84
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 4, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %"$have_gas_452"
  %"$consume_458" = sub i64 %"$gasrem_454", 4
  store i64 %"$consume_458", i64* @_gasrem, align 8
  %"$$arg1_13_459" = load %Uint64, %Uint64* %"$arg1_13", align 8
  %"$$arg2_14_460" = load %Uint64, %Uint64* %"$arg2_14", align 8
  %"$sub_call_461" = call %Uint64 @_sub_Uint64(%Uint64 %"$$arg1_13_459", %Uint64 %"$$arg2_14_460"), !dbg !85
  store %Uint64 %"$sub_call_461", %Uint64* %"$res_15", align 8, !dbg !85
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_457"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_457"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %"$res__16" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$res__16", metadata !86, metadata !DIExpression()), !dbg !87
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_465"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %"$res__16", align 8, !dbg !88
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_470"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %"$test__17" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__17", metadata !89, metadata !DIExpression()), !dbg !90
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 4, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_475"
  %"$consume_481" = sub i64 %"$gasrem_477", 4
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %"$execptr_load_482" = load i8*, i8** @_execptr, align 8
  %"$$res_15_483" = load %Uint64, %Uint64* %"$res_15", align 8
  %"$$res__16_484" = load %Uint64, %Uint64* %"$res__16", align 8
  %"$eq_call_485" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_482", %Uint64 %"$$res_15_483", %Uint64 %"$$res__16_484"), !dbg !91
  store %TName_Bool* %"$eq_call_485", %TName_Bool** %"$test__17", align 8, !dbg !91
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_480"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %"$BoolUtils.andb_83" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_492" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_493" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_492", 0
  %"$BoolUtils.andb_envptr_494" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_492", 1
  %"$$test_12_495" = load %TName_Bool*, %TName_Bool** %"$test_12", align 8
  %"$BoolUtils.andb_call_496" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_493"(i8* %"$BoolUtils.andb_envptr_494", %TName_Bool* %"$$test_12_495"), !dbg !92
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_496", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_83", align 8, !dbg !92
  %"$BoolUtils.andb_84" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_84", metadata !93, metadata !DIExpression()), !dbg !92
  %"$$BoolUtils.andb_83_497" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_83", align 8
  %"$$BoolUtils.andb_83_fptr_498" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_83_497", 0
  %"$$BoolUtils.andb_83_envptr_499" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_83_497", 1
  %"$$test__17_500" = load %TName_Bool*, %TName_Bool** %"$test__17", align 8
  %"$$BoolUtils.andb_83_call_501" = call %TName_Bool* %"$$BoolUtils.andb_83_fptr_498"(i8* %"$$BoolUtils.andb_83_envptr_499", %TName_Bool* %"$$test__17_500"), !dbg !92
  store %TName_Bool* %"$$BoolUtils.andb_83_call_501", %TName_Bool** %"$BoolUtils.andb_84", align 8, !dbg !92
  %"$$BoolUtils.andb_84_502" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_84", align 8
  store %TName_Bool* %"$$BoolUtils.andb_84_502", %TName_Bool** %"$test_18", align 8, !dbg !92
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$have_gas_490"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %"$arg2_19" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$arg2_19", metadata !94, metadata !DIExpression()), !dbg !96
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_506"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$arg2_19", align 8, !dbg !97
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_511"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$arg1_20" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$arg1_20", metadata !98, metadata !DIExpression()), !dbg !99
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_516"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$arg1_20", align 8, !dbg !100
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_521"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$test_24" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_24", metadata !101, metadata !DIExpression()), !dbg !102
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_526"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %"$res_21" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$res_21", metadata !103, metadata !DIExpression()), !dbg !104
  %"$gasrem_533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_534" = icmp ugt i64 4, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %"$have_gas_531"
  %"$consume_537" = sub i64 %"$gasrem_533", 4
  store i64 %"$consume_537", i64* @_gasrem, align 8
  %"$$arg1_20_538" = load %Int64, %Int64* %"$arg1_20", align 8
  %"$$arg2_19_539" = load %Int64, %Int64* %"$arg2_19", align 8
  %"$sub_call_540" = call %Int64 @_sub_Int64(%Int64 %"$$arg1_20_538", %Int64 %"$$arg2_19_539"), !dbg !105
  store %Int64 %"$sub_call_540", %Int64* %"$res_21", align 8, !dbg !105
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$have_gas_536"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$have_gas_536"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  %"$res__22" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$res__22", metadata !106, metadata !DIExpression()), !dbg !107
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_544"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  store %Int64 zeroinitializer, %Int64* %"$res__22", align 8, !dbg !108
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_549"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %"$test__23" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__23", metadata !109, metadata !DIExpression()), !dbg !110
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 4, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_554"
  %"$consume_560" = sub i64 %"$gasrem_556", 4
  store i64 %"$consume_560", i64* @_gasrem, align 8
  %"$execptr_load_561" = load i8*, i8** @_execptr, align 8
  %"$$res_21_562" = load %Int64, %Int64* %"$res_21", align 8
  %"$$res__22_563" = load %Int64, %Int64* %"$res__22", align 8
  %"$eq_call_564" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_561", %Int64 %"$$res_21_562", %Int64 %"$$res__22_563"), !dbg !111
  store %TName_Bool* %"$eq_call_564", %TName_Bool** %"$test__23", align 8, !dbg !111
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 1, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_559"
  %"$consume_570" = sub i64 %"$gasrem_566", 1
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %"$BoolUtils.andb_85" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_571" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_572" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_571", 0
  %"$BoolUtils.andb_envptr_573" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_571", 1
  %"$$test_18_574" = load %TName_Bool*, %TName_Bool** %"$test_18", align 8
  %"$BoolUtils.andb_call_575" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_572"(i8* %"$BoolUtils.andb_envptr_573", %TName_Bool* %"$$test_18_574"), !dbg !112
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_575", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_85", align 8, !dbg !112
  %"$BoolUtils.andb_86" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_86", metadata !113, metadata !DIExpression()), !dbg !112
  %"$$BoolUtils.andb_85_576" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_85", align 8
  %"$$BoolUtils.andb_85_fptr_577" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_85_576", 0
  %"$$BoolUtils.andb_85_envptr_578" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_85_576", 1
  %"$$test__23_579" = load %TName_Bool*, %TName_Bool** %"$test__23", align 8
  %"$$BoolUtils.andb_85_call_580" = call %TName_Bool* %"$$BoolUtils.andb_85_fptr_577"(i8* %"$$BoolUtils.andb_85_envptr_578", %TName_Bool* %"$$test__23_579"), !dbg !112
  store %TName_Bool* %"$$BoolUtils.andb_85_call_580", %TName_Bool** %"$BoolUtils.andb_86", align 8, !dbg !112
  %"$$BoolUtils.andb_86_581" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_86", align 8
  store %TName_Bool* %"$$BoolUtils.andb_86_581", %TName_Bool** %"$test_24", align 8, !dbg !112
  %"$gasrem_582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_583" = icmp ugt i64 1, %"$gasrem_582"
  br i1 %"$gascmp_583", label %"$out_of_gas_584", label %"$have_gas_585"

"$out_of_gas_584":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_585"

"$have_gas_585":                                  ; preds = %"$out_of_gas_584", %"$have_gas_569"
  %"$consume_586" = sub i64 %"$gasrem_582", 1
  store i64 %"$consume_586", i64* @_gasrem, align 8
  %"$arg1_25" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$arg1_25", metadata !114, metadata !DIExpression()), !dbg !115
  %"$gasrem_587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_588" = icmp ugt i64 1, %"$gasrem_587"
  br i1 %"$gascmp_588", label %"$out_of_gas_589", label %"$have_gas_590"

"$out_of_gas_589":                                ; preds = %"$have_gas_585"
  call void @_out_of_gas()
  br label %"$have_gas_590"

"$have_gas_590":                                  ; preds = %"$out_of_gas_589", %"$have_gas_585"
  %"$consume_591" = sub i64 %"$gasrem_587", 1
  store i64 %"$consume_591", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775806 }, %Int64* %"$arg1_25", align 8, !dbg !116
  %"$gasrem_592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_593" = icmp ugt i64 1, %"$gasrem_592"
  br i1 %"$gascmp_593", label %"$out_of_gas_594", label %"$have_gas_595"

"$out_of_gas_594":                                ; preds = %"$have_gas_590"
  call void @_out_of_gas()
  br label %"$have_gas_595"

"$have_gas_595":                                  ; preds = %"$out_of_gas_594", %"$have_gas_590"
  %"$consume_596" = sub i64 %"$gasrem_592", 1
  store i64 %"$consume_596", i64* @_gasrem, align 8
  %"$arg2_26" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$arg2_26", metadata !117, metadata !DIExpression()), !dbg !118
  %"$gasrem_597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_598" = icmp ugt i64 1, %"$gasrem_597"
  br i1 %"$gascmp_598", label %"$out_of_gas_599", label %"$have_gas_600"

"$out_of_gas_599":                                ; preds = %"$have_gas_595"
  call void @_out_of_gas()
  br label %"$have_gas_600"

"$have_gas_600":                                  ; preds = %"$out_of_gas_599", %"$have_gas_595"
  %"$consume_601" = sub i64 %"$gasrem_597", 1
  store i64 %"$consume_601", i64* @_gasrem, align 8
  store %Int64 { i64 -1 }, %Int64* %"$arg2_26", align 8, !dbg !119
  %"$gasrem_602" = load i64, i64* @_gasrem, align 8
  %"$gascmp_603" = icmp ugt i64 1, %"$gasrem_602"
  br i1 %"$gascmp_603", label %"$out_of_gas_604", label %"$have_gas_605"

"$out_of_gas_604":                                ; preds = %"$have_gas_600"
  call void @_out_of_gas()
  br label %"$have_gas_605"

"$have_gas_605":                                  ; preds = %"$out_of_gas_604", %"$have_gas_600"
  %"$consume_606" = sub i64 %"$gasrem_602", 1
  store i64 %"$consume_606", i64* @_gasrem, align 8
  %"$test_30" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_30", metadata !120, metadata !DIExpression()), !dbg !121
  %"$gasrem_607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_608" = icmp ugt i64 1, %"$gasrem_607"
  br i1 %"$gascmp_608", label %"$out_of_gas_609", label %"$have_gas_610"

"$out_of_gas_609":                                ; preds = %"$have_gas_605"
  call void @_out_of_gas()
  br label %"$have_gas_610"

"$have_gas_610":                                  ; preds = %"$out_of_gas_609", %"$have_gas_605"
  %"$consume_611" = sub i64 %"$gasrem_607", 1
  store i64 %"$consume_611", i64* @_gasrem, align 8
  %"$res_27" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$res_27", metadata !122, metadata !DIExpression()), !dbg !123
  %"$gasrem_612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_613" = icmp ugt i64 4, %"$gasrem_612"
  br i1 %"$gascmp_613", label %"$out_of_gas_614", label %"$have_gas_615"

"$out_of_gas_614":                                ; preds = %"$have_gas_610"
  call void @_out_of_gas()
  br label %"$have_gas_615"

"$have_gas_615":                                  ; preds = %"$out_of_gas_614", %"$have_gas_610"
  %"$consume_616" = sub i64 %"$gasrem_612", 4
  store i64 %"$consume_616", i64* @_gasrem, align 8
  %"$$arg1_25_617" = load %Int64, %Int64* %"$arg1_25", align 8
  %"$$arg2_26_618" = load %Int64, %Int64* %"$arg2_26", align 8
  %"$sub_call_619" = call %Int64 @_sub_Int64(%Int64 %"$$arg1_25_617", %Int64 %"$$arg2_26_618"), !dbg !124
  store %Int64 %"$sub_call_619", %Int64* %"$res_27", align 8, !dbg !124
  %"$gasrem_620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_621" = icmp ugt i64 1, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %"$have_gas_615"
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %"$have_gas_615"
  %"$consume_624" = sub i64 %"$gasrem_620", 1
  store i64 %"$consume_624", i64* @_gasrem, align 8
  %"$res__28" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$res__28", metadata !125, metadata !DIExpression()), !dbg !126
  %"$gasrem_625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_626" = icmp ugt i64 1, %"$gasrem_625"
  br i1 %"$gascmp_626", label %"$out_of_gas_627", label %"$have_gas_628"

"$out_of_gas_627":                                ; preds = %"$have_gas_623"
  call void @_out_of_gas()
  br label %"$have_gas_628"

"$have_gas_628":                                  ; preds = %"$out_of_gas_627", %"$have_gas_623"
  %"$consume_629" = sub i64 %"$gasrem_625", 1
  store i64 %"$consume_629", i64* @_gasrem, align 8
  store %Int64 { i64 9223372036854775807 }, %Int64* %"$res__28", align 8, !dbg !127
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 1, %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %"$have_gas_628"
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %"$have_gas_628"
  %"$consume_634" = sub i64 %"$gasrem_630", 1
  store i64 %"$consume_634", i64* @_gasrem, align 8
  %"$test__29" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__29", metadata !128, metadata !DIExpression()), !dbg !129
  %"$gasrem_635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_636" = icmp ugt i64 4, %"$gasrem_635"
  br i1 %"$gascmp_636", label %"$out_of_gas_637", label %"$have_gas_638"

"$out_of_gas_637":                                ; preds = %"$have_gas_633"
  call void @_out_of_gas()
  br label %"$have_gas_638"

"$have_gas_638":                                  ; preds = %"$out_of_gas_637", %"$have_gas_633"
  %"$consume_639" = sub i64 %"$gasrem_635", 4
  store i64 %"$consume_639", i64* @_gasrem, align 8
  %"$execptr_load_640" = load i8*, i8** @_execptr, align 8
  %"$$res_27_641" = load %Int64, %Int64* %"$res_27", align 8
  %"$$res__28_642" = load %Int64, %Int64* %"$res__28", align 8
  %"$eq_call_643" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_640", %Int64 %"$$res_27_641", %Int64 %"$$res__28_642"), !dbg !130
  store %TName_Bool* %"$eq_call_643", %TName_Bool** %"$test__29", align 8, !dbg !130
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_638"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_638"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  %"$BoolUtils.andb_87" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_650" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_651" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_650", 0
  %"$BoolUtils.andb_envptr_652" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_650", 1
  %"$$test_24_653" = load %TName_Bool*, %TName_Bool** %"$test_24", align 8
  %"$BoolUtils.andb_call_654" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_651"(i8* %"$BoolUtils.andb_envptr_652", %TName_Bool* %"$$test_24_653"), !dbg !131
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_654", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_87", align 8, !dbg !131
  %"$BoolUtils.andb_88" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_88", metadata !132, metadata !DIExpression()), !dbg !131
  %"$$BoolUtils.andb_87_655" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_87", align 8
  %"$$BoolUtils.andb_87_fptr_656" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_87_655", 0
  %"$$BoolUtils.andb_87_envptr_657" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_87_655", 1
  %"$$test__29_658" = load %TName_Bool*, %TName_Bool** %"$test__29", align 8
  %"$$BoolUtils.andb_87_call_659" = call %TName_Bool* %"$$BoolUtils.andb_87_fptr_656"(i8* %"$$BoolUtils.andb_87_envptr_657", %TName_Bool* %"$$test__29_658"), !dbg !131
  store %TName_Bool* %"$$BoolUtils.andb_87_call_659", %TName_Bool** %"$BoolUtils.andb_88", align 8, !dbg !131
  %"$$BoolUtils.andb_88_660" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_88", align 8
  store %TName_Bool* %"$$BoolUtils.andb_88_660", %TName_Bool** %"$test_30", align 8, !dbg !131
  %"$gasrem_661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_662" = icmp ugt i64 1, %"$gasrem_661"
  br i1 %"$gascmp_662", label %"$out_of_gas_663", label %"$have_gas_664"

"$out_of_gas_663":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_664"

"$have_gas_664":                                  ; preds = %"$out_of_gas_663", %"$have_gas_648"
  %"$consume_665" = sub i64 %"$gasrem_661", 1
  store i64 %"$consume_665", i64* @_gasrem, align 8
  %"$arg1_31" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$arg1_31", metadata !133, metadata !DIExpression()), !dbg !135
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_664"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_664"
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$arg1_31", align 8, !dbg !136
  %"$gasrem_671" = load i64, i64* @_gasrem, align 8
  %"$gascmp_672" = icmp ugt i64 1, %"$gasrem_671"
  br i1 %"$gascmp_672", label %"$out_of_gas_673", label %"$have_gas_674"

"$out_of_gas_673":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_674"

"$have_gas_674":                                  ; preds = %"$out_of_gas_673", %"$have_gas_669"
  %"$consume_675" = sub i64 %"$gasrem_671", 1
  store i64 %"$consume_675", i64* @_gasrem, align 8
  %"$arg2_32" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$arg2_32", metadata !137, metadata !DIExpression()), !dbg !138
  %"$gasrem_676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_677" = icmp ugt i64 1, %"$gasrem_676"
  br i1 %"$gascmp_677", label %"$out_of_gas_678", label %"$have_gas_679"

"$out_of_gas_678":                                ; preds = %"$have_gas_674"
  call void @_out_of_gas()
  br label %"$have_gas_679"

"$have_gas_679":                                  ; preds = %"$out_of_gas_678", %"$have_gas_674"
  %"$consume_680" = sub i64 %"$gasrem_676", 1
  store i64 %"$consume_680", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %"$arg2_32", align 8, !dbg !139
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %"$have_gas_679"
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %"$have_gas_679"
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem, align 8
  %"$test_36" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_36", metadata !140, metadata !DIExpression()), !dbg !141
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 1, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$have_gas_684"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$have_gas_684"
  %"$consume_690" = sub i64 %"$gasrem_686", 1
  store i64 %"$consume_690", i64* @_gasrem, align 8
  %"$res_33" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$res_33", metadata !142, metadata !DIExpression()), !dbg !143
  %"$gasrem_692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_693" = icmp ugt i64 8, %"$gasrem_692"
  br i1 %"$gascmp_693", label %"$out_of_gas_694", label %"$have_gas_695"

"$out_of_gas_694":                                ; preds = %"$have_gas_689"
  call void @_out_of_gas()
  br label %"$have_gas_695"

"$have_gas_695":                                  ; preds = %"$out_of_gas_694", %"$have_gas_689"
  %"$consume_696" = sub i64 %"$gasrem_692", 8
  store i64 %"$consume_696", i64* @_gasrem, align 8
  %"$$arg1_31_697" = load %Uint128, %Uint128* %"$arg1_31", align 8
  %"$$arg2_32_698" = load %Uint128, %Uint128* %"$arg2_32", align 8
  %"$sub_call_699" = call %Uint128 @_sub_Uint128(%Uint128 %"$$arg1_31_697", %Uint128 %"$$arg2_32_698"), !dbg !144
  store %Uint128 %"$sub_call_699", %Uint128* %"$res_33", align 8, !dbg !144
  %"$gasrem_700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_701" = icmp ugt i64 1, %"$gasrem_700"
  br i1 %"$gascmp_701", label %"$out_of_gas_702", label %"$have_gas_703"

"$out_of_gas_702":                                ; preds = %"$have_gas_695"
  call void @_out_of_gas()
  br label %"$have_gas_703"

"$have_gas_703":                                  ; preds = %"$out_of_gas_702", %"$have_gas_695"
  %"$consume_704" = sub i64 %"$gasrem_700", 1
  store i64 %"$consume_704", i64* @_gasrem, align 8
  %"$res__34" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$res__34", metadata !145, metadata !DIExpression()), !dbg !146
  %"$gasrem_705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_706" = icmp ugt i64 1, %"$gasrem_705"
  br i1 %"$gascmp_706", label %"$out_of_gas_707", label %"$have_gas_708"

"$out_of_gas_707":                                ; preds = %"$have_gas_703"
  call void @_out_of_gas()
  br label %"$have_gas_708"

"$have_gas_708":                                  ; preds = %"$out_of_gas_707", %"$have_gas_703"
  %"$consume_709" = sub i64 %"$gasrem_705", 1
  store i64 %"$consume_709", i64* @_gasrem, align 8
  store %Uint128 { i128 -2 }, %Uint128* %"$res__34", align 8, !dbg !147
  %"$gasrem_710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_711" = icmp ugt i64 1, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %"$have_gas_708"
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %"$have_gas_708"
  %"$consume_714" = sub i64 %"$gasrem_710", 1
  store i64 %"$consume_714", i64* @_gasrem, align 8
  %"$test__35" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__35", metadata !148, metadata !DIExpression()), !dbg !149
  %"$gasrem_716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_717" = icmp ugt i64 8, %"$gasrem_716"
  br i1 %"$gascmp_717", label %"$out_of_gas_718", label %"$have_gas_719"

"$out_of_gas_718":                                ; preds = %"$have_gas_713"
  call void @_out_of_gas()
  br label %"$have_gas_719"

"$have_gas_719":                                  ; preds = %"$out_of_gas_718", %"$have_gas_713"
  %"$consume_720" = sub i64 %"$gasrem_716", 8
  store i64 %"$consume_720", i64* @_gasrem, align 8
  %"$execptr_load_721" = load i8*, i8** @_execptr, align 8
  %"$$res_33_722" = load %Uint128, %Uint128* %"$res_33", align 8
  %"$$res__34_723" = load %Uint128, %Uint128* %"$res__34", align 8
  %"$eq_call_724" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_721", %Uint128 %"$$res_33_722", %Uint128 %"$$res__34_723"), !dbg !150
  store %TName_Bool* %"$eq_call_724", %TName_Bool** %"$test__35", align 8, !dbg !150
  %"$gasrem_726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_727" = icmp ugt i64 1, %"$gasrem_726"
  br i1 %"$gascmp_727", label %"$out_of_gas_728", label %"$have_gas_729"

"$out_of_gas_728":                                ; preds = %"$have_gas_719"
  call void @_out_of_gas()
  br label %"$have_gas_729"

"$have_gas_729":                                  ; preds = %"$out_of_gas_728", %"$have_gas_719"
  %"$consume_730" = sub i64 %"$gasrem_726", 1
  store i64 %"$consume_730", i64* @_gasrem, align 8
  %"$BoolUtils.andb_89" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_731" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_732" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_731", 0
  %"$BoolUtils.andb_envptr_733" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_731", 1
  %"$$test_30_734" = load %TName_Bool*, %TName_Bool** %"$test_30", align 8
  %"$BoolUtils.andb_call_735" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_732"(i8* %"$BoolUtils.andb_envptr_733", %TName_Bool* %"$$test_30_734"), !dbg !151
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_735", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_89", align 8, !dbg !151
  %"$BoolUtils.andb_90" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_90", metadata !152, metadata !DIExpression()), !dbg !151
  %"$$BoolUtils.andb_89_736" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_89", align 8
  %"$$BoolUtils.andb_89_fptr_737" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_89_736", 0
  %"$$BoolUtils.andb_89_envptr_738" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_89_736", 1
  %"$$test__35_739" = load %TName_Bool*, %TName_Bool** %"$test__35", align 8
  %"$$BoolUtils.andb_89_call_740" = call %TName_Bool* %"$$BoolUtils.andb_89_fptr_737"(i8* %"$$BoolUtils.andb_89_envptr_738", %TName_Bool* %"$$test__35_739"), !dbg !151
  store %TName_Bool* %"$$BoolUtils.andb_89_call_740", %TName_Bool** %"$BoolUtils.andb_90", align 8, !dbg !151
  %"$$BoolUtils.andb_90_741" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_90", align 8
  store %TName_Bool* %"$$BoolUtils.andb_90_741", %TName_Bool** %"$test_36", align 8, !dbg !151
  %"$gasrem_742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_743" = icmp ugt i64 1, %"$gasrem_742"
  br i1 %"$gascmp_743", label %"$out_of_gas_744", label %"$have_gas_745"

"$out_of_gas_744":                                ; preds = %"$have_gas_729"
  call void @_out_of_gas()
  br label %"$have_gas_745"

"$have_gas_745":                                  ; preds = %"$out_of_gas_744", %"$have_gas_729"
  %"$consume_746" = sub i64 %"$gasrem_742", 1
  store i64 %"$consume_746", i64* @_gasrem, align 8
  %"$arg1_37" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$arg1_37", metadata !153, metadata !DIExpression()), !dbg !154
  %"$gasrem_747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_748" = icmp ugt i64 1, %"$gasrem_747"
  br i1 %"$gascmp_748", label %"$out_of_gas_749", label %"$have_gas_750"

"$out_of_gas_749":                                ; preds = %"$have_gas_745"
  call void @_out_of_gas()
  br label %"$have_gas_750"

"$have_gas_750":                                  ; preds = %"$out_of_gas_749", %"$have_gas_745"
  %"$consume_751" = sub i64 %"$gasrem_747", 1
  store i64 %"$consume_751", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$arg1_37", align 8, !dbg !155
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 1, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_750"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_750"
  %"$consume_756" = sub i64 %"$gasrem_752", 1
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %"$arg2_38" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$arg2_38", metadata !156, metadata !DIExpression()), !dbg !157
  %"$gasrem_757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_758" = icmp ugt i64 1, %"$gasrem_757"
  br i1 %"$gascmp_758", label %"$out_of_gas_759", label %"$have_gas_760"

"$out_of_gas_759":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_760"

"$have_gas_760":                                  ; preds = %"$out_of_gas_759", %"$have_gas_755"
  %"$consume_761" = sub i64 %"$gasrem_757", 1
  store i64 %"$consume_761", i64* @_gasrem, align 8
  store %Uint128 zeroinitializer, %Uint128* %"$arg2_38", align 8, !dbg !158
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_760"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_760"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$test_42" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_42", metadata !159, metadata !DIExpression()), !dbg !160
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %"$have_gas_765"
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %"$have_gas_765"
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem, align 8
  %"$res_39" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$res_39", metadata !161, metadata !DIExpression()), !dbg !162
  %"$gasrem_773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_774" = icmp ugt i64 8, %"$gasrem_773"
  br i1 %"$gascmp_774", label %"$out_of_gas_775", label %"$have_gas_776"

"$out_of_gas_775":                                ; preds = %"$have_gas_770"
  call void @_out_of_gas()
  br label %"$have_gas_776"

"$have_gas_776":                                  ; preds = %"$out_of_gas_775", %"$have_gas_770"
  %"$consume_777" = sub i64 %"$gasrem_773", 8
  store i64 %"$consume_777", i64* @_gasrem, align 8
  %"$$arg1_37_778" = load %Uint128, %Uint128* %"$arg1_37", align 8
  %"$$arg2_38_779" = load %Uint128, %Uint128* %"$arg2_38", align 8
  %"$sub_call_780" = call %Uint128 @_sub_Uint128(%Uint128 %"$$arg1_37_778", %Uint128 %"$$arg2_38_779"), !dbg !163
  store %Uint128 %"$sub_call_780", %Uint128* %"$res_39", align 8, !dbg !163
  %"$gasrem_781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_782" = icmp ugt i64 1, %"$gasrem_781"
  br i1 %"$gascmp_782", label %"$out_of_gas_783", label %"$have_gas_784"

"$out_of_gas_783":                                ; preds = %"$have_gas_776"
  call void @_out_of_gas()
  br label %"$have_gas_784"

"$have_gas_784":                                  ; preds = %"$out_of_gas_783", %"$have_gas_776"
  %"$consume_785" = sub i64 %"$gasrem_781", 1
  store i64 %"$consume_785", i64* @_gasrem, align 8
  %"$res__40" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$res__40", metadata !164, metadata !DIExpression()), !dbg !165
  %"$gasrem_786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_787" = icmp ugt i64 1, %"$gasrem_786"
  br i1 %"$gascmp_787", label %"$out_of_gas_788", label %"$have_gas_789"

"$out_of_gas_788":                                ; preds = %"$have_gas_784"
  call void @_out_of_gas()
  br label %"$have_gas_789"

"$have_gas_789":                                  ; preds = %"$out_of_gas_788", %"$have_gas_784"
  %"$consume_790" = sub i64 %"$gasrem_786", 1
  store i64 %"$consume_790", i64* @_gasrem, align 8
  store %Uint128 { i128 -1 }, %Uint128* %"$res__40", align 8, !dbg !166
  %"$gasrem_791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_792" = icmp ugt i64 1, %"$gasrem_791"
  br i1 %"$gascmp_792", label %"$out_of_gas_793", label %"$have_gas_794"

"$out_of_gas_793":                                ; preds = %"$have_gas_789"
  call void @_out_of_gas()
  br label %"$have_gas_794"

"$have_gas_794":                                  ; preds = %"$out_of_gas_793", %"$have_gas_789"
  %"$consume_795" = sub i64 %"$gasrem_791", 1
  store i64 %"$consume_795", i64* @_gasrem, align 8
  %"$test__41" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__41", metadata !167, metadata !DIExpression()), !dbg !168
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 8, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %"$have_gas_794"
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %"$have_gas_794"
  %"$consume_801" = sub i64 %"$gasrem_797", 8
  store i64 %"$consume_801", i64* @_gasrem, align 8
  %"$execptr_load_802" = load i8*, i8** @_execptr, align 8
  %"$$res_39_803" = load %Uint128, %Uint128* %"$res_39", align 8
  %"$$res__40_804" = load %Uint128, %Uint128* %"$res__40", align 8
  %"$eq_call_805" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_802", %Uint128 %"$$res_39_803", %Uint128 %"$$res__40_804"), !dbg !169
  store %TName_Bool* %"$eq_call_805", %TName_Bool** %"$test__41", align 8, !dbg !169
  %"$gasrem_807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_808" = icmp ugt i64 1, %"$gasrem_807"
  br i1 %"$gascmp_808", label %"$out_of_gas_809", label %"$have_gas_810"

"$out_of_gas_809":                                ; preds = %"$have_gas_800"
  call void @_out_of_gas()
  br label %"$have_gas_810"

"$have_gas_810":                                  ; preds = %"$out_of_gas_809", %"$have_gas_800"
  %"$consume_811" = sub i64 %"$gasrem_807", 1
  store i64 %"$consume_811", i64* @_gasrem, align 8
  %"$BoolUtils.andb_91" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_812" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_813" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_812", 0
  %"$BoolUtils.andb_envptr_814" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_812", 1
  %"$$test_36_815" = load %TName_Bool*, %TName_Bool** %"$test_36", align 8
  %"$BoolUtils.andb_call_816" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_813"(i8* %"$BoolUtils.andb_envptr_814", %TName_Bool* %"$$test_36_815"), !dbg !170
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_816", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_91", align 8, !dbg !170
  %"$BoolUtils.andb_92" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_92", metadata !171, metadata !DIExpression()), !dbg !170
  %"$$BoolUtils.andb_91_817" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_91", align 8
  %"$$BoolUtils.andb_91_fptr_818" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_91_817", 0
  %"$$BoolUtils.andb_91_envptr_819" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_91_817", 1
  %"$$test__41_820" = load %TName_Bool*, %TName_Bool** %"$test__41", align 8
  %"$$BoolUtils.andb_91_call_821" = call %TName_Bool* %"$$BoolUtils.andb_91_fptr_818"(i8* %"$$BoolUtils.andb_91_envptr_819", %TName_Bool* %"$$test__41_820"), !dbg !170
  store %TName_Bool* %"$$BoolUtils.andb_91_call_821", %TName_Bool** %"$BoolUtils.andb_92", align 8, !dbg !170
  %"$$BoolUtils.andb_92_822" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_92", align 8
  store %TName_Bool* %"$$BoolUtils.andb_92_822", %TName_Bool** %"$test_42", align 8, !dbg !170
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 1, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %"$have_gas_810"
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %"$have_gas_810"
  %"$consume_827" = sub i64 %"$gasrem_823", 1
  store i64 %"$consume_827", i64* @_gasrem, align 8
  %"$arg1_43" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_43", metadata !172, metadata !DIExpression()), !dbg !174
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$have_gas_826"
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211455 }, %Uint256* %"$arg1_43", align 8, !dbg !175
  %"$gasrem_833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_834" = icmp ugt i64 1, %"$gasrem_833"
  br i1 %"$gascmp_834", label %"$out_of_gas_835", label %"$have_gas_836"

"$out_of_gas_835":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_836"

"$have_gas_836":                                  ; preds = %"$out_of_gas_835", %"$have_gas_831"
  %"$consume_837" = sub i64 %"$gasrem_833", 1
  store i64 %"$consume_837", i64* @_gasrem, align 8
  %"$arg2_44" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_44", metadata !176, metadata !DIExpression()), !dbg !177
  %"$gasrem_838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_839" = icmp ugt i64 1, %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %"$have_gas_836"
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %"$have_gas_836"
  %"$consume_842" = sub i64 %"$gasrem_838", 1
  store i64 %"$consume_842", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$arg2_44", align 8, !dbg !178
  %"$gasrem_843" = load i64, i64* @_gasrem, align 8
  %"$gascmp_844" = icmp ugt i64 1, %"$gasrem_843"
  br i1 %"$gascmp_844", label %"$out_of_gas_845", label %"$have_gas_846"

"$out_of_gas_845":                                ; preds = %"$have_gas_841"
  call void @_out_of_gas()
  br label %"$have_gas_846"

"$have_gas_846":                                  ; preds = %"$out_of_gas_845", %"$have_gas_841"
  %"$consume_847" = sub i64 %"$gasrem_843", 1
  store i64 %"$consume_847", i64* @_gasrem, align 8
  %"$test_48" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_48", metadata !179, metadata !DIExpression()), !dbg !180
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 1, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %"$have_gas_846"
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %"$have_gas_846"
  %"$consume_852" = sub i64 %"$gasrem_848", 1
  store i64 %"$consume_852", i64* @_gasrem, align 8
  %"$res_45" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_45", metadata !181, metadata !DIExpression()), !dbg !182
  %"$gasrem_854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_855" = icmp ugt i64 16, %"$gasrem_854"
  br i1 %"$gascmp_855", label %"$out_of_gas_856", label %"$have_gas_857"

"$out_of_gas_856":                                ; preds = %"$have_gas_851"
  call void @_out_of_gas()
  br label %"$have_gas_857"

"$have_gas_857":                                  ; preds = %"$out_of_gas_856", %"$have_gas_851"
  %"$consume_858" = sub i64 %"$gasrem_854", 16
  store i64 %"$consume_858", i64* @_gasrem, align 8
  %"$execptr_load_859" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_43_860" = alloca %Uint256, align 8
  %"$$arg1_43_861" = load %Uint256, %Uint256* %"$arg1_43", align 8
  store %Uint256 %"$$arg1_43_861", %Uint256* %"$sub_$arg1_43_860", align 8
  %"$sub_$arg2_44_862" = alloca %Uint256, align 8
  %"$$arg2_44_863" = load %Uint256, %Uint256* %"$arg2_44", align 8
  store %Uint256 %"$$arg2_44_863", %Uint256* %"$sub_$arg2_44_862", align 8
  %"$sub_call_864" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_859", %Uint256* %"$sub_$arg1_43_860", %Uint256* %"$sub_$arg2_44_862"), !dbg !183
  %"$sub_866" = load %Uint256, %Uint256* %"$sub_call_864", align 8
  store %Uint256 %"$sub_866", %Uint256* %"$res_45", align 8, !dbg !183
  %"$gasrem_867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_868" = icmp ugt i64 1, %"$gasrem_867"
  br i1 %"$gascmp_868", label %"$out_of_gas_869", label %"$have_gas_870"

"$out_of_gas_869":                                ; preds = %"$have_gas_857"
  call void @_out_of_gas()
  br label %"$have_gas_870"

"$have_gas_870":                                  ; preds = %"$out_of_gas_869", %"$have_gas_857"
  %"$consume_871" = sub i64 %"$gasrem_867", 1
  store i64 %"$consume_871", i64* @_gasrem, align 8
  %"$res__46" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__46", metadata !184, metadata !DIExpression()), !dbg !185
  %"$gasrem_872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_873" = icmp ugt i64 1, %"$gasrem_872"
  br i1 %"$gascmp_873", label %"$out_of_gas_874", label %"$have_gas_875"

"$out_of_gas_874":                                ; preds = %"$have_gas_870"
  call void @_out_of_gas()
  br label %"$have_gas_875"

"$have_gas_875":                                  ; preds = %"$out_of_gas_874", %"$have_gas_870"
  %"$consume_876" = sub i64 %"$gasrem_872", 1
  store i64 %"$consume_876", i64* @_gasrem, align 8
  store %Uint256 { i256 340282366920938463463374607431768211454 }, %Uint256* %"$res__46", align 8, !dbg !186
  %"$gasrem_877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_878" = icmp ugt i64 1, %"$gasrem_877"
  br i1 %"$gascmp_878", label %"$out_of_gas_879", label %"$have_gas_880"

"$out_of_gas_879":                                ; preds = %"$have_gas_875"
  call void @_out_of_gas()
  br label %"$have_gas_880"

"$have_gas_880":                                  ; preds = %"$out_of_gas_879", %"$have_gas_875"
  %"$consume_881" = sub i64 %"$gasrem_877", 1
  store i64 %"$consume_881", i64* @_gasrem, align 8
  %"$test__47" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__47", metadata !187, metadata !DIExpression()), !dbg !188
  %"$gasrem_883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_884" = icmp ugt i64 16, %"$gasrem_883"
  br i1 %"$gascmp_884", label %"$out_of_gas_885", label %"$have_gas_886"

"$out_of_gas_885":                                ; preds = %"$have_gas_880"
  call void @_out_of_gas()
  br label %"$have_gas_886"

"$have_gas_886":                                  ; preds = %"$out_of_gas_885", %"$have_gas_880"
  %"$consume_887" = sub i64 %"$gasrem_883", 16
  store i64 %"$consume_887", i64* @_gasrem, align 8
  %"$execptr_load_888" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_45_889" = alloca %Uint256, align 8
  %"$$res_45_890" = load %Uint256, %Uint256* %"$res_45", align 8
  store %Uint256 %"$$res_45_890", %Uint256* %"$eq_$res_45_889", align 8
  %"$eq_$res__46_891" = alloca %Uint256, align 8
  %"$$res__46_892" = load %Uint256, %Uint256* %"$res__46", align 8
  store %Uint256 %"$$res__46_892", %Uint256* %"$eq_$res__46_891", align 8
  %"$eq_call_893" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_888", %Uint256* %"$eq_$res_45_889", %Uint256* %"$eq_$res__46_891"), !dbg !189
  store %TName_Bool* %"$eq_call_893", %TName_Bool** %"$test__47", align 8, !dbg !189
  %"$gasrem_895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_896" = icmp ugt i64 1, %"$gasrem_895"
  br i1 %"$gascmp_896", label %"$out_of_gas_897", label %"$have_gas_898"

"$out_of_gas_897":                                ; preds = %"$have_gas_886"
  call void @_out_of_gas()
  br label %"$have_gas_898"

"$have_gas_898":                                  ; preds = %"$out_of_gas_897", %"$have_gas_886"
  %"$consume_899" = sub i64 %"$gasrem_895", 1
  store i64 %"$consume_899", i64* @_gasrem, align 8
  %"$BoolUtils.andb_93" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_900" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_901" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_900", 0
  %"$BoolUtils.andb_envptr_902" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_900", 1
  %"$$test_42_903" = load %TName_Bool*, %TName_Bool** %"$test_42", align 8
  %"$BoolUtils.andb_call_904" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_901"(i8* %"$BoolUtils.andb_envptr_902", %TName_Bool* %"$$test_42_903"), !dbg !190
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_904", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_93", align 8, !dbg !190
  %"$BoolUtils.andb_94" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_94", metadata !191, metadata !DIExpression()), !dbg !190
  %"$$BoolUtils.andb_93_905" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_93", align 8
  %"$$BoolUtils.andb_93_fptr_906" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_93_905", 0
  %"$$BoolUtils.andb_93_envptr_907" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_93_905", 1
  %"$$test__47_908" = load %TName_Bool*, %TName_Bool** %"$test__47", align 8
  %"$$BoolUtils.andb_93_call_909" = call %TName_Bool* %"$$BoolUtils.andb_93_fptr_906"(i8* %"$$BoolUtils.andb_93_envptr_907", %TName_Bool* %"$$test__47_908"), !dbg !190
  store %TName_Bool* %"$$BoolUtils.andb_93_call_909", %TName_Bool** %"$BoolUtils.andb_94", align 8, !dbg !190
  %"$$BoolUtils.andb_94_910" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_94", align 8
  store %TName_Bool* %"$$BoolUtils.andb_94_910", %TName_Bool** %"$test_48", align 8, !dbg !190
  %"$gasrem_911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_912" = icmp ugt i64 1, %"$gasrem_911"
  br i1 %"$gascmp_912", label %"$out_of_gas_913", label %"$have_gas_914"

"$out_of_gas_913":                                ; preds = %"$have_gas_898"
  call void @_out_of_gas()
  br label %"$have_gas_914"

"$have_gas_914":                                  ; preds = %"$out_of_gas_913", %"$have_gas_898"
  %"$consume_915" = sub i64 %"$gasrem_911", 1
  store i64 %"$consume_915", i64* @_gasrem, align 8
  %"$arg1_49" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_49", metadata !192, metadata !DIExpression()), !dbg !193
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_914"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_914"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg1_49", align 8, !dbg !194
  %"$gasrem_921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_922" = icmp ugt i64 1, %"$gasrem_921"
  br i1 %"$gascmp_922", label %"$out_of_gas_923", label %"$have_gas_924"

"$out_of_gas_923":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_924"

"$have_gas_924":                                  ; preds = %"$out_of_gas_923", %"$have_gas_919"
  %"$consume_925" = sub i64 %"$gasrem_921", 1
  store i64 %"$consume_925", i64* @_gasrem, align 8
  %"$arg2_50" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_50", metadata !195, metadata !DIExpression()), !dbg !196
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 1, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %"$have_gas_924"
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %"$have_gas_924"
  %"$consume_930" = sub i64 %"$gasrem_926", 1
  store i64 %"$consume_930", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg2_50", align 8, !dbg !197
  %"$gasrem_931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_932" = icmp ugt i64 1, %"$gasrem_931"
  br i1 %"$gascmp_932", label %"$out_of_gas_933", label %"$have_gas_934"

"$out_of_gas_933":                                ; preds = %"$have_gas_929"
  call void @_out_of_gas()
  br label %"$have_gas_934"

"$have_gas_934":                                  ; preds = %"$out_of_gas_933", %"$have_gas_929"
  %"$consume_935" = sub i64 %"$gasrem_931", 1
  store i64 %"$consume_935", i64* @_gasrem, align 8
  %"$test_54" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_54", metadata !198, metadata !DIExpression()), !dbg !199
  %"$gasrem_936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_937" = icmp ugt i64 1, %"$gasrem_936"
  br i1 %"$gascmp_937", label %"$out_of_gas_938", label %"$have_gas_939"

"$out_of_gas_938":                                ; preds = %"$have_gas_934"
  call void @_out_of_gas()
  br label %"$have_gas_939"

"$have_gas_939":                                  ; preds = %"$out_of_gas_938", %"$have_gas_934"
  %"$consume_940" = sub i64 %"$gasrem_936", 1
  store i64 %"$consume_940", i64* @_gasrem, align 8
  %"$res_51" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_51", metadata !200, metadata !DIExpression()), !dbg !201
  %"$gasrem_942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_943" = icmp ugt i64 16, %"$gasrem_942"
  br i1 %"$gascmp_943", label %"$out_of_gas_944", label %"$have_gas_945"

"$out_of_gas_944":                                ; preds = %"$have_gas_939"
  call void @_out_of_gas()
  br label %"$have_gas_945"

"$have_gas_945":                                  ; preds = %"$out_of_gas_944", %"$have_gas_939"
  %"$consume_946" = sub i64 %"$gasrem_942", 16
  store i64 %"$consume_946", i64* @_gasrem, align 8
  %"$execptr_load_947" = load i8*, i8** @_execptr, align 8
  %"$sub_$arg1_49_948" = alloca %Uint256, align 8
  %"$$arg1_49_949" = load %Uint256, %Uint256* %"$arg1_49", align 8
  store %Uint256 %"$$arg1_49_949", %Uint256* %"$sub_$arg1_49_948", align 8
  %"$sub_$arg2_50_950" = alloca %Uint256, align 8
  %"$$arg2_50_951" = load %Uint256, %Uint256* %"$arg2_50", align 8
  store %Uint256 %"$$arg2_50_951", %Uint256* %"$sub_$arg2_50_950", align 8
  %"$sub_call_952" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_947", %Uint256* %"$sub_$arg1_49_948", %Uint256* %"$sub_$arg2_50_950"), !dbg !202
  %"$sub_954" = load %Uint256, %Uint256* %"$sub_call_952", align 8
  store %Uint256 %"$sub_954", %Uint256* %"$res_51", align 8, !dbg !202
  %"$gasrem_955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_956" = icmp ugt i64 1, %"$gasrem_955"
  br i1 %"$gascmp_956", label %"$out_of_gas_957", label %"$have_gas_958"

"$out_of_gas_957":                                ; preds = %"$have_gas_945"
  call void @_out_of_gas()
  br label %"$have_gas_958"

"$have_gas_958":                                  ; preds = %"$out_of_gas_957", %"$have_gas_945"
  %"$consume_959" = sub i64 %"$gasrem_955", 1
  store i64 %"$consume_959", i64* @_gasrem, align 8
  %"$res__52" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__52", metadata !203, metadata !DIExpression()), !dbg !204
  %"$gasrem_960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_961" = icmp ugt i64 1, %"$gasrem_960"
  br i1 %"$gascmp_961", label %"$out_of_gas_962", label %"$have_gas_963"

"$out_of_gas_962":                                ; preds = %"$have_gas_958"
  call void @_out_of_gas()
  br label %"$have_gas_963"

"$have_gas_963":                                  ; preds = %"$out_of_gas_962", %"$have_gas_958"
  %"$consume_964" = sub i64 %"$gasrem_960", 1
  store i64 %"$consume_964", i64* @_gasrem, align 8
  store %Uint256 zeroinitializer, %Uint256* %"$res__52", align 8, !dbg !205
  %"$gasrem_965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_966" = icmp ugt i64 1, %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %"$have_gas_963"
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %"$have_gas_963"
  %"$consume_969" = sub i64 %"$gasrem_965", 1
  store i64 %"$consume_969", i64* @_gasrem, align 8
  %"$test__53" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__53", metadata !206, metadata !DIExpression()), !dbg !207
  %"$gasrem_971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_972" = icmp ugt i64 16, %"$gasrem_971"
  br i1 %"$gascmp_972", label %"$out_of_gas_973", label %"$have_gas_974"

"$out_of_gas_973":                                ; preds = %"$have_gas_968"
  call void @_out_of_gas()
  br label %"$have_gas_974"

"$have_gas_974":                                  ; preds = %"$out_of_gas_973", %"$have_gas_968"
  %"$consume_975" = sub i64 %"$gasrem_971", 16
  store i64 %"$consume_975", i64* @_gasrem, align 8
  %"$execptr_load_976" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_51_977" = alloca %Uint256, align 8
  %"$$res_51_978" = load %Uint256, %Uint256* %"$res_51", align 8
  store %Uint256 %"$$res_51_978", %Uint256* %"$eq_$res_51_977", align 8
  %"$eq_$res__52_979" = alloca %Uint256, align 8
  %"$$res__52_980" = load %Uint256, %Uint256* %"$res__52", align 8
  store %Uint256 %"$$res__52_980", %Uint256* %"$eq_$res__52_979", align 8
  %"$eq_call_981" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_976", %Uint256* %"$eq_$res_51_977", %Uint256* %"$eq_$res__52_979"), !dbg !208
  store %TName_Bool* %"$eq_call_981", %TName_Bool** %"$test__53", align 8, !dbg !208
  %"$gasrem_983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_984" = icmp ugt i64 1, %"$gasrem_983"
  br i1 %"$gascmp_984", label %"$out_of_gas_985", label %"$have_gas_986"

"$out_of_gas_985":                                ; preds = %"$have_gas_974"
  call void @_out_of_gas()
  br label %"$have_gas_986"

"$have_gas_986":                                  ; preds = %"$out_of_gas_985", %"$have_gas_974"
  %"$consume_987" = sub i64 %"$gasrem_983", 1
  store i64 %"$consume_987", i64* @_gasrem, align 8
  %"$BoolUtils.andb_95" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_988" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_989" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_988", 0
  %"$BoolUtils.andb_envptr_990" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_988", 1
  %"$$test_48_991" = load %TName_Bool*, %TName_Bool** %"$test_48", align 8
  %"$BoolUtils.andb_call_992" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_989"(i8* %"$BoolUtils.andb_envptr_990", %TName_Bool* %"$$test_48_991"), !dbg !209
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_992", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_95", align 8, !dbg !209
  %"$BoolUtils.andb_96" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_96", metadata !210, metadata !DIExpression()), !dbg !209
  %"$$BoolUtils.andb_95_993" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_95", align 8
  %"$$BoolUtils.andb_95_fptr_994" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_95_993", 0
  %"$$BoolUtils.andb_95_envptr_995" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_95_993", 1
  %"$$test__53_996" = load %TName_Bool*, %TName_Bool** %"$test__53", align 8
  %"$$BoolUtils.andb_95_call_997" = call %TName_Bool* %"$$BoolUtils.andb_95_fptr_994"(i8* %"$$BoolUtils.andb_95_envptr_995", %TName_Bool* %"$$test__53_996"), !dbg !209
  store %TName_Bool* %"$$BoolUtils.andb_95_call_997", %TName_Bool** %"$BoolUtils.andb_96", align 8, !dbg !209
  %"$$BoolUtils.andb_96_998" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_96", align 8
  store %TName_Bool* %"$$BoolUtils.andb_96_998", %TName_Bool** %"$test_54", align 8, !dbg !209
  %"$gasrem_999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1000" = icmp ugt i64 1, %"$gasrem_999"
  br i1 %"$gascmp_1000", label %"$out_of_gas_1001", label %"$have_gas_1002"

"$out_of_gas_1001":                               ; preds = %"$have_gas_986"
  call void @_out_of_gas()
  br label %"$have_gas_1002"

"$have_gas_1002":                                 ; preds = %"$out_of_gas_1001", %"$have_gas_986"
  %"$consume_1003" = sub i64 %"$gasrem_999", 1
  store i64 %"$consume_1003", i64* @_gasrem, align 8
  %"$arg1_55" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg1_55", metadata !211, metadata !DIExpression()), !dbg !212
  %"$gasrem_1004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1005" = icmp ugt i64 1, %"$gasrem_1004"
  br i1 %"$gascmp_1005", label %"$out_of_gas_1006", label %"$have_gas_1007"

"$out_of_gas_1006":                               ; preds = %"$have_gas_1002"
  call void @_out_of_gas()
  br label %"$have_gas_1007"

"$have_gas_1007":                                 ; preds = %"$out_of_gas_1006", %"$have_gas_1002"
  %"$consume_1008" = sub i64 %"$gasrem_1004", 1
  store i64 %"$consume_1008", i64* @_gasrem, align 8
  store %Uint256 { i256 -1 }, %Uint256* %"$arg1_55", align 8, !dbg !213
  %"$gasrem_1009" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1010" = icmp ugt i64 1, %"$gasrem_1009"
  br i1 %"$gascmp_1010", label %"$out_of_gas_1011", label %"$have_gas_1012"

"$out_of_gas_1011":                               ; preds = %"$have_gas_1007"
  call void @_out_of_gas()
  br label %"$have_gas_1012"

"$have_gas_1012":                                 ; preds = %"$out_of_gas_1011", %"$have_gas_1007"
  %"$consume_1013" = sub i64 %"$gasrem_1009", 1
  store i64 %"$consume_1013", i64* @_gasrem, align 8
  %"$arg2_56" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$arg2_56", metadata !214, metadata !DIExpression()), !dbg !215
  %"$gasrem_1014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1015" = icmp ugt i64 1, %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$have_gas_1012"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$have_gas_1012"
  %"$consume_1018" = sub i64 %"$gasrem_1014", 1
  store i64 %"$consume_1018", i64* @_gasrem, align 8
  store %Uint256 { i256 -2 }, %Uint256* %"$arg2_56", align 8, !dbg !216
  %"$gasrem_1019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1020" = icmp ugt i64 1, %"$gasrem_1019"
  br i1 %"$gascmp_1020", label %"$out_of_gas_1021", label %"$have_gas_1022"

"$out_of_gas_1021":                               ; preds = %"$have_gas_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1022"

"$have_gas_1022":                                 ; preds = %"$out_of_gas_1021", %"$have_gas_1017"
  %"$consume_1023" = sub i64 %"$gasrem_1019", 1
  store i64 %"$consume_1023", i64* @_gasrem, align 8
  %"$test_60" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_60", metadata !217, metadata !DIExpression()), !dbg !218
  %"$gasrem_1024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1025" = icmp ugt i64 1, %"$gasrem_1024"
  br i1 %"$gascmp_1025", label %"$out_of_gas_1026", label %"$have_gas_1027"

"$out_of_gas_1026":                               ; preds = %"$have_gas_1022"
  call void @_out_of_gas()
  br label %"$have_gas_1027"

"$have_gas_1027":                                 ; preds = %"$out_of_gas_1026", %"$have_gas_1022"
  %"$consume_1028" = sub i64 %"$gasrem_1024", 1
  store i64 %"$consume_1028", i64* @_gasrem, align 8
  %"$res_57" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res_57", metadata !219, metadata !DIExpression()), !dbg !220
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
  %"$sub_$arg1_55_1036" = alloca %Uint256, align 8
  %"$$arg1_55_1037" = load %Uint256, %Uint256* %"$arg1_55", align 8
  store %Uint256 %"$$arg1_55_1037", %Uint256* %"$sub_$arg1_55_1036", align 8
  %"$sub_$arg2_56_1038" = alloca %Uint256, align 8
  %"$$arg2_56_1039" = load %Uint256, %Uint256* %"$arg2_56", align 8
  store %Uint256 %"$$arg2_56_1039", %Uint256* %"$sub_$arg2_56_1038", align 8
  %"$sub_call_1040" = call %Uint256* @_sub_Uint256(i8* %"$execptr_load_1035", %Uint256* %"$sub_$arg1_55_1036", %Uint256* %"$sub_$arg2_56_1038"), !dbg !221
  %"$sub_1042" = load %Uint256, %Uint256* %"$sub_call_1040", align 8
  store %Uint256 %"$sub_1042", %Uint256* %"$res_57", align 8, !dbg !221
  %"$gasrem_1043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %"$have_gas_1033"
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %"$have_gas_1033"
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem, align 8
  %"$res__58" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$res__58", metadata !222, metadata !DIExpression()), !dbg !223
  %"$gasrem_1048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1049" = icmp ugt i64 1, %"$gasrem_1048"
  br i1 %"$gascmp_1049", label %"$out_of_gas_1050", label %"$have_gas_1051"

"$out_of_gas_1050":                               ; preds = %"$have_gas_1046"
  call void @_out_of_gas()
  br label %"$have_gas_1051"

"$have_gas_1051":                                 ; preds = %"$out_of_gas_1050", %"$have_gas_1046"
  %"$consume_1052" = sub i64 %"$gasrem_1048", 1
  store i64 %"$consume_1052", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$res__58", align 8, !dbg !224
  %"$gasrem_1053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1054" = icmp ugt i64 1, %"$gasrem_1053"
  br i1 %"$gascmp_1054", label %"$out_of_gas_1055", label %"$have_gas_1056"

"$out_of_gas_1055":                               ; preds = %"$have_gas_1051"
  call void @_out_of_gas()
  br label %"$have_gas_1056"

"$have_gas_1056":                                 ; preds = %"$out_of_gas_1055", %"$have_gas_1051"
  %"$consume_1057" = sub i64 %"$gasrem_1053", 1
  store i64 %"$consume_1057", i64* @_gasrem, align 8
  %"$test__59" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__59", metadata !225, metadata !DIExpression()), !dbg !226
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 16, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1056"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1056"
  %"$consume_1063" = sub i64 %"$gasrem_1059", 16
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  %"$execptr_load_1064" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_57_1065" = alloca %Uint256, align 8
  %"$$res_57_1066" = load %Uint256, %Uint256* %"$res_57", align 8
  store %Uint256 %"$$res_57_1066", %Uint256* %"$eq_$res_57_1065", align 8
  %"$eq_$res__58_1067" = alloca %Uint256, align 8
  %"$$res__58_1068" = load %Uint256, %Uint256* %"$res__58", align 8
  store %Uint256 %"$$res__58_1068", %Uint256* %"$eq_$res__58_1067", align 8
  %"$eq_call_1069" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1064", %Uint256* %"$eq_$res_57_1065", %Uint256* %"$eq_$res__58_1067"), !dbg !227
  store %TName_Bool* %"$eq_call_1069", %TName_Bool** %"$test__59", align 8, !dbg !227
  %"$gasrem_1071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1072" = icmp ugt i64 1, %"$gasrem_1071"
  br i1 %"$gascmp_1072", label %"$out_of_gas_1073", label %"$have_gas_1074"

"$out_of_gas_1073":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1074"

"$have_gas_1074":                                 ; preds = %"$out_of_gas_1073", %"$have_gas_1062"
  %"$consume_1075" = sub i64 %"$gasrem_1071", 1
  store i64 %"$consume_1075", i64* @_gasrem, align 8
  %"$BoolUtils.andb_97" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1076" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1077" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1076", 0
  %"$BoolUtils.andb_envptr_1078" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1076", 1
  %"$$test_54_1079" = load %TName_Bool*, %TName_Bool** %"$test_54", align 8
  %"$BoolUtils.andb_call_1080" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1077"(i8* %"$BoolUtils.andb_envptr_1078", %TName_Bool* %"$$test_54_1079"), !dbg !228
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1080", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_97", align 8, !dbg !228
  %"$BoolUtils.andb_98" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_98", metadata !229, metadata !DIExpression()), !dbg !228
  %"$$BoolUtils.andb_97_1081" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_97", align 8
  %"$$BoolUtils.andb_97_fptr_1082" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_97_1081", 0
  %"$$BoolUtils.andb_97_envptr_1083" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_97_1081", 1
  %"$$test__59_1084" = load %TName_Bool*, %TName_Bool** %"$test__59", align 8
  %"$$BoolUtils.andb_97_call_1085" = call %TName_Bool* %"$$BoolUtils.andb_97_fptr_1082"(i8* %"$$BoolUtils.andb_97_envptr_1083", %TName_Bool* %"$$test__59_1084"), !dbg !228
  store %TName_Bool* %"$$BoolUtils.andb_97_call_1085", %TName_Bool** %"$BoolUtils.andb_98", align 8, !dbg !228
  %"$$BoolUtils.andb_98_1086" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_98", align 8
  store %TName_Bool* %"$$BoolUtils.andb_98_1086", %TName_Bool** %"$test_60", align 8, !dbg !228
  %"$gasrem_1087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1088" = icmp ugt i64 1, %"$gasrem_1087"
  br i1 %"$gascmp_1088", label %"$out_of_gas_1089", label %"$have_gas_1090"

"$out_of_gas_1089":                               ; preds = %"$have_gas_1074"
  call void @_out_of_gas()
  br label %"$have_gas_1090"

"$have_gas_1090":                                 ; preds = %"$out_of_gas_1089", %"$have_gas_1074"
  %"$consume_1091" = sub i64 %"$gasrem_1087", 1
  store i64 %"$consume_1091", i64* @_gasrem, align 8
  %"$arg1_61" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_61", metadata !230, metadata !DIExpression()), !dbg !232
  %"$gasrem_1092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1093" = icmp ugt i64 1, %"$gasrem_1092"
  br i1 %"$gascmp_1093", label %"$out_of_gas_1094", label %"$have_gas_1095"

"$out_of_gas_1094":                               ; preds = %"$have_gas_1090"
  call void @_out_of_gas()
  br label %"$have_gas_1095"

"$have_gas_1095":                                 ; preds = %"$out_of_gas_1094", %"$have_gas_1090"
  %"$consume_1096" = sub i64 %"$gasrem_1092", 1
  store i64 %"$consume_1096", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_61", align 8, !dbg !233
  %"$gasrem_1097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1098" = icmp ugt i64 1, %"$gasrem_1097"
  br i1 %"$gascmp_1098", label %"$out_of_gas_1099", label %"$have_gas_1100"

"$out_of_gas_1099":                               ; preds = %"$have_gas_1095"
  call void @_out_of_gas()
  br label %"$have_gas_1100"

"$have_gas_1100":                                 ; preds = %"$out_of_gas_1099", %"$have_gas_1095"
  %"$consume_1101" = sub i64 %"$gasrem_1097", 1
  store i64 %"$consume_1101", i64* @_gasrem, align 8
  %"$arg2_62" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_62", metadata !234, metadata !DIExpression()), !dbg !235
  %"$gasrem_1102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1103" = icmp ugt i64 1, %"$gasrem_1102"
  br i1 %"$gascmp_1103", label %"$out_of_gas_1104", label %"$have_gas_1105"

"$out_of_gas_1104":                               ; preds = %"$have_gas_1100"
  call void @_out_of_gas()
  br label %"$have_gas_1105"

"$have_gas_1105":                                 ; preds = %"$out_of_gas_1104", %"$have_gas_1100"
  %"$consume_1106" = sub i64 %"$gasrem_1102", 1
  store i64 %"$consume_1106", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$arg2_62", align 8, !dbg !236
  %"$gasrem_1107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1108" = icmp ugt i64 1, %"$gasrem_1107"
  br i1 %"$gascmp_1108", label %"$out_of_gas_1109", label %"$have_gas_1110"

"$out_of_gas_1109":                               ; preds = %"$have_gas_1105"
  call void @_out_of_gas()
  br label %"$have_gas_1110"

"$have_gas_1110":                                 ; preds = %"$out_of_gas_1109", %"$have_gas_1105"
  %"$consume_1111" = sub i64 %"$gasrem_1107", 1
  store i64 %"$consume_1111", i64* @_gasrem, align 8
  %"$test_66" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_66", metadata !237, metadata !DIExpression()), !dbg !238
  %"$gasrem_1112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1113" = icmp ugt i64 1, %"$gasrem_1112"
  br i1 %"$gascmp_1113", label %"$out_of_gas_1114", label %"$have_gas_1115"

"$out_of_gas_1114":                               ; preds = %"$have_gas_1110"
  call void @_out_of_gas()
  br label %"$have_gas_1115"

"$have_gas_1115":                                 ; preds = %"$out_of_gas_1114", %"$have_gas_1110"
  %"$consume_1116" = sub i64 %"$gasrem_1112", 1
  store i64 %"$consume_1116", i64* @_gasrem, align 8
  %"$res_63" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_63", metadata !239, metadata !DIExpression()), !dbg !240
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
  %"$sub_$arg1_61_1124" = alloca %Int256, align 8
  %"$$arg1_61_1125" = load %Int256, %Int256* %"$arg1_61", align 8
  store %Int256 %"$$arg1_61_1125", %Int256* %"$sub_$arg1_61_1124", align 8
  %"$sub_$arg2_62_1126" = alloca %Int256, align 8
  %"$$arg2_62_1127" = load %Int256, %Int256* %"$arg2_62", align 8
  store %Int256 %"$$arg2_62_1127", %Int256* %"$sub_$arg2_62_1126", align 8
  %"$sub_call_1128" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1123", %Int256* %"$sub_$arg1_61_1124", %Int256* %"$sub_$arg2_62_1126"), !dbg !241
  %"$sub_1130" = load %Int256, %Int256* %"$sub_call_1128", align 8
  store %Int256 %"$sub_1130", %Int256* %"$res_63", align 8, !dbg !241
  %"$gasrem_1131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1132" = icmp ugt i64 1, %"$gasrem_1131"
  br i1 %"$gascmp_1132", label %"$out_of_gas_1133", label %"$have_gas_1134"

"$out_of_gas_1133":                               ; preds = %"$have_gas_1121"
  call void @_out_of_gas()
  br label %"$have_gas_1134"

"$have_gas_1134":                                 ; preds = %"$out_of_gas_1133", %"$have_gas_1121"
  %"$consume_1135" = sub i64 %"$gasrem_1131", 1
  store i64 %"$consume_1135", i64* @_gasrem, align 8
  %"$res__64" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__64", metadata !242, metadata !DIExpression()), !dbg !243
  %"$gasrem_1136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1137" = icmp ugt i64 1, %"$gasrem_1136"
  br i1 %"$gascmp_1137", label %"$out_of_gas_1138", label %"$have_gas_1139"

"$out_of_gas_1138":                               ; preds = %"$have_gas_1134"
  call void @_out_of_gas()
  br label %"$have_gas_1139"

"$have_gas_1139":                                 ; preds = %"$out_of_gas_1138", %"$have_gas_1134"
  %"$consume_1140" = sub i64 %"$gasrem_1136", 1
  store i64 %"$consume_1140", i64* @_gasrem, align 8
  store %Int256 { i256 57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$res__64", align 8, !dbg !244
  %"$gasrem_1141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1142" = icmp ugt i64 1, %"$gasrem_1141"
  br i1 %"$gascmp_1142", label %"$out_of_gas_1143", label %"$have_gas_1144"

"$out_of_gas_1143":                               ; preds = %"$have_gas_1139"
  call void @_out_of_gas()
  br label %"$have_gas_1144"

"$have_gas_1144":                                 ; preds = %"$out_of_gas_1143", %"$have_gas_1139"
  %"$consume_1145" = sub i64 %"$gasrem_1141", 1
  store i64 %"$consume_1145", i64* @_gasrem, align 8
  %"$test__65" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__65", metadata !245, metadata !DIExpression()), !dbg !246
  %"$gasrem_1147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1148" = icmp ugt i64 16, %"$gasrem_1147"
  br i1 %"$gascmp_1148", label %"$out_of_gas_1149", label %"$have_gas_1150"

"$out_of_gas_1149":                               ; preds = %"$have_gas_1144"
  call void @_out_of_gas()
  br label %"$have_gas_1150"

"$have_gas_1150":                                 ; preds = %"$out_of_gas_1149", %"$have_gas_1144"
  %"$consume_1151" = sub i64 %"$gasrem_1147", 16
  store i64 %"$consume_1151", i64* @_gasrem, align 8
  %"$execptr_load_1152" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_63_1153" = alloca %Int256, align 8
  %"$$res_63_1154" = load %Int256, %Int256* %"$res_63", align 8
  store %Int256 %"$$res_63_1154", %Int256* %"$eq_$res_63_1153", align 8
  %"$eq_$res__64_1155" = alloca %Int256, align 8
  %"$$res__64_1156" = load %Int256, %Int256* %"$res__64", align 8
  store %Int256 %"$$res__64_1156", %Int256* %"$eq_$res__64_1155", align 8
  %"$eq_call_1157" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1152", %Int256* %"$eq_$res_63_1153", %Int256* %"$eq_$res__64_1155"), !dbg !247
  store %TName_Bool* %"$eq_call_1157", %TName_Bool** %"$test__65", align 8, !dbg !247
  %"$gasrem_1159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1160" = icmp ugt i64 1, %"$gasrem_1159"
  br i1 %"$gascmp_1160", label %"$out_of_gas_1161", label %"$have_gas_1162"

"$out_of_gas_1161":                               ; preds = %"$have_gas_1150"
  call void @_out_of_gas()
  br label %"$have_gas_1162"

"$have_gas_1162":                                 ; preds = %"$out_of_gas_1161", %"$have_gas_1150"
  %"$consume_1163" = sub i64 %"$gasrem_1159", 1
  store i64 %"$consume_1163", i64* @_gasrem, align 8
  %"$BoolUtils.andb_99" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1164" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1165" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1164", 0
  %"$BoolUtils.andb_envptr_1166" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1164", 1
  %"$$test_60_1167" = load %TName_Bool*, %TName_Bool** %"$test_60", align 8
  %"$BoolUtils.andb_call_1168" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1165"(i8* %"$BoolUtils.andb_envptr_1166", %TName_Bool* %"$$test_60_1167"), !dbg !248
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1168", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_99", align 8, !dbg !248
  %"$BoolUtils.andb_100" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_100", metadata !249, metadata !DIExpression()), !dbg !248
  %"$$BoolUtils.andb_99_1169" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_99", align 8
  %"$$BoolUtils.andb_99_fptr_1170" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_99_1169", 0
  %"$$BoolUtils.andb_99_envptr_1171" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_99_1169", 1
  %"$$test__65_1172" = load %TName_Bool*, %TName_Bool** %"$test__65", align 8
  %"$$BoolUtils.andb_99_call_1173" = call %TName_Bool* %"$$BoolUtils.andb_99_fptr_1170"(i8* %"$$BoolUtils.andb_99_envptr_1171", %TName_Bool* %"$$test__65_1172"), !dbg !248
  store %TName_Bool* %"$$BoolUtils.andb_99_call_1173", %TName_Bool** %"$BoolUtils.andb_100", align 8, !dbg !248
  %"$$BoolUtils.andb_100_1174" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_100", align 8
  store %TName_Bool* %"$$BoolUtils.andb_100_1174", %TName_Bool** %"$test_66", align 8, !dbg !248
  %"$gasrem_1175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1176" = icmp ugt i64 1, %"$gasrem_1175"
  br i1 %"$gascmp_1176", label %"$out_of_gas_1177", label %"$have_gas_1178"

"$out_of_gas_1177":                               ; preds = %"$have_gas_1162"
  call void @_out_of_gas()
  br label %"$have_gas_1178"

"$have_gas_1178":                                 ; preds = %"$out_of_gas_1177", %"$have_gas_1162"
  %"$consume_1179" = sub i64 %"$gasrem_1175", 1
  store i64 %"$consume_1179", i64* @_gasrem, align 8
  %"$arg2_67" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_67", metadata !250, metadata !DIExpression()), !dbg !251
  %"$gasrem_1180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1181" = icmp ugt i64 1, %"$gasrem_1180"
  br i1 %"$gascmp_1181", label %"$out_of_gas_1182", label %"$have_gas_1183"

"$out_of_gas_1182":                               ; preds = %"$have_gas_1178"
  call void @_out_of_gas()
  br label %"$have_gas_1183"

"$have_gas_1183":                                 ; preds = %"$out_of_gas_1182", %"$have_gas_1178"
  %"$consume_1184" = sub i64 %"$gasrem_1180", 1
  store i64 %"$consume_1184", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg2_67", align 8, !dbg !252
  %"$gasrem_1185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1186" = icmp ugt i64 1, %"$gasrem_1185"
  br i1 %"$gascmp_1186", label %"$out_of_gas_1187", label %"$have_gas_1188"

"$out_of_gas_1187":                               ; preds = %"$have_gas_1183"
  call void @_out_of_gas()
  br label %"$have_gas_1188"

"$have_gas_1188":                                 ; preds = %"$out_of_gas_1187", %"$have_gas_1183"
  %"$consume_1189" = sub i64 %"$gasrem_1185", 1
  store i64 %"$consume_1189", i64* @_gasrem, align 8
  %"$arg1_68" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_68", metadata !253, metadata !DIExpression()), !dbg !254
  %"$gasrem_1190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1191" = icmp ugt i64 1, %"$gasrem_1190"
  br i1 %"$gascmp_1191", label %"$out_of_gas_1192", label %"$have_gas_1193"

"$out_of_gas_1192":                               ; preds = %"$have_gas_1188"
  call void @_out_of_gas()
  br label %"$have_gas_1193"

"$have_gas_1193":                                 ; preds = %"$out_of_gas_1192", %"$have_gas_1188"
  %"$consume_1194" = sub i64 %"$gasrem_1190", 1
  store i64 %"$consume_1194", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$arg1_68", align 8, !dbg !255
  %"$gasrem_1195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1196" = icmp ugt i64 1, %"$gasrem_1195"
  br i1 %"$gascmp_1196", label %"$out_of_gas_1197", label %"$have_gas_1198"

"$out_of_gas_1197":                               ; preds = %"$have_gas_1193"
  call void @_out_of_gas()
  br label %"$have_gas_1198"

"$have_gas_1198":                                 ; preds = %"$out_of_gas_1197", %"$have_gas_1193"
  %"$consume_1199" = sub i64 %"$gasrem_1195", 1
  store i64 %"$consume_1199", i64* @_gasrem, align 8
  %"$test_72" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_72", metadata !256, metadata !DIExpression()), !dbg !257
  %"$gasrem_1200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1201" = icmp ugt i64 1, %"$gasrem_1200"
  br i1 %"$gascmp_1201", label %"$out_of_gas_1202", label %"$have_gas_1203"

"$out_of_gas_1202":                               ; preds = %"$have_gas_1198"
  call void @_out_of_gas()
  br label %"$have_gas_1203"

"$have_gas_1203":                                 ; preds = %"$out_of_gas_1202", %"$have_gas_1198"
  %"$consume_1204" = sub i64 %"$gasrem_1200", 1
  store i64 %"$consume_1204", i64* @_gasrem, align 8
  %"$res_69" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_69", metadata !258, metadata !DIExpression()), !dbg !259
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
  %"$sub_$arg1_68_1212" = alloca %Int256, align 8
  %"$$arg1_68_1213" = load %Int256, %Int256* %"$arg1_68", align 8
  store %Int256 %"$$arg1_68_1213", %Int256* %"$sub_$arg1_68_1212", align 8
  %"$sub_$arg2_67_1214" = alloca %Int256, align 8
  %"$$arg2_67_1215" = load %Int256, %Int256* %"$arg2_67", align 8
  store %Int256 %"$$arg2_67_1215", %Int256* %"$sub_$arg2_67_1214", align 8
  %"$sub_call_1216" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1211", %Int256* %"$sub_$arg1_68_1212", %Int256* %"$sub_$arg2_67_1214"), !dbg !260
  %"$sub_1218" = load %Int256, %Int256* %"$sub_call_1216", align 8
  store %Int256 %"$sub_1218", %Int256* %"$res_69", align 8, !dbg !260
  %"$gasrem_1219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1220" = icmp ugt i64 1, %"$gasrem_1219"
  br i1 %"$gascmp_1220", label %"$out_of_gas_1221", label %"$have_gas_1222"

"$out_of_gas_1221":                               ; preds = %"$have_gas_1209"
  call void @_out_of_gas()
  br label %"$have_gas_1222"

"$have_gas_1222":                                 ; preds = %"$out_of_gas_1221", %"$have_gas_1209"
  %"$consume_1223" = sub i64 %"$gasrem_1219", 1
  store i64 %"$consume_1223", i64* @_gasrem, align 8
  %"$res__70" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__70", metadata !261, metadata !DIExpression()), !dbg !262
  %"$gasrem_1224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1225" = icmp ugt i64 1, %"$gasrem_1224"
  br i1 %"$gascmp_1225", label %"$out_of_gas_1226", label %"$have_gas_1227"

"$out_of_gas_1226":                               ; preds = %"$have_gas_1222"
  call void @_out_of_gas()
  br label %"$have_gas_1227"

"$have_gas_1227":                                 ; preds = %"$out_of_gas_1226", %"$have_gas_1222"
  %"$consume_1228" = sub i64 %"$gasrem_1224", 1
  store i64 %"$consume_1228", i64* @_gasrem, align 8
  store %Int256 { i256 -57896044618658097711785492504343953926634992332820282019728792003956564819967 }, %Int256* %"$res__70", align 8, !dbg !263
  %"$gasrem_1229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1230" = icmp ugt i64 1, %"$gasrem_1229"
  br i1 %"$gascmp_1230", label %"$out_of_gas_1231", label %"$have_gas_1232"

"$out_of_gas_1231":                               ; preds = %"$have_gas_1227"
  call void @_out_of_gas()
  br label %"$have_gas_1232"

"$have_gas_1232":                                 ; preds = %"$out_of_gas_1231", %"$have_gas_1227"
  %"$consume_1233" = sub i64 %"$gasrem_1229", 1
  store i64 %"$consume_1233", i64* @_gasrem, align 8
  %"$test__71" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__71", metadata !264, metadata !DIExpression()), !dbg !265
  %"$gasrem_1235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1236" = icmp ugt i64 16, %"$gasrem_1235"
  br i1 %"$gascmp_1236", label %"$out_of_gas_1237", label %"$have_gas_1238"

"$out_of_gas_1237":                               ; preds = %"$have_gas_1232"
  call void @_out_of_gas()
  br label %"$have_gas_1238"

"$have_gas_1238":                                 ; preds = %"$out_of_gas_1237", %"$have_gas_1232"
  %"$consume_1239" = sub i64 %"$gasrem_1235", 16
  store i64 %"$consume_1239", i64* @_gasrem, align 8
  %"$execptr_load_1240" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_69_1241" = alloca %Int256, align 8
  %"$$res_69_1242" = load %Int256, %Int256* %"$res_69", align 8
  store %Int256 %"$$res_69_1242", %Int256* %"$eq_$res_69_1241", align 8
  %"$eq_$res__70_1243" = alloca %Int256, align 8
  %"$$res__70_1244" = load %Int256, %Int256* %"$res__70", align 8
  store %Int256 %"$$res__70_1244", %Int256* %"$eq_$res__70_1243", align 8
  %"$eq_call_1245" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1240", %Int256* %"$eq_$res_69_1241", %Int256* %"$eq_$res__70_1243"), !dbg !266
  store %TName_Bool* %"$eq_call_1245", %TName_Bool** %"$test__71", align 8, !dbg !266
  %"$gasrem_1247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1248" = icmp ugt i64 1, %"$gasrem_1247"
  br i1 %"$gascmp_1248", label %"$out_of_gas_1249", label %"$have_gas_1250"

"$out_of_gas_1249":                               ; preds = %"$have_gas_1238"
  call void @_out_of_gas()
  br label %"$have_gas_1250"

"$have_gas_1250":                                 ; preds = %"$out_of_gas_1249", %"$have_gas_1238"
  %"$consume_1251" = sub i64 %"$gasrem_1247", 1
  store i64 %"$consume_1251", i64* @_gasrem, align 8
  %"$BoolUtils.andb_101" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1252" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1253" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1252", 0
  %"$BoolUtils.andb_envptr_1254" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1252", 1
  %"$$test_66_1255" = load %TName_Bool*, %TName_Bool** %"$test_66", align 8
  %"$BoolUtils.andb_call_1256" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1253"(i8* %"$BoolUtils.andb_envptr_1254", %TName_Bool* %"$$test_66_1255"), !dbg !267
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1256", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_101", align 8, !dbg !267
  %"$BoolUtils.andb_102" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_102", metadata !268, metadata !DIExpression()), !dbg !267
  %"$$BoolUtils.andb_101_1257" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_101", align 8
  %"$$BoolUtils.andb_101_fptr_1258" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_101_1257", 0
  %"$$BoolUtils.andb_101_envptr_1259" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_101_1257", 1
  %"$$test__71_1260" = load %TName_Bool*, %TName_Bool** %"$test__71", align 8
  %"$$BoolUtils.andb_101_call_1261" = call %TName_Bool* %"$$BoolUtils.andb_101_fptr_1258"(i8* %"$$BoolUtils.andb_101_envptr_1259", %TName_Bool* %"$$test__71_1260"), !dbg !267
  store %TName_Bool* %"$$BoolUtils.andb_101_call_1261", %TName_Bool** %"$BoolUtils.andb_102", align 8, !dbg !267
  %"$$BoolUtils.andb_102_1262" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_102", align 8
  store %TName_Bool* %"$$BoolUtils.andb_102_1262", %TName_Bool** %"$test_72", align 8, !dbg !267
  %"$gasrem_1263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1264" = icmp ugt i64 1, %"$gasrem_1263"
  br i1 %"$gascmp_1264", label %"$out_of_gas_1265", label %"$have_gas_1266"

"$out_of_gas_1265":                               ; preds = %"$have_gas_1250"
  call void @_out_of_gas()
  br label %"$have_gas_1266"

"$have_gas_1266":                                 ; preds = %"$out_of_gas_1265", %"$have_gas_1250"
  %"$consume_1267" = sub i64 %"$gasrem_1263", 1
  store i64 %"$consume_1267", i64* @_gasrem, align 8
  %"$arg1_73" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg1_73", metadata !269, metadata !DIExpression()), !dbg !270
  %"$gasrem_1268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1269" = icmp ugt i64 1, %"$gasrem_1268"
  br i1 %"$gascmp_1269", label %"$out_of_gas_1270", label %"$have_gas_1271"

"$out_of_gas_1270":                               ; preds = %"$have_gas_1266"
  call void @_out_of_gas()
  br label %"$have_gas_1271"

"$have_gas_1271":                                 ; preds = %"$out_of_gas_1270", %"$have_gas_1266"
  %"$consume_1272" = sub i64 %"$gasrem_1268", 1
  store i64 %"$consume_1272", i64* @_gasrem, align 8
  store %Int256 zeroinitializer, %Int256* %"$arg1_73", align 8, !dbg !271
  %"$gasrem_1273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1274" = icmp ugt i64 1, %"$gasrem_1273"
  br i1 %"$gascmp_1274", label %"$out_of_gas_1275", label %"$have_gas_1276"

"$out_of_gas_1275":                               ; preds = %"$have_gas_1271"
  call void @_out_of_gas()
  br label %"$have_gas_1276"

"$have_gas_1276":                                 ; preds = %"$out_of_gas_1275", %"$have_gas_1271"
  %"$consume_1277" = sub i64 %"$gasrem_1273", 1
  store i64 %"$consume_1277", i64* @_gasrem, align 8
  %"$arg2_74" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$arg2_74", metadata !272, metadata !DIExpression()), !dbg !273
  %"$gasrem_1278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1279" = icmp ugt i64 1, %"$gasrem_1278"
  br i1 %"$gascmp_1279", label %"$out_of_gas_1280", label %"$have_gas_1281"

"$out_of_gas_1280":                               ; preds = %"$have_gas_1276"
  call void @_out_of_gas()
  br label %"$have_gas_1281"

"$have_gas_1281":                                 ; preds = %"$out_of_gas_1280", %"$have_gas_1276"
  %"$consume_1282" = sub i64 %"$gasrem_1278", 1
  store i64 %"$consume_1282", i64* @_gasrem, align 8
  store %Int256 { i256 -1 }, %Int256* %"$arg2_74", align 8, !dbg !274
  %"$gasrem_1283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1284" = icmp ugt i64 1, %"$gasrem_1283"
  br i1 %"$gascmp_1284", label %"$out_of_gas_1285", label %"$have_gas_1286"

"$out_of_gas_1285":                               ; preds = %"$have_gas_1281"
  call void @_out_of_gas()
  br label %"$have_gas_1286"

"$have_gas_1286":                                 ; preds = %"$out_of_gas_1285", %"$have_gas_1281"
  %"$consume_1287" = sub i64 %"$gasrem_1283", 1
  store i64 %"$consume_1287", i64* @_gasrem, align 8
  %"$test_78" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_78", metadata !275, metadata !DIExpression()), !dbg !276
  %"$gasrem_1288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1289" = icmp ugt i64 1, %"$gasrem_1288"
  br i1 %"$gascmp_1289", label %"$out_of_gas_1290", label %"$have_gas_1291"

"$out_of_gas_1290":                               ; preds = %"$have_gas_1286"
  call void @_out_of_gas()
  br label %"$have_gas_1291"

"$have_gas_1291":                                 ; preds = %"$out_of_gas_1290", %"$have_gas_1286"
  %"$consume_1292" = sub i64 %"$gasrem_1288", 1
  store i64 %"$consume_1292", i64* @_gasrem, align 8
  %"$res_75" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res_75", metadata !277, metadata !DIExpression()), !dbg !278
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
  %"$sub_$arg1_73_1300" = alloca %Int256, align 8
  %"$$arg1_73_1301" = load %Int256, %Int256* %"$arg1_73", align 8
  store %Int256 %"$$arg1_73_1301", %Int256* %"$sub_$arg1_73_1300", align 8
  %"$sub_$arg2_74_1302" = alloca %Int256, align 8
  %"$$arg2_74_1303" = load %Int256, %Int256* %"$arg2_74", align 8
  store %Int256 %"$$arg2_74_1303", %Int256* %"$sub_$arg2_74_1302", align 8
  %"$sub_call_1304" = call %Int256* @_sub_Int256(i8* %"$execptr_load_1299", %Int256* %"$sub_$arg1_73_1300", %Int256* %"$sub_$arg2_74_1302"), !dbg !279
  %"$sub_1306" = load %Int256, %Int256* %"$sub_call_1304", align 8
  store %Int256 %"$sub_1306", %Int256* %"$res_75", align 8, !dbg !279
  %"$gasrem_1307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1308" = icmp ugt i64 1, %"$gasrem_1307"
  br i1 %"$gascmp_1308", label %"$out_of_gas_1309", label %"$have_gas_1310"

"$out_of_gas_1309":                               ; preds = %"$have_gas_1297"
  call void @_out_of_gas()
  br label %"$have_gas_1310"

"$have_gas_1310":                                 ; preds = %"$out_of_gas_1309", %"$have_gas_1297"
  %"$consume_1311" = sub i64 %"$gasrem_1307", 1
  store i64 %"$consume_1311", i64* @_gasrem, align 8
  %"$res__76" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$res__76", metadata !280, metadata !DIExpression()), !dbg !281
  %"$gasrem_1312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1313" = icmp ugt i64 1, %"$gasrem_1312"
  br i1 %"$gascmp_1313", label %"$out_of_gas_1314", label %"$have_gas_1315"

"$out_of_gas_1314":                               ; preds = %"$have_gas_1310"
  call void @_out_of_gas()
  br label %"$have_gas_1315"

"$have_gas_1315":                                 ; preds = %"$out_of_gas_1314", %"$have_gas_1310"
  %"$consume_1316" = sub i64 %"$gasrem_1312", 1
  store i64 %"$consume_1316", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$res__76", align 8, !dbg !282
  %"$gasrem_1317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1318" = icmp ugt i64 1, %"$gasrem_1317"
  br i1 %"$gascmp_1318", label %"$out_of_gas_1319", label %"$have_gas_1320"

"$out_of_gas_1319":                               ; preds = %"$have_gas_1315"
  call void @_out_of_gas()
  br label %"$have_gas_1320"

"$have_gas_1320":                                 ; preds = %"$out_of_gas_1319", %"$have_gas_1315"
  %"$consume_1321" = sub i64 %"$gasrem_1317", 1
  store i64 %"$consume_1321", i64* @_gasrem, align 8
  %"$test__77" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test__77", metadata !283, metadata !DIExpression()), !dbg !284
  %"$gasrem_1323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1324" = icmp ugt i64 16, %"$gasrem_1323"
  br i1 %"$gascmp_1324", label %"$out_of_gas_1325", label %"$have_gas_1326"

"$out_of_gas_1325":                               ; preds = %"$have_gas_1320"
  call void @_out_of_gas()
  br label %"$have_gas_1326"

"$have_gas_1326":                                 ; preds = %"$out_of_gas_1325", %"$have_gas_1320"
  %"$consume_1327" = sub i64 %"$gasrem_1323", 16
  store i64 %"$consume_1327", i64* @_gasrem, align 8
  %"$execptr_load_1328" = load i8*, i8** @_execptr, align 8
  %"$eq_$res_75_1329" = alloca %Int256, align 8
  %"$$res_75_1330" = load %Int256, %Int256* %"$res_75", align 8
  store %Int256 %"$$res_75_1330", %Int256* %"$eq_$res_75_1329", align 8
  %"$eq_$res__76_1331" = alloca %Int256, align 8
  %"$$res__76_1332" = load %Int256, %Int256* %"$res__76", align 8
  store %Int256 %"$$res__76_1332", %Int256* %"$eq_$res__76_1331", align 8
  %"$eq_call_1333" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1328", %Int256* %"$eq_$res_75_1329", %Int256* %"$eq_$res__76_1331"), !dbg !285
  store %TName_Bool* %"$eq_call_1333", %TName_Bool** %"$test__77", align 8, !dbg !285
  %"$gasrem_1335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1336" = icmp ugt i64 1, %"$gasrem_1335"
  br i1 %"$gascmp_1336", label %"$out_of_gas_1337", label %"$have_gas_1338"

"$out_of_gas_1337":                               ; preds = %"$have_gas_1326"
  call void @_out_of_gas()
  br label %"$have_gas_1338"

"$have_gas_1338":                                 ; preds = %"$out_of_gas_1337", %"$have_gas_1326"
  %"$consume_1339" = sub i64 %"$gasrem_1335", 1
  store i64 %"$consume_1339", i64* @_gasrem, align 8
  %"$BoolUtils.andb_103" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1340" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1341" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1340", 0
  %"$BoolUtils.andb_envptr_1342" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1340", 1
  %"$$test_72_1343" = load %TName_Bool*, %TName_Bool** %"$test_72", align 8
  %"$BoolUtils.andb_call_1344" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1341"(i8* %"$BoolUtils.andb_envptr_1342", %TName_Bool* %"$$test_72_1343"), !dbg !286
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1344", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_103", align 8, !dbg !286
  %"$BoolUtils.andb_104" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_104", metadata !287, metadata !DIExpression()), !dbg !286
  %"$$BoolUtils.andb_103_1345" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_103", align 8
  %"$$BoolUtils.andb_103_fptr_1346" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_103_1345", 0
  %"$$BoolUtils.andb_103_envptr_1347" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_103_1345", 1
  %"$$test__77_1348" = load %TName_Bool*, %TName_Bool** %"$test__77", align 8
  %"$$BoolUtils.andb_103_call_1349" = call %TName_Bool* %"$$BoolUtils.andb_103_fptr_1346"(i8* %"$$BoolUtils.andb_103_envptr_1347", %TName_Bool* %"$$test__77_1348"), !dbg !286
  store %TName_Bool* %"$$BoolUtils.andb_103_call_1349", %TName_Bool** %"$BoolUtils.andb_104", align 8, !dbg !286
  %"$$BoolUtils.andb_104_1350" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_104", align 8
  store %TName_Bool* %"$$BoolUtils.andb_104_1350", %TName_Bool** %"$test_78", align 8, !dbg !286
  %"$gasrem_1351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1352" = icmp ugt i64 1, %"$gasrem_1351"
  br i1 %"$gascmp_1352", label %"$out_of_gas_1353", label %"$have_gas_1354"

"$out_of_gas_1353":                               ; preds = %"$have_gas_1338"
  call void @_out_of_gas()
  br label %"$have_gas_1354"

"$have_gas_1354":                                 ; preds = %"$out_of_gas_1353", %"$have_gas_1338"
  %"$consume_1355" = sub i64 %"$gasrem_1351", 1
  store i64 %"$consume_1355", i64* @_gasrem, align 8
  %"$$test_78_1356" = load %TName_Bool*, %TName_Bool** %"$test_78", align 8
  store %TName_Bool* %"$$test_78_1356", %TName_Bool** %"$expr_109", align 8, !dbg !288
  %"$$expr_109_1357" = load %TName_Bool*, %TName_Bool** %"$expr_109", align 8
  ret %TName_Bool* %"$$expr_109_1357"
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
  %"$exprval_1358" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_1359" = bitcast %TName_Bool* %"$exprval_1358" to i8*
  %"$execptr_load_1360" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_1360", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_144", i8* %"$memvoidcast_1359")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_sub.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_107", linkageName: "$fundef_107", scope: !4, file: !4, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocalVariable(name: "c", scope: !3, file: !4, line: 7, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 7, column: 8, scope: !3)
!13 = !DILocalVariable(name: "$retval_108", scope: !3, file: !4, line: 8, type: !10)
!14 = !DILocation(line: 8, column: 5, scope: !3)
!15 = !DILocation(line: 9, column: 16, scope: !16)
!16 = distinct !DILexicalBlock(scope: !17, file: !4, line: 9, column: 7)
!17 = distinct !DILexicalBlock(scope: !3, file: !4, line: 8, column: 5)
!18 = !DILocation(line: 10, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !17, file: !4, line: 10, column: 7)
!20 = distinct !DISubprogram(name: "$fundef_105", linkageName: "$fundef_105", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DILocalVariable(name: "b", scope: !20, file: !4, line: 6, type: !10)
!22 = !DILocation(line: 6, column: 8, scope: !20)
!23 = !DILocation(line: 8, column: 5, scope: !20)
!24 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !25, file: !25, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!25 = !DIFile(filename: ".", directory: ".")
!26 = !DILocation(line: 0, scope: !24)
!27 = !DILocation(line: 7, column: 3, scope: !24)
!28 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!29 = !DILocalVariable(name: "$expr_109", scope: !28, file: !2, line: 1, type: !10)
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
!53 = !DILocalVariable(name: "$BoolUtils.andb_80", scope: !28, file: !2, line: 10, type: !10)
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
!73 = !DILocalVariable(name: "$BoolUtils.andb_82", scope: !28, file: !2, line: 19, type: !10)
!74 = !DILocalVariable(name: "$arg1_13", scope: !28, file: !2, line: 22, type: !75)
!75 = !DIBasicType(name: "Uint64", size: 8)
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
!93 = !DILocalVariable(name: "$BoolUtils.andb_84", scope: !28, file: !2, line: 28, type: !10)
!94 = !DILocalVariable(name: "$arg2_19", scope: !28, file: !2, line: 31, type: !95)
!95 = !DIBasicType(name: "Int64", size: 8)
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
!113 = !DILocalVariable(name: "$BoolUtils.andb_86", scope: !28, file: !2, line: 37, type: !10)
!114 = !DILocalVariable(name: "$arg1_25", scope: !28, file: !2, line: 40, type: !95)
!115 = !DILocation(line: 40, column: 5, scope: !28)
!116 = !DILocation(line: 40, column: 12, scope: !28)
!117 = !DILocalVariable(name: "$arg2_26", scope: !28, file: !2, line: 41, type: !95)
!118 = !DILocation(line: 41, column: 5, scope: !28)
!119 = !DILocation(line: 41, column: 12, scope: !28)
!120 = !DILocalVariable(name: "$test_30", scope: !28, file: !2, line: 42, type: !10)
!121 = !DILocation(line: 42, column: 5, scope: !28)
!122 = !DILocalVariable(name: "$res_27", scope: !28, file: !2, line: 43, type: !95)
!123 = !DILocation(line: 43, column: 7, scope: !28)
!124 = !DILocation(line: 43, column: 13, scope: !28)
!125 = !DILocalVariable(name: "$res__28", scope: !28, file: !2, line: 44, type: !95)
!126 = !DILocation(line: 44, column: 7, scope: !28)
!127 = !DILocation(line: 44, column: 14, scope: !28)
!128 = !DILocalVariable(name: "$test__29", scope: !28, file: !2, line: 45, type: !10)
!129 = !DILocation(line: 45, column: 7, scope: !28)
!130 = !DILocation(line: 45, column: 15, scope: !28)
!131 = !DILocation(line: 46, column: 3, scope: !28)
!132 = !DILocalVariable(name: "$BoolUtils.andb_88", scope: !28, file: !2, line: 46, type: !10)
!133 = !DILocalVariable(name: "$arg1_31", scope: !28, file: !2, line: 49, type: !134)
!134 = !DIBasicType(name: "Uint128", size: 16)
!135 = !DILocation(line: 49, column: 5, scope: !28)
!136 = !DILocation(line: 49, column: 12, scope: !28)
!137 = !DILocalVariable(name: "$arg2_32", scope: !28, file: !2, line: 50, type: !134)
!138 = !DILocation(line: 50, column: 5, scope: !28)
!139 = !DILocation(line: 50, column: 12, scope: !28)
!140 = !DILocalVariable(name: "$test_36", scope: !28, file: !2, line: 51, type: !10)
!141 = !DILocation(line: 51, column: 5, scope: !28)
!142 = !DILocalVariable(name: "$res_33", scope: !28, file: !2, line: 52, type: !134)
!143 = !DILocation(line: 52, column: 7, scope: !28)
!144 = !DILocation(line: 52, column: 13, scope: !28)
!145 = !DILocalVariable(name: "$res__34", scope: !28, file: !2, line: 53, type: !134)
!146 = !DILocation(line: 53, column: 7, scope: !28)
!147 = !DILocation(line: 53, column: 14, scope: !28)
!148 = !DILocalVariable(name: "$test__35", scope: !28, file: !2, line: 54, type: !10)
!149 = !DILocation(line: 54, column: 7, scope: !28)
!150 = !DILocation(line: 54, column: 15, scope: !28)
!151 = !DILocation(line: 55, column: 3, scope: !28)
!152 = !DILocalVariable(name: "$BoolUtils.andb_90", scope: !28, file: !2, line: 55, type: !10)
!153 = !DILocalVariable(name: "$arg1_37", scope: !28, file: !2, line: 58, type: !134)
!154 = !DILocation(line: 58, column: 5, scope: !28)
!155 = !DILocation(line: 58, column: 12, scope: !28)
!156 = !DILocalVariable(name: "$arg2_38", scope: !28, file: !2, line: 59, type: !134)
!157 = !DILocation(line: 59, column: 5, scope: !28)
!158 = !DILocation(line: 59, column: 12, scope: !28)
!159 = !DILocalVariable(name: "$test_42", scope: !28, file: !2, line: 60, type: !10)
!160 = !DILocation(line: 60, column: 5, scope: !28)
!161 = !DILocalVariable(name: "$res_39", scope: !28, file: !2, line: 61, type: !134)
!162 = !DILocation(line: 61, column: 7, scope: !28)
!163 = !DILocation(line: 61, column: 13, scope: !28)
!164 = !DILocalVariable(name: "$res__40", scope: !28, file: !2, line: 62, type: !134)
!165 = !DILocation(line: 62, column: 7, scope: !28)
!166 = !DILocation(line: 62, column: 14, scope: !28)
!167 = !DILocalVariable(name: "$test__41", scope: !28, file: !2, line: 63, type: !10)
!168 = !DILocation(line: 63, column: 7, scope: !28)
!169 = !DILocation(line: 63, column: 15, scope: !28)
!170 = !DILocation(line: 64, column: 3, scope: !28)
!171 = !DILocalVariable(name: "$BoolUtils.andb_92", scope: !28, file: !2, line: 64, type: !10)
!172 = !DILocalVariable(name: "$arg1_43", scope: !28, file: !2, line: 67, type: !173)
!173 = !DIBasicType(name: "Uint256", size: 32)
!174 = !DILocation(line: 67, column: 5, scope: !28)
!175 = !DILocation(line: 67, column: 12, scope: !28)
!176 = !DILocalVariable(name: "$arg2_44", scope: !28, file: !2, line: 68, type: !173)
!177 = !DILocation(line: 68, column: 5, scope: !28)
!178 = !DILocation(line: 68, column: 12, scope: !28)
!179 = !DILocalVariable(name: "$test_48", scope: !28, file: !2, line: 69, type: !10)
!180 = !DILocation(line: 69, column: 5, scope: !28)
!181 = !DILocalVariable(name: "$res_45", scope: !28, file: !2, line: 70, type: !173)
!182 = !DILocation(line: 70, column: 7, scope: !28)
!183 = !DILocation(line: 70, column: 13, scope: !28)
!184 = !DILocalVariable(name: "$res__46", scope: !28, file: !2, line: 71, type: !173)
!185 = !DILocation(line: 71, column: 7, scope: !28)
!186 = !DILocation(line: 71, column: 14, scope: !28)
!187 = !DILocalVariable(name: "$test__47", scope: !28, file: !2, line: 72, type: !10)
!188 = !DILocation(line: 72, column: 7, scope: !28)
!189 = !DILocation(line: 72, column: 15, scope: !28)
!190 = !DILocation(line: 73, column: 3, scope: !28)
!191 = !DILocalVariable(name: "$BoolUtils.andb_94", scope: !28, file: !2, line: 73, type: !10)
!192 = !DILocalVariable(name: "$arg1_49", scope: !28, file: !2, line: 76, type: !173)
!193 = !DILocation(line: 76, column: 5, scope: !28)
!194 = !DILocation(line: 76, column: 12, scope: !28)
!195 = !DILocalVariable(name: "$arg2_50", scope: !28, file: !2, line: 77, type: !173)
!196 = !DILocation(line: 77, column: 5, scope: !28)
!197 = !DILocation(line: 77, column: 12, scope: !28)
!198 = !DILocalVariable(name: "$test_54", scope: !28, file: !2, line: 78, type: !10)
!199 = !DILocation(line: 78, column: 5, scope: !28)
!200 = !DILocalVariable(name: "$res_51", scope: !28, file: !2, line: 79, type: !173)
!201 = !DILocation(line: 79, column: 7, scope: !28)
!202 = !DILocation(line: 79, column: 13, scope: !28)
!203 = !DILocalVariable(name: "$res__52", scope: !28, file: !2, line: 80, type: !173)
!204 = !DILocation(line: 80, column: 7, scope: !28)
!205 = !DILocation(line: 80, column: 14, scope: !28)
!206 = !DILocalVariable(name: "$test__53", scope: !28, file: !2, line: 81, type: !10)
!207 = !DILocation(line: 81, column: 7, scope: !28)
!208 = !DILocation(line: 81, column: 15, scope: !28)
!209 = !DILocation(line: 82, column: 3, scope: !28)
!210 = !DILocalVariable(name: "$BoolUtils.andb_96", scope: !28, file: !2, line: 82, type: !10)
!211 = !DILocalVariable(name: "$arg1_55", scope: !28, file: !2, line: 85, type: !173)
!212 = !DILocation(line: 85, column: 5, scope: !28)
!213 = !DILocation(line: 85, column: 12, scope: !28)
!214 = !DILocalVariable(name: "$arg2_56", scope: !28, file: !2, line: 86, type: !173)
!215 = !DILocation(line: 86, column: 5, scope: !28)
!216 = !DILocation(line: 86, column: 12, scope: !28)
!217 = !DILocalVariable(name: "$test_60", scope: !28, file: !2, line: 87, type: !10)
!218 = !DILocation(line: 87, column: 5, scope: !28)
!219 = !DILocalVariable(name: "$res_57", scope: !28, file: !2, line: 88, type: !173)
!220 = !DILocation(line: 88, column: 7, scope: !28)
!221 = !DILocation(line: 88, column: 13, scope: !28)
!222 = !DILocalVariable(name: "$res__58", scope: !28, file: !2, line: 89, type: !173)
!223 = !DILocation(line: 89, column: 7, scope: !28)
!224 = !DILocation(line: 89, column: 14, scope: !28)
!225 = !DILocalVariable(name: "$test__59", scope: !28, file: !2, line: 90, type: !10)
!226 = !DILocation(line: 90, column: 7, scope: !28)
!227 = !DILocation(line: 90, column: 15, scope: !28)
!228 = !DILocation(line: 91, column: 3, scope: !28)
!229 = !DILocalVariable(name: "$BoolUtils.andb_98", scope: !28, file: !2, line: 91, type: !10)
!230 = !DILocalVariable(name: "$arg1_61", scope: !28, file: !2, line: 94, type: !231)
!231 = !DIBasicType(name: "Int256", size: 32)
!232 = !DILocation(line: 94, column: 5, scope: !28)
!233 = !DILocation(line: 94, column: 12, scope: !28)
!234 = !DILocalVariable(name: "$arg2_62", scope: !28, file: !2, line: 95, type: !231)
!235 = !DILocation(line: 95, column: 5, scope: !28)
!236 = !DILocation(line: 95, column: 12, scope: !28)
!237 = !DILocalVariable(name: "$test_66", scope: !28, file: !2, line: 96, type: !10)
!238 = !DILocation(line: 96, column: 5, scope: !28)
!239 = !DILocalVariable(name: "$res_63", scope: !28, file: !2, line: 97, type: !231)
!240 = !DILocation(line: 97, column: 7, scope: !28)
!241 = !DILocation(line: 97, column: 13, scope: !28)
!242 = !DILocalVariable(name: "$res__64", scope: !28, file: !2, line: 98, type: !231)
!243 = !DILocation(line: 98, column: 7, scope: !28)
!244 = !DILocation(line: 98, column: 14, scope: !28)
!245 = !DILocalVariable(name: "$test__65", scope: !28, file: !2, line: 99, type: !10)
!246 = !DILocation(line: 99, column: 7, scope: !28)
!247 = !DILocation(line: 99, column: 15, scope: !28)
!248 = !DILocation(line: 100, column: 3, scope: !28)
!249 = !DILocalVariable(name: "$BoolUtils.andb_100", scope: !28, file: !2, line: 100, type: !10)
!250 = !DILocalVariable(name: "$arg2_67", scope: !28, file: !2, line: 103, type: !231)
!251 = !DILocation(line: 103, column: 5, scope: !28)
!252 = !DILocation(line: 103, column: 12, scope: !28)
!253 = !DILocalVariable(name: "$arg1_68", scope: !28, file: !2, line: 104, type: !231)
!254 = !DILocation(line: 104, column: 5, scope: !28)
!255 = !DILocation(line: 104, column: 12, scope: !28)
!256 = !DILocalVariable(name: "$test_72", scope: !28, file: !2, line: 105, type: !10)
!257 = !DILocation(line: 105, column: 5, scope: !28)
!258 = !DILocalVariable(name: "$res_69", scope: !28, file: !2, line: 106, type: !231)
!259 = !DILocation(line: 106, column: 7, scope: !28)
!260 = !DILocation(line: 106, column: 13, scope: !28)
!261 = !DILocalVariable(name: "$res__70", scope: !28, file: !2, line: 107, type: !231)
!262 = !DILocation(line: 107, column: 7, scope: !28)
!263 = !DILocation(line: 107, column: 14, scope: !28)
!264 = !DILocalVariable(name: "$test__71", scope: !28, file: !2, line: 108, type: !10)
!265 = !DILocation(line: 108, column: 7, scope: !28)
!266 = !DILocation(line: 108, column: 15, scope: !28)
!267 = !DILocation(line: 109, column: 3, scope: !28)
!268 = !DILocalVariable(name: "$BoolUtils.andb_102", scope: !28, file: !2, line: 109, type: !10)
!269 = !DILocalVariable(name: "$arg1_73", scope: !28, file: !2, line: 112, type: !231)
!270 = !DILocation(line: 112, column: 5, scope: !28)
!271 = !DILocation(line: 112, column: 12, scope: !28)
!272 = !DILocalVariable(name: "$arg2_74", scope: !28, file: !2, line: 113, type: !231)
!273 = !DILocation(line: 113, column: 5, scope: !28)
!274 = !DILocation(line: 113, column: 12, scope: !28)
!275 = !DILocalVariable(name: "$test_78", scope: !28, file: !2, line: 114, type: !10)
!276 = !DILocation(line: 114, column: 5, scope: !28)
!277 = !DILocalVariable(name: "$res_75", scope: !28, file: !2, line: 115, type: !231)
!278 = !DILocation(line: 115, column: 7, scope: !28)
!279 = !DILocation(line: 115, column: 13, scope: !28)
!280 = !DILocalVariable(name: "$res__76", scope: !28, file: !2, line: 116, type: !231)
!281 = !DILocation(line: 116, column: 7, scope: !28)
!282 = !DILocation(line: 116, column: 14, scope: !28)
!283 = !DILocalVariable(name: "$test__77", scope: !28, file: !2, line: 117, type: !10)
!284 = !DILocation(line: 117, column: 7, scope: !28)
!285 = !DILocation(line: 117, column: 15, scope: !28)
!286 = !DILocation(line: 118, column: 3, scope: !28)
!287 = !DILocalVariable(name: "$BoolUtils.andb_104", scope: !28, file: !2, line: 118, type: !10)
!288 = !DILocation(line: 121, column: 1, scope: !28)
