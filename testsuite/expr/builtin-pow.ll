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
%"$TyDescrTy_ADTTyp_242" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_241"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_241" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_243"**, %"$TyDescrTy_ADTTyp_242"* }
%"$TyDescrTy_ADTTyp_Constr_243" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_2748" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2749" = type { %ParamDescrString, i32, %"$ParamDescr_2748"* }
%"$$fundef_209_env_260" = type { %TName_Bool* }
%"$$fundef_207_env_261" = type {}
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
@"$TyDescr_Bystr_Prim_239" = global %"$TyDescrTy_PrimTyp_212" { i32 7, i32 0 }
@"$TyDescr_Bystr_240" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_212"* @"$TyDescr_Bystr_Prim_239" to i8*) }
@"$TyDescr_ADT_Bool_244" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_241"* @"$TyDescr_Bool_ADTTyp_Specl_257" to i8*) }
@"$TyDescr_Bool_ADTTyp_248" = unnamed_addr constant %"$TyDescrTy_ADTTyp_242" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_259", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_241"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_241"*], [1 x %"$TyDescrTy_ADTTyp_Specl_241"*]* @"$TyDescr_Bool_ADTTyp_m_specls_258", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_249" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_250" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_251" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_243" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_250", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_249", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_252" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_253" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_254" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_243" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_253", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_252", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_255" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_243"*] [%"$TyDescrTy_ADTTyp_Constr_243"* @"$TyDescr_Bool_True_ADTTyp_Constr_251", %"$TyDescrTy_ADTTyp_Constr_243"* @"$TyDescr_Bool_False_ADTTyp_Constr_254"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_256" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_257" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_241" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_256", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_243"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_243"*], [2 x %"$TyDescrTy_ADTTyp_Constr_243"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_255", i32 0, i32 0), %"$TyDescrTy_ADTTyp_242"* @"$TyDescr_Bool_ADTTyp_248" }
@"$TyDescr_Bool_ADTTyp_m_specls_258" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_241"*] [%"$TyDescrTy_ADTTyp_Specl_241"* @"$TyDescr_Bool_ADTTyp_Specl_257"]
@"$TyDescr_ADT_Bool_259" = unnamed_addr constant [4 x i8] c"Bool"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_236", %_TyDescrTy_Typ* @"$TyDescr_Int64_218", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_244", %_TyDescrTy_Typ* @"$TyDescr_Uint256_228", %_TyDescrTy_Typ* @"$TyDescr_Uint32_216", %_TyDescrTy_Typ* @"$TyDescr_Uint64_220", %_TyDescrTy_Typ* @"$TyDescr_Bnum_232", %_TyDescrTy_Typ* @"$TyDescr_Uint128_224", %_TyDescrTy_Typ* @"$TyDescr_Exception_238", %_TyDescrTy_Typ* @"$TyDescr_String_230", %_TyDescrTy_Typ* @"$TyDescr_Int256_226", %_TyDescrTy_Typ* @"$TyDescr_Int128_222", %_TyDescrTy_Typ* @"$TyDescr_Bystr_240", %_TyDescrTy_Typ* @"$TyDescr_Message_234", %_TyDescrTy_Typ* @"$TyDescr_Int32_214"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_2748"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2749"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_209"(%"$$fundef_209_env_260"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_209_env_b_273" = getelementptr inbounds %"$$fundef_209_env_260", %"$$fundef_209_env_260"* %0, i32 0, i32 0
  %"$b_envload_274" = load %TName_Bool*, %TName_Bool** %"$$fundef_209_env_b_273", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_274", %TName_Bool** %b, align 8
  %"$retval_210" = alloca %TName_Bool*, align 8
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 2, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %entry
  %"$consume_279" = sub i64 %"$gasrem_275", 2
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %"$b_281" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_282" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_281", i32 0, i32 0
  %"$b_tag_283" = load i8, i8* %"$b_tag_282", align 1
  switch i8 %"$b_tag_283", label %"$empty_default_284" [
    i8 1, label %"$False_285"
    i8 0, label %"$True_295"
  ]

"$False_285":                                     ; preds = %"$have_gas_278"
  %"$b_286" = bitcast %TName_Bool* %"$b_281" to %CName_False*
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$False_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$False_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$adtval_292_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_292_salloc" = call i8* @_salloc(i8* %"$adtval_292_load", i64 1)
  %"$adtval_292" = bitcast i8* %"$adtval_292_salloc" to %CName_False*
  %"$adtgep_293" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_292", i32 0, i32 0
  store i8 1, i8* %"$adtgep_293", align 1
  %"$adtptr_294" = bitcast %CName_False* %"$adtval_292" to %TName_Bool*
  store %TName_Bool* %"$adtptr_294", %TName_Bool** %"$retval_210", align 8
  br label %"$matchsucc_280"

"$True_295":                                      ; preds = %"$have_gas_278"
  %"$b_296" = bitcast %TName_Bool* %"$b_281" to %CName_True*
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$True_295"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$True_295"
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_210", align 8
  br label %"$matchsucc_280"

"$empty_default_284":                             ; preds = %"$have_gas_278"
  br label %"$matchsucc_280"

"$matchsucc_280":                                 ; preds = %"$have_gas_300", %"$have_gas_290", %"$empty_default_284"
  %"$$retval_210_302" = load %TName_Bool*, %TName_Bool** %"$retval_210", align 8
  ret %TName_Bool* %"$$retval_210_302"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_207"(%"$$fundef_207_env_261"* %0, %TName_Bool* %1) {
entry:
  %"$retval_208" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %entry
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$$fundef_209_envp_267_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_209_envp_267_salloc" = call i8* @_salloc(i8* %"$$fundef_209_envp_267_load", i64 8)
  %"$$fundef_209_envp_267" = bitcast i8* %"$$fundef_209_envp_267_salloc" to %"$$fundef_209_env_260"*
  %"$$fundef_209_env_voidp_269" = bitcast %"$$fundef_209_env_260"* %"$$fundef_209_envp_267" to i8*
  %"$$fundef_209_cloval_270" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_209_env_260"*, %TName_Bool*)* @"$fundef_209" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_209_env_voidp_269", 1
  %"$$fundef_209_env_b_271" = getelementptr inbounds %"$$fundef_209_env_260", %"$$fundef_209_env_260"* %"$$fundef_209_envp_267", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_209_env_b_271", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_209_cloval_270", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_208", align 8
  %"$$retval_208_272" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_208", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_208_272"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 5, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %entry
  %"$consume_307" = sub i64 %"$gasrem_303", 5
  store i64 %"$consume_307", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_309" = icmp ugt i64 7, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_306"
  %"$consume_312" = sub i64 %"$gasrem_308", 7
  store i64 %"$consume_312", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_311"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_207_env_261"*, %TName_Bool*)* @"$fundef_207" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 196, %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_316"
  %"$consume_325" = sub i64 %"$gasrem_321", 196
  store i64 %"$consume_325", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 20, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_324"
  %"$consume_330" = sub i64 %"$gasrem_326", 20
  store i64 %"$consume_330", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 12, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 12
  store i64 %"$consume_335", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_337" = icmp ugt i64 2, %"$gasrem_336"
  br i1 %"$gascmp_337", label %"$out_of_gas_338", label %"$have_gas_339"

"$out_of_gas_338":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_339"

"$have_gas_339":                                  ; preds = %"$out_of_gas_338", %"$have_gas_334"
  %"$consume_340" = sub i64 %"$gasrem_336", 2
  store i64 %"$consume_340", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_211" = alloca %TName_Bool*, align 8
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %entry
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %p1 = alloca %Uint32, align 8
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_344"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %p1, align 4
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_349"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_349"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %p2 = alloca %Uint32, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_354"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %p2, align 4
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_359"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %p3 = alloca %Uint32, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  store %Uint32 { i32 4 }, %Uint32* %p3, align 4
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %p4 = alloca %Uint32, align 8
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_374"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  store %Uint32 { i32 10 }, %Uint32* %p4, align 4
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 1, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_379"
  %"$consume_385" = sub i64 %"$gasrem_381", 1
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %t1 = alloca %Uint32, align 8
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 1, %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_384"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_384"
  %"$consume_390" = sub i64 %"$gasrem_386", 1
  store i64 %"$consume_390", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %t1, align 4
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 1, %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$have_gas_389"
  %"$consume_395" = sub i64 %"$gasrem_391", 1
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %t2 = alloca %Int32, align 8
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 1, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %"$have_gas_394"
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %"$have_gas_394"
  %"$consume_400" = sub i64 %"$gasrem_396", 1
  store i64 %"$consume_400", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %t2, align 4
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 1, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %"$have_gas_399"
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %"$have_gas_399"
  %"$consume_405" = sub i64 %"$gasrem_401", 1
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %t3 = alloca %Uint64, align 8
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$have_gas_404"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$have_gas_404"
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %t3, align 8
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_409"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %t4 = alloca %Int64, align 8
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_414"
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem, align 8
  store %Int64 { i64 -101 }, %Int64* %t4, align 8
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_419"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %t5 = alloca %Uint128, align 8
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 1, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_424"
  %"$consume_430" = sub i64 %"$gasrem_426", 1
  store i64 %"$consume_430", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %t5, align 8
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_429"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %t6 = alloca %Int128, align 8
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$have_gas_434"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  store %Int128 { i128 501 }, %Int128* %t6, align 8
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_439"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %t7 = alloca %Uint256, align 8
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_444"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  store %Uint256 { i256 10001 }, %Uint256* %t7, align 8
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %t8 = alloca %Int256, align 8
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_454"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  store %Int256 { i256 -10001 }, %Int256* %t8, align 8
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_459"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %t9 = alloca %Int256, align 8
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_464"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  store %Int256 { i256 10002 }, %Int256* %t9, align 8
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_469"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  %res = alloca %TName_Bool*, align 8
  %"$gasrem_476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_474"
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem, align 8
  %"$adtval_481_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_481_salloc" = call i8* @_salloc(i8* %"$adtval_481_load", i64 1)
  %"$adtval_481" = bitcast i8* %"$adtval_481_salloc" to %CName_True*
  %"$adtgep_482" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_481", i32 0, i32 0
  store i8 0, i8* %"$adtgep_482", align 1
  %"$adtptr_483" = bitcast %CName_True* %"$adtval_481" to %TName_Bool*
  store %TName_Bool* %"$adtptr_483", %TName_Bool** %res, align 8
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_479"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_479"
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  %p = alloca %Uint32, align 8
  %"$p1_489" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_490" = extractvalue %Uint32 %"$p1_489", 0
  %"$valueof_491" = zext i32 %"$valueof_490" to i64
  %"$gasmul_492" = mul i64 20, %"$valueof_491"
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 %"$gasmul_492", %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_487"
  %"$consume_497" = sub i64 %"$gasrem_493", %"$gasmul_492"
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %"$t1_498" = load %Uint32, %Uint32* %t1, align 4
  %"$p1_499" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_500" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_498", %Uint32 %"$p1_499")
  store %Uint32 %"$pow_call_500", %Uint32* %p, align 4
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_496"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %"$res_6" = alloca %TName_Bool*, align 8
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_504"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %ans = alloca %Uint32, align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %ans, align 4
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 1, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_514"
  %"$consume_520" = sub i64 %"$gasrem_516", 1
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %res_ = alloca %TName_Bool*, align 8
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 4, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$have_gas_519"
  %"$consume_525" = sub i64 %"$gasrem_521", 4
  store i64 %"$consume_525", i64* @_gasrem, align 8
  %"$execptr_load_526" = load i8*, i8** @_execptr, align 8
  %"$p_527" = load %Uint32, %Uint32* %p, align 4
  %"$ans_528" = load %Uint32, %Uint32* %ans, align 4
  %"$eq_call_529" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_526", %Uint32 %"$p_527", %Uint32 %"$ans_528")
  store %TName_Bool* %"$eq_call_529", %TName_Bool** %res_, align 8
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_524"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$BoolUtils.andb_139" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_536" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_537" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_536", 0
  %"$BoolUtils.andb_envptr_538" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_536", 1
  %"$res_539" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$BoolUtils.andb_call_540" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_537"(i8* %"$BoolUtils.andb_envptr_538", %TName_Bool* %"$res_539")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_540", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$BoolUtils.andb_140" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_139_541" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_fptr_542" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_541", 0
  %"$$BoolUtils.andb_139_envptr_543" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_541", 1
  %"$res__544" = load %TName_Bool*, %TName_Bool** %res_, align 8
  %"$$BoolUtils.andb_139_call_545" = call %TName_Bool* %"$$BoolUtils.andb_139_fptr_542"(i8* %"$$BoolUtils.andb_139_envptr_543", %TName_Bool* %"$res__544")
  store %TName_Bool* %"$$BoolUtils.andb_139_call_545", %TName_Bool** %"$BoolUtils.andb_140", align 8
  %"$$BoolUtils.andb_140_546" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_140", align 8
  store %TName_Bool* %"$$BoolUtils.andb_140_546", %TName_Bool** %"$res_6", align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_534"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$p_7" = alloca %Uint32, align 8
  %"$p2_552" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_553" = extractvalue %Uint32 %"$p2_552", 0
  %"$valueof_554" = zext i32 %"$valueof_553" to i64
  %"$gasmul_555" = mul i64 20, %"$valueof_554"
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 %"$gasmul_555", %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_550"
  %"$consume_560" = sub i64 %"$gasrem_556", %"$gasmul_555"
  store i64 %"$consume_560", i64* @_gasrem, align 8
  %"$t1_561" = load %Uint32, %Uint32* %t1, align 4
  %"$p2_562" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_563" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_561", %Uint32 %"$p2_562")
  store %Uint32 %"$pow_call_563", %Uint32* %"$p_7", align 4
  %"$gasrem_564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_565" = icmp ugt i64 1, %"$gasrem_564"
  br i1 %"$gascmp_565", label %"$out_of_gas_566", label %"$have_gas_567"

"$out_of_gas_566":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_567"

"$have_gas_567":                                  ; preds = %"$out_of_gas_566", %"$have_gas_559"
  %"$consume_568" = sub i64 %"$gasrem_564", 1
  store i64 %"$consume_568", i64* @_gasrem, align 8
  %"$res_10" = alloca %TName_Bool*, align 8
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_567"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_567"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  %"$ans_8" = alloca %Uint32, align 8
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 1, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_572"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_572"
  %"$consume_578" = sub i64 %"$gasrem_574", 1
  store i64 %"$consume_578", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %"$ans_8", align 4
  %"$gasrem_579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_580" = icmp ugt i64 1, %"$gasrem_579"
  br i1 %"$gascmp_580", label %"$out_of_gas_581", label %"$have_gas_582"

"$out_of_gas_581":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_582"

"$have_gas_582":                                  ; preds = %"$out_of_gas_581", %"$have_gas_577"
  %"$consume_583" = sub i64 %"$gasrem_579", 1
  store i64 %"$consume_583", i64* @_gasrem, align 8
  %"$res__9" = alloca %TName_Bool*, align 8
  %"$gasrem_584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_585" = icmp ugt i64 4, %"$gasrem_584"
  br i1 %"$gascmp_585", label %"$out_of_gas_586", label %"$have_gas_587"

"$out_of_gas_586":                                ; preds = %"$have_gas_582"
  call void @_out_of_gas()
  br label %"$have_gas_587"

"$have_gas_587":                                  ; preds = %"$out_of_gas_586", %"$have_gas_582"
  %"$consume_588" = sub i64 %"$gasrem_584", 4
  store i64 %"$consume_588", i64* @_gasrem, align 8
  %"$execptr_load_589" = load i8*, i8** @_execptr, align 8
  %"$$p_7_590" = load %Uint32, %Uint32* %"$p_7", align 4
  %"$$ans_8_591" = load %Uint32, %Uint32* %"$ans_8", align 4
  %"$eq_call_592" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_589", %Uint32 %"$$p_7_590", %Uint32 %"$$ans_8_591")
  store %TName_Bool* %"$eq_call_592", %TName_Bool** %"$res__9", align 8
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 1, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %"$have_gas_587"
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %"$have_gas_587"
  %"$consume_598" = sub i64 %"$gasrem_594", 1
  store i64 %"$consume_598", i64* @_gasrem, align 8
  %"$BoolUtils.andb_141" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_599" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_600" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_599", 0
  %"$BoolUtils.andb_envptr_601" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_599", 1
  %"$$res_6_602" = load %TName_Bool*, %TName_Bool** %"$res_6", align 8
  %"$BoolUtils.andb_call_603" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_600"(i8* %"$BoolUtils.andb_envptr_601", %TName_Bool* %"$$res_6_602")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_603", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$BoolUtils.andb_142" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_141_604" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$$BoolUtils.andb_141_fptr_605" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_604", 0
  %"$$BoolUtils.andb_141_envptr_606" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_604", 1
  %"$$res__9_607" = load %TName_Bool*, %TName_Bool** %"$res__9", align 8
  %"$$BoolUtils.andb_141_call_608" = call %TName_Bool* %"$$BoolUtils.andb_141_fptr_605"(i8* %"$$BoolUtils.andb_141_envptr_606", %TName_Bool* %"$$res__9_607")
  store %TName_Bool* %"$$BoolUtils.andb_141_call_608", %TName_Bool** %"$BoolUtils.andb_142", align 8
  %"$$BoolUtils.andb_142_609" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_142", align 8
  store %TName_Bool* %"$$BoolUtils.andb_142_609", %TName_Bool** %"$res_10", align 8
  %"$gasrem_610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_611" = icmp ugt i64 1, %"$gasrem_610"
  br i1 %"$gascmp_611", label %"$out_of_gas_612", label %"$have_gas_613"

"$out_of_gas_612":                                ; preds = %"$have_gas_597"
  call void @_out_of_gas()
  br label %"$have_gas_613"

"$have_gas_613":                                  ; preds = %"$out_of_gas_612", %"$have_gas_597"
  %"$consume_614" = sub i64 %"$gasrem_610", 1
  store i64 %"$consume_614", i64* @_gasrem, align 8
  %"$p_11" = alloca %Uint32, align 8
  %"$p3_615" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_616" = extractvalue %Uint32 %"$p3_615", 0
  %"$valueof_617" = zext i32 %"$valueof_616" to i64
  %"$gasmul_618" = mul i64 20, %"$valueof_617"
  %"$gasrem_619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_620" = icmp ugt i64 %"$gasmul_618", %"$gasrem_619"
  br i1 %"$gascmp_620", label %"$out_of_gas_621", label %"$have_gas_622"

"$out_of_gas_621":                                ; preds = %"$have_gas_613"
  call void @_out_of_gas()
  br label %"$have_gas_622"

"$have_gas_622":                                  ; preds = %"$out_of_gas_621", %"$have_gas_613"
  %"$consume_623" = sub i64 %"$gasrem_619", %"$gasmul_618"
  store i64 %"$consume_623", i64* @_gasrem, align 8
  %"$t1_624" = load %Uint32, %Uint32* %t1, align 4
  %"$p3_625" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_626" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_624", %Uint32 %"$p3_625")
  store %Uint32 %"$pow_call_626", %Uint32* %"$p_11", align 4
  %"$gasrem_627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_628" = icmp ugt i64 1, %"$gasrem_627"
  br i1 %"$gascmp_628", label %"$out_of_gas_629", label %"$have_gas_630"

"$out_of_gas_629":                                ; preds = %"$have_gas_622"
  call void @_out_of_gas()
  br label %"$have_gas_630"

"$have_gas_630":                                  ; preds = %"$out_of_gas_629", %"$have_gas_622"
  %"$consume_631" = sub i64 %"$gasrem_627", 1
  store i64 %"$consume_631", i64* @_gasrem, align 8
  %"$res_14" = alloca %TName_Bool*, align 8
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_630"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_630"
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %"$ans_12" = alloca %Uint32, align 8
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 1, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_635"
  %"$consume_641" = sub i64 %"$gasrem_637", 1
  store i64 %"$consume_641", i64* @_gasrem, align 8
  store %Uint32 { i32 16 }, %Uint32* %"$ans_12", align 4
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 1, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %"$have_gas_640"
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %"$have_gas_640"
  %"$consume_646" = sub i64 %"$gasrem_642", 1
  store i64 %"$consume_646", i64* @_gasrem, align 8
  %"$res__13" = alloca %TName_Bool*, align 8
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 4, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$have_gas_645"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$have_gas_645"
  %"$consume_651" = sub i64 %"$gasrem_647", 4
  store i64 %"$consume_651", i64* @_gasrem, align 8
  %"$execptr_load_652" = load i8*, i8** @_execptr, align 8
  %"$$p_11_653" = load %Uint32, %Uint32* %"$p_11", align 4
  %"$$ans_12_654" = load %Uint32, %Uint32* %"$ans_12", align 4
  %"$eq_call_655" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_652", %Uint32 %"$$p_11_653", %Uint32 %"$$ans_12_654")
  store %TName_Bool* %"$eq_call_655", %TName_Bool** %"$res__13", align 8
  %"$gasrem_657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_658" = icmp ugt i64 1, %"$gasrem_657"
  br i1 %"$gascmp_658", label %"$out_of_gas_659", label %"$have_gas_660"

"$out_of_gas_659":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_660"

"$have_gas_660":                                  ; preds = %"$out_of_gas_659", %"$have_gas_650"
  %"$consume_661" = sub i64 %"$gasrem_657", 1
  store i64 %"$consume_661", i64* @_gasrem, align 8
  %"$BoolUtils.andb_143" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_662" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_663" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_662", 0
  %"$BoolUtils.andb_envptr_664" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_662", 1
  %"$$res_10_665" = load %TName_Bool*, %TName_Bool** %"$res_10", align 8
  %"$BoolUtils.andb_call_666" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_663"(i8* %"$BoolUtils.andb_envptr_664", %TName_Bool* %"$$res_10_665")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_666", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$BoolUtils.andb_144" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_143_667" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$$BoolUtils.andb_143_fptr_668" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_667", 0
  %"$$BoolUtils.andb_143_envptr_669" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_667", 1
  %"$$res__13_670" = load %TName_Bool*, %TName_Bool** %"$res__13", align 8
  %"$$BoolUtils.andb_143_call_671" = call %TName_Bool* %"$$BoolUtils.andb_143_fptr_668"(i8* %"$$BoolUtils.andb_143_envptr_669", %TName_Bool* %"$$res__13_670")
  store %TName_Bool* %"$$BoolUtils.andb_143_call_671", %TName_Bool** %"$BoolUtils.andb_144", align 8
  %"$$BoolUtils.andb_144_672" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_144", align 8
  store %TName_Bool* %"$$BoolUtils.andb_144_672", %TName_Bool** %"$res_14", align 8
  %"$gasrem_673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_674" = icmp ugt i64 1, %"$gasrem_673"
  br i1 %"$gascmp_674", label %"$out_of_gas_675", label %"$have_gas_676"

"$out_of_gas_675":                                ; preds = %"$have_gas_660"
  call void @_out_of_gas()
  br label %"$have_gas_676"

"$have_gas_676":                                  ; preds = %"$out_of_gas_675", %"$have_gas_660"
  %"$consume_677" = sub i64 %"$gasrem_673", 1
  store i64 %"$consume_677", i64* @_gasrem, align 8
  %"$p_15" = alloca %Uint32, align 8
  %"$p4_678" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_679" = extractvalue %Uint32 %"$p4_678", 0
  %"$valueof_680" = zext i32 %"$valueof_679" to i64
  %"$gasmul_681" = mul i64 20, %"$valueof_680"
  %"$gasrem_682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_683" = icmp ugt i64 %"$gasmul_681", %"$gasrem_682"
  br i1 %"$gascmp_683", label %"$out_of_gas_684", label %"$have_gas_685"

"$out_of_gas_684":                                ; preds = %"$have_gas_676"
  call void @_out_of_gas()
  br label %"$have_gas_685"

"$have_gas_685":                                  ; preds = %"$out_of_gas_684", %"$have_gas_676"
  %"$consume_686" = sub i64 %"$gasrem_682", %"$gasmul_681"
  store i64 %"$consume_686", i64* @_gasrem, align 8
  %"$t1_687" = load %Uint32, %Uint32* %t1, align 4
  %"$p4_688" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_689" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_687", %Uint32 %"$p4_688")
  store %Uint32 %"$pow_call_689", %Uint32* %"$p_15", align 4
  %"$gasrem_690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_691" = icmp ugt i64 1, %"$gasrem_690"
  br i1 %"$gascmp_691", label %"$out_of_gas_692", label %"$have_gas_693"

"$out_of_gas_692":                                ; preds = %"$have_gas_685"
  call void @_out_of_gas()
  br label %"$have_gas_693"

"$have_gas_693":                                  ; preds = %"$out_of_gas_692", %"$have_gas_685"
  %"$consume_694" = sub i64 %"$gasrem_690", 1
  store i64 %"$consume_694", i64* @_gasrem, align 8
  %"$res_18" = alloca %TName_Bool*, align 8
  %"$gasrem_695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_696" = icmp ugt i64 1, %"$gasrem_695"
  br i1 %"$gascmp_696", label %"$out_of_gas_697", label %"$have_gas_698"

"$out_of_gas_697":                                ; preds = %"$have_gas_693"
  call void @_out_of_gas()
  br label %"$have_gas_698"

"$have_gas_698":                                  ; preds = %"$out_of_gas_697", %"$have_gas_693"
  %"$consume_699" = sub i64 %"$gasrem_695", 1
  store i64 %"$consume_699", i64* @_gasrem, align 8
  %"$ans_16" = alloca %Uint32, align 8
  %"$gasrem_700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_701" = icmp ugt i64 1, %"$gasrem_700"
  br i1 %"$gascmp_701", label %"$out_of_gas_702", label %"$have_gas_703"

"$out_of_gas_702":                                ; preds = %"$have_gas_698"
  call void @_out_of_gas()
  br label %"$have_gas_703"

"$have_gas_703":                                  ; preds = %"$out_of_gas_702", %"$have_gas_698"
  %"$consume_704" = sub i64 %"$gasrem_700", 1
  store i64 %"$consume_704", i64* @_gasrem, align 8
  store %Uint32 { i32 1024 }, %Uint32* %"$ans_16", align 4
  %"$gasrem_705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_706" = icmp ugt i64 1, %"$gasrem_705"
  br i1 %"$gascmp_706", label %"$out_of_gas_707", label %"$have_gas_708"

"$out_of_gas_707":                                ; preds = %"$have_gas_703"
  call void @_out_of_gas()
  br label %"$have_gas_708"

"$have_gas_708":                                  ; preds = %"$out_of_gas_707", %"$have_gas_703"
  %"$consume_709" = sub i64 %"$gasrem_705", 1
  store i64 %"$consume_709", i64* @_gasrem, align 8
  %"$res__17" = alloca %TName_Bool*, align 8
  %"$gasrem_710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_711" = icmp ugt i64 4, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %"$have_gas_708"
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %"$have_gas_708"
  %"$consume_714" = sub i64 %"$gasrem_710", 4
  store i64 %"$consume_714", i64* @_gasrem, align 8
  %"$execptr_load_715" = load i8*, i8** @_execptr, align 8
  %"$$p_15_716" = load %Uint32, %Uint32* %"$p_15", align 4
  %"$$ans_16_717" = load %Uint32, %Uint32* %"$ans_16", align 4
  %"$eq_call_718" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_715", %Uint32 %"$$p_15_716", %Uint32 %"$$ans_16_717")
  store %TName_Bool* %"$eq_call_718", %TName_Bool** %"$res__17", align 8
  %"$gasrem_720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_721" = icmp ugt i64 1, %"$gasrem_720"
  br i1 %"$gascmp_721", label %"$out_of_gas_722", label %"$have_gas_723"

"$out_of_gas_722":                                ; preds = %"$have_gas_713"
  call void @_out_of_gas()
  br label %"$have_gas_723"

"$have_gas_723":                                  ; preds = %"$out_of_gas_722", %"$have_gas_713"
  %"$consume_724" = sub i64 %"$gasrem_720", 1
  store i64 %"$consume_724", i64* @_gasrem, align 8
  %"$BoolUtils.andb_145" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_725" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_726" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_725", 0
  %"$BoolUtils.andb_envptr_727" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_725", 1
  %"$$res_14_728" = load %TName_Bool*, %TName_Bool** %"$res_14", align 8
  %"$BoolUtils.andb_call_729" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_726"(i8* %"$BoolUtils.andb_envptr_727", %TName_Bool* %"$$res_14_728")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_729", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$BoolUtils.andb_146" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_145_730" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$$BoolUtils.andb_145_fptr_731" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_730", 0
  %"$$BoolUtils.andb_145_envptr_732" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_730", 1
  %"$$res__17_733" = load %TName_Bool*, %TName_Bool** %"$res__17", align 8
  %"$$BoolUtils.andb_145_call_734" = call %TName_Bool* %"$$BoolUtils.andb_145_fptr_731"(i8* %"$$BoolUtils.andb_145_envptr_732", %TName_Bool* %"$$res__17_733")
  store %TName_Bool* %"$$BoolUtils.andb_145_call_734", %TName_Bool** %"$BoolUtils.andb_146", align 8
  %"$$BoolUtils.andb_146_735" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_146", align 8
  store %TName_Bool* %"$$BoolUtils.andb_146_735", %TName_Bool** %"$res_18", align 8
  %"$gasrem_736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_737" = icmp ugt i64 1, %"$gasrem_736"
  br i1 %"$gascmp_737", label %"$out_of_gas_738", label %"$have_gas_739"

"$out_of_gas_738":                                ; preds = %"$have_gas_723"
  call void @_out_of_gas()
  br label %"$have_gas_739"

"$have_gas_739":                                  ; preds = %"$out_of_gas_738", %"$have_gas_723"
  %"$consume_740" = sub i64 %"$gasrem_736", 1
  store i64 %"$consume_740", i64* @_gasrem, align 8
  %"$p_19" = alloca %Int32, align 8
  %"$p1_741" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_742" = extractvalue %Uint32 %"$p1_741", 0
  %"$valueof_743" = zext i32 %"$valueof_742" to i64
  %"$gasmul_744" = mul i64 20, %"$valueof_743"
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 %"$gasmul_744", %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %"$have_gas_739"
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %"$have_gas_739"
  %"$consume_749" = sub i64 %"$gasrem_745", %"$gasmul_744"
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %"$t2_750" = load %Int32, %Int32* %t2, align 4
  %"$p1_751" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_752" = call %Int32 @_pow_Int32(%Int32 %"$t2_750", %Uint32 %"$p1_751")
  store %Int32 %"$pow_call_752", %Int32* %"$p_19", align 4
  %"$gasrem_753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_754" = icmp ugt i64 1, %"$gasrem_753"
  br i1 %"$gascmp_754", label %"$out_of_gas_755", label %"$have_gas_756"

"$out_of_gas_755":                                ; preds = %"$have_gas_748"
  call void @_out_of_gas()
  br label %"$have_gas_756"

"$have_gas_756":                                  ; preds = %"$out_of_gas_755", %"$have_gas_748"
  %"$consume_757" = sub i64 %"$gasrem_753", 1
  store i64 %"$consume_757", i64* @_gasrem, align 8
  %"$res_22" = alloca %TName_Bool*, align 8
  %"$gasrem_758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_759" = icmp ugt i64 1, %"$gasrem_758"
  br i1 %"$gascmp_759", label %"$out_of_gas_760", label %"$have_gas_761"

