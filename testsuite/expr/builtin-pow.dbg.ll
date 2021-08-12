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
%"$ParamDescr_2712" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2713" = type { %ParamDescrString, i32, %"$ParamDescr_2712"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_2712"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2713"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_203"(%"$$fundef_203_env_254"* %0, %TName_Bool* %1) !dbg !4 {
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
  ], !dbg !9

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
  store %TName_Bool* %"$adtptr_288", %TName_Bool** %"$retval_204", align 8, !dbg !10
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
  store %TName_Bool* %1, %TName_Bool** %"$retval_204", align 8, !dbg !13
  br label %"$matchsucc_274"

"$empty_default_278":                             ; preds = %"$have_gas_272"
  br label %"$matchsucc_274"

"$matchsucc_274":                                 ; preds = %"$have_gas_294", %"$have_gas_284", %"$empty_default_278"
  %"$$retval_204_296" = load %TName_Bool*, %TName_Bool** %"$retval_204", align 8
  ret %TName_Bool* %"$$retval_204_296"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_201"(%"$$fundef_201_env_255"* %0, %TName_Bool* %1) !dbg !15 {
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_203_cloval_264", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_202", align 8, !dbg !16
  %"$$retval_202_266" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_202", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_202_266"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !17 {
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
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_201_env_255"*, %TName_Bool*)* @"$fundef_201" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !19
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !20 {
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
  store %Uint32 zeroinitializer, %Uint32* %p1, align 4, !dbg !21
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
  store %Uint32 { i32 1 }, %Uint32* %p2, align 4, !dbg !22
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
  store %Uint32 { i32 4 }, %Uint32* %p3, align 4, !dbg !23
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
  store %Uint32 { i32 10 }, %Uint32* %p4, align 4, !dbg !24
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
  store %Uint32 { i32 2 }, %Uint32* %t1, align 4, !dbg !25
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
  store %Int32 { i32 3 }, %Int32* %t2, align 4, !dbg !26
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
  store %Uint64 { i64 100 }, %Uint64* %t3, align 8, !dbg !27
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
  store %Int64 { i64 -101 }, %Int64* %t4, align 8, !dbg !28
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
  store %Uint128 { i128 1000 }, %Uint128* %t5, align 8, !dbg !29
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
  store %Int128 { i128 501 }, %Int128* %t6, align 8, !dbg !30
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
  store %Uint256 { i256 10001 }, %Uint256* %t7, align 8, !dbg !31
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
  store %Int256 { i256 -10001 }, %Int256* %t8, align 8, !dbg !32
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
  store %Int256 { i256 10002 }, %Int256* %t9, align 8, !dbg !33
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
  store %TName_Bool* %"$adtptr_447", %TName_Bool** %res, align 8, !dbg !34
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
  %"$p1_453" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_454" = extractvalue %Uint32 %"$p1_453", 0
  %"$valueof_455" = zext i32 %"$valueof_454" to i64
  %"$gasmul_456" = mul i64 20, %"$valueof_455"
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 %"$gasmul_456", %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_451"
  %"$consume_461" = sub i64 %"$gasrem_457", %"$gasmul_456"
  store i64 %"$consume_461", i64* @_gasrem, align 8
  %"$t1_462" = load %Uint32, %Uint32* %t1, align 4
  %"$p1_463" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_464" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_462", %Uint32 %"$p1_463"), !dbg !35
  store %Uint32 %"$pow_call_464", %Uint32* %p, align 4, !dbg !35
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_460"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %"$res_0" = alloca %TName_Bool*, align 8
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %ans = alloca %Uint32, align 8
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_473"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %ans, align 4, !dbg !36
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_478"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %res_ = alloca %TName_Bool*, align 8
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 4, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_483"
  %"$consume_489" = sub i64 %"$gasrem_485", 4
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %"$execptr_load_490" = load i8*, i8** @_execptr, align 8
  %"$p_491" = load %Uint32, %Uint32* %p, align 4
  %"$ans_492" = load %Uint32, %Uint32* %ans, align 4
  %"$eq_call_493" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_490", %Uint32 %"$p_491", %Uint32 %"$ans_492"), !dbg !37
  store %TName_Bool* %"$eq_call_493", %TName_Bool** %res_, align 8, !dbg !37
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 1, %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$have_gas_488"
  %"$consume_499" = sub i64 %"$gasrem_495", 1
  store i64 %"$consume_499", i64* @_gasrem, align 8
  %"$BoolUtils.andb_133" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_500" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_501" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_500", 0
  %"$BoolUtils.andb_envptr_502" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_500", 1
  %"$res_503" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$BoolUtils.andb_call_504" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_501"(i8* %"$BoolUtils.andb_envptr_502", %TName_Bool* %"$res_503"), !dbg !38
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_504", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8, !dbg !38
  %"$BoolUtils.andb_134" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_133_505" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_133", align 8
  %"$$BoolUtils.andb_133_fptr_506" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_505", 0
  %"$$BoolUtils.andb_133_envptr_507" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_133_505", 1
  %"$res__508" = load %TName_Bool*, %TName_Bool** %res_, align 8
  %"$$BoolUtils.andb_133_call_509" = call %TName_Bool* %"$$BoolUtils.andb_133_fptr_506"(i8* %"$$BoolUtils.andb_133_envptr_507", %TName_Bool* %"$res__508"), !dbg !38
  store %TName_Bool* %"$$BoolUtils.andb_133_call_509", %TName_Bool** %"$BoolUtils.andb_134", align 8, !dbg !38
  %"$$BoolUtils.andb_134_510" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_134", align 8
  store %TName_Bool* %"$$BoolUtils.andb_134_510", %TName_Bool** %"$res_0", align 8, !dbg !38
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_498"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_498"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$p_1" = alloca %Uint32, align 8
  %"$p2_516" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_517" = extractvalue %Uint32 %"$p2_516", 0
  %"$valueof_518" = zext i32 %"$valueof_517" to i64
  %"$gasmul_519" = mul i64 20, %"$valueof_518"
  %"$gasrem_520" = load i64, i64* @_gasrem, align 8
  %"$gascmp_521" = icmp ugt i64 %"$gasmul_519", %"$gasrem_520"
  br i1 %"$gascmp_521", label %"$out_of_gas_522", label %"$have_gas_523"

"$out_of_gas_522":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_523"

"$have_gas_523":                                  ; preds = %"$out_of_gas_522", %"$have_gas_514"
  %"$consume_524" = sub i64 %"$gasrem_520", %"$gasmul_519"
  store i64 %"$consume_524", i64* @_gasrem, align 8
  %"$t1_525" = load %Uint32, %Uint32* %t1, align 4
  %"$p2_526" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_527" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_525", %Uint32 %"$p2_526"), !dbg !39
  store %Uint32 %"$pow_call_527", %Uint32* %"$p_1", align 4, !dbg !39
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_523"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_523"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %"$res_4" = alloca %TName_Bool*, align 8
  %"$gasrem_533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_534" = icmp ugt i64 1, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %"$have_gas_531"
  %"$consume_537" = sub i64 %"$gasrem_533", 1
  store i64 %"$consume_537", i64* @_gasrem, align 8
  %"$ans_2" = alloca %Uint32, align 8
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_536"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_536"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %"$ans_2", align 4, !dbg !40
  %"$gasrem_543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_544" = icmp ugt i64 1, %"$gasrem_543"
  br i1 %"$gascmp_544", label %"$out_of_gas_545", label %"$have_gas_546"

"$out_of_gas_545":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_546"

"$have_gas_546":                                  ; preds = %"$out_of_gas_545", %"$have_gas_541"
  %"$consume_547" = sub i64 %"$gasrem_543", 1
  store i64 %"$consume_547", i64* @_gasrem, align 8
  %"$res__3" = alloca %TName_Bool*, align 8
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 4, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$have_gas_546"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$have_gas_546"
  %"$consume_552" = sub i64 %"$gasrem_548", 4
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %"$execptr_load_553" = load i8*, i8** @_execptr, align 8
  %"$$p_1_554" = load %Uint32, %Uint32* %"$p_1", align 4
  %"$$ans_2_555" = load %Uint32, %Uint32* %"$ans_2", align 4
  %"$eq_call_556" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_553", %Uint32 %"$$p_1_554", %Uint32 %"$$ans_2_555"), !dbg !41
  store %TName_Bool* %"$eq_call_556", %TName_Bool** %"$res__3", align 8, !dbg !41
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 1, %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$have_gas_551"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$have_gas_551"
  %"$consume_562" = sub i64 %"$gasrem_558", 1
  store i64 %"$consume_562", i64* @_gasrem, align 8
  %"$BoolUtils.andb_135" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_563" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_564" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_563", 0
  %"$BoolUtils.andb_envptr_565" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_563", 1
  %"$$res_0_566" = load %TName_Bool*, %TName_Bool** %"$res_0", align 8
  %"$BoolUtils.andb_call_567" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_564"(i8* %"$BoolUtils.andb_envptr_565", %TName_Bool* %"$$res_0_566"), !dbg !42
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_567", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8, !dbg !42
  %"$BoolUtils.andb_136" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_135_568" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_135", align 8
  %"$$BoolUtils.andb_135_fptr_569" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_568", 0
  %"$$BoolUtils.andb_135_envptr_570" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_135_568", 1
  %"$$res__3_571" = load %TName_Bool*, %TName_Bool** %"$res__3", align 8
  %"$$BoolUtils.andb_135_call_572" = call %TName_Bool* %"$$BoolUtils.andb_135_fptr_569"(i8* %"$$BoolUtils.andb_135_envptr_570", %TName_Bool* %"$$res__3_571"), !dbg !42
  store %TName_Bool* %"$$BoolUtils.andb_135_call_572", %TName_Bool** %"$BoolUtils.andb_136", align 8, !dbg !42
  %"$$BoolUtils.andb_136_573" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_136", align 8
  store %TName_Bool* %"$$BoolUtils.andb_136_573", %TName_Bool** %"$res_4", align 8, !dbg !42
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 1, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_561"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_561"
  %"$consume_578" = sub i64 %"$gasrem_574", 1
  store i64 %"$consume_578", i64* @_gasrem, align 8
  %"$p_5" = alloca %Uint32, align 8
  %"$p3_579" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_580" = extractvalue %Uint32 %"$p3_579", 0
  %"$valueof_581" = zext i32 %"$valueof_580" to i64
  %"$gasmul_582" = mul i64 20, %"$valueof_581"
  %"$gasrem_583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_584" = icmp ugt i64 %"$gasmul_582", %"$gasrem_583"
  br i1 %"$gascmp_584", label %"$out_of_gas_585", label %"$have_gas_586"

"$out_of_gas_585":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_586"

"$have_gas_586":                                  ; preds = %"$out_of_gas_585", %"$have_gas_577"
  %"$consume_587" = sub i64 %"$gasrem_583", %"$gasmul_582"
  store i64 %"$consume_587", i64* @_gasrem, align 8
  %"$t1_588" = load %Uint32, %Uint32* %t1, align 4
  %"$p3_589" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_590" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_588", %Uint32 %"$p3_589"), !dbg !43
  store %Uint32 %"$pow_call_590", %Uint32* %"$p_5", align 4, !dbg !43
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_586"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_586"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %"$res_8" = alloca %TName_Bool*, align 8
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 1, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_594"
  %"$consume_600" = sub i64 %"$gasrem_596", 1
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %"$ans_6" = alloca %Uint32, align 8
  %"$gasrem_601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_602" = icmp ugt i64 1, %"$gasrem_601"
  br i1 %"$gascmp_602", label %"$out_of_gas_603", label %"$have_gas_604"

"$out_of_gas_603":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_604"

"$have_gas_604":                                  ; preds = %"$out_of_gas_603", %"$have_gas_599"
  %"$consume_605" = sub i64 %"$gasrem_601", 1
  store i64 %"$consume_605", i64* @_gasrem, align 8
  store %Uint32 { i32 16 }, %Uint32* %"$ans_6", align 4, !dbg !44
  %"$gasrem_606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_607" = icmp ugt i64 1, %"$gasrem_606"
  br i1 %"$gascmp_607", label %"$out_of_gas_608", label %"$have_gas_609"

"$out_of_gas_608":                                ; preds = %"$have_gas_604"
  call void @_out_of_gas()
  br label %"$have_gas_609"

"$have_gas_609":                                  ; preds = %"$out_of_gas_608", %"$have_gas_604"
  %"$consume_610" = sub i64 %"$gasrem_606", 1
  store i64 %"$consume_610", i64* @_gasrem, align 8
  %"$res__7" = alloca %TName_Bool*, align 8
  %"$gasrem_611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_612" = icmp ugt i64 4, %"$gasrem_611"
  br i1 %"$gascmp_612", label %"$out_of_gas_613", label %"$have_gas_614"

"$out_of_gas_613":                                ; preds = %"$have_gas_609"
  call void @_out_of_gas()
  br label %"$have_gas_614"

"$have_gas_614":                                  ; preds = %"$out_of_gas_613", %"$have_gas_609"
  %"$consume_615" = sub i64 %"$gasrem_611", 4
  store i64 %"$consume_615", i64* @_gasrem, align 8
  %"$execptr_load_616" = load i8*, i8** @_execptr, align 8
  %"$$p_5_617" = load %Uint32, %Uint32* %"$p_5", align 4
  %"$$ans_6_618" = load %Uint32, %Uint32* %"$ans_6", align 4
  %"$eq_call_619" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_616", %Uint32 %"$$p_5_617", %Uint32 %"$$ans_6_618"), !dbg !45
  store %TName_Bool* %"$eq_call_619", %TName_Bool** %"$res__7", align 8, !dbg !45
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_614"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_614"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  %"$BoolUtils.andb_137" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_626" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_627" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_626", 0
  %"$BoolUtils.andb_envptr_628" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_626", 1
  %"$$res_4_629" = load %TName_Bool*, %TName_Bool** %"$res_4", align 8
  %"$BoolUtils.andb_call_630" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_627"(i8* %"$BoolUtils.andb_envptr_628", %TName_Bool* %"$$res_4_629"), !dbg !46
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_630", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8, !dbg !46
  %"$BoolUtils.andb_138" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_137_631" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_137", align 8
  %"$$BoolUtils.andb_137_fptr_632" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_631", 0
  %"$$BoolUtils.andb_137_envptr_633" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_137_631", 1
  %"$$res__7_634" = load %TName_Bool*, %TName_Bool** %"$res__7", align 8
  %"$$BoolUtils.andb_137_call_635" = call %TName_Bool* %"$$BoolUtils.andb_137_fptr_632"(i8* %"$$BoolUtils.andb_137_envptr_633", %TName_Bool* %"$$res__7_634"), !dbg !46
  store %TName_Bool* %"$$BoolUtils.andb_137_call_635", %TName_Bool** %"$BoolUtils.andb_138", align 8, !dbg !46
  %"$$BoolUtils.andb_138_636" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_138", align 8
  store %TName_Bool* %"$$BoolUtils.andb_138_636", %TName_Bool** %"$res_8", align 8, !dbg !46
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 1, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_624"
  %"$consume_641" = sub i64 %"$gasrem_637", 1
  store i64 %"$consume_641", i64* @_gasrem, align 8
  %"$p_9" = alloca %Uint32, align 8
  %"$p4_642" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_643" = extractvalue %Uint32 %"$p4_642", 0
  %"$valueof_644" = zext i32 %"$valueof_643" to i64
  %"$gasmul_645" = mul i64 20, %"$valueof_644"
  %"$gasrem_646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_647" = icmp ugt i64 %"$gasmul_645", %"$gasrem_646"
  br i1 %"$gascmp_647", label %"$out_of_gas_648", label %"$have_gas_649"

"$out_of_gas_648":                                ; preds = %"$have_gas_640"
  call void @_out_of_gas()
  br label %"$have_gas_649"

"$have_gas_649":                                  ; preds = %"$out_of_gas_648", %"$have_gas_640"
  %"$consume_650" = sub i64 %"$gasrem_646", %"$gasmul_645"
  store i64 %"$consume_650", i64* @_gasrem, align 8
  %"$t1_651" = load %Uint32, %Uint32* %t1, align 4
  %"$p4_652" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_653" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_651", %Uint32 %"$p4_652"), !dbg !47
  store %Uint32 %"$pow_call_653", %Uint32* %"$p_9", align 4, !dbg !47
  %"$gasrem_654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_655" = icmp ugt i64 1, %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_649"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_649"
  %"$consume_658" = sub i64 %"$gasrem_654", 1
  store i64 %"$consume_658", i64* @_gasrem, align 8
  %"$res_12" = alloca %TName_Bool*, align 8
  %"$gasrem_659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_660" = icmp ugt i64 1, %"$gasrem_659"
  br i1 %"$gascmp_660", label %"$out_of_gas_661", label %"$have_gas_662"

"$out_of_gas_661":                                ; preds = %"$have_gas_657"
  call void @_out_of_gas()
  br label %"$have_gas_662"

"$have_gas_662":                                  ; preds = %"$out_of_gas_661", %"$have_gas_657"
  %"$consume_663" = sub i64 %"$gasrem_659", 1
  store i64 %"$consume_663", i64* @_gasrem, align 8
  %"$ans_10" = alloca %Uint32, align 8
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_662"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_662"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem, align 8
  store %Uint32 { i32 1024 }, %Uint32* %"$ans_10", align 4, !dbg !48
  %"$gasrem_669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_670" = icmp ugt i64 1, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %"$have_gas_667"
  %"$consume_673" = sub i64 %"$gasrem_669", 1
  store i64 %"$consume_673", i64* @_gasrem, align 8
  %"$res__11" = alloca %TName_Bool*, align 8
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 4, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %"$have_gas_672"
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %"$have_gas_672"
  %"$consume_678" = sub i64 %"$gasrem_674", 4
  store i64 %"$consume_678", i64* @_gasrem, align 8
  %"$execptr_load_679" = load i8*, i8** @_execptr, align 8
  %"$$p_9_680" = load %Uint32, %Uint32* %"$p_9", align 4
  %"$$ans_10_681" = load %Uint32, %Uint32* %"$ans_10", align 4
  %"$eq_call_682" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_679", %Uint32 %"$$p_9_680", %Uint32 %"$$ans_10_681"), !dbg !49
  store %TName_Bool* %"$eq_call_682", %TName_Bool** %"$res__11", align 8, !dbg !49
  %"$gasrem_684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_685" = icmp ugt i64 1, %"$gasrem_684"
  br i1 %"$gascmp_685", label %"$out_of_gas_686", label %"$have_gas_687"

"$out_of_gas_686":                                ; preds = %"$have_gas_677"
  call void @_out_of_gas()
  br label %"$have_gas_687"

"$have_gas_687":                                  ; preds = %"$out_of_gas_686", %"$have_gas_677"
  %"$consume_688" = sub i64 %"$gasrem_684", 1
  store i64 %"$consume_688", i64* @_gasrem, align 8
  %"$BoolUtils.andb_139" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_689" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_690" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_689", 0
  %"$BoolUtils.andb_envptr_691" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_689", 1
  %"$$res_8_692" = load %TName_Bool*, %TName_Bool** %"$res_8", align 8
  %"$BoolUtils.andb_call_693" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_690"(i8* %"$BoolUtils.andb_envptr_691", %TName_Bool* %"$$res_8_692"), !dbg !50
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_693", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8, !dbg !50
  %"$BoolUtils.andb_140" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_139_694" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_fptr_695" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_694", 0
  %"$$BoolUtils.andb_139_envptr_696" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_694", 1
  %"$$res__11_697" = load %TName_Bool*, %TName_Bool** %"$res__11", align 8
  %"$$BoolUtils.andb_139_call_698" = call %TName_Bool* %"$$BoolUtils.andb_139_fptr_695"(i8* %"$$BoolUtils.andb_139_envptr_696", %TName_Bool* %"$$res__11_697"), !dbg !50
  store %TName_Bool* %"$$BoolUtils.andb_139_call_698", %TName_Bool** %"$BoolUtils.andb_140", align 8, !dbg !50
  %"$$BoolUtils.andb_140_699" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_140", align 8
  store %TName_Bool* %"$$BoolUtils.andb_140_699", %TName_Bool** %"$res_12", align 8, !dbg !50
  %"$gasrem_700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_701" = icmp ugt i64 1, %"$gasrem_700"
  br i1 %"$gascmp_701", label %"$out_of_gas_702", label %"$have_gas_703"

"$out_of_gas_702":                                ; preds = %"$have_gas_687"
  call void @_out_of_gas()
  br label %"$have_gas_703"

"$have_gas_703":                                  ; preds = %"$out_of_gas_702", %"$have_gas_687"
  %"$consume_704" = sub i64 %"$gasrem_700", 1
  store i64 %"$consume_704", i64* @_gasrem, align 8
  %"$p_13" = alloca %Int32, align 8
  %"$p1_705" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_706" = extractvalue %Uint32 %"$p1_705", 0
  %"$valueof_707" = zext i32 %"$valueof_706" to i64
  %"$gasmul_708" = mul i64 20, %"$valueof_707"
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 %"$gasmul_708", %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_703"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_703"
  %"$consume_713" = sub i64 %"$gasrem_709", %"$gasmul_708"
  store i64 %"$consume_713", i64* @_gasrem, align 8
  %"$t2_714" = load %Int32, %Int32* %t2, align 4
  %"$p1_715" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_716" = call %Int32 @_pow_Int32(%Int32 %"$t2_714", %Uint32 %"$p1_715"), !dbg !51
  store %Int32 %"$pow_call_716", %Int32* %"$p_13", align 4, !dbg !51
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 1, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %"$have_gas_712"
  %"$consume_721" = sub i64 %"$gasrem_717", 1
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %"$res_16" = alloca %TName_Bool*, align 8
  %"$gasrem_722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_723" = icmp ugt i64 1, %"$gasrem_722"
  br i1 %"$gascmp_723", label %"$out_of_gas_724", label %"$have_gas_725"

"$out_of_gas_724":                                ; preds = %"$have_gas_720"
  call void @_out_of_gas()
  br label %"$have_gas_725"

"$have_gas_725":                                  ; preds = %"$out_of_gas_724", %"$have_gas_720"
  %"$consume_726" = sub i64 %"$gasrem_722", 1
  store i64 %"$consume_726", i64* @_gasrem, align 8
  %"$ans_14" = alloca %Int32, align 8
  %"$gasrem_727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_728" = icmp ugt i64 1, %"$gasrem_727"
  br i1 %"$gascmp_728", label %"$out_of_gas_729", label %"$have_gas_730"

"$out_of_gas_729":                                ; preds = %"$have_gas_725"
  call void @_out_of_gas()
  br label %"$have_gas_730"

"$have_gas_730":                                  ; preds = %"$out_of_gas_729", %"$have_gas_725"
  %"$consume_731" = sub i64 %"$gasrem_727", 1
  store i64 %"$consume_731", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$ans_14", align 4, !dbg !52
  %"$gasrem_732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_733" = icmp ugt i64 1, %"$gasrem_732"
  br i1 %"$gascmp_733", label %"$out_of_gas_734", label %"$have_gas_735"

"$out_of_gas_734":                                ; preds = %"$have_gas_730"
  call void @_out_of_gas()
  br label %"$have_gas_735"

"$have_gas_735":                                  ; preds = %"$out_of_gas_734", %"$have_gas_730"
  %"$consume_736" = sub i64 %"$gasrem_732", 1
  store i64 %"$consume_736", i64* @_gasrem, align 8
  %"$res__15" = alloca %TName_Bool*, align 8
  %"$gasrem_737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_738" = icmp ugt i64 4, %"$gasrem_737"
  br i1 %"$gascmp_738", label %"$out_of_gas_739", label %"$have_gas_740"

"$out_of_gas_739":                                ; preds = %"$have_gas_735"
  call void @_out_of_gas()
  br label %"$have_gas_740"

"$have_gas_740":                                  ; preds = %"$out_of_gas_739", %"$have_gas_735"
  %"$consume_741" = sub i64 %"$gasrem_737", 4
  store i64 %"$consume_741", i64* @_gasrem, align 8
  %"$execptr_load_742" = load i8*, i8** @_execptr, align 8
  %"$$p_13_743" = load %Int32, %Int32* %"$p_13", align 4
  %"$$ans_14_744" = load %Int32, %Int32* %"$ans_14", align 4
  %"$eq_call_745" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_742", %Int32 %"$$p_13_743", %Int32 %"$$ans_14_744"), !dbg !53
  store %TName_Bool* %"$eq_call_745", %TName_Bool** %"$res__15", align 8, !dbg !53
  %"$gasrem_747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_748" = icmp ugt i64 1, %"$gasrem_747"
  br i1 %"$gascmp_748", label %"$out_of_gas_749", label %"$have_gas_750"

"$out_of_gas_749":                                ; preds = %"$have_gas_740"
  call void @_out_of_gas()
  br label %"$have_gas_750"

"$have_gas_750":                                  ; preds = %"$out_of_gas_749", %"$have_gas_740"
  %"$consume_751" = sub i64 %"$gasrem_747", 1
  store i64 %"$consume_751", i64* @_gasrem, align 8
  %"$BoolUtils.andb_141" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_752" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_753" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_752", 0
  %"$BoolUtils.andb_envptr_754" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_752", 1
  %"$$res_12_755" = load %TName_Bool*, %TName_Bool** %"$res_12", align 8
  %"$BoolUtils.andb_call_756" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_753"(i8* %"$BoolUtils.andb_envptr_754", %TName_Bool* %"$$res_12_755"), !dbg !54
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_756", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8, !dbg !54
  %"$BoolUtils.andb_142" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_141_757" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$$BoolUtils.andb_141_fptr_758" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_757", 0
  %"$$BoolUtils.andb_141_envptr_759" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_757", 1
  %"$$res__15_760" = load %TName_Bool*, %TName_Bool** %"$res__15", align 8
  %"$$BoolUtils.andb_141_call_761" = call %TName_Bool* %"$$BoolUtils.andb_141_fptr_758"(i8* %"$$BoolUtils.andb_141_envptr_759", %TName_Bool* %"$$res__15_760"), !dbg !54
  store %TName_Bool* %"$$BoolUtils.andb_141_call_761", %TName_Bool** %"$BoolUtils.andb_142", align 8, !dbg !54
  %"$$BoolUtils.andb_142_762" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_142", align 8
  store %TName_Bool* %"$$BoolUtils.andb_142_762", %TName_Bool** %"$res_16", align 8, !dbg !54
  %"$gasrem_763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_764" = icmp ugt i64 1, %"$gasrem_763"
  br i1 %"$gascmp_764", label %"$out_of_gas_765", label %"$have_gas_766"

"$out_of_gas_765":                                ; preds = %"$have_gas_750"
  call void @_out_of_gas()
  br label %"$have_gas_766"

"$have_gas_766":                                  ; preds = %"$out_of_gas_765", %"$have_gas_750"
  %"$consume_767" = sub i64 %"$gasrem_763", 1
  store i64 %"$consume_767", i64* @_gasrem, align 8
  %"$p_17" = alloca %Int32, align 8
  %"$p2_768" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_769" = extractvalue %Uint32 %"$p2_768", 0
  %"$valueof_770" = zext i32 %"$valueof_769" to i64
  %"$gasmul_771" = mul i64 20, %"$valueof_770"
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 %"$gasmul_771", %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$have_gas_766"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$have_gas_766"
  %"$consume_776" = sub i64 %"$gasrem_772", %"$gasmul_771"
  store i64 %"$consume_776", i64* @_gasrem, align 8
  %"$t2_777" = load %Int32, %Int32* %t2, align 4
  %"$p2_778" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_779" = call %Int32 @_pow_Int32(%Int32 %"$t2_777", %Uint32 %"$p2_778"), !dbg !55
  store %Int32 %"$pow_call_779", %Int32* %"$p_17", align 4, !dbg !55
  %"$gasrem_780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_781" = icmp ugt i64 1, %"$gasrem_780"
  br i1 %"$gascmp_781", label %"$out_of_gas_782", label %"$have_gas_783"

"$out_of_gas_782":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_783"

"$have_gas_783":                                  ; preds = %"$out_of_gas_782", %"$have_gas_775"
  %"$consume_784" = sub i64 %"$gasrem_780", 1
  store i64 %"$consume_784", i64* @_gasrem, align 8
  %"$res_20" = alloca %TName_Bool*, align 8
  %"$gasrem_785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_786" = icmp ugt i64 1, %"$gasrem_785"
  br i1 %"$gascmp_786", label %"$out_of_gas_787", label %"$have_gas_788"

"$out_of_gas_787":                                ; preds = %"$have_gas_783"
  call void @_out_of_gas()
  br label %"$have_gas_788"

"$have_gas_788":                                  ; preds = %"$out_of_gas_787", %"$have_gas_783"
  %"$consume_789" = sub i64 %"$gasrem_785", 1
  store i64 %"$consume_789", i64* @_gasrem, align 8
  %"$ans_18" = alloca %Int32, align 8
  %"$gasrem_790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_791" = icmp ugt i64 1, %"$gasrem_790"
  br i1 %"$gascmp_791", label %"$out_of_gas_792", label %"$have_gas_793"

"$out_of_gas_792":                                ; preds = %"$have_gas_788"
  call void @_out_of_gas()
  br label %"$have_gas_793"

"$have_gas_793":                                  ; preds = %"$out_of_gas_792", %"$have_gas_788"
  %"$consume_794" = sub i64 %"$gasrem_790", 1
  store i64 %"$consume_794", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %"$ans_18", align 4, !dbg !56
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 1, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_793"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_793"
  %"$consume_799" = sub i64 %"$gasrem_795", 1
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %"$res__19" = alloca %TName_Bool*, align 8
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
  %"$$p_17_806" = load %Int32, %Int32* %"$p_17", align 4
  %"$$ans_18_807" = load %Int32, %Int32* %"$ans_18", align 4
  %"$eq_call_808" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_805", %Int32 %"$$p_17_806", %Int32 %"$$ans_18_807"), !dbg !57
  store %TName_Bool* %"$eq_call_808", %TName_Bool** %"$res__19", align 8, !dbg !57
  %"$gasrem_810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_811" = icmp ugt i64 1, %"$gasrem_810"
  br i1 %"$gascmp_811", label %"$out_of_gas_812", label %"$have_gas_813"

"$out_of_gas_812":                                ; preds = %"$have_gas_803"
  call void @_out_of_gas()
  br label %"$have_gas_813"

"$have_gas_813":                                  ; preds = %"$out_of_gas_812", %"$have_gas_803"
  %"$consume_814" = sub i64 %"$gasrem_810", 1
  store i64 %"$consume_814", i64* @_gasrem, align 8
  %"$BoolUtils.andb_143" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_815" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_816" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_815", 0
  %"$BoolUtils.andb_envptr_817" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_815", 1
  %"$$res_16_818" = load %TName_Bool*, %TName_Bool** %"$res_16", align 8
  %"$BoolUtils.andb_call_819" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_816"(i8* %"$BoolUtils.andb_envptr_817", %TName_Bool* %"$$res_16_818"), !dbg !58
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_819", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8, !dbg !58
  %"$BoolUtils.andb_144" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_143_820" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$$BoolUtils.andb_143_fptr_821" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_820", 0
  %"$$BoolUtils.andb_143_envptr_822" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_820", 1
  %"$$res__19_823" = load %TName_Bool*, %TName_Bool** %"$res__19", align 8
  %"$$BoolUtils.andb_143_call_824" = call %TName_Bool* %"$$BoolUtils.andb_143_fptr_821"(i8* %"$$BoolUtils.andb_143_envptr_822", %TName_Bool* %"$$res__19_823"), !dbg !58
  store %TName_Bool* %"$$BoolUtils.andb_143_call_824", %TName_Bool** %"$BoolUtils.andb_144", align 8, !dbg !58
  %"$$BoolUtils.andb_144_825" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_144", align 8
  store %TName_Bool* %"$$BoolUtils.andb_144_825", %TName_Bool** %"$res_20", align 8, !dbg !58
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 1, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_813"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_813"
  %"$consume_830" = sub i64 %"$gasrem_826", 1
  store i64 %"$consume_830", i64* @_gasrem, align 8
  %"$p_21" = alloca %Int32, align 8
  %"$p3_831" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_832" = extractvalue %Uint32 %"$p3_831", 0
  %"$valueof_833" = zext i32 %"$valueof_832" to i64
  %"$gasmul_834" = mul i64 20, %"$valueof_833"
  %"$gasrem_835" = load i64, i64* @_gasrem, align 8
  %"$gascmp_836" = icmp ugt i64 %"$gasmul_834", %"$gasrem_835"
  br i1 %"$gascmp_836", label %"$out_of_gas_837", label %"$have_gas_838"

