; let p1 = Uint32 0 in
; let p2 = Uint32 1 in
; let p3 = Uint32 4 in
; let p4 = Uint32 10 in
; 
; let t1 = Uint32 2 in
; let t2 = Int32 3 in
; let t3 = Uint64 100 in
; let t4 = Int64 -101 in
; let t5 = Uint128 1000 in
; let t6 = Int128 501 in
; let t7 = Uint256 10001 in
; let t8 = Int256 -10001 in
; let t9 = Int256 10002 in
; 
; let res = True in
; 
; (* ***************************** *)
; 
; let p = builtin pow t1 p1 in
; let res =
; let ans = Uint32 1 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t1 p2 in
; let res =
; let ans = Uint32 2 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t1 p3 in
; let res =
; let ans = Uint32 16 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t1 p4 in
; let res =
; let ans = Uint32 1024 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; (* ***************************** *)
; 
; let p = builtin pow t2 p1 in
; let res =
; let ans = Int32 1 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t2 p2 in
; let res =
; let ans = Int32 3 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t2 p3 in
; let res =
; let ans = Int32 81 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t2 p4 in
; let res =
; let ans = Int32 59049 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; (* ***************************** *)
; 
; let p = builtin pow t3 p1 in
; let res =
; let ans = Uint64 1 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t3 p2 in
; let res =
; let ans = Uint64 100 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t3 p3 in
; let res =
; let ans = Uint64 100000000 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; (* ***************************** *)
; 
; let p = builtin pow t4 p1 in
; let res =
; let ans = Int64 1 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t4 p2 in
; let res =
; let ans = Int64 -101 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t4 p3 in
; let res =
; let ans = Int64 104060401 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; (* ***************************** *)
; 
; let p = builtin pow t5 p1 in
; let res =
; let ans = Uint128 1 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t5 p2 in
; let res =
; let ans = Uint128 1000 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t5 p3 in
; let res =
; let ans = Uint128 1000000000000 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t5 p4 in
; let res =
; let ans = Uint128 1000000000000000000000000000000 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; (* ***************************** *)
; 
; let p = builtin pow t6 p1 in
; let res =
; let ans = Int128 1 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t6 p2 in
; let res =
; let ans = Int128 501 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t6 p3 in
; let res =
; let ans = Int128 63001502001 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t6 p4 in
; let res =
; let ans = Int128 996270472039138140011255001 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; (* ***************************** *)
; 
; let p = builtin pow t7 p1 in
; let res =
; let ans = Uint256 1 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t7 p2 in
; let res =
; let ans = Uint256 10001 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t7 p3 in
; let res =
; let ans = Uint256 10004000600040001 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t7 p4 in
; let res =
; let ans = Uint256 10010004501200210025202100120004500100001 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; (* ***************************** *)
; 
; let p = builtin pow t8 p1 in
; let res =
; let ans = Int256 1 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t8 p2 in
; let res =
; let ans = Int256 -10001 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t8 p3 in
; let res =
; let ans = Int256 10004000600040001 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t8 p4 in
; let res =
; let ans = Int256 10010004501200210025202100120004500100001 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; (* ***************************** *)
; 
; let p = builtin pow t9 p1 in
; let res =
; let ans = Int256 1 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t9 p2 in
; let res =
; let ans = Int256 10002 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t9 p3 in
; let res =
; let ans = Int256 10008002400320016 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; let p = builtin pow t9 p4 in
; let res =
; let ans = Int256 10020018009603360806534415361152051201024 in
; let res_ = builtin eq p ans in
; andb res res_
; in
; 
; (* ***************************** *)
; 
; res
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_212" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_244" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_243"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_243" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_245"**, %"$TyDescrTy_ADTTyp_244"* }
%"$TyDescrTy_ADTTyp_Constr_245" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_2920" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2921" = type { %ParamDescrString, i32, %"$ParamDescr_2920"* }
%"$$fundef_209_env_262" = type { %TName_Bool* }
%"$$fundef_207_env_263" = type {}
%Uint32 = type { i32 }
%Uint64 = type { i64 }
%Int64 = type { i64 }
%Uint128 = type { i128 }
%Int128 = type { i128 }
%Uint256 = type { i256 }
%Int256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_213" = global %"$TyDescrTy_PrimTyp_212" zeroinitializer
@"$TyDescr_Int32_214" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Int32_Prim_213" to i8*) }
@"$TyDescr_Uint32_Prim_215" = global %"$TyDescrTy_PrimTyp_212" { i32 1, i32 0 }
@"$TyDescr_Uint32_216" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Uint32_Prim_215" to i8*) }
@"$TyDescr_Int64_Prim_217" = global %"$TyDescrTy_PrimTyp_212" { i32 0, i32 1 }
@"$TyDescr_Int64_218" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Int64_Prim_217" to i8*) }
@"$TyDescr_Uint64_Prim_219" = global %"$TyDescrTy_PrimTyp_212" { i32 1, i32 1 }
@"$TyDescr_Uint64_220" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Uint64_Prim_219" to i8*) }
@"$TyDescr_Int128_Prim_221" = global %"$TyDescrTy_PrimTyp_212" { i32 0, i32 2 }
@"$TyDescr_Int128_222" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Int128_Prim_221" to i8*) }
@"$TyDescr_Uint128_Prim_223" = global %"$TyDescrTy_PrimTyp_212" { i32 1, i32 2 }
@"$TyDescr_Uint128_224" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Uint128_Prim_223" to i8*) }
@"$TyDescr_Int256_Prim_225" = global %"$TyDescrTy_PrimTyp_212" { i32 0, i32 3 }
@"$TyDescr_Int256_226" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Int256_Prim_225" to i8*) }
@"$TyDescr_Uint256_Prim_227" = global %"$TyDescrTy_PrimTyp_212" { i32 1, i32 3 }
@"$TyDescr_Uint256_228" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Uint256_Prim_227" to i8*) }
@"$TyDescr_String_Prim_229" = global %"$TyDescrTy_PrimTyp_212" { i32 2, i32 0 }
@"$TyDescr_String_230" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_String_Prim_229" to i8*) }
@"$TyDescr_Bnum_Prim_231" = global %"$TyDescrTy_PrimTyp_212" { i32 3, i32 0 }
@"$TyDescr_Bnum_232" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Bnum_Prim_231" to i8*) }
@"$TyDescr_Message_Prim_233" = global %"$TyDescrTy_PrimTyp_212" { i32 4, i32 0 }
@"$TyDescr_Message_234" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Message_Prim_233" to i8*) }
@"$TyDescr_Event_Prim_235" = global %"$TyDescrTy_PrimTyp_212" { i32 5, i32 0 }
@"$TyDescr_Event_236" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Event_Prim_235" to i8*) }
@"$TyDescr_Exception_Prim_237" = global %"$TyDescrTy_PrimTyp_212" { i32 6, i32 0 }
@"$TyDescr_Exception_238" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Exception_Prim_237" to i8*) }
@"$TyDescr_ReplicateContr_Prim_239" = global %"$TyDescrTy_PrimTyp_212" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_240" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_ReplicateContr_Prim_239" to i8*) }
@"$TyDescr_Bystr_Prim_241" = global %"$TyDescrTy_PrimTyp_212" { i32 7, i32 0 }
@"$TyDescr_Bystr_242" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Bystr_Prim_241" to i8*) }
@"$TyDescr_ADT_Bool_246" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_243"* @"$TyDescr_Bool_ADTTyp_Specl_259" to i8*) }
@"$TyDescr_Bool_ADTTyp_250" = unnamed_addr constant %"$TyDescrTy_ADTTyp_244" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_261", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_243"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_243"*], [1 x %"$TyDescrTy_ADTTyp_Specl_243"*]* @"$TyDescr_Bool_ADTTyp_m_specls_260", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_251" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_252" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_253" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_245" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_252", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_251", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_254" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_255" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_256" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_245" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_255", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_254", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_257" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_245"*] [%"$TyDescrTy_ADTTyp_Constr_245"* @"$TyDescr_Bool_True_ADTTyp_Constr_253", %"$TyDescrTy_ADTTyp_Constr_245"* @"$TyDescr_Bool_False_ADTTyp_Constr_256"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_258" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_259" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_243" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_258", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_245"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_245"*], [2 x %"$TyDescrTy_ADTTyp_Constr_245"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_257", i32 0, i32 0), %"$TyDescrTy_ADTTyp_244"* @"$TyDescr_Bool_ADTTyp_250" }
@"$TyDescr_Bool_ADTTyp_m_specls_260" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_243"*] [%"$TyDescrTy_ADTTyp_Specl_243"* @"$TyDescr_Bool_ADTTyp_Specl_259"]
@"$TyDescr_ADT_Bool_261" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_236", %_TyDescrTy_Typ* @"$TyDescr_Int64_218", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_246", %_TyDescrTy_Typ* @"$TyDescr_Uint256_228", %_TyDescrTy_Typ* @"$TyDescr_Uint32_216", %_TyDescrTy_Typ* @"$TyDescr_Uint64_220", %_TyDescrTy_Typ* @"$TyDescr_Bnum_232", %_TyDescrTy_Typ* @"$TyDescr_Uint128_224", %_TyDescrTy_Typ* @"$TyDescr_Exception_238", %_TyDescrTy_Typ* @"$TyDescr_String_230", %_TyDescrTy_Typ* @"$TyDescr_Int256_226", %_TyDescrTy_Typ* @"$TyDescr_Int128_222", %_TyDescrTy_Typ* @"$TyDescr_Bystr_242", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_240", %_TyDescrTy_Typ* @"$TyDescr_Message_234", %_TyDescrTy_Typ* @"$TyDescr_Int32_214"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_2920"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2921"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_209"(%"$$fundef_209_env_262"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_209_env_b_275" = getelementptr inbounds %"$$fundef_209_env_262", %"$$fundef_209_env_262"* %0, i32 0, i32 0
  %"$b_envload_276" = load %TName_Bool*, %TName_Bool** %"$$fundef_209_env_b_275", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_276", %TName_Bool** %b, align 8
  %"$retval_210" = alloca %TName_Bool*, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 2, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %entry
  %"$consume_281" = sub i64 %"$gasrem_277", 2
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$b_283" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_284" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_283", i32 0, i32 0
  %"$b_tag_285" = load i8, i8* %"$b_tag_284", align 1
  switch i8 %"$b_tag_285", label %"$empty_default_286" [
    i8 1, label %"$False_287"
    i8 0, label %"$True_297"
  ]

"$False_287":                                     ; preds = %"$have_gas_280"
  %"$b_288" = bitcast %TName_Bool* %"$b_283" to %CName_False*
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$False_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$False_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$adtval_294_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_294_salloc" = call i8* @_salloc(i8* %"$adtval_294_load", i64 1)
  %"$adtval_294" = bitcast i8* %"$adtval_294_salloc" to %CName_False*
  %"$adtgep_295" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_294", i32 0, i32 0
  store i8 1, i8* %"$adtgep_295", align 1
  %"$adtptr_296" = bitcast %CName_False* %"$adtval_294" to %TName_Bool*
  store %TName_Bool* %"$adtptr_296", %TName_Bool** %"$retval_210", align 8
  br label %"$matchsucc_282"

"$True_297":                                      ; preds = %"$have_gas_280"
  %"$b_298" = bitcast %TName_Bool* %"$b_283" to %CName_True*
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$True_297"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$True_297"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_210", align 8
  br label %"$matchsucc_282"

"$empty_default_286":                             ; preds = %"$have_gas_280"
  br label %"$matchsucc_282"

"$matchsucc_282":                                 ; preds = %"$have_gas_302", %"$have_gas_292", %"$empty_default_286"
  %"$$retval_210_304" = load %TName_Bool*, %TName_Bool** %"$retval_210", align 8
  ret %TName_Bool* %"$$retval_210_304"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_207"(%"$$fundef_207_env_263"* %0, %TName_Bool* %1) {
entry:
  %"$retval_208" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %entry
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$$fundef_209_envp_269_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_209_envp_269_salloc" = call i8* @_salloc(i8* %"$$fundef_209_envp_269_load", i64 8)
  %"$$fundef_209_envp_269" = bitcast i8* %"$$fundef_209_envp_269_salloc" to %"$$fundef_209_env_262"*
  %"$$fundef_209_env_voidp_271" = bitcast %"$$fundef_209_env_262"* %"$$fundef_209_envp_269" to i8*
  %"$$fundef_209_cloval_272" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_209_env_262"*, %TName_Bool*)* @"$fundef_209" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_209_env_voidp_271", 1
  %"$$fundef_209_env_b_273" = getelementptr inbounds %"$$fundef_209_env_262", %"$$fundef_209_env_262"* %"$$fundef_209_envp_269", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_209_env_b_273", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_209_cloval_272", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_208", align 8
  %"$$retval_208_274" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_208", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_208_274"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 5, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %entry
  %"$consume_309" = sub i64 %"$gasrem_305", 5
  store i64 %"$consume_309", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 7, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_308"
  %"$consume_314" = sub i64 %"$gasrem_310", 7
  store i64 %"$consume_314", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_313"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_207_env_263"*, %TName_Bool*)* @"$fundef_207" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 196, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_318"
  %"$consume_327" = sub i64 %"$gasrem_323", 196
  store i64 %"$consume_327", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 20, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_326"
  %"$consume_332" = sub i64 %"$gasrem_328", 20
  store i64 %"$consume_332", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 12, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_331"
  %"$consume_337" = sub i64 %"$gasrem_333", 12
  store i64 %"$consume_337", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 2, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_336"
  %"$consume_342" = sub i64 %"$gasrem_338", 2
  store i64 %"$consume_342", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_211" = alloca %TName_Bool*, align 8
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %entry
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %p1 = alloca %Uint32, align 8
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_346"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %p1, align 4
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_351"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %p2 = alloca %Uint32, align 8
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %p2, align 4
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_361"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %p3 = alloca %Uint32, align 8
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_366"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  store %Uint32 { i32 4 }, %Uint32* %p3, align 4
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %p4 = alloca %Uint32, align 8
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_376"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  store %Uint32 { i32 10 }, %Uint32* %p4, align 4
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_381"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %t1 = alloca %Uint32, align 8
  %"$gasrem_388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_389" = icmp ugt i64 1, %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_386"
  %"$consume_392" = sub i64 %"$gasrem_388", 1
  store i64 %"$consume_392", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %t1, align 4
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_391"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %t2 = alloca %Int32, align 8
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_396"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %t2, align 4
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_401"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %t3 = alloca %Uint64, align 8
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_406"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %t3, align 8
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem, align 8
  %t4 = alloca %Int64, align 8
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  store %Int64 { i64 -101 }, %Int64* %t4, align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %t5 = alloca %Uint128, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_426"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %t5, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_431"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %t6 = alloca %Int128, align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  store %Int128 { i128 501 }, %Int128* %t6, align 8
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 1, %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_441"
  %"$consume_447" = sub i64 %"$gasrem_443", 1
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %t7 = alloca %Uint256, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_446"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  store %Uint256 { i256 10001 }, %Uint256* %t7, align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %t8 = alloca %Int256, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  store %Int256 { i256 -10001 }, %Int256* %t8, align 8
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_461"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %t9 = alloca %Int256, align 8
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  store %Int256 { i256 10002 }, %Int256* %t9, align 8
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_471"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %res = alloca %TName_Bool*, align 8
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 1, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %"$have_gas_476"
  %"$consume_482" = sub i64 %"$gasrem_478", 1
  store i64 %"$consume_482", i64* @_gasrem, align 8
  %"$adtval_483_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_483_salloc" = call i8* @_salloc(i8* %"$adtval_483_load", i64 1)
  %"$adtval_483" = bitcast i8* %"$adtval_483_salloc" to %CName_True*
  %"$adtgep_484" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_483", i32 0, i32 0
  store i8 0, i8* %"$adtgep_484", align 1
  %"$adtptr_485" = bitcast %CName_True* %"$adtval_483" to %TName_Bool*
  store %TName_Bool* %"$adtptr_485", %TName_Bool** %res, align 8
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %"$have_gas_481"
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  %p = alloca %Uint32, align 8
  %"$p1_491" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_492" = extractvalue %Uint32 %"$p1_491", 0
  %"$valueof_493" = zext i32 %"$valueof_492" to i64
  %"$gaslogof_494" = uitofp i64 %"$valueof_493" to double
  %"$gaslogof_495" = fadd double %"$gaslogof_494", 1.000000e+00
  %"$gaslogof_496" = call double @llvm.log.f64(double %"$gaslogof_495")
  %"$gaslogof_497" = fptoui double %"$gaslogof_496" to i64
  %"$gaslogof_498" = add i64 %"$gaslogof_497", 1
  %"$gasmul_499" = mul i64 20, %"$gaslogof_498"
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 %"$gasmul_499", %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %"$have_gas_489"
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %"$have_gas_489"
  %"$consume_504" = sub i64 %"$gasrem_500", %"$gasmul_499"
  store i64 %"$consume_504", i64* @_gasrem, align 8
  %"$t1_505" = load %Uint32, %Uint32* %t1, align 4
  %"$p1_506" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_507" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_505", %Uint32 %"$p1_506")
  store %Uint32 %"$pow_call_507", %Uint32* %p, align 4
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_503"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_503"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %"$res_6" = alloca %TName_Bool*, align 8
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_511"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %ans = alloca %Uint32, align 8
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_516"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %ans, align 4
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_521"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %res_ = alloca %TName_Bool*, align 8
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 4, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_526"
  %"$consume_532" = sub i64 %"$gasrem_528", 4
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %"$execptr_load_533" = load i8*, i8** @_execptr, align 8
  %"$p_534" = load %Uint32, %Uint32* %p, align 4
  %"$ans_535" = load %Uint32, %Uint32* %ans, align 4
  %"$eq_call_536" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_533", %Uint32 %"$p_534", %Uint32 %"$ans_535")
  store %TName_Bool* %"$eq_call_536", %TName_Bool** %res_, align 8
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_531"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem, align 8
  %"$BoolUtils.andb_139" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_543" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_544" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_543", 0
  %"$BoolUtils.andb_envptr_545" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_543", 1
  %"$res_546" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$BoolUtils.andb_call_547" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_544"(i8* %"$BoolUtils.andb_envptr_545", %TName_Bool* %"$res_546")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_547", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$BoolUtils.andb_140" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_139_548" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_fptr_549" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_548", 0
  %"$$BoolUtils.andb_139_envptr_550" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_548", 1
  %"$res__551" = load %TName_Bool*, %TName_Bool** %res_, align 8
  %"$$BoolUtils.andb_139_call_552" = call %TName_Bool* %"$$BoolUtils.andb_139_fptr_549"(i8* %"$$BoolUtils.andb_139_envptr_550", %TName_Bool* %"$res__551")
  store %TName_Bool* %"$$BoolUtils.andb_139_call_552", %TName_Bool** %"$BoolUtils.andb_140", align 8
  %"$$BoolUtils.andb_140_553" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_140", align 8
  store %TName_Bool* %"$$BoolUtils.andb_140_553", %TName_Bool** %"$res_6", align 8
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 1, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_541"
  %"$consume_558" = sub i64 %"$gasrem_554", 1
  store i64 %"$consume_558", i64* @_gasrem, align 8
  %"$p_7" = alloca %Uint32, align 8
  %"$p2_559" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_560" = extractvalue %Uint32 %"$p2_559", 0
  %"$valueof_561" = zext i32 %"$valueof_560" to i64
  %"$gaslogof_562" = uitofp i64 %"$valueof_561" to double
  %"$gaslogof_563" = fadd double %"$gaslogof_562", 1.000000e+00
  %"$gaslogof_564" = call double @llvm.log.f64(double %"$gaslogof_563")
  %"$gaslogof_565" = fptoui double %"$gaslogof_564" to i64
  %"$gaslogof_566" = add i64 %"$gaslogof_565", 1
  %"$gasmul_567" = mul i64 20, %"$gaslogof_566"
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 %"$gasmul_567", %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_557"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_557"
  %"$consume_572" = sub i64 %"$gasrem_568", %"$gasmul_567"
  store i64 %"$consume_572", i64* @_gasrem, align 8
  %"$t1_573" = load %Uint32, %Uint32* %t1, align 4
  %"$p2_574" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_575" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_573", %Uint32 %"$p2_574")
  store %Uint32 %"$pow_call_575", %Uint32* %"$p_7", align 4
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_571"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_571"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  %"$res_10" = alloca %TName_Bool*, align 8
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_579"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %"$ans_8" = alloca %Uint32, align 8
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_584"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %"$ans_8", align 4
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_589"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %"$res__9" = alloca %TName_Bool*, align 8
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 4, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_594"
  %"$consume_600" = sub i64 %"$gasrem_596", 4
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %"$execptr_load_601" = load i8*, i8** @_execptr, align 8
  %"$$p_7_602" = load %Uint32, %Uint32* %"$p_7", align 4
  %"$$ans_8_603" = load %Uint32, %Uint32* %"$ans_8", align 4
  %"$eq_call_604" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_601", %Uint32 %"$$p_7_602", %Uint32 %"$$ans_8_603")
  store %TName_Bool* %"$eq_call_604", %TName_Bool** %"$res__9", align 8
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 1, %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %"$have_gas_599"
  %"$consume_610" = sub i64 %"$gasrem_606", 1
  store i64 %"$consume_610", i64* @_gasrem, align 8
  %"$BoolUtils.andb_141" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_611" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_612" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_611", 0
  %"$BoolUtils.andb_envptr_613" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_611", 1
  %"$$res_6_614" = load %TName_Bool*, %TName_Bool** %"$res_6", align 8
  %"$BoolUtils.andb_call_615" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_612"(i8* %"$BoolUtils.andb_envptr_613", %TName_Bool* %"$$res_6_614")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_615", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$BoolUtils.andb_142" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_141_616" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$$BoolUtils.andb_141_fptr_617" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_616", 0
  %"$$BoolUtils.andb_141_envptr_618" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_616", 1
  %"$$res__9_619" = load %TName_Bool*, %TName_Bool** %"$res__9", align 8
  %"$$BoolUtils.andb_141_call_620" = call %TName_Bool* %"$$BoolUtils.andb_141_fptr_617"(i8* %"$$BoolUtils.andb_141_envptr_618", %TName_Bool* %"$$res__9_619")
  store %TName_Bool* %"$$BoolUtils.andb_141_call_620", %TName_Bool** %"$BoolUtils.andb_142", align 8
  %"$$BoolUtils.andb_142_621" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_142", align 8
  store %TName_Bool* %"$$BoolUtils.andb_142_621", %TName_Bool** %"$res_10", align 8
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %"$have_gas_609"
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %"$have_gas_609"
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem, align 8
  %"$p_11" = alloca %Uint32, align 8
  %"$p3_627" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_628" = extractvalue %Uint32 %"$p3_627", 0
  %"$valueof_629" = zext i32 %"$valueof_628" to i64
  %"$gaslogof_630" = uitofp i64 %"$valueof_629" to double
  %"$gaslogof_631" = fadd double %"$gaslogof_630", 1.000000e+00
  %"$gaslogof_632" = call double @llvm.log.f64(double %"$gaslogof_631")
  %"$gaslogof_633" = fptoui double %"$gaslogof_632" to i64
  %"$gaslogof_634" = add i64 %"$gaslogof_633", 1
  %"$gasmul_635" = mul i64 20, %"$gaslogof_634"
  %"$gasrem_636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_637" = icmp ugt i64 %"$gasmul_635", %"$gasrem_636"
  br i1 %"$gascmp_637", label %"$out_of_gas_638", label %"$have_gas_639"

"$out_of_gas_638":                                ; preds = %"$have_gas_625"
  call void @_out_of_gas()
  br label %"$have_gas_639"

"$have_gas_639":                                  ; preds = %"$out_of_gas_638", %"$have_gas_625"
  %"$consume_640" = sub i64 %"$gasrem_636", %"$gasmul_635"
  store i64 %"$consume_640", i64* @_gasrem, align 8
  %"$t1_641" = load %Uint32, %Uint32* %t1, align 4
  %"$p3_642" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_643" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_641", %Uint32 %"$p3_642")
  store %Uint32 %"$pow_call_643", %Uint32* %"$p_11", align 4
  %"$gasrem_644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_645" = icmp ugt i64 1, %"$gasrem_644"
  br i1 %"$gascmp_645", label %"$out_of_gas_646", label %"$have_gas_647"

"$out_of_gas_646":                                ; preds = %"$have_gas_639"
  call void @_out_of_gas()
  br label %"$have_gas_647"

"$have_gas_647":                                  ; preds = %"$out_of_gas_646", %"$have_gas_639"
  %"$consume_648" = sub i64 %"$gasrem_644", 1
  store i64 %"$consume_648", i64* @_gasrem, align 8
  %"$res_14" = alloca %TName_Bool*, align 8
  %"$gasrem_649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_650" = icmp ugt i64 1, %"$gasrem_649"
  br i1 %"$gascmp_650", label %"$out_of_gas_651", label %"$have_gas_652"

"$out_of_gas_651":                                ; preds = %"$have_gas_647"
  call void @_out_of_gas()
  br label %"$have_gas_652"

"$have_gas_652":                                  ; preds = %"$out_of_gas_651", %"$have_gas_647"
  %"$consume_653" = sub i64 %"$gasrem_649", 1
  store i64 %"$consume_653", i64* @_gasrem, align 8
  %"$ans_12" = alloca %Uint32, align 8
  %"$gasrem_654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_655" = icmp ugt i64 1, %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_652"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_652"
  %"$consume_658" = sub i64 %"$gasrem_654", 1
  store i64 %"$consume_658", i64* @_gasrem, align 8
  store %Uint32 { i32 16 }, %Uint32* %"$ans_12", align 4
  %"$gasrem_659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_660" = icmp ugt i64 1, %"$gasrem_659"
  br i1 %"$gascmp_660", label %"$out_of_gas_661", label %"$have_gas_662"

"$out_of_gas_661":                                ; preds = %"$have_gas_657"
  call void @_out_of_gas()
  br label %"$have_gas_662"

"$have_gas_662":                                  ; preds = %"$out_of_gas_661", %"$have_gas_657"
  %"$consume_663" = sub i64 %"$gasrem_659", 1
  store i64 %"$consume_663", i64* @_gasrem, align 8
  %"$res__13" = alloca %TName_Bool*, align 8
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 4, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_662"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_662"
  %"$consume_668" = sub i64 %"$gasrem_664", 4
  store i64 %"$consume_668", i64* @_gasrem, align 8
  %"$execptr_load_669" = load i8*, i8** @_execptr, align 8
  %"$$p_11_670" = load %Uint32, %Uint32* %"$p_11", align 4
  %"$$ans_12_671" = load %Uint32, %Uint32* %"$ans_12", align 4
  %"$eq_call_672" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_669", %Uint32 %"$$p_11_670", %Uint32 %"$$ans_12_671")
  store %TName_Bool* %"$eq_call_672", %TName_Bool** %"$res__13", align 8
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 1, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %"$have_gas_667"
  %"$consume_678" = sub i64 %"$gasrem_674", 1
  store i64 %"$consume_678", i64* @_gasrem, align 8
  %"$BoolUtils.andb_143" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_679" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_680" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_679", 0
  %"$BoolUtils.andb_envptr_681" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_679", 1
  %"$$res_10_682" = load %TName_Bool*, %TName_Bool** %"$res_10", align 8
  %"$BoolUtils.andb_call_683" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_680"(i8* %"$BoolUtils.andb_envptr_681", %TName_Bool* %"$$res_10_682")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_683", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$BoolUtils.andb_144" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_143_684" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$$BoolUtils.andb_143_fptr_685" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_684", 0
  %"$$BoolUtils.andb_143_envptr_686" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_684", 1
  %"$$res__13_687" = load %TName_Bool*, %TName_Bool** %"$res__13", align 8
  %"$$BoolUtils.andb_143_call_688" = call %TName_Bool* %"$$BoolUtils.andb_143_fptr_685"(i8* %"$$BoolUtils.andb_143_envptr_686", %TName_Bool* %"$$res__13_687")
  store %TName_Bool* %"$$BoolUtils.andb_143_call_688", %TName_Bool** %"$BoolUtils.andb_144", align 8
  %"$$BoolUtils.andb_144_689" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_144", align 8
  store %TName_Bool* %"$$BoolUtils.andb_144_689", %TName_Bool** %"$res_14", align 8
  %"$gasrem_690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_691" = icmp ugt i64 1, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %"$have_gas_677"
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %"$have_gas_677"
  %"$consume_694" = sub i64 %"$gasrem_690", 1
  store i64 %"$consume_694", i64* @_gasrem, align 8
  %"$p_15" = alloca %Uint32, align 8
  %"$p4_695" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_696" = extractvalue %Uint32 %"$p4_695", 0
  %"$valueof_697" = zext i32 %"$valueof_696" to i64
  %"$gaslogof_698" = uitofp i64 %"$valueof_697" to double
  %"$gaslogof_699" = fadd double %"$gaslogof_698", 1.000000e+00
  %"$gaslogof_700" = call double @llvm.log.f64(double %"$gaslogof_699")
  %"$gaslogof_701" = fptoui double %"$gaslogof_700" to i64
  %"$gaslogof_702" = add i64 %"$gaslogof_701", 1
  %"$gasmul_703" = mul i64 20, %"$gaslogof_702"
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 %"$gasmul_703", %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_693"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_693"
  %"$consume_708" = sub i64 %"$gasrem_704", %"$gasmul_703"
  store i64 %"$consume_708", i64* @_gasrem, align 8
  %"$t1_709" = load %Uint32, %Uint32* %t1, align 4
  %"$p4_710" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_711" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_709", %Uint32 %"$p4_710")
  store %Uint32 %"$pow_call_711", %Uint32* %"$p_15", align 4
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_707"
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem, align 8
  %"$res_18" = alloca %TName_Bool*, align 8
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 1, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %"$have_gas_715"
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %"$have_gas_715"
  %"$consume_721" = sub i64 %"$gasrem_717", 1
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %"$ans_16" = alloca %Uint32, align 8
  %"$gasrem_722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_723" = icmp ugt i64 1, %"$gasrem_722"
  br i1 %"$gascmp_723", label %"$out_of_gas_724", label %"$have_gas_725"

"$out_of_gas_724":                                ; preds = %"$have_gas_720"
  call void @_out_of_gas()
  br label %"$have_gas_725"

"$have_gas_725":                                  ; preds = %"$out_of_gas_724", %"$have_gas_720"
  %"$consume_726" = sub i64 %"$gasrem_722", 1
  store i64 %"$consume_726", i64* @_gasrem, align 8
  store %Uint32 { i32 1024 }, %Uint32* %"$ans_16", align 4
  %"$gasrem_727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_728" = icmp ugt i64 1, %"$gasrem_727"
  br i1 %"$gascmp_728", label %"$out_of_gas_729", label %"$have_gas_730"

"$out_of_gas_729":                                ; preds = %"$have_gas_725"
  call void @_out_of_gas()
  br label %"$have_gas_730"

"$have_gas_730":                                  ; preds = %"$out_of_gas_729", %"$have_gas_725"
  %"$consume_731" = sub i64 %"$gasrem_727", 1
  store i64 %"$consume_731", i64* @_gasrem, align 8
  %"$res__17" = alloca %TName_Bool*, align 8
  %"$gasrem_732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_733" = icmp ugt i64 4, %"$gasrem_732"
  br i1 %"$gascmp_733", label %"$out_of_gas_734", label %"$have_gas_735"

"$out_of_gas_734":                                ; preds = %"$have_gas_730"
  call void @_out_of_gas()
  br label %"$have_gas_735"

"$have_gas_735":                                  ; preds = %"$out_of_gas_734", %"$have_gas_730"
  %"$consume_736" = sub i64 %"$gasrem_732", 4
  store i64 %"$consume_736", i64* @_gasrem, align 8
  %"$execptr_load_737" = load i8*, i8** @_execptr, align 8
  %"$$p_15_738" = load %Uint32, %Uint32* %"$p_15", align 4
  %"$$ans_16_739" = load %Uint32, %Uint32* %"$ans_16", align 4
  %"$eq_call_740" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_737", %Uint32 %"$$p_15_738", %Uint32 %"$$ans_16_739")
  store %TName_Bool* %"$eq_call_740", %TName_Bool** %"$res__17", align 8
  %"$gasrem_742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_743" = icmp ugt i64 1, %"$gasrem_742"
  br i1 %"$gascmp_743", label %"$out_of_gas_744", label %"$have_gas_745"

"$out_of_gas_744":                                ; preds = %"$have_gas_735"
  call void @_out_of_gas()
  br label %"$have_gas_745"

"$have_gas_745":                                  ; preds = %"$out_of_gas_744", %"$have_gas_735"
  %"$consume_746" = sub i64 %"$gasrem_742", 1
  store i64 %"$consume_746", i64* @_gasrem, align 8
  %"$BoolUtils.andb_145" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_747" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_748" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_747", 0
  %"$BoolUtils.andb_envptr_749" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_747", 1
  %"$$res_14_750" = load %TName_Bool*, %TName_Bool** %"$res_14", align 8
  %"$BoolUtils.andb_call_751" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_748"(i8* %"$BoolUtils.andb_envptr_749", %TName_Bool* %"$$res_14_750")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_751", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$BoolUtils.andb_146" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_145_752" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$$BoolUtils.andb_145_fptr_753" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_752", 0
  %"$$BoolUtils.andb_145_envptr_754" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_752", 1
  %"$$res__17_755" = load %TName_Bool*, %TName_Bool** %"$res__17", align 8
  %"$$BoolUtils.andb_145_call_756" = call %TName_Bool* %"$$BoolUtils.andb_145_fptr_753"(i8* %"$$BoolUtils.andb_145_envptr_754", %TName_Bool* %"$$res__17_755")
  store %TName_Bool* %"$$BoolUtils.andb_145_call_756", %TName_Bool** %"$BoolUtils.andb_146", align 8
  %"$$BoolUtils.andb_146_757" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_146", align 8
  store %TName_Bool* %"$$BoolUtils.andb_146_757", %TName_Bool** %"$res_18", align 8
  %"$gasrem_758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_759" = icmp ugt i64 1, %"$gasrem_758"
  br i1 %"$gascmp_759", label %"$out_of_gas_760", label %"$have_gas_761"