"$out_of_gas_760":                                ; preds = %"$have_gas_756"
  call void @_out_of_gas()
  br label %"$have_gas_761"

"$have_gas_761":                                  ; preds = %"$out_of_gas_760", %"$have_gas_756"
  %"$consume_762" = sub i64 %"$gasrem_758", 1
  store i64 %"$consume_762", i64* @_gasrem, align 8
  %"$ans_20" = alloca %Int32, align 8
  %"$gasrem_763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_764" = icmp ugt i64 1, %"$gasrem_763"
  br i1 %"$gascmp_764", label %"$out_of_gas_765", label %"$have_gas_766"

"$out_of_gas_765":                                ; preds = %"$have_gas_761"
  call void @_out_of_gas()
  br label %"$have_gas_766"

"$have_gas_766":                                  ; preds = %"$out_of_gas_765", %"$have_gas_761"
  %"$consume_767" = sub i64 %"$gasrem_763", 1
  store i64 %"$consume_767", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$ans_20", align 4
  %"$gasrem_768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_769" = icmp ugt i64 1, %"$gasrem_768"
  br i1 %"$gascmp_769", label %"$out_of_gas_770", label %"$have_gas_771"

"$out_of_gas_770":                                ; preds = %"$have_gas_766"
  call void @_out_of_gas()
  br label %"$have_gas_771"

"$have_gas_771":                                  ; preds = %"$out_of_gas_770", %"$have_gas_766"
  %"$consume_772" = sub i64 %"$gasrem_768", 1
  store i64 %"$consume_772", i64* @_gasrem, align 8
  %"$res__21" = alloca %TName_Bool*, align 8
  %"$gasrem_773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_774" = icmp ugt i64 4, %"$gasrem_773"
  br i1 %"$gascmp_774", label %"$out_of_gas_775", label %"$have_gas_776"

"$out_of_gas_775":                                ; preds = %"$have_gas_771"
  call void @_out_of_gas()
  br label %"$have_gas_776"

"$have_gas_776":                                  ; preds = %"$out_of_gas_775", %"$have_gas_771"
  %"$consume_777" = sub i64 %"$gasrem_773", 4
  store i64 %"$consume_777", i64* @_gasrem, align 8
  %"$execptr_load_778" = load i8*, i8** @_execptr, align 8
  %"$$p_19_779" = load %Int32, %Int32* %"$p_19", align 4
  %"$$ans_20_780" = load %Int32, %Int32* %"$ans_20", align 4
  %"$eq_call_781" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_778", %Int32 %"$$p_19_779", %Int32 %"$$ans_20_780")
  store %TName_Bool* %"$eq_call_781", %TName_Bool** %"$res__21", align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_776"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_776"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  %"$BoolUtils.andb_147" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_788" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_789" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_788", 0
  %"$BoolUtils.andb_envptr_790" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_788", 1
  %"$$res_18_791" = load %TName_Bool*, %TName_Bool** %"$res_18", align 8
  %"$BoolUtils.andb_call_792" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_789"(i8* %"$BoolUtils.andb_envptr_790", %TName_Bool* %"$$res_18_791")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_792", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$BoolUtils.andb_148" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_147_793" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$$BoolUtils.andb_147_fptr_794" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_793", 0
  %"$$BoolUtils.andb_147_envptr_795" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_793", 1
  %"$$res__21_796" = load %TName_Bool*, %TName_Bool** %"$res__21", align 8
  %"$$BoolUtils.andb_147_call_797" = call %TName_Bool* %"$$BoolUtils.andb_147_fptr_794"(i8* %"$$BoolUtils.andb_147_envptr_795", %TName_Bool* %"$$res__21_796")
  store %TName_Bool* %"$$BoolUtils.andb_147_call_797", %TName_Bool** %"$BoolUtils.andb_148", align 8
  %"$$BoolUtils.andb_148_798" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_148", align 8
  store %TName_Bool* %"$$BoolUtils.andb_148_798", %TName_Bool** %"$res_22", align 8
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 1, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %"$have_gas_786"
  %"$consume_803" = sub i64 %"$gasrem_799", 1
  store i64 %"$consume_803", i64* @_gasrem, align 8
  %"$p_23" = alloca %Int32, align 8
  %"$p2_804" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_805" = extractvalue %Uint32 %"$p2_804", 0
  %"$valueof_806" = zext i32 %"$valueof_805" to i64
  %"$gasmul_807" = mul i64 20, %"$valueof_806"
  %"$gasrem_808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_809" = icmp ugt i64 %"$gasmul_807", %"$gasrem_808"
  br i1 %"$gascmp_809", label %"$out_of_gas_810", label %"$have_gas_811"

"$out_of_gas_810":                                ; preds = %"$have_gas_802"
  call void @_out_of_gas()
  br label %"$have_gas_811"

"$have_gas_811":                                  ; preds = %"$out_of_gas_810", %"$have_gas_802"
  %"$consume_812" = sub i64 %"$gasrem_808", %"$gasmul_807"
  store i64 %"$consume_812", i64* @_gasrem, align 8
  %"$t2_813" = load %Int32, %Int32* %t2, align 4
  %"$p2_814" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_815" = call %Int32 @_pow_Int32(%Int32 %"$t2_813", %Uint32 %"$p2_814")
  store %Int32 %"$pow_call_815", %Int32* %"$p_23", align 4
  %"$gasrem_816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_817" = icmp ugt i64 1, %"$gasrem_816"
  br i1 %"$gascmp_817", label %"$out_of_gas_818", label %"$have_gas_819"

"$out_of_gas_818":                                ; preds = %"$have_gas_811"
  call void @_out_of_gas()
  br label %"$have_gas_819"

"$have_gas_819":                                  ; preds = %"$out_of_gas_818", %"$have_gas_811"
  %"$consume_820" = sub i64 %"$gasrem_816", 1
  store i64 %"$consume_820", i64* @_gasrem, align 8
  %"$res_26" = alloca %TName_Bool*, align 8
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 1, %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %"$have_gas_819"
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %"$have_gas_819"
  %"$consume_825" = sub i64 %"$gasrem_821", 1
  store i64 %"$consume_825", i64* @_gasrem, align 8
  %"$ans_24" = alloca %Int32, align 8
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 1, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_824"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_824"
  %"$consume_830" = sub i64 %"$gasrem_826", 1
  store i64 %"$consume_830", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %"$ans_24", align 4
  %"$gasrem_831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_832" = icmp ugt i64 1, %"$gasrem_831"
  br i1 %"$gascmp_832", label %"$out_of_gas_833", label %"$have_gas_834"

"$out_of_gas_833":                                ; preds = %"$have_gas_829"
  call void @_out_of_gas()
  br label %"$have_gas_834"

"$have_gas_834":                                  ; preds = %"$out_of_gas_833", %"$have_gas_829"
  %"$consume_835" = sub i64 %"$gasrem_831", 1
  store i64 %"$consume_835", i64* @_gasrem, align 8
  %"$res__25" = alloca %TName_Bool*, align 8
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 4, %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %"$have_gas_834"
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %"$have_gas_834"
  %"$consume_840" = sub i64 %"$gasrem_836", 4
  store i64 %"$consume_840", i64* @_gasrem, align 8
  %"$execptr_load_841" = load i8*, i8** @_execptr, align 8
  %"$$p_23_842" = load %Int32, %Int32* %"$p_23", align 4
  %"$$ans_24_843" = load %Int32, %Int32* %"$ans_24", align 4
  %"$eq_call_844" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_841", %Int32 %"$$p_23_842", %Int32 %"$$ans_24_843")
  store %TName_Bool* %"$eq_call_844", %TName_Bool** %"$res__25", align 8
  %"$gasrem_846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_847" = icmp ugt i64 1, %"$gasrem_846"
  br i1 %"$gascmp_847", label %"$out_of_gas_848", label %"$have_gas_849"

"$out_of_gas_848":                                ; preds = %"$have_gas_839"
  call void @_out_of_gas()
  br label %"$have_gas_849"

"$have_gas_849":                                  ; preds = %"$out_of_gas_848", %"$have_gas_839"
  %"$consume_850" = sub i64 %"$gasrem_846", 1
  store i64 %"$consume_850", i64* @_gasrem, align 8
  %"$BoolUtils.andb_149" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_851" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_852" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_851", 0
  %"$BoolUtils.andb_envptr_853" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_851", 1
  %"$$res_22_854" = load %TName_Bool*, %TName_Bool** %"$res_22", align 8
  %"$BoolUtils.andb_call_855" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_852"(i8* %"$BoolUtils.andb_envptr_853", %TName_Bool* %"$$res_22_854")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_855", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$BoolUtils.andb_150" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_149_856" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$$BoolUtils.andb_149_fptr_857" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_856", 0
  %"$$BoolUtils.andb_149_envptr_858" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_856", 1
  %"$$res__25_859" = load %TName_Bool*, %TName_Bool** %"$res__25", align 8
  %"$$BoolUtils.andb_149_call_860" = call %TName_Bool* %"$$BoolUtils.andb_149_fptr_857"(i8* %"$$BoolUtils.andb_149_envptr_858", %TName_Bool* %"$$res__25_859")
  store %TName_Bool* %"$$BoolUtils.andb_149_call_860", %TName_Bool** %"$BoolUtils.andb_150", align 8
  %"$$BoolUtils.andb_150_861" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_150", align 8
  store %TName_Bool* %"$$BoolUtils.andb_150_861", %TName_Bool** %"$res_26", align 8
  %"$gasrem_862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_863" = icmp ugt i64 1, %"$gasrem_862"
  br i1 %"$gascmp_863", label %"$out_of_gas_864", label %"$have_gas_865"

"$out_of_gas_864":                                ; preds = %"$have_gas_849"
  call void @_out_of_gas()
  br label %"$have_gas_865"

"$have_gas_865":                                  ; preds = %"$out_of_gas_864", %"$have_gas_849"
  %"$consume_866" = sub i64 %"$gasrem_862", 1
  store i64 %"$consume_866", i64* @_gasrem, align 8
  %"$p_27" = alloca %Int32, align 8
  %"$p3_867" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_868" = extractvalue %Uint32 %"$p3_867", 0
  %"$valueof_869" = zext i32 %"$valueof_868" to i64
  %"$gasmul_870" = mul i64 20, %"$valueof_869"
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 %"$gasmul_870", %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_865"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_865"
  %"$consume_875" = sub i64 %"$gasrem_871", %"$gasmul_870"
  store i64 %"$consume_875", i64* @_gasrem, align 8
  %"$t2_876" = load %Int32, %Int32* %t2, align 4
  %"$p3_877" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_878" = call %Int32 @_pow_Int32(%Int32 %"$t2_876", %Uint32 %"$p3_877")
  store %Int32 %"$pow_call_878", %Int32* %"$p_27", align 4
  %"$gasrem_879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_880" = icmp ugt i64 1, %"$gasrem_879"
  br i1 %"$gascmp_880", label %"$out_of_gas_881", label %"$have_gas_882"

"$out_of_gas_881":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_882"

"$have_gas_882":                                  ; preds = %"$out_of_gas_881", %"$have_gas_874"
  %"$consume_883" = sub i64 %"$gasrem_879", 1
  store i64 %"$consume_883", i64* @_gasrem, align 8
  %"$res_30" = alloca %TName_Bool*, align 8
  %"$gasrem_884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_885" = icmp ugt i64 1, %"$gasrem_884"
  br i1 %"$gascmp_885", label %"$out_of_gas_886", label %"$have_gas_887"

"$out_of_gas_886":                                ; preds = %"$have_gas_882"
  call void @_out_of_gas()
  br label %"$have_gas_887"

"$have_gas_887":                                  ; preds = %"$out_of_gas_886", %"$have_gas_882"
  %"$consume_888" = sub i64 %"$gasrem_884", 1
  store i64 %"$consume_888", i64* @_gasrem, align 8
  %"$ans_28" = alloca %Int32, align 8
  %"$gasrem_889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_890" = icmp ugt i64 1, %"$gasrem_889"
  br i1 %"$gascmp_890", label %"$out_of_gas_891", label %"$have_gas_892"

"$out_of_gas_891":                                ; preds = %"$have_gas_887"
  call void @_out_of_gas()
  br label %"$have_gas_892"

"$have_gas_892":                                  ; preds = %"$out_of_gas_891", %"$have_gas_887"
  %"$consume_893" = sub i64 %"$gasrem_889", 1
  store i64 %"$consume_893", i64* @_gasrem, align 8
  store %Int32 { i32 81 }, %Int32* %"$ans_28", align 4
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_892"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_892"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$res__29" = alloca %TName_Bool*, align 8
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 4, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_897"
  %"$consume_903" = sub i64 %"$gasrem_899", 4
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %"$execptr_load_904" = load i8*, i8** @_execptr, align 8
  %"$$p_27_905" = load %Int32, %Int32* %"$p_27", align 4
  %"$$ans_28_906" = load %Int32, %Int32* %"$ans_28", align 4
  %"$eq_call_907" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_904", %Int32 %"$$p_27_905", %Int32 %"$$ans_28_906")
  store %TName_Bool* %"$eq_call_907", %TName_Bool** %"$res__29", align 8
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 1, %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$have_gas_902"
  %"$consume_913" = sub i64 %"$gasrem_909", 1
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %"$BoolUtils.andb_151" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_914" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_915" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_914", 0
  %"$BoolUtils.andb_envptr_916" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_914", 1
  %"$$res_26_917" = load %TName_Bool*, %TName_Bool** %"$res_26", align 8
  %"$BoolUtils.andb_call_918" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_915"(i8* %"$BoolUtils.andb_envptr_916", %TName_Bool* %"$$res_26_917")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_918", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$BoolUtils.andb_152" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_151_919" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$$BoolUtils.andb_151_fptr_920" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_919", 0
  %"$$BoolUtils.andb_151_envptr_921" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_919", 1
  %"$$res__29_922" = load %TName_Bool*, %TName_Bool** %"$res__29", align 8
  %"$$BoolUtils.andb_151_call_923" = call %TName_Bool* %"$$BoolUtils.andb_151_fptr_920"(i8* %"$$BoolUtils.andb_151_envptr_921", %TName_Bool* %"$$res__29_922")
  store %TName_Bool* %"$$BoolUtils.andb_151_call_923", %TName_Bool** %"$BoolUtils.andb_152", align 8
  %"$$BoolUtils.andb_152_924" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_152", align 8
  store %TName_Bool* %"$$BoolUtils.andb_152_924", %TName_Bool** %"$res_30", align 8
  %"$gasrem_925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_926" = icmp ugt i64 1, %"$gasrem_925"
  br i1 %"$gascmp_926", label %"$out_of_gas_927", label %"$have_gas_928"

"$out_of_gas_927":                                ; preds = %"$have_gas_912"
  call void @_out_of_gas()
  br label %"$have_gas_928"

"$have_gas_928":                                  ; preds = %"$out_of_gas_927", %"$have_gas_912"
  %"$consume_929" = sub i64 %"$gasrem_925", 1
  store i64 %"$consume_929", i64* @_gasrem, align 8
  %"$p_31" = alloca %Int32, align 8
  %"$p4_930" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_931" = extractvalue %Uint32 %"$p4_930", 0
  %"$valueof_932" = zext i32 %"$valueof_931" to i64
  %"$gasmul_933" = mul i64 20, %"$valueof_932"
  %"$gasrem_934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_935" = icmp ugt i64 %"$gasmul_933", %"$gasrem_934"
  br i1 %"$gascmp_935", label %"$out_of_gas_936", label %"$have_gas_937"

"$out_of_gas_936":                                ; preds = %"$have_gas_928"
  call void @_out_of_gas()
  br label %"$have_gas_937"

"$have_gas_937":                                  ; preds = %"$out_of_gas_936", %"$have_gas_928"
  %"$consume_938" = sub i64 %"$gasrem_934", %"$gasmul_933"
  store i64 %"$consume_938", i64* @_gasrem, align 8
  %"$t2_939" = load %Int32, %Int32* %t2, align 4
  %"$p4_940" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_941" = call %Int32 @_pow_Int32(%Int32 %"$t2_939", %Uint32 %"$p4_940")
  store %Int32 %"$pow_call_941", %Int32* %"$p_31", align 4
  %"$gasrem_942" = load i64, i64* @_gasrem, align 8
  %"$gascmp_943" = icmp ugt i64 1, %"$gasrem_942"
  br i1 %"$gascmp_943", label %"$out_of_gas_944", label %"$have_gas_945"

"$out_of_gas_944":                                ; preds = %"$have_gas_937"
  call void @_out_of_gas()
  br label %"$have_gas_945"

"$have_gas_945":                                  ; preds = %"$out_of_gas_944", %"$have_gas_937"
  %"$consume_946" = sub i64 %"$gasrem_942", 1
  store i64 %"$consume_946", i64* @_gasrem, align 8
  %"$res_34" = alloca %TName_Bool*, align 8
  %"$gasrem_947" = load i64, i64* @_gasrem, align 8
  %"$gascmp_948" = icmp ugt i64 1, %"$gasrem_947"
  br i1 %"$gascmp_948", label %"$out_of_gas_949", label %"$have_gas_950"

"$out_of_gas_949":                                ; preds = %"$have_gas_945"
  call void @_out_of_gas()
  br label %"$have_gas_950"

"$have_gas_950":                                  ; preds = %"$out_of_gas_949", %"$have_gas_945"
  %"$consume_951" = sub i64 %"$gasrem_947", 1
  store i64 %"$consume_951", i64* @_gasrem, align 8
  %"$ans_32" = alloca %Int32, align 8
  %"$gasrem_952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_953" = icmp ugt i64 1, %"$gasrem_952"
  br i1 %"$gascmp_953", label %"$out_of_gas_954", label %"$have_gas_955"

"$out_of_gas_954":                                ; preds = %"$have_gas_950"
  call void @_out_of_gas()
  br label %"$have_gas_955"

"$have_gas_955":                                  ; preds = %"$out_of_gas_954", %"$have_gas_950"
  %"$consume_956" = sub i64 %"$gasrem_952", 1
  store i64 %"$consume_956", i64* @_gasrem, align 8
  store %Int32 { i32 59049 }, %Int32* %"$ans_32", align 4
  %"$gasrem_957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_958" = icmp ugt i64 1, %"$gasrem_957"
  br i1 %"$gascmp_958", label %"$out_of_gas_959", label %"$have_gas_960"

"$out_of_gas_959":                                ; preds = %"$have_gas_955"
  call void @_out_of_gas()
  br label %"$have_gas_960"

"$have_gas_960":                                  ; preds = %"$out_of_gas_959", %"$have_gas_955"
  %"$consume_961" = sub i64 %"$gasrem_957", 1
  store i64 %"$consume_961", i64* @_gasrem, align 8
  %"$res__33" = alloca %TName_Bool*, align 8
  %"$gasrem_962" = load i64, i64* @_gasrem, align 8
  %"$gascmp_963" = icmp ugt i64 4, %"$gasrem_962"
  br i1 %"$gascmp_963", label %"$out_of_gas_964", label %"$have_gas_965"

"$out_of_gas_964":                                ; preds = %"$have_gas_960"
  call void @_out_of_gas()
  br label %"$have_gas_965"

"$have_gas_965":                                  ; preds = %"$out_of_gas_964", %"$have_gas_960"
  %"$consume_966" = sub i64 %"$gasrem_962", 4
  store i64 %"$consume_966", i64* @_gasrem, align 8
  %"$execptr_load_967" = load i8*, i8** @_execptr, align 8
  %"$$p_31_968" = load %Int32, %Int32* %"$p_31", align 4
  %"$$ans_32_969" = load %Int32, %Int32* %"$ans_32", align 4
  %"$eq_call_970" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_967", %Int32 %"$$p_31_968", %Int32 %"$$ans_32_969")
  store %TName_Bool* %"$eq_call_970", %TName_Bool** %"$res__33", align 8
  %"$gasrem_972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_973" = icmp ugt i64 1, %"$gasrem_972"
  br i1 %"$gascmp_973", label %"$out_of_gas_974", label %"$have_gas_975"

"$out_of_gas_974":                                ; preds = %"$have_gas_965"
  call void @_out_of_gas()
  br label %"$have_gas_975"

"$have_gas_975":                                  ; preds = %"$out_of_gas_974", %"$have_gas_965"
  %"$consume_976" = sub i64 %"$gasrem_972", 1
  store i64 %"$consume_976", i64* @_gasrem, align 8
  %"$BoolUtils.andb_153" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_977" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_978" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_977", 0
  %"$BoolUtils.andb_envptr_979" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_977", 1
  %"$$res_30_980" = load %TName_Bool*, %TName_Bool** %"$res_30", align 8
  %"$BoolUtils.andb_call_981" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_978"(i8* %"$BoolUtils.andb_envptr_979", %TName_Bool* %"$$res_30_980")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_981", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$BoolUtils.andb_154" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_153_982" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$$BoolUtils.andb_153_fptr_983" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_982", 0
  %"$$BoolUtils.andb_153_envptr_984" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_982", 1
  %"$$res__33_985" = load %TName_Bool*, %TName_Bool** %"$res__33", align 8
  %"$$BoolUtils.andb_153_call_986" = call %TName_Bool* %"$$BoolUtils.andb_153_fptr_983"(i8* %"$$BoolUtils.andb_153_envptr_984", %TName_Bool* %"$$res__33_985")
  store %TName_Bool* %"$$BoolUtils.andb_153_call_986", %TName_Bool** %"$BoolUtils.andb_154", align 8
  %"$$BoolUtils.andb_154_987" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_154", align 8
  store %TName_Bool* %"$$BoolUtils.andb_154_987", %TName_Bool** %"$res_34", align 8
  %"$gasrem_988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_989" = icmp ugt i64 1, %"$gasrem_988"
  br i1 %"$gascmp_989", label %"$out_of_gas_990", label %"$have_gas_991"

"$out_of_gas_990":                                ; preds = %"$have_gas_975"
  call void @_out_of_gas()
  br label %"$have_gas_991"

"$have_gas_991":                                  ; preds = %"$out_of_gas_990", %"$have_gas_975"
  %"$consume_992" = sub i64 %"$gasrem_988", 1
  store i64 %"$consume_992", i64* @_gasrem, align 8
  %"$p_35" = alloca %Uint64, align 8
  %"$p1_993" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_994" = extractvalue %Uint32 %"$p1_993", 0
  %"$valueof_995" = zext i32 %"$valueof_994" to i64
  %"$gasmul_996" = mul i64 20, %"$valueof_995"
  %"$gasrem_997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_998" = icmp ugt i64 %"$gasmul_996", %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %"$have_gas_991"
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %"$have_gas_991"
  %"$consume_1001" = sub i64 %"$gasrem_997", %"$gasmul_996"
  store i64 %"$consume_1001", i64* @_gasrem, align 8
  %"$t3_1002" = load %Uint64, %Uint64* %t3, align 8
  %"$p1_1003" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1004" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1002", %Uint32 %"$p1_1003")
  store %Uint64 %"$pow_call_1004", %Uint64* %"$p_35", align 8
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$have_gas_1000"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$have_gas_1000"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %"$res_38" = alloca %TName_Bool*, align 8
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$have_gas_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  %"$ans_36" = alloca %Uint64, align 8
  %"$gasrem_1015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1016" = icmp ugt i64 1, %"$gasrem_1015"
  br i1 %"$gascmp_1016", label %"$out_of_gas_1017", label %"$have_gas_1018"

"$out_of_gas_1017":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1018"

"$have_gas_1018":                                 ; preds = %"$out_of_gas_1017", %"$have_gas_1013"
  %"$consume_1019" = sub i64 %"$gasrem_1015", 1
  store i64 %"$consume_1019", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %"$ans_36", align 8
  %"$gasrem_1020" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1021" = icmp ugt i64 1, %"$gasrem_1020"
  br i1 %"$gascmp_1021", label %"$out_of_gas_1022", label %"$have_gas_1023"

"$out_of_gas_1022":                               ; preds = %"$have_gas_1018"
  call void @_out_of_gas()
  br label %"$have_gas_1023"

"$have_gas_1023":                                 ; preds = %"$out_of_gas_1022", %"$have_gas_1018"
  %"$consume_1024" = sub i64 %"$gasrem_1020", 1
  store i64 %"$consume_1024", i64* @_gasrem, align 8
  %"$res__37" = alloca %TName_Bool*, align 8
  %"$gasrem_1025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1026" = icmp ugt i64 4, %"$gasrem_1025"
  br i1 %"$gascmp_1026", label %"$out_of_gas_1027", label %"$have_gas_1028"

"$out_of_gas_1027":                               ; preds = %"$have_gas_1023"
  call void @_out_of_gas()
  br label %"$have_gas_1028"

"$have_gas_1028":                                 ; preds = %"$out_of_gas_1027", %"$have_gas_1023"
  %"$consume_1029" = sub i64 %"$gasrem_1025", 4
  store i64 %"$consume_1029", i64* @_gasrem, align 8
  %"$execptr_load_1030" = load i8*, i8** @_execptr, align 8
  %"$$p_35_1031" = load %Uint64, %Uint64* %"$p_35", align 8
  %"$$ans_36_1032" = load %Uint64, %Uint64* %"$ans_36", align 8
  %"$eq_call_1033" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1030", %Uint64 %"$$p_35_1031", %Uint64 %"$$ans_36_1032")
  store %TName_Bool* %"$eq_call_1033", %TName_Bool** %"$res__37", align 8
  %"$gasrem_1035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1036" = icmp ugt i64 1, %"$gasrem_1035"
  br i1 %"$gascmp_1036", label %"$out_of_gas_1037", label %"$have_gas_1038"

"$out_of_gas_1037":                               ; preds = %"$have_gas_1028"
  call void @_out_of_gas()
  br label %"$have_gas_1038"

"$have_gas_1038":                                 ; preds = %"$out_of_gas_1037", %"$have_gas_1028"
  %"$consume_1039" = sub i64 %"$gasrem_1035", 1
  store i64 %"$consume_1039", i64* @_gasrem, align 8
  %"$BoolUtils.andb_155" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1040" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1041" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1040", 0
  %"$BoolUtils.andb_envptr_1042" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1040", 1
  %"$$res_34_1043" = load %TName_Bool*, %TName_Bool** %"$res_34", align 8
  %"$BoolUtils.andb_call_1044" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1041"(i8* %"$BoolUtils.andb_envptr_1042", %TName_Bool* %"$$res_34_1043")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1044", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$BoolUtils.andb_156" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_155_1045" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$$BoolUtils.andb_155_fptr_1046" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1045", 0
  %"$$BoolUtils.andb_155_envptr_1047" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1045", 1
  %"$$res__37_1048" = load %TName_Bool*, %TName_Bool** %"$res__37", align 8
  %"$$BoolUtils.andb_155_call_1049" = call %TName_Bool* %"$$BoolUtils.andb_155_fptr_1046"(i8* %"$$BoolUtils.andb_155_envptr_1047", %TName_Bool* %"$$res__37_1048")
  store %TName_Bool* %"$$BoolUtils.andb_155_call_1049", %TName_Bool** %"$BoolUtils.andb_156", align 8
  %"$$BoolUtils.andb_156_1050" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_156", align 8
  store %TName_Bool* %"$$BoolUtils.andb_156_1050", %TName_Bool** %"$res_38", align 8
  %"$gasrem_1051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1052" = icmp ugt i64 1, %"$gasrem_1051"
  br i1 %"$gascmp_1052", label %"$out_of_gas_1053", label %"$have_gas_1054"

"$out_of_gas_1053":                               ; preds = %"$have_gas_1038"
  call void @_out_of_gas()
  br label %"$have_gas_1054"

"$have_gas_1054":                                 ; preds = %"$out_of_gas_1053", %"$have_gas_1038"
  %"$consume_1055" = sub i64 %"$gasrem_1051", 1
  store i64 %"$consume_1055", i64* @_gasrem, align 8
  %"$p_39" = alloca %Uint64, align 8
  %"$p2_1056" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1057" = extractvalue %Uint32 %"$p2_1056", 0
  %"$valueof_1058" = zext i32 %"$valueof_1057" to i64
  %"$gasmul_1059" = mul i64 20, %"$valueof_1058"
  %"$gasrem_1060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1061" = icmp ugt i64 %"$gasmul_1059", %"$gasrem_1060"
  br i1 %"$gascmp_1061", label %"$out_of_gas_1062", label %"$have_gas_1063"

"$out_of_gas_1062":                               ; preds = %"$have_gas_1054"
  call void @_out_of_gas()
  br label %"$have_gas_1063"

"$have_gas_1063":                                 ; preds = %"$out_of_gas_1062", %"$have_gas_1054"
  %"$consume_1064" = sub i64 %"$gasrem_1060", %"$gasmul_1059"
  store i64 %"$consume_1064", i64* @_gasrem, align 8
  %"$t3_1065" = load %Uint64, %Uint64* %t3, align 8
  %"$p2_1066" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1067" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1065", %Uint32 %"$p2_1066")
  store %Uint64 %"$pow_call_1067", %Uint64* %"$p_39", align 8
  %"$gasrem_1068" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1069" = icmp ugt i64 1, %"$gasrem_1068"
  br i1 %"$gascmp_1069", label %"$out_of_gas_1070", label %"$have_gas_1071"

"$out_of_gas_1070":                               ; preds = %"$have_gas_1063"
  call void @_out_of_gas()
  br label %"$have_gas_1071"

"$have_gas_1071":                                 ; preds = %"$out_of_gas_1070", %"$have_gas_1063"
  %"$consume_1072" = sub i64 %"$gasrem_1068", 1
  store i64 %"$consume_1072", i64* @_gasrem, align 8
  %"$res_42" = alloca %TName_Bool*, align 8
  %"$gasrem_1073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1074" = icmp ugt i64 1, %"$gasrem_1073"
  br i1 %"$gascmp_1074", label %"$out_of_gas_1075", label %"$have_gas_1076"

"$out_of_gas_1075":                               ; preds = %"$have_gas_1071"
  call void @_out_of_gas()
  br label %"$have_gas_1076"

"$have_gas_1076":                                 ; preds = %"$out_of_gas_1075", %"$have_gas_1071"
  %"$consume_1077" = sub i64 %"$gasrem_1073", 1
  store i64 %"$consume_1077", i64* @_gasrem, align 8
  %"$ans_40" = alloca %Uint64, align 8
  %"$gasrem_1078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1079" = icmp ugt i64 1, %"$gasrem_1078"
  br i1 %"$gascmp_1079", label %"$out_of_gas_1080", label %"$have_gas_1081"

"$out_of_gas_1080":                               ; preds = %"$have_gas_1076"
  call void @_out_of_gas()
  br label %"$have_gas_1081"

"$have_gas_1081":                                 ; preds = %"$out_of_gas_1080", %"$have_gas_1076"
  %"$consume_1082" = sub i64 %"$gasrem_1078", 1
  store i64 %"$consume_1082", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %"$ans_40", align 8
  %"$gasrem_1083" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1084" = icmp ugt i64 1, %"$gasrem_1083"
  br i1 %"$gascmp_1084", label %"$out_of_gas_1085", label %"$have_gas_1086"