"$out_of_gas_837":                                ; preds = %"$have_gas_829"
  call void @_out_of_gas()
  br label %"$have_gas_838"

"$have_gas_838":                                  ; preds = %"$out_of_gas_837", %"$have_gas_829"
  %"$consume_839" = sub i64 %"$gasrem_835", %"$gasmul_834"
  store i64 %"$consume_839", i64* @_gasrem, align 8
  %"$t2_840" = load %Int32, %Int32* %t2, align 4
  %"$p3_841" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_842" = call %Int32 @_pow_Int32(%Int32 %"$t2_840", %Uint32 %"$p3_841"), !dbg !59
  store %Int32 %"$pow_call_842", %Int32* %"$p_21", align 4, !dbg !59
  %"$gasrem_843" = load i64, i64* @_gasrem, align 8
  %"$gascmp_844" = icmp ugt i64 1, %"$gasrem_843"
  br i1 %"$gascmp_844", label %"$out_of_gas_845", label %"$have_gas_846"

"$out_of_gas_845":                                ; preds = %"$have_gas_838"
  call void @_out_of_gas()
  br label %"$have_gas_846"

"$have_gas_846":                                  ; preds = %"$out_of_gas_845", %"$have_gas_838"
  %"$consume_847" = sub i64 %"$gasrem_843", 1
  store i64 %"$consume_847", i64* @_gasrem, align 8
  %"$res_24" = alloca %TName_Bool*, align 8
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 1, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %"$have_gas_846"
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %"$have_gas_846"
  %"$consume_852" = sub i64 %"$gasrem_848", 1
  store i64 %"$consume_852", i64* @_gasrem, align 8
  %"$ans_22" = alloca %Int32, align 8
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 1, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$have_gas_851"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$have_gas_851"
  %"$consume_857" = sub i64 %"$gasrem_853", 1
  store i64 %"$consume_857", i64* @_gasrem, align 8
  store %Int32 { i32 81 }, %Int32* %"$ans_22", align 4, !dbg !60
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 1, %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %"$have_gas_856"
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %"$have_gas_856"
  %"$consume_862" = sub i64 %"$gasrem_858", 1
  store i64 %"$consume_862", i64* @_gasrem, align 8
  %"$res__23" = alloca %TName_Bool*, align 8
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 4, %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_861"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_861"
  %"$consume_867" = sub i64 %"$gasrem_863", 4
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %"$execptr_load_868" = load i8*, i8** @_execptr, align 8
  %"$$p_21_869" = load %Int32, %Int32* %"$p_21", align 4
  %"$$ans_22_870" = load %Int32, %Int32* %"$ans_22", align 4
  %"$eq_call_871" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_868", %Int32 %"$$p_21_869", %Int32 %"$$ans_22_870"), !dbg !61
  store %TName_Bool* %"$eq_call_871", %TName_Bool** %"$res__23", align 8, !dbg !61
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_866"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %"$BoolUtils.andb_145" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_878" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_879" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_878", 0
  %"$BoolUtils.andb_envptr_880" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_878", 1
  %"$$res_20_881" = load %TName_Bool*, %TName_Bool** %"$res_20", align 8
  %"$BoolUtils.andb_call_882" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_879"(i8* %"$BoolUtils.andb_envptr_880", %TName_Bool* %"$$res_20_881"), !dbg !62
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_882", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8, !dbg !62
  %"$BoolUtils.andb_146" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_145_883" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$$BoolUtils.andb_145_fptr_884" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_883", 0
  %"$$BoolUtils.andb_145_envptr_885" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_883", 1
  %"$$res__23_886" = load %TName_Bool*, %TName_Bool** %"$res__23", align 8
  %"$$BoolUtils.andb_145_call_887" = call %TName_Bool* %"$$BoolUtils.andb_145_fptr_884"(i8* %"$$BoolUtils.andb_145_envptr_885", %TName_Bool* %"$$res__23_886"), !dbg !62
  store %TName_Bool* %"$$BoolUtils.andb_145_call_887", %TName_Bool** %"$BoolUtils.andb_146", align 8, !dbg !62
  %"$$BoolUtils.andb_146_888" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_146", align 8
  store %TName_Bool* %"$$BoolUtils.andb_146_888", %TName_Bool** %"$res_24", align 8, !dbg !62
  %"$gasrem_889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_890" = icmp ugt i64 1, %"$gasrem_889"
  br i1 %"$gascmp_890", label %"$out_of_gas_891", label %"$have_gas_892"

"$out_of_gas_891":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_892"

"$have_gas_892":                                  ; preds = %"$out_of_gas_891", %"$have_gas_876"
  %"$consume_893" = sub i64 %"$gasrem_889", 1
  store i64 %"$consume_893", i64* @_gasrem, align 8
  %"$p_25" = alloca %Int32, align 8
  %"$p4_894" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_895" = extractvalue %Uint32 %"$p4_894", 0
  %"$valueof_896" = zext i32 %"$valueof_895" to i64
  %"$gasmul_897" = mul i64 20, %"$valueof_896"
  %"$gasrem_898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_899" = icmp ugt i64 %"$gasmul_897", %"$gasrem_898"
  br i1 %"$gascmp_899", label %"$out_of_gas_900", label %"$have_gas_901"

"$out_of_gas_900":                                ; preds = %"$have_gas_892"
  call void @_out_of_gas()
  br label %"$have_gas_901"

"$have_gas_901":                                  ; preds = %"$out_of_gas_900", %"$have_gas_892"
  %"$consume_902" = sub i64 %"$gasrem_898", %"$gasmul_897"
  store i64 %"$consume_902", i64* @_gasrem, align 8
  %"$t2_903" = load %Int32, %Int32* %t2, align 4
  %"$p4_904" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_905" = call %Int32 @_pow_Int32(%Int32 %"$t2_903", %Uint32 %"$p4_904"), !dbg !63
  store %Int32 %"$pow_call_905", %Int32* %"$p_25", align 4, !dbg !63
  %"$gasrem_906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_907" = icmp ugt i64 1, %"$gasrem_906"
  br i1 %"$gascmp_907", label %"$out_of_gas_908", label %"$have_gas_909"

"$out_of_gas_908":                                ; preds = %"$have_gas_901"
  call void @_out_of_gas()
  br label %"$have_gas_909"

"$have_gas_909":                                  ; preds = %"$out_of_gas_908", %"$have_gas_901"
  %"$consume_910" = sub i64 %"$gasrem_906", 1
  store i64 %"$consume_910", i64* @_gasrem, align 8
  %"$res_28" = alloca %TName_Bool*, align 8
  %"$gasrem_911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_912" = icmp ugt i64 1, %"$gasrem_911"
  br i1 %"$gascmp_912", label %"$out_of_gas_913", label %"$have_gas_914"

"$out_of_gas_913":                                ; preds = %"$have_gas_909"
  call void @_out_of_gas()
  br label %"$have_gas_914"

"$have_gas_914":                                  ; preds = %"$out_of_gas_913", %"$have_gas_909"
  %"$consume_915" = sub i64 %"$gasrem_911", 1
  store i64 %"$consume_915", i64* @_gasrem, align 8
  %"$ans_26" = alloca %Int32, align 8
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_914"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_914"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem, align 8
  store %Int32 { i32 59049 }, %Int32* %"$ans_26", align 4, !dbg !64
  %"$gasrem_921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_922" = icmp ugt i64 1, %"$gasrem_921"
  br i1 %"$gascmp_922", label %"$out_of_gas_923", label %"$have_gas_924"

"$out_of_gas_923":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_924"

"$have_gas_924":                                  ; preds = %"$out_of_gas_923", %"$have_gas_919"
  %"$consume_925" = sub i64 %"$gasrem_921", 1
  store i64 %"$consume_925", i64* @_gasrem, align 8
  %"$res__27" = alloca %TName_Bool*, align 8
  %"$gasrem_926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_927" = icmp ugt i64 4, %"$gasrem_926"
  br i1 %"$gascmp_927", label %"$out_of_gas_928", label %"$have_gas_929"

"$out_of_gas_928":                                ; preds = %"$have_gas_924"
  call void @_out_of_gas()
  br label %"$have_gas_929"

"$have_gas_929":                                  ; preds = %"$out_of_gas_928", %"$have_gas_924"
  %"$consume_930" = sub i64 %"$gasrem_926", 4
  store i64 %"$consume_930", i64* @_gasrem, align 8
  %"$execptr_load_931" = load i8*, i8** @_execptr, align 8
  %"$$p_25_932" = load %Int32, %Int32* %"$p_25", align 4
  %"$$ans_26_933" = load %Int32, %Int32* %"$ans_26", align 4
  %"$eq_call_934" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_931", %Int32 %"$$p_25_932", %Int32 %"$$ans_26_933"), !dbg !65
  store %TName_Bool* %"$eq_call_934", %TName_Bool** %"$res__27", align 8, !dbg !65
  %"$gasrem_936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_937" = icmp ugt i64 1, %"$gasrem_936"
  br i1 %"$gascmp_937", label %"$out_of_gas_938", label %"$have_gas_939"

"$out_of_gas_938":                                ; preds = %"$have_gas_929"
  call void @_out_of_gas()
  br label %"$have_gas_939"

"$have_gas_939":                                  ; preds = %"$out_of_gas_938", %"$have_gas_929"
  %"$consume_940" = sub i64 %"$gasrem_936", 1
  store i64 %"$consume_940", i64* @_gasrem, align 8
  %"$BoolUtils.andb_147" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_941" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_942" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_941", 0
  %"$BoolUtils.andb_envptr_943" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_941", 1
  %"$$res_24_944" = load %TName_Bool*, %TName_Bool** %"$res_24", align 8
  %"$BoolUtils.andb_call_945" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_942"(i8* %"$BoolUtils.andb_envptr_943", %TName_Bool* %"$$res_24_944"), !dbg !66
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_945", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8, !dbg !66
  %"$BoolUtils.andb_148" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_147_946" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$$BoolUtils.andb_147_fptr_947" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_946", 0
  %"$$BoolUtils.andb_147_envptr_948" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_946", 1
  %"$$res__27_949" = load %TName_Bool*, %TName_Bool** %"$res__27", align 8
  %"$$BoolUtils.andb_147_call_950" = call %TName_Bool* %"$$BoolUtils.andb_147_fptr_947"(i8* %"$$BoolUtils.andb_147_envptr_948", %TName_Bool* %"$$res__27_949"), !dbg !66
  store %TName_Bool* %"$$BoolUtils.andb_147_call_950", %TName_Bool** %"$BoolUtils.andb_148", align 8, !dbg !66
  %"$$BoolUtils.andb_148_951" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_148", align 8
  store %TName_Bool* %"$$BoolUtils.andb_148_951", %TName_Bool** %"$res_28", align 8, !dbg !66
  %"$gasrem_952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_953" = icmp ugt i64 1, %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %"$have_gas_939"
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %"$have_gas_939"
  %"$consume_956" = sub i64 %"$gasrem_952", 1
  store i64 %"$consume_956", i64* @_gasrem, align 8
  %"$p_29" = alloca %Uint64, align 8
  %"$p1_957" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_958" = extractvalue %Uint32 %"$p1_957", 0
  %"$valueof_959" = zext i32 %"$valueof_958" to i64
  %"$gasmul_960" = mul i64 20, %"$valueof_959"
  %"$gasrem_961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_962" = icmp ugt i64 %"$gasmul_960", %"$gasrem_961"
  br i1 %"$gascmp_962", label %"$out_of_gas_963", label %"$have_gas_964"

"$out_of_gas_963":                                ; preds = %"$have_gas_955"
  call void @_out_of_gas()
  br label %"$have_gas_964"

"$have_gas_964":                                  ; preds = %"$out_of_gas_963", %"$have_gas_955"
  %"$consume_965" = sub i64 %"$gasrem_961", %"$gasmul_960"
  store i64 %"$consume_965", i64* @_gasrem, align 8
  %"$t3_966" = load %Uint64, %Uint64* %t3, align 8
  %"$p1_967" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_968" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_966", %Uint32 %"$p1_967"), !dbg !67
  store %Uint64 %"$pow_call_968", %Uint64* %"$p_29", align 8, !dbg !67
  %"$gasrem_969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_970" = icmp ugt i64 1, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %"$have_gas_964"
  %"$consume_973" = sub i64 %"$gasrem_969", 1
  store i64 %"$consume_973", i64* @_gasrem, align 8
  %"$res_32" = alloca %TName_Bool*, align 8
  %"$gasrem_974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_975" = icmp ugt i64 1, %"$gasrem_974"
  br i1 %"$gascmp_975", label %"$out_of_gas_976", label %"$have_gas_977"

"$out_of_gas_976":                                ; preds = %"$have_gas_972"
  call void @_out_of_gas()
  br label %"$have_gas_977"

"$have_gas_977":                                  ; preds = %"$out_of_gas_976", %"$have_gas_972"
  %"$consume_978" = sub i64 %"$gasrem_974", 1
  store i64 %"$consume_978", i64* @_gasrem, align 8
  %"$ans_30" = alloca %Uint64, align 8
  %"$gasrem_979" = load i64, i64* @_gasrem, align 8
  %"$gascmp_980" = icmp ugt i64 1, %"$gasrem_979"
  br i1 %"$gascmp_980", label %"$out_of_gas_981", label %"$have_gas_982"

"$out_of_gas_981":                                ; preds = %"$have_gas_977"
  call void @_out_of_gas()
  br label %"$have_gas_982"

"$have_gas_982":                                  ; preds = %"$out_of_gas_981", %"$have_gas_977"
  %"$consume_983" = sub i64 %"$gasrem_979", 1
  store i64 %"$consume_983", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %"$ans_30", align 8, !dbg !68
  %"$gasrem_984" = load i64, i64* @_gasrem, align 8
  %"$gascmp_985" = icmp ugt i64 1, %"$gasrem_984"
  br i1 %"$gascmp_985", label %"$out_of_gas_986", label %"$have_gas_987"

"$out_of_gas_986":                                ; preds = %"$have_gas_982"
  call void @_out_of_gas()
  br label %"$have_gas_987"

"$have_gas_987":                                  ; preds = %"$out_of_gas_986", %"$have_gas_982"
  %"$consume_988" = sub i64 %"$gasrem_984", 1
  store i64 %"$consume_988", i64* @_gasrem, align 8
  %"$res__31" = alloca %TName_Bool*, align 8
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 4, %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_987"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_987"
  %"$consume_993" = sub i64 %"$gasrem_989", 4
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %"$execptr_load_994" = load i8*, i8** @_execptr, align 8
  %"$$p_29_995" = load %Uint64, %Uint64* %"$p_29", align 8
  %"$$ans_30_996" = load %Uint64, %Uint64* %"$ans_30", align 8
  %"$eq_call_997" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_994", %Uint64 %"$$p_29_995", %Uint64 %"$$ans_30_996"), !dbg !69
  store %TName_Bool* %"$eq_call_997", %TName_Bool** %"$res__31", align 8, !dbg !69
  %"$gasrem_999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1000" = icmp ugt i64 1, %"$gasrem_999"
  br i1 %"$gascmp_1000", label %"$out_of_gas_1001", label %"$have_gas_1002"

"$out_of_gas_1001":                               ; preds = %"$have_gas_992"
  call void @_out_of_gas()
  br label %"$have_gas_1002"

"$have_gas_1002":                                 ; preds = %"$out_of_gas_1001", %"$have_gas_992"
  %"$consume_1003" = sub i64 %"$gasrem_999", 1
  store i64 %"$consume_1003", i64* @_gasrem, align 8
  %"$BoolUtils.andb_149" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1004" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1005" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1004", 0
  %"$BoolUtils.andb_envptr_1006" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1004", 1
  %"$$res_28_1007" = load %TName_Bool*, %TName_Bool** %"$res_28", align 8
  %"$BoolUtils.andb_call_1008" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1005"(i8* %"$BoolUtils.andb_envptr_1006", %TName_Bool* %"$$res_28_1007"), !dbg !70
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1008", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8, !dbg !70
  %"$BoolUtils.andb_150" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_149_1009" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$$BoolUtils.andb_149_fptr_1010" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1009", 0
  %"$$BoolUtils.andb_149_envptr_1011" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_1009", 1
  %"$$res__31_1012" = load %TName_Bool*, %TName_Bool** %"$res__31", align 8
  %"$$BoolUtils.andb_149_call_1013" = call %TName_Bool* %"$$BoolUtils.andb_149_fptr_1010"(i8* %"$$BoolUtils.andb_149_envptr_1011", %TName_Bool* %"$$res__31_1012"), !dbg !70
  store %TName_Bool* %"$$BoolUtils.andb_149_call_1013", %TName_Bool** %"$BoolUtils.andb_150", align 8, !dbg !70
  %"$$BoolUtils.andb_150_1014" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_150", align 8
  store %TName_Bool* %"$$BoolUtils.andb_150_1014", %TName_Bool** %"$res_32", align 8, !dbg !70
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$have_gas_1002"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$have_gas_1002"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  %"$p_33" = alloca %Uint64, align 8
  %"$p2_1020" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1021" = extractvalue %Uint32 %"$p2_1020", 0
  %"$valueof_1022" = zext i32 %"$valueof_1021" to i64
  %"$gasmul_1023" = mul i64 20, %"$valueof_1022"
  %"$gasrem_1024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1025" = icmp ugt i64 %"$gasmul_1023", %"$gasrem_1024"
  br i1 %"$gascmp_1025", label %"$out_of_gas_1026", label %"$have_gas_1027"

"$out_of_gas_1026":                               ; preds = %"$have_gas_1018"
  call void @_out_of_gas()
  br label %"$have_gas_1027"

"$have_gas_1027":                                 ; preds = %"$out_of_gas_1026", %"$have_gas_1018"
  %"$consume_1028" = sub i64 %"$gasrem_1024", %"$gasmul_1023"
  store i64 %"$consume_1028", i64* @_gasrem, align 8
  %"$t3_1029" = load %Uint64, %Uint64* %t3, align 8
  %"$p2_1030" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1031" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1029", %Uint32 %"$p2_1030"), !dbg !71
  store %Uint64 %"$pow_call_1031", %Uint64* %"$p_33", align 8, !dbg !71
  %"$gasrem_1032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1033" = icmp ugt i64 1, %"$gasrem_1032"
  br i1 %"$gascmp_1033", label %"$out_of_gas_1034", label %"$have_gas_1035"

"$out_of_gas_1034":                               ; preds = %"$have_gas_1027"
  call void @_out_of_gas()
  br label %"$have_gas_1035"

"$have_gas_1035":                                 ; preds = %"$out_of_gas_1034", %"$have_gas_1027"
  %"$consume_1036" = sub i64 %"$gasrem_1032", 1
  store i64 %"$consume_1036", i64* @_gasrem, align 8
  %"$res_36" = alloca %TName_Bool*, align 8
  %"$gasrem_1037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1038" = icmp ugt i64 1, %"$gasrem_1037"
  br i1 %"$gascmp_1038", label %"$out_of_gas_1039", label %"$have_gas_1040"

"$out_of_gas_1039":                               ; preds = %"$have_gas_1035"
  call void @_out_of_gas()
  br label %"$have_gas_1040"

"$have_gas_1040":                                 ; preds = %"$out_of_gas_1039", %"$have_gas_1035"
  %"$consume_1041" = sub i64 %"$gasrem_1037", 1
  store i64 %"$consume_1041", i64* @_gasrem, align 8
  %"$ans_34" = alloca %Uint64, align 8
  %"$gasrem_1042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1043" = icmp ugt i64 1, %"$gasrem_1042"
  br i1 %"$gascmp_1043", label %"$out_of_gas_1044", label %"$have_gas_1045"

"$out_of_gas_1044":                               ; preds = %"$have_gas_1040"
  call void @_out_of_gas()
  br label %"$have_gas_1045"

"$have_gas_1045":                                 ; preds = %"$out_of_gas_1044", %"$have_gas_1040"
  %"$consume_1046" = sub i64 %"$gasrem_1042", 1
  store i64 %"$consume_1046", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %"$ans_34", align 8, !dbg !72
  %"$gasrem_1047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1048" = icmp ugt i64 1, %"$gasrem_1047"
  br i1 %"$gascmp_1048", label %"$out_of_gas_1049", label %"$have_gas_1050"

"$out_of_gas_1049":                               ; preds = %"$have_gas_1045"
  call void @_out_of_gas()
  br label %"$have_gas_1050"

"$have_gas_1050":                                 ; preds = %"$out_of_gas_1049", %"$have_gas_1045"
  %"$consume_1051" = sub i64 %"$gasrem_1047", 1
  store i64 %"$consume_1051", i64* @_gasrem, align 8
  %"$res__35" = alloca %TName_Bool*, align 8
  %"$gasrem_1052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1053" = icmp ugt i64 4, %"$gasrem_1052"
  br i1 %"$gascmp_1053", label %"$out_of_gas_1054", label %"$have_gas_1055"

"$out_of_gas_1054":                               ; preds = %"$have_gas_1050"
  call void @_out_of_gas()
  br label %"$have_gas_1055"

"$have_gas_1055":                                 ; preds = %"$out_of_gas_1054", %"$have_gas_1050"
  %"$consume_1056" = sub i64 %"$gasrem_1052", 4
  store i64 %"$consume_1056", i64* @_gasrem, align 8
  %"$execptr_load_1057" = load i8*, i8** @_execptr, align 8
  %"$$p_33_1058" = load %Uint64, %Uint64* %"$p_33", align 8
  %"$$ans_34_1059" = load %Uint64, %Uint64* %"$ans_34", align 8
  %"$eq_call_1060" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1057", %Uint64 %"$$p_33_1058", %Uint64 %"$$ans_34_1059"), !dbg !73
  store %TName_Bool* %"$eq_call_1060", %TName_Bool** %"$res__35", align 8, !dbg !73
  %"$gasrem_1062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1063" = icmp ugt i64 1, %"$gasrem_1062"
  br i1 %"$gascmp_1063", label %"$out_of_gas_1064", label %"$have_gas_1065"

"$out_of_gas_1064":                               ; preds = %"$have_gas_1055"
  call void @_out_of_gas()
  br label %"$have_gas_1065"

"$have_gas_1065":                                 ; preds = %"$out_of_gas_1064", %"$have_gas_1055"
  %"$consume_1066" = sub i64 %"$gasrem_1062", 1
  store i64 %"$consume_1066", i64* @_gasrem, align 8
  %"$BoolUtils.andb_151" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1067" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1068" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1067", 0
  %"$BoolUtils.andb_envptr_1069" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1067", 1
  %"$$res_32_1070" = load %TName_Bool*, %TName_Bool** %"$res_32", align 8
  %"$BoolUtils.andb_call_1071" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1068"(i8* %"$BoolUtils.andb_envptr_1069", %TName_Bool* %"$$res_32_1070"), !dbg !74
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1071", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8, !dbg !74
  %"$BoolUtils.andb_152" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_151_1072" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$$BoolUtils.andb_151_fptr_1073" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1072", 0
  %"$$BoolUtils.andb_151_envptr_1074" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_1072", 1
  %"$$res__35_1075" = load %TName_Bool*, %TName_Bool** %"$res__35", align 8
  %"$$BoolUtils.andb_151_call_1076" = call %TName_Bool* %"$$BoolUtils.andb_151_fptr_1073"(i8* %"$$BoolUtils.andb_151_envptr_1074", %TName_Bool* %"$$res__35_1075"), !dbg !74
  store %TName_Bool* %"$$BoolUtils.andb_151_call_1076", %TName_Bool** %"$BoolUtils.andb_152", align 8, !dbg !74
  %"$$BoolUtils.andb_152_1077" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_152", align 8
  store %TName_Bool* %"$$BoolUtils.andb_152_1077", %TName_Bool** %"$res_36", align 8, !dbg !74
  %"$gasrem_1078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1079" = icmp ugt i64 1, %"$gasrem_1078"
  br i1 %"$gascmp_1079", label %"$out_of_gas_1080", label %"$have_gas_1081"

"$out_of_gas_1080":                               ; preds = %"$have_gas_1065"
  call void @_out_of_gas()
  br label %"$have_gas_1081"

"$have_gas_1081":                                 ; preds = %"$out_of_gas_1080", %"$have_gas_1065"
  %"$consume_1082" = sub i64 %"$gasrem_1078", 1
  store i64 %"$consume_1082", i64* @_gasrem, align 8
  %"$p_37" = alloca %Uint64, align 8
  %"$p3_1083" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1084" = extractvalue %Uint32 %"$p3_1083", 0
  %"$valueof_1085" = zext i32 %"$valueof_1084" to i64
  %"$gasmul_1086" = mul i64 20, %"$valueof_1085"
  %"$gasrem_1087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1088" = icmp ugt i64 %"$gasmul_1086", %"$gasrem_1087"
  br i1 %"$gascmp_1088", label %"$out_of_gas_1089", label %"$have_gas_1090"

"$out_of_gas_1089":                               ; preds = %"$have_gas_1081"
  call void @_out_of_gas()
  br label %"$have_gas_1090"

"$have_gas_1090":                                 ; preds = %"$out_of_gas_1089", %"$have_gas_1081"
  %"$consume_1091" = sub i64 %"$gasrem_1087", %"$gasmul_1086"
  store i64 %"$consume_1091", i64* @_gasrem, align 8
  %"$t3_1092" = load %Uint64, %Uint64* %t3, align 8
  %"$p3_1093" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1094" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1092", %Uint32 %"$p3_1093"), !dbg !75
  store %Uint64 %"$pow_call_1094", %Uint64* %"$p_37", align 8, !dbg !75
  %"$gasrem_1095" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1096" = icmp ugt i64 1, %"$gasrem_1095"
  br i1 %"$gascmp_1096", label %"$out_of_gas_1097", label %"$have_gas_1098"

"$out_of_gas_1097":                               ; preds = %"$have_gas_1090"
  call void @_out_of_gas()
  br label %"$have_gas_1098"

"$have_gas_1098":                                 ; preds = %"$out_of_gas_1097", %"$have_gas_1090"
  %"$consume_1099" = sub i64 %"$gasrem_1095", 1
  store i64 %"$consume_1099", i64* @_gasrem, align 8
  %"$res_40" = alloca %TName_Bool*, align 8
  %"$gasrem_1100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1101" = icmp ugt i64 1, %"$gasrem_1100"
  br i1 %"$gascmp_1101", label %"$out_of_gas_1102", label %"$have_gas_1103"

"$out_of_gas_1102":                               ; preds = %"$have_gas_1098"
  call void @_out_of_gas()
  br label %"$have_gas_1103"

"$have_gas_1103":                                 ; preds = %"$out_of_gas_1102", %"$have_gas_1098"
  %"$consume_1104" = sub i64 %"$gasrem_1100", 1
  store i64 %"$consume_1104", i64* @_gasrem, align 8
  %"$ans_38" = alloca %Uint64, align 8
  %"$gasrem_1105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1106" = icmp ugt i64 1, %"$gasrem_1105"
  br i1 %"$gascmp_1106", label %"$out_of_gas_1107", label %"$have_gas_1108"

"$out_of_gas_1107":                               ; preds = %"$have_gas_1103"
  call void @_out_of_gas()
  br label %"$have_gas_1108"

"$have_gas_1108":                                 ; preds = %"$out_of_gas_1107", %"$have_gas_1103"
  %"$consume_1109" = sub i64 %"$gasrem_1105", 1
  store i64 %"$consume_1109", i64* @_gasrem, align 8
  store %Uint64 { i64 100000000 }, %Uint64* %"$ans_38", align 8, !dbg !76
  %"$gasrem_1110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1111" = icmp ugt i64 1, %"$gasrem_1110"
  br i1 %"$gascmp_1111", label %"$out_of_gas_1112", label %"$have_gas_1113"

"$out_of_gas_1112":                               ; preds = %"$have_gas_1108"
  call void @_out_of_gas()
  br label %"$have_gas_1113"

"$have_gas_1113":                                 ; preds = %"$out_of_gas_1112", %"$have_gas_1108"
  %"$consume_1114" = sub i64 %"$gasrem_1110", 1
  store i64 %"$consume_1114", i64* @_gasrem, align 8
  %"$res__39" = alloca %TName_Bool*, align 8
  %"$gasrem_1115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1116" = icmp ugt i64 4, %"$gasrem_1115"
  br i1 %"$gascmp_1116", label %"$out_of_gas_1117", label %"$have_gas_1118"

"$out_of_gas_1117":                               ; preds = %"$have_gas_1113"
  call void @_out_of_gas()
  br label %"$have_gas_1118"

"$have_gas_1118":                                 ; preds = %"$out_of_gas_1117", %"$have_gas_1113"
  %"$consume_1119" = sub i64 %"$gasrem_1115", 4
  store i64 %"$consume_1119", i64* @_gasrem, align 8
  %"$execptr_load_1120" = load i8*, i8** @_execptr, align 8
  %"$$p_37_1121" = load %Uint64, %Uint64* %"$p_37", align 8
  %"$$ans_38_1122" = load %Uint64, %Uint64* %"$ans_38", align 8
  %"$eq_call_1123" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1120", %Uint64 %"$$p_37_1121", %Uint64 %"$$ans_38_1122"), !dbg !77
  store %TName_Bool* %"$eq_call_1123", %TName_Bool** %"$res__39", align 8, !dbg !77
  %"$gasrem_1125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1126" = icmp ugt i64 1, %"$gasrem_1125"
  br i1 %"$gascmp_1126", label %"$out_of_gas_1127", label %"$have_gas_1128"

"$out_of_gas_1127":                               ; preds = %"$have_gas_1118"
  call void @_out_of_gas()
  br label %"$have_gas_1128"

"$have_gas_1128":                                 ; preds = %"$out_of_gas_1127", %"$have_gas_1118"
  %"$consume_1129" = sub i64 %"$gasrem_1125", 1
  store i64 %"$consume_1129", i64* @_gasrem, align 8
  %"$BoolUtils.andb_153" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1130" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1131" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1130", 0
  %"$BoolUtils.andb_envptr_1132" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1130", 1
  %"$$res_36_1133" = load %TName_Bool*, %TName_Bool** %"$res_36", align 8
  %"$BoolUtils.andb_call_1134" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1131"(i8* %"$BoolUtils.andb_envptr_1132", %TName_Bool* %"$$res_36_1133"), !dbg !78
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1134", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8, !dbg !78
  %"$BoolUtils.andb_154" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_153_1135" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$$BoolUtils.andb_153_fptr_1136" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1135", 0
  %"$$BoolUtils.andb_153_envptr_1137" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1135", 1
  %"$$res__39_1138" = load %TName_Bool*, %TName_Bool** %"$res__39", align 8
  %"$$BoolUtils.andb_153_call_1139" = call %TName_Bool* %"$$BoolUtils.andb_153_fptr_1136"(i8* %"$$BoolUtils.andb_153_envptr_1137", %TName_Bool* %"$$res__39_1138"), !dbg !78
  store %TName_Bool* %"$$BoolUtils.andb_153_call_1139", %TName_Bool** %"$BoolUtils.andb_154", align 8, !dbg !78
  %"$$BoolUtils.andb_154_1140" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_154", align 8
  store %TName_Bool* %"$$BoolUtils.andb_154_1140", %TName_Bool** %"$res_40", align 8, !dbg !78
  %"$gasrem_1141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1142" = icmp ugt i64 1, %"$gasrem_1141"
  br i1 %"$gascmp_1142", label %"$out_of_gas_1143", label %"$have_gas_1144"