"$out_of_gas_760":                                ; preds = %"$have_gas_745"
  call void @_out_of_gas()
  br label %"$have_gas_761"

"$have_gas_761":                                  ; preds = %"$out_of_gas_760", %"$have_gas_745"
  %"$consume_762" = sub i64 %"$gasrem_758", 1
  store i64 %"$consume_762", i64* @_gasrem, align 8
  %"$p_19" = alloca %Int32, align 8
  %"$p1_763" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_764" = extractvalue %Uint32 %"$p1_763", 0
  %"$valueof_765" = zext i32 %"$valueof_764" to i64
  %"$gaslogof_766" = uitofp i64 %"$valueof_765" to double
  %"$gaslogof_767" = fadd double %"$gaslogof_766", 1.000000e+00
  %"$gaslogof_768" = call double @llvm.log.f64(double %"$gaslogof_767")
  %"$gaslogof_769" = fptoui double %"$gaslogof_768" to i64
  %"$gaslogof_770" = add i64 %"$gaslogof_769", 1
  %"$gasmul_771" = mul i64 20, %"$gaslogof_770"
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 %"$gasmul_771", %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$have_gas_761"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$have_gas_761"
  %"$consume_776" = sub i64 %"$gasrem_772", %"$gasmul_771"
  store i64 %"$consume_776", i64* @_gasrem, align 8
  %"$t2_777" = load %Int32, %Int32* %t2, align 4
  %"$p1_778" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_779" = call %Int32 @_pow_Int32(%Int32 %"$t2_777", %Uint32 %"$p1_778")
  store %Int32 %"$pow_call_779", %Int32* %"$p_19", align 4
  %"$gasrem_780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_781" = icmp ugt i64 1, %"$gasrem_780"
  br i1 %"$gascmp_781", label %"$out_of_gas_782", label %"$have_gas_783"

"$out_of_gas_782":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_783"

"$have_gas_783":                                  ; preds = %"$out_of_gas_782", %"$have_gas_775"
  %"$consume_784" = sub i64 %"$gasrem_780", 1
  store i64 %"$consume_784", i64* @_gasrem, align 8
  %"$res_22" = alloca %TName_Bool*, align 8
  %"$gasrem_785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_786" = icmp ugt i64 1, %"$gasrem_785"
  br i1 %"$gascmp_786", label %"$out_of_gas_787", label %"$have_gas_788"

"$out_of_gas_787":                                ; preds = %"$have_gas_783"
  call void @_out_of_gas()
  br label %"$have_gas_788"

"$have_gas_788":                                  ; preds = %"$out_of_gas_787", %"$have_gas_783"
  %"$consume_789" = sub i64 %"$gasrem_785", 1
  store i64 %"$consume_789", i64* @_gasrem, align 8
  %"$ans_20" = alloca %Int32, align 8
  %"$gasrem_790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_791" = icmp ugt i64 1, %"$gasrem_790"
  br i1 %"$gascmp_791", label %"$out_of_gas_792", label %"$have_gas_793"

"$out_of_gas_792":                                ; preds = %"$have_gas_788"
  call void @_out_of_gas()
  br label %"$have_gas_793"

"$have_gas_793":                                  ; preds = %"$out_of_gas_792", %"$have_gas_788"
  %"$consume_794" = sub i64 %"$gasrem_790", 1
  store i64 %"$consume_794", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$ans_20", align 4
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 1, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_793"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_793"
  %"$consume_799" = sub i64 %"$gasrem_795", 1
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %"$res__21" = alloca %TName_Bool*, align 8
  %"$gasrem_800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_801" = icmp ugt i64 4, %"$gasrem_800"
  br i1 %"$gascmp_801", label %"$out_of_gas_802", label %"$have_gas_803"

"$out_of_gas_802":                                ; preds = %"$have_gas_798"
  call void @_out_of_gas()
  br label %"$have_gas_803"

"$have_gas_803":                                  ; preds = %"$out_of_gas_802", %"$have_gas_798"
  %"$consume_804" = sub i64 %"$gasrem_800", 4
  store i64 %"$consume_804", i64* @_gasrem, align 8
  %"$execptr_load_805" = load i8*, i8** @_execptr, align 8
  %"$$p_19_806" = load %Int32, %Int32* %"$p_19", align 4
  %"$$ans_20_807" = load %Int32, %Int32* %"$ans_20", align 4
  %"$eq_call_808" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_805", %Int32 %"$$p_19_806", %Int32 %"$$ans_20_807")
  store %TName_Bool* %"$eq_call_808", %TName_Bool** %"$res__21", align 8
  %"$gasrem_810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_811" = icmp ugt i64 1, %"$gasrem_810"
  br i1 %"$gascmp_811", label %"$out_of_gas_812", label %"$have_gas_813"

"$out_of_gas_812":                                ; preds = %"$have_gas_803"
  call void @_out_of_gas()
  br label %"$have_gas_813"

"$have_gas_813":                                  ; preds = %"$out_of_gas_812", %"$have_gas_803"
  %"$consume_814" = sub i64 %"$gasrem_810", 1
  store i64 %"$consume_814", i64* @_gasrem, align 8
  %"$BoolUtils.andb_147" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_815" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_816" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_815", 0
  %"$BoolUtils.andb_envptr_817" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_815", 1
  %"$$res_18_818" = load %TName_Bool*, %TName_Bool** %"$res_18", align 8
  %"$BoolUtils.andb_call_819" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_816"(i8* %"$BoolUtils.andb_envptr_817", %TName_Bool* %"$$res_18_818")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_819", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$BoolUtils.andb_148" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_147_820" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$$BoolUtils.andb_147_fptr_821" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_820", 0
  %"$$BoolUtils.andb_147_envptr_822" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_820", 1
  %"$$res__21_823" = load %TName_Bool*, %TName_Bool** %"$res__21", align 8
  %"$$BoolUtils.andb_147_call_824" = call %TName_Bool* %"$$BoolUtils.andb_147_fptr_821"(i8* %"$$BoolUtils.andb_147_envptr_822", %TName_Bool* %"$$res__21_823")
  store %TName_Bool* %"$$BoolUtils.andb_147_call_824", %TName_Bool** %"$BoolUtils.andb_148", align 8
  %"$$BoolUtils.andb_148_825" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_148", align 8
  store %TName_Bool* %"$$BoolUtils.andb_148_825", %TName_Bool** %"$res_22", align 8
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 1, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_813"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_813"
  %"$consume_830" = sub i64 %"$gasrem_826", 1
  store i64 %"$consume_830", i64* @_gasrem, align 8
  %"$p_23" = alloca %Int32, align 8
  %"$p2_831" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_832" = extractvalue %Uint32 %"$p2_831", 0
  %"$valueof_833" = zext i32 %"$valueof_832" to i64
  %"$gaslogof_834" = uitofp i64 %"$valueof_833" to double
  %"$gaslogof_835" = fadd double %"$gaslogof_834", 1.000000e+00
  %"$gaslogof_836" = call double @llvm.log.f64(double %"$gaslogof_835")
  %"$gaslogof_837" = fptoui double %"$gaslogof_836" to i64
  %"$gaslogof_838" = add i64 %"$gaslogof_837", 1
  %"$gasmul_839" = mul i64 20, %"$gaslogof_838"
  %"$gasrem_840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_841" = icmp ugt i64 %"$gasmul_839", %"$gasrem_840"
  br i1 %"$gascmp_841", label %"$out_of_gas_842", label %"$have_gas_843"

"$out_of_gas_842":                                ; preds = %"$have_gas_829"
  call void @_out_of_gas()
  br label %"$have_gas_843"

"$have_gas_843":                                  ; preds = %"$out_of_gas_842", %"$have_gas_829"
  %"$consume_844" = sub i64 %"$gasrem_840", %"$gasmul_839"
  store i64 %"$consume_844", i64* @_gasrem, align 8
  %"$t2_845" = load %Int32, %Int32* %t2, align 4
  %"$p2_846" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_847" = call %Int32 @_pow_Int32(%Int32 %"$t2_845", %Uint32 %"$p2_846")
  store %Int32 %"$pow_call_847", %Int32* %"$p_23", align 4
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 1, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %"$have_gas_843"
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %"$have_gas_843"
  %"$consume_852" = sub i64 %"$gasrem_848", 1
  store i64 %"$consume_852", i64* @_gasrem, align 8
  %"$res_26" = alloca %TName_Bool*, align 8
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 1, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$have_gas_851"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$have_gas_851"
  %"$consume_857" = sub i64 %"$gasrem_853", 1
  store i64 %"$consume_857", i64* @_gasrem, align 8
  %"$ans_24" = alloca %Int32, align 8
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 1, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %"$have_gas_856"
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %"$have_gas_856"
  %"$consume_862" = sub i64 %"$gasrem_858", 1
  store i64 %"$consume_862", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %"$ans_24", align 4
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 1, %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_861"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_861"
  %"$consume_867" = sub i64 %"$gasrem_863", 1
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %"$res__25" = alloca %TName_Bool*, align 8
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 4, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$have_gas_866"
  %"$consume_872" = sub i64 %"$gasrem_868", 4
  store i64 %"$consume_872", i64* @_gasrem, align 8
  %"$execptr_load_873" = load i8*, i8** @_execptr, align 8
  %"$$p_23_874" = load %Int32, %Int32* %"$p_23", align 4
  %"$$ans_24_875" = load %Int32, %Int32* %"$ans_24", align 4
  %"$eq_call_876" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_873", %Int32 %"$$p_23_874", %Int32 %"$$ans_24_875")
  store %TName_Bool* %"$eq_call_876", %TName_Bool** %"$res__25", align 8
  %"$gasrem_878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_879" = icmp ugt i64 1, %"$gasrem_878"
  br i1 %"$gascmp_879", label %"$out_of_gas_880", label %"$have_gas_881"

"$out_of_gas_880":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_881"

"$have_gas_881":                                  ; preds = %"$out_of_gas_880", %"$have_gas_871"
  %"$consume_882" = sub i64 %"$gasrem_878", 1
  store i64 %"$consume_882", i64* @_gasrem, align 8
  %"$BoolUtils.andb_149" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_883" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_884" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_883", 0
  %"$BoolUtils.andb_envptr_885" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_883", 1
  %"$$res_22_886" = load %TName_Bool*, %TName_Bool** %"$res_22", align 8
  %"$BoolUtils.andb_call_887" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_884"(i8* %"$BoolUtils.andb_envptr_885", %TName_Bool* %"$$res_22_886")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_887", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$BoolUtils.andb_150" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_149_888" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$$BoolUtils.andb_149_fptr_889" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_888", 0
  %"$$BoolUtils.andb_149_envptr_890" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_888", 1
  %"$$res__25_891" = load %TName_Bool*, %TName_Bool** %"$res__25", align 8
  %"$$BoolUtils.andb_149_call_892" = call %TName_Bool* %"$$BoolUtils.andb_149_fptr_889"(i8* %"$$BoolUtils.andb_149_envptr_890", %TName_Bool* %"$$res__25_891")
  store %TName_Bool* %"$$BoolUtils.andb_149_call_892", %TName_Bool** %"$BoolUtils.andb_150", align 8
  %"$$BoolUtils.andb_150_893" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_150", align 8
  store %TName_Bool* %"$$BoolUtils.andb_150_893", %TName_Bool** %"$res_26", align 8
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_881"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_881"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$p_27" = alloca %Int32, align 8
  %"$p3_899" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_900" = extractvalue %Uint32 %"$p3_899", 0
  %"$valueof_901" = zext i32 %"$valueof_900" to i64
  %"$gaslogof_902" = uitofp i64 %"$valueof_901" to double
  %"$gaslogof_903" = fadd double %"$gaslogof_902", 1.000000e+00
  %"$gaslogof_904" = call double @llvm.log.f64(double %"$gaslogof_903")
  %"$gaslogof_905" = fptoui double %"$gaslogof_904" to i64
  %"$gaslogof_906" = add i64 %"$gaslogof_905", 1
  %"$gasmul_907" = mul i64 20, %"$gaslogof_906"
  %"$gasrem_908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_909" = icmp ugt i64 %"$gasmul_907", %"$gasrem_908"
  br i1 %"$gascmp_909", label %"$out_of_gas_910", label %"$have_gas_911"

"$out_of_gas_910":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_911"

"$have_gas_911":                                  ; preds = %"$out_of_gas_910", %"$have_gas_897"
  %"$consume_912" = sub i64 %"$gasrem_908", %"$gasmul_907"
  store i64 %"$consume_912", i64* @_gasrem, align 8
  %"$t2_913" = load %Int32, %Int32* %t2, align 4
  %"$p3_914" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_915" = call %Int32 @_pow_Int32(%Int32 %"$t2_913", %Uint32 %"$p3_914")
  store %Int32 %"$pow_call_915", %Int32* %"$p_27", align 4
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_911"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_911"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem, align 8
  %"$res_30" = alloca %TName_Bool*, align 8
  %"$gasrem_921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_922" = icmp ugt i64 1, %"$gasrem_921"
  br i1 %"$gascmp_922", label %"$out_of_gas_923", label %"$have_gas_924"

"$out_of_gas_923":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_924"

"$have_gas_924":                                  ; preds = %"$out_of_gas_923", %"$have_gas_919"
  %"$consume_925" = sub i64 %"$gasrem_921", 1
  store i64 %"$consume_925", i64* @_gasrem, align 8
  %"$ans_28" = alloca %Int32, align 8
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 1, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %"$have_gas_924"
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %"$have_gas_924"
  %"$consume_930" = sub i64 %"$gasrem_926", 1
  store i64 %"$consume_930", i64* @_gasrem, align 8
  store %Int32 { i32 81 }, %Int32* %"$ans_28", align 4
  %"$gasrem_931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_932" = icmp ugt i64 1, %"$gasrem_931"
  br i1 %"$gascmp_932", label %"$out_of_gas_933", label %"$have_gas_934"

"$out_of_gas_933":                                ; preds = %"$have_gas_929"
  call void @_out_of_gas()
  br label %"$have_gas_934"

"$have_gas_934":                                  ; preds = %"$out_of_gas_933", %"$have_gas_929"
  %"$consume_935" = sub i64 %"$gasrem_931", 1
  store i64 %"$consume_935", i64* @_gasrem, align 8
  %"$res__29" = alloca %TName_Bool*, align 8
  %"$gasrem_936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_937" = icmp ugt i64 4, %"$gasrem_936"
  br i1 %"$gascmp_937", label %"$out_of_gas_938", label %"$have_gas_939"

"$out_of_gas_938":                                ; preds = %"$have_gas_934"
  call void @_out_of_gas()
  br label %"$have_gas_939"

"$have_gas_939":                                  ; preds = %"$out_of_gas_938", %"$have_gas_934"
  %"$consume_940" = sub i64 %"$gasrem_936", 4
  store i64 %"$consume_940", i64* @_gasrem, align 8
  %"$execptr_load_941" = load i8*, i8** @_execptr, align 8
  %"$$p_27_942" = load %Int32, %Int32* %"$p_27", align 4
  %"$$ans_28_943" = load %Int32, %Int32* %"$ans_28", align 4
  %"$eq_call_944" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_941", %Int32 %"$$p_27_942", %Int32 %"$$ans_28_943")
  store %TName_Bool* %"$eq_call_944", %TName_Bool** %"$res__29", align 8
  %"$gasrem_946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_947" = icmp ugt i64 1, %"$gasrem_946"
  br i1 %"$gascmp_947", label %"$out_of_gas_948", label %"$have_gas_949"

"$out_of_gas_948":                                ; preds = %"$have_gas_939"
  call void @_out_of_gas()
  br label %"$have_gas_949"

"$have_gas_949":                                  ; preds = %"$out_of_gas_948", %"$have_gas_939"
  %"$consume_950" = sub i64 %"$gasrem_946", 1
  store i64 %"$consume_950", i64* @_gasrem, align 8
  %"$BoolUtils.andb_151" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_951" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_952" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_951", 0
  %"$BoolUtils.andb_envptr_953" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_951", 1
  %"$$res_26_954" = load %TName_Bool*, %TName_Bool** %"$res_26", align 8
  %"$BoolUtils.andb_call_955" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_952"(i8* %"$BoolUtils.andb_envptr_953", %TName_Bool* %"$$res_26_954")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_955", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$BoolUtils.andb_152" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_151_956" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$$BoolUtils.andb_151_fptr_957" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_956", 0
  %"$$BoolUtils.andb_151_envptr_958" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_956", 1
  %"$$res__29_959" = load %TName_Bool*, %TName_Bool** %"$res__29", align 8
  %"$$BoolUtils.andb_151_call_960" = call %TName_Bool* %"$$BoolUtils.andb_151_fptr_957"(i8* %"$$BoolUtils.andb_151_envptr_958", %TName_Bool* %"$$res__29_959")
  store %TName_Bool* %"$$BoolUtils.andb_151_call_960", %TName_Bool** %"$BoolUtils.andb_152", align 8
  %"$$BoolUtils.andb_152_961" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_152", align 8
  store %TName_Bool* %"$$BoolUtils.andb_152_961", %TName_Bool** %"$res_30", align 8
  %"$gasrem_962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_963" = icmp ugt i64 1, %"$gasrem_962"
  br i1 %"$gascmp_963", label %"$out_of_gas_964", label %"$have_gas_965"

"$out_of_gas_964":                                ; preds = %"$have_gas_949"
  call void @_out_of_gas()
  br label %"$have_gas_965"

"$have_gas_965":                                  ; preds = %"$out_of_gas_964", %"$have_gas_949"
  %"$consume_966" = sub i64 %"$gasrem_962", 1
  store i64 %"$consume_966", i64* @_gasrem, align 8
  %"$p_31" = alloca %Int32, align 8
  %"$p4_967" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_968" = extractvalue %Uint32 %"$p4_967", 0
  %"$valueof_969" = zext i32 %"$valueof_968" to i64
  %"$gaslogof_970" = uitofp i64 %"$valueof_969" to double
  %"$gaslogof_971" = fadd double %"$gaslogof_970", 1.000000e+00
  %"$gaslogof_972" = call double @llvm.log.f64(double %"$gaslogof_971")
  %"$gaslogof_973" = fptoui double %"$gaslogof_972" to i64
  %"$gaslogof_974" = add i64 %"$gaslogof_973", 1
  %"$gasmul_975" = mul i64 20, %"$gaslogof_974"
  %"$gasrem_976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_977" = icmp ugt i64 %"$gasmul_975", %"$gasrem_976"
  br i1 %"$gascmp_977", label %"$out_of_gas_978", label %"$have_gas_979"

"$out_of_gas_978":                                ; preds = %"$have_gas_965"
  call void @_out_of_gas()
  br label %"$have_gas_979"

"$have_gas_979":                                  ; preds = %"$out_of_gas_978", %"$have_gas_965"
  %"$consume_980" = sub i64 %"$gasrem_976", %"$gasmul_975"
  store i64 %"$consume_980", i64* @_gasrem, align 8
  %"$t2_981" = load %Int32, %Int32* %t2, align 4
  %"$p4_982" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_983" = call %Int32 @_pow_Int32(%Int32 %"$t2_981", %Uint32 %"$p4_982")
  store %Int32 %"$pow_call_983", %Int32* %"$p_31", align 4
  %"$gasrem_984" = load i64, i64* @_gasrem, align 8
  %"$gascmp_985" = icmp ugt i64 1, %"$gasrem_984"
  br i1 %"$gascmp_985", label %"$out_of_gas_986", label %"$have_gas_987"

"$out_of_gas_986":                                ; preds = %"$have_gas_979"
  call void @_out_of_gas()
  br label %"$have_gas_987"

"$have_gas_987":                                  ; preds = %"$out_of_gas_986", %"$have_gas_979"
  %"$consume_988" = sub i64 %"$gasrem_984", 1
  store i64 %"$consume_988", i64* @_gasrem, align 8
  %"$res_34" = alloca %TName_Bool*, align 8
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 1, %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_987"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_987"
  %"$consume_993" = sub i64 %"$gasrem_989", 1
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %"$ans_32" = alloca %Int32, align 8
  %"$gasrem_994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_995" = icmp ugt i64 1, %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$have_gas_992"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$have_gas_992"
  %"$consume_998" = sub i64 %"$gasrem_994", 1
  store i64 %"$consume_998", i64* @_gasrem, align 8
  store %Int32 { i32 59049 }, %Int32* %"$ans_32", align 4
  %"$gasrem_999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1000" = icmp ugt i64 1, %"$gasrem_999"
  br i1 %"$gascmp_1000", label %"$out_of_gas_1001", label %"$have_gas_1002"

"$out_of_gas_1001":                               ; preds = %"$have_gas_997"
  call void @_out_of_gas()
  br label %"$have_gas_1002"

"$have_gas_1002":                                 ; preds = %"$out_of_gas_1001", %"$have_gas_997"
  %"$consume_1003" = sub i64 %"$gasrem_999", 1
  store i64 %"$consume_1003", i64* @_gasrem, align 8
  %"$res__33" = alloca %TName_Bool*, align 8
  %"$gasrem_1004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1005" = icmp ugt i64 4, %"$gasrem_1004"
  br i1 %"$gascmp_1005", label %"$out_of_gas_1006", label %"$have_gas_1007"

"$out_of_gas_1006":                               ; preds = %"$have_gas_1002"
  call void @_out_of_gas()
  br label %"$have_gas_1007"

"$have_gas_1007":                                 ; preds = %"$out_of_gas_1006", %"$have_gas_1002"
  %"$consume_1008" = sub i64 %"$gasrem_1004", 4
  store i64 %"$consume_1008", i64* @_gasrem, align 8
  %"$execptr_load_1009" = load i8*, i8** @_execptr, align 8
  %"$$p_31_1010" = load %Int32, %Int32* %"$p_31", align 4
  %"$$ans_32_1011" = load %Int32, %Int32* %"$ans_32", align 4
  %"$eq_call_1012" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_1009", %Int32 %"$$p_31_1010", %Int32 %"$$ans_32_1011")
  store %TName_Bool* %"$eq_call_1012", %TName_Bool** %"$res__33", align 8
  %"$gasrem_1014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1015" = icmp ugt i64 1, %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$have_gas_1007"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$have_gas_1007"
  %"$consume_1018" = sub i64 %"$gasrem_1014", 1
  store i64 %"$consume_1018", i64* @_gasrem, align 8
  %"$BoolUtils.andb_153" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1019" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1020" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1019", 0
  %"$BoolUtils.andb_envptr_1021" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1019", 1
  %"$$res_30_1022" = load %TName_Bool*, %TName_Bool** %"$res_30", align 8
  %"$BoolUtils.andb_call_1023" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1020"(i8* %"$BoolUtils.andb_envptr_1021", %TName_Bool* %"$$res_30_1022")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1023", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$BoolUtils.andb_154" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_153_1024" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$$BoolUtils.andb_153_fptr_1025" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1024", 0
  %"$$BoolUtils.andb_153_envptr_1026" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1024", 1
  %"$$res__33_1027" = load %TName_Bool*, %TName_Bool** %"$res__33", align 8
  %"$$BoolUtils.andb_153_call_1028" = call %TName_Bool* %"$$BoolUtils.andb_153_fptr_1025"(i8* %"$$BoolUtils.andb_153_envptr_1026", %TName_Bool* %"$$res__33_1027")
  store %TName_Bool* %"$$BoolUtils.andb_153_call_1028", %TName_Bool** %"$BoolUtils.andb_154", align 8
  %"$$BoolUtils.andb_154_1029" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_154", align 8
  store %TName_Bool* %"$$BoolUtils.andb_154_1029", %TName_Bool** %"$res_34", align 8
  %"$gasrem_1030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1031" = icmp ugt i64 1, %"$gasrem_1030"
  br i1 %"$gascmp_1031", label %"$out_of_gas_1032", label %"$have_gas_1033"

"$out_of_gas_1032":                               ; preds = %"$have_gas_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1033"

"$have_gas_1033":                                 ; preds = %"$out_of_gas_1032", %"$have_gas_1017"
  %"$consume_1034" = sub i64 %"$gasrem_1030", 1
  store i64 %"$consume_1034", i64* @_gasrem, align 8
  %"$p_35" = alloca %Uint64, align 8
  %"$p1_1035" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1036" = extractvalue %Uint32 %"$p1_1035", 0
  %"$valueof_1037" = zext i32 %"$valueof_1036" to i64
  %"$gaslogof_1038" = uitofp i64 %"$valueof_1037" to double
  %"$gaslogof_1039" = fadd double %"$gaslogof_1038", 1.000000e+00
  %"$gaslogof_1040" = call double @llvm.log.f64(double %"$gaslogof_1039")
  %"$gaslogof_1041" = fptoui double %"$gaslogof_1040" to i64
  %"$gaslogof_1042" = add i64 %"$gaslogof_1041", 1
  %"$gasmul_1043" = mul i64 20, %"$gaslogof_1042"
  %"$gasrem_1044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1045" = icmp ugt i64 %"$gasmul_1043", %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1033"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1033"
  %"$consume_1048" = sub i64 %"$gasrem_1044", %"$gasmul_1043"
  store i64 %"$consume_1048", i64* @_gasrem, align 8
  %"$t3_1049" = load %Uint64, %Uint64* %t3, align 8
  %"$p1_1050" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1051" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1049", %Uint32 %"$p1_1050")
  store %Uint64 %"$pow_call_1051", %Uint64* %"$p_35", align 8
  %"$gasrem_1052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1053" = icmp ugt i64 1, %"$gasrem_1052"
  br i1 %"$gascmp_1053", label %"$out_of_gas_1054", label %"$have_gas_1055"

"$out_of_gas_1054":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1055"

"$have_gas_1055":                                 ; preds = %"$out_of_gas_1054", %"$have_gas_1047"
  %"$consume_1056" = sub i64 %"$gasrem_1052", 1
  store i64 %"$consume_1056", i64* @_gasrem, align 8
  %"$res_38" = alloca %TName_Bool*, align 8
  %"$gasrem_1057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1058" = icmp ugt i64 1, %"$gasrem_1057"
  br i1 %"$gascmp_1058", label %"$out_of_gas_1059", label %"$have_gas_1060"

"$out_of_gas_1059":                               ; preds = %"$have_gas_1055"
  call void @_out_of_gas()
  br label %"$have_gas_1060"

"$have_gas_1060":                                 ; preds = %"$out_of_gas_1059", %"$have_gas_1055"
  %"$consume_1061" = sub i64 %"$gasrem_1057", 1
  store i64 %"$consume_1061", i64* @_gasrem, align 8
  %"$ans_36" = alloca %Uint64, align 8
  %"$gasrem_1062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1063" = icmp ugt i64 1, %"$gasrem_1062"
  br i1 %"$gascmp_1063", label %"$out_of_gas_1064", label %"$have_gas_1065"

"$out_of_gas_1064":                               ; preds = %"$have_gas_1060"
  call void @_out_of_gas()
  br label %"$have_gas_1065"

"$have_gas_1065":                                 ; preds = %"$out_of_gas_1064", %"$have_gas_1060"
  %"$consume_1066" = sub i64 %"$gasrem_1062", 1
  store i64 %"$consume_1066", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %"$ans_36", align 8
  %"$gasrem_1067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1068" = icmp ugt i64 1, %"$gasrem_1067"
  br i1 %"$gascmp_1068", label %"$out_of_gas_1069", label %"$have_gas_1070"

"$out_of_gas_1069":                               ; preds = %"$have_gas_1065"
  call void @_out_of_gas()
  br label %"$have_gas_1070"

"$have_gas_1070":                                 ; preds = %"$out_of_gas_1069", %"$have_gas_1065"
  %"$consume_1071" = sub i64 %"$gasrem_1067", 1
  store i64 %"$consume_1071", i64* @_gasrem, align 8
  %"$res__37" = alloca %TName_Bool*, align 8
  %"$gasrem_1072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1073" = icmp ugt i64 4, %"$gasrem_1072"
  br i1 %"$gascmp_1073", label %"$out_of_gas_1074", label %"$have_gas_1075"

"$out_of_gas_1074":                               ; preds = %"$have_gas_1070"
  call void @_out_of_gas()
  br label %"$have_gas_1075"

"$have_gas_1075":                                 ; preds = %"$out_of_gas_1074", %"$have_gas_1070"
  %"$consume_1076" = sub i64 %"$gasrem_1072", 4
  store i64 %"$consume_1076", i64* @_gasrem, align 8
  %"$execptr_load_1077" = load i8*, i8** @_execptr, align 8
  %"$$p_35_1078" = load %Uint64, %Uint64* %"$p_35", align 8
  %"$$ans_36_1079" = load %Uint64, %Uint64* %"$ans_36", align 8
  %"$eq_call_1080" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1077", %Uint64 %"$$p_35_1078", %Uint64 %"$$ans_36_1079")
  store %TName_Bool* %"$eq_call_1080", %TName_Bool** %"$res__37", align 8
  %"$gasrem_1082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1083" = icmp ugt i64 1, %"$gasrem_1082"
  br i1 %"$gascmp_1083", label %"$out_of_gas_1084", label %"$have_gas_1085"

"$out_of_gas_1084":                               ; preds = %"$have_gas_1075"
  call void @_out_of_gas()
  br label %"$have_gas_1085"

"$have_gas_1085":                                 ; preds = %"$out_of_gas_1084", %"$have_gas_1075"
  %"$consume_1086" = sub i64 %"$gasrem_1082", 1
  store i64 %"$consume_1086", i64* @_gasrem, align 8
  %"$BoolUtils.andb_155" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1087" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1088" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1087", 0
  %"$BoolUtils.andb_envptr_1089" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1087", 1
  %"$$res_34_1090" = load %TName_Bool*, %TName_Bool** %"$res_34", align 8
  %"$BoolUtils.andb_call_1091" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1088"(i8* %"$BoolUtils.andb_envptr_1089", %TName_Bool* %"$$res_34_1090")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1091", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$BoolUtils.andb_156" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_155_1092" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$$BoolUtils.andb_155_fptr_1093" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1092", 0
  %"$$BoolUtils.andb_155_envptr_1094" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1092", 1
  %"$$res__37_1095" = load %TName_Bool*, %TName_Bool** %"$res__37", align 8
  %"$$BoolUtils.andb_155_call_1096" = call %TName_Bool* %"$$BoolUtils.andb_155_fptr_1093"(i8* %"$$BoolUtils.andb_155_envptr_1094", %TName_Bool* %"$$res__37_1095")
  store %TName_Bool* %"$$BoolUtils.andb_155_call_1096", %TName_Bool** %"$BoolUtils.andb_156", align 8
  %"$$BoolUtils.andb_156_1097" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_156", align 8
  store %TName_Bool* %"$$BoolUtils.andb_156_1097", %TName_Bool** %"$res_38", align 8
  %"$gasrem_1098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1099" = icmp ugt i64 1, %"$gasrem_1098"
  br i1 %"$gascmp_1099", label %"$out_of_gas_1100", label %"$have_gas_1101"

"$out_of_gas_1100":                               ; preds = %"$have_gas_1085"
  call void @_out_of_gas()
  br label %"$have_gas_1101"

"$have_gas_1101":                                 ; preds = %"$out_of_gas_1100", %"$have_gas_1085"
  %"$consume_1102" = sub i64 %"$gasrem_1098", 1
  store i64 %"$consume_1102", i64* @_gasrem, align 8
  %"$p_39" = alloca %Uint64, align 8
  %"$p2_1103" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1104" = extractvalue %Uint32 %"$p2_1103", 0
  %"$valueof_1105" = zext i32 %"$valueof_1104" to i64
  %"$gaslogof_1106" = uitofp i64 %"$valueof_1105" to double
  %"$gaslogof_1107" = fadd double %"$gaslogof_1106", 1.000000e+00
  %"$gaslogof_1108" = call double @llvm.log.f64(double %"$gaslogof_1107")
  %"$gaslogof_1109" = fptoui double %"$gaslogof_1108" to i64
  %"$gaslogof_1110" = add i64 %"$gaslogof_1109", 1
  %"$gasmul_1111" = mul i64 20, %"$gaslogof_1110"
  %"$gasrem_1112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1113" = icmp ugt i64 %"$gasmul_1111", %"$gasrem_1112"
  br i1 %"$gascmp_1113", label %"$out_of_gas_1114", label %"$have_gas_1115"

"$out_of_gas_1114":                               ; preds = %"$have_gas_1101"
  call void @_out_of_gas()
  br label %"$have_gas_1115"

"$have_gas_1115":                                 ; preds = %"$out_of_gas_1114", %"$have_gas_1101"
  %"$consume_1116" = sub i64 %"$gasrem_1112", %"$gasmul_1111"
  store i64 %"$consume_1116", i64* @_gasrem, align 8
  %"$t3_1117" = load %Uint64, %Uint64* %t3, align 8
  %"$p2_1118" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1119" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1117", %Uint32 %"$p2_1118")
  store %Uint64 %"$pow_call_1119", %Uint64* %"$p_39", align 8
  %"$gasrem_1120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1121" = icmp ugt i64 1, %"$gasrem_1120"
  br i1 %"$gascmp_1121", label %"$out_of_gas_1122", label %"$have_gas_1123"