"$out_of_gas_1085":                               ; preds = %"$have_gas_1081"
  call void @_out_of_gas()
  br label %"$have_gas_1086"

"$have_gas_1086":                                 ; preds = %"$out_of_gas_1085", %"$have_gas_1081"
  %"$consume_1087" = sub i64 %"$gasrem_1083", 1
  store i64 %"$consume_1087", i64* @_gasrem, align 8
  %"$res__41" = alloca %TName_Bool*, align 8
  %"$gasrem_1088" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1089" = icmp ugt i64 4, %"$gasrem_1088"
  br i1 %"$gascmp_1089", label %"$out_of_gas_1090", label %"$have_gas_1091"

"$out_of_gas_1090":                               ; preds = %"$have_gas_1086"
  call void @_out_of_gas()
  br label %"$have_gas_1091"

"$have_gas_1091":                                 ; preds = %"$out_of_gas_1090", %"$have_gas_1086"
  %"$consume_1092" = sub i64 %"$gasrem_1088", 4
  store i64 %"$consume_1092", i64* @_gasrem, align 8
  %"$execptr_load_1093" = load i8*, i8** @_execptr, align 8
  %"$$p_39_1094" = load %Uint64, %Uint64* %"$p_39", align 8
  %"$$ans_40_1095" = load %Uint64, %Uint64* %"$ans_40", align 8
  %"$eq_call_1096" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1093", %Uint64 %"$$p_39_1094", %Uint64 %"$$ans_40_1095")
  store %TName_Bool* %"$eq_call_1096", %TName_Bool** %"$res__41", align 8
  %"$gasrem_1098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1099" = icmp ugt i64 1, %"$gasrem_1098"
  br i1 %"$gascmp_1099", label %"$out_of_gas_1100", label %"$have_gas_1101"

"$out_of_gas_1100":                               ; preds = %"$have_gas_1091"
  call void @_out_of_gas()
  br label %"$have_gas_1101"

"$have_gas_1101":                                 ; preds = %"$out_of_gas_1100", %"$have_gas_1091"
  %"$consume_1102" = sub i64 %"$gasrem_1098", 1
  store i64 %"$consume_1102", i64* @_gasrem, align 8
  %"$BoolUtils.andb_157" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1103" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1104" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1103", 0
  %"$BoolUtils.andb_envptr_1105" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1103", 1
  %"$$res_38_1106" = load %TName_Bool*, %TName_Bool** %"$res_38", align 8
  %"$BoolUtils.andb_call_1107" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1104"(i8* %"$BoolUtils.andb_envptr_1105", %TName_Bool* %"$$res_38_1106")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1107", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$BoolUtils.andb_158" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_157_1108" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$$BoolUtils.andb_157_fptr_1109" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1108", 0
  %"$$BoolUtils.andb_157_envptr_1110" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1108", 1
  %"$$res__41_1111" = load %TName_Bool*, %TName_Bool** %"$res__41", align 8
  %"$$BoolUtils.andb_157_call_1112" = call %TName_Bool* %"$$BoolUtils.andb_157_fptr_1109"(i8* %"$$BoolUtils.andb_157_envptr_1110", %TName_Bool* %"$$res__41_1111")
  store %TName_Bool* %"$$BoolUtils.andb_157_call_1112", %TName_Bool** %"$BoolUtils.andb_158", align 8
  %"$$BoolUtils.andb_158_1113" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_158", align 8
  store %TName_Bool* %"$$BoolUtils.andb_158_1113", %TName_Bool** %"$res_42", align 8
  %"$gasrem_1114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1115" = icmp ugt i64 1, %"$gasrem_1114"
  br i1 %"$gascmp_1115", label %"$out_of_gas_1116", label %"$have_gas_1117"

"$out_of_gas_1116":                               ; preds = %"$have_gas_1101"
  call void @_out_of_gas()
  br label %"$have_gas_1117"

"$have_gas_1117":                                 ; preds = %"$out_of_gas_1116", %"$have_gas_1101"
  %"$consume_1118" = sub i64 %"$gasrem_1114", 1
  store i64 %"$consume_1118", i64* @_gasrem, align 8
  %"$p_43" = alloca %Uint64, align 8
  %"$p3_1119" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1120" = extractvalue %Uint32 %"$p3_1119", 0
  %"$valueof_1121" = zext i32 %"$valueof_1120" to i64
  %"$gasmul_1122" = mul i64 20, %"$valueof_1121"
  %"$gasrem_1123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1124" = icmp ugt i64 %"$gasmul_1122", %"$gasrem_1123"
  br i1 %"$gascmp_1124", label %"$out_of_gas_1125", label %"$have_gas_1126"

"$out_of_gas_1125":                               ; preds = %"$have_gas_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1126"

"$have_gas_1126":                                 ; preds = %"$out_of_gas_1125", %"$have_gas_1117"
  %"$consume_1127" = sub i64 %"$gasrem_1123", %"$gasmul_1122"
  store i64 %"$consume_1127", i64* @_gasrem, align 8
  %"$t3_1128" = load %Uint64, %Uint64* %t3, align 8
  %"$p3_1129" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1130" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1128", %Uint32 %"$p3_1129")
  store %Uint64 %"$pow_call_1130", %Uint64* %"$p_43", align 8
  %"$gasrem_1131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1132" = icmp ugt i64 1, %"$gasrem_1131"
  br i1 %"$gascmp_1132", label %"$out_of_gas_1133", label %"$have_gas_1134"

"$out_of_gas_1133":                               ; preds = %"$have_gas_1126"
  call void @_out_of_gas()
  br label %"$have_gas_1134"

"$have_gas_1134":                                 ; preds = %"$out_of_gas_1133", %"$have_gas_1126"
  %"$consume_1135" = sub i64 %"$gasrem_1131", 1
  store i64 %"$consume_1135", i64* @_gasrem, align 8
  %"$res_46" = alloca %TName_Bool*, align 8
  %"$gasrem_1136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1137" = icmp ugt i64 1, %"$gasrem_1136"
  br i1 %"$gascmp_1137", label %"$out_of_gas_1138", label %"$have_gas_1139"

"$out_of_gas_1138":                               ; preds = %"$have_gas_1134"
  call void @_out_of_gas()
  br label %"$have_gas_1139"

"$have_gas_1139":                                 ; preds = %"$out_of_gas_1138", %"$have_gas_1134"
  %"$consume_1140" = sub i64 %"$gasrem_1136", 1
  store i64 %"$consume_1140", i64* @_gasrem, align 8
  %"$ans_44" = alloca %Uint64, align 8
  %"$gasrem_1141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1142" = icmp ugt i64 1, %"$gasrem_1141"
  br i1 %"$gascmp_1142", label %"$out_of_gas_1143", label %"$have_gas_1144"

"$out_of_gas_1143":                               ; preds = %"$have_gas_1139"
  call void @_out_of_gas()
  br label %"$have_gas_1144"

"$have_gas_1144":                                 ; preds = %"$out_of_gas_1143", %"$have_gas_1139"
  %"$consume_1145" = sub i64 %"$gasrem_1141", 1
  store i64 %"$consume_1145", i64* @_gasrem, align 8
  store %Uint64 { i64 100000000 }, %Uint64* %"$ans_44", align 8
  %"$gasrem_1146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1147" = icmp ugt i64 1, %"$gasrem_1146"
  br i1 %"$gascmp_1147", label %"$out_of_gas_1148", label %"$have_gas_1149"

"$out_of_gas_1148":                               ; preds = %"$have_gas_1144"
  call void @_out_of_gas()
  br label %"$have_gas_1149"

"$have_gas_1149":                                 ; preds = %"$out_of_gas_1148", %"$have_gas_1144"
  %"$consume_1150" = sub i64 %"$gasrem_1146", 1
  store i64 %"$consume_1150", i64* @_gasrem, align 8
  %"$res__45" = alloca %TName_Bool*, align 8
  %"$gasrem_1151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1152" = icmp ugt i64 4, %"$gasrem_1151"
  br i1 %"$gascmp_1152", label %"$out_of_gas_1153", label %"$have_gas_1154"

"$out_of_gas_1153":                               ; preds = %"$have_gas_1149"
  call void @_out_of_gas()
  br label %"$have_gas_1154"

"$have_gas_1154":                                 ; preds = %"$out_of_gas_1153", %"$have_gas_1149"
  %"$consume_1155" = sub i64 %"$gasrem_1151", 4
  store i64 %"$consume_1155", i64* @_gasrem, align 8
  %"$execptr_load_1156" = load i8*, i8** @_execptr, align 8
  %"$$p_43_1157" = load %Uint64, %Uint64* %"$p_43", align 8
  %"$$ans_44_1158" = load %Uint64, %Uint64* %"$ans_44", align 8
  %"$eq_call_1159" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1156", %Uint64 %"$$p_43_1157", %Uint64 %"$$ans_44_1158")
  store %TName_Bool* %"$eq_call_1159", %TName_Bool** %"$res__45", align 8
  %"$gasrem_1161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1162" = icmp ugt i64 1, %"$gasrem_1161"
  br i1 %"$gascmp_1162", label %"$out_of_gas_1163", label %"$have_gas_1164"

"$out_of_gas_1163":                               ; preds = %"$have_gas_1154"
  call void @_out_of_gas()
  br label %"$have_gas_1164"

"$have_gas_1164":                                 ; preds = %"$out_of_gas_1163", %"$have_gas_1154"
  %"$consume_1165" = sub i64 %"$gasrem_1161", 1
  store i64 %"$consume_1165", i64* @_gasrem, align 8
  %"$BoolUtils.andb_159" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1166" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1167" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1166", 0
  %"$BoolUtils.andb_envptr_1168" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1166", 1
  %"$$res_42_1169" = load %TName_Bool*, %TName_Bool** %"$res_42", align 8
  %"$BoolUtils.andb_call_1170" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1167"(i8* %"$BoolUtils.andb_envptr_1168", %TName_Bool* %"$$res_42_1169")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1170", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$BoolUtils.andb_160" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_159_1171" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$$BoolUtils.andb_159_fptr_1172" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1171", 0
  %"$$BoolUtils.andb_159_envptr_1173" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1171", 1
  %"$$res__45_1174" = load %TName_Bool*, %TName_Bool** %"$res__45", align 8
  %"$$BoolUtils.andb_159_call_1175" = call %TName_Bool* %"$$BoolUtils.andb_159_fptr_1172"(i8* %"$$BoolUtils.andb_159_envptr_1173", %TName_Bool* %"$$res__45_1174")
  store %TName_Bool* %"$$BoolUtils.andb_159_call_1175", %TName_Bool** %"$BoolUtils.andb_160", align 8
  %"$$BoolUtils.andb_160_1176" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_160", align 8
  store %TName_Bool* %"$$BoolUtils.andb_160_1176", %TName_Bool** %"$res_46", align 8
  %"$gasrem_1177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1178" = icmp ugt i64 1, %"$gasrem_1177"
  br i1 %"$gascmp_1178", label %"$out_of_gas_1179", label %"$have_gas_1180"

"$out_of_gas_1179":                               ; preds = %"$have_gas_1164"
  call void @_out_of_gas()
  br label %"$have_gas_1180"

"$have_gas_1180":                                 ; preds = %"$out_of_gas_1179", %"$have_gas_1164"
  %"$consume_1181" = sub i64 %"$gasrem_1177", 1
  store i64 %"$consume_1181", i64* @_gasrem, align 8
  %"$p_47" = alloca %Int64, align 8
  %"$p1_1182" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1183" = extractvalue %Uint32 %"$p1_1182", 0
  %"$valueof_1184" = zext i32 %"$valueof_1183" to i64
  %"$gasmul_1185" = mul i64 20, %"$valueof_1184"
  %"$gasrem_1186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1187" = icmp ugt i64 %"$gasmul_1185", %"$gasrem_1186"
  br i1 %"$gascmp_1187", label %"$out_of_gas_1188", label %"$have_gas_1189"

"$out_of_gas_1188":                               ; preds = %"$have_gas_1180"
  call void @_out_of_gas()
  br label %"$have_gas_1189"

"$have_gas_1189":                                 ; preds = %"$out_of_gas_1188", %"$have_gas_1180"
  %"$consume_1190" = sub i64 %"$gasrem_1186", %"$gasmul_1185"
  store i64 %"$consume_1190", i64* @_gasrem, align 8
  %"$t4_1191" = load %Int64, %Int64* %t4, align 8
  %"$p1_1192" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1193" = call %Int64 @_pow_Int64(%Int64 %"$t4_1191", %Uint32 %"$p1_1192")
  store %Int64 %"$pow_call_1193", %Int64* %"$p_47", align 8
  %"$gasrem_1194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1195" = icmp ugt i64 1, %"$gasrem_1194"
  br i1 %"$gascmp_1195", label %"$out_of_gas_1196", label %"$have_gas_1197"

"$out_of_gas_1196":                               ; preds = %"$have_gas_1189"
  call void @_out_of_gas()
  br label %"$have_gas_1197"

"$have_gas_1197":                                 ; preds = %"$out_of_gas_1196", %"$have_gas_1189"
  %"$consume_1198" = sub i64 %"$gasrem_1194", 1
  store i64 %"$consume_1198", i64* @_gasrem, align 8
  %"$res_50" = alloca %TName_Bool*, align 8
  %"$gasrem_1199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1200" = icmp ugt i64 1, %"$gasrem_1199"
  br i1 %"$gascmp_1200", label %"$out_of_gas_1201", label %"$have_gas_1202"

"$out_of_gas_1201":                               ; preds = %"$have_gas_1197"
  call void @_out_of_gas()
  br label %"$have_gas_1202"

"$have_gas_1202":                                 ; preds = %"$out_of_gas_1201", %"$have_gas_1197"
  %"$consume_1203" = sub i64 %"$gasrem_1199", 1
  store i64 %"$consume_1203", i64* @_gasrem, align 8
  %"$ans_48" = alloca %Int64, align 8
  %"$gasrem_1204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1205" = icmp ugt i64 1, %"$gasrem_1204"
  br i1 %"$gascmp_1205", label %"$out_of_gas_1206", label %"$have_gas_1207"

"$out_of_gas_1206":                               ; preds = %"$have_gas_1202"
  call void @_out_of_gas()
  br label %"$have_gas_1207"

"$have_gas_1207":                                 ; preds = %"$out_of_gas_1206", %"$have_gas_1202"
  %"$consume_1208" = sub i64 %"$gasrem_1204", 1
  store i64 %"$consume_1208", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %"$ans_48", align 8
  %"$gasrem_1209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1210" = icmp ugt i64 1, %"$gasrem_1209"
  br i1 %"$gascmp_1210", label %"$out_of_gas_1211", label %"$have_gas_1212"

"$out_of_gas_1211":                               ; preds = %"$have_gas_1207"
  call void @_out_of_gas()
  br label %"$have_gas_1212"

"$have_gas_1212":                                 ; preds = %"$out_of_gas_1211", %"$have_gas_1207"
  %"$consume_1213" = sub i64 %"$gasrem_1209", 1
  store i64 %"$consume_1213", i64* @_gasrem, align 8
  %"$res__49" = alloca %TName_Bool*, align 8
  %"$gasrem_1214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1215" = icmp ugt i64 4, %"$gasrem_1214"
  br i1 %"$gascmp_1215", label %"$out_of_gas_1216", label %"$have_gas_1217"

"$out_of_gas_1216":                               ; preds = %"$have_gas_1212"
  call void @_out_of_gas()
  br label %"$have_gas_1217"

"$have_gas_1217":                                 ; preds = %"$out_of_gas_1216", %"$have_gas_1212"
  %"$consume_1218" = sub i64 %"$gasrem_1214", 4
  store i64 %"$consume_1218", i64* @_gasrem, align 8
  %"$execptr_load_1219" = load i8*, i8** @_execptr, align 8
  %"$$p_47_1220" = load %Int64, %Int64* %"$p_47", align 8
  %"$$ans_48_1221" = load %Int64, %Int64* %"$ans_48", align 8
  %"$eq_call_1222" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1219", %Int64 %"$$p_47_1220", %Int64 %"$$ans_48_1221")
  store %TName_Bool* %"$eq_call_1222", %TName_Bool** %"$res__49", align 8
  %"$gasrem_1224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1225" = icmp ugt i64 1, %"$gasrem_1224"
  br i1 %"$gascmp_1225", label %"$out_of_gas_1226", label %"$have_gas_1227"

"$out_of_gas_1226":                               ; preds = %"$have_gas_1217"
  call void @_out_of_gas()
  br label %"$have_gas_1227"

"$have_gas_1227":                                 ; preds = %"$out_of_gas_1226", %"$have_gas_1217"
  %"$consume_1228" = sub i64 %"$gasrem_1224", 1
  store i64 %"$consume_1228", i64* @_gasrem, align 8
  %"$BoolUtils.andb_161" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1229" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1230" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1229", 0
  %"$BoolUtils.andb_envptr_1231" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1229", 1
  %"$$res_46_1232" = load %TName_Bool*, %TName_Bool** %"$res_46", align 8
  %"$BoolUtils.andb_call_1233" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1230"(i8* %"$BoolUtils.andb_envptr_1231", %TName_Bool* %"$$res_46_1232")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1233", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$BoolUtils.andb_162" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_161_1234" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$$BoolUtils.andb_161_fptr_1235" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1234", 0
  %"$$BoolUtils.andb_161_envptr_1236" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1234", 1
  %"$$res__49_1237" = load %TName_Bool*, %TName_Bool** %"$res__49", align 8
  %"$$BoolUtils.andb_161_call_1238" = call %TName_Bool* %"$$BoolUtils.andb_161_fptr_1235"(i8* %"$$BoolUtils.andb_161_envptr_1236", %TName_Bool* %"$$res__49_1237")
  store %TName_Bool* %"$$BoolUtils.andb_161_call_1238", %TName_Bool** %"$BoolUtils.andb_162", align 8
  %"$$BoolUtils.andb_162_1239" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_162", align 8
  store %TName_Bool* %"$$BoolUtils.andb_162_1239", %TName_Bool** %"$res_50", align 8
  %"$gasrem_1240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1241" = icmp ugt i64 1, %"$gasrem_1240"
  br i1 %"$gascmp_1241", label %"$out_of_gas_1242", label %"$have_gas_1243"

"$out_of_gas_1242":                               ; preds = %"$have_gas_1227"
  call void @_out_of_gas()
  br label %"$have_gas_1243"

"$have_gas_1243":                                 ; preds = %"$out_of_gas_1242", %"$have_gas_1227"
  %"$consume_1244" = sub i64 %"$gasrem_1240", 1
  store i64 %"$consume_1244", i64* @_gasrem, align 8
  %"$p_51" = alloca %Int64, align 8
  %"$p2_1245" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1246" = extractvalue %Uint32 %"$p2_1245", 0
  %"$valueof_1247" = zext i32 %"$valueof_1246" to i64
  %"$gasmul_1248" = mul i64 20, %"$valueof_1247"
  %"$gasrem_1249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1250" = icmp ugt i64 %"$gasmul_1248", %"$gasrem_1249"
  br i1 %"$gascmp_1250", label %"$out_of_gas_1251", label %"$have_gas_1252"

"$out_of_gas_1251":                               ; preds = %"$have_gas_1243"
  call void @_out_of_gas()
  br label %"$have_gas_1252"

"$have_gas_1252":                                 ; preds = %"$out_of_gas_1251", %"$have_gas_1243"
  %"$consume_1253" = sub i64 %"$gasrem_1249", %"$gasmul_1248"
  store i64 %"$consume_1253", i64* @_gasrem, align 8
  %"$t4_1254" = load %Int64, %Int64* %t4, align 8
  %"$p2_1255" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1256" = call %Int64 @_pow_Int64(%Int64 %"$t4_1254", %Uint32 %"$p2_1255")
  store %Int64 %"$pow_call_1256", %Int64* %"$p_51", align 8
  %"$gasrem_1257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1258" = icmp ugt i64 1, %"$gasrem_1257"
  br i1 %"$gascmp_1258", label %"$out_of_gas_1259", label %"$have_gas_1260"

"$out_of_gas_1259":                               ; preds = %"$have_gas_1252"
  call void @_out_of_gas()
  br label %"$have_gas_1260"

"$have_gas_1260":                                 ; preds = %"$out_of_gas_1259", %"$have_gas_1252"
  %"$consume_1261" = sub i64 %"$gasrem_1257", 1
  store i64 %"$consume_1261", i64* @_gasrem, align 8
  %"$res_54" = alloca %TName_Bool*, align 8
  %"$gasrem_1262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1263" = icmp ugt i64 1, %"$gasrem_1262"
  br i1 %"$gascmp_1263", label %"$out_of_gas_1264", label %"$have_gas_1265"

"$out_of_gas_1264":                               ; preds = %"$have_gas_1260"
  call void @_out_of_gas()
  br label %"$have_gas_1265"

"$have_gas_1265":                                 ; preds = %"$out_of_gas_1264", %"$have_gas_1260"
  %"$consume_1266" = sub i64 %"$gasrem_1262", 1
  store i64 %"$consume_1266", i64* @_gasrem, align 8
  %"$ans_52" = alloca %Int64, align 8
  %"$gasrem_1267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1268" = icmp ugt i64 1, %"$gasrem_1267"
  br i1 %"$gascmp_1268", label %"$out_of_gas_1269", label %"$have_gas_1270"

"$out_of_gas_1269":                               ; preds = %"$have_gas_1265"
  call void @_out_of_gas()
  br label %"$have_gas_1270"

"$have_gas_1270":                                 ; preds = %"$out_of_gas_1269", %"$have_gas_1265"
  %"$consume_1271" = sub i64 %"$gasrem_1267", 1
  store i64 %"$consume_1271", i64* @_gasrem, align 8
  store %Int64 { i64 -101 }, %Int64* %"$ans_52", align 8
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 1, %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$have_gas_1270"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$have_gas_1270"
  %"$consume_1276" = sub i64 %"$gasrem_1272", 1
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  %"$res__53" = alloca %TName_Bool*, align 8
  %"$gasrem_1277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1278" = icmp ugt i64 4, %"$gasrem_1277"
  br i1 %"$gascmp_1278", label %"$out_of_gas_1279", label %"$have_gas_1280"

"$out_of_gas_1279":                               ; preds = %"$have_gas_1275"
  call void @_out_of_gas()
  br label %"$have_gas_1280"

"$have_gas_1280":                                 ; preds = %"$out_of_gas_1279", %"$have_gas_1275"
  %"$consume_1281" = sub i64 %"$gasrem_1277", 4
  store i64 %"$consume_1281", i64* @_gasrem, align 8
  %"$execptr_load_1282" = load i8*, i8** @_execptr, align 8
  %"$$p_51_1283" = load %Int64, %Int64* %"$p_51", align 8
  %"$$ans_52_1284" = load %Int64, %Int64* %"$ans_52", align 8
  %"$eq_call_1285" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1282", %Int64 %"$$p_51_1283", %Int64 %"$$ans_52_1284")
  store %TName_Bool* %"$eq_call_1285", %TName_Bool** %"$res__53", align 8
  %"$gasrem_1287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1288" = icmp ugt i64 1, %"$gasrem_1287"
  br i1 %"$gascmp_1288", label %"$out_of_gas_1289", label %"$have_gas_1290"

"$out_of_gas_1289":                               ; preds = %"$have_gas_1280"
  call void @_out_of_gas()
  br label %"$have_gas_1290"

"$have_gas_1290":                                 ; preds = %"$out_of_gas_1289", %"$have_gas_1280"
  %"$consume_1291" = sub i64 %"$gasrem_1287", 1
  store i64 %"$consume_1291", i64* @_gasrem, align 8
  %"$BoolUtils.andb_163" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1292" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1293" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1292", 0
  %"$BoolUtils.andb_envptr_1294" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1292", 1
  %"$$res_50_1295" = load %TName_Bool*, %TName_Bool** %"$res_50", align 8
  %"$BoolUtils.andb_call_1296" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1293"(i8* %"$BoolUtils.andb_envptr_1294", %TName_Bool* %"$$res_50_1295")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1296", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$BoolUtils.andb_164" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_163_1297" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$$BoolUtils.andb_163_fptr_1298" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1297", 0
  %"$$BoolUtils.andb_163_envptr_1299" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1297", 1
  %"$$res__53_1300" = load %TName_Bool*, %TName_Bool** %"$res__53", align 8
  %"$$BoolUtils.andb_163_call_1301" = call %TName_Bool* %"$$BoolUtils.andb_163_fptr_1298"(i8* %"$$BoolUtils.andb_163_envptr_1299", %TName_Bool* %"$$res__53_1300")
  store %TName_Bool* %"$$BoolUtils.andb_163_call_1301", %TName_Bool** %"$BoolUtils.andb_164", align 8
  %"$$BoolUtils.andb_164_1302" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_164", align 8
  store %TName_Bool* %"$$BoolUtils.andb_164_1302", %TName_Bool** %"$res_54", align 8
  %"$gasrem_1303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1304" = icmp ugt i64 1, %"$gasrem_1303"
  br i1 %"$gascmp_1304", label %"$out_of_gas_1305", label %"$have_gas_1306"

"$out_of_gas_1305":                               ; preds = %"$have_gas_1290"
  call void @_out_of_gas()
  br label %"$have_gas_1306"

"$have_gas_1306":                                 ; preds = %"$out_of_gas_1305", %"$have_gas_1290"
  %"$consume_1307" = sub i64 %"$gasrem_1303", 1
  store i64 %"$consume_1307", i64* @_gasrem, align 8
  %"$p_55" = alloca %Int64, align 8
  %"$p3_1308" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1309" = extractvalue %Uint32 %"$p3_1308", 0
  %"$valueof_1310" = zext i32 %"$valueof_1309" to i64
  %"$gasmul_1311" = mul i64 20, %"$valueof_1310"
  %"$gasrem_1312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1313" = icmp ugt i64 %"$gasmul_1311", %"$gasrem_1312"
  br i1 %"$gascmp_1313", label %"$out_of_gas_1314", label %"$have_gas_1315"

"$out_of_gas_1314":                               ; preds = %"$have_gas_1306"
  call void @_out_of_gas()
  br label %"$have_gas_1315"

"$have_gas_1315":                                 ; preds = %"$out_of_gas_1314", %"$have_gas_1306"
  %"$consume_1316" = sub i64 %"$gasrem_1312", %"$gasmul_1311"
  store i64 %"$consume_1316", i64* @_gasrem, align 8
  %"$t4_1317" = load %Int64, %Int64* %t4, align 8
  %"$p3_1318" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1319" = call %Int64 @_pow_Int64(%Int64 %"$t4_1317", %Uint32 %"$p3_1318")
  store %Int64 %"$pow_call_1319", %Int64* %"$p_55", align 8
  %"$gasrem_1320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1321" = icmp ugt i64 1, %"$gasrem_1320"
  br i1 %"$gascmp_1321", label %"$out_of_gas_1322", label %"$have_gas_1323"

"$out_of_gas_1322":                               ; preds = %"$have_gas_1315"
  call void @_out_of_gas()
  br label %"$have_gas_1323"

"$have_gas_1323":                                 ; preds = %"$out_of_gas_1322", %"$have_gas_1315"
  %"$consume_1324" = sub i64 %"$gasrem_1320", 1
  store i64 %"$consume_1324", i64* @_gasrem, align 8
  %"$res_58" = alloca %TName_Bool*, align 8
  %"$gasrem_1325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1326" = icmp ugt i64 1, %"$gasrem_1325"
  br i1 %"$gascmp_1326", label %"$out_of_gas_1327", label %"$have_gas_1328"

"$out_of_gas_1327":                               ; preds = %"$have_gas_1323"
  call void @_out_of_gas()
  br label %"$have_gas_1328"

"$have_gas_1328":                                 ; preds = %"$out_of_gas_1327", %"$have_gas_1323"
  %"$consume_1329" = sub i64 %"$gasrem_1325", 1
  store i64 %"$consume_1329", i64* @_gasrem, align 8
  %"$ans_56" = alloca %Int64, align 8
  %"$gasrem_1330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1331" = icmp ugt i64 1, %"$gasrem_1330"
  br i1 %"$gascmp_1331", label %"$out_of_gas_1332", label %"$have_gas_1333"

"$out_of_gas_1332":                               ; preds = %"$have_gas_1328"
  call void @_out_of_gas()
  br label %"$have_gas_1333"

"$have_gas_1333":                                 ; preds = %"$out_of_gas_1332", %"$have_gas_1328"
  %"$consume_1334" = sub i64 %"$gasrem_1330", 1
  store i64 %"$consume_1334", i64* @_gasrem, align 8
  store %Int64 { i64 104060401 }, %Int64* %"$ans_56", align 8
  %"$gasrem_1335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1336" = icmp ugt i64 1, %"$gasrem_1335"
  br i1 %"$gascmp_1336", label %"$out_of_gas_1337", label %"$have_gas_1338"

"$out_of_gas_1337":                               ; preds = %"$have_gas_1333"
  call void @_out_of_gas()
  br label %"$have_gas_1338"

"$have_gas_1338":                                 ; preds = %"$out_of_gas_1337", %"$have_gas_1333"
  %"$consume_1339" = sub i64 %"$gasrem_1335", 1
  store i64 %"$consume_1339", i64* @_gasrem, align 8
  %"$res__57" = alloca %TName_Bool*, align 8
  %"$gasrem_1340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1341" = icmp ugt i64 4, %"$gasrem_1340"
  br i1 %"$gascmp_1341", label %"$out_of_gas_1342", label %"$have_gas_1343"

"$out_of_gas_1342":                               ; preds = %"$have_gas_1338"
  call void @_out_of_gas()
  br label %"$have_gas_1343"

"$have_gas_1343":                                 ; preds = %"$out_of_gas_1342", %"$have_gas_1338"
  %"$consume_1344" = sub i64 %"$gasrem_1340", 4
  store i64 %"$consume_1344", i64* @_gasrem, align 8
  %"$execptr_load_1345" = load i8*, i8** @_execptr, align 8
  %"$$p_55_1346" = load %Int64, %Int64* %"$p_55", align 8
  %"$$ans_56_1347" = load %Int64, %Int64* %"$ans_56", align 8
  %"$eq_call_1348" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1345", %Int64 %"$$p_55_1346", %Int64 %"$$ans_56_1347")
  store %TName_Bool* %"$eq_call_1348", %TName_Bool** %"$res__57", align 8
  %"$gasrem_1350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1351" = icmp ugt i64 1, %"$gasrem_1350"
  br i1 %"$gascmp_1351", label %"$out_of_gas_1352", label %"$have_gas_1353"

"$out_of_gas_1352":                               ; preds = %"$have_gas_1343"
  call void @_out_of_gas()
  br label %"$have_gas_1353"