"$out_of_gas_1143":                               ; preds = %"$have_gas_1128"
  call void @_out_of_gas()
  br label %"$have_gas_1144"

"$have_gas_1144":                                 ; preds = %"$out_of_gas_1143", %"$have_gas_1128"
  %"$consume_1145" = sub i64 %"$gasrem_1141", 1
  store i64 %"$consume_1145", i64* @_gasrem, align 8
  %"$p_41" = alloca %Int64, align 8
  %"$p1_1146" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1147" = extractvalue %Uint32 %"$p1_1146", 0
  %"$valueof_1148" = zext i32 %"$valueof_1147" to i64
  %"$gasmul_1149" = mul i64 20, %"$valueof_1148"
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 %"$gasmul_1149", %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1144"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1144"
  %"$consume_1154" = sub i64 %"$gasrem_1150", %"$gasmul_1149"
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  %"$t4_1155" = load %Int64, %Int64* %t4, align 8
  %"$p1_1156" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1157" = call %Int64 @_pow_Int64(%Int64 %"$t4_1155", %Uint32 %"$p1_1156"), !dbg !79
  store %Int64 %"$pow_call_1157", %Int64* %"$p_41", align 8, !dbg !79
  %"$gasrem_1158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1159" = icmp ugt i64 1, %"$gasrem_1158"
  br i1 %"$gascmp_1159", label %"$out_of_gas_1160", label %"$have_gas_1161"

"$out_of_gas_1160":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1161"

"$have_gas_1161":                                 ; preds = %"$out_of_gas_1160", %"$have_gas_1153"
  %"$consume_1162" = sub i64 %"$gasrem_1158", 1
  store i64 %"$consume_1162", i64* @_gasrem, align 8
  %"$res_44" = alloca %TName_Bool*, align 8
  %"$gasrem_1163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1164" = icmp ugt i64 1, %"$gasrem_1163"
  br i1 %"$gascmp_1164", label %"$out_of_gas_1165", label %"$have_gas_1166"

"$out_of_gas_1165":                               ; preds = %"$have_gas_1161"
  call void @_out_of_gas()
  br label %"$have_gas_1166"

"$have_gas_1166":                                 ; preds = %"$out_of_gas_1165", %"$have_gas_1161"
  %"$consume_1167" = sub i64 %"$gasrem_1163", 1
  store i64 %"$consume_1167", i64* @_gasrem, align 8
  %"$ans_42" = alloca %Int64, align 8
  %"$gasrem_1168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1169" = icmp ugt i64 1, %"$gasrem_1168"
  br i1 %"$gascmp_1169", label %"$out_of_gas_1170", label %"$have_gas_1171"

"$out_of_gas_1170":                               ; preds = %"$have_gas_1166"
  call void @_out_of_gas()
  br label %"$have_gas_1171"

"$have_gas_1171":                                 ; preds = %"$out_of_gas_1170", %"$have_gas_1166"
  %"$consume_1172" = sub i64 %"$gasrem_1168", 1
  store i64 %"$consume_1172", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %"$ans_42", align 8, !dbg !80
  %"$gasrem_1173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1174" = icmp ugt i64 1, %"$gasrem_1173"
  br i1 %"$gascmp_1174", label %"$out_of_gas_1175", label %"$have_gas_1176"

"$out_of_gas_1175":                               ; preds = %"$have_gas_1171"
  call void @_out_of_gas()
  br label %"$have_gas_1176"

"$have_gas_1176":                                 ; preds = %"$out_of_gas_1175", %"$have_gas_1171"
  %"$consume_1177" = sub i64 %"$gasrem_1173", 1
  store i64 %"$consume_1177", i64* @_gasrem, align 8
  %"$res__43" = alloca %TName_Bool*, align 8
  %"$gasrem_1178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1179" = icmp ugt i64 4, %"$gasrem_1178"
  br i1 %"$gascmp_1179", label %"$out_of_gas_1180", label %"$have_gas_1181"

"$out_of_gas_1180":                               ; preds = %"$have_gas_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1181"

"$have_gas_1181":                                 ; preds = %"$out_of_gas_1180", %"$have_gas_1176"
  %"$consume_1182" = sub i64 %"$gasrem_1178", 4
  store i64 %"$consume_1182", i64* @_gasrem, align 8
  %"$execptr_load_1183" = load i8*, i8** @_execptr, align 8
  %"$$p_41_1184" = load %Int64, %Int64* %"$p_41", align 8
  %"$$ans_42_1185" = load %Int64, %Int64* %"$ans_42", align 8
  %"$eq_call_1186" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1183", %Int64 %"$$p_41_1184", %Int64 %"$$ans_42_1185"), !dbg !81
  store %TName_Bool* %"$eq_call_1186", %TName_Bool** %"$res__43", align 8, !dbg !81
  %"$gasrem_1188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1189" = icmp ugt i64 1, %"$gasrem_1188"
  br i1 %"$gascmp_1189", label %"$out_of_gas_1190", label %"$have_gas_1191"

"$out_of_gas_1190":                               ; preds = %"$have_gas_1181"
  call void @_out_of_gas()
  br label %"$have_gas_1191"

"$have_gas_1191":                                 ; preds = %"$out_of_gas_1190", %"$have_gas_1181"
  %"$consume_1192" = sub i64 %"$gasrem_1188", 1
  store i64 %"$consume_1192", i64* @_gasrem, align 8
  %"$BoolUtils.andb_155" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1193" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1194" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1193", 0
  %"$BoolUtils.andb_envptr_1195" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1193", 1
  %"$$res_40_1196" = load %TName_Bool*, %TName_Bool** %"$res_40", align 8
  %"$BoolUtils.andb_call_1197" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1194"(i8* %"$BoolUtils.andb_envptr_1195", %TName_Bool* %"$$res_40_1196"), !dbg !82
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1197", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8, !dbg !82
  %"$BoolUtils.andb_156" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_155_1198" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$$BoolUtils.andb_155_fptr_1199" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1198", 0
  %"$$BoolUtils.andb_155_envptr_1200" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1198", 1
  %"$$res__43_1201" = load %TName_Bool*, %TName_Bool** %"$res__43", align 8
  %"$$BoolUtils.andb_155_call_1202" = call %TName_Bool* %"$$BoolUtils.andb_155_fptr_1199"(i8* %"$$BoolUtils.andb_155_envptr_1200", %TName_Bool* %"$$res__43_1201"), !dbg !82
  store %TName_Bool* %"$$BoolUtils.andb_155_call_1202", %TName_Bool** %"$BoolUtils.andb_156", align 8, !dbg !82
  %"$$BoolUtils.andb_156_1203" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_156", align 8
  store %TName_Bool* %"$$BoolUtils.andb_156_1203", %TName_Bool** %"$res_44", align 8, !dbg !82
  %"$gasrem_1204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1205" = icmp ugt i64 1, %"$gasrem_1204"
  br i1 %"$gascmp_1205", label %"$out_of_gas_1206", label %"$have_gas_1207"

"$out_of_gas_1206":                               ; preds = %"$have_gas_1191"
  call void @_out_of_gas()
  br label %"$have_gas_1207"

"$have_gas_1207":                                 ; preds = %"$out_of_gas_1206", %"$have_gas_1191"
  %"$consume_1208" = sub i64 %"$gasrem_1204", 1
  store i64 %"$consume_1208", i64* @_gasrem, align 8
  %"$p_45" = alloca %Int64, align 8
  %"$p2_1209" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1210" = extractvalue %Uint32 %"$p2_1209", 0
  %"$valueof_1211" = zext i32 %"$valueof_1210" to i64
  %"$gasmul_1212" = mul i64 20, %"$valueof_1211"
  %"$gasrem_1213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1214" = icmp ugt i64 %"$gasmul_1212", %"$gasrem_1213"
  br i1 %"$gascmp_1214", label %"$out_of_gas_1215", label %"$have_gas_1216"

"$out_of_gas_1215":                               ; preds = %"$have_gas_1207"
  call void @_out_of_gas()
  br label %"$have_gas_1216"

"$have_gas_1216":                                 ; preds = %"$out_of_gas_1215", %"$have_gas_1207"
  %"$consume_1217" = sub i64 %"$gasrem_1213", %"$gasmul_1212"
  store i64 %"$consume_1217", i64* @_gasrem, align 8
  %"$t4_1218" = load %Int64, %Int64* %t4, align 8
  %"$p2_1219" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1220" = call %Int64 @_pow_Int64(%Int64 %"$t4_1218", %Uint32 %"$p2_1219"), !dbg !83
  store %Int64 %"$pow_call_1220", %Int64* %"$p_45", align 8, !dbg !83
  %"$gasrem_1221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1222" = icmp ugt i64 1, %"$gasrem_1221"
  br i1 %"$gascmp_1222", label %"$out_of_gas_1223", label %"$have_gas_1224"

"$out_of_gas_1223":                               ; preds = %"$have_gas_1216"
  call void @_out_of_gas()
  br label %"$have_gas_1224"

"$have_gas_1224":                                 ; preds = %"$out_of_gas_1223", %"$have_gas_1216"
  %"$consume_1225" = sub i64 %"$gasrem_1221", 1
  store i64 %"$consume_1225", i64* @_gasrem, align 8
  %"$res_48" = alloca %TName_Bool*, align 8
  %"$gasrem_1226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1227" = icmp ugt i64 1, %"$gasrem_1226"
  br i1 %"$gascmp_1227", label %"$out_of_gas_1228", label %"$have_gas_1229"

"$out_of_gas_1228":                               ; preds = %"$have_gas_1224"
  call void @_out_of_gas()
  br label %"$have_gas_1229"

"$have_gas_1229":                                 ; preds = %"$out_of_gas_1228", %"$have_gas_1224"
  %"$consume_1230" = sub i64 %"$gasrem_1226", 1
  store i64 %"$consume_1230", i64* @_gasrem, align 8
  %"$ans_46" = alloca %Int64, align 8
  %"$gasrem_1231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1232" = icmp ugt i64 1, %"$gasrem_1231"
  br i1 %"$gascmp_1232", label %"$out_of_gas_1233", label %"$have_gas_1234"

"$out_of_gas_1233":                               ; preds = %"$have_gas_1229"
  call void @_out_of_gas()
  br label %"$have_gas_1234"

"$have_gas_1234":                                 ; preds = %"$out_of_gas_1233", %"$have_gas_1229"
  %"$consume_1235" = sub i64 %"$gasrem_1231", 1
  store i64 %"$consume_1235", i64* @_gasrem, align 8
  store %Int64 { i64 -101 }, %Int64* %"$ans_46", align 8, !dbg !84
  %"$gasrem_1236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1237" = icmp ugt i64 1, %"$gasrem_1236"
  br i1 %"$gascmp_1237", label %"$out_of_gas_1238", label %"$have_gas_1239"

"$out_of_gas_1238":                               ; preds = %"$have_gas_1234"
  call void @_out_of_gas()
  br label %"$have_gas_1239"

"$have_gas_1239":                                 ; preds = %"$out_of_gas_1238", %"$have_gas_1234"
  %"$consume_1240" = sub i64 %"$gasrem_1236", 1
  store i64 %"$consume_1240", i64* @_gasrem, align 8
  %"$res__47" = alloca %TName_Bool*, align 8
  %"$gasrem_1241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1242" = icmp ugt i64 4, %"$gasrem_1241"
  br i1 %"$gascmp_1242", label %"$out_of_gas_1243", label %"$have_gas_1244"

"$out_of_gas_1243":                               ; preds = %"$have_gas_1239"
  call void @_out_of_gas()
  br label %"$have_gas_1244"

"$have_gas_1244":                                 ; preds = %"$out_of_gas_1243", %"$have_gas_1239"
  %"$consume_1245" = sub i64 %"$gasrem_1241", 4
  store i64 %"$consume_1245", i64* @_gasrem, align 8
  %"$execptr_load_1246" = load i8*, i8** @_execptr, align 8
  %"$$p_45_1247" = load %Int64, %Int64* %"$p_45", align 8
  %"$$ans_46_1248" = load %Int64, %Int64* %"$ans_46", align 8
  %"$eq_call_1249" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1246", %Int64 %"$$p_45_1247", %Int64 %"$$ans_46_1248"), !dbg !85
  store %TName_Bool* %"$eq_call_1249", %TName_Bool** %"$res__47", align 8, !dbg !85
  %"$gasrem_1251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1252" = icmp ugt i64 1, %"$gasrem_1251"
  br i1 %"$gascmp_1252", label %"$out_of_gas_1253", label %"$have_gas_1254"

"$out_of_gas_1253":                               ; preds = %"$have_gas_1244"
  call void @_out_of_gas()
  br label %"$have_gas_1254"

"$have_gas_1254":                                 ; preds = %"$out_of_gas_1253", %"$have_gas_1244"
  %"$consume_1255" = sub i64 %"$gasrem_1251", 1
  store i64 %"$consume_1255", i64* @_gasrem, align 8
  %"$BoolUtils.andb_157" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1256" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1257" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1256", 0
  %"$BoolUtils.andb_envptr_1258" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1256", 1
  %"$$res_44_1259" = load %TName_Bool*, %TName_Bool** %"$res_44", align 8
  %"$BoolUtils.andb_call_1260" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1257"(i8* %"$BoolUtils.andb_envptr_1258", %TName_Bool* %"$$res_44_1259"), !dbg !86
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1260", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8, !dbg !86
  %"$BoolUtils.andb_158" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_157_1261" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$$BoolUtils.andb_157_fptr_1262" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1261", 0
  %"$$BoolUtils.andb_157_envptr_1263" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1261", 1
  %"$$res__47_1264" = load %TName_Bool*, %TName_Bool** %"$res__47", align 8
  %"$$BoolUtils.andb_157_call_1265" = call %TName_Bool* %"$$BoolUtils.andb_157_fptr_1262"(i8* %"$$BoolUtils.andb_157_envptr_1263", %TName_Bool* %"$$res__47_1264"), !dbg !86
  store %TName_Bool* %"$$BoolUtils.andb_157_call_1265", %TName_Bool** %"$BoolUtils.andb_158", align 8, !dbg !86
  %"$$BoolUtils.andb_158_1266" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_158", align 8
  store %TName_Bool* %"$$BoolUtils.andb_158_1266", %TName_Bool** %"$res_48", align 8, !dbg !86
  %"$gasrem_1267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1268" = icmp ugt i64 1, %"$gasrem_1267"
  br i1 %"$gascmp_1268", label %"$out_of_gas_1269", label %"$have_gas_1270"

"$out_of_gas_1269":                               ; preds = %"$have_gas_1254"
  call void @_out_of_gas()
  br label %"$have_gas_1270"

"$have_gas_1270":                                 ; preds = %"$out_of_gas_1269", %"$have_gas_1254"
  %"$consume_1271" = sub i64 %"$gasrem_1267", 1
  store i64 %"$consume_1271", i64* @_gasrem, align 8
  %"$p_49" = alloca %Int64, align 8
  %"$p3_1272" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1273" = extractvalue %Uint32 %"$p3_1272", 0
  %"$valueof_1274" = zext i32 %"$valueof_1273" to i64
  %"$gasmul_1275" = mul i64 20, %"$valueof_1274"
  %"$gasrem_1276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1277" = icmp ugt i64 %"$gasmul_1275", %"$gasrem_1276"
  br i1 %"$gascmp_1277", label %"$out_of_gas_1278", label %"$have_gas_1279"

"$out_of_gas_1278":                               ; preds = %"$have_gas_1270"
  call void @_out_of_gas()
  br label %"$have_gas_1279"

"$have_gas_1279":                                 ; preds = %"$out_of_gas_1278", %"$have_gas_1270"
  %"$consume_1280" = sub i64 %"$gasrem_1276", %"$gasmul_1275"
  store i64 %"$consume_1280", i64* @_gasrem, align 8
  %"$t4_1281" = load %Int64, %Int64* %t4, align 8
  %"$p3_1282" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1283" = call %Int64 @_pow_Int64(%Int64 %"$t4_1281", %Uint32 %"$p3_1282"), !dbg !87
  store %Int64 %"$pow_call_1283", %Int64* %"$p_49", align 8, !dbg !87
  %"$gasrem_1284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1285" = icmp ugt i64 1, %"$gasrem_1284"
  br i1 %"$gascmp_1285", label %"$out_of_gas_1286", label %"$have_gas_1287"

"$out_of_gas_1286":                               ; preds = %"$have_gas_1279"
  call void @_out_of_gas()
  br label %"$have_gas_1287"

"$have_gas_1287":                                 ; preds = %"$out_of_gas_1286", %"$have_gas_1279"
  %"$consume_1288" = sub i64 %"$gasrem_1284", 1
  store i64 %"$consume_1288", i64* @_gasrem, align 8
  %"$res_52" = alloca %TName_Bool*, align 8
  %"$gasrem_1289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1290" = icmp ugt i64 1, %"$gasrem_1289"
  br i1 %"$gascmp_1290", label %"$out_of_gas_1291", label %"$have_gas_1292"

"$out_of_gas_1291":                               ; preds = %"$have_gas_1287"
  call void @_out_of_gas()
  br label %"$have_gas_1292"

"$have_gas_1292":                                 ; preds = %"$out_of_gas_1291", %"$have_gas_1287"
  %"$consume_1293" = sub i64 %"$gasrem_1289", 1
  store i64 %"$consume_1293", i64* @_gasrem, align 8
  %"$ans_50" = alloca %Int64, align 8
  %"$gasrem_1294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1295" = icmp ugt i64 1, %"$gasrem_1294"
  br i1 %"$gascmp_1295", label %"$out_of_gas_1296", label %"$have_gas_1297"

"$out_of_gas_1296":                               ; preds = %"$have_gas_1292"
  call void @_out_of_gas()
  br label %"$have_gas_1297"

"$have_gas_1297":                                 ; preds = %"$out_of_gas_1296", %"$have_gas_1292"
  %"$consume_1298" = sub i64 %"$gasrem_1294", 1
  store i64 %"$consume_1298", i64* @_gasrem, align 8
  store %Int64 { i64 104060401 }, %Int64* %"$ans_50", align 8, !dbg !88
  %"$gasrem_1299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1300" = icmp ugt i64 1, %"$gasrem_1299"
  br i1 %"$gascmp_1300", label %"$out_of_gas_1301", label %"$have_gas_1302"

"$out_of_gas_1301":                               ; preds = %"$have_gas_1297"
  call void @_out_of_gas()
  br label %"$have_gas_1302"

"$have_gas_1302":                                 ; preds = %"$out_of_gas_1301", %"$have_gas_1297"
  %"$consume_1303" = sub i64 %"$gasrem_1299", 1
  store i64 %"$consume_1303", i64* @_gasrem, align 8
  %"$res__51" = alloca %TName_Bool*, align 8
  %"$gasrem_1304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1305" = icmp ugt i64 4, %"$gasrem_1304"
  br i1 %"$gascmp_1305", label %"$out_of_gas_1306", label %"$have_gas_1307"

"$out_of_gas_1306":                               ; preds = %"$have_gas_1302"
  call void @_out_of_gas()
  br label %"$have_gas_1307"

"$have_gas_1307":                                 ; preds = %"$out_of_gas_1306", %"$have_gas_1302"
  %"$consume_1308" = sub i64 %"$gasrem_1304", 4
  store i64 %"$consume_1308", i64* @_gasrem, align 8
  %"$execptr_load_1309" = load i8*, i8** @_execptr, align 8
  %"$$p_49_1310" = load %Int64, %Int64* %"$p_49", align 8
  %"$$ans_50_1311" = load %Int64, %Int64* %"$ans_50", align 8
  %"$eq_call_1312" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1309", %Int64 %"$$p_49_1310", %Int64 %"$$ans_50_1311"), !dbg !89
  store %TName_Bool* %"$eq_call_1312", %TName_Bool** %"$res__51", align 8, !dbg !89
  %"$gasrem_1314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1315" = icmp ugt i64 1, %"$gasrem_1314"
  br i1 %"$gascmp_1315", label %"$out_of_gas_1316", label %"$have_gas_1317"

"$out_of_gas_1316":                               ; preds = %"$have_gas_1307"
  call void @_out_of_gas()
  br label %"$have_gas_1317"

"$have_gas_1317":                                 ; preds = %"$out_of_gas_1316", %"$have_gas_1307"
  %"$consume_1318" = sub i64 %"$gasrem_1314", 1
  store i64 %"$consume_1318", i64* @_gasrem, align 8
  %"$BoolUtils.andb_159" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1319" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1320" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1319", 0
  %"$BoolUtils.andb_envptr_1321" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1319", 1
  %"$$res_48_1322" = load %TName_Bool*, %TName_Bool** %"$res_48", align 8
  %"$BoolUtils.andb_call_1323" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1320"(i8* %"$BoolUtils.andb_envptr_1321", %TName_Bool* %"$$res_48_1322"), !dbg !90
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1323", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8, !dbg !90
  %"$BoolUtils.andb_160" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_159_1324" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$$BoolUtils.andb_159_fptr_1325" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1324", 0
  %"$$BoolUtils.andb_159_envptr_1326" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1324", 1
  %"$$res__51_1327" = load %TName_Bool*, %TName_Bool** %"$res__51", align 8
  %"$$BoolUtils.andb_159_call_1328" = call %TName_Bool* %"$$BoolUtils.andb_159_fptr_1325"(i8* %"$$BoolUtils.andb_159_envptr_1326", %TName_Bool* %"$$res__51_1327"), !dbg !90
  store %TName_Bool* %"$$BoolUtils.andb_159_call_1328", %TName_Bool** %"$BoolUtils.andb_160", align 8, !dbg !90
  %"$$BoolUtils.andb_160_1329" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_160", align 8
  store %TName_Bool* %"$$BoolUtils.andb_160_1329", %TName_Bool** %"$res_52", align 8, !dbg !90
  %"$gasrem_1330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1331" = icmp ugt i64 1, %"$gasrem_1330"
  br i1 %"$gascmp_1331", label %"$out_of_gas_1332", label %"$have_gas_1333"

"$out_of_gas_1332":                               ; preds = %"$have_gas_1317"
  call void @_out_of_gas()
  br label %"$have_gas_1333"

"$have_gas_1333":                                 ; preds = %"$out_of_gas_1332", %"$have_gas_1317"
  %"$consume_1334" = sub i64 %"$gasrem_1330", 1
  store i64 %"$consume_1334", i64* @_gasrem, align 8
  %"$p_53" = alloca %Uint128, align 8
  %"$p1_1335" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1336" = extractvalue %Uint32 %"$p1_1335", 0
  %"$valueof_1337" = zext i32 %"$valueof_1336" to i64
  %"$gasmul_1338" = mul i64 20, %"$valueof_1337"
  %"$gasmul_1339" = mul i64 %"$gasmul_1338", 2
  %"$gasrem_1340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1341" = icmp ugt i64 %"$gasmul_1339", %"$gasrem_1340"
  br i1 %"$gascmp_1341", label %"$out_of_gas_1342", label %"$have_gas_1343"

"$out_of_gas_1342":                               ; preds = %"$have_gas_1333"
  call void @_out_of_gas()
  br label %"$have_gas_1343"

"$have_gas_1343":                                 ; preds = %"$out_of_gas_1342", %"$have_gas_1333"
  %"$consume_1344" = sub i64 %"$gasrem_1340", %"$gasmul_1339"
  store i64 %"$consume_1344", i64* @_gasrem, align 8
  %"$t5_1345" = load %Uint128, %Uint128* %t5, align 8
  %"$p1_1346" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1347" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1345", %Uint32 %"$p1_1346"), !dbg !91
  store %Uint128 %"$pow_call_1347", %Uint128* %"$p_53", align 8, !dbg !91
  %"$gasrem_1348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1349" = icmp ugt i64 1, %"$gasrem_1348"
  br i1 %"$gascmp_1349", label %"$out_of_gas_1350", label %"$have_gas_1351"

"$out_of_gas_1350":                               ; preds = %"$have_gas_1343"
  call void @_out_of_gas()
  br label %"$have_gas_1351"

"$have_gas_1351":                                 ; preds = %"$out_of_gas_1350", %"$have_gas_1343"
  %"$consume_1352" = sub i64 %"$gasrem_1348", 1
  store i64 %"$consume_1352", i64* @_gasrem, align 8
  %"$res_56" = alloca %TName_Bool*, align 8
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 1, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$have_gas_1351"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$have_gas_1351"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 1
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  %"$ans_54" = alloca %Uint128, align 8
  %"$gasrem_1358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1359" = icmp ugt i64 1, %"$gasrem_1358"
  br i1 %"$gascmp_1359", label %"$out_of_gas_1360", label %"$have_gas_1361"

"$out_of_gas_1360":                               ; preds = %"$have_gas_1356"
  call void @_out_of_gas()
  br label %"$have_gas_1361"

"$have_gas_1361":                                 ; preds = %"$out_of_gas_1360", %"$have_gas_1356"
  %"$consume_1362" = sub i64 %"$gasrem_1358", 1
  store i64 %"$consume_1362", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %"$ans_54", align 8, !dbg !92
  %"$gasrem_1363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1364" = icmp ugt i64 1, %"$gasrem_1363"
  br i1 %"$gascmp_1364", label %"$out_of_gas_1365", label %"$have_gas_1366"

"$out_of_gas_1365":                               ; preds = %"$have_gas_1361"
  call void @_out_of_gas()
  br label %"$have_gas_1366"

"$have_gas_1366":                                 ; preds = %"$out_of_gas_1365", %"$have_gas_1361"
  %"$consume_1367" = sub i64 %"$gasrem_1363", 1
  store i64 %"$consume_1367", i64* @_gasrem, align 8
  %"$res__55" = alloca %TName_Bool*, align 8
  %"$gasrem_1369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1370" = icmp ugt i64 8, %"$gasrem_1369"
  br i1 %"$gascmp_1370", label %"$out_of_gas_1371", label %"$have_gas_1372"

"$out_of_gas_1371":                               ; preds = %"$have_gas_1366"
  call void @_out_of_gas()
  br label %"$have_gas_1372"

"$have_gas_1372":                                 ; preds = %"$out_of_gas_1371", %"$have_gas_1366"
  %"$consume_1373" = sub i64 %"$gasrem_1369", 8
  store i64 %"$consume_1373", i64* @_gasrem, align 8
  %"$execptr_load_1374" = load i8*, i8** @_execptr, align 8
  %"$$p_53_1375" = load %Uint128, %Uint128* %"$p_53", align 8
  %"$$ans_54_1376" = load %Uint128, %Uint128* %"$ans_54", align 8
  %"$eq_call_1377" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1374", %Uint128 %"$$p_53_1375", %Uint128 %"$$ans_54_1376"), !dbg !93
  store %TName_Bool* %"$eq_call_1377", %TName_Bool** %"$res__55", align 8, !dbg !93
  %"$gasrem_1379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1380" = icmp ugt i64 1, %"$gasrem_1379"
  br i1 %"$gascmp_1380", label %"$out_of_gas_1381", label %"$have_gas_1382"

"$out_of_gas_1381":                               ; preds = %"$have_gas_1372"
  call void @_out_of_gas()
  br label %"$have_gas_1382"

"$have_gas_1382":                                 ; preds = %"$out_of_gas_1381", %"$have_gas_1372"
  %"$consume_1383" = sub i64 %"$gasrem_1379", 1
  store i64 %"$consume_1383", i64* @_gasrem, align 8
  %"$BoolUtils.andb_161" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1384" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1385" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1384", 0
  %"$BoolUtils.andb_envptr_1386" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1384", 1
  %"$$res_52_1387" = load %TName_Bool*, %TName_Bool** %"$res_52", align 8
  %"$BoolUtils.andb_call_1388" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1385"(i8* %"$BoolUtils.andb_envptr_1386", %TName_Bool* %"$$res_52_1387"), !dbg !94
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1388", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8, !dbg !94
  %"$BoolUtils.andb_162" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_161_1389" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$$BoolUtils.andb_161_fptr_1390" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1389", 0
  %"$$BoolUtils.andb_161_envptr_1391" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1389", 1
  %"$$res__55_1392" = load %TName_Bool*, %TName_Bool** %"$res__55", align 8
  %"$$BoolUtils.andb_161_call_1393" = call %TName_Bool* %"$$BoolUtils.andb_161_fptr_1390"(i8* %"$$BoolUtils.andb_161_envptr_1391", %TName_Bool* %"$$res__55_1392"), !dbg !94
  store %TName_Bool* %"$$BoolUtils.andb_161_call_1393", %TName_Bool** %"$BoolUtils.andb_162", align 8, !dbg !94
  %"$$BoolUtils.andb_162_1394" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_162", align 8
  store %TName_Bool* %"$$BoolUtils.andb_162_1394", %TName_Bool** %"$res_56", align 8, !dbg !94
  %"$gasrem_1395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1396" = icmp ugt i64 1, %"$gasrem_1395"
  br i1 %"$gascmp_1396", label %"$out_of_gas_1397", label %"$have_gas_1398"

"$out_of_gas_1397":                               ; preds = %"$have_gas_1382"
  call void @_out_of_gas()
  br label %"$have_gas_1398"

"$have_gas_1398":                                 ; preds = %"$out_of_gas_1397", %"$have_gas_1382"
  %"$consume_1399" = sub i64 %"$gasrem_1395", 1
  store i64 %"$consume_1399", i64* @_gasrem, align 8
  %"$p_57" = alloca %Uint128, align 8
  %"$p2_1400" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1401" = extractvalue %Uint32 %"$p2_1400", 0
  %"$valueof_1402" = zext i32 %"$valueof_1401" to i64
  %"$gasmul_1403" = mul i64 20, %"$valueof_1402"
  %"$gasmul_1404" = mul i64 %"$gasmul_1403", 2
  %"$gasrem_1405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1406" = icmp ugt i64 %"$gasmul_1404", %"$gasrem_1405"
  br i1 %"$gascmp_1406", label %"$out_of_gas_1407", label %"$have_gas_1408"

"$out_of_gas_1407":                               ; preds = %"$have_gas_1398"
  call void @_out_of_gas()
  br label %"$have_gas_1408"

"$have_gas_1408":                                 ; preds = %"$out_of_gas_1407", %"$have_gas_1398"
  %"$consume_1409" = sub i64 %"$gasrem_1405", %"$gasmul_1404"
  store i64 %"$consume_1409", i64* @_gasrem, align 8
  %"$t5_1410" = load %Uint128, %Uint128* %t5, align 8
  %"$p2_1411" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1412" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1410", %Uint32 %"$p2_1411"), !dbg !95
  store %Uint128 %"$pow_call_1412", %Uint128* %"$p_57", align 8, !dbg !95
  %"$gasrem_1413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1414" = icmp ugt i64 1, %"$gasrem_1413"
  br i1 %"$gascmp_1414", label %"$out_of_gas_1415", label %"$have_gas_1416"

"$out_of_gas_1415":                               ; preds = %"$have_gas_1408"
  call void @_out_of_gas()
  br label %"$have_gas_1416"

"$have_gas_1416":                                 ; preds = %"$out_of_gas_1415", %"$have_gas_1408"
  %"$consume_1417" = sub i64 %"$gasrem_1413", 1
  store i64 %"$consume_1417", i64* @_gasrem, align 8
  %"$res_60" = alloca %TName_Bool*, align 8
  %"$gasrem_1418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1419" = icmp ugt i64 1, %"$gasrem_1418"
  br i1 %"$gascmp_1419", label %"$out_of_gas_1420", label %"$have_gas_1421"