"$out_of_gas_1122":                               ; preds = %"$have_gas_1115"
  call void @_out_of_gas()
  br label %"$have_gas_1123"

"$have_gas_1123":                                 ; preds = %"$out_of_gas_1122", %"$have_gas_1115"
  %"$consume_1124" = sub i64 %"$gasrem_1120", 1
  store i64 %"$consume_1124", i64* @_gasrem, align 8
  %"$res_42" = alloca %TName_Bool*, align 8
  %"$gasrem_1125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1126" = icmp ugt i64 1, %"$gasrem_1125"
  br i1 %"$gascmp_1126", label %"$out_of_gas_1127", label %"$have_gas_1128"

"$out_of_gas_1127":                               ; preds = %"$have_gas_1123"
  call void @_out_of_gas()
  br label %"$have_gas_1128"

"$have_gas_1128":                                 ; preds = %"$out_of_gas_1127", %"$have_gas_1123"
  %"$consume_1129" = sub i64 %"$gasrem_1125", 1
  store i64 %"$consume_1129", i64* @_gasrem, align 8
  %"$ans_40" = alloca %Uint64, align 8
  %"$gasrem_1130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1131" = icmp ugt i64 1, %"$gasrem_1130"
  br i1 %"$gascmp_1131", label %"$out_of_gas_1132", label %"$have_gas_1133"

"$out_of_gas_1132":                               ; preds = %"$have_gas_1128"
  call void @_out_of_gas()
  br label %"$have_gas_1133"

"$have_gas_1133":                                 ; preds = %"$out_of_gas_1132", %"$have_gas_1128"
  %"$consume_1134" = sub i64 %"$gasrem_1130", 1
  store i64 %"$consume_1134", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %"$ans_40", align 8
  %"$gasrem_1135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1136" = icmp ugt i64 1, %"$gasrem_1135"
  br i1 %"$gascmp_1136", label %"$out_of_gas_1137", label %"$have_gas_1138"

"$out_of_gas_1137":                               ; preds = %"$have_gas_1133"
  call void @_out_of_gas()
  br label %"$have_gas_1138"

"$have_gas_1138":                                 ; preds = %"$out_of_gas_1137", %"$have_gas_1133"
  %"$consume_1139" = sub i64 %"$gasrem_1135", 1
  store i64 %"$consume_1139", i64* @_gasrem, align 8
  %"$res__41" = alloca %TName_Bool*, align 8
  %"$gasrem_1140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1141" = icmp ugt i64 4, %"$gasrem_1140"
  br i1 %"$gascmp_1141", label %"$out_of_gas_1142", label %"$have_gas_1143"

"$out_of_gas_1142":                               ; preds = %"$have_gas_1138"
  call void @_out_of_gas()
  br label %"$have_gas_1143"

"$have_gas_1143":                                 ; preds = %"$out_of_gas_1142", %"$have_gas_1138"
  %"$consume_1144" = sub i64 %"$gasrem_1140", 4
  store i64 %"$consume_1144", i64* @_gasrem, align 8
  %"$execptr_load_1145" = load i8*, i8** @_execptr, align 8
  %"$$p_39_1146" = load %Uint64, %Uint64* %"$p_39", align 8
  %"$$ans_40_1147" = load %Uint64, %Uint64* %"$ans_40", align 8
  %"$eq_call_1148" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1145", %Uint64 %"$$p_39_1146", %Uint64 %"$$ans_40_1147")
  store %TName_Bool* %"$eq_call_1148", %TName_Bool** %"$res__41", align 8
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 1, %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1143"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1143"
  %"$consume_1154" = sub i64 %"$gasrem_1150", 1
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  %"$BoolUtils.andb_157" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1155" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1156" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1155", 0
  %"$BoolUtils.andb_envptr_1157" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1155", 1
  %"$$res_38_1158" = load %TName_Bool*, %TName_Bool** %"$res_38", align 8
  %"$BoolUtils.andb_call_1159" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1156"(i8* %"$BoolUtils.andb_envptr_1157", %TName_Bool* %"$$res_38_1158")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1159", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$BoolUtils.andb_158" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_157_1160" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$$BoolUtils.andb_157_fptr_1161" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1160", 0
  %"$$BoolUtils.andb_157_envptr_1162" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1160", 1
  %"$$res__41_1163" = load %TName_Bool*, %TName_Bool** %"$res__41", align 8
  %"$$BoolUtils.andb_157_call_1164" = call %TName_Bool* %"$$BoolUtils.andb_157_fptr_1161"(i8* %"$$BoolUtils.andb_157_envptr_1162", %TName_Bool* %"$$res__41_1163")
  store %TName_Bool* %"$$BoolUtils.andb_157_call_1164", %TName_Bool** %"$BoolUtils.andb_158", align 8
  %"$$BoolUtils.andb_158_1165" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_158", align 8
  store %TName_Bool* %"$$BoolUtils.andb_158_1165", %TName_Bool** %"$res_42", align 8
  %"$gasrem_1166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1167" = icmp ugt i64 1, %"$gasrem_1166"
  br i1 %"$gascmp_1167", label %"$out_of_gas_1168", label %"$have_gas_1169"

"$out_of_gas_1168":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1169"

"$have_gas_1169":                                 ; preds = %"$out_of_gas_1168", %"$have_gas_1153"
  %"$consume_1170" = sub i64 %"$gasrem_1166", 1
  store i64 %"$consume_1170", i64* @_gasrem, align 8
  %"$p_43" = alloca %Uint64, align 8
  %"$p3_1171" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1172" = extractvalue %Uint32 %"$p3_1171", 0
  %"$valueof_1173" = zext i32 %"$valueof_1172" to i64
  %"$gaslogof_1174" = uitofp i64 %"$valueof_1173" to double
  %"$gaslogof_1175" = fadd double %"$gaslogof_1174", 1.000000e+00
  %"$gaslogof_1176" = call double @llvm.log.f64(double %"$gaslogof_1175")
  %"$gaslogof_1177" = fptoui double %"$gaslogof_1176" to i64
  %"$gaslogof_1178" = add i64 %"$gaslogof_1177", 1
  %"$gasmul_1179" = mul i64 20, %"$gaslogof_1178"
  %"$gasrem_1180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1181" = icmp ugt i64 %"$gasmul_1179", %"$gasrem_1180"
  br i1 %"$gascmp_1181", label %"$out_of_gas_1182", label %"$have_gas_1183"

"$out_of_gas_1182":                               ; preds = %"$have_gas_1169"
  call void @_out_of_gas()
  br label %"$have_gas_1183"

"$have_gas_1183":                                 ; preds = %"$out_of_gas_1182", %"$have_gas_1169"
  %"$consume_1184" = sub i64 %"$gasrem_1180", %"$gasmul_1179"
  store i64 %"$consume_1184", i64* @_gasrem, align 8
  %"$t3_1185" = load %Uint64, %Uint64* %t3, align 8
  %"$p3_1186" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1187" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1185", %Uint32 %"$p3_1186")
  store %Uint64 %"$pow_call_1187", %Uint64* %"$p_43", align 8
  %"$gasrem_1188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1189" = icmp ugt i64 1, %"$gasrem_1188"
  br i1 %"$gascmp_1189", label %"$out_of_gas_1190", label %"$have_gas_1191"

"$out_of_gas_1190":                               ; preds = %"$have_gas_1183"
  call void @_out_of_gas()
  br label %"$have_gas_1191"

"$have_gas_1191":                                 ; preds = %"$out_of_gas_1190", %"$have_gas_1183"
  %"$consume_1192" = sub i64 %"$gasrem_1188", 1
  store i64 %"$consume_1192", i64* @_gasrem, align 8
  %"$res_46" = alloca %TName_Bool*, align 8
  %"$gasrem_1193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1194" = icmp ugt i64 1, %"$gasrem_1193"
  br i1 %"$gascmp_1194", label %"$out_of_gas_1195", label %"$have_gas_1196"

"$out_of_gas_1195":                               ; preds = %"$have_gas_1191"
  call void @_out_of_gas()
  br label %"$have_gas_1196"

"$have_gas_1196":                                 ; preds = %"$out_of_gas_1195", %"$have_gas_1191"
  %"$consume_1197" = sub i64 %"$gasrem_1193", 1
  store i64 %"$consume_1197", i64* @_gasrem, align 8
  %"$ans_44" = alloca %Uint64, align 8
  %"$gasrem_1198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1199" = icmp ugt i64 1, %"$gasrem_1198"
  br i1 %"$gascmp_1199", label %"$out_of_gas_1200", label %"$have_gas_1201"

"$out_of_gas_1200":                               ; preds = %"$have_gas_1196"
  call void @_out_of_gas()
  br label %"$have_gas_1201"

"$have_gas_1201":                                 ; preds = %"$out_of_gas_1200", %"$have_gas_1196"
  %"$consume_1202" = sub i64 %"$gasrem_1198", 1
  store i64 %"$consume_1202", i64* @_gasrem, align 8
  store %Uint64 { i64 100000000 }, %Uint64* %"$ans_44", align 8
  %"$gasrem_1203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1204" = icmp ugt i64 1, %"$gasrem_1203"
  br i1 %"$gascmp_1204", label %"$out_of_gas_1205", label %"$have_gas_1206"

"$out_of_gas_1205":                               ; preds = %"$have_gas_1201"
  call void @_out_of_gas()
  br label %"$have_gas_1206"

"$have_gas_1206":                                 ; preds = %"$out_of_gas_1205", %"$have_gas_1201"
  %"$consume_1207" = sub i64 %"$gasrem_1203", 1
  store i64 %"$consume_1207", i64* @_gasrem, align 8
  %"$res__45" = alloca %TName_Bool*, align 8
  %"$gasrem_1208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1209" = icmp ugt i64 4, %"$gasrem_1208"
  br i1 %"$gascmp_1209", label %"$out_of_gas_1210", label %"$have_gas_1211"

"$out_of_gas_1210":                               ; preds = %"$have_gas_1206"
  call void @_out_of_gas()
  br label %"$have_gas_1211"

"$have_gas_1211":                                 ; preds = %"$out_of_gas_1210", %"$have_gas_1206"
  %"$consume_1212" = sub i64 %"$gasrem_1208", 4
  store i64 %"$consume_1212", i64* @_gasrem, align 8
  %"$execptr_load_1213" = load i8*, i8** @_execptr, align 8
  %"$$p_43_1214" = load %Uint64, %Uint64* %"$p_43", align 8
  %"$$ans_44_1215" = load %Uint64, %Uint64* %"$ans_44", align 8
  %"$eq_call_1216" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1213", %Uint64 %"$$p_43_1214", %Uint64 %"$$ans_44_1215")
  store %TName_Bool* %"$eq_call_1216", %TName_Bool** %"$res__45", align 8
  %"$gasrem_1218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1219" = icmp ugt i64 1, %"$gasrem_1218"
  br i1 %"$gascmp_1219", label %"$out_of_gas_1220", label %"$have_gas_1221"

"$out_of_gas_1220":                               ; preds = %"$have_gas_1211"
  call void @_out_of_gas()
  br label %"$have_gas_1221"

"$have_gas_1221":                                 ; preds = %"$out_of_gas_1220", %"$have_gas_1211"
  %"$consume_1222" = sub i64 %"$gasrem_1218", 1
  store i64 %"$consume_1222", i64* @_gasrem, align 8
  %"$BoolUtils.andb_159" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1223" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1224" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1223", 0
  %"$BoolUtils.andb_envptr_1225" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1223", 1
  %"$$res_42_1226" = load %TName_Bool*, %TName_Bool** %"$res_42", align 8
  %"$BoolUtils.andb_call_1227" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1224"(i8* %"$BoolUtils.andb_envptr_1225", %TName_Bool* %"$$res_42_1226")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1227", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$BoolUtils.andb_160" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_159_1228" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$$BoolUtils.andb_159_fptr_1229" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1228", 0
  %"$$BoolUtils.andb_159_envptr_1230" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1228", 1
  %"$$res__45_1231" = load %TName_Bool*, %TName_Bool** %"$res__45", align 8
  %"$$BoolUtils.andb_159_call_1232" = call %TName_Bool* %"$$BoolUtils.andb_159_fptr_1229"(i8* %"$$BoolUtils.andb_159_envptr_1230", %TName_Bool* %"$$res__45_1231")
  store %TName_Bool* %"$$BoolUtils.andb_159_call_1232", %TName_Bool** %"$BoolUtils.andb_160", align 8
  %"$$BoolUtils.andb_160_1233" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_160", align 8
  store %TName_Bool* %"$$BoolUtils.andb_160_1233", %TName_Bool** %"$res_46", align 8
  %"$gasrem_1234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1235" = icmp ugt i64 1, %"$gasrem_1234"
  br i1 %"$gascmp_1235", label %"$out_of_gas_1236", label %"$have_gas_1237"

"$out_of_gas_1236":                               ; preds = %"$have_gas_1221"
  call void @_out_of_gas()
  br label %"$have_gas_1237"

"$have_gas_1237":                                 ; preds = %"$out_of_gas_1236", %"$have_gas_1221"
  %"$consume_1238" = sub i64 %"$gasrem_1234", 1
  store i64 %"$consume_1238", i64* @_gasrem, align 8
  %"$p_47" = alloca %Int64, align 8
  %"$p1_1239" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1240" = extractvalue %Uint32 %"$p1_1239", 0
  %"$valueof_1241" = zext i32 %"$valueof_1240" to i64
  %"$gaslogof_1242" = uitofp i64 %"$valueof_1241" to double
  %"$gaslogof_1243" = fadd double %"$gaslogof_1242", 1.000000e+00
  %"$gaslogof_1244" = call double @llvm.log.f64(double %"$gaslogof_1243")
  %"$gaslogof_1245" = fptoui double %"$gaslogof_1244" to i64
  %"$gaslogof_1246" = add i64 %"$gaslogof_1245", 1
  %"$gasmul_1247" = mul i64 20, %"$gaslogof_1246"
  %"$gasrem_1248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1249" = icmp ugt i64 %"$gasmul_1247", %"$gasrem_1248"
  br i1 %"$gascmp_1249", label %"$out_of_gas_1250", label %"$have_gas_1251"

"$out_of_gas_1250":                               ; preds = %"$have_gas_1237"
  call void @_out_of_gas()
  br label %"$have_gas_1251"

"$have_gas_1251":                                 ; preds = %"$out_of_gas_1250", %"$have_gas_1237"
  %"$consume_1252" = sub i64 %"$gasrem_1248", %"$gasmul_1247"
  store i64 %"$consume_1252", i64* @_gasrem, align 8
  %"$t4_1253" = load %Int64, %Int64* %t4, align 8
  %"$p1_1254" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1255" = call %Int64 @_pow_Int64(%Int64 %"$t4_1253", %Uint32 %"$p1_1254")
  store %Int64 %"$pow_call_1255", %Int64* %"$p_47", align 8
  %"$gasrem_1256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1257" = icmp ugt i64 1, %"$gasrem_1256"
  br i1 %"$gascmp_1257", label %"$out_of_gas_1258", label %"$have_gas_1259"

"$out_of_gas_1258":                               ; preds = %"$have_gas_1251"
  call void @_out_of_gas()
  br label %"$have_gas_1259"

"$have_gas_1259":                                 ; preds = %"$out_of_gas_1258", %"$have_gas_1251"
  %"$consume_1260" = sub i64 %"$gasrem_1256", 1
  store i64 %"$consume_1260", i64* @_gasrem, align 8
  %"$res_50" = alloca %TName_Bool*, align 8
  %"$gasrem_1261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1262" = icmp ugt i64 1, %"$gasrem_1261"
  br i1 %"$gascmp_1262", label %"$out_of_gas_1263", label %"$have_gas_1264"

"$out_of_gas_1263":                               ; preds = %"$have_gas_1259"
  call void @_out_of_gas()
  br label %"$have_gas_1264"

"$have_gas_1264":                                 ; preds = %"$out_of_gas_1263", %"$have_gas_1259"
  %"$consume_1265" = sub i64 %"$gasrem_1261", 1
  store i64 %"$consume_1265", i64* @_gasrem, align 8
  %"$ans_48" = alloca %Int64, align 8
  %"$gasrem_1266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1267" = icmp ugt i64 1, %"$gasrem_1266"
  br i1 %"$gascmp_1267", label %"$out_of_gas_1268", label %"$have_gas_1269"

"$out_of_gas_1268":                               ; preds = %"$have_gas_1264"
  call void @_out_of_gas()
  br label %"$have_gas_1269"

"$have_gas_1269":                                 ; preds = %"$out_of_gas_1268", %"$have_gas_1264"
  %"$consume_1270" = sub i64 %"$gasrem_1266", 1
  store i64 %"$consume_1270", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %"$ans_48", align 8
  %"$gasrem_1271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1272" = icmp ugt i64 1, %"$gasrem_1271"
  br i1 %"$gascmp_1272", label %"$out_of_gas_1273", label %"$have_gas_1274"

"$out_of_gas_1273":                               ; preds = %"$have_gas_1269"
  call void @_out_of_gas()
  br label %"$have_gas_1274"

"$have_gas_1274":                                 ; preds = %"$out_of_gas_1273", %"$have_gas_1269"
  %"$consume_1275" = sub i64 %"$gasrem_1271", 1
  store i64 %"$consume_1275", i64* @_gasrem, align 8
  %"$res__49" = alloca %TName_Bool*, align 8
  %"$gasrem_1276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1277" = icmp ugt i64 4, %"$gasrem_1276"
  br i1 %"$gascmp_1277", label %"$out_of_gas_1278", label %"$have_gas_1279"

"$out_of_gas_1278":                               ; preds = %"$have_gas_1274"
  call void @_out_of_gas()
  br label %"$have_gas_1279"

"$have_gas_1279":                                 ; preds = %"$out_of_gas_1278", %"$have_gas_1274"
  %"$consume_1280" = sub i64 %"$gasrem_1276", 4
  store i64 %"$consume_1280", i64* @_gasrem, align 8
  %"$execptr_load_1281" = load i8*, i8** @_execptr, align 8
  %"$$p_47_1282" = load %Int64, %Int64* %"$p_47", align 8
  %"$$ans_48_1283" = load %Int64, %Int64* %"$ans_48", align 8
  %"$eq_call_1284" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1281", %Int64 %"$$p_47_1282", %Int64 %"$$ans_48_1283")
  store %TName_Bool* %"$eq_call_1284", %TName_Bool** %"$res__49", align 8
  %"$gasrem_1286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1287" = icmp ugt i64 1, %"$gasrem_1286"
  br i1 %"$gascmp_1287", label %"$out_of_gas_1288", label %"$have_gas_1289"

"$out_of_gas_1288":                               ; preds = %"$have_gas_1279"
  call void @_out_of_gas()
  br label %"$have_gas_1289"

"$have_gas_1289":                                 ; preds = %"$out_of_gas_1288", %"$have_gas_1279"
  %"$consume_1290" = sub i64 %"$gasrem_1286", 1
  store i64 %"$consume_1290", i64* @_gasrem, align 8
  %"$BoolUtils.andb_161" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1291" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1292" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1291", 0
  %"$BoolUtils.andb_envptr_1293" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1291", 1
  %"$$res_46_1294" = load %TName_Bool*, %TName_Bool** %"$res_46", align 8
  %"$BoolUtils.andb_call_1295" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1292"(i8* %"$BoolUtils.andb_envptr_1293", %TName_Bool* %"$$res_46_1294")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1295", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$BoolUtils.andb_162" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_161_1296" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$$BoolUtils.andb_161_fptr_1297" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1296", 0
  %"$$BoolUtils.andb_161_envptr_1298" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1296", 1
  %"$$res__49_1299" = load %TName_Bool*, %TName_Bool** %"$res__49", align 8
  %"$$BoolUtils.andb_161_call_1300" = call %TName_Bool* %"$$BoolUtils.andb_161_fptr_1297"(i8* %"$$BoolUtils.andb_161_envptr_1298", %TName_Bool* %"$$res__49_1299")
  store %TName_Bool* %"$$BoolUtils.andb_161_call_1300", %TName_Bool** %"$BoolUtils.andb_162", align 8
  %"$$BoolUtils.andb_162_1301" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_162", align 8
  store %TName_Bool* %"$$BoolUtils.andb_162_1301", %TName_Bool** %"$res_50", align 8
  %"$gasrem_1302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1303" = icmp ugt i64 1, %"$gasrem_1302"
  br i1 %"$gascmp_1303", label %"$out_of_gas_1304", label %"$have_gas_1305"

"$out_of_gas_1304":                               ; preds = %"$have_gas_1289"
  call void @_out_of_gas()
  br label %"$have_gas_1305"

"$have_gas_1305":                                 ; preds = %"$out_of_gas_1304", %"$have_gas_1289"
  %"$consume_1306" = sub i64 %"$gasrem_1302", 1
  store i64 %"$consume_1306", i64* @_gasrem, align 8
  %"$p_51" = alloca %Int64, align 8
  %"$p2_1307" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1308" = extractvalue %Uint32 %"$p2_1307", 0
  %"$valueof_1309" = zext i32 %"$valueof_1308" to i64
  %"$gaslogof_1310" = uitofp i64 %"$valueof_1309" to double
  %"$gaslogof_1311" = fadd double %"$gaslogof_1310", 1.000000e+00
  %"$gaslogof_1312" = call double @llvm.log.f64(double %"$gaslogof_1311")
  %"$gaslogof_1313" = fptoui double %"$gaslogof_1312" to i64
  %"$gaslogof_1314" = add i64 %"$gaslogof_1313", 1
  %"$gasmul_1315" = mul i64 20, %"$gaslogof_1314"
  %"$gasrem_1316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1317" = icmp ugt i64 %"$gasmul_1315", %"$gasrem_1316"
  br i1 %"$gascmp_1317", label %"$out_of_gas_1318", label %"$have_gas_1319"

"$out_of_gas_1318":                               ; preds = %"$have_gas_1305"
  call void @_out_of_gas()
  br label %"$have_gas_1319"

"$have_gas_1319":                                 ; preds = %"$out_of_gas_1318", %"$have_gas_1305"
  %"$consume_1320" = sub i64 %"$gasrem_1316", %"$gasmul_1315"
  store i64 %"$consume_1320", i64* @_gasrem, align 8
  %"$t4_1321" = load %Int64, %Int64* %t4, align 8
  %"$p2_1322" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1323" = call %Int64 @_pow_Int64(%Int64 %"$t4_1321", %Uint32 %"$p2_1322")
  store %Int64 %"$pow_call_1323", %Int64* %"$p_51", align 8
  %"$gasrem_1324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1325" = icmp ugt i64 1, %"$gasrem_1324"
  br i1 %"$gascmp_1325", label %"$out_of_gas_1326", label %"$have_gas_1327"

"$out_of_gas_1326":                               ; preds = %"$have_gas_1319"
  call void @_out_of_gas()
  br label %"$have_gas_1327"

"$have_gas_1327":                                 ; preds = %"$out_of_gas_1326", %"$have_gas_1319"
  %"$consume_1328" = sub i64 %"$gasrem_1324", 1
  store i64 %"$consume_1328", i64* @_gasrem, align 8
  %"$res_54" = alloca %TName_Bool*, align 8
  %"$gasrem_1329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1330" = icmp ugt i64 1, %"$gasrem_1329"
  br i1 %"$gascmp_1330", label %"$out_of_gas_1331", label %"$have_gas_1332"

"$out_of_gas_1331":                               ; preds = %"$have_gas_1327"
  call void @_out_of_gas()
  br label %"$have_gas_1332"

"$have_gas_1332":                                 ; preds = %"$out_of_gas_1331", %"$have_gas_1327"
  %"$consume_1333" = sub i64 %"$gasrem_1329", 1
  store i64 %"$consume_1333", i64* @_gasrem, align 8
  %"$ans_52" = alloca %Int64, align 8
  %"$gasrem_1334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1335" = icmp ugt i64 1, %"$gasrem_1334"
  br i1 %"$gascmp_1335", label %"$out_of_gas_1336", label %"$have_gas_1337"

"$out_of_gas_1336":                               ; preds = %"$have_gas_1332"
  call void @_out_of_gas()
  br label %"$have_gas_1337"

"$have_gas_1337":                                 ; preds = %"$out_of_gas_1336", %"$have_gas_1332"
  %"$consume_1338" = sub i64 %"$gasrem_1334", 1
  store i64 %"$consume_1338", i64* @_gasrem, align 8
  store %Int64 { i64 -101 }, %Int64* %"$ans_52", align 8
  %"$gasrem_1339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1340" = icmp ugt i64 1, %"$gasrem_1339"
  br i1 %"$gascmp_1340", label %"$out_of_gas_1341", label %"$have_gas_1342"

"$out_of_gas_1341":                               ; preds = %"$have_gas_1337"
  call void @_out_of_gas()
  br label %"$have_gas_1342"

"$have_gas_1342":                                 ; preds = %"$out_of_gas_1341", %"$have_gas_1337"
  %"$consume_1343" = sub i64 %"$gasrem_1339", 1
  store i64 %"$consume_1343", i64* @_gasrem, align 8
  %"$res__53" = alloca %TName_Bool*, align 8
  %"$gasrem_1344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1345" = icmp ugt i64 4, %"$gasrem_1344"
  br i1 %"$gascmp_1345", label %"$out_of_gas_1346", label %"$have_gas_1347"

"$out_of_gas_1346":                               ; preds = %"$have_gas_1342"
  call void @_out_of_gas()
  br label %"$have_gas_1347"

"$have_gas_1347":                                 ; preds = %"$out_of_gas_1346", %"$have_gas_1342"
  %"$consume_1348" = sub i64 %"$gasrem_1344", 4
  store i64 %"$consume_1348", i64* @_gasrem, align 8
  %"$execptr_load_1349" = load i8*, i8** @_execptr, align 8
  %"$$p_51_1350" = load %Int64, %Int64* %"$p_51", align 8
  %"$$ans_52_1351" = load %Int64, %Int64* %"$ans_52", align 8
  %"$eq_call_1352" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1349", %Int64 %"$$p_51_1350", %Int64 %"$$ans_52_1351")
  store %TName_Bool* %"$eq_call_1352", %TName_Bool** %"$res__53", align 8
  %"$gasrem_1354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1355" = icmp ugt i64 1, %"$gasrem_1354"
  br i1 %"$gascmp_1355", label %"$out_of_gas_1356", label %"$have_gas_1357"

"$out_of_gas_1356":                               ; preds = %"$have_gas_1347"
  call void @_out_of_gas()
  br label %"$have_gas_1357"

"$have_gas_1357":                                 ; preds = %"$out_of_gas_1356", %"$have_gas_1347"
  %"$consume_1358" = sub i64 %"$gasrem_1354", 1
  store i64 %"$consume_1358", i64* @_gasrem, align 8
  %"$BoolUtils.andb_163" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1359" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1360" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1359", 0
  %"$BoolUtils.andb_envptr_1361" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1359", 1
  %"$$res_50_1362" = load %TName_Bool*, %TName_Bool** %"$res_50", align 8
  %"$BoolUtils.andb_call_1363" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1360"(i8* %"$BoolUtils.andb_envptr_1361", %TName_Bool* %"$$res_50_1362")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1363", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$BoolUtils.andb_164" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_163_1364" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$$BoolUtils.andb_163_fptr_1365" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1364", 0
  %"$$BoolUtils.andb_163_envptr_1366" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1364", 1
  %"$$res__53_1367" = load %TName_Bool*, %TName_Bool** %"$res__53", align 8
  %"$$BoolUtils.andb_163_call_1368" = call %TName_Bool* %"$$BoolUtils.andb_163_fptr_1365"(i8* %"$$BoolUtils.andb_163_envptr_1366", %TName_Bool* %"$$res__53_1367")
  store %TName_Bool* %"$$BoolUtils.andb_163_call_1368", %TName_Bool** %"$BoolUtils.andb_164", align 8
  %"$$BoolUtils.andb_164_1369" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_164", align 8
  store %TName_Bool* %"$$BoolUtils.andb_164_1369", %TName_Bool** %"$res_54", align 8
  %"$gasrem_1370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1371" = icmp ugt i64 1, %"$gasrem_1370"
  br i1 %"$gascmp_1371", label %"$out_of_gas_1372", label %"$have_gas_1373"

"$out_of_gas_1372":                               ; preds = %"$have_gas_1357"
  call void @_out_of_gas()
  br label %"$have_gas_1373"

"$have_gas_1373":                                 ; preds = %"$out_of_gas_1372", %"$have_gas_1357"
  %"$consume_1374" = sub i64 %"$gasrem_1370", 1
  store i64 %"$consume_1374", i64* @_gasrem, align 8
  %"$p_55" = alloca %Int64, align 8
  %"$p3_1375" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1376" = extractvalue %Uint32 %"$p3_1375", 0
  %"$valueof_1377" = zext i32 %"$valueof_1376" to i64
  %"$gaslogof_1378" = uitofp i64 %"$valueof_1377" to double
  %"$gaslogof_1379" = fadd double %"$gaslogof_1378", 1.000000e+00
  %"$gaslogof_1380" = call double @llvm.log.f64(double %"$gaslogof_1379")
  %"$gaslogof_1381" = fptoui double %"$gaslogof_1380" to i64
  %"$gaslogof_1382" = add i64 %"$gaslogof_1381", 1
  %"$gasmul_1383" = mul i64 20, %"$gaslogof_1382"
  %"$gasrem_1384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1385" = icmp ugt i64 %"$gasmul_1383", %"$gasrem_1384"
  br i1 %"$gascmp_1385", label %"$out_of_gas_1386", label %"$have_gas_1387"

"$out_of_gas_1386":                               ; preds = %"$have_gas_1373"
  call void @_out_of_gas()
  br label %"$have_gas_1387"

"$have_gas_1387":                                 ; preds = %"$out_of_gas_1386", %"$have_gas_1373"
  %"$consume_1388" = sub i64 %"$gasrem_1384", %"$gasmul_1383"
  store i64 %"$consume_1388", i64* @_gasrem, align 8
  %"$t4_1389" = load %Int64, %Int64* %t4, align 8
  %"$p3_1390" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1391" = call %Int64 @_pow_Int64(%Int64 %"$t4_1389", %Uint32 %"$p3_1390")
  store %Int64 %"$pow_call_1391", %Int64* %"$p_55", align 8
  %"$gasrem_1392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1393" = icmp ugt i64 1, %"$gasrem_1392"
  br i1 %"$gascmp_1393", label %"$out_of_gas_1394", label %"$have_gas_1395"

"$out_of_gas_1394":                               ; preds = %"$have_gas_1387"
  call void @_out_of_gas()
  br label %"$have_gas_1395"

"$have_gas_1395":                                 ; preds = %"$out_of_gas_1394", %"$have_gas_1387"
  %"$consume_1396" = sub i64 %"$gasrem_1392", 1
  store i64 %"$consume_1396", i64* @_gasrem, align 8
  %"$res_58" = alloca %TName_Bool*, align 8
  %"$gasrem_1397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1398" = icmp ugt i64 1, %"$gasrem_1397"
  br i1 %"$gascmp_1398", label %"$out_of_gas_1399", label %"$have_gas_1400"

"$out_of_gas_1399":                               ; preds = %"$have_gas_1395"
  call void @_out_of_gas()
  br label %"$have_gas_1400"

"$have_gas_1400":                                 ; preds = %"$out_of_gas_1399", %"$have_gas_1395"
  %"$consume_1401" = sub i64 %"$gasrem_1397", 1
  store i64 %"$consume_1401", i64* @_gasrem, align 8
  %"$ans_56" = alloca %Int64, align 8
  %"$gasrem_1402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1403" = icmp ugt i64 1, %"$gasrem_1402"
  br i1 %"$gascmp_1403", label %"$out_of_gas_1404", label %"$have_gas_1405"

"$out_of_gas_1404":                               ; preds = %"$have_gas_1400"
  call void @_out_of_gas()
  br label %"$have_gas_1405"

"$have_gas_1405":                                 ; preds = %"$out_of_gas_1404", %"$have_gas_1400"
  %"$consume_1406" = sub i64 %"$gasrem_1402", 1
  store i64 %"$consume_1406", i64* @_gasrem, align 8
  store %Int64 { i64 104060401 }, %Int64* %"$ans_56", align 8
  %"$gasrem_1407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1408" = icmp ugt i64 1, %"$gasrem_1407"
  br i1 %"$gascmp_1408", label %"$out_of_gas_1409", label %"$have_gas_1410"

"$out_of_gas_1409":                               ; preds = %"$have_gas_1405"
  call void @_out_of_gas()
  br label %"$have_gas_1410"

"$have_gas_1410":                                 ; preds = %"$out_of_gas_1409", %"$have_gas_1405"
  %"$consume_1411" = sub i64 %"$gasrem_1407", 1
  store i64 %"$consume_1411", i64* @_gasrem, align 8
  %"$res__57" = alloca %TName_Bool*, align 8
  %"$gasrem_1412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1413" = icmp ugt i64 4, %"$gasrem_1412"
  br i1 %"$gascmp_1413", label %"$out_of_gas_1414", label %"$have_gas_1415"

"$out_of_gas_1414":                               ; preds = %"$have_gas_1410"
  call void @_out_of_gas()
  br label %"$have_gas_1415"

