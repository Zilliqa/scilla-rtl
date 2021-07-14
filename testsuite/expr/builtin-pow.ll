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

%"$TyDescrTy_PrimTyp_206" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_236" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_235"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_235" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_237"**, %"$TyDescrTy_ADTTyp_236"* }
%"$TyDescrTy_ADTTyp_Constr_237" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_2196" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2197" = type { %ParamDescrString, i32, %"$ParamDescr_2196"* }
%"$$fundef_203_env_254" = type { %TName_Bool* }
%"$$fundef_201_env_255" = type {}
%Uint32 = type { i32 }
%Int32 = type { i32 }
%Uint64 = type { i64 }
%Int64 = type { i64 }
%Uint128 = type { i128 }
%Int128 = type { i128 }
%Uint256 = type { i256 }
%Int256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_207" = global %"$TyDescrTy_PrimTyp_206" zeroinitializer
@"$TyDescr_Int32_208" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Int32_Prim_207" to i8*) }
@"$TyDescr_Uint32_Prim_209" = global %"$TyDescrTy_PrimTyp_206" { i32 1, i32 0 }
@"$TyDescr_Uint32_210" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Uint32_Prim_209" to i8*) }
@"$TyDescr_Int64_Prim_211" = global %"$TyDescrTy_PrimTyp_206" { i32 0, i32 1 }
@"$TyDescr_Int64_212" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Int64_Prim_211" to i8*) }
@"$TyDescr_Uint64_Prim_213" = global %"$TyDescrTy_PrimTyp_206" { i32 1, i32 1 }
@"$TyDescr_Uint64_214" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Uint64_Prim_213" to i8*) }
@"$TyDescr_Int128_Prim_215" = global %"$TyDescrTy_PrimTyp_206" { i32 0, i32 2 }
@"$TyDescr_Int128_216" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Int128_Prim_215" to i8*) }
@"$TyDescr_Uint128_Prim_217" = global %"$TyDescrTy_PrimTyp_206" { i32 1, i32 2 }
@"$TyDescr_Uint128_218" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Uint128_Prim_217" to i8*) }
@"$TyDescr_Int256_Prim_219" = global %"$TyDescrTy_PrimTyp_206" { i32 0, i32 3 }
@"$TyDescr_Int256_220" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Int256_Prim_219" to i8*) }
@"$TyDescr_Uint256_Prim_221" = global %"$TyDescrTy_PrimTyp_206" { i32 1, i32 3 }
@"$TyDescr_Uint256_222" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Uint256_Prim_221" to i8*) }
@"$TyDescr_String_Prim_223" = global %"$TyDescrTy_PrimTyp_206" { i32 2, i32 0 }
@"$TyDescr_String_224" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_String_Prim_223" to i8*) }
@"$TyDescr_Bnum_Prim_225" = global %"$TyDescrTy_PrimTyp_206" { i32 3, i32 0 }
@"$TyDescr_Bnum_226" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Bnum_Prim_225" to i8*) }
@"$TyDescr_Message_Prim_227" = global %"$TyDescrTy_PrimTyp_206" { i32 4, i32 0 }
@"$TyDescr_Message_228" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Message_Prim_227" to i8*) }
@"$TyDescr_Event_Prim_229" = global %"$TyDescrTy_PrimTyp_206" { i32 5, i32 0 }
@"$TyDescr_Event_230" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Event_Prim_229" to i8*) }
@"$TyDescr_Exception_Prim_231" = global %"$TyDescrTy_PrimTyp_206" { i32 6, i32 0 }
@"$TyDescr_Exception_232" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Exception_Prim_231" to i8*) }
@"$TyDescr_Bystr_Prim_233" = global %"$TyDescrTy_PrimTyp_206" { i32 7, i32 0 }
@"$TyDescr_Bystr_234" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_206"* @"$TyDescr_Bystr_Prim_233" to i8*) }
@"$TyDescr_ADT_Bool_238" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_235"* @"$TyDescr_Bool_ADTTyp_Specl_251" to i8*) }
@"$TyDescr_Bool_ADTTyp_242" = unnamed_addr constant %"$TyDescrTy_ADTTyp_236" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_253", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_235"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_235"*], [1 x %"$TyDescrTy_ADTTyp_Specl_235"*]* @"$TyDescr_Bool_ADTTyp_m_specls_252", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_243" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_244" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_245" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_237" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_244", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_243", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_246" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_247" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_248" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_237" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_247", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_246", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_249" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_237"*] [%"$TyDescrTy_ADTTyp_Constr_237"* @"$TyDescr_Bool_True_ADTTyp_Constr_245", %"$TyDescrTy_ADTTyp_Constr_237"* @"$TyDescr_Bool_False_ADTTyp_Constr_248"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_250" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_251" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_235" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_250", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_237"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_237"*], [2 x %"$TyDescrTy_ADTTyp_Constr_237"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_249", i32 0, i32 0), %"$TyDescrTy_ADTTyp_236"* @"$TyDescr_Bool_ADTTyp_242" }
@"$TyDescr_Bool_ADTTyp_m_specls_252" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_235"*] [%"$TyDescrTy_ADTTyp_Specl_235"* @"$TyDescr_Bool_ADTTyp_Specl_251"]
@"$TyDescr_ADT_Bool_253" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_230", %_TyDescrTy_Typ* @"$TyDescr_Int64_212", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_238", %_TyDescrTy_Typ* @"$TyDescr_Uint256_222", %_TyDescrTy_Typ* @"$TyDescr_Uint32_210", %_TyDescrTy_Typ* @"$TyDescr_Uint64_214", %_TyDescrTy_Typ* @"$TyDescr_Bnum_226", %_TyDescrTy_Typ* @"$TyDescr_Uint128_218", %_TyDescrTy_Typ* @"$TyDescr_Exception_232", %_TyDescrTy_Typ* @"$TyDescr_String_224", %_TyDescrTy_Typ* @"$TyDescr_Int256_220", %_TyDescrTy_Typ* @"$TyDescr_Int128_216", %_TyDescrTy_Typ* @"$TyDescr_Bystr_234", %_TyDescrTy_Typ* @"$TyDescr_Message_228", %_TyDescrTy_Typ* @"$TyDescr_Int32_208"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_2196"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2197"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_203"(%"$$fundef_203_env_254"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_203_env_b_267" = getelementptr inbounds %"$$fundef_203_env_254", %"$$fundef_203_env_254"* %0, i32 0, i32 0
  %"$b_envload_268" = load %TName_Bool*, %TName_Bool** %"$$fundef_203_env_b_267", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_268", %TName_Bool** %b, align 8
  %"$retval_204" = alloca %TName_Bool*, align 8
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 2, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %entry
  %"$consume_273" = sub i64 %"$gasrem_269", 2
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$b_275" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_276" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_275", i32 0, i32 0
  %"$b_tag_277" = load i8, i8* %"$b_tag_276", align 1
  switch i8 %"$b_tag_277", label %"$empty_default_278" [
    i8 1, label %"$False_279"
    i8 0, label %"$True_289"
  ]

"$False_279":                                     ; preds = %"$have_gas_272"
  %"$b_280" = bitcast %TName_Bool* %"$b_275" to %CName_False*
  %"$gasrem_281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$False_279"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$False_279"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem, align 8
  %"$adtval_286_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_286_salloc" = call i8* @_salloc(i8* %"$adtval_286_load", i64 1)
  %"$adtval_286" = bitcast i8* %"$adtval_286_salloc" to %CName_False*
  %"$adtgep_287" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_286", i32 0, i32 0
  store i8 1, i8* %"$adtgep_287", align 1
  %"$adtptr_288" = bitcast %CName_False* %"$adtval_286" to %TName_Bool*
  store %TName_Bool* %"$adtptr_288", %TName_Bool** %"$retval_204", align 8
  br label %"$matchsucc_274"

"$True_289":                                      ; preds = %"$have_gas_272"
  %"$b_290" = bitcast %TName_Bool* %"$b_275" to %CName_True*
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$True_289"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$True_289"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_204", align 8
  br label %"$matchsucc_274"

"$empty_default_278":                             ; preds = %"$have_gas_272"
  br label %"$matchsucc_274"

"$matchsucc_274":                                 ; preds = %"$have_gas_294", %"$have_gas_284", %"$empty_default_278"
  %"$$retval_204_296" = load %TName_Bool*, %TName_Bool** %"$retval_204", align 8
  ret %TName_Bool* %"$$retval_204_296"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_201"(%"$$fundef_201_env_255"* %0, %TName_Bool* %1) {
entry:
  %"$retval_202" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %entry
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %"$$fundef_203_envp_261_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_203_envp_261_salloc" = call i8* @_salloc(i8* %"$$fundef_203_envp_261_load", i64 8)
  %"$$fundef_203_envp_261" = bitcast i8* %"$$fundef_203_envp_261_salloc" to %"$$fundef_203_env_254"*
  %"$$fundef_203_env_voidp_263" = bitcast %"$$fundef_203_env_254"* %"$$fundef_203_envp_261" to i8*
  %"$$fundef_203_cloval_264" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_203_env_254"*, %TName_Bool*)* @"$fundef_203" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_203_env_voidp_263", 1
  %"$$fundef_203_env_b_265" = getelementptr inbounds %"$$fundef_203_env_254", %"$$fundef_203_env_254"* %"$$fundef_203_envp_261", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_203_env_b_265", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_203_cloval_264", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_202", align 8
  %"$$retval_202_266" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_202", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_202_266"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %entry
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_201_env_255"*, %TName_Bool*)* @"$fundef_201" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_205" = alloca %TName_Bool*, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %entry
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %p1 = alloca %Uint32, align 8
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 1, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_308"
  %"$consume_314" = sub i64 %"$gasrem_310", 1
  store i64 %"$consume_314", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %p1, align 4
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_313"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %p2 = alloca %Uint32, align 8
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %p2, align 4
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_323"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %p3 = alloca %Uint32, align 8
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_328"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  store %Uint32 { i32 4 }, %Uint32* %p3, align 4
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_333"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %p4 = alloca %Uint32, align 8
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  store %Uint32 { i32 10 }, %Uint32* %p4, align 4
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %t1 = alloca %Uint32, align 8
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_348"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %t1, align 4
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_353"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %t2 = alloca %Int32, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %t2, align 4
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %t3 = alloca %Uint64, align 8
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %t3, align 8
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %t4 = alloca %Int64, align 8
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_378"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  store %Int64 { i64 -101 }, %Int64* %t4, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_383"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %t5 = alloca %Uint128, align 8
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %"$have_gas_388"
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %t5, align 8
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_393"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %t6 = alloca %Int128, align 8
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_398"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  store %Int128 { i128 501 }, %Int128* %t6, align 8
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %t7 = alloca %Uint256, align 8
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  store %Uint256 { i256 10001 }, %Uint256* %t7, align 8
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %t8 = alloca %Int256, align 8
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  store %Int256 { i256 -10001 }, %Int256* %t8, align 8
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %t9 = alloca %Int256, align 8
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  store %Int256 { i256 10002 }, %Int256* %t9, align 8
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_433"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %res = alloca %TName_Bool*, align 8
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_438"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %"$adtval_445_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_445_salloc" = call i8* @_salloc(i8* %"$adtval_445_load", i64 1)
  %"$adtval_445" = bitcast i8* %"$adtval_445_salloc" to %CName_True*
  %"$adtgep_446" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_445", i32 0, i32 0
  store i8 0, i8* %"$adtgep_446", align 1
  %"$adtptr_447" = bitcast %CName_True* %"$adtval_445" to %TName_Bool*
  store %TName_Bool* %"$adtptr_447", %TName_Bool** %res, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_443"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %p = alloca %Uint32, align 8
  %"$t1_453" = load %Uint32, %Uint32* %t1, align 4
  %"$p1_454" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_455" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_453", %Uint32 %"$p1_454")
  store %Uint32 %"$pow_call_455", %Uint32* %p, align 4
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_451"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$res_0" = alloca %TName_Bool*, align 8
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_459"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %ans = alloca %Uint32, align 8
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_464"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %ans, align 4
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_469"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  %res_ = alloca %TName_Bool*, align 8
  %"$execptr_load_476" = load i8*, i8** @_execptr, align 8
  %"$p_477" = load %Uint32, %Uint32* %p, align 4
  %"$ans_478" = load %Uint32, %Uint32* %ans, align 4
  %"$eq_call_479" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_476", %Uint32 %"$p_477", %Uint32 %"$ans_478")
  store %TName_Bool* %"$eq_call_479", %TName_Bool** %res_, align 8
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_474"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %"$BoolUtils.andb_133" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_486" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_487" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_486", 0
  %"$BoolUtils.andb_envptr_488" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_486", 1
  %"$res_489" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$BoolUtils.andb_call_490" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_487"(i8* %"$BoolUtils.andb_envptr_488", %TName_Bool* %"$res_489")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_490", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8
  %"$BoolUtils.andb_134" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_133_491" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8
  %"$$BoolUtils.andb_133_fptr_492" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_491", 0
  %"$$BoolUtils.andb_133_envptr_493" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_491", 1
  %"$res__494" = load %TName_Bool*, %TName_Bool** %res_, align 8
  %"$$BoolUtils.andb_133_call_495" = call %TName_Bool* %"$$BoolUtils.andb_133_fptr_492"(i8* %"$$BoolUtils.andb_133_envptr_493", %TName_Bool* %"$res__494")
  store %TName_Bool* %"$$BoolUtils.andb_133_call_495", %TName_Bool** %"$BoolUtils.andb_134", align 8
  %"$$BoolUtils.andb_134_496" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_134", align 8
  store %TName_Bool* %"$$BoolUtils.andb_134_496", %TName_Bool** %"$res_0", align 8
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_484"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %"$p_1" = alloca %Uint32, align 8
  %"$t1_502" = load %Uint32, %Uint32* %t1, align 4
  %"$p2_503" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_504" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_502", %Uint32 %"$p2_503")
  store %Uint32 %"$pow_call_504", %Uint32* %"$p_1", align 4
  %"$gasrem_505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_506" = icmp ugt i64 1, %"$gasrem_505"
  br i1 %"$gascmp_506", label %"$out_of_gas_507", label %"$have_gas_508"

"$out_of_gas_507":                                ; preds = %"$have_gas_500"
  call void @_out_of_gas()
  br label %"$have_gas_508"

"$have_gas_508":                                  ; preds = %"$out_of_gas_507", %"$have_gas_500"
  %"$consume_509" = sub i64 %"$gasrem_505", 1
  store i64 %"$consume_509", i64* @_gasrem, align 8
  %"$res_4" = alloca %TName_Bool*, align 8
  %"$gasrem_510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_511" = icmp ugt i64 1, %"$gasrem_510"
  br i1 %"$gascmp_511", label %"$out_of_gas_512", label %"$have_gas_513"

"$out_of_gas_512":                                ; preds = %"$have_gas_508"
  call void @_out_of_gas()
  br label %"$have_gas_513"

"$have_gas_513":                                  ; preds = %"$out_of_gas_512", %"$have_gas_508"
  %"$consume_514" = sub i64 %"$gasrem_510", 1
  store i64 %"$consume_514", i64* @_gasrem, align 8
  %"$ans_2" = alloca %Uint32, align 8
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_513"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_513"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %"$ans_2", align 4
  %"$gasrem_520" = load i64, i64* @_gasrem, align 8
  %"$gascmp_521" = icmp ugt i64 1, %"$gasrem_520"
  br i1 %"$gascmp_521", label %"$out_of_gas_522", label %"$have_gas_523"

"$out_of_gas_522":                                ; preds = %"$have_gas_518"
  call void @_out_of_gas()
  br label %"$have_gas_523"

"$have_gas_523":                                  ; preds = %"$out_of_gas_522", %"$have_gas_518"
  %"$consume_524" = sub i64 %"$gasrem_520", 1
  store i64 %"$consume_524", i64* @_gasrem, align 8
  %"$res__3" = alloca %TName_Bool*, align 8
  %"$execptr_load_525" = load i8*, i8** @_execptr, align 8
  %"$$p_1_526" = load %Uint32, %Uint32* %"$p_1", align 4
  %"$$ans_2_527" = load %Uint32, %Uint32* %"$ans_2", align 4
  %"$eq_call_528" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_525", %Uint32 %"$$p_1_526", %Uint32 %"$$ans_2_527")
  store %TName_Bool* %"$eq_call_528", %TName_Bool** %"$res__3", align 8
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 1, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %"$have_gas_523"
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %"$have_gas_523"
  %"$consume_534" = sub i64 %"$gasrem_530", 1
  store i64 %"$consume_534", i64* @_gasrem, align 8
  %"$BoolUtils.andb_135" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_535" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_536" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_535", 0
  %"$BoolUtils.andb_envptr_537" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_535", 1
  %"$$res_0_538" = load %TName_Bool*, %TName_Bool** %"$res_0", align 8
  %"$BoolUtils.andb_call_539" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_536"(i8* %"$BoolUtils.andb_envptr_537", %TName_Bool* %"$$res_0_538")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_539", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$BoolUtils.andb_136" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_135_540" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$$BoolUtils.andb_135_fptr_541" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_540", 0
  %"$$BoolUtils.andb_135_envptr_542" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_540", 1
  %"$$res__3_543" = load %TName_Bool*, %TName_Bool** %"$res__3", align 8
  %"$$BoolUtils.andb_135_call_544" = call %TName_Bool* %"$$BoolUtils.andb_135_fptr_541"(i8* %"$$BoolUtils.andb_135_envptr_542", %TName_Bool* %"$$res__3_543")
  store %TName_Bool* %"$$BoolUtils.andb_135_call_544", %TName_Bool** %"$BoolUtils.andb_136", align 8
  %"$$BoolUtils.andb_136_545" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_136", align 8
  store %TName_Bool* %"$$BoolUtils.andb_136_545", %TName_Bool** %"$res_4", align 8
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 1, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %"$have_gas_533"
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %"$have_gas_533"
  %"$consume_550" = sub i64 %"$gasrem_546", 1
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %"$p_5" = alloca %Uint32, align 8
  %"$t1_551" = load %Uint32, %Uint32* %t1, align 4
  %"$p3_552" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_553" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_551", %Uint32 %"$p3_552")
  store %Uint32 %"$pow_call_553", %Uint32* %"$p_5", align 4
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 1, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_549"
  %"$consume_558" = sub i64 %"$gasrem_554", 1
  store i64 %"$consume_558", i64* @_gasrem, align 8
  %"$res_8" = alloca %TName_Bool*, align 8
  %"$gasrem_559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_560" = icmp ugt i64 1, %"$gasrem_559"
  br i1 %"$gascmp_560", label %"$out_of_gas_561", label %"$have_gas_562"

"$out_of_gas_561":                                ; preds = %"$have_gas_557"
  call void @_out_of_gas()
  br label %"$have_gas_562"

"$have_gas_562":                                  ; preds = %"$out_of_gas_561", %"$have_gas_557"
  %"$consume_563" = sub i64 %"$gasrem_559", 1
  store i64 %"$consume_563", i64* @_gasrem, align 8
  %"$ans_6" = alloca %Uint32, align 8
  %"$gasrem_564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_565" = icmp ugt i64 1, %"$gasrem_564"
  br i1 %"$gascmp_565", label %"$out_of_gas_566", label %"$have_gas_567"

"$out_of_gas_566":                                ; preds = %"$have_gas_562"
  call void @_out_of_gas()
  br label %"$have_gas_567"

"$have_gas_567":                                  ; preds = %"$out_of_gas_566", %"$have_gas_562"
  %"$consume_568" = sub i64 %"$gasrem_564", 1
  store i64 %"$consume_568", i64* @_gasrem, align 8
  store %Uint32 { i32 16 }, %Uint32* %"$ans_6", align 4
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_567"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_567"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  %"$res__7" = alloca %TName_Bool*, align 8
  %"$execptr_load_574" = load i8*, i8** @_execptr, align 8
  %"$$p_5_575" = load %Uint32, %Uint32* %"$p_5", align 4
  %"$$ans_6_576" = load %Uint32, %Uint32* %"$ans_6", align 4
  %"$eq_call_577" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_574", %Uint32 %"$$p_5_575", %Uint32 %"$$ans_6_576")
  store %TName_Bool* %"$eq_call_577", %TName_Bool** %"$res__7", align 8
  %"$gasrem_579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_580" = icmp ugt i64 1, %"$gasrem_579"
  br i1 %"$gascmp_580", label %"$out_of_gas_581", label %"$have_gas_582"

"$out_of_gas_581":                                ; preds = %"$have_gas_572"
  call void @_out_of_gas()
  br label %"$have_gas_582"

"$have_gas_582":                                  ; preds = %"$out_of_gas_581", %"$have_gas_572"
  %"$consume_583" = sub i64 %"$gasrem_579", 1
  store i64 %"$consume_583", i64* @_gasrem, align 8
  %"$BoolUtils.andb_137" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_584" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_585" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_584", 0
  %"$BoolUtils.andb_envptr_586" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_584", 1
  %"$$res_4_587" = load %TName_Bool*, %TName_Bool** %"$res_4", align 8
  %"$BoolUtils.andb_call_588" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_585"(i8* %"$BoolUtils.andb_envptr_586", %TName_Bool* %"$$res_4_587")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_588", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8
  %"$BoolUtils.andb_138" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_137_589" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8
  %"$$BoolUtils.andb_137_fptr_590" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_589", 0
  %"$$BoolUtils.andb_137_envptr_591" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_589", 1
  %"$$res__7_592" = load %TName_Bool*, %TName_Bool** %"$res__7", align 8
  %"$$BoolUtils.andb_137_call_593" = call %TName_Bool* %"$$BoolUtils.andb_137_fptr_590"(i8* %"$$BoolUtils.andb_137_envptr_591", %TName_Bool* %"$$res__7_592")
  store %TName_Bool* %"$$BoolUtils.andb_137_call_593", %TName_Bool** %"$BoolUtils.andb_138", align 8
  %"$$BoolUtils.andb_138_594" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_138", align 8
  store %TName_Bool* %"$$BoolUtils.andb_138_594", %TName_Bool** %"$res_8", align 8
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %"$have_gas_582"
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %"$have_gas_582"
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  %"$p_9" = alloca %Uint32, align 8
  %"$t1_600" = load %Uint32, %Uint32* %t1, align 4
  %"$p4_601" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_602" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_600", %Uint32 %"$p4_601")
  store %Uint32 %"$pow_call_602", %Uint32* %"$p_9", align 4
  %"$gasrem_603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_604" = icmp ugt i64 1, %"$gasrem_603"
  br i1 %"$gascmp_604", label %"$out_of_gas_605", label %"$have_gas_606"

"$out_of_gas_605":                                ; preds = %"$have_gas_598"
  call void @_out_of_gas()
  br label %"$have_gas_606"

"$have_gas_606":                                  ; preds = %"$out_of_gas_605", %"$have_gas_598"
  %"$consume_607" = sub i64 %"$gasrem_603", 1
  store i64 %"$consume_607", i64* @_gasrem, align 8
  %"$res_12" = alloca %TName_Bool*, align 8
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 1, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_606"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_606"
  %"$consume_612" = sub i64 %"$gasrem_608", 1
  store i64 %"$consume_612", i64* @_gasrem, align 8
  %"$ans_10" = alloca %Uint32, align 8
  %"$gasrem_613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_614" = icmp ugt i64 1, %"$gasrem_613"
  br i1 %"$gascmp_614", label %"$out_of_gas_615", label %"$have_gas_616"

"$out_of_gas_615":                                ; preds = %"$have_gas_611"
  call void @_out_of_gas()
  br label %"$have_gas_616"

"$have_gas_616":                                  ; preds = %"$out_of_gas_615", %"$have_gas_611"
  %"$consume_617" = sub i64 %"$gasrem_613", 1
  store i64 %"$consume_617", i64* @_gasrem, align 8
  store %Uint32 { i32 1024 }, %Uint32* %"$ans_10", align 4
  %"$gasrem_618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_619" = icmp ugt i64 1, %"$gasrem_618"
  br i1 %"$gascmp_619", label %"$out_of_gas_620", label %"$have_gas_621"

"$out_of_gas_620":                                ; preds = %"$have_gas_616"
  call void @_out_of_gas()
  br label %"$have_gas_621"

"$have_gas_621":                                  ; preds = %"$out_of_gas_620", %"$have_gas_616"
  %"$consume_622" = sub i64 %"$gasrem_618", 1
  store i64 %"$consume_622", i64* @_gasrem, align 8
  %"$res__11" = alloca %TName_Bool*, align 8
  %"$execptr_load_623" = load i8*, i8** @_execptr, align 8
  %"$$p_9_624" = load %Uint32, %Uint32* %"$p_9", align 4
  %"$$ans_10_625" = load %Uint32, %Uint32* %"$ans_10", align 4
  %"$eq_call_626" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_623", %Uint32 %"$$p_9_624", %Uint32 %"$$ans_10_625")
  store %TName_Bool* %"$eq_call_626", %TName_Bool** %"$res__11", align 8
  %"$gasrem_628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_629" = icmp ugt i64 1, %"$gasrem_628"
  br i1 %"$gascmp_629", label %"$out_of_gas_630", label %"$have_gas_631"