"$out_of_gas_1420":                               ; preds = %"$have_gas_1416"
  call void @_out_of_gas()
  br label %"$have_gas_1421"

"$have_gas_1421":                                 ; preds = %"$out_of_gas_1420", %"$have_gas_1416"
  %"$consume_1422" = sub i64 %"$gasrem_1418", 1
  store i64 %"$consume_1422", i64* @_gasrem, align 8
  %"$ans_58" = alloca %Uint128, align 8
  %"$gasrem_1423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1424" = icmp ugt i64 1, %"$gasrem_1423"
  br i1 %"$gascmp_1424", label %"$out_of_gas_1425", label %"$have_gas_1426"

"$out_of_gas_1425":                               ; preds = %"$have_gas_1421"
  call void @_out_of_gas()
  br label %"$have_gas_1426"

"$have_gas_1426":                                 ; preds = %"$out_of_gas_1425", %"$have_gas_1421"
  %"$consume_1427" = sub i64 %"$gasrem_1423", 1
  store i64 %"$consume_1427", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %"$ans_58", align 8, !dbg !96
  %"$gasrem_1428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1429" = icmp ugt i64 1, %"$gasrem_1428"
  br i1 %"$gascmp_1429", label %"$out_of_gas_1430", label %"$have_gas_1431"

"$out_of_gas_1430":                               ; preds = %"$have_gas_1426"
  call void @_out_of_gas()
  br label %"$have_gas_1431"

"$have_gas_1431":                                 ; preds = %"$out_of_gas_1430", %"$have_gas_1426"
  %"$consume_1432" = sub i64 %"$gasrem_1428", 1
  store i64 %"$consume_1432", i64* @_gasrem, align 8
  %"$res__59" = alloca %TName_Bool*, align 8
  %"$gasrem_1434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1435" = icmp ugt i64 8, %"$gasrem_1434"
  br i1 %"$gascmp_1435", label %"$out_of_gas_1436", label %"$have_gas_1437"

"$out_of_gas_1436":                               ; preds = %"$have_gas_1431"
  call void @_out_of_gas()
  br label %"$have_gas_1437"

"$have_gas_1437":                                 ; preds = %"$out_of_gas_1436", %"$have_gas_1431"
  %"$consume_1438" = sub i64 %"$gasrem_1434", 8
  store i64 %"$consume_1438", i64* @_gasrem, align 8
  %"$execptr_load_1439" = load i8*, i8** @_execptr, align 8
  %"$$p_57_1440" = load %Uint128, %Uint128* %"$p_57", align 8
  %"$$ans_58_1441" = load %Uint128, %Uint128* %"$ans_58", align 8
  %"$eq_call_1442" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1439", %Uint128 %"$$p_57_1440", %Uint128 %"$$ans_58_1441"), !dbg !97
  store %TName_Bool* %"$eq_call_1442", %TName_Bool** %"$res__59", align 8, !dbg !97
  %"$gasrem_1444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1445" = icmp ugt i64 1, %"$gasrem_1444"
  br i1 %"$gascmp_1445", label %"$out_of_gas_1446", label %"$have_gas_1447"

"$out_of_gas_1446":                               ; preds = %"$have_gas_1437"
  call void @_out_of_gas()
  br label %"$have_gas_1447"

"$have_gas_1447":                                 ; preds = %"$out_of_gas_1446", %"$have_gas_1437"
  %"$consume_1448" = sub i64 %"$gasrem_1444", 1
  store i64 %"$consume_1448", i64* @_gasrem, align 8
  %"$BoolUtils.andb_163" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1449" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1450" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1449", 0
  %"$BoolUtils.andb_envptr_1451" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1449", 1
  %"$$res_56_1452" = load %TName_Bool*, %TName_Bool** %"$res_56", align 8
  %"$BoolUtils.andb_call_1453" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1450"(i8* %"$BoolUtils.andb_envptr_1451", %TName_Bool* %"$$res_56_1452"), !dbg !98
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1453", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8, !dbg !98
  %"$BoolUtils.andb_164" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_163_1454" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$$BoolUtils.andb_163_fptr_1455" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1454", 0
  %"$$BoolUtils.andb_163_envptr_1456" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1454", 1
  %"$$res__59_1457" = load %TName_Bool*, %TName_Bool** %"$res__59", align 8
  %"$$BoolUtils.andb_163_call_1458" = call %TName_Bool* %"$$BoolUtils.andb_163_fptr_1455"(i8* %"$$BoolUtils.andb_163_envptr_1456", %TName_Bool* %"$$res__59_1457"), !dbg !98
  store %TName_Bool* %"$$BoolUtils.andb_163_call_1458", %TName_Bool** %"$BoolUtils.andb_164", align 8, !dbg !98
  %"$$BoolUtils.andb_164_1459" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_164", align 8
  store %TName_Bool* %"$$BoolUtils.andb_164_1459", %TName_Bool** %"$res_60", align 8, !dbg !98
  %"$gasrem_1460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1461" = icmp ugt i64 1, %"$gasrem_1460"
  br i1 %"$gascmp_1461", label %"$out_of_gas_1462", label %"$have_gas_1463"

"$out_of_gas_1462":                               ; preds = %"$have_gas_1447"
  call void @_out_of_gas()
  br label %"$have_gas_1463"

"$have_gas_1463":                                 ; preds = %"$out_of_gas_1462", %"$have_gas_1447"
  %"$consume_1464" = sub i64 %"$gasrem_1460", 1
  store i64 %"$consume_1464", i64* @_gasrem, align 8
  %"$p_61" = alloca %Uint128, align 8
  %"$p3_1465" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1466" = extractvalue %Uint32 %"$p3_1465", 0
  %"$valueof_1467" = zext i32 %"$valueof_1466" to i64
  %"$gasmul_1468" = mul i64 20, %"$valueof_1467"
  %"$gasmul_1469" = mul i64 %"$gasmul_1468", 2
  %"$gasrem_1470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1471" = icmp ugt i64 %"$gasmul_1469", %"$gasrem_1470"
  br i1 %"$gascmp_1471", label %"$out_of_gas_1472", label %"$have_gas_1473"

"$out_of_gas_1472":                               ; preds = %"$have_gas_1463"
  call void @_out_of_gas()
  br label %"$have_gas_1473"

"$have_gas_1473":                                 ; preds = %"$out_of_gas_1472", %"$have_gas_1463"
  %"$consume_1474" = sub i64 %"$gasrem_1470", %"$gasmul_1469"
  store i64 %"$consume_1474", i64* @_gasrem, align 8
  %"$t5_1475" = load %Uint128, %Uint128* %t5, align 8
  %"$p3_1476" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1477" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1475", %Uint32 %"$p3_1476"), !dbg !99
  store %Uint128 %"$pow_call_1477", %Uint128* %"$p_61", align 8, !dbg !99
  %"$gasrem_1478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1479" = icmp ugt i64 1, %"$gasrem_1478"
  br i1 %"$gascmp_1479", label %"$out_of_gas_1480", label %"$have_gas_1481"

"$out_of_gas_1480":                               ; preds = %"$have_gas_1473"
  call void @_out_of_gas()
  br label %"$have_gas_1481"

"$have_gas_1481":                                 ; preds = %"$out_of_gas_1480", %"$have_gas_1473"
  %"$consume_1482" = sub i64 %"$gasrem_1478", 1
  store i64 %"$consume_1482", i64* @_gasrem, align 8
  %"$res_64" = alloca %TName_Bool*, align 8
  %"$gasrem_1483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1484" = icmp ugt i64 1, %"$gasrem_1483"
  br i1 %"$gascmp_1484", label %"$out_of_gas_1485", label %"$have_gas_1486"

"$out_of_gas_1485":                               ; preds = %"$have_gas_1481"
  call void @_out_of_gas()
  br label %"$have_gas_1486"

"$have_gas_1486":                                 ; preds = %"$out_of_gas_1485", %"$have_gas_1481"
  %"$consume_1487" = sub i64 %"$gasrem_1483", 1
  store i64 %"$consume_1487", i64* @_gasrem, align 8
  %"$ans_62" = alloca %Uint128, align 8
  %"$gasrem_1488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1489" = icmp ugt i64 1, %"$gasrem_1488"
  br i1 %"$gascmp_1489", label %"$out_of_gas_1490", label %"$have_gas_1491"

"$out_of_gas_1490":                               ; preds = %"$have_gas_1486"
  call void @_out_of_gas()
  br label %"$have_gas_1491"

"$have_gas_1491":                                 ; preds = %"$out_of_gas_1490", %"$have_gas_1486"
  %"$consume_1492" = sub i64 %"$gasrem_1488", 1
  store i64 %"$consume_1492", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000 }, %Uint128* %"$ans_62", align 8, !dbg !100
  %"$gasrem_1493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1494" = icmp ugt i64 1, %"$gasrem_1493"
  br i1 %"$gascmp_1494", label %"$out_of_gas_1495", label %"$have_gas_1496"

"$out_of_gas_1495":                               ; preds = %"$have_gas_1491"
  call void @_out_of_gas()
  br label %"$have_gas_1496"

"$have_gas_1496":                                 ; preds = %"$out_of_gas_1495", %"$have_gas_1491"
  %"$consume_1497" = sub i64 %"$gasrem_1493", 1
  store i64 %"$consume_1497", i64* @_gasrem, align 8
  %"$res__63" = alloca %TName_Bool*, align 8
  %"$gasrem_1499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1500" = icmp ugt i64 8, %"$gasrem_1499"
  br i1 %"$gascmp_1500", label %"$out_of_gas_1501", label %"$have_gas_1502"

"$out_of_gas_1501":                               ; preds = %"$have_gas_1496"
  call void @_out_of_gas()
  br label %"$have_gas_1502"

"$have_gas_1502":                                 ; preds = %"$out_of_gas_1501", %"$have_gas_1496"
  %"$consume_1503" = sub i64 %"$gasrem_1499", 8
  store i64 %"$consume_1503", i64* @_gasrem, align 8
  %"$execptr_load_1504" = load i8*, i8** @_execptr, align 8
  %"$$p_61_1505" = load %Uint128, %Uint128* %"$p_61", align 8
  %"$$ans_62_1506" = load %Uint128, %Uint128* %"$ans_62", align 8
  %"$eq_call_1507" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1504", %Uint128 %"$$p_61_1505", %Uint128 %"$$ans_62_1506"), !dbg !101
  store %TName_Bool* %"$eq_call_1507", %TName_Bool** %"$res__63", align 8, !dbg !101
  %"$gasrem_1509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1510" = icmp ugt i64 1, %"$gasrem_1509"
  br i1 %"$gascmp_1510", label %"$out_of_gas_1511", label %"$have_gas_1512"

"$out_of_gas_1511":                               ; preds = %"$have_gas_1502"
  call void @_out_of_gas()
  br label %"$have_gas_1512"

"$have_gas_1512":                                 ; preds = %"$out_of_gas_1511", %"$have_gas_1502"
  %"$consume_1513" = sub i64 %"$gasrem_1509", 1
  store i64 %"$consume_1513", i64* @_gasrem, align 8
  %"$BoolUtils.andb_165" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1514" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1515" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1514", 0
  %"$BoolUtils.andb_envptr_1516" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1514", 1
  %"$$res_60_1517" = load %TName_Bool*, %TName_Bool** %"$res_60", align 8
  %"$BoolUtils.andb_call_1518" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1515"(i8* %"$BoolUtils.andb_envptr_1516", %TName_Bool* %"$$res_60_1517"), !dbg !102
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1518", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8, !dbg !102
  %"$BoolUtils.andb_166" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_165_1519" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$$BoolUtils.andb_165_fptr_1520" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1519", 0
  %"$$BoolUtils.andb_165_envptr_1521" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1519", 1
  %"$$res__63_1522" = load %TName_Bool*, %TName_Bool** %"$res__63", align 8
  %"$$BoolUtils.andb_165_call_1523" = call %TName_Bool* %"$$BoolUtils.andb_165_fptr_1520"(i8* %"$$BoolUtils.andb_165_envptr_1521", %TName_Bool* %"$$res__63_1522"), !dbg !102
  store %TName_Bool* %"$$BoolUtils.andb_165_call_1523", %TName_Bool** %"$BoolUtils.andb_166", align 8, !dbg !102
  %"$$BoolUtils.andb_166_1524" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_166", align 8
  store %TName_Bool* %"$$BoolUtils.andb_166_1524", %TName_Bool** %"$res_64", align 8, !dbg !102
  %"$gasrem_1525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1526" = icmp ugt i64 1, %"$gasrem_1525"
  br i1 %"$gascmp_1526", label %"$out_of_gas_1527", label %"$have_gas_1528"

"$out_of_gas_1527":                               ; preds = %"$have_gas_1512"
  call void @_out_of_gas()
  br label %"$have_gas_1528"

"$have_gas_1528":                                 ; preds = %"$out_of_gas_1527", %"$have_gas_1512"
  %"$consume_1529" = sub i64 %"$gasrem_1525", 1
  store i64 %"$consume_1529", i64* @_gasrem, align 8
  %"$p_65" = alloca %Uint128, align 8
  %"$p4_1530" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_1531" = extractvalue %Uint32 %"$p4_1530", 0
  %"$valueof_1532" = zext i32 %"$valueof_1531" to i64
  %"$gasmul_1533" = mul i64 20, %"$valueof_1532"
  %"$gasmul_1534" = mul i64 %"$gasmul_1533", 2
  %"$gasrem_1535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1536" = icmp ugt i64 %"$gasmul_1534", %"$gasrem_1535"
  br i1 %"$gascmp_1536", label %"$out_of_gas_1537", label %"$have_gas_1538"

"$out_of_gas_1537":                               ; preds = %"$have_gas_1528"
  call void @_out_of_gas()
  br label %"$have_gas_1538"

"$have_gas_1538":                                 ; preds = %"$out_of_gas_1537", %"$have_gas_1528"
  %"$consume_1539" = sub i64 %"$gasrem_1535", %"$gasmul_1534"
  store i64 %"$consume_1539", i64* @_gasrem, align 8
  %"$t5_1540" = load %Uint128, %Uint128* %t5, align 8
  %"$p4_1541" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1542" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1540", %Uint32 %"$p4_1541"), !dbg !103
  store %Uint128 %"$pow_call_1542", %Uint128* %"$p_65", align 8, !dbg !103
  %"$gasrem_1543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1544" = icmp ugt i64 1, %"$gasrem_1543"
  br i1 %"$gascmp_1544", label %"$out_of_gas_1545", label %"$have_gas_1546"

"$out_of_gas_1545":                               ; preds = %"$have_gas_1538"
  call void @_out_of_gas()
  br label %"$have_gas_1546"

"$have_gas_1546":                                 ; preds = %"$out_of_gas_1545", %"$have_gas_1538"
  %"$consume_1547" = sub i64 %"$gasrem_1543", 1
  store i64 %"$consume_1547", i64* @_gasrem, align 8
  %"$res_68" = alloca %TName_Bool*, align 8
  %"$gasrem_1548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1549" = icmp ugt i64 1, %"$gasrem_1548"
  br i1 %"$gascmp_1549", label %"$out_of_gas_1550", label %"$have_gas_1551"

"$out_of_gas_1550":                               ; preds = %"$have_gas_1546"
  call void @_out_of_gas()
  br label %"$have_gas_1551"

"$have_gas_1551":                                 ; preds = %"$out_of_gas_1550", %"$have_gas_1546"
  %"$consume_1552" = sub i64 %"$gasrem_1548", 1
  store i64 %"$consume_1552", i64* @_gasrem, align 8
  %"$ans_66" = alloca %Uint128, align 8
  %"$gasrem_1553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1554" = icmp ugt i64 1, %"$gasrem_1553"
  br i1 %"$gascmp_1554", label %"$out_of_gas_1555", label %"$have_gas_1556"

"$out_of_gas_1555":                               ; preds = %"$have_gas_1551"
  call void @_out_of_gas()
  br label %"$have_gas_1556"

"$have_gas_1556":                                 ; preds = %"$out_of_gas_1555", %"$have_gas_1551"
  %"$consume_1557" = sub i64 %"$gasrem_1553", 1
  store i64 %"$consume_1557", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000000000000000000000 }, %Uint128* %"$ans_66", align 8, !dbg !104
  %"$gasrem_1558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1559" = icmp ugt i64 1, %"$gasrem_1558"
  br i1 %"$gascmp_1559", label %"$out_of_gas_1560", label %"$have_gas_1561"

"$out_of_gas_1560":                               ; preds = %"$have_gas_1556"
  call void @_out_of_gas()
  br label %"$have_gas_1561"

"$have_gas_1561":                                 ; preds = %"$out_of_gas_1560", %"$have_gas_1556"
  %"$consume_1562" = sub i64 %"$gasrem_1558", 1
  store i64 %"$consume_1562", i64* @_gasrem, align 8
  %"$res__67" = alloca %TName_Bool*, align 8
  %"$gasrem_1564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1565" = icmp ugt i64 8, %"$gasrem_1564"
  br i1 %"$gascmp_1565", label %"$out_of_gas_1566", label %"$have_gas_1567"

"$out_of_gas_1566":                               ; preds = %"$have_gas_1561"
  call void @_out_of_gas()
  br label %"$have_gas_1567"

"$have_gas_1567":                                 ; preds = %"$out_of_gas_1566", %"$have_gas_1561"
  %"$consume_1568" = sub i64 %"$gasrem_1564", 8
  store i64 %"$consume_1568", i64* @_gasrem, align 8
  %"$execptr_load_1569" = load i8*, i8** @_execptr, align 8
  %"$$p_65_1570" = load %Uint128, %Uint128* %"$p_65", align 8
  %"$$ans_66_1571" = load %Uint128, %Uint128* %"$ans_66", align 8
  %"$eq_call_1572" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1569", %Uint128 %"$$p_65_1570", %Uint128 %"$$ans_66_1571"), !dbg !105
  store %TName_Bool* %"$eq_call_1572", %TName_Bool** %"$res__67", align 8, !dbg !105
  %"$gasrem_1574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1575" = icmp ugt i64 1, %"$gasrem_1574"
  br i1 %"$gascmp_1575", label %"$out_of_gas_1576", label %"$have_gas_1577"

"$out_of_gas_1576":                               ; preds = %"$have_gas_1567"
  call void @_out_of_gas()
  br label %"$have_gas_1577"

"$have_gas_1577":                                 ; preds = %"$out_of_gas_1576", %"$have_gas_1567"
  %"$consume_1578" = sub i64 %"$gasrem_1574", 1
  store i64 %"$consume_1578", i64* @_gasrem, align 8
  %"$BoolUtils.andb_167" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1579" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1580" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1579", 0
  %"$BoolUtils.andb_envptr_1581" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1579", 1
  %"$$res_64_1582" = load %TName_Bool*, %TName_Bool** %"$res_64", align 8
  %"$BoolUtils.andb_call_1583" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1580"(i8* %"$BoolUtils.andb_envptr_1581", %TName_Bool* %"$$res_64_1582"), !dbg !106
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1583", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8, !dbg !106
  %"$BoolUtils.andb_168" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_167_1584" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$$BoolUtils.andb_167_fptr_1585" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1584", 0
  %"$$BoolUtils.andb_167_envptr_1586" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1584", 1
  %"$$res__67_1587" = load %TName_Bool*, %TName_Bool** %"$res__67", align 8
  %"$$BoolUtils.andb_167_call_1588" = call %TName_Bool* %"$$BoolUtils.andb_167_fptr_1585"(i8* %"$$BoolUtils.andb_167_envptr_1586", %TName_Bool* %"$$res__67_1587"), !dbg !106
  store %TName_Bool* %"$$BoolUtils.andb_167_call_1588", %TName_Bool** %"$BoolUtils.andb_168", align 8, !dbg !106
  %"$$BoolUtils.andb_168_1589" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_168", align 8
  store %TName_Bool* %"$$BoolUtils.andb_168_1589", %TName_Bool** %"$res_68", align 8, !dbg !106
  %"$gasrem_1590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1591" = icmp ugt i64 1, %"$gasrem_1590"
  br i1 %"$gascmp_1591", label %"$out_of_gas_1592", label %"$have_gas_1593"

"$out_of_gas_1592":                               ; preds = %"$have_gas_1577"
  call void @_out_of_gas()
  br label %"$have_gas_1593"

"$have_gas_1593":                                 ; preds = %"$out_of_gas_1592", %"$have_gas_1577"
  %"$consume_1594" = sub i64 %"$gasrem_1590", 1
  store i64 %"$consume_1594", i64* @_gasrem, align 8
  %"$p_69" = alloca %Int128, align 8
  %"$p1_1595" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1596" = extractvalue %Uint32 %"$p1_1595", 0
  %"$valueof_1597" = zext i32 %"$valueof_1596" to i64
  %"$gasmul_1598" = mul i64 20, %"$valueof_1597"
  %"$gasmul_1599" = mul i64 %"$gasmul_1598", 2
  %"$gasrem_1600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1601" = icmp ugt i64 %"$gasmul_1599", %"$gasrem_1600"
  br i1 %"$gascmp_1601", label %"$out_of_gas_1602", label %"$have_gas_1603"

"$out_of_gas_1602":                               ; preds = %"$have_gas_1593"
  call void @_out_of_gas()
  br label %"$have_gas_1603"

"$have_gas_1603":                                 ; preds = %"$out_of_gas_1602", %"$have_gas_1593"
  %"$consume_1604" = sub i64 %"$gasrem_1600", %"$gasmul_1599"
  store i64 %"$consume_1604", i64* @_gasrem, align 8
  %"$t6_1605" = load %Int128, %Int128* %t6, align 8
  %"$p1_1606" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1607" = call %Int128 @_pow_Int128(%Int128 %"$t6_1605", %Uint32 %"$p1_1606"), !dbg !107
  store %Int128 %"$pow_call_1607", %Int128* %"$p_69", align 8, !dbg !107
  %"$gasrem_1608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1609" = icmp ugt i64 1, %"$gasrem_1608"
  br i1 %"$gascmp_1609", label %"$out_of_gas_1610", label %"$have_gas_1611"

"$out_of_gas_1610":                               ; preds = %"$have_gas_1603"
  call void @_out_of_gas()
  br label %"$have_gas_1611"

"$have_gas_1611":                                 ; preds = %"$out_of_gas_1610", %"$have_gas_1603"
  %"$consume_1612" = sub i64 %"$gasrem_1608", 1
  store i64 %"$consume_1612", i64* @_gasrem, align 8
  %"$res_72" = alloca %TName_Bool*, align 8
  %"$gasrem_1613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1614" = icmp ugt i64 1, %"$gasrem_1613"
  br i1 %"$gascmp_1614", label %"$out_of_gas_1615", label %"$have_gas_1616"

"$out_of_gas_1615":                               ; preds = %"$have_gas_1611"
  call void @_out_of_gas()
  br label %"$have_gas_1616"

"$have_gas_1616":                                 ; preds = %"$out_of_gas_1615", %"$have_gas_1611"
  %"$consume_1617" = sub i64 %"$gasrem_1613", 1
  store i64 %"$consume_1617", i64* @_gasrem, align 8
  %"$ans_70" = alloca %Int128, align 8
  %"$gasrem_1618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1619" = icmp ugt i64 1, %"$gasrem_1618"
  br i1 %"$gascmp_1619", label %"$out_of_gas_1620", label %"$have_gas_1621"

"$out_of_gas_1620":                               ; preds = %"$have_gas_1616"
  call void @_out_of_gas()
  br label %"$have_gas_1621"

"$have_gas_1621":                                 ; preds = %"$out_of_gas_1620", %"$have_gas_1616"
  %"$consume_1622" = sub i64 %"$gasrem_1618", 1
  store i64 %"$consume_1622", i64* @_gasrem, align 8
  store %Int128 { i128 1 }, %Int128* %"$ans_70", align 8, !dbg !108
  %"$gasrem_1623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1624" = icmp ugt i64 1, %"$gasrem_1623"
  br i1 %"$gascmp_1624", label %"$out_of_gas_1625", label %"$have_gas_1626"

"$out_of_gas_1625":                               ; preds = %"$have_gas_1621"
  call void @_out_of_gas()
  br label %"$have_gas_1626"

"$have_gas_1626":                                 ; preds = %"$out_of_gas_1625", %"$have_gas_1621"
  %"$consume_1627" = sub i64 %"$gasrem_1623", 1
  store i64 %"$consume_1627", i64* @_gasrem, align 8
  %"$res__71" = alloca %TName_Bool*, align 8
  %"$gasrem_1629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1630" = icmp ugt i64 8, %"$gasrem_1629"
  br i1 %"$gascmp_1630", label %"$out_of_gas_1631", label %"$have_gas_1632"

"$out_of_gas_1631":                               ; preds = %"$have_gas_1626"
  call void @_out_of_gas()
  br label %"$have_gas_1632"

"$have_gas_1632":                                 ; preds = %"$out_of_gas_1631", %"$have_gas_1626"
  %"$consume_1633" = sub i64 %"$gasrem_1629", 8
  store i64 %"$consume_1633", i64* @_gasrem, align 8
  %"$execptr_load_1634" = load i8*, i8** @_execptr, align 8
  %"$$p_69_1635" = load %Int128, %Int128* %"$p_69", align 8
  %"$$ans_70_1636" = load %Int128, %Int128* %"$ans_70", align 8
  %"$eq_call_1637" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1634", %Int128 %"$$p_69_1635", %Int128 %"$$ans_70_1636"), !dbg !109
  store %TName_Bool* %"$eq_call_1637", %TName_Bool** %"$res__71", align 8, !dbg !109
  %"$gasrem_1639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1640" = icmp ugt i64 1, %"$gasrem_1639"
  br i1 %"$gascmp_1640", label %"$out_of_gas_1641", label %"$have_gas_1642"

"$out_of_gas_1641":                               ; preds = %"$have_gas_1632"
  call void @_out_of_gas()
  br label %"$have_gas_1642"

"$have_gas_1642":                                 ; preds = %"$out_of_gas_1641", %"$have_gas_1632"
  %"$consume_1643" = sub i64 %"$gasrem_1639", 1
  store i64 %"$consume_1643", i64* @_gasrem, align 8
  %"$BoolUtils.andb_169" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1644" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1645" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1644", 0
  %"$BoolUtils.andb_envptr_1646" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1644", 1
  %"$$res_68_1647" = load %TName_Bool*, %TName_Bool** %"$res_68", align 8
  %"$BoolUtils.andb_call_1648" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1645"(i8* %"$BoolUtils.andb_envptr_1646", %TName_Bool* %"$$res_68_1647"), !dbg !110
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1648", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8, !dbg !110
  %"$BoolUtils.andb_170" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_169_1649" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8
  %"$$BoolUtils.andb_169_fptr_1650" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1649", 0
  %"$$BoolUtils.andb_169_envptr_1651" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1649", 1
  %"$$res__71_1652" = load %TName_Bool*, %TName_Bool** %"$res__71", align 8
  %"$$BoolUtils.andb_169_call_1653" = call %TName_Bool* %"$$BoolUtils.andb_169_fptr_1650"(i8* %"$$BoolUtils.andb_169_envptr_1651", %TName_Bool* %"$$res__71_1652"), !dbg !110
  store %TName_Bool* %"$$BoolUtils.andb_169_call_1653", %TName_Bool** %"$BoolUtils.andb_170", align 8, !dbg !110
  %"$$BoolUtils.andb_170_1654" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_170", align 8
  store %TName_Bool* %"$$BoolUtils.andb_170_1654", %TName_Bool** %"$res_72", align 8, !dbg !110
  %"$gasrem_1655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1656" = icmp ugt i64 1, %"$gasrem_1655"
  br i1 %"$gascmp_1656", label %"$out_of_gas_1657", label %"$have_gas_1658"

"$out_of_gas_1657":                               ; preds = %"$have_gas_1642"
  call void @_out_of_gas()
  br label %"$have_gas_1658"

"$have_gas_1658":                                 ; preds = %"$out_of_gas_1657", %"$have_gas_1642"
  %"$consume_1659" = sub i64 %"$gasrem_1655", 1
  store i64 %"$consume_1659", i64* @_gasrem, align 8
  %"$p_73" = alloca %Int128, align 8
  %"$p2_1660" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1661" = extractvalue %Uint32 %"$p2_1660", 0
  %"$valueof_1662" = zext i32 %"$valueof_1661" to i64
  %"$gasmul_1663" = mul i64 20, %"$valueof_1662"
  %"$gasmul_1664" = mul i64 %"$gasmul_1663", 2
  %"$gasrem_1665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1666" = icmp ugt i64 %"$gasmul_1664", %"$gasrem_1665"
  br i1 %"$gascmp_1666", label %"$out_of_gas_1667", label %"$have_gas_1668"

"$out_of_gas_1667":                               ; preds = %"$have_gas_1658"
  call void @_out_of_gas()
  br label %"$have_gas_1668"

"$have_gas_1668":                                 ; preds = %"$out_of_gas_1667", %"$have_gas_1658"
  %"$consume_1669" = sub i64 %"$gasrem_1665", %"$gasmul_1664"
  store i64 %"$consume_1669", i64* @_gasrem, align 8
  %"$t6_1670" = load %Int128, %Int128* %t6, align 8
  %"$p2_1671" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1672" = call %Int128 @_pow_Int128(%Int128 %"$t6_1670", %Uint32 %"$p2_1671"), !dbg !111
  store %Int128 %"$pow_call_1672", %Int128* %"$p_73", align 8, !dbg !111
  %"$gasrem_1673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1674" = icmp ugt i64 1, %"$gasrem_1673"
  br i1 %"$gascmp_1674", label %"$out_of_gas_1675", label %"$have_gas_1676"

"$out_of_gas_1675":                               ; preds = %"$have_gas_1668"
  call void @_out_of_gas()
  br label %"$have_gas_1676"

"$have_gas_1676":                                 ; preds = %"$out_of_gas_1675", %"$have_gas_1668"
  %"$consume_1677" = sub i64 %"$gasrem_1673", 1
  store i64 %"$consume_1677", i64* @_gasrem, align 8
  %"$res_76" = alloca %TName_Bool*, align 8
  %"$gasrem_1678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1679" = icmp ugt i64 1, %"$gasrem_1678"
  br i1 %"$gascmp_1679", label %"$out_of_gas_1680", label %"$have_gas_1681"

"$out_of_gas_1680":                               ; preds = %"$have_gas_1676"
  call void @_out_of_gas()
  br label %"$have_gas_1681"

"$have_gas_1681":                                 ; preds = %"$out_of_gas_1680", %"$have_gas_1676"
  %"$consume_1682" = sub i64 %"$gasrem_1678", 1
  store i64 %"$consume_1682", i64* @_gasrem, align 8
  %"$ans_74" = alloca %Int128, align 8
  %"$gasrem_1683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1684" = icmp ugt i64 1, %"$gasrem_1683"
  br i1 %"$gascmp_1684", label %"$out_of_gas_1685", label %"$have_gas_1686"

"$out_of_gas_1685":                               ; preds = %"$have_gas_1681"
  call void @_out_of_gas()
  br label %"$have_gas_1686"

"$have_gas_1686":                                 ; preds = %"$out_of_gas_1685", %"$have_gas_1681"
  %"$consume_1687" = sub i64 %"$gasrem_1683", 1
  store i64 %"$consume_1687", i64* @_gasrem, align 8
  store %Int128 { i128 501 }, %Int128* %"$ans_74", align 8, !dbg !112
  %"$gasrem_1688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1689" = icmp ugt i64 1, %"$gasrem_1688"
  br i1 %"$gascmp_1689", label %"$out_of_gas_1690", label %"$have_gas_1691"

"$out_of_gas_1690":                               ; preds = %"$have_gas_1686"
  call void @_out_of_gas()
  br label %"$have_gas_1691"