"$have_gas_1353":                                 ; preds = %"$out_of_gas_1352", %"$have_gas_1343"
  %"$consume_1354" = sub i64 %"$gasrem_1350", 1
  store i64 %"$consume_1354", i64* @_gasrem, align 8
  %"$BoolUtils.andb_165" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1355" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1356" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1355", 0
  %"$BoolUtils.andb_envptr_1357" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1355", 1
  %"$$res_54_1358" = load %TName_Bool*, %TName_Bool** %"$res_54", align 8
  %"$BoolUtils.andb_call_1359" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1356"(i8* %"$BoolUtils.andb_envptr_1357", %TName_Bool* %"$$res_54_1358")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1359", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$BoolUtils.andb_166" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_165_1360" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$$BoolUtils.andb_165_fptr_1361" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1360", 0
  %"$$BoolUtils.andb_165_envptr_1362" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1360", 1
  %"$$res__57_1363" = load %TName_Bool*, %TName_Bool** %"$res__57", align 8
  %"$$BoolUtils.andb_165_call_1364" = call %TName_Bool* %"$$BoolUtils.andb_165_fptr_1361"(i8* %"$$BoolUtils.andb_165_envptr_1362", %TName_Bool* %"$$res__57_1363")
  store %TName_Bool* %"$$BoolUtils.andb_165_call_1364", %TName_Bool** %"$BoolUtils.andb_166", align 8
  %"$$BoolUtils.andb_166_1365" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_166", align 8
  store %TName_Bool* %"$$BoolUtils.andb_166_1365", %TName_Bool** %"$res_58", align 8
  %"$gasrem_1366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1367" = icmp ugt i64 1, %"$gasrem_1366"
  br i1 %"$gascmp_1367", label %"$out_of_gas_1368", label %"$have_gas_1369"

"$out_of_gas_1368":                               ; preds = %"$have_gas_1353"
  call void @_out_of_gas()
  br label %"$have_gas_1369"

"$have_gas_1369":                                 ; preds = %"$out_of_gas_1368", %"$have_gas_1353"
  %"$consume_1370" = sub i64 %"$gasrem_1366", 1
  store i64 %"$consume_1370", i64* @_gasrem, align 8
  %"$p_59" = alloca %Uint128, align 8
  %"$p1_1371" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1372" = extractvalue %Uint32 %"$p1_1371", 0
  %"$valueof_1373" = zext i32 %"$valueof_1372" to i64
  %"$gasmul_1374" = mul i64 20, %"$valueof_1373"
  %"$gasmul_1375" = mul i64 %"$gasmul_1374", 2
  %"$gasrem_1376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1377" = icmp ugt i64 %"$gasmul_1375", %"$gasrem_1376"
  br i1 %"$gascmp_1377", label %"$out_of_gas_1378", label %"$have_gas_1379"

"$out_of_gas_1378":                               ; preds = %"$have_gas_1369"
  call void @_out_of_gas()
  br label %"$have_gas_1379"

"$have_gas_1379":                                 ; preds = %"$out_of_gas_1378", %"$have_gas_1369"
  %"$consume_1380" = sub i64 %"$gasrem_1376", %"$gasmul_1375"
  store i64 %"$consume_1380", i64* @_gasrem, align 8
  %"$t5_1381" = load %Uint128, %Uint128* %t5, align 8
  %"$p1_1382" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1383" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1381", %Uint32 %"$p1_1382")
  store %Uint128 %"$pow_call_1383", %Uint128* %"$p_59", align 8
  %"$gasrem_1384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1385" = icmp ugt i64 1, %"$gasrem_1384"
  br i1 %"$gascmp_1385", label %"$out_of_gas_1386", label %"$have_gas_1387"

"$out_of_gas_1386":                               ; preds = %"$have_gas_1379"
  call void @_out_of_gas()
  br label %"$have_gas_1387"

"$have_gas_1387":                                 ; preds = %"$out_of_gas_1386", %"$have_gas_1379"
  %"$consume_1388" = sub i64 %"$gasrem_1384", 1
  store i64 %"$consume_1388", i64* @_gasrem, align 8
  %"$res_62" = alloca %TName_Bool*, align 8
  %"$gasrem_1389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1390" = icmp ugt i64 1, %"$gasrem_1389"
  br i1 %"$gascmp_1390", label %"$out_of_gas_1391", label %"$have_gas_1392"

"$out_of_gas_1391":                               ; preds = %"$have_gas_1387"
  call void @_out_of_gas()
  br label %"$have_gas_1392"

"$have_gas_1392":                                 ; preds = %"$out_of_gas_1391", %"$have_gas_1387"
  %"$consume_1393" = sub i64 %"$gasrem_1389", 1
  store i64 %"$consume_1393", i64* @_gasrem, align 8
  %"$ans_60" = alloca %Uint128, align 8
  %"$gasrem_1394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1395" = icmp ugt i64 1, %"$gasrem_1394"
  br i1 %"$gascmp_1395", label %"$out_of_gas_1396", label %"$have_gas_1397"

"$out_of_gas_1396":                               ; preds = %"$have_gas_1392"
  call void @_out_of_gas()
  br label %"$have_gas_1397"

"$have_gas_1397":                                 ; preds = %"$out_of_gas_1396", %"$have_gas_1392"
  %"$consume_1398" = sub i64 %"$gasrem_1394", 1
  store i64 %"$consume_1398", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %"$ans_60", align 8
  %"$gasrem_1399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1400" = icmp ugt i64 1, %"$gasrem_1399"
  br i1 %"$gascmp_1400", label %"$out_of_gas_1401", label %"$have_gas_1402"

"$out_of_gas_1401":                               ; preds = %"$have_gas_1397"
  call void @_out_of_gas()
  br label %"$have_gas_1402"

"$have_gas_1402":                                 ; preds = %"$out_of_gas_1401", %"$have_gas_1397"
  %"$consume_1403" = sub i64 %"$gasrem_1399", 1
  store i64 %"$consume_1403", i64* @_gasrem, align 8
  %"$res__61" = alloca %TName_Bool*, align 8
  %"$gasrem_1405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1406" = icmp ugt i64 8, %"$gasrem_1405"
  br i1 %"$gascmp_1406", label %"$out_of_gas_1407", label %"$have_gas_1408"

"$out_of_gas_1407":                               ; preds = %"$have_gas_1402"
  call void @_out_of_gas()
  br label %"$have_gas_1408"

"$have_gas_1408":                                 ; preds = %"$out_of_gas_1407", %"$have_gas_1402"
  %"$consume_1409" = sub i64 %"$gasrem_1405", 8
  store i64 %"$consume_1409", i64* @_gasrem, align 8
  %"$execptr_load_1410" = load i8*, i8** @_execptr, align 8
  %"$$p_59_1411" = load %Uint128, %Uint128* %"$p_59", align 8
  %"$$ans_60_1412" = load %Uint128, %Uint128* %"$ans_60", align 8
  %"$eq_call_1413" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1410", %Uint128 %"$$p_59_1411", %Uint128 %"$$ans_60_1412")
  store %TName_Bool* %"$eq_call_1413", %TName_Bool** %"$res__61", align 8
  %"$gasrem_1415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1416" = icmp ugt i64 1, %"$gasrem_1415"
  br i1 %"$gascmp_1416", label %"$out_of_gas_1417", label %"$have_gas_1418"

"$out_of_gas_1417":                               ; preds = %"$have_gas_1408"
  call void @_out_of_gas()
  br label %"$have_gas_1418"

"$have_gas_1418":                                 ; preds = %"$out_of_gas_1417", %"$have_gas_1408"
  %"$consume_1419" = sub i64 %"$gasrem_1415", 1
  store i64 %"$consume_1419", i64* @_gasrem, align 8
  %"$BoolUtils.andb_167" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1420" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1421" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1420", 0
  %"$BoolUtils.andb_envptr_1422" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1420", 1
  %"$$res_58_1423" = load %TName_Bool*, %TName_Bool** %"$res_58", align 8
  %"$BoolUtils.andb_call_1424" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1421"(i8* %"$BoolUtils.andb_envptr_1422", %TName_Bool* %"$$res_58_1423")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1424", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$BoolUtils.andb_168" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_167_1425" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$$BoolUtils.andb_167_fptr_1426" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1425", 0
  %"$$BoolUtils.andb_167_envptr_1427" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1425", 1
  %"$$res__61_1428" = load %TName_Bool*, %TName_Bool** %"$res__61", align 8
  %"$$BoolUtils.andb_167_call_1429" = call %TName_Bool* %"$$BoolUtils.andb_167_fptr_1426"(i8* %"$$BoolUtils.andb_167_envptr_1427", %TName_Bool* %"$$res__61_1428")
  store %TName_Bool* %"$$BoolUtils.andb_167_call_1429", %TName_Bool** %"$BoolUtils.andb_168", align 8
  %"$$BoolUtils.andb_168_1430" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_168", align 8
  store %TName_Bool* %"$$BoolUtils.andb_168_1430", %TName_Bool** %"$res_62", align 8
  %"$gasrem_1431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1432" = icmp ugt i64 1, %"$gasrem_1431"
  br i1 %"$gascmp_1432", label %"$out_of_gas_1433", label %"$have_gas_1434"

"$out_of_gas_1433":                               ; preds = %"$have_gas_1418"
  call void @_out_of_gas()
  br label %"$have_gas_1434"

"$have_gas_1434":                                 ; preds = %"$out_of_gas_1433", %"$have_gas_1418"
  %"$consume_1435" = sub i64 %"$gasrem_1431", 1
  store i64 %"$consume_1435", i64* @_gasrem, align 8
  %"$p_63" = alloca %Uint128, align 8
  %"$p2_1436" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1437" = extractvalue %Uint32 %"$p2_1436", 0
  %"$valueof_1438" = zext i32 %"$valueof_1437" to i64
  %"$gasmul_1439" = mul i64 20, %"$valueof_1438"
  %"$gasmul_1440" = mul i64 %"$gasmul_1439", 2
  %"$gasrem_1441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1442" = icmp ugt i64 %"$gasmul_1440", %"$gasrem_1441"
  br i1 %"$gascmp_1442", label %"$out_of_gas_1443", label %"$have_gas_1444"

"$out_of_gas_1443":                               ; preds = %"$have_gas_1434"
  call void @_out_of_gas()
  br label %"$have_gas_1444"

"$have_gas_1444":                                 ; preds = %"$out_of_gas_1443", %"$have_gas_1434"
  %"$consume_1445" = sub i64 %"$gasrem_1441", %"$gasmul_1440"
  store i64 %"$consume_1445", i64* @_gasrem, align 8
  %"$t5_1446" = load %Uint128, %Uint128* %t5, align 8
  %"$p2_1447" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1448" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1446", %Uint32 %"$p2_1447")
  store %Uint128 %"$pow_call_1448", %Uint128* %"$p_63", align 8
  %"$gasrem_1449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1450" = icmp ugt i64 1, %"$gasrem_1449"
  br i1 %"$gascmp_1450", label %"$out_of_gas_1451", label %"$have_gas_1452"

"$out_of_gas_1451":                               ; preds = %"$have_gas_1444"
  call void @_out_of_gas()
  br label %"$have_gas_1452"

"$have_gas_1452":                                 ; preds = %"$out_of_gas_1451", %"$have_gas_1444"
  %"$consume_1453" = sub i64 %"$gasrem_1449", 1
  store i64 %"$consume_1453", i64* @_gasrem, align 8
  %"$res_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1455" = icmp ugt i64 1, %"$gasrem_1454"
  br i1 %"$gascmp_1455", label %"$out_of_gas_1456", label %"$have_gas_1457"

"$out_of_gas_1456":                               ; preds = %"$have_gas_1452"
  call void @_out_of_gas()
  br label %"$have_gas_1457"

"$have_gas_1457":                                 ; preds = %"$out_of_gas_1456", %"$have_gas_1452"
  %"$consume_1458" = sub i64 %"$gasrem_1454", 1
  store i64 %"$consume_1458", i64* @_gasrem, align 8
  %"$ans_64" = alloca %Uint128, align 8
  %"$gasrem_1459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1460" = icmp ugt i64 1, %"$gasrem_1459"
  br i1 %"$gascmp_1460", label %"$out_of_gas_1461", label %"$have_gas_1462"

"$out_of_gas_1461":                               ; preds = %"$have_gas_1457"
  call void @_out_of_gas()
  br label %"$have_gas_1462"

"$have_gas_1462":                                 ; preds = %"$out_of_gas_1461", %"$have_gas_1457"
  %"$consume_1463" = sub i64 %"$gasrem_1459", 1
  store i64 %"$consume_1463", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %"$ans_64", align 8
  %"$gasrem_1464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1465" = icmp ugt i64 1, %"$gasrem_1464"
  br i1 %"$gascmp_1465", label %"$out_of_gas_1466", label %"$have_gas_1467"

"$out_of_gas_1466":                               ; preds = %"$have_gas_1462"
  call void @_out_of_gas()
  br label %"$have_gas_1467"

"$have_gas_1467":                                 ; preds = %"$out_of_gas_1466", %"$have_gas_1462"
  %"$consume_1468" = sub i64 %"$gasrem_1464", 1
  store i64 %"$consume_1468", i64* @_gasrem, align 8
  %"$res__65" = alloca %TName_Bool*, align 8
  %"$gasrem_1470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1471" = icmp ugt i64 8, %"$gasrem_1470"
  br i1 %"$gascmp_1471", label %"$out_of_gas_1472", label %"$have_gas_1473"

"$out_of_gas_1472":                               ; preds = %"$have_gas_1467"
  call void @_out_of_gas()
  br label %"$have_gas_1473"

"$have_gas_1473":                                 ; preds = %"$out_of_gas_1472", %"$have_gas_1467"
  %"$consume_1474" = sub i64 %"$gasrem_1470", 8
  store i64 %"$consume_1474", i64* @_gasrem, align 8
  %"$execptr_load_1475" = load i8*, i8** @_execptr, align 8
  %"$$p_63_1476" = load %Uint128, %Uint128* %"$p_63", align 8
  %"$$ans_64_1477" = load %Uint128, %Uint128* %"$ans_64", align 8
  %"$eq_call_1478" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1475", %Uint128 %"$$p_63_1476", %Uint128 %"$$ans_64_1477")
  store %TName_Bool* %"$eq_call_1478", %TName_Bool** %"$res__65", align 8
  %"$gasrem_1480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1481" = icmp ugt i64 1, %"$gasrem_1480"
  br i1 %"$gascmp_1481", label %"$out_of_gas_1482", label %"$have_gas_1483"

"$out_of_gas_1482":                               ; preds = %"$have_gas_1473"
  call void @_out_of_gas()
  br label %"$have_gas_1483"

"$have_gas_1483":                                 ; preds = %"$out_of_gas_1482", %"$have_gas_1473"
  %"$consume_1484" = sub i64 %"$gasrem_1480", 1
  store i64 %"$consume_1484", i64* @_gasrem, align 8
  %"$BoolUtils.andb_169" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1485" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1486" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1485", 0
  %"$BoolUtils.andb_envptr_1487" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1485", 1
  %"$$res_62_1488" = load %TName_Bool*, %TName_Bool** %"$res_62", align 8
  %"$BoolUtils.andb_call_1489" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1486"(i8* %"$BoolUtils.andb_envptr_1487", %TName_Bool* %"$$res_62_1488")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1489", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8
  %"$BoolUtils.andb_170" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_169_1490" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8
  %"$$BoolUtils.andb_169_fptr_1491" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1490", 0
  %"$$BoolUtils.andb_169_envptr_1492" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1490", 1
  %"$$res__65_1493" = load %TName_Bool*, %TName_Bool** %"$res__65", align 8
  %"$$BoolUtils.andb_169_call_1494" = call %TName_Bool* %"$$BoolUtils.andb_169_fptr_1491"(i8* %"$$BoolUtils.andb_169_envptr_1492", %TName_Bool* %"$$res__65_1493")
  store %TName_Bool* %"$$BoolUtils.andb_169_call_1494", %TName_Bool** %"$BoolUtils.andb_170", align 8
  %"$$BoolUtils.andb_170_1495" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_170", align 8
  store %TName_Bool* %"$$BoolUtils.andb_170_1495", %TName_Bool** %"$res_66", align 8
  %"$gasrem_1496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1497" = icmp ugt i64 1, %"$gasrem_1496"
  br i1 %"$gascmp_1497", label %"$out_of_gas_1498", label %"$have_gas_1499"

"$out_of_gas_1498":                               ; preds = %"$have_gas_1483"
  call void @_out_of_gas()
  br label %"$have_gas_1499"

"$have_gas_1499":                                 ; preds = %"$out_of_gas_1498", %"$have_gas_1483"
  %"$consume_1500" = sub i64 %"$gasrem_1496", 1
  store i64 %"$consume_1500", i64* @_gasrem, align 8
  %"$p_67" = alloca %Uint128, align 8
  %"$p3_1501" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1502" = extractvalue %Uint32 %"$p3_1501", 0
  %"$valueof_1503" = zext i32 %"$valueof_1502" to i64
  %"$gasmul_1504" = mul i64 20, %"$valueof_1503"
  %"$gasmul_1505" = mul i64 %"$gasmul_1504", 2
  %"$gasrem_1506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1507" = icmp ugt i64 %"$gasmul_1505", %"$gasrem_1506"
  br i1 %"$gascmp_1507", label %"$out_of_gas_1508", label %"$have_gas_1509"

"$out_of_gas_1508":                               ; preds = %"$have_gas_1499"
  call void @_out_of_gas()
  br label %"$have_gas_1509"

"$have_gas_1509":                                 ; preds = %"$out_of_gas_1508", %"$have_gas_1499"
  %"$consume_1510" = sub i64 %"$gasrem_1506", %"$gasmul_1505"
  store i64 %"$consume_1510", i64* @_gasrem, align 8
  %"$t5_1511" = load %Uint128, %Uint128* %t5, align 8
  %"$p3_1512" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1513" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1511", %Uint32 %"$p3_1512")
  store %Uint128 %"$pow_call_1513", %Uint128* %"$p_67", align 8
  %"$gasrem_1514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1515" = icmp ugt i64 1, %"$gasrem_1514"
  br i1 %"$gascmp_1515", label %"$out_of_gas_1516", label %"$have_gas_1517"

"$out_of_gas_1516":                               ; preds = %"$have_gas_1509"
  call void @_out_of_gas()
  br label %"$have_gas_1517"

"$have_gas_1517":                                 ; preds = %"$out_of_gas_1516", %"$have_gas_1509"
  %"$consume_1518" = sub i64 %"$gasrem_1514", 1
  store i64 %"$consume_1518", i64* @_gasrem, align 8
  %"$res_70" = alloca %TName_Bool*, align 8
  %"$gasrem_1519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1520" = icmp ugt i64 1, %"$gasrem_1519"
  br i1 %"$gascmp_1520", label %"$out_of_gas_1521", label %"$have_gas_1522"

"$out_of_gas_1521":                               ; preds = %"$have_gas_1517"
  call void @_out_of_gas()
  br label %"$have_gas_1522"

"$have_gas_1522":                                 ; preds = %"$out_of_gas_1521", %"$have_gas_1517"
  %"$consume_1523" = sub i64 %"$gasrem_1519", 1
  store i64 %"$consume_1523", i64* @_gasrem, align 8
  %"$ans_68" = alloca %Uint128, align 8
  %"$gasrem_1524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1525" = icmp ugt i64 1, %"$gasrem_1524"
  br i1 %"$gascmp_1525", label %"$out_of_gas_1526", label %"$have_gas_1527"

"$out_of_gas_1526":                               ; preds = %"$have_gas_1522"
  call void @_out_of_gas()
  br label %"$have_gas_1527"

"$have_gas_1527":                                 ; preds = %"$out_of_gas_1526", %"$have_gas_1522"
  %"$consume_1528" = sub i64 %"$gasrem_1524", 1
  store i64 %"$consume_1528", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000 }, %Uint128* %"$ans_68", align 8
  %"$gasrem_1529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1530" = icmp ugt i64 1, %"$gasrem_1529"
  br i1 %"$gascmp_1530", label %"$out_of_gas_1531", label %"$have_gas_1532"

"$out_of_gas_1531":                               ; preds = %"$have_gas_1527"
  call void @_out_of_gas()
  br label %"$have_gas_1532"

"$have_gas_1532":                                 ; preds = %"$out_of_gas_1531", %"$have_gas_1527"
  %"$consume_1533" = sub i64 %"$gasrem_1529", 1
  store i64 %"$consume_1533", i64* @_gasrem, align 8
  %"$res__69" = alloca %TName_Bool*, align 8
  %"$gasrem_1535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1536" = icmp ugt i64 8, %"$gasrem_1535"
  br i1 %"$gascmp_1536", label %"$out_of_gas_1537", label %"$have_gas_1538"

"$out_of_gas_1537":                               ; preds = %"$have_gas_1532"
  call void @_out_of_gas()
  br label %"$have_gas_1538"

"$have_gas_1538":                                 ; preds = %"$out_of_gas_1537", %"$have_gas_1532"
  %"$consume_1539" = sub i64 %"$gasrem_1535", 8
  store i64 %"$consume_1539", i64* @_gasrem, align 8
  %"$execptr_load_1540" = load i8*, i8** @_execptr, align 8
  %"$$p_67_1541" = load %Uint128, %Uint128* %"$p_67", align 8
  %"$$ans_68_1542" = load %Uint128, %Uint128* %"$ans_68", align 8
  %"$eq_call_1543" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1540", %Uint128 %"$$p_67_1541", %Uint128 %"$$ans_68_1542")
  store %TName_Bool* %"$eq_call_1543", %TName_Bool** %"$res__69", align 8
  %"$gasrem_1545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1546" = icmp ugt i64 1, %"$gasrem_1545"
  br i1 %"$gascmp_1546", label %"$out_of_gas_1547", label %"$have_gas_1548"

"$out_of_gas_1547":                               ; preds = %"$have_gas_1538"
  call void @_out_of_gas()
  br label %"$have_gas_1548"

"$have_gas_1548":                                 ; preds = %"$out_of_gas_1547", %"$have_gas_1538"
  %"$consume_1549" = sub i64 %"$gasrem_1545", 1
  store i64 %"$consume_1549", i64* @_gasrem, align 8
  %"$BoolUtils.andb_171" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1550" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1551" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1550", 0
  %"$BoolUtils.andb_envptr_1552" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1550", 1
  %"$$res_66_1553" = load %TName_Bool*, %TName_Bool** %"$res_66", align 8
  %"$BoolUtils.andb_call_1554" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1551"(i8* %"$BoolUtils.andb_envptr_1552", %TName_Bool* %"$$res_66_1553")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1554", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8
  %"$BoolUtils.andb_172" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_171_1555" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8
  %"$$BoolUtils.andb_171_fptr_1556" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1555", 0
  %"$$BoolUtils.andb_171_envptr_1557" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1555", 1
  %"$$res__69_1558" = load %TName_Bool*, %TName_Bool** %"$res__69", align 8
  %"$$BoolUtils.andb_171_call_1559" = call %TName_Bool* %"$$BoolUtils.andb_171_fptr_1556"(i8* %"$$BoolUtils.andb_171_envptr_1557", %TName_Bool* %"$$res__69_1558")
  store %TName_Bool* %"$$BoolUtils.andb_171_call_1559", %TName_Bool** %"$BoolUtils.andb_172", align 8
  %"$$BoolUtils.andb_172_1560" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_172", align 8
  store %TName_Bool* %"$$BoolUtils.andb_172_1560", %TName_Bool** %"$res_70", align 8
  %"$gasrem_1561" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1562" = icmp ugt i64 1, %"$gasrem_1561"
  br i1 %"$gascmp_1562", label %"$out_of_gas_1563", label %"$have_gas_1564"

"$out_of_gas_1563":                               ; preds = %"$have_gas_1548"
  call void @_out_of_gas()
  br label %"$have_gas_1564"

"$have_gas_1564":                                 ; preds = %"$out_of_gas_1563", %"$have_gas_1548"
  %"$consume_1565" = sub i64 %"$gasrem_1561", 1
  store i64 %"$consume_1565", i64* @_gasrem, align 8
  %"$p_71" = alloca %Uint128, align 8
  %"$p4_1566" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_1567" = extractvalue %Uint32 %"$p4_1566", 0
  %"$valueof_1568" = zext i32 %"$valueof_1567" to i64
  %"$gasmul_1569" = mul i64 20, %"$valueof_1568"
  %"$gasmul_1570" = mul i64 %"$gasmul_1569", 2
  %"$gasrem_1571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1572" = icmp ugt i64 %"$gasmul_1570", %"$gasrem_1571"
  br i1 %"$gascmp_1572", label %"$out_of_gas_1573", label %"$have_gas_1574"

"$out_of_gas_1573":                               ; preds = %"$have_gas_1564"
  call void @_out_of_gas()
  br label %"$have_gas_1574"

"$have_gas_1574":                                 ; preds = %"$out_of_gas_1573", %"$have_gas_1564"
  %"$consume_1575" = sub i64 %"$gasrem_1571", %"$gasmul_1570"
  store i64 %"$consume_1575", i64* @_gasrem, align 8
  %"$t5_1576" = load %Uint128, %Uint128* %t5, align 8
  %"$p4_1577" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1578" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1576", %Uint32 %"$p4_1577")
  store %Uint128 %"$pow_call_1578", %Uint128* %"$p_71", align 8
  %"$gasrem_1579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1580" = icmp ugt i64 1, %"$gasrem_1579"
  br i1 %"$gascmp_1580", label %"$out_of_gas_1581", label %"$have_gas_1582"

"$out_of_gas_1581":                               ; preds = %"$have_gas_1574"
  call void @_out_of_gas()
  br label %"$have_gas_1582"

"$have_gas_1582":                                 ; preds = %"$out_of_gas_1581", %"$have_gas_1574"
  %"$consume_1583" = sub i64 %"$gasrem_1579", 1
  store i64 %"$consume_1583", i64* @_gasrem, align 8
  %"$res_74" = alloca %TName_Bool*, align 8
  %"$gasrem_1584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1585" = icmp ugt i64 1, %"$gasrem_1584"
  br i1 %"$gascmp_1585", label %"$out_of_gas_1586", label %"$have_gas_1587"

"$out_of_gas_1586":                               ; preds = %"$have_gas_1582"
  call void @_out_of_gas()
  br label %"$have_gas_1587"

"$have_gas_1587":                                 ; preds = %"$out_of_gas_1586", %"$have_gas_1582"
  %"$consume_1588" = sub i64 %"$gasrem_1584", 1
  store i64 %"$consume_1588", i64* @_gasrem, align 8
  %"$ans_72" = alloca %Uint128, align 8
  %"$gasrem_1589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1590" = icmp ugt i64 1, %"$gasrem_1589"
  br i1 %"$gascmp_1590", label %"$out_of_gas_1591", label %"$have_gas_1592"

"$out_of_gas_1591":                               ; preds = %"$have_gas_1587"
  call void @_out_of_gas()
  br label %"$have_gas_1592"

"$have_gas_1592":                                 ; preds = %"$out_of_gas_1591", %"$have_gas_1587"
  %"$consume_1593" = sub i64 %"$gasrem_1589", 1
  store i64 %"$consume_1593", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000000000000000000000 }, %Uint128* %"$ans_72", align 8
  %"$gasrem_1594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1595" = icmp ugt i64 1, %"$gasrem_1594"
  br i1 %"$gascmp_1595", label %"$out_of_gas_1596", label %"$have_gas_1597"

"$out_of_gas_1596":                               ; preds = %"$have_gas_1592"
  call void @_out_of_gas()
  br label %"$have_gas_1597"

"$have_gas_1597":                                 ; preds = %"$out_of_gas_1596", %"$have_gas_1592"
  %"$consume_1598" = sub i64 %"$gasrem_1594", 1
  store i64 %"$consume_1598", i64* @_gasrem, align 8
  %"$res__73" = alloca %TName_Bool*, align 8
  %"$gasrem_1600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1601" = icmp ugt i64 8, %"$gasrem_1600"
  br i1 %"$gascmp_1601", label %"$out_of_gas_1602", label %"$have_gas_1603"

"$out_of_gas_1602":                               ; preds = %"$have_gas_1597"
  call void @_out_of_gas()
  br label %"$have_gas_1603"

"$have_gas_1603":                                 ; preds = %"$out_of_gas_1602", %"$have_gas_1597"
  %"$consume_1604" = sub i64 %"$gasrem_1600", 8
  store i64 %"$consume_1604", i64* @_gasrem, align 8
  %"$execptr_load_1605" = load i8*, i8** @_execptr, align 8
  %"$$p_71_1606" = load %Uint128, %Uint128* %"$p_71", align 8
  %"$$ans_72_1607" = load %Uint128, %Uint128* %"$ans_72", align 8
  %"$eq_call_1608" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1605", %Uint128 %"$$p_71_1606", %Uint128 %"$$ans_72_1607")
  store %TName_Bool* %"$eq_call_1608", %TName_Bool** %"$res__73", align 8
  %"$gasrem_1610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1611" = icmp ugt i64 1, %"$gasrem_1610"
  br i1 %"$gascmp_1611", label %"$out_of_gas_1612", label %"$have_gas_1613"

"$out_of_gas_1612":                               ; preds = %"$have_gas_1603"
  call void @_out_of_gas()
  br label %"$have_gas_1613"

"$have_gas_1613":                                 ; preds = %"$out_of_gas_1612", %"$have_gas_1603"
  %"$consume_1614" = sub i64 %"$gasrem_1610", 1
  store i64 %"$consume_1614", i64* @_gasrem, align 8
  %"$BoolUtils.andb_173" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1615" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1616" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1615", 0
  %"$BoolUtils.andb_envptr_1617" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1615", 1
  %"$$res_70_1618" = load %TName_Bool*, %TName_Bool** %"$res_70", align 8
  %"$BoolUtils.andb_call_1619" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1616"(i8* %"$BoolUtils.andb_envptr_1617", %TName_Bool* %"$$res_70_1618")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1619", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8
  %"$BoolUtils.andb_174" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_173_1620" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8
  %"$$BoolUtils.andb_173_fptr_1621" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1620", 0
  %"$$BoolUtils.andb_173_envptr_1622" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1620", 1
  %"$$res__73_1623" = load %TName_Bool*, %TName_Bool** %"$res__73", align 8
  %"$$BoolUtils.andb_173_call_1624" = call %TName_Bool* %"$$BoolUtils.andb_173_fptr_1621"(i8* %"$$BoolUtils.andb_173_envptr_1622", %TName_Bool* %"$$res__73_1623")
  store %TName_Bool* %"$$BoolUtils.andb_173_call_1624", %TName_Bool** %"$BoolUtils.andb_174", align 8
  %"$$BoolUtils.andb_174_1625" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_174", align 8
  store %TName_Bool* %"$$BoolUtils.andb_174_1625", %TName_Bool** %"$res_74", align 8
  %"$gasrem_1626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1627" = icmp ugt i64 1, %"$gasrem_1626"
  br i1 %"$gascmp_1627", label %"$out_of_gas_1628", label %"$have_gas_1629"

"$out_of_gas_1628":                               ; preds = %"$have_gas_1613"
  call void @_out_of_gas()
  br label %"$have_gas_1629"

"$have_gas_1629":                                 ; preds = %"$out_of_gas_1628", %"$have_gas_1613"
  %"$consume_1630" = sub i64 %"$gasrem_1626", 1
  store i64 %"$consume_1630", i64* @_gasrem, align 8
  %"$p_75" = alloca %Int128, align 8
  %"$p1_1631" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1632" = extractvalue %Uint32 %"$p1_1631", 0
  %"$valueof_1633" = zext i32 %"$valueof_1632" to i64
  %"$gasmul_1634" = mul i64 20, %"$valueof_1633"
  %"$gasmul_1635" = mul i64 %"$gasmul_1634", 2
  %"$gasrem_1636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1637" = icmp ugt i64 %"$gasmul_1635", %"$gasrem_1636"
  br i1 %"$gascmp_1637", label %"$out_of_gas_1638", label %"$have_gas_1639"