"$out_of_gas_630":                                ; preds = %"$have_gas_621"
  call void @_out_of_gas()
  br label %"$have_gas_631"

"$have_gas_631":                                  ; preds = %"$out_of_gas_630", %"$have_gas_621"
  %"$consume_632" = sub i64 %"$gasrem_628", 1
  store i64 %"$consume_632", i64* @_gasrem, align 8
  %"$BoolUtils.andb_139" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_633" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_634" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_633", 0
  %"$BoolUtils.andb_envptr_635" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_633", 1
  %"$$res_8_636" = load %TName_Bool*, %TName_Bool** %"$res_8", align 8
  %"$BoolUtils.andb_call_637" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_634"(i8* %"$BoolUtils.andb_envptr_635", %TName_Bool* %"$$res_8_636")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_637", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$BoolUtils.andb_140" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_139_638" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_fptr_639" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_638", 0
  %"$$BoolUtils.andb_139_envptr_640" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_638", 1
  %"$$res__11_641" = load %TName_Bool*, %TName_Bool** %"$res__11", align 8
  %"$$BoolUtils.andb_139_call_642" = call %TName_Bool* %"$$BoolUtils.andb_139_fptr_639"(i8* %"$$BoolUtils.andb_139_envptr_640", %TName_Bool* %"$$res__11_641")
  store %TName_Bool* %"$$BoolUtils.andb_139_call_642", %TName_Bool** %"$BoolUtils.andb_140", align 8
  %"$$BoolUtils.andb_140_643" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_140", align 8
  store %TName_Bool* %"$$BoolUtils.andb_140_643", %TName_Bool** %"$res_12", align 8
  %"$gasrem_644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_645" = icmp ugt i64 1, %"$gasrem_644"
  br i1 %"$gascmp_645", label %"$out_of_gas_646", label %"$have_gas_647"

"$out_of_gas_646":                                ; preds = %"$have_gas_631"
  call void @_out_of_gas()
  br label %"$have_gas_647"

"$have_gas_647":                                  ; preds = %"$out_of_gas_646", %"$have_gas_631"
  %"$consume_648" = sub i64 %"$gasrem_644", 1
  store i64 %"$consume_648", i64* @_gasrem, align 8
  %"$p_13" = alloca %Int32, align 8
  %"$t2_649" = load %Int32, %Int32* %t2, align 4
  %"$p1_650" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_651" = call %Int32 @_pow_Int32(%Int32 %"$t2_649", %Uint32 %"$p1_650")
  store %Int32 %"$pow_call_651", %Int32* %"$p_13", align 4
  %"$gasrem_652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_653" = icmp ugt i64 1, %"$gasrem_652"
  br i1 %"$gascmp_653", label %"$out_of_gas_654", label %"$have_gas_655"

"$out_of_gas_654":                                ; preds = %"$have_gas_647"
  call void @_out_of_gas()
  br label %"$have_gas_655"

"$have_gas_655":                                  ; preds = %"$out_of_gas_654", %"$have_gas_647"
  %"$consume_656" = sub i64 %"$gasrem_652", 1
  store i64 %"$consume_656", i64* @_gasrem, align 8
  %"$res_16" = alloca %TName_Bool*, align 8
  %"$gasrem_657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_658" = icmp ugt i64 1, %"$gasrem_657"
  br i1 %"$gascmp_658", label %"$out_of_gas_659", label %"$have_gas_660"

"$out_of_gas_659":                                ; preds = %"$have_gas_655"
  call void @_out_of_gas()
  br label %"$have_gas_660"

"$have_gas_660":                                  ; preds = %"$out_of_gas_659", %"$have_gas_655"
  %"$consume_661" = sub i64 %"$gasrem_657", 1
  store i64 %"$consume_661", i64* @_gasrem, align 8
  %"$ans_14" = alloca %Int32, align 8
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 1, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_660"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_660"
  %"$consume_666" = sub i64 %"$gasrem_662", 1
  store i64 %"$consume_666", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$ans_14", align 4
  %"$gasrem_667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_668" = icmp ugt i64 1, %"$gasrem_667"
  br i1 %"$gascmp_668", label %"$out_of_gas_669", label %"$have_gas_670"

"$out_of_gas_669":                                ; preds = %"$have_gas_665"
  call void @_out_of_gas()
  br label %"$have_gas_670"

"$have_gas_670":                                  ; preds = %"$out_of_gas_669", %"$have_gas_665"
  %"$consume_671" = sub i64 %"$gasrem_667", 1
  store i64 %"$consume_671", i64* @_gasrem, align 8
  %"$res__15" = alloca %TName_Bool*, align 8
  %"$execptr_load_672" = load i8*, i8** @_execptr, align 8
  %"$$p_13_673" = load %Int32, %Int32* %"$p_13", align 4
  %"$$ans_14_674" = load %Int32, %Int32* %"$ans_14", align 4
  %"$eq_call_675" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_672", %Int32 %"$$p_13_673", %Int32 %"$$ans_14_674")
  store %TName_Bool* %"$eq_call_675", %TName_Bool** %"$res__15", align 8
  %"$gasrem_677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_678" = icmp ugt i64 1, %"$gasrem_677"
  br i1 %"$gascmp_678", label %"$out_of_gas_679", label %"$have_gas_680"

"$out_of_gas_679":                                ; preds = %"$have_gas_670"
  call void @_out_of_gas()
  br label %"$have_gas_680"

"$have_gas_680":                                  ; preds = %"$out_of_gas_679", %"$have_gas_670"
  %"$consume_681" = sub i64 %"$gasrem_677", 1
  store i64 %"$consume_681", i64* @_gasrem, align 8
  %"$BoolUtils.andb_141" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_682" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_683" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_682", 0
  %"$BoolUtils.andb_envptr_684" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_682", 1
  %"$$res_12_685" = load %TName_Bool*, %TName_Bool** %"$res_12", align 8
  %"$BoolUtils.andb_call_686" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_683"(i8* %"$BoolUtils.andb_envptr_684", %TName_Bool* %"$$res_12_685")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_686", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$BoolUtils.andb_142" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_141_687" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$$BoolUtils.andb_141_fptr_688" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_687", 0
  %"$$BoolUtils.andb_141_envptr_689" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_687", 1
  %"$$res__15_690" = load %TName_Bool*, %TName_Bool** %"$res__15", align 8
  %"$$BoolUtils.andb_141_call_691" = call %TName_Bool* %"$$BoolUtils.andb_141_fptr_688"(i8* %"$$BoolUtils.andb_141_envptr_689", %TName_Bool* %"$$res__15_690")
  store %TName_Bool* %"$$BoolUtils.andb_141_call_691", %TName_Bool** %"$BoolUtils.andb_142", align 8
  %"$$BoolUtils.andb_142_692" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_142", align 8
  store %TName_Bool* %"$$BoolUtils.andb_142_692", %TName_Bool** %"$res_16", align 8
  %"$gasrem_693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_694" = icmp ugt i64 1, %"$gasrem_693"
  br i1 %"$gascmp_694", label %"$out_of_gas_695", label %"$have_gas_696"

"$out_of_gas_695":                                ; preds = %"$have_gas_680"
  call void @_out_of_gas()
  br label %"$have_gas_696"

"$have_gas_696":                                  ; preds = %"$out_of_gas_695", %"$have_gas_680"
  %"$consume_697" = sub i64 %"$gasrem_693", 1
  store i64 %"$consume_697", i64* @_gasrem, align 8
  %"$p_17" = alloca %Int32, align 8
  %"$t2_698" = load %Int32, %Int32* %t2, align 4
  %"$p2_699" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_700" = call %Int32 @_pow_Int32(%Int32 %"$t2_698", %Uint32 %"$p2_699")
  store %Int32 %"$pow_call_700", %Int32* %"$p_17", align 4
  %"$gasrem_701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_702" = icmp ugt i64 1, %"$gasrem_701"
  br i1 %"$gascmp_702", label %"$out_of_gas_703", label %"$have_gas_704"

"$out_of_gas_703":                                ; preds = %"$have_gas_696"
  call void @_out_of_gas()
  br label %"$have_gas_704"

"$have_gas_704":                                  ; preds = %"$out_of_gas_703", %"$have_gas_696"
  %"$consume_705" = sub i64 %"$gasrem_701", 1
  store i64 %"$consume_705", i64* @_gasrem, align 8
  %"$res_20" = alloca %TName_Bool*, align 8
  %"$gasrem_706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_707" = icmp ugt i64 1, %"$gasrem_706"
  br i1 %"$gascmp_707", label %"$out_of_gas_708", label %"$have_gas_709"

"$out_of_gas_708":                                ; preds = %"$have_gas_704"
  call void @_out_of_gas()
  br label %"$have_gas_709"

"$have_gas_709":                                  ; preds = %"$out_of_gas_708", %"$have_gas_704"
  %"$consume_710" = sub i64 %"$gasrem_706", 1
  store i64 %"$consume_710", i64* @_gasrem, align 8
  %"$ans_18" = alloca %Int32, align 8
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 1, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %"$have_gas_709"
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %"$have_gas_709"
  %"$consume_715" = sub i64 %"$gasrem_711", 1
  store i64 %"$consume_715", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %"$ans_18", align 4
  %"$gasrem_716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_717" = icmp ugt i64 1, %"$gasrem_716"
  br i1 %"$gascmp_717", label %"$out_of_gas_718", label %"$have_gas_719"

"$out_of_gas_718":                                ; preds = %"$have_gas_714"
  call void @_out_of_gas()
  br label %"$have_gas_719"

"$have_gas_719":                                  ; preds = %"$out_of_gas_718", %"$have_gas_714"
  %"$consume_720" = sub i64 %"$gasrem_716", 1
  store i64 %"$consume_720", i64* @_gasrem, align 8
  %"$res__19" = alloca %TName_Bool*, align 8
  %"$execptr_load_721" = load i8*, i8** @_execptr, align 8
  %"$$p_17_722" = load %Int32, %Int32* %"$p_17", align 4
  %"$$ans_18_723" = load %Int32, %Int32* %"$ans_18", align 4
  %"$eq_call_724" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_721", %Int32 %"$$p_17_722", %Int32 %"$$ans_18_723")
  store %TName_Bool* %"$eq_call_724", %TName_Bool** %"$res__19", align 8
  %"$gasrem_726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_727" = icmp ugt i64 1, %"$gasrem_726"
  br i1 %"$gascmp_727", label %"$out_of_gas_728", label %"$have_gas_729"

"$out_of_gas_728":                                ; preds = %"$have_gas_719"
  call void @_out_of_gas()
  br label %"$have_gas_729"

"$have_gas_729":                                  ; preds = %"$out_of_gas_728", %"$have_gas_719"
  %"$consume_730" = sub i64 %"$gasrem_726", 1
  store i64 %"$consume_730", i64* @_gasrem, align 8
  %"$BoolUtils.andb_143" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_731" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_732" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_731", 0
  %"$BoolUtils.andb_envptr_733" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_731", 1
  %"$$res_16_734" = load %TName_Bool*, %TName_Bool** %"$res_16", align 8
  %"$BoolUtils.andb_call_735" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_732"(i8* %"$BoolUtils.andb_envptr_733", %TName_Bool* %"$$res_16_734")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_735", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$BoolUtils.andb_144" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_143_736" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$$BoolUtils.andb_143_fptr_737" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_736", 0
  %"$$BoolUtils.andb_143_envptr_738" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_736", 1
  %"$$res__19_739" = load %TName_Bool*, %TName_Bool** %"$res__19", align 8
  %"$$BoolUtils.andb_143_call_740" = call %TName_Bool* %"$$BoolUtils.andb_143_fptr_737"(i8* %"$$BoolUtils.andb_143_envptr_738", %TName_Bool* %"$$res__19_739")
  store %TName_Bool* %"$$BoolUtils.andb_143_call_740", %TName_Bool** %"$BoolUtils.andb_144", align 8
  %"$$BoolUtils.andb_144_741" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_144", align 8
  store %TName_Bool* %"$$BoolUtils.andb_144_741", %TName_Bool** %"$res_20", align 8
  %"$gasrem_742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_743" = icmp ugt i64 1, %"$gasrem_742"
  br i1 %"$gascmp_743", label %"$out_of_gas_744", label %"$have_gas_745"

"$out_of_gas_744":                                ; preds = %"$have_gas_729"
  call void @_out_of_gas()
  br label %"$have_gas_745"

"$have_gas_745":                                  ; preds = %"$out_of_gas_744", %"$have_gas_729"
  %"$consume_746" = sub i64 %"$gasrem_742", 1
  store i64 %"$consume_746", i64* @_gasrem, align 8
  %"$p_21" = alloca %Int32, align 8
  %"$t2_747" = load %Int32, %Int32* %t2, align 4
  %"$p3_748" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_749" = call %Int32 @_pow_Int32(%Int32 %"$t2_747", %Uint32 %"$p3_748")
  store %Int32 %"$pow_call_749", %Int32* %"$p_21", align 4
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_745"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_745"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  %"$res_24" = alloca %TName_Bool*, align 8
  %"$gasrem_755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_756" = icmp ugt i64 1, %"$gasrem_755"
  br i1 %"$gascmp_756", label %"$out_of_gas_757", label %"$have_gas_758"

"$out_of_gas_757":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_758"

"$have_gas_758":                                  ; preds = %"$out_of_gas_757", %"$have_gas_753"
  %"$consume_759" = sub i64 %"$gasrem_755", 1
  store i64 %"$consume_759", i64* @_gasrem, align 8
  %"$ans_22" = alloca %Int32, align 8
  %"$gasrem_760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_761" = icmp ugt i64 1, %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$have_gas_758"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$have_gas_758"
  %"$consume_764" = sub i64 %"$gasrem_760", 1
  store i64 %"$consume_764", i64* @_gasrem, align 8
  store %Int32 { i32 81 }, %Int32* %"$ans_22", align 4
  %"$gasrem_765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_766" = icmp ugt i64 1, %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %"$have_gas_763"
  %"$consume_769" = sub i64 %"$gasrem_765", 1
  store i64 %"$consume_769", i64* @_gasrem, align 8
  %"$res__23" = alloca %TName_Bool*, align 8
  %"$execptr_load_770" = load i8*, i8** @_execptr, align 8
  %"$$p_21_771" = load %Int32, %Int32* %"$p_21", align 4
  %"$$ans_22_772" = load %Int32, %Int32* %"$ans_22", align 4
  %"$eq_call_773" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_770", %Int32 %"$$p_21_771", %Int32 %"$$ans_22_772")
  store %TName_Bool* %"$eq_call_773", %TName_Bool** %"$res__23", align 8
  %"$gasrem_775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_776" = icmp ugt i64 1, %"$gasrem_775"
  br i1 %"$gascmp_776", label %"$out_of_gas_777", label %"$have_gas_778"

"$out_of_gas_777":                                ; preds = %"$have_gas_768"
  call void @_out_of_gas()
  br label %"$have_gas_778"

"$have_gas_778":                                  ; preds = %"$out_of_gas_777", %"$have_gas_768"
  %"$consume_779" = sub i64 %"$gasrem_775", 1
  store i64 %"$consume_779", i64* @_gasrem, align 8
  %"$BoolUtils.andb_145" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_780" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_781" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_780", 0
  %"$BoolUtils.andb_envptr_782" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_780", 1
  %"$$res_20_783" = load %TName_Bool*, %TName_Bool** %"$res_20", align 8
  %"$BoolUtils.andb_call_784" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_781"(i8* %"$BoolUtils.andb_envptr_782", %TName_Bool* %"$$res_20_783")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_784", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$BoolUtils.andb_146" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_145_785" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$$BoolUtils.andb_145_fptr_786" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_785", 0
  %"$$BoolUtils.andb_145_envptr_787" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_785", 1
  %"$$res__23_788" = load %TName_Bool*, %TName_Bool** %"$res__23", align 8
  %"$$BoolUtils.andb_145_call_789" = call %TName_Bool* %"$$BoolUtils.andb_145_fptr_786"(i8* %"$$BoolUtils.andb_145_envptr_787", %TName_Bool* %"$$res__23_788")
  store %TName_Bool* %"$$BoolUtils.andb_145_call_789", %TName_Bool** %"$BoolUtils.andb_146", align 8
  %"$$BoolUtils.andb_146_790" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_146", align 8
  store %TName_Bool* %"$$BoolUtils.andb_146_790", %TName_Bool** %"$res_24", align 8
  %"$gasrem_791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_792" = icmp ugt i64 1, %"$gasrem_791"
  br i1 %"$gascmp_792", label %"$out_of_gas_793", label %"$have_gas_794"

"$out_of_gas_793":                                ; preds = %"$have_gas_778"
  call void @_out_of_gas()
  br label %"$have_gas_794"

"$have_gas_794":                                  ; preds = %"$out_of_gas_793", %"$have_gas_778"
  %"$consume_795" = sub i64 %"$gasrem_791", 1
  store i64 %"$consume_795", i64* @_gasrem, align 8
  %"$p_25" = alloca %Int32, align 8
  %"$t2_796" = load %Int32, %Int32* %t2, align 4
  %"$p4_797" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_798" = call %Int32 @_pow_Int32(%Int32 %"$t2_796", %Uint32 %"$p4_797")
  store %Int32 %"$pow_call_798", %Int32* %"$p_25", align 4
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 1, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %"$have_gas_794"
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %"$have_gas_794"
  %"$consume_803" = sub i64 %"$gasrem_799", 1
  store i64 %"$consume_803", i64* @_gasrem, align 8
  %"$res_28" = alloca %TName_Bool*, align 8
  %"$gasrem_804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_805" = icmp ugt i64 1, %"$gasrem_804"
  br i1 %"$gascmp_805", label %"$out_of_gas_806", label %"$have_gas_807"

"$out_of_gas_806":                                ; preds = %"$have_gas_802"
  call void @_out_of_gas()
  br label %"$have_gas_807"

"$have_gas_807":                                  ; preds = %"$out_of_gas_806", %"$have_gas_802"
  %"$consume_808" = sub i64 %"$gasrem_804", 1
  store i64 %"$consume_808", i64* @_gasrem, align 8
  %"$ans_26" = alloca %Int32, align 8
  %"$gasrem_809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_810" = icmp ugt i64 1, %"$gasrem_809"
  br i1 %"$gascmp_810", label %"$out_of_gas_811", label %"$have_gas_812"

"$out_of_gas_811":                                ; preds = %"$have_gas_807"
  call void @_out_of_gas()
  br label %"$have_gas_812"

"$have_gas_812":                                  ; preds = %"$out_of_gas_811", %"$have_gas_807"
  %"$consume_813" = sub i64 %"$gasrem_809", 1
  store i64 %"$consume_813", i64* @_gasrem, align 8
  store %Int32 { i32 59049 }, %Int32* %"$ans_26", align 4
  %"$gasrem_814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_815" = icmp ugt i64 1, %"$gasrem_814"
  br i1 %"$gascmp_815", label %"$out_of_gas_816", label %"$have_gas_817"

"$out_of_gas_816":                                ; preds = %"$have_gas_812"
  call void @_out_of_gas()
  br label %"$have_gas_817"

"$have_gas_817":                                  ; preds = %"$out_of_gas_816", %"$have_gas_812"
  %"$consume_818" = sub i64 %"$gasrem_814", 1
  store i64 %"$consume_818", i64* @_gasrem, align 8
  %"$res__27" = alloca %TName_Bool*, align 8
  %"$execptr_load_819" = load i8*, i8** @_execptr, align 8
  %"$$p_25_820" = load %Int32, %Int32* %"$p_25", align 4
  %"$$ans_26_821" = load %Int32, %Int32* %"$ans_26", align 4
  %"$eq_call_822" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_819", %Int32 %"$$p_25_820", %Int32 %"$$ans_26_821")
  store %TName_Bool* %"$eq_call_822", %TName_Bool** %"$res__27", align 8
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 1, %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_817"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_817"
  %"$consume_828" = sub i64 %"$gasrem_824", 1
  store i64 %"$consume_828", i64* @_gasrem, align 8
  %"$BoolUtils.andb_147" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_829" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_830" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_829", 0
  %"$BoolUtils.andb_envptr_831" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_829", 1
  %"$$res_24_832" = load %TName_Bool*, %TName_Bool** %"$res_24", align 8
  %"$BoolUtils.andb_call_833" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_830"(i8* %"$BoolUtils.andb_envptr_831", %TName_Bool* %"$$res_24_832")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_833", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$BoolUtils.andb_148" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_147_834" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$$BoolUtils.andb_147_fptr_835" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_834", 0
  %"$$BoolUtils.andb_147_envptr_836" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_834", 1
  %"$$res__27_837" = load %TName_Bool*, %TName_Bool** %"$res__27", align 8
  %"$$BoolUtils.andb_147_call_838" = call %TName_Bool* %"$$BoolUtils.andb_147_fptr_835"(i8* %"$$BoolUtils.andb_147_envptr_836", %TName_Bool* %"$$res__27_837")
  store %TName_Bool* %"$$BoolUtils.andb_147_call_838", %TName_Bool** %"$BoolUtils.andb_148", align 8
  %"$$BoolUtils.andb_148_839" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_148", align 8
  store %TName_Bool* %"$$BoolUtils.andb_148_839", %TName_Bool** %"$res_28", align 8
  %"$gasrem_840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_841" = icmp ugt i64 1, %"$gasrem_840"
  br i1 %"$gascmp_841", label %"$out_of_gas_842", label %"$have_gas_843"

"$out_of_gas_842":                                ; preds = %"$have_gas_827"
  call void @_out_of_gas()
  br label %"$have_gas_843"

"$have_gas_843":                                  ; preds = %"$out_of_gas_842", %"$have_gas_827"
  %"$consume_844" = sub i64 %"$gasrem_840", 1
  store i64 %"$consume_844", i64* @_gasrem, align 8
  %"$p_29" = alloca %Uint64, align 8
  %"$t3_845" = load %Uint64, %Uint64* %t3, align 8
  %"$p1_846" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_847" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_845", %Uint32 %"$p1_846")
  store %Uint64 %"$pow_call_847", %Uint64* %"$p_29", align 8
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 1, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %"$have_gas_843"
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %"$have_gas_843"
  %"$consume_852" = sub i64 %"$gasrem_848", 1
  store i64 %"$consume_852", i64* @_gasrem, align 8
  %"$res_32" = alloca %TName_Bool*, align 8
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 1, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$have_gas_851"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$have_gas_851"
  %"$consume_857" = sub i64 %"$gasrem_853", 1
  store i64 %"$consume_857", i64* @_gasrem, align 8
  %"$ans_30" = alloca %Uint64, align 8
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 1, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %"$have_gas_856"
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %"$have_gas_856"
  %"$consume_862" = sub i64 %"$gasrem_858", 1
  store i64 %"$consume_862", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %"$ans_30", align 8
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 1, %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_861"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_861"
  %"$consume_867" = sub i64 %"$gasrem_863", 1
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %"$res__31" = alloca %TName_Bool*, align 8
  %"$execptr_load_868" = load i8*, i8** @_execptr, align 8
  %"$$p_29_869" = load %Uint64, %Uint64* %"$p_29", align 8
  %"$$ans_30_870" = load %Uint64, %Uint64* %"$ans_30", align 8
  %"$eq_call_871" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_868", %Uint64 %"$$p_29_869", %Uint64 %"$$ans_30_870")
  store %TName_Bool* %"$eq_call_871", %TName_Bool** %"$res__31", align 8
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_866"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %"$BoolUtils.andb_149" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_878" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_879" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_878", 0
  %"$BoolUtils.andb_envptr_880" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_878", 1
  %"$$res_28_881" = load %TName_Bool*, %TName_Bool** %"$res_28", align 8
  %"$BoolUtils.andb_call_882" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_879"(i8* %"$BoolUtils.andb_envptr_880", %TName_Bool* %"$$res_28_881")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_882", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$BoolUtils.andb_150" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_149_883" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$$BoolUtils.andb_149_fptr_884" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_883", 0
  %"$$BoolUtils.andb_149_envptr_885" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_883", 1
  %"$$res__31_886" = load %TName_Bool*, %TName_Bool** %"$res__31", align 8
  %"$$BoolUtils.andb_149_call_887" = call %TName_Bool* %"$$BoolUtils.andb_149_fptr_884"(i8* %"$$BoolUtils.andb_149_envptr_885", %TName_Bool* %"$$res__31_886")
  store %TName_Bool* %"$$BoolUtils.andb_149_call_887", %TName_Bool** %"$BoolUtils.andb_150", align 8
  %"$$BoolUtils.andb_150_888" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_150", align 8
  store %TName_Bool* %"$$BoolUtils.andb_150_888", %TName_Bool** %"$res_32", align 8
  %"$gasrem_889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_890" = icmp ugt i64 1, %"$gasrem_889"
  br i1 %"$gascmp_890", label %"$out_of_gas_891", label %"$have_gas_892"