"$have_gas_1415":                                 ; preds = %"$out_of_gas_1414", %"$have_gas_1410"
  %"$consume_1416" = sub i64 %"$gasrem_1412", 4
  store i64 %"$consume_1416", i64* @_gasrem, align 8
  %"$execptr_load_1417" = load i8*, i8** @_execptr, align 8
  %"$$p_55_1418" = load %Int64, %Int64* %"$p_55", align 8
  %"$$ans_56_1419" = load %Int64, %Int64* %"$ans_56", align 8
  %"$eq_call_1420" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1417", %Int64 %"$$p_55_1418", %Int64 %"$$ans_56_1419")
  store %TName_Bool* %"$eq_call_1420", %TName_Bool** %"$res__57", align 8
  %"$gasrem_1422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1423" = icmp ugt i64 1, %"$gasrem_1422"
  br i1 %"$gascmp_1423", label %"$out_of_gas_1424", label %"$have_gas_1425"

"$out_of_gas_1424":                               ; preds = %"$have_gas_1415"
  call void @_out_of_gas()
  br label %"$have_gas_1425"

"$have_gas_1425":                                 ; preds = %"$out_of_gas_1424", %"$have_gas_1415"
  %"$consume_1426" = sub i64 %"$gasrem_1422", 1
  store i64 %"$consume_1426", i64* @_gasrem, align 8
  %"$BoolUtils.andb_165" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1427" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1428" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1427", 0
  %"$BoolUtils.andb_envptr_1429" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1427", 1
  %"$$res_54_1430" = load %TName_Bool*, %TName_Bool** %"$res_54", align 8
  %"$BoolUtils.andb_call_1431" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1428"(i8* %"$BoolUtils.andb_envptr_1429", %TName_Bool* %"$$res_54_1430")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1431", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$BoolUtils.andb_166" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_165_1432" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$$BoolUtils.andb_165_fptr_1433" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1432", 0
  %"$$BoolUtils.andb_165_envptr_1434" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1432", 1
  %"$$res__57_1435" = load %TName_Bool*, %TName_Bool** %"$res__57", align 8
  %"$$BoolUtils.andb_165_call_1436" = call %TName_Bool* %"$$BoolUtils.andb_165_fptr_1433"(i8* %"$$BoolUtils.andb_165_envptr_1434", %TName_Bool* %"$$res__57_1435")
  store %TName_Bool* %"$$BoolUtils.andb_165_call_1436", %TName_Bool** %"$BoolUtils.andb_166", align 8
  %"$$BoolUtils.andb_166_1437" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_166", align 8
  store %TName_Bool* %"$$BoolUtils.andb_166_1437", %TName_Bool** %"$res_58", align 8
  %"$gasrem_1438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1439" = icmp ugt i64 1, %"$gasrem_1438"
  br i1 %"$gascmp_1439", label %"$out_of_gas_1440", label %"$have_gas_1441"

"$out_of_gas_1440":                               ; preds = %"$have_gas_1425"
  call void @_out_of_gas()
  br label %"$have_gas_1441"

"$have_gas_1441":                                 ; preds = %"$out_of_gas_1440", %"$have_gas_1425"
  %"$consume_1442" = sub i64 %"$gasrem_1438", 1
  store i64 %"$consume_1442", i64* @_gasrem, align 8
  %"$p_59" = alloca %Uint128, align 8
  %"$p1_1443" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1444" = extractvalue %Uint32 %"$p1_1443", 0
  %"$valueof_1445" = zext i32 %"$valueof_1444" to i64
  %"$gaslogof_1446" = uitofp i64 %"$valueof_1445" to double
  %"$gaslogof_1447" = fadd double %"$gaslogof_1446", 1.000000e+00
  %"$gaslogof_1448" = call double @llvm.log.f64(double %"$gaslogof_1447")
  %"$gaslogof_1449" = fptoui double %"$gaslogof_1448" to i64
  %"$gaslogof_1450" = add i64 %"$gaslogof_1449", 1
  %"$gasmul_1451" = mul i64 20, %"$gaslogof_1450"
  %"$gasmul_1452" = mul i64 %"$gasmul_1451", 2
  %"$gasrem_1453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1454" = icmp ugt i64 %"$gasmul_1452", %"$gasrem_1453"
  br i1 %"$gascmp_1454", label %"$out_of_gas_1455", label %"$have_gas_1456"

"$out_of_gas_1455":                               ; preds = %"$have_gas_1441"
  call void @_out_of_gas()
  br label %"$have_gas_1456"

"$have_gas_1456":                                 ; preds = %"$out_of_gas_1455", %"$have_gas_1441"
  %"$consume_1457" = sub i64 %"$gasrem_1453", %"$gasmul_1452"
  store i64 %"$consume_1457", i64* @_gasrem, align 8
  %"$t5_1458" = load %Uint128, %Uint128* %t5, align 8
  %"$p1_1459" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1460" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1458", %Uint32 %"$p1_1459")
  store %Uint128 %"$pow_call_1460", %Uint128* %"$p_59", align 8
  %"$gasrem_1461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1462" = icmp ugt i64 1, %"$gasrem_1461"
  br i1 %"$gascmp_1462", label %"$out_of_gas_1463", label %"$have_gas_1464"

"$out_of_gas_1463":                               ; preds = %"$have_gas_1456"
  call void @_out_of_gas()
  br label %"$have_gas_1464"

"$have_gas_1464":                                 ; preds = %"$out_of_gas_1463", %"$have_gas_1456"
  %"$consume_1465" = sub i64 %"$gasrem_1461", 1
  store i64 %"$consume_1465", i64* @_gasrem, align 8
  %"$res_62" = alloca %TName_Bool*, align 8
  %"$gasrem_1466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1467" = icmp ugt i64 1, %"$gasrem_1466"
  br i1 %"$gascmp_1467", label %"$out_of_gas_1468", label %"$have_gas_1469"

"$out_of_gas_1468":                               ; preds = %"$have_gas_1464"
  call void @_out_of_gas()
  br label %"$have_gas_1469"

"$have_gas_1469":                                 ; preds = %"$out_of_gas_1468", %"$have_gas_1464"
  %"$consume_1470" = sub i64 %"$gasrem_1466", 1
  store i64 %"$consume_1470", i64* @_gasrem, align 8
  %"$ans_60" = alloca %Uint128, align 8
  %"$gasrem_1471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1472" = icmp ugt i64 1, %"$gasrem_1471"
  br i1 %"$gascmp_1472", label %"$out_of_gas_1473", label %"$have_gas_1474"

"$out_of_gas_1473":                               ; preds = %"$have_gas_1469"
  call void @_out_of_gas()
  br label %"$have_gas_1474"

"$have_gas_1474":                                 ; preds = %"$out_of_gas_1473", %"$have_gas_1469"
  %"$consume_1475" = sub i64 %"$gasrem_1471", 1
  store i64 %"$consume_1475", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %"$ans_60", align 8
  %"$gasrem_1476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1477" = icmp ugt i64 1, %"$gasrem_1476"
  br i1 %"$gascmp_1477", label %"$out_of_gas_1478", label %"$have_gas_1479"

"$out_of_gas_1478":                               ; preds = %"$have_gas_1474"
  call void @_out_of_gas()
  br label %"$have_gas_1479"

"$have_gas_1479":                                 ; preds = %"$out_of_gas_1478", %"$have_gas_1474"
  %"$consume_1480" = sub i64 %"$gasrem_1476", 1
  store i64 %"$consume_1480", i64* @_gasrem, align 8
  %"$res__61" = alloca %TName_Bool*, align 8
  %"$gasrem_1482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1483" = icmp ugt i64 8, %"$gasrem_1482"
  br i1 %"$gascmp_1483", label %"$out_of_gas_1484", label %"$have_gas_1485"

"$out_of_gas_1484":                               ; preds = %"$have_gas_1479"
  call void @_out_of_gas()
  br label %"$have_gas_1485"

"$have_gas_1485":                                 ; preds = %"$out_of_gas_1484", %"$have_gas_1479"
  %"$consume_1486" = sub i64 %"$gasrem_1482", 8
  store i64 %"$consume_1486", i64* @_gasrem, align 8
  %"$execptr_load_1487" = load i8*, i8** @_execptr, align 8
  %"$$p_59_1488" = load %Uint128, %Uint128* %"$p_59", align 8
  %"$$ans_60_1489" = load %Uint128, %Uint128* %"$ans_60", align 8
  %"$eq_call_1490" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1487", %Uint128 %"$$p_59_1488", %Uint128 %"$$ans_60_1489")
  store %TName_Bool* %"$eq_call_1490", %TName_Bool** %"$res__61", align 8
  %"$gasrem_1492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1493" = icmp ugt i64 1, %"$gasrem_1492"
  br i1 %"$gascmp_1493", label %"$out_of_gas_1494", label %"$have_gas_1495"

"$out_of_gas_1494":                               ; preds = %"$have_gas_1485"
  call void @_out_of_gas()
  br label %"$have_gas_1495"

"$have_gas_1495":                                 ; preds = %"$out_of_gas_1494", %"$have_gas_1485"
  %"$consume_1496" = sub i64 %"$gasrem_1492", 1
  store i64 %"$consume_1496", i64* @_gasrem, align 8
  %"$BoolUtils.andb_167" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1497" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1498" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1497", 0
  %"$BoolUtils.andb_envptr_1499" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1497", 1
  %"$$res_58_1500" = load %TName_Bool*, %TName_Bool** %"$res_58", align 8
  %"$BoolUtils.andb_call_1501" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1498"(i8* %"$BoolUtils.andb_envptr_1499", %TName_Bool* %"$$res_58_1500")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1501", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$BoolUtils.andb_168" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_167_1502" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$$BoolUtils.andb_167_fptr_1503" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1502", 0
  %"$$BoolUtils.andb_167_envptr_1504" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1502", 1
  %"$$res__61_1505" = load %TName_Bool*, %TName_Bool** %"$res__61", align 8
  %"$$BoolUtils.andb_167_call_1506" = call %TName_Bool* %"$$BoolUtils.andb_167_fptr_1503"(i8* %"$$BoolUtils.andb_167_envptr_1504", %TName_Bool* %"$$res__61_1505")
  store %TName_Bool* %"$$BoolUtils.andb_167_call_1506", %TName_Bool** %"$BoolUtils.andb_168", align 8
  %"$$BoolUtils.andb_168_1507" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_168", align 8
  store %TName_Bool* %"$$BoolUtils.andb_168_1507", %TName_Bool** %"$res_62", align 8
  %"$gasrem_1508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1509" = icmp ugt i64 1, %"$gasrem_1508"
  br i1 %"$gascmp_1509", label %"$out_of_gas_1510", label %"$have_gas_1511"

"$out_of_gas_1510":                               ; preds = %"$have_gas_1495"
  call void @_out_of_gas()
  br label %"$have_gas_1511"

"$have_gas_1511":                                 ; preds = %"$out_of_gas_1510", %"$have_gas_1495"
  %"$consume_1512" = sub i64 %"$gasrem_1508", 1
  store i64 %"$consume_1512", i64* @_gasrem, align 8
  %"$p_63" = alloca %Uint128, align 8
  %"$p2_1513" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1514" = extractvalue %Uint32 %"$p2_1513", 0
  %"$valueof_1515" = zext i32 %"$valueof_1514" to i64
  %"$gaslogof_1516" = uitofp i64 %"$valueof_1515" to double
  %"$gaslogof_1517" = fadd double %"$gaslogof_1516", 1.000000e+00
  %"$gaslogof_1518" = call double @llvm.log.f64(double %"$gaslogof_1517")
  %"$gaslogof_1519" = fptoui double %"$gaslogof_1518" to i64
  %"$gaslogof_1520" = add i64 %"$gaslogof_1519", 1
  %"$gasmul_1521" = mul i64 20, %"$gaslogof_1520"
  %"$gasmul_1522" = mul i64 %"$gasmul_1521", 2
  %"$gasrem_1523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1524" = icmp ugt i64 %"$gasmul_1522", %"$gasrem_1523"
  br i1 %"$gascmp_1524", label %"$out_of_gas_1525", label %"$have_gas_1526"

"$out_of_gas_1525":                               ; preds = %"$have_gas_1511"
  call void @_out_of_gas()
  br label %"$have_gas_1526"

"$have_gas_1526":                                 ; preds = %"$out_of_gas_1525", %"$have_gas_1511"
  %"$consume_1527" = sub i64 %"$gasrem_1523", %"$gasmul_1522"
  store i64 %"$consume_1527", i64* @_gasrem, align 8
  %"$t5_1528" = load %Uint128, %Uint128* %t5, align 8
  %"$p2_1529" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1530" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1528", %Uint32 %"$p2_1529")
  store %Uint128 %"$pow_call_1530", %Uint128* %"$p_63", align 8
  %"$gasrem_1531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1532" = icmp ugt i64 1, %"$gasrem_1531"
  br i1 %"$gascmp_1532", label %"$out_of_gas_1533", label %"$have_gas_1534"

"$out_of_gas_1533":                               ; preds = %"$have_gas_1526"
  call void @_out_of_gas()
  br label %"$have_gas_1534"

"$have_gas_1534":                                 ; preds = %"$out_of_gas_1533", %"$have_gas_1526"
  %"$consume_1535" = sub i64 %"$gasrem_1531", 1
  store i64 %"$consume_1535", i64* @_gasrem, align 8
  %"$res_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1537" = icmp ugt i64 1, %"$gasrem_1536"
  br i1 %"$gascmp_1537", label %"$out_of_gas_1538", label %"$have_gas_1539"

"$out_of_gas_1538":                               ; preds = %"$have_gas_1534"
  call void @_out_of_gas()
  br label %"$have_gas_1539"

"$have_gas_1539":                                 ; preds = %"$out_of_gas_1538", %"$have_gas_1534"
  %"$consume_1540" = sub i64 %"$gasrem_1536", 1
  store i64 %"$consume_1540", i64* @_gasrem, align 8
  %"$ans_64" = alloca %Uint128, align 8
  %"$gasrem_1541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1542" = icmp ugt i64 1, %"$gasrem_1541"
  br i1 %"$gascmp_1542", label %"$out_of_gas_1543", label %"$have_gas_1544"

"$out_of_gas_1543":                               ; preds = %"$have_gas_1539"
  call void @_out_of_gas()
  br label %"$have_gas_1544"

"$have_gas_1544":                                 ; preds = %"$out_of_gas_1543", %"$have_gas_1539"
  %"$consume_1545" = sub i64 %"$gasrem_1541", 1
  store i64 %"$consume_1545", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %"$ans_64", align 8
  %"$gasrem_1546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1547" = icmp ugt i64 1, %"$gasrem_1546"
  br i1 %"$gascmp_1547", label %"$out_of_gas_1548", label %"$have_gas_1549"

"$out_of_gas_1548":                               ; preds = %"$have_gas_1544"
  call void @_out_of_gas()
  br label %"$have_gas_1549"

"$have_gas_1549":                                 ; preds = %"$out_of_gas_1548", %"$have_gas_1544"
  %"$consume_1550" = sub i64 %"$gasrem_1546", 1
  store i64 %"$consume_1550", i64* @_gasrem, align 8
  %"$res__65" = alloca %TName_Bool*, align 8
  %"$gasrem_1552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1553" = icmp ugt i64 8, %"$gasrem_1552"
  br i1 %"$gascmp_1553", label %"$out_of_gas_1554", label %"$have_gas_1555"

"$out_of_gas_1554":                               ; preds = %"$have_gas_1549"
  call void @_out_of_gas()
  br label %"$have_gas_1555"

"$have_gas_1555":                                 ; preds = %"$out_of_gas_1554", %"$have_gas_1549"
  %"$consume_1556" = sub i64 %"$gasrem_1552", 8
  store i64 %"$consume_1556", i64* @_gasrem, align 8
  %"$execptr_load_1557" = load i8*, i8** @_execptr, align 8
  %"$$p_63_1558" = load %Uint128, %Uint128* %"$p_63", align 8
  %"$$ans_64_1559" = load %Uint128, %Uint128* %"$ans_64", align 8
  %"$eq_call_1560" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1557", %Uint128 %"$$p_63_1558", %Uint128 %"$$ans_64_1559")
  store %TName_Bool* %"$eq_call_1560", %TName_Bool** %"$res__65", align 8
  %"$gasrem_1562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1563" = icmp ugt i64 1, %"$gasrem_1562"
  br i1 %"$gascmp_1563", label %"$out_of_gas_1564", label %"$have_gas_1565"

"$out_of_gas_1564":                               ; preds = %"$have_gas_1555"
  call void @_out_of_gas()
  br label %"$have_gas_1565"

"$have_gas_1565":                                 ; preds = %"$out_of_gas_1564", %"$have_gas_1555"
  %"$consume_1566" = sub i64 %"$gasrem_1562", 1
  store i64 %"$consume_1566", i64* @_gasrem, align 8
  %"$BoolUtils.andb_169" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1567" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1568" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1567", 0
  %"$BoolUtils.andb_envptr_1569" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1567", 1
  %"$$res_62_1570" = load %TName_Bool*, %TName_Bool** %"$res_62", align 8
  %"$BoolUtils.andb_call_1571" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1568"(i8* %"$BoolUtils.andb_envptr_1569", %TName_Bool* %"$$res_62_1570")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1571", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8
  %"$BoolUtils.andb_170" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_169_1572" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8
  %"$$BoolUtils.andb_169_fptr_1573" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1572", 0
  %"$$BoolUtils.andb_169_envptr_1574" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1572", 1
  %"$$res__65_1575" = load %TName_Bool*, %TName_Bool** %"$res__65", align 8
  %"$$BoolUtils.andb_169_call_1576" = call %TName_Bool* %"$$BoolUtils.andb_169_fptr_1573"(i8* %"$$BoolUtils.andb_169_envptr_1574", %TName_Bool* %"$$res__65_1575")
  store %TName_Bool* %"$$BoolUtils.andb_169_call_1576", %TName_Bool** %"$BoolUtils.andb_170", align 8
  %"$$BoolUtils.andb_170_1577" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_170", align 8
  store %TName_Bool* %"$$BoolUtils.andb_170_1577", %TName_Bool** %"$res_66", align 8
  %"$gasrem_1578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1579" = icmp ugt i64 1, %"$gasrem_1578"
  br i1 %"$gascmp_1579", label %"$out_of_gas_1580", label %"$have_gas_1581"

"$out_of_gas_1580":                               ; preds = %"$have_gas_1565"
  call void @_out_of_gas()
  br label %"$have_gas_1581"

"$have_gas_1581":                                 ; preds = %"$out_of_gas_1580", %"$have_gas_1565"
  %"$consume_1582" = sub i64 %"$gasrem_1578", 1
  store i64 %"$consume_1582", i64* @_gasrem, align 8
  %"$p_67" = alloca %Uint128, align 8
  %"$p3_1583" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1584" = extractvalue %Uint32 %"$p3_1583", 0
  %"$valueof_1585" = zext i32 %"$valueof_1584" to i64
  %"$gaslogof_1586" = uitofp i64 %"$valueof_1585" to double
  %"$gaslogof_1587" = fadd double %"$gaslogof_1586", 1.000000e+00
  %"$gaslogof_1588" = call double @llvm.log.f64(double %"$gaslogof_1587")
  %"$gaslogof_1589" = fptoui double %"$gaslogof_1588" to i64
  %"$gaslogof_1590" = add i64 %"$gaslogof_1589", 1
  %"$gasmul_1591" = mul i64 20, %"$gaslogof_1590"
  %"$gasmul_1592" = mul i64 %"$gasmul_1591", 2
  %"$gasrem_1593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1594" = icmp ugt i64 %"$gasmul_1592", %"$gasrem_1593"
  br i1 %"$gascmp_1594", label %"$out_of_gas_1595", label %"$have_gas_1596"

"$out_of_gas_1595":                               ; preds = %"$have_gas_1581"
  call void @_out_of_gas()
  br label %"$have_gas_1596"

"$have_gas_1596":                                 ; preds = %"$out_of_gas_1595", %"$have_gas_1581"
  %"$consume_1597" = sub i64 %"$gasrem_1593", %"$gasmul_1592"
  store i64 %"$consume_1597", i64* @_gasrem, align 8
  %"$t5_1598" = load %Uint128, %Uint128* %t5, align 8
  %"$p3_1599" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1600" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1598", %Uint32 %"$p3_1599")
  store %Uint128 %"$pow_call_1600", %Uint128* %"$p_67", align 8
  %"$gasrem_1601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1602" = icmp ugt i64 1, %"$gasrem_1601"
  br i1 %"$gascmp_1602", label %"$out_of_gas_1603", label %"$have_gas_1604"

"$out_of_gas_1603":                               ; preds = %"$have_gas_1596"
  call void @_out_of_gas()
  br label %"$have_gas_1604"

"$have_gas_1604":                                 ; preds = %"$out_of_gas_1603", %"$have_gas_1596"
  %"$consume_1605" = sub i64 %"$gasrem_1601", 1
  store i64 %"$consume_1605", i64* @_gasrem, align 8
  %"$res_70" = alloca %TName_Bool*, align 8
  %"$gasrem_1606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1607" = icmp ugt i64 1, %"$gasrem_1606"
  br i1 %"$gascmp_1607", label %"$out_of_gas_1608", label %"$have_gas_1609"

"$out_of_gas_1608":                               ; preds = %"$have_gas_1604"
  call void @_out_of_gas()
  br label %"$have_gas_1609"

"$have_gas_1609":                                 ; preds = %"$out_of_gas_1608", %"$have_gas_1604"
  %"$consume_1610" = sub i64 %"$gasrem_1606", 1
  store i64 %"$consume_1610", i64* @_gasrem, align 8
  %"$ans_68" = alloca %Uint128, align 8
  %"$gasrem_1611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1612" = icmp ugt i64 1, %"$gasrem_1611"
  br i1 %"$gascmp_1612", label %"$out_of_gas_1613", label %"$have_gas_1614"

"$out_of_gas_1613":                               ; preds = %"$have_gas_1609"
  call void @_out_of_gas()
  br label %"$have_gas_1614"

"$have_gas_1614":                                 ; preds = %"$out_of_gas_1613", %"$have_gas_1609"
  %"$consume_1615" = sub i64 %"$gasrem_1611", 1
  store i64 %"$consume_1615", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000 }, %Uint128* %"$ans_68", align 8
  %"$gasrem_1616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1617" = icmp ugt i64 1, %"$gasrem_1616"
  br i1 %"$gascmp_1617", label %"$out_of_gas_1618", label %"$have_gas_1619"

"$out_of_gas_1618":                               ; preds = %"$have_gas_1614"
  call void @_out_of_gas()
  br label %"$have_gas_1619"

"$have_gas_1619":                                 ; preds = %"$out_of_gas_1618", %"$have_gas_1614"
  %"$consume_1620" = sub i64 %"$gasrem_1616", 1
  store i64 %"$consume_1620", i64* @_gasrem, align 8
  %"$res__69" = alloca %TName_Bool*, align 8
  %"$gasrem_1622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1623" = icmp ugt i64 8, %"$gasrem_1622"
  br i1 %"$gascmp_1623", label %"$out_of_gas_1624", label %"$have_gas_1625"

"$out_of_gas_1624":                               ; preds = %"$have_gas_1619"
  call void @_out_of_gas()
  br label %"$have_gas_1625"

"$have_gas_1625":                                 ; preds = %"$out_of_gas_1624", %"$have_gas_1619"
  %"$consume_1626" = sub i64 %"$gasrem_1622", 8
  store i64 %"$consume_1626", i64* @_gasrem, align 8
  %"$execptr_load_1627" = load i8*, i8** @_execptr, align 8
  %"$$p_67_1628" = load %Uint128, %Uint128* %"$p_67", align 8
  %"$$ans_68_1629" = load %Uint128, %Uint128* %"$ans_68", align 8
  %"$eq_call_1630" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1627", %Uint128 %"$$p_67_1628", %Uint128 %"$$ans_68_1629")
  store %TName_Bool* %"$eq_call_1630", %TName_Bool** %"$res__69", align 8
  %"$gasrem_1632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1633" = icmp ugt i64 1, %"$gasrem_1632"
  br i1 %"$gascmp_1633", label %"$out_of_gas_1634", label %"$have_gas_1635"

"$out_of_gas_1634":                               ; preds = %"$have_gas_1625"
  call void @_out_of_gas()
  br label %"$have_gas_1635"

"$have_gas_1635":                                 ; preds = %"$out_of_gas_1634", %"$have_gas_1625"
  %"$consume_1636" = sub i64 %"$gasrem_1632", 1
  store i64 %"$consume_1636", i64* @_gasrem, align 8
  %"$BoolUtils.andb_171" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1637" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1638" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1637", 0
  %"$BoolUtils.andb_envptr_1639" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1637", 1
  %"$$res_66_1640" = load %TName_Bool*, %TName_Bool** %"$res_66", align 8
  %"$BoolUtils.andb_call_1641" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1638"(i8* %"$BoolUtils.andb_envptr_1639", %TName_Bool* %"$$res_66_1640")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1641", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8
  %"$BoolUtils.andb_172" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_171_1642" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8
  %"$$BoolUtils.andb_171_fptr_1643" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1642", 0
  %"$$BoolUtils.andb_171_envptr_1644" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1642", 1
  %"$$res__69_1645" = load %TName_Bool*, %TName_Bool** %"$res__69", align 8
  %"$$BoolUtils.andb_171_call_1646" = call %TName_Bool* %"$$BoolUtils.andb_171_fptr_1643"(i8* %"$$BoolUtils.andb_171_envptr_1644", %TName_Bool* %"$$res__69_1645")
  store %TName_Bool* %"$$BoolUtils.andb_171_call_1646", %TName_Bool** %"$BoolUtils.andb_172", align 8
  %"$$BoolUtils.andb_172_1647" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_172", align 8
  store %TName_Bool* %"$$BoolUtils.andb_172_1647", %TName_Bool** %"$res_70", align 8
  %"$gasrem_1648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1649" = icmp ugt i64 1, %"$gasrem_1648"
  br i1 %"$gascmp_1649", label %"$out_of_gas_1650", label %"$have_gas_1651"

"$out_of_gas_1650":                               ; preds = %"$have_gas_1635"
  call void @_out_of_gas()
  br label %"$have_gas_1651"

"$have_gas_1651":                                 ; preds = %"$out_of_gas_1650", %"$have_gas_1635"
  %"$consume_1652" = sub i64 %"$gasrem_1648", 1
  store i64 %"$consume_1652", i64* @_gasrem, align 8
  %"$p_71" = alloca %Uint128, align 8
  %"$p4_1653" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_1654" = extractvalue %Uint32 %"$p4_1653", 0
  %"$valueof_1655" = zext i32 %"$valueof_1654" to i64
  %"$gaslogof_1656" = uitofp i64 %"$valueof_1655" to double
  %"$gaslogof_1657" = fadd double %"$gaslogof_1656", 1.000000e+00
  %"$gaslogof_1658" = call double @llvm.log.f64(double %"$gaslogof_1657")
  %"$gaslogof_1659" = fptoui double %"$gaslogof_1658" to i64
  %"$gaslogof_1660" = add i64 %"$gaslogof_1659", 1
  %"$gasmul_1661" = mul i64 20, %"$gaslogof_1660"
  %"$gasmul_1662" = mul i64 %"$gasmul_1661", 2
  %"$gasrem_1663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1664" = icmp ugt i64 %"$gasmul_1662", %"$gasrem_1663"
  br i1 %"$gascmp_1664", label %"$out_of_gas_1665", label %"$have_gas_1666"

"$out_of_gas_1665":                               ; preds = %"$have_gas_1651"
  call void @_out_of_gas()
  br label %"$have_gas_1666"

"$have_gas_1666":                                 ; preds = %"$out_of_gas_1665", %"$have_gas_1651"
  %"$consume_1667" = sub i64 %"$gasrem_1663", %"$gasmul_1662"
  store i64 %"$consume_1667", i64* @_gasrem, align 8
  %"$t5_1668" = load %Uint128, %Uint128* %t5, align 8
  %"$p4_1669" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1670" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1668", %Uint32 %"$p4_1669")
  store %Uint128 %"$pow_call_1670", %Uint128* %"$p_71", align 8
  %"$gasrem_1671" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1672" = icmp ugt i64 1, %"$gasrem_1671"
  br i1 %"$gascmp_1672", label %"$out_of_gas_1673", label %"$have_gas_1674"

"$out_of_gas_1673":                               ; preds = %"$have_gas_1666"
  call void @_out_of_gas()
  br label %"$have_gas_1674"

"$have_gas_1674":                                 ; preds = %"$out_of_gas_1673", %"$have_gas_1666"
  %"$consume_1675" = sub i64 %"$gasrem_1671", 1
  store i64 %"$consume_1675", i64* @_gasrem, align 8
  %"$res_74" = alloca %TName_Bool*, align 8
  %"$gasrem_1676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1677" = icmp ugt i64 1, %"$gasrem_1676"
  br i1 %"$gascmp_1677", label %"$out_of_gas_1678", label %"$have_gas_1679"

"$out_of_gas_1678":                               ; preds = %"$have_gas_1674"
  call void @_out_of_gas()
  br label %"$have_gas_1679"

"$have_gas_1679":                                 ; preds = %"$out_of_gas_1678", %"$have_gas_1674"
  %"$consume_1680" = sub i64 %"$gasrem_1676", 1
  store i64 %"$consume_1680", i64* @_gasrem, align 8
  %"$ans_72" = alloca %Uint128, align 8
  %"$gasrem_1681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1682" = icmp ugt i64 1, %"$gasrem_1681"
  br i1 %"$gascmp_1682", label %"$out_of_gas_1683", label %"$have_gas_1684"

"$out_of_gas_1683":                               ; preds = %"$have_gas_1679"
  call void @_out_of_gas()
  br label %"$have_gas_1684"

"$have_gas_1684":                                 ; preds = %"$out_of_gas_1683", %"$have_gas_1679"
  %"$consume_1685" = sub i64 %"$gasrem_1681", 1
  store i64 %"$consume_1685", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000000000000000000000 }, %Uint128* %"$ans_72", align 8
  %"$gasrem_1686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1687" = icmp ugt i64 1, %"$gasrem_1686"
  br i1 %"$gascmp_1687", label %"$out_of_gas_1688", label %"$have_gas_1689"

"$out_of_gas_1688":                               ; preds = %"$have_gas_1684"
  call void @_out_of_gas()
  br label %"$have_gas_1689"

"$have_gas_1689":                                 ; preds = %"$out_of_gas_1688", %"$have_gas_1684"
  %"$consume_1690" = sub i64 %"$gasrem_1686", 1
  store i64 %"$consume_1690", i64* @_gasrem, align 8
  %"$res__73" = alloca %TName_Bool*, align 8
  %"$gasrem_1692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1693" = icmp ugt i64 8, %"$gasrem_1692"
  br i1 %"$gascmp_1693", label %"$out_of_gas_1694", label %"$have_gas_1695"

"$out_of_gas_1694":                               ; preds = %"$have_gas_1689"
  call void @_out_of_gas()
  br label %"$have_gas_1695"

"$have_gas_1695":                                 ; preds = %"$out_of_gas_1694", %"$have_gas_1689"
  %"$consume_1696" = sub i64 %"$gasrem_1692", 8
  store i64 %"$consume_1696", i64* @_gasrem, align 8
  %"$execptr_load_1697" = load i8*, i8** @_execptr, align 8
  %"$$p_71_1698" = load %Uint128, %Uint128* %"$p_71", align 8
  %"$$ans_72_1699" = load %Uint128, %Uint128* %"$ans_72", align 8
  %"$eq_call_1700" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1697", %Uint128 %"$$p_71_1698", %Uint128 %"$$ans_72_1699")
  store %TName_Bool* %"$eq_call_1700", %TName_Bool** %"$res__73", align 8
  %"$gasrem_1702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1703" = icmp ugt i64 1, %"$gasrem_1702"
  br i1 %"$gascmp_1703", label %"$out_of_gas_1704", label %"$have_gas_1705"

"$out_of_gas_1704":                               ; preds = %"$have_gas_1695"
  call void @_out_of_gas()
  br label %"$have_gas_1705"

"$have_gas_1705":                                 ; preds = %"$out_of_gas_1704", %"$have_gas_1695"
  %"$consume_1706" = sub i64 %"$gasrem_1702", 1
  store i64 %"$consume_1706", i64* @_gasrem, align 8
  %"$BoolUtils.andb_173" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1707" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1708" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1707", 0
  %"$BoolUtils.andb_envptr_1709" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1707", 1
  %"$$res_70_1710" = load %TName_Bool*, %TName_Bool** %"$res_70", align 8
  %"$BoolUtils.andb_call_1711" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1708"(i8* %"$BoolUtils.andb_envptr_1709", %TName_Bool* %"$$res_70_1710")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1711", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8
  %"$BoolUtils.andb_174" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_173_1712" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8
  %"$$BoolUtils.andb_173_fptr_1713" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1712", 0
  %"$$BoolUtils.andb_173_envptr_1714" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1712", 1
  %"$$res__73_1715" = load %TName_Bool*, %TName_Bool** %"$res__73", align 8
  %"$$BoolUtils.andb_173_call_1716" = call %TName_Bool* %"$$BoolUtils.andb_173_fptr_1713"(i8* %"$$BoolUtils.andb_173_envptr_1714", %TName_Bool* %"$$res__73_1715")
  store %TName_Bool* %"$$BoolUtils.andb_173_call_1716", %TName_Bool** %"$BoolUtils.andb_174", align 8
  %"$$BoolUtils.andb_174_1717" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_174", align 8
  store %TName_Bool* %"$$BoolUtils.andb_174_1717", %TName_Bool** %"$res_74", align 8
  %"$gasrem_1718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1719" = icmp ugt i64 1, %"$gasrem_1718"
  br i1 %"$gascmp_1719", label %"$out_of_gas_1720", label %"$have_gas_1721"