"$out_of_gas_1638":                               ; preds = %"$have_gas_1629"
  call void @_out_of_gas()
  br label %"$have_gas_1639"

"$have_gas_1639":                                 ; preds = %"$out_of_gas_1638", %"$have_gas_1629"
  %"$consume_1640" = sub i64 %"$gasrem_1636", %"$gasmul_1635"
  store i64 %"$consume_1640", i64* @_gasrem, align 8
  %"$t6_1641" = load %Int128, %Int128* %t6, align 8
  %"$p1_1642" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1643" = call %Int128 @_pow_Int128(%Int128 %"$t6_1641", %Uint32 %"$p1_1642")
  store %Int128 %"$pow_call_1643", %Int128* %"$p_75", align 8
  %"$gasrem_1644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1645" = icmp ugt i64 1, %"$gasrem_1644"
  br i1 %"$gascmp_1645", label %"$out_of_gas_1646", label %"$have_gas_1647"

"$out_of_gas_1646":                               ; preds = %"$have_gas_1639"
  call void @_out_of_gas()
  br label %"$have_gas_1647"

"$have_gas_1647":                                 ; preds = %"$out_of_gas_1646", %"$have_gas_1639"
  %"$consume_1648" = sub i64 %"$gasrem_1644", 1
  store i64 %"$consume_1648", i64* @_gasrem, align 8
  %"$res_78" = alloca %TName_Bool*, align 8
  %"$gasrem_1649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1650" = icmp ugt i64 1, %"$gasrem_1649"
  br i1 %"$gascmp_1650", label %"$out_of_gas_1651", label %"$have_gas_1652"

"$out_of_gas_1651":                               ; preds = %"$have_gas_1647"
  call void @_out_of_gas()
  br label %"$have_gas_1652"

"$have_gas_1652":                                 ; preds = %"$out_of_gas_1651", %"$have_gas_1647"
  %"$consume_1653" = sub i64 %"$gasrem_1649", 1
  store i64 %"$consume_1653", i64* @_gasrem, align 8
  %"$ans_76" = alloca %Int128, align 8
  %"$gasrem_1654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1655" = icmp ugt i64 1, %"$gasrem_1654"
  br i1 %"$gascmp_1655", label %"$out_of_gas_1656", label %"$have_gas_1657"

"$out_of_gas_1656":                               ; preds = %"$have_gas_1652"
  call void @_out_of_gas()
  br label %"$have_gas_1657"

"$have_gas_1657":                                 ; preds = %"$out_of_gas_1656", %"$have_gas_1652"
  %"$consume_1658" = sub i64 %"$gasrem_1654", 1
  store i64 %"$consume_1658", i64* @_gasrem, align 8
  store %Int128 { i128 1 }, %Int128* %"$ans_76", align 8
  %"$gasrem_1659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1660" = icmp ugt i64 1, %"$gasrem_1659"
  br i1 %"$gascmp_1660", label %"$out_of_gas_1661", label %"$have_gas_1662"

"$out_of_gas_1661":                               ; preds = %"$have_gas_1657"
  call void @_out_of_gas()
  br label %"$have_gas_1662"

"$have_gas_1662":                                 ; preds = %"$out_of_gas_1661", %"$have_gas_1657"
  %"$consume_1663" = sub i64 %"$gasrem_1659", 1
  store i64 %"$consume_1663", i64* @_gasrem, align 8
  %"$res__77" = alloca %TName_Bool*, align 8
  %"$gasrem_1665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1666" = icmp ugt i64 8, %"$gasrem_1665"
  br i1 %"$gascmp_1666", label %"$out_of_gas_1667", label %"$have_gas_1668"

"$out_of_gas_1667":                               ; preds = %"$have_gas_1662"
  call void @_out_of_gas()
  br label %"$have_gas_1668"

"$have_gas_1668":                                 ; preds = %"$out_of_gas_1667", %"$have_gas_1662"
  %"$consume_1669" = sub i64 %"$gasrem_1665", 8
  store i64 %"$consume_1669", i64* @_gasrem, align 8
  %"$execptr_load_1670" = load i8*, i8** @_execptr, align 8
  %"$$p_75_1671" = load %Int128, %Int128* %"$p_75", align 8
  %"$$ans_76_1672" = load %Int128, %Int128* %"$ans_76", align 8
  %"$eq_call_1673" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1670", %Int128 %"$$p_75_1671", %Int128 %"$$ans_76_1672")
  store %TName_Bool* %"$eq_call_1673", %TName_Bool** %"$res__77", align 8
  %"$gasrem_1675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1676" = icmp ugt i64 1, %"$gasrem_1675"
  br i1 %"$gascmp_1676", label %"$out_of_gas_1677", label %"$have_gas_1678"

"$out_of_gas_1677":                               ; preds = %"$have_gas_1668"
  call void @_out_of_gas()
  br label %"$have_gas_1678"

"$have_gas_1678":                                 ; preds = %"$out_of_gas_1677", %"$have_gas_1668"
  %"$consume_1679" = sub i64 %"$gasrem_1675", 1
  store i64 %"$consume_1679", i64* @_gasrem, align 8
  %"$BoolUtils.andb_175" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1680" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1681" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1680", 0
  %"$BoolUtils.andb_envptr_1682" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1680", 1
  %"$$res_74_1683" = load %TName_Bool*, %TName_Bool** %"$res_74", align 8
  %"$BoolUtils.andb_call_1684" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1681"(i8* %"$BoolUtils.andb_envptr_1682", %TName_Bool* %"$$res_74_1683")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1684", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8
  %"$BoolUtils.andb_176" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_175_1685" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8
  %"$$BoolUtils.andb_175_fptr_1686" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1685", 0
  %"$$BoolUtils.andb_175_envptr_1687" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1685", 1
  %"$$res__77_1688" = load %TName_Bool*, %TName_Bool** %"$res__77", align 8
  %"$$BoolUtils.andb_175_call_1689" = call %TName_Bool* %"$$BoolUtils.andb_175_fptr_1686"(i8* %"$$BoolUtils.andb_175_envptr_1687", %TName_Bool* %"$$res__77_1688")
  store %TName_Bool* %"$$BoolUtils.andb_175_call_1689", %TName_Bool** %"$BoolUtils.andb_176", align 8
  %"$$BoolUtils.andb_176_1690" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_176", align 8
  store %TName_Bool* %"$$BoolUtils.andb_176_1690", %TName_Bool** %"$res_78", align 8
  %"$gasrem_1691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1692" = icmp ugt i64 1, %"$gasrem_1691"
  br i1 %"$gascmp_1692", label %"$out_of_gas_1693", label %"$have_gas_1694"

"$out_of_gas_1693":                               ; preds = %"$have_gas_1678"
  call void @_out_of_gas()
  br label %"$have_gas_1694"

"$have_gas_1694":                                 ; preds = %"$out_of_gas_1693", %"$have_gas_1678"
  %"$consume_1695" = sub i64 %"$gasrem_1691", 1
  store i64 %"$consume_1695", i64* @_gasrem, align 8
  %"$p_79" = alloca %Int128, align 8
  %"$p2_1696" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1697" = extractvalue %Uint32 %"$p2_1696", 0
  %"$valueof_1698" = zext i32 %"$valueof_1697" to i64
  %"$gasmul_1699" = mul i64 20, %"$valueof_1698"
  %"$gasmul_1700" = mul i64 %"$gasmul_1699", 2
  %"$gasrem_1701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1702" = icmp ugt i64 %"$gasmul_1700", %"$gasrem_1701"
  br i1 %"$gascmp_1702", label %"$out_of_gas_1703", label %"$have_gas_1704"

"$out_of_gas_1703":                               ; preds = %"$have_gas_1694"
  call void @_out_of_gas()
  br label %"$have_gas_1704"

"$have_gas_1704":                                 ; preds = %"$out_of_gas_1703", %"$have_gas_1694"
  %"$consume_1705" = sub i64 %"$gasrem_1701", %"$gasmul_1700"
  store i64 %"$consume_1705", i64* @_gasrem, align 8
  %"$t6_1706" = load %Int128, %Int128* %t6, align 8
  %"$p2_1707" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1708" = call %Int128 @_pow_Int128(%Int128 %"$t6_1706", %Uint32 %"$p2_1707")
  store %Int128 %"$pow_call_1708", %Int128* %"$p_79", align 8
  %"$gasrem_1709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1710" = icmp ugt i64 1, %"$gasrem_1709"
  br i1 %"$gascmp_1710", label %"$out_of_gas_1711", label %"$have_gas_1712"

"$out_of_gas_1711":                               ; preds = %"$have_gas_1704"
  call void @_out_of_gas()
  br label %"$have_gas_1712"

"$have_gas_1712":                                 ; preds = %"$out_of_gas_1711", %"$have_gas_1704"
  %"$consume_1713" = sub i64 %"$gasrem_1709", 1
  store i64 %"$consume_1713", i64* @_gasrem, align 8
  %"$res_82" = alloca %TName_Bool*, align 8
  %"$gasrem_1714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1715" = icmp ugt i64 1, %"$gasrem_1714"
  br i1 %"$gascmp_1715", label %"$out_of_gas_1716", label %"$have_gas_1717"

"$out_of_gas_1716":                               ; preds = %"$have_gas_1712"
  call void @_out_of_gas()
  br label %"$have_gas_1717"

"$have_gas_1717":                                 ; preds = %"$out_of_gas_1716", %"$have_gas_1712"
  %"$consume_1718" = sub i64 %"$gasrem_1714", 1
  store i64 %"$consume_1718", i64* @_gasrem, align 8
  %"$ans_80" = alloca %Int128, align 8
  %"$gasrem_1719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1720" = icmp ugt i64 1, %"$gasrem_1719"
  br i1 %"$gascmp_1720", label %"$out_of_gas_1721", label %"$have_gas_1722"

"$out_of_gas_1721":                               ; preds = %"$have_gas_1717"
  call void @_out_of_gas()
  br label %"$have_gas_1722"

"$have_gas_1722":                                 ; preds = %"$out_of_gas_1721", %"$have_gas_1717"
  %"$consume_1723" = sub i64 %"$gasrem_1719", 1
  store i64 %"$consume_1723", i64* @_gasrem, align 8
  store %Int128 { i128 501 }, %Int128* %"$ans_80", align 8
  %"$gasrem_1724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1725" = icmp ugt i64 1, %"$gasrem_1724"
  br i1 %"$gascmp_1725", label %"$out_of_gas_1726", label %"$have_gas_1727"

"$out_of_gas_1726":                               ; preds = %"$have_gas_1722"
  call void @_out_of_gas()
  br label %"$have_gas_1727"

"$have_gas_1727":                                 ; preds = %"$out_of_gas_1726", %"$have_gas_1722"
  %"$consume_1728" = sub i64 %"$gasrem_1724", 1
  store i64 %"$consume_1728", i64* @_gasrem, align 8
  %"$res__81" = alloca %TName_Bool*, align 8
  %"$gasrem_1730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1731" = icmp ugt i64 8, %"$gasrem_1730"
  br i1 %"$gascmp_1731", label %"$out_of_gas_1732", label %"$have_gas_1733"

"$out_of_gas_1732":                               ; preds = %"$have_gas_1727"
  call void @_out_of_gas()
  br label %"$have_gas_1733"

"$have_gas_1733":                                 ; preds = %"$out_of_gas_1732", %"$have_gas_1727"
  %"$consume_1734" = sub i64 %"$gasrem_1730", 8
  store i64 %"$consume_1734", i64* @_gasrem, align 8
  %"$execptr_load_1735" = load i8*, i8** @_execptr, align 8
  %"$$p_79_1736" = load %Int128, %Int128* %"$p_79", align 8
  %"$$ans_80_1737" = load %Int128, %Int128* %"$ans_80", align 8
  %"$eq_call_1738" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1735", %Int128 %"$$p_79_1736", %Int128 %"$$ans_80_1737")
  store %TName_Bool* %"$eq_call_1738", %TName_Bool** %"$res__81", align 8
  %"$gasrem_1740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1741" = icmp ugt i64 1, %"$gasrem_1740"
  br i1 %"$gascmp_1741", label %"$out_of_gas_1742", label %"$have_gas_1743"

"$out_of_gas_1742":                               ; preds = %"$have_gas_1733"
  call void @_out_of_gas()
  br label %"$have_gas_1743"

"$have_gas_1743":                                 ; preds = %"$out_of_gas_1742", %"$have_gas_1733"
  %"$consume_1744" = sub i64 %"$gasrem_1740", 1
  store i64 %"$consume_1744", i64* @_gasrem, align 8
  %"$BoolUtils.andb_177" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1745" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1746" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1745", 0
  %"$BoolUtils.andb_envptr_1747" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1745", 1
  %"$$res_78_1748" = load %TName_Bool*, %TName_Bool** %"$res_78", align 8
  %"$BoolUtils.andb_call_1749" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1746"(i8* %"$BoolUtils.andb_envptr_1747", %TName_Bool* %"$$res_78_1748")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1749", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8
  %"$BoolUtils.andb_178" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_177_1750" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8
  %"$$BoolUtils.andb_177_fptr_1751" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1750", 0
  %"$$BoolUtils.andb_177_envptr_1752" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1750", 1
  %"$$res__81_1753" = load %TName_Bool*, %TName_Bool** %"$res__81", align 8
  %"$$BoolUtils.andb_177_call_1754" = call %TName_Bool* %"$$BoolUtils.andb_177_fptr_1751"(i8* %"$$BoolUtils.andb_177_envptr_1752", %TName_Bool* %"$$res__81_1753")
  store %TName_Bool* %"$$BoolUtils.andb_177_call_1754", %TName_Bool** %"$BoolUtils.andb_178", align 8
  %"$$BoolUtils.andb_178_1755" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_178", align 8
  store %TName_Bool* %"$$BoolUtils.andb_178_1755", %TName_Bool** %"$res_82", align 8
  %"$gasrem_1756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1757" = icmp ugt i64 1, %"$gasrem_1756"
  br i1 %"$gascmp_1757", label %"$out_of_gas_1758", label %"$have_gas_1759"

"$out_of_gas_1758":                               ; preds = %"$have_gas_1743"
  call void @_out_of_gas()
  br label %"$have_gas_1759"

"$have_gas_1759":                                 ; preds = %"$out_of_gas_1758", %"$have_gas_1743"
  %"$consume_1760" = sub i64 %"$gasrem_1756", 1
  store i64 %"$consume_1760", i64* @_gasrem, align 8
  %"$p_83" = alloca %Int128, align 8
  %"$p3_1761" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1762" = extractvalue %Uint32 %"$p3_1761", 0
  %"$valueof_1763" = zext i32 %"$valueof_1762" to i64
  %"$gasmul_1764" = mul i64 20, %"$valueof_1763"
  %"$gasmul_1765" = mul i64 %"$gasmul_1764", 2
  %"$gasrem_1766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1767" = icmp ugt i64 %"$gasmul_1765", %"$gasrem_1766"
  br i1 %"$gascmp_1767", label %"$out_of_gas_1768", label %"$have_gas_1769"

"$out_of_gas_1768":                               ; preds = %"$have_gas_1759"
  call void @_out_of_gas()
  br label %"$have_gas_1769"

"$have_gas_1769":                                 ; preds = %"$out_of_gas_1768", %"$have_gas_1759"
  %"$consume_1770" = sub i64 %"$gasrem_1766", %"$gasmul_1765"
  store i64 %"$consume_1770", i64* @_gasrem, align 8
  %"$t6_1771" = load %Int128, %Int128* %t6, align 8
  %"$p3_1772" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1773" = call %Int128 @_pow_Int128(%Int128 %"$t6_1771", %Uint32 %"$p3_1772")
  store %Int128 %"$pow_call_1773", %Int128* %"$p_83", align 8
  %"$gasrem_1774" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1775" = icmp ugt i64 1, %"$gasrem_1774"
  br i1 %"$gascmp_1775", label %"$out_of_gas_1776", label %"$have_gas_1777"

"$out_of_gas_1776":                               ; preds = %"$have_gas_1769"
  call void @_out_of_gas()
  br label %"$have_gas_1777"

"$have_gas_1777":                                 ; preds = %"$out_of_gas_1776", %"$have_gas_1769"
  %"$consume_1778" = sub i64 %"$gasrem_1774", 1
  store i64 %"$consume_1778", i64* @_gasrem, align 8
  %"$res_86" = alloca %TName_Bool*, align 8
  %"$gasrem_1779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1780" = icmp ugt i64 1, %"$gasrem_1779"
  br i1 %"$gascmp_1780", label %"$out_of_gas_1781", label %"$have_gas_1782"

"$out_of_gas_1781":                               ; preds = %"$have_gas_1777"
  call void @_out_of_gas()
  br label %"$have_gas_1782"

"$have_gas_1782":                                 ; preds = %"$out_of_gas_1781", %"$have_gas_1777"
  %"$consume_1783" = sub i64 %"$gasrem_1779", 1
  store i64 %"$consume_1783", i64* @_gasrem, align 8
  %"$ans_84" = alloca %Int128, align 8
  %"$gasrem_1784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1785" = icmp ugt i64 1, %"$gasrem_1784"
  br i1 %"$gascmp_1785", label %"$out_of_gas_1786", label %"$have_gas_1787"

"$out_of_gas_1786":                               ; preds = %"$have_gas_1782"
  call void @_out_of_gas()
  br label %"$have_gas_1787"

"$have_gas_1787":                                 ; preds = %"$out_of_gas_1786", %"$have_gas_1782"
  %"$consume_1788" = sub i64 %"$gasrem_1784", 1
  store i64 %"$consume_1788", i64* @_gasrem, align 8
  store %Int128 { i128 63001502001 }, %Int128* %"$ans_84", align 8
  %"$gasrem_1789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1790" = icmp ugt i64 1, %"$gasrem_1789"
  br i1 %"$gascmp_1790", label %"$out_of_gas_1791", label %"$have_gas_1792"

"$out_of_gas_1791":                               ; preds = %"$have_gas_1787"
  call void @_out_of_gas()
  br label %"$have_gas_1792"

"$have_gas_1792":                                 ; preds = %"$out_of_gas_1791", %"$have_gas_1787"
  %"$consume_1793" = sub i64 %"$gasrem_1789", 1
  store i64 %"$consume_1793", i64* @_gasrem, align 8
  %"$res__85" = alloca %TName_Bool*, align 8
  %"$gasrem_1795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1796" = icmp ugt i64 8, %"$gasrem_1795"
  br i1 %"$gascmp_1796", label %"$out_of_gas_1797", label %"$have_gas_1798"

"$out_of_gas_1797":                               ; preds = %"$have_gas_1792"
  call void @_out_of_gas()
  br label %"$have_gas_1798"

"$have_gas_1798":                                 ; preds = %"$out_of_gas_1797", %"$have_gas_1792"
  %"$consume_1799" = sub i64 %"$gasrem_1795", 8
  store i64 %"$consume_1799", i64* @_gasrem, align 8
  %"$execptr_load_1800" = load i8*, i8** @_execptr, align 8
  %"$$p_83_1801" = load %Int128, %Int128* %"$p_83", align 8
  %"$$ans_84_1802" = load %Int128, %Int128* %"$ans_84", align 8
  %"$eq_call_1803" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1800", %Int128 %"$$p_83_1801", %Int128 %"$$ans_84_1802")
  store %TName_Bool* %"$eq_call_1803", %TName_Bool** %"$res__85", align 8
  %"$gasrem_1805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1806" = icmp ugt i64 1, %"$gasrem_1805"
  br i1 %"$gascmp_1806", label %"$out_of_gas_1807", label %"$have_gas_1808"

"$out_of_gas_1807":                               ; preds = %"$have_gas_1798"
  call void @_out_of_gas()
  br label %"$have_gas_1808"

"$have_gas_1808":                                 ; preds = %"$out_of_gas_1807", %"$have_gas_1798"
  %"$consume_1809" = sub i64 %"$gasrem_1805", 1
  store i64 %"$consume_1809", i64* @_gasrem, align 8
  %"$BoolUtils.andb_179" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1810" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1811" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1810", 0
  %"$BoolUtils.andb_envptr_1812" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1810", 1
  %"$$res_82_1813" = load %TName_Bool*, %TName_Bool** %"$res_82", align 8
  %"$BoolUtils.andb_call_1814" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1811"(i8* %"$BoolUtils.andb_envptr_1812", %TName_Bool* %"$$res_82_1813")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1814", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8
  %"$BoolUtils.andb_180" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_179_1815" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8
  %"$$BoolUtils.andb_179_fptr_1816" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1815", 0
  %"$$BoolUtils.andb_179_envptr_1817" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1815", 1
  %"$$res__85_1818" = load %TName_Bool*, %TName_Bool** %"$res__85", align 8
  %"$$BoolUtils.andb_179_call_1819" = call %TName_Bool* %"$$BoolUtils.andb_179_fptr_1816"(i8* %"$$BoolUtils.andb_179_envptr_1817", %TName_Bool* %"$$res__85_1818")
  store %TName_Bool* %"$$BoolUtils.andb_179_call_1819", %TName_Bool** %"$BoolUtils.andb_180", align 8
  %"$$BoolUtils.andb_180_1820" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_180", align 8
  store %TName_Bool* %"$$BoolUtils.andb_180_1820", %TName_Bool** %"$res_86", align 8
  %"$gasrem_1821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1822" = icmp ugt i64 1, %"$gasrem_1821"
  br i1 %"$gascmp_1822", label %"$out_of_gas_1823", label %"$have_gas_1824"

"$out_of_gas_1823":                               ; preds = %"$have_gas_1808"
  call void @_out_of_gas()
  br label %"$have_gas_1824"

"$have_gas_1824":                                 ; preds = %"$out_of_gas_1823", %"$have_gas_1808"
  %"$consume_1825" = sub i64 %"$gasrem_1821", 1
  store i64 %"$consume_1825", i64* @_gasrem, align 8
  %"$p_87" = alloca %Int128, align 8
  %"$p4_1826" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_1827" = extractvalue %Uint32 %"$p4_1826", 0
  %"$valueof_1828" = zext i32 %"$valueof_1827" to i64
  %"$gasmul_1829" = mul i64 20, %"$valueof_1828"
  %"$gasmul_1830" = mul i64 %"$gasmul_1829", 2
  %"$gasrem_1831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1832" = icmp ugt i64 %"$gasmul_1830", %"$gasrem_1831"
  br i1 %"$gascmp_1832", label %"$out_of_gas_1833", label %"$have_gas_1834"

"$out_of_gas_1833":                               ; preds = %"$have_gas_1824"
  call void @_out_of_gas()
  br label %"$have_gas_1834"

"$have_gas_1834":                                 ; preds = %"$out_of_gas_1833", %"$have_gas_1824"
  %"$consume_1835" = sub i64 %"$gasrem_1831", %"$gasmul_1830"
  store i64 %"$consume_1835", i64* @_gasrem, align 8
  %"$t6_1836" = load %Int128, %Int128* %t6, align 8
  %"$p4_1837" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1838" = call %Int128 @_pow_Int128(%Int128 %"$t6_1836", %Uint32 %"$p4_1837")
  store %Int128 %"$pow_call_1838", %Int128* %"$p_87", align 8
  %"$gasrem_1839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1840" = icmp ugt i64 1, %"$gasrem_1839"
  br i1 %"$gascmp_1840", label %"$out_of_gas_1841", label %"$have_gas_1842"

"$out_of_gas_1841":                               ; preds = %"$have_gas_1834"
  call void @_out_of_gas()
  br label %"$have_gas_1842"

"$have_gas_1842":                                 ; preds = %"$out_of_gas_1841", %"$have_gas_1834"
  %"$consume_1843" = sub i64 %"$gasrem_1839", 1
  store i64 %"$consume_1843", i64* @_gasrem, align 8
  %"$res_90" = alloca %TName_Bool*, align 8
  %"$gasrem_1844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1845" = icmp ugt i64 1, %"$gasrem_1844"
  br i1 %"$gascmp_1845", label %"$out_of_gas_1846", label %"$have_gas_1847"

"$out_of_gas_1846":                               ; preds = %"$have_gas_1842"
  call void @_out_of_gas()
  br label %"$have_gas_1847"

"$have_gas_1847":                                 ; preds = %"$out_of_gas_1846", %"$have_gas_1842"
  %"$consume_1848" = sub i64 %"$gasrem_1844", 1
  store i64 %"$consume_1848", i64* @_gasrem, align 8
  %"$ans_88" = alloca %Int128, align 8
  %"$gasrem_1849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1850" = icmp ugt i64 1, %"$gasrem_1849"
  br i1 %"$gascmp_1850", label %"$out_of_gas_1851", label %"$have_gas_1852"

"$out_of_gas_1851":                               ; preds = %"$have_gas_1847"
  call void @_out_of_gas()
  br label %"$have_gas_1852"

"$have_gas_1852":                                 ; preds = %"$out_of_gas_1851", %"$have_gas_1847"
  %"$consume_1853" = sub i64 %"$gasrem_1849", 1
  store i64 %"$consume_1853", i64* @_gasrem, align 8
  store %Int128 { i128 996270472039138140011255001 }, %Int128* %"$ans_88", align 8
  %"$gasrem_1854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1855" = icmp ugt i64 1, %"$gasrem_1854"
  br i1 %"$gascmp_1855", label %"$out_of_gas_1856", label %"$have_gas_1857"

"$out_of_gas_1856":                               ; preds = %"$have_gas_1852"
  call void @_out_of_gas()
  br label %"$have_gas_1857"

"$have_gas_1857":                                 ; preds = %"$out_of_gas_1856", %"$have_gas_1852"
  %"$consume_1858" = sub i64 %"$gasrem_1854", 1
  store i64 %"$consume_1858", i64* @_gasrem, align 8
  %"$res__89" = alloca %TName_Bool*, align 8
  %"$gasrem_1860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1861" = icmp ugt i64 8, %"$gasrem_1860"
  br i1 %"$gascmp_1861", label %"$out_of_gas_1862", label %"$have_gas_1863"

"$out_of_gas_1862":                               ; preds = %"$have_gas_1857"
  call void @_out_of_gas()
  br label %"$have_gas_1863"

"$have_gas_1863":                                 ; preds = %"$out_of_gas_1862", %"$have_gas_1857"
  %"$consume_1864" = sub i64 %"$gasrem_1860", 8
  store i64 %"$consume_1864", i64* @_gasrem, align 8
  %"$execptr_load_1865" = load i8*, i8** @_execptr, align 8
  %"$$p_87_1866" = load %Int128, %Int128* %"$p_87", align 8
  %"$$ans_88_1867" = load %Int128, %Int128* %"$ans_88", align 8
  %"$eq_call_1868" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1865", %Int128 %"$$p_87_1866", %Int128 %"$$ans_88_1867")
  store %TName_Bool* %"$eq_call_1868", %TName_Bool** %"$res__89", align 8
  %"$gasrem_1870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1871" = icmp ugt i64 1, %"$gasrem_1870"
  br i1 %"$gascmp_1871", label %"$out_of_gas_1872", label %"$have_gas_1873"

"$out_of_gas_1872":                               ; preds = %"$have_gas_1863"
  call void @_out_of_gas()
  br label %"$have_gas_1873"

"$have_gas_1873":                                 ; preds = %"$out_of_gas_1872", %"$have_gas_1863"
  %"$consume_1874" = sub i64 %"$gasrem_1870", 1
  store i64 %"$consume_1874", i64* @_gasrem, align 8
  %"$BoolUtils.andb_181" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1875" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1876" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1875", 0
  %"$BoolUtils.andb_envptr_1877" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1875", 1
  %"$$res_86_1878" = load %TName_Bool*, %TName_Bool** %"$res_86", align 8
  %"$BoolUtils.andb_call_1879" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1876"(i8* %"$BoolUtils.andb_envptr_1877", %TName_Bool* %"$$res_86_1878")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1879", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8
  %"$BoolUtils.andb_182" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_181_1880" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8
  %"$$BoolUtils.andb_181_fptr_1881" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_1880", 0
  %"$$BoolUtils.andb_181_envptr_1882" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_1880", 1
  %"$$res__89_1883" = load %TName_Bool*, %TName_Bool** %"$res__89", align 8
  %"$$BoolUtils.andb_181_call_1884" = call %TName_Bool* %"$$BoolUtils.andb_181_fptr_1881"(i8* %"$$BoolUtils.andb_181_envptr_1882", %TName_Bool* %"$$res__89_1883")
  store %TName_Bool* %"$$BoolUtils.andb_181_call_1884", %TName_Bool** %"$BoolUtils.andb_182", align 8
  %"$$BoolUtils.andb_182_1885" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_182", align 8
  store %TName_Bool* %"$$BoolUtils.andb_182_1885", %TName_Bool** %"$res_90", align 8
  %"$gasrem_1886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1887" = icmp ugt i64 1, %"$gasrem_1886"
  br i1 %"$gascmp_1887", label %"$out_of_gas_1888", label %"$have_gas_1889"

"$out_of_gas_1888":                               ; preds = %"$have_gas_1873"
  call void @_out_of_gas()
  br label %"$have_gas_1889"

"$have_gas_1889":                                 ; preds = %"$out_of_gas_1888", %"$have_gas_1873"
  %"$consume_1890" = sub i64 %"$gasrem_1886", 1
  store i64 %"$consume_1890", i64* @_gasrem, align 8
  %"$p_91" = alloca %Uint256, align 8
  %"$p1_1891" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1892" = extractvalue %Uint32 %"$p1_1891", 0
  %"$valueof_1893" = zext i32 %"$valueof_1892" to i64
  %"$gasmul_1894" = mul i64 20, %"$valueof_1893"
  %"$gasmul_1895" = mul i64 %"$gasmul_1894", 4
  %"$gasrem_1896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1897" = icmp ugt i64 %"$gasmul_1895", %"$gasrem_1896"
  br i1 %"$gascmp_1897", label %"$out_of_gas_1898", label %"$have_gas_1899"

"$out_of_gas_1898":                               ; preds = %"$have_gas_1889"
  call void @_out_of_gas()
  br label %"$have_gas_1899"

"$have_gas_1899":                                 ; preds = %"$out_of_gas_1898", %"$have_gas_1889"
  %"$consume_1900" = sub i64 %"$gasrem_1896", %"$gasmul_1895"
  store i64 %"$consume_1900", i64* @_gasrem, align 8
  %"$execptr_load_1901" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_1902" = alloca %Uint256, align 8
  %"$t7_1903" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_1903", %Uint256* %"$pow_t7_1902", align 8
  %"$p1_1904" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1905" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_1901", %Uint256* %"$pow_t7_1902", %Uint32 %"$p1_1904")
  %"$pow_1907" = load %Uint256, %Uint256* %"$pow_call_1905", align 8
  store %Uint256 %"$pow_1907", %Uint256* %"$p_91", align 8
  %"$gasrem_1908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1909" = icmp ugt i64 1, %"$gasrem_1908"
  br i1 %"$gascmp_1909", label %"$out_of_gas_1910", label %"$have_gas_1911"