"$have_gas_1691":                                 ; preds = %"$out_of_gas_1690", %"$have_gas_1686"
  %"$consume_1692" = sub i64 %"$gasrem_1688", 1
  store i64 %"$consume_1692", i64* @_gasrem, align 8
  %"$res__75" = alloca %TName_Bool*, align 8
  %"$gasrem_1694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1695" = icmp ugt i64 8, %"$gasrem_1694"
  br i1 %"$gascmp_1695", label %"$out_of_gas_1696", label %"$have_gas_1697"

"$out_of_gas_1696":                               ; preds = %"$have_gas_1691"
  call void @_out_of_gas()
  br label %"$have_gas_1697"

"$have_gas_1697":                                 ; preds = %"$out_of_gas_1696", %"$have_gas_1691"
  %"$consume_1698" = sub i64 %"$gasrem_1694", 8
  store i64 %"$consume_1698", i64* @_gasrem, align 8
  %"$execptr_load_1699" = load i8*, i8** @_execptr, align 8
  %"$$p_73_1700" = load %Int128, %Int128* %"$p_73", align 8
  %"$$ans_74_1701" = load %Int128, %Int128* %"$ans_74", align 8
  %"$eq_call_1702" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1699", %Int128 %"$$p_73_1700", %Int128 %"$$ans_74_1701"), !dbg !113
  store %TName_Bool* %"$eq_call_1702", %TName_Bool** %"$res__75", align 8, !dbg !113
  %"$gasrem_1704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1705" = icmp ugt i64 1, %"$gasrem_1704"
  br i1 %"$gascmp_1705", label %"$out_of_gas_1706", label %"$have_gas_1707"

"$out_of_gas_1706":                               ; preds = %"$have_gas_1697"
  call void @_out_of_gas()
  br label %"$have_gas_1707"

"$have_gas_1707":                                 ; preds = %"$out_of_gas_1706", %"$have_gas_1697"
  %"$consume_1708" = sub i64 %"$gasrem_1704", 1
  store i64 %"$consume_1708", i64* @_gasrem, align 8
  %"$BoolUtils.andb_171" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1709" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1710" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1709", 0
  %"$BoolUtils.andb_envptr_1711" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1709", 1
  %"$$res_72_1712" = load %TName_Bool*, %TName_Bool** %"$res_72", align 8
  %"$BoolUtils.andb_call_1713" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1710"(i8* %"$BoolUtils.andb_envptr_1711", %TName_Bool* %"$$res_72_1712"), !dbg !114
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1713", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8, !dbg !114
  %"$BoolUtils.andb_172" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_171_1714" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8
  %"$$BoolUtils.andb_171_fptr_1715" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1714", 0
  %"$$BoolUtils.andb_171_envptr_1716" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1714", 1
  %"$$res__75_1717" = load %TName_Bool*, %TName_Bool** %"$res__75", align 8
  %"$$BoolUtils.andb_171_call_1718" = call %TName_Bool* %"$$BoolUtils.andb_171_fptr_1715"(i8* %"$$BoolUtils.andb_171_envptr_1716", %TName_Bool* %"$$res__75_1717"), !dbg !114
  store %TName_Bool* %"$$BoolUtils.andb_171_call_1718", %TName_Bool** %"$BoolUtils.andb_172", align 8, !dbg !114
  %"$$BoolUtils.andb_172_1719" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_172", align 8
  store %TName_Bool* %"$$BoolUtils.andb_172_1719", %TName_Bool** %"$res_76", align 8, !dbg !114
  %"$gasrem_1720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1721" = icmp ugt i64 1, %"$gasrem_1720"
  br i1 %"$gascmp_1721", label %"$out_of_gas_1722", label %"$have_gas_1723"

"$out_of_gas_1722":                               ; preds = %"$have_gas_1707"
  call void @_out_of_gas()
  br label %"$have_gas_1723"

"$have_gas_1723":                                 ; preds = %"$out_of_gas_1722", %"$have_gas_1707"
  %"$consume_1724" = sub i64 %"$gasrem_1720", 1
  store i64 %"$consume_1724", i64* @_gasrem, align 8
  %"$p_77" = alloca %Int128, align 8
  %"$p3_1725" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1726" = extractvalue %Uint32 %"$p3_1725", 0
  %"$valueof_1727" = zext i32 %"$valueof_1726" to i64
  %"$gasmul_1728" = mul i64 20, %"$valueof_1727"
  %"$gasmul_1729" = mul i64 %"$gasmul_1728", 2
  %"$gasrem_1730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1731" = icmp ugt i64 %"$gasmul_1729", %"$gasrem_1730"
  br i1 %"$gascmp_1731", label %"$out_of_gas_1732", label %"$have_gas_1733"

"$out_of_gas_1732":                               ; preds = %"$have_gas_1723"
  call void @_out_of_gas()
  br label %"$have_gas_1733"

"$have_gas_1733":                                 ; preds = %"$out_of_gas_1732", %"$have_gas_1723"
  %"$consume_1734" = sub i64 %"$gasrem_1730", %"$gasmul_1729"
  store i64 %"$consume_1734", i64* @_gasrem, align 8
  %"$t6_1735" = load %Int128, %Int128* %t6, align 8
  %"$p3_1736" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1737" = call %Int128 @_pow_Int128(%Int128 %"$t6_1735", %Uint32 %"$p3_1736"), !dbg !115
  store %Int128 %"$pow_call_1737", %Int128* %"$p_77", align 8, !dbg !115
  %"$gasrem_1738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1739" = icmp ugt i64 1, %"$gasrem_1738"
  br i1 %"$gascmp_1739", label %"$out_of_gas_1740", label %"$have_gas_1741"

"$out_of_gas_1740":                               ; preds = %"$have_gas_1733"
  call void @_out_of_gas()
  br label %"$have_gas_1741"

"$have_gas_1741":                                 ; preds = %"$out_of_gas_1740", %"$have_gas_1733"
  %"$consume_1742" = sub i64 %"$gasrem_1738", 1
  store i64 %"$consume_1742", i64* @_gasrem, align 8
  %"$res_80" = alloca %TName_Bool*, align 8
  %"$gasrem_1743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1744" = icmp ugt i64 1, %"$gasrem_1743"
  br i1 %"$gascmp_1744", label %"$out_of_gas_1745", label %"$have_gas_1746"

"$out_of_gas_1745":                               ; preds = %"$have_gas_1741"
  call void @_out_of_gas()
  br label %"$have_gas_1746"

"$have_gas_1746":                                 ; preds = %"$out_of_gas_1745", %"$have_gas_1741"
  %"$consume_1747" = sub i64 %"$gasrem_1743", 1
  store i64 %"$consume_1747", i64* @_gasrem, align 8
  %"$ans_78" = alloca %Int128, align 8
  %"$gasrem_1748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1749" = icmp ugt i64 1, %"$gasrem_1748"
  br i1 %"$gascmp_1749", label %"$out_of_gas_1750", label %"$have_gas_1751"

"$out_of_gas_1750":                               ; preds = %"$have_gas_1746"
  call void @_out_of_gas()
  br label %"$have_gas_1751"

"$have_gas_1751":                                 ; preds = %"$out_of_gas_1750", %"$have_gas_1746"
  %"$consume_1752" = sub i64 %"$gasrem_1748", 1
  store i64 %"$consume_1752", i64* @_gasrem, align 8
  store %Int128 { i128 63001502001 }, %Int128* %"$ans_78", align 8, !dbg !116
  %"$gasrem_1753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1754" = icmp ugt i64 1, %"$gasrem_1753"
  br i1 %"$gascmp_1754", label %"$out_of_gas_1755", label %"$have_gas_1756"

"$out_of_gas_1755":                               ; preds = %"$have_gas_1751"
  call void @_out_of_gas()
  br label %"$have_gas_1756"

"$have_gas_1756":                                 ; preds = %"$out_of_gas_1755", %"$have_gas_1751"
  %"$consume_1757" = sub i64 %"$gasrem_1753", 1
  store i64 %"$consume_1757", i64* @_gasrem, align 8
  %"$res__79" = alloca %TName_Bool*, align 8
  %"$gasrem_1759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1760" = icmp ugt i64 8, %"$gasrem_1759"
  br i1 %"$gascmp_1760", label %"$out_of_gas_1761", label %"$have_gas_1762"

"$out_of_gas_1761":                               ; preds = %"$have_gas_1756"
  call void @_out_of_gas()
  br label %"$have_gas_1762"

"$have_gas_1762":                                 ; preds = %"$out_of_gas_1761", %"$have_gas_1756"
  %"$consume_1763" = sub i64 %"$gasrem_1759", 8
  store i64 %"$consume_1763", i64* @_gasrem, align 8
  %"$execptr_load_1764" = load i8*, i8** @_execptr, align 8
  %"$$p_77_1765" = load %Int128, %Int128* %"$p_77", align 8
  %"$$ans_78_1766" = load %Int128, %Int128* %"$ans_78", align 8
  %"$eq_call_1767" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1764", %Int128 %"$$p_77_1765", %Int128 %"$$ans_78_1766"), !dbg !117
  store %TName_Bool* %"$eq_call_1767", %TName_Bool** %"$res__79", align 8, !dbg !117
  %"$gasrem_1769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1770" = icmp ugt i64 1, %"$gasrem_1769"
  br i1 %"$gascmp_1770", label %"$out_of_gas_1771", label %"$have_gas_1772"

"$out_of_gas_1771":                               ; preds = %"$have_gas_1762"
  call void @_out_of_gas()
  br label %"$have_gas_1772"

"$have_gas_1772":                                 ; preds = %"$out_of_gas_1771", %"$have_gas_1762"
  %"$consume_1773" = sub i64 %"$gasrem_1769", 1
  store i64 %"$consume_1773", i64* @_gasrem, align 8
  %"$BoolUtils.andb_173" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1774" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1775" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1774", 0
  %"$BoolUtils.andb_envptr_1776" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1774", 1
  %"$$res_76_1777" = load %TName_Bool*, %TName_Bool** %"$res_76", align 8
  %"$BoolUtils.andb_call_1778" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1775"(i8* %"$BoolUtils.andb_envptr_1776", %TName_Bool* %"$$res_76_1777"), !dbg !118
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1778", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8, !dbg !118
  %"$BoolUtils.andb_174" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_173_1779" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8
  %"$$BoolUtils.andb_173_fptr_1780" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1779", 0
  %"$$BoolUtils.andb_173_envptr_1781" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1779", 1
  %"$$res__79_1782" = load %TName_Bool*, %TName_Bool** %"$res__79", align 8
  %"$$BoolUtils.andb_173_call_1783" = call %TName_Bool* %"$$BoolUtils.andb_173_fptr_1780"(i8* %"$$BoolUtils.andb_173_envptr_1781", %TName_Bool* %"$$res__79_1782"), !dbg !118
  store %TName_Bool* %"$$BoolUtils.andb_173_call_1783", %TName_Bool** %"$BoolUtils.andb_174", align 8, !dbg !118
  %"$$BoolUtils.andb_174_1784" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_174", align 8
  store %TName_Bool* %"$$BoolUtils.andb_174_1784", %TName_Bool** %"$res_80", align 8, !dbg !118
  %"$gasrem_1785" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1786" = icmp ugt i64 1, %"$gasrem_1785"
  br i1 %"$gascmp_1786", label %"$out_of_gas_1787", label %"$have_gas_1788"

"$out_of_gas_1787":                               ; preds = %"$have_gas_1772"
  call void @_out_of_gas()
  br label %"$have_gas_1788"

"$have_gas_1788":                                 ; preds = %"$out_of_gas_1787", %"$have_gas_1772"
  %"$consume_1789" = sub i64 %"$gasrem_1785", 1
  store i64 %"$consume_1789", i64* @_gasrem, align 8
  %"$p_81" = alloca %Int128, align 8
  %"$p4_1790" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_1791" = extractvalue %Uint32 %"$p4_1790", 0
  %"$valueof_1792" = zext i32 %"$valueof_1791" to i64
  %"$gasmul_1793" = mul i64 20, %"$valueof_1792"
  %"$gasmul_1794" = mul i64 %"$gasmul_1793", 2
  %"$gasrem_1795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1796" = icmp ugt i64 %"$gasmul_1794", %"$gasrem_1795"
  br i1 %"$gascmp_1796", label %"$out_of_gas_1797", label %"$have_gas_1798"

"$out_of_gas_1797":                               ; preds = %"$have_gas_1788"
  call void @_out_of_gas()
  br label %"$have_gas_1798"

"$have_gas_1798":                                 ; preds = %"$out_of_gas_1797", %"$have_gas_1788"
  %"$consume_1799" = sub i64 %"$gasrem_1795", %"$gasmul_1794"
  store i64 %"$consume_1799", i64* @_gasrem, align 8
  %"$t6_1800" = load %Int128, %Int128* %t6, align 8
  %"$p4_1801" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1802" = call %Int128 @_pow_Int128(%Int128 %"$t6_1800", %Uint32 %"$p4_1801"), !dbg !119
  store %Int128 %"$pow_call_1802", %Int128* %"$p_81", align 8, !dbg !119
  %"$gasrem_1803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1804" = icmp ugt i64 1, %"$gasrem_1803"
  br i1 %"$gascmp_1804", label %"$out_of_gas_1805", label %"$have_gas_1806"

"$out_of_gas_1805":                               ; preds = %"$have_gas_1798"
  call void @_out_of_gas()
  br label %"$have_gas_1806"

"$have_gas_1806":                                 ; preds = %"$out_of_gas_1805", %"$have_gas_1798"
  %"$consume_1807" = sub i64 %"$gasrem_1803", 1
  store i64 %"$consume_1807", i64* @_gasrem, align 8
  %"$res_84" = alloca %TName_Bool*, align 8
  %"$gasrem_1808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1809" = icmp ugt i64 1, %"$gasrem_1808"
  br i1 %"$gascmp_1809", label %"$out_of_gas_1810", label %"$have_gas_1811"

"$out_of_gas_1810":                               ; preds = %"$have_gas_1806"
  call void @_out_of_gas()
  br label %"$have_gas_1811"

"$have_gas_1811":                                 ; preds = %"$out_of_gas_1810", %"$have_gas_1806"
  %"$consume_1812" = sub i64 %"$gasrem_1808", 1
  store i64 %"$consume_1812", i64* @_gasrem, align 8
  %"$ans_82" = alloca %Int128, align 8
  %"$gasrem_1813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1814" = icmp ugt i64 1, %"$gasrem_1813"
  br i1 %"$gascmp_1814", label %"$out_of_gas_1815", label %"$have_gas_1816"

"$out_of_gas_1815":                               ; preds = %"$have_gas_1811"
  call void @_out_of_gas()
  br label %"$have_gas_1816"

"$have_gas_1816":                                 ; preds = %"$out_of_gas_1815", %"$have_gas_1811"
  %"$consume_1817" = sub i64 %"$gasrem_1813", 1
  store i64 %"$consume_1817", i64* @_gasrem, align 8
  store %Int128 { i128 996270472039138140011255001 }, %Int128* %"$ans_82", align 8, !dbg !120
  %"$gasrem_1818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1819" = icmp ugt i64 1, %"$gasrem_1818"
  br i1 %"$gascmp_1819", label %"$out_of_gas_1820", label %"$have_gas_1821"

"$out_of_gas_1820":                               ; preds = %"$have_gas_1816"
  call void @_out_of_gas()
  br label %"$have_gas_1821"

"$have_gas_1821":                                 ; preds = %"$out_of_gas_1820", %"$have_gas_1816"
  %"$consume_1822" = sub i64 %"$gasrem_1818", 1
  store i64 %"$consume_1822", i64* @_gasrem, align 8
  %"$res__83" = alloca %TName_Bool*, align 8
  %"$gasrem_1824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1825" = icmp ugt i64 8, %"$gasrem_1824"
  br i1 %"$gascmp_1825", label %"$out_of_gas_1826", label %"$have_gas_1827"

"$out_of_gas_1826":                               ; preds = %"$have_gas_1821"
  call void @_out_of_gas()
  br label %"$have_gas_1827"

"$have_gas_1827":                                 ; preds = %"$out_of_gas_1826", %"$have_gas_1821"
  %"$consume_1828" = sub i64 %"$gasrem_1824", 8
  store i64 %"$consume_1828", i64* @_gasrem, align 8
  %"$execptr_load_1829" = load i8*, i8** @_execptr, align 8
  %"$$p_81_1830" = load %Int128, %Int128* %"$p_81", align 8
  %"$$ans_82_1831" = load %Int128, %Int128* %"$ans_82", align 8
  %"$eq_call_1832" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1829", %Int128 %"$$p_81_1830", %Int128 %"$$ans_82_1831"), !dbg !121
  store %TName_Bool* %"$eq_call_1832", %TName_Bool** %"$res__83", align 8, !dbg !121
  %"$gasrem_1834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1835" = icmp ugt i64 1, %"$gasrem_1834"
  br i1 %"$gascmp_1835", label %"$out_of_gas_1836", label %"$have_gas_1837"

"$out_of_gas_1836":                               ; preds = %"$have_gas_1827"
  call void @_out_of_gas()
  br label %"$have_gas_1837"

"$have_gas_1837":                                 ; preds = %"$out_of_gas_1836", %"$have_gas_1827"
  %"$consume_1838" = sub i64 %"$gasrem_1834", 1
  store i64 %"$consume_1838", i64* @_gasrem, align 8
  %"$BoolUtils.andb_175" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1839" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1840" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1839", 0
  %"$BoolUtils.andb_envptr_1841" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1839", 1
  %"$$res_80_1842" = load %TName_Bool*, %TName_Bool** %"$res_80", align 8
  %"$BoolUtils.andb_call_1843" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1840"(i8* %"$BoolUtils.andb_envptr_1841", %TName_Bool* %"$$res_80_1842"), !dbg !122
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1843", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8, !dbg !122
  %"$BoolUtils.andb_176" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_175_1844" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8
  %"$$BoolUtils.andb_175_fptr_1845" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1844", 0
  %"$$BoolUtils.andb_175_envptr_1846" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1844", 1
  %"$$res__83_1847" = load %TName_Bool*, %TName_Bool** %"$res__83", align 8
  %"$$BoolUtils.andb_175_call_1848" = call %TName_Bool* %"$$BoolUtils.andb_175_fptr_1845"(i8* %"$$BoolUtils.andb_175_envptr_1846", %TName_Bool* %"$$res__83_1847"), !dbg !122
  store %TName_Bool* %"$$BoolUtils.andb_175_call_1848", %TName_Bool** %"$BoolUtils.andb_176", align 8, !dbg !122
  %"$$BoolUtils.andb_176_1849" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_176", align 8
  store %TName_Bool* %"$$BoolUtils.andb_176_1849", %TName_Bool** %"$res_84", align 8, !dbg !122
  %"$gasrem_1850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1851" = icmp ugt i64 1, %"$gasrem_1850"
  br i1 %"$gascmp_1851", label %"$out_of_gas_1852", label %"$have_gas_1853"

"$out_of_gas_1852":                               ; preds = %"$have_gas_1837"
  call void @_out_of_gas()
  br label %"$have_gas_1853"

"$have_gas_1853":                                 ; preds = %"$out_of_gas_1852", %"$have_gas_1837"
  %"$consume_1854" = sub i64 %"$gasrem_1850", 1
  store i64 %"$consume_1854", i64* @_gasrem, align 8
  %"$p_85" = alloca %Uint256, align 8
  %"$p1_1855" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1856" = extractvalue %Uint32 %"$p1_1855", 0
  %"$valueof_1857" = zext i32 %"$valueof_1856" to i64
  %"$gasmul_1858" = mul i64 20, %"$valueof_1857"
  %"$gasmul_1859" = mul i64 %"$gasmul_1858", 4
  %"$gasrem_1860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1861" = icmp ugt i64 %"$gasmul_1859", %"$gasrem_1860"
  br i1 %"$gascmp_1861", label %"$out_of_gas_1862", label %"$have_gas_1863"

"$out_of_gas_1862":                               ; preds = %"$have_gas_1853"
  call void @_out_of_gas()
  br label %"$have_gas_1863"

"$have_gas_1863":                                 ; preds = %"$out_of_gas_1862", %"$have_gas_1853"
  %"$consume_1864" = sub i64 %"$gasrem_1860", %"$gasmul_1859"
  store i64 %"$consume_1864", i64* @_gasrem, align 8
  %"$execptr_load_1865" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_1866" = alloca %Uint256, align 8
  %"$t7_1867" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_1867", %Uint256* %"$pow_t7_1866", align 8
  %"$p1_1868" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1869" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_1865", %Uint256* %"$pow_t7_1866", %Uint32 %"$p1_1868"), !dbg !123
  %"$pow_1871" = load %Uint256, %Uint256* %"$pow_call_1869", align 8
  store %Uint256 %"$pow_1871", %Uint256* %"$p_85", align 8, !dbg !123
  %"$gasrem_1872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1873" = icmp ugt i64 1, %"$gasrem_1872"
  br i1 %"$gascmp_1873", label %"$out_of_gas_1874", label %"$have_gas_1875"

"$out_of_gas_1874":                               ; preds = %"$have_gas_1863"
  call void @_out_of_gas()
  br label %"$have_gas_1875"

"$have_gas_1875":                                 ; preds = %"$out_of_gas_1874", %"$have_gas_1863"
  %"$consume_1876" = sub i64 %"$gasrem_1872", 1
  store i64 %"$consume_1876", i64* @_gasrem, align 8
  %"$res_88" = alloca %TName_Bool*, align 8
  %"$gasrem_1877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1878" = icmp ugt i64 1, %"$gasrem_1877"
  br i1 %"$gascmp_1878", label %"$out_of_gas_1879", label %"$have_gas_1880"

"$out_of_gas_1879":                               ; preds = %"$have_gas_1875"
  call void @_out_of_gas()
  br label %"$have_gas_1880"

"$have_gas_1880":                                 ; preds = %"$out_of_gas_1879", %"$have_gas_1875"
  %"$consume_1881" = sub i64 %"$gasrem_1877", 1
  store i64 %"$consume_1881", i64* @_gasrem, align 8
  %"$ans_86" = alloca %Uint256, align 8
  %"$gasrem_1882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1883" = icmp ugt i64 1, %"$gasrem_1882"
  br i1 %"$gascmp_1883", label %"$out_of_gas_1884", label %"$have_gas_1885"

"$out_of_gas_1884":                               ; preds = %"$have_gas_1880"
  call void @_out_of_gas()
  br label %"$have_gas_1885"

"$have_gas_1885":                                 ; preds = %"$out_of_gas_1884", %"$have_gas_1880"
  %"$consume_1886" = sub i64 %"$gasrem_1882", 1
  store i64 %"$consume_1886", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$ans_86", align 8, !dbg !124
  %"$gasrem_1887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1888" = icmp ugt i64 1, %"$gasrem_1887"
  br i1 %"$gascmp_1888", label %"$out_of_gas_1889", label %"$have_gas_1890"

"$out_of_gas_1889":                               ; preds = %"$have_gas_1885"
  call void @_out_of_gas()
  br label %"$have_gas_1890"

"$have_gas_1890":                                 ; preds = %"$out_of_gas_1889", %"$have_gas_1885"
  %"$consume_1891" = sub i64 %"$gasrem_1887", 1
  store i64 %"$consume_1891", i64* @_gasrem, align 8
  %"$res__87" = alloca %TName_Bool*, align 8
  %"$gasrem_1893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1894" = icmp ugt i64 16, %"$gasrem_1893"
  br i1 %"$gascmp_1894", label %"$out_of_gas_1895", label %"$have_gas_1896"

"$out_of_gas_1895":                               ; preds = %"$have_gas_1890"
  call void @_out_of_gas()
  br label %"$have_gas_1896"

"$have_gas_1896":                                 ; preds = %"$out_of_gas_1895", %"$have_gas_1890"
  %"$consume_1897" = sub i64 %"$gasrem_1893", 16
  store i64 %"$consume_1897", i64* @_gasrem, align 8
  %"$execptr_load_1898" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_85_1899" = alloca %Uint256, align 8
  %"$$p_85_1900" = load %Uint256, %Uint256* %"$p_85", align 8
  store %Uint256 %"$$p_85_1900", %Uint256* %"$eq_$p_85_1899", align 8
  %"$eq_$ans_86_1901" = alloca %Uint256, align 8
  %"$$ans_86_1902" = load %Uint256, %Uint256* %"$ans_86", align 8
  store %Uint256 %"$$ans_86_1902", %Uint256* %"$eq_$ans_86_1901", align 8
  %"$eq_call_1903" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1898", %Uint256* %"$eq_$p_85_1899", %Uint256* %"$eq_$ans_86_1901"), !dbg !125
  store %TName_Bool* %"$eq_call_1903", %TName_Bool** %"$res__87", align 8, !dbg !125
  %"$gasrem_1905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1906" = icmp ugt i64 1, %"$gasrem_1905"
  br i1 %"$gascmp_1906", label %"$out_of_gas_1907", label %"$have_gas_1908"

"$out_of_gas_1907":                               ; preds = %"$have_gas_1896"
  call void @_out_of_gas()
  br label %"$have_gas_1908"

"$have_gas_1908":                                 ; preds = %"$out_of_gas_1907", %"$have_gas_1896"
  %"$consume_1909" = sub i64 %"$gasrem_1905", 1
  store i64 %"$consume_1909", i64* @_gasrem, align 8
  %"$BoolUtils.andb_177" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1910" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1911" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1910", 0
  %"$BoolUtils.andb_envptr_1912" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1910", 1
  %"$$res_84_1913" = load %TName_Bool*, %TName_Bool** %"$res_84", align 8
  %"$BoolUtils.andb_call_1914" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1911"(i8* %"$BoolUtils.andb_envptr_1912", %TName_Bool* %"$$res_84_1913"), !dbg !126
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1914", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8, !dbg !126
  %"$BoolUtils.andb_178" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_177_1915" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8
  %"$$BoolUtils.andb_177_fptr_1916" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1915", 0
  %"$$BoolUtils.andb_177_envptr_1917" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1915", 1
  %"$$res__87_1918" = load %TName_Bool*, %TName_Bool** %"$res__87", align 8
  %"$$BoolUtils.andb_177_call_1919" = call %TName_Bool* %"$$BoolUtils.andb_177_fptr_1916"(i8* %"$$BoolUtils.andb_177_envptr_1917", %TName_Bool* %"$$res__87_1918"), !dbg !126
  store %TName_Bool* %"$$BoolUtils.andb_177_call_1919", %TName_Bool** %"$BoolUtils.andb_178", align 8, !dbg !126
  %"$$BoolUtils.andb_178_1920" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_178", align 8
  store %TName_Bool* %"$$BoolUtils.andb_178_1920", %TName_Bool** %"$res_88", align 8, !dbg !126
  %"$gasrem_1921" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1922" = icmp ugt i64 1, %"$gasrem_1921"
  br i1 %"$gascmp_1922", label %"$out_of_gas_1923", label %"$have_gas_1924"

"$out_of_gas_1923":                               ; preds = %"$have_gas_1908"
  call void @_out_of_gas()
  br label %"$have_gas_1924"

"$have_gas_1924":                                 ; preds = %"$out_of_gas_1923", %"$have_gas_1908"
  %"$consume_1925" = sub i64 %"$gasrem_1921", 1
  store i64 %"$consume_1925", i64* @_gasrem, align 8
  %"$p_89" = alloca %Uint256, align 8
  %"$p2_1926" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1927" = extractvalue %Uint32 %"$p2_1926", 0
  %"$valueof_1928" = zext i32 %"$valueof_1927" to i64
  %"$gasmul_1929" = mul i64 20, %"$valueof_1928"
  %"$gasmul_1930" = mul i64 %"$gasmul_1929", 4
  %"$gasrem_1931" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1932" = icmp ugt i64 %"$gasmul_1930", %"$gasrem_1931"
  br i1 %"$gascmp_1932", label %"$out_of_gas_1933", label %"$have_gas_1934"

"$out_of_gas_1933":                               ; preds = %"$have_gas_1924"
  call void @_out_of_gas()
  br label %"$have_gas_1934"

"$have_gas_1934":                                 ; preds = %"$out_of_gas_1933", %"$have_gas_1924"
  %"$consume_1935" = sub i64 %"$gasrem_1931", %"$gasmul_1930"
  store i64 %"$consume_1935", i64* @_gasrem, align 8
  %"$execptr_load_1936" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_1937" = alloca %Uint256, align 8
  %"$t7_1938" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_1938", %Uint256* %"$pow_t7_1937", align 8
  %"$p2_1939" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1940" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_1936", %Uint256* %"$pow_t7_1937", %Uint32 %"$p2_1939"), !dbg !127
  %"$pow_1942" = load %Uint256, %Uint256* %"$pow_call_1940", align 8
  store %Uint256 %"$pow_1942", %Uint256* %"$p_89", align 8, !dbg !127
  %"$gasrem_1943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1944" = icmp ugt i64 1, %"$gasrem_1943"
  br i1 %"$gascmp_1944", label %"$out_of_gas_1945", label %"$have_gas_1946"

"$out_of_gas_1945":                               ; preds = %"$have_gas_1934"
  call void @_out_of_gas()
  br label %"$have_gas_1946"

"$have_gas_1946":                                 ; preds = %"$out_of_gas_1945", %"$have_gas_1934"
  %"$consume_1947" = sub i64 %"$gasrem_1943", 1
  store i64 %"$consume_1947", i64* @_gasrem, align 8
  %"$res_92" = alloca %TName_Bool*, align 8
  %"$gasrem_1948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1949" = icmp ugt i64 1, %"$gasrem_1948"
  br i1 %"$gascmp_1949", label %"$out_of_gas_1950", label %"$have_gas_1951"

"$out_of_gas_1950":                               ; preds = %"$have_gas_1946"
  call void @_out_of_gas()
  br label %"$have_gas_1951"

"$have_gas_1951":                                 ; preds = %"$out_of_gas_1950", %"$have_gas_1946"
  %"$consume_1952" = sub i64 %"$gasrem_1948", 1
  store i64 %"$consume_1952", i64* @_gasrem, align 8
  %"$ans_90" = alloca %Uint256, align 8
  %"$gasrem_1953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1954" = icmp ugt i64 1, %"$gasrem_1953"
  br i1 %"$gascmp_1954", label %"$out_of_gas_1955", label %"$have_gas_1956"

"$out_of_gas_1955":                               ; preds = %"$have_gas_1951"
  call void @_out_of_gas()
  br label %"$have_gas_1956"

"$have_gas_1956":                                 ; preds = %"$out_of_gas_1955", %"$have_gas_1951"
  %"$consume_1957" = sub i64 %"$gasrem_1953", 1
  store i64 %"$consume_1957", i64* @_gasrem, align 8
  store %Uint256 { i256 10001 }, %Uint256* %"$ans_90", align 8, !dbg !128
  %"$gasrem_1958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1959" = icmp ugt i64 1, %"$gasrem_1958"
  br i1 %"$gascmp_1959", label %"$out_of_gas_1960", label %"$have_gas_1961"

"$out_of_gas_1960":                               ; preds = %"$have_gas_1956"
  call void @_out_of_gas()
  br label %"$have_gas_1961"

"$have_gas_1961":                                 ; preds = %"$out_of_gas_1960", %"$have_gas_1956"
  %"$consume_1962" = sub i64 %"$gasrem_1958", 1
  store i64 %"$consume_1962", i64* @_gasrem, align 8
  %"$res__91" = alloca %TName_Bool*, align 8
  %"$gasrem_1964" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1965" = icmp ugt i64 16, %"$gasrem_1964"
  br i1 %"$gascmp_1965", label %"$out_of_gas_1966", label %"$have_gas_1967"