"$out_of_gas_1720":                               ; preds = %"$have_gas_1705"
  call void @_out_of_gas()
  br label %"$have_gas_1721"

"$have_gas_1721":                                 ; preds = %"$out_of_gas_1720", %"$have_gas_1705"
  %"$consume_1722" = sub i64 %"$gasrem_1718", 1
  store i64 %"$consume_1722", i64* @_gasrem, align 8
  %"$p_75" = alloca %Int128, align 8
  %"$p1_1723" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1724" = extractvalue %Uint32 %"$p1_1723", 0
  %"$valueof_1725" = zext i32 %"$valueof_1724" to i64
  %"$gaslogof_1726" = uitofp i64 %"$valueof_1725" to double
  %"$gaslogof_1727" = fadd double %"$gaslogof_1726", 1.000000e+00
  %"$gaslogof_1728" = call double @llvm.log.f64(double %"$gaslogof_1727")
  %"$gaslogof_1729" = fptoui double %"$gaslogof_1728" to i64
  %"$gaslogof_1730" = add i64 %"$gaslogof_1729", 1
  %"$gasmul_1731" = mul i64 20, %"$gaslogof_1730"
  %"$gasmul_1732" = mul i64 %"$gasmul_1731", 2
  %"$gasrem_1733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1734" = icmp ugt i64 %"$gasmul_1732", %"$gasrem_1733"
  br i1 %"$gascmp_1734", label %"$out_of_gas_1735", label %"$have_gas_1736"

"$out_of_gas_1735":                               ; preds = %"$have_gas_1721"
  call void @_out_of_gas()
  br label %"$have_gas_1736"

"$have_gas_1736":                                 ; preds = %"$out_of_gas_1735", %"$have_gas_1721"
  %"$consume_1737" = sub i64 %"$gasrem_1733", %"$gasmul_1732"
  store i64 %"$consume_1737", i64* @_gasrem, align 8
  %"$t6_1738" = load %Int128, %Int128* %t6, align 8
  %"$p1_1739" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1740" = call %Int128 @_pow_Int128(%Int128 %"$t6_1738", %Uint32 %"$p1_1739")
  store %Int128 %"$pow_call_1740", %Int128* %"$p_75", align 8
  %"$gasrem_1741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1742" = icmp ugt i64 1, %"$gasrem_1741"
  br i1 %"$gascmp_1742", label %"$out_of_gas_1743", label %"$have_gas_1744"

"$out_of_gas_1743":                               ; preds = %"$have_gas_1736"
  call void @_out_of_gas()
  br label %"$have_gas_1744"

"$have_gas_1744":                                 ; preds = %"$out_of_gas_1743", %"$have_gas_1736"
  %"$consume_1745" = sub i64 %"$gasrem_1741", 1
  store i64 %"$consume_1745", i64* @_gasrem, align 8
  %"$res_78" = alloca %TName_Bool*, align 8
  %"$gasrem_1746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1747" = icmp ugt i64 1, %"$gasrem_1746"
  br i1 %"$gascmp_1747", label %"$out_of_gas_1748", label %"$have_gas_1749"

"$out_of_gas_1748":                               ; preds = %"$have_gas_1744"
  call void @_out_of_gas()
  br label %"$have_gas_1749"

"$have_gas_1749":                                 ; preds = %"$out_of_gas_1748", %"$have_gas_1744"
  %"$consume_1750" = sub i64 %"$gasrem_1746", 1
  store i64 %"$consume_1750", i64* @_gasrem, align 8
  %"$ans_76" = alloca %Int128, align 8
  %"$gasrem_1751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1752" = icmp ugt i64 1, %"$gasrem_1751"
  br i1 %"$gascmp_1752", label %"$out_of_gas_1753", label %"$have_gas_1754"

"$out_of_gas_1753":                               ; preds = %"$have_gas_1749"
  call void @_out_of_gas()
  br label %"$have_gas_1754"

"$have_gas_1754":                                 ; preds = %"$out_of_gas_1753", %"$have_gas_1749"
  %"$consume_1755" = sub i64 %"$gasrem_1751", 1
  store i64 %"$consume_1755", i64* @_gasrem, align 8
  store %Int128 { i128 1 }, %Int128* %"$ans_76", align 8
  %"$gasrem_1756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1757" = icmp ugt i64 1, %"$gasrem_1756"
  br i1 %"$gascmp_1757", label %"$out_of_gas_1758", label %"$have_gas_1759"

"$out_of_gas_1758":                               ; preds = %"$have_gas_1754"
  call void @_out_of_gas()
  br label %"$have_gas_1759"

"$have_gas_1759":                                 ; preds = %"$out_of_gas_1758", %"$have_gas_1754"
  %"$consume_1760" = sub i64 %"$gasrem_1756", 1
  store i64 %"$consume_1760", i64* @_gasrem, align 8
  %"$res__77" = alloca %TName_Bool*, align 8
  %"$gasrem_1762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1763" = icmp ugt i64 8, %"$gasrem_1762"
  br i1 %"$gascmp_1763", label %"$out_of_gas_1764", label %"$have_gas_1765"

"$out_of_gas_1764":                               ; preds = %"$have_gas_1759"
  call void @_out_of_gas()
  br label %"$have_gas_1765"

"$have_gas_1765":                                 ; preds = %"$out_of_gas_1764", %"$have_gas_1759"
  %"$consume_1766" = sub i64 %"$gasrem_1762", 8
  store i64 %"$consume_1766", i64* @_gasrem, align 8
  %"$execptr_load_1767" = load i8*, i8** @_execptr, align 8
  %"$$p_75_1768" = load %Int128, %Int128* %"$p_75", align 8
  %"$$ans_76_1769" = load %Int128, %Int128* %"$ans_76", align 8
  %"$eq_call_1770" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1767", %Int128 %"$$p_75_1768", %Int128 %"$$ans_76_1769")
  store %TName_Bool* %"$eq_call_1770", %TName_Bool** %"$res__77", align 8
  %"$gasrem_1772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1773" = icmp ugt i64 1, %"$gasrem_1772"
  br i1 %"$gascmp_1773", label %"$out_of_gas_1774", label %"$have_gas_1775"

"$out_of_gas_1774":                               ; preds = %"$have_gas_1765"
  call void @_out_of_gas()
  br label %"$have_gas_1775"

"$have_gas_1775":                                 ; preds = %"$out_of_gas_1774", %"$have_gas_1765"
  %"$consume_1776" = sub i64 %"$gasrem_1772", 1
  store i64 %"$consume_1776", i64* @_gasrem, align 8
  %"$BoolUtils.andb_175" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1777" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1778" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1777", 0
  %"$BoolUtils.andb_envptr_1779" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1777", 1
  %"$$res_74_1780" = load %TName_Bool*, %TName_Bool** %"$res_74", align 8
  %"$BoolUtils.andb_call_1781" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1778"(i8* %"$BoolUtils.andb_envptr_1779", %TName_Bool* %"$$res_74_1780")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1781", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8
  %"$BoolUtils.andb_176" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_175_1782" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8
  %"$$BoolUtils.andb_175_fptr_1783" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1782", 0
  %"$$BoolUtils.andb_175_envptr_1784" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1782", 1
  %"$$res__77_1785" = load %TName_Bool*, %TName_Bool** %"$res__77", align 8
  %"$$BoolUtils.andb_175_call_1786" = call %TName_Bool* %"$$BoolUtils.andb_175_fptr_1783"(i8* %"$$BoolUtils.andb_175_envptr_1784", %TName_Bool* %"$$res__77_1785")
  store %TName_Bool* %"$$BoolUtils.andb_175_call_1786", %TName_Bool** %"$BoolUtils.andb_176", align 8
  %"$$BoolUtils.andb_176_1787" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_176", align 8
  store %TName_Bool* %"$$BoolUtils.andb_176_1787", %TName_Bool** %"$res_78", align 8
  %"$gasrem_1788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1789" = icmp ugt i64 1, %"$gasrem_1788"
  br i1 %"$gascmp_1789", label %"$out_of_gas_1790", label %"$have_gas_1791"

"$out_of_gas_1790":                               ; preds = %"$have_gas_1775"
  call void @_out_of_gas()
  br label %"$have_gas_1791"

"$have_gas_1791":                                 ; preds = %"$out_of_gas_1790", %"$have_gas_1775"
  %"$consume_1792" = sub i64 %"$gasrem_1788", 1
  store i64 %"$consume_1792", i64* @_gasrem, align 8
  %"$p_79" = alloca %Int128, align 8
  %"$p2_1793" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1794" = extractvalue %Uint32 %"$p2_1793", 0
  %"$valueof_1795" = zext i32 %"$valueof_1794" to i64
  %"$gaslogof_1796" = uitofp i64 %"$valueof_1795" to double
  %"$gaslogof_1797" = fadd double %"$gaslogof_1796", 1.000000e+00
  %"$gaslogof_1798" = call double @llvm.log.f64(double %"$gaslogof_1797")
  %"$gaslogof_1799" = fptoui double %"$gaslogof_1798" to i64
  %"$gaslogof_1800" = add i64 %"$gaslogof_1799", 1
  %"$gasmul_1801" = mul i64 20, %"$gaslogof_1800"
  %"$gasmul_1802" = mul i64 %"$gasmul_1801", 2
  %"$gasrem_1803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1804" = icmp ugt i64 %"$gasmul_1802", %"$gasrem_1803"
  br i1 %"$gascmp_1804", label %"$out_of_gas_1805", label %"$have_gas_1806"

"$out_of_gas_1805":                               ; preds = %"$have_gas_1791"
  call void @_out_of_gas()
  br label %"$have_gas_1806"

"$have_gas_1806":                                 ; preds = %"$out_of_gas_1805", %"$have_gas_1791"
  %"$consume_1807" = sub i64 %"$gasrem_1803", %"$gasmul_1802"
  store i64 %"$consume_1807", i64* @_gasrem, align 8
  %"$t6_1808" = load %Int128, %Int128* %t6, align 8
  %"$p2_1809" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1810" = call %Int128 @_pow_Int128(%Int128 %"$t6_1808", %Uint32 %"$p2_1809")
  store %Int128 %"$pow_call_1810", %Int128* %"$p_79", align 8
  %"$gasrem_1811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1812" = icmp ugt i64 1, %"$gasrem_1811"
  br i1 %"$gascmp_1812", label %"$out_of_gas_1813", label %"$have_gas_1814"

"$out_of_gas_1813":                               ; preds = %"$have_gas_1806"
  call void @_out_of_gas()
  br label %"$have_gas_1814"

"$have_gas_1814":                                 ; preds = %"$out_of_gas_1813", %"$have_gas_1806"
  %"$consume_1815" = sub i64 %"$gasrem_1811", 1
  store i64 %"$consume_1815", i64* @_gasrem, align 8
  %"$res_82" = alloca %TName_Bool*, align 8
  %"$gasrem_1816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1817" = icmp ugt i64 1, %"$gasrem_1816"
  br i1 %"$gascmp_1817", label %"$out_of_gas_1818", label %"$have_gas_1819"

"$out_of_gas_1818":                               ; preds = %"$have_gas_1814"
  call void @_out_of_gas()
  br label %"$have_gas_1819"

"$have_gas_1819":                                 ; preds = %"$out_of_gas_1818", %"$have_gas_1814"
  %"$consume_1820" = sub i64 %"$gasrem_1816", 1
  store i64 %"$consume_1820", i64* @_gasrem, align 8
  %"$ans_80" = alloca %Int128, align 8
  %"$gasrem_1821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1822" = icmp ugt i64 1, %"$gasrem_1821"
  br i1 %"$gascmp_1822", label %"$out_of_gas_1823", label %"$have_gas_1824"

"$out_of_gas_1823":                               ; preds = %"$have_gas_1819"
  call void @_out_of_gas()
  br label %"$have_gas_1824"

"$have_gas_1824":                                 ; preds = %"$out_of_gas_1823", %"$have_gas_1819"
  %"$consume_1825" = sub i64 %"$gasrem_1821", 1
  store i64 %"$consume_1825", i64* @_gasrem, align 8
  store %Int128 { i128 501 }, %Int128* %"$ans_80", align 8
  %"$gasrem_1826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1827" = icmp ugt i64 1, %"$gasrem_1826"
  br i1 %"$gascmp_1827", label %"$out_of_gas_1828", label %"$have_gas_1829"

"$out_of_gas_1828":                               ; preds = %"$have_gas_1824"
  call void @_out_of_gas()
  br label %"$have_gas_1829"

"$have_gas_1829":                                 ; preds = %"$out_of_gas_1828", %"$have_gas_1824"
  %"$consume_1830" = sub i64 %"$gasrem_1826", 1
  store i64 %"$consume_1830", i64* @_gasrem, align 8
  %"$res__81" = alloca %TName_Bool*, align 8
  %"$gasrem_1832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1833" = icmp ugt i64 8, %"$gasrem_1832"
  br i1 %"$gascmp_1833", label %"$out_of_gas_1834", label %"$have_gas_1835"

"$out_of_gas_1834":                               ; preds = %"$have_gas_1829"
  call void @_out_of_gas()
  br label %"$have_gas_1835"

"$have_gas_1835":                                 ; preds = %"$out_of_gas_1834", %"$have_gas_1829"
  %"$consume_1836" = sub i64 %"$gasrem_1832", 8
  store i64 %"$consume_1836", i64* @_gasrem, align 8
  %"$execptr_load_1837" = load i8*, i8** @_execptr, align 8
  %"$$p_79_1838" = load %Int128, %Int128* %"$p_79", align 8
  %"$$ans_80_1839" = load %Int128, %Int128* %"$ans_80", align 8
  %"$eq_call_1840" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1837", %Int128 %"$$p_79_1838", %Int128 %"$$ans_80_1839")
  store %TName_Bool* %"$eq_call_1840", %TName_Bool** %"$res__81", align 8
  %"$gasrem_1842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1843" = icmp ugt i64 1, %"$gasrem_1842"
  br i1 %"$gascmp_1843", label %"$out_of_gas_1844", label %"$have_gas_1845"

"$out_of_gas_1844":                               ; preds = %"$have_gas_1835"
  call void @_out_of_gas()
  br label %"$have_gas_1845"

"$have_gas_1845":                                 ; preds = %"$out_of_gas_1844", %"$have_gas_1835"
  %"$consume_1846" = sub i64 %"$gasrem_1842", 1
  store i64 %"$consume_1846", i64* @_gasrem, align 8
  %"$BoolUtils.andb_177" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1847" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1848" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1847", 0
  %"$BoolUtils.andb_envptr_1849" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1847", 1
  %"$$res_78_1850" = load %TName_Bool*, %TName_Bool** %"$res_78", align 8
  %"$BoolUtils.andb_call_1851" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1848"(i8* %"$BoolUtils.andb_envptr_1849", %TName_Bool* %"$$res_78_1850")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1851", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8
  %"$BoolUtils.andb_178" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_177_1852" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8
  %"$$BoolUtils.andb_177_fptr_1853" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1852", 0
  %"$$BoolUtils.andb_177_envptr_1854" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1852", 1
  %"$$res__81_1855" = load %TName_Bool*, %TName_Bool** %"$res__81", align 8
  %"$$BoolUtils.andb_177_call_1856" = call %TName_Bool* %"$$BoolUtils.andb_177_fptr_1853"(i8* %"$$BoolUtils.andb_177_envptr_1854", %TName_Bool* %"$$res__81_1855")
  store %TName_Bool* %"$$BoolUtils.andb_177_call_1856", %TName_Bool** %"$BoolUtils.andb_178", align 8
  %"$$BoolUtils.andb_178_1857" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_178", align 8
  store %TName_Bool* %"$$BoolUtils.andb_178_1857", %TName_Bool** %"$res_82", align 8
  %"$gasrem_1858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1859" = icmp ugt i64 1, %"$gasrem_1858"
  br i1 %"$gascmp_1859", label %"$out_of_gas_1860", label %"$have_gas_1861"

"$out_of_gas_1860":                               ; preds = %"$have_gas_1845"
  call void @_out_of_gas()
  br label %"$have_gas_1861"

"$have_gas_1861":                                 ; preds = %"$out_of_gas_1860", %"$have_gas_1845"
  %"$consume_1862" = sub i64 %"$gasrem_1858", 1
  store i64 %"$consume_1862", i64* @_gasrem, align 8
  %"$p_83" = alloca %Int128, align 8
  %"$p3_1863" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1864" = extractvalue %Uint32 %"$p3_1863", 0
  %"$valueof_1865" = zext i32 %"$valueof_1864" to i64
  %"$gaslogof_1866" = uitofp i64 %"$valueof_1865" to double
  %"$gaslogof_1867" = fadd double %"$gaslogof_1866", 1.000000e+00
  %"$gaslogof_1868" = call double @llvm.log.f64(double %"$gaslogof_1867")
  %"$gaslogof_1869" = fptoui double %"$gaslogof_1868" to i64
  %"$gaslogof_1870" = add i64 %"$gaslogof_1869", 1
  %"$gasmul_1871" = mul i64 20, %"$gaslogof_1870"
  %"$gasmul_1872" = mul i64 %"$gasmul_1871", 2
  %"$gasrem_1873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1874" = icmp ugt i64 %"$gasmul_1872", %"$gasrem_1873"
  br i1 %"$gascmp_1874", label %"$out_of_gas_1875", label %"$have_gas_1876"

"$out_of_gas_1875":                               ; preds = %"$have_gas_1861"
  call void @_out_of_gas()
  br label %"$have_gas_1876"

"$have_gas_1876":                                 ; preds = %"$out_of_gas_1875", %"$have_gas_1861"
  %"$consume_1877" = sub i64 %"$gasrem_1873", %"$gasmul_1872"
  store i64 %"$consume_1877", i64* @_gasrem, align 8
  %"$t6_1878" = load %Int128, %Int128* %t6, align 8
  %"$p3_1879" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1880" = call %Int128 @_pow_Int128(%Int128 %"$t6_1878", %Uint32 %"$p3_1879")
  store %Int128 %"$pow_call_1880", %Int128* %"$p_83", align 8
  %"$gasrem_1881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1882" = icmp ugt i64 1, %"$gasrem_1881"
  br i1 %"$gascmp_1882", label %"$out_of_gas_1883", label %"$have_gas_1884"

"$out_of_gas_1883":                               ; preds = %"$have_gas_1876"
  call void @_out_of_gas()
  br label %"$have_gas_1884"

"$have_gas_1884":                                 ; preds = %"$out_of_gas_1883", %"$have_gas_1876"
  %"$consume_1885" = sub i64 %"$gasrem_1881", 1
  store i64 %"$consume_1885", i64* @_gasrem, align 8
  %"$res_86" = alloca %TName_Bool*, align 8
  %"$gasrem_1886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1887" = icmp ugt i64 1, %"$gasrem_1886"
  br i1 %"$gascmp_1887", label %"$out_of_gas_1888", label %"$have_gas_1889"

"$out_of_gas_1888":                               ; preds = %"$have_gas_1884"
  call void @_out_of_gas()
  br label %"$have_gas_1889"

"$have_gas_1889":                                 ; preds = %"$out_of_gas_1888", %"$have_gas_1884"
  %"$consume_1890" = sub i64 %"$gasrem_1886", 1
  store i64 %"$consume_1890", i64* @_gasrem, align 8
  %"$ans_84" = alloca %Int128, align 8
  %"$gasrem_1891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1892" = icmp ugt i64 1, %"$gasrem_1891"
  br i1 %"$gascmp_1892", label %"$out_of_gas_1893", label %"$have_gas_1894"

"$out_of_gas_1893":                               ; preds = %"$have_gas_1889"
  call void @_out_of_gas()
  br label %"$have_gas_1894"

"$have_gas_1894":                                 ; preds = %"$out_of_gas_1893", %"$have_gas_1889"
  %"$consume_1895" = sub i64 %"$gasrem_1891", 1
  store i64 %"$consume_1895", i64* @_gasrem, align 8
  store %Int128 { i128 63001502001 }, %Int128* %"$ans_84", align 8
  %"$gasrem_1896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1897" = icmp ugt i64 1, %"$gasrem_1896"
  br i1 %"$gascmp_1897", label %"$out_of_gas_1898", label %"$have_gas_1899"

"$out_of_gas_1898":                               ; preds = %"$have_gas_1894"
  call void @_out_of_gas()
  br label %"$have_gas_1899"

"$have_gas_1899":                                 ; preds = %"$out_of_gas_1898", %"$have_gas_1894"
  %"$consume_1900" = sub i64 %"$gasrem_1896", 1
  store i64 %"$consume_1900", i64* @_gasrem, align 8
  %"$res__85" = alloca %TName_Bool*, align 8
  %"$gasrem_1902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1903" = icmp ugt i64 8, %"$gasrem_1902"
  br i1 %"$gascmp_1903", label %"$out_of_gas_1904", label %"$have_gas_1905"

"$out_of_gas_1904":                               ; preds = %"$have_gas_1899"
  call void @_out_of_gas()
  br label %"$have_gas_1905"

"$have_gas_1905":                                 ; preds = %"$out_of_gas_1904", %"$have_gas_1899"
  %"$consume_1906" = sub i64 %"$gasrem_1902", 8
  store i64 %"$consume_1906", i64* @_gasrem, align 8
  %"$execptr_load_1907" = load i8*, i8** @_execptr, align 8
  %"$$p_83_1908" = load %Int128, %Int128* %"$p_83", align 8
  %"$$ans_84_1909" = load %Int128, %Int128* %"$ans_84", align 8
  %"$eq_call_1910" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1907", %Int128 %"$$p_83_1908", %Int128 %"$$ans_84_1909")
  store %TName_Bool* %"$eq_call_1910", %TName_Bool** %"$res__85", align 8
  %"$gasrem_1912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1913" = icmp ugt i64 1, %"$gasrem_1912"
  br i1 %"$gascmp_1913", label %"$out_of_gas_1914", label %"$have_gas_1915"

"$out_of_gas_1914":                               ; preds = %"$have_gas_1905"
  call void @_out_of_gas()
  br label %"$have_gas_1915"

"$have_gas_1915":                                 ; preds = %"$out_of_gas_1914", %"$have_gas_1905"
  %"$consume_1916" = sub i64 %"$gasrem_1912", 1
  store i64 %"$consume_1916", i64* @_gasrem, align 8
  %"$BoolUtils.andb_179" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1917" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1918" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1917", 0
  %"$BoolUtils.andb_envptr_1919" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1917", 1
  %"$$res_82_1920" = load %TName_Bool*, %TName_Bool** %"$res_82", align 8
  %"$BoolUtils.andb_call_1921" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1918"(i8* %"$BoolUtils.andb_envptr_1919", %TName_Bool* %"$$res_82_1920")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1921", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8
  %"$BoolUtils.andb_180" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_179_1922" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8
  %"$$BoolUtils.andb_179_fptr_1923" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1922", 0
  %"$$BoolUtils.andb_179_envptr_1924" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1922", 1
  %"$$res__85_1925" = load %TName_Bool*, %TName_Bool** %"$res__85", align 8
  %"$$BoolUtils.andb_179_call_1926" = call %TName_Bool* %"$$BoolUtils.andb_179_fptr_1923"(i8* %"$$BoolUtils.andb_179_envptr_1924", %TName_Bool* %"$$res__85_1925")
  store %TName_Bool* %"$$BoolUtils.andb_179_call_1926", %TName_Bool** %"$BoolUtils.andb_180", align 8
  %"$$BoolUtils.andb_180_1927" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_180", align 8
  store %TName_Bool* %"$$BoolUtils.andb_180_1927", %TName_Bool** %"$res_86", align 8
  %"$gasrem_1928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1929" = icmp ugt i64 1, %"$gasrem_1928"
  br i1 %"$gascmp_1929", label %"$out_of_gas_1930", label %"$have_gas_1931"

"$out_of_gas_1930":                               ; preds = %"$have_gas_1915"
  call void @_out_of_gas()
  br label %"$have_gas_1931"

"$have_gas_1931":                                 ; preds = %"$out_of_gas_1930", %"$have_gas_1915"
  %"$consume_1932" = sub i64 %"$gasrem_1928", 1
  store i64 %"$consume_1932", i64* @_gasrem, align 8
  %"$p_87" = alloca %Int128, align 8
  %"$p4_1933" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_1934" = extractvalue %Uint32 %"$p4_1933", 0
  %"$valueof_1935" = zext i32 %"$valueof_1934" to i64
  %"$gaslogof_1936" = uitofp i64 %"$valueof_1935" to double
  %"$gaslogof_1937" = fadd double %"$gaslogof_1936", 1.000000e+00
  %"$gaslogof_1938" = call double @llvm.log.f64(double %"$gaslogof_1937")
  %"$gaslogof_1939" = fptoui double %"$gaslogof_1938" to i64
  %"$gaslogof_1940" = add i64 %"$gaslogof_1939", 1
  %"$gasmul_1941" = mul i64 20, %"$gaslogof_1940"
  %"$gasmul_1942" = mul i64 %"$gasmul_1941", 2
  %"$gasrem_1943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1944" = icmp ugt i64 %"$gasmul_1942", %"$gasrem_1943"
  br i1 %"$gascmp_1944", label %"$out_of_gas_1945", label %"$have_gas_1946"

"$out_of_gas_1945":                               ; preds = %"$have_gas_1931"
  call void @_out_of_gas()
  br label %"$have_gas_1946"

"$have_gas_1946":                                 ; preds = %"$out_of_gas_1945", %"$have_gas_1931"
  %"$consume_1947" = sub i64 %"$gasrem_1943", %"$gasmul_1942"
  store i64 %"$consume_1947", i64* @_gasrem, align 8
  %"$t6_1948" = load %Int128, %Int128* %t6, align 8
  %"$p4_1949" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1950" = call %Int128 @_pow_Int128(%Int128 %"$t6_1948", %Uint32 %"$p4_1949")
  store %Int128 %"$pow_call_1950", %Int128* %"$p_87", align 8
  %"$gasrem_1951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1952" = icmp ugt i64 1, %"$gasrem_1951"
  br i1 %"$gascmp_1952", label %"$out_of_gas_1953", label %"$have_gas_1954"

"$out_of_gas_1953":                               ; preds = %"$have_gas_1946"
  call void @_out_of_gas()
  br label %"$have_gas_1954"

"$have_gas_1954":                                 ; preds = %"$out_of_gas_1953", %"$have_gas_1946"
  %"$consume_1955" = sub i64 %"$gasrem_1951", 1
  store i64 %"$consume_1955", i64* @_gasrem, align 8
  %"$res_90" = alloca %TName_Bool*, align 8
  %"$gasrem_1956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1957" = icmp ugt i64 1, %"$gasrem_1956"
  br i1 %"$gascmp_1957", label %"$out_of_gas_1958", label %"$have_gas_1959"

"$out_of_gas_1958":                               ; preds = %"$have_gas_1954"
  call void @_out_of_gas()
  br label %"$have_gas_1959"

"$have_gas_1959":                                 ; preds = %"$out_of_gas_1958", %"$have_gas_1954"
  %"$consume_1960" = sub i64 %"$gasrem_1956", 1
  store i64 %"$consume_1960", i64* @_gasrem, align 8
  %"$ans_88" = alloca %Int128, align 8
  %"$gasrem_1961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1962" = icmp ugt i64 1, %"$gasrem_1961"
  br i1 %"$gascmp_1962", label %"$out_of_gas_1963", label %"$have_gas_1964"

"$out_of_gas_1963":                               ; preds = %"$have_gas_1959"
  call void @_out_of_gas()
  br label %"$have_gas_1964"

"$have_gas_1964":                                 ; preds = %"$out_of_gas_1963", %"$have_gas_1959"
  %"$consume_1965" = sub i64 %"$gasrem_1961", 1
  store i64 %"$consume_1965", i64* @_gasrem, align 8
  store %Int128 { i128 996270472039138140011255001 }, %Int128* %"$ans_88", align 8
  %"$gasrem_1966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1967" = icmp ugt i64 1, %"$gasrem_1966"
  br i1 %"$gascmp_1967", label %"$out_of_gas_1968", label %"$have_gas_1969"

"$out_of_gas_1968":                               ; preds = %"$have_gas_1964"
  call void @_out_of_gas()
  br label %"$have_gas_1969"

"$have_gas_1969":                                 ; preds = %"$out_of_gas_1968", %"$have_gas_1964"
  %"$consume_1970" = sub i64 %"$gasrem_1966", 1
  store i64 %"$consume_1970", i64* @_gasrem, align 8
  %"$res__89" = alloca %TName_Bool*, align 8
  %"$gasrem_1972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1973" = icmp ugt i64 8, %"$gasrem_1972"
  br i1 %"$gascmp_1973", label %"$out_of_gas_1974", label %"$have_gas_1975"

"$out_of_gas_1974":                               ; preds = %"$have_gas_1969"
  call void @_out_of_gas()
  br label %"$have_gas_1975"

"$have_gas_1975":                                 ; preds = %"$out_of_gas_1974", %"$have_gas_1969"
  %"$consume_1976" = sub i64 %"$gasrem_1972", 8
  store i64 %"$consume_1976", i64* @_gasrem, align 8
  %"$execptr_load_1977" = load i8*, i8** @_execptr, align 8
  %"$$p_87_1978" = load %Int128, %Int128* %"$p_87", align 8
  %"$$ans_88_1979" = load %Int128, %Int128* %"$ans_88", align 8
  %"$eq_call_1980" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1977", %Int128 %"$$p_87_1978", %Int128 %"$$ans_88_1979")
  store %TName_Bool* %"$eq_call_1980", %TName_Bool** %"$res__89", align 8
  %"$gasrem_1982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1983" = icmp ugt i64 1, %"$gasrem_1982"
  br i1 %"$gascmp_1983", label %"$out_of_gas_1984", label %"$have_gas_1985"

"$out_of_gas_1984":                               ; preds = %"$have_gas_1975"
  call void @_out_of_gas()
  br label %"$have_gas_1985"

"$have_gas_1985":                                 ; preds = %"$out_of_gas_1984", %"$have_gas_1975"
  %"$consume_1986" = sub i64 %"$gasrem_1982", 1
  store i64 %"$consume_1986", i64* @_gasrem, align 8
  %"$BoolUtils.andb_181" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1987" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1988" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1987", 0
  %"$BoolUtils.andb_envptr_1989" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1987", 1
  %"$$res_86_1990" = load %TName_Bool*, %TName_Bool** %"$res_86", align 8
  %"$BoolUtils.andb_call_1991" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1988"(i8* %"$BoolUtils.andb_envptr_1989", %TName_Bool* %"$$res_86_1990")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1991", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8
  %"$BoolUtils.andb_182" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_181_1992" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8
  %"$$BoolUtils.andb_181_fptr_1993" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_1992", 0
  %"$$BoolUtils.andb_181_envptr_1994" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_1992", 1
  %"$$res__89_1995" = load %TName_Bool*, %TName_Bool** %"$res__89", align 8
  %"$$BoolUtils.andb_181_call_1996" = call %TName_Bool* %"$$BoolUtils.andb_181_fptr_1993"(i8* %"$$BoolUtils.andb_181_envptr_1994", %TName_Bool* %"$$res__89_1995")
  store %TName_Bool* %"$$BoolUtils.andb_181_call_1996", %TName_Bool** %"$BoolUtils.andb_182", align 8
  %"$$BoolUtils.andb_182_1997" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_182", align 8
  store %TName_Bool* %"$$BoolUtils.andb_182_1997", %TName_Bool** %"$res_90", align 8
  %"$gasrem_1998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1999" = icmp ugt i64 1, %"$gasrem_1998"
  br i1 %"$gascmp_1999", label %"$out_of_gas_2000", label %"$have_gas_2001"

"$out_of_gas_2000":                               ; preds = %"$have_gas_1985"
  call void @_out_of_gas()
  br label %"$have_gas_2001"

"$have_gas_2001":                                 ; preds = %"$out_of_gas_2000", %"$have_gas_1985"
  %"$consume_2002" = sub i64 %"$gasrem_1998", 1
  store i64 %"$consume_2002", i64* @_gasrem, align 8
  %"$p_91" = alloca %Uint256, align 8
  %"$p1_2003" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2004" = extractvalue %Uint32 %"$p1_2003", 0
  %"$valueof_2005" = zext i32 %"$valueof_2004" to i64
  %"$gaslogof_2006" = uitofp i64 %"$valueof_2005" to double
  %"$gaslogof_2007" = fadd double %"$gaslogof_2006", 1.000000e+00
  %"$gaslogof_2008" = call double @llvm.log.f64(double %"$gaslogof_2007")
  %"$gaslogof_2009" = fptoui double %"$gaslogof_2008" to i64
  %"$gaslogof_2010" = add i64 %"$gaslogof_2009", 1
  %"$gasmul_2011" = mul i64 20, %"$gaslogof_2010"
  %"$gasmul_2012" = mul i64 %"$gasmul_2011", 4
  %"$gasrem_2013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2014" = icmp ugt i64 %"$gasmul_2012", %"$gasrem_2013"
  br i1 %"$gascmp_2014", label %"$out_of_gas_2015", label %"$have_gas_2016"

"$out_of_gas_2015":                               ; preds = %"$have_gas_2001"
  call void @_out_of_gas()
  br label %"$have_gas_2016"