"$out_of_gas_891":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_892"

"$have_gas_892":                                  ; preds = %"$out_of_gas_891", %"$have_gas_876"
  %"$consume_893" = sub i64 %"$gasrem_889", 1
  store i64 %"$consume_893", i64* @_gasrem, align 8
  %"$p_33" = alloca %Uint64, align 8
  %"$t3_894" = load %Uint64, %Uint64* %t3, align 8
  %"$p2_895" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_896" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_894", %Uint32 %"$p2_895")
  store %Uint64 %"$pow_call_896", %Uint64* %"$p_33", align 8
  %"$gasrem_897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_898" = icmp ugt i64 1, %"$gasrem_897"
  br i1 %"$gascmp_898", label %"$out_of_gas_899", label %"$have_gas_900"

"$out_of_gas_899":                                ; preds = %"$have_gas_892"
  call void @_out_of_gas()
  br label %"$have_gas_900"

"$have_gas_900":                                  ; preds = %"$out_of_gas_899", %"$have_gas_892"
  %"$consume_901" = sub i64 %"$gasrem_897", 1
  store i64 %"$consume_901", i64* @_gasrem, align 8
  %"$res_36" = alloca %TName_Bool*, align 8
  %"$gasrem_902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_903" = icmp ugt i64 1, %"$gasrem_902"
  br i1 %"$gascmp_903", label %"$out_of_gas_904", label %"$have_gas_905"

"$out_of_gas_904":                                ; preds = %"$have_gas_900"
  call void @_out_of_gas()
  br label %"$have_gas_905"

"$have_gas_905":                                  ; preds = %"$out_of_gas_904", %"$have_gas_900"
  %"$consume_906" = sub i64 %"$gasrem_902", 1
  store i64 %"$consume_906", i64* @_gasrem, align 8
  %"$ans_34" = alloca %Uint64, align 8
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_905"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_905"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %"$ans_34", align 8
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 1, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_910"
  %"$consume_916" = sub i64 %"$gasrem_912", 1
  store i64 %"$consume_916", i64* @_gasrem, align 8
  %"$res__35" = alloca %TName_Bool*, align 8
  %"$execptr_load_917" = load i8*, i8** @_execptr, align 8
  %"$$p_33_918" = load %Uint64, %Uint64* %"$p_33", align 8
  %"$$ans_34_919" = load %Uint64, %Uint64* %"$ans_34", align 8
  %"$eq_call_920" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_917", %Uint64 %"$$p_33_918", %Uint64 %"$$ans_34_919")
  store %TName_Bool* %"$eq_call_920", %TName_Bool** %"$res__35", align 8
  %"$gasrem_922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_923" = icmp ugt i64 1, %"$gasrem_922"
  br i1 %"$gascmp_923", label %"$out_of_gas_924", label %"$have_gas_925"

"$out_of_gas_924":                                ; preds = %"$have_gas_915"
  call void @_out_of_gas()
  br label %"$have_gas_925"

"$have_gas_925":                                  ; preds = %"$out_of_gas_924", %"$have_gas_915"
  %"$consume_926" = sub i64 %"$gasrem_922", 1
  store i64 %"$consume_926", i64* @_gasrem, align 8
  %"$BoolUtils.andb_151" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_927" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_928" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_927", 0
  %"$BoolUtils.andb_envptr_929" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_927", 1
  %"$$res_32_930" = load %TName_Bool*, %TName_Bool** %"$res_32", align 8
  %"$BoolUtils.andb_call_931" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_928"(i8* %"$BoolUtils.andb_envptr_929", %TName_Bool* %"$$res_32_930")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_931", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$BoolUtils.andb_152" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_151_932" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$$BoolUtils.andb_151_fptr_933" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_932", 0
  %"$$BoolUtils.andb_151_envptr_934" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_932", 1
  %"$$res__35_935" = load %TName_Bool*, %TName_Bool** %"$res__35", align 8
  %"$$BoolUtils.andb_151_call_936" = call %TName_Bool* %"$$BoolUtils.andb_151_fptr_933"(i8* %"$$BoolUtils.andb_151_envptr_934", %TName_Bool* %"$$res__35_935")
  store %TName_Bool* %"$$BoolUtils.andb_151_call_936", %TName_Bool** %"$BoolUtils.andb_152", align 8
  %"$$BoolUtils.andb_152_937" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_152", align 8
  store %TName_Bool* %"$$BoolUtils.andb_152_937", %TName_Bool** %"$res_36", align 8
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 1, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_925"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_925"
  %"$consume_942" = sub i64 %"$gasrem_938", 1
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %"$p_37" = alloca %Uint64, align 8
  %"$t3_943" = load %Uint64, %Uint64* %t3, align 8
  %"$p3_944" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_945" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_943", %Uint32 %"$p3_944")
  store %Uint64 %"$pow_call_945", %Uint64* %"$p_37", align 8
  %"$gasrem_946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_947" = icmp ugt i64 1, %"$gasrem_946"
  br i1 %"$gascmp_947", label %"$out_of_gas_948", label %"$have_gas_949"

"$out_of_gas_948":                                ; preds = %"$have_gas_941"
  call void @_out_of_gas()
  br label %"$have_gas_949"

"$have_gas_949":                                  ; preds = %"$out_of_gas_948", %"$have_gas_941"
  %"$consume_950" = sub i64 %"$gasrem_946", 1
  store i64 %"$consume_950", i64* @_gasrem, align 8
  %"$res_40" = alloca %TName_Bool*, align 8
  %"$gasrem_951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_952" = icmp ugt i64 1, %"$gasrem_951"
  br i1 %"$gascmp_952", label %"$out_of_gas_953", label %"$have_gas_954"

"$out_of_gas_953":                                ; preds = %"$have_gas_949"
  call void @_out_of_gas()
  br label %"$have_gas_954"

"$have_gas_954":                                  ; preds = %"$out_of_gas_953", %"$have_gas_949"
  %"$consume_955" = sub i64 %"$gasrem_951", 1
  store i64 %"$consume_955", i64* @_gasrem, align 8
  %"$ans_38" = alloca %Uint64, align 8
  %"$gasrem_956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_957" = icmp ugt i64 1, %"$gasrem_956"
  br i1 %"$gascmp_957", label %"$out_of_gas_958", label %"$have_gas_959"

"$out_of_gas_958":                                ; preds = %"$have_gas_954"
  call void @_out_of_gas()
  br label %"$have_gas_959"

"$have_gas_959":                                  ; preds = %"$out_of_gas_958", %"$have_gas_954"
  %"$consume_960" = sub i64 %"$gasrem_956", 1
  store i64 %"$consume_960", i64* @_gasrem, align 8
  store %Uint64 { i64 100000000 }, %Uint64* %"$ans_38", align 8
  %"$gasrem_961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_962" = icmp ugt i64 1, %"$gasrem_961"
  br i1 %"$gascmp_962", label %"$out_of_gas_963", label %"$have_gas_964"

"$out_of_gas_963":                                ; preds = %"$have_gas_959"
  call void @_out_of_gas()
  br label %"$have_gas_964"

"$have_gas_964":                                  ; preds = %"$out_of_gas_963", %"$have_gas_959"
  %"$consume_965" = sub i64 %"$gasrem_961", 1
  store i64 %"$consume_965", i64* @_gasrem, align 8
  %"$res__39" = alloca %TName_Bool*, align 8
  %"$execptr_load_966" = load i8*, i8** @_execptr, align 8
  %"$$p_37_967" = load %Uint64, %Uint64* %"$p_37", align 8
  %"$$ans_38_968" = load %Uint64, %Uint64* %"$ans_38", align 8
  %"$eq_call_969" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_966", %Uint64 %"$$p_37_967", %Uint64 %"$$ans_38_968")
  store %TName_Bool* %"$eq_call_969", %TName_Bool** %"$res__39", align 8
  %"$gasrem_971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_972" = icmp ugt i64 1, %"$gasrem_971"
  br i1 %"$gascmp_972", label %"$out_of_gas_973", label %"$have_gas_974"

"$out_of_gas_973":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_974"

"$have_gas_974":                                  ; preds = %"$out_of_gas_973", %"$have_gas_964"
  %"$consume_975" = sub i64 %"$gasrem_971", 1
  store i64 %"$consume_975", i64* @_gasrem, align 8
  %"$BoolUtils.andb_153" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_976" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_977" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_976", 0
  %"$BoolUtils.andb_envptr_978" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_976", 1
  %"$$res_36_979" = load %TName_Bool*, %TName_Bool** %"$res_36", align 8
  %"$BoolUtils.andb_call_980" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_977"(i8* %"$BoolUtils.andb_envptr_978", %TName_Bool* %"$$res_36_979")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_980", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$BoolUtils.andb_154" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_153_981" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$$BoolUtils.andb_153_fptr_982" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_981", 0
  %"$$BoolUtils.andb_153_envptr_983" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_981", 1
  %"$$res__39_984" = load %TName_Bool*, %TName_Bool** %"$res__39", align 8
  %"$$BoolUtils.andb_153_call_985" = call %TName_Bool* %"$$BoolUtils.andb_153_fptr_982"(i8* %"$$BoolUtils.andb_153_envptr_983", %TName_Bool* %"$$res__39_984")
  store %TName_Bool* %"$$BoolUtils.andb_153_call_985", %TName_Bool** %"$BoolUtils.andb_154", align 8
  %"$$BoolUtils.andb_154_986" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_154", align 8
  store %TName_Bool* %"$$BoolUtils.andb_154_986", %TName_Bool** %"$res_40", align 8
  %"$gasrem_987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_988" = icmp ugt i64 1, %"$gasrem_987"
  br i1 %"$gascmp_988", label %"$out_of_gas_989", label %"$have_gas_990"

"$out_of_gas_989":                                ; preds = %"$have_gas_974"
  call void @_out_of_gas()
  br label %"$have_gas_990"

"$have_gas_990":                                  ; preds = %"$out_of_gas_989", %"$have_gas_974"
  %"$consume_991" = sub i64 %"$gasrem_987", 1
  store i64 %"$consume_991", i64* @_gasrem, align 8
  %"$p_41" = alloca %Int64, align 8
  %"$t4_992" = load %Int64, %Int64* %t4, align 8
  %"$p1_993" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_994" = call %Int64 @_pow_Int64(%Int64 %"$t4_992", %Uint32 %"$p1_993")
  store %Int64 %"$pow_call_994", %Int64* %"$p_41", align 8
  %"$gasrem_995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_996" = icmp ugt i64 1, %"$gasrem_995"
  br i1 %"$gascmp_996", label %"$out_of_gas_997", label %"$have_gas_998"

"$out_of_gas_997":                                ; preds = %"$have_gas_990"
  call void @_out_of_gas()
  br label %"$have_gas_998"

"$have_gas_998":                                  ; preds = %"$out_of_gas_997", %"$have_gas_990"
  %"$consume_999" = sub i64 %"$gasrem_995", 1
  store i64 %"$consume_999", i64* @_gasrem, align 8
  %"$res_44" = alloca %TName_Bool*, align 8
  %"$gasrem_1000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1001" = icmp ugt i64 1, %"$gasrem_1000"
  br i1 %"$gascmp_1001", label %"$out_of_gas_1002", label %"$have_gas_1003"

"$out_of_gas_1002":                               ; preds = %"$have_gas_998"
  call void @_out_of_gas()
  br label %"$have_gas_1003"

"$have_gas_1003":                                 ; preds = %"$out_of_gas_1002", %"$have_gas_998"
  %"$consume_1004" = sub i64 %"$gasrem_1000", 1
  store i64 %"$consume_1004", i64* @_gasrem, align 8
  %"$ans_42" = alloca %Int64, align 8
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$have_gas_1003"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$have_gas_1003"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %"$ans_42", align 8
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$have_gas_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  %"$res__43" = alloca %TName_Bool*, align 8
  %"$execptr_load_1015" = load i8*, i8** @_execptr, align 8
  %"$$p_41_1016" = load %Int64, %Int64* %"$p_41", align 8
  %"$$ans_42_1017" = load %Int64, %Int64* %"$ans_42", align 8
  %"$eq_call_1018" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1015", %Int64 %"$$p_41_1016", %Int64 %"$$ans_42_1017")
  store %TName_Bool* %"$eq_call_1018", %TName_Bool** %"$res__43", align 8
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 1, %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %"$have_gas_1013"
  %"$consume_1024" = sub i64 %"$gasrem_1020", 1
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  %"$BoolUtils.andb_155" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1025" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1026" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1025", 0
  %"$BoolUtils.andb_envptr_1027" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1025", 1
  %"$$res_40_1028" = load %TName_Bool*, %TName_Bool** %"$res_40", align 8
  %"$BoolUtils.andb_call_1029" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1026"(i8* %"$BoolUtils.andb_envptr_1027", %TName_Bool* %"$$res_40_1028")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1029", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$BoolUtils.andb_156" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_155_1030" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$$BoolUtils.andb_155_fptr_1031" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1030", 0
  %"$$BoolUtils.andb_155_envptr_1032" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1030", 1
  %"$$res__43_1033" = load %TName_Bool*, %TName_Bool** %"$res__43", align 8
  %"$$BoolUtils.andb_155_call_1034" = call %TName_Bool* %"$$BoolUtils.andb_155_fptr_1031"(i8* %"$$BoolUtils.andb_155_envptr_1032", %TName_Bool* %"$$res__43_1033")
  store %TName_Bool* %"$$BoolUtils.andb_155_call_1034", %TName_Bool** %"$BoolUtils.andb_156", align 8
  %"$$BoolUtils.andb_156_1035" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_156", align 8
  store %TName_Bool* %"$$BoolUtils.andb_156_1035", %TName_Bool** %"$res_44", align 8
  %"$gasrem_1036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1037" = icmp ugt i64 1, %"$gasrem_1036"
  br i1 %"$gascmp_1037", label %"$out_of_gas_1038", label %"$have_gas_1039"

"$out_of_gas_1038":                               ; preds = %"$have_gas_1023"
  call void @_out_of_gas()
  br label %"$have_gas_1039"

"$have_gas_1039":                                 ; preds = %"$out_of_gas_1038", %"$have_gas_1023"
  %"$consume_1040" = sub i64 %"$gasrem_1036", 1
  store i64 %"$consume_1040", i64* @_gasrem, align 8
  %"$p_45" = alloca %Int64, align 8
  %"$t4_1041" = load %Int64, %Int64* %t4, align 8
  %"$p2_1042" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1043" = call %Int64 @_pow_Int64(%Int64 %"$t4_1041", %Uint32 %"$p2_1042")
  store %Int64 %"$pow_call_1043", %Int64* %"$p_45", align 8
  %"$gasrem_1044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1045" = icmp ugt i64 1, %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1039"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1039"
  %"$consume_1048" = sub i64 %"$gasrem_1044", 1
  store i64 %"$consume_1048", i64* @_gasrem, align 8
  %"$res_48" = alloca %TName_Bool*, align 8
  %"$gasrem_1049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1050" = icmp ugt i64 1, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$have_gas_1047"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 1
  store i64 %"$consume_1053", i64* @_gasrem, align 8
  %"$ans_46" = alloca %Int64, align 8
  %"$gasrem_1054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1055" = icmp ugt i64 1, %"$gasrem_1054"
  br i1 %"$gascmp_1055", label %"$out_of_gas_1056", label %"$have_gas_1057"

"$out_of_gas_1056":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1057"

"$have_gas_1057":                                 ; preds = %"$out_of_gas_1056", %"$have_gas_1052"
  %"$consume_1058" = sub i64 %"$gasrem_1054", 1
  store i64 %"$consume_1058", i64* @_gasrem, align 8
  store %Int64 { i64 -101 }, %Int64* %"$ans_46", align 8
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 1, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1057"
  %"$consume_1063" = sub i64 %"$gasrem_1059", 1
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  %"$res__47" = alloca %TName_Bool*, align 8
  %"$execptr_load_1064" = load i8*, i8** @_execptr, align 8
  %"$$p_45_1065" = load %Int64, %Int64* %"$p_45", align 8
  %"$$ans_46_1066" = load %Int64, %Int64* %"$ans_46", align 8
  %"$eq_call_1067" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1064", %Int64 %"$$p_45_1065", %Int64 %"$$ans_46_1066")
  store %TName_Bool* %"$eq_call_1067", %TName_Bool** %"$res__47", align 8
  %"$gasrem_1069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1070" = icmp ugt i64 1, %"$gasrem_1069"
  br i1 %"$gascmp_1070", label %"$out_of_gas_1071", label %"$have_gas_1072"

"$out_of_gas_1071":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1072"

"$have_gas_1072":                                 ; preds = %"$out_of_gas_1071", %"$have_gas_1062"
  %"$consume_1073" = sub i64 %"$gasrem_1069", 1
  store i64 %"$consume_1073", i64* @_gasrem, align 8
  %"$BoolUtils.andb_157" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1074" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1075" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1074", 0
  %"$BoolUtils.andb_envptr_1076" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1074", 1
  %"$$res_44_1077" = load %TName_Bool*, %TName_Bool** %"$res_44", align 8
  %"$BoolUtils.andb_call_1078" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1075"(i8* %"$BoolUtils.andb_envptr_1076", %TName_Bool* %"$$res_44_1077")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1078", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$BoolUtils.andb_158" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_157_1079" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$$BoolUtils.andb_157_fptr_1080" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1079", 0
  %"$$BoolUtils.andb_157_envptr_1081" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1079", 1
  %"$$res__47_1082" = load %TName_Bool*, %TName_Bool** %"$res__47", align 8
  %"$$BoolUtils.andb_157_call_1083" = call %TName_Bool* %"$$BoolUtils.andb_157_fptr_1080"(i8* %"$$BoolUtils.andb_157_envptr_1081", %TName_Bool* %"$$res__47_1082")
  store %TName_Bool* %"$$BoolUtils.andb_157_call_1083", %TName_Bool** %"$BoolUtils.andb_158", align 8
  %"$$BoolUtils.andb_158_1084" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_158", align 8
  store %TName_Bool* %"$$BoolUtils.andb_158_1084", %TName_Bool** %"$res_48", align 8
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 1, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$have_gas_1072"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$have_gas_1072"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 1
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %"$p_49" = alloca %Int64, align 8
  %"$t4_1090" = load %Int64, %Int64* %t4, align 8
  %"$p3_1091" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1092" = call %Int64 @_pow_Int64(%Int64 %"$t4_1090", %Uint32 %"$p3_1091")
  store %Int64 %"$pow_call_1092", %Int64* %"$p_49", align 8
  %"$gasrem_1093" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1094" = icmp ugt i64 1, %"$gasrem_1093"
  br i1 %"$gascmp_1094", label %"$out_of_gas_1095", label %"$have_gas_1096"

"$out_of_gas_1095":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1096"

"$have_gas_1096":                                 ; preds = %"$out_of_gas_1095", %"$have_gas_1088"
  %"$consume_1097" = sub i64 %"$gasrem_1093", 1
  store i64 %"$consume_1097", i64* @_gasrem, align 8
  %"$res_52" = alloca %TName_Bool*, align 8
  %"$gasrem_1098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1099" = icmp ugt i64 1, %"$gasrem_1098"
  br i1 %"$gascmp_1099", label %"$out_of_gas_1100", label %"$have_gas_1101"

"$out_of_gas_1100":                               ; preds = %"$have_gas_1096"
  call void @_out_of_gas()
  br label %"$have_gas_1101"

"$have_gas_1101":                                 ; preds = %"$out_of_gas_1100", %"$have_gas_1096"
  %"$consume_1102" = sub i64 %"$gasrem_1098", 1
  store i64 %"$consume_1102", i64* @_gasrem, align 8
  %"$ans_50" = alloca %Int64, align 8
  %"$gasrem_1103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1104" = icmp ugt i64 1, %"$gasrem_1103"
  br i1 %"$gascmp_1104", label %"$out_of_gas_1105", label %"$have_gas_1106"

"$out_of_gas_1105":                               ; preds = %"$have_gas_1101"
  call void @_out_of_gas()
  br label %"$have_gas_1106"

"$have_gas_1106":                                 ; preds = %"$out_of_gas_1105", %"$have_gas_1101"
  %"$consume_1107" = sub i64 %"$gasrem_1103", 1
  store i64 %"$consume_1107", i64* @_gasrem, align 8
  store %Int64 { i64 104060401 }, %Int64* %"$ans_50", align 8
  %"$gasrem_1108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1109" = icmp ugt i64 1, %"$gasrem_1108"
  br i1 %"$gascmp_1109", label %"$out_of_gas_1110", label %"$have_gas_1111"

"$out_of_gas_1110":                               ; preds = %"$have_gas_1106"
  call void @_out_of_gas()
  br label %"$have_gas_1111"

"$have_gas_1111":                                 ; preds = %"$out_of_gas_1110", %"$have_gas_1106"
  %"$consume_1112" = sub i64 %"$gasrem_1108", 1
  store i64 %"$consume_1112", i64* @_gasrem, align 8
  %"$res__51" = alloca %TName_Bool*, align 8
  %"$execptr_load_1113" = load i8*, i8** @_execptr, align 8
  %"$$p_49_1114" = load %Int64, %Int64* %"$p_49", align 8
  %"$$ans_50_1115" = load %Int64, %Int64* %"$ans_50", align 8
  %"$eq_call_1116" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1113", %Int64 %"$$p_49_1114", %Int64 %"$$ans_50_1115")
  store %TName_Bool* %"$eq_call_1116", %TName_Bool** %"$res__51", align 8
  %"$gasrem_1118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1119" = icmp ugt i64 1, %"$gasrem_1118"
  br i1 %"$gascmp_1119", label %"$out_of_gas_1120", label %"$have_gas_1121"

"$out_of_gas_1120":                               ; preds = %"$have_gas_1111"
  call void @_out_of_gas()
  br label %"$have_gas_1121"

"$have_gas_1121":                                 ; preds = %"$out_of_gas_1120", %"$have_gas_1111"
  %"$consume_1122" = sub i64 %"$gasrem_1118", 1
  store i64 %"$consume_1122", i64* @_gasrem, align 8
  %"$BoolUtils.andb_159" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1123" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1124" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1123", 0
  %"$BoolUtils.andb_envptr_1125" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1123", 1
  %"$$res_48_1126" = load %TName_Bool*, %TName_Bool** %"$res_48", align 8
  %"$BoolUtils.andb_call_1127" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1124"(i8* %"$BoolUtils.andb_envptr_1125", %TName_Bool* %"$$res_48_1126")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1127", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$BoolUtils.andb_160" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_159_1128" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$$BoolUtils.andb_159_fptr_1129" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1128", 0
  %"$$BoolUtils.andb_159_envptr_1130" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1128", 1
  %"$$res__51_1131" = load %TName_Bool*, %TName_Bool** %"$res__51", align 8
  %"$$BoolUtils.andb_159_call_1132" = call %TName_Bool* %"$$BoolUtils.andb_159_fptr_1129"(i8* %"$$BoolUtils.andb_159_envptr_1130", %TName_Bool* %"$$res__51_1131")
  store %TName_Bool* %"$$BoolUtils.andb_159_call_1132", %TName_Bool** %"$BoolUtils.andb_160", align 8
  %"$$BoolUtils.andb_160_1133" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_160", align 8
  store %TName_Bool* %"$$BoolUtils.andb_160_1133", %TName_Bool** %"$res_52", align 8
  %"$gasrem_1134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1135" = icmp ugt i64 1, %"$gasrem_1134"
  br i1 %"$gascmp_1135", label %"$out_of_gas_1136", label %"$have_gas_1137"

"$out_of_gas_1136":                               ; preds = %"$have_gas_1121"
  call void @_out_of_gas()
  br label %"$have_gas_1137"

"$have_gas_1137":                                 ; preds = %"$out_of_gas_1136", %"$have_gas_1121"
  %"$consume_1138" = sub i64 %"$gasrem_1134", 1
  store i64 %"$consume_1138", i64* @_gasrem, align 8
  %"$p_53" = alloca %Uint128, align 8
  %"$t5_1139" = load %Uint128, %Uint128* %t5, align 8
  %"$p1_1140" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1141" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1139", %Uint32 %"$p1_1140")
  store %Uint128 %"$pow_call_1141", %Uint128* %"$p_53", align 8
  %"$gasrem_1142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1143" = icmp ugt i64 1, %"$gasrem_1142"
  br i1 %"$gascmp_1143", label %"$out_of_gas_1144", label %"$have_gas_1145"