"$out_of_gas_1966":                               ; preds = %"$have_gas_1961"
  call void @_out_of_gas()
  br label %"$have_gas_1967"

"$have_gas_1967":                                 ; preds = %"$out_of_gas_1966", %"$have_gas_1961"
  %"$consume_1968" = sub i64 %"$gasrem_1964", 16
  store i64 %"$consume_1968", i64* @_gasrem, align 8
  %"$execptr_load_1969" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_89_1970" = alloca %Uint256, align 8
  %"$$p_89_1971" = load %Uint256, %Uint256* %"$p_89", align 8
  store %Uint256 %"$$p_89_1971", %Uint256* %"$eq_$p_89_1970", align 8
  %"$eq_$ans_90_1972" = alloca %Uint256, align 8
  %"$$ans_90_1973" = load %Uint256, %Uint256* %"$ans_90", align 8
  store %Uint256 %"$$ans_90_1973", %Uint256* %"$eq_$ans_90_1972", align 8
  %"$eq_call_1974" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1969", %Uint256* %"$eq_$p_89_1970", %Uint256* %"$eq_$ans_90_1972"), !dbg !129
  store %TName_Bool* %"$eq_call_1974", %TName_Bool** %"$res__91", align 8, !dbg !129
  %"$gasrem_1976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1977" = icmp ugt i64 1, %"$gasrem_1976"
  br i1 %"$gascmp_1977", label %"$out_of_gas_1978", label %"$have_gas_1979"

"$out_of_gas_1978":                               ; preds = %"$have_gas_1967"
  call void @_out_of_gas()
  br label %"$have_gas_1979"

"$have_gas_1979":                                 ; preds = %"$out_of_gas_1978", %"$have_gas_1967"
  %"$consume_1980" = sub i64 %"$gasrem_1976", 1
  store i64 %"$consume_1980", i64* @_gasrem, align 8
  %"$BoolUtils.andb_179" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1981" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1982" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1981", 0
  %"$BoolUtils.andb_envptr_1983" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1981", 1
  %"$$res_88_1984" = load %TName_Bool*, %TName_Bool** %"$res_88", align 8
  %"$BoolUtils.andb_call_1985" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1982"(i8* %"$BoolUtils.andb_envptr_1983", %TName_Bool* %"$$res_88_1984"), !dbg !130
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1985", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8, !dbg !130
  %"$BoolUtils.andb_180" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_179_1986" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8
  %"$$BoolUtils.andb_179_fptr_1987" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1986", 0
  %"$$BoolUtils.andb_179_envptr_1988" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1986", 1
  %"$$res__91_1989" = load %TName_Bool*, %TName_Bool** %"$res__91", align 8
  %"$$BoolUtils.andb_179_call_1990" = call %TName_Bool* %"$$BoolUtils.andb_179_fptr_1987"(i8* %"$$BoolUtils.andb_179_envptr_1988", %TName_Bool* %"$$res__91_1989"), !dbg !130
  store %TName_Bool* %"$$BoolUtils.andb_179_call_1990", %TName_Bool** %"$BoolUtils.andb_180", align 8, !dbg !130
  %"$$BoolUtils.andb_180_1991" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_180", align 8
  store %TName_Bool* %"$$BoolUtils.andb_180_1991", %TName_Bool** %"$res_92", align 8, !dbg !130
  %"$gasrem_1992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1993" = icmp ugt i64 1, %"$gasrem_1992"
  br i1 %"$gascmp_1993", label %"$out_of_gas_1994", label %"$have_gas_1995"

"$out_of_gas_1994":                               ; preds = %"$have_gas_1979"
  call void @_out_of_gas()
  br label %"$have_gas_1995"

"$have_gas_1995":                                 ; preds = %"$out_of_gas_1994", %"$have_gas_1979"
  %"$consume_1996" = sub i64 %"$gasrem_1992", 1
  store i64 %"$consume_1996", i64* @_gasrem, align 8
  %"$p_93" = alloca %Uint256, align 8
  %"$p3_1997" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1998" = extractvalue %Uint32 %"$p3_1997", 0
  %"$valueof_1999" = zext i32 %"$valueof_1998" to i64
  %"$gasmul_2000" = mul i64 20, %"$valueof_1999"
  %"$gasmul_2001" = mul i64 %"$gasmul_2000", 4
  %"$gasrem_2002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2003" = icmp ugt i64 %"$gasmul_2001", %"$gasrem_2002"
  br i1 %"$gascmp_2003", label %"$out_of_gas_2004", label %"$have_gas_2005"

"$out_of_gas_2004":                               ; preds = %"$have_gas_1995"
  call void @_out_of_gas()
  br label %"$have_gas_2005"

"$have_gas_2005":                                 ; preds = %"$out_of_gas_2004", %"$have_gas_1995"
  %"$consume_2006" = sub i64 %"$gasrem_2002", %"$gasmul_2001"
  store i64 %"$consume_2006", i64* @_gasrem, align 8
  %"$execptr_load_2007" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2008" = alloca %Uint256, align 8
  %"$t7_2009" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2009", %Uint256* %"$pow_t7_2008", align 8
  %"$p3_2010" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2011" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2007", %Uint256* %"$pow_t7_2008", %Uint32 %"$p3_2010"), !dbg !131
  %"$pow_2013" = load %Uint256, %Uint256* %"$pow_call_2011", align 8
  store %Uint256 %"$pow_2013", %Uint256* %"$p_93", align 8, !dbg !131
  %"$gasrem_2014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2015" = icmp ugt i64 1, %"$gasrem_2014"
  br i1 %"$gascmp_2015", label %"$out_of_gas_2016", label %"$have_gas_2017"

"$out_of_gas_2016":                               ; preds = %"$have_gas_2005"
  call void @_out_of_gas()
  br label %"$have_gas_2017"

"$have_gas_2017":                                 ; preds = %"$out_of_gas_2016", %"$have_gas_2005"
  %"$consume_2018" = sub i64 %"$gasrem_2014", 1
  store i64 %"$consume_2018", i64* @_gasrem, align 8
  %"$res_96" = alloca %TName_Bool*, align 8
  %"$gasrem_2019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2020" = icmp ugt i64 1, %"$gasrem_2019"
  br i1 %"$gascmp_2020", label %"$out_of_gas_2021", label %"$have_gas_2022"

"$out_of_gas_2021":                               ; preds = %"$have_gas_2017"
  call void @_out_of_gas()
  br label %"$have_gas_2022"

"$have_gas_2022":                                 ; preds = %"$out_of_gas_2021", %"$have_gas_2017"
  %"$consume_2023" = sub i64 %"$gasrem_2019", 1
  store i64 %"$consume_2023", i64* @_gasrem, align 8
  %"$ans_94" = alloca %Uint256, align 8
  %"$gasrem_2024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2025" = icmp ugt i64 1, %"$gasrem_2024"
  br i1 %"$gascmp_2025", label %"$out_of_gas_2026", label %"$have_gas_2027"

"$out_of_gas_2026":                               ; preds = %"$have_gas_2022"
  call void @_out_of_gas()
  br label %"$have_gas_2027"

"$have_gas_2027":                                 ; preds = %"$out_of_gas_2026", %"$have_gas_2022"
  %"$consume_2028" = sub i64 %"$gasrem_2024", 1
  store i64 %"$consume_2028", i64* @_gasrem, align 8
  store %Uint256 { i256 10004000600040001 }, %Uint256* %"$ans_94", align 8, !dbg !132
  %"$gasrem_2029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2030" = icmp ugt i64 1, %"$gasrem_2029"
  br i1 %"$gascmp_2030", label %"$out_of_gas_2031", label %"$have_gas_2032"

"$out_of_gas_2031":                               ; preds = %"$have_gas_2027"
  call void @_out_of_gas()
  br label %"$have_gas_2032"

"$have_gas_2032":                                 ; preds = %"$out_of_gas_2031", %"$have_gas_2027"
  %"$consume_2033" = sub i64 %"$gasrem_2029", 1
  store i64 %"$consume_2033", i64* @_gasrem, align 8
  %"$res__95" = alloca %TName_Bool*, align 8
  %"$gasrem_2035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2036" = icmp ugt i64 16, %"$gasrem_2035"
  br i1 %"$gascmp_2036", label %"$out_of_gas_2037", label %"$have_gas_2038"

"$out_of_gas_2037":                               ; preds = %"$have_gas_2032"
  call void @_out_of_gas()
  br label %"$have_gas_2038"

"$have_gas_2038":                                 ; preds = %"$out_of_gas_2037", %"$have_gas_2032"
  %"$consume_2039" = sub i64 %"$gasrem_2035", 16
  store i64 %"$consume_2039", i64* @_gasrem, align 8
  %"$execptr_load_2040" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_93_2041" = alloca %Uint256, align 8
  %"$$p_93_2042" = load %Uint256, %Uint256* %"$p_93", align 8
  store %Uint256 %"$$p_93_2042", %Uint256* %"$eq_$p_93_2041", align 8
  %"$eq_$ans_94_2043" = alloca %Uint256, align 8
  %"$$ans_94_2044" = load %Uint256, %Uint256* %"$ans_94", align 8
  store %Uint256 %"$$ans_94_2044", %Uint256* %"$eq_$ans_94_2043", align 8
  %"$eq_call_2045" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2040", %Uint256* %"$eq_$p_93_2041", %Uint256* %"$eq_$ans_94_2043"), !dbg !133
  store %TName_Bool* %"$eq_call_2045", %TName_Bool** %"$res__95", align 8, !dbg !133
  %"$gasrem_2047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2048" = icmp ugt i64 1, %"$gasrem_2047"
  br i1 %"$gascmp_2048", label %"$out_of_gas_2049", label %"$have_gas_2050"

"$out_of_gas_2049":                               ; preds = %"$have_gas_2038"
  call void @_out_of_gas()
  br label %"$have_gas_2050"

"$have_gas_2050":                                 ; preds = %"$out_of_gas_2049", %"$have_gas_2038"
  %"$consume_2051" = sub i64 %"$gasrem_2047", 1
  store i64 %"$consume_2051", i64* @_gasrem, align 8
  %"$BoolUtils.andb_181" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2052" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2053" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2052", 0
  %"$BoolUtils.andb_envptr_2054" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2052", 1
  %"$$res_92_2055" = load %TName_Bool*, %TName_Bool** %"$res_92", align 8
  %"$BoolUtils.andb_call_2056" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2053"(i8* %"$BoolUtils.andb_envptr_2054", %TName_Bool* %"$$res_92_2055"), !dbg !134
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2056", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8, !dbg !134
  %"$BoolUtils.andb_182" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_181_2057" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8
  %"$$BoolUtils.andb_181_fptr_2058" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_2057", 0
  %"$$BoolUtils.andb_181_envptr_2059" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_2057", 1
  %"$$res__95_2060" = load %TName_Bool*, %TName_Bool** %"$res__95", align 8
  %"$$BoolUtils.andb_181_call_2061" = call %TName_Bool* %"$$BoolUtils.andb_181_fptr_2058"(i8* %"$$BoolUtils.andb_181_envptr_2059", %TName_Bool* %"$$res__95_2060"), !dbg !134
  store %TName_Bool* %"$$BoolUtils.andb_181_call_2061", %TName_Bool** %"$BoolUtils.andb_182", align 8, !dbg !134
  %"$$BoolUtils.andb_182_2062" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_182", align 8
  store %TName_Bool* %"$$BoolUtils.andb_182_2062", %TName_Bool** %"$res_96", align 8, !dbg !134
  %"$gasrem_2063" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2064" = icmp ugt i64 1, %"$gasrem_2063"
  br i1 %"$gascmp_2064", label %"$out_of_gas_2065", label %"$have_gas_2066"

"$out_of_gas_2065":                               ; preds = %"$have_gas_2050"
  call void @_out_of_gas()
  br label %"$have_gas_2066"

"$have_gas_2066":                                 ; preds = %"$out_of_gas_2065", %"$have_gas_2050"
  %"$consume_2067" = sub i64 %"$gasrem_2063", 1
  store i64 %"$consume_2067", i64* @_gasrem, align 8
  %"$p_97" = alloca %Uint256, align 8
  %"$p4_2068" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2069" = extractvalue %Uint32 %"$p4_2068", 0
  %"$valueof_2070" = zext i32 %"$valueof_2069" to i64
  %"$gasmul_2071" = mul i64 20, %"$valueof_2070"
  %"$gasmul_2072" = mul i64 %"$gasmul_2071", 4
  %"$gasrem_2073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2074" = icmp ugt i64 %"$gasmul_2072", %"$gasrem_2073"
  br i1 %"$gascmp_2074", label %"$out_of_gas_2075", label %"$have_gas_2076"

"$out_of_gas_2075":                               ; preds = %"$have_gas_2066"
  call void @_out_of_gas()
  br label %"$have_gas_2076"

"$have_gas_2076":                                 ; preds = %"$out_of_gas_2075", %"$have_gas_2066"
  %"$consume_2077" = sub i64 %"$gasrem_2073", %"$gasmul_2072"
  store i64 %"$consume_2077", i64* @_gasrem, align 8
  %"$execptr_load_2078" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2079" = alloca %Uint256, align 8
  %"$t7_2080" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2080", %Uint256* %"$pow_t7_2079", align 8
  %"$p4_2081" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2082" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2078", %Uint256* %"$pow_t7_2079", %Uint32 %"$p4_2081"), !dbg !135
  %"$pow_2084" = load %Uint256, %Uint256* %"$pow_call_2082", align 8
  store %Uint256 %"$pow_2084", %Uint256* %"$p_97", align 8, !dbg !135
  %"$gasrem_2085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2086" = icmp ugt i64 1, %"$gasrem_2085"
  br i1 %"$gascmp_2086", label %"$out_of_gas_2087", label %"$have_gas_2088"

"$out_of_gas_2087":                               ; preds = %"$have_gas_2076"
  call void @_out_of_gas()
  br label %"$have_gas_2088"

"$have_gas_2088":                                 ; preds = %"$out_of_gas_2087", %"$have_gas_2076"
  %"$consume_2089" = sub i64 %"$gasrem_2085", 1
  store i64 %"$consume_2089", i64* @_gasrem, align 8
  %"$res_100" = alloca %TName_Bool*, align 8
  %"$gasrem_2090" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2091" = icmp ugt i64 1, %"$gasrem_2090"
  br i1 %"$gascmp_2091", label %"$out_of_gas_2092", label %"$have_gas_2093"

"$out_of_gas_2092":                               ; preds = %"$have_gas_2088"
  call void @_out_of_gas()
  br label %"$have_gas_2093"

"$have_gas_2093":                                 ; preds = %"$out_of_gas_2092", %"$have_gas_2088"
  %"$consume_2094" = sub i64 %"$gasrem_2090", 1
  store i64 %"$consume_2094", i64* @_gasrem, align 8
  %"$ans_98" = alloca %Uint256, align 8
  %"$gasrem_2095" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2096" = icmp ugt i64 1, %"$gasrem_2095"
  br i1 %"$gascmp_2096", label %"$out_of_gas_2097", label %"$have_gas_2098"

"$out_of_gas_2097":                               ; preds = %"$have_gas_2093"
  call void @_out_of_gas()
  br label %"$have_gas_2098"

"$have_gas_2098":                                 ; preds = %"$out_of_gas_2097", %"$have_gas_2093"
  %"$consume_2099" = sub i64 %"$gasrem_2095", 1
  store i64 %"$consume_2099", i64* @_gasrem, align 8
  store %Uint256 { i256 10010004501200210025202100120004500100001 }, %Uint256* %"$ans_98", align 8, !dbg !136
  %"$gasrem_2100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2101" = icmp ugt i64 1, %"$gasrem_2100"
  br i1 %"$gascmp_2101", label %"$out_of_gas_2102", label %"$have_gas_2103"

"$out_of_gas_2102":                               ; preds = %"$have_gas_2098"
  call void @_out_of_gas()
  br label %"$have_gas_2103"

"$have_gas_2103":                                 ; preds = %"$out_of_gas_2102", %"$have_gas_2098"
  %"$consume_2104" = sub i64 %"$gasrem_2100", 1
  store i64 %"$consume_2104", i64* @_gasrem, align 8
  %"$res__99" = alloca %TName_Bool*, align 8
  %"$gasrem_2106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2107" = icmp ugt i64 16, %"$gasrem_2106"
  br i1 %"$gascmp_2107", label %"$out_of_gas_2108", label %"$have_gas_2109"

"$out_of_gas_2108":                               ; preds = %"$have_gas_2103"
  call void @_out_of_gas()
  br label %"$have_gas_2109"

"$have_gas_2109":                                 ; preds = %"$out_of_gas_2108", %"$have_gas_2103"
  %"$consume_2110" = sub i64 %"$gasrem_2106", 16
  store i64 %"$consume_2110", i64* @_gasrem, align 8
  %"$execptr_load_2111" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_97_2112" = alloca %Uint256, align 8
  %"$$p_97_2113" = load %Uint256, %Uint256* %"$p_97", align 8
  store %Uint256 %"$$p_97_2113", %Uint256* %"$eq_$p_97_2112", align 8
  %"$eq_$ans_98_2114" = alloca %Uint256, align 8
  %"$$ans_98_2115" = load %Uint256, %Uint256* %"$ans_98", align 8
  store %Uint256 %"$$ans_98_2115", %Uint256* %"$eq_$ans_98_2114", align 8
  %"$eq_call_2116" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2111", %Uint256* %"$eq_$p_97_2112", %Uint256* %"$eq_$ans_98_2114"), !dbg !137
  store %TName_Bool* %"$eq_call_2116", %TName_Bool** %"$res__99", align 8, !dbg !137
  %"$gasrem_2118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2119" = icmp ugt i64 1, %"$gasrem_2118"
  br i1 %"$gascmp_2119", label %"$out_of_gas_2120", label %"$have_gas_2121"

"$out_of_gas_2120":                               ; preds = %"$have_gas_2109"
  call void @_out_of_gas()
  br label %"$have_gas_2121"

"$have_gas_2121":                                 ; preds = %"$out_of_gas_2120", %"$have_gas_2109"
  %"$consume_2122" = sub i64 %"$gasrem_2118", 1
  store i64 %"$consume_2122", i64* @_gasrem, align 8
  %"$BoolUtils.andb_183" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2123" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2124" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2123", 0
  %"$BoolUtils.andb_envptr_2125" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2123", 1
  %"$$res_96_2126" = load %TName_Bool*, %TName_Bool** %"$res_96", align 8
  %"$BoolUtils.andb_call_2127" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2124"(i8* %"$BoolUtils.andb_envptr_2125", %TName_Bool* %"$$res_96_2126"), !dbg !138
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2127", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8, !dbg !138
  %"$BoolUtils.andb_184" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_183_2128" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8
  %"$$BoolUtils.andb_183_fptr_2129" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_2128", 0
  %"$$BoolUtils.andb_183_envptr_2130" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_2128", 1
  %"$$res__99_2131" = load %TName_Bool*, %TName_Bool** %"$res__99", align 8
  %"$$BoolUtils.andb_183_call_2132" = call %TName_Bool* %"$$BoolUtils.andb_183_fptr_2129"(i8* %"$$BoolUtils.andb_183_envptr_2130", %TName_Bool* %"$$res__99_2131"), !dbg !138
  store %TName_Bool* %"$$BoolUtils.andb_183_call_2132", %TName_Bool** %"$BoolUtils.andb_184", align 8, !dbg !138
  %"$$BoolUtils.andb_184_2133" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_184", align 8
  store %TName_Bool* %"$$BoolUtils.andb_184_2133", %TName_Bool** %"$res_100", align 8, !dbg !138
  %"$gasrem_2134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2135" = icmp ugt i64 1, %"$gasrem_2134"
  br i1 %"$gascmp_2135", label %"$out_of_gas_2136", label %"$have_gas_2137"

"$out_of_gas_2136":                               ; preds = %"$have_gas_2121"
  call void @_out_of_gas()
  br label %"$have_gas_2137"

"$have_gas_2137":                                 ; preds = %"$out_of_gas_2136", %"$have_gas_2121"
  %"$consume_2138" = sub i64 %"$gasrem_2134", 1
  store i64 %"$consume_2138", i64* @_gasrem, align 8
  %"$p_101" = alloca %Int256, align 8
  %"$p1_2139" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2140" = extractvalue %Uint32 %"$p1_2139", 0
  %"$valueof_2141" = zext i32 %"$valueof_2140" to i64
  %"$gasmul_2142" = mul i64 20, %"$valueof_2141"
  %"$gasmul_2143" = mul i64 %"$gasmul_2142", 4
  %"$gasrem_2144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2145" = icmp ugt i64 %"$gasmul_2143", %"$gasrem_2144"
  br i1 %"$gascmp_2145", label %"$out_of_gas_2146", label %"$have_gas_2147"

"$out_of_gas_2146":                               ; preds = %"$have_gas_2137"
  call void @_out_of_gas()
  br label %"$have_gas_2147"

"$have_gas_2147":                                 ; preds = %"$out_of_gas_2146", %"$have_gas_2137"
  %"$consume_2148" = sub i64 %"$gasrem_2144", %"$gasmul_2143"
  store i64 %"$consume_2148", i64* @_gasrem, align 8
  %"$execptr_load_2149" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2150" = alloca %Int256, align 8
  %"$t8_2151" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2151", %Int256* %"$pow_t8_2150", align 8
  %"$p1_2152" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2153" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2149", %Int256* %"$pow_t8_2150", %Uint32 %"$p1_2152"), !dbg !139
  %"$pow_2155" = load %Int256, %Int256* %"$pow_call_2153", align 8
  store %Int256 %"$pow_2155", %Int256* %"$p_101", align 8, !dbg !139
  %"$gasrem_2156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2157" = icmp ugt i64 1, %"$gasrem_2156"
  br i1 %"$gascmp_2157", label %"$out_of_gas_2158", label %"$have_gas_2159"

"$out_of_gas_2158":                               ; preds = %"$have_gas_2147"
  call void @_out_of_gas()
  br label %"$have_gas_2159"

"$have_gas_2159":                                 ; preds = %"$out_of_gas_2158", %"$have_gas_2147"
  %"$consume_2160" = sub i64 %"$gasrem_2156", 1
  store i64 %"$consume_2160", i64* @_gasrem, align 8
  %"$res_104" = alloca %TName_Bool*, align 8
  %"$gasrem_2161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2162" = icmp ugt i64 1, %"$gasrem_2161"
  br i1 %"$gascmp_2162", label %"$out_of_gas_2163", label %"$have_gas_2164"

"$out_of_gas_2163":                               ; preds = %"$have_gas_2159"
  call void @_out_of_gas()
  br label %"$have_gas_2164"

"$have_gas_2164":                                 ; preds = %"$out_of_gas_2163", %"$have_gas_2159"
  %"$consume_2165" = sub i64 %"$gasrem_2161", 1
  store i64 %"$consume_2165", i64* @_gasrem, align 8
  %"$ans_102" = alloca %Int256, align 8
  %"$gasrem_2166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2167" = icmp ugt i64 1, %"$gasrem_2166"
  br i1 %"$gascmp_2167", label %"$out_of_gas_2168", label %"$have_gas_2169"

"$out_of_gas_2168":                               ; preds = %"$have_gas_2164"
  call void @_out_of_gas()
  br label %"$have_gas_2169"

"$have_gas_2169":                                 ; preds = %"$out_of_gas_2168", %"$have_gas_2164"
  %"$consume_2170" = sub i64 %"$gasrem_2166", 1
  store i64 %"$consume_2170", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_102", align 8, !dbg !140
  %"$gasrem_2171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2172" = icmp ugt i64 1, %"$gasrem_2171"
  br i1 %"$gascmp_2172", label %"$out_of_gas_2173", label %"$have_gas_2174"

"$out_of_gas_2173":                               ; preds = %"$have_gas_2169"
  call void @_out_of_gas()
  br label %"$have_gas_2174"

"$have_gas_2174":                                 ; preds = %"$out_of_gas_2173", %"$have_gas_2169"
  %"$consume_2175" = sub i64 %"$gasrem_2171", 1
  store i64 %"$consume_2175", i64* @_gasrem, align 8
  %"$res__103" = alloca %TName_Bool*, align 8
  %"$gasrem_2177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2178" = icmp ugt i64 16, %"$gasrem_2177"
  br i1 %"$gascmp_2178", label %"$out_of_gas_2179", label %"$have_gas_2180"

"$out_of_gas_2179":                               ; preds = %"$have_gas_2174"
  call void @_out_of_gas()
  br label %"$have_gas_2180"

"$have_gas_2180":                                 ; preds = %"$out_of_gas_2179", %"$have_gas_2174"
  %"$consume_2181" = sub i64 %"$gasrem_2177", 16
  store i64 %"$consume_2181", i64* @_gasrem, align 8
  %"$execptr_load_2182" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_101_2183" = alloca %Int256, align 8
  %"$$p_101_2184" = load %Int256, %Int256* %"$p_101", align 8
  store %Int256 %"$$p_101_2184", %Int256* %"$eq_$p_101_2183", align 8
  %"$eq_$ans_102_2185" = alloca %Int256, align 8
  %"$$ans_102_2186" = load %Int256, %Int256* %"$ans_102", align 8
  store %Int256 %"$$ans_102_2186", %Int256* %"$eq_$ans_102_2185", align 8
  %"$eq_call_2187" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2182", %Int256* %"$eq_$p_101_2183", %Int256* %"$eq_$ans_102_2185"), !dbg !141
  store %TName_Bool* %"$eq_call_2187", %TName_Bool** %"$res__103", align 8, !dbg !141
  %"$gasrem_2189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2190" = icmp ugt i64 1, %"$gasrem_2189"
  br i1 %"$gascmp_2190", label %"$out_of_gas_2191", label %"$have_gas_2192"

"$out_of_gas_2191":                               ; preds = %"$have_gas_2180"
  call void @_out_of_gas()
  br label %"$have_gas_2192"

"$have_gas_2192":                                 ; preds = %"$out_of_gas_2191", %"$have_gas_2180"
  %"$consume_2193" = sub i64 %"$gasrem_2189", 1
  store i64 %"$consume_2193", i64* @_gasrem, align 8
  %"$BoolUtils.andb_185" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2194" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2195" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2194", 0
  %"$BoolUtils.andb_envptr_2196" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2194", 1
  %"$$res_100_2197" = load %TName_Bool*, %TName_Bool** %"$res_100", align 8
  %"$BoolUtils.andb_call_2198" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2195"(i8* %"$BoolUtils.andb_envptr_2196", %TName_Bool* %"$$res_100_2197"), !dbg !142
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2198", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8, !dbg !142
  %"$BoolUtils.andb_186" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_185_2199" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8
  %"$$BoolUtils.andb_185_fptr_2200" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_2199", 0
  %"$$BoolUtils.andb_185_envptr_2201" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_2199", 1
  %"$$res__103_2202" = load %TName_Bool*, %TName_Bool** %"$res__103", align 8
  %"$$BoolUtils.andb_185_call_2203" = call %TName_Bool* %"$$BoolUtils.andb_185_fptr_2200"(i8* %"$$BoolUtils.andb_185_envptr_2201", %TName_Bool* %"$$res__103_2202"), !dbg !142
  store %TName_Bool* %"$$BoolUtils.andb_185_call_2203", %TName_Bool** %"$BoolUtils.andb_186", align 8, !dbg !142
  %"$$BoolUtils.andb_186_2204" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_186", align 8
  store %TName_Bool* %"$$BoolUtils.andb_186_2204", %TName_Bool** %"$res_104", align 8, !dbg !142
  %"$gasrem_2205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2206" = icmp ugt i64 1, %"$gasrem_2205"
  br i1 %"$gascmp_2206", label %"$out_of_gas_2207", label %"$have_gas_2208"

"$out_of_gas_2207":                               ; preds = %"$have_gas_2192"
  call void @_out_of_gas()
  br label %"$have_gas_2208"

"$have_gas_2208":                                 ; preds = %"$out_of_gas_2207", %"$have_gas_2192"
  %"$consume_2209" = sub i64 %"$gasrem_2205", 1
  store i64 %"$consume_2209", i64* @_gasrem, align 8
  %"$p_105" = alloca %Int256, align 8
  %"$p2_2210" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2211" = extractvalue %Uint32 %"$p2_2210", 0
  %"$valueof_2212" = zext i32 %"$valueof_2211" to i64
  %"$gasmul_2213" = mul i64 20, %"$valueof_2212"
  %"$gasmul_2214" = mul i64 %"$gasmul_2213", 4
  %"$gasrem_2215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2216" = icmp ugt i64 %"$gasmul_2214", %"$gasrem_2215"
  br i1 %"$gascmp_2216", label %"$out_of_gas_2217", label %"$have_gas_2218"

"$out_of_gas_2217":                               ; preds = %"$have_gas_2208"
  call void @_out_of_gas()
  br label %"$have_gas_2218"

"$have_gas_2218":                                 ; preds = %"$out_of_gas_2217", %"$have_gas_2208"
  %"$consume_2219" = sub i64 %"$gasrem_2215", %"$gasmul_2214"
  store i64 %"$consume_2219", i64* @_gasrem, align 8
  %"$execptr_load_2220" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2221" = alloca %Int256, align 8
  %"$t8_2222" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2222", %Int256* %"$pow_t8_2221", align 8
  %"$p2_2223" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2224" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2220", %Int256* %"$pow_t8_2221", %Uint32 %"$p2_2223"), !dbg !143
  %"$pow_2226" = load %Int256, %Int256* %"$pow_call_2224", align 8
  store %Int256 %"$pow_2226", %Int256* %"$p_105", align 8, !dbg !143
  %"$gasrem_2227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2228" = icmp ugt i64 1, %"$gasrem_2227"
  br i1 %"$gascmp_2228", label %"$out_of_gas_2229", label %"$have_gas_2230"

"$out_of_gas_2229":                               ; preds = %"$have_gas_2218"
  call void @_out_of_gas()
  br label %"$have_gas_2230"

"$have_gas_2230":                                 ; preds = %"$out_of_gas_2229", %"$have_gas_2218"
  %"$consume_2231" = sub i64 %"$gasrem_2227", 1
  store i64 %"$consume_2231", i64* @_gasrem, align 8
  %"$res_108" = alloca %TName_Bool*, align 8
  %"$gasrem_2232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2233" = icmp ugt i64 1, %"$gasrem_2232"
  br i1 %"$gascmp_2233", label %"$out_of_gas_2234", label %"$have_gas_2235"

"$out_of_gas_2234":                               ; preds = %"$have_gas_2230"
  call void @_out_of_gas()
  br label %"$have_gas_2235"

"$have_gas_2235":                                 ; preds = %"$out_of_gas_2234", %"$have_gas_2230"
  %"$consume_2236" = sub i64 %"$gasrem_2232", 1
  store i64 %"$consume_2236", i64* @_gasrem, align 8
  %"$ans_106" = alloca %Int256, align 8
  %"$gasrem_2237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2238" = icmp ugt i64 1, %"$gasrem_2237"
  br i1 %"$gascmp_2238", label %"$out_of_gas_2239", label %"$have_gas_2240"

"$out_of_gas_2239":                               ; preds = %"$have_gas_2235"
  call void @_out_of_gas()
  br label %"$have_gas_2240"

"$have_gas_2240":                                 ; preds = %"$out_of_gas_2239", %"$have_gas_2235"
  %"$consume_2241" = sub i64 %"$gasrem_2237", 1
  store i64 %"$consume_2241", i64* @_gasrem, align 8
  store %Int256 { i256 -10001 }, %Int256* %"$ans_106", align 8, !dbg !144
  %"$gasrem_2242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2243" = icmp ugt i64 1, %"$gasrem_2242"
  br i1 %"$gascmp_2243", label %"$out_of_gas_2244", label %"$have_gas_2245"

"$out_of_gas_2244":                               ; preds = %"$have_gas_2240"
  call void @_out_of_gas()
  br label %"$have_gas_2245"