"$have_gas_2016":                                 ; preds = %"$out_of_gas_2015", %"$have_gas_2001"
  %"$consume_2017" = sub i64 %"$gasrem_2013", %"$gasmul_2012"
  store i64 %"$consume_2017", i64* @_gasrem, align 8
  %"$execptr_load_2018" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2019" = alloca %Uint256, align 8
  %"$t7_2020" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2020", %Uint256* %"$pow_t7_2019", align 8
  %"$p1_2021" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2022" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2018", %Uint256* %"$pow_t7_2019", %Uint32 %"$p1_2021")
  %"$pow_2024" = load %Uint256, %Uint256* %"$pow_call_2022", align 8
  store %Uint256 %"$pow_2024", %Uint256* %"$p_91", align 8
  %"$gasrem_2025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2026" = icmp ugt i64 1, %"$gasrem_2025"
  br i1 %"$gascmp_2026", label %"$out_of_gas_2027", label %"$have_gas_2028"

"$out_of_gas_2027":                               ; preds = %"$have_gas_2016"
  call void @_out_of_gas()
  br label %"$have_gas_2028"

"$have_gas_2028":                                 ; preds = %"$out_of_gas_2027", %"$have_gas_2016"
  %"$consume_2029" = sub i64 %"$gasrem_2025", 1
  store i64 %"$consume_2029", i64* @_gasrem, align 8
  %"$res_94" = alloca %TName_Bool*, align 8
  %"$gasrem_2030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2031" = icmp ugt i64 1, %"$gasrem_2030"
  br i1 %"$gascmp_2031", label %"$out_of_gas_2032", label %"$have_gas_2033"

"$out_of_gas_2032":                               ; preds = %"$have_gas_2028"
  call void @_out_of_gas()
  br label %"$have_gas_2033"

"$have_gas_2033":                                 ; preds = %"$out_of_gas_2032", %"$have_gas_2028"
  %"$consume_2034" = sub i64 %"$gasrem_2030", 1
  store i64 %"$consume_2034", i64* @_gasrem, align 8
  %"$ans_92" = alloca %Uint256, align 8
  %"$gasrem_2035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2036" = icmp ugt i64 1, %"$gasrem_2035"
  br i1 %"$gascmp_2036", label %"$out_of_gas_2037", label %"$have_gas_2038"

"$out_of_gas_2037":                               ; preds = %"$have_gas_2033"
  call void @_out_of_gas()
  br label %"$have_gas_2038"

"$have_gas_2038":                                 ; preds = %"$out_of_gas_2037", %"$have_gas_2033"
  %"$consume_2039" = sub i64 %"$gasrem_2035", 1
  store i64 %"$consume_2039", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$ans_92", align 8
  %"$gasrem_2040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2041" = icmp ugt i64 1, %"$gasrem_2040"
  br i1 %"$gascmp_2041", label %"$out_of_gas_2042", label %"$have_gas_2043"

"$out_of_gas_2042":                               ; preds = %"$have_gas_2038"
  call void @_out_of_gas()
  br label %"$have_gas_2043"

"$have_gas_2043":                                 ; preds = %"$out_of_gas_2042", %"$have_gas_2038"
  %"$consume_2044" = sub i64 %"$gasrem_2040", 1
  store i64 %"$consume_2044", i64* @_gasrem, align 8
  %"$res__93" = alloca %TName_Bool*, align 8
  %"$gasrem_2046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2047" = icmp ugt i64 16, %"$gasrem_2046"
  br i1 %"$gascmp_2047", label %"$out_of_gas_2048", label %"$have_gas_2049"

"$out_of_gas_2048":                               ; preds = %"$have_gas_2043"
  call void @_out_of_gas()
  br label %"$have_gas_2049"

"$have_gas_2049":                                 ; preds = %"$out_of_gas_2048", %"$have_gas_2043"
  %"$consume_2050" = sub i64 %"$gasrem_2046", 16
  store i64 %"$consume_2050", i64* @_gasrem, align 8
  %"$execptr_load_2051" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_91_2052" = alloca %Uint256, align 8
  %"$$p_91_2053" = load %Uint256, %Uint256* %"$p_91", align 8
  store %Uint256 %"$$p_91_2053", %Uint256* %"$eq_$p_91_2052", align 8
  %"$eq_$ans_92_2054" = alloca %Uint256, align 8
  %"$$ans_92_2055" = load %Uint256, %Uint256* %"$ans_92", align 8
  store %Uint256 %"$$ans_92_2055", %Uint256* %"$eq_$ans_92_2054", align 8
  %"$eq_call_2056" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2051", %Uint256* %"$eq_$p_91_2052", %Uint256* %"$eq_$ans_92_2054")
  store %TName_Bool* %"$eq_call_2056", %TName_Bool** %"$res__93", align 8
  %"$gasrem_2058" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2059" = icmp ugt i64 1, %"$gasrem_2058"
  br i1 %"$gascmp_2059", label %"$out_of_gas_2060", label %"$have_gas_2061"

"$out_of_gas_2060":                               ; preds = %"$have_gas_2049"
  call void @_out_of_gas()
  br label %"$have_gas_2061"

"$have_gas_2061":                                 ; preds = %"$out_of_gas_2060", %"$have_gas_2049"
  %"$consume_2062" = sub i64 %"$gasrem_2058", 1
  store i64 %"$consume_2062", i64* @_gasrem, align 8
  %"$BoolUtils.andb_183" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2063" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2064" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2063", 0
  %"$BoolUtils.andb_envptr_2065" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2063", 1
  %"$$res_90_2066" = load %TName_Bool*, %TName_Bool** %"$res_90", align 8
  %"$BoolUtils.andb_call_2067" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2064"(i8* %"$BoolUtils.andb_envptr_2065", %TName_Bool* %"$$res_90_2066")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2067", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8
  %"$BoolUtils.andb_184" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_183_2068" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8
  %"$$BoolUtils.andb_183_fptr_2069" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_2068", 0
  %"$$BoolUtils.andb_183_envptr_2070" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_2068", 1
  %"$$res__93_2071" = load %TName_Bool*, %TName_Bool** %"$res__93", align 8
  %"$$BoolUtils.andb_183_call_2072" = call %TName_Bool* %"$$BoolUtils.andb_183_fptr_2069"(i8* %"$$BoolUtils.andb_183_envptr_2070", %TName_Bool* %"$$res__93_2071")
  store %TName_Bool* %"$$BoolUtils.andb_183_call_2072", %TName_Bool** %"$BoolUtils.andb_184", align 8
  %"$$BoolUtils.andb_184_2073" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_184", align 8
  store %TName_Bool* %"$$BoolUtils.andb_184_2073", %TName_Bool** %"$res_94", align 8
  %"$gasrem_2074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2075" = icmp ugt i64 1, %"$gasrem_2074"
  br i1 %"$gascmp_2075", label %"$out_of_gas_2076", label %"$have_gas_2077"

"$out_of_gas_2076":                               ; preds = %"$have_gas_2061"
  call void @_out_of_gas()
  br label %"$have_gas_2077"

"$have_gas_2077":                                 ; preds = %"$out_of_gas_2076", %"$have_gas_2061"
  %"$consume_2078" = sub i64 %"$gasrem_2074", 1
  store i64 %"$consume_2078", i64* @_gasrem, align 8
  %"$p_95" = alloca %Uint256, align 8
  %"$p2_2079" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2080" = extractvalue %Uint32 %"$p2_2079", 0
  %"$valueof_2081" = zext i32 %"$valueof_2080" to i64
  %"$gaslogof_2082" = uitofp i64 %"$valueof_2081" to double
  %"$gaslogof_2083" = fadd double %"$gaslogof_2082", 1.000000e+00
  %"$gaslogof_2084" = call double @llvm.log.f64(double %"$gaslogof_2083")
  %"$gaslogof_2085" = fptoui double %"$gaslogof_2084" to i64
  %"$gaslogof_2086" = add i64 %"$gaslogof_2085", 1
  %"$gasmul_2087" = mul i64 20, %"$gaslogof_2086"
  %"$gasmul_2088" = mul i64 %"$gasmul_2087", 4
  %"$gasrem_2089" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2090" = icmp ugt i64 %"$gasmul_2088", %"$gasrem_2089"
  br i1 %"$gascmp_2090", label %"$out_of_gas_2091", label %"$have_gas_2092"

"$out_of_gas_2091":                               ; preds = %"$have_gas_2077"
  call void @_out_of_gas()
  br label %"$have_gas_2092"

"$have_gas_2092":                                 ; preds = %"$out_of_gas_2091", %"$have_gas_2077"
  %"$consume_2093" = sub i64 %"$gasrem_2089", %"$gasmul_2088"
  store i64 %"$consume_2093", i64* @_gasrem, align 8
  %"$execptr_load_2094" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2095" = alloca %Uint256, align 8
  %"$t7_2096" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2096", %Uint256* %"$pow_t7_2095", align 8
  %"$p2_2097" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2098" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2094", %Uint256* %"$pow_t7_2095", %Uint32 %"$p2_2097")
  %"$pow_2100" = load %Uint256, %Uint256* %"$pow_call_2098", align 8
  store %Uint256 %"$pow_2100", %Uint256* %"$p_95", align 8
  %"$gasrem_2101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2102" = icmp ugt i64 1, %"$gasrem_2101"
  br i1 %"$gascmp_2102", label %"$out_of_gas_2103", label %"$have_gas_2104"

"$out_of_gas_2103":                               ; preds = %"$have_gas_2092"
  call void @_out_of_gas()
  br label %"$have_gas_2104"

"$have_gas_2104":                                 ; preds = %"$out_of_gas_2103", %"$have_gas_2092"
  %"$consume_2105" = sub i64 %"$gasrem_2101", 1
  store i64 %"$consume_2105", i64* @_gasrem, align 8
  %"$res_98" = alloca %TName_Bool*, align 8
  %"$gasrem_2106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2107" = icmp ugt i64 1, %"$gasrem_2106"
  br i1 %"$gascmp_2107", label %"$out_of_gas_2108", label %"$have_gas_2109"

"$out_of_gas_2108":                               ; preds = %"$have_gas_2104"
  call void @_out_of_gas()
  br label %"$have_gas_2109"

"$have_gas_2109":                                 ; preds = %"$out_of_gas_2108", %"$have_gas_2104"
  %"$consume_2110" = sub i64 %"$gasrem_2106", 1
  store i64 %"$consume_2110", i64* @_gasrem, align 8
  %"$ans_96" = alloca %Uint256, align 8
  %"$gasrem_2111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2112" = icmp ugt i64 1, %"$gasrem_2111"
  br i1 %"$gascmp_2112", label %"$out_of_gas_2113", label %"$have_gas_2114"

"$out_of_gas_2113":                               ; preds = %"$have_gas_2109"
  call void @_out_of_gas()
  br label %"$have_gas_2114"

"$have_gas_2114":                                 ; preds = %"$out_of_gas_2113", %"$have_gas_2109"
  %"$consume_2115" = sub i64 %"$gasrem_2111", 1
  store i64 %"$consume_2115", i64* @_gasrem, align 8
  store %Uint256 { i256 10001 }, %Uint256* %"$ans_96", align 8
  %"$gasrem_2116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2117" = icmp ugt i64 1, %"$gasrem_2116"
  br i1 %"$gascmp_2117", label %"$out_of_gas_2118", label %"$have_gas_2119"

"$out_of_gas_2118":                               ; preds = %"$have_gas_2114"
  call void @_out_of_gas()
  br label %"$have_gas_2119"

"$have_gas_2119":                                 ; preds = %"$out_of_gas_2118", %"$have_gas_2114"
  %"$consume_2120" = sub i64 %"$gasrem_2116", 1
  store i64 %"$consume_2120", i64* @_gasrem, align 8
  %"$res__97" = alloca %TName_Bool*, align 8
  %"$gasrem_2122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2123" = icmp ugt i64 16, %"$gasrem_2122"
  br i1 %"$gascmp_2123", label %"$out_of_gas_2124", label %"$have_gas_2125"

"$out_of_gas_2124":                               ; preds = %"$have_gas_2119"
  call void @_out_of_gas()
  br label %"$have_gas_2125"

"$have_gas_2125":                                 ; preds = %"$out_of_gas_2124", %"$have_gas_2119"
  %"$consume_2126" = sub i64 %"$gasrem_2122", 16
  store i64 %"$consume_2126", i64* @_gasrem, align 8
  %"$execptr_load_2127" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_95_2128" = alloca %Uint256, align 8
  %"$$p_95_2129" = load %Uint256, %Uint256* %"$p_95", align 8
  store %Uint256 %"$$p_95_2129", %Uint256* %"$eq_$p_95_2128", align 8
  %"$eq_$ans_96_2130" = alloca %Uint256, align 8
  %"$$ans_96_2131" = load %Uint256, %Uint256* %"$ans_96", align 8
  store %Uint256 %"$$ans_96_2131", %Uint256* %"$eq_$ans_96_2130", align 8
  %"$eq_call_2132" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2127", %Uint256* %"$eq_$p_95_2128", %Uint256* %"$eq_$ans_96_2130")
  store %TName_Bool* %"$eq_call_2132", %TName_Bool** %"$res__97", align 8
  %"$gasrem_2134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2135" = icmp ugt i64 1, %"$gasrem_2134"
  br i1 %"$gascmp_2135", label %"$out_of_gas_2136", label %"$have_gas_2137"

"$out_of_gas_2136":                               ; preds = %"$have_gas_2125"
  call void @_out_of_gas()
  br label %"$have_gas_2137"

"$have_gas_2137":                                 ; preds = %"$out_of_gas_2136", %"$have_gas_2125"
  %"$consume_2138" = sub i64 %"$gasrem_2134", 1
  store i64 %"$consume_2138", i64* @_gasrem, align 8
  %"$BoolUtils.andb_185" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2139" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2140" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2139", 0
  %"$BoolUtils.andb_envptr_2141" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2139", 1
  %"$$res_94_2142" = load %TName_Bool*, %TName_Bool** %"$res_94", align 8
  %"$BoolUtils.andb_call_2143" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2140"(i8* %"$BoolUtils.andb_envptr_2141", %TName_Bool* %"$$res_94_2142")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2143", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8
  %"$BoolUtils.andb_186" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_185_2144" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8
  %"$$BoolUtils.andb_185_fptr_2145" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_2144", 0
  %"$$BoolUtils.andb_185_envptr_2146" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_2144", 1
  %"$$res__97_2147" = load %TName_Bool*, %TName_Bool** %"$res__97", align 8
  %"$$BoolUtils.andb_185_call_2148" = call %TName_Bool* %"$$BoolUtils.andb_185_fptr_2145"(i8* %"$$BoolUtils.andb_185_envptr_2146", %TName_Bool* %"$$res__97_2147")
  store %TName_Bool* %"$$BoolUtils.andb_185_call_2148", %TName_Bool** %"$BoolUtils.andb_186", align 8
  %"$$BoolUtils.andb_186_2149" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_186", align 8
  store %TName_Bool* %"$$BoolUtils.andb_186_2149", %TName_Bool** %"$res_98", align 8
  %"$gasrem_2150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2151" = icmp ugt i64 1, %"$gasrem_2150"
  br i1 %"$gascmp_2151", label %"$out_of_gas_2152", label %"$have_gas_2153"

"$out_of_gas_2152":                               ; preds = %"$have_gas_2137"
  call void @_out_of_gas()
  br label %"$have_gas_2153"

"$have_gas_2153":                                 ; preds = %"$out_of_gas_2152", %"$have_gas_2137"
  %"$consume_2154" = sub i64 %"$gasrem_2150", 1
  store i64 %"$consume_2154", i64* @_gasrem, align 8
  %"$p_99" = alloca %Uint256, align 8
  %"$p3_2155" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2156" = extractvalue %Uint32 %"$p3_2155", 0
  %"$valueof_2157" = zext i32 %"$valueof_2156" to i64
  %"$gaslogof_2158" = uitofp i64 %"$valueof_2157" to double
  %"$gaslogof_2159" = fadd double %"$gaslogof_2158", 1.000000e+00
  %"$gaslogof_2160" = call double @llvm.log.f64(double %"$gaslogof_2159")
  %"$gaslogof_2161" = fptoui double %"$gaslogof_2160" to i64
  %"$gaslogof_2162" = add i64 %"$gaslogof_2161", 1
  %"$gasmul_2163" = mul i64 20, %"$gaslogof_2162"
  %"$gasmul_2164" = mul i64 %"$gasmul_2163", 4
  %"$gasrem_2165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2166" = icmp ugt i64 %"$gasmul_2164", %"$gasrem_2165"
  br i1 %"$gascmp_2166", label %"$out_of_gas_2167", label %"$have_gas_2168"

"$out_of_gas_2167":                               ; preds = %"$have_gas_2153"
  call void @_out_of_gas()
  br label %"$have_gas_2168"

"$have_gas_2168":                                 ; preds = %"$out_of_gas_2167", %"$have_gas_2153"
  %"$consume_2169" = sub i64 %"$gasrem_2165", %"$gasmul_2164"
  store i64 %"$consume_2169", i64* @_gasrem, align 8
  %"$execptr_load_2170" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2171" = alloca %Uint256, align 8
  %"$t7_2172" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2172", %Uint256* %"$pow_t7_2171", align 8
  %"$p3_2173" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2174" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2170", %Uint256* %"$pow_t7_2171", %Uint32 %"$p3_2173")
  %"$pow_2176" = load %Uint256, %Uint256* %"$pow_call_2174", align 8
  store %Uint256 %"$pow_2176", %Uint256* %"$p_99", align 8
  %"$gasrem_2177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2178" = icmp ugt i64 1, %"$gasrem_2177"
  br i1 %"$gascmp_2178", label %"$out_of_gas_2179", label %"$have_gas_2180"

"$out_of_gas_2179":                               ; preds = %"$have_gas_2168"
  call void @_out_of_gas()
  br label %"$have_gas_2180"

"$have_gas_2180":                                 ; preds = %"$out_of_gas_2179", %"$have_gas_2168"
  %"$consume_2181" = sub i64 %"$gasrem_2177", 1
  store i64 %"$consume_2181", i64* @_gasrem, align 8
  %"$res_102" = alloca %TName_Bool*, align 8
  %"$gasrem_2182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2183" = icmp ugt i64 1, %"$gasrem_2182"
  br i1 %"$gascmp_2183", label %"$out_of_gas_2184", label %"$have_gas_2185"

"$out_of_gas_2184":                               ; preds = %"$have_gas_2180"
  call void @_out_of_gas()
  br label %"$have_gas_2185"

"$have_gas_2185":                                 ; preds = %"$out_of_gas_2184", %"$have_gas_2180"
  %"$consume_2186" = sub i64 %"$gasrem_2182", 1
  store i64 %"$consume_2186", i64* @_gasrem, align 8
  %"$ans_100" = alloca %Uint256, align 8
  %"$gasrem_2187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2188" = icmp ugt i64 1, %"$gasrem_2187"
  br i1 %"$gascmp_2188", label %"$out_of_gas_2189", label %"$have_gas_2190"

"$out_of_gas_2189":                               ; preds = %"$have_gas_2185"
  call void @_out_of_gas()
  br label %"$have_gas_2190"

"$have_gas_2190":                                 ; preds = %"$out_of_gas_2189", %"$have_gas_2185"
  %"$consume_2191" = sub i64 %"$gasrem_2187", 1
  store i64 %"$consume_2191", i64* @_gasrem, align 8
  store %Uint256 { i256 10004000600040001 }, %Uint256* %"$ans_100", align 8
  %"$gasrem_2192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2193" = icmp ugt i64 1, %"$gasrem_2192"
  br i1 %"$gascmp_2193", label %"$out_of_gas_2194", label %"$have_gas_2195"

"$out_of_gas_2194":                               ; preds = %"$have_gas_2190"
  call void @_out_of_gas()
  br label %"$have_gas_2195"

"$have_gas_2195":                                 ; preds = %"$out_of_gas_2194", %"$have_gas_2190"
  %"$consume_2196" = sub i64 %"$gasrem_2192", 1
  store i64 %"$consume_2196", i64* @_gasrem, align 8
  %"$res__101" = alloca %TName_Bool*, align 8
  %"$gasrem_2198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2199" = icmp ugt i64 16, %"$gasrem_2198"
  br i1 %"$gascmp_2199", label %"$out_of_gas_2200", label %"$have_gas_2201"

"$out_of_gas_2200":                               ; preds = %"$have_gas_2195"
  call void @_out_of_gas()
  br label %"$have_gas_2201"

"$have_gas_2201":                                 ; preds = %"$out_of_gas_2200", %"$have_gas_2195"
  %"$consume_2202" = sub i64 %"$gasrem_2198", 16
  store i64 %"$consume_2202", i64* @_gasrem, align 8
  %"$execptr_load_2203" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_99_2204" = alloca %Uint256, align 8
  %"$$p_99_2205" = load %Uint256, %Uint256* %"$p_99", align 8
  store %Uint256 %"$$p_99_2205", %Uint256* %"$eq_$p_99_2204", align 8
  %"$eq_$ans_100_2206" = alloca %Uint256, align 8
  %"$$ans_100_2207" = load %Uint256, %Uint256* %"$ans_100", align 8
  store %Uint256 %"$$ans_100_2207", %Uint256* %"$eq_$ans_100_2206", align 8
  %"$eq_call_2208" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2203", %Uint256* %"$eq_$p_99_2204", %Uint256* %"$eq_$ans_100_2206")
  store %TName_Bool* %"$eq_call_2208", %TName_Bool** %"$res__101", align 8
  %"$gasrem_2210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2211" = icmp ugt i64 1, %"$gasrem_2210"
  br i1 %"$gascmp_2211", label %"$out_of_gas_2212", label %"$have_gas_2213"

"$out_of_gas_2212":                               ; preds = %"$have_gas_2201"
  call void @_out_of_gas()
  br label %"$have_gas_2213"

"$have_gas_2213":                                 ; preds = %"$out_of_gas_2212", %"$have_gas_2201"
  %"$consume_2214" = sub i64 %"$gasrem_2210", 1
  store i64 %"$consume_2214", i64* @_gasrem, align 8
  %"$BoolUtils.andb_187" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2215" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2216" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2215", 0
  %"$BoolUtils.andb_envptr_2217" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2215", 1
  %"$$res_98_2218" = load %TName_Bool*, %TName_Bool** %"$res_98", align 8
  %"$BoolUtils.andb_call_2219" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2216"(i8* %"$BoolUtils.andb_envptr_2217", %TName_Bool* %"$$res_98_2218")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2219", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8
  %"$BoolUtils.andb_188" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_187_2220" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8
  %"$$BoolUtils.andb_187_fptr_2221" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_2220", 0
  %"$$BoolUtils.andb_187_envptr_2222" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_2220", 1
  %"$$res__101_2223" = load %TName_Bool*, %TName_Bool** %"$res__101", align 8
  %"$$BoolUtils.andb_187_call_2224" = call %TName_Bool* %"$$BoolUtils.andb_187_fptr_2221"(i8* %"$$BoolUtils.andb_187_envptr_2222", %TName_Bool* %"$$res__101_2223")
  store %TName_Bool* %"$$BoolUtils.andb_187_call_2224", %TName_Bool** %"$BoolUtils.andb_188", align 8
  %"$$BoolUtils.andb_188_2225" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_188", align 8
  store %TName_Bool* %"$$BoolUtils.andb_188_2225", %TName_Bool** %"$res_102", align 8
  %"$gasrem_2226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2227" = icmp ugt i64 1, %"$gasrem_2226"
  br i1 %"$gascmp_2227", label %"$out_of_gas_2228", label %"$have_gas_2229"

"$out_of_gas_2228":                               ; preds = %"$have_gas_2213"
  call void @_out_of_gas()
  br label %"$have_gas_2229"

"$have_gas_2229":                                 ; preds = %"$out_of_gas_2228", %"$have_gas_2213"
  %"$consume_2230" = sub i64 %"$gasrem_2226", 1
  store i64 %"$consume_2230", i64* @_gasrem, align 8
  %"$p_103" = alloca %Uint256, align 8
  %"$p4_2231" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2232" = extractvalue %Uint32 %"$p4_2231", 0
  %"$valueof_2233" = zext i32 %"$valueof_2232" to i64
  %"$gaslogof_2234" = uitofp i64 %"$valueof_2233" to double
  %"$gaslogof_2235" = fadd double %"$gaslogof_2234", 1.000000e+00
  %"$gaslogof_2236" = call double @llvm.log.f64(double %"$gaslogof_2235")
  %"$gaslogof_2237" = fptoui double %"$gaslogof_2236" to i64
  %"$gaslogof_2238" = add i64 %"$gaslogof_2237", 1
  %"$gasmul_2239" = mul i64 20, %"$gaslogof_2238"
  %"$gasmul_2240" = mul i64 %"$gasmul_2239", 4
  %"$gasrem_2241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2242" = icmp ugt i64 %"$gasmul_2240", %"$gasrem_2241"
  br i1 %"$gascmp_2242", label %"$out_of_gas_2243", label %"$have_gas_2244"

"$out_of_gas_2243":                               ; preds = %"$have_gas_2229"
  call void @_out_of_gas()
  br label %"$have_gas_2244"

"$have_gas_2244":                                 ; preds = %"$out_of_gas_2243", %"$have_gas_2229"
  %"$consume_2245" = sub i64 %"$gasrem_2241", %"$gasmul_2240"
  store i64 %"$consume_2245", i64* @_gasrem, align 8
  %"$execptr_load_2246" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2247" = alloca %Uint256, align 8
  %"$t7_2248" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2248", %Uint256* %"$pow_t7_2247", align 8
  %"$p4_2249" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2250" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2246", %Uint256* %"$pow_t7_2247", %Uint32 %"$p4_2249")
  %"$pow_2252" = load %Uint256, %Uint256* %"$pow_call_2250", align 8
  store %Uint256 %"$pow_2252", %Uint256* %"$p_103", align 8
  %"$gasrem_2253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2254" = icmp ugt i64 1, %"$gasrem_2253"
  br i1 %"$gascmp_2254", label %"$out_of_gas_2255", label %"$have_gas_2256"

"$out_of_gas_2255":                               ; preds = %"$have_gas_2244"
  call void @_out_of_gas()
  br label %"$have_gas_2256"

"$have_gas_2256":                                 ; preds = %"$out_of_gas_2255", %"$have_gas_2244"
  %"$consume_2257" = sub i64 %"$gasrem_2253", 1
  store i64 %"$consume_2257", i64* @_gasrem, align 8
  %"$res_106" = alloca %TName_Bool*, align 8
  %"$gasrem_2258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2259" = icmp ugt i64 1, %"$gasrem_2258"
  br i1 %"$gascmp_2259", label %"$out_of_gas_2260", label %"$have_gas_2261"

"$out_of_gas_2260":                               ; preds = %"$have_gas_2256"
  call void @_out_of_gas()
  br label %"$have_gas_2261"

"$have_gas_2261":                                 ; preds = %"$out_of_gas_2260", %"$have_gas_2256"
  %"$consume_2262" = sub i64 %"$gasrem_2258", 1
  store i64 %"$consume_2262", i64* @_gasrem, align 8
  %"$ans_104" = alloca %Uint256, align 8
  %"$gasrem_2263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2264" = icmp ugt i64 1, %"$gasrem_2263"
  br i1 %"$gascmp_2264", label %"$out_of_gas_2265", label %"$have_gas_2266"

"$out_of_gas_2265":                               ; preds = %"$have_gas_2261"
  call void @_out_of_gas()
  br label %"$have_gas_2266"

"$have_gas_2266":                                 ; preds = %"$out_of_gas_2265", %"$have_gas_2261"
  %"$consume_2267" = sub i64 %"$gasrem_2263", 1
  store i64 %"$consume_2267", i64* @_gasrem, align 8
  store %Uint256 { i256 10010004501200210025202100120004500100001 }, %Uint256* %"$ans_104", align 8
  %"$gasrem_2268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2269" = icmp ugt i64 1, %"$gasrem_2268"
  br i1 %"$gascmp_2269", label %"$out_of_gas_2270", label %"$have_gas_2271"

"$out_of_gas_2270":                               ; preds = %"$have_gas_2266"
  call void @_out_of_gas()
  br label %"$have_gas_2271"

"$have_gas_2271":                                 ; preds = %"$out_of_gas_2270", %"$have_gas_2266"
  %"$consume_2272" = sub i64 %"$gasrem_2268", 1
  store i64 %"$consume_2272", i64* @_gasrem, align 8
  %"$res__105" = alloca %TName_Bool*, align 8
  %"$gasrem_2274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2275" = icmp ugt i64 16, %"$gasrem_2274"
  br i1 %"$gascmp_2275", label %"$out_of_gas_2276", label %"$have_gas_2277"

"$out_of_gas_2276":                               ; preds = %"$have_gas_2271"
  call void @_out_of_gas()
  br label %"$have_gas_2277"

"$have_gas_2277":                                 ; preds = %"$out_of_gas_2276", %"$have_gas_2271"
  %"$consume_2278" = sub i64 %"$gasrem_2274", 16
  store i64 %"$consume_2278", i64* @_gasrem, align 8
  %"$execptr_load_2279" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_103_2280" = alloca %Uint256, align 8
  %"$$p_103_2281" = load %Uint256, %Uint256* %"$p_103", align 8
  store %Uint256 %"$$p_103_2281", %Uint256* %"$eq_$p_103_2280", align 8
  %"$eq_$ans_104_2282" = alloca %Uint256, align 8
  %"$$ans_104_2283" = load %Uint256, %Uint256* %"$ans_104", align 8
  store %Uint256 %"$$ans_104_2283", %Uint256* %"$eq_$ans_104_2282", align 8
  %"$eq_call_2284" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2279", %Uint256* %"$eq_$p_103_2280", %Uint256* %"$eq_$ans_104_2282")
  store %TName_Bool* %"$eq_call_2284", %TName_Bool** %"$res__105", align 8
  %"$gasrem_2286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2287" = icmp ugt i64 1, %"$gasrem_2286"
  br i1 %"$gascmp_2287", label %"$out_of_gas_2288", label %"$have_gas_2289"

"$out_of_gas_2288":                               ; preds = %"$have_gas_2277"
  call void @_out_of_gas()
  br label %"$have_gas_2289"

"$have_gas_2289":                                 ; preds = %"$out_of_gas_2288", %"$have_gas_2277"
  %"$consume_2290" = sub i64 %"$gasrem_2286", 1
  store i64 %"$consume_2290", i64* @_gasrem, align 8
  %"$BoolUtils.andb_189" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2291" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2292" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2291", 0
  %"$BoolUtils.andb_envptr_2293" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2291", 1
  %"$$res_102_2294" = load %TName_Bool*, %TName_Bool** %"$res_102", align 8
  %"$BoolUtils.andb_call_2295" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2292"(i8* %"$BoolUtils.andb_envptr_2293", %TName_Bool* %"$$res_102_2294")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2295", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8
  %"$BoolUtils.andb_190" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_189_2296" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8
  %"$$BoolUtils.andb_189_fptr_2297" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_2296", 0
  %"$$BoolUtils.andb_189_envptr_2298" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_2296", 1
  %"$$res__105_2299" = load %TName_Bool*, %TName_Bool** %"$res__105", align 8
  %"$$BoolUtils.andb_189_call_2300" = call %TName_Bool* %"$$BoolUtils.andb_189_fptr_2297"(i8* %"$$BoolUtils.andb_189_envptr_2298", %TName_Bool* %"$$res__105_2299")
  store %TName_Bool* %"$$BoolUtils.andb_189_call_2300", %TName_Bool** %"$BoolUtils.andb_190", align 8
  %"$$BoolUtils.andb_190_2301" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_190", align 8
  store %TName_Bool* %"$$BoolUtils.andb_190_2301", %TName_Bool** %"$res_106", align 8
  %"$gasrem_2302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2303" = icmp ugt i64 1, %"$gasrem_2302"
  br i1 %"$gascmp_2303", label %"$out_of_gas_2304", label %"$have_gas_2305"

"$out_of_gas_2304":                               ; preds = %"$have_gas_2289"
  call void @_out_of_gas()
  br label %"$have_gas_2305"

"$have_gas_2305":                                 ; preds = %"$out_of_gas_2304", %"$have_gas_2289"
  %"$consume_2306" = sub i64 %"$gasrem_2302", 1
  store i64 %"$consume_2306", i64* @_gasrem, align 8
  %"$p_107" = alloca %Int256, align 8
  %"$p1_2307" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2308" = extractvalue %Uint32 %"$p1_2307", 0
  %"$valueof_2309" = zext i32 %"$valueof_2308" to i64
  %"$gaslogof_2310" = uitofp i64 %"$valueof_2309" to double
  %"$gaslogof_2311" = fadd double %"$gaslogof_2310", 1.000000e+00
  %"$gaslogof_2312" = call double @llvm.log.f64(double %"$gaslogof_2311")
  %"$gaslogof_2313" = fptoui double %"$gaslogof_2312" to i64
  %"$gaslogof_2314" = add i64 %"$gaslogof_2313", 1
  %"$gasmul_2315" = mul i64 20, %"$gaslogof_2314"
  %"$gasmul_2316" = mul i64 %"$gasmul_2315", 4
  %"$gasrem_2317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2318" = icmp ugt i64 %"$gasmul_2316", %"$gasrem_2317"
  br i1 %"$gascmp_2318", label %"$out_of_gas_2319", label %"$have_gas_2320"

"$out_of_gas_2319":                               ; preds = %"$have_gas_2305"
  call void @_out_of_gas()
  br label %"$have_gas_2320"