"$out_of_gas_1910":                               ; preds = %"$have_gas_1899"
  call void @_out_of_gas()
  br label %"$have_gas_1911"

"$have_gas_1911":                                 ; preds = %"$out_of_gas_1910", %"$have_gas_1899"
  %"$consume_1912" = sub i64 %"$gasrem_1908", 1
  store i64 %"$consume_1912", i64* @_gasrem, align 8
  %"$res_94" = alloca %TName_Bool*, align 8
  %"$gasrem_1913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1914" = icmp ugt i64 1, %"$gasrem_1913"
  br i1 %"$gascmp_1914", label %"$out_of_gas_1915", label %"$have_gas_1916"

"$out_of_gas_1915":                               ; preds = %"$have_gas_1911"
  call void @_out_of_gas()
  br label %"$have_gas_1916"

"$have_gas_1916":                                 ; preds = %"$out_of_gas_1915", %"$have_gas_1911"
  %"$consume_1917" = sub i64 %"$gasrem_1913", 1
  store i64 %"$consume_1917", i64* @_gasrem, align 8
  %"$ans_92" = alloca %Uint256, align 8
  %"$gasrem_1918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1919" = icmp ugt i64 1, %"$gasrem_1918"
  br i1 %"$gascmp_1919", label %"$out_of_gas_1920", label %"$have_gas_1921"

"$out_of_gas_1920":                               ; preds = %"$have_gas_1916"
  call void @_out_of_gas()
  br label %"$have_gas_1921"

"$have_gas_1921":                                 ; preds = %"$out_of_gas_1920", %"$have_gas_1916"
  %"$consume_1922" = sub i64 %"$gasrem_1918", 1
  store i64 %"$consume_1922", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$ans_92", align 8
  %"$gasrem_1923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1924" = icmp ugt i64 1, %"$gasrem_1923"
  br i1 %"$gascmp_1924", label %"$out_of_gas_1925", label %"$have_gas_1926"

"$out_of_gas_1925":                               ; preds = %"$have_gas_1921"
  call void @_out_of_gas()
  br label %"$have_gas_1926"

"$have_gas_1926":                                 ; preds = %"$out_of_gas_1925", %"$have_gas_1921"
  %"$consume_1927" = sub i64 %"$gasrem_1923", 1
  store i64 %"$consume_1927", i64* @_gasrem, align 8
  %"$res__93" = alloca %TName_Bool*, align 8
  %"$gasrem_1929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1930" = icmp ugt i64 16, %"$gasrem_1929"
  br i1 %"$gascmp_1930", label %"$out_of_gas_1931", label %"$have_gas_1932"

"$out_of_gas_1931":                               ; preds = %"$have_gas_1926"
  call void @_out_of_gas()
  br label %"$have_gas_1932"

"$have_gas_1932":                                 ; preds = %"$out_of_gas_1931", %"$have_gas_1926"
  %"$consume_1933" = sub i64 %"$gasrem_1929", 16
  store i64 %"$consume_1933", i64* @_gasrem, align 8
  %"$execptr_load_1934" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_91_1935" = alloca %Uint256, align 8
  %"$$p_91_1936" = load %Uint256, %Uint256* %"$p_91", align 8
  store %Uint256 %"$$p_91_1936", %Uint256* %"$eq_$p_91_1935", align 8
  %"$eq_$ans_92_1937" = alloca %Uint256, align 8
  %"$$ans_92_1938" = load %Uint256, %Uint256* %"$ans_92", align 8
  store %Uint256 %"$$ans_92_1938", %Uint256* %"$eq_$ans_92_1937", align 8
  %"$eq_call_1939" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_1934", %Uint256* %"$eq_$p_91_1935", %Uint256* %"$eq_$ans_92_1937")
  store %TName_Bool* %"$eq_call_1939", %TName_Bool** %"$res__93", align 8
  %"$gasrem_1941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1942" = icmp ugt i64 1, %"$gasrem_1941"
  br i1 %"$gascmp_1942", label %"$out_of_gas_1943", label %"$have_gas_1944"

"$out_of_gas_1943":                               ; preds = %"$have_gas_1932"
  call void @_out_of_gas()
  br label %"$have_gas_1944"

"$have_gas_1944":                                 ; preds = %"$out_of_gas_1943", %"$have_gas_1932"
  %"$consume_1945" = sub i64 %"$gasrem_1941", 1
  store i64 %"$consume_1945", i64* @_gasrem, align 8
  %"$BoolUtils.andb_183" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1946" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1947" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1946", 0
  %"$BoolUtils.andb_envptr_1948" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1946", 1
  %"$$res_90_1949" = load %TName_Bool*, %TName_Bool** %"$res_90", align 8
  %"$BoolUtils.andb_call_1950" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1947"(i8* %"$BoolUtils.andb_envptr_1948", %TName_Bool* %"$$res_90_1949")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1950", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8
  %"$BoolUtils.andb_184" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_183_1951" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8
  %"$$BoolUtils.andb_183_fptr_1952" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_1951", 0
  %"$$BoolUtils.andb_183_envptr_1953" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_1951", 1
  %"$$res__93_1954" = load %TName_Bool*, %TName_Bool** %"$res__93", align 8
  %"$$BoolUtils.andb_183_call_1955" = call %TName_Bool* %"$$BoolUtils.andb_183_fptr_1952"(i8* %"$$BoolUtils.andb_183_envptr_1953", %TName_Bool* %"$$res__93_1954")
  store %TName_Bool* %"$$BoolUtils.andb_183_call_1955", %TName_Bool** %"$BoolUtils.andb_184", align 8
  %"$$BoolUtils.andb_184_1956" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_184", align 8
  store %TName_Bool* %"$$BoolUtils.andb_184_1956", %TName_Bool** %"$res_94", align 8
  %"$gasrem_1957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1958" = icmp ugt i64 1, %"$gasrem_1957"
  br i1 %"$gascmp_1958", label %"$out_of_gas_1959", label %"$have_gas_1960"

"$out_of_gas_1959":                               ; preds = %"$have_gas_1944"
  call void @_out_of_gas()
  br label %"$have_gas_1960"

"$have_gas_1960":                                 ; preds = %"$out_of_gas_1959", %"$have_gas_1944"
  %"$consume_1961" = sub i64 %"$gasrem_1957", 1
  store i64 %"$consume_1961", i64* @_gasrem, align 8
  %"$p_95" = alloca %Uint256, align 8
  %"$p2_1962" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1963" = extractvalue %Uint32 %"$p2_1962", 0
  %"$valueof_1964" = zext i32 %"$valueof_1963" to i64
  %"$gasmul_1965" = mul i64 20, %"$valueof_1964"
  %"$gasmul_1966" = mul i64 %"$gasmul_1965", 4
  %"$gasrem_1967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1968" = icmp ugt i64 %"$gasmul_1966", %"$gasrem_1967"
  br i1 %"$gascmp_1968", label %"$out_of_gas_1969", label %"$have_gas_1970"

"$out_of_gas_1969":                               ; preds = %"$have_gas_1960"
  call void @_out_of_gas()
  br label %"$have_gas_1970"

"$have_gas_1970":                                 ; preds = %"$out_of_gas_1969", %"$have_gas_1960"
  %"$consume_1971" = sub i64 %"$gasrem_1967", %"$gasmul_1966"
  store i64 %"$consume_1971", i64* @_gasrem, align 8
  %"$execptr_load_1972" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_1973" = alloca %Uint256, align 8
  %"$t7_1974" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_1974", %Uint256* %"$pow_t7_1973", align 8
  %"$p2_1975" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1976" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_1972", %Uint256* %"$pow_t7_1973", %Uint32 %"$p2_1975")
  %"$pow_1978" = load %Uint256, %Uint256* %"$pow_call_1976", align 8
  store %Uint256 %"$pow_1978", %Uint256* %"$p_95", align 8
  %"$gasrem_1979" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1980" = icmp ugt i64 1, %"$gasrem_1979"
  br i1 %"$gascmp_1980", label %"$out_of_gas_1981", label %"$have_gas_1982"

"$out_of_gas_1981":                               ; preds = %"$have_gas_1970"
  call void @_out_of_gas()
  br label %"$have_gas_1982"

"$have_gas_1982":                                 ; preds = %"$out_of_gas_1981", %"$have_gas_1970"
  %"$consume_1983" = sub i64 %"$gasrem_1979", 1
  store i64 %"$consume_1983", i64* @_gasrem, align 8
  %"$res_98" = alloca %TName_Bool*, align 8
  %"$gasrem_1984" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1985" = icmp ugt i64 1, %"$gasrem_1984"
  br i1 %"$gascmp_1985", label %"$out_of_gas_1986", label %"$have_gas_1987"

"$out_of_gas_1986":                               ; preds = %"$have_gas_1982"
  call void @_out_of_gas()
  br label %"$have_gas_1987"

"$have_gas_1987":                                 ; preds = %"$out_of_gas_1986", %"$have_gas_1982"
  %"$consume_1988" = sub i64 %"$gasrem_1984", 1
  store i64 %"$consume_1988", i64* @_gasrem, align 8
  %"$ans_96" = alloca %Uint256, align 8
  %"$gasrem_1989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1990" = icmp ugt i64 1, %"$gasrem_1989"
  br i1 %"$gascmp_1990", label %"$out_of_gas_1991", label %"$have_gas_1992"

"$out_of_gas_1991":                               ; preds = %"$have_gas_1987"
  call void @_out_of_gas()
  br label %"$have_gas_1992"

"$have_gas_1992":                                 ; preds = %"$out_of_gas_1991", %"$have_gas_1987"
  %"$consume_1993" = sub i64 %"$gasrem_1989", 1
  store i64 %"$consume_1993", i64* @_gasrem, align 8
  store %Uint256 { i256 10001 }, %Uint256* %"$ans_96", align 8
  %"$gasrem_1994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1995" = icmp ugt i64 1, %"$gasrem_1994"
  br i1 %"$gascmp_1995", label %"$out_of_gas_1996", label %"$have_gas_1997"

"$out_of_gas_1996":                               ; preds = %"$have_gas_1992"
  call void @_out_of_gas()
  br label %"$have_gas_1997"

"$have_gas_1997":                                 ; preds = %"$out_of_gas_1996", %"$have_gas_1992"
  %"$consume_1998" = sub i64 %"$gasrem_1994", 1
  store i64 %"$consume_1998", i64* @_gasrem, align 8
  %"$res__97" = alloca %TName_Bool*, align 8
  %"$gasrem_2000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2001" = icmp ugt i64 16, %"$gasrem_2000"
  br i1 %"$gascmp_2001", label %"$out_of_gas_2002", label %"$have_gas_2003"

"$out_of_gas_2002":                               ; preds = %"$have_gas_1997"
  call void @_out_of_gas()
  br label %"$have_gas_2003"

"$have_gas_2003":                                 ; preds = %"$out_of_gas_2002", %"$have_gas_1997"
  %"$consume_2004" = sub i64 %"$gasrem_2000", 16
  store i64 %"$consume_2004", i64* @_gasrem, align 8
  %"$execptr_load_2005" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_95_2006" = alloca %Uint256, align 8
  %"$$p_95_2007" = load %Uint256, %Uint256* %"$p_95", align 8
  store %Uint256 %"$$p_95_2007", %Uint256* %"$eq_$p_95_2006", align 8
  %"$eq_$ans_96_2008" = alloca %Uint256, align 8
  %"$$ans_96_2009" = load %Uint256, %Uint256* %"$ans_96", align 8
  store %Uint256 %"$$ans_96_2009", %Uint256* %"$eq_$ans_96_2008", align 8
  %"$eq_call_2010" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2005", %Uint256* %"$eq_$p_95_2006", %Uint256* %"$eq_$ans_96_2008")
  store %TName_Bool* %"$eq_call_2010", %TName_Bool** %"$res__97", align 8
  %"$gasrem_2012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2013" = icmp ugt i64 1, %"$gasrem_2012"
  br i1 %"$gascmp_2013", label %"$out_of_gas_2014", label %"$have_gas_2015"

"$out_of_gas_2014":                               ; preds = %"$have_gas_2003"
  call void @_out_of_gas()
  br label %"$have_gas_2015"

"$have_gas_2015":                                 ; preds = %"$out_of_gas_2014", %"$have_gas_2003"
  %"$consume_2016" = sub i64 %"$gasrem_2012", 1
  store i64 %"$consume_2016", i64* @_gasrem, align 8
  %"$BoolUtils.andb_185" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2017" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2018" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2017", 0
  %"$BoolUtils.andb_envptr_2019" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2017", 1
  %"$$res_94_2020" = load %TName_Bool*, %TName_Bool** %"$res_94", align 8
  %"$BoolUtils.andb_call_2021" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2018"(i8* %"$BoolUtils.andb_envptr_2019", %TName_Bool* %"$$res_94_2020")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2021", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8
  %"$BoolUtils.andb_186" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_185_2022" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8
  %"$$BoolUtils.andb_185_fptr_2023" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_2022", 0
  %"$$BoolUtils.andb_185_envptr_2024" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_2022", 1
  %"$$res__97_2025" = load %TName_Bool*, %TName_Bool** %"$res__97", align 8
  %"$$BoolUtils.andb_185_call_2026" = call %TName_Bool* %"$$BoolUtils.andb_185_fptr_2023"(i8* %"$$BoolUtils.andb_185_envptr_2024", %TName_Bool* %"$$res__97_2025")
  store %TName_Bool* %"$$BoolUtils.andb_185_call_2026", %TName_Bool** %"$BoolUtils.andb_186", align 8
  %"$$BoolUtils.andb_186_2027" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_186", align 8
  store %TName_Bool* %"$$BoolUtils.andb_186_2027", %TName_Bool** %"$res_98", align 8
  %"$gasrem_2028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2029" = icmp ugt i64 1, %"$gasrem_2028"
  br i1 %"$gascmp_2029", label %"$out_of_gas_2030", label %"$have_gas_2031"

"$out_of_gas_2030":                               ; preds = %"$have_gas_2015"
  call void @_out_of_gas()
  br label %"$have_gas_2031"

"$have_gas_2031":                                 ; preds = %"$out_of_gas_2030", %"$have_gas_2015"
  %"$consume_2032" = sub i64 %"$gasrem_2028", 1
  store i64 %"$consume_2032", i64* @_gasrem, align 8
  %"$p_99" = alloca %Uint256, align 8
  %"$p3_2033" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2034" = extractvalue %Uint32 %"$p3_2033", 0
  %"$valueof_2035" = zext i32 %"$valueof_2034" to i64
  %"$gasmul_2036" = mul i64 20, %"$valueof_2035"
  %"$gasmul_2037" = mul i64 %"$gasmul_2036", 4
  %"$gasrem_2038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2039" = icmp ugt i64 %"$gasmul_2037", %"$gasrem_2038"
  br i1 %"$gascmp_2039", label %"$out_of_gas_2040", label %"$have_gas_2041"

"$out_of_gas_2040":                               ; preds = %"$have_gas_2031"
  call void @_out_of_gas()
  br label %"$have_gas_2041"

"$have_gas_2041":                                 ; preds = %"$out_of_gas_2040", %"$have_gas_2031"
  %"$consume_2042" = sub i64 %"$gasrem_2038", %"$gasmul_2037"
  store i64 %"$consume_2042", i64* @_gasrem, align 8
  %"$execptr_load_2043" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2044" = alloca %Uint256, align 8
  %"$t7_2045" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2045", %Uint256* %"$pow_t7_2044", align 8
  %"$p3_2046" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2047" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2043", %Uint256* %"$pow_t7_2044", %Uint32 %"$p3_2046")
  %"$pow_2049" = load %Uint256, %Uint256* %"$pow_call_2047", align 8
  store %Uint256 %"$pow_2049", %Uint256* %"$p_99", align 8
  %"$gasrem_2050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2051" = icmp ugt i64 1, %"$gasrem_2050"
  br i1 %"$gascmp_2051", label %"$out_of_gas_2052", label %"$have_gas_2053"

"$out_of_gas_2052":                               ; preds = %"$have_gas_2041"
  call void @_out_of_gas()
  br label %"$have_gas_2053"

"$have_gas_2053":                                 ; preds = %"$out_of_gas_2052", %"$have_gas_2041"
  %"$consume_2054" = sub i64 %"$gasrem_2050", 1
  store i64 %"$consume_2054", i64* @_gasrem, align 8
  %"$res_102" = alloca %TName_Bool*, align 8
  %"$gasrem_2055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2056" = icmp ugt i64 1, %"$gasrem_2055"
  br i1 %"$gascmp_2056", label %"$out_of_gas_2057", label %"$have_gas_2058"

"$out_of_gas_2057":                               ; preds = %"$have_gas_2053"
  call void @_out_of_gas()
  br label %"$have_gas_2058"

"$have_gas_2058":                                 ; preds = %"$out_of_gas_2057", %"$have_gas_2053"
  %"$consume_2059" = sub i64 %"$gasrem_2055", 1
  store i64 %"$consume_2059", i64* @_gasrem, align 8
  %"$ans_100" = alloca %Uint256, align 8
  %"$gasrem_2060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2061" = icmp ugt i64 1, %"$gasrem_2060"
  br i1 %"$gascmp_2061", label %"$out_of_gas_2062", label %"$have_gas_2063"

"$out_of_gas_2062":                               ; preds = %"$have_gas_2058"
  call void @_out_of_gas()
  br label %"$have_gas_2063"

"$have_gas_2063":                                 ; preds = %"$out_of_gas_2062", %"$have_gas_2058"
  %"$consume_2064" = sub i64 %"$gasrem_2060", 1
  store i64 %"$consume_2064", i64* @_gasrem, align 8
  store %Uint256 { i256 10004000600040001 }, %Uint256* %"$ans_100", align 8
  %"$gasrem_2065" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2066" = icmp ugt i64 1, %"$gasrem_2065"
  br i1 %"$gascmp_2066", label %"$out_of_gas_2067", label %"$have_gas_2068"

"$out_of_gas_2067":                               ; preds = %"$have_gas_2063"
  call void @_out_of_gas()
  br label %"$have_gas_2068"

"$have_gas_2068":                                 ; preds = %"$out_of_gas_2067", %"$have_gas_2063"
  %"$consume_2069" = sub i64 %"$gasrem_2065", 1
  store i64 %"$consume_2069", i64* @_gasrem, align 8
  %"$res__101" = alloca %TName_Bool*, align 8
  %"$gasrem_2071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2072" = icmp ugt i64 16, %"$gasrem_2071"
  br i1 %"$gascmp_2072", label %"$out_of_gas_2073", label %"$have_gas_2074"

"$out_of_gas_2073":                               ; preds = %"$have_gas_2068"
  call void @_out_of_gas()
  br label %"$have_gas_2074"

"$have_gas_2074":                                 ; preds = %"$out_of_gas_2073", %"$have_gas_2068"
  %"$consume_2075" = sub i64 %"$gasrem_2071", 16
  store i64 %"$consume_2075", i64* @_gasrem, align 8
  %"$execptr_load_2076" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_99_2077" = alloca %Uint256, align 8
  %"$$p_99_2078" = load %Uint256, %Uint256* %"$p_99", align 8
  store %Uint256 %"$$p_99_2078", %Uint256* %"$eq_$p_99_2077", align 8
  %"$eq_$ans_100_2079" = alloca %Uint256, align 8
  %"$$ans_100_2080" = load %Uint256, %Uint256* %"$ans_100", align 8
  store %Uint256 %"$$ans_100_2080", %Uint256* %"$eq_$ans_100_2079", align 8
  %"$eq_call_2081" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2076", %Uint256* %"$eq_$p_99_2077", %Uint256* %"$eq_$ans_100_2079")
  store %TName_Bool* %"$eq_call_2081", %TName_Bool** %"$res__101", align 8
  %"$gasrem_2083" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2084" = icmp ugt i64 1, %"$gasrem_2083"
  br i1 %"$gascmp_2084", label %"$out_of_gas_2085", label %"$have_gas_2086"

"$out_of_gas_2085":                               ; preds = %"$have_gas_2074"
  call void @_out_of_gas()
  br label %"$have_gas_2086"

"$have_gas_2086":                                 ; preds = %"$out_of_gas_2085", %"$have_gas_2074"
  %"$consume_2087" = sub i64 %"$gasrem_2083", 1
  store i64 %"$consume_2087", i64* @_gasrem, align 8
  %"$BoolUtils.andb_187" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2088" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2089" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2088", 0
  %"$BoolUtils.andb_envptr_2090" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2088", 1
  %"$$res_98_2091" = load %TName_Bool*, %TName_Bool** %"$res_98", align 8
  %"$BoolUtils.andb_call_2092" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2089"(i8* %"$BoolUtils.andb_envptr_2090", %TName_Bool* %"$$res_98_2091")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2092", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8
  %"$BoolUtils.andb_188" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_187_2093" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8
  %"$$BoolUtils.andb_187_fptr_2094" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_2093", 0
  %"$$BoolUtils.andb_187_envptr_2095" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_2093", 1
  %"$$res__101_2096" = load %TName_Bool*, %TName_Bool** %"$res__101", align 8
  %"$$BoolUtils.andb_187_call_2097" = call %TName_Bool* %"$$BoolUtils.andb_187_fptr_2094"(i8* %"$$BoolUtils.andb_187_envptr_2095", %TName_Bool* %"$$res__101_2096")
  store %TName_Bool* %"$$BoolUtils.andb_187_call_2097", %TName_Bool** %"$BoolUtils.andb_188", align 8
  %"$$BoolUtils.andb_188_2098" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_188", align 8
  store %TName_Bool* %"$$BoolUtils.andb_188_2098", %TName_Bool** %"$res_102", align 8
  %"$gasrem_2099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2100" = icmp ugt i64 1, %"$gasrem_2099"
  br i1 %"$gascmp_2100", label %"$out_of_gas_2101", label %"$have_gas_2102"

"$out_of_gas_2101":                               ; preds = %"$have_gas_2086"
  call void @_out_of_gas()
  br label %"$have_gas_2102"

"$have_gas_2102":                                 ; preds = %"$out_of_gas_2101", %"$have_gas_2086"
  %"$consume_2103" = sub i64 %"$gasrem_2099", 1
  store i64 %"$consume_2103", i64* @_gasrem, align 8
  %"$p_103" = alloca %Uint256, align 8
  %"$p4_2104" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2105" = extractvalue %Uint32 %"$p4_2104", 0
  %"$valueof_2106" = zext i32 %"$valueof_2105" to i64
  %"$gasmul_2107" = mul i64 20, %"$valueof_2106"
  %"$gasmul_2108" = mul i64 %"$gasmul_2107", 4
  %"$gasrem_2109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2110" = icmp ugt i64 %"$gasmul_2108", %"$gasrem_2109"
  br i1 %"$gascmp_2110", label %"$out_of_gas_2111", label %"$have_gas_2112"

"$out_of_gas_2111":                               ; preds = %"$have_gas_2102"
  call void @_out_of_gas()
  br label %"$have_gas_2112"

"$have_gas_2112":                                 ; preds = %"$out_of_gas_2111", %"$have_gas_2102"
  %"$consume_2113" = sub i64 %"$gasrem_2109", %"$gasmul_2108"
  store i64 %"$consume_2113", i64* @_gasrem, align 8
  %"$execptr_load_2114" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2115" = alloca %Uint256, align 8
  %"$t7_2116" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2116", %Uint256* %"$pow_t7_2115", align 8
  %"$p4_2117" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2118" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2114", %Uint256* %"$pow_t7_2115", %Uint32 %"$p4_2117")
  %"$pow_2120" = load %Uint256, %Uint256* %"$pow_call_2118", align 8
  store %Uint256 %"$pow_2120", %Uint256* %"$p_103", align 8
  %"$gasrem_2121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2122" = icmp ugt i64 1, %"$gasrem_2121"
  br i1 %"$gascmp_2122", label %"$out_of_gas_2123", label %"$have_gas_2124"

"$out_of_gas_2123":                               ; preds = %"$have_gas_2112"
  call void @_out_of_gas()
  br label %"$have_gas_2124"

"$have_gas_2124":                                 ; preds = %"$out_of_gas_2123", %"$have_gas_2112"
  %"$consume_2125" = sub i64 %"$gasrem_2121", 1
  store i64 %"$consume_2125", i64* @_gasrem, align 8
  %"$res_106" = alloca %TName_Bool*, align 8
  %"$gasrem_2126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2127" = icmp ugt i64 1, %"$gasrem_2126"
  br i1 %"$gascmp_2127", label %"$out_of_gas_2128", label %"$have_gas_2129"

"$out_of_gas_2128":                               ; preds = %"$have_gas_2124"
  call void @_out_of_gas()
  br label %"$have_gas_2129"

"$have_gas_2129":                                 ; preds = %"$out_of_gas_2128", %"$have_gas_2124"
  %"$consume_2130" = sub i64 %"$gasrem_2126", 1
  store i64 %"$consume_2130", i64* @_gasrem, align 8
  %"$ans_104" = alloca %Uint256, align 8
  %"$gasrem_2131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2132" = icmp ugt i64 1, %"$gasrem_2131"
  br i1 %"$gascmp_2132", label %"$out_of_gas_2133", label %"$have_gas_2134"

"$out_of_gas_2133":                               ; preds = %"$have_gas_2129"
  call void @_out_of_gas()
  br label %"$have_gas_2134"

"$have_gas_2134":                                 ; preds = %"$out_of_gas_2133", %"$have_gas_2129"
  %"$consume_2135" = sub i64 %"$gasrem_2131", 1
  store i64 %"$consume_2135", i64* @_gasrem, align 8
  store %Uint256 { i256 10010004501200210025202100120004500100001 }, %Uint256* %"$ans_104", align 8
  %"$gasrem_2136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2137" = icmp ugt i64 1, %"$gasrem_2136"
  br i1 %"$gascmp_2137", label %"$out_of_gas_2138", label %"$have_gas_2139"

"$out_of_gas_2138":                               ; preds = %"$have_gas_2134"
  call void @_out_of_gas()
  br label %"$have_gas_2139"

"$have_gas_2139":                                 ; preds = %"$out_of_gas_2138", %"$have_gas_2134"
  %"$consume_2140" = sub i64 %"$gasrem_2136", 1
  store i64 %"$consume_2140", i64* @_gasrem, align 8
  %"$res__105" = alloca %TName_Bool*, align 8
  %"$gasrem_2142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2143" = icmp ugt i64 16, %"$gasrem_2142"
  br i1 %"$gascmp_2143", label %"$out_of_gas_2144", label %"$have_gas_2145"

"$out_of_gas_2144":                               ; preds = %"$have_gas_2139"
  call void @_out_of_gas()
  br label %"$have_gas_2145"

"$have_gas_2145":                                 ; preds = %"$out_of_gas_2144", %"$have_gas_2139"
  %"$consume_2146" = sub i64 %"$gasrem_2142", 16
  store i64 %"$consume_2146", i64* @_gasrem, align 8
  %"$execptr_load_2147" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_103_2148" = alloca %Uint256, align 8
  %"$$p_103_2149" = load %Uint256, %Uint256* %"$p_103", align 8
  store %Uint256 %"$$p_103_2149", %Uint256* %"$eq_$p_103_2148", align 8
  %"$eq_$ans_104_2150" = alloca %Uint256, align 8
  %"$$ans_104_2151" = load %Uint256, %Uint256* %"$ans_104", align 8
  store %Uint256 %"$$ans_104_2151", %Uint256* %"$eq_$ans_104_2150", align 8
  %"$eq_call_2152" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2147", %Uint256* %"$eq_$p_103_2148", %Uint256* %"$eq_$ans_104_2150")
  store %TName_Bool* %"$eq_call_2152", %TName_Bool** %"$res__105", align 8
  %"$gasrem_2154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2155" = icmp ugt i64 1, %"$gasrem_2154"
  br i1 %"$gascmp_2155", label %"$out_of_gas_2156", label %"$have_gas_2157"

"$out_of_gas_2156":                               ; preds = %"$have_gas_2145"
  call void @_out_of_gas()
  br label %"$have_gas_2157"

"$have_gas_2157":                                 ; preds = %"$out_of_gas_2156", %"$have_gas_2145"
  %"$consume_2158" = sub i64 %"$gasrem_2154", 1
  store i64 %"$consume_2158", i64* @_gasrem, align 8
  %"$BoolUtils.andb_189" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2159" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2160" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2159", 0
  %"$BoolUtils.andb_envptr_2161" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2159", 1
  %"$$res_102_2162" = load %TName_Bool*, %TName_Bool** %"$res_102", align 8
  %"$BoolUtils.andb_call_2163" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2160"(i8* %"$BoolUtils.andb_envptr_2161", %TName_Bool* %"$$res_102_2162")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2163", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8
  %"$BoolUtils.andb_190" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_189_2164" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8
  %"$$BoolUtils.andb_189_fptr_2165" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_2164", 0
  %"$$BoolUtils.andb_189_envptr_2166" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_2164", 1
  %"$$res__105_2167" = load %TName_Bool*, %TName_Bool** %"$res__105", align 8
  %"$$BoolUtils.andb_189_call_2168" = call %TName_Bool* %"$$BoolUtils.andb_189_fptr_2165"(i8* %"$$BoolUtils.andb_189_envptr_2166", %TName_Bool* %"$$res__105_2167")
  store %TName_Bool* %"$$BoolUtils.andb_189_call_2168", %TName_Bool** %"$BoolUtils.andb_190", align 8
  %"$$BoolUtils.andb_190_2169" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_190", align 8
  store %TName_Bool* %"$$BoolUtils.andb_190_2169", %TName_Bool** %"$res_106", align 8
  %"$gasrem_2170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2171" = icmp ugt i64 1, %"$gasrem_2170"
  br i1 %"$gascmp_2171", label %"$out_of_gas_2172", label %"$have_gas_2173"

"$out_of_gas_2172":                               ; preds = %"$have_gas_2157"
  call void @_out_of_gas()
  br label %"$have_gas_2173"

"$have_gas_2173":                                 ; preds = %"$out_of_gas_2172", %"$have_gas_2157"
  %"$consume_2174" = sub i64 %"$gasrem_2170", 1
  store i64 %"$consume_2174", i64* @_gasrem, align 8
  %"$p_107" = alloca %Int256, align 8
  %"$p1_2175" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2176" = extractvalue %Uint32 %"$p1_2175", 0
  %"$valueof_2177" = zext i32 %"$valueof_2176" to i64
  %"$gasmul_2178" = mul i64 20, %"$valueof_2177"
  %"$gasmul_2179" = mul i64 %"$gasmul_2178", 4
  %"$gasrem_2180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2181" = icmp ugt i64 %"$gasmul_2179", %"$gasrem_2180"
  br i1 %"$gascmp_2181", label %"$out_of_gas_2182", label %"$have_gas_2183"

"$out_of_gas_2182":                               ; preds = %"$have_gas_2173"
  call void @_out_of_gas()
  br label %"$have_gas_2183"