"$have_gas_2245":                                 ; preds = %"$out_of_gas_2244", %"$have_gas_2240"
  %"$consume_2246" = sub i64 %"$gasrem_2242", 1
  store i64 %"$consume_2246", i64* @_gasrem, align 8
  %"$res__107" = alloca %TName_Bool*, align 8
  %"$gasrem_2248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2249" = icmp ugt i64 16, %"$gasrem_2248"
  br i1 %"$gascmp_2249", label %"$out_of_gas_2250", label %"$have_gas_2251"

"$out_of_gas_2250":                               ; preds = %"$have_gas_2245"
  call void @_out_of_gas()
  br label %"$have_gas_2251"

"$have_gas_2251":                                 ; preds = %"$out_of_gas_2250", %"$have_gas_2245"
  %"$consume_2252" = sub i64 %"$gasrem_2248", 16
  store i64 %"$consume_2252", i64* @_gasrem, align 8
  %"$execptr_load_2253" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_105_2254" = alloca %Int256, align 8
  %"$$p_105_2255" = load %Int256, %Int256* %"$p_105", align 8
  store %Int256 %"$$p_105_2255", %Int256* %"$eq_$p_105_2254", align 8
  %"$eq_$ans_106_2256" = alloca %Int256, align 8
  %"$$ans_106_2257" = load %Int256, %Int256* %"$ans_106", align 8
  store %Int256 %"$$ans_106_2257", %Int256* %"$eq_$ans_106_2256", align 8
  %"$eq_call_2258" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2253", %Int256* %"$eq_$p_105_2254", %Int256* %"$eq_$ans_106_2256"), !dbg !145
  store %TName_Bool* %"$eq_call_2258", %TName_Bool** %"$res__107", align 8, !dbg !145
  %"$gasrem_2260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2261" = icmp ugt i64 1, %"$gasrem_2260"
  br i1 %"$gascmp_2261", label %"$out_of_gas_2262", label %"$have_gas_2263"

"$out_of_gas_2262":                               ; preds = %"$have_gas_2251"
  call void @_out_of_gas()
  br label %"$have_gas_2263"

"$have_gas_2263":                                 ; preds = %"$out_of_gas_2262", %"$have_gas_2251"
  %"$consume_2264" = sub i64 %"$gasrem_2260", 1
  store i64 %"$consume_2264", i64* @_gasrem, align 8
  %"$BoolUtils.andb_187" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2265" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2266" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2265", 0
  %"$BoolUtils.andb_envptr_2267" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2265", 1
  %"$$res_104_2268" = load %TName_Bool*, %TName_Bool** %"$res_104", align 8
  %"$BoolUtils.andb_call_2269" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2266"(i8* %"$BoolUtils.andb_envptr_2267", %TName_Bool* %"$$res_104_2268"), !dbg !146
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2269", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8, !dbg !146
  %"$BoolUtils.andb_188" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_187_2270" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8
  %"$$BoolUtils.andb_187_fptr_2271" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_2270", 0
  %"$$BoolUtils.andb_187_envptr_2272" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_2270", 1
  %"$$res__107_2273" = load %TName_Bool*, %TName_Bool** %"$res__107", align 8
  %"$$BoolUtils.andb_187_call_2274" = call %TName_Bool* %"$$BoolUtils.andb_187_fptr_2271"(i8* %"$$BoolUtils.andb_187_envptr_2272", %TName_Bool* %"$$res__107_2273"), !dbg !146
  store %TName_Bool* %"$$BoolUtils.andb_187_call_2274", %TName_Bool** %"$BoolUtils.andb_188", align 8, !dbg !146
  %"$$BoolUtils.andb_188_2275" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_188", align 8
  store %TName_Bool* %"$$BoolUtils.andb_188_2275", %TName_Bool** %"$res_108", align 8, !dbg !146
  %"$gasrem_2276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2277" = icmp ugt i64 1, %"$gasrem_2276"
  br i1 %"$gascmp_2277", label %"$out_of_gas_2278", label %"$have_gas_2279"

"$out_of_gas_2278":                               ; preds = %"$have_gas_2263"
  call void @_out_of_gas()
  br label %"$have_gas_2279"

"$have_gas_2279":                                 ; preds = %"$out_of_gas_2278", %"$have_gas_2263"
  %"$consume_2280" = sub i64 %"$gasrem_2276", 1
  store i64 %"$consume_2280", i64* @_gasrem, align 8
  %"$p_109" = alloca %Int256, align 8
  %"$p3_2281" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2282" = extractvalue %Uint32 %"$p3_2281", 0
  %"$valueof_2283" = zext i32 %"$valueof_2282" to i64
  %"$gasmul_2284" = mul i64 20, %"$valueof_2283"
  %"$gasmul_2285" = mul i64 %"$gasmul_2284", 4
  %"$gasrem_2286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2287" = icmp ugt i64 %"$gasmul_2285", %"$gasrem_2286"
  br i1 %"$gascmp_2287", label %"$out_of_gas_2288", label %"$have_gas_2289"

"$out_of_gas_2288":                               ; preds = %"$have_gas_2279"
  call void @_out_of_gas()
  br label %"$have_gas_2289"

"$have_gas_2289":                                 ; preds = %"$out_of_gas_2288", %"$have_gas_2279"
  %"$consume_2290" = sub i64 %"$gasrem_2286", %"$gasmul_2285"
  store i64 %"$consume_2290", i64* @_gasrem, align 8
  %"$execptr_load_2291" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2292" = alloca %Int256, align 8
  %"$t8_2293" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2293", %Int256* %"$pow_t8_2292", align 8
  %"$p3_2294" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2295" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2291", %Int256* %"$pow_t8_2292", %Uint32 %"$p3_2294"), !dbg !147
  %"$pow_2297" = load %Int256, %Int256* %"$pow_call_2295", align 8
  store %Int256 %"$pow_2297", %Int256* %"$p_109", align 8, !dbg !147
  %"$gasrem_2298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2299" = icmp ugt i64 1, %"$gasrem_2298"
  br i1 %"$gascmp_2299", label %"$out_of_gas_2300", label %"$have_gas_2301"

"$out_of_gas_2300":                               ; preds = %"$have_gas_2289"
  call void @_out_of_gas()
  br label %"$have_gas_2301"

"$have_gas_2301":                                 ; preds = %"$out_of_gas_2300", %"$have_gas_2289"
  %"$consume_2302" = sub i64 %"$gasrem_2298", 1
  store i64 %"$consume_2302", i64* @_gasrem, align 8
  %"$res_112" = alloca %TName_Bool*, align 8
  %"$gasrem_2303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2304" = icmp ugt i64 1, %"$gasrem_2303"
  br i1 %"$gascmp_2304", label %"$out_of_gas_2305", label %"$have_gas_2306"

"$out_of_gas_2305":                               ; preds = %"$have_gas_2301"
  call void @_out_of_gas()
  br label %"$have_gas_2306"

"$have_gas_2306":                                 ; preds = %"$out_of_gas_2305", %"$have_gas_2301"
  %"$consume_2307" = sub i64 %"$gasrem_2303", 1
  store i64 %"$consume_2307", i64* @_gasrem, align 8
  %"$ans_110" = alloca %Int256, align 8
  %"$gasrem_2308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2309" = icmp ugt i64 1, %"$gasrem_2308"
  br i1 %"$gascmp_2309", label %"$out_of_gas_2310", label %"$have_gas_2311"

"$out_of_gas_2310":                               ; preds = %"$have_gas_2306"
  call void @_out_of_gas()
  br label %"$have_gas_2311"

"$have_gas_2311":                                 ; preds = %"$out_of_gas_2310", %"$have_gas_2306"
  %"$consume_2312" = sub i64 %"$gasrem_2308", 1
  store i64 %"$consume_2312", i64* @_gasrem, align 8
  store %Int256 { i256 10004000600040001 }, %Int256* %"$ans_110", align 8, !dbg !148
  %"$gasrem_2313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2314" = icmp ugt i64 1, %"$gasrem_2313"
  br i1 %"$gascmp_2314", label %"$out_of_gas_2315", label %"$have_gas_2316"

"$out_of_gas_2315":                               ; preds = %"$have_gas_2311"
  call void @_out_of_gas()
  br label %"$have_gas_2316"

"$have_gas_2316":                                 ; preds = %"$out_of_gas_2315", %"$have_gas_2311"
  %"$consume_2317" = sub i64 %"$gasrem_2313", 1
  store i64 %"$consume_2317", i64* @_gasrem, align 8
  %"$res__111" = alloca %TName_Bool*, align 8
  %"$gasrem_2319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2320" = icmp ugt i64 16, %"$gasrem_2319"
  br i1 %"$gascmp_2320", label %"$out_of_gas_2321", label %"$have_gas_2322"

"$out_of_gas_2321":                               ; preds = %"$have_gas_2316"
  call void @_out_of_gas()
  br label %"$have_gas_2322"

"$have_gas_2322":                                 ; preds = %"$out_of_gas_2321", %"$have_gas_2316"
  %"$consume_2323" = sub i64 %"$gasrem_2319", 16
  store i64 %"$consume_2323", i64* @_gasrem, align 8
  %"$execptr_load_2324" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_109_2325" = alloca %Int256, align 8
  %"$$p_109_2326" = load %Int256, %Int256* %"$p_109", align 8
  store %Int256 %"$$p_109_2326", %Int256* %"$eq_$p_109_2325", align 8
  %"$eq_$ans_110_2327" = alloca %Int256, align 8
  %"$$ans_110_2328" = load %Int256, %Int256* %"$ans_110", align 8
  store %Int256 %"$$ans_110_2328", %Int256* %"$eq_$ans_110_2327", align 8
  %"$eq_call_2329" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2324", %Int256* %"$eq_$p_109_2325", %Int256* %"$eq_$ans_110_2327"), !dbg !149
  store %TName_Bool* %"$eq_call_2329", %TName_Bool** %"$res__111", align 8, !dbg !149
  %"$gasrem_2331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2332" = icmp ugt i64 1, %"$gasrem_2331"
  br i1 %"$gascmp_2332", label %"$out_of_gas_2333", label %"$have_gas_2334"

"$out_of_gas_2333":                               ; preds = %"$have_gas_2322"
  call void @_out_of_gas()
  br label %"$have_gas_2334"

"$have_gas_2334":                                 ; preds = %"$out_of_gas_2333", %"$have_gas_2322"
  %"$consume_2335" = sub i64 %"$gasrem_2331", 1
  store i64 %"$consume_2335", i64* @_gasrem, align 8
  %"$BoolUtils.andb_189" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2336" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2337" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2336", 0
  %"$BoolUtils.andb_envptr_2338" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2336", 1
  %"$$res_108_2339" = load %TName_Bool*, %TName_Bool** %"$res_108", align 8
  %"$BoolUtils.andb_call_2340" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2337"(i8* %"$BoolUtils.andb_envptr_2338", %TName_Bool* %"$$res_108_2339"), !dbg !150
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2340", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8, !dbg !150
  %"$BoolUtils.andb_190" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_189_2341" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8
  %"$$BoolUtils.andb_189_fptr_2342" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_2341", 0
  %"$$BoolUtils.andb_189_envptr_2343" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_2341", 1
  %"$$res__111_2344" = load %TName_Bool*, %TName_Bool** %"$res__111", align 8
  %"$$BoolUtils.andb_189_call_2345" = call %TName_Bool* %"$$BoolUtils.andb_189_fptr_2342"(i8* %"$$BoolUtils.andb_189_envptr_2343", %TName_Bool* %"$$res__111_2344"), !dbg !150
  store %TName_Bool* %"$$BoolUtils.andb_189_call_2345", %TName_Bool** %"$BoolUtils.andb_190", align 8, !dbg !150
  %"$$BoolUtils.andb_190_2346" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_190", align 8
  store %TName_Bool* %"$$BoolUtils.andb_190_2346", %TName_Bool** %"$res_112", align 8, !dbg !150
  %"$gasrem_2347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2348" = icmp ugt i64 1, %"$gasrem_2347"
  br i1 %"$gascmp_2348", label %"$out_of_gas_2349", label %"$have_gas_2350"

"$out_of_gas_2349":                               ; preds = %"$have_gas_2334"
  call void @_out_of_gas()
  br label %"$have_gas_2350"

"$have_gas_2350":                                 ; preds = %"$out_of_gas_2349", %"$have_gas_2334"
  %"$consume_2351" = sub i64 %"$gasrem_2347", 1
  store i64 %"$consume_2351", i64* @_gasrem, align 8
  %"$p_113" = alloca %Int256, align 8
  %"$p4_2352" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2353" = extractvalue %Uint32 %"$p4_2352", 0
  %"$valueof_2354" = zext i32 %"$valueof_2353" to i64
  %"$gasmul_2355" = mul i64 20, %"$valueof_2354"
  %"$gasmul_2356" = mul i64 %"$gasmul_2355", 4
  %"$gasrem_2357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2358" = icmp ugt i64 %"$gasmul_2356", %"$gasrem_2357"
  br i1 %"$gascmp_2358", label %"$out_of_gas_2359", label %"$have_gas_2360"

"$out_of_gas_2359":                               ; preds = %"$have_gas_2350"
  call void @_out_of_gas()
  br label %"$have_gas_2360"

"$have_gas_2360":                                 ; preds = %"$out_of_gas_2359", %"$have_gas_2350"
  %"$consume_2361" = sub i64 %"$gasrem_2357", %"$gasmul_2356"
  store i64 %"$consume_2361", i64* @_gasrem, align 8
  %"$execptr_load_2362" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2363" = alloca %Int256, align 8
  %"$t8_2364" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2364", %Int256* %"$pow_t8_2363", align 8
  %"$p4_2365" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2366" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2362", %Int256* %"$pow_t8_2363", %Uint32 %"$p4_2365"), !dbg !151
  %"$pow_2368" = load %Int256, %Int256* %"$pow_call_2366", align 8
  store %Int256 %"$pow_2368", %Int256* %"$p_113", align 8, !dbg !151
  %"$gasrem_2369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2370" = icmp ugt i64 1, %"$gasrem_2369"
  br i1 %"$gascmp_2370", label %"$out_of_gas_2371", label %"$have_gas_2372"

"$out_of_gas_2371":                               ; preds = %"$have_gas_2360"
  call void @_out_of_gas()
  br label %"$have_gas_2372"

"$have_gas_2372":                                 ; preds = %"$out_of_gas_2371", %"$have_gas_2360"
  %"$consume_2373" = sub i64 %"$gasrem_2369", 1
  store i64 %"$consume_2373", i64* @_gasrem, align 8
  %"$res_116" = alloca %TName_Bool*, align 8
  %"$gasrem_2374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2375" = icmp ugt i64 1, %"$gasrem_2374"
  br i1 %"$gascmp_2375", label %"$out_of_gas_2376", label %"$have_gas_2377"

"$out_of_gas_2376":                               ; preds = %"$have_gas_2372"
  call void @_out_of_gas()
  br label %"$have_gas_2377"

"$have_gas_2377":                                 ; preds = %"$out_of_gas_2376", %"$have_gas_2372"
  %"$consume_2378" = sub i64 %"$gasrem_2374", 1
  store i64 %"$consume_2378", i64* @_gasrem, align 8
  %"$ans_114" = alloca %Int256, align 8
  %"$gasrem_2379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2380" = icmp ugt i64 1, %"$gasrem_2379"
  br i1 %"$gascmp_2380", label %"$out_of_gas_2381", label %"$have_gas_2382"

"$out_of_gas_2381":                               ; preds = %"$have_gas_2377"
  call void @_out_of_gas()
  br label %"$have_gas_2382"

"$have_gas_2382":                                 ; preds = %"$out_of_gas_2381", %"$have_gas_2377"
  %"$consume_2383" = sub i64 %"$gasrem_2379", 1
  store i64 %"$consume_2383", i64* @_gasrem, align 8
  store %Int256 { i256 10010004501200210025202100120004500100001 }, %Int256* %"$ans_114", align 8, !dbg !152
  %"$gasrem_2384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2385" = icmp ugt i64 1, %"$gasrem_2384"
  br i1 %"$gascmp_2385", label %"$out_of_gas_2386", label %"$have_gas_2387"

"$out_of_gas_2386":                               ; preds = %"$have_gas_2382"
  call void @_out_of_gas()
  br label %"$have_gas_2387"

"$have_gas_2387":                                 ; preds = %"$out_of_gas_2386", %"$have_gas_2382"
  %"$consume_2388" = sub i64 %"$gasrem_2384", 1
  store i64 %"$consume_2388", i64* @_gasrem, align 8
  %"$res__115" = alloca %TName_Bool*, align 8
  %"$gasrem_2390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2391" = icmp ugt i64 16, %"$gasrem_2390"
  br i1 %"$gascmp_2391", label %"$out_of_gas_2392", label %"$have_gas_2393"

"$out_of_gas_2392":                               ; preds = %"$have_gas_2387"
  call void @_out_of_gas()
  br label %"$have_gas_2393"

"$have_gas_2393":                                 ; preds = %"$out_of_gas_2392", %"$have_gas_2387"
  %"$consume_2394" = sub i64 %"$gasrem_2390", 16
  store i64 %"$consume_2394", i64* @_gasrem, align 8
  %"$execptr_load_2395" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_113_2396" = alloca %Int256, align 8
  %"$$p_113_2397" = load %Int256, %Int256* %"$p_113", align 8
  store %Int256 %"$$p_113_2397", %Int256* %"$eq_$p_113_2396", align 8
  %"$eq_$ans_114_2398" = alloca %Int256, align 8
  %"$$ans_114_2399" = load %Int256, %Int256* %"$ans_114", align 8
  store %Int256 %"$$ans_114_2399", %Int256* %"$eq_$ans_114_2398", align 8
  %"$eq_call_2400" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2395", %Int256* %"$eq_$p_113_2396", %Int256* %"$eq_$ans_114_2398"), !dbg !153
  store %TName_Bool* %"$eq_call_2400", %TName_Bool** %"$res__115", align 8, !dbg !153
  %"$gasrem_2402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2403" = icmp ugt i64 1, %"$gasrem_2402"
  br i1 %"$gascmp_2403", label %"$out_of_gas_2404", label %"$have_gas_2405"

"$out_of_gas_2404":                               ; preds = %"$have_gas_2393"
  call void @_out_of_gas()
  br label %"$have_gas_2405"

"$have_gas_2405":                                 ; preds = %"$out_of_gas_2404", %"$have_gas_2393"
  %"$consume_2406" = sub i64 %"$gasrem_2402", 1
  store i64 %"$consume_2406", i64* @_gasrem, align 8
  %"$BoolUtils.andb_191" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2407" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2408" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2407", 0
  %"$BoolUtils.andb_envptr_2409" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2407", 1
  %"$$res_112_2410" = load %TName_Bool*, %TName_Bool** %"$res_112", align 8
  %"$BoolUtils.andb_call_2411" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2408"(i8* %"$BoolUtils.andb_envptr_2409", %TName_Bool* %"$$res_112_2410"), !dbg !154
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2411", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8, !dbg !154
  %"$BoolUtils.andb_192" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_191_2412" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8
  %"$$BoolUtils.andb_191_fptr_2413" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_2412", 0
  %"$$BoolUtils.andb_191_envptr_2414" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_2412", 1
  %"$$res__115_2415" = load %TName_Bool*, %TName_Bool** %"$res__115", align 8
  %"$$BoolUtils.andb_191_call_2416" = call %TName_Bool* %"$$BoolUtils.andb_191_fptr_2413"(i8* %"$$BoolUtils.andb_191_envptr_2414", %TName_Bool* %"$$res__115_2415"), !dbg !154
  store %TName_Bool* %"$$BoolUtils.andb_191_call_2416", %TName_Bool** %"$BoolUtils.andb_192", align 8, !dbg !154
  %"$$BoolUtils.andb_192_2417" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_192", align 8
  store %TName_Bool* %"$$BoolUtils.andb_192_2417", %TName_Bool** %"$res_116", align 8, !dbg !154
  %"$gasrem_2418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2419" = icmp ugt i64 1, %"$gasrem_2418"
  br i1 %"$gascmp_2419", label %"$out_of_gas_2420", label %"$have_gas_2421"

"$out_of_gas_2420":                               ; preds = %"$have_gas_2405"
  call void @_out_of_gas()
  br label %"$have_gas_2421"

"$have_gas_2421":                                 ; preds = %"$out_of_gas_2420", %"$have_gas_2405"
  %"$consume_2422" = sub i64 %"$gasrem_2418", 1
  store i64 %"$consume_2422", i64* @_gasrem, align 8
  %"$p_117" = alloca %Int256, align 8
  %"$p1_2423" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2424" = extractvalue %Uint32 %"$p1_2423", 0
  %"$valueof_2425" = zext i32 %"$valueof_2424" to i64
  %"$gasmul_2426" = mul i64 20, %"$valueof_2425"
  %"$gasmul_2427" = mul i64 %"$gasmul_2426", 4
  %"$gasrem_2428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2429" = icmp ugt i64 %"$gasmul_2427", %"$gasrem_2428"
  br i1 %"$gascmp_2429", label %"$out_of_gas_2430", label %"$have_gas_2431"

"$out_of_gas_2430":                               ; preds = %"$have_gas_2421"
  call void @_out_of_gas()
  br label %"$have_gas_2431"

"$have_gas_2431":                                 ; preds = %"$out_of_gas_2430", %"$have_gas_2421"
  %"$consume_2432" = sub i64 %"$gasrem_2428", %"$gasmul_2427"
  store i64 %"$consume_2432", i64* @_gasrem, align 8
  %"$execptr_load_2433" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2434" = alloca %Int256, align 8
  %"$t9_2435" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2435", %Int256* %"$pow_t9_2434", align 8
  %"$p1_2436" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2437" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2433", %Int256* %"$pow_t9_2434", %Uint32 %"$p1_2436"), !dbg !155
  %"$pow_2439" = load %Int256, %Int256* %"$pow_call_2437", align 8
  store %Int256 %"$pow_2439", %Int256* %"$p_117", align 8, !dbg !155
  %"$gasrem_2440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2441" = icmp ugt i64 1, %"$gasrem_2440"
  br i1 %"$gascmp_2441", label %"$out_of_gas_2442", label %"$have_gas_2443"

"$out_of_gas_2442":                               ; preds = %"$have_gas_2431"
  call void @_out_of_gas()
  br label %"$have_gas_2443"

"$have_gas_2443":                                 ; preds = %"$out_of_gas_2442", %"$have_gas_2431"
  %"$consume_2444" = sub i64 %"$gasrem_2440", 1
  store i64 %"$consume_2444", i64* @_gasrem, align 8
  %"$res_120" = alloca %TName_Bool*, align 8
  %"$gasrem_2445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2446" = icmp ugt i64 1, %"$gasrem_2445"
  br i1 %"$gascmp_2446", label %"$out_of_gas_2447", label %"$have_gas_2448"

"$out_of_gas_2447":                               ; preds = %"$have_gas_2443"
  call void @_out_of_gas()
  br label %"$have_gas_2448"

"$have_gas_2448":                                 ; preds = %"$out_of_gas_2447", %"$have_gas_2443"
  %"$consume_2449" = sub i64 %"$gasrem_2445", 1
  store i64 %"$consume_2449", i64* @_gasrem, align 8
  %"$ans_118" = alloca %Int256, align 8
  %"$gasrem_2450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2451" = icmp ugt i64 1, %"$gasrem_2450"
  br i1 %"$gascmp_2451", label %"$out_of_gas_2452", label %"$have_gas_2453"

"$out_of_gas_2452":                               ; preds = %"$have_gas_2448"
  call void @_out_of_gas()
  br label %"$have_gas_2453"

"$have_gas_2453":                                 ; preds = %"$out_of_gas_2452", %"$have_gas_2448"
  %"$consume_2454" = sub i64 %"$gasrem_2450", 1
  store i64 %"$consume_2454", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_118", align 8, !dbg !156
  %"$gasrem_2455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2456" = icmp ugt i64 1, %"$gasrem_2455"
  br i1 %"$gascmp_2456", label %"$out_of_gas_2457", label %"$have_gas_2458"

"$out_of_gas_2457":                               ; preds = %"$have_gas_2453"
  call void @_out_of_gas()
  br label %"$have_gas_2458"

"$have_gas_2458":                                 ; preds = %"$out_of_gas_2457", %"$have_gas_2453"
  %"$consume_2459" = sub i64 %"$gasrem_2455", 1
  store i64 %"$consume_2459", i64* @_gasrem, align 8
  %"$res__119" = alloca %TName_Bool*, align 8
  %"$gasrem_2461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2462" = icmp ugt i64 16, %"$gasrem_2461"
  br i1 %"$gascmp_2462", label %"$out_of_gas_2463", label %"$have_gas_2464"

"$out_of_gas_2463":                               ; preds = %"$have_gas_2458"
  call void @_out_of_gas()
  br label %"$have_gas_2464"

"$have_gas_2464":                                 ; preds = %"$out_of_gas_2463", %"$have_gas_2458"
  %"$consume_2465" = sub i64 %"$gasrem_2461", 16
  store i64 %"$consume_2465", i64* @_gasrem, align 8
  %"$execptr_load_2466" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_117_2467" = alloca %Int256, align 8
  %"$$p_117_2468" = load %Int256, %Int256* %"$p_117", align 8
  store %Int256 %"$$p_117_2468", %Int256* %"$eq_$p_117_2467", align 8
  %"$eq_$ans_118_2469" = alloca %Int256, align 8
  %"$$ans_118_2470" = load %Int256, %Int256* %"$ans_118", align 8
  store %Int256 %"$$ans_118_2470", %Int256* %"$eq_$ans_118_2469", align 8
  %"$eq_call_2471" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2466", %Int256* %"$eq_$p_117_2467", %Int256* %"$eq_$ans_118_2469"), !dbg !157
  store %TName_Bool* %"$eq_call_2471", %TName_Bool** %"$res__119", align 8, !dbg !157
  %"$gasrem_2473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2474" = icmp ugt i64 1, %"$gasrem_2473"
  br i1 %"$gascmp_2474", label %"$out_of_gas_2475", label %"$have_gas_2476"

"$out_of_gas_2475":                               ; preds = %"$have_gas_2464"
  call void @_out_of_gas()
  br label %"$have_gas_2476"

"$have_gas_2476":                                 ; preds = %"$out_of_gas_2475", %"$have_gas_2464"
  %"$consume_2477" = sub i64 %"$gasrem_2473", 1
  store i64 %"$consume_2477", i64* @_gasrem, align 8
  %"$BoolUtils.andb_193" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2478" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2479" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2478", 0
  %"$BoolUtils.andb_envptr_2480" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2478", 1
  %"$$res_116_2481" = load %TName_Bool*, %TName_Bool** %"$res_116", align 8
  %"$BoolUtils.andb_call_2482" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2479"(i8* %"$BoolUtils.andb_envptr_2480", %TName_Bool* %"$$res_116_2481"), !dbg !158
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2482", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8, !dbg !158
  %"$BoolUtils.andb_194" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_193_2483" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8
  %"$$BoolUtils.andb_193_fptr_2484" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2483", 0
  %"$$BoolUtils.andb_193_envptr_2485" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2483", 1
  %"$$res__119_2486" = load %TName_Bool*, %TName_Bool** %"$res__119", align 8
  %"$$BoolUtils.andb_193_call_2487" = call %TName_Bool* %"$$BoolUtils.andb_193_fptr_2484"(i8* %"$$BoolUtils.andb_193_envptr_2485", %TName_Bool* %"$$res__119_2486"), !dbg !158
  store %TName_Bool* %"$$BoolUtils.andb_193_call_2487", %TName_Bool** %"$BoolUtils.andb_194", align 8, !dbg !158
  %"$$BoolUtils.andb_194_2488" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_194", align 8
  store %TName_Bool* %"$$BoolUtils.andb_194_2488", %TName_Bool** %"$res_120", align 8, !dbg !158
  %"$gasrem_2489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2490" = icmp ugt i64 1, %"$gasrem_2489"
  br i1 %"$gascmp_2490", label %"$out_of_gas_2491", label %"$have_gas_2492"

"$out_of_gas_2491":                               ; preds = %"$have_gas_2476"
  call void @_out_of_gas()
  br label %"$have_gas_2492"

"$have_gas_2492":                                 ; preds = %"$out_of_gas_2491", %"$have_gas_2476"
  %"$consume_2493" = sub i64 %"$gasrem_2489", 1
  store i64 %"$consume_2493", i64* @_gasrem, align 8
  %"$p_121" = alloca %Int256, align 8
  %"$p2_2494" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2495" = extractvalue %Uint32 %"$p2_2494", 0
  %"$valueof_2496" = zext i32 %"$valueof_2495" to i64
  %"$gasmul_2497" = mul i64 20, %"$valueof_2496"
  %"$gasmul_2498" = mul i64 %"$gasmul_2497", 4
  %"$gasrem_2499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2500" = icmp ugt i64 %"$gasmul_2498", %"$gasrem_2499"
  br i1 %"$gascmp_2500", label %"$out_of_gas_2501", label %"$have_gas_2502"

"$out_of_gas_2501":                               ; preds = %"$have_gas_2492"
  call void @_out_of_gas()
  br label %"$have_gas_2502"

"$have_gas_2502":                                 ; preds = %"$out_of_gas_2501", %"$have_gas_2492"
  %"$consume_2503" = sub i64 %"$gasrem_2499", %"$gasmul_2498"
  store i64 %"$consume_2503", i64* @_gasrem, align 8
  %"$execptr_load_2504" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2505" = alloca %Int256, align 8
  %"$t9_2506" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2506", %Int256* %"$pow_t9_2505", align 8
  %"$p2_2507" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2508" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2504", %Int256* %"$pow_t9_2505", %Uint32 %"$p2_2507"), !dbg !159
  %"$pow_2510" = load %Int256, %Int256* %"$pow_call_2508", align 8
  store %Int256 %"$pow_2510", %Int256* %"$p_121", align 8, !dbg !159
  %"$gasrem_2511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2512" = icmp ugt i64 1, %"$gasrem_2511"
  br i1 %"$gascmp_2512", label %"$out_of_gas_2513", label %"$have_gas_2514"

"$out_of_gas_2513":                               ; preds = %"$have_gas_2502"
  call void @_out_of_gas()
  br label %"$have_gas_2514"

"$have_gas_2514":                                 ; preds = %"$out_of_gas_2513", %"$have_gas_2502"
  %"$consume_2515" = sub i64 %"$gasrem_2511", 1
  store i64 %"$consume_2515", i64* @_gasrem, align 8
  %"$res_124" = alloca %TName_Bool*, align 8
  %"$gasrem_2516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2517" = icmp ugt i64 1, %"$gasrem_2516"
  br i1 %"$gascmp_2517", label %"$out_of_gas_2518", label %"$have_gas_2519"

"$out_of_gas_2518":                               ; preds = %"$have_gas_2514"
  call void @_out_of_gas()
  br label %"$have_gas_2519"

"$have_gas_2519":                                 ; preds = %"$out_of_gas_2518", %"$have_gas_2514"
  %"$consume_2520" = sub i64 %"$gasrem_2516", 1
  store i64 %"$consume_2520", i64* @_gasrem, align 8
  %"$ans_122" = alloca %Int256, align 8
  %"$gasrem_2521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2522" = icmp ugt i64 1, %"$gasrem_2521"
  br i1 %"$gascmp_2522", label %"$out_of_gas_2523", label %"$have_gas_2524"

"$out_of_gas_2523":                               ; preds = %"$have_gas_2519"
  call void @_out_of_gas()
  br label %"$have_gas_2524"