"$have_gas_2320":                                 ; preds = %"$out_of_gas_2319", %"$have_gas_2305"
  %"$consume_2321" = sub i64 %"$gasrem_2317", %"$gasmul_2316"
  store i64 %"$consume_2321", i64* @_gasrem, align 8
  %"$execptr_load_2322" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2323" = alloca %Int256, align 8
  %"$t8_2324" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2324", %Int256* %"$pow_t8_2323", align 8
  %"$p1_2325" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2326" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2322", %Int256* %"$pow_t8_2323", %Uint32 %"$p1_2325")
  %"$pow_2328" = load %Int256, %Int256* %"$pow_call_2326", align 8
  store %Int256 %"$pow_2328", %Int256* %"$p_107", align 8
  %"$gasrem_2329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2330" = icmp ugt i64 1, %"$gasrem_2329"
  br i1 %"$gascmp_2330", label %"$out_of_gas_2331", label %"$have_gas_2332"

"$out_of_gas_2331":                               ; preds = %"$have_gas_2320"
  call void @_out_of_gas()
  br label %"$have_gas_2332"

"$have_gas_2332":                                 ; preds = %"$out_of_gas_2331", %"$have_gas_2320"
  %"$consume_2333" = sub i64 %"$gasrem_2329", 1
  store i64 %"$consume_2333", i64* @_gasrem, align 8
  %"$res_110" = alloca %TName_Bool*, align 8
  %"$gasrem_2334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2335" = icmp ugt i64 1, %"$gasrem_2334"
  br i1 %"$gascmp_2335", label %"$out_of_gas_2336", label %"$have_gas_2337"

"$out_of_gas_2336":                               ; preds = %"$have_gas_2332"
  call void @_out_of_gas()
  br label %"$have_gas_2337"

"$have_gas_2337":                                 ; preds = %"$out_of_gas_2336", %"$have_gas_2332"
  %"$consume_2338" = sub i64 %"$gasrem_2334", 1
  store i64 %"$consume_2338", i64* @_gasrem, align 8
  %"$ans_108" = alloca %Int256, align 8
  %"$gasrem_2339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2340" = icmp ugt i64 1, %"$gasrem_2339"
  br i1 %"$gascmp_2340", label %"$out_of_gas_2341", label %"$have_gas_2342"

"$out_of_gas_2341":                               ; preds = %"$have_gas_2337"
  call void @_out_of_gas()
  br label %"$have_gas_2342"

"$have_gas_2342":                                 ; preds = %"$out_of_gas_2341", %"$have_gas_2337"
  %"$consume_2343" = sub i64 %"$gasrem_2339", 1
  store i64 %"$consume_2343", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_108", align 8
  %"$gasrem_2344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2345" = icmp ugt i64 1, %"$gasrem_2344"
  br i1 %"$gascmp_2345", label %"$out_of_gas_2346", label %"$have_gas_2347"

"$out_of_gas_2346":                               ; preds = %"$have_gas_2342"
  call void @_out_of_gas()
  br label %"$have_gas_2347"

"$have_gas_2347":                                 ; preds = %"$out_of_gas_2346", %"$have_gas_2342"
  %"$consume_2348" = sub i64 %"$gasrem_2344", 1
  store i64 %"$consume_2348", i64* @_gasrem, align 8
  %"$res__109" = alloca %TName_Bool*, align 8
  %"$gasrem_2350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2351" = icmp ugt i64 16, %"$gasrem_2350"
  br i1 %"$gascmp_2351", label %"$out_of_gas_2352", label %"$have_gas_2353"

"$out_of_gas_2352":                               ; preds = %"$have_gas_2347"
  call void @_out_of_gas()
  br label %"$have_gas_2353"

"$have_gas_2353":                                 ; preds = %"$out_of_gas_2352", %"$have_gas_2347"
  %"$consume_2354" = sub i64 %"$gasrem_2350", 16
  store i64 %"$consume_2354", i64* @_gasrem, align 8
  %"$execptr_load_2355" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_107_2356" = alloca %Int256, align 8
  %"$$p_107_2357" = load %Int256, %Int256* %"$p_107", align 8
  store %Int256 %"$$p_107_2357", %Int256* %"$eq_$p_107_2356", align 8
  %"$eq_$ans_108_2358" = alloca %Int256, align 8
  %"$$ans_108_2359" = load %Int256, %Int256* %"$ans_108", align 8
  store %Int256 %"$$ans_108_2359", %Int256* %"$eq_$ans_108_2358", align 8
  %"$eq_call_2360" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2355", %Int256* %"$eq_$p_107_2356", %Int256* %"$eq_$ans_108_2358")
  store %TName_Bool* %"$eq_call_2360", %TName_Bool** %"$res__109", align 8
  %"$gasrem_2362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2363" = icmp ugt i64 1, %"$gasrem_2362"
  br i1 %"$gascmp_2363", label %"$out_of_gas_2364", label %"$have_gas_2365"

"$out_of_gas_2364":                               ; preds = %"$have_gas_2353"
  call void @_out_of_gas()
  br label %"$have_gas_2365"

"$have_gas_2365":                                 ; preds = %"$out_of_gas_2364", %"$have_gas_2353"
  %"$consume_2366" = sub i64 %"$gasrem_2362", 1
  store i64 %"$consume_2366", i64* @_gasrem, align 8
  %"$BoolUtils.andb_191" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2367" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2368" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2367", 0
  %"$BoolUtils.andb_envptr_2369" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2367", 1
  %"$$res_106_2370" = load %TName_Bool*, %TName_Bool** %"$res_106", align 8
  %"$BoolUtils.andb_call_2371" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2368"(i8* %"$BoolUtils.andb_envptr_2369", %TName_Bool* %"$$res_106_2370")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2371", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8
  %"$BoolUtils.andb_192" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_191_2372" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8
  %"$$BoolUtils.andb_191_fptr_2373" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_2372", 0
  %"$$BoolUtils.andb_191_envptr_2374" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_2372", 1
  %"$$res__109_2375" = load %TName_Bool*, %TName_Bool** %"$res__109", align 8
  %"$$BoolUtils.andb_191_call_2376" = call %TName_Bool* %"$$BoolUtils.andb_191_fptr_2373"(i8* %"$$BoolUtils.andb_191_envptr_2374", %TName_Bool* %"$$res__109_2375")
  store %TName_Bool* %"$$BoolUtils.andb_191_call_2376", %TName_Bool** %"$BoolUtils.andb_192", align 8
  %"$$BoolUtils.andb_192_2377" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_192", align 8
  store %TName_Bool* %"$$BoolUtils.andb_192_2377", %TName_Bool** %"$res_110", align 8
  %"$gasrem_2378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2379" = icmp ugt i64 1, %"$gasrem_2378"
  br i1 %"$gascmp_2379", label %"$out_of_gas_2380", label %"$have_gas_2381"

"$out_of_gas_2380":                               ; preds = %"$have_gas_2365"
  call void @_out_of_gas()
  br label %"$have_gas_2381"

"$have_gas_2381":                                 ; preds = %"$out_of_gas_2380", %"$have_gas_2365"
  %"$consume_2382" = sub i64 %"$gasrem_2378", 1
  store i64 %"$consume_2382", i64* @_gasrem, align 8
  %"$p_111" = alloca %Int256, align 8
  %"$p2_2383" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2384" = extractvalue %Uint32 %"$p2_2383", 0
  %"$valueof_2385" = zext i32 %"$valueof_2384" to i64
  %"$gaslogof_2386" = uitofp i64 %"$valueof_2385" to double
  %"$gaslogof_2387" = fadd double %"$gaslogof_2386", 1.000000e+00
  %"$gaslogof_2388" = call double @llvm.log.f64(double %"$gaslogof_2387")
  %"$gaslogof_2389" = fptoui double %"$gaslogof_2388" to i64
  %"$gaslogof_2390" = add i64 %"$gaslogof_2389", 1
  %"$gasmul_2391" = mul i64 20, %"$gaslogof_2390"
  %"$gasmul_2392" = mul i64 %"$gasmul_2391", 4
  %"$gasrem_2393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2394" = icmp ugt i64 %"$gasmul_2392", %"$gasrem_2393"
  br i1 %"$gascmp_2394", label %"$out_of_gas_2395", label %"$have_gas_2396"

"$out_of_gas_2395":                               ; preds = %"$have_gas_2381"
  call void @_out_of_gas()
  br label %"$have_gas_2396"

"$have_gas_2396":                                 ; preds = %"$out_of_gas_2395", %"$have_gas_2381"
  %"$consume_2397" = sub i64 %"$gasrem_2393", %"$gasmul_2392"
  store i64 %"$consume_2397", i64* @_gasrem, align 8
  %"$execptr_load_2398" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2399" = alloca %Int256, align 8
  %"$t8_2400" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2400", %Int256* %"$pow_t8_2399", align 8
  %"$p2_2401" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2402" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2398", %Int256* %"$pow_t8_2399", %Uint32 %"$p2_2401")
  %"$pow_2404" = load %Int256, %Int256* %"$pow_call_2402", align 8
  store %Int256 %"$pow_2404", %Int256* %"$p_111", align 8
  %"$gasrem_2405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2406" = icmp ugt i64 1, %"$gasrem_2405"
  br i1 %"$gascmp_2406", label %"$out_of_gas_2407", label %"$have_gas_2408"

"$out_of_gas_2407":                               ; preds = %"$have_gas_2396"
  call void @_out_of_gas()
  br label %"$have_gas_2408"

"$have_gas_2408":                                 ; preds = %"$out_of_gas_2407", %"$have_gas_2396"
  %"$consume_2409" = sub i64 %"$gasrem_2405", 1
  store i64 %"$consume_2409", i64* @_gasrem, align 8
  %"$res_114" = alloca %TName_Bool*, align 8
  %"$gasrem_2410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2411" = icmp ugt i64 1, %"$gasrem_2410"
  br i1 %"$gascmp_2411", label %"$out_of_gas_2412", label %"$have_gas_2413"

"$out_of_gas_2412":                               ; preds = %"$have_gas_2408"
  call void @_out_of_gas()
  br label %"$have_gas_2413"

"$have_gas_2413":                                 ; preds = %"$out_of_gas_2412", %"$have_gas_2408"
  %"$consume_2414" = sub i64 %"$gasrem_2410", 1
  store i64 %"$consume_2414", i64* @_gasrem, align 8
  %"$ans_112" = alloca %Int256, align 8
  %"$gasrem_2415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2416" = icmp ugt i64 1, %"$gasrem_2415"
  br i1 %"$gascmp_2416", label %"$out_of_gas_2417", label %"$have_gas_2418"

"$out_of_gas_2417":                               ; preds = %"$have_gas_2413"
  call void @_out_of_gas()
  br label %"$have_gas_2418"

"$have_gas_2418":                                 ; preds = %"$out_of_gas_2417", %"$have_gas_2413"
  %"$consume_2419" = sub i64 %"$gasrem_2415", 1
  store i64 %"$consume_2419", i64* @_gasrem, align 8
  store %Int256 { i256 -10001 }, %Int256* %"$ans_112", align 8
  %"$gasrem_2420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2421" = icmp ugt i64 1, %"$gasrem_2420"
  br i1 %"$gascmp_2421", label %"$out_of_gas_2422", label %"$have_gas_2423"

"$out_of_gas_2422":                               ; preds = %"$have_gas_2418"
  call void @_out_of_gas()
  br label %"$have_gas_2423"

"$have_gas_2423":                                 ; preds = %"$out_of_gas_2422", %"$have_gas_2418"
  %"$consume_2424" = sub i64 %"$gasrem_2420", 1
  store i64 %"$consume_2424", i64* @_gasrem, align 8
  %"$res__113" = alloca %TName_Bool*, align 8
  %"$gasrem_2426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2427" = icmp ugt i64 16, %"$gasrem_2426"
  br i1 %"$gascmp_2427", label %"$out_of_gas_2428", label %"$have_gas_2429"

"$out_of_gas_2428":                               ; preds = %"$have_gas_2423"
  call void @_out_of_gas()
  br label %"$have_gas_2429"

"$have_gas_2429":                                 ; preds = %"$out_of_gas_2428", %"$have_gas_2423"
  %"$consume_2430" = sub i64 %"$gasrem_2426", 16
  store i64 %"$consume_2430", i64* @_gasrem, align 8
  %"$execptr_load_2431" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_111_2432" = alloca %Int256, align 8
  %"$$p_111_2433" = load %Int256, %Int256* %"$p_111", align 8
  store %Int256 %"$$p_111_2433", %Int256* %"$eq_$p_111_2432", align 8
  %"$eq_$ans_112_2434" = alloca %Int256, align 8
  %"$$ans_112_2435" = load %Int256, %Int256* %"$ans_112", align 8
  store %Int256 %"$$ans_112_2435", %Int256* %"$eq_$ans_112_2434", align 8
  %"$eq_call_2436" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2431", %Int256* %"$eq_$p_111_2432", %Int256* %"$eq_$ans_112_2434")
  store %TName_Bool* %"$eq_call_2436", %TName_Bool** %"$res__113", align 8
  %"$gasrem_2438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2439" = icmp ugt i64 1, %"$gasrem_2438"
  br i1 %"$gascmp_2439", label %"$out_of_gas_2440", label %"$have_gas_2441"

"$out_of_gas_2440":                               ; preds = %"$have_gas_2429"
  call void @_out_of_gas()
  br label %"$have_gas_2441"

"$have_gas_2441":                                 ; preds = %"$out_of_gas_2440", %"$have_gas_2429"
  %"$consume_2442" = sub i64 %"$gasrem_2438", 1
  store i64 %"$consume_2442", i64* @_gasrem, align 8
  %"$BoolUtils.andb_193" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2443" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2444" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2443", 0
  %"$BoolUtils.andb_envptr_2445" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2443", 1
  %"$$res_110_2446" = load %TName_Bool*, %TName_Bool** %"$res_110", align 8
  %"$BoolUtils.andb_call_2447" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2444"(i8* %"$BoolUtils.andb_envptr_2445", %TName_Bool* %"$$res_110_2446")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2447", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8
  %"$BoolUtils.andb_194" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_193_2448" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8
  %"$$BoolUtils.andb_193_fptr_2449" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2448", 0
  %"$$BoolUtils.andb_193_envptr_2450" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2448", 1
  %"$$res__113_2451" = load %TName_Bool*, %TName_Bool** %"$res__113", align 8
  %"$$BoolUtils.andb_193_call_2452" = call %TName_Bool* %"$$BoolUtils.andb_193_fptr_2449"(i8* %"$$BoolUtils.andb_193_envptr_2450", %TName_Bool* %"$$res__113_2451")
  store %TName_Bool* %"$$BoolUtils.andb_193_call_2452", %TName_Bool** %"$BoolUtils.andb_194", align 8
  %"$$BoolUtils.andb_194_2453" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_194", align 8
  store %TName_Bool* %"$$BoolUtils.andb_194_2453", %TName_Bool** %"$res_114", align 8
  %"$gasrem_2454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2455" = icmp ugt i64 1, %"$gasrem_2454"
  br i1 %"$gascmp_2455", label %"$out_of_gas_2456", label %"$have_gas_2457"

"$out_of_gas_2456":                               ; preds = %"$have_gas_2441"
  call void @_out_of_gas()
  br label %"$have_gas_2457"

"$have_gas_2457":                                 ; preds = %"$out_of_gas_2456", %"$have_gas_2441"
  %"$consume_2458" = sub i64 %"$gasrem_2454", 1
  store i64 %"$consume_2458", i64* @_gasrem, align 8
  %"$p_115" = alloca %Int256, align 8
  %"$p3_2459" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2460" = extractvalue %Uint32 %"$p3_2459", 0
  %"$valueof_2461" = zext i32 %"$valueof_2460" to i64
  %"$gaslogof_2462" = uitofp i64 %"$valueof_2461" to double
  %"$gaslogof_2463" = fadd double %"$gaslogof_2462", 1.000000e+00
  %"$gaslogof_2464" = call double @llvm.log.f64(double %"$gaslogof_2463")
  %"$gaslogof_2465" = fptoui double %"$gaslogof_2464" to i64
  %"$gaslogof_2466" = add i64 %"$gaslogof_2465", 1
  %"$gasmul_2467" = mul i64 20, %"$gaslogof_2466"
  %"$gasmul_2468" = mul i64 %"$gasmul_2467", 4
  %"$gasrem_2469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2470" = icmp ugt i64 %"$gasmul_2468", %"$gasrem_2469"
  br i1 %"$gascmp_2470", label %"$out_of_gas_2471", label %"$have_gas_2472"

"$out_of_gas_2471":                               ; preds = %"$have_gas_2457"
  call void @_out_of_gas()
  br label %"$have_gas_2472"

"$have_gas_2472":                                 ; preds = %"$out_of_gas_2471", %"$have_gas_2457"
  %"$consume_2473" = sub i64 %"$gasrem_2469", %"$gasmul_2468"
  store i64 %"$consume_2473", i64* @_gasrem, align 8
  %"$execptr_load_2474" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2475" = alloca %Int256, align 8
  %"$t8_2476" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2476", %Int256* %"$pow_t8_2475", align 8
  %"$p3_2477" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2478" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2474", %Int256* %"$pow_t8_2475", %Uint32 %"$p3_2477")
  %"$pow_2480" = load %Int256, %Int256* %"$pow_call_2478", align 8
  store %Int256 %"$pow_2480", %Int256* %"$p_115", align 8
  %"$gasrem_2481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2482" = icmp ugt i64 1, %"$gasrem_2481"
  br i1 %"$gascmp_2482", label %"$out_of_gas_2483", label %"$have_gas_2484"

"$out_of_gas_2483":                               ; preds = %"$have_gas_2472"
  call void @_out_of_gas()
  br label %"$have_gas_2484"

"$have_gas_2484":                                 ; preds = %"$out_of_gas_2483", %"$have_gas_2472"
  %"$consume_2485" = sub i64 %"$gasrem_2481", 1
  store i64 %"$consume_2485", i64* @_gasrem, align 8
  %"$res_118" = alloca %TName_Bool*, align 8
  %"$gasrem_2486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2487" = icmp ugt i64 1, %"$gasrem_2486"
  br i1 %"$gascmp_2487", label %"$out_of_gas_2488", label %"$have_gas_2489"

"$out_of_gas_2488":                               ; preds = %"$have_gas_2484"
  call void @_out_of_gas()
  br label %"$have_gas_2489"

"$have_gas_2489":                                 ; preds = %"$out_of_gas_2488", %"$have_gas_2484"
  %"$consume_2490" = sub i64 %"$gasrem_2486", 1
  store i64 %"$consume_2490", i64* @_gasrem, align 8
  %"$ans_116" = alloca %Int256, align 8
  %"$gasrem_2491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2492" = icmp ugt i64 1, %"$gasrem_2491"
  br i1 %"$gascmp_2492", label %"$out_of_gas_2493", label %"$have_gas_2494"

"$out_of_gas_2493":                               ; preds = %"$have_gas_2489"
  call void @_out_of_gas()
  br label %"$have_gas_2494"

"$have_gas_2494":                                 ; preds = %"$out_of_gas_2493", %"$have_gas_2489"
  %"$consume_2495" = sub i64 %"$gasrem_2491", 1
  store i64 %"$consume_2495", i64* @_gasrem, align 8
  store %Int256 { i256 10004000600040001 }, %Int256* %"$ans_116", align 8
  %"$gasrem_2496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2497" = icmp ugt i64 1, %"$gasrem_2496"
  br i1 %"$gascmp_2497", label %"$out_of_gas_2498", label %"$have_gas_2499"

"$out_of_gas_2498":                               ; preds = %"$have_gas_2494"
  call void @_out_of_gas()
  br label %"$have_gas_2499"

"$have_gas_2499":                                 ; preds = %"$out_of_gas_2498", %"$have_gas_2494"
  %"$consume_2500" = sub i64 %"$gasrem_2496", 1
  store i64 %"$consume_2500", i64* @_gasrem, align 8
  %"$res__117" = alloca %TName_Bool*, align 8
  %"$gasrem_2502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2503" = icmp ugt i64 16, %"$gasrem_2502"
  br i1 %"$gascmp_2503", label %"$out_of_gas_2504", label %"$have_gas_2505"

"$out_of_gas_2504":                               ; preds = %"$have_gas_2499"
  call void @_out_of_gas()
  br label %"$have_gas_2505"

"$have_gas_2505":                                 ; preds = %"$out_of_gas_2504", %"$have_gas_2499"
  %"$consume_2506" = sub i64 %"$gasrem_2502", 16
  store i64 %"$consume_2506", i64* @_gasrem, align 8
  %"$execptr_load_2507" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_115_2508" = alloca %Int256, align 8
  %"$$p_115_2509" = load %Int256, %Int256* %"$p_115", align 8
  store %Int256 %"$$p_115_2509", %Int256* %"$eq_$p_115_2508", align 8
  %"$eq_$ans_116_2510" = alloca %Int256, align 8
  %"$$ans_116_2511" = load %Int256, %Int256* %"$ans_116", align 8
  store %Int256 %"$$ans_116_2511", %Int256* %"$eq_$ans_116_2510", align 8
  %"$eq_call_2512" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2507", %Int256* %"$eq_$p_115_2508", %Int256* %"$eq_$ans_116_2510")
  store %TName_Bool* %"$eq_call_2512", %TName_Bool** %"$res__117", align 8
  %"$gasrem_2514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2515" = icmp ugt i64 1, %"$gasrem_2514"
  br i1 %"$gascmp_2515", label %"$out_of_gas_2516", label %"$have_gas_2517"

"$out_of_gas_2516":                               ; preds = %"$have_gas_2505"
  call void @_out_of_gas()
  br label %"$have_gas_2517"

"$have_gas_2517":                                 ; preds = %"$out_of_gas_2516", %"$have_gas_2505"
  %"$consume_2518" = sub i64 %"$gasrem_2514", 1
  store i64 %"$consume_2518", i64* @_gasrem, align 8
  %"$BoolUtils.andb_195" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2519" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2520" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2519", 0
  %"$BoolUtils.andb_envptr_2521" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2519", 1
  %"$$res_114_2522" = load %TName_Bool*, %TName_Bool** %"$res_114", align 8
  %"$BoolUtils.andb_call_2523" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2520"(i8* %"$BoolUtils.andb_envptr_2521", %TName_Bool* %"$$res_114_2522")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2523", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8
  %"$BoolUtils.andb_196" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_195_2524" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8
  %"$$BoolUtils.andb_195_fptr_2525" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2524", 0
  %"$$BoolUtils.andb_195_envptr_2526" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2524", 1
  %"$$res__117_2527" = load %TName_Bool*, %TName_Bool** %"$res__117", align 8
  %"$$BoolUtils.andb_195_call_2528" = call %TName_Bool* %"$$BoolUtils.andb_195_fptr_2525"(i8* %"$$BoolUtils.andb_195_envptr_2526", %TName_Bool* %"$$res__117_2527")
  store %TName_Bool* %"$$BoolUtils.andb_195_call_2528", %TName_Bool** %"$BoolUtils.andb_196", align 8
  %"$$BoolUtils.andb_196_2529" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_196", align 8
  store %TName_Bool* %"$$BoolUtils.andb_196_2529", %TName_Bool** %"$res_118", align 8
  %"$gasrem_2530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2531" = icmp ugt i64 1, %"$gasrem_2530"
  br i1 %"$gascmp_2531", label %"$out_of_gas_2532", label %"$have_gas_2533"

"$out_of_gas_2532":                               ; preds = %"$have_gas_2517"
  call void @_out_of_gas()
  br label %"$have_gas_2533"

"$have_gas_2533":                                 ; preds = %"$out_of_gas_2532", %"$have_gas_2517"
  %"$consume_2534" = sub i64 %"$gasrem_2530", 1
  store i64 %"$consume_2534", i64* @_gasrem, align 8
  %"$p_119" = alloca %Int256, align 8
  %"$p4_2535" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2536" = extractvalue %Uint32 %"$p4_2535", 0
  %"$valueof_2537" = zext i32 %"$valueof_2536" to i64
  %"$gaslogof_2538" = uitofp i64 %"$valueof_2537" to double
  %"$gaslogof_2539" = fadd double %"$gaslogof_2538", 1.000000e+00
  %"$gaslogof_2540" = call double @llvm.log.f64(double %"$gaslogof_2539")
  %"$gaslogof_2541" = fptoui double %"$gaslogof_2540" to i64
  %"$gaslogof_2542" = add i64 %"$gaslogof_2541", 1
  %"$gasmul_2543" = mul i64 20, %"$gaslogof_2542"
  %"$gasmul_2544" = mul i64 %"$gasmul_2543", 4
  %"$gasrem_2545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2546" = icmp ugt i64 %"$gasmul_2544", %"$gasrem_2545"
  br i1 %"$gascmp_2546", label %"$out_of_gas_2547", label %"$have_gas_2548"

"$out_of_gas_2547":                               ; preds = %"$have_gas_2533"
  call void @_out_of_gas()
  br label %"$have_gas_2548"

"$have_gas_2548":                                 ; preds = %"$out_of_gas_2547", %"$have_gas_2533"
  %"$consume_2549" = sub i64 %"$gasrem_2545", %"$gasmul_2544"
  store i64 %"$consume_2549", i64* @_gasrem, align 8
  %"$execptr_load_2550" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2551" = alloca %Int256, align 8
  %"$t8_2552" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2552", %Int256* %"$pow_t8_2551", align 8
  %"$p4_2553" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2554" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2550", %Int256* %"$pow_t8_2551", %Uint32 %"$p4_2553")
  %"$pow_2556" = load %Int256, %Int256* %"$pow_call_2554", align 8
  store %Int256 %"$pow_2556", %Int256* %"$p_119", align 8
  %"$gasrem_2557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2558" = icmp ugt i64 1, %"$gasrem_2557"
  br i1 %"$gascmp_2558", label %"$out_of_gas_2559", label %"$have_gas_2560"

"$out_of_gas_2559":                               ; preds = %"$have_gas_2548"
  call void @_out_of_gas()
  br label %"$have_gas_2560"

"$have_gas_2560":                                 ; preds = %"$out_of_gas_2559", %"$have_gas_2548"
  %"$consume_2561" = sub i64 %"$gasrem_2557", 1
  store i64 %"$consume_2561", i64* @_gasrem, align 8
  %"$res_122" = alloca %TName_Bool*, align 8
  %"$gasrem_2562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2563" = icmp ugt i64 1, %"$gasrem_2562"
  br i1 %"$gascmp_2563", label %"$out_of_gas_2564", label %"$have_gas_2565"

"$out_of_gas_2564":                               ; preds = %"$have_gas_2560"
  call void @_out_of_gas()
  br label %"$have_gas_2565"

"$have_gas_2565":                                 ; preds = %"$out_of_gas_2564", %"$have_gas_2560"
  %"$consume_2566" = sub i64 %"$gasrem_2562", 1
  store i64 %"$consume_2566", i64* @_gasrem, align 8
  %"$ans_120" = alloca %Int256, align 8
  %"$gasrem_2567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2568" = icmp ugt i64 1, %"$gasrem_2567"
  br i1 %"$gascmp_2568", label %"$out_of_gas_2569", label %"$have_gas_2570"

"$out_of_gas_2569":                               ; preds = %"$have_gas_2565"
  call void @_out_of_gas()
  br label %"$have_gas_2570"

"$have_gas_2570":                                 ; preds = %"$out_of_gas_2569", %"$have_gas_2565"
  %"$consume_2571" = sub i64 %"$gasrem_2567", 1
  store i64 %"$consume_2571", i64* @_gasrem, align 8
  store %Int256 { i256 10010004501200210025202100120004500100001 }, %Int256* %"$ans_120", align 8
  %"$gasrem_2572" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2573" = icmp ugt i64 1, %"$gasrem_2572"
  br i1 %"$gascmp_2573", label %"$out_of_gas_2574", label %"$have_gas_2575"

"$out_of_gas_2574":                               ; preds = %"$have_gas_2570"
  call void @_out_of_gas()
  br label %"$have_gas_2575"

"$have_gas_2575":                                 ; preds = %"$out_of_gas_2574", %"$have_gas_2570"
  %"$consume_2576" = sub i64 %"$gasrem_2572", 1
  store i64 %"$consume_2576", i64* @_gasrem, align 8
  %"$res__121" = alloca %TName_Bool*, align 8
  %"$gasrem_2578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2579" = icmp ugt i64 16, %"$gasrem_2578"
  br i1 %"$gascmp_2579", label %"$out_of_gas_2580", label %"$have_gas_2581"

"$out_of_gas_2580":                               ; preds = %"$have_gas_2575"
  call void @_out_of_gas()
  br label %"$have_gas_2581"

"$have_gas_2581":                                 ; preds = %"$out_of_gas_2580", %"$have_gas_2575"
  %"$consume_2582" = sub i64 %"$gasrem_2578", 16
  store i64 %"$consume_2582", i64* @_gasrem, align 8
  %"$execptr_load_2583" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_119_2584" = alloca %Int256, align 8
  %"$$p_119_2585" = load %Int256, %Int256* %"$p_119", align 8
  store %Int256 %"$$p_119_2585", %Int256* %"$eq_$p_119_2584", align 8
  %"$eq_$ans_120_2586" = alloca %Int256, align 8
  %"$$ans_120_2587" = load %Int256, %Int256* %"$ans_120", align 8
  store %Int256 %"$$ans_120_2587", %Int256* %"$eq_$ans_120_2586", align 8
  %"$eq_call_2588" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2583", %Int256* %"$eq_$p_119_2584", %Int256* %"$eq_$ans_120_2586")
  store %TName_Bool* %"$eq_call_2588", %TName_Bool** %"$res__121", align 8
  %"$gasrem_2590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2591" = icmp ugt i64 1, %"$gasrem_2590"
  br i1 %"$gascmp_2591", label %"$out_of_gas_2592", label %"$have_gas_2593"

"$out_of_gas_2592":                               ; preds = %"$have_gas_2581"
  call void @_out_of_gas()
  br label %"$have_gas_2593"

"$have_gas_2593":                                 ; preds = %"$out_of_gas_2592", %"$have_gas_2581"
  %"$consume_2594" = sub i64 %"$gasrem_2590", 1
  store i64 %"$consume_2594", i64* @_gasrem, align 8
  %"$BoolUtils.andb_197" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2595" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2596" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2595", 0
  %"$BoolUtils.andb_envptr_2597" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2595", 1
  %"$$res_118_2598" = load %TName_Bool*, %TName_Bool** %"$res_118", align 8
  %"$BoolUtils.andb_call_2599" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2596"(i8* %"$BoolUtils.andb_envptr_2597", %TName_Bool* %"$$res_118_2598")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2599", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8
  %"$BoolUtils.andb_198" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_197_2600" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8
  %"$$BoolUtils.andb_197_fptr_2601" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2600", 0
  %"$$BoolUtils.andb_197_envptr_2602" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2600", 1
  %"$$res__121_2603" = load %TName_Bool*, %TName_Bool** %"$res__121", align 8
  %"$$BoolUtils.andb_197_call_2604" = call %TName_Bool* %"$$BoolUtils.andb_197_fptr_2601"(i8* %"$$BoolUtils.andb_197_envptr_2602", %TName_Bool* %"$$res__121_2603")
  store %TName_Bool* %"$$BoolUtils.andb_197_call_2604", %TName_Bool** %"$BoolUtils.andb_198", align 8
  %"$$BoolUtils.andb_198_2605" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_198", align 8
  store %TName_Bool* %"$$BoolUtils.andb_198_2605", %TName_Bool** %"$res_122", align 8
  %"$gasrem_2606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2607" = icmp ugt i64 1, %"$gasrem_2606"
  br i1 %"$gascmp_2607", label %"$out_of_gas_2608", label %"$have_gas_2609"

"$out_of_gas_2608":                               ; preds = %"$have_gas_2593"
  call void @_out_of_gas()
  br label %"$have_gas_2609"

"$have_gas_2609":                                 ; preds = %"$out_of_gas_2608", %"$have_gas_2593"
  %"$consume_2610" = sub i64 %"$gasrem_2606", 1
  store i64 %"$consume_2610", i64* @_gasrem, align 8
  %"$p_123" = alloca %Int256, align 8
  %"$p1_2611" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2612" = extractvalue %Uint32 %"$p1_2611", 0
  %"$valueof_2613" = zext i32 %"$valueof_2612" to i64
  %"$gaslogof_2614" = uitofp i64 %"$valueof_2613" to double
  %"$gaslogof_2615" = fadd double %"$gaslogof_2614", 1.000000e+00
  %"$gaslogof_2616" = call double @llvm.log.f64(double %"$gaslogof_2615")
  %"$gaslogof_2617" = fptoui double %"$gaslogof_2616" to i64
  %"$gaslogof_2618" = add i64 %"$gaslogof_2617", 1
  %"$gasmul_2619" = mul i64 20, %"$gaslogof_2618"
  %"$gasmul_2620" = mul i64 %"$gasmul_2619", 4
  %"$gasrem_2621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2622" = icmp ugt i64 %"$gasmul_2620", %"$gasrem_2621"
  br i1 %"$gascmp_2622", label %"$out_of_gas_2623", label %"$have_gas_2624"

"$out_of_gas_2623":                               ; preds = %"$have_gas_2609"
  call void @_out_of_gas()
  br label %"$have_gas_2624"