"$out_of_gas_1144":                               ; preds = %"$have_gas_1137"
  call void @_out_of_gas()
  br label %"$have_gas_1145"

"$have_gas_1145":                                 ; preds = %"$out_of_gas_1144", %"$have_gas_1137"
  %"$consume_1146" = sub i64 %"$gasrem_1142", 1
  store i64 %"$consume_1146", i64* @_gasrem, align 8
  %"$res_56" = alloca %TName_Bool*, align 8
  %"$gasrem_1147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1148" = icmp ugt i64 1, %"$gasrem_1147"
  br i1 %"$gascmp_1148", label %"$out_of_gas_1149", label %"$have_gas_1150"

"$out_of_gas_1149":                               ; preds = %"$have_gas_1145"
  call void @_out_of_gas()
  br label %"$have_gas_1150"

"$have_gas_1150":                                 ; preds = %"$out_of_gas_1149", %"$have_gas_1145"
  %"$consume_1151" = sub i64 %"$gasrem_1147", 1
  store i64 %"$consume_1151", i64* @_gasrem, align 8
  %"$ans_54" = alloca %Uint128, align 8
  %"$gasrem_1152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1153" = icmp ugt i64 1, %"$gasrem_1152"
  br i1 %"$gascmp_1153", label %"$out_of_gas_1154", label %"$have_gas_1155"

"$out_of_gas_1154":                               ; preds = %"$have_gas_1150"
  call void @_out_of_gas()
  br label %"$have_gas_1155"

"$have_gas_1155":                                 ; preds = %"$out_of_gas_1154", %"$have_gas_1150"
  %"$consume_1156" = sub i64 %"$gasrem_1152", 1
  store i64 %"$consume_1156", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %"$ans_54", align 8
  %"$gasrem_1157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1158" = icmp ugt i64 1, %"$gasrem_1157"
  br i1 %"$gascmp_1158", label %"$out_of_gas_1159", label %"$have_gas_1160"

"$out_of_gas_1159":                               ; preds = %"$have_gas_1155"
  call void @_out_of_gas()
  br label %"$have_gas_1160"

"$have_gas_1160":                                 ; preds = %"$out_of_gas_1159", %"$have_gas_1155"
  %"$consume_1161" = sub i64 %"$gasrem_1157", 1
  store i64 %"$consume_1161", i64* @_gasrem, align 8
  %"$res__55" = alloca %TName_Bool*, align 8
  %"$execptr_load_1162" = load i8*, i8** @_execptr, align 8
  %"$$p_53_1163" = load %Uint128, %Uint128* %"$p_53", align 8
  %"$$ans_54_1164" = load %Uint128, %Uint128* %"$ans_54", align 8
  %"$eq_call_1165" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1162", %Uint128 %"$$p_53_1163", %Uint128 %"$$ans_54_1164")
  store %TName_Bool* %"$eq_call_1165", %TName_Bool** %"$res__55", align 8
  %"$gasrem_1167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1168" = icmp ugt i64 1, %"$gasrem_1167"
  br i1 %"$gascmp_1168", label %"$out_of_gas_1169", label %"$have_gas_1170"

"$out_of_gas_1169":                               ; preds = %"$have_gas_1160"
  call void @_out_of_gas()
  br label %"$have_gas_1170"

"$have_gas_1170":                                 ; preds = %"$out_of_gas_1169", %"$have_gas_1160"
  %"$consume_1171" = sub i64 %"$gasrem_1167", 1
  store i64 %"$consume_1171", i64* @_gasrem, align 8
  %"$BoolUtils.andb_161" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1172" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1173" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1172", 0
  %"$BoolUtils.andb_envptr_1174" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1172", 1
  %"$$res_52_1175" = load %TName_Bool*, %TName_Bool** %"$res_52", align 8
  %"$BoolUtils.andb_call_1176" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1173"(i8* %"$BoolUtils.andb_envptr_1174", %TName_Bool* %"$$res_52_1175")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1176", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$BoolUtils.andb_162" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_161_1177" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$$BoolUtils.andb_161_fptr_1178" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1177", 0
  %"$$BoolUtils.andb_161_envptr_1179" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1177", 1
  %"$$res__55_1180" = load %TName_Bool*, %TName_Bool** %"$res__55", align 8
  %"$$BoolUtils.andb_161_call_1181" = call %TName_Bool* %"$$BoolUtils.andb_161_fptr_1178"(i8* %"$$BoolUtils.andb_161_envptr_1179", %TName_Bool* %"$$res__55_1180")
  store %TName_Bool* %"$$BoolUtils.andb_161_call_1181", %TName_Bool** %"$BoolUtils.andb_162", align 8
  %"$$BoolUtils.andb_162_1182" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_162", align 8
  store %TName_Bool* %"$$BoolUtils.andb_162_1182", %TName_Bool** %"$res_56", align 8
  %"$gasrem_1183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1184" = icmp ugt i64 1, %"$gasrem_1183"
  br i1 %"$gascmp_1184", label %"$out_of_gas_1185", label %"$have_gas_1186"

"$out_of_gas_1185":                               ; preds = %"$have_gas_1170"
  call void @_out_of_gas()
  br label %"$have_gas_1186"

"$have_gas_1186":                                 ; preds = %"$out_of_gas_1185", %"$have_gas_1170"
  %"$consume_1187" = sub i64 %"$gasrem_1183", 1
  store i64 %"$consume_1187", i64* @_gasrem, align 8
  %"$p_57" = alloca %Uint128, align 8
  %"$t5_1188" = load %Uint128, %Uint128* %t5, align 8
  %"$p2_1189" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1190" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1188", %Uint32 %"$p2_1189")
  store %Uint128 %"$pow_call_1190", %Uint128* %"$p_57", align 8
  %"$gasrem_1191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1192" = icmp ugt i64 1, %"$gasrem_1191"
  br i1 %"$gascmp_1192", label %"$out_of_gas_1193", label %"$have_gas_1194"

"$out_of_gas_1193":                               ; preds = %"$have_gas_1186"
  call void @_out_of_gas()
  br label %"$have_gas_1194"

"$have_gas_1194":                                 ; preds = %"$out_of_gas_1193", %"$have_gas_1186"
  %"$consume_1195" = sub i64 %"$gasrem_1191", 1
  store i64 %"$consume_1195", i64* @_gasrem, align 8
  %"$res_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1197" = icmp ugt i64 1, %"$gasrem_1196"
  br i1 %"$gascmp_1197", label %"$out_of_gas_1198", label %"$have_gas_1199"

"$out_of_gas_1198":                               ; preds = %"$have_gas_1194"
  call void @_out_of_gas()
  br label %"$have_gas_1199"

"$have_gas_1199":                                 ; preds = %"$out_of_gas_1198", %"$have_gas_1194"
  %"$consume_1200" = sub i64 %"$gasrem_1196", 1
  store i64 %"$consume_1200", i64* @_gasrem, align 8
  %"$ans_58" = alloca %Uint128, align 8
  %"$gasrem_1201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1202" = icmp ugt i64 1, %"$gasrem_1201"
  br i1 %"$gascmp_1202", label %"$out_of_gas_1203", label %"$have_gas_1204"

"$out_of_gas_1203":                               ; preds = %"$have_gas_1199"
  call void @_out_of_gas()
  br label %"$have_gas_1204"

"$have_gas_1204":                                 ; preds = %"$out_of_gas_1203", %"$have_gas_1199"
  %"$consume_1205" = sub i64 %"$gasrem_1201", 1
  store i64 %"$consume_1205", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %"$ans_58", align 8
  %"$gasrem_1206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1207" = icmp ugt i64 1, %"$gasrem_1206"
  br i1 %"$gascmp_1207", label %"$out_of_gas_1208", label %"$have_gas_1209"

"$out_of_gas_1208":                               ; preds = %"$have_gas_1204"
  call void @_out_of_gas()
  br label %"$have_gas_1209"

"$have_gas_1209":                                 ; preds = %"$out_of_gas_1208", %"$have_gas_1204"
  %"$consume_1210" = sub i64 %"$gasrem_1206", 1
  store i64 %"$consume_1210", i64* @_gasrem, align 8
  %"$res__59" = alloca %TName_Bool*, align 8
  %"$execptr_load_1211" = load i8*, i8** @_execptr, align 8
  %"$$p_57_1212" = load %Uint128, %Uint128* %"$p_57", align 8
  %"$$ans_58_1213" = load %Uint128, %Uint128* %"$ans_58", align 8
  %"$eq_call_1214" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1211", %Uint128 %"$$p_57_1212", %Uint128 %"$$ans_58_1213")
  store %TName_Bool* %"$eq_call_1214", %TName_Bool** %"$res__59", align 8
  %"$gasrem_1216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1217" = icmp ugt i64 1, %"$gasrem_1216"
  br i1 %"$gascmp_1217", label %"$out_of_gas_1218", label %"$have_gas_1219"

"$out_of_gas_1218":                               ; preds = %"$have_gas_1209"
  call void @_out_of_gas()
  br label %"$have_gas_1219"

"$have_gas_1219":                                 ; preds = %"$out_of_gas_1218", %"$have_gas_1209"
  %"$consume_1220" = sub i64 %"$gasrem_1216", 1
  store i64 %"$consume_1220", i64* @_gasrem, align 8
  %"$BoolUtils.andb_163" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1221" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1222" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1221", 0
  %"$BoolUtils.andb_envptr_1223" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1221", 1
  %"$$res_56_1224" = load %TName_Bool*, %TName_Bool** %"$res_56", align 8
  %"$BoolUtils.andb_call_1225" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1222"(i8* %"$BoolUtils.andb_envptr_1223", %TName_Bool* %"$$res_56_1224")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1225", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$BoolUtils.andb_164" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_163_1226" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$$BoolUtils.andb_163_fptr_1227" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1226", 0
  %"$$BoolUtils.andb_163_envptr_1228" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1226", 1
  %"$$res__59_1229" = load %TName_Bool*, %TName_Bool** %"$res__59", align 8
  %"$$BoolUtils.andb_163_call_1230" = call %TName_Bool* %"$$BoolUtils.andb_163_fptr_1227"(i8* %"$$BoolUtils.andb_163_envptr_1228", %TName_Bool* %"$$res__59_1229")
  store %TName_Bool* %"$$BoolUtils.andb_163_call_1230", %TName_Bool** %"$BoolUtils.andb_164", align 8
  %"$$BoolUtils.andb_164_1231" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_164", align 8
  store %TName_Bool* %"$$BoolUtils.andb_164_1231", %TName_Bool** %"$res_60", align 8
  %"$gasrem_1232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1233" = icmp ugt i64 1, %"$gasrem_1232"
  br i1 %"$gascmp_1233", label %"$out_of_gas_1234", label %"$have_gas_1235"

"$out_of_gas_1234":                               ; preds = %"$have_gas_1219"
  call void @_out_of_gas()
  br label %"$have_gas_1235"

"$have_gas_1235":                                 ; preds = %"$out_of_gas_1234", %"$have_gas_1219"
  %"$consume_1236" = sub i64 %"$gasrem_1232", 1
  store i64 %"$consume_1236", i64* @_gasrem, align 8
  %"$p_61" = alloca %Uint128, align 8
  %"$t5_1237" = load %Uint128, %Uint128* %t5, align 8
  %"$p3_1238" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1239" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1237", %Uint32 %"$p3_1238")
  store %Uint128 %"$pow_call_1239", %Uint128* %"$p_61", align 8
  %"$gasrem_1240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1241" = icmp ugt i64 1, %"$gasrem_1240"
  br i1 %"$gascmp_1241", label %"$out_of_gas_1242", label %"$have_gas_1243"

"$out_of_gas_1242":                               ; preds = %"$have_gas_1235"
  call void @_out_of_gas()
  br label %"$have_gas_1243"

"$have_gas_1243":                                 ; preds = %"$out_of_gas_1242", %"$have_gas_1235"
  %"$consume_1244" = sub i64 %"$gasrem_1240", 1
  store i64 %"$consume_1244", i64* @_gasrem, align 8
  %"$res_64" = alloca %TName_Bool*, align 8
  %"$gasrem_1245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1246" = icmp ugt i64 1, %"$gasrem_1245"
  br i1 %"$gascmp_1246", label %"$out_of_gas_1247", label %"$have_gas_1248"

"$out_of_gas_1247":                               ; preds = %"$have_gas_1243"
  call void @_out_of_gas()
  br label %"$have_gas_1248"

"$have_gas_1248":                                 ; preds = %"$out_of_gas_1247", %"$have_gas_1243"
  %"$consume_1249" = sub i64 %"$gasrem_1245", 1
  store i64 %"$consume_1249", i64* @_gasrem, align 8
  %"$ans_62" = alloca %Uint128, align 8
  %"$gasrem_1250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1251" = icmp ugt i64 1, %"$gasrem_1250"
  br i1 %"$gascmp_1251", label %"$out_of_gas_1252", label %"$have_gas_1253"

"$out_of_gas_1252":                               ; preds = %"$have_gas_1248"
  call void @_out_of_gas()
  br label %"$have_gas_1253"

"$have_gas_1253":                                 ; preds = %"$out_of_gas_1252", %"$have_gas_1248"
  %"$consume_1254" = sub i64 %"$gasrem_1250", 1
  store i64 %"$consume_1254", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000 }, %Uint128* %"$ans_62", align 8
  %"$gasrem_1255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1256" = icmp ugt i64 1, %"$gasrem_1255"
  br i1 %"$gascmp_1256", label %"$out_of_gas_1257", label %"$have_gas_1258"

"$out_of_gas_1257":                               ; preds = %"$have_gas_1253"
  call void @_out_of_gas()
  br label %"$have_gas_1258"

"$have_gas_1258":                                 ; preds = %"$out_of_gas_1257", %"$have_gas_1253"
  %"$consume_1259" = sub i64 %"$gasrem_1255", 1
  store i64 %"$consume_1259", i64* @_gasrem, align 8
  %"$res__63" = alloca %TName_Bool*, align 8
  %"$execptr_load_1260" = load i8*, i8** @_execptr, align 8
  %"$$p_61_1261" = load %Uint128, %Uint128* %"$p_61", align 8
  %"$$ans_62_1262" = load %Uint128, %Uint128* %"$ans_62", align 8
  %"$eq_call_1263" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1260", %Uint128 %"$$p_61_1261", %Uint128 %"$$ans_62_1262")
  store %TName_Bool* %"$eq_call_1263", %TName_Bool** %"$res__63", align 8
  %"$gasrem_1265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1266" = icmp ugt i64 1, %"$gasrem_1265"
  br i1 %"$gascmp_1266", label %"$out_of_gas_1267", label %"$have_gas_1268"

"$out_of_gas_1267":                               ; preds = %"$have_gas_1258"
  call void @_out_of_gas()
  br label %"$have_gas_1268"

"$have_gas_1268":                                 ; preds = %"$out_of_gas_1267", %"$have_gas_1258"
  %"$consume_1269" = sub i64 %"$gasrem_1265", 1
  store i64 %"$consume_1269", i64* @_gasrem, align 8
  %"$BoolUtils.andb_165" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1270" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1271" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1270", 0
  %"$BoolUtils.andb_envptr_1272" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1270", 1
  %"$$res_60_1273" = load %TName_Bool*, %TName_Bool** %"$res_60", align 8
  %"$BoolUtils.andb_call_1274" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1271"(i8* %"$BoolUtils.andb_envptr_1272", %TName_Bool* %"$$res_60_1273")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1274", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$BoolUtils.andb_166" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_165_1275" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$$BoolUtils.andb_165_fptr_1276" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1275", 0
  %"$$BoolUtils.andb_165_envptr_1277" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1275", 1
  %"$$res__63_1278" = load %TName_Bool*, %TName_Bool** %"$res__63", align 8
  %"$$BoolUtils.andb_165_call_1279" = call %TName_Bool* %"$$BoolUtils.andb_165_fptr_1276"(i8* %"$$BoolUtils.andb_165_envptr_1277", %TName_Bool* %"$$res__63_1278")
  store %TName_Bool* %"$$BoolUtils.andb_165_call_1279", %TName_Bool** %"$BoolUtils.andb_166", align 8
  %"$$BoolUtils.andb_166_1280" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_166", align 8
  store %TName_Bool* %"$$BoolUtils.andb_166_1280", %TName_Bool** %"$res_64", align 8
  %"$gasrem_1281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1282" = icmp ugt i64 1, %"$gasrem_1281"
  br i1 %"$gascmp_1282", label %"$out_of_gas_1283", label %"$have_gas_1284"

"$out_of_gas_1283":                               ; preds = %"$have_gas_1268"
  call void @_out_of_gas()
  br label %"$have_gas_1284"

"$have_gas_1284":                                 ; preds = %"$out_of_gas_1283", %"$have_gas_1268"
  %"$consume_1285" = sub i64 %"$gasrem_1281", 1
  store i64 %"$consume_1285", i64* @_gasrem, align 8
  %"$p_65" = alloca %Uint128, align 8
  %"$t5_1286" = load %Uint128, %Uint128* %t5, align 8
  %"$p4_1287" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1288" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1286", %Uint32 %"$p4_1287")
  store %Uint128 %"$pow_call_1288", %Uint128* %"$p_65", align 8
  %"$gasrem_1289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1290" = icmp ugt i64 1, %"$gasrem_1289"
  br i1 %"$gascmp_1290", label %"$out_of_gas_1291", label %"$have_gas_1292"

"$out_of_gas_1291":                               ; preds = %"$have_gas_1284"
  call void @_out_of_gas()
  br label %"$have_gas_1292"

"$have_gas_1292":                                 ; preds = %"$out_of_gas_1291", %"$have_gas_1284"
  %"$consume_1293" = sub i64 %"$gasrem_1289", 1
  store i64 %"$consume_1293", i64* @_gasrem, align 8
  %"$res_68" = alloca %TName_Bool*, align 8
  %"$gasrem_1294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1295" = icmp ugt i64 1, %"$gasrem_1294"
  br i1 %"$gascmp_1295", label %"$out_of_gas_1296", label %"$have_gas_1297"

"$out_of_gas_1296":                               ; preds = %"$have_gas_1292"
  call void @_out_of_gas()
  br label %"$have_gas_1297"

"$have_gas_1297":                                 ; preds = %"$out_of_gas_1296", %"$have_gas_1292"
  %"$consume_1298" = sub i64 %"$gasrem_1294", 1
  store i64 %"$consume_1298", i64* @_gasrem, align 8
  %"$ans_66" = alloca %Uint128, align 8
  %"$gasrem_1299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1300" = icmp ugt i64 1, %"$gasrem_1299"
  br i1 %"$gascmp_1300", label %"$out_of_gas_1301", label %"$have_gas_1302"

"$out_of_gas_1301":                               ; preds = %"$have_gas_1297"
  call void @_out_of_gas()
  br label %"$have_gas_1302"

"$have_gas_1302":                                 ; preds = %"$out_of_gas_1301", %"$have_gas_1297"
  %"$consume_1303" = sub i64 %"$gasrem_1299", 1
  store i64 %"$consume_1303", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000000000000000000000 }, %Uint128* %"$ans_66", align 8
  %"$gasrem_1304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1305" = icmp ugt i64 1, %"$gasrem_1304"
  br i1 %"$gascmp_1305", label %"$out_of_gas_1306", label %"$have_gas_1307"

"$out_of_gas_1306":                               ; preds = %"$have_gas_1302"
  call void @_out_of_gas()
  br label %"$have_gas_1307"

"$have_gas_1307":                                 ; preds = %"$out_of_gas_1306", %"$have_gas_1302"
  %"$consume_1308" = sub i64 %"$gasrem_1304", 1
  store i64 %"$consume_1308", i64* @_gasrem, align 8
  %"$res__67" = alloca %TName_Bool*, align 8
  %"$execptr_load_1309" = load i8*, i8** @_execptr, align 8
  %"$$p_65_1310" = load %Uint128, %Uint128* %"$p_65", align 8
  %"$$ans_66_1311" = load %Uint128, %Uint128* %"$ans_66", align 8
  %"$eq_call_1312" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1309", %Uint128 %"$$p_65_1310", %Uint128 %"$$ans_66_1311")
  store %TName_Bool* %"$eq_call_1312", %TName_Bool** %"$res__67", align 8
  %"$gasrem_1314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1315" = icmp ugt i64 1, %"$gasrem_1314"
  br i1 %"$gascmp_1315", label %"$out_of_gas_1316", label %"$have_gas_1317"

"$out_of_gas_1316":                               ; preds = %"$have_gas_1307"
  call void @_out_of_gas()
  br label %"$have_gas_1317"

"$have_gas_1317":                                 ; preds = %"$out_of_gas_1316", %"$have_gas_1307"
  %"$consume_1318" = sub i64 %"$gasrem_1314", 1
  store i64 %"$consume_1318", i64* @_gasrem, align 8
  %"$BoolUtils.andb_167" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1319" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1320" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1319", 0
  %"$BoolUtils.andb_envptr_1321" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1319", 1
  %"$$res_64_1322" = load %TName_Bool*, %TName_Bool** %"$res_64", align 8
  %"$BoolUtils.andb_call_1323" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1320"(i8* %"$BoolUtils.andb_envptr_1321", %TName_Bool* %"$$res_64_1322")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1323", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$BoolUtils.andb_168" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_167_1324" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$$BoolUtils.andb_167_fptr_1325" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1324", 0
  %"$$BoolUtils.andb_167_envptr_1326" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1324", 1
  %"$$res__67_1327" = load %TName_Bool*, %TName_Bool** %"$res__67", align 8
  %"$$BoolUtils.andb_167_call_1328" = call %TName_Bool* %"$$BoolUtils.andb_167_fptr_1325"(i8* %"$$BoolUtils.andb_167_envptr_1326", %TName_Bool* %"$$res__67_1327")
  store %TName_Bool* %"$$BoolUtils.andb_167_call_1328", %TName_Bool** %"$BoolUtils.andb_168", align 8
  %"$$BoolUtils.andb_168_1329" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_168", align 8
  store %TName_Bool* %"$$BoolUtils.andb_168_1329", %TName_Bool** %"$res_68", align 8
  %"$gasrem_1330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1331" = icmp ugt i64 1, %"$gasrem_1330"
  br i1 %"$gascmp_1331", label %"$out_of_gas_1332", label %"$have_gas_1333"

"$out_of_gas_1332":                               ; preds = %"$have_gas_1317"
  call void @_out_of_gas()
  br label %"$have_gas_1333"

"$have_gas_1333":                                 ; preds = %"$out_of_gas_1332", %"$have_gas_1317"
  %"$consume_1334" = sub i64 %"$gasrem_1330", 1
  store i64 %"$consume_1334", i64* @_gasrem, align 8
  %"$p_69" = alloca %Int128, align 8
  %"$t6_1335" = load %Int128, %Int128* %t6, align 8
  %"$p1_1336" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1337" = call %Int128 @_pow_Int128(%Int128 %"$t6_1335", %Uint32 %"$p1_1336")
  store %Int128 %"$pow_call_1337", %Int128* %"$p_69", align 8
  %"$gasrem_1338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1339" = icmp ugt i64 1, %"$gasrem_1338"
  br i1 %"$gascmp_1339", label %"$out_of_gas_1340", label %"$have_gas_1341"

"$out_of_gas_1340":                               ; preds = %"$have_gas_1333"
  call void @_out_of_gas()
  br label %"$have_gas_1341"

"$have_gas_1341":                                 ; preds = %"$out_of_gas_1340", %"$have_gas_1333"
  %"$consume_1342" = sub i64 %"$gasrem_1338", 1
  store i64 %"$consume_1342", i64* @_gasrem, align 8
  %"$res_72" = alloca %TName_Bool*, align 8
  %"$gasrem_1343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1344" = icmp ugt i64 1, %"$gasrem_1343"
  br i1 %"$gascmp_1344", label %"$out_of_gas_1345", label %"$have_gas_1346"

"$out_of_gas_1345":                               ; preds = %"$have_gas_1341"
  call void @_out_of_gas()
  br label %"$have_gas_1346"

"$have_gas_1346":                                 ; preds = %"$out_of_gas_1345", %"$have_gas_1341"
  %"$consume_1347" = sub i64 %"$gasrem_1343", 1
  store i64 %"$consume_1347", i64* @_gasrem, align 8
  %"$ans_70" = alloca %Int128, align 8
  %"$gasrem_1348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1349" = icmp ugt i64 1, %"$gasrem_1348"
  br i1 %"$gascmp_1349", label %"$out_of_gas_1350", label %"$have_gas_1351"