"$have_gas_2524":                                 ; preds = %"$out_of_gas_2523", %"$have_gas_2519"
  %"$consume_2525" = sub i64 %"$gasrem_2521", 1
  store i64 %"$consume_2525", i64* @_gasrem, align 8
  store %Int256 { i256 10002 }, %Int256* %"$ans_122", align 8, !dbg !160
  %"$gasrem_2526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2527" = icmp ugt i64 1, %"$gasrem_2526"
  br i1 %"$gascmp_2527", label %"$out_of_gas_2528", label %"$have_gas_2529"

"$out_of_gas_2528":                               ; preds = %"$have_gas_2524"
  call void @_out_of_gas()
  br label %"$have_gas_2529"

"$have_gas_2529":                                 ; preds = %"$out_of_gas_2528", %"$have_gas_2524"
  %"$consume_2530" = sub i64 %"$gasrem_2526", 1
  store i64 %"$consume_2530", i64* @_gasrem, align 8
  %"$res__123" = alloca %TName_Bool*, align 8
  %"$gasrem_2532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2533" = icmp ugt i64 16, %"$gasrem_2532"
  br i1 %"$gascmp_2533", label %"$out_of_gas_2534", label %"$have_gas_2535"

"$out_of_gas_2534":                               ; preds = %"$have_gas_2529"
  call void @_out_of_gas()
  br label %"$have_gas_2535"

"$have_gas_2535":                                 ; preds = %"$out_of_gas_2534", %"$have_gas_2529"
  %"$consume_2536" = sub i64 %"$gasrem_2532", 16
  store i64 %"$consume_2536", i64* @_gasrem, align 8
  %"$execptr_load_2537" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_121_2538" = alloca %Int256, align 8
  %"$$p_121_2539" = load %Int256, %Int256* %"$p_121", align 8
  store %Int256 %"$$p_121_2539", %Int256* %"$eq_$p_121_2538", align 8
  %"$eq_$ans_122_2540" = alloca %Int256, align 8
  %"$$ans_122_2541" = load %Int256, %Int256* %"$ans_122", align 8
  store %Int256 %"$$ans_122_2541", %Int256* %"$eq_$ans_122_2540", align 8
  %"$eq_call_2542" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2537", %Int256* %"$eq_$p_121_2538", %Int256* %"$eq_$ans_122_2540"), !dbg !161
  store %TName_Bool* %"$eq_call_2542", %TName_Bool** %"$res__123", align 8, !dbg !161
  %"$gasrem_2544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2545" = icmp ugt i64 1, %"$gasrem_2544"
  br i1 %"$gascmp_2545", label %"$out_of_gas_2546", label %"$have_gas_2547"

"$out_of_gas_2546":                               ; preds = %"$have_gas_2535"
  call void @_out_of_gas()
  br label %"$have_gas_2547"

"$have_gas_2547":                                 ; preds = %"$out_of_gas_2546", %"$have_gas_2535"
  %"$consume_2548" = sub i64 %"$gasrem_2544", 1
  store i64 %"$consume_2548", i64* @_gasrem, align 8
  %"$BoolUtils.andb_195" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2549" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2550" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2549", 0
  %"$BoolUtils.andb_envptr_2551" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2549", 1
  %"$$res_120_2552" = load %TName_Bool*, %TName_Bool** %"$res_120", align 8
  %"$BoolUtils.andb_call_2553" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2550"(i8* %"$BoolUtils.andb_envptr_2551", %TName_Bool* %"$$res_120_2552"), !dbg !162
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2553", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8, !dbg !162
  %"$BoolUtils.andb_196" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_195_2554" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8
  %"$$BoolUtils.andb_195_fptr_2555" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2554", 0
  %"$$BoolUtils.andb_195_envptr_2556" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2554", 1
  %"$$res__123_2557" = load %TName_Bool*, %TName_Bool** %"$res__123", align 8
  %"$$BoolUtils.andb_195_call_2558" = call %TName_Bool* %"$$BoolUtils.andb_195_fptr_2555"(i8* %"$$BoolUtils.andb_195_envptr_2556", %TName_Bool* %"$$res__123_2557"), !dbg !162
  store %TName_Bool* %"$$BoolUtils.andb_195_call_2558", %TName_Bool** %"$BoolUtils.andb_196", align 8, !dbg !162
  %"$$BoolUtils.andb_196_2559" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_196", align 8
  store %TName_Bool* %"$$BoolUtils.andb_196_2559", %TName_Bool** %"$res_124", align 8, !dbg !162
  %"$gasrem_2560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2561" = icmp ugt i64 1, %"$gasrem_2560"
  br i1 %"$gascmp_2561", label %"$out_of_gas_2562", label %"$have_gas_2563"

"$out_of_gas_2562":                               ; preds = %"$have_gas_2547"
  call void @_out_of_gas()
  br label %"$have_gas_2563"

"$have_gas_2563":                                 ; preds = %"$out_of_gas_2562", %"$have_gas_2547"
  %"$consume_2564" = sub i64 %"$gasrem_2560", 1
  store i64 %"$consume_2564", i64* @_gasrem, align 8
  %"$p_125" = alloca %Int256, align 8
  %"$p3_2565" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2566" = extractvalue %Uint32 %"$p3_2565", 0
  %"$valueof_2567" = zext i32 %"$valueof_2566" to i64
  %"$gasmul_2568" = mul i64 20, %"$valueof_2567"
  %"$gasmul_2569" = mul i64 %"$gasmul_2568", 4
  %"$gasrem_2570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2571" = icmp ugt i64 %"$gasmul_2569", %"$gasrem_2570"
  br i1 %"$gascmp_2571", label %"$out_of_gas_2572", label %"$have_gas_2573"

"$out_of_gas_2572":                               ; preds = %"$have_gas_2563"
  call void @_out_of_gas()
  br label %"$have_gas_2573"

"$have_gas_2573":                                 ; preds = %"$out_of_gas_2572", %"$have_gas_2563"
  %"$consume_2574" = sub i64 %"$gasrem_2570", %"$gasmul_2569"
  store i64 %"$consume_2574", i64* @_gasrem, align 8
  %"$execptr_load_2575" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2576" = alloca %Int256, align 8
  %"$t9_2577" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2577", %Int256* %"$pow_t9_2576", align 8
  %"$p3_2578" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2579" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2575", %Int256* %"$pow_t9_2576", %Uint32 %"$p3_2578"), !dbg !163
  %"$pow_2581" = load %Int256, %Int256* %"$pow_call_2579", align 8
  store %Int256 %"$pow_2581", %Int256* %"$p_125", align 8, !dbg !163
  %"$gasrem_2582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2583" = icmp ugt i64 1, %"$gasrem_2582"
  br i1 %"$gascmp_2583", label %"$out_of_gas_2584", label %"$have_gas_2585"

"$out_of_gas_2584":                               ; preds = %"$have_gas_2573"
  call void @_out_of_gas()
  br label %"$have_gas_2585"

"$have_gas_2585":                                 ; preds = %"$out_of_gas_2584", %"$have_gas_2573"
  %"$consume_2586" = sub i64 %"$gasrem_2582", 1
  store i64 %"$consume_2586", i64* @_gasrem, align 8
  %"$res_128" = alloca %TName_Bool*, align 8
  %"$gasrem_2587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2588" = icmp ugt i64 1, %"$gasrem_2587"
  br i1 %"$gascmp_2588", label %"$out_of_gas_2589", label %"$have_gas_2590"

"$out_of_gas_2589":                               ; preds = %"$have_gas_2585"
  call void @_out_of_gas()
  br label %"$have_gas_2590"

"$have_gas_2590":                                 ; preds = %"$out_of_gas_2589", %"$have_gas_2585"
  %"$consume_2591" = sub i64 %"$gasrem_2587", 1
  store i64 %"$consume_2591", i64* @_gasrem, align 8
  %"$ans_126" = alloca %Int256, align 8
  %"$gasrem_2592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2593" = icmp ugt i64 1, %"$gasrem_2592"
  br i1 %"$gascmp_2593", label %"$out_of_gas_2594", label %"$have_gas_2595"

"$out_of_gas_2594":                               ; preds = %"$have_gas_2590"
  call void @_out_of_gas()
  br label %"$have_gas_2595"

"$have_gas_2595":                                 ; preds = %"$out_of_gas_2594", %"$have_gas_2590"
  %"$consume_2596" = sub i64 %"$gasrem_2592", 1
  store i64 %"$consume_2596", i64* @_gasrem, align 8
  store %Int256 { i256 10008002400320016 }, %Int256* %"$ans_126", align 8, !dbg !164
  %"$gasrem_2597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2598" = icmp ugt i64 1, %"$gasrem_2597"
  br i1 %"$gascmp_2598", label %"$out_of_gas_2599", label %"$have_gas_2600"

"$out_of_gas_2599":                               ; preds = %"$have_gas_2595"
  call void @_out_of_gas()
  br label %"$have_gas_2600"

"$have_gas_2600":                                 ; preds = %"$out_of_gas_2599", %"$have_gas_2595"
  %"$consume_2601" = sub i64 %"$gasrem_2597", 1
  store i64 %"$consume_2601", i64* @_gasrem, align 8
  %"$res__127" = alloca %TName_Bool*, align 8
  %"$gasrem_2603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2604" = icmp ugt i64 16, %"$gasrem_2603"
  br i1 %"$gascmp_2604", label %"$out_of_gas_2605", label %"$have_gas_2606"

"$out_of_gas_2605":                               ; preds = %"$have_gas_2600"
  call void @_out_of_gas()
  br label %"$have_gas_2606"

"$have_gas_2606":                                 ; preds = %"$out_of_gas_2605", %"$have_gas_2600"
  %"$consume_2607" = sub i64 %"$gasrem_2603", 16
  store i64 %"$consume_2607", i64* @_gasrem, align 8
  %"$execptr_load_2608" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_125_2609" = alloca %Int256, align 8
  %"$$p_125_2610" = load %Int256, %Int256* %"$p_125", align 8
  store %Int256 %"$$p_125_2610", %Int256* %"$eq_$p_125_2609", align 8
  %"$eq_$ans_126_2611" = alloca %Int256, align 8
  %"$$ans_126_2612" = load %Int256, %Int256* %"$ans_126", align 8
  store %Int256 %"$$ans_126_2612", %Int256* %"$eq_$ans_126_2611", align 8
  %"$eq_call_2613" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2608", %Int256* %"$eq_$p_125_2609", %Int256* %"$eq_$ans_126_2611"), !dbg !165
  store %TName_Bool* %"$eq_call_2613", %TName_Bool** %"$res__127", align 8, !dbg !165
  %"$gasrem_2615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2616" = icmp ugt i64 1, %"$gasrem_2615"
  br i1 %"$gascmp_2616", label %"$out_of_gas_2617", label %"$have_gas_2618"

"$out_of_gas_2617":                               ; preds = %"$have_gas_2606"
  call void @_out_of_gas()
  br label %"$have_gas_2618"

"$have_gas_2618":                                 ; preds = %"$out_of_gas_2617", %"$have_gas_2606"
  %"$consume_2619" = sub i64 %"$gasrem_2615", 1
  store i64 %"$consume_2619", i64* @_gasrem, align 8
  %"$BoolUtils.andb_197" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2620" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2621" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2620", 0
  %"$BoolUtils.andb_envptr_2622" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2620", 1
  %"$$res_124_2623" = load %TName_Bool*, %TName_Bool** %"$res_124", align 8
  %"$BoolUtils.andb_call_2624" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2621"(i8* %"$BoolUtils.andb_envptr_2622", %TName_Bool* %"$$res_124_2623"), !dbg !166
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2624", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8, !dbg !166
  %"$BoolUtils.andb_198" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_197_2625" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8
  %"$$BoolUtils.andb_197_fptr_2626" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2625", 0
  %"$$BoolUtils.andb_197_envptr_2627" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2625", 1
  %"$$res__127_2628" = load %TName_Bool*, %TName_Bool** %"$res__127", align 8
  %"$$BoolUtils.andb_197_call_2629" = call %TName_Bool* %"$$BoolUtils.andb_197_fptr_2626"(i8* %"$$BoolUtils.andb_197_envptr_2627", %TName_Bool* %"$$res__127_2628"), !dbg !166
  store %TName_Bool* %"$$BoolUtils.andb_197_call_2629", %TName_Bool** %"$BoolUtils.andb_198", align 8, !dbg !166
  %"$$BoolUtils.andb_198_2630" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_198", align 8
  store %TName_Bool* %"$$BoolUtils.andb_198_2630", %TName_Bool** %"$res_128", align 8, !dbg !166
  %"$gasrem_2631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2632" = icmp ugt i64 1, %"$gasrem_2631"
  br i1 %"$gascmp_2632", label %"$out_of_gas_2633", label %"$have_gas_2634"

"$out_of_gas_2633":                               ; preds = %"$have_gas_2618"
  call void @_out_of_gas()
  br label %"$have_gas_2634"

"$have_gas_2634":                                 ; preds = %"$out_of_gas_2633", %"$have_gas_2618"
  %"$consume_2635" = sub i64 %"$gasrem_2631", 1
  store i64 %"$consume_2635", i64* @_gasrem, align 8
  %"$p_129" = alloca %Int256, align 8
  %"$p4_2636" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2637" = extractvalue %Uint32 %"$p4_2636", 0
  %"$valueof_2638" = zext i32 %"$valueof_2637" to i64
  %"$gasmul_2639" = mul i64 20, %"$valueof_2638"
  %"$gasmul_2640" = mul i64 %"$gasmul_2639", 4
  %"$gasrem_2641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2642" = icmp ugt i64 %"$gasmul_2640", %"$gasrem_2641"
  br i1 %"$gascmp_2642", label %"$out_of_gas_2643", label %"$have_gas_2644"

"$out_of_gas_2643":                               ; preds = %"$have_gas_2634"
  call void @_out_of_gas()
  br label %"$have_gas_2644"

"$have_gas_2644":                                 ; preds = %"$out_of_gas_2643", %"$have_gas_2634"
  %"$consume_2645" = sub i64 %"$gasrem_2641", %"$gasmul_2640"
  store i64 %"$consume_2645", i64* @_gasrem, align 8
  %"$execptr_load_2646" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2647" = alloca %Int256, align 8
  %"$t9_2648" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2648", %Int256* %"$pow_t9_2647", align 8
  %"$p4_2649" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2650" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2646", %Int256* %"$pow_t9_2647", %Uint32 %"$p4_2649"), !dbg !167
  %"$pow_2652" = load %Int256, %Int256* %"$pow_call_2650", align 8
  store %Int256 %"$pow_2652", %Int256* %"$p_129", align 8, !dbg !167
  %"$gasrem_2653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2654" = icmp ugt i64 1, %"$gasrem_2653"
  br i1 %"$gascmp_2654", label %"$out_of_gas_2655", label %"$have_gas_2656"

"$out_of_gas_2655":                               ; preds = %"$have_gas_2644"
  call void @_out_of_gas()
  br label %"$have_gas_2656"

"$have_gas_2656":                                 ; preds = %"$out_of_gas_2655", %"$have_gas_2644"
  %"$consume_2657" = sub i64 %"$gasrem_2653", 1
  store i64 %"$consume_2657", i64* @_gasrem, align 8
  %"$res_132" = alloca %TName_Bool*, align 8
  %"$gasrem_2658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2659" = icmp ugt i64 1, %"$gasrem_2658"
  br i1 %"$gascmp_2659", label %"$out_of_gas_2660", label %"$have_gas_2661"

"$out_of_gas_2660":                               ; preds = %"$have_gas_2656"
  call void @_out_of_gas()
  br label %"$have_gas_2661"

"$have_gas_2661":                                 ; preds = %"$out_of_gas_2660", %"$have_gas_2656"
  %"$consume_2662" = sub i64 %"$gasrem_2658", 1
  store i64 %"$consume_2662", i64* @_gasrem, align 8
  %"$ans_130" = alloca %Int256, align 8
  %"$gasrem_2663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2664" = icmp ugt i64 1, %"$gasrem_2663"
  br i1 %"$gascmp_2664", label %"$out_of_gas_2665", label %"$have_gas_2666"

"$out_of_gas_2665":                               ; preds = %"$have_gas_2661"
  call void @_out_of_gas()
  br label %"$have_gas_2666"

"$have_gas_2666":                                 ; preds = %"$out_of_gas_2665", %"$have_gas_2661"
  %"$consume_2667" = sub i64 %"$gasrem_2663", 1
  store i64 %"$consume_2667", i64* @_gasrem, align 8
  store %Int256 { i256 10020018009603360806534415361152051201024 }, %Int256* %"$ans_130", align 8, !dbg !168
  %"$gasrem_2668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2669" = icmp ugt i64 1, %"$gasrem_2668"
  br i1 %"$gascmp_2669", label %"$out_of_gas_2670", label %"$have_gas_2671"

"$out_of_gas_2670":                               ; preds = %"$have_gas_2666"
  call void @_out_of_gas()
  br label %"$have_gas_2671"

"$have_gas_2671":                                 ; preds = %"$out_of_gas_2670", %"$have_gas_2666"
  %"$consume_2672" = sub i64 %"$gasrem_2668", 1
  store i64 %"$consume_2672", i64* @_gasrem, align 8
  %"$res__131" = alloca %TName_Bool*, align 8
  %"$gasrem_2674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2675" = icmp ugt i64 16, %"$gasrem_2674"
  br i1 %"$gascmp_2675", label %"$out_of_gas_2676", label %"$have_gas_2677"

"$out_of_gas_2676":                               ; preds = %"$have_gas_2671"
  call void @_out_of_gas()
  br label %"$have_gas_2677"

"$have_gas_2677":                                 ; preds = %"$out_of_gas_2676", %"$have_gas_2671"
  %"$consume_2678" = sub i64 %"$gasrem_2674", 16
  store i64 %"$consume_2678", i64* @_gasrem, align 8
  %"$execptr_load_2679" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_129_2680" = alloca %Int256, align 8
  %"$$p_129_2681" = load %Int256, %Int256* %"$p_129", align 8
  store %Int256 %"$$p_129_2681", %Int256* %"$eq_$p_129_2680", align 8
  %"$eq_$ans_130_2682" = alloca %Int256, align 8
  %"$$ans_130_2683" = load %Int256, %Int256* %"$ans_130", align 8
  store %Int256 %"$$ans_130_2683", %Int256* %"$eq_$ans_130_2682", align 8
  %"$eq_call_2684" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2679", %Int256* %"$eq_$p_129_2680", %Int256* %"$eq_$ans_130_2682"), !dbg !169
  store %TName_Bool* %"$eq_call_2684", %TName_Bool** %"$res__131", align 8, !dbg !169
  %"$gasrem_2686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2687" = icmp ugt i64 1, %"$gasrem_2686"
  br i1 %"$gascmp_2687", label %"$out_of_gas_2688", label %"$have_gas_2689"

"$out_of_gas_2688":                               ; preds = %"$have_gas_2677"
  call void @_out_of_gas()
  br label %"$have_gas_2689"

"$have_gas_2689":                                 ; preds = %"$out_of_gas_2688", %"$have_gas_2677"
  %"$consume_2690" = sub i64 %"$gasrem_2686", 1
  store i64 %"$consume_2690", i64* @_gasrem, align 8
  %"$BoolUtils.andb_199" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2691" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2692" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2691", 0
  %"$BoolUtils.andb_envptr_2693" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2691", 1
  %"$$res_128_2694" = load %TName_Bool*, %TName_Bool** %"$res_128", align 8
  %"$BoolUtils.andb_call_2695" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2692"(i8* %"$BoolUtils.andb_envptr_2693", %TName_Bool* %"$$res_128_2694"), !dbg !170
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2695", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8, !dbg !170
  %"$BoolUtils.andb_200" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_199_2696" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8
  %"$$BoolUtils.andb_199_fptr_2697" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2696", 0
  %"$$BoolUtils.andb_199_envptr_2698" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2696", 1
  %"$$res__131_2699" = load %TName_Bool*, %TName_Bool** %"$res__131", align 8
  %"$$BoolUtils.andb_199_call_2700" = call %TName_Bool* %"$$BoolUtils.andb_199_fptr_2697"(i8* %"$$BoolUtils.andb_199_envptr_2698", %TName_Bool* %"$$res__131_2699"), !dbg !170
  store %TName_Bool* %"$$BoolUtils.andb_199_call_2700", %TName_Bool** %"$BoolUtils.andb_200", align 8, !dbg !170
  %"$$BoolUtils.andb_200_2701" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_200", align 8
  store %TName_Bool* %"$$BoolUtils.andb_200_2701", %TName_Bool** %"$res_132", align 8, !dbg !170
  %"$gasrem_2702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2703" = icmp ugt i64 1, %"$gasrem_2702"
  br i1 %"$gascmp_2703", label %"$out_of_gas_2704", label %"$have_gas_2705"

"$out_of_gas_2704":                               ; preds = %"$have_gas_2689"
  call void @_out_of_gas()
  br label %"$have_gas_2705"

"$have_gas_2705":                                 ; preds = %"$out_of_gas_2704", %"$have_gas_2689"
  %"$consume_2706" = sub i64 %"$gasrem_2702", 1
  store i64 %"$consume_2706", i64* @_gasrem, align 8
  %"$$res_132_2707" = load %TName_Bool*, %TName_Bool** %"$res_132", align 8
  store %TName_Bool* %"$$res_132_2707", %TName_Bool** %"$expr_205", align 8, !dbg !171
  %"$$expr_205_2708" = load %TName_Bool*, %TName_Bool** %"$expr_205", align 8
  ret %TName_Bool* %"$$expr_205_2708"
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
  %"$exprval_2709" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2710" = bitcast %TName_Bool* %"$exprval_2709" to i8*
  %"$execptr_load_2711" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2711", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_238", i8* %"$memvoidcast_2710")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin-pow.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_203", linkageName: "$fundef_203", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!15 = distinct !DISubprogram(name: "$fundef_201", linkageName: "$fundef_201", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 8, column: 5, scope: !15)
!17 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !18, file: !18, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DIFile(filename: ".", directory: ".")
!19 = !DILocation(line: 7, column: 3, scope: !17)
!20 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 1, column: 10, scope: !20)
!22 = !DILocation(line: 2, column: 10, scope: !20)
!23 = !DILocation(line: 3, column: 10, scope: !20)
!24 = !DILocation(line: 4, column: 10, scope: !20)
!25 = !DILocation(line: 6, column: 10, scope: !20)
!26 = !DILocation(line: 7, column: 10, scope: !20)
!27 = !DILocation(line: 8, column: 10, scope: !20)
!28 = !DILocation(line: 9, column: 10, scope: !20)
!29 = !DILocation(line: 10, column: 10, scope: !20)
!30 = !DILocation(line: 11, column: 10, scope: !20)
!31 = !DILocation(line: 12, column: 10, scope: !20)
!32 = !DILocation(line: 13, column: 10, scope: !20)
!33 = !DILocation(line: 14, column: 10, scope: !20)
!34 = !DILocation(line: 16, column: 11, scope: !20)
!35 = !DILocation(line: 20, column: 9, scope: !20)
!36 = !DILocation(line: 22, column: 13, scope: !20)
!37 = !DILocation(line: 23, column: 14, scope: !20)
!38 = !DILocation(line: 24, column: 3, scope: !20)
!39 = !DILocation(line: 27, column: 9, scope: !20)
!40 = !DILocation(line: 29, column: 13, scope: !20)
!41 = !DILocation(line: 30, column: 14, scope: !20)
!42 = !DILocation(line: 31, column: 3, scope: !20)
!43 = !DILocation(line: 34, column: 9, scope: !20)
!44 = !DILocation(line: 36, column: 13, scope: !20)
!45 = !DILocation(line: 37, column: 14, scope: !20)
!46 = !DILocation(line: 38, column: 3, scope: !20)
!47 = !DILocation(line: 41, column: 9, scope: !20)
!48 = !DILocation(line: 43, column: 13, scope: !20)
!49 = !DILocation(line: 44, column: 14, scope: !20)
!50 = !DILocation(line: 45, column: 3, scope: !20)
!51 = !DILocation(line: 50, column: 9, scope: !20)
!52 = !DILocation(line: 52, column: 13, scope: !20)
!53 = !DILocation(line: 53, column: 14, scope: !20)
!54 = !DILocation(line: 54, column: 3, scope: !20)
!55 = !DILocation(line: 57, column: 9, scope: !20)
!56 = !DILocation(line: 59, column: 13, scope: !20)
!57 = !DILocation(line: 60, column: 14, scope: !20)
!58 = !DILocation(line: 61, column: 3, scope: !20)
!59 = !DILocation(line: 64, column: 9, scope: !20)
!60 = !DILocation(line: 66, column: 13, scope: !20)
!61 = !DILocation(line: 67, column: 14, scope: !20)
!62 = !DILocation(line: 68, column: 3, scope: !20)
!63 = !DILocation(line: 71, column: 9, scope: !20)
!64 = !DILocation(line: 73, column: 13, scope: !20)
!65 = !DILocation(line: 74, column: 14, scope: !20)
!66 = !DILocation(line: 75, column: 3, scope: !20)
!67 = !DILocation(line: 80, column: 9, scope: !20)
!68 = !DILocation(line: 82, column: 13, scope: !20)
!69 = !DILocation(line: 83, column: 14, scope: !20)
!70 = !DILocation(line: 84, column: 3, scope: !20)
!71 = !DILocation(line: 87, column: 9, scope: !20)
!72 = !DILocation(line: 89, column: 13, scope: !20)
!73 = !DILocation(line: 90, column: 14, scope: !20)
!74 = !DILocation(line: 91, column: 3, scope: !20)
!75 = !DILocation(line: 94, column: 9, scope: !20)
!76 = !DILocation(line: 96, column: 13, scope: !20)
!77 = !DILocation(line: 97, column: 14, scope: !20)
!78 = !DILocation(line: 98, column: 3, scope: !20)
!79 = !DILocation(line: 103, column: 9, scope: !20)
!80 = !DILocation(line: 105, column: 13, scope: !20)
!81 = !DILocation(line: 106, column: 14, scope: !20)
!82 = !DILocation(line: 107, column: 3, scope: !20)
!83 = !DILocation(line: 110, column: 9, scope: !20)
!84 = !DILocation(line: 112, column: 13, scope: !20)
!85 = !DILocation(line: 113, column: 14, scope: !20)
!86 = !DILocation(line: 114, column: 3, scope: !20)
!87 = !DILocation(line: 117, column: 9, scope: !20)
!88 = !DILocation(line: 119, column: 13, scope: !20)
!89 = !DILocation(line: 120, column: 14, scope: !20)
!90 = !DILocation(line: 121, column: 3, scope: !20)
!91 = !DILocation(line: 126, column: 9, scope: !20)
!92 = !DILocation(line: 128, column: 13, scope: !20)
!93 = !DILocation(line: 129, column: 14, scope: !20)
!94 = !DILocation(line: 130, column: 3, scope: !20)
!95 = !DILocation(line: 133, column: 9, scope: !20)
!96 = !DILocation(line: 135, column: 13, scope: !20)
!97 = !DILocation(line: 136, column: 14, scope: !20)
!98 = !DILocation(line: 137, column: 3, scope: !20)
!99 = !DILocation(line: 140, column: 9, scope: !20)
!100 = !DILocation(line: 142, column: 13, scope: !20)
!101 = !DILocation(line: 143, column: 14, scope: !20)
!102 = !DILocation(line: 144, column: 3, scope: !20)
!103 = !DILocation(line: 147, column: 9, scope: !20)
!104 = !DILocation(line: 149, column: 13, scope: !20)
!105 = !DILocation(line: 150, column: 14, scope: !20)
!106 = !DILocation(line: 151, column: 3, scope: !20)
!107 = !DILocation(line: 156, column: 9, scope: !20)
!108 = !DILocation(line: 158, column: 13, scope: !20)
!109 = !DILocation(line: 159, column: 14, scope: !20)
!110 = !DILocation(line: 160, column: 3, scope: !20)
!111 = !DILocation(line: 163, column: 9, scope: !20)
!112 = !DILocation(line: 165, column: 13, scope: !20)
!113 = !DILocation(line: 166, column: 14, scope: !20)
!114 = !DILocation(line: 167, column: 3, scope: !20)
!115 = !DILocation(line: 170, column: 9, scope: !20)
!116 = !DILocation(line: 172, column: 13, scope: !20)
!117 = !DILocation(line: 173, column: 14, scope: !20)
!118 = !DILocation(line: 174, column: 3, scope: !20)
!119 = !DILocation(line: 177, column: 9, scope: !20)
!120 = !DILocation(line: 179, column: 13, scope: !20)
!121 = !DILocation(line: 180, column: 14, scope: !20)
!122 = !DILocation(line: 181, column: 3, scope: !20)
!123 = !DILocation(line: 186, column: 9, scope: !20)
!124 = !DILocation(line: 188, column: 13, scope: !20)
!125 = !DILocation(line: 189, column: 14, scope: !20)
!126 = !DILocation(line: 190, column: 3, scope: !20)
!127 = !DILocation(line: 193, column: 9, scope: !20)
!128 = !DILocation(line: 195, column: 13, scope: !20)
!129 = !DILocation(line: 196, column: 14, scope: !20)
!130 = !DILocation(line: 197, column: 3, scope: !20)
!131 = !DILocation(line: 200, column: 9, scope: !20)
!132 = !DILocation(line: 202, column: 13, scope: !20)
!133 = !DILocation(line: 203, column: 14, scope: !20)
!134 = !DILocation(line: 204, column: 3, scope: !20)
!135 = !DILocation(line: 207, column: 9, scope: !20)
!136 = !DILocation(line: 209, column: 13, scope: !20)
!137 = !DILocation(line: 210, column: 14, scope: !20)
!138 = !DILocation(line: 211, column: 3, scope: !20)
!139 = !DILocation(line: 216, column: 9, scope: !20)
!140 = !DILocation(line: 218, column: 13, scope: !20)
!141 = !DILocation(line: 219, column: 14, scope: !20)
!142 = !DILocation(line: 220, column: 3, scope: !20)
!143 = !DILocation(line: 223, column: 9, scope: !20)
!144 = !DILocation(line: 225, column: 13, scope: !20)
!145 = !DILocation(line: 226, column: 14, scope: !20)
!146 = !DILocation(line: 227, column: 3, scope: !20)
!147 = !DILocation(line: 230, column: 9, scope: !20)
!148 = !DILocation(line: 232, column: 13, scope: !20)
!149 = !DILocation(line: 233, column: 14, scope: !20)
!150 = !DILocation(line: 234, column: 3, scope: !20)
!151 = !DILocation(line: 237, column: 9, scope: !20)
!152 = !DILocation(line: 239, column: 13, scope: !20)
!153 = !DILocation(line: 240, column: 14, scope: !20)
!154 = !DILocation(line: 241, column: 3, scope: !20)
!155 = !DILocation(line: 246, column: 9, scope: !20)
!156 = !DILocation(line: 248, column: 13, scope: !20)
!157 = !DILocation(line: 249, column: 14, scope: !20)
!158 = !DILocation(line: 250, column: 3, scope: !20)
!159 = !DILocation(line: 253, column: 9, scope: !20)
!160 = !DILocation(line: 255, column: 13, scope: !20)
!161 = !DILocation(line: 256, column: 14, scope: !20)
!162 = !DILocation(line: 257, column: 3, scope: !20)
!163 = !DILocation(line: 260, column: 9, scope: !20)
!164 = !DILocation(line: 262, column: 13, scope: !20)
!165 = !DILocation(line: 263, column: 14, scope: !20)
!166 = !DILocation(line: 264, column: 3, scope: !20)
!167 = !DILocation(line: 267, column: 9, scope: !20)
!168 = !DILocation(line: 269, column: 13, scope: !20)
!169 = !DILocation(line: 270, column: 14, scope: !20)
!170 = !DILocation(line: 271, column: 3, scope: !20)
!171 = !DILocation(line: 276, column: 1, scope: !20)