"$have_gas_2624":                                 ; preds = %"$out_of_gas_2623", %"$have_gas_2609"
  %"$consume_2625" = sub i64 %"$gasrem_2621", %"$gasmul_2620"
  store i64 %"$consume_2625", i64* @_gasrem, align 8
  %"$execptr_load_2626" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2627" = alloca %Int256, align 8
  %"$t9_2628" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2628", %Int256* %"$pow_t9_2627", align 8
  %"$p1_2629" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2630" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2626", %Int256* %"$pow_t9_2627", %Uint32 %"$p1_2629")
  %"$pow_2632" = load %Int256, %Int256* %"$pow_call_2630", align 8
  store %Int256 %"$pow_2632", %Int256* %"$p_123", align 8
  %"$gasrem_2633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2634" = icmp ugt i64 1, %"$gasrem_2633"
  br i1 %"$gascmp_2634", label %"$out_of_gas_2635", label %"$have_gas_2636"

"$out_of_gas_2635":                               ; preds = %"$have_gas_2624"
  call void @_out_of_gas()
  br label %"$have_gas_2636"

"$have_gas_2636":                                 ; preds = %"$out_of_gas_2635", %"$have_gas_2624"
  %"$consume_2637" = sub i64 %"$gasrem_2633", 1
  store i64 %"$consume_2637", i64* @_gasrem, align 8
  %"$res_126" = alloca %TName_Bool*, align 8
  %"$gasrem_2638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2639" = icmp ugt i64 1, %"$gasrem_2638"
  br i1 %"$gascmp_2639", label %"$out_of_gas_2640", label %"$have_gas_2641"

"$out_of_gas_2640":                               ; preds = %"$have_gas_2636"
  call void @_out_of_gas()
  br label %"$have_gas_2641"

"$have_gas_2641":                                 ; preds = %"$out_of_gas_2640", %"$have_gas_2636"
  %"$consume_2642" = sub i64 %"$gasrem_2638", 1
  store i64 %"$consume_2642", i64* @_gasrem, align 8
  %"$ans_124" = alloca %Int256, align 8
  %"$gasrem_2643" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2644" = icmp ugt i64 1, %"$gasrem_2643"
  br i1 %"$gascmp_2644", label %"$out_of_gas_2645", label %"$have_gas_2646"

"$out_of_gas_2645":                               ; preds = %"$have_gas_2641"
  call void @_out_of_gas()
  br label %"$have_gas_2646"

"$have_gas_2646":                                 ; preds = %"$out_of_gas_2645", %"$have_gas_2641"
  %"$consume_2647" = sub i64 %"$gasrem_2643", 1
  store i64 %"$consume_2647", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_124", align 8
  %"$gasrem_2648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2649" = icmp ugt i64 1, %"$gasrem_2648"
  br i1 %"$gascmp_2649", label %"$out_of_gas_2650", label %"$have_gas_2651"

"$out_of_gas_2650":                               ; preds = %"$have_gas_2646"
  call void @_out_of_gas()
  br label %"$have_gas_2651"

"$have_gas_2651":                                 ; preds = %"$out_of_gas_2650", %"$have_gas_2646"
  %"$consume_2652" = sub i64 %"$gasrem_2648", 1
  store i64 %"$consume_2652", i64* @_gasrem, align 8
  %"$res__125" = alloca %TName_Bool*, align 8
  %"$gasrem_2654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2655" = icmp ugt i64 16, %"$gasrem_2654"
  br i1 %"$gascmp_2655", label %"$out_of_gas_2656", label %"$have_gas_2657"

"$out_of_gas_2656":                               ; preds = %"$have_gas_2651"
  call void @_out_of_gas()
  br label %"$have_gas_2657"

"$have_gas_2657":                                 ; preds = %"$out_of_gas_2656", %"$have_gas_2651"
  %"$consume_2658" = sub i64 %"$gasrem_2654", 16
  store i64 %"$consume_2658", i64* @_gasrem, align 8
  %"$execptr_load_2659" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_123_2660" = alloca %Int256, align 8
  %"$$p_123_2661" = load %Int256, %Int256* %"$p_123", align 8
  store %Int256 %"$$p_123_2661", %Int256* %"$eq_$p_123_2660", align 8
  %"$eq_$ans_124_2662" = alloca %Int256, align 8
  %"$$ans_124_2663" = load %Int256, %Int256* %"$ans_124", align 8
  store %Int256 %"$$ans_124_2663", %Int256* %"$eq_$ans_124_2662", align 8
  %"$eq_call_2664" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2659", %Int256* %"$eq_$p_123_2660", %Int256* %"$eq_$ans_124_2662")
  store %TName_Bool* %"$eq_call_2664", %TName_Bool** %"$res__125", align 8
  %"$gasrem_2666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2667" = icmp ugt i64 1, %"$gasrem_2666"
  br i1 %"$gascmp_2667", label %"$out_of_gas_2668", label %"$have_gas_2669"

"$out_of_gas_2668":                               ; preds = %"$have_gas_2657"
  call void @_out_of_gas()
  br label %"$have_gas_2669"

"$have_gas_2669":                                 ; preds = %"$out_of_gas_2668", %"$have_gas_2657"
  %"$consume_2670" = sub i64 %"$gasrem_2666", 1
  store i64 %"$consume_2670", i64* @_gasrem, align 8
  %"$BoolUtils.andb_199" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2671" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2672" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2671", 0
  %"$BoolUtils.andb_envptr_2673" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2671", 1
  %"$$res_122_2674" = load %TName_Bool*, %TName_Bool** %"$res_122", align 8
  %"$BoolUtils.andb_call_2675" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2672"(i8* %"$BoolUtils.andb_envptr_2673", %TName_Bool* %"$$res_122_2674")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2675", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8
  %"$BoolUtils.andb_200" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_199_2676" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8
  %"$$BoolUtils.andb_199_fptr_2677" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2676", 0
  %"$$BoolUtils.andb_199_envptr_2678" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2676", 1
  %"$$res__125_2679" = load %TName_Bool*, %TName_Bool** %"$res__125", align 8
  %"$$BoolUtils.andb_199_call_2680" = call %TName_Bool* %"$$BoolUtils.andb_199_fptr_2677"(i8* %"$$BoolUtils.andb_199_envptr_2678", %TName_Bool* %"$$res__125_2679")
  store %TName_Bool* %"$$BoolUtils.andb_199_call_2680", %TName_Bool** %"$BoolUtils.andb_200", align 8
  %"$$BoolUtils.andb_200_2681" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_200", align 8
  store %TName_Bool* %"$$BoolUtils.andb_200_2681", %TName_Bool** %"$res_126", align 8
  %"$gasrem_2682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2683" = icmp ugt i64 1, %"$gasrem_2682"
  br i1 %"$gascmp_2683", label %"$out_of_gas_2684", label %"$have_gas_2685"

"$out_of_gas_2684":                               ; preds = %"$have_gas_2669"
  call void @_out_of_gas()
  br label %"$have_gas_2685"

"$have_gas_2685":                                 ; preds = %"$out_of_gas_2684", %"$have_gas_2669"
  %"$consume_2686" = sub i64 %"$gasrem_2682", 1
  store i64 %"$consume_2686", i64* @_gasrem, align 8
  %"$p_127" = alloca %Int256, align 8
  %"$p2_2687" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2688" = extractvalue %Uint32 %"$p2_2687", 0
  %"$valueof_2689" = zext i32 %"$valueof_2688" to i64
  %"$gaslogof_2690" = uitofp i64 %"$valueof_2689" to double
  %"$gaslogof_2691" = fadd double %"$gaslogof_2690", 1.000000e+00
  %"$gaslogof_2692" = call double @llvm.log.f64(double %"$gaslogof_2691")
  %"$gaslogof_2693" = fptoui double %"$gaslogof_2692" to i64
  %"$gaslogof_2694" = add i64 %"$gaslogof_2693", 1
  %"$gasmul_2695" = mul i64 20, %"$gaslogof_2694"
  %"$gasmul_2696" = mul i64 %"$gasmul_2695", 4
  %"$gasrem_2697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2698" = icmp ugt i64 %"$gasmul_2696", %"$gasrem_2697"
  br i1 %"$gascmp_2698", label %"$out_of_gas_2699", label %"$have_gas_2700"

"$out_of_gas_2699":                               ; preds = %"$have_gas_2685"
  call void @_out_of_gas()
  br label %"$have_gas_2700"

"$have_gas_2700":                                 ; preds = %"$out_of_gas_2699", %"$have_gas_2685"
  %"$consume_2701" = sub i64 %"$gasrem_2697", %"$gasmul_2696"
  store i64 %"$consume_2701", i64* @_gasrem, align 8
  %"$execptr_load_2702" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2703" = alloca %Int256, align 8
  %"$t9_2704" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2704", %Int256* %"$pow_t9_2703", align 8
  %"$p2_2705" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2706" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2702", %Int256* %"$pow_t9_2703", %Uint32 %"$p2_2705")
  %"$pow_2708" = load %Int256, %Int256* %"$pow_call_2706", align 8
  store %Int256 %"$pow_2708", %Int256* %"$p_127", align 8
  %"$gasrem_2709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2710" = icmp ugt i64 1, %"$gasrem_2709"
  br i1 %"$gascmp_2710", label %"$out_of_gas_2711", label %"$have_gas_2712"

"$out_of_gas_2711":                               ; preds = %"$have_gas_2700"
  call void @_out_of_gas()
  br label %"$have_gas_2712"

"$have_gas_2712":                                 ; preds = %"$out_of_gas_2711", %"$have_gas_2700"
  %"$consume_2713" = sub i64 %"$gasrem_2709", 1
  store i64 %"$consume_2713", i64* @_gasrem, align 8
  %"$res_130" = alloca %TName_Bool*, align 8
  %"$gasrem_2714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2715" = icmp ugt i64 1, %"$gasrem_2714"
  br i1 %"$gascmp_2715", label %"$out_of_gas_2716", label %"$have_gas_2717"

"$out_of_gas_2716":                               ; preds = %"$have_gas_2712"
  call void @_out_of_gas()
  br label %"$have_gas_2717"

"$have_gas_2717":                                 ; preds = %"$out_of_gas_2716", %"$have_gas_2712"
  %"$consume_2718" = sub i64 %"$gasrem_2714", 1
  store i64 %"$consume_2718", i64* @_gasrem, align 8
  %"$ans_128" = alloca %Int256, align 8
  %"$gasrem_2719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2720" = icmp ugt i64 1, %"$gasrem_2719"
  br i1 %"$gascmp_2720", label %"$out_of_gas_2721", label %"$have_gas_2722"

"$out_of_gas_2721":                               ; preds = %"$have_gas_2717"
  call void @_out_of_gas()
  br label %"$have_gas_2722"

"$have_gas_2722":                                 ; preds = %"$out_of_gas_2721", %"$have_gas_2717"
  %"$consume_2723" = sub i64 %"$gasrem_2719", 1
  store i64 %"$consume_2723", i64* @_gasrem, align 8
  store %Int256 { i256 10002 }, %Int256* %"$ans_128", align 8
  %"$gasrem_2724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2725" = icmp ugt i64 1, %"$gasrem_2724"
  br i1 %"$gascmp_2725", label %"$out_of_gas_2726", label %"$have_gas_2727"

"$out_of_gas_2726":                               ; preds = %"$have_gas_2722"
  call void @_out_of_gas()
  br label %"$have_gas_2727"

"$have_gas_2727":                                 ; preds = %"$out_of_gas_2726", %"$have_gas_2722"
  %"$consume_2728" = sub i64 %"$gasrem_2724", 1
  store i64 %"$consume_2728", i64* @_gasrem, align 8
  %"$res__129" = alloca %TName_Bool*, align 8
  %"$gasrem_2730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2731" = icmp ugt i64 16, %"$gasrem_2730"
  br i1 %"$gascmp_2731", label %"$out_of_gas_2732", label %"$have_gas_2733"

"$out_of_gas_2732":                               ; preds = %"$have_gas_2727"
  call void @_out_of_gas()
  br label %"$have_gas_2733"

"$have_gas_2733":                                 ; preds = %"$out_of_gas_2732", %"$have_gas_2727"
  %"$consume_2734" = sub i64 %"$gasrem_2730", 16
  store i64 %"$consume_2734", i64* @_gasrem, align 8
  %"$execptr_load_2735" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_127_2736" = alloca %Int256, align 8
  %"$$p_127_2737" = load %Int256, %Int256* %"$p_127", align 8
  store %Int256 %"$$p_127_2737", %Int256* %"$eq_$p_127_2736", align 8
  %"$eq_$ans_128_2738" = alloca %Int256, align 8
  %"$$ans_128_2739" = load %Int256, %Int256* %"$ans_128", align 8
  store %Int256 %"$$ans_128_2739", %Int256* %"$eq_$ans_128_2738", align 8
  %"$eq_call_2740" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2735", %Int256* %"$eq_$p_127_2736", %Int256* %"$eq_$ans_128_2738")
  store %TName_Bool* %"$eq_call_2740", %TName_Bool** %"$res__129", align 8
  %"$gasrem_2742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2743" = icmp ugt i64 1, %"$gasrem_2742"
  br i1 %"$gascmp_2743", label %"$out_of_gas_2744", label %"$have_gas_2745"

"$out_of_gas_2744":                               ; preds = %"$have_gas_2733"
  call void @_out_of_gas()
  br label %"$have_gas_2745"

"$have_gas_2745":                                 ; preds = %"$out_of_gas_2744", %"$have_gas_2733"
  %"$consume_2746" = sub i64 %"$gasrem_2742", 1
  store i64 %"$consume_2746", i64* @_gasrem, align 8
  %"$BoolUtils.andb_201" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2747" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2748" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2747", 0
  %"$BoolUtils.andb_envptr_2749" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2747", 1
  %"$$res_126_2750" = load %TName_Bool*, %TName_Bool** %"$res_126", align 8
  %"$BoolUtils.andb_call_2751" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2748"(i8* %"$BoolUtils.andb_envptr_2749", %TName_Bool* %"$$res_126_2750")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2751", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_201", align 8
  %"$BoolUtils.andb_202" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_201_2752" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_201", align 8
  %"$$BoolUtils.andb_201_fptr_2753" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_201_2752", 0
  %"$$BoolUtils.andb_201_envptr_2754" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_201_2752", 1
  %"$$res__129_2755" = load %TName_Bool*, %TName_Bool** %"$res__129", align 8
  %"$$BoolUtils.andb_201_call_2756" = call %TName_Bool* %"$$BoolUtils.andb_201_fptr_2753"(i8* %"$$BoolUtils.andb_201_envptr_2754", %TName_Bool* %"$$res__129_2755")
  store %TName_Bool* %"$$BoolUtils.andb_201_call_2756", %TName_Bool** %"$BoolUtils.andb_202", align 8
  %"$$BoolUtils.andb_202_2757" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_202", align 8
  store %TName_Bool* %"$$BoolUtils.andb_202_2757", %TName_Bool** %"$res_130", align 8
  %"$gasrem_2758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2759" = icmp ugt i64 1, %"$gasrem_2758"
  br i1 %"$gascmp_2759", label %"$out_of_gas_2760", label %"$have_gas_2761"

"$out_of_gas_2760":                               ; preds = %"$have_gas_2745"
  call void @_out_of_gas()
  br label %"$have_gas_2761"

"$have_gas_2761":                                 ; preds = %"$out_of_gas_2760", %"$have_gas_2745"
  %"$consume_2762" = sub i64 %"$gasrem_2758", 1
  store i64 %"$consume_2762", i64* @_gasrem, align 8
  %"$p_131" = alloca %Int256, align 8
  %"$p3_2763" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2764" = extractvalue %Uint32 %"$p3_2763", 0
  %"$valueof_2765" = zext i32 %"$valueof_2764" to i64
  %"$gaslogof_2766" = uitofp i64 %"$valueof_2765" to double
  %"$gaslogof_2767" = fadd double %"$gaslogof_2766", 1.000000e+00
  %"$gaslogof_2768" = call double @llvm.log.f64(double %"$gaslogof_2767")
  %"$gaslogof_2769" = fptoui double %"$gaslogof_2768" to i64
  %"$gaslogof_2770" = add i64 %"$gaslogof_2769", 1
  %"$gasmul_2771" = mul i64 20, %"$gaslogof_2770"
  %"$gasmul_2772" = mul i64 %"$gasmul_2771", 4
  %"$gasrem_2773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2774" = icmp ugt i64 %"$gasmul_2772", %"$gasrem_2773"
  br i1 %"$gascmp_2774", label %"$out_of_gas_2775", label %"$have_gas_2776"

"$out_of_gas_2775":                               ; preds = %"$have_gas_2761"
  call void @_out_of_gas()
  br label %"$have_gas_2776"

"$have_gas_2776":                                 ; preds = %"$out_of_gas_2775", %"$have_gas_2761"
  %"$consume_2777" = sub i64 %"$gasrem_2773", %"$gasmul_2772"
  store i64 %"$consume_2777", i64* @_gasrem, align 8
  %"$execptr_load_2778" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2779" = alloca %Int256, align 8
  %"$t9_2780" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2780", %Int256* %"$pow_t9_2779", align 8
  %"$p3_2781" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2782" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2778", %Int256* %"$pow_t9_2779", %Uint32 %"$p3_2781")
  %"$pow_2784" = load %Int256, %Int256* %"$pow_call_2782", align 8
  store %Int256 %"$pow_2784", %Int256* %"$p_131", align 8
  %"$gasrem_2785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2786" = icmp ugt i64 1, %"$gasrem_2785"
  br i1 %"$gascmp_2786", label %"$out_of_gas_2787", label %"$have_gas_2788"

"$out_of_gas_2787":                               ; preds = %"$have_gas_2776"
  call void @_out_of_gas()
  br label %"$have_gas_2788"

"$have_gas_2788":                                 ; preds = %"$out_of_gas_2787", %"$have_gas_2776"
  %"$consume_2789" = sub i64 %"$gasrem_2785", 1
  store i64 %"$consume_2789", i64* @_gasrem, align 8
  %"$res_134" = alloca %TName_Bool*, align 8
  %"$gasrem_2790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2791" = icmp ugt i64 1, %"$gasrem_2790"
  br i1 %"$gascmp_2791", label %"$out_of_gas_2792", label %"$have_gas_2793"

"$out_of_gas_2792":                               ; preds = %"$have_gas_2788"
  call void @_out_of_gas()
  br label %"$have_gas_2793"

"$have_gas_2793":                                 ; preds = %"$out_of_gas_2792", %"$have_gas_2788"
  %"$consume_2794" = sub i64 %"$gasrem_2790", 1
  store i64 %"$consume_2794", i64* @_gasrem, align 8
  %"$ans_132" = alloca %Int256, align 8
  %"$gasrem_2795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2796" = icmp ugt i64 1, %"$gasrem_2795"
  br i1 %"$gascmp_2796", label %"$out_of_gas_2797", label %"$have_gas_2798"

"$out_of_gas_2797":                               ; preds = %"$have_gas_2793"
  call void @_out_of_gas()
  br label %"$have_gas_2798"

"$have_gas_2798":                                 ; preds = %"$out_of_gas_2797", %"$have_gas_2793"
  %"$consume_2799" = sub i64 %"$gasrem_2795", 1
  store i64 %"$consume_2799", i64* @_gasrem, align 8
  store %Int256 { i256 10008002400320016 }, %Int256* %"$ans_132", align 8
  %"$gasrem_2800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2801" = icmp ugt i64 1, %"$gasrem_2800"
  br i1 %"$gascmp_2801", label %"$out_of_gas_2802", label %"$have_gas_2803"

"$out_of_gas_2802":                               ; preds = %"$have_gas_2798"
  call void @_out_of_gas()
  br label %"$have_gas_2803"

"$have_gas_2803":                                 ; preds = %"$out_of_gas_2802", %"$have_gas_2798"
  %"$consume_2804" = sub i64 %"$gasrem_2800", 1
  store i64 %"$consume_2804", i64* @_gasrem, align 8
  %"$res__133" = alloca %TName_Bool*, align 8
  %"$gasrem_2806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2807" = icmp ugt i64 16, %"$gasrem_2806"
  br i1 %"$gascmp_2807", label %"$out_of_gas_2808", label %"$have_gas_2809"

"$out_of_gas_2808":                               ; preds = %"$have_gas_2803"
  call void @_out_of_gas()
  br label %"$have_gas_2809"

"$have_gas_2809":                                 ; preds = %"$out_of_gas_2808", %"$have_gas_2803"
  %"$consume_2810" = sub i64 %"$gasrem_2806", 16
  store i64 %"$consume_2810", i64* @_gasrem, align 8
  %"$execptr_load_2811" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_131_2812" = alloca %Int256, align 8
  %"$$p_131_2813" = load %Int256, %Int256* %"$p_131", align 8
  store %Int256 %"$$p_131_2813", %Int256* %"$eq_$p_131_2812", align 8
  %"$eq_$ans_132_2814" = alloca %Int256, align 8
  %"$$ans_132_2815" = load %Int256, %Int256* %"$ans_132", align 8
  store %Int256 %"$$ans_132_2815", %Int256* %"$eq_$ans_132_2814", align 8
  %"$eq_call_2816" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2811", %Int256* %"$eq_$p_131_2812", %Int256* %"$eq_$ans_132_2814")
  store %TName_Bool* %"$eq_call_2816", %TName_Bool** %"$res__133", align 8
  %"$gasrem_2818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2819" = icmp ugt i64 1, %"$gasrem_2818"
  br i1 %"$gascmp_2819", label %"$out_of_gas_2820", label %"$have_gas_2821"

"$out_of_gas_2820":                               ; preds = %"$have_gas_2809"
  call void @_out_of_gas()
  br label %"$have_gas_2821"

"$have_gas_2821":                                 ; preds = %"$out_of_gas_2820", %"$have_gas_2809"
  %"$consume_2822" = sub i64 %"$gasrem_2818", 1
  store i64 %"$consume_2822", i64* @_gasrem, align 8
  %"$BoolUtils.andb_203" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2823" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2824" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2823", 0
  %"$BoolUtils.andb_envptr_2825" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2823", 1
  %"$$res_130_2826" = load %TName_Bool*, %TName_Bool** %"$res_130", align 8
  %"$BoolUtils.andb_call_2827" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2824"(i8* %"$BoolUtils.andb_envptr_2825", %TName_Bool* %"$$res_130_2826")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2827", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_203", align 8
  %"$BoolUtils.andb_204" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_203_2828" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_203", align 8
  %"$$BoolUtils.andb_203_fptr_2829" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_203_2828", 0
  %"$$BoolUtils.andb_203_envptr_2830" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_203_2828", 1
  %"$$res__133_2831" = load %TName_Bool*, %TName_Bool** %"$res__133", align 8
  %"$$BoolUtils.andb_203_call_2832" = call %TName_Bool* %"$$BoolUtils.andb_203_fptr_2829"(i8* %"$$BoolUtils.andb_203_envptr_2830", %TName_Bool* %"$$res__133_2831")
  store %TName_Bool* %"$$BoolUtils.andb_203_call_2832", %TName_Bool** %"$BoolUtils.andb_204", align 8
  %"$$BoolUtils.andb_204_2833" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_204", align 8
  store %TName_Bool* %"$$BoolUtils.andb_204_2833", %TName_Bool** %"$res_134", align 8
  %"$gasrem_2834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2835" = icmp ugt i64 1, %"$gasrem_2834"
  br i1 %"$gascmp_2835", label %"$out_of_gas_2836", label %"$have_gas_2837"

"$out_of_gas_2836":                               ; preds = %"$have_gas_2821"
  call void @_out_of_gas()
  br label %"$have_gas_2837"

"$have_gas_2837":                                 ; preds = %"$out_of_gas_2836", %"$have_gas_2821"
  %"$consume_2838" = sub i64 %"$gasrem_2834", 1
  store i64 %"$consume_2838", i64* @_gasrem, align 8
  %"$p_135" = alloca %Int256, align 8
  %"$p4_2839" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2840" = extractvalue %Uint32 %"$p4_2839", 0
  %"$valueof_2841" = zext i32 %"$valueof_2840" to i64
  %"$gaslogof_2842" = uitofp i64 %"$valueof_2841" to double
  %"$gaslogof_2843" = fadd double %"$gaslogof_2842", 1.000000e+00
  %"$gaslogof_2844" = call double @llvm.log.f64(double %"$gaslogof_2843")
  %"$gaslogof_2845" = fptoui double %"$gaslogof_2844" to i64
  %"$gaslogof_2846" = add i64 %"$gaslogof_2845", 1
  %"$gasmul_2847" = mul i64 20, %"$gaslogof_2846"
  %"$gasmul_2848" = mul i64 %"$gasmul_2847", 4
  %"$gasrem_2849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2850" = icmp ugt i64 %"$gasmul_2848", %"$gasrem_2849"
  br i1 %"$gascmp_2850", label %"$out_of_gas_2851", label %"$have_gas_2852"

"$out_of_gas_2851":                               ; preds = %"$have_gas_2837"
  call void @_out_of_gas()
  br label %"$have_gas_2852"

"$have_gas_2852":                                 ; preds = %"$out_of_gas_2851", %"$have_gas_2837"
  %"$consume_2853" = sub i64 %"$gasrem_2849", %"$gasmul_2848"
  store i64 %"$consume_2853", i64* @_gasrem, align 8
  %"$execptr_load_2854" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2855" = alloca %Int256, align 8
  %"$t9_2856" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2856", %Int256* %"$pow_t9_2855", align 8
  %"$p4_2857" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2858" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2854", %Int256* %"$pow_t9_2855", %Uint32 %"$p4_2857")
  %"$pow_2860" = load %Int256, %Int256* %"$pow_call_2858", align 8
  store %Int256 %"$pow_2860", %Int256* %"$p_135", align 8
  %"$gasrem_2861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2862" = icmp ugt i64 1, %"$gasrem_2861"
  br i1 %"$gascmp_2862", label %"$out_of_gas_2863", label %"$have_gas_2864"

"$out_of_gas_2863":                               ; preds = %"$have_gas_2852"
  call void @_out_of_gas()
  br label %"$have_gas_2864"

"$have_gas_2864":                                 ; preds = %"$out_of_gas_2863", %"$have_gas_2852"
  %"$consume_2865" = sub i64 %"$gasrem_2861", 1
  store i64 %"$consume_2865", i64* @_gasrem, align 8
  %"$res_138" = alloca %TName_Bool*, align 8
  %"$gasrem_2866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2867" = icmp ugt i64 1, %"$gasrem_2866"
  br i1 %"$gascmp_2867", label %"$out_of_gas_2868", label %"$have_gas_2869"

"$out_of_gas_2868":                               ; preds = %"$have_gas_2864"
  call void @_out_of_gas()
  br label %"$have_gas_2869"

"$have_gas_2869":                                 ; preds = %"$out_of_gas_2868", %"$have_gas_2864"
  %"$consume_2870" = sub i64 %"$gasrem_2866", 1
  store i64 %"$consume_2870", i64* @_gasrem, align 8
  %"$ans_136" = alloca %Int256, align 8
  %"$gasrem_2871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2872" = icmp ugt i64 1, %"$gasrem_2871"
  br i1 %"$gascmp_2872", label %"$out_of_gas_2873", label %"$have_gas_2874"

"$out_of_gas_2873":                               ; preds = %"$have_gas_2869"
  call void @_out_of_gas()
  br label %"$have_gas_2874"

"$have_gas_2874":                                 ; preds = %"$out_of_gas_2873", %"$have_gas_2869"
  %"$consume_2875" = sub i64 %"$gasrem_2871", 1
  store i64 %"$consume_2875", i64* @_gasrem, align 8
  store %Int256 { i256 10020018009603360806534415361152051201024 }, %Int256* %"$ans_136", align 8
  %"$gasrem_2876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2877" = icmp ugt i64 1, %"$gasrem_2876"
  br i1 %"$gascmp_2877", label %"$out_of_gas_2878", label %"$have_gas_2879"

"$out_of_gas_2878":                               ; preds = %"$have_gas_2874"
  call void @_out_of_gas()
  br label %"$have_gas_2879"

"$have_gas_2879":                                 ; preds = %"$out_of_gas_2878", %"$have_gas_2874"
  %"$consume_2880" = sub i64 %"$gasrem_2876", 1
  store i64 %"$consume_2880", i64* @_gasrem, align 8
  %"$res__137" = alloca %TName_Bool*, align 8
  %"$gasrem_2882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2883" = icmp ugt i64 16, %"$gasrem_2882"
  br i1 %"$gascmp_2883", label %"$out_of_gas_2884", label %"$have_gas_2885"

"$out_of_gas_2884":                               ; preds = %"$have_gas_2879"
  call void @_out_of_gas()
  br label %"$have_gas_2885"

"$have_gas_2885":                                 ; preds = %"$out_of_gas_2884", %"$have_gas_2879"
  %"$consume_2886" = sub i64 %"$gasrem_2882", 16
  store i64 %"$consume_2886", i64* @_gasrem, align 8
  %"$execptr_load_2887" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_135_2888" = alloca %Int256, align 8
  %"$$p_135_2889" = load %Int256, %Int256* %"$p_135", align 8
  store %Int256 %"$$p_135_2889", %Int256* %"$eq_$p_135_2888", align 8
  %"$eq_$ans_136_2890" = alloca %Int256, align 8
  %"$$ans_136_2891" = load %Int256, %Int256* %"$ans_136", align 8
  store %Int256 %"$$ans_136_2891", %Int256* %"$eq_$ans_136_2890", align 8
  %"$eq_call_2892" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2887", %Int256* %"$eq_$p_135_2888", %Int256* %"$eq_$ans_136_2890")
  store %TName_Bool* %"$eq_call_2892", %TName_Bool** %"$res__137", align 8
  %"$gasrem_2894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2895" = icmp ugt i64 1, %"$gasrem_2894"
  br i1 %"$gascmp_2895", label %"$out_of_gas_2896", label %"$have_gas_2897"

"$out_of_gas_2896":                               ; preds = %"$have_gas_2885"
  call void @_out_of_gas()
  br label %"$have_gas_2897"

"$have_gas_2897":                                 ; preds = %"$out_of_gas_2896", %"$have_gas_2885"
  %"$consume_2898" = sub i64 %"$gasrem_2894", 1
  store i64 %"$consume_2898", i64* @_gasrem, align 8
  %"$BoolUtils.andb_205" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2899" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2900" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2899", 0
  %"$BoolUtils.andb_envptr_2901" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2899", 1
  %"$$res_134_2902" = load %TName_Bool*, %TName_Bool** %"$res_134", align 8
  %"$BoolUtils.andb_call_2903" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2900"(i8* %"$BoolUtils.andb_envptr_2901", %TName_Bool* %"$$res_134_2902")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2903", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_205", align 8
  %"$BoolUtils.andb_206" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_205_2904" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_205", align 8
  %"$$BoolUtils.andb_205_fptr_2905" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_205_2904", 0
  %"$$BoolUtils.andb_205_envptr_2906" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_205_2904", 1
  %"$$res__137_2907" = load %TName_Bool*, %TName_Bool** %"$res__137", align 8
  %"$$BoolUtils.andb_205_call_2908" = call %TName_Bool* %"$$BoolUtils.andb_205_fptr_2905"(i8* %"$$BoolUtils.andb_205_envptr_2906", %TName_Bool* %"$$res__137_2907")
  store %TName_Bool* %"$$BoolUtils.andb_205_call_2908", %TName_Bool** %"$BoolUtils.andb_206", align 8
  %"$$BoolUtils.andb_206_2909" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_206", align 8
  store %TName_Bool* %"$$BoolUtils.andb_206_2909", %TName_Bool** %"$res_138", align 8
  %"$gasrem_2910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2911" = icmp ugt i64 1, %"$gasrem_2910"
  br i1 %"$gascmp_2911", label %"$out_of_gas_2912", label %"$have_gas_2913"

"$out_of_gas_2912":                               ; preds = %"$have_gas_2897"
  call void @_out_of_gas()
  br label %"$have_gas_2913"

"$have_gas_2913":                                 ; preds = %"$out_of_gas_2912", %"$have_gas_2897"
  %"$consume_2914" = sub i64 %"$gasrem_2910", 1
  store i64 %"$consume_2914", i64* @_gasrem, align 8
  %"$$res_138_2915" = load %TName_Bool*, %TName_Bool** %"$res_138", align 8
  store %TName_Bool* %"$$res_138_2915", %TName_Bool** %"$expr_211", align 8
  %"$$expr_211_2916" = load %TName_Bool*, %TName_Bool** %"$expr_211", align 8
  ret %TName_Bool* %"$$expr_211_2916"
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #0

declare %Uint32 @_pow_Uint32(%Uint32, %Uint32)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

declare %Int32 @_pow_Int32(%Int32, %Uint32)

declare %TName_Bool* @_eq_Int32(i8*, %Int32, %Int32)

declare %Uint64 @_pow_Uint64(%Uint64, %Uint32)

declare %TName_Bool* @_eq_Uint64(i8*, %Uint64, %Uint64)

declare %Int64 @_pow_Int64(%Int64, %Uint32)

declare %TName_Bool* @_eq_Int64(i8*, %Int64, %Int64)

declare %Uint128 @_pow_Uint128(%Uint128, %Uint32)

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare %Int128 @_pow_Int128(%Int128, %Uint32)

declare %TName_Bool* @_eq_Int128(i8*, %Int128, %Int128)

declare %Uint256* @_pow_Uint256(i8*, %Uint256*, %Uint32)

declare %TName_Bool* @_eq_Uint256(i8*, %Uint256*, %Uint256*)

declare %Int256* @_pow_Int256(i8*, %Int256*, %Uint32)

declare %TName_Bool* @_eq_Int256(i8*, %Int256*, %Int256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_2917" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2918" = bitcast %TName_Bool* %"$exprval_2917" to i8*
  %"$execptr_load_2919" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2919", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_246", i8* %"$memvoidcast_2918")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