"$out_of_gas_1350":                               ; preds = %"$have_gas_1346"
  call void @_out_of_gas()
  br label %"$have_gas_1351"

"$have_gas_1351":                                 ; preds = %"$out_of_gas_1350", %"$have_gas_1346"
  %"$consume_1352" = sub i64 %"$gasrem_1348", 1
  store i64 %"$consume_1352", i64* @_gasrem, align 8
  store %Int128 { i128 1 }, %Int128* %"$ans_70", align 8
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 1, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$have_gas_1351"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$have_gas_1351"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 1
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  %"$res__71" = alloca %TName_Bool*, align 8
  %"$execptr_load_1358" = load i8*, i8** @_execptr, align 8
  %"$$p_69_1359" = load %Int128, %Int128* %"$p_69", align 8
  %"$$ans_70_1360" = load %Int128, %Int128* %"$ans_70", align 8
  %"$eq_call_1361" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1358", %Int128 %"$$p_69_1359", %Int128 %"$$ans_70_1360")
  store %TName_Bool* %"$eq_call_1361", %TName_Bool** %"$res__71", align 8
  %"$gasrem_1363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1364" = icmp ugt i64 1, %"$gasrem_1363"
  br i1 %"$gascmp_1364", label %"$out_of_gas_1365", label %"$have_gas_1366"

"$out_of_gas_1365":                               ; preds = %"$have_gas_1356"
  call void @_out_of_gas()
  br label %"$have_gas_1366"

"$have_gas_1366":                                 ; preds = %"$out_of_gas_1365", %"$have_gas_1356"
  %"$consume_1367" = sub i64 %"$gasrem_1363", 1
  store i64 %"$consume_1367", i64* @_gasrem, align 8
  %"$BoolUtils.andb_169" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1368" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1369" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1368", 0
  %"$BoolUtils.andb_envptr_1370" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1368", 1
  %"$$res_68_1371" = load %TName_Bool*, %TName_Bool** %"$res_68", align 8
  %"$BoolUtils.andb_call_1372" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1369"(i8* %"$BoolUtils.andb_envptr_1370", %TName_Bool* %"$$res_68_1371")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1372", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8
  %"$BoolUtils.andb_170" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_169_1373" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8
  %"$$BoolUtils.andb_169_fptr_1374" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1373", 0
  %"$$BoolUtils.andb_169_envptr_1375" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1373", 1
  %"$$res__71_1376" = load %TName_Bool*, %TName_Bool** %"$res__71", align 8
  %"$$BoolUtils.andb_169_call_1377" = call %TName_Bool* %"$$BoolUtils.andb_169_fptr_1374"(i8* %"$$BoolUtils.andb_169_envptr_1375", %TName_Bool* %"$$res__71_1376")
  store %TName_Bool* %"$$BoolUtils.andb_169_call_1377", %TName_Bool** %"$BoolUtils.andb_170", align 8
  %"$$BoolUtils.andb_170_1378" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_170", align 8
  store %TName_Bool* %"$$BoolUtils.andb_170_1378", %TName_Bool** %"$res_72", align 8
  %"$gasrem_1379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1380" = icmp ugt i64 1, %"$gasrem_1379"
  br i1 %"$gascmp_1380", label %"$out_of_gas_1381", label %"$have_gas_1382"

"$out_of_gas_1381":                               ; preds = %"$have_gas_1366"
  call void @_out_of_gas()
  br label %"$have_gas_1382"

"$have_gas_1382":                                 ; preds = %"$out_of_gas_1381", %"$have_gas_1366"
  %"$consume_1383" = sub i64 %"$gasrem_1379", 1
  store i64 %"$consume_1383", i64* @_gasrem, align 8
  %"$p_73" = alloca %Int128, align 8
  %"$t6_1384" = load %Int128, %Int128* %t6, align 8
  %"$p2_1385" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1386" = call %Int128 @_pow_Int128(%Int128 %"$t6_1384", %Uint32 %"$p2_1385")
  store %Int128 %"$pow_call_1386", %Int128* %"$p_73", align 8
  %"$gasrem_1387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1388" = icmp ugt i64 1, %"$gasrem_1387"
  br i1 %"$gascmp_1388", label %"$out_of_gas_1389", label %"$have_gas_1390"

"$out_of_gas_1389":                               ; preds = %"$have_gas_1382"
  call void @_out_of_gas()
  br label %"$have_gas_1390"

"$have_gas_1390":                                 ; preds = %"$out_of_gas_1389", %"$have_gas_1382"
  %"$consume_1391" = sub i64 %"$gasrem_1387", 1
  store i64 %"$consume_1391", i64* @_gasrem, align 8
  %"$res_76" = alloca %TName_Bool*, align 8
  %"$gasrem_1392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1393" = icmp ugt i64 1, %"$gasrem_1392"
  br i1 %"$gascmp_1393", label %"$out_of_gas_1394", label %"$have_gas_1395"

"$out_of_gas_1394":                               ; preds = %"$have_gas_1390"
  call void @_out_of_gas()
  br label %"$have_gas_1395"

"$have_gas_1395":                                 ; preds = %"$out_of_gas_1394", %"$have_gas_1390"
  %"$consume_1396" = sub i64 %"$gasrem_1392", 1
  store i64 %"$consume_1396", i64* @_gasrem, align 8
  %"$ans_74" = alloca %Int128, align 8
  %"$gasrem_1397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1398" = icmp ugt i64 1, %"$gasrem_1397"
  br i1 %"$gascmp_1398", label %"$out_of_gas_1399", label %"$have_gas_1400"

"$out_of_gas_1399":                               ; preds = %"$have_gas_1395"
  call void @_out_of_gas()
  br label %"$have_gas_1400"

"$have_gas_1400":                                 ; preds = %"$out_of_gas_1399", %"$have_gas_1395"
  %"$consume_1401" = sub i64 %"$gasrem_1397", 1
  store i64 %"$consume_1401", i64* @_gasrem, align 8
  store %Int128 { i128 501 }, %Int128* %"$ans_74", align 8
  %"$gasrem_1402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1403" = icmp ugt i64 1, %"$gasrem_1402"
  br i1 %"$gascmp_1403", label %"$out_of_gas_1404", label %"$have_gas_1405"

"$out_of_gas_1404":                               ; preds = %"$have_gas_1400"
  call void @_out_of_gas()
  br label %"$have_gas_1405"

"$have_gas_1405":                                 ; preds = %"$out_of_gas_1404", %"$have_gas_1400"
  %"$consume_1406" = sub i64 %"$gasrem_1402", 1
  store i64 %"$consume_1406", i64* @_gasrem, align 8
  %"$res__75" = alloca %TName_Bool*, align 8
  %"$execptr_load_1407" = load i8*, i8** @_execptr, align 8
  %"$$p_73_1408" = load %Int128, %Int128* %"$p_73", align 8
  %"$$ans_74_1409" = load %Int128, %Int128* %"$ans_74", align 8
  %"$eq_call_1410" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1407", %Int128 %"$$p_73_1408", %Int128 %"$$ans_74_1409")
  store %TName_Bool* %"$eq_call_1410", %TName_Bool** %"$res__75", align 8
  %"$gasrem_1412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1413" = icmp ugt i64 1, %"$gasrem_1412"
  br i1 %"$gascmp_1413", label %"$out_of_gas_1414", label %"$have_gas_1415"

"$out_of_gas_1414":                               ; preds = %"$have_gas_1405"
  call void @_out_of_gas()
  br label %"$have_gas_1415"

"$have_gas_1415":                                 ; preds = %"$out_of_gas_1414", %"$have_gas_1405"
  %"$consume_1416" = sub i64 %"$gasrem_1412", 1
  store i64 %"$consume_1416", i64* @_gasrem, align 8
  %"$BoolUtils.andb_171" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1417" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1418" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1417", 0
  %"$BoolUtils.andb_envptr_1419" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1417", 1
  %"$$res_72_1420" = load %TName_Bool*, %TName_Bool** %"$res_72", align 8
  %"$BoolUtils.andb_call_1421" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1418"(i8* %"$BoolUtils.andb_envptr_1419", %TName_Bool* %"$$res_72_1420")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1421", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8
  %"$BoolUtils.andb_172" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_171_1422" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8
  %"$$BoolUtils.andb_171_fptr_1423" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1422", 0
  %"$$BoolUtils.andb_171_envptr_1424" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1422", 1
  %"$$res__75_1425" = load %TName_Bool*, %TName_Bool** %"$res__75", align 8
  %"$$BoolUtils.andb_171_call_1426" = call %TName_Bool* %"$$BoolUtils.andb_171_fptr_1423"(i8* %"$$BoolUtils.andb_171_envptr_1424", %TName_Bool* %"$$res__75_1425")
  store %TName_Bool* %"$$BoolUtils.andb_171_call_1426", %TName_Bool** %"$BoolUtils.andb_172", align 8
  %"$$BoolUtils.andb_172_1427" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_172", align 8
  store %TName_Bool* %"$$BoolUtils.andb_172_1427", %TName_Bool** %"$res_76", align 8
  %"$gasrem_1428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1429" = icmp ugt i64 1, %"$gasrem_1428"
  br i1 %"$gascmp_1429", label %"$out_of_gas_1430", label %"$have_gas_1431"

"$out_of_gas_1430":                               ; preds = %"$have_gas_1415"
  call void @_out_of_gas()
  br label %"$have_gas_1431"

"$have_gas_1431":                                 ; preds = %"$out_of_gas_1430", %"$have_gas_1415"
  %"$consume_1432" = sub i64 %"$gasrem_1428", 1
  store i64 %"$consume_1432", i64* @_gasrem, align 8
  %"$p_77" = alloca %Int128, align 8
  %"$t6_1433" = load %Int128, %Int128* %t6, align 8
  %"$p3_1434" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1435" = call %Int128 @_pow_Int128(%Int128 %"$t6_1433", %Uint32 %"$p3_1434")
  store %Int128 %"$pow_call_1435", %Int128* %"$p_77", align 8
  %"$gasrem_1436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1437" = icmp ugt i64 1, %"$gasrem_1436"
  br i1 %"$gascmp_1437", label %"$out_of_gas_1438", label %"$have_gas_1439"

"$out_of_gas_1438":                               ; preds = %"$have_gas_1431"
  call void @_out_of_gas()
  br label %"$have_gas_1439"

"$have_gas_1439":                                 ; preds = %"$out_of_gas_1438", %"$have_gas_1431"
  %"$consume_1440" = sub i64 %"$gasrem_1436", 1
  store i64 %"$consume_1440", i64* @_gasrem, align 8
  %"$res_80" = alloca %TName_Bool*, align 8
  %"$gasrem_1441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1442" = icmp ugt i64 1, %"$gasrem_1441"
  br i1 %"$gascmp_1442", label %"$out_of_gas_1443", label %"$have_gas_1444"

"$out_of_gas_1443":                               ; preds = %"$have_gas_1439"
  call void @_out_of_gas()
  br label %"$have_gas_1444"

"$have_gas_1444":                                 ; preds = %"$out_of_gas_1443", %"$have_gas_1439"
  %"$consume_1445" = sub i64 %"$gasrem_1441", 1
  store i64 %"$consume_1445", i64* @_gasrem, align 8
  %"$ans_78" = alloca %Int128, align 8
  %"$gasrem_1446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1447" = icmp ugt i64 1, %"$gasrem_1446"
  br i1 %"$gascmp_1447", label %"$out_of_gas_1448", label %"$have_gas_1449"

"$out_of_gas_1448":                               ; preds = %"$have_gas_1444"
  call void @_out_of_gas()
  br label %"$have_gas_1449"

"$have_gas_1449":                                 ; preds = %"$out_of_gas_1448", %"$have_gas_1444"
  %"$consume_1450" = sub i64 %"$gasrem_1446", 1
  store i64 %"$consume_1450", i64* @_gasrem, align 8
  store %Int128 { i128 63001502001 }, %Int128* %"$ans_78", align 8
  %"$gasrem_1451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1452" = icmp ugt i64 1, %"$gasrem_1451"
  br i1 %"$gascmp_1452", label %"$out_of_gas_1453", label %"$have_gas_1454"

"$out_of_gas_1453":                               ; preds = %"$have_gas_1449"
  call void @_out_of_gas()
  br label %"$have_gas_1454"

"$have_gas_1454":                                 ; preds = %"$out_of_gas_1453", %"$have_gas_1449"
  %"$consume_1455" = sub i64 %"$gasrem_1451", 1
  store i64 %"$consume_1455", i64* @_gasrem, align 8
  %"$res__79" = alloca %TName_Bool*, align 8
  %"$execptr_load_1456" = load i8*, i8** @_execptr, align 8
  %"$$p_77_1457" = load %Int128, %Int128* %"$p_77", align 8
  %"$$ans_78_1458" = load %Int128, %Int128* %"$ans_78", align 8
  %"$eq_call_1459" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1456", %Int128 %"$$p_77_1457", %Int128 %"$$ans_78_1458")
  store %TName_Bool* %"$eq_call_1459", %TName_Bool** %"$res__79", align 8
  %"$gasrem_1461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1462" = icmp ugt i64 1, %"$gasrem_1461"
  br i1 %"$gascmp_1462", label %"$out_of_gas_1463", label %"$have_gas_1464"

"$out_of_gas_1463":                               ; preds = %"$have_gas_1454"
  call void @_out_of_gas()
  br label %"$have_gas_1464"

"$have_gas_1464":                                 ; preds = %"$out_of_gas_1463", %"$have_gas_1454"
  %"$consume_1465" = sub i64 %"$gasrem_1461", 1
  store i64 %"$consume_1465", i64* @_gasrem, align 8
  %"$BoolUtils.andb_173" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1466" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1467" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1466", 0
  %"$BoolUtils.andb_envptr_1468" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1466", 1
  %"$$res_76_1469" = load %TName_Bool*, %TName_Bool** %"$res_76", align 8
  %"$BoolUtils.andb_call_1470" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1467"(i8* %"$BoolUtils.andb_envptr_1468", %TName_Bool* %"$$res_76_1469")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1470", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8
  %"$BoolUtils.andb_174" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_173_1471" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8
  %"$$BoolUtils.andb_173_fptr_1472" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1471", 0
  %"$$BoolUtils.andb_173_envptr_1473" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1471", 1
  %"$$res__79_1474" = load %TName_Bool*, %TName_Bool** %"$res__79", align 8
  %"$$BoolUtils.andb_173_call_1475" = call %TName_Bool* %"$$BoolUtils.andb_173_fptr_1472"(i8* %"$$BoolUtils.andb_173_envptr_1473", %TName_Bool* %"$$res__79_1474")
  store %TName_Bool* %"$$BoolUtils.andb_173_call_1475", %TName_Bool** %"$BoolUtils.andb_174", align 8
  %"$$BoolUtils.andb_174_1476" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_174", align 8
  store %TName_Bool* %"$$BoolUtils.andb_174_1476", %TName_Bool** %"$res_80", align 8
  %"$gasrem_1477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1478" = icmp ugt i64 1, %"$gasrem_1477"
  br i1 %"$gascmp_1478", label %"$out_of_gas_1479", label %"$have_gas_1480"

"$out_of_gas_1479":                               ; preds = %"$have_gas_1464"
  call void @_out_of_gas()
  br label %"$have_gas_1480"

"$have_gas_1480":                                 ; preds = %"$out_of_gas_1479", %"$have_gas_1464"
  %"$consume_1481" = sub i64 %"$gasrem_1477", 1
  store i64 %"$consume_1481", i64* @_gasrem, align 8
  %"$p_81" = alloca %Int128, align 8
  %"$t6_1482" = load %Int128, %Int128* %t6, align 8
  %"$p4_1483" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1484" = call %Int128 @_pow_Int128(%Int128 %"$t6_1482", %Uint32 %"$p4_1483")
  store %Int128 %"$pow_call_1484", %Int128* %"$p_81", align 8
  %"$gasrem_1485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1486" = icmp ugt i64 1, %"$gasrem_1485"
  br i1 %"$gascmp_1486", label %"$out_of_gas_1487", label %"$have_gas_1488"

"$out_of_gas_1487":                               ; preds = %"$have_gas_1480"
  call void @_out_of_gas()
  br label %"$have_gas_1488"

"$have_gas_1488":                                 ; preds = %"$out_of_gas_1487", %"$have_gas_1480"
  %"$consume_1489" = sub i64 %"$gasrem_1485", 1
  store i64 %"$consume_1489", i64* @_gasrem, align 8
  %"$res_84" = alloca %TName_Bool*, align 8
  %"$gasrem_1490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1491" = icmp ugt i64 1, %"$gasrem_1490"
  br i1 %"$gascmp_1491", label %"$out_of_gas_1492", label %"$have_gas_1493"

"$out_of_gas_1492":                               ; preds = %"$have_gas_1488"
  call void @_out_of_gas()
  br label %"$have_gas_1493"

"$have_gas_1493":                                 ; preds = %"$out_of_gas_1492", %"$have_gas_1488"
  %"$consume_1494" = sub i64 %"$gasrem_1490", 1
  store i64 %"$consume_1494", i64* @_gasrem, align 8
  %"$ans_82" = alloca %Int128, align 8
  %"$gasrem_1495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1496" = icmp ugt i64 1, %"$gasrem_1495"
  br i1 %"$gascmp_1496", label %"$out_of_gas_1497", label %"$have_gas_1498"

"$out_of_gas_1497":                               ; preds = %"$have_gas_1493"
  call void @_out_of_gas()
  br label %"$have_gas_1498"

"$have_gas_1498":                                 ; preds = %"$out_of_gas_1497", %"$have_gas_1493"
  %"$consume_1499" = sub i64 %"$gasrem_1495", 1
  store i64 %"$consume_1499", i64* @_gasrem, align 8
  store %Int128 { i128 996270472039138140011255001 }, %Int128* %"$ans_82", align 8
  %"$gasrem_1500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1501" = icmp ugt i64 1, %"$gasrem_1500"
  br i1 %"$gascmp_1501", label %"$out_of_gas_1502", label %"$have_gas_1503"

"$out_of_gas_1502":                               ; preds = %"$have_gas_1498"
  call void @_out_of_gas()
  br label %"$have_gas_1503"

"$have_gas_1503":                                 ; preds = %"$out_of_gas_1502", %"$have_gas_1498"
  %"$consume_1504" = sub i64 %"$gasrem_1500", 1
  store i64 %"$consume_1504", i64* @_gasrem, align 8
  %"$res__83" = alloca %TName_Bool*, align 8
  %"$execptr_load_1505" = load i8*, i8** @_execptr, align 8
  %"$$p_81_1506" = load %Int128, %Int128* %"$p_81", align 8
  %"$$ans_82_1507" = load %Int128, %Int128* %"$ans_82", align 8
  %"$eq_call_1508" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1505", %Int128 %"$$p_81_1506", %Int128 %"$$ans_82_1507")
  store %TName_Bool* %"$eq_call_1508", %TName_Bool** %"$res__83", align 8
  %"$gasrem_1510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1511" = icmp ugt i64 1, %"$gasrem_1510"
  br i1 %"$gascmp_1511", label %"$out_of_gas_1512", label %"$have_gas_1513"

"$out_of_gas_1512":                               ; preds = %"$have_gas_1503"
  call void @_out_of_gas()
  br label %"$have_gas_1513"

"$have_gas_1513":                                 ; preds = %"$out_of_gas_1512", %"$have_gas_1503"
  %"$consume_1514" = sub i64 %"$gasrem_1510", 1
  store i64 %"$consume_1514", i64* @_gasrem, align 8
  %"$BoolUtils.andb_175" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1515" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1516" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1515", 0
  %"$BoolUtils.andb_envptr_1517" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1515", 1
  %"$$res_80_1518" = load %TName_Bool*, %TName_Bool** %"$res_80", align 8
  %"$BoolUtils.andb_call_1519" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1516"(i8* %"$BoolUtils.andb_envptr_1517", %TName_Bool* %"$$res_80_1518")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1519", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8
  %"$BoolUtils.andb_176" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_175_1520" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8
  %"$$BoolUtils.andb_175_fptr_1521" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1520", 0
  %"$$BoolUtils.andb_175_envptr_1522" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1520", 1
  %"$$res__83_1523" = load %TName_Bool*, %TName_Bool** %"$res__83", align 8
  %"$$BoolUtils.andb_175_call_1524" = call %TName_Bool* %"$$BoolUtils.andb_175_fptr_1521"(i8* %"$$BoolUtils.andb_175_envptr_1522", %TName_Bool* %"$$res__83_1523")
  store %TName_Bool* %"$$BoolUtils.andb_175_call_1524", %TName_Bool** %"$BoolUtils.andb_176", align 8
  %"$$BoolUtils.andb_176_1525" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_176", align 8
  store %TName_Bool* %"$$BoolUtils.andb_176_1525", %TName_Bool** %"$res_84", align 8
  %"$gasrem_1526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1527" = icmp ugt i64 1, %"$gasrem_1526"
  br i1 %"$gascmp_1527", label %"$out_of_gas_1528", label %"$have_gas_1529"

"$out_of_gas_1528":                               ; preds = %"$have_gas_1513"
  call void @_out_of_gas()
  br label %"$have_gas_1529"

"$have_gas_1529":                                 ; preds = %"$out_of_gas_1528", %"$have_gas_1513"
  %"$consume_1530" = sub i64 %"$gasrem_1526", 1
  store i64 %"$consume_1530", i64* @_gasrem, align 8
  %"$p_85" = alloca %Uint256, align 8
  %"$execptr_load_1531" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_1532" = alloca %Uint256, align 8
  %"$t7_1533" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_1533", %Uint256* %"$pow_t7_1532", align 8
  %"$p1_1534" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1535" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_1531", %Uint256* %"$pow_t7_1532", %Uint32 %"$p1_1534")
  %"$pow_1537" = load %Uint256, %Uint256* %"$pow_call_1535", align 8
  store %Uint256 %"$pow_1537", %Uint256* %"$p_85", align 8
  %"$gasrem_1538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1539" = icmp ugt i64 1, %"$gasrem_1538"
  br i1 %"$gascmp_1539", label %"$out_of_gas_1540", label %"$have_gas_1541"

"$out_of_gas_1540":                               ; preds = %"$have_gas_1529"
  call void @_out_of_gas()
  br label %"$have_gas_1541"

"$have_gas_1541":                                 ; preds = %"$out_of_gas_1540", %"$have_gas_1529"
  %"$consume_1542" = sub i64 %"$gasrem_1538", 1
  store i64 %"$consume_1542", i64* @_gasrem, align 8
  %"$res_88" = alloca %TName_Bool*, align 8
  %"$gasrem_1543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1544" = icmp ugt i64 1, %"$gasrem_1543"
  br i1 %"$gascmp_1544", label %"$out_of_gas_1545", label %"$have_gas_1546"

"$out_of_gas_1545":                               ; preds = %"$have_gas_1541"
  call void @_out_of_gas()
  br label %"$have_gas_1546"

"$have_gas_1546":                                 ; preds = %"$out_of_gas_1545", %"$have_gas_1541"
  %"$consume_1547" = sub i64 %"$gasrem_1543", 1
  store i64 %"$consume_1547", i64* @_gasrem, align 8
  %"$ans_86" = alloca %Uint256, align 8
  %"$gasrem_1548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1549" = icmp ugt i64 1, %"$gasrem_1548"
  br i1 %"$gascmp_1549", label %"$out_of_gas_1550", label %"$have_gas_1551"

"$out_of_gas_1550":                               ; preds = %"$have_gas_1546"
  call void @_out_of_gas()
  br label %"$have_gas_1551"

"$have_gas_1551":                                 ; preds = %"$out_of_gas_1550", %"$have_gas_1546"
  %"$consume_1552" = sub i64 %"$gasrem_1548", 1
  store i64 %"$consume_1552", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$ans_86", align 8
  %"$gasrem_1553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1554" = icmp ugt i64 1, %"$gasrem_1553"
  br i1 %"$gascmp_1554", label %"$out_of_gas_1555", label %"$have_gas_1556"

"$out_of_gas_1555":                               ; preds = %"$have_gas_1551"
  call void @_out_of_gas()
  br label %"$have_gas_1556"