"$have_gas_2183":                                 ; preds = %"$out_of_gas_2182", %"$have_gas_2173"
  %"$consume_2184" = sub i64 %"$gasrem_2180", %"$gasmul_2179"
  store i64 %"$consume_2184", i64* @_gasrem, align 8
  %"$execptr_load_2185" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2186" = alloca %Int256, align 8
  %"$t8_2187" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2187", %Int256* %"$pow_t8_2186", align 8
  %"$p1_2188" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2189" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2185", %Int256* %"$pow_t8_2186", %Uint32 %"$p1_2188")
  %"$pow_2191" = load %Int256, %Int256* %"$pow_call_2189", align 8
  store %Int256 %"$pow_2191", %Int256* %"$p_107", align 8
  %"$gasrem_2192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2193" = icmp ugt i64 1, %"$gasrem_2192"
  br i1 %"$gascmp_2193", label %"$out_of_gas_2194", label %"$have_gas_2195"

"$out_of_gas_2194":                               ; preds = %"$have_gas_2183"
  call void @_out_of_gas()
  br label %"$have_gas_2195"

"$have_gas_2195":                                 ; preds = %"$out_of_gas_2194", %"$have_gas_2183"
  %"$consume_2196" = sub i64 %"$gasrem_2192", 1
  store i64 %"$consume_2196", i64* @_gasrem, align 8
  %"$res_110" = alloca %TName_Bool*, align 8
  %"$gasrem_2197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2198" = icmp ugt i64 1, %"$gasrem_2197"
  br i1 %"$gascmp_2198", label %"$out_of_gas_2199", label %"$have_gas_2200"

"$out_of_gas_2199":                               ; preds = %"$have_gas_2195"
  call void @_out_of_gas()
  br label %"$have_gas_2200"

"$have_gas_2200":                                 ; preds = %"$out_of_gas_2199", %"$have_gas_2195"
  %"$consume_2201" = sub i64 %"$gasrem_2197", 1
  store i64 %"$consume_2201", i64* @_gasrem, align 8
  %"$ans_108" = alloca %Int256, align 8
  %"$gasrem_2202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2203" = icmp ugt i64 1, %"$gasrem_2202"
  br i1 %"$gascmp_2203", label %"$out_of_gas_2204", label %"$have_gas_2205"

"$out_of_gas_2204":                               ; preds = %"$have_gas_2200"
  call void @_out_of_gas()
  br label %"$have_gas_2205"

"$have_gas_2205":                                 ; preds = %"$out_of_gas_2204", %"$have_gas_2200"
  %"$consume_2206" = sub i64 %"$gasrem_2202", 1
  store i64 %"$consume_2206", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_108", align 8
  %"$gasrem_2207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2208" = icmp ugt i64 1, %"$gasrem_2207"
  br i1 %"$gascmp_2208", label %"$out_of_gas_2209", label %"$have_gas_2210"

"$out_of_gas_2209":                               ; preds = %"$have_gas_2205"
  call void @_out_of_gas()
  br label %"$have_gas_2210"

"$have_gas_2210":                                 ; preds = %"$out_of_gas_2209", %"$have_gas_2205"
  %"$consume_2211" = sub i64 %"$gasrem_2207", 1
  store i64 %"$consume_2211", i64* @_gasrem, align 8
  %"$res__109" = alloca %TName_Bool*, align 8
  %"$gasrem_2213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2214" = icmp ugt i64 16, %"$gasrem_2213"
  br i1 %"$gascmp_2214", label %"$out_of_gas_2215", label %"$have_gas_2216"

"$out_of_gas_2215":                               ; preds = %"$have_gas_2210"
  call void @_out_of_gas()
  br label %"$have_gas_2216"

"$have_gas_2216":                                 ; preds = %"$out_of_gas_2215", %"$have_gas_2210"
  %"$consume_2217" = sub i64 %"$gasrem_2213", 16
  store i64 %"$consume_2217", i64* @_gasrem, align 8
  %"$execptr_load_2218" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_107_2219" = alloca %Int256, align 8
  %"$$p_107_2220" = load %Int256, %Int256* %"$p_107", align 8
  store %Int256 %"$$p_107_2220", %Int256* %"$eq_$p_107_2219", align 8
  %"$eq_$ans_108_2221" = alloca %Int256, align 8
  %"$$ans_108_2222" = load %Int256, %Int256* %"$ans_108", align 8
  store %Int256 %"$$ans_108_2222", %Int256* %"$eq_$ans_108_2221", align 8
  %"$eq_call_2223" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2218", %Int256* %"$eq_$p_107_2219", %Int256* %"$eq_$ans_108_2221")
  store %TName_Bool* %"$eq_call_2223", %TName_Bool** %"$res__109", align 8
  %"$gasrem_2225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2226" = icmp ugt i64 1, %"$gasrem_2225"
  br i1 %"$gascmp_2226", label %"$out_of_gas_2227", label %"$have_gas_2228"

"$out_of_gas_2227":                               ; preds = %"$have_gas_2216"
  call void @_out_of_gas()
  br label %"$have_gas_2228"

"$have_gas_2228":                                 ; preds = %"$out_of_gas_2227", %"$have_gas_2216"
  %"$consume_2229" = sub i64 %"$gasrem_2225", 1
  store i64 %"$consume_2229", i64* @_gasrem, align 8
  %"$BoolUtils.andb_191" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2230" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2231" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2230", 0
  %"$BoolUtils.andb_envptr_2232" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2230", 1
  %"$$res_106_2233" = load %TName_Bool*, %TName_Bool** %"$res_106", align 8
  %"$BoolUtils.andb_call_2234" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2231"(i8* %"$BoolUtils.andb_envptr_2232", %TName_Bool* %"$$res_106_2233")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2234", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8
  %"$BoolUtils.andb_192" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_191_2235" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8
  %"$$BoolUtils.andb_191_fptr_2236" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_2235", 0
  %"$$BoolUtils.andb_191_envptr_2237" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_2235", 1
  %"$$res__109_2238" = load %TName_Bool*, %TName_Bool** %"$res__109", align 8
  %"$$BoolUtils.andb_191_call_2239" = call %TName_Bool* %"$$BoolUtils.andb_191_fptr_2236"(i8* %"$$BoolUtils.andb_191_envptr_2237", %TName_Bool* %"$$res__109_2238")
  store %TName_Bool* %"$$BoolUtils.andb_191_call_2239", %TName_Bool** %"$BoolUtils.andb_192", align 8
  %"$$BoolUtils.andb_192_2240" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_192", align 8
  store %TName_Bool* %"$$BoolUtils.andb_192_2240", %TName_Bool** %"$res_110", align 8
  %"$gasrem_2241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2242" = icmp ugt i64 1, %"$gasrem_2241"
  br i1 %"$gascmp_2242", label %"$out_of_gas_2243", label %"$have_gas_2244"

"$out_of_gas_2243":                               ; preds = %"$have_gas_2228"
  call void @_out_of_gas()
  br label %"$have_gas_2244"

"$have_gas_2244":                                 ; preds = %"$out_of_gas_2243", %"$have_gas_2228"
  %"$consume_2245" = sub i64 %"$gasrem_2241", 1
  store i64 %"$consume_2245", i64* @_gasrem, align 8
  %"$p_111" = alloca %Int256, align 8
  %"$p2_2246" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2247" = extractvalue %Uint32 %"$p2_2246", 0
  %"$valueof_2248" = zext i32 %"$valueof_2247" to i64
  %"$gasmul_2249" = mul i64 20, %"$valueof_2248"
  %"$gasmul_2250" = mul i64 %"$gasmul_2249", 4
  %"$gasrem_2251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2252" = icmp ugt i64 %"$gasmul_2250", %"$gasrem_2251"
  br i1 %"$gascmp_2252", label %"$out_of_gas_2253", label %"$have_gas_2254"

"$out_of_gas_2253":                               ; preds = %"$have_gas_2244"
  call void @_out_of_gas()
  br label %"$have_gas_2254"

"$have_gas_2254":                                 ; preds = %"$out_of_gas_2253", %"$have_gas_2244"
  %"$consume_2255" = sub i64 %"$gasrem_2251", %"$gasmul_2250"
  store i64 %"$consume_2255", i64* @_gasrem, align 8
  %"$execptr_load_2256" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2257" = alloca %Int256, align 8
  %"$t8_2258" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2258", %Int256* %"$pow_t8_2257", align 8
  %"$p2_2259" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2260" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2256", %Int256* %"$pow_t8_2257", %Uint32 %"$p2_2259")
  %"$pow_2262" = load %Int256, %Int256* %"$pow_call_2260", align 8
  store %Int256 %"$pow_2262", %Int256* %"$p_111", align 8
  %"$gasrem_2263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2264" = icmp ugt i64 1, %"$gasrem_2263"
  br i1 %"$gascmp_2264", label %"$out_of_gas_2265", label %"$have_gas_2266"

"$out_of_gas_2265":                               ; preds = %"$have_gas_2254"
  call void @_out_of_gas()
  br label %"$have_gas_2266"

"$have_gas_2266":                                 ; preds = %"$out_of_gas_2265", %"$have_gas_2254"
  %"$consume_2267" = sub i64 %"$gasrem_2263", 1
  store i64 %"$consume_2267", i64* @_gasrem, align 8
  %"$res_114" = alloca %TName_Bool*, align 8
  %"$gasrem_2268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2269" = icmp ugt i64 1, %"$gasrem_2268"
  br i1 %"$gascmp_2269", label %"$out_of_gas_2270", label %"$have_gas_2271"

"$out_of_gas_2270":                               ; preds = %"$have_gas_2266"
  call void @_out_of_gas()
  br label %"$have_gas_2271"

"$have_gas_2271":                                 ; preds = %"$out_of_gas_2270", %"$have_gas_2266"
  %"$consume_2272" = sub i64 %"$gasrem_2268", 1
  store i64 %"$consume_2272", i64* @_gasrem, align 8
  %"$ans_112" = alloca %Int256, align 8
  %"$gasrem_2273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2274" = icmp ugt i64 1, %"$gasrem_2273"
  br i1 %"$gascmp_2274", label %"$out_of_gas_2275", label %"$have_gas_2276"

"$out_of_gas_2275":                               ; preds = %"$have_gas_2271"
  call void @_out_of_gas()
  br label %"$have_gas_2276"

"$have_gas_2276":                                 ; preds = %"$out_of_gas_2275", %"$have_gas_2271"
  %"$consume_2277" = sub i64 %"$gasrem_2273", 1
  store i64 %"$consume_2277", i64* @_gasrem, align 8
  store %Int256 { i256 -10001 }, %Int256* %"$ans_112", align 8
  %"$gasrem_2278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2279" = icmp ugt i64 1, %"$gasrem_2278"
  br i1 %"$gascmp_2279", label %"$out_of_gas_2280", label %"$have_gas_2281"

"$out_of_gas_2280":                               ; preds = %"$have_gas_2276"
  call void @_out_of_gas()
  br label %"$have_gas_2281"

"$have_gas_2281":                                 ; preds = %"$out_of_gas_2280", %"$have_gas_2276"
  %"$consume_2282" = sub i64 %"$gasrem_2278", 1
  store i64 %"$consume_2282", i64* @_gasrem, align 8
  %"$res__113" = alloca %TName_Bool*, align 8
  %"$gasrem_2284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2285" = icmp ugt i64 16, %"$gasrem_2284"
  br i1 %"$gascmp_2285", label %"$out_of_gas_2286", label %"$have_gas_2287"

"$out_of_gas_2286":                               ; preds = %"$have_gas_2281"
  call void @_out_of_gas()
  br label %"$have_gas_2287"

"$have_gas_2287":                                 ; preds = %"$out_of_gas_2286", %"$have_gas_2281"
  %"$consume_2288" = sub i64 %"$gasrem_2284", 16
  store i64 %"$consume_2288", i64* @_gasrem, align 8
  %"$execptr_load_2289" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_111_2290" = alloca %Int256, align 8
  %"$$p_111_2291" = load %Int256, %Int256* %"$p_111", align 8
  store %Int256 %"$$p_111_2291", %Int256* %"$eq_$p_111_2290", align 8
  %"$eq_$ans_112_2292" = alloca %Int256, align 8
  %"$$ans_112_2293" = load %Int256, %Int256* %"$ans_112", align 8
  store %Int256 %"$$ans_112_2293", %Int256* %"$eq_$ans_112_2292", align 8
  %"$eq_call_2294" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2289", %Int256* %"$eq_$p_111_2290", %Int256* %"$eq_$ans_112_2292")
  store %TName_Bool* %"$eq_call_2294", %TName_Bool** %"$res__113", align 8
  %"$gasrem_2296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2297" = icmp ugt i64 1, %"$gasrem_2296"
  br i1 %"$gascmp_2297", label %"$out_of_gas_2298", label %"$have_gas_2299"

"$out_of_gas_2298":                               ; preds = %"$have_gas_2287"
  call void @_out_of_gas()
  br label %"$have_gas_2299"

"$have_gas_2299":                                 ; preds = %"$out_of_gas_2298", %"$have_gas_2287"
  %"$consume_2300" = sub i64 %"$gasrem_2296", 1
  store i64 %"$consume_2300", i64* @_gasrem, align 8
  %"$BoolUtils.andb_193" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2301" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2302" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2301", 0
  %"$BoolUtils.andb_envptr_2303" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2301", 1
  %"$$res_110_2304" = load %TName_Bool*, %TName_Bool** %"$res_110", align 8
  %"$BoolUtils.andb_call_2305" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2302"(i8* %"$BoolUtils.andb_envptr_2303", %TName_Bool* %"$$res_110_2304")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2305", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8
  %"$BoolUtils.andb_194" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_193_2306" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8
  %"$$BoolUtils.andb_193_fptr_2307" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2306", 0
  %"$$BoolUtils.andb_193_envptr_2308" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2306", 1
  %"$$res__113_2309" = load %TName_Bool*, %TName_Bool** %"$res__113", align 8
  %"$$BoolUtils.andb_193_call_2310" = call %TName_Bool* %"$$BoolUtils.andb_193_fptr_2307"(i8* %"$$BoolUtils.andb_193_envptr_2308", %TName_Bool* %"$$res__113_2309")
  store %TName_Bool* %"$$BoolUtils.andb_193_call_2310", %TName_Bool** %"$BoolUtils.andb_194", align 8
  %"$$BoolUtils.andb_194_2311" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_194", align 8
  store %TName_Bool* %"$$BoolUtils.andb_194_2311", %TName_Bool** %"$res_114", align 8
  %"$gasrem_2312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2313" = icmp ugt i64 1, %"$gasrem_2312"
  br i1 %"$gascmp_2313", label %"$out_of_gas_2314", label %"$have_gas_2315"

"$out_of_gas_2314":                               ; preds = %"$have_gas_2299"
  call void @_out_of_gas()
  br label %"$have_gas_2315"

"$have_gas_2315":                                 ; preds = %"$out_of_gas_2314", %"$have_gas_2299"
  %"$consume_2316" = sub i64 %"$gasrem_2312", 1
  store i64 %"$consume_2316", i64* @_gasrem, align 8
  %"$p_115" = alloca %Int256, align 8
  %"$p3_2317" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2318" = extractvalue %Uint32 %"$p3_2317", 0
  %"$valueof_2319" = zext i32 %"$valueof_2318" to i64
  %"$gasmul_2320" = mul i64 20, %"$valueof_2319"
  %"$gasmul_2321" = mul i64 %"$gasmul_2320", 4
  %"$gasrem_2322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2323" = icmp ugt i64 %"$gasmul_2321", %"$gasrem_2322"
  br i1 %"$gascmp_2323", label %"$out_of_gas_2324", label %"$have_gas_2325"

"$out_of_gas_2324":                               ; preds = %"$have_gas_2315"
  call void @_out_of_gas()
  br label %"$have_gas_2325"

"$have_gas_2325":                                 ; preds = %"$out_of_gas_2324", %"$have_gas_2315"
  %"$consume_2326" = sub i64 %"$gasrem_2322", %"$gasmul_2321"
  store i64 %"$consume_2326", i64* @_gasrem, align 8
  %"$execptr_load_2327" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2328" = alloca %Int256, align 8
  %"$t8_2329" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2329", %Int256* %"$pow_t8_2328", align 8
  %"$p3_2330" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2331" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2327", %Int256* %"$pow_t8_2328", %Uint32 %"$p3_2330")
  %"$pow_2333" = load %Int256, %Int256* %"$pow_call_2331", align 8
  store %Int256 %"$pow_2333", %Int256* %"$p_115", align 8
  %"$gasrem_2334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2335" = icmp ugt i64 1, %"$gasrem_2334"
  br i1 %"$gascmp_2335", label %"$out_of_gas_2336", label %"$have_gas_2337"

"$out_of_gas_2336":                               ; preds = %"$have_gas_2325"
  call void @_out_of_gas()
  br label %"$have_gas_2337"

"$have_gas_2337":                                 ; preds = %"$out_of_gas_2336", %"$have_gas_2325"
  %"$consume_2338" = sub i64 %"$gasrem_2334", 1
  store i64 %"$consume_2338", i64* @_gasrem, align 8
  %"$res_118" = alloca %TName_Bool*, align 8
  %"$gasrem_2339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2340" = icmp ugt i64 1, %"$gasrem_2339"
  br i1 %"$gascmp_2340", label %"$out_of_gas_2341", label %"$have_gas_2342"

"$out_of_gas_2341":                               ; preds = %"$have_gas_2337"
  call void @_out_of_gas()
  br label %"$have_gas_2342"

"$have_gas_2342":                                 ; preds = %"$out_of_gas_2341", %"$have_gas_2337"
  %"$consume_2343" = sub i64 %"$gasrem_2339", 1
  store i64 %"$consume_2343", i64* @_gasrem, align 8
  %"$ans_116" = alloca %Int256, align 8
  %"$gasrem_2344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2345" = icmp ugt i64 1, %"$gasrem_2344"
  br i1 %"$gascmp_2345", label %"$out_of_gas_2346", label %"$have_gas_2347"

"$out_of_gas_2346":                               ; preds = %"$have_gas_2342"
  call void @_out_of_gas()
  br label %"$have_gas_2347"

"$have_gas_2347":                                 ; preds = %"$out_of_gas_2346", %"$have_gas_2342"
  %"$consume_2348" = sub i64 %"$gasrem_2344", 1
  store i64 %"$consume_2348", i64* @_gasrem, align 8
  store %Int256 { i256 10004000600040001 }, %Int256* %"$ans_116", align 8
  %"$gasrem_2349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2350" = icmp ugt i64 1, %"$gasrem_2349"
  br i1 %"$gascmp_2350", label %"$out_of_gas_2351", label %"$have_gas_2352"

"$out_of_gas_2351":                               ; preds = %"$have_gas_2347"
  call void @_out_of_gas()
  br label %"$have_gas_2352"

"$have_gas_2352":                                 ; preds = %"$out_of_gas_2351", %"$have_gas_2347"
  %"$consume_2353" = sub i64 %"$gasrem_2349", 1
  store i64 %"$consume_2353", i64* @_gasrem, align 8
  %"$res__117" = alloca %TName_Bool*, align 8
  %"$gasrem_2355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2356" = icmp ugt i64 16, %"$gasrem_2355"
  br i1 %"$gascmp_2356", label %"$out_of_gas_2357", label %"$have_gas_2358"

"$out_of_gas_2357":                               ; preds = %"$have_gas_2352"
  call void @_out_of_gas()
  br label %"$have_gas_2358"

"$have_gas_2358":                                 ; preds = %"$out_of_gas_2357", %"$have_gas_2352"
  %"$consume_2359" = sub i64 %"$gasrem_2355", 16
  store i64 %"$consume_2359", i64* @_gasrem, align 8
  %"$execptr_load_2360" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_115_2361" = alloca %Int256, align 8
  %"$$p_115_2362" = load %Int256, %Int256* %"$p_115", align 8
  store %Int256 %"$$p_115_2362", %Int256* %"$eq_$p_115_2361", align 8
  %"$eq_$ans_116_2363" = alloca %Int256, align 8
  %"$$ans_116_2364" = load %Int256, %Int256* %"$ans_116", align 8
  store %Int256 %"$$ans_116_2364", %Int256* %"$eq_$ans_116_2363", align 8
  %"$eq_call_2365" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2360", %Int256* %"$eq_$p_115_2361", %Int256* %"$eq_$ans_116_2363")
  store %TName_Bool* %"$eq_call_2365", %TName_Bool** %"$res__117", align 8
  %"$gasrem_2367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2368" = icmp ugt i64 1, %"$gasrem_2367"
  br i1 %"$gascmp_2368", label %"$out_of_gas_2369", label %"$have_gas_2370"

"$out_of_gas_2369":                               ; preds = %"$have_gas_2358"
  call void @_out_of_gas()
  br label %"$have_gas_2370"

"$have_gas_2370":                                 ; preds = %"$out_of_gas_2369", %"$have_gas_2358"
  %"$consume_2371" = sub i64 %"$gasrem_2367", 1
  store i64 %"$consume_2371", i64* @_gasrem, align 8
  %"$BoolUtils.andb_195" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2372" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2373" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2372", 0
  %"$BoolUtils.andb_envptr_2374" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2372", 1
  %"$$res_114_2375" = load %TName_Bool*, %TName_Bool** %"$res_114", align 8
  %"$BoolUtils.andb_call_2376" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2373"(i8* %"$BoolUtils.andb_envptr_2374", %TName_Bool* %"$$res_114_2375")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2376", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8
  %"$BoolUtils.andb_196" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_195_2377" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8
  %"$$BoolUtils.andb_195_fptr_2378" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2377", 0
  %"$$BoolUtils.andb_195_envptr_2379" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2377", 1
  %"$$res__117_2380" = load %TName_Bool*, %TName_Bool** %"$res__117", align 8
  %"$$BoolUtils.andb_195_call_2381" = call %TName_Bool* %"$$BoolUtils.andb_195_fptr_2378"(i8* %"$$BoolUtils.andb_195_envptr_2379", %TName_Bool* %"$$res__117_2380")
  store %TName_Bool* %"$$BoolUtils.andb_195_call_2381", %TName_Bool** %"$BoolUtils.andb_196", align 8
  %"$$BoolUtils.andb_196_2382" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_196", align 8
  store %TName_Bool* %"$$BoolUtils.andb_196_2382", %TName_Bool** %"$res_118", align 8
  %"$gasrem_2383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2384" = icmp ugt i64 1, %"$gasrem_2383"
  br i1 %"$gascmp_2384", label %"$out_of_gas_2385", label %"$have_gas_2386"

"$out_of_gas_2385":                               ; preds = %"$have_gas_2370"
  call void @_out_of_gas()
  br label %"$have_gas_2386"

"$have_gas_2386":                                 ; preds = %"$out_of_gas_2385", %"$have_gas_2370"
  %"$consume_2387" = sub i64 %"$gasrem_2383", 1
  store i64 %"$consume_2387", i64* @_gasrem, align 8
  %"$p_119" = alloca %Int256, align 8
  %"$p4_2388" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2389" = extractvalue %Uint32 %"$p4_2388", 0
  %"$valueof_2390" = zext i32 %"$valueof_2389" to i64
  %"$gasmul_2391" = mul i64 20, %"$valueof_2390"
  %"$gasmul_2392" = mul i64 %"$gasmul_2391", 4
  %"$gasrem_2393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2394" = icmp ugt i64 %"$gasmul_2392", %"$gasrem_2393"
  br i1 %"$gascmp_2394", label %"$out_of_gas_2395", label %"$have_gas_2396"

"$out_of_gas_2395":                               ; preds = %"$have_gas_2386"
  call void @_out_of_gas()
  br label %"$have_gas_2396"

"$have_gas_2396":                                 ; preds = %"$out_of_gas_2395", %"$have_gas_2386"
  %"$consume_2397" = sub i64 %"$gasrem_2393", %"$gasmul_2392"
  store i64 %"$consume_2397", i64* @_gasrem, align 8
  %"$execptr_load_2398" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2399" = alloca %Int256, align 8
  %"$t8_2400" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2400", %Int256* %"$pow_t8_2399", align 8
  %"$p4_2401" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2402" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2398", %Int256* %"$pow_t8_2399", %Uint32 %"$p4_2401")
  %"$pow_2404" = load %Int256, %Int256* %"$pow_call_2402", align 8
  store %Int256 %"$pow_2404", %Int256* %"$p_119", align 8
  %"$gasrem_2405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2406" = icmp ugt i64 1, %"$gasrem_2405"
  br i1 %"$gascmp_2406", label %"$out_of_gas_2407", label %"$have_gas_2408"

"$out_of_gas_2407":                               ; preds = %"$have_gas_2396"
  call void @_out_of_gas()
  br label %"$have_gas_2408"

"$have_gas_2408":                                 ; preds = %"$out_of_gas_2407", %"$have_gas_2396"
  %"$consume_2409" = sub i64 %"$gasrem_2405", 1
  store i64 %"$consume_2409", i64* @_gasrem, align 8
  %"$res_122" = alloca %TName_Bool*, align 8
  %"$gasrem_2410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2411" = icmp ugt i64 1, %"$gasrem_2410"
  br i1 %"$gascmp_2411", label %"$out_of_gas_2412", label %"$have_gas_2413"

"$out_of_gas_2412":                               ; preds = %"$have_gas_2408"
  call void @_out_of_gas()
  br label %"$have_gas_2413"

"$have_gas_2413":                                 ; preds = %"$out_of_gas_2412", %"$have_gas_2408"
  %"$consume_2414" = sub i64 %"$gasrem_2410", 1
  store i64 %"$consume_2414", i64* @_gasrem, align 8
  %"$ans_120" = alloca %Int256, align 8
  %"$gasrem_2415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2416" = icmp ugt i64 1, %"$gasrem_2415"
  br i1 %"$gascmp_2416", label %"$out_of_gas_2417", label %"$have_gas_2418"

"$out_of_gas_2417":                               ; preds = %"$have_gas_2413"
  call void @_out_of_gas()
  br label %"$have_gas_2418"

"$have_gas_2418":                                 ; preds = %"$out_of_gas_2417", %"$have_gas_2413"
  %"$consume_2419" = sub i64 %"$gasrem_2415", 1
  store i64 %"$consume_2419", i64* @_gasrem, align 8
  store %Int256 { i256 10010004501200210025202100120004500100001 }, %Int256* %"$ans_120", align 8
  %"$gasrem_2420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2421" = icmp ugt i64 1, %"$gasrem_2420"
  br i1 %"$gascmp_2421", label %"$out_of_gas_2422", label %"$have_gas_2423"

"$out_of_gas_2422":                               ; preds = %"$have_gas_2418"
  call void @_out_of_gas()
  br label %"$have_gas_2423"

"$have_gas_2423":                                 ; preds = %"$out_of_gas_2422", %"$have_gas_2418"
  %"$consume_2424" = sub i64 %"$gasrem_2420", 1
  store i64 %"$consume_2424", i64* @_gasrem, align 8
  %"$res__121" = alloca %TName_Bool*, align 8
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
  %"$eq_$p_119_2432" = alloca %Int256, align 8
  %"$$p_119_2433" = load %Int256, %Int256* %"$p_119", align 8
  store %Int256 %"$$p_119_2433", %Int256* %"$eq_$p_119_2432", align 8
  %"$eq_$ans_120_2434" = alloca %Int256, align 8
  %"$$ans_120_2435" = load %Int256, %Int256* %"$ans_120", align 8
  store %Int256 %"$$ans_120_2435", %Int256* %"$eq_$ans_120_2434", align 8
  %"$eq_call_2436" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2431", %Int256* %"$eq_$p_119_2432", %Int256* %"$eq_$ans_120_2434")
  store %TName_Bool* %"$eq_call_2436", %TName_Bool** %"$res__121", align 8
  %"$gasrem_2438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2439" = icmp ugt i64 1, %"$gasrem_2438"
  br i1 %"$gascmp_2439", label %"$out_of_gas_2440", label %"$have_gas_2441"

"$out_of_gas_2440":                               ; preds = %"$have_gas_2429"
  call void @_out_of_gas()
  br label %"$have_gas_2441"

"$have_gas_2441":                                 ; preds = %"$out_of_gas_2440", %"$have_gas_2429"
  %"$consume_2442" = sub i64 %"$gasrem_2438", 1
  store i64 %"$consume_2442", i64* @_gasrem, align 8
  %"$BoolUtils.andb_197" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2443" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2444" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2443", 0
  %"$BoolUtils.andb_envptr_2445" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2443", 1
  %"$$res_118_2446" = load %TName_Bool*, %TName_Bool** %"$res_118", align 8
  %"$BoolUtils.andb_call_2447" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2444"(i8* %"$BoolUtils.andb_envptr_2445", %TName_Bool* %"$$res_118_2446")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2447", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8
  %"$BoolUtils.andb_198" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_197_2448" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8
  %"$$BoolUtils.andb_197_fptr_2449" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2448", 0
  %"$$BoolUtils.andb_197_envptr_2450" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2448", 1
  %"$$res__121_2451" = load %TName_Bool*, %TName_Bool** %"$res__121", align 8
  %"$$BoolUtils.andb_197_call_2452" = call %TName_Bool* %"$$BoolUtils.andb_197_fptr_2449"(i8* %"$$BoolUtils.andb_197_envptr_2450", %TName_Bool* %"$$res__121_2451")
  store %TName_Bool* %"$$BoolUtils.andb_197_call_2452", %TName_Bool** %"$BoolUtils.andb_198", align 8
  %"$$BoolUtils.andb_198_2453" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_198", align 8
  store %TName_Bool* %"$$BoolUtils.andb_198_2453", %TName_Bool** %"$res_122", align 8
  %"$gasrem_2454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2455" = icmp ugt i64 1, %"$gasrem_2454"
  br i1 %"$gascmp_2455", label %"$out_of_gas_2456", label %"$have_gas_2457"

"$out_of_gas_2456":                               ; preds = %"$have_gas_2441"
  call void @_out_of_gas()
  br label %"$have_gas_2457"

"$have_gas_2457":                                 ; preds = %"$out_of_gas_2456", %"$have_gas_2441"
  %"$consume_2458" = sub i64 %"$gasrem_2454", 1
  store i64 %"$consume_2458", i64* @_gasrem, align 8
  %"$p_123" = alloca %Int256, align 8
  %"$p1_2459" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2460" = extractvalue %Uint32 %"$p1_2459", 0
  %"$valueof_2461" = zext i32 %"$valueof_2460" to i64
  %"$gasmul_2462" = mul i64 20, %"$valueof_2461"
  %"$gasmul_2463" = mul i64 %"$gasmul_2462", 4
  %"$gasrem_2464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2465" = icmp ugt i64 %"$gasmul_2463", %"$gasrem_2464"
  br i1 %"$gascmp_2465", label %"$out_of_gas_2466", label %"$have_gas_2467"

"$out_of_gas_2466":                               ; preds = %"$have_gas_2457"
  call void @_out_of_gas()
  br label %"$have_gas_2467"