"$have_gas_1556":                                 ; preds = %"$out_of_gas_1555", %"$have_gas_1551"
  %"$consume_1557" = sub i64 %"$gasrem_1553", 1
  store i64 %"$consume_1557", i64* @_gasrem, align 8
  %"$res__87" = alloca %TName_Bool*, align 8
  %"$execptr_load_1558" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_85_1559" = alloca %Uint256, align 8
  %"$$p_85_1560" = load %Uint256, %Uint256* %"$p_85", align 8
  store %Uint256 %"$$p_85_1560", %Uint256* %"$eq_$p_85_1559", align 8
  %"$eq_$ans_86_1561" = alloca %Uint256, align 8
  %"$$ans_86_1562" = load %Uint256, %Uint256* %"$ans_86", align 8
  store %Uint256 %"$$ans_86_1562", %Uint256* %"$eq_$ans_86_1561", align 8
  %"$eq_call_1563" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1558", %Uint256* %"$eq_$p_85_1559", %Uint256* %"$eq_$ans_86_1561")
  store %TName_Bool* %"$eq_call_1563", %TName_Bool** %"$res__87", align 8
  %"$gasrem_1565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1566" = icmp ugt i64 1, %"$gasrem_1565"
  br i1 %"$gascmp_1566", label %"$out_of_gas_1567", label %"$have_gas_1568"

"$out_of_gas_1567":                               ; preds = %"$have_gas_1556"
  call void @_out_of_gas()
  br label %"$have_gas_1568"

"$have_gas_1568":                                 ; preds = %"$out_of_gas_1567", %"$have_gas_1556"
  %"$consume_1569" = sub i64 %"$gasrem_1565", 1
  store i64 %"$consume_1569", i64* @_gasrem, align 8
  %"$BoolUtils.andb_177" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1570" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1571" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1570", 0
  %"$BoolUtils.andb_envptr_1572" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1570", 1
  %"$$res_84_1573" = load %TName_Bool*, %TName_Bool** %"$res_84", align 8
  %"$BoolUtils.andb_call_1574" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1571"(i8* %"$BoolUtils.andb_envptr_1572", %TName_Bool* %"$$res_84_1573")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1574", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8
  %"$BoolUtils.andb_178" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_177_1575" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8
  %"$$BoolUtils.andb_177_fptr_1576" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1575", 0
  %"$$BoolUtils.andb_177_envptr_1577" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1575", 1
  %"$$res__87_1578" = load %TName_Bool*, %TName_Bool** %"$res__87", align 8
  %"$$BoolUtils.andb_177_call_1579" = call %TName_Bool* %"$$BoolUtils.andb_177_fptr_1576"(i8* %"$$BoolUtils.andb_177_envptr_1577", %TName_Bool* %"$$res__87_1578")
  store %TName_Bool* %"$$BoolUtils.andb_177_call_1579", %TName_Bool** %"$BoolUtils.andb_178", align 8
  %"$$BoolUtils.andb_178_1580" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_178", align 8
  store %TName_Bool* %"$$BoolUtils.andb_178_1580", %TName_Bool** %"$res_88", align 8
  %"$gasrem_1581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1582" = icmp ugt i64 1, %"$gasrem_1581"
  br i1 %"$gascmp_1582", label %"$out_of_gas_1583", label %"$have_gas_1584"

"$out_of_gas_1583":                               ; preds = %"$have_gas_1568"
  call void @_out_of_gas()
  br label %"$have_gas_1584"

"$have_gas_1584":                                 ; preds = %"$out_of_gas_1583", %"$have_gas_1568"
  %"$consume_1585" = sub i64 %"$gasrem_1581", 1
  store i64 %"$consume_1585", i64* @_gasrem, align 8
  %"$p_89" = alloca %Uint256, align 8
  %"$execptr_load_1586" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_1587" = alloca %Uint256, align 8
  %"$t7_1588" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_1588", %Uint256* %"$pow_t7_1587", align 8
  %"$p2_1589" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1590" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_1586", %Uint256* %"$pow_t7_1587", %Uint32 %"$p2_1589")
  %"$pow_1592" = load %Uint256, %Uint256* %"$pow_call_1590", align 8
  store %Uint256 %"$pow_1592", %Uint256* %"$p_89", align 8
  %"$gasrem_1593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1594" = icmp ugt i64 1, %"$gasrem_1593"
  br i1 %"$gascmp_1594", label %"$out_of_gas_1595", label %"$have_gas_1596"

"$out_of_gas_1595":                               ; preds = %"$have_gas_1584"
  call void @_out_of_gas()
  br label %"$have_gas_1596"

"$have_gas_1596":                                 ; preds = %"$out_of_gas_1595", %"$have_gas_1584"
  %"$consume_1597" = sub i64 %"$gasrem_1593", 1
  store i64 %"$consume_1597", i64* @_gasrem, align 8
  %"$res_92" = alloca %TName_Bool*, align 8
  %"$gasrem_1598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1599" = icmp ugt i64 1, %"$gasrem_1598"
  br i1 %"$gascmp_1599", label %"$out_of_gas_1600", label %"$have_gas_1601"

"$out_of_gas_1600":                               ; preds = %"$have_gas_1596"
  call void @_out_of_gas()
  br label %"$have_gas_1601"

"$have_gas_1601":                                 ; preds = %"$out_of_gas_1600", %"$have_gas_1596"
  %"$consume_1602" = sub i64 %"$gasrem_1598", 1
  store i64 %"$consume_1602", i64* @_gasrem, align 8
  %"$ans_90" = alloca %Uint256, align 8
  %"$gasrem_1603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1604" = icmp ugt i64 1, %"$gasrem_1603"
  br i1 %"$gascmp_1604", label %"$out_of_gas_1605", label %"$have_gas_1606"

"$out_of_gas_1605":                               ; preds = %"$have_gas_1601"
  call void @_out_of_gas()
  br label %"$have_gas_1606"

"$have_gas_1606":                                 ; preds = %"$out_of_gas_1605", %"$have_gas_1601"
  %"$consume_1607" = sub i64 %"$gasrem_1603", 1
  store i64 %"$consume_1607", i64* @_gasrem, align 8
  store %Uint256 { i256 10001 }, %Uint256* %"$ans_90", align 8
  %"$gasrem_1608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1609" = icmp ugt i64 1, %"$gasrem_1608"
  br i1 %"$gascmp_1609", label %"$out_of_gas_1610", label %"$have_gas_1611"

"$out_of_gas_1610":                               ; preds = %"$have_gas_1606"
  call void @_out_of_gas()
  br label %"$have_gas_1611"

"$have_gas_1611":                                 ; preds = %"$out_of_gas_1610", %"$have_gas_1606"
  %"$consume_1612" = sub i64 %"$gasrem_1608", 1
  store i64 %"$consume_1612", i64* @_gasrem, align 8
  %"$res__91" = alloca %TName_Bool*, align 8
  %"$execptr_load_1613" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_89_1614" = alloca %Uint256, align 8
  %"$$p_89_1615" = load %Uint256, %Uint256* %"$p_89", align 8
  store %Uint256 %"$$p_89_1615", %Uint256* %"$eq_$p_89_1614", align 8
  %"$eq_$ans_90_1616" = alloca %Uint256, align 8
  %"$$ans_90_1617" = load %Uint256, %Uint256* %"$ans_90", align 8
  store %Uint256 %"$$ans_90_1617", %Uint256* %"$eq_$ans_90_1616", align 8
  %"$eq_call_1618" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1613", %Uint256* %"$eq_$p_89_1614", %Uint256* %"$eq_$ans_90_1616")
  store %TName_Bool* %"$eq_call_1618", %TName_Bool** %"$res__91", align 8
  %"$gasrem_1620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1621" = icmp ugt i64 1, %"$gasrem_1620"
  br i1 %"$gascmp_1621", label %"$out_of_gas_1622", label %"$have_gas_1623"

"$out_of_gas_1622":                               ; preds = %"$have_gas_1611"
  call void @_out_of_gas()
  br label %"$have_gas_1623"

"$have_gas_1623":                                 ; preds = %"$out_of_gas_1622", %"$have_gas_1611"
  %"$consume_1624" = sub i64 %"$gasrem_1620", 1
  store i64 %"$consume_1624", i64* @_gasrem, align 8
  %"$BoolUtils.andb_179" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1625" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1626" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1625", 0
  %"$BoolUtils.andb_envptr_1627" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1625", 1
  %"$$res_88_1628" = load %TName_Bool*, %TName_Bool** %"$res_88", align 8
  %"$BoolUtils.andb_call_1629" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1626"(i8* %"$BoolUtils.andb_envptr_1627", %TName_Bool* %"$$res_88_1628")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1629", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8
  %"$BoolUtils.andb_180" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_179_1630" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8
  %"$$BoolUtils.andb_179_fptr_1631" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1630", 0
  %"$$BoolUtils.andb_179_envptr_1632" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1630", 1
  %"$$res__91_1633" = load %TName_Bool*, %TName_Bool** %"$res__91", align 8
  %"$$BoolUtils.andb_179_call_1634" = call %TName_Bool* %"$$BoolUtils.andb_179_fptr_1631"(i8* %"$$BoolUtils.andb_179_envptr_1632", %TName_Bool* %"$$res__91_1633")
  store %TName_Bool* %"$$BoolUtils.andb_179_call_1634", %TName_Bool** %"$BoolUtils.andb_180", align 8
  %"$$BoolUtils.andb_180_1635" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_180", align 8
  store %TName_Bool* %"$$BoolUtils.andb_180_1635", %TName_Bool** %"$res_92", align 8
  %"$gasrem_1636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1637" = icmp ugt i64 1, %"$gasrem_1636"
  br i1 %"$gascmp_1637", label %"$out_of_gas_1638", label %"$have_gas_1639"

"$out_of_gas_1638":                               ; preds = %"$have_gas_1623"
  call void @_out_of_gas()
  br label %"$have_gas_1639"

"$have_gas_1639":                                 ; preds = %"$out_of_gas_1638", %"$have_gas_1623"
  %"$consume_1640" = sub i64 %"$gasrem_1636", 1
  store i64 %"$consume_1640", i64* @_gasrem, align 8
  %"$p_93" = alloca %Uint256, align 8
  %"$execptr_load_1641" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_1642" = alloca %Uint256, align 8
  %"$t7_1643" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_1643", %Uint256* %"$pow_t7_1642", align 8
  %"$p3_1644" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1645" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_1641", %Uint256* %"$pow_t7_1642", %Uint32 %"$p3_1644")
  %"$pow_1647" = load %Uint256, %Uint256* %"$pow_call_1645", align 8
  store %Uint256 %"$pow_1647", %Uint256* %"$p_93", align 8
  %"$gasrem_1648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1649" = icmp ugt i64 1, %"$gasrem_1648"
  br i1 %"$gascmp_1649", label %"$out_of_gas_1650", label %"$have_gas_1651"

"$out_of_gas_1650":                               ; preds = %"$have_gas_1639"
  call void @_out_of_gas()
  br label %"$have_gas_1651"

"$have_gas_1651":                                 ; preds = %"$out_of_gas_1650", %"$have_gas_1639"
  %"$consume_1652" = sub i64 %"$gasrem_1648", 1
  store i64 %"$consume_1652", i64* @_gasrem, align 8
  %"$res_96" = alloca %TName_Bool*, align 8
  %"$gasrem_1653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1654" = icmp ugt i64 1, %"$gasrem_1653"
  br i1 %"$gascmp_1654", label %"$out_of_gas_1655", label %"$have_gas_1656"

"$out_of_gas_1655":                               ; preds = %"$have_gas_1651"
  call void @_out_of_gas()
  br label %"$have_gas_1656"

"$have_gas_1656":                                 ; preds = %"$out_of_gas_1655", %"$have_gas_1651"
  %"$consume_1657" = sub i64 %"$gasrem_1653", 1
  store i64 %"$consume_1657", i64* @_gasrem, align 8
  %"$ans_94" = alloca %Uint256, align 8
  %"$gasrem_1658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1659" = icmp ugt i64 1, %"$gasrem_1658"
  br i1 %"$gascmp_1659", label %"$out_of_gas_1660", label %"$have_gas_1661"

"$out_of_gas_1660":                               ; preds = %"$have_gas_1656"
  call void @_out_of_gas()
  br label %"$have_gas_1661"

"$have_gas_1661":                                 ; preds = %"$out_of_gas_1660", %"$have_gas_1656"
  %"$consume_1662" = sub i64 %"$gasrem_1658", 1
  store i64 %"$consume_1662", i64* @_gasrem, align 8
  store %Uint256 { i256 10004000600040001 }, %Uint256* %"$ans_94", align 8
  %"$gasrem_1663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1664" = icmp ugt i64 1, %"$gasrem_1663"
  br i1 %"$gascmp_1664", label %"$out_of_gas_1665", label %"$have_gas_1666"

"$out_of_gas_1665":                               ; preds = %"$have_gas_1661"
  call void @_out_of_gas()
  br label %"$have_gas_1666"

"$have_gas_1666":                                 ; preds = %"$out_of_gas_1665", %"$have_gas_1661"
  %"$consume_1667" = sub i64 %"$gasrem_1663", 1
  store i64 %"$consume_1667", i64* @_gasrem, align 8
  %"$res__95" = alloca %TName_Bool*, align 8
  %"$execptr_load_1668" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_93_1669" = alloca %Uint256, align 8
  %"$$p_93_1670" = load %Uint256, %Uint256* %"$p_93", align 8
  store %Uint256 %"$$p_93_1670", %Uint256* %"$eq_$p_93_1669", align 8
  %"$eq_$ans_94_1671" = alloca %Uint256, align 8
  %"$$ans_94_1672" = load %Uint256, %Uint256* %"$ans_94", align 8
  store %Uint256 %"$$ans_94_1672", %Uint256* %"$eq_$ans_94_1671", align 8
  %"$eq_call_1673" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1668", %Uint256* %"$eq_$p_93_1669", %Uint256* %"$eq_$ans_94_1671")
  store %TName_Bool* %"$eq_call_1673", %TName_Bool** %"$res__95", align 8
  %"$gasrem_1675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1676" = icmp ugt i64 1, %"$gasrem_1675"
  br i1 %"$gascmp_1676", label %"$out_of_gas_1677", label %"$have_gas_1678"

"$out_of_gas_1677":                               ; preds = %"$have_gas_1666"
  call void @_out_of_gas()
  br label %"$have_gas_1678"

"$have_gas_1678":                                 ; preds = %"$out_of_gas_1677", %"$have_gas_1666"
  %"$consume_1679" = sub i64 %"$gasrem_1675", 1
  store i64 %"$consume_1679", i64* @_gasrem, align 8
  %"$BoolUtils.andb_181" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1680" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1681" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1680", 0
  %"$BoolUtils.andb_envptr_1682" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1680", 1
  %"$$res_92_1683" = load %TName_Bool*, %TName_Bool** %"$res_92", align 8
  %"$BoolUtils.andb_call_1684" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1681"(i8* %"$BoolUtils.andb_envptr_1682", %TName_Bool* %"$$res_92_1683")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1684", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8
  %"$BoolUtils.andb_182" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_181_1685" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8
  %"$$BoolUtils.andb_181_fptr_1686" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_1685", 0
  %"$$BoolUtils.andb_181_envptr_1687" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_1685", 1
  %"$$res__95_1688" = load %TName_Bool*, %TName_Bool** %"$res__95", align 8
  %"$$BoolUtils.andb_181_call_1689" = call %TName_Bool* %"$$BoolUtils.andb_181_fptr_1686"(i8* %"$$BoolUtils.andb_181_envptr_1687", %TName_Bool* %"$$res__95_1688")
  store %TName_Bool* %"$$BoolUtils.andb_181_call_1689", %TName_Bool** %"$BoolUtils.andb_182", align 8
  %"$$BoolUtils.andb_182_1690" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_182", align 8
  store %TName_Bool* %"$$BoolUtils.andb_182_1690", %TName_Bool** %"$res_96", align 8
  %"$gasrem_1691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1692" = icmp ugt i64 1, %"$gasrem_1691"
  br i1 %"$gascmp_1692", label %"$out_of_gas_1693", label %"$have_gas_1694"

"$out_of_gas_1693":                               ; preds = %"$have_gas_1678"
  call void @_out_of_gas()
  br label %"$have_gas_1694"

"$have_gas_1694":                                 ; preds = %"$out_of_gas_1693", %"$have_gas_1678"
  %"$consume_1695" = sub i64 %"$gasrem_1691", 1
  store i64 %"$consume_1695", i64* @_gasrem, align 8
  %"$p_97" = alloca %Uint256, align 8
  %"$execptr_load_1696" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_1697" = alloca %Uint256, align 8
  %"$t7_1698" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_1698", %Uint256* %"$pow_t7_1697", align 8
  %"$p4_1699" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1700" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_1696", %Uint256* %"$pow_t7_1697", %Uint32 %"$p4_1699")
  %"$pow_1702" = load %Uint256, %Uint256* %"$pow_call_1700", align 8
  store %Uint256 %"$pow_1702", %Uint256* %"$p_97", align 8
  %"$gasrem_1703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1704" = icmp ugt i64 1, %"$gasrem_1703"
  br i1 %"$gascmp_1704", label %"$out_of_gas_1705", label %"$have_gas_1706"

"$out_of_gas_1705":                               ; preds = %"$have_gas_1694"
  call void @_out_of_gas()
  br label %"$have_gas_1706"

"$have_gas_1706":                                 ; preds = %"$out_of_gas_1705", %"$have_gas_1694"
  %"$consume_1707" = sub i64 %"$gasrem_1703", 1
  store i64 %"$consume_1707", i64* @_gasrem, align 8
  %"$res_100" = alloca %TName_Bool*, align 8
  %"$gasrem_1708" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1709" = icmp ugt i64 1, %"$gasrem_1708"
  br i1 %"$gascmp_1709", label %"$out_of_gas_1710", label %"$have_gas_1711"

"$out_of_gas_1710":                               ; preds = %"$have_gas_1706"
  call void @_out_of_gas()
  br label %"$have_gas_1711"

"$have_gas_1711":                                 ; preds = %"$out_of_gas_1710", %"$have_gas_1706"
  %"$consume_1712" = sub i64 %"$gasrem_1708", 1
  store i64 %"$consume_1712", i64* @_gasrem, align 8
  %"$ans_98" = alloca %Uint256, align 8
  %"$gasrem_1713" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1714" = icmp ugt i64 1, %"$gasrem_1713"
  br i1 %"$gascmp_1714", label %"$out_of_gas_1715", label %"$have_gas_1716"

"$out_of_gas_1715":                               ; preds = %"$have_gas_1711"
  call void @_out_of_gas()
  br label %"$have_gas_1716"

"$have_gas_1716":                                 ; preds = %"$out_of_gas_1715", %"$have_gas_1711"
  %"$consume_1717" = sub i64 %"$gasrem_1713", 1
  store i64 %"$consume_1717", i64* @_gasrem, align 8
  store %Uint256 { i256 10010004501200210025202100120004500100001 }, %Uint256* %"$ans_98", align 8
  %"$gasrem_1718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1719" = icmp ugt i64 1, %"$gasrem_1718"
  br i1 %"$gascmp_1719", label %"$out_of_gas_1720", label %"$have_gas_1721"

"$out_of_gas_1720":                               ; preds = %"$have_gas_1716"
  call void @_out_of_gas()
  br label %"$have_gas_1721"

"$have_gas_1721":                                 ; preds = %"$out_of_gas_1720", %"$have_gas_1716"
  %"$consume_1722" = sub i64 %"$gasrem_1718", 1
  store i64 %"$consume_1722", i64* @_gasrem, align 8
  %"$res__99" = alloca %TName_Bool*, align 8
  %"$execptr_load_1723" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_97_1724" = alloca %Uint256, align 8
  %"$$p_97_1725" = load %Uint256, %Uint256* %"$p_97", align 8
  store %Uint256 %"$$p_97_1725", %Uint256* %"$eq_$p_97_1724", align 8
  %"$eq_$ans_98_1726" = alloca %Uint256, align 8
  %"$$ans_98_1727" = load %Uint256, %Uint256* %"$ans_98", align 8
  store %Uint256 %"$$ans_98_1727", %Uint256* %"$eq_$ans_98_1726", align 8
  %"$eq_call_1728" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1723", %Uint256* %"$eq_$p_97_1724", %Uint256* %"$eq_$ans_98_1726")
  store %TName_Bool* %"$eq_call_1728", %TName_Bool** %"$res__99", align 8
  %"$gasrem_1730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1731" = icmp ugt i64 1, %"$gasrem_1730"
  br i1 %"$gascmp_1731", label %"$out_of_gas_1732", label %"$have_gas_1733"

"$out_of_gas_1732":                               ; preds = %"$have_gas_1721"
  call void @_out_of_gas()
  br label %"$have_gas_1733"

"$have_gas_1733":                                 ; preds = %"$out_of_gas_1732", %"$have_gas_1721"
  %"$consume_1734" = sub i64 %"$gasrem_1730", 1
  store i64 %"$consume_1734", i64* @_gasrem, align 8
  %"$BoolUtils.andb_183" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1735" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1736" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1735", 0
  %"$BoolUtils.andb_envptr_1737" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1735", 1
  %"$$res_96_1738" = load %TName_Bool*, %TName_Bool** %"$res_96", align 8
  %"$BoolUtils.andb_call_1739" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1736"(i8* %"$BoolUtils.andb_envptr_1737", %TName_Bool* %"$$res_96_1738")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1739", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8
  %"$BoolUtils.andb_184" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_183_1740" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8
  %"$$BoolUtils.andb_183_fptr_1741" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_1740", 0
  %"$$BoolUtils.andb_183_envptr_1742" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_1740", 1
  %"$$res__99_1743" = load %TName_Bool*, %TName_Bool** %"$res__99", align 8
  %"$$BoolUtils.andb_183_call_1744" = call %TName_Bool* %"$$BoolUtils.andb_183_fptr_1741"(i8* %"$$BoolUtils.andb_183_envptr_1742", %TName_Bool* %"$$res__99_1743")
  store %TName_Bool* %"$$BoolUtils.andb_183_call_1744", %TName_Bool** %"$BoolUtils.andb_184", align 8
  %"$$BoolUtils.andb_184_1745" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_184", align 8
  store %TName_Bool* %"$$BoolUtils.andb_184_1745", %TName_Bool** %"$res_100", align 8
  %"$gasrem_1746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1747" = icmp ugt i64 1, %"$gasrem_1746"
  br i1 %"$gascmp_1747", label %"$out_of_gas_1748", label %"$have_gas_1749"

"$out_of_gas_1748":                               ; preds = %"$have_gas_1733"
  call void @_out_of_gas()
  br label %"$have_gas_1749"

"$have_gas_1749":                                 ; preds = %"$out_of_gas_1748", %"$have_gas_1733"
  %"$consume_1750" = sub i64 %"$gasrem_1746", 1
  store i64 %"$consume_1750", i64* @_gasrem, align 8
  %"$p_101" = alloca %Int256, align 8
  %"$execptr_load_1751" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_1752" = alloca %Int256, align 8
  %"$t8_1753" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_1753", %Int256* %"$pow_t8_1752", align 8
  %"$p1_1754" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1755" = call %Int256* @_pow_Int256(i8* %"$execptr_load_1751", %Int256* %"$pow_t8_1752", %Uint32 %"$p1_1754")
  %"$pow_1757" = load %Int256, %Int256* %"$pow_call_1755", align 8
  store %Int256 %"$pow_1757", %Int256* %"$p_101", align 8
  %"$gasrem_1758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1759" = icmp ugt i64 1, %"$gasrem_1758"
  br i1 %"$gascmp_1759", label %"$out_of_gas_1760", label %"$have_gas_1761"

"$out_of_gas_1760":                               ; preds = %"$have_gas_1749"
  call void @_out_of_gas()
  br label %"$have_gas_1761"

"$have_gas_1761":                                 ; preds = %"$out_of_gas_1760", %"$have_gas_1749"
  %"$consume_1762" = sub i64 %"$gasrem_1758", 1
  store i64 %"$consume_1762", i64* @_gasrem, align 8
  %"$res_104" = alloca %TName_Bool*, align 8
  %"$gasrem_1763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1764" = icmp ugt i64 1, %"$gasrem_1763"
  br i1 %"$gascmp_1764", label %"$out_of_gas_1765", label %"$have_gas_1766"

"$out_of_gas_1765":                               ; preds = %"$have_gas_1761"
  call void @_out_of_gas()
  br label %"$have_gas_1766"

"$have_gas_1766":                                 ; preds = %"$out_of_gas_1765", %"$have_gas_1761"
  %"$consume_1767" = sub i64 %"$gasrem_1763", 1
  store i64 %"$consume_1767", i64* @_gasrem, align 8
  %"$ans_102" = alloca %Int256, align 8
  %"$gasrem_1768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1769" = icmp ugt i64 1, %"$gasrem_1768"
  br i1 %"$gascmp_1769", label %"$out_of_gas_1770", label %"$have_gas_1771"

"$out_of_gas_1770":                               ; preds = %"$have_gas_1766"
  call void @_out_of_gas()
  br label %"$have_gas_1771"

"$have_gas_1771":                                 ; preds = %"$out_of_gas_1770", %"$have_gas_1766"
  %"$consume_1772" = sub i64 %"$gasrem_1768", 1
  store i64 %"$consume_1772", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_102", align 8
  %"$gasrem_1773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1774" = icmp ugt i64 1, %"$gasrem_1773"
  br i1 %"$gascmp_1774", label %"$out_of_gas_1775", label %"$have_gas_1776"

"$out_of_gas_1775":                               ; preds = %"$have_gas_1771"
  call void @_out_of_gas()
  br label %"$have_gas_1776"

"$have_gas_1776":                                 ; preds = %"$out_of_gas_1775", %"$have_gas_1771"
  %"$consume_1777" = sub i64 %"$gasrem_1773", 1
  store i64 %"$consume_1777", i64* @_gasrem, align 8
  %"$res__103" = alloca %TName_Bool*, align 8
  %"$execptr_load_1778" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_101_1779" = alloca %Int256, align 8
  %"$$p_101_1780" = load %Int256, %Int256* %"$p_101", align 8
  store %Int256 %"$$p_101_1780", %Int256* %"$eq_$p_101_1779", align 8
  %"$eq_$ans_102_1781" = alloca %Int256, align 8
  %"$$ans_102_1782" = load %Int256, %Int256* %"$ans_102", align 8
  store %Int256 %"$$ans_102_1782", %Int256* %"$eq_$ans_102_1781", align 8
  %"$eq_call_1783" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1778", %Int256* %"$eq_$p_101_1779", %Int256* %"$eq_$ans_102_1781")
  store %TName_Bool* %"$eq_call_1783", %TName_Bool** %"$res__103", align 8
  %"$gasrem_1785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1786" = icmp ugt i64 1, %"$gasrem_1785"
  br i1 %"$gascmp_1786", label %"$out_of_gas_1787", label %"$have_gas_1788"

"$out_of_gas_1787":                               ; preds = %"$have_gas_1776"
  call void @_out_of_gas()
  br label %"$have_gas_1788"

"$have_gas_1788":                                 ; preds = %"$out_of_gas_1787", %"$have_gas_1776"
  %"$consume_1789" = sub i64 %"$gasrem_1785", 1
  store i64 %"$consume_1789", i64* @_gasrem, align 8
  %"$BoolUtils.andb_185" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1790" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1791" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1790", 0
  %"$BoolUtils.andb_envptr_1792" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1790", 1
  %"$$res_100_1793" = load %TName_Bool*, %TName_Bool** %"$res_100", align 8
  %"$BoolUtils.andb_call_1794" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1791"(i8* %"$BoolUtils.andb_envptr_1792", %TName_Bool* %"$$res_100_1793")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1794", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8
  %"$BoolUtils.andb_186" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_185_1795" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8
  %"$$BoolUtils.andb_185_fptr_1796" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_1795", 0
  %"$$BoolUtils.andb_185_envptr_1797" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_1795", 1
  %"$$res__103_1798" = load %TName_Bool*, %TName_Bool** %"$res__103", align 8
  %"$$BoolUtils.andb_185_call_1799" = call %TName_Bool* %"$$BoolUtils.andb_185_fptr_1796"(i8* %"$$BoolUtils.andb_185_envptr_1797", %TName_Bool* %"$$res__103_1798")
  store %TName_Bool* %"$$BoolUtils.andb_185_call_1799", %TName_Bool** %"$BoolUtils.andb_186", align 8
  %"$$BoolUtils.andb_186_1800" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_186", align 8
  store %TName_Bool* %"$$BoolUtils.andb_186_1800", %TName_Bool** %"$res_104", align 8
  %"$gasrem_1801" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1802" = icmp ugt i64 1, %"$gasrem_1801"
  br i1 %"$gascmp_1802", label %"$out_of_gas_1803", label %"$have_gas_1804"

"$out_of_gas_1803":                               ; preds = %"$have_gas_1788"
  call void @_out_of_gas()
  br label %"$have_gas_1804"

"$have_gas_1804":                                 ; preds = %"$out_of_gas_1803", %"$have_gas_1788"
  %"$consume_1805" = sub i64 %"$gasrem_1801", 1
  store i64 %"$consume_1805", i64* @_gasrem, align 8
  %"$p_105" = alloca %Int256, align 8
  %"$execptr_load_1806" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_1807" = alloca %Int256, align 8
  %"$t8_1808" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_1808", %Int256* %"$pow_t8_1807", align 8
  %"$p2_1809" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1810" = call %Int256* @_pow_Int256(i8* %"$execptr_load_1806", %Int256* %"$pow_t8_1807", %Uint32 %"$p2_1809")
  %"$pow_1812" = load %Int256, %Int256* %"$pow_call_1810", align 8
  store %Int256 %"$pow_1812", %Int256* %"$p_105", align 8
  %"$gasrem_1813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1814" = icmp ugt i64 1, %"$gasrem_1813"
  br i1 %"$gascmp_1814", label %"$out_of_gas_1815", label %"$have_gas_1816"

"$out_of_gas_1815":                               ; preds = %"$have_gas_1804"
  call void @_out_of_gas()
  br label %"$have_gas_1816"

"$have_gas_1816":                                 ; preds = %"$out_of_gas_1815", %"$have_gas_1804"
  %"$consume_1817" = sub i64 %"$gasrem_1813", 1
  store i64 %"$consume_1817", i64* @_gasrem, align 8
  %"$res_108" = alloca %TName_Bool*, align 8
  %"$gasrem_1818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1819" = icmp ugt i64 1, %"$gasrem_1818"
  br i1 %"$gascmp_1819", label %"$out_of_gas_1820", label %"$have_gas_1821"

"$out_of_gas_1820":                               ; preds = %"$have_gas_1816"
  call void @_out_of_gas()
  br label %"$have_gas_1821"

"$have_gas_1821":                                 ; preds = %"$out_of_gas_1820", %"$have_gas_1816"
  %"$consume_1822" = sub i64 %"$gasrem_1818", 1
  store i64 %"$consume_1822", i64* @_gasrem, align 8
  %"$ans_106" = alloca %Int256, align 8
  %"$gasrem_1823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1824" = icmp ugt i64 1, %"$gasrem_1823"
  br i1 %"$gascmp_1824", label %"$out_of_gas_1825", label %"$have_gas_1826"

"$out_of_gas_1825":                               ; preds = %"$have_gas_1821"
  call void @_out_of_gas()
  br label %"$have_gas_1826"

"$have_gas_1826":                                 ; preds = %"$out_of_gas_1825", %"$have_gas_1821"
  %"$consume_1827" = sub i64 %"$gasrem_1823", 1
  store i64 %"$consume_1827", i64* @_gasrem, align 8
  store %Int256 { i256 -10001 }, %Int256* %"$ans_106", align 8
  %"$gasrem_1828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1829" = icmp ugt i64 1, %"$gasrem_1828"
  br i1 %"$gascmp_1829", label %"$out_of_gas_1830", label %"$have_gas_1831"

"$out_of_gas_1830":                               ; preds = %"$have_gas_1826"
  call void @_out_of_gas()
  br label %"$have_gas_1831"

"$have_gas_1831":                                 ; preds = %"$out_of_gas_1830", %"$have_gas_1826"
  %"$consume_1832" = sub i64 %"$gasrem_1828", 1
  store i64 %"$consume_1832", i64* @_gasrem, align 8
  %"$res__107" = alloca %TName_Bool*, align 8
  %"$execptr_load_1833" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_105_1834" = alloca %Int256, align 8
  %"$$p_105_1835" = load %Int256, %Int256* %"$p_105", align 8
  store %Int256 %"$$p_105_1835", %Int256* %"$eq_$p_105_1834", align 8
  %"$eq_$ans_106_1836" = alloca %Int256, align 8
  %"$$ans_106_1837" = load %Int256, %Int256* %"$ans_106", align 8
  store %Int256 %"$$ans_106_1837", %Int256* %"$eq_$ans_106_1836", align 8
  %"$eq_call_1838" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1833", %Int256* %"$eq_$p_105_1834", %Int256* %"$eq_$ans_106_1836")
  store %TName_Bool* %"$eq_call_1838", %TName_Bool** %"$res__107", align 8
  %"$gasrem_1840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1841" = icmp ugt i64 1, %"$gasrem_1840"
  br i1 %"$gascmp_1841", label %"$out_of_gas_1842", label %"$have_gas_1843"

"$out_of_gas_1842":                               ; preds = %"$have_gas_1831"
  call void @_out_of_gas()
  br label %"$have_gas_1843"

"$have_gas_1843":                                 ; preds = %"$out_of_gas_1842", %"$have_gas_1831"
  %"$consume_1844" = sub i64 %"$gasrem_1840", 1
  store i64 %"$consume_1844", i64* @_gasrem, align 8
  %"$BoolUtils.andb_187" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1845" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1846" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1845", 0
  %"$BoolUtils.andb_envptr_1847" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1845", 1
  %"$$res_104_1848" = load %TName_Bool*, %TName_Bool** %"$res_104", align 8
  %"$BoolUtils.andb_call_1849" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1846"(i8* %"$BoolUtils.andb_envptr_1847", %TName_Bool* %"$$res_104_1848")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1849", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8
  %"$BoolUtils.andb_188" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_187_1850" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8
  %"$$BoolUtils.andb_187_fptr_1851" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_1850", 0
  %"$$BoolUtils.andb_187_envptr_1852" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_1850", 1
  %"$$res__107_1853" = load %TName_Bool*, %TName_Bool** %"$res__107", align 8
  %"$$BoolUtils.andb_187_call_1854" = call %TName_Bool* %"$$BoolUtils.andb_187_fptr_1851"(i8* %"$$BoolUtils.andb_187_envptr_1852", %TName_Bool* %"$$res__107_1853")
  store %TName_Bool* %"$$BoolUtils.andb_187_call_1854", %TName_Bool** %"$BoolUtils.andb_188", align 8
  %"$$BoolUtils.andb_188_1855" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_188", align 8
  store %TName_Bool* %"$$BoolUtils.andb_188_1855", %TName_Bool** %"$res_108", align 8
  %"$gasrem_1856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1857" = icmp ugt i64 1, %"$gasrem_1856"
  br i1 %"$gascmp_1857", label %"$out_of_gas_1858", label %"$have_gas_1859"

"$out_of_gas_1858":                               ; preds = %"$have_gas_1843"
  call void @_out_of_gas()
  br label %"$have_gas_1859"

"$have_gas_1859":                                 ; preds = %"$out_of_gas_1858", %"$have_gas_1843"
  %"$consume_1860" = sub i64 %"$gasrem_1856", 1
  store i64 %"$consume_1860", i64* @_gasrem, align 8
  %"$p_109" = alloca %Int256, align 8
  %"$execptr_load_1861" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_1862" = alloca %Int256, align 8
  %"$t8_1863" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_1863", %Int256* %"$pow_t8_1862", align 8
  %"$p3_1864" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1865" = call %Int256* @_pow_Int256(i8* %"$execptr_load_1861", %Int256* %"$pow_t8_1862", %Uint32 %"$p3_1864")
  %"$pow_1867" = load %Int256, %Int256* %"$pow_call_1865", align 8
  store %Int256 %"$pow_1867", %Int256* %"$p_109", align 8
  %"$gasrem_1868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1869" = icmp ugt i64 1, %"$gasrem_1868"
  br i1 %"$gascmp_1869", label %"$out_of_gas_1870", label %"$have_gas_1871"

"$out_of_gas_1870":                               ; preds = %"$have_gas_1859"
  call void @_out_of_gas()
  br label %"$have_gas_1871"

"$have_gas_1871":                                 ; preds = %"$out_of_gas_1870", %"$have_gas_1859"
  %"$consume_1872" = sub i64 %"$gasrem_1868", 1
  store i64 %"$consume_1872", i64* @_gasrem, align 8
  %"$res_112" = alloca %TName_Bool*, align 8
  %"$gasrem_1873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1874" = icmp ugt i64 1, %"$gasrem_1873"
  br i1 %"$gascmp_1874", label %"$out_of_gas_1875", label %"$have_gas_1876"

"$out_of_gas_1875":                               ; preds = %"$have_gas_1871"
  call void @_out_of_gas()
  br label %"$have_gas_1876"

"$have_gas_1876":                                 ; preds = %"$out_of_gas_1875", %"$have_gas_1871"
  %"$consume_1877" = sub i64 %"$gasrem_1873", 1
  store i64 %"$consume_1877", i64* @_gasrem, align 8
  %"$ans_110" = alloca %Int256, align 8
  %"$gasrem_1878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1879" = icmp ugt i64 1, %"$gasrem_1878"
  br i1 %"$gascmp_1879", label %"$out_of_gas_1880", label %"$have_gas_1881"

"$out_of_gas_1880":                               ; preds = %"$have_gas_1876"
  call void @_out_of_gas()
  br label %"$have_gas_1881"

"$have_gas_1881":                                 ; preds = %"$out_of_gas_1880", %"$have_gas_1876"
  %"$consume_1882" = sub i64 %"$gasrem_1878", 1
  store i64 %"$consume_1882", i64* @_gasrem, align 8
  store %Int256 { i256 10004000600040001 }, %Int256* %"$ans_110", align 8
  %"$gasrem_1883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1884" = icmp ugt i64 1, %"$gasrem_1883"
  br i1 %"$gascmp_1884", label %"$out_of_gas_1885", label %"$have_gas_1886"

"$out_of_gas_1885":                               ; preds = %"$have_gas_1881"
  call void @_out_of_gas()
  br label %"$have_gas_1886"

"$have_gas_1886":                                 ; preds = %"$out_of_gas_1885", %"$have_gas_1881"
  %"$consume_1887" = sub i64 %"$gasrem_1883", 1
  store i64 %"$consume_1887", i64* @_gasrem, align 8
  %"$res__111" = alloca %TName_Bool*, align 8
  %"$execptr_load_1888" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_109_1889" = alloca %Int256, align 8
  %"$$p_109_1890" = load %Int256, %Int256* %"$p_109", align 8
  store %Int256 %"$$p_109_1890", %Int256* %"$eq_$p_109_1889", align 8
  %"$eq_$ans_110_1891" = alloca %Int256, align 8
  %"$$ans_110_1892" = load %Int256, %Int256* %"$ans_110", align 8
  store %Int256 %"$$ans_110_1892", %Int256* %"$eq_$ans_110_1891", align 8
  %"$eq_call_1893" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1888", %Int256* %"$eq_$p_109_1889", %Int256* %"$eq_$ans_110_1891")
  store %TName_Bool* %"$eq_call_1893", %TName_Bool** %"$res__111", align 8
  %"$gasrem_1895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1896" = icmp ugt i64 1, %"$gasrem_1895"
  br i1 %"$gascmp_1896", label %"$out_of_gas_1897", label %"$have_gas_1898"

"$out_of_gas_1897":                               ; preds = %"$have_gas_1886"
  call void @_out_of_gas()
  br label %"$have_gas_1898"

"$have_gas_1898":                                 ; preds = %"$out_of_gas_1897", %"$have_gas_1886"
  %"$consume_1899" = sub i64 %"$gasrem_1895", 1
  store i64 %"$consume_1899", i64* @_gasrem, align 8
  %"$BoolUtils.andb_189" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1900" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1901" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1900", 0
  %"$BoolUtils.andb_envptr_1902" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1900", 1
  %"$$res_108_1903" = load %TName_Bool*, %TName_Bool** %"$res_108", align 8
  %"$BoolUtils.andb_call_1904" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1901"(i8* %"$BoolUtils.andb_envptr_1902", %TName_Bool* %"$$res_108_1903")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1904", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8
  %"$BoolUtils.andb_190" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_189_1905" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8
  %"$$BoolUtils.andb_189_fptr_1906" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_1905", 0
  %"$$BoolUtils.andb_189_envptr_1907" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_1905", 1
  %"$$res__111_1908" = load %TName_Bool*, %TName_Bool** %"$res__111", align 8
  %"$$BoolUtils.andb_189_call_1909" = call %TName_Bool* %"$$BoolUtils.andb_189_fptr_1906"(i8* %"$$BoolUtils.andb_189_envptr_1907", %TName_Bool* %"$$res__111_1908")
  store %TName_Bool* %"$$BoolUtils.andb_189_call_1909", %TName_Bool** %"$BoolUtils.andb_190", align 8
  %"$$BoolUtils.andb_190_1910" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_190", align 8
  store %TName_Bool* %"$$BoolUtils.andb_190_1910", %TName_Bool** %"$res_112", align 8
  %"$gasrem_1911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1912" = icmp ugt i64 1, %"$gasrem_1911"
  br i1 %"$gascmp_1912", label %"$out_of_gas_1913", label %"$have_gas_1914"

"$out_of_gas_1913":                               ; preds = %"$have_gas_1898"
  call void @_out_of_gas()
  br label %"$have_gas_1914"

"$have_gas_1914":                                 ; preds = %"$out_of_gas_1913", %"$have_gas_1898"
  %"$consume_1915" = sub i64 %"$gasrem_1911", 1
  store i64 %"$consume_1915", i64* @_gasrem, align 8
  %"$p_113" = alloca %Int256, align 8
  %"$execptr_load_1916" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_1917" = alloca %Int256, align 8
  %"$t8_1918" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_1918", %Int256* %"$pow_t8_1917", align 8
  %"$p4_1919" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1920" = call %Int256* @_pow_Int256(i8* %"$execptr_load_1916", %Int256* %"$pow_t8_1917", %Uint32 %"$p4_1919")
  %"$pow_1922" = load %Int256, %Int256* %"$pow_call_1920", align 8
  store %Int256 %"$pow_1922", %Int256* %"$p_113", align 8
  %"$gasrem_1923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1924" = icmp ugt i64 1, %"$gasrem_1923"
  br i1 %"$gascmp_1924", label %"$out_of_gas_1925", label %"$have_gas_1926"

"$out_of_gas_1925":                               ; preds = %"$have_gas_1914"
  call void @_out_of_gas()
  br label %"$have_gas_1926"

"$have_gas_1926":                                 ; preds = %"$out_of_gas_1925", %"$have_gas_1914"
  %"$consume_1927" = sub i64 %"$gasrem_1923", 1
  store i64 %"$consume_1927", i64* @_gasrem, align 8
  %"$res_116" = alloca %TName_Bool*, align 8
  %"$gasrem_1928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1929" = icmp ugt i64 1, %"$gasrem_1928"
  br i1 %"$gascmp_1929", label %"$out_of_gas_1930", label %"$have_gas_1931"

"$out_of_gas_1930":                               ; preds = %"$have_gas_1926"
  call void @_out_of_gas()
  br label %"$have_gas_1931"

"$have_gas_1931":                                 ; preds = %"$out_of_gas_1930", %"$have_gas_1926"
  %"$consume_1932" = sub i64 %"$gasrem_1928", 1
  store i64 %"$consume_1932", i64* @_gasrem, align 8
  %"$ans_114" = alloca %Int256, align 8
  %"$gasrem_1933" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1934" = icmp ugt i64 1, %"$gasrem_1933"
  br i1 %"$gascmp_1934", label %"$out_of_gas_1935", label %"$have_gas_1936"

"$out_of_gas_1935":                               ; preds = %"$have_gas_1931"
  call void @_out_of_gas()
  br label %"$have_gas_1936"

"$have_gas_1936":                                 ; preds = %"$out_of_gas_1935", %"$have_gas_1931"
  %"$consume_1937" = sub i64 %"$gasrem_1933", 1
  store i64 %"$consume_1937", i64* @_gasrem, align 8
  store %Int256 { i256 10010004501200210025202100120004500100001 }, %Int256* %"$ans_114", align 8
  %"$gasrem_1938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1939" = icmp ugt i64 1, %"$gasrem_1938"
  br i1 %"$gascmp_1939", label %"$out_of_gas_1940", label %"$have_gas_1941"

"$out_of_gas_1940":                               ; preds = %"$have_gas_1936"
  call void @_out_of_gas()
  br label %"$have_gas_1941"

"$have_gas_1941":                                 ; preds = %"$out_of_gas_1940", %"$have_gas_1936"
  %"$consume_1942" = sub i64 %"$gasrem_1938", 1
  store i64 %"$consume_1942", i64* @_gasrem, align 8
  %"$res__115" = alloca %TName_Bool*, align 8
  %"$execptr_load_1943" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_113_1944" = alloca %Int256, align 8
  %"$$p_113_1945" = load %Int256, %Int256* %"$p_113", align 8
  store %Int256 %"$$p_113_1945", %Int256* %"$eq_$p_113_1944", align 8
  %"$eq_$ans_114_1946" = alloca %Int256, align 8
  %"$$ans_114_1947" = load %Int256, %Int256* %"$ans_114", align 8
  store %Int256 %"$$ans_114_1947", %Int256* %"$eq_$ans_114_1946", align 8
  %"$eq_call_1948" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1943", %Int256* %"$eq_$p_113_1944", %Int256* %"$eq_$ans_114_1946")
  store %TName_Bool* %"$eq_call_1948", %TName_Bool** %"$res__115", align 8
  %"$gasrem_1950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1951" = icmp ugt i64 1, %"$gasrem_1950"
  br i1 %"$gascmp_1951", label %"$out_of_gas_1952", label %"$have_gas_1953"

"$out_of_gas_1952":                               ; preds = %"$have_gas_1941"
  call void @_out_of_gas()
  br label %"$have_gas_1953"

"$have_gas_1953":                                 ; preds = %"$out_of_gas_1952", %"$have_gas_1941"
  %"$consume_1954" = sub i64 %"$gasrem_1950", 1
  store i64 %"$consume_1954", i64* @_gasrem, align 8
  %"$BoolUtils.andb_191" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1955" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1956" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1955", 0
  %"$BoolUtils.andb_envptr_1957" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1955", 1
  %"$$res_112_1958" = load %TName_Bool*, %TName_Bool** %"$res_112", align 8
  %"$BoolUtils.andb_call_1959" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1956"(i8* %"$BoolUtils.andb_envptr_1957", %TName_Bool* %"$$res_112_1958")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1959", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8
  %"$BoolUtils.andb_192" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_191_1960" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8
  %"$$BoolUtils.andb_191_fptr_1961" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_1960", 0
  %"$$BoolUtils.andb_191_envptr_1962" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_1960", 1
  %"$$res__115_1963" = load %TName_Bool*, %TName_Bool** %"$res__115", align 8
  %"$$BoolUtils.andb_191_call_1964" = call %TName_Bool* %"$$BoolUtils.andb_191_fptr_1961"(i8* %"$$BoolUtils.andb_191_envptr_1962", %TName_Bool* %"$$res__115_1963")
  store %TName_Bool* %"$$BoolUtils.andb_191_call_1964", %TName_Bool** %"$BoolUtils.andb_192", align 8
  %"$$BoolUtils.andb_192_1965" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_192", align 8
  store %TName_Bool* %"$$BoolUtils.andb_192_1965", %TName_Bool** %"$res_116", align 8
  %"$gasrem_1966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1967" = icmp ugt i64 1, %"$gasrem_1966"
  br i1 %"$gascmp_1967", label %"$out_of_gas_1968", label %"$have_gas_1969"

"$out_of_gas_1968":                               ; preds = %"$have_gas_1953"
  call void @_out_of_gas()
  br label %"$have_gas_1969"

"$have_gas_1969":                                 ; preds = %"$out_of_gas_1968", %"$have_gas_1953"
  %"$consume_1970" = sub i64 %"$gasrem_1966", 1
  store i64 %"$consume_1970", i64* @_gasrem, align 8
  %"$p_117" = alloca %Int256, align 8
  %"$execptr_load_1971" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_1972" = alloca %Int256, align 8
  %"$t9_1973" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_1973", %Int256* %"$pow_t9_1972", align 8
  %"$p1_1974" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1975" = call %Int256* @_pow_Int256(i8* %"$execptr_load_1971", %Int256* %"$pow_t9_1972", %Uint32 %"$p1_1974")
  %"$pow_1977" = load %Int256, %Int256* %"$pow_call_1975", align 8
  store %Int256 %"$pow_1977", %Int256* %"$p_117", align 8
  %"$gasrem_1978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1979" = icmp ugt i64 1, %"$gasrem_1978"
  br i1 %"$gascmp_1979", label %"$out_of_gas_1980", label %"$have_gas_1981"

"$out_of_gas_1980":                               ; preds = %"$have_gas_1969"
  call void @_out_of_gas()
  br label %"$have_gas_1981"

"$have_gas_1981":                                 ; preds = %"$out_of_gas_1980", %"$have_gas_1969"
  %"$consume_1982" = sub i64 %"$gasrem_1978", 1
  store i64 %"$consume_1982", i64* @_gasrem, align 8
  %"$res_120" = alloca %TName_Bool*, align 8
  %"$gasrem_1983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1984" = icmp ugt i64 1, %"$gasrem_1983"
  br i1 %"$gascmp_1984", label %"$out_of_gas_1985", label %"$have_gas_1986"