"$have_gas_2467":                                 ; preds = %"$out_of_gas_2466", %"$have_gas_2457"
  %"$consume_2468" = sub i64 %"$gasrem_2464", %"$gasmul_2463"
  store i64 %"$consume_2468", i64* @_gasrem, align 8
  %"$execptr_load_2469" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2470" = alloca %Int256, align 8
  %"$t9_2471" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2471", %Int256* %"$pow_t9_2470", align 8
  %"$p1_2472" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2473" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2469", %Int256* %"$pow_t9_2470", %Uint32 %"$p1_2472")
  %"$pow_2475" = load %Int256, %Int256* %"$pow_call_2473", align 8
  store %Int256 %"$pow_2475", %Int256* %"$p_123", align 8
  %"$gasrem_2476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2477" = icmp ugt i64 1, %"$gasrem_2476"
  br i1 %"$gascmp_2477", label %"$out_of_gas_2478", label %"$have_gas_2479"

"$out_of_gas_2478":                               ; preds = %"$have_gas_2467"
  call void @_out_of_gas()
  br label %"$have_gas_2479"

"$have_gas_2479":                                 ; preds = %"$out_of_gas_2478", %"$have_gas_2467"
  %"$consume_2480" = sub i64 %"$gasrem_2476", 1
  store i64 %"$consume_2480", i64* @_gasrem, align 8
  %"$res_126" = alloca %TName_Bool*, align 8
  %"$gasrem_2481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2482" = icmp ugt i64 1, %"$gasrem_2481"
  br i1 %"$gascmp_2482", label %"$out_of_gas_2483", label %"$have_gas_2484"

"$out_of_gas_2483":                               ; preds = %"$have_gas_2479"
  call void @_out_of_gas()
  br label %"$have_gas_2484"

"$have_gas_2484":                                 ; preds = %"$out_of_gas_2483", %"$have_gas_2479"
  %"$consume_2485" = sub i64 %"$gasrem_2481", 1
  store i64 %"$consume_2485", i64* @_gasrem, align 8
  %"$ans_124" = alloca %Int256, align 8
  %"$gasrem_2486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2487" = icmp ugt i64 1, %"$gasrem_2486"
  br i1 %"$gascmp_2487", label %"$out_of_gas_2488", label %"$have_gas_2489"

"$out_of_gas_2488":                               ; preds = %"$have_gas_2484"
  call void @_out_of_gas()
  br label %"$have_gas_2489"

"$have_gas_2489":                                 ; preds = %"$out_of_gas_2488", %"$have_gas_2484"
  %"$consume_2490" = sub i64 %"$gasrem_2486", 1
  store i64 %"$consume_2490", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_124", align 8
  %"$gasrem_2491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2492" = icmp ugt i64 1, %"$gasrem_2491"
  br i1 %"$gascmp_2492", label %"$out_of_gas_2493", label %"$have_gas_2494"

"$out_of_gas_2493":                               ; preds = %"$have_gas_2489"
  call void @_out_of_gas()
  br label %"$have_gas_2494"

"$have_gas_2494":                                 ; preds = %"$out_of_gas_2493", %"$have_gas_2489"
  %"$consume_2495" = sub i64 %"$gasrem_2491", 1
  store i64 %"$consume_2495", i64* @_gasrem, align 8
  %"$res__125" = alloca %TName_Bool*, align 8
  %"$gasrem_2497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2498" = icmp ugt i64 16, %"$gasrem_2497"
  br i1 %"$gascmp_2498", label %"$out_of_gas_2499", label %"$have_gas_2500"

"$out_of_gas_2499":                               ; preds = %"$have_gas_2494"
  call void @_out_of_gas()
  br label %"$have_gas_2500"

"$have_gas_2500":                                 ; preds = %"$out_of_gas_2499", %"$have_gas_2494"
  %"$consume_2501" = sub i64 %"$gasrem_2497", 16
  store i64 %"$consume_2501", i64* @_gasrem, align 8
  %"$execptr_load_2502" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_123_2503" = alloca %Int256, align 8
  %"$$p_123_2504" = load %Int256, %Int256* %"$p_123", align 8
  store %Int256 %"$$p_123_2504", %Int256* %"$eq_$p_123_2503", align 8
  %"$eq_$ans_124_2505" = alloca %Int256, align 8
  %"$$ans_124_2506" = load %Int256, %Int256* %"$ans_124", align 8
  store %Int256 %"$$ans_124_2506", %Int256* %"$eq_$ans_124_2505", align 8
  %"$eq_call_2507" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2502", %Int256* %"$eq_$p_123_2503", %Int256* %"$eq_$ans_124_2505")
  store %TName_Bool* %"$eq_call_2507", %TName_Bool** %"$res__125", align 8
  %"$gasrem_2509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2510" = icmp ugt i64 1, %"$gasrem_2509"
  br i1 %"$gascmp_2510", label %"$out_of_gas_2511", label %"$have_gas_2512"

"$out_of_gas_2511":                               ; preds = %"$have_gas_2500"
  call void @_out_of_gas()
  br label %"$have_gas_2512"

"$have_gas_2512":                                 ; preds = %"$out_of_gas_2511", %"$have_gas_2500"
  %"$consume_2513" = sub i64 %"$gasrem_2509", 1
  store i64 %"$consume_2513", i64* @_gasrem, align 8
  %"$BoolUtils.andb_199" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2514" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2515" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2514", 0
  %"$BoolUtils.andb_envptr_2516" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2514", 1
  %"$$res_122_2517" = load %TName_Bool*, %TName_Bool** %"$res_122", align 8
  %"$BoolUtils.andb_call_2518" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2515"(i8* %"$BoolUtils.andb_envptr_2516", %TName_Bool* %"$$res_122_2517")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2518", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8
  %"$BoolUtils.andb_200" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_199_2519" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8
  %"$$BoolUtils.andb_199_fptr_2520" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2519", 0
  %"$$BoolUtils.andb_199_envptr_2521" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2519", 1
  %"$$res__125_2522" = load %TName_Bool*, %TName_Bool** %"$res__125", align 8
  %"$$BoolUtils.andb_199_call_2523" = call %TName_Bool* %"$$BoolUtils.andb_199_fptr_2520"(i8* %"$$BoolUtils.andb_199_envptr_2521", %TName_Bool* %"$$res__125_2522")
  store %TName_Bool* %"$$BoolUtils.andb_199_call_2523", %TName_Bool** %"$BoolUtils.andb_200", align 8
  %"$$BoolUtils.andb_200_2524" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_200", align 8
  store %TName_Bool* %"$$BoolUtils.andb_200_2524", %TName_Bool** %"$res_126", align 8
  %"$gasrem_2525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2526" = icmp ugt i64 1, %"$gasrem_2525"
  br i1 %"$gascmp_2526", label %"$out_of_gas_2527", label %"$have_gas_2528"

"$out_of_gas_2527":                               ; preds = %"$have_gas_2512"
  call void @_out_of_gas()
  br label %"$have_gas_2528"

"$have_gas_2528":                                 ; preds = %"$out_of_gas_2527", %"$have_gas_2512"
  %"$consume_2529" = sub i64 %"$gasrem_2525", 1
  store i64 %"$consume_2529", i64* @_gasrem, align 8
  %"$p_127" = alloca %Int256, align 8
  %"$p2_2530" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2531" = extractvalue %Uint32 %"$p2_2530", 0
  %"$valueof_2532" = zext i32 %"$valueof_2531" to i64
  %"$gasmul_2533" = mul i64 20, %"$valueof_2532"
  %"$gasmul_2534" = mul i64 %"$gasmul_2533", 4
  %"$gasrem_2535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2536" = icmp ugt i64 %"$gasmul_2534", %"$gasrem_2535"
  br i1 %"$gascmp_2536", label %"$out_of_gas_2537", label %"$have_gas_2538"

"$out_of_gas_2537":                               ; preds = %"$have_gas_2528"
  call void @_out_of_gas()
  br label %"$have_gas_2538"

"$have_gas_2538":                                 ; preds = %"$out_of_gas_2537", %"$have_gas_2528"
  %"$consume_2539" = sub i64 %"$gasrem_2535", %"$gasmul_2534"
  store i64 %"$consume_2539", i64* @_gasrem, align 8
  %"$execptr_load_2540" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2541" = alloca %Int256, align 8
  %"$t9_2542" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2542", %Int256* %"$pow_t9_2541", align 8
  %"$p2_2543" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2544" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2540", %Int256* %"$pow_t9_2541", %Uint32 %"$p2_2543")
  %"$pow_2546" = load %Int256, %Int256* %"$pow_call_2544", align 8
  store %Int256 %"$pow_2546", %Int256* %"$p_127", align 8
  %"$gasrem_2547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2548" = icmp ugt i64 1, %"$gasrem_2547"
  br i1 %"$gascmp_2548", label %"$out_of_gas_2549", label %"$have_gas_2550"

"$out_of_gas_2549":                               ; preds = %"$have_gas_2538"
  call void @_out_of_gas()
  br label %"$have_gas_2550"

"$have_gas_2550":                                 ; preds = %"$out_of_gas_2549", %"$have_gas_2538"
  %"$consume_2551" = sub i64 %"$gasrem_2547", 1
  store i64 %"$consume_2551", i64* @_gasrem, align 8
  %"$res_130" = alloca %TName_Bool*, align 8
  %"$gasrem_2552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2553" = icmp ugt i64 1, %"$gasrem_2552"
  br i1 %"$gascmp_2553", label %"$out_of_gas_2554", label %"$have_gas_2555"

"$out_of_gas_2554":                               ; preds = %"$have_gas_2550"
  call void @_out_of_gas()
  br label %"$have_gas_2555"

"$have_gas_2555":                                 ; preds = %"$out_of_gas_2554", %"$have_gas_2550"
  %"$consume_2556" = sub i64 %"$gasrem_2552", 1
  store i64 %"$consume_2556", i64* @_gasrem, align 8
  %"$ans_128" = alloca %Int256, align 8
  %"$gasrem_2557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2558" = icmp ugt i64 1, %"$gasrem_2557"
  br i1 %"$gascmp_2558", label %"$out_of_gas_2559", label %"$have_gas_2560"

"$out_of_gas_2559":                               ; preds = %"$have_gas_2555"
  call void @_out_of_gas()
  br label %"$have_gas_2560"

"$have_gas_2560":                                 ; preds = %"$out_of_gas_2559", %"$have_gas_2555"
  %"$consume_2561" = sub i64 %"$gasrem_2557", 1
  store i64 %"$consume_2561", i64* @_gasrem, align 8
  store %Int256 { i256 10002 }, %Int256* %"$ans_128", align 8
  %"$gasrem_2562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2563" = icmp ugt i64 1, %"$gasrem_2562"
  br i1 %"$gascmp_2563", label %"$out_of_gas_2564", label %"$have_gas_2565"

"$out_of_gas_2564":                               ; preds = %"$have_gas_2560"
  call void @_out_of_gas()
  br label %"$have_gas_2565"

"$have_gas_2565":                                 ; preds = %"$out_of_gas_2564", %"$have_gas_2560"
  %"$consume_2566" = sub i64 %"$gasrem_2562", 1
  store i64 %"$consume_2566", i64* @_gasrem, align 8
  %"$res__129" = alloca %TName_Bool*, align 8
  %"$gasrem_2568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2569" = icmp ugt i64 16, %"$gasrem_2568"
  br i1 %"$gascmp_2569", label %"$out_of_gas_2570", label %"$have_gas_2571"

"$out_of_gas_2570":                               ; preds = %"$have_gas_2565"
  call void @_out_of_gas()
  br label %"$have_gas_2571"

"$have_gas_2571":                                 ; preds = %"$out_of_gas_2570", %"$have_gas_2565"
  %"$consume_2572" = sub i64 %"$gasrem_2568", 16
  store i64 %"$consume_2572", i64* @_gasrem, align 8
  %"$execptr_load_2573" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_127_2574" = alloca %Int256, align 8
  %"$$p_127_2575" = load %Int256, %Int256* %"$p_127", align 8
  store %Int256 %"$$p_127_2575", %Int256* %"$eq_$p_127_2574", align 8
  %"$eq_$ans_128_2576" = alloca %Int256, align 8
  %"$$ans_128_2577" = load %Int256, %Int256* %"$ans_128", align 8
  store %Int256 %"$$ans_128_2577", %Int256* %"$eq_$ans_128_2576", align 8
  %"$eq_call_2578" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2573", %Int256* %"$eq_$p_127_2574", %Int256* %"$eq_$ans_128_2576")
  store %TName_Bool* %"$eq_call_2578", %TName_Bool** %"$res__129", align 8
  %"$gasrem_2580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2581" = icmp ugt i64 1, %"$gasrem_2580"
  br i1 %"$gascmp_2581", label %"$out_of_gas_2582", label %"$have_gas_2583"

"$out_of_gas_2582":                               ; preds = %"$have_gas_2571"
  call void @_out_of_gas()
  br label %"$have_gas_2583"

"$have_gas_2583":                                 ; preds = %"$out_of_gas_2582", %"$have_gas_2571"
  %"$consume_2584" = sub i64 %"$gasrem_2580", 1
  store i64 %"$consume_2584", i64* @_gasrem, align 8
  %"$BoolUtils.andb_201" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2585" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2586" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2585", 0
  %"$BoolUtils.andb_envptr_2587" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2585", 1
  %"$$res_126_2588" = load %TName_Bool*, %TName_Bool** %"$res_126", align 8
  %"$BoolUtils.andb_call_2589" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2586"(i8* %"$BoolUtils.andb_envptr_2587", %TName_Bool* %"$$res_126_2588")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2589", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_201", align 8
  %"$BoolUtils.andb_202" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_201_2590" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_201", align 8
  %"$$BoolUtils.andb_201_fptr_2591" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_201_2590", 0
  %"$$BoolUtils.andb_201_envptr_2592" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_201_2590", 1
  %"$$res__129_2593" = load %TName_Bool*, %TName_Bool** %"$res__129", align 8
  %"$$BoolUtils.andb_201_call_2594" = call %TName_Bool* %"$$BoolUtils.andb_201_fptr_2591"(i8* %"$$BoolUtils.andb_201_envptr_2592", %TName_Bool* %"$$res__129_2593")
  store %TName_Bool* %"$$BoolUtils.andb_201_call_2594", %TName_Bool** %"$BoolUtils.andb_202", align 8
  %"$$BoolUtils.andb_202_2595" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_202", align 8
  store %TName_Bool* %"$$BoolUtils.andb_202_2595", %TName_Bool** %"$res_130", align 8
  %"$gasrem_2596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2597" = icmp ugt i64 1, %"$gasrem_2596"
  br i1 %"$gascmp_2597", label %"$out_of_gas_2598", label %"$have_gas_2599"

"$out_of_gas_2598":                               ; preds = %"$have_gas_2583"
  call void @_out_of_gas()
  br label %"$have_gas_2599"

"$have_gas_2599":                                 ; preds = %"$out_of_gas_2598", %"$have_gas_2583"
  %"$consume_2600" = sub i64 %"$gasrem_2596", 1
  store i64 %"$consume_2600", i64* @_gasrem, align 8
  %"$p_131" = alloca %Int256, align 8
  %"$p3_2601" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2602" = extractvalue %Uint32 %"$p3_2601", 0
  %"$valueof_2603" = zext i32 %"$valueof_2602" to i64
  %"$gasmul_2604" = mul i64 20, %"$valueof_2603"
  %"$gasmul_2605" = mul i64 %"$gasmul_2604", 4
  %"$gasrem_2606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2607" = icmp ugt i64 %"$gasmul_2605", %"$gasrem_2606"
  br i1 %"$gascmp_2607", label %"$out_of_gas_2608", label %"$have_gas_2609"

"$out_of_gas_2608":                               ; preds = %"$have_gas_2599"
  call void @_out_of_gas()
  br label %"$have_gas_2609"

"$have_gas_2609":                                 ; preds = %"$out_of_gas_2608", %"$have_gas_2599"
  %"$consume_2610" = sub i64 %"$gasrem_2606", %"$gasmul_2605"
  store i64 %"$consume_2610", i64* @_gasrem, align 8
  %"$execptr_load_2611" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2612" = alloca %Int256, align 8
  %"$t9_2613" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2613", %Int256* %"$pow_t9_2612", align 8
  %"$p3_2614" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2615" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2611", %Int256* %"$pow_t9_2612", %Uint32 %"$p3_2614")
  %"$pow_2617" = load %Int256, %Int256* %"$pow_call_2615", align 8
  store %Int256 %"$pow_2617", %Int256* %"$p_131", align 8
  %"$gasrem_2618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2619" = icmp ugt i64 1, %"$gasrem_2618"
  br i1 %"$gascmp_2619", label %"$out_of_gas_2620", label %"$have_gas_2621"

"$out_of_gas_2620":                               ; preds = %"$have_gas_2609"
  call void @_out_of_gas()
  br label %"$have_gas_2621"

"$have_gas_2621":                                 ; preds = %"$out_of_gas_2620", %"$have_gas_2609"
  %"$consume_2622" = sub i64 %"$gasrem_2618", 1
  store i64 %"$consume_2622", i64* @_gasrem, align 8
  %"$res_134" = alloca %TName_Bool*, align 8
  %"$gasrem_2623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2624" = icmp ugt i64 1, %"$gasrem_2623"
  br i1 %"$gascmp_2624", label %"$out_of_gas_2625", label %"$have_gas_2626"

"$out_of_gas_2625":                               ; preds = %"$have_gas_2621"
  call void @_out_of_gas()
  br label %"$have_gas_2626"

"$have_gas_2626":                                 ; preds = %"$out_of_gas_2625", %"$have_gas_2621"
  %"$consume_2627" = sub i64 %"$gasrem_2623", 1
  store i64 %"$consume_2627", i64* @_gasrem, align 8
  %"$ans_132" = alloca %Int256, align 8
  %"$gasrem_2628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2629" = icmp ugt i64 1, %"$gasrem_2628"
  br i1 %"$gascmp_2629", label %"$out_of_gas_2630", label %"$have_gas_2631"

"$out_of_gas_2630":                               ; preds = %"$have_gas_2626"
  call void @_out_of_gas()
  br label %"$have_gas_2631"

"$have_gas_2631":                                 ; preds = %"$out_of_gas_2630", %"$have_gas_2626"
  %"$consume_2632" = sub i64 %"$gasrem_2628", 1
  store i64 %"$consume_2632", i64* @_gasrem, align 8
  store %Int256 { i256 10008002400320016 }, %Int256* %"$ans_132", align 8
  %"$gasrem_2633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2634" = icmp ugt i64 1, %"$gasrem_2633"
  br i1 %"$gascmp_2634", label %"$out_of_gas_2635", label %"$have_gas_2636"

"$out_of_gas_2635":                               ; preds = %"$have_gas_2631"
  call void @_out_of_gas()
  br label %"$have_gas_2636"

"$have_gas_2636":                                 ; preds = %"$out_of_gas_2635", %"$have_gas_2631"
  %"$consume_2637" = sub i64 %"$gasrem_2633", 1
  store i64 %"$consume_2637", i64* @_gasrem, align 8
  %"$res__133" = alloca %TName_Bool*, align 8
  %"$gasrem_2639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2640" = icmp ugt i64 16, %"$gasrem_2639"
  br i1 %"$gascmp_2640", label %"$out_of_gas_2641", label %"$have_gas_2642"

"$out_of_gas_2641":                               ; preds = %"$have_gas_2636"
  call void @_out_of_gas()
  br label %"$have_gas_2642"

"$have_gas_2642":                                 ; preds = %"$out_of_gas_2641", %"$have_gas_2636"
  %"$consume_2643" = sub i64 %"$gasrem_2639", 16
  store i64 %"$consume_2643", i64* @_gasrem, align 8
  %"$execptr_load_2644" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_131_2645" = alloca %Int256, align 8
  %"$$p_131_2646" = load %Int256, %Int256* %"$p_131", align 8
  store %Int256 %"$$p_131_2646", %Int256* %"$eq_$p_131_2645", align 8
  %"$eq_$ans_132_2647" = alloca %Int256, align 8
  %"$$ans_132_2648" = load %Int256, %Int256* %"$ans_132", align 8
  store %Int256 %"$$ans_132_2648", %Int256* %"$eq_$ans_132_2647", align 8
  %"$eq_call_2649" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2644", %Int256* %"$eq_$p_131_2645", %Int256* %"$eq_$ans_132_2647")
  store %TName_Bool* %"$eq_call_2649", %TName_Bool** %"$res__133", align 8
  %"$gasrem_2651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2652" = icmp ugt i64 1, %"$gasrem_2651"
  br i1 %"$gascmp_2652", label %"$out_of_gas_2653", label %"$have_gas_2654"

"$out_of_gas_2653":                               ; preds = %"$have_gas_2642"
  call void @_out_of_gas()
  br label %"$have_gas_2654"

"$have_gas_2654":                                 ; preds = %"$out_of_gas_2653", %"$have_gas_2642"
  %"$consume_2655" = sub i64 %"$gasrem_2651", 1
  store i64 %"$consume_2655", i64* @_gasrem, align 8
  %"$BoolUtils.andb_203" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2656" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2657" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2656", 0
  %"$BoolUtils.andb_envptr_2658" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2656", 1
  %"$$res_130_2659" = load %TName_Bool*, %TName_Bool** %"$res_130", align 8
  %"$BoolUtils.andb_call_2660" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2657"(i8* %"$BoolUtils.andb_envptr_2658", %TName_Bool* %"$$res_130_2659")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2660", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_203", align 8
  %"$BoolUtils.andb_204" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_203_2661" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_203", align 8
  %"$$BoolUtils.andb_203_fptr_2662" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_203_2661", 0
  %"$$BoolUtils.andb_203_envptr_2663" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_203_2661", 1
  %"$$res__133_2664" = load %TName_Bool*, %TName_Bool** %"$res__133", align 8
  %"$$BoolUtils.andb_203_call_2665" = call %TName_Bool* %"$$BoolUtils.andb_203_fptr_2662"(i8* %"$$BoolUtils.andb_203_envptr_2663", %TName_Bool* %"$$res__133_2664")
  store %TName_Bool* %"$$BoolUtils.andb_203_call_2665", %TName_Bool** %"$BoolUtils.andb_204", align 8
  %"$$BoolUtils.andb_204_2666" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_204", align 8
  store %TName_Bool* %"$$BoolUtils.andb_204_2666", %TName_Bool** %"$res_134", align 8
  %"$gasrem_2667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2668" = icmp ugt i64 1, %"$gasrem_2667"
  br i1 %"$gascmp_2668", label %"$out_of_gas_2669", label %"$have_gas_2670"

"$out_of_gas_2669":                               ; preds = %"$have_gas_2654"
  call void @_out_of_gas()
  br label %"$have_gas_2670"

"$have_gas_2670":                                 ; preds = %"$out_of_gas_2669", %"$have_gas_2654"
  %"$consume_2671" = sub i64 %"$gasrem_2667", 1
  store i64 %"$consume_2671", i64* @_gasrem, align 8
  %"$p_135" = alloca %Int256, align 8
  %"$p4_2672" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2673" = extractvalue %Uint32 %"$p4_2672", 0
  %"$valueof_2674" = zext i32 %"$valueof_2673" to i64
  %"$gasmul_2675" = mul i64 20, %"$valueof_2674"
  %"$gasmul_2676" = mul i64 %"$gasmul_2675", 4
  %"$gasrem_2677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2678" = icmp ugt i64 %"$gasmul_2676", %"$gasrem_2677"
  br i1 %"$gascmp_2678", label %"$out_of_gas_2679", label %"$have_gas_2680"

"$out_of_gas_2679":                               ; preds = %"$have_gas_2670"
  call void @_out_of_gas()
  br label %"$have_gas_2680"

"$have_gas_2680":                                 ; preds = %"$out_of_gas_2679", %"$have_gas_2670"
  %"$consume_2681" = sub i64 %"$gasrem_2677", %"$gasmul_2676"
  store i64 %"$consume_2681", i64* @_gasrem, align 8
  %"$execptr_load_2682" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2683" = alloca %Int256, align 8
  %"$t9_2684" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2684", %Int256* %"$pow_t9_2683", align 8
  %"$p4_2685" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2686" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2682", %Int256* %"$pow_t9_2683", %Uint32 %"$p4_2685")
  %"$pow_2688" = load %Int256, %Int256* %"$pow_call_2686", align 8
  store %Int256 %"$pow_2688", %Int256* %"$p_135", align 8
  %"$gasrem_2689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2690" = icmp ugt i64 1, %"$gasrem_2689"
  br i1 %"$gascmp_2690", label %"$out_of_gas_2691", label %"$have_gas_2692"

"$out_of_gas_2691":                               ; preds = %"$have_gas_2680"
  call void @_out_of_gas()
  br label %"$have_gas_2692"

"$have_gas_2692":                                 ; preds = %"$out_of_gas_2691", %"$have_gas_2680"
  %"$consume_2693" = sub i64 %"$gasrem_2689", 1
  store i64 %"$consume_2693", i64* @_gasrem, align 8
  %"$res_138" = alloca %TName_Bool*, align 8
  %"$gasrem_2694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2695" = icmp ugt i64 1, %"$gasrem_2694"
  br i1 %"$gascmp_2695", label %"$out_of_gas_2696", label %"$have_gas_2697"

"$out_of_gas_2696":                               ; preds = %"$have_gas_2692"
  call void @_out_of_gas()
  br label %"$have_gas_2697"

"$have_gas_2697":                                 ; preds = %"$out_of_gas_2696", %"$have_gas_2692"
  %"$consume_2698" = sub i64 %"$gasrem_2694", 1
  store i64 %"$consume_2698", i64* @_gasrem, align 8
  %"$ans_136" = alloca %Int256, align 8
  %"$gasrem_2699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2700" = icmp ugt i64 1, %"$gasrem_2699"
  br i1 %"$gascmp_2700", label %"$out_of_gas_2701", label %"$have_gas_2702"

"$out_of_gas_2701":                               ; preds = %"$have_gas_2697"
  call void @_out_of_gas()
  br label %"$have_gas_2702"

"$have_gas_2702":                                 ; preds = %"$out_of_gas_2701", %"$have_gas_2697"
  %"$consume_2703" = sub i64 %"$gasrem_2699", 1
  store i64 %"$consume_2703", i64* @_gasrem, align 8
  store %Int256 { i256 10020018009603360806534415361152051201024 }, %Int256* %"$ans_136", align 8
  %"$gasrem_2704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2705" = icmp ugt i64 1, %"$gasrem_2704"
  br i1 %"$gascmp_2705", label %"$out_of_gas_2706", label %"$have_gas_2707"

"$out_of_gas_2706":                               ; preds = %"$have_gas_2702"
  call void @_out_of_gas()
  br label %"$have_gas_2707"

"$have_gas_2707":                                 ; preds = %"$out_of_gas_2706", %"$have_gas_2702"
  %"$consume_2708" = sub i64 %"$gasrem_2704", 1
  store i64 %"$consume_2708", i64* @_gasrem, align 8
  %"$res__137" = alloca %TName_Bool*, align 8
  %"$gasrem_2710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2711" = icmp ugt i64 16, %"$gasrem_2710"
  br i1 %"$gascmp_2711", label %"$out_of_gas_2712", label %"$have_gas_2713"

"$out_of_gas_2712":                               ; preds = %"$have_gas_2707"
  call void @_out_of_gas()
  br label %"$have_gas_2713"

"$have_gas_2713":                                 ; preds = %"$out_of_gas_2712", %"$have_gas_2707"
  %"$consume_2714" = sub i64 %"$gasrem_2710", 16
  store i64 %"$consume_2714", i64* @_gasrem, align 8
  %"$execptr_load_2715" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_135_2716" = alloca %Int256, align 8
  %"$$p_135_2717" = load %Int256, %Int256* %"$p_135", align 8
  store %Int256 %"$$p_135_2717", %Int256* %"$eq_$p_135_2716", align 8
  %"$eq_$ans_136_2718" = alloca %Int256, align 8
  %"$$ans_136_2719" = load %Int256, %Int256* %"$ans_136", align 8
  store %Int256 %"$$ans_136_2719", %Int256* %"$eq_$ans_136_2718", align 8
  %"$eq_call_2720" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2715", %Int256* %"$eq_$p_135_2716", %Int256* %"$eq_$ans_136_2718")
  store %TName_Bool* %"$eq_call_2720", %TName_Bool** %"$res__137", align 8
  %"$gasrem_2722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2723" = icmp ugt i64 1, %"$gasrem_2722"
  br i1 %"$gascmp_2723", label %"$out_of_gas_2724", label %"$have_gas_2725"

"$out_of_gas_2724":                               ; preds = %"$have_gas_2713"
  call void @_out_of_gas()
  br label %"$have_gas_2725"

"$have_gas_2725":                                 ; preds = %"$out_of_gas_2724", %"$have_gas_2713"
  %"$consume_2726" = sub i64 %"$gasrem_2722", 1
  store i64 %"$consume_2726", i64* @_gasrem, align 8
  %"$BoolUtils.andb_205" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2727" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2728" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2727", 0
  %"$BoolUtils.andb_envptr_2729" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2727", 1
  %"$$res_134_2730" = load %TName_Bool*, %TName_Bool** %"$res_134", align 8
  %"$BoolUtils.andb_call_2731" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2728"(i8* %"$BoolUtils.andb_envptr_2729", %TName_Bool* %"$$res_134_2730")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2731", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_205", align 8
  %"$BoolUtils.andb_206" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_205_2732" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_205", align 8
  %"$$BoolUtils.andb_205_fptr_2733" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_205_2732", 0
  %"$$BoolUtils.andb_205_envptr_2734" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_205_2732", 1
  %"$$res__137_2735" = load %TName_Bool*, %TName_Bool** %"$res__137", align 8
  %"$$BoolUtils.andb_205_call_2736" = call %TName_Bool* %"$$BoolUtils.andb_205_fptr_2733"(i8* %"$$BoolUtils.andb_205_envptr_2734", %TName_Bool* %"$$res__137_2735")
  store %TName_Bool* %"$$BoolUtils.andb_205_call_2736", %TName_Bool** %"$BoolUtils.andb_206", align 8
  %"$$BoolUtils.andb_206_2737" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_206", align 8
  store %TName_Bool* %"$$BoolUtils.andb_206_2737", %TName_Bool** %"$res_138", align 8
  %"$gasrem_2738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2739" = icmp ugt i64 1, %"$gasrem_2738"
  br i1 %"$gascmp_2739", label %"$out_of_gas_2740", label %"$have_gas_2741"

"$out_of_gas_2740":                               ; preds = %"$have_gas_2725"
  call void @_out_of_gas()
  br label %"$have_gas_2741"

"$have_gas_2741":                                 ; preds = %"$out_of_gas_2740", %"$have_gas_2725"
  %"$consume_2742" = sub i64 %"$gasrem_2738", 1
  store i64 %"$consume_2742", i64* @_gasrem, align 8
  %"$$res_138_2743" = load %TName_Bool*, %TName_Bool** %"$res_138", align 8
  store %TName_Bool* %"$$res_138_2743", %TName_Bool** %"$expr_211", align 8
  %"$$expr_211_2744" = load %TName_Bool*, %TName_Bool** %"$expr_211", align 8
  ret %TName_Bool* %"$$expr_211_2744"
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
  %"$exprval_2745" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2746" = bitcast %TName_Bool* %"$exprval_2745" to i8*
  %"$execptr_load_2747" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2747", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_244", i8* %"$memvoidcast_2746")
  ret void
}