"$out_of_gas_1985":                               ; preds = %"$have_gas_1981"
  call void @_out_of_gas()
  br label %"$have_gas_1986"

"$have_gas_1986":                                 ; preds = %"$out_of_gas_1985", %"$have_gas_1981"
  %"$consume_1987" = sub i64 %"$gasrem_1983", 1
  store i64 %"$consume_1987", i64* @_gasrem, align 8
  %"$ans_118" = alloca %Int256, align 8
  %"$gasrem_1988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1989" = icmp ugt i64 1, %"$gasrem_1988"
  br i1 %"$gascmp_1989", label %"$out_of_gas_1990", label %"$have_gas_1991"

"$out_of_gas_1990":                               ; preds = %"$have_gas_1986"
  call void @_out_of_gas()
  br label %"$have_gas_1991"

"$have_gas_1991":                                 ; preds = %"$out_of_gas_1990", %"$have_gas_1986"
  %"$consume_1992" = sub i64 %"$gasrem_1988", 1
  store i64 %"$consume_1992", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_118", align 8
  %"$gasrem_1993" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1994" = icmp ugt i64 1, %"$gasrem_1993"
  br i1 %"$gascmp_1994", label %"$out_of_gas_1995", label %"$have_gas_1996"

"$out_of_gas_1995":                               ; preds = %"$have_gas_1991"
  call void @_out_of_gas()
  br label %"$have_gas_1996"

"$have_gas_1996":                                 ; preds = %"$out_of_gas_1995", %"$have_gas_1991"
  %"$consume_1997" = sub i64 %"$gasrem_1993", 1
  store i64 %"$consume_1997", i64* @_gasrem, align 8
  %"$res__119" = alloca %TName_Bool*, align 8
  %"$execptr_load_1998" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_117_1999" = alloca %Int256, align 8
  %"$$p_117_2000" = load %Int256, %Int256* %"$p_117", align 8
  store %Int256 %"$$p_117_2000", %Int256* %"$eq_$p_117_1999", align 8
  %"$eq_$ans_118_2001" = alloca %Int256, align 8
  %"$$ans_118_2002" = load %Int256, %Int256* %"$ans_118", align 8
  store %Int256 %"$$ans_118_2002", %Int256* %"$eq_$ans_118_2001", align 8
  %"$eq_call_2003" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_1998", %Int256* %"$eq_$p_117_1999", %Int256* %"$eq_$ans_118_2001")
  store %TName_Bool* %"$eq_call_2003", %TName_Bool** %"$res__119", align 8
  %"$gasrem_2005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2006" = icmp ugt i64 1, %"$gasrem_2005"
  br i1 %"$gascmp_2006", label %"$out_of_gas_2007", label %"$have_gas_2008"

"$out_of_gas_2007":                               ; preds = %"$have_gas_1996"
  call void @_out_of_gas()
  br label %"$have_gas_2008"

"$have_gas_2008":                                 ; preds = %"$out_of_gas_2007", %"$have_gas_1996"
  %"$consume_2009" = sub i64 %"$gasrem_2005", 1
  store i64 %"$consume_2009", i64* @_gasrem, align 8
  %"$BoolUtils.andb_193" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2010" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2011" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2010", 0
  %"$BoolUtils.andb_envptr_2012" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2010", 1
  %"$$res_116_2013" = load %TName_Bool*, %TName_Bool** %"$res_116", align 8
  %"$BoolUtils.andb_call_2014" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2011"(i8* %"$BoolUtils.andb_envptr_2012", %TName_Bool* %"$$res_116_2013")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2014", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8
  %"$BoolUtils.andb_194" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_193_2015" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8
  %"$$BoolUtils.andb_193_fptr_2016" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2015", 0
  %"$$BoolUtils.andb_193_envptr_2017" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2015", 1
  %"$$res__119_2018" = load %TName_Bool*, %TName_Bool** %"$res__119", align 8
  %"$$BoolUtils.andb_193_call_2019" = call %TName_Bool* %"$$BoolUtils.andb_193_fptr_2016"(i8* %"$$BoolUtils.andb_193_envptr_2017", %TName_Bool* %"$$res__119_2018")
  store %TName_Bool* %"$$BoolUtils.andb_193_call_2019", %TName_Bool** %"$BoolUtils.andb_194", align 8
  %"$$BoolUtils.andb_194_2020" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_194", align 8
  store %TName_Bool* %"$$BoolUtils.andb_194_2020", %TName_Bool** %"$res_120", align 8
  %"$gasrem_2021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2022" = icmp ugt i64 1, %"$gasrem_2021"
  br i1 %"$gascmp_2022", label %"$out_of_gas_2023", label %"$have_gas_2024"

"$out_of_gas_2023":                               ; preds = %"$have_gas_2008"
  call void @_out_of_gas()
  br label %"$have_gas_2024"

"$have_gas_2024":                                 ; preds = %"$out_of_gas_2023", %"$have_gas_2008"
  %"$consume_2025" = sub i64 %"$gasrem_2021", 1
  store i64 %"$consume_2025", i64* @_gasrem, align 8
  %"$p_121" = alloca %Int256, align 8
  %"$execptr_load_2026" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2027" = alloca %Int256, align 8
  %"$t9_2028" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2028", %Int256* %"$pow_t9_2027", align 8
  %"$p2_2029" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2030" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2026", %Int256* %"$pow_t9_2027", %Uint32 %"$p2_2029")
  %"$pow_2032" = load %Int256, %Int256* %"$pow_call_2030", align 8
  store %Int256 %"$pow_2032", %Int256* %"$p_121", align 8
  %"$gasrem_2033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2034" = icmp ugt i64 1, %"$gasrem_2033"
  br i1 %"$gascmp_2034", label %"$out_of_gas_2035", label %"$have_gas_2036"

"$out_of_gas_2035":                               ; preds = %"$have_gas_2024"
  call void @_out_of_gas()
  br label %"$have_gas_2036"

"$have_gas_2036":                                 ; preds = %"$out_of_gas_2035", %"$have_gas_2024"
  %"$consume_2037" = sub i64 %"$gasrem_2033", 1
  store i64 %"$consume_2037", i64* @_gasrem, align 8
  %"$res_124" = alloca %TName_Bool*, align 8
  %"$gasrem_2038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2039" = icmp ugt i64 1, %"$gasrem_2038"
  br i1 %"$gascmp_2039", label %"$out_of_gas_2040", label %"$have_gas_2041"

"$out_of_gas_2040":                               ; preds = %"$have_gas_2036"
  call void @_out_of_gas()
  br label %"$have_gas_2041"

"$have_gas_2041":                                 ; preds = %"$out_of_gas_2040", %"$have_gas_2036"
  %"$consume_2042" = sub i64 %"$gasrem_2038", 1
  store i64 %"$consume_2042", i64* @_gasrem, align 8
  %"$ans_122" = alloca %Int256, align 8
  %"$gasrem_2043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2044" = icmp ugt i64 1, %"$gasrem_2043"
  br i1 %"$gascmp_2044", label %"$out_of_gas_2045", label %"$have_gas_2046"

"$out_of_gas_2045":                               ; preds = %"$have_gas_2041"
  call void @_out_of_gas()
  br label %"$have_gas_2046"

"$have_gas_2046":                                 ; preds = %"$out_of_gas_2045", %"$have_gas_2041"
  %"$consume_2047" = sub i64 %"$gasrem_2043", 1
  store i64 %"$consume_2047", i64* @_gasrem, align 8
  store %Int256 { i256 10002 }, %Int256* %"$ans_122", align 8
  %"$gasrem_2048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2049" = icmp ugt i64 1, %"$gasrem_2048"
  br i1 %"$gascmp_2049", label %"$out_of_gas_2050", label %"$have_gas_2051"

"$out_of_gas_2050":                               ; preds = %"$have_gas_2046"
  call void @_out_of_gas()
  br label %"$have_gas_2051"

"$have_gas_2051":                                 ; preds = %"$out_of_gas_2050", %"$have_gas_2046"
  %"$consume_2052" = sub i64 %"$gasrem_2048", 1
  store i64 %"$consume_2052", i64* @_gasrem, align 8
  %"$res__123" = alloca %TName_Bool*, align 8
  %"$execptr_load_2053" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_121_2054" = alloca %Int256, align 8
  %"$$p_121_2055" = load %Int256, %Int256* %"$p_121", align 8
  store %Int256 %"$$p_121_2055", %Int256* %"$eq_$p_121_2054", align 8
  %"$eq_$ans_122_2056" = alloca %Int256, align 8
  %"$$ans_122_2057" = load %Int256, %Int256* %"$ans_122", align 8
  store %Int256 %"$$ans_122_2057", %Int256* %"$eq_$ans_122_2056", align 8
  %"$eq_call_2058" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2053", %Int256* %"$eq_$p_121_2054", %Int256* %"$eq_$ans_122_2056")
  store %TName_Bool* %"$eq_call_2058", %TName_Bool** %"$res__123", align 8
  %"$gasrem_2060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2061" = icmp ugt i64 1, %"$gasrem_2060"
  br i1 %"$gascmp_2061", label %"$out_of_gas_2062", label %"$have_gas_2063"

"$out_of_gas_2062":                               ; preds = %"$have_gas_2051"
  call void @_out_of_gas()
  br label %"$have_gas_2063"

"$have_gas_2063":                                 ; preds = %"$out_of_gas_2062", %"$have_gas_2051"
  %"$consume_2064" = sub i64 %"$gasrem_2060", 1
  store i64 %"$consume_2064", i64* @_gasrem, align 8
  %"$BoolUtils.andb_195" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2065" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2066" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2065", 0
  %"$BoolUtils.andb_envptr_2067" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2065", 1
  %"$$res_120_2068" = load %TName_Bool*, %TName_Bool** %"$res_120", align 8
  %"$BoolUtils.andb_call_2069" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2066"(i8* %"$BoolUtils.andb_envptr_2067", %TName_Bool* %"$$res_120_2068")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2069", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8
  %"$BoolUtils.andb_196" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_195_2070" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8
  %"$$BoolUtils.andb_195_fptr_2071" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2070", 0
  %"$$BoolUtils.andb_195_envptr_2072" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2070", 1
  %"$$res__123_2073" = load %TName_Bool*, %TName_Bool** %"$res__123", align 8
  %"$$BoolUtils.andb_195_call_2074" = call %TName_Bool* %"$$BoolUtils.andb_195_fptr_2071"(i8* %"$$BoolUtils.andb_195_envptr_2072", %TName_Bool* %"$$res__123_2073")
  store %TName_Bool* %"$$BoolUtils.andb_195_call_2074", %TName_Bool** %"$BoolUtils.andb_196", align 8
  %"$$BoolUtils.andb_196_2075" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_196", align 8
  store %TName_Bool* %"$$BoolUtils.andb_196_2075", %TName_Bool** %"$res_124", align 8
  %"$gasrem_2076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2077" = icmp ugt i64 1, %"$gasrem_2076"
  br i1 %"$gascmp_2077", label %"$out_of_gas_2078", label %"$have_gas_2079"

"$out_of_gas_2078":                               ; preds = %"$have_gas_2063"
  call void @_out_of_gas()
  br label %"$have_gas_2079"

"$have_gas_2079":                                 ; preds = %"$out_of_gas_2078", %"$have_gas_2063"
  %"$consume_2080" = sub i64 %"$gasrem_2076", 1
  store i64 %"$consume_2080", i64* @_gasrem, align 8
  %"$p_125" = alloca %Int256, align 8
  %"$execptr_load_2081" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2082" = alloca %Int256, align 8
  %"$t9_2083" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2083", %Int256* %"$pow_t9_2082", align 8
  %"$p3_2084" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2085" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2081", %Int256* %"$pow_t9_2082", %Uint32 %"$p3_2084")
  %"$pow_2087" = load %Int256, %Int256* %"$pow_call_2085", align 8
  store %Int256 %"$pow_2087", %Int256* %"$p_125", align 8
  %"$gasrem_2088" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2089" = icmp ugt i64 1, %"$gasrem_2088"
  br i1 %"$gascmp_2089", label %"$out_of_gas_2090", label %"$have_gas_2091"

"$out_of_gas_2090":                               ; preds = %"$have_gas_2079"
  call void @_out_of_gas()
  br label %"$have_gas_2091"

"$have_gas_2091":                                 ; preds = %"$out_of_gas_2090", %"$have_gas_2079"
  %"$consume_2092" = sub i64 %"$gasrem_2088", 1
  store i64 %"$consume_2092", i64* @_gasrem, align 8
  %"$res_128" = alloca %TName_Bool*, align 8
  %"$gasrem_2093" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2094" = icmp ugt i64 1, %"$gasrem_2093"
  br i1 %"$gascmp_2094", label %"$out_of_gas_2095", label %"$have_gas_2096"

"$out_of_gas_2095":                               ; preds = %"$have_gas_2091"
  call void @_out_of_gas()
  br label %"$have_gas_2096"

"$have_gas_2096":                                 ; preds = %"$out_of_gas_2095", %"$have_gas_2091"
  %"$consume_2097" = sub i64 %"$gasrem_2093", 1
  store i64 %"$consume_2097", i64* @_gasrem, align 8
  %"$ans_126" = alloca %Int256, align 8
  %"$gasrem_2098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2099" = icmp ugt i64 1, %"$gasrem_2098"
  br i1 %"$gascmp_2099", label %"$out_of_gas_2100", label %"$have_gas_2101"

"$out_of_gas_2100":                               ; preds = %"$have_gas_2096"
  call void @_out_of_gas()
  br label %"$have_gas_2101"

"$have_gas_2101":                                 ; preds = %"$out_of_gas_2100", %"$have_gas_2096"
  %"$consume_2102" = sub i64 %"$gasrem_2098", 1
  store i64 %"$consume_2102", i64* @_gasrem, align 8
  store %Int256 { i256 10008002400320016 }, %Int256* %"$ans_126", align 8
  %"$gasrem_2103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2104" = icmp ugt i64 1, %"$gasrem_2103"
  br i1 %"$gascmp_2104", label %"$out_of_gas_2105", label %"$have_gas_2106"

"$out_of_gas_2105":                               ; preds = %"$have_gas_2101"
  call void @_out_of_gas()
  br label %"$have_gas_2106"

"$have_gas_2106":                                 ; preds = %"$out_of_gas_2105", %"$have_gas_2101"
  %"$consume_2107" = sub i64 %"$gasrem_2103", 1
  store i64 %"$consume_2107", i64* @_gasrem, align 8
  %"$res__127" = alloca %TName_Bool*, align 8
  %"$execptr_load_2108" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_125_2109" = alloca %Int256, align 8
  %"$$p_125_2110" = load %Int256, %Int256* %"$p_125", align 8
  store %Int256 %"$$p_125_2110", %Int256* %"$eq_$p_125_2109", align 8
  %"$eq_$ans_126_2111" = alloca %Int256, align 8
  %"$$ans_126_2112" = load %Int256, %Int256* %"$ans_126", align 8
  store %Int256 %"$$ans_126_2112", %Int256* %"$eq_$ans_126_2111", align 8
  %"$eq_call_2113" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2108", %Int256* %"$eq_$p_125_2109", %Int256* %"$eq_$ans_126_2111")
  store %TName_Bool* %"$eq_call_2113", %TName_Bool** %"$res__127", align 8
  %"$gasrem_2115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2116" = icmp ugt i64 1, %"$gasrem_2115"
  br i1 %"$gascmp_2116", label %"$out_of_gas_2117", label %"$have_gas_2118"

"$out_of_gas_2117":                               ; preds = %"$have_gas_2106"
  call void @_out_of_gas()
  br label %"$have_gas_2118"

"$have_gas_2118":                                 ; preds = %"$out_of_gas_2117", %"$have_gas_2106"
  %"$consume_2119" = sub i64 %"$gasrem_2115", 1
  store i64 %"$consume_2119", i64* @_gasrem, align 8
  %"$BoolUtils.andb_197" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2120" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2121" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2120", 0
  %"$BoolUtils.andb_envptr_2122" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2120", 1
  %"$$res_124_2123" = load %TName_Bool*, %TName_Bool** %"$res_124", align 8
  %"$BoolUtils.andb_call_2124" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2121"(i8* %"$BoolUtils.andb_envptr_2122", %TName_Bool* %"$$res_124_2123")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2124", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8
  %"$BoolUtils.andb_198" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_197_2125" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8
  %"$$BoolUtils.andb_197_fptr_2126" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2125", 0
  %"$$BoolUtils.andb_197_envptr_2127" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2125", 1
  %"$$res__127_2128" = load %TName_Bool*, %TName_Bool** %"$res__127", align 8
  %"$$BoolUtils.andb_197_call_2129" = call %TName_Bool* %"$$BoolUtils.andb_197_fptr_2126"(i8* %"$$BoolUtils.andb_197_envptr_2127", %TName_Bool* %"$$res__127_2128")
  store %TName_Bool* %"$$BoolUtils.andb_197_call_2129", %TName_Bool** %"$BoolUtils.andb_198", align 8
  %"$$BoolUtils.andb_198_2130" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_198", align 8
  store %TName_Bool* %"$$BoolUtils.andb_198_2130", %TName_Bool** %"$res_128", align 8
  %"$gasrem_2131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2132" = icmp ugt i64 1, %"$gasrem_2131"
  br i1 %"$gascmp_2132", label %"$out_of_gas_2133", label %"$have_gas_2134"

"$out_of_gas_2133":                               ; preds = %"$have_gas_2118"
  call void @_out_of_gas()
  br label %"$have_gas_2134"

"$have_gas_2134":                                 ; preds = %"$out_of_gas_2133", %"$have_gas_2118"
  %"$consume_2135" = sub i64 %"$gasrem_2131", 1
  store i64 %"$consume_2135", i64* @_gasrem, align 8
  %"$p_129" = alloca %Int256, align 8
  %"$execptr_load_2136" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2137" = alloca %Int256, align 8
  %"$t9_2138" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2138", %Int256* %"$pow_t9_2137", align 8
  %"$p4_2139" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2140" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2136", %Int256* %"$pow_t9_2137", %Uint32 %"$p4_2139")
  %"$pow_2142" = load %Int256, %Int256* %"$pow_call_2140", align 8
  store %Int256 %"$pow_2142", %Int256* %"$p_129", align 8
  %"$gasrem_2143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2144" = icmp ugt i64 1, %"$gasrem_2143"
  br i1 %"$gascmp_2144", label %"$out_of_gas_2145", label %"$have_gas_2146"

"$out_of_gas_2145":                               ; preds = %"$have_gas_2134"
  call void @_out_of_gas()
  br label %"$have_gas_2146"

"$have_gas_2146":                                 ; preds = %"$out_of_gas_2145", %"$have_gas_2134"
  %"$consume_2147" = sub i64 %"$gasrem_2143", 1
  store i64 %"$consume_2147", i64* @_gasrem, align 8
  %"$res_132" = alloca %TName_Bool*, align 8
  %"$gasrem_2148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2149" = icmp ugt i64 1, %"$gasrem_2148"
  br i1 %"$gascmp_2149", label %"$out_of_gas_2150", label %"$have_gas_2151"

"$out_of_gas_2150":                               ; preds = %"$have_gas_2146"
  call void @_out_of_gas()
  br label %"$have_gas_2151"

"$have_gas_2151":                                 ; preds = %"$out_of_gas_2150", %"$have_gas_2146"
  %"$consume_2152" = sub i64 %"$gasrem_2148", 1
  store i64 %"$consume_2152", i64* @_gasrem, align 8
  %"$ans_130" = alloca %Int256, align 8
  %"$gasrem_2153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2154" = icmp ugt i64 1, %"$gasrem_2153"
  br i1 %"$gascmp_2154", label %"$out_of_gas_2155", label %"$have_gas_2156"

"$out_of_gas_2155":                               ; preds = %"$have_gas_2151"
  call void @_out_of_gas()
  br label %"$have_gas_2156"

"$have_gas_2156":                                 ; preds = %"$out_of_gas_2155", %"$have_gas_2151"
  %"$consume_2157" = sub i64 %"$gasrem_2153", 1
  store i64 %"$consume_2157", i64* @_gasrem, align 8
  store %Int256 { i256 10020018009603360806534415361152051201024 }, %Int256* %"$ans_130", align 8
  %"$gasrem_2158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2159" = icmp ugt i64 1, %"$gasrem_2158"
  br i1 %"$gascmp_2159", label %"$out_of_gas_2160", label %"$have_gas_2161"

"$out_of_gas_2160":                               ; preds = %"$have_gas_2156"
  call void @_out_of_gas()
  br label %"$have_gas_2161"

"$have_gas_2161":                                 ; preds = %"$out_of_gas_2160", %"$have_gas_2156"
  %"$consume_2162" = sub i64 %"$gasrem_2158", 1
  store i64 %"$consume_2162", i64* @_gasrem, align 8
  %"$res__131" = alloca %TName_Bool*, align 8
  %"$execptr_load_2163" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_129_2164" = alloca %Int256, align 8
  %"$$p_129_2165" = load %Int256, %Int256* %"$p_129", align 8
  store %Int256 %"$$p_129_2165", %Int256* %"$eq_$p_129_2164", align 8
  %"$eq_$ans_130_2166" = alloca %Int256, align 8
  %"$$ans_130_2167" = load %Int256, %Int256* %"$ans_130", align 8
  store %Int256 %"$$ans_130_2167", %Int256* %"$eq_$ans_130_2166", align 8
  %"$eq_call_2168" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2163", %Int256* %"$eq_$p_129_2164", %Int256* %"$eq_$ans_130_2166")
  store %TName_Bool* %"$eq_call_2168", %TName_Bool** %"$res__131", align 8
  %"$gasrem_2170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2171" = icmp ugt i64 1, %"$gasrem_2170"
  br i1 %"$gascmp_2171", label %"$out_of_gas_2172", label %"$have_gas_2173"

"$out_of_gas_2172":                               ; preds = %"$have_gas_2161"
  call void @_out_of_gas()
  br label %"$have_gas_2173"

"$have_gas_2173":                                 ; preds = %"$out_of_gas_2172", %"$have_gas_2161"
  %"$consume_2174" = sub i64 %"$gasrem_2170", 1
  store i64 %"$consume_2174", i64* @_gasrem, align 8
  %"$BoolUtils.andb_199" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2175" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2176" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2175", 0
  %"$BoolUtils.andb_envptr_2177" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2175", 1
  %"$$res_128_2178" = load %TName_Bool*, %TName_Bool** %"$res_128", align 8
  %"$BoolUtils.andb_call_2179" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2176"(i8* %"$BoolUtils.andb_envptr_2177", %TName_Bool* %"$$res_128_2178")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2179", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8
  %"$BoolUtils.andb_200" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_199_2180" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8
  %"$$BoolUtils.andb_199_fptr_2181" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2180", 0
  %"$$BoolUtils.andb_199_envptr_2182" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2180", 1
  %"$$res__131_2183" = load %TName_Bool*, %TName_Bool** %"$res__131", align 8
  %"$$BoolUtils.andb_199_call_2184" = call %TName_Bool* %"$$BoolUtils.andb_199_fptr_2181"(i8* %"$$BoolUtils.andb_199_envptr_2182", %TName_Bool* %"$$res__131_2183")
  store %TName_Bool* %"$$BoolUtils.andb_199_call_2184", %TName_Bool** %"$BoolUtils.andb_200", align 8
  %"$$BoolUtils.andb_200_2185" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_200", align 8
  store %TName_Bool* %"$$BoolUtils.andb_200_2185", %TName_Bool** %"$res_132", align 8
  %"$gasrem_2186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2187" = icmp ugt i64 1, %"$gasrem_2186"
  br i1 %"$gascmp_2187", label %"$out_of_gas_2188", label %"$have_gas_2189"

"$out_of_gas_2188":                               ; preds = %"$have_gas_2173"
  call void @_out_of_gas()
  br label %"$have_gas_2189"

"$have_gas_2189":                                 ; preds = %"$out_of_gas_2188", %"$have_gas_2173"
  %"$consume_2190" = sub i64 %"$gasrem_2186", 1
  store i64 %"$consume_2190", i64* @_gasrem, align 8
  %"$$res_132_2191" = load %TName_Bool*, %TName_Bool** %"$res_132", align 8
  store %TName_Bool* %"$$res_132_2191", %TName_Bool** %"$expr_205", align 8
  %"$$expr_205_2192" = load %TName_Bool*, %TName_Bool** %"$expr_205", align 8
  ret %TName_Bool* %"$$expr_205_2192"
}

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
  %"$exprval_2193" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2194" = bitcast %TName_Bool* %"$exprval_2193" to i8*
  %"$execptr_load_2195" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2195", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_238", i8* %"$memvoidcast_2194")
  ret void
}
