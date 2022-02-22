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
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_2918" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2919" = type { %ParamDescrString, i32, %"$ParamDescr_2918"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_2918"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2919"] zeroinitializer
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
  %"$gaslogof_492" = uitofp i64 %"$valueof_491" to double
  %"$gaslogof_493" = fadd double %"$gaslogof_492", 1.000000e+00
  %"$gaslogof_494" = call double @llvm.log.f64(double %"$gaslogof_493")
  %"$gaslogof_495" = fptoui double %"$gaslogof_494" to i64
  %"$gaslogof_496" = add i64 %"$gaslogof_495", 1
  %"$gasmul_497" = mul i64 20, %"$gaslogof_496"
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 %"$gasmul_497", %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_487"
  %"$consume_502" = sub i64 %"$gasrem_498", %"$gasmul_497"
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$t1_503" = load %Uint32, %Uint32* %t1, align 4
  %"$p1_504" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_505" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_503", %Uint32 %"$p1_504")
  store %Uint32 %"$pow_call_505", %Uint32* %p, align 4
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_501"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$res_6" = alloca %TName_Bool*, align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %ans = alloca %Uint32, align 8
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 1, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_514"
  %"$consume_520" = sub i64 %"$gasrem_516", 1
  store i64 %"$consume_520", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %ans, align 4
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 1, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$have_gas_519"
  %"$consume_525" = sub i64 %"$gasrem_521", 1
  store i64 %"$consume_525", i64* @_gasrem, align 8
  %res_ = alloca %TName_Bool*, align 8
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 4, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_524"
  %"$consume_530" = sub i64 %"$gasrem_526", 4
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %"$execptr_load_531" = load i8*, i8** @_execptr, align 8
  %"$p_532" = load %Uint32, %Uint32* %p, align 4
  %"$ans_533" = load %Uint32, %Uint32* %ans, align 4
  %"$eq_call_534" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_531", %Uint32 %"$p_532", %Uint32 %"$ans_533")
  store %TName_Bool* %"$eq_call_534", %TName_Bool** %res_, align 8
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_529"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %"$BoolUtils.andb_139" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_541" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_542" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_541", 0
  %"$BoolUtils.andb_envptr_543" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_541", 1
  %"$res_544" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$BoolUtils.andb_call_545" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_542"(i8* %"$BoolUtils.andb_envptr_543", %TName_Bool* %"$res_544")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_545", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$BoolUtils.andb_140" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_139_546" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_fptr_547" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_546", 0
  %"$$BoolUtils.andb_139_envptr_548" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_546", 1
  %"$res__549" = load %TName_Bool*, %TName_Bool** %res_, align 8
  %"$$BoolUtils.andb_139_call_550" = call %TName_Bool* %"$$BoolUtils.andb_139_fptr_547"(i8* %"$$BoolUtils.andb_139_envptr_548", %TName_Bool* %"$res__549")
  store %TName_Bool* %"$$BoolUtils.andb_139_call_550", %TName_Bool** %"$BoolUtils.andb_140", align 8
  %"$$BoolUtils.andb_140_551" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_140", align 8
  store %TName_Bool* %"$$BoolUtils.andb_140_551", %TName_Bool** %"$res_6", align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_539"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$p_7" = alloca %Uint32, align 8
  %"$p2_557" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_558" = extractvalue %Uint32 %"$p2_557", 0
  %"$valueof_559" = zext i32 %"$valueof_558" to i64
  %"$gaslogof_560" = uitofp i64 %"$valueof_559" to double
  %"$gaslogof_561" = fadd double %"$gaslogof_560", 1.000000e+00
  %"$gaslogof_562" = call double @llvm.log.f64(double %"$gaslogof_561")
  %"$gaslogof_563" = fptoui double %"$gaslogof_562" to i64
  %"$gaslogof_564" = add i64 %"$gaslogof_563", 1
  %"$gasmul_565" = mul i64 20, %"$gaslogof_564"
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 %"$gasmul_565", %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_555"
  %"$consume_570" = sub i64 %"$gasrem_566", %"$gasmul_565"
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %"$t1_571" = load %Uint32, %Uint32* %t1, align 4
  %"$p2_572" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_573" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_571", %Uint32 %"$p2_572")
  store %Uint32 %"$pow_call_573", %Uint32* %"$p_7", align 4
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 1, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_569"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_569"
  %"$consume_578" = sub i64 %"$gasrem_574", 1
  store i64 %"$consume_578", i64* @_gasrem, align 8
  %"$res_10" = alloca %TName_Bool*, align 8
  %"$gasrem_579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_580" = icmp ugt i64 1, %"$gasrem_579"
  br i1 %"$gascmp_580", label %"$out_of_gas_581", label %"$have_gas_582"

"$out_of_gas_581":                                ; preds = %"$have_gas_577"
  call void @_out_of_gas()
  br label %"$have_gas_582"

"$have_gas_582":                                  ; preds = %"$out_of_gas_581", %"$have_gas_577"
  %"$consume_583" = sub i64 %"$gasrem_579", 1
  store i64 %"$consume_583", i64* @_gasrem, align 8
  %"$ans_8" = alloca %Uint32, align 8
  %"$gasrem_584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_585" = icmp ugt i64 1, %"$gasrem_584"
  br i1 %"$gascmp_585", label %"$out_of_gas_586", label %"$have_gas_587"

"$out_of_gas_586":                                ; preds = %"$have_gas_582"
  call void @_out_of_gas()
  br label %"$have_gas_587"

"$have_gas_587":                                  ; preds = %"$out_of_gas_586", %"$have_gas_582"
  %"$consume_588" = sub i64 %"$gasrem_584", 1
  store i64 %"$consume_588", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %"$ans_8", align 4
  %"$gasrem_589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_590" = icmp ugt i64 1, %"$gasrem_589"
  br i1 %"$gascmp_590", label %"$out_of_gas_591", label %"$have_gas_592"

"$out_of_gas_591":                                ; preds = %"$have_gas_587"
  call void @_out_of_gas()
  br label %"$have_gas_592"

"$have_gas_592":                                  ; preds = %"$out_of_gas_591", %"$have_gas_587"
  %"$consume_593" = sub i64 %"$gasrem_589", 1
  store i64 %"$consume_593", i64* @_gasrem, align 8
  %"$res__9" = alloca %TName_Bool*, align 8
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 4, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %"$have_gas_592"
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %"$have_gas_592"
  %"$consume_598" = sub i64 %"$gasrem_594", 4
  store i64 %"$consume_598", i64* @_gasrem, align 8
  %"$execptr_load_599" = load i8*, i8** @_execptr, align 8
  %"$$p_7_600" = load %Uint32, %Uint32* %"$p_7", align 4
  %"$$ans_8_601" = load %Uint32, %Uint32* %"$ans_8", align 4
  %"$eq_call_602" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_599", %Uint32 %"$$p_7_600", %Uint32 %"$$ans_8_601")
  store %TName_Bool* %"$eq_call_602", %TName_Bool** %"$res__9", align 8
  %"$gasrem_604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_605" = icmp ugt i64 1, %"$gasrem_604"
  br i1 %"$gascmp_605", label %"$out_of_gas_606", label %"$have_gas_607"

"$out_of_gas_606":                                ; preds = %"$have_gas_597"
  call void @_out_of_gas()
  br label %"$have_gas_607"

"$have_gas_607":                                  ; preds = %"$out_of_gas_606", %"$have_gas_597"
  %"$consume_608" = sub i64 %"$gasrem_604", 1
  store i64 %"$consume_608", i64* @_gasrem, align 8
  %"$BoolUtils.andb_141" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_609" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_610" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_609", 0
  %"$BoolUtils.andb_envptr_611" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_609", 1
  %"$$res_6_612" = load %TName_Bool*, %TName_Bool** %"$res_6", align 8
  %"$BoolUtils.andb_call_613" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_610"(i8* %"$BoolUtils.andb_envptr_611", %TName_Bool* %"$$res_6_612")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_613", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$BoolUtils.andb_142" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_141_614" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$$BoolUtils.andb_141_fptr_615" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_614", 0
  %"$$BoolUtils.andb_141_envptr_616" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_614", 1
  %"$$res__9_617" = load %TName_Bool*, %TName_Bool** %"$res__9", align 8
  %"$$BoolUtils.andb_141_call_618" = call %TName_Bool* %"$$BoolUtils.andb_141_fptr_615"(i8* %"$$BoolUtils.andb_141_envptr_616", %TName_Bool* %"$$res__9_617")
  store %TName_Bool* %"$$BoolUtils.andb_141_call_618", %TName_Bool** %"$BoolUtils.andb_142", align 8
  %"$$BoolUtils.andb_142_619" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_142", align 8
  store %TName_Bool* %"$$BoolUtils.andb_142_619", %TName_Bool** %"$res_10", align 8
  %"$gasrem_620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_621" = icmp ugt i64 1, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %"$have_gas_607"
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %"$have_gas_607"
  %"$consume_624" = sub i64 %"$gasrem_620", 1
  store i64 %"$consume_624", i64* @_gasrem, align 8
  %"$p_11" = alloca %Uint32, align 8
  %"$p3_625" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_626" = extractvalue %Uint32 %"$p3_625", 0
  %"$valueof_627" = zext i32 %"$valueof_626" to i64
  %"$gaslogof_628" = uitofp i64 %"$valueof_627" to double
  %"$gaslogof_629" = fadd double %"$gaslogof_628", 1.000000e+00
  %"$gaslogof_630" = call double @llvm.log.f64(double %"$gaslogof_629")
  %"$gaslogof_631" = fptoui double %"$gaslogof_630" to i64
  %"$gaslogof_632" = add i64 %"$gaslogof_631", 1
  %"$gasmul_633" = mul i64 20, %"$gaslogof_632"
  %"$gasrem_634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_635" = icmp ugt i64 %"$gasmul_633", %"$gasrem_634"
  br i1 %"$gascmp_635", label %"$out_of_gas_636", label %"$have_gas_637"

"$out_of_gas_636":                                ; preds = %"$have_gas_623"
  call void @_out_of_gas()
  br label %"$have_gas_637"

"$have_gas_637":                                  ; preds = %"$out_of_gas_636", %"$have_gas_623"
  %"$consume_638" = sub i64 %"$gasrem_634", %"$gasmul_633"
  store i64 %"$consume_638", i64* @_gasrem, align 8
  %"$t1_639" = load %Uint32, %Uint32* %t1, align 4
  %"$p3_640" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_641" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_639", %Uint32 %"$p3_640")
  store %Uint32 %"$pow_call_641", %Uint32* %"$p_11", align 4
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 1, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %"$have_gas_637"
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %"$have_gas_637"
  %"$consume_646" = sub i64 %"$gasrem_642", 1
  store i64 %"$consume_646", i64* @_gasrem, align 8
  %"$res_14" = alloca %TName_Bool*, align 8
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 1, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$have_gas_645"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$have_gas_645"
  %"$consume_651" = sub i64 %"$gasrem_647", 1
  store i64 %"$consume_651", i64* @_gasrem, align 8
  %"$ans_12" = alloca %Uint32, align 8
  %"$gasrem_652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_653" = icmp ugt i64 1, %"$gasrem_652"
  br i1 %"$gascmp_653", label %"$out_of_gas_654", label %"$have_gas_655"

"$out_of_gas_654":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_655"

"$have_gas_655":                                  ; preds = %"$out_of_gas_654", %"$have_gas_650"
  %"$consume_656" = sub i64 %"$gasrem_652", 1
  store i64 %"$consume_656", i64* @_gasrem, align 8
  store %Uint32 { i32 16 }, %Uint32* %"$ans_12", align 4
  %"$gasrem_657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_658" = icmp ugt i64 1, %"$gasrem_657"
  br i1 %"$gascmp_658", label %"$out_of_gas_659", label %"$have_gas_660"

"$out_of_gas_659":                                ; preds = %"$have_gas_655"
  call void @_out_of_gas()
  br label %"$have_gas_660"

"$have_gas_660":                                  ; preds = %"$out_of_gas_659", %"$have_gas_655"
  %"$consume_661" = sub i64 %"$gasrem_657", 1
  store i64 %"$consume_661", i64* @_gasrem, align 8
  %"$res__13" = alloca %TName_Bool*, align 8
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 4, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_660"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_660"
  %"$consume_666" = sub i64 %"$gasrem_662", 4
  store i64 %"$consume_666", i64* @_gasrem, align 8
  %"$execptr_load_667" = load i8*, i8** @_execptr, align 8
  %"$$p_11_668" = load %Uint32, %Uint32* %"$p_11", align 4
  %"$$ans_12_669" = load %Uint32, %Uint32* %"$ans_12", align 4
  %"$eq_call_670" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_667", %Uint32 %"$$p_11_668", %Uint32 %"$$ans_12_669")
  store %TName_Bool* %"$eq_call_670", %TName_Bool** %"$res__13", align 8
  %"$gasrem_672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_673" = icmp ugt i64 1, %"$gasrem_672"
  br i1 %"$gascmp_673", label %"$out_of_gas_674", label %"$have_gas_675"

"$out_of_gas_674":                                ; preds = %"$have_gas_665"
  call void @_out_of_gas()
  br label %"$have_gas_675"

"$have_gas_675":                                  ; preds = %"$out_of_gas_674", %"$have_gas_665"
  %"$consume_676" = sub i64 %"$gasrem_672", 1
  store i64 %"$consume_676", i64* @_gasrem, align 8
  %"$BoolUtils.andb_143" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_677" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_678" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_677", 0
  %"$BoolUtils.andb_envptr_679" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_677", 1
  %"$$res_10_680" = load %TName_Bool*, %TName_Bool** %"$res_10", align 8
  %"$BoolUtils.andb_call_681" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_678"(i8* %"$BoolUtils.andb_envptr_679", %TName_Bool* %"$$res_10_680")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_681", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$BoolUtils.andb_144" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_143_682" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$$BoolUtils.andb_143_fptr_683" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_682", 0
  %"$$BoolUtils.andb_143_envptr_684" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_682", 1
  %"$$res__13_685" = load %TName_Bool*, %TName_Bool** %"$res__13", align 8
  %"$$BoolUtils.andb_143_call_686" = call %TName_Bool* %"$$BoolUtils.andb_143_fptr_683"(i8* %"$$BoolUtils.andb_143_envptr_684", %TName_Bool* %"$$res__13_685")
  store %TName_Bool* %"$$BoolUtils.andb_143_call_686", %TName_Bool** %"$BoolUtils.andb_144", align 8
  %"$$BoolUtils.andb_144_687" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_144", align 8
  store %TName_Bool* %"$$BoolUtils.andb_144_687", %TName_Bool** %"$res_14", align 8
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 1, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_675"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_675"
  %"$consume_692" = sub i64 %"$gasrem_688", 1
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %"$p_15" = alloca %Uint32, align 8
  %"$p4_693" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_694" = extractvalue %Uint32 %"$p4_693", 0
  %"$valueof_695" = zext i32 %"$valueof_694" to i64
  %"$gaslogof_696" = uitofp i64 %"$valueof_695" to double
  %"$gaslogof_697" = fadd double %"$gaslogof_696", 1.000000e+00
  %"$gaslogof_698" = call double @llvm.log.f64(double %"$gaslogof_697")
  %"$gaslogof_699" = fptoui double %"$gaslogof_698" to i64
  %"$gaslogof_700" = add i64 %"$gaslogof_699", 1
  %"$gasmul_701" = mul i64 20, %"$gaslogof_700"
  %"$gasrem_702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_703" = icmp ugt i64 %"$gasmul_701", %"$gasrem_702"
  br i1 %"$gascmp_703", label %"$out_of_gas_704", label %"$have_gas_705"

"$out_of_gas_704":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_705"

"$have_gas_705":                                  ; preds = %"$out_of_gas_704", %"$have_gas_691"
  %"$consume_706" = sub i64 %"$gasrem_702", %"$gasmul_701"
  store i64 %"$consume_706", i64* @_gasrem, align 8
  %"$t1_707" = load %Uint32, %Uint32* %t1, align 4
  %"$p4_708" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_709" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_707", %Uint32 %"$p4_708")
  store %Uint32 %"$pow_call_709", %Uint32* %"$p_15", align 4
  %"$gasrem_710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_711" = icmp ugt i64 1, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %"$have_gas_705"
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %"$have_gas_705"
  %"$consume_714" = sub i64 %"$gasrem_710", 1
  store i64 %"$consume_714", i64* @_gasrem, align 8
  %"$res_18" = alloca %TName_Bool*, align 8
  %"$gasrem_715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_716" = icmp ugt i64 1, %"$gasrem_715"
  br i1 %"$gascmp_716", label %"$out_of_gas_717", label %"$have_gas_718"

"$out_of_gas_717":                                ; preds = %"$have_gas_713"
  call void @_out_of_gas()
  br label %"$have_gas_718"

"$have_gas_718":                                  ; preds = %"$out_of_gas_717", %"$have_gas_713"
  %"$consume_719" = sub i64 %"$gasrem_715", 1
  store i64 %"$consume_719", i64* @_gasrem, align 8
  %"$ans_16" = alloca %Uint32, align 8
  %"$gasrem_720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_721" = icmp ugt i64 1, %"$gasrem_720"
  br i1 %"$gascmp_721", label %"$out_of_gas_722", label %"$have_gas_723"

"$out_of_gas_722":                                ; preds = %"$have_gas_718"
  call void @_out_of_gas()
  br label %"$have_gas_723"

"$have_gas_723":                                  ; preds = %"$out_of_gas_722", %"$have_gas_718"
  %"$consume_724" = sub i64 %"$gasrem_720", 1
  store i64 %"$consume_724", i64* @_gasrem, align 8
  store %Uint32 { i32 1024 }, %Uint32* %"$ans_16", align 4
  %"$gasrem_725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_726" = icmp ugt i64 1, %"$gasrem_725"
  br i1 %"$gascmp_726", label %"$out_of_gas_727", label %"$have_gas_728"

"$out_of_gas_727":                                ; preds = %"$have_gas_723"
  call void @_out_of_gas()
  br label %"$have_gas_728"

"$have_gas_728":                                  ; preds = %"$out_of_gas_727", %"$have_gas_723"
  %"$consume_729" = sub i64 %"$gasrem_725", 1
  store i64 %"$consume_729", i64* @_gasrem, align 8
  %"$res__17" = alloca %TName_Bool*, align 8
  %"$gasrem_730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_731" = icmp ugt i64 4, %"$gasrem_730"
  br i1 %"$gascmp_731", label %"$out_of_gas_732", label %"$have_gas_733"

"$out_of_gas_732":                                ; preds = %"$have_gas_728"
  call void @_out_of_gas()
  br label %"$have_gas_733"

"$have_gas_733":                                  ; preds = %"$out_of_gas_732", %"$have_gas_728"
  %"$consume_734" = sub i64 %"$gasrem_730", 4
  store i64 %"$consume_734", i64* @_gasrem, align 8
  %"$execptr_load_735" = load i8*, i8** @_execptr, align 8
  %"$$p_15_736" = load %Uint32, %Uint32* %"$p_15", align 4
  %"$$ans_16_737" = load %Uint32, %Uint32* %"$ans_16", align 4
  %"$eq_call_738" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_735", %Uint32 %"$$p_15_736", %Uint32 %"$$ans_16_737")
  store %TName_Bool* %"$eq_call_738", %TName_Bool** %"$res__17", align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_733"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_733"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %"$BoolUtils.andb_145" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_745" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_746" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_745", 0
  %"$BoolUtils.andb_envptr_747" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_745", 1
  %"$$res_14_748" = load %TName_Bool*, %TName_Bool** %"$res_14", align 8
  %"$BoolUtils.andb_call_749" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_746"(i8* %"$BoolUtils.andb_envptr_747", %TName_Bool* %"$$res_14_748")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_749", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$BoolUtils.andb_146" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_145_750" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$$BoolUtils.andb_145_fptr_751" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_750", 0
  %"$$BoolUtils.andb_145_envptr_752" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_750", 1
  %"$$res__17_753" = load %TName_Bool*, %TName_Bool** %"$res__17", align 8
  %"$$BoolUtils.andb_145_call_754" = call %TName_Bool* %"$$BoolUtils.andb_145_fptr_751"(i8* %"$$BoolUtils.andb_145_envptr_752", %TName_Bool* %"$$res__17_753")
  store %TName_Bool* %"$$BoolUtils.andb_145_call_754", %TName_Bool** %"$BoolUtils.andb_146", align 8
  %"$$BoolUtils.andb_146_755" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_146", align 8
  store %TName_Bool* %"$$BoolUtils.andb_146_755", %TName_Bool** %"$res_18", align 8
  %"$gasrem_756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_757" = icmp ugt i64 1, %"$gasrem_756"
  br i1 %"$gascmp_757", label %"$out_of_gas_758", label %"$have_gas_759"

"$out_of_gas_758":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_759"

"$have_gas_759":                                  ; preds = %"$out_of_gas_758", %"$have_gas_743"
  %"$consume_760" = sub i64 %"$gasrem_756", 1
  store i64 %"$consume_760", i64* @_gasrem, align 8
  %"$p_19" = alloca %Int32, align 8
  %"$p1_761" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_762" = extractvalue %Uint32 %"$p1_761", 0
  %"$valueof_763" = zext i32 %"$valueof_762" to i64
  %"$gaslogof_764" = uitofp i64 %"$valueof_763" to double
  %"$gaslogof_765" = fadd double %"$gaslogof_764", 1.000000e+00
  %"$gaslogof_766" = call double @llvm.log.f64(double %"$gaslogof_765")
  %"$gaslogof_767" = fptoui double %"$gaslogof_766" to i64
  %"$gaslogof_768" = add i64 %"$gaslogof_767", 1
  %"$gasmul_769" = mul i64 20, %"$gaslogof_768"
  %"$gasrem_770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_771" = icmp ugt i64 %"$gasmul_769", %"$gasrem_770"
  br i1 %"$gascmp_771", label %"$out_of_gas_772", label %"$have_gas_773"

"$out_of_gas_772":                                ; preds = %"$have_gas_759"
  call void @_out_of_gas()
  br label %"$have_gas_773"

"$have_gas_773":                                  ; preds = %"$out_of_gas_772", %"$have_gas_759"
  %"$consume_774" = sub i64 %"$gasrem_770", %"$gasmul_769"
  store i64 %"$consume_774", i64* @_gasrem, align 8
  %"$t2_775" = load %Int32, %Int32* %t2, align 4
  %"$p1_776" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_777" = call %Int32 @_pow_Int32(%Int32 %"$t2_775", %Uint32 %"$p1_776")
  store %Int32 %"$pow_call_777", %Int32* %"$p_19", align 4
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_773"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_773"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %"$res_22" = alloca %TName_Bool*, align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_781"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  %"$ans_20" = alloca %Int32, align 8
  %"$gasrem_788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_789" = icmp ugt i64 1, %"$gasrem_788"
  br i1 %"$gascmp_789", label %"$out_of_gas_790", label %"$have_gas_791"

"$out_of_gas_790":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_791"

"$have_gas_791":                                  ; preds = %"$out_of_gas_790", %"$have_gas_786"
  %"$consume_792" = sub i64 %"$gasrem_788", 1
  store i64 %"$consume_792", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$ans_20", align 4
  %"$gasrem_793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_794" = icmp ugt i64 1, %"$gasrem_793"
  br i1 %"$gascmp_794", label %"$out_of_gas_795", label %"$have_gas_796"

"$out_of_gas_795":                                ; preds = %"$have_gas_791"
  call void @_out_of_gas()
  br label %"$have_gas_796"

"$have_gas_796":                                  ; preds = %"$out_of_gas_795", %"$have_gas_791"
  %"$consume_797" = sub i64 %"$gasrem_793", 1
  store i64 %"$consume_797", i64* @_gasrem, align 8
  %"$res__21" = alloca %TName_Bool*, align 8
  %"$gasrem_798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_799" = icmp ugt i64 4, %"$gasrem_798"
  br i1 %"$gascmp_799", label %"$out_of_gas_800", label %"$have_gas_801"

"$out_of_gas_800":                                ; preds = %"$have_gas_796"
  call void @_out_of_gas()
  br label %"$have_gas_801"

"$have_gas_801":                                  ; preds = %"$out_of_gas_800", %"$have_gas_796"
  %"$consume_802" = sub i64 %"$gasrem_798", 4
  store i64 %"$consume_802", i64* @_gasrem, align 8
  %"$execptr_load_803" = load i8*, i8** @_execptr, align 8
  %"$$p_19_804" = load %Int32, %Int32* %"$p_19", align 4
  %"$$ans_20_805" = load %Int32, %Int32* %"$ans_20", align 4
  %"$eq_call_806" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_803", %Int32 %"$$p_19_804", %Int32 %"$$ans_20_805")
  store %TName_Bool* %"$eq_call_806", %TName_Bool** %"$res__21", align 8
  %"$gasrem_808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_809" = icmp ugt i64 1, %"$gasrem_808"
  br i1 %"$gascmp_809", label %"$out_of_gas_810", label %"$have_gas_811"

"$out_of_gas_810":                                ; preds = %"$have_gas_801"
  call void @_out_of_gas()
  br label %"$have_gas_811"

"$have_gas_811":                                  ; preds = %"$out_of_gas_810", %"$have_gas_801"
  %"$consume_812" = sub i64 %"$gasrem_808", 1
  store i64 %"$consume_812", i64* @_gasrem, align 8
  %"$BoolUtils.andb_147" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_813" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_814" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_813", 0
  %"$BoolUtils.andb_envptr_815" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_813", 1
  %"$$res_18_816" = load %TName_Bool*, %TName_Bool** %"$res_18", align 8
  %"$BoolUtils.andb_call_817" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_814"(i8* %"$BoolUtils.andb_envptr_815", %TName_Bool* %"$$res_18_816")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_817", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$BoolUtils.andb_148" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_147_818" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$$BoolUtils.andb_147_fptr_819" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_818", 0
  %"$$BoolUtils.andb_147_envptr_820" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_818", 1
  %"$$res__21_821" = load %TName_Bool*, %TName_Bool** %"$res__21", align 8
  %"$$BoolUtils.andb_147_call_822" = call %TName_Bool* %"$$BoolUtils.andb_147_fptr_819"(i8* %"$$BoolUtils.andb_147_envptr_820", %TName_Bool* %"$$res__21_821")
  store %TName_Bool* %"$$BoolUtils.andb_147_call_822", %TName_Bool** %"$BoolUtils.andb_148", align 8
  %"$$BoolUtils.andb_148_823" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_148", align 8
  store %TName_Bool* %"$$BoolUtils.andb_148_823", %TName_Bool** %"$res_22", align 8
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 1, %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_811"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_811"
  %"$consume_828" = sub i64 %"$gasrem_824", 1
  store i64 %"$consume_828", i64* @_gasrem, align 8
  %"$p_23" = alloca %Int32, align 8
  %"$p2_829" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_830" = extractvalue %Uint32 %"$p2_829", 0
  %"$valueof_831" = zext i32 %"$valueof_830" to i64
  %"$gaslogof_832" = uitofp i64 %"$valueof_831" to double
  %"$gaslogof_833" = fadd double %"$gaslogof_832", 1.000000e+00
  %"$gaslogof_834" = call double @llvm.log.f64(double %"$gaslogof_833")
  %"$gaslogof_835" = fptoui double %"$gaslogof_834" to i64
  %"$gaslogof_836" = add i64 %"$gaslogof_835", 1
  %"$gasmul_837" = mul i64 20, %"$gaslogof_836"
  %"$gasrem_838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_839" = icmp ugt i64 %"$gasmul_837", %"$gasrem_838"
  br i1 %"$gascmp_839", label %"$out_of_gas_840", label %"$have_gas_841"

"$out_of_gas_840":                                ; preds = %"$have_gas_827"
  call void @_out_of_gas()
  br label %"$have_gas_841"

"$have_gas_841":                                  ; preds = %"$out_of_gas_840", %"$have_gas_827"
  %"$consume_842" = sub i64 %"$gasrem_838", %"$gasmul_837"
  store i64 %"$consume_842", i64* @_gasrem, align 8
  %"$t2_843" = load %Int32, %Int32* %t2, align 4
  %"$p2_844" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_845" = call %Int32 @_pow_Int32(%Int32 %"$t2_843", %Uint32 %"$p2_844")
  store %Int32 %"$pow_call_845", %Int32* %"$p_23", align 4
  %"$gasrem_846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_847" = icmp ugt i64 1, %"$gasrem_846"
  br i1 %"$gascmp_847", label %"$out_of_gas_848", label %"$have_gas_849"

"$out_of_gas_848":                                ; preds = %"$have_gas_841"
  call void @_out_of_gas()
  br label %"$have_gas_849"

"$have_gas_849":                                  ; preds = %"$out_of_gas_848", %"$have_gas_841"
  %"$consume_850" = sub i64 %"$gasrem_846", 1
  store i64 %"$consume_850", i64* @_gasrem, align 8
  %"$res_26" = alloca %TName_Bool*, align 8
  %"$gasrem_851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_852" = icmp ugt i64 1, %"$gasrem_851"
  br i1 %"$gascmp_852", label %"$out_of_gas_853", label %"$have_gas_854"

"$out_of_gas_853":                                ; preds = %"$have_gas_849"
  call void @_out_of_gas()
  br label %"$have_gas_854"

"$have_gas_854":                                  ; preds = %"$out_of_gas_853", %"$have_gas_849"
  %"$consume_855" = sub i64 %"$gasrem_851", 1
  store i64 %"$consume_855", i64* @_gasrem, align 8
  %"$ans_24" = alloca %Int32, align 8
  %"$gasrem_856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_857" = icmp ugt i64 1, %"$gasrem_856"
  br i1 %"$gascmp_857", label %"$out_of_gas_858", label %"$have_gas_859"

"$out_of_gas_858":                                ; preds = %"$have_gas_854"
  call void @_out_of_gas()
  br label %"$have_gas_859"

"$have_gas_859":                                  ; preds = %"$out_of_gas_858", %"$have_gas_854"
  %"$consume_860" = sub i64 %"$gasrem_856", 1
  store i64 %"$consume_860", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %"$ans_24", align 4
  %"$gasrem_861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_862" = icmp ugt i64 1, %"$gasrem_861"
  br i1 %"$gascmp_862", label %"$out_of_gas_863", label %"$have_gas_864"

"$out_of_gas_863":                                ; preds = %"$have_gas_859"
  call void @_out_of_gas()
  br label %"$have_gas_864"

"$have_gas_864":                                  ; preds = %"$out_of_gas_863", %"$have_gas_859"
  %"$consume_865" = sub i64 %"$gasrem_861", 1
  store i64 %"$consume_865", i64* @_gasrem, align 8
  %"$res__25" = alloca %TName_Bool*, align 8
  %"$gasrem_866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_867" = icmp ugt i64 4, %"$gasrem_866"
  br i1 %"$gascmp_867", label %"$out_of_gas_868", label %"$have_gas_869"

"$out_of_gas_868":                                ; preds = %"$have_gas_864"
  call void @_out_of_gas()
  br label %"$have_gas_869"

"$have_gas_869":                                  ; preds = %"$out_of_gas_868", %"$have_gas_864"
  %"$consume_870" = sub i64 %"$gasrem_866", 4
  store i64 %"$consume_870", i64* @_gasrem, align 8
  %"$execptr_load_871" = load i8*, i8** @_execptr, align 8
  %"$$p_23_872" = load %Int32, %Int32* %"$p_23", align 4
  %"$$ans_24_873" = load %Int32, %Int32* %"$ans_24", align 4
  %"$eq_call_874" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_871", %Int32 %"$$p_23_872", %Int32 %"$$ans_24_873")
  store %TName_Bool* %"$eq_call_874", %TName_Bool** %"$res__25", align 8
  %"$gasrem_876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_877" = icmp ugt i64 1, %"$gasrem_876"
  br i1 %"$gascmp_877", label %"$out_of_gas_878", label %"$have_gas_879"

"$out_of_gas_878":                                ; preds = %"$have_gas_869"
  call void @_out_of_gas()
  br label %"$have_gas_879"

"$have_gas_879":                                  ; preds = %"$out_of_gas_878", %"$have_gas_869"
  %"$consume_880" = sub i64 %"$gasrem_876", 1
  store i64 %"$consume_880", i64* @_gasrem, align 8
  %"$BoolUtils.andb_149" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_881" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_882" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_881", 0
  %"$BoolUtils.andb_envptr_883" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_881", 1
  %"$$res_22_884" = load %TName_Bool*, %TName_Bool** %"$res_22", align 8
  %"$BoolUtils.andb_call_885" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_882"(i8* %"$BoolUtils.andb_envptr_883", %TName_Bool* %"$$res_22_884")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_885", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$BoolUtils.andb_150" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_149_886" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$$BoolUtils.andb_149_fptr_887" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_886", 0
  %"$$BoolUtils.andb_149_envptr_888" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_886", 1
  %"$$res__25_889" = load %TName_Bool*, %TName_Bool** %"$res__25", align 8
  %"$$BoolUtils.andb_149_call_890" = call %TName_Bool* %"$$BoolUtils.andb_149_fptr_887"(i8* %"$$BoolUtils.andb_149_envptr_888", %TName_Bool* %"$$res__25_889")
  store %TName_Bool* %"$$BoolUtils.andb_149_call_890", %TName_Bool** %"$BoolUtils.andb_150", align 8
  %"$$BoolUtils.andb_150_891" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_150", align 8
  store %TName_Bool* %"$$BoolUtils.andb_150_891", %TName_Bool** %"$res_26", align 8
  %"$gasrem_892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_893" = icmp ugt i64 1, %"$gasrem_892"
  br i1 %"$gascmp_893", label %"$out_of_gas_894", label %"$have_gas_895"

"$out_of_gas_894":                                ; preds = %"$have_gas_879"
  call void @_out_of_gas()
  br label %"$have_gas_895"

"$have_gas_895":                                  ; preds = %"$out_of_gas_894", %"$have_gas_879"
  %"$consume_896" = sub i64 %"$gasrem_892", 1
  store i64 %"$consume_896", i64* @_gasrem, align 8
  %"$p_27" = alloca %Int32, align 8
  %"$p3_897" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_898" = extractvalue %Uint32 %"$p3_897", 0
  %"$valueof_899" = zext i32 %"$valueof_898" to i64
  %"$gaslogof_900" = uitofp i64 %"$valueof_899" to double
  %"$gaslogof_901" = fadd double %"$gaslogof_900", 1.000000e+00
  %"$gaslogof_902" = call double @llvm.log.f64(double %"$gaslogof_901")
  %"$gaslogof_903" = fptoui double %"$gaslogof_902" to i64
  %"$gaslogof_904" = add i64 %"$gaslogof_903", 1
  %"$gasmul_905" = mul i64 20, %"$gaslogof_904"
  %"$gasrem_906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_907" = icmp ugt i64 %"$gasmul_905", %"$gasrem_906"
  br i1 %"$gascmp_907", label %"$out_of_gas_908", label %"$have_gas_909"

"$out_of_gas_908":                                ; preds = %"$have_gas_895"
  call void @_out_of_gas()
  br label %"$have_gas_909"

"$have_gas_909":                                  ; preds = %"$out_of_gas_908", %"$have_gas_895"
  %"$consume_910" = sub i64 %"$gasrem_906", %"$gasmul_905"
  store i64 %"$consume_910", i64* @_gasrem, align 8
  %"$t2_911" = load %Int32, %Int32* %t2, align 4
  %"$p3_912" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_913" = call %Int32 @_pow_Int32(%Int32 %"$t2_911", %Uint32 %"$p3_912")
  store %Int32 %"$pow_call_913", %Int32* %"$p_27", align 4
  %"$gasrem_914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_915" = icmp ugt i64 1, %"$gasrem_914"
  br i1 %"$gascmp_915", label %"$out_of_gas_916", label %"$have_gas_917"

"$out_of_gas_916":                                ; preds = %"$have_gas_909"
  call void @_out_of_gas()
  br label %"$have_gas_917"

"$have_gas_917":                                  ; preds = %"$out_of_gas_916", %"$have_gas_909"
  %"$consume_918" = sub i64 %"$gasrem_914", 1
  store i64 %"$consume_918", i64* @_gasrem, align 8
  %"$res_30" = alloca %TName_Bool*, align 8
  %"$gasrem_919" = load i64, i64* @_gasrem, align 8
  %"$gascmp_920" = icmp ugt i64 1, %"$gasrem_919"
  br i1 %"$gascmp_920", label %"$out_of_gas_921", label %"$have_gas_922"

"$out_of_gas_921":                                ; preds = %"$have_gas_917"
  call void @_out_of_gas()
  br label %"$have_gas_922"

"$have_gas_922":                                  ; preds = %"$out_of_gas_921", %"$have_gas_917"
  %"$consume_923" = sub i64 %"$gasrem_919", 1
  store i64 %"$consume_923", i64* @_gasrem, align 8
  %"$ans_28" = alloca %Int32, align 8
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 1, %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$have_gas_922"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$have_gas_922"
  %"$consume_928" = sub i64 %"$gasrem_924", 1
  store i64 %"$consume_928", i64* @_gasrem, align 8
  store %Int32 { i32 81 }, %Int32* %"$ans_28", align 4
  %"$gasrem_929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_930" = icmp ugt i64 1, %"$gasrem_929"
  br i1 %"$gascmp_930", label %"$out_of_gas_931", label %"$have_gas_932"

"$out_of_gas_931":                                ; preds = %"$have_gas_927"
  call void @_out_of_gas()
  br label %"$have_gas_932"

"$have_gas_932":                                  ; preds = %"$out_of_gas_931", %"$have_gas_927"
  %"$consume_933" = sub i64 %"$gasrem_929", 1
  store i64 %"$consume_933", i64* @_gasrem, align 8
  %"$res__29" = alloca %TName_Bool*, align 8
  %"$gasrem_934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_935" = icmp ugt i64 4, %"$gasrem_934"
  br i1 %"$gascmp_935", label %"$out_of_gas_936", label %"$have_gas_937"

"$out_of_gas_936":                                ; preds = %"$have_gas_932"
  call void @_out_of_gas()
  br label %"$have_gas_937"

"$have_gas_937":                                  ; preds = %"$out_of_gas_936", %"$have_gas_932"
  %"$consume_938" = sub i64 %"$gasrem_934", 4
  store i64 %"$consume_938", i64* @_gasrem, align 8
  %"$execptr_load_939" = load i8*, i8** @_execptr, align 8
  %"$$p_27_940" = load %Int32, %Int32* %"$p_27", align 4
  %"$$ans_28_941" = load %Int32, %Int32* %"$ans_28", align 4
  %"$eq_call_942" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_939", %Int32 %"$$p_27_940", %Int32 %"$$ans_28_941")
  store %TName_Bool* %"$eq_call_942", %TName_Bool** %"$res__29", align 8
  %"$gasrem_944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_945" = icmp ugt i64 1, %"$gasrem_944"
  br i1 %"$gascmp_945", label %"$out_of_gas_946", label %"$have_gas_947"

"$out_of_gas_946":                                ; preds = %"$have_gas_937"
  call void @_out_of_gas()
  br label %"$have_gas_947"

"$have_gas_947":                                  ; preds = %"$out_of_gas_946", %"$have_gas_937"
  %"$consume_948" = sub i64 %"$gasrem_944", 1
  store i64 %"$consume_948", i64* @_gasrem, align 8
  %"$BoolUtils.andb_151" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_949" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_950" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_949", 0
  %"$BoolUtils.andb_envptr_951" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_949", 1
  %"$$res_26_952" = load %TName_Bool*, %TName_Bool** %"$res_26", align 8
  %"$BoolUtils.andb_call_953" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_950"(i8* %"$BoolUtils.andb_envptr_951", %TName_Bool* %"$$res_26_952")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_953", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$BoolUtils.andb_152" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_151_954" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$$BoolUtils.andb_151_fptr_955" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_954", 0
  %"$$BoolUtils.andb_151_envptr_956" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_954", 1
  %"$$res__29_957" = load %TName_Bool*, %TName_Bool** %"$res__29", align 8
  %"$$BoolUtils.andb_151_call_958" = call %TName_Bool* %"$$BoolUtils.andb_151_fptr_955"(i8* %"$$BoolUtils.andb_151_envptr_956", %TName_Bool* %"$$res__29_957")
  store %TName_Bool* %"$$BoolUtils.andb_151_call_958", %TName_Bool** %"$BoolUtils.andb_152", align 8
  %"$$BoolUtils.andb_152_959" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_152", align 8
  store %TName_Bool* %"$$BoolUtils.andb_152_959", %TName_Bool** %"$res_30", align 8
  %"$gasrem_960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_961" = icmp ugt i64 1, %"$gasrem_960"
  br i1 %"$gascmp_961", label %"$out_of_gas_962", label %"$have_gas_963"

"$out_of_gas_962":                                ; preds = %"$have_gas_947"
  call void @_out_of_gas()
  br label %"$have_gas_963"

"$have_gas_963":                                  ; preds = %"$out_of_gas_962", %"$have_gas_947"
  %"$consume_964" = sub i64 %"$gasrem_960", 1
  store i64 %"$consume_964", i64* @_gasrem, align 8
  %"$p_31" = alloca %Int32, align 8
  %"$p4_965" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_966" = extractvalue %Uint32 %"$p4_965", 0
  %"$valueof_967" = zext i32 %"$valueof_966" to i64
  %"$gaslogof_968" = uitofp i64 %"$valueof_967" to double
  %"$gaslogof_969" = fadd double %"$gaslogof_968", 1.000000e+00
  %"$gaslogof_970" = call double @llvm.log.f64(double %"$gaslogof_969")
  %"$gaslogof_971" = fptoui double %"$gaslogof_970" to i64
  %"$gaslogof_972" = add i64 %"$gaslogof_971", 1
  %"$gasmul_973" = mul i64 20, %"$gaslogof_972"
  %"$gasrem_974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_975" = icmp ugt i64 %"$gasmul_973", %"$gasrem_974"
  br i1 %"$gascmp_975", label %"$out_of_gas_976", label %"$have_gas_977"

"$out_of_gas_976":                                ; preds = %"$have_gas_963"
  call void @_out_of_gas()
  br label %"$have_gas_977"

"$have_gas_977":                                  ; preds = %"$out_of_gas_976", %"$have_gas_963"
  %"$consume_978" = sub i64 %"$gasrem_974", %"$gasmul_973"
  store i64 %"$consume_978", i64* @_gasrem, align 8
  %"$t2_979" = load %Int32, %Int32* %t2, align 4
  %"$p4_980" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_981" = call %Int32 @_pow_Int32(%Int32 %"$t2_979", %Uint32 %"$p4_980")
  store %Int32 %"$pow_call_981", %Int32* %"$p_31", align 4
  %"$gasrem_982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_983" = icmp ugt i64 1, %"$gasrem_982"
  br i1 %"$gascmp_983", label %"$out_of_gas_984", label %"$have_gas_985"

"$out_of_gas_984":                                ; preds = %"$have_gas_977"
  call void @_out_of_gas()
  br label %"$have_gas_985"

"$have_gas_985":                                  ; preds = %"$out_of_gas_984", %"$have_gas_977"
  %"$consume_986" = sub i64 %"$gasrem_982", 1
  store i64 %"$consume_986", i64* @_gasrem, align 8
  %"$res_34" = alloca %TName_Bool*, align 8
  %"$gasrem_987" = load i64, i64* @_gasrem, align 8
  %"$gascmp_988" = icmp ugt i64 1, %"$gasrem_987"
  br i1 %"$gascmp_988", label %"$out_of_gas_989", label %"$have_gas_990"

"$out_of_gas_989":                                ; preds = %"$have_gas_985"
  call void @_out_of_gas()
  br label %"$have_gas_990"

"$have_gas_990":                                  ; preds = %"$out_of_gas_989", %"$have_gas_985"
  %"$consume_991" = sub i64 %"$gasrem_987", 1
  store i64 %"$consume_991", i64* @_gasrem, align 8
  %"$ans_32" = alloca %Int32, align 8
  %"$gasrem_992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_993" = icmp ugt i64 1, %"$gasrem_992"
  br i1 %"$gascmp_993", label %"$out_of_gas_994", label %"$have_gas_995"

"$out_of_gas_994":                                ; preds = %"$have_gas_990"
  call void @_out_of_gas()
  br label %"$have_gas_995"

"$have_gas_995":                                  ; preds = %"$out_of_gas_994", %"$have_gas_990"
  %"$consume_996" = sub i64 %"$gasrem_992", 1
  store i64 %"$consume_996", i64* @_gasrem, align 8
  store %Int32 { i32 59049 }, %Int32* %"$ans_32", align 4
  %"$gasrem_997" = load i64, i64* @_gasrem, align 8
  %"$gascmp_998" = icmp ugt i64 1, %"$gasrem_997"
  br i1 %"$gascmp_998", label %"$out_of_gas_999", label %"$have_gas_1000"

"$out_of_gas_999":                                ; preds = %"$have_gas_995"
  call void @_out_of_gas()
  br label %"$have_gas_1000"

"$have_gas_1000":                                 ; preds = %"$out_of_gas_999", %"$have_gas_995"
  %"$consume_1001" = sub i64 %"$gasrem_997", 1
  store i64 %"$consume_1001", i64* @_gasrem, align 8
  %"$res__33" = alloca %TName_Bool*, align 8
  %"$gasrem_1002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1003" = icmp ugt i64 4, %"$gasrem_1002"
  br i1 %"$gascmp_1003", label %"$out_of_gas_1004", label %"$have_gas_1005"

"$out_of_gas_1004":                               ; preds = %"$have_gas_1000"
  call void @_out_of_gas()
  br label %"$have_gas_1005"

"$have_gas_1005":                                 ; preds = %"$out_of_gas_1004", %"$have_gas_1000"
  %"$consume_1006" = sub i64 %"$gasrem_1002", 4
  store i64 %"$consume_1006", i64* @_gasrem, align 8
  %"$execptr_load_1007" = load i8*, i8** @_execptr, align 8
  %"$$p_31_1008" = load %Int32, %Int32* %"$p_31", align 4
  %"$$ans_32_1009" = load %Int32, %Int32* %"$ans_32", align 4
  %"$eq_call_1010" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_1007", %Int32 %"$$p_31_1008", %Int32 %"$$ans_32_1009")
  store %TName_Bool* %"$eq_call_1010", %TName_Bool** %"$res__33", align 8
  %"$gasrem_1012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1013" = icmp ugt i64 1, %"$gasrem_1012"
  br i1 %"$gascmp_1013", label %"$out_of_gas_1014", label %"$have_gas_1015"

"$out_of_gas_1014":                               ; preds = %"$have_gas_1005"
  call void @_out_of_gas()
  br label %"$have_gas_1015"

"$have_gas_1015":                                 ; preds = %"$out_of_gas_1014", %"$have_gas_1005"
  %"$consume_1016" = sub i64 %"$gasrem_1012", 1
  store i64 %"$consume_1016", i64* @_gasrem, align 8
  %"$BoolUtils.andb_153" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1017" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1018" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1017", 0
  %"$BoolUtils.andb_envptr_1019" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1017", 1
  %"$$res_30_1020" = load %TName_Bool*, %TName_Bool** %"$res_30", align 8
  %"$BoolUtils.andb_call_1021" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1018"(i8* %"$BoolUtils.andb_envptr_1019", %TName_Bool* %"$$res_30_1020")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1021", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$BoolUtils.andb_154" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_153_1022" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$$BoolUtils.andb_153_fptr_1023" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1022", 0
  %"$$BoolUtils.andb_153_envptr_1024" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1022", 1
  %"$$res__33_1025" = load %TName_Bool*, %TName_Bool** %"$res__33", align 8
  %"$$BoolUtils.andb_153_call_1026" = call %TName_Bool* %"$$BoolUtils.andb_153_fptr_1023"(i8* %"$$BoolUtils.andb_153_envptr_1024", %TName_Bool* %"$$res__33_1025")
  store %TName_Bool* %"$$BoolUtils.andb_153_call_1026", %TName_Bool** %"$BoolUtils.andb_154", align 8
  %"$$BoolUtils.andb_154_1027" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_154", align 8
  store %TName_Bool* %"$$BoolUtils.andb_154_1027", %TName_Bool** %"$res_34", align 8
  %"$gasrem_1028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1029" = icmp ugt i64 1, %"$gasrem_1028"
  br i1 %"$gascmp_1029", label %"$out_of_gas_1030", label %"$have_gas_1031"

"$out_of_gas_1030":                               ; preds = %"$have_gas_1015"
  call void @_out_of_gas()
  br label %"$have_gas_1031"

"$have_gas_1031":                                 ; preds = %"$out_of_gas_1030", %"$have_gas_1015"
  %"$consume_1032" = sub i64 %"$gasrem_1028", 1
  store i64 %"$consume_1032", i64* @_gasrem, align 8
  %"$p_35" = alloca %Uint64, align 8
  %"$p1_1033" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1034" = extractvalue %Uint32 %"$p1_1033", 0
  %"$valueof_1035" = zext i32 %"$valueof_1034" to i64
  %"$gaslogof_1036" = uitofp i64 %"$valueof_1035" to double
  %"$gaslogof_1037" = fadd double %"$gaslogof_1036", 1.000000e+00
  %"$gaslogof_1038" = call double @llvm.log.f64(double %"$gaslogof_1037")
  %"$gaslogof_1039" = fptoui double %"$gaslogof_1038" to i64
  %"$gaslogof_1040" = add i64 %"$gaslogof_1039", 1
  %"$gasmul_1041" = mul i64 20, %"$gaslogof_1040"
  %"$gasrem_1042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1043" = icmp ugt i64 %"$gasmul_1041", %"$gasrem_1042"
  br i1 %"$gascmp_1043", label %"$out_of_gas_1044", label %"$have_gas_1045"

"$out_of_gas_1044":                               ; preds = %"$have_gas_1031"
  call void @_out_of_gas()
  br label %"$have_gas_1045"

"$have_gas_1045":                                 ; preds = %"$out_of_gas_1044", %"$have_gas_1031"
  %"$consume_1046" = sub i64 %"$gasrem_1042", %"$gasmul_1041"
  store i64 %"$consume_1046", i64* @_gasrem, align 8
  %"$t3_1047" = load %Uint64, %Uint64* %t3, align 8
  %"$p1_1048" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1049" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1047", %Uint32 %"$p1_1048")
  store %Uint64 %"$pow_call_1049", %Uint64* %"$p_35", align 8
  %"$gasrem_1050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1051" = icmp ugt i64 1, %"$gasrem_1050"
  br i1 %"$gascmp_1051", label %"$out_of_gas_1052", label %"$have_gas_1053"

"$out_of_gas_1052":                               ; preds = %"$have_gas_1045"
  call void @_out_of_gas()
  br label %"$have_gas_1053"

"$have_gas_1053":                                 ; preds = %"$out_of_gas_1052", %"$have_gas_1045"
  %"$consume_1054" = sub i64 %"$gasrem_1050", 1
  store i64 %"$consume_1054", i64* @_gasrem, align 8
  %"$res_38" = alloca %TName_Bool*, align 8
  %"$gasrem_1055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1056" = icmp ugt i64 1, %"$gasrem_1055"
  br i1 %"$gascmp_1056", label %"$out_of_gas_1057", label %"$have_gas_1058"

"$out_of_gas_1057":                               ; preds = %"$have_gas_1053"
  call void @_out_of_gas()
  br label %"$have_gas_1058"

"$have_gas_1058":                                 ; preds = %"$out_of_gas_1057", %"$have_gas_1053"
  %"$consume_1059" = sub i64 %"$gasrem_1055", 1
  store i64 %"$consume_1059", i64* @_gasrem, align 8
  %"$ans_36" = alloca %Uint64, align 8
  %"$gasrem_1060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1061" = icmp ugt i64 1, %"$gasrem_1060"
  br i1 %"$gascmp_1061", label %"$out_of_gas_1062", label %"$have_gas_1063"

"$out_of_gas_1062":                               ; preds = %"$have_gas_1058"
  call void @_out_of_gas()
  br label %"$have_gas_1063"

"$have_gas_1063":                                 ; preds = %"$out_of_gas_1062", %"$have_gas_1058"
  %"$consume_1064" = sub i64 %"$gasrem_1060", 1
  store i64 %"$consume_1064", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %"$ans_36", align 8
  %"$gasrem_1065" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1066" = icmp ugt i64 1, %"$gasrem_1065"
  br i1 %"$gascmp_1066", label %"$out_of_gas_1067", label %"$have_gas_1068"

"$out_of_gas_1067":                               ; preds = %"$have_gas_1063"
  call void @_out_of_gas()
  br label %"$have_gas_1068"

"$have_gas_1068":                                 ; preds = %"$out_of_gas_1067", %"$have_gas_1063"
  %"$consume_1069" = sub i64 %"$gasrem_1065", 1
  store i64 %"$consume_1069", i64* @_gasrem, align 8
  %"$res__37" = alloca %TName_Bool*, align 8
  %"$gasrem_1070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1071" = icmp ugt i64 4, %"$gasrem_1070"
  br i1 %"$gascmp_1071", label %"$out_of_gas_1072", label %"$have_gas_1073"

"$out_of_gas_1072":                               ; preds = %"$have_gas_1068"
  call void @_out_of_gas()
  br label %"$have_gas_1073"

"$have_gas_1073":                                 ; preds = %"$out_of_gas_1072", %"$have_gas_1068"
  %"$consume_1074" = sub i64 %"$gasrem_1070", 4
  store i64 %"$consume_1074", i64* @_gasrem, align 8
  %"$execptr_load_1075" = load i8*, i8** @_execptr, align 8
  %"$$p_35_1076" = load %Uint64, %Uint64* %"$p_35", align 8
  %"$$ans_36_1077" = load %Uint64, %Uint64* %"$ans_36", align 8
  %"$eq_call_1078" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1075", %Uint64 %"$$p_35_1076", %Uint64 %"$$ans_36_1077")
  store %TName_Bool* %"$eq_call_1078", %TName_Bool** %"$res__37", align 8
  %"$gasrem_1080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1081" = icmp ugt i64 1, %"$gasrem_1080"
  br i1 %"$gascmp_1081", label %"$out_of_gas_1082", label %"$have_gas_1083"

"$out_of_gas_1082":                               ; preds = %"$have_gas_1073"
  call void @_out_of_gas()
  br label %"$have_gas_1083"

"$have_gas_1083":                                 ; preds = %"$out_of_gas_1082", %"$have_gas_1073"
  %"$consume_1084" = sub i64 %"$gasrem_1080", 1
  store i64 %"$consume_1084", i64* @_gasrem, align 8
  %"$BoolUtils.andb_155" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1085" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1086" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1085", 0
  %"$BoolUtils.andb_envptr_1087" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1085", 1
  %"$$res_34_1088" = load %TName_Bool*, %TName_Bool** %"$res_34", align 8
  %"$BoolUtils.andb_call_1089" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1086"(i8* %"$BoolUtils.andb_envptr_1087", %TName_Bool* %"$$res_34_1088")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1089", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$BoolUtils.andb_156" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_155_1090" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$$BoolUtils.andb_155_fptr_1091" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1090", 0
  %"$$BoolUtils.andb_155_envptr_1092" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1090", 1
  %"$$res__37_1093" = load %TName_Bool*, %TName_Bool** %"$res__37", align 8
  %"$$BoolUtils.andb_155_call_1094" = call %TName_Bool* %"$$BoolUtils.andb_155_fptr_1091"(i8* %"$$BoolUtils.andb_155_envptr_1092", %TName_Bool* %"$$res__37_1093")
  store %TName_Bool* %"$$BoolUtils.andb_155_call_1094", %TName_Bool** %"$BoolUtils.andb_156", align 8
  %"$$BoolUtils.andb_156_1095" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_156", align 8
  store %TName_Bool* %"$$BoolUtils.andb_156_1095", %TName_Bool** %"$res_38", align 8
  %"$gasrem_1096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1097" = icmp ugt i64 1, %"$gasrem_1096"
  br i1 %"$gascmp_1097", label %"$out_of_gas_1098", label %"$have_gas_1099"

"$out_of_gas_1098":                               ; preds = %"$have_gas_1083"
  call void @_out_of_gas()
  br label %"$have_gas_1099"

"$have_gas_1099":                                 ; preds = %"$out_of_gas_1098", %"$have_gas_1083"
  %"$consume_1100" = sub i64 %"$gasrem_1096", 1
  store i64 %"$consume_1100", i64* @_gasrem, align 8
  %"$p_39" = alloca %Uint64, align 8
  %"$p2_1101" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1102" = extractvalue %Uint32 %"$p2_1101", 0
  %"$valueof_1103" = zext i32 %"$valueof_1102" to i64
  %"$gaslogof_1104" = uitofp i64 %"$valueof_1103" to double
  %"$gaslogof_1105" = fadd double %"$gaslogof_1104", 1.000000e+00
  %"$gaslogof_1106" = call double @llvm.log.f64(double %"$gaslogof_1105")
  %"$gaslogof_1107" = fptoui double %"$gaslogof_1106" to i64
  %"$gaslogof_1108" = add i64 %"$gaslogof_1107", 1
  %"$gasmul_1109" = mul i64 20, %"$gaslogof_1108"
  %"$gasrem_1110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1111" = icmp ugt i64 %"$gasmul_1109", %"$gasrem_1110"
  br i1 %"$gascmp_1111", label %"$out_of_gas_1112", label %"$have_gas_1113"

"$out_of_gas_1112":                               ; preds = %"$have_gas_1099"
  call void @_out_of_gas()
  br label %"$have_gas_1113"

"$have_gas_1113":                                 ; preds = %"$out_of_gas_1112", %"$have_gas_1099"
  %"$consume_1114" = sub i64 %"$gasrem_1110", %"$gasmul_1109"
  store i64 %"$consume_1114", i64* @_gasrem, align 8
  %"$t3_1115" = load %Uint64, %Uint64* %t3, align 8
  %"$p2_1116" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1117" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1115", %Uint32 %"$p2_1116")
  store %Uint64 %"$pow_call_1117", %Uint64* %"$p_39", align 8
  %"$gasrem_1118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1119" = icmp ugt i64 1, %"$gasrem_1118"
  br i1 %"$gascmp_1119", label %"$out_of_gas_1120", label %"$have_gas_1121"

"$out_of_gas_1120":                               ; preds = %"$have_gas_1113"
  call void @_out_of_gas()
  br label %"$have_gas_1121"

"$have_gas_1121":                                 ; preds = %"$out_of_gas_1120", %"$have_gas_1113"
  %"$consume_1122" = sub i64 %"$gasrem_1118", 1
  store i64 %"$consume_1122", i64* @_gasrem, align 8
  %"$res_42" = alloca %TName_Bool*, align 8
  %"$gasrem_1123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1124" = icmp ugt i64 1, %"$gasrem_1123"
  br i1 %"$gascmp_1124", label %"$out_of_gas_1125", label %"$have_gas_1126"

"$out_of_gas_1125":                               ; preds = %"$have_gas_1121"
  call void @_out_of_gas()
  br label %"$have_gas_1126"

"$have_gas_1126":                                 ; preds = %"$out_of_gas_1125", %"$have_gas_1121"
  %"$consume_1127" = sub i64 %"$gasrem_1123", 1
  store i64 %"$consume_1127", i64* @_gasrem, align 8
  %"$ans_40" = alloca %Uint64, align 8
  %"$gasrem_1128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1129" = icmp ugt i64 1, %"$gasrem_1128"
  br i1 %"$gascmp_1129", label %"$out_of_gas_1130", label %"$have_gas_1131"

"$out_of_gas_1130":                               ; preds = %"$have_gas_1126"
  call void @_out_of_gas()
  br label %"$have_gas_1131"

"$have_gas_1131":                                 ; preds = %"$out_of_gas_1130", %"$have_gas_1126"
  %"$consume_1132" = sub i64 %"$gasrem_1128", 1
  store i64 %"$consume_1132", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %"$ans_40", align 8
  %"$gasrem_1133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1134" = icmp ugt i64 1, %"$gasrem_1133"
  br i1 %"$gascmp_1134", label %"$out_of_gas_1135", label %"$have_gas_1136"

"$out_of_gas_1135":                               ; preds = %"$have_gas_1131"
  call void @_out_of_gas()
  br label %"$have_gas_1136"

"$have_gas_1136":                                 ; preds = %"$out_of_gas_1135", %"$have_gas_1131"
  %"$consume_1137" = sub i64 %"$gasrem_1133", 1
  store i64 %"$consume_1137", i64* @_gasrem, align 8
  %"$res__41" = alloca %TName_Bool*, align 8
  %"$gasrem_1138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1139" = icmp ugt i64 4, %"$gasrem_1138"
  br i1 %"$gascmp_1139", label %"$out_of_gas_1140", label %"$have_gas_1141"

"$out_of_gas_1140":                               ; preds = %"$have_gas_1136"
  call void @_out_of_gas()
  br label %"$have_gas_1141"

"$have_gas_1141":                                 ; preds = %"$out_of_gas_1140", %"$have_gas_1136"
  %"$consume_1142" = sub i64 %"$gasrem_1138", 4
  store i64 %"$consume_1142", i64* @_gasrem, align 8
  %"$execptr_load_1143" = load i8*, i8** @_execptr, align 8
  %"$$p_39_1144" = load %Uint64, %Uint64* %"$p_39", align 8
  %"$$ans_40_1145" = load %Uint64, %Uint64* %"$ans_40", align 8
  %"$eq_call_1146" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1143", %Uint64 %"$$p_39_1144", %Uint64 %"$$ans_40_1145")
  store %TName_Bool* %"$eq_call_1146", %TName_Bool** %"$res__41", align 8
  %"$gasrem_1148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1149" = icmp ugt i64 1, %"$gasrem_1148"
  br i1 %"$gascmp_1149", label %"$out_of_gas_1150", label %"$have_gas_1151"

"$out_of_gas_1150":                               ; preds = %"$have_gas_1141"
  call void @_out_of_gas()
  br label %"$have_gas_1151"

"$have_gas_1151":                                 ; preds = %"$out_of_gas_1150", %"$have_gas_1141"
  %"$consume_1152" = sub i64 %"$gasrem_1148", 1
  store i64 %"$consume_1152", i64* @_gasrem, align 8
  %"$BoolUtils.andb_157" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1153" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1154" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1153", 0
  %"$BoolUtils.andb_envptr_1155" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1153", 1
  %"$$res_38_1156" = load %TName_Bool*, %TName_Bool** %"$res_38", align 8
  %"$BoolUtils.andb_call_1157" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1154"(i8* %"$BoolUtils.andb_envptr_1155", %TName_Bool* %"$$res_38_1156")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1157", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$BoolUtils.andb_158" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_157_1158" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$$BoolUtils.andb_157_fptr_1159" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1158", 0
  %"$$BoolUtils.andb_157_envptr_1160" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1158", 1
  %"$$res__41_1161" = load %TName_Bool*, %TName_Bool** %"$res__41", align 8
  %"$$BoolUtils.andb_157_call_1162" = call %TName_Bool* %"$$BoolUtils.andb_157_fptr_1159"(i8* %"$$BoolUtils.andb_157_envptr_1160", %TName_Bool* %"$$res__41_1161")
  store %TName_Bool* %"$$BoolUtils.andb_157_call_1162", %TName_Bool** %"$BoolUtils.andb_158", align 8
  %"$$BoolUtils.andb_158_1163" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_158", align 8
  store %TName_Bool* %"$$BoolUtils.andb_158_1163", %TName_Bool** %"$res_42", align 8
  %"$gasrem_1164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1165" = icmp ugt i64 1, %"$gasrem_1164"
  br i1 %"$gascmp_1165", label %"$out_of_gas_1166", label %"$have_gas_1167"

"$out_of_gas_1166":                               ; preds = %"$have_gas_1151"
  call void @_out_of_gas()
  br label %"$have_gas_1167"

"$have_gas_1167":                                 ; preds = %"$out_of_gas_1166", %"$have_gas_1151"
  %"$consume_1168" = sub i64 %"$gasrem_1164", 1
  store i64 %"$consume_1168", i64* @_gasrem, align 8
  %"$p_43" = alloca %Uint64, align 8
  %"$p3_1169" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1170" = extractvalue %Uint32 %"$p3_1169", 0
  %"$valueof_1171" = zext i32 %"$valueof_1170" to i64
  %"$gaslogof_1172" = uitofp i64 %"$valueof_1171" to double
  %"$gaslogof_1173" = fadd double %"$gaslogof_1172", 1.000000e+00
  %"$gaslogof_1174" = call double @llvm.log.f64(double %"$gaslogof_1173")
  %"$gaslogof_1175" = fptoui double %"$gaslogof_1174" to i64
  %"$gaslogof_1176" = add i64 %"$gaslogof_1175", 1
  %"$gasmul_1177" = mul i64 20, %"$gaslogof_1176"
  %"$gasrem_1178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1179" = icmp ugt i64 %"$gasmul_1177", %"$gasrem_1178"
  br i1 %"$gascmp_1179", label %"$out_of_gas_1180", label %"$have_gas_1181"

"$out_of_gas_1180":                               ; preds = %"$have_gas_1167"
  call void @_out_of_gas()
  br label %"$have_gas_1181"

"$have_gas_1181":                                 ; preds = %"$out_of_gas_1180", %"$have_gas_1167"
  %"$consume_1182" = sub i64 %"$gasrem_1178", %"$gasmul_1177"
  store i64 %"$consume_1182", i64* @_gasrem, align 8
  %"$t3_1183" = load %Uint64, %Uint64* %t3, align 8
  %"$p3_1184" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1185" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1183", %Uint32 %"$p3_1184")
  store %Uint64 %"$pow_call_1185", %Uint64* %"$p_43", align 8
  %"$gasrem_1186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1187" = icmp ugt i64 1, %"$gasrem_1186"
  br i1 %"$gascmp_1187", label %"$out_of_gas_1188", label %"$have_gas_1189"

"$out_of_gas_1188":                               ; preds = %"$have_gas_1181"
  call void @_out_of_gas()
  br label %"$have_gas_1189"

"$have_gas_1189":                                 ; preds = %"$out_of_gas_1188", %"$have_gas_1181"
  %"$consume_1190" = sub i64 %"$gasrem_1186", 1
  store i64 %"$consume_1190", i64* @_gasrem, align 8
  %"$res_46" = alloca %TName_Bool*, align 8
  %"$gasrem_1191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1192" = icmp ugt i64 1, %"$gasrem_1191"
  br i1 %"$gascmp_1192", label %"$out_of_gas_1193", label %"$have_gas_1194"

"$out_of_gas_1193":                               ; preds = %"$have_gas_1189"
  call void @_out_of_gas()
  br label %"$have_gas_1194"

"$have_gas_1194":                                 ; preds = %"$out_of_gas_1193", %"$have_gas_1189"
  %"$consume_1195" = sub i64 %"$gasrem_1191", 1
  store i64 %"$consume_1195", i64* @_gasrem, align 8
  %"$ans_44" = alloca %Uint64, align 8
  %"$gasrem_1196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1197" = icmp ugt i64 1, %"$gasrem_1196"
  br i1 %"$gascmp_1197", label %"$out_of_gas_1198", label %"$have_gas_1199"

"$out_of_gas_1198":                               ; preds = %"$have_gas_1194"
  call void @_out_of_gas()
  br label %"$have_gas_1199"

"$have_gas_1199":                                 ; preds = %"$out_of_gas_1198", %"$have_gas_1194"
  %"$consume_1200" = sub i64 %"$gasrem_1196", 1
  store i64 %"$consume_1200", i64* @_gasrem, align 8
  store %Uint64 { i64 100000000 }, %Uint64* %"$ans_44", align 8
  %"$gasrem_1201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1202" = icmp ugt i64 1, %"$gasrem_1201"
  br i1 %"$gascmp_1202", label %"$out_of_gas_1203", label %"$have_gas_1204"

"$out_of_gas_1203":                               ; preds = %"$have_gas_1199"
  call void @_out_of_gas()
  br label %"$have_gas_1204"

"$have_gas_1204":                                 ; preds = %"$out_of_gas_1203", %"$have_gas_1199"
  %"$consume_1205" = sub i64 %"$gasrem_1201", 1
  store i64 %"$consume_1205", i64* @_gasrem, align 8
  %"$res__45" = alloca %TName_Bool*, align 8
  %"$gasrem_1206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1207" = icmp ugt i64 4, %"$gasrem_1206"
  br i1 %"$gascmp_1207", label %"$out_of_gas_1208", label %"$have_gas_1209"

"$out_of_gas_1208":                               ; preds = %"$have_gas_1204"
  call void @_out_of_gas()
  br label %"$have_gas_1209"

"$have_gas_1209":                                 ; preds = %"$out_of_gas_1208", %"$have_gas_1204"
  %"$consume_1210" = sub i64 %"$gasrem_1206", 4
  store i64 %"$consume_1210", i64* @_gasrem, align 8
  %"$execptr_load_1211" = load i8*, i8** @_execptr, align 8
  %"$$p_43_1212" = load %Uint64, %Uint64* %"$p_43", align 8
  %"$$ans_44_1213" = load %Uint64, %Uint64* %"$ans_44", align 8
  %"$eq_call_1214" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1211", %Uint64 %"$$p_43_1212", %Uint64 %"$$ans_44_1213")
  store %TName_Bool* %"$eq_call_1214", %TName_Bool** %"$res__45", align 8
  %"$gasrem_1216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1217" = icmp ugt i64 1, %"$gasrem_1216"
  br i1 %"$gascmp_1217", label %"$out_of_gas_1218", label %"$have_gas_1219"

"$out_of_gas_1218":                               ; preds = %"$have_gas_1209"
  call void @_out_of_gas()
  br label %"$have_gas_1219"

"$have_gas_1219":                                 ; preds = %"$out_of_gas_1218", %"$have_gas_1209"
  %"$consume_1220" = sub i64 %"$gasrem_1216", 1
  store i64 %"$consume_1220", i64* @_gasrem, align 8
  %"$BoolUtils.andb_159" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1221" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1222" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1221", 0
  %"$BoolUtils.andb_envptr_1223" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1221", 1
  %"$$res_42_1224" = load %TName_Bool*, %TName_Bool** %"$res_42", align 8
  %"$BoolUtils.andb_call_1225" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1222"(i8* %"$BoolUtils.andb_envptr_1223", %TName_Bool* %"$$res_42_1224")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1225", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$BoolUtils.andb_160" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_159_1226" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$$BoolUtils.andb_159_fptr_1227" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1226", 0
  %"$$BoolUtils.andb_159_envptr_1228" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1226", 1
  %"$$res__45_1229" = load %TName_Bool*, %TName_Bool** %"$res__45", align 8
  %"$$BoolUtils.andb_159_call_1230" = call %TName_Bool* %"$$BoolUtils.andb_159_fptr_1227"(i8* %"$$BoolUtils.andb_159_envptr_1228", %TName_Bool* %"$$res__45_1229")
  store %TName_Bool* %"$$BoolUtils.andb_159_call_1230", %TName_Bool** %"$BoolUtils.andb_160", align 8
  %"$$BoolUtils.andb_160_1231" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_160", align 8
  store %TName_Bool* %"$$BoolUtils.andb_160_1231", %TName_Bool** %"$res_46", align 8
  %"$gasrem_1232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1233" = icmp ugt i64 1, %"$gasrem_1232"
  br i1 %"$gascmp_1233", label %"$out_of_gas_1234", label %"$have_gas_1235"

"$out_of_gas_1234":                               ; preds = %"$have_gas_1219"
  call void @_out_of_gas()
  br label %"$have_gas_1235"

"$have_gas_1235":                                 ; preds = %"$out_of_gas_1234", %"$have_gas_1219"
  %"$consume_1236" = sub i64 %"$gasrem_1232", 1
  store i64 %"$consume_1236", i64* @_gasrem, align 8
  %"$p_47" = alloca %Int64, align 8
  %"$p1_1237" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1238" = extractvalue %Uint32 %"$p1_1237", 0
  %"$valueof_1239" = zext i32 %"$valueof_1238" to i64
  %"$gaslogof_1240" = uitofp i64 %"$valueof_1239" to double
  %"$gaslogof_1241" = fadd double %"$gaslogof_1240", 1.000000e+00
  %"$gaslogof_1242" = call double @llvm.log.f64(double %"$gaslogof_1241")
  %"$gaslogof_1243" = fptoui double %"$gaslogof_1242" to i64
  %"$gaslogof_1244" = add i64 %"$gaslogof_1243", 1
  %"$gasmul_1245" = mul i64 20, %"$gaslogof_1244"
  %"$gasrem_1246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1247" = icmp ugt i64 %"$gasmul_1245", %"$gasrem_1246"
  br i1 %"$gascmp_1247", label %"$out_of_gas_1248", label %"$have_gas_1249"

"$out_of_gas_1248":                               ; preds = %"$have_gas_1235"
  call void @_out_of_gas()
  br label %"$have_gas_1249"

"$have_gas_1249":                                 ; preds = %"$out_of_gas_1248", %"$have_gas_1235"
  %"$consume_1250" = sub i64 %"$gasrem_1246", %"$gasmul_1245"
  store i64 %"$consume_1250", i64* @_gasrem, align 8
  %"$t4_1251" = load %Int64, %Int64* %t4, align 8
  %"$p1_1252" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1253" = call %Int64 @_pow_Int64(%Int64 %"$t4_1251", %Uint32 %"$p1_1252")
  store %Int64 %"$pow_call_1253", %Int64* %"$p_47", align 8
  %"$gasrem_1254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1255" = icmp ugt i64 1, %"$gasrem_1254"
  br i1 %"$gascmp_1255", label %"$out_of_gas_1256", label %"$have_gas_1257"

"$out_of_gas_1256":                               ; preds = %"$have_gas_1249"
  call void @_out_of_gas()
  br label %"$have_gas_1257"

"$have_gas_1257":                                 ; preds = %"$out_of_gas_1256", %"$have_gas_1249"
  %"$consume_1258" = sub i64 %"$gasrem_1254", 1
  store i64 %"$consume_1258", i64* @_gasrem, align 8
  %"$res_50" = alloca %TName_Bool*, align 8
  %"$gasrem_1259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1260" = icmp ugt i64 1, %"$gasrem_1259"
  br i1 %"$gascmp_1260", label %"$out_of_gas_1261", label %"$have_gas_1262"

"$out_of_gas_1261":                               ; preds = %"$have_gas_1257"
  call void @_out_of_gas()
  br label %"$have_gas_1262"

"$have_gas_1262":                                 ; preds = %"$out_of_gas_1261", %"$have_gas_1257"
  %"$consume_1263" = sub i64 %"$gasrem_1259", 1
  store i64 %"$consume_1263", i64* @_gasrem, align 8
  %"$ans_48" = alloca %Int64, align 8
  %"$gasrem_1264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1265" = icmp ugt i64 1, %"$gasrem_1264"
  br i1 %"$gascmp_1265", label %"$out_of_gas_1266", label %"$have_gas_1267"

"$out_of_gas_1266":                               ; preds = %"$have_gas_1262"
  call void @_out_of_gas()
  br label %"$have_gas_1267"

"$have_gas_1267":                                 ; preds = %"$out_of_gas_1266", %"$have_gas_1262"
  %"$consume_1268" = sub i64 %"$gasrem_1264", 1
  store i64 %"$consume_1268", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %"$ans_48", align 8
  %"$gasrem_1269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1270" = icmp ugt i64 1, %"$gasrem_1269"
  br i1 %"$gascmp_1270", label %"$out_of_gas_1271", label %"$have_gas_1272"

"$out_of_gas_1271":                               ; preds = %"$have_gas_1267"
  call void @_out_of_gas()
  br label %"$have_gas_1272"

"$have_gas_1272":                                 ; preds = %"$out_of_gas_1271", %"$have_gas_1267"
  %"$consume_1273" = sub i64 %"$gasrem_1269", 1
  store i64 %"$consume_1273", i64* @_gasrem, align 8
  %"$res__49" = alloca %TName_Bool*, align 8
  %"$gasrem_1274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1275" = icmp ugt i64 4, %"$gasrem_1274"
  br i1 %"$gascmp_1275", label %"$out_of_gas_1276", label %"$have_gas_1277"

"$out_of_gas_1276":                               ; preds = %"$have_gas_1272"
  call void @_out_of_gas()
  br label %"$have_gas_1277"

"$have_gas_1277":                                 ; preds = %"$out_of_gas_1276", %"$have_gas_1272"
  %"$consume_1278" = sub i64 %"$gasrem_1274", 4
  store i64 %"$consume_1278", i64* @_gasrem, align 8
  %"$execptr_load_1279" = load i8*, i8** @_execptr, align 8
  %"$$p_47_1280" = load %Int64, %Int64* %"$p_47", align 8
  %"$$ans_48_1281" = load %Int64, %Int64* %"$ans_48", align 8
  %"$eq_call_1282" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1279", %Int64 %"$$p_47_1280", %Int64 %"$$ans_48_1281")
  store %TName_Bool* %"$eq_call_1282", %TName_Bool** %"$res__49", align 8
  %"$gasrem_1284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1285" = icmp ugt i64 1, %"$gasrem_1284"
  br i1 %"$gascmp_1285", label %"$out_of_gas_1286", label %"$have_gas_1287"

"$out_of_gas_1286":                               ; preds = %"$have_gas_1277"
  call void @_out_of_gas()
  br label %"$have_gas_1287"

"$have_gas_1287":                                 ; preds = %"$out_of_gas_1286", %"$have_gas_1277"
  %"$consume_1288" = sub i64 %"$gasrem_1284", 1
  store i64 %"$consume_1288", i64* @_gasrem, align 8
  %"$BoolUtils.andb_161" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1289" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1290" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1289", 0
  %"$BoolUtils.andb_envptr_1291" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1289", 1
  %"$$res_46_1292" = load %TName_Bool*, %TName_Bool** %"$res_46", align 8
  %"$BoolUtils.andb_call_1293" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1290"(i8* %"$BoolUtils.andb_envptr_1291", %TName_Bool* %"$$res_46_1292")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1293", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$BoolUtils.andb_162" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_161_1294" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$$BoolUtils.andb_161_fptr_1295" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1294", 0
  %"$$BoolUtils.andb_161_envptr_1296" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1294", 1
  %"$$res__49_1297" = load %TName_Bool*, %TName_Bool** %"$res__49", align 8
  %"$$BoolUtils.andb_161_call_1298" = call %TName_Bool* %"$$BoolUtils.andb_161_fptr_1295"(i8* %"$$BoolUtils.andb_161_envptr_1296", %TName_Bool* %"$$res__49_1297")
  store %TName_Bool* %"$$BoolUtils.andb_161_call_1298", %TName_Bool** %"$BoolUtils.andb_162", align 8
  %"$$BoolUtils.andb_162_1299" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_162", align 8
  store %TName_Bool* %"$$BoolUtils.andb_162_1299", %TName_Bool** %"$res_50", align 8
  %"$gasrem_1300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1301" = icmp ugt i64 1, %"$gasrem_1300"
  br i1 %"$gascmp_1301", label %"$out_of_gas_1302", label %"$have_gas_1303"

"$out_of_gas_1302":                               ; preds = %"$have_gas_1287"
  call void @_out_of_gas()
  br label %"$have_gas_1303"

"$have_gas_1303":                                 ; preds = %"$out_of_gas_1302", %"$have_gas_1287"
  %"$consume_1304" = sub i64 %"$gasrem_1300", 1
  store i64 %"$consume_1304", i64* @_gasrem, align 8
  %"$p_51" = alloca %Int64, align 8
  %"$p2_1305" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1306" = extractvalue %Uint32 %"$p2_1305", 0
  %"$valueof_1307" = zext i32 %"$valueof_1306" to i64
  %"$gaslogof_1308" = uitofp i64 %"$valueof_1307" to double
  %"$gaslogof_1309" = fadd double %"$gaslogof_1308", 1.000000e+00
  %"$gaslogof_1310" = call double @llvm.log.f64(double %"$gaslogof_1309")
  %"$gaslogof_1311" = fptoui double %"$gaslogof_1310" to i64
  %"$gaslogof_1312" = add i64 %"$gaslogof_1311", 1
  %"$gasmul_1313" = mul i64 20, %"$gaslogof_1312"
  %"$gasrem_1314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1315" = icmp ugt i64 %"$gasmul_1313", %"$gasrem_1314"
  br i1 %"$gascmp_1315", label %"$out_of_gas_1316", label %"$have_gas_1317"

"$out_of_gas_1316":                               ; preds = %"$have_gas_1303"
  call void @_out_of_gas()
  br label %"$have_gas_1317"

"$have_gas_1317":                                 ; preds = %"$out_of_gas_1316", %"$have_gas_1303"
  %"$consume_1318" = sub i64 %"$gasrem_1314", %"$gasmul_1313"
  store i64 %"$consume_1318", i64* @_gasrem, align 8
  %"$t4_1319" = load %Int64, %Int64* %t4, align 8
  %"$p2_1320" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1321" = call %Int64 @_pow_Int64(%Int64 %"$t4_1319", %Uint32 %"$p2_1320")
  store %Int64 %"$pow_call_1321", %Int64* %"$p_51", align 8
  %"$gasrem_1322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1323" = icmp ugt i64 1, %"$gasrem_1322"
  br i1 %"$gascmp_1323", label %"$out_of_gas_1324", label %"$have_gas_1325"

"$out_of_gas_1324":                               ; preds = %"$have_gas_1317"
  call void @_out_of_gas()
  br label %"$have_gas_1325"

"$have_gas_1325":                                 ; preds = %"$out_of_gas_1324", %"$have_gas_1317"
  %"$consume_1326" = sub i64 %"$gasrem_1322", 1
  store i64 %"$consume_1326", i64* @_gasrem, align 8
  %"$res_54" = alloca %TName_Bool*, align 8
  %"$gasrem_1327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1328" = icmp ugt i64 1, %"$gasrem_1327"
  br i1 %"$gascmp_1328", label %"$out_of_gas_1329", label %"$have_gas_1330"

"$out_of_gas_1329":                               ; preds = %"$have_gas_1325"
  call void @_out_of_gas()
  br label %"$have_gas_1330"

"$have_gas_1330":                                 ; preds = %"$out_of_gas_1329", %"$have_gas_1325"
  %"$consume_1331" = sub i64 %"$gasrem_1327", 1
  store i64 %"$consume_1331", i64* @_gasrem, align 8
  %"$ans_52" = alloca %Int64, align 8
  %"$gasrem_1332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1333" = icmp ugt i64 1, %"$gasrem_1332"
  br i1 %"$gascmp_1333", label %"$out_of_gas_1334", label %"$have_gas_1335"

"$out_of_gas_1334":                               ; preds = %"$have_gas_1330"
  call void @_out_of_gas()
  br label %"$have_gas_1335"

"$have_gas_1335":                                 ; preds = %"$out_of_gas_1334", %"$have_gas_1330"
  %"$consume_1336" = sub i64 %"$gasrem_1332", 1
  store i64 %"$consume_1336", i64* @_gasrem, align 8
  store %Int64 { i64 -101 }, %Int64* %"$ans_52", align 8
  %"$gasrem_1337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1338" = icmp ugt i64 1, %"$gasrem_1337"
  br i1 %"$gascmp_1338", label %"$out_of_gas_1339", label %"$have_gas_1340"

"$out_of_gas_1339":                               ; preds = %"$have_gas_1335"
  call void @_out_of_gas()
  br label %"$have_gas_1340"

"$have_gas_1340":                                 ; preds = %"$out_of_gas_1339", %"$have_gas_1335"
  %"$consume_1341" = sub i64 %"$gasrem_1337", 1
  store i64 %"$consume_1341", i64* @_gasrem, align 8
  %"$res__53" = alloca %TName_Bool*, align 8
  %"$gasrem_1342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1343" = icmp ugt i64 4, %"$gasrem_1342"
  br i1 %"$gascmp_1343", label %"$out_of_gas_1344", label %"$have_gas_1345"

"$out_of_gas_1344":                               ; preds = %"$have_gas_1340"
  call void @_out_of_gas()
  br label %"$have_gas_1345"

"$have_gas_1345":                                 ; preds = %"$out_of_gas_1344", %"$have_gas_1340"
  %"$consume_1346" = sub i64 %"$gasrem_1342", 4
  store i64 %"$consume_1346", i64* @_gasrem, align 8
  %"$execptr_load_1347" = load i8*, i8** @_execptr, align 8
  %"$$p_51_1348" = load %Int64, %Int64* %"$p_51", align 8
  %"$$ans_52_1349" = load %Int64, %Int64* %"$ans_52", align 8
  %"$eq_call_1350" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1347", %Int64 %"$$p_51_1348", %Int64 %"$$ans_52_1349")
  store %TName_Bool* %"$eq_call_1350", %TName_Bool** %"$res__53", align 8
  %"$gasrem_1352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1353" = icmp ugt i64 1, %"$gasrem_1352"
  br i1 %"$gascmp_1353", label %"$out_of_gas_1354", label %"$have_gas_1355"

"$out_of_gas_1354":                               ; preds = %"$have_gas_1345"
  call void @_out_of_gas()
  br label %"$have_gas_1355"

"$have_gas_1355":                                 ; preds = %"$out_of_gas_1354", %"$have_gas_1345"
  %"$consume_1356" = sub i64 %"$gasrem_1352", 1
  store i64 %"$consume_1356", i64* @_gasrem, align 8
  %"$BoolUtils.andb_163" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1357" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1358" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1357", 0
  %"$BoolUtils.andb_envptr_1359" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1357", 1
  %"$$res_50_1360" = load %TName_Bool*, %TName_Bool** %"$res_50", align 8
  %"$BoolUtils.andb_call_1361" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1358"(i8* %"$BoolUtils.andb_envptr_1359", %TName_Bool* %"$$res_50_1360")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1361", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$BoolUtils.andb_164" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_163_1362" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$$BoolUtils.andb_163_fptr_1363" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1362", 0
  %"$$BoolUtils.andb_163_envptr_1364" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1362", 1
  %"$$res__53_1365" = load %TName_Bool*, %TName_Bool** %"$res__53", align 8
  %"$$BoolUtils.andb_163_call_1366" = call %TName_Bool* %"$$BoolUtils.andb_163_fptr_1363"(i8* %"$$BoolUtils.andb_163_envptr_1364", %TName_Bool* %"$$res__53_1365")
  store %TName_Bool* %"$$BoolUtils.andb_163_call_1366", %TName_Bool** %"$BoolUtils.andb_164", align 8
  %"$$BoolUtils.andb_164_1367" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_164", align 8
  store %TName_Bool* %"$$BoolUtils.andb_164_1367", %TName_Bool** %"$res_54", align 8
  %"$gasrem_1368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1369" = icmp ugt i64 1, %"$gasrem_1368"
  br i1 %"$gascmp_1369", label %"$out_of_gas_1370", label %"$have_gas_1371"

"$out_of_gas_1370":                               ; preds = %"$have_gas_1355"
  call void @_out_of_gas()
  br label %"$have_gas_1371"

"$have_gas_1371":                                 ; preds = %"$out_of_gas_1370", %"$have_gas_1355"
  %"$consume_1372" = sub i64 %"$gasrem_1368", 1
  store i64 %"$consume_1372", i64* @_gasrem, align 8
  %"$p_55" = alloca %Int64, align 8
  %"$p3_1373" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1374" = extractvalue %Uint32 %"$p3_1373", 0
  %"$valueof_1375" = zext i32 %"$valueof_1374" to i64
  %"$gaslogof_1376" = uitofp i64 %"$valueof_1375" to double
  %"$gaslogof_1377" = fadd double %"$gaslogof_1376", 1.000000e+00
  %"$gaslogof_1378" = call double @llvm.log.f64(double %"$gaslogof_1377")
  %"$gaslogof_1379" = fptoui double %"$gaslogof_1378" to i64
  %"$gaslogof_1380" = add i64 %"$gaslogof_1379", 1
  %"$gasmul_1381" = mul i64 20, %"$gaslogof_1380"
  %"$gasrem_1382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1383" = icmp ugt i64 %"$gasmul_1381", %"$gasrem_1382"
  br i1 %"$gascmp_1383", label %"$out_of_gas_1384", label %"$have_gas_1385"

"$out_of_gas_1384":                               ; preds = %"$have_gas_1371"
  call void @_out_of_gas()
  br label %"$have_gas_1385"

"$have_gas_1385":                                 ; preds = %"$out_of_gas_1384", %"$have_gas_1371"
  %"$consume_1386" = sub i64 %"$gasrem_1382", %"$gasmul_1381"
  store i64 %"$consume_1386", i64* @_gasrem, align 8
  %"$t4_1387" = load %Int64, %Int64* %t4, align 8
  %"$p3_1388" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1389" = call %Int64 @_pow_Int64(%Int64 %"$t4_1387", %Uint32 %"$p3_1388")
  store %Int64 %"$pow_call_1389", %Int64* %"$p_55", align 8
  %"$gasrem_1390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1391" = icmp ugt i64 1, %"$gasrem_1390"
  br i1 %"$gascmp_1391", label %"$out_of_gas_1392", label %"$have_gas_1393"

"$out_of_gas_1392":                               ; preds = %"$have_gas_1385"
  call void @_out_of_gas()
  br label %"$have_gas_1393"

"$have_gas_1393":                                 ; preds = %"$out_of_gas_1392", %"$have_gas_1385"
  %"$consume_1394" = sub i64 %"$gasrem_1390", 1
  store i64 %"$consume_1394", i64* @_gasrem, align 8
  %"$res_58" = alloca %TName_Bool*, align 8
  %"$gasrem_1395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1396" = icmp ugt i64 1, %"$gasrem_1395"
  br i1 %"$gascmp_1396", label %"$out_of_gas_1397", label %"$have_gas_1398"

"$out_of_gas_1397":                               ; preds = %"$have_gas_1393"
  call void @_out_of_gas()
  br label %"$have_gas_1398"

"$have_gas_1398":                                 ; preds = %"$out_of_gas_1397", %"$have_gas_1393"
  %"$consume_1399" = sub i64 %"$gasrem_1395", 1
  store i64 %"$consume_1399", i64* @_gasrem, align 8
  %"$ans_56" = alloca %Int64, align 8
  %"$gasrem_1400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1401" = icmp ugt i64 1, %"$gasrem_1400"
  br i1 %"$gascmp_1401", label %"$out_of_gas_1402", label %"$have_gas_1403"

"$out_of_gas_1402":                               ; preds = %"$have_gas_1398"
  call void @_out_of_gas()
  br label %"$have_gas_1403"

"$have_gas_1403":                                 ; preds = %"$out_of_gas_1402", %"$have_gas_1398"
  %"$consume_1404" = sub i64 %"$gasrem_1400", 1
  store i64 %"$consume_1404", i64* @_gasrem, align 8
  store %Int64 { i64 104060401 }, %Int64* %"$ans_56", align 8
  %"$gasrem_1405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1406" = icmp ugt i64 1, %"$gasrem_1405"
  br i1 %"$gascmp_1406", label %"$out_of_gas_1407", label %"$have_gas_1408"

"$out_of_gas_1407":                               ; preds = %"$have_gas_1403"
  call void @_out_of_gas()
  br label %"$have_gas_1408"

"$have_gas_1408":                                 ; preds = %"$out_of_gas_1407", %"$have_gas_1403"
  %"$consume_1409" = sub i64 %"$gasrem_1405", 1
  store i64 %"$consume_1409", i64* @_gasrem, align 8
  %"$res__57" = alloca %TName_Bool*, align 8
  %"$gasrem_1410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1411" = icmp ugt i64 4, %"$gasrem_1410"
  br i1 %"$gascmp_1411", label %"$out_of_gas_1412", label %"$have_gas_1413"

"$out_of_gas_1412":                               ; preds = %"$have_gas_1408"
  call void @_out_of_gas()
  br label %"$have_gas_1413"

"$have_gas_1413":                                 ; preds = %"$out_of_gas_1412", %"$have_gas_1408"
  %"$consume_1414" = sub i64 %"$gasrem_1410", 4
  store i64 %"$consume_1414", i64* @_gasrem, align 8
  %"$execptr_load_1415" = load i8*, i8** @_execptr, align 8
  %"$$p_55_1416" = load %Int64, %Int64* %"$p_55", align 8
  %"$$ans_56_1417" = load %Int64, %Int64* %"$ans_56", align 8
  %"$eq_call_1418" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1415", %Int64 %"$$p_55_1416", %Int64 %"$$ans_56_1417")
  store %TName_Bool* %"$eq_call_1418", %TName_Bool** %"$res__57", align 8
  %"$gasrem_1420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1421" = icmp ugt i64 1, %"$gasrem_1420"
  br i1 %"$gascmp_1421", label %"$out_of_gas_1422", label %"$have_gas_1423"

"$out_of_gas_1422":                               ; preds = %"$have_gas_1413"
  call void @_out_of_gas()
  br label %"$have_gas_1423"

"$have_gas_1423":                                 ; preds = %"$out_of_gas_1422", %"$have_gas_1413"
  %"$consume_1424" = sub i64 %"$gasrem_1420", 1
  store i64 %"$consume_1424", i64* @_gasrem, align 8
  %"$BoolUtils.andb_165" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1425" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1426" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1425", 0
  %"$BoolUtils.andb_envptr_1427" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1425", 1
  %"$$res_54_1428" = load %TName_Bool*, %TName_Bool** %"$res_54", align 8
  %"$BoolUtils.andb_call_1429" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1426"(i8* %"$BoolUtils.andb_envptr_1427", %TName_Bool* %"$$res_54_1428")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1429", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$BoolUtils.andb_166" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_165_1430" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$$BoolUtils.andb_165_fptr_1431" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1430", 0
  %"$$BoolUtils.andb_165_envptr_1432" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1430", 1
  %"$$res__57_1433" = load %TName_Bool*, %TName_Bool** %"$res__57", align 8
  %"$$BoolUtils.andb_165_call_1434" = call %TName_Bool* %"$$BoolUtils.andb_165_fptr_1431"(i8* %"$$BoolUtils.andb_165_envptr_1432", %TName_Bool* %"$$res__57_1433")
  store %TName_Bool* %"$$BoolUtils.andb_165_call_1434", %TName_Bool** %"$BoolUtils.andb_166", align 8
  %"$$BoolUtils.andb_166_1435" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_166", align 8
  store %TName_Bool* %"$$BoolUtils.andb_166_1435", %TName_Bool** %"$res_58", align 8
  %"$gasrem_1436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1437" = icmp ugt i64 1, %"$gasrem_1436"
  br i1 %"$gascmp_1437", label %"$out_of_gas_1438", label %"$have_gas_1439"

"$out_of_gas_1438":                               ; preds = %"$have_gas_1423"
  call void @_out_of_gas()
  br label %"$have_gas_1439"

"$have_gas_1439":                                 ; preds = %"$out_of_gas_1438", %"$have_gas_1423"
  %"$consume_1440" = sub i64 %"$gasrem_1436", 1
  store i64 %"$consume_1440", i64* @_gasrem, align 8
  %"$p_59" = alloca %Uint128, align 8
  %"$p1_1441" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1442" = extractvalue %Uint32 %"$p1_1441", 0
  %"$valueof_1443" = zext i32 %"$valueof_1442" to i64
  %"$gaslogof_1444" = uitofp i64 %"$valueof_1443" to double
  %"$gaslogof_1445" = fadd double %"$gaslogof_1444", 1.000000e+00
  %"$gaslogof_1446" = call double @llvm.log.f64(double %"$gaslogof_1445")
  %"$gaslogof_1447" = fptoui double %"$gaslogof_1446" to i64
  %"$gaslogof_1448" = add i64 %"$gaslogof_1447", 1
  %"$gasmul_1449" = mul i64 20, %"$gaslogof_1448"
  %"$gasmul_1450" = mul i64 %"$gasmul_1449", 2
  %"$gasrem_1451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1452" = icmp ugt i64 %"$gasmul_1450", %"$gasrem_1451"
  br i1 %"$gascmp_1452", label %"$out_of_gas_1453", label %"$have_gas_1454"

"$out_of_gas_1453":                               ; preds = %"$have_gas_1439"
  call void @_out_of_gas()
  br label %"$have_gas_1454"

"$have_gas_1454":                                 ; preds = %"$out_of_gas_1453", %"$have_gas_1439"
  %"$consume_1455" = sub i64 %"$gasrem_1451", %"$gasmul_1450"
  store i64 %"$consume_1455", i64* @_gasrem, align 8
  %"$t5_1456" = load %Uint128, %Uint128* %t5, align 8
  %"$p1_1457" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1458" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1456", %Uint32 %"$p1_1457")
  store %Uint128 %"$pow_call_1458", %Uint128* %"$p_59", align 8
  %"$gasrem_1459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1460" = icmp ugt i64 1, %"$gasrem_1459"
  br i1 %"$gascmp_1460", label %"$out_of_gas_1461", label %"$have_gas_1462"

"$out_of_gas_1461":                               ; preds = %"$have_gas_1454"
  call void @_out_of_gas()
  br label %"$have_gas_1462"

"$have_gas_1462":                                 ; preds = %"$out_of_gas_1461", %"$have_gas_1454"
  %"$consume_1463" = sub i64 %"$gasrem_1459", 1
  store i64 %"$consume_1463", i64* @_gasrem, align 8
  %"$res_62" = alloca %TName_Bool*, align 8
  %"$gasrem_1464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1465" = icmp ugt i64 1, %"$gasrem_1464"
  br i1 %"$gascmp_1465", label %"$out_of_gas_1466", label %"$have_gas_1467"

"$out_of_gas_1466":                               ; preds = %"$have_gas_1462"
  call void @_out_of_gas()
  br label %"$have_gas_1467"

"$have_gas_1467":                                 ; preds = %"$out_of_gas_1466", %"$have_gas_1462"
  %"$consume_1468" = sub i64 %"$gasrem_1464", 1
  store i64 %"$consume_1468", i64* @_gasrem, align 8
  %"$ans_60" = alloca %Uint128, align 8
  %"$gasrem_1469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1470" = icmp ugt i64 1, %"$gasrem_1469"
  br i1 %"$gascmp_1470", label %"$out_of_gas_1471", label %"$have_gas_1472"

"$out_of_gas_1471":                               ; preds = %"$have_gas_1467"
  call void @_out_of_gas()
  br label %"$have_gas_1472"

"$have_gas_1472":                                 ; preds = %"$out_of_gas_1471", %"$have_gas_1467"
  %"$consume_1473" = sub i64 %"$gasrem_1469", 1
  store i64 %"$consume_1473", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %"$ans_60", align 8
  %"$gasrem_1474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1475" = icmp ugt i64 1, %"$gasrem_1474"
  br i1 %"$gascmp_1475", label %"$out_of_gas_1476", label %"$have_gas_1477"

"$out_of_gas_1476":                               ; preds = %"$have_gas_1472"
  call void @_out_of_gas()
  br label %"$have_gas_1477"

"$have_gas_1477":                                 ; preds = %"$out_of_gas_1476", %"$have_gas_1472"
  %"$consume_1478" = sub i64 %"$gasrem_1474", 1
  store i64 %"$consume_1478", i64* @_gasrem, align 8
  %"$res__61" = alloca %TName_Bool*, align 8
  %"$gasrem_1480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1481" = icmp ugt i64 8, %"$gasrem_1480"
  br i1 %"$gascmp_1481", label %"$out_of_gas_1482", label %"$have_gas_1483"

"$out_of_gas_1482":                               ; preds = %"$have_gas_1477"
  call void @_out_of_gas()
  br label %"$have_gas_1483"

"$have_gas_1483":                                 ; preds = %"$out_of_gas_1482", %"$have_gas_1477"
  %"$consume_1484" = sub i64 %"$gasrem_1480", 8
  store i64 %"$consume_1484", i64* @_gasrem, align 8
  %"$execptr_load_1485" = load i8*, i8** @_execptr, align 8
  %"$$p_59_1486" = load %Uint128, %Uint128* %"$p_59", align 8
  %"$$ans_60_1487" = load %Uint128, %Uint128* %"$ans_60", align 8
  %"$eq_call_1488" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1485", %Uint128 %"$$p_59_1486", %Uint128 %"$$ans_60_1487")
  store %TName_Bool* %"$eq_call_1488", %TName_Bool** %"$res__61", align 8
  %"$gasrem_1490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1491" = icmp ugt i64 1, %"$gasrem_1490"
  br i1 %"$gascmp_1491", label %"$out_of_gas_1492", label %"$have_gas_1493"

"$out_of_gas_1492":                               ; preds = %"$have_gas_1483"
  call void @_out_of_gas()
  br label %"$have_gas_1493"

"$have_gas_1493":                                 ; preds = %"$out_of_gas_1492", %"$have_gas_1483"
  %"$consume_1494" = sub i64 %"$gasrem_1490", 1
  store i64 %"$consume_1494", i64* @_gasrem, align 8
  %"$BoolUtils.andb_167" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1495" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1496" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1495", 0
  %"$BoolUtils.andb_envptr_1497" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1495", 1
  %"$$res_58_1498" = load %TName_Bool*, %TName_Bool** %"$res_58", align 8
  %"$BoolUtils.andb_call_1499" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1496"(i8* %"$BoolUtils.andb_envptr_1497", %TName_Bool* %"$$res_58_1498")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1499", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$BoolUtils.andb_168" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_167_1500" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$$BoolUtils.andb_167_fptr_1501" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1500", 0
  %"$$BoolUtils.andb_167_envptr_1502" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1500", 1
  %"$$res__61_1503" = load %TName_Bool*, %TName_Bool** %"$res__61", align 8
  %"$$BoolUtils.andb_167_call_1504" = call %TName_Bool* %"$$BoolUtils.andb_167_fptr_1501"(i8* %"$$BoolUtils.andb_167_envptr_1502", %TName_Bool* %"$$res__61_1503")
  store %TName_Bool* %"$$BoolUtils.andb_167_call_1504", %TName_Bool** %"$BoolUtils.andb_168", align 8
  %"$$BoolUtils.andb_168_1505" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_168", align 8
  store %TName_Bool* %"$$BoolUtils.andb_168_1505", %TName_Bool** %"$res_62", align 8
  %"$gasrem_1506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1507" = icmp ugt i64 1, %"$gasrem_1506"
  br i1 %"$gascmp_1507", label %"$out_of_gas_1508", label %"$have_gas_1509"

"$out_of_gas_1508":                               ; preds = %"$have_gas_1493"
  call void @_out_of_gas()
  br label %"$have_gas_1509"

"$have_gas_1509":                                 ; preds = %"$out_of_gas_1508", %"$have_gas_1493"
  %"$consume_1510" = sub i64 %"$gasrem_1506", 1
  store i64 %"$consume_1510", i64* @_gasrem, align 8
  %"$p_63" = alloca %Uint128, align 8
  %"$p2_1511" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1512" = extractvalue %Uint32 %"$p2_1511", 0
  %"$valueof_1513" = zext i32 %"$valueof_1512" to i64
  %"$gaslogof_1514" = uitofp i64 %"$valueof_1513" to double
  %"$gaslogof_1515" = fadd double %"$gaslogof_1514", 1.000000e+00
  %"$gaslogof_1516" = call double @llvm.log.f64(double %"$gaslogof_1515")
  %"$gaslogof_1517" = fptoui double %"$gaslogof_1516" to i64
  %"$gaslogof_1518" = add i64 %"$gaslogof_1517", 1
  %"$gasmul_1519" = mul i64 20, %"$gaslogof_1518"
  %"$gasmul_1520" = mul i64 %"$gasmul_1519", 2
  %"$gasrem_1521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1522" = icmp ugt i64 %"$gasmul_1520", %"$gasrem_1521"
  br i1 %"$gascmp_1522", label %"$out_of_gas_1523", label %"$have_gas_1524"

"$out_of_gas_1523":                               ; preds = %"$have_gas_1509"
  call void @_out_of_gas()
  br label %"$have_gas_1524"

"$have_gas_1524":                                 ; preds = %"$out_of_gas_1523", %"$have_gas_1509"
  %"$consume_1525" = sub i64 %"$gasrem_1521", %"$gasmul_1520"
  store i64 %"$consume_1525", i64* @_gasrem, align 8
  %"$t5_1526" = load %Uint128, %Uint128* %t5, align 8
  %"$p2_1527" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1528" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1526", %Uint32 %"$p2_1527")
  store %Uint128 %"$pow_call_1528", %Uint128* %"$p_63", align 8
  %"$gasrem_1529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1530" = icmp ugt i64 1, %"$gasrem_1529"
  br i1 %"$gascmp_1530", label %"$out_of_gas_1531", label %"$have_gas_1532"

"$out_of_gas_1531":                               ; preds = %"$have_gas_1524"
  call void @_out_of_gas()
  br label %"$have_gas_1532"

"$have_gas_1532":                                 ; preds = %"$out_of_gas_1531", %"$have_gas_1524"
  %"$consume_1533" = sub i64 %"$gasrem_1529", 1
  store i64 %"$consume_1533", i64* @_gasrem, align 8
  %"$res_66" = alloca %TName_Bool*, align 8
  %"$gasrem_1534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1535" = icmp ugt i64 1, %"$gasrem_1534"
  br i1 %"$gascmp_1535", label %"$out_of_gas_1536", label %"$have_gas_1537"

"$out_of_gas_1536":                               ; preds = %"$have_gas_1532"
  call void @_out_of_gas()
  br label %"$have_gas_1537"

"$have_gas_1537":                                 ; preds = %"$out_of_gas_1536", %"$have_gas_1532"
  %"$consume_1538" = sub i64 %"$gasrem_1534", 1
  store i64 %"$consume_1538", i64* @_gasrem, align 8
  %"$ans_64" = alloca %Uint128, align 8
  %"$gasrem_1539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1540" = icmp ugt i64 1, %"$gasrem_1539"
  br i1 %"$gascmp_1540", label %"$out_of_gas_1541", label %"$have_gas_1542"

"$out_of_gas_1541":                               ; preds = %"$have_gas_1537"
  call void @_out_of_gas()
  br label %"$have_gas_1542"

"$have_gas_1542":                                 ; preds = %"$out_of_gas_1541", %"$have_gas_1537"
  %"$consume_1543" = sub i64 %"$gasrem_1539", 1
  store i64 %"$consume_1543", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %"$ans_64", align 8
  %"$gasrem_1544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1545" = icmp ugt i64 1, %"$gasrem_1544"
  br i1 %"$gascmp_1545", label %"$out_of_gas_1546", label %"$have_gas_1547"

"$out_of_gas_1546":                               ; preds = %"$have_gas_1542"
  call void @_out_of_gas()
  br label %"$have_gas_1547"

"$have_gas_1547":                                 ; preds = %"$out_of_gas_1546", %"$have_gas_1542"
  %"$consume_1548" = sub i64 %"$gasrem_1544", 1
  store i64 %"$consume_1548", i64* @_gasrem, align 8
  %"$res__65" = alloca %TName_Bool*, align 8
  %"$gasrem_1550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1551" = icmp ugt i64 8, %"$gasrem_1550"
  br i1 %"$gascmp_1551", label %"$out_of_gas_1552", label %"$have_gas_1553"

"$out_of_gas_1552":                               ; preds = %"$have_gas_1547"
  call void @_out_of_gas()
  br label %"$have_gas_1553"

"$have_gas_1553":                                 ; preds = %"$out_of_gas_1552", %"$have_gas_1547"
  %"$consume_1554" = sub i64 %"$gasrem_1550", 8
  store i64 %"$consume_1554", i64* @_gasrem, align 8
  %"$execptr_load_1555" = load i8*, i8** @_execptr, align 8
  %"$$p_63_1556" = load %Uint128, %Uint128* %"$p_63", align 8
  %"$$ans_64_1557" = load %Uint128, %Uint128* %"$ans_64", align 8
  %"$eq_call_1558" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1555", %Uint128 %"$$p_63_1556", %Uint128 %"$$ans_64_1557")
  store %TName_Bool* %"$eq_call_1558", %TName_Bool** %"$res__65", align 8
  %"$gasrem_1560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1561" = icmp ugt i64 1, %"$gasrem_1560"
  br i1 %"$gascmp_1561", label %"$out_of_gas_1562", label %"$have_gas_1563"

"$out_of_gas_1562":                               ; preds = %"$have_gas_1553"
  call void @_out_of_gas()
  br label %"$have_gas_1563"

"$have_gas_1563":                                 ; preds = %"$out_of_gas_1562", %"$have_gas_1553"
  %"$consume_1564" = sub i64 %"$gasrem_1560", 1
  store i64 %"$consume_1564", i64* @_gasrem, align 8
  %"$BoolUtils.andb_169" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1565" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1566" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1565", 0
  %"$BoolUtils.andb_envptr_1567" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1565", 1
  %"$$res_62_1568" = load %TName_Bool*, %TName_Bool** %"$res_62", align 8
  %"$BoolUtils.andb_call_1569" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1566"(i8* %"$BoolUtils.andb_envptr_1567", %TName_Bool* %"$$res_62_1568")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1569", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8
  %"$BoolUtils.andb_170" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_169_1570" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8
  %"$$BoolUtils.andb_169_fptr_1571" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1570", 0
  %"$$BoolUtils.andb_169_envptr_1572" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1570", 1
  %"$$res__65_1573" = load %TName_Bool*, %TName_Bool** %"$res__65", align 8
  %"$$BoolUtils.andb_169_call_1574" = call %TName_Bool* %"$$BoolUtils.andb_169_fptr_1571"(i8* %"$$BoolUtils.andb_169_envptr_1572", %TName_Bool* %"$$res__65_1573")
  store %TName_Bool* %"$$BoolUtils.andb_169_call_1574", %TName_Bool** %"$BoolUtils.andb_170", align 8
  %"$$BoolUtils.andb_170_1575" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_170", align 8
  store %TName_Bool* %"$$BoolUtils.andb_170_1575", %TName_Bool** %"$res_66", align 8
  %"$gasrem_1576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1577" = icmp ugt i64 1, %"$gasrem_1576"
  br i1 %"$gascmp_1577", label %"$out_of_gas_1578", label %"$have_gas_1579"

"$out_of_gas_1578":                               ; preds = %"$have_gas_1563"
  call void @_out_of_gas()
  br label %"$have_gas_1579"

"$have_gas_1579":                                 ; preds = %"$out_of_gas_1578", %"$have_gas_1563"
  %"$consume_1580" = sub i64 %"$gasrem_1576", 1
  store i64 %"$consume_1580", i64* @_gasrem, align 8
  %"$p_67" = alloca %Uint128, align 8
  %"$p3_1581" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1582" = extractvalue %Uint32 %"$p3_1581", 0
  %"$valueof_1583" = zext i32 %"$valueof_1582" to i64
  %"$gaslogof_1584" = uitofp i64 %"$valueof_1583" to double
  %"$gaslogof_1585" = fadd double %"$gaslogof_1584", 1.000000e+00
  %"$gaslogof_1586" = call double @llvm.log.f64(double %"$gaslogof_1585")
  %"$gaslogof_1587" = fptoui double %"$gaslogof_1586" to i64
  %"$gaslogof_1588" = add i64 %"$gaslogof_1587", 1
  %"$gasmul_1589" = mul i64 20, %"$gaslogof_1588"
  %"$gasmul_1590" = mul i64 %"$gasmul_1589", 2
  %"$gasrem_1591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1592" = icmp ugt i64 %"$gasmul_1590", %"$gasrem_1591"
  br i1 %"$gascmp_1592", label %"$out_of_gas_1593", label %"$have_gas_1594"

"$out_of_gas_1593":                               ; preds = %"$have_gas_1579"
  call void @_out_of_gas()
  br label %"$have_gas_1594"

"$have_gas_1594":                                 ; preds = %"$out_of_gas_1593", %"$have_gas_1579"
  %"$consume_1595" = sub i64 %"$gasrem_1591", %"$gasmul_1590"
  store i64 %"$consume_1595", i64* @_gasrem, align 8
  %"$t5_1596" = load %Uint128, %Uint128* %t5, align 8
  %"$p3_1597" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1598" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1596", %Uint32 %"$p3_1597")
  store %Uint128 %"$pow_call_1598", %Uint128* %"$p_67", align 8
  %"$gasrem_1599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1600" = icmp ugt i64 1, %"$gasrem_1599"
  br i1 %"$gascmp_1600", label %"$out_of_gas_1601", label %"$have_gas_1602"

"$out_of_gas_1601":                               ; preds = %"$have_gas_1594"
  call void @_out_of_gas()
  br label %"$have_gas_1602"

"$have_gas_1602":                                 ; preds = %"$out_of_gas_1601", %"$have_gas_1594"
  %"$consume_1603" = sub i64 %"$gasrem_1599", 1
  store i64 %"$consume_1603", i64* @_gasrem, align 8
  %"$res_70" = alloca %TName_Bool*, align 8
  %"$gasrem_1604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1605" = icmp ugt i64 1, %"$gasrem_1604"
  br i1 %"$gascmp_1605", label %"$out_of_gas_1606", label %"$have_gas_1607"

"$out_of_gas_1606":                               ; preds = %"$have_gas_1602"
  call void @_out_of_gas()
  br label %"$have_gas_1607"

"$have_gas_1607":                                 ; preds = %"$out_of_gas_1606", %"$have_gas_1602"
  %"$consume_1608" = sub i64 %"$gasrem_1604", 1
  store i64 %"$consume_1608", i64* @_gasrem, align 8
  %"$ans_68" = alloca %Uint128, align 8
  %"$gasrem_1609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1610" = icmp ugt i64 1, %"$gasrem_1609"
  br i1 %"$gascmp_1610", label %"$out_of_gas_1611", label %"$have_gas_1612"

"$out_of_gas_1611":                               ; preds = %"$have_gas_1607"
  call void @_out_of_gas()
  br label %"$have_gas_1612"

"$have_gas_1612":                                 ; preds = %"$out_of_gas_1611", %"$have_gas_1607"
  %"$consume_1613" = sub i64 %"$gasrem_1609", 1
  store i64 %"$consume_1613", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000 }, %Uint128* %"$ans_68", align 8
  %"$gasrem_1614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1615" = icmp ugt i64 1, %"$gasrem_1614"
  br i1 %"$gascmp_1615", label %"$out_of_gas_1616", label %"$have_gas_1617"

"$out_of_gas_1616":                               ; preds = %"$have_gas_1612"
  call void @_out_of_gas()
  br label %"$have_gas_1617"

"$have_gas_1617":                                 ; preds = %"$out_of_gas_1616", %"$have_gas_1612"
  %"$consume_1618" = sub i64 %"$gasrem_1614", 1
  store i64 %"$consume_1618", i64* @_gasrem, align 8
  %"$res__69" = alloca %TName_Bool*, align 8
  %"$gasrem_1620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1621" = icmp ugt i64 8, %"$gasrem_1620"
  br i1 %"$gascmp_1621", label %"$out_of_gas_1622", label %"$have_gas_1623"

"$out_of_gas_1622":                               ; preds = %"$have_gas_1617"
  call void @_out_of_gas()
  br label %"$have_gas_1623"

"$have_gas_1623":                                 ; preds = %"$out_of_gas_1622", %"$have_gas_1617"
  %"$consume_1624" = sub i64 %"$gasrem_1620", 8
  store i64 %"$consume_1624", i64* @_gasrem, align 8
  %"$execptr_load_1625" = load i8*, i8** @_execptr, align 8
  %"$$p_67_1626" = load %Uint128, %Uint128* %"$p_67", align 8
  %"$$ans_68_1627" = load %Uint128, %Uint128* %"$ans_68", align 8
  %"$eq_call_1628" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1625", %Uint128 %"$$p_67_1626", %Uint128 %"$$ans_68_1627")
  store %TName_Bool* %"$eq_call_1628", %TName_Bool** %"$res__69", align 8
  %"$gasrem_1630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1631" = icmp ugt i64 1, %"$gasrem_1630"
  br i1 %"$gascmp_1631", label %"$out_of_gas_1632", label %"$have_gas_1633"

"$out_of_gas_1632":                               ; preds = %"$have_gas_1623"
  call void @_out_of_gas()
  br label %"$have_gas_1633"

"$have_gas_1633":                                 ; preds = %"$out_of_gas_1632", %"$have_gas_1623"
  %"$consume_1634" = sub i64 %"$gasrem_1630", 1
  store i64 %"$consume_1634", i64* @_gasrem, align 8
  %"$BoolUtils.andb_171" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1635" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1636" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1635", 0
  %"$BoolUtils.andb_envptr_1637" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1635", 1
  %"$$res_66_1638" = load %TName_Bool*, %TName_Bool** %"$res_66", align 8
  %"$BoolUtils.andb_call_1639" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1636"(i8* %"$BoolUtils.andb_envptr_1637", %TName_Bool* %"$$res_66_1638")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1639", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8
  %"$BoolUtils.andb_172" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_171_1640" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8
  %"$$BoolUtils.andb_171_fptr_1641" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1640", 0
  %"$$BoolUtils.andb_171_envptr_1642" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1640", 1
  %"$$res__69_1643" = load %TName_Bool*, %TName_Bool** %"$res__69", align 8
  %"$$BoolUtils.andb_171_call_1644" = call %TName_Bool* %"$$BoolUtils.andb_171_fptr_1641"(i8* %"$$BoolUtils.andb_171_envptr_1642", %TName_Bool* %"$$res__69_1643")
  store %TName_Bool* %"$$BoolUtils.andb_171_call_1644", %TName_Bool** %"$BoolUtils.andb_172", align 8
  %"$$BoolUtils.andb_172_1645" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_172", align 8
  store %TName_Bool* %"$$BoolUtils.andb_172_1645", %TName_Bool** %"$res_70", align 8
  %"$gasrem_1646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1647" = icmp ugt i64 1, %"$gasrem_1646"
  br i1 %"$gascmp_1647", label %"$out_of_gas_1648", label %"$have_gas_1649"

"$out_of_gas_1648":                               ; preds = %"$have_gas_1633"
  call void @_out_of_gas()
  br label %"$have_gas_1649"

"$have_gas_1649":                                 ; preds = %"$out_of_gas_1648", %"$have_gas_1633"
  %"$consume_1650" = sub i64 %"$gasrem_1646", 1
  store i64 %"$consume_1650", i64* @_gasrem, align 8
  %"$p_71" = alloca %Uint128, align 8
  %"$p4_1651" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_1652" = extractvalue %Uint32 %"$p4_1651", 0
  %"$valueof_1653" = zext i32 %"$valueof_1652" to i64
  %"$gaslogof_1654" = uitofp i64 %"$valueof_1653" to double
  %"$gaslogof_1655" = fadd double %"$gaslogof_1654", 1.000000e+00
  %"$gaslogof_1656" = call double @llvm.log.f64(double %"$gaslogof_1655")
  %"$gaslogof_1657" = fptoui double %"$gaslogof_1656" to i64
  %"$gaslogof_1658" = add i64 %"$gaslogof_1657", 1
  %"$gasmul_1659" = mul i64 20, %"$gaslogof_1658"
  %"$gasmul_1660" = mul i64 %"$gasmul_1659", 2
  %"$gasrem_1661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1662" = icmp ugt i64 %"$gasmul_1660", %"$gasrem_1661"
  br i1 %"$gascmp_1662", label %"$out_of_gas_1663", label %"$have_gas_1664"

"$out_of_gas_1663":                               ; preds = %"$have_gas_1649"
  call void @_out_of_gas()
  br label %"$have_gas_1664"

"$have_gas_1664":                                 ; preds = %"$out_of_gas_1663", %"$have_gas_1649"
  %"$consume_1665" = sub i64 %"$gasrem_1661", %"$gasmul_1660"
  store i64 %"$consume_1665", i64* @_gasrem, align 8
  %"$t5_1666" = load %Uint128, %Uint128* %t5, align 8
  %"$p4_1667" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1668" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1666", %Uint32 %"$p4_1667")
  store %Uint128 %"$pow_call_1668", %Uint128* %"$p_71", align 8
  %"$gasrem_1669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1670" = icmp ugt i64 1, %"$gasrem_1669"
  br i1 %"$gascmp_1670", label %"$out_of_gas_1671", label %"$have_gas_1672"

"$out_of_gas_1671":                               ; preds = %"$have_gas_1664"
  call void @_out_of_gas()
  br label %"$have_gas_1672"

"$have_gas_1672":                                 ; preds = %"$out_of_gas_1671", %"$have_gas_1664"
  %"$consume_1673" = sub i64 %"$gasrem_1669", 1
  store i64 %"$consume_1673", i64* @_gasrem, align 8
  %"$res_74" = alloca %TName_Bool*, align 8
  %"$gasrem_1674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1675" = icmp ugt i64 1, %"$gasrem_1674"
  br i1 %"$gascmp_1675", label %"$out_of_gas_1676", label %"$have_gas_1677"

"$out_of_gas_1676":                               ; preds = %"$have_gas_1672"
  call void @_out_of_gas()
  br label %"$have_gas_1677"

"$have_gas_1677":                                 ; preds = %"$out_of_gas_1676", %"$have_gas_1672"
  %"$consume_1678" = sub i64 %"$gasrem_1674", 1
  store i64 %"$consume_1678", i64* @_gasrem, align 8
  %"$ans_72" = alloca %Uint128, align 8
  %"$gasrem_1679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1680" = icmp ugt i64 1, %"$gasrem_1679"
  br i1 %"$gascmp_1680", label %"$out_of_gas_1681", label %"$have_gas_1682"

"$out_of_gas_1681":                               ; preds = %"$have_gas_1677"
  call void @_out_of_gas()
  br label %"$have_gas_1682"

"$have_gas_1682":                                 ; preds = %"$out_of_gas_1681", %"$have_gas_1677"
  %"$consume_1683" = sub i64 %"$gasrem_1679", 1
  store i64 %"$consume_1683", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000000000000000000000 }, %Uint128* %"$ans_72", align 8
  %"$gasrem_1684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1685" = icmp ugt i64 1, %"$gasrem_1684"
  br i1 %"$gascmp_1685", label %"$out_of_gas_1686", label %"$have_gas_1687"

"$out_of_gas_1686":                               ; preds = %"$have_gas_1682"
  call void @_out_of_gas()
  br label %"$have_gas_1687"

"$have_gas_1687":                                 ; preds = %"$out_of_gas_1686", %"$have_gas_1682"
  %"$consume_1688" = sub i64 %"$gasrem_1684", 1
  store i64 %"$consume_1688", i64* @_gasrem, align 8
  %"$res__73" = alloca %TName_Bool*, align 8
  %"$gasrem_1690" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1691" = icmp ugt i64 8, %"$gasrem_1690"
  br i1 %"$gascmp_1691", label %"$out_of_gas_1692", label %"$have_gas_1693"

"$out_of_gas_1692":                               ; preds = %"$have_gas_1687"
  call void @_out_of_gas()
  br label %"$have_gas_1693"

"$have_gas_1693":                                 ; preds = %"$out_of_gas_1692", %"$have_gas_1687"
  %"$consume_1694" = sub i64 %"$gasrem_1690", 8
  store i64 %"$consume_1694", i64* @_gasrem, align 8
  %"$execptr_load_1695" = load i8*, i8** @_execptr, align 8
  %"$$p_71_1696" = load %Uint128, %Uint128* %"$p_71", align 8
  %"$$ans_72_1697" = load %Uint128, %Uint128* %"$ans_72", align 8
  %"$eq_call_1698" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1695", %Uint128 %"$$p_71_1696", %Uint128 %"$$ans_72_1697")
  store %TName_Bool* %"$eq_call_1698", %TName_Bool** %"$res__73", align 8
  %"$gasrem_1700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1701" = icmp ugt i64 1, %"$gasrem_1700"
  br i1 %"$gascmp_1701", label %"$out_of_gas_1702", label %"$have_gas_1703"

"$out_of_gas_1702":                               ; preds = %"$have_gas_1693"
  call void @_out_of_gas()
  br label %"$have_gas_1703"

"$have_gas_1703":                                 ; preds = %"$out_of_gas_1702", %"$have_gas_1693"
  %"$consume_1704" = sub i64 %"$gasrem_1700", 1
  store i64 %"$consume_1704", i64* @_gasrem, align 8
  %"$BoolUtils.andb_173" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1705" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1706" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1705", 0
  %"$BoolUtils.andb_envptr_1707" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1705", 1
  %"$$res_70_1708" = load %TName_Bool*, %TName_Bool** %"$res_70", align 8
  %"$BoolUtils.andb_call_1709" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1706"(i8* %"$BoolUtils.andb_envptr_1707", %TName_Bool* %"$$res_70_1708")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1709", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8
  %"$BoolUtils.andb_174" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_173_1710" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8
  %"$$BoolUtils.andb_173_fptr_1711" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1710", 0
  %"$$BoolUtils.andb_173_envptr_1712" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1710", 1
  %"$$res__73_1713" = load %TName_Bool*, %TName_Bool** %"$res__73", align 8
  %"$$BoolUtils.andb_173_call_1714" = call %TName_Bool* %"$$BoolUtils.andb_173_fptr_1711"(i8* %"$$BoolUtils.andb_173_envptr_1712", %TName_Bool* %"$$res__73_1713")
  store %TName_Bool* %"$$BoolUtils.andb_173_call_1714", %TName_Bool** %"$BoolUtils.andb_174", align 8
  %"$$BoolUtils.andb_174_1715" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_174", align 8
  store %TName_Bool* %"$$BoolUtils.andb_174_1715", %TName_Bool** %"$res_74", align 8
  %"$gasrem_1716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1717" = icmp ugt i64 1, %"$gasrem_1716"
  br i1 %"$gascmp_1717", label %"$out_of_gas_1718", label %"$have_gas_1719"

"$out_of_gas_1718":                               ; preds = %"$have_gas_1703"
  call void @_out_of_gas()
  br label %"$have_gas_1719"

"$have_gas_1719":                                 ; preds = %"$out_of_gas_1718", %"$have_gas_1703"
  %"$consume_1720" = sub i64 %"$gasrem_1716", 1
  store i64 %"$consume_1720", i64* @_gasrem, align 8
  %"$p_75" = alloca %Int128, align 8
  %"$p1_1721" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1722" = extractvalue %Uint32 %"$p1_1721", 0
  %"$valueof_1723" = zext i32 %"$valueof_1722" to i64
  %"$gaslogof_1724" = uitofp i64 %"$valueof_1723" to double
  %"$gaslogof_1725" = fadd double %"$gaslogof_1724", 1.000000e+00
  %"$gaslogof_1726" = call double @llvm.log.f64(double %"$gaslogof_1725")
  %"$gaslogof_1727" = fptoui double %"$gaslogof_1726" to i64
  %"$gaslogof_1728" = add i64 %"$gaslogof_1727", 1
  %"$gasmul_1729" = mul i64 20, %"$gaslogof_1728"
  %"$gasmul_1730" = mul i64 %"$gasmul_1729", 2
  %"$gasrem_1731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1732" = icmp ugt i64 %"$gasmul_1730", %"$gasrem_1731"
  br i1 %"$gascmp_1732", label %"$out_of_gas_1733", label %"$have_gas_1734"

"$out_of_gas_1733":                               ; preds = %"$have_gas_1719"
  call void @_out_of_gas()
  br label %"$have_gas_1734"

"$have_gas_1734":                                 ; preds = %"$out_of_gas_1733", %"$have_gas_1719"
  %"$consume_1735" = sub i64 %"$gasrem_1731", %"$gasmul_1730"
  store i64 %"$consume_1735", i64* @_gasrem, align 8
  %"$t6_1736" = load %Int128, %Int128* %t6, align 8
  %"$p1_1737" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1738" = call %Int128 @_pow_Int128(%Int128 %"$t6_1736", %Uint32 %"$p1_1737")
  store %Int128 %"$pow_call_1738", %Int128* %"$p_75", align 8
  %"$gasrem_1739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1740" = icmp ugt i64 1, %"$gasrem_1739"
  br i1 %"$gascmp_1740", label %"$out_of_gas_1741", label %"$have_gas_1742"

"$out_of_gas_1741":                               ; preds = %"$have_gas_1734"
  call void @_out_of_gas()
  br label %"$have_gas_1742"

"$have_gas_1742":                                 ; preds = %"$out_of_gas_1741", %"$have_gas_1734"
  %"$consume_1743" = sub i64 %"$gasrem_1739", 1
  store i64 %"$consume_1743", i64* @_gasrem, align 8
  %"$res_78" = alloca %TName_Bool*, align 8
  %"$gasrem_1744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1745" = icmp ugt i64 1, %"$gasrem_1744"
  br i1 %"$gascmp_1745", label %"$out_of_gas_1746", label %"$have_gas_1747"

"$out_of_gas_1746":                               ; preds = %"$have_gas_1742"
  call void @_out_of_gas()
  br label %"$have_gas_1747"

"$have_gas_1747":                                 ; preds = %"$out_of_gas_1746", %"$have_gas_1742"
  %"$consume_1748" = sub i64 %"$gasrem_1744", 1
  store i64 %"$consume_1748", i64* @_gasrem, align 8
  %"$ans_76" = alloca %Int128, align 8
  %"$gasrem_1749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1750" = icmp ugt i64 1, %"$gasrem_1749"
  br i1 %"$gascmp_1750", label %"$out_of_gas_1751", label %"$have_gas_1752"

"$out_of_gas_1751":                               ; preds = %"$have_gas_1747"
  call void @_out_of_gas()
  br label %"$have_gas_1752"

"$have_gas_1752":                                 ; preds = %"$out_of_gas_1751", %"$have_gas_1747"
  %"$consume_1753" = sub i64 %"$gasrem_1749", 1
  store i64 %"$consume_1753", i64* @_gasrem, align 8
  store %Int128 { i128 1 }, %Int128* %"$ans_76", align 8
  %"$gasrem_1754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1755" = icmp ugt i64 1, %"$gasrem_1754"
  br i1 %"$gascmp_1755", label %"$out_of_gas_1756", label %"$have_gas_1757"

"$out_of_gas_1756":                               ; preds = %"$have_gas_1752"
  call void @_out_of_gas()
  br label %"$have_gas_1757"

"$have_gas_1757":                                 ; preds = %"$out_of_gas_1756", %"$have_gas_1752"
  %"$consume_1758" = sub i64 %"$gasrem_1754", 1
  store i64 %"$consume_1758", i64* @_gasrem, align 8
  %"$res__77" = alloca %TName_Bool*, align 8
  %"$gasrem_1760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1761" = icmp ugt i64 8, %"$gasrem_1760"
  br i1 %"$gascmp_1761", label %"$out_of_gas_1762", label %"$have_gas_1763"

"$out_of_gas_1762":                               ; preds = %"$have_gas_1757"
  call void @_out_of_gas()
  br label %"$have_gas_1763"

"$have_gas_1763":                                 ; preds = %"$out_of_gas_1762", %"$have_gas_1757"
  %"$consume_1764" = sub i64 %"$gasrem_1760", 8
  store i64 %"$consume_1764", i64* @_gasrem, align 8
  %"$execptr_load_1765" = load i8*, i8** @_execptr, align 8
  %"$$p_75_1766" = load %Int128, %Int128* %"$p_75", align 8
  %"$$ans_76_1767" = load %Int128, %Int128* %"$ans_76", align 8
  %"$eq_call_1768" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1765", %Int128 %"$$p_75_1766", %Int128 %"$$ans_76_1767")
  store %TName_Bool* %"$eq_call_1768", %TName_Bool** %"$res__77", align 8
  %"$gasrem_1770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1771" = icmp ugt i64 1, %"$gasrem_1770"
  br i1 %"$gascmp_1771", label %"$out_of_gas_1772", label %"$have_gas_1773"

"$out_of_gas_1772":                               ; preds = %"$have_gas_1763"
  call void @_out_of_gas()
  br label %"$have_gas_1773"

"$have_gas_1773":                                 ; preds = %"$out_of_gas_1772", %"$have_gas_1763"
  %"$consume_1774" = sub i64 %"$gasrem_1770", 1
  store i64 %"$consume_1774", i64* @_gasrem, align 8
  %"$BoolUtils.andb_175" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1775" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1776" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1775", 0
  %"$BoolUtils.andb_envptr_1777" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1775", 1
  %"$$res_74_1778" = load %TName_Bool*, %TName_Bool** %"$res_74", align 8
  %"$BoolUtils.andb_call_1779" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1776"(i8* %"$BoolUtils.andb_envptr_1777", %TName_Bool* %"$$res_74_1778")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1779", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8
  %"$BoolUtils.andb_176" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_175_1780" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8
  %"$$BoolUtils.andb_175_fptr_1781" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1780", 0
  %"$$BoolUtils.andb_175_envptr_1782" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1780", 1
  %"$$res__77_1783" = load %TName_Bool*, %TName_Bool** %"$res__77", align 8
  %"$$BoolUtils.andb_175_call_1784" = call %TName_Bool* %"$$BoolUtils.andb_175_fptr_1781"(i8* %"$$BoolUtils.andb_175_envptr_1782", %TName_Bool* %"$$res__77_1783")
  store %TName_Bool* %"$$BoolUtils.andb_175_call_1784", %TName_Bool** %"$BoolUtils.andb_176", align 8
  %"$$BoolUtils.andb_176_1785" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_176", align 8
  store %TName_Bool* %"$$BoolUtils.andb_176_1785", %TName_Bool** %"$res_78", align 8
  %"$gasrem_1786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1787" = icmp ugt i64 1, %"$gasrem_1786"
  br i1 %"$gascmp_1787", label %"$out_of_gas_1788", label %"$have_gas_1789"

"$out_of_gas_1788":                               ; preds = %"$have_gas_1773"
  call void @_out_of_gas()
  br label %"$have_gas_1789"

"$have_gas_1789":                                 ; preds = %"$out_of_gas_1788", %"$have_gas_1773"
  %"$consume_1790" = sub i64 %"$gasrem_1786", 1
  store i64 %"$consume_1790", i64* @_gasrem, align 8
  %"$p_79" = alloca %Int128, align 8
  %"$p2_1791" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1792" = extractvalue %Uint32 %"$p2_1791", 0
  %"$valueof_1793" = zext i32 %"$valueof_1792" to i64
  %"$gaslogof_1794" = uitofp i64 %"$valueof_1793" to double
  %"$gaslogof_1795" = fadd double %"$gaslogof_1794", 1.000000e+00
  %"$gaslogof_1796" = call double @llvm.log.f64(double %"$gaslogof_1795")
  %"$gaslogof_1797" = fptoui double %"$gaslogof_1796" to i64
  %"$gaslogof_1798" = add i64 %"$gaslogof_1797", 1
  %"$gasmul_1799" = mul i64 20, %"$gaslogof_1798"
  %"$gasmul_1800" = mul i64 %"$gasmul_1799", 2
  %"$gasrem_1801" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1802" = icmp ugt i64 %"$gasmul_1800", %"$gasrem_1801"
  br i1 %"$gascmp_1802", label %"$out_of_gas_1803", label %"$have_gas_1804"

"$out_of_gas_1803":                               ; preds = %"$have_gas_1789"
  call void @_out_of_gas()
  br label %"$have_gas_1804"

"$have_gas_1804":                                 ; preds = %"$out_of_gas_1803", %"$have_gas_1789"
  %"$consume_1805" = sub i64 %"$gasrem_1801", %"$gasmul_1800"
  store i64 %"$consume_1805", i64* @_gasrem, align 8
  %"$t6_1806" = load %Int128, %Int128* %t6, align 8
  %"$p2_1807" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1808" = call %Int128 @_pow_Int128(%Int128 %"$t6_1806", %Uint32 %"$p2_1807")
  store %Int128 %"$pow_call_1808", %Int128* %"$p_79", align 8
  %"$gasrem_1809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1810" = icmp ugt i64 1, %"$gasrem_1809"
  br i1 %"$gascmp_1810", label %"$out_of_gas_1811", label %"$have_gas_1812"

"$out_of_gas_1811":                               ; preds = %"$have_gas_1804"
  call void @_out_of_gas()
  br label %"$have_gas_1812"

"$have_gas_1812":                                 ; preds = %"$out_of_gas_1811", %"$have_gas_1804"
  %"$consume_1813" = sub i64 %"$gasrem_1809", 1
  store i64 %"$consume_1813", i64* @_gasrem, align 8
  %"$res_82" = alloca %TName_Bool*, align 8
  %"$gasrem_1814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1815" = icmp ugt i64 1, %"$gasrem_1814"
  br i1 %"$gascmp_1815", label %"$out_of_gas_1816", label %"$have_gas_1817"

"$out_of_gas_1816":                               ; preds = %"$have_gas_1812"
  call void @_out_of_gas()
  br label %"$have_gas_1817"

"$have_gas_1817":                                 ; preds = %"$out_of_gas_1816", %"$have_gas_1812"
  %"$consume_1818" = sub i64 %"$gasrem_1814", 1
  store i64 %"$consume_1818", i64* @_gasrem, align 8
  %"$ans_80" = alloca %Int128, align 8
  %"$gasrem_1819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1820" = icmp ugt i64 1, %"$gasrem_1819"
  br i1 %"$gascmp_1820", label %"$out_of_gas_1821", label %"$have_gas_1822"

"$out_of_gas_1821":                               ; preds = %"$have_gas_1817"
  call void @_out_of_gas()
  br label %"$have_gas_1822"

"$have_gas_1822":                                 ; preds = %"$out_of_gas_1821", %"$have_gas_1817"
  %"$consume_1823" = sub i64 %"$gasrem_1819", 1
  store i64 %"$consume_1823", i64* @_gasrem, align 8
  store %Int128 { i128 501 }, %Int128* %"$ans_80", align 8
  %"$gasrem_1824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1825" = icmp ugt i64 1, %"$gasrem_1824"
  br i1 %"$gascmp_1825", label %"$out_of_gas_1826", label %"$have_gas_1827"

"$out_of_gas_1826":                               ; preds = %"$have_gas_1822"
  call void @_out_of_gas()
  br label %"$have_gas_1827"

"$have_gas_1827":                                 ; preds = %"$out_of_gas_1826", %"$have_gas_1822"
  %"$consume_1828" = sub i64 %"$gasrem_1824", 1
  store i64 %"$consume_1828", i64* @_gasrem, align 8
  %"$res__81" = alloca %TName_Bool*, align 8
  %"$gasrem_1830" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1831" = icmp ugt i64 8, %"$gasrem_1830"
  br i1 %"$gascmp_1831", label %"$out_of_gas_1832", label %"$have_gas_1833"

"$out_of_gas_1832":                               ; preds = %"$have_gas_1827"
  call void @_out_of_gas()
  br label %"$have_gas_1833"

"$have_gas_1833":                                 ; preds = %"$out_of_gas_1832", %"$have_gas_1827"
  %"$consume_1834" = sub i64 %"$gasrem_1830", 8
  store i64 %"$consume_1834", i64* @_gasrem, align 8
  %"$execptr_load_1835" = load i8*, i8** @_execptr, align 8
  %"$$p_79_1836" = load %Int128, %Int128* %"$p_79", align 8
  %"$$ans_80_1837" = load %Int128, %Int128* %"$ans_80", align 8
  %"$eq_call_1838" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1835", %Int128 %"$$p_79_1836", %Int128 %"$$ans_80_1837")
  store %TName_Bool* %"$eq_call_1838", %TName_Bool** %"$res__81", align 8
  %"$gasrem_1840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1841" = icmp ugt i64 1, %"$gasrem_1840"
  br i1 %"$gascmp_1841", label %"$out_of_gas_1842", label %"$have_gas_1843"

"$out_of_gas_1842":                               ; preds = %"$have_gas_1833"
  call void @_out_of_gas()
  br label %"$have_gas_1843"

"$have_gas_1843":                                 ; preds = %"$out_of_gas_1842", %"$have_gas_1833"
  %"$consume_1844" = sub i64 %"$gasrem_1840", 1
  store i64 %"$consume_1844", i64* @_gasrem, align 8
  %"$BoolUtils.andb_177" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1845" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1846" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1845", 0
  %"$BoolUtils.andb_envptr_1847" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1845", 1
  %"$$res_78_1848" = load %TName_Bool*, %TName_Bool** %"$res_78", align 8
  %"$BoolUtils.andb_call_1849" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1846"(i8* %"$BoolUtils.andb_envptr_1847", %TName_Bool* %"$$res_78_1848")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1849", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8
  %"$BoolUtils.andb_178" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_177_1850" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8
  %"$$BoolUtils.andb_177_fptr_1851" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1850", 0
  %"$$BoolUtils.andb_177_envptr_1852" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1850", 1
  %"$$res__81_1853" = load %TName_Bool*, %TName_Bool** %"$res__81", align 8
  %"$$BoolUtils.andb_177_call_1854" = call %TName_Bool* %"$$BoolUtils.andb_177_fptr_1851"(i8* %"$$BoolUtils.andb_177_envptr_1852", %TName_Bool* %"$$res__81_1853")
  store %TName_Bool* %"$$BoolUtils.andb_177_call_1854", %TName_Bool** %"$BoolUtils.andb_178", align 8
  %"$$BoolUtils.andb_178_1855" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_178", align 8
  store %TName_Bool* %"$$BoolUtils.andb_178_1855", %TName_Bool** %"$res_82", align 8
  %"$gasrem_1856" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1857" = icmp ugt i64 1, %"$gasrem_1856"
  br i1 %"$gascmp_1857", label %"$out_of_gas_1858", label %"$have_gas_1859"

"$out_of_gas_1858":                               ; preds = %"$have_gas_1843"
  call void @_out_of_gas()
  br label %"$have_gas_1859"

"$have_gas_1859":                                 ; preds = %"$out_of_gas_1858", %"$have_gas_1843"
  %"$consume_1860" = sub i64 %"$gasrem_1856", 1
  store i64 %"$consume_1860", i64* @_gasrem, align 8
  %"$p_83" = alloca %Int128, align 8
  %"$p3_1861" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1862" = extractvalue %Uint32 %"$p3_1861", 0
  %"$valueof_1863" = zext i32 %"$valueof_1862" to i64
  %"$gaslogof_1864" = uitofp i64 %"$valueof_1863" to double
  %"$gaslogof_1865" = fadd double %"$gaslogof_1864", 1.000000e+00
  %"$gaslogof_1866" = call double @llvm.log.f64(double %"$gaslogof_1865")
  %"$gaslogof_1867" = fptoui double %"$gaslogof_1866" to i64
  %"$gaslogof_1868" = add i64 %"$gaslogof_1867", 1
  %"$gasmul_1869" = mul i64 20, %"$gaslogof_1868"
  %"$gasmul_1870" = mul i64 %"$gasmul_1869", 2
  %"$gasrem_1871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1872" = icmp ugt i64 %"$gasmul_1870", %"$gasrem_1871"
  br i1 %"$gascmp_1872", label %"$out_of_gas_1873", label %"$have_gas_1874"

"$out_of_gas_1873":                               ; preds = %"$have_gas_1859"
  call void @_out_of_gas()
  br label %"$have_gas_1874"

"$have_gas_1874":                                 ; preds = %"$out_of_gas_1873", %"$have_gas_1859"
  %"$consume_1875" = sub i64 %"$gasrem_1871", %"$gasmul_1870"
  store i64 %"$consume_1875", i64* @_gasrem, align 8
  %"$t6_1876" = load %Int128, %Int128* %t6, align 8
  %"$p3_1877" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1878" = call %Int128 @_pow_Int128(%Int128 %"$t6_1876", %Uint32 %"$p3_1877")
  store %Int128 %"$pow_call_1878", %Int128* %"$p_83", align 8
  %"$gasrem_1879" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1880" = icmp ugt i64 1, %"$gasrem_1879"
  br i1 %"$gascmp_1880", label %"$out_of_gas_1881", label %"$have_gas_1882"

"$out_of_gas_1881":                               ; preds = %"$have_gas_1874"
  call void @_out_of_gas()
  br label %"$have_gas_1882"

"$have_gas_1882":                                 ; preds = %"$out_of_gas_1881", %"$have_gas_1874"
  %"$consume_1883" = sub i64 %"$gasrem_1879", 1
  store i64 %"$consume_1883", i64* @_gasrem, align 8
  %"$res_86" = alloca %TName_Bool*, align 8
  %"$gasrem_1884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1885" = icmp ugt i64 1, %"$gasrem_1884"
  br i1 %"$gascmp_1885", label %"$out_of_gas_1886", label %"$have_gas_1887"

"$out_of_gas_1886":                               ; preds = %"$have_gas_1882"
  call void @_out_of_gas()
  br label %"$have_gas_1887"

"$have_gas_1887":                                 ; preds = %"$out_of_gas_1886", %"$have_gas_1882"
  %"$consume_1888" = sub i64 %"$gasrem_1884", 1
  store i64 %"$consume_1888", i64* @_gasrem, align 8
  %"$ans_84" = alloca %Int128, align 8
  %"$gasrem_1889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1890" = icmp ugt i64 1, %"$gasrem_1889"
  br i1 %"$gascmp_1890", label %"$out_of_gas_1891", label %"$have_gas_1892"

"$out_of_gas_1891":                               ; preds = %"$have_gas_1887"
  call void @_out_of_gas()
  br label %"$have_gas_1892"

"$have_gas_1892":                                 ; preds = %"$out_of_gas_1891", %"$have_gas_1887"
  %"$consume_1893" = sub i64 %"$gasrem_1889", 1
  store i64 %"$consume_1893", i64* @_gasrem, align 8
  store %Int128 { i128 63001502001 }, %Int128* %"$ans_84", align 8
  %"$gasrem_1894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1895" = icmp ugt i64 1, %"$gasrem_1894"
  br i1 %"$gascmp_1895", label %"$out_of_gas_1896", label %"$have_gas_1897"

"$out_of_gas_1896":                               ; preds = %"$have_gas_1892"
  call void @_out_of_gas()
  br label %"$have_gas_1897"

"$have_gas_1897":                                 ; preds = %"$out_of_gas_1896", %"$have_gas_1892"
  %"$consume_1898" = sub i64 %"$gasrem_1894", 1
  store i64 %"$consume_1898", i64* @_gasrem, align 8
  %"$res__85" = alloca %TName_Bool*, align 8
  %"$gasrem_1900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1901" = icmp ugt i64 8, %"$gasrem_1900"
  br i1 %"$gascmp_1901", label %"$out_of_gas_1902", label %"$have_gas_1903"

"$out_of_gas_1902":                               ; preds = %"$have_gas_1897"
  call void @_out_of_gas()
  br label %"$have_gas_1903"

"$have_gas_1903":                                 ; preds = %"$out_of_gas_1902", %"$have_gas_1897"
  %"$consume_1904" = sub i64 %"$gasrem_1900", 8
  store i64 %"$consume_1904", i64* @_gasrem, align 8
  %"$execptr_load_1905" = load i8*, i8** @_execptr, align 8
  %"$$p_83_1906" = load %Int128, %Int128* %"$p_83", align 8
  %"$$ans_84_1907" = load %Int128, %Int128* %"$ans_84", align 8
  %"$eq_call_1908" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1905", %Int128 %"$$p_83_1906", %Int128 %"$$ans_84_1907")
  store %TName_Bool* %"$eq_call_1908", %TName_Bool** %"$res__85", align 8
  %"$gasrem_1910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1911" = icmp ugt i64 1, %"$gasrem_1910"
  br i1 %"$gascmp_1911", label %"$out_of_gas_1912", label %"$have_gas_1913"

"$out_of_gas_1912":                               ; preds = %"$have_gas_1903"
  call void @_out_of_gas()
  br label %"$have_gas_1913"

"$have_gas_1913":                                 ; preds = %"$out_of_gas_1912", %"$have_gas_1903"
  %"$consume_1914" = sub i64 %"$gasrem_1910", 1
  store i64 %"$consume_1914", i64* @_gasrem, align 8
  %"$BoolUtils.andb_179" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1915" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1916" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1915", 0
  %"$BoolUtils.andb_envptr_1917" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1915", 1
  %"$$res_82_1918" = load %TName_Bool*, %TName_Bool** %"$res_82", align 8
  %"$BoolUtils.andb_call_1919" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1916"(i8* %"$BoolUtils.andb_envptr_1917", %TName_Bool* %"$$res_82_1918")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1919", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8
  %"$BoolUtils.andb_180" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_179_1920" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8
  %"$$BoolUtils.andb_179_fptr_1921" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1920", 0
  %"$$BoolUtils.andb_179_envptr_1922" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1920", 1
  %"$$res__85_1923" = load %TName_Bool*, %TName_Bool** %"$res__85", align 8
  %"$$BoolUtils.andb_179_call_1924" = call %TName_Bool* %"$$BoolUtils.andb_179_fptr_1921"(i8* %"$$BoolUtils.andb_179_envptr_1922", %TName_Bool* %"$$res__85_1923")
  store %TName_Bool* %"$$BoolUtils.andb_179_call_1924", %TName_Bool** %"$BoolUtils.andb_180", align 8
  %"$$BoolUtils.andb_180_1925" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_180", align 8
  store %TName_Bool* %"$$BoolUtils.andb_180_1925", %TName_Bool** %"$res_86", align 8
  %"$gasrem_1926" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1927" = icmp ugt i64 1, %"$gasrem_1926"
  br i1 %"$gascmp_1927", label %"$out_of_gas_1928", label %"$have_gas_1929"

"$out_of_gas_1928":                               ; preds = %"$have_gas_1913"
  call void @_out_of_gas()
  br label %"$have_gas_1929"

"$have_gas_1929":                                 ; preds = %"$out_of_gas_1928", %"$have_gas_1913"
  %"$consume_1930" = sub i64 %"$gasrem_1926", 1
  store i64 %"$consume_1930", i64* @_gasrem, align 8
  %"$p_87" = alloca %Int128, align 8
  %"$p4_1931" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_1932" = extractvalue %Uint32 %"$p4_1931", 0
  %"$valueof_1933" = zext i32 %"$valueof_1932" to i64
  %"$gaslogof_1934" = uitofp i64 %"$valueof_1933" to double
  %"$gaslogof_1935" = fadd double %"$gaslogof_1934", 1.000000e+00
  %"$gaslogof_1936" = call double @llvm.log.f64(double %"$gaslogof_1935")
  %"$gaslogof_1937" = fptoui double %"$gaslogof_1936" to i64
  %"$gaslogof_1938" = add i64 %"$gaslogof_1937", 1
  %"$gasmul_1939" = mul i64 20, %"$gaslogof_1938"
  %"$gasmul_1940" = mul i64 %"$gasmul_1939", 2
  %"$gasrem_1941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1942" = icmp ugt i64 %"$gasmul_1940", %"$gasrem_1941"
  br i1 %"$gascmp_1942", label %"$out_of_gas_1943", label %"$have_gas_1944"

"$out_of_gas_1943":                               ; preds = %"$have_gas_1929"
  call void @_out_of_gas()
  br label %"$have_gas_1944"

"$have_gas_1944":                                 ; preds = %"$out_of_gas_1943", %"$have_gas_1929"
  %"$consume_1945" = sub i64 %"$gasrem_1941", %"$gasmul_1940"
  store i64 %"$consume_1945", i64* @_gasrem, align 8
  %"$t6_1946" = load %Int128, %Int128* %t6, align 8
  %"$p4_1947" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1948" = call %Int128 @_pow_Int128(%Int128 %"$t6_1946", %Uint32 %"$p4_1947")
  store %Int128 %"$pow_call_1948", %Int128* %"$p_87", align 8
  %"$gasrem_1949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1950" = icmp ugt i64 1, %"$gasrem_1949"
  br i1 %"$gascmp_1950", label %"$out_of_gas_1951", label %"$have_gas_1952"

"$out_of_gas_1951":                               ; preds = %"$have_gas_1944"
  call void @_out_of_gas()
  br label %"$have_gas_1952"

"$have_gas_1952":                                 ; preds = %"$out_of_gas_1951", %"$have_gas_1944"
  %"$consume_1953" = sub i64 %"$gasrem_1949", 1
  store i64 %"$consume_1953", i64* @_gasrem, align 8
  %"$res_90" = alloca %TName_Bool*, align 8
  %"$gasrem_1954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1955" = icmp ugt i64 1, %"$gasrem_1954"
  br i1 %"$gascmp_1955", label %"$out_of_gas_1956", label %"$have_gas_1957"

"$out_of_gas_1956":                               ; preds = %"$have_gas_1952"
  call void @_out_of_gas()
  br label %"$have_gas_1957"

"$have_gas_1957":                                 ; preds = %"$out_of_gas_1956", %"$have_gas_1952"
  %"$consume_1958" = sub i64 %"$gasrem_1954", 1
  store i64 %"$consume_1958", i64* @_gasrem, align 8
  %"$ans_88" = alloca %Int128, align 8
  %"$gasrem_1959" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1960" = icmp ugt i64 1, %"$gasrem_1959"
  br i1 %"$gascmp_1960", label %"$out_of_gas_1961", label %"$have_gas_1962"

"$out_of_gas_1961":                               ; preds = %"$have_gas_1957"
  call void @_out_of_gas()
  br label %"$have_gas_1962"

"$have_gas_1962":                                 ; preds = %"$out_of_gas_1961", %"$have_gas_1957"
  %"$consume_1963" = sub i64 %"$gasrem_1959", 1
  store i64 %"$consume_1963", i64* @_gasrem, align 8
  store %Int128 { i128 996270472039138140011255001 }, %Int128* %"$ans_88", align 8
  %"$gasrem_1964" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1965" = icmp ugt i64 1, %"$gasrem_1964"
  br i1 %"$gascmp_1965", label %"$out_of_gas_1966", label %"$have_gas_1967"

"$out_of_gas_1966":                               ; preds = %"$have_gas_1962"
  call void @_out_of_gas()
  br label %"$have_gas_1967"

"$have_gas_1967":                                 ; preds = %"$out_of_gas_1966", %"$have_gas_1962"
  %"$consume_1968" = sub i64 %"$gasrem_1964", 1
  store i64 %"$consume_1968", i64* @_gasrem, align 8
  %"$res__89" = alloca %TName_Bool*, align 8
  %"$gasrem_1970" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1971" = icmp ugt i64 8, %"$gasrem_1970"
  br i1 %"$gascmp_1971", label %"$out_of_gas_1972", label %"$have_gas_1973"

"$out_of_gas_1972":                               ; preds = %"$have_gas_1967"
  call void @_out_of_gas()
  br label %"$have_gas_1973"

"$have_gas_1973":                                 ; preds = %"$out_of_gas_1972", %"$have_gas_1967"
  %"$consume_1974" = sub i64 %"$gasrem_1970", 8
  store i64 %"$consume_1974", i64* @_gasrem, align 8
  %"$execptr_load_1975" = load i8*, i8** @_execptr, align 8
  %"$$p_87_1976" = load %Int128, %Int128* %"$p_87", align 8
  %"$$ans_88_1977" = load %Int128, %Int128* %"$ans_88", align 8
  %"$eq_call_1978" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1975", %Int128 %"$$p_87_1976", %Int128 %"$$ans_88_1977")
  store %TName_Bool* %"$eq_call_1978", %TName_Bool** %"$res__89", align 8
  %"$gasrem_1980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1981" = icmp ugt i64 1, %"$gasrem_1980"
  br i1 %"$gascmp_1981", label %"$out_of_gas_1982", label %"$have_gas_1983"

"$out_of_gas_1982":                               ; preds = %"$have_gas_1973"
  call void @_out_of_gas()
  br label %"$have_gas_1983"

"$have_gas_1983":                                 ; preds = %"$out_of_gas_1982", %"$have_gas_1973"
  %"$consume_1984" = sub i64 %"$gasrem_1980", 1
  store i64 %"$consume_1984", i64* @_gasrem, align 8
  %"$BoolUtils.andb_181" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1985" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1986" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1985", 0
  %"$BoolUtils.andb_envptr_1987" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1985", 1
  %"$$res_86_1988" = load %TName_Bool*, %TName_Bool** %"$res_86", align 8
  %"$BoolUtils.andb_call_1989" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1986"(i8* %"$BoolUtils.andb_envptr_1987", %TName_Bool* %"$$res_86_1988")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1989", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8
  %"$BoolUtils.andb_182" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_181_1990" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8
  %"$$BoolUtils.andb_181_fptr_1991" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_1990", 0
  %"$$BoolUtils.andb_181_envptr_1992" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_1990", 1
  %"$$res__89_1993" = load %TName_Bool*, %TName_Bool** %"$res__89", align 8
  %"$$BoolUtils.andb_181_call_1994" = call %TName_Bool* %"$$BoolUtils.andb_181_fptr_1991"(i8* %"$$BoolUtils.andb_181_envptr_1992", %TName_Bool* %"$$res__89_1993")
  store %TName_Bool* %"$$BoolUtils.andb_181_call_1994", %TName_Bool** %"$BoolUtils.andb_182", align 8
  %"$$BoolUtils.andb_182_1995" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_182", align 8
  store %TName_Bool* %"$$BoolUtils.andb_182_1995", %TName_Bool** %"$res_90", align 8
  %"$gasrem_1996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1997" = icmp ugt i64 1, %"$gasrem_1996"
  br i1 %"$gascmp_1997", label %"$out_of_gas_1998", label %"$have_gas_1999"

"$out_of_gas_1998":                               ; preds = %"$have_gas_1983"
  call void @_out_of_gas()
  br label %"$have_gas_1999"

"$have_gas_1999":                                 ; preds = %"$out_of_gas_1998", %"$have_gas_1983"
  %"$consume_2000" = sub i64 %"$gasrem_1996", 1
  store i64 %"$consume_2000", i64* @_gasrem, align 8
  %"$p_91" = alloca %Uint256, align 8
  %"$p1_2001" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2002" = extractvalue %Uint32 %"$p1_2001", 0
  %"$valueof_2003" = zext i32 %"$valueof_2002" to i64
  %"$gaslogof_2004" = uitofp i64 %"$valueof_2003" to double
  %"$gaslogof_2005" = fadd double %"$gaslogof_2004", 1.000000e+00
  %"$gaslogof_2006" = call double @llvm.log.f64(double %"$gaslogof_2005")
  %"$gaslogof_2007" = fptoui double %"$gaslogof_2006" to i64
  %"$gaslogof_2008" = add i64 %"$gaslogof_2007", 1
  %"$gasmul_2009" = mul i64 20, %"$gaslogof_2008"
  %"$gasmul_2010" = mul i64 %"$gasmul_2009", 4
  %"$gasrem_2011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2012" = icmp ugt i64 %"$gasmul_2010", %"$gasrem_2011"
  br i1 %"$gascmp_2012", label %"$out_of_gas_2013", label %"$have_gas_2014"

"$out_of_gas_2013":                               ; preds = %"$have_gas_1999"
  call void @_out_of_gas()
  br label %"$have_gas_2014"

"$have_gas_2014":                                 ; preds = %"$out_of_gas_2013", %"$have_gas_1999"
  %"$consume_2015" = sub i64 %"$gasrem_2011", %"$gasmul_2010"
  store i64 %"$consume_2015", i64* @_gasrem, align 8
  %"$execptr_load_2016" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2017" = alloca %Uint256, align 8
  %"$t7_2018" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2018", %Uint256* %"$pow_t7_2017", align 8
  %"$p1_2019" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2020" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2016", %Uint256* %"$pow_t7_2017", %Uint32 %"$p1_2019")
  %"$pow_2022" = load %Uint256, %Uint256* %"$pow_call_2020", align 8
  store %Uint256 %"$pow_2022", %Uint256* %"$p_91", align 8
  %"$gasrem_2023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2024" = icmp ugt i64 1, %"$gasrem_2023"
  br i1 %"$gascmp_2024", label %"$out_of_gas_2025", label %"$have_gas_2026"

"$out_of_gas_2025":                               ; preds = %"$have_gas_2014"
  call void @_out_of_gas()
  br label %"$have_gas_2026"

"$have_gas_2026":                                 ; preds = %"$out_of_gas_2025", %"$have_gas_2014"
  %"$consume_2027" = sub i64 %"$gasrem_2023", 1
  store i64 %"$consume_2027", i64* @_gasrem, align 8
  %"$res_94" = alloca %TName_Bool*, align 8
  %"$gasrem_2028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2029" = icmp ugt i64 1, %"$gasrem_2028"
  br i1 %"$gascmp_2029", label %"$out_of_gas_2030", label %"$have_gas_2031"

"$out_of_gas_2030":                               ; preds = %"$have_gas_2026"
  call void @_out_of_gas()
  br label %"$have_gas_2031"

"$have_gas_2031":                                 ; preds = %"$out_of_gas_2030", %"$have_gas_2026"
  %"$consume_2032" = sub i64 %"$gasrem_2028", 1
  store i64 %"$consume_2032", i64* @_gasrem, align 8
  %"$ans_92" = alloca %Uint256, align 8
  %"$gasrem_2033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2034" = icmp ugt i64 1, %"$gasrem_2033"
  br i1 %"$gascmp_2034", label %"$out_of_gas_2035", label %"$have_gas_2036"

"$out_of_gas_2035":                               ; preds = %"$have_gas_2031"
  call void @_out_of_gas()
  br label %"$have_gas_2036"

"$have_gas_2036":                                 ; preds = %"$out_of_gas_2035", %"$have_gas_2031"
  %"$consume_2037" = sub i64 %"$gasrem_2033", 1
  store i64 %"$consume_2037", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$ans_92", align 8
  %"$gasrem_2038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2039" = icmp ugt i64 1, %"$gasrem_2038"
  br i1 %"$gascmp_2039", label %"$out_of_gas_2040", label %"$have_gas_2041"

"$out_of_gas_2040":                               ; preds = %"$have_gas_2036"
  call void @_out_of_gas()
  br label %"$have_gas_2041"

"$have_gas_2041":                                 ; preds = %"$out_of_gas_2040", %"$have_gas_2036"
  %"$consume_2042" = sub i64 %"$gasrem_2038", 1
  store i64 %"$consume_2042", i64* @_gasrem, align 8
  %"$res__93" = alloca %TName_Bool*, align 8
  %"$gasrem_2044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2045" = icmp ugt i64 16, %"$gasrem_2044"
  br i1 %"$gascmp_2045", label %"$out_of_gas_2046", label %"$have_gas_2047"

"$out_of_gas_2046":                               ; preds = %"$have_gas_2041"
  call void @_out_of_gas()
  br label %"$have_gas_2047"

"$have_gas_2047":                                 ; preds = %"$out_of_gas_2046", %"$have_gas_2041"
  %"$consume_2048" = sub i64 %"$gasrem_2044", 16
  store i64 %"$consume_2048", i64* @_gasrem, align 8
  %"$execptr_load_2049" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_91_2050" = alloca %Uint256, align 8
  %"$$p_91_2051" = load %Uint256, %Uint256* %"$p_91", align 8
  store %Uint256 %"$$p_91_2051", %Uint256* %"$eq_$p_91_2050", align 8
  %"$eq_$ans_92_2052" = alloca %Uint256, align 8
  %"$$ans_92_2053" = load %Uint256, %Uint256* %"$ans_92", align 8
  store %Uint256 %"$$ans_92_2053", %Uint256* %"$eq_$ans_92_2052", align 8
  %"$eq_call_2054" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2049", %Uint256* %"$eq_$p_91_2050", %Uint256* %"$eq_$ans_92_2052")
  store %TName_Bool* %"$eq_call_2054", %TName_Bool** %"$res__93", align 8
  %"$gasrem_2056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2057" = icmp ugt i64 1, %"$gasrem_2056"
  br i1 %"$gascmp_2057", label %"$out_of_gas_2058", label %"$have_gas_2059"

"$out_of_gas_2058":                               ; preds = %"$have_gas_2047"
  call void @_out_of_gas()
  br label %"$have_gas_2059"

"$have_gas_2059":                                 ; preds = %"$out_of_gas_2058", %"$have_gas_2047"
  %"$consume_2060" = sub i64 %"$gasrem_2056", 1
  store i64 %"$consume_2060", i64* @_gasrem, align 8
  %"$BoolUtils.andb_183" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2061" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2062" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2061", 0
  %"$BoolUtils.andb_envptr_2063" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2061", 1
  %"$$res_90_2064" = load %TName_Bool*, %TName_Bool** %"$res_90", align 8
  %"$BoolUtils.andb_call_2065" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2062"(i8* %"$BoolUtils.andb_envptr_2063", %TName_Bool* %"$$res_90_2064")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2065", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8
  %"$BoolUtils.andb_184" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_183_2066" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8
  %"$$BoolUtils.andb_183_fptr_2067" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_2066", 0
  %"$$BoolUtils.andb_183_envptr_2068" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_2066", 1
  %"$$res__93_2069" = load %TName_Bool*, %TName_Bool** %"$res__93", align 8
  %"$$BoolUtils.andb_183_call_2070" = call %TName_Bool* %"$$BoolUtils.andb_183_fptr_2067"(i8* %"$$BoolUtils.andb_183_envptr_2068", %TName_Bool* %"$$res__93_2069")
  store %TName_Bool* %"$$BoolUtils.andb_183_call_2070", %TName_Bool** %"$BoolUtils.andb_184", align 8
  %"$$BoolUtils.andb_184_2071" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_184", align 8
  store %TName_Bool* %"$$BoolUtils.andb_184_2071", %TName_Bool** %"$res_94", align 8
  %"$gasrem_2072" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2073" = icmp ugt i64 1, %"$gasrem_2072"
  br i1 %"$gascmp_2073", label %"$out_of_gas_2074", label %"$have_gas_2075"

"$out_of_gas_2074":                               ; preds = %"$have_gas_2059"
  call void @_out_of_gas()
  br label %"$have_gas_2075"

"$have_gas_2075":                                 ; preds = %"$out_of_gas_2074", %"$have_gas_2059"
  %"$consume_2076" = sub i64 %"$gasrem_2072", 1
  store i64 %"$consume_2076", i64* @_gasrem, align 8
  %"$p_95" = alloca %Uint256, align 8
  %"$p2_2077" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2078" = extractvalue %Uint32 %"$p2_2077", 0
  %"$valueof_2079" = zext i32 %"$valueof_2078" to i64
  %"$gaslogof_2080" = uitofp i64 %"$valueof_2079" to double
  %"$gaslogof_2081" = fadd double %"$gaslogof_2080", 1.000000e+00
  %"$gaslogof_2082" = call double @llvm.log.f64(double %"$gaslogof_2081")
  %"$gaslogof_2083" = fptoui double %"$gaslogof_2082" to i64
  %"$gaslogof_2084" = add i64 %"$gaslogof_2083", 1
  %"$gasmul_2085" = mul i64 20, %"$gaslogof_2084"
  %"$gasmul_2086" = mul i64 %"$gasmul_2085", 4
  %"$gasrem_2087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2088" = icmp ugt i64 %"$gasmul_2086", %"$gasrem_2087"
  br i1 %"$gascmp_2088", label %"$out_of_gas_2089", label %"$have_gas_2090"

"$out_of_gas_2089":                               ; preds = %"$have_gas_2075"
  call void @_out_of_gas()
  br label %"$have_gas_2090"

"$have_gas_2090":                                 ; preds = %"$out_of_gas_2089", %"$have_gas_2075"
  %"$consume_2091" = sub i64 %"$gasrem_2087", %"$gasmul_2086"
  store i64 %"$consume_2091", i64* @_gasrem, align 8
  %"$execptr_load_2092" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2093" = alloca %Uint256, align 8
  %"$t7_2094" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2094", %Uint256* %"$pow_t7_2093", align 8
  %"$p2_2095" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2096" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2092", %Uint256* %"$pow_t7_2093", %Uint32 %"$p2_2095")
  %"$pow_2098" = load %Uint256, %Uint256* %"$pow_call_2096", align 8
  store %Uint256 %"$pow_2098", %Uint256* %"$p_95", align 8
  %"$gasrem_2099" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2100" = icmp ugt i64 1, %"$gasrem_2099"
  br i1 %"$gascmp_2100", label %"$out_of_gas_2101", label %"$have_gas_2102"

"$out_of_gas_2101":                               ; preds = %"$have_gas_2090"
  call void @_out_of_gas()
  br label %"$have_gas_2102"

"$have_gas_2102":                                 ; preds = %"$out_of_gas_2101", %"$have_gas_2090"
  %"$consume_2103" = sub i64 %"$gasrem_2099", 1
  store i64 %"$consume_2103", i64* @_gasrem, align 8
  %"$res_98" = alloca %TName_Bool*, align 8
  %"$gasrem_2104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2105" = icmp ugt i64 1, %"$gasrem_2104"
  br i1 %"$gascmp_2105", label %"$out_of_gas_2106", label %"$have_gas_2107"

"$out_of_gas_2106":                               ; preds = %"$have_gas_2102"
  call void @_out_of_gas()
  br label %"$have_gas_2107"

"$have_gas_2107":                                 ; preds = %"$out_of_gas_2106", %"$have_gas_2102"
  %"$consume_2108" = sub i64 %"$gasrem_2104", 1
  store i64 %"$consume_2108", i64* @_gasrem, align 8
  %"$ans_96" = alloca %Uint256, align 8
  %"$gasrem_2109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2110" = icmp ugt i64 1, %"$gasrem_2109"
  br i1 %"$gascmp_2110", label %"$out_of_gas_2111", label %"$have_gas_2112"

"$out_of_gas_2111":                               ; preds = %"$have_gas_2107"
  call void @_out_of_gas()
  br label %"$have_gas_2112"

"$have_gas_2112":                                 ; preds = %"$out_of_gas_2111", %"$have_gas_2107"
  %"$consume_2113" = sub i64 %"$gasrem_2109", 1
  store i64 %"$consume_2113", i64* @_gasrem, align 8
  store %Uint256 { i256 10001 }, %Uint256* %"$ans_96", align 8
  %"$gasrem_2114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2115" = icmp ugt i64 1, %"$gasrem_2114"
  br i1 %"$gascmp_2115", label %"$out_of_gas_2116", label %"$have_gas_2117"

"$out_of_gas_2116":                               ; preds = %"$have_gas_2112"
  call void @_out_of_gas()
  br label %"$have_gas_2117"

"$have_gas_2117":                                 ; preds = %"$out_of_gas_2116", %"$have_gas_2112"
  %"$consume_2118" = sub i64 %"$gasrem_2114", 1
  store i64 %"$consume_2118", i64* @_gasrem, align 8
  %"$res__97" = alloca %TName_Bool*, align 8
  %"$gasrem_2120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2121" = icmp ugt i64 16, %"$gasrem_2120"
  br i1 %"$gascmp_2121", label %"$out_of_gas_2122", label %"$have_gas_2123"

"$out_of_gas_2122":                               ; preds = %"$have_gas_2117"
  call void @_out_of_gas()
  br label %"$have_gas_2123"

"$have_gas_2123":                                 ; preds = %"$out_of_gas_2122", %"$have_gas_2117"
  %"$consume_2124" = sub i64 %"$gasrem_2120", 16
  store i64 %"$consume_2124", i64* @_gasrem, align 8
  %"$execptr_load_2125" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_95_2126" = alloca %Uint256, align 8
  %"$$p_95_2127" = load %Uint256, %Uint256* %"$p_95", align 8
  store %Uint256 %"$$p_95_2127", %Uint256* %"$eq_$p_95_2126", align 8
  %"$eq_$ans_96_2128" = alloca %Uint256, align 8
  %"$$ans_96_2129" = load %Uint256, %Uint256* %"$ans_96", align 8
  store %Uint256 %"$$ans_96_2129", %Uint256* %"$eq_$ans_96_2128", align 8
  %"$eq_call_2130" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2125", %Uint256* %"$eq_$p_95_2126", %Uint256* %"$eq_$ans_96_2128")
  store %TName_Bool* %"$eq_call_2130", %TName_Bool** %"$res__97", align 8
  %"$gasrem_2132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2133" = icmp ugt i64 1, %"$gasrem_2132"
  br i1 %"$gascmp_2133", label %"$out_of_gas_2134", label %"$have_gas_2135"

"$out_of_gas_2134":                               ; preds = %"$have_gas_2123"
  call void @_out_of_gas()
  br label %"$have_gas_2135"

"$have_gas_2135":                                 ; preds = %"$out_of_gas_2134", %"$have_gas_2123"
  %"$consume_2136" = sub i64 %"$gasrem_2132", 1
  store i64 %"$consume_2136", i64* @_gasrem, align 8
  %"$BoolUtils.andb_185" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2137" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2138" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2137", 0
  %"$BoolUtils.andb_envptr_2139" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2137", 1
  %"$$res_94_2140" = load %TName_Bool*, %TName_Bool** %"$res_94", align 8
  %"$BoolUtils.andb_call_2141" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2138"(i8* %"$BoolUtils.andb_envptr_2139", %TName_Bool* %"$$res_94_2140")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2141", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8
  %"$BoolUtils.andb_186" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_185_2142" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8
  %"$$BoolUtils.andb_185_fptr_2143" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_2142", 0
  %"$$BoolUtils.andb_185_envptr_2144" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_2142", 1
  %"$$res__97_2145" = load %TName_Bool*, %TName_Bool** %"$res__97", align 8
  %"$$BoolUtils.andb_185_call_2146" = call %TName_Bool* %"$$BoolUtils.andb_185_fptr_2143"(i8* %"$$BoolUtils.andb_185_envptr_2144", %TName_Bool* %"$$res__97_2145")
  store %TName_Bool* %"$$BoolUtils.andb_185_call_2146", %TName_Bool** %"$BoolUtils.andb_186", align 8
  %"$$BoolUtils.andb_186_2147" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_186", align 8
  store %TName_Bool* %"$$BoolUtils.andb_186_2147", %TName_Bool** %"$res_98", align 8
  %"$gasrem_2148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2149" = icmp ugt i64 1, %"$gasrem_2148"
  br i1 %"$gascmp_2149", label %"$out_of_gas_2150", label %"$have_gas_2151"

"$out_of_gas_2150":                               ; preds = %"$have_gas_2135"
  call void @_out_of_gas()
  br label %"$have_gas_2151"

"$have_gas_2151":                                 ; preds = %"$out_of_gas_2150", %"$have_gas_2135"
  %"$consume_2152" = sub i64 %"$gasrem_2148", 1
  store i64 %"$consume_2152", i64* @_gasrem, align 8
  %"$p_99" = alloca %Uint256, align 8
  %"$p3_2153" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2154" = extractvalue %Uint32 %"$p3_2153", 0
  %"$valueof_2155" = zext i32 %"$valueof_2154" to i64
  %"$gaslogof_2156" = uitofp i64 %"$valueof_2155" to double
  %"$gaslogof_2157" = fadd double %"$gaslogof_2156", 1.000000e+00
  %"$gaslogof_2158" = call double @llvm.log.f64(double %"$gaslogof_2157")
  %"$gaslogof_2159" = fptoui double %"$gaslogof_2158" to i64
  %"$gaslogof_2160" = add i64 %"$gaslogof_2159", 1
  %"$gasmul_2161" = mul i64 20, %"$gaslogof_2160"
  %"$gasmul_2162" = mul i64 %"$gasmul_2161", 4
  %"$gasrem_2163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2164" = icmp ugt i64 %"$gasmul_2162", %"$gasrem_2163"
  br i1 %"$gascmp_2164", label %"$out_of_gas_2165", label %"$have_gas_2166"

"$out_of_gas_2165":                               ; preds = %"$have_gas_2151"
  call void @_out_of_gas()
  br label %"$have_gas_2166"

"$have_gas_2166":                                 ; preds = %"$out_of_gas_2165", %"$have_gas_2151"
  %"$consume_2167" = sub i64 %"$gasrem_2163", %"$gasmul_2162"
  store i64 %"$consume_2167", i64* @_gasrem, align 8
  %"$execptr_load_2168" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2169" = alloca %Uint256, align 8
  %"$t7_2170" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2170", %Uint256* %"$pow_t7_2169", align 8
  %"$p3_2171" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2172" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2168", %Uint256* %"$pow_t7_2169", %Uint32 %"$p3_2171")
  %"$pow_2174" = load %Uint256, %Uint256* %"$pow_call_2172", align 8
  store %Uint256 %"$pow_2174", %Uint256* %"$p_99", align 8
  %"$gasrem_2175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2176" = icmp ugt i64 1, %"$gasrem_2175"
  br i1 %"$gascmp_2176", label %"$out_of_gas_2177", label %"$have_gas_2178"

"$out_of_gas_2177":                               ; preds = %"$have_gas_2166"
  call void @_out_of_gas()
  br label %"$have_gas_2178"

"$have_gas_2178":                                 ; preds = %"$out_of_gas_2177", %"$have_gas_2166"
  %"$consume_2179" = sub i64 %"$gasrem_2175", 1
  store i64 %"$consume_2179", i64* @_gasrem, align 8
  %"$res_102" = alloca %TName_Bool*, align 8
  %"$gasrem_2180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2181" = icmp ugt i64 1, %"$gasrem_2180"
  br i1 %"$gascmp_2181", label %"$out_of_gas_2182", label %"$have_gas_2183"

"$out_of_gas_2182":                               ; preds = %"$have_gas_2178"
  call void @_out_of_gas()
  br label %"$have_gas_2183"

"$have_gas_2183":                                 ; preds = %"$out_of_gas_2182", %"$have_gas_2178"
  %"$consume_2184" = sub i64 %"$gasrem_2180", 1
  store i64 %"$consume_2184", i64* @_gasrem, align 8
  %"$ans_100" = alloca %Uint256, align 8
  %"$gasrem_2185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2186" = icmp ugt i64 1, %"$gasrem_2185"
  br i1 %"$gascmp_2186", label %"$out_of_gas_2187", label %"$have_gas_2188"

"$out_of_gas_2187":                               ; preds = %"$have_gas_2183"
  call void @_out_of_gas()
  br label %"$have_gas_2188"

"$have_gas_2188":                                 ; preds = %"$out_of_gas_2187", %"$have_gas_2183"
  %"$consume_2189" = sub i64 %"$gasrem_2185", 1
  store i64 %"$consume_2189", i64* @_gasrem, align 8
  store %Uint256 { i256 10004000600040001 }, %Uint256* %"$ans_100", align 8
  %"$gasrem_2190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2191" = icmp ugt i64 1, %"$gasrem_2190"
  br i1 %"$gascmp_2191", label %"$out_of_gas_2192", label %"$have_gas_2193"

"$out_of_gas_2192":                               ; preds = %"$have_gas_2188"
  call void @_out_of_gas()
  br label %"$have_gas_2193"

"$have_gas_2193":                                 ; preds = %"$out_of_gas_2192", %"$have_gas_2188"
  %"$consume_2194" = sub i64 %"$gasrem_2190", 1
  store i64 %"$consume_2194", i64* @_gasrem, align 8
  %"$res__101" = alloca %TName_Bool*, align 8
  %"$gasrem_2196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2197" = icmp ugt i64 16, %"$gasrem_2196"
  br i1 %"$gascmp_2197", label %"$out_of_gas_2198", label %"$have_gas_2199"

"$out_of_gas_2198":                               ; preds = %"$have_gas_2193"
  call void @_out_of_gas()
  br label %"$have_gas_2199"

"$have_gas_2199":                                 ; preds = %"$out_of_gas_2198", %"$have_gas_2193"
  %"$consume_2200" = sub i64 %"$gasrem_2196", 16
  store i64 %"$consume_2200", i64* @_gasrem, align 8
  %"$execptr_load_2201" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_99_2202" = alloca %Uint256, align 8
  %"$$p_99_2203" = load %Uint256, %Uint256* %"$p_99", align 8
  store %Uint256 %"$$p_99_2203", %Uint256* %"$eq_$p_99_2202", align 8
  %"$eq_$ans_100_2204" = alloca %Uint256, align 8
  %"$$ans_100_2205" = load %Uint256, %Uint256* %"$ans_100", align 8
  store %Uint256 %"$$ans_100_2205", %Uint256* %"$eq_$ans_100_2204", align 8
  %"$eq_call_2206" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2201", %Uint256* %"$eq_$p_99_2202", %Uint256* %"$eq_$ans_100_2204")
  store %TName_Bool* %"$eq_call_2206", %TName_Bool** %"$res__101", align 8
  %"$gasrem_2208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2209" = icmp ugt i64 1, %"$gasrem_2208"
  br i1 %"$gascmp_2209", label %"$out_of_gas_2210", label %"$have_gas_2211"

"$out_of_gas_2210":                               ; preds = %"$have_gas_2199"
  call void @_out_of_gas()
  br label %"$have_gas_2211"

"$have_gas_2211":                                 ; preds = %"$out_of_gas_2210", %"$have_gas_2199"
  %"$consume_2212" = sub i64 %"$gasrem_2208", 1
  store i64 %"$consume_2212", i64* @_gasrem, align 8
  %"$BoolUtils.andb_187" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2213" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2214" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2213", 0
  %"$BoolUtils.andb_envptr_2215" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2213", 1
  %"$$res_98_2216" = load %TName_Bool*, %TName_Bool** %"$res_98", align 8
  %"$BoolUtils.andb_call_2217" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2214"(i8* %"$BoolUtils.andb_envptr_2215", %TName_Bool* %"$$res_98_2216")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2217", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8
  %"$BoolUtils.andb_188" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_187_2218" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8
  %"$$BoolUtils.andb_187_fptr_2219" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_2218", 0
  %"$$BoolUtils.andb_187_envptr_2220" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_2218", 1
  %"$$res__101_2221" = load %TName_Bool*, %TName_Bool** %"$res__101", align 8
  %"$$BoolUtils.andb_187_call_2222" = call %TName_Bool* %"$$BoolUtils.andb_187_fptr_2219"(i8* %"$$BoolUtils.andb_187_envptr_2220", %TName_Bool* %"$$res__101_2221")
  store %TName_Bool* %"$$BoolUtils.andb_187_call_2222", %TName_Bool** %"$BoolUtils.andb_188", align 8
  %"$$BoolUtils.andb_188_2223" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_188", align 8
  store %TName_Bool* %"$$BoolUtils.andb_188_2223", %TName_Bool** %"$res_102", align 8
  %"$gasrem_2224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2225" = icmp ugt i64 1, %"$gasrem_2224"
  br i1 %"$gascmp_2225", label %"$out_of_gas_2226", label %"$have_gas_2227"

"$out_of_gas_2226":                               ; preds = %"$have_gas_2211"
  call void @_out_of_gas()
  br label %"$have_gas_2227"

"$have_gas_2227":                                 ; preds = %"$out_of_gas_2226", %"$have_gas_2211"
  %"$consume_2228" = sub i64 %"$gasrem_2224", 1
  store i64 %"$consume_2228", i64* @_gasrem, align 8
  %"$p_103" = alloca %Uint256, align 8
  %"$p4_2229" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2230" = extractvalue %Uint32 %"$p4_2229", 0
  %"$valueof_2231" = zext i32 %"$valueof_2230" to i64
  %"$gaslogof_2232" = uitofp i64 %"$valueof_2231" to double
  %"$gaslogof_2233" = fadd double %"$gaslogof_2232", 1.000000e+00
  %"$gaslogof_2234" = call double @llvm.log.f64(double %"$gaslogof_2233")
  %"$gaslogof_2235" = fptoui double %"$gaslogof_2234" to i64
  %"$gaslogof_2236" = add i64 %"$gaslogof_2235", 1
  %"$gasmul_2237" = mul i64 20, %"$gaslogof_2236"
  %"$gasmul_2238" = mul i64 %"$gasmul_2237", 4
  %"$gasrem_2239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2240" = icmp ugt i64 %"$gasmul_2238", %"$gasrem_2239"
  br i1 %"$gascmp_2240", label %"$out_of_gas_2241", label %"$have_gas_2242"

"$out_of_gas_2241":                               ; preds = %"$have_gas_2227"
  call void @_out_of_gas()
  br label %"$have_gas_2242"

"$have_gas_2242":                                 ; preds = %"$out_of_gas_2241", %"$have_gas_2227"
  %"$consume_2243" = sub i64 %"$gasrem_2239", %"$gasmul_2238"
  store i64 %"$consume_2243", i64* @_gasrem, align 8
  %"$execptr_load_2244" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2245" = alloca %Uint256, align 8
  %"$t7_2246" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2246", %Uint256* %"$pow_t7_2245", align 8
  %"$p4_2247" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2248" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2244", %Uint256* %"$pow_t7_2245", %Uint32 %"$p4_2247")
  %"$pow_2250" = load %Uint256, %Uint256* %"$pow_call_2248", align 8
  store %Uint256 %"$pow_2250", %Uint256* %"$p_103", align 8
  %"$gasrem_2251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2252" = icmp ugt i64 1, %"$gasrem_2251"
  br i1 %"$gascmp_2252", label %"$out_of_gas_2253", label %"$have_gas_2254"

"$out_of_gas_2253":                               ; preds = %"$have_gas_2242"
  call void @_out_of_gas()
  br label %"$have_gas_2254"

"$have_gas_2254":                                 ; preds = %"$out_of_gas_2253", %"$have_gas_2242"
  %"$consume_2255" = sub i64 %"$gasrem_2251", 1
  store i64 %"$consume_2255", i64* @_gasrem, align 8
  %"$res_106" = alloca %TName_Bool*, align 8
  %"$gasrem_2256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2257" = icmp ugt i64 1, %"$gasrem_2256"
  br i1 %"$gascmp_2257", label %"$out_of_gas_2258", label %"$have_gas_2259"

"$out_of_gas_2258":                               ; preds = %"$have_gas_2254"
  call void @_out_of_gas()
  br label %"$have_gas_2259"

"$have_gas_2259":                                 ; preds = %"$out_of_gas_2258", %"$have_gas_2254"
  %"$consume_2260" = sub i64 %"$gasrem_2256", 1
  store i64 %"$consume_2260", i64* @_gasrem, align 8
  %"$ans_104" = alloca %Uint256, align 8
  %"$gasrem_2261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2262" = icmp ugt i64 1, %"$gasrem_2261"
  br i1 %"$gascmp_2262", label %"$out_of_gas_2263", label %"$have_gas_2264"

"$out_of_gas_2263":                               ; preds = %"$have_gas_2259"
  call void @_out_of_gas()
  br label %"$have_gas_2264"

"$have_gas_2264":                                 ; preds = %"$out_of_gas_2263", %"$have_gas_2259"
  %"$consume_2265" = sub i64 %"$gasrem_2261", 1
  store i64 %"$consume_2265", i64* @_gasrem, align 8
  store %Uint256 { i256 10010004501200210025202100120004500100001 }, %Uint256* %"$ans_104", align 8
  %"$gasrem_2266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2267" = icmp ugt i64 1, %"$gasrem_2266"
  br i1 %"$gascmp_2267", label %"$out_of_gas_2268", label %"$have_gas_2269"

"$out_of_gas_2268":                               ; preds = %"$have_gas_2264"
  call void @_out_of_gas()
  br label %"$have_gas_2269"

"$have_gas_2269":                                 ; preds = %"$out_of_gas_2268", %"$have_gas_2264"
  %"$consume_2270" = sub i64 %"$gasrem_2266", 1
  store i64 %"$consume_2270", i64* @_gasrem, align 8
  %"$res__105" = alloca %TName_Bool*, align 8
  %"$gasrem_2272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2273" = icmp ugt i64 16, %"$gasrem_2272"
  br i1 %"$gascmp_2273", label %"$out_of_gas_2274", label %"$have_gas_2275"

"$out_of_gas_2274":                               ; preds = %"$have_gas_2269"
  call void @_out_of_gas()
  br label %"$have_gas_2275"

"$have_gas_2275":                                 ; preds = %"$out_of_gas_2274", %"$have_gas_2269"
  %"$consume_2276" = sub i64 %"$gasrem_2272", 16
  store i64 %"$consume_2276", i64* @_gasrem, align 8
  %"$execptr_load_2277" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_103_2278" = alloca %Uint256, align 8
  %"$$p_103_2279" = load %Uint256, %Uint256* %"$p_103", align 8
  store %Uint256 %"$$p_103_2279", %Uint256* %"$eq_$p_103_2278", align 8
  %"$eq_$ans_104_2280" = alloca %Uint256, align 8
  %"$$ans_104_2281" = load %Uint256, %Uint256* %"$ans_104", align 8
  store %Uint256 %"$$ans_104_2281", %Uint256* %"$eq_$ans_104_2280", align 8
  %"$eq_call_2282" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2277", %Uint256* %"$eq_$p_103_2278", %Uint256* %"$eq_$ans_104_2280")
  store %TName_Bool* %"$eq_call_2282", %TName_Bool** %"$res__105", align 8
  %"$gasrem_2284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2285" = icmp ugt i64 1, %"$gasrem_2284"
  br i1 %"$gascmp_2285", label %"$out_of_gas_2286", label %"$have_gas_2287"

"$out_of_gas_2286":                               ; preds = %"$have_gas_2275"
  call void @_out_of_gas()
  br label %"$have_gas_2287"

"$have_gas_2287":                                 ; preds = %"$out_of_gas_2286", %"$have_gas_2275"
  %"$consume_2288" = sub i64 %"$gasrem_2284", 1
  store i64 %"$consume_2288", i64* @_gasrem, align 8
  %"$BoolUtils.andb_189" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2289" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2290" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2289", 0
  %"$BoolUtils.andb_envptr_2291" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2289", 1
  %"$$res_102_2292" = load %TName_Bool*, %TName_Bool** %"$res_102", align 8
  %"$BoolUtils.andb_call_2293" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2290"(i8* %"$BoolUtils.andb_envptr_2291", %TName_Bool* %"$$res_102_2292")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2293", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8
  %"$BoolUtils.andb_190" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_189_2294" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8
  %"$$BoolUtils.andb_189_fptr_2295" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_2294", 0
  %"$$BoolUtils.andb_189_envptr_2296" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_2294", 1
  %"$$res__105_2297" = load %TName_Bool*, %TName_Bool** %"$res__105", align 8
  %"$$BoolUtils.andb_189_call_2298" = call %TName_Bool* %"$$BoolUtils.andb_189_fptr_2295"(i8* %"$$BoolUtils.andb_189_envptr_2296", %TName_Bool* %"$$res__105_2297")
  store %TName_Bool* %"$$BoolUtils.andb_189_call_2298", %TName_Bool** %"$BoolUtils.andb_190", align 8
  %"$$BoolUtils.andb_190_2299" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_190", align 8
  store %TName_Bool* %"$$BoolUtils.andb_190_2299", %TName_Bool** %"$res_106", align 8
  %"$gasrem_2300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2301" = icmp ugt i64 1, %"$gasrem_2300"
  br i1 %"$gascmp_2301", label %"$out_of_gas_2302", label %"$have_gas_2303"

"$out_of_gas_2302":                               ; preds = %"$have_gas_2287"
  call void @_out_of_gas()
  br label %"$have_gas_2303"

"$have_gas_2303":                                 ; preds = %"$out_of_gas_2302", %"$have_gas_2287"
  %"$consume_2304" = sub i64 %"$gasrem_2300", 1
  store i64 %"$consume_2304", i64* @_gasrem, align 8
  %"$p_107" = alloca %Int256, align 8
  %"$p1_2305" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2306" = extractvalue %Uint32 %"$p1_2305", 0
  %"$valueof_2307" = zext i32 %"$valueof_2306" to i64
  %"$gaslogof_2308" = uitofp i64 %"$valueof_2307" to double
  %"$gaslogof_2309" = fadd double %"$gaslogof_2308", 1.000000e+00
  %"$gaslogof_2310" = call double @llvm.log.f64(double %"$gaslogof_2309")
  %"$gaslogof_2311" = fptoui double %"$gaslogof_2310" to i64
  %"$gaslogof_2312" = add i64 %"$gaslogof_2311", 1
  %"$gasmul_2313" = mul i64 20, %"$gaslogof_2312"
  %"$gasmul_2314" = mul i64 %"$gasmul_2313", 4
  %"$gasrem_2315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2316" = icmp ugt i64 %"$gasmul_2314", %"$gasrem_2315"
  br i1 %"$gascmp_2316", label %"$out_of_gas_2317", label %"$have_gas_2318"

"$out_of_gas_2317":                               ; preds = %"$have_gas_2303"
  call void @_out_of_gas()
  br label %"$have_gas_2318"

"$have_gas_2318":                                 ; preds = %"$out_of_gas_2317", %"$have_gas_2303"
  %"$consume_2319" = sub i64 %"$gasrem_2315", %"$gasmul_2314"
  store i64 %"$consume_2319", i64* @_gasrem, align 8
  %"$execptr_load_2320" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2321" = alloca %Int256, align 8
  %"$t8_2322" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2322", %Int256* %"$pow_t8_2321", align 8
  %"$p1_2323" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2324" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2320", %Int256* %"$pow_t8_2321", %Uint32 %"$p1_2323")
  %"$pow_2326" = load %Int256, %Int256* %"$pow_call_2324", align 8
  store %Int256 %"$pow_2326", %Int256* %"$p_107", align 8
  %"$gasrem_2327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2328" = icmp ugt i64 1, %"$gasrem_2327"
  br i1 %"$gascmp_2328", label %"$out_of_gas_2329", label %"$have_gas_2330"

"$out_of_gas_2329":                               ; preds = %"$have_gas_2318"
  call void @_out_of_gas()
  br label %"$have_gas_2330"

"$have_gas_2330":                                 ; preds = %"$out_of_gas_2329", %"$have_gas_2318"
  %"$consume_2331" = sub i64 %"$gasrem_2327", 1
  store i64 %"$consume_2331", i64* @_gasrem, align 8
  %"$res_110" = alloca %TName_Bool*, align 8
  %"$gasrem_2332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2333" = icmp ugt i64 1, %"$gasrem_2332"
  br i1 %"$gascmp_2333", label %"$out_of_gas_2334", label %"$have_gas_2335"

"$out_of_gas_2334":                               ; preds = %"$have_gas_2330"
  call void @_out_of_gas()
  br label %"$have_gas_2335"

"$have_gas_2335":                                 ; preds = %"$out_of_gas_2334", %"$have_gas_2330"
  %"$consume_2336" = sub i64 %"$gasrem_2332", 1
  store i64 %"$consume_2336", i64* @_gasrem, align 8
  %"$ans_108" = alloca %Int256, align 8
  %"$gasrem_2337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2338" = icmp ugt i64 1, %"$gasrem_2337"
  br i1 %"$gascmp_2338", label %"$out_of_gas_2339", label %"$have_gas_2340"

"$out_of_gas_2339":                               ; preds = %"$have_gas_2335"
  call void @_out_of_gas()
  br label %"$have_gas_2340"

"$have_gas_2340":                                 ; preds = %"$out_of_gas_2339", %"$have_gas_2335"
  %"$consume_2341" = sub i64 %"$gasrem_2337", 1
  store i64 %"$consume_2341", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_108", align 8
  %"$gasrem_2342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2343" = icmp ugt i64 1, %"$gasrem_2342"
  br i1 %"$gascmp_2343", label %"$out_of_gas_2344", label %"$have_gas_2345"

"$out_of_gas_2344":                               ; preds = %"$have_gas_2340"
  call void @_out_of_gas()
  br label %"$have_gas_2345"

"$have_gas_2345":                                 ; preds = %"$out_of_gas_2344", %"$have_gas_2340"
  %"$consume_2346" = sub i64 %"$gasrem_2342", 1
  store i64 %"$consume_2346", i64* @_gasrem, align 8
  %"$res__109" = alloca %TName_Bool*, align 8
  %"$gasrem_2348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2349" = icmp ugt i64 16, %"$gasrem_2348"
  br i1 %"$gascmp_2349", label %"$out_of_gas_2350", label %"$have_gas_2351"

"$out_of_gas_2350":                               ; preds = %"$have_gas_2345"
  call void @_out_of_gas()
  br label %"$have_gas_2351"

"$have_gas_2351":                                 ; preds = %"$out_of_gas_2350", %"$have_gas_2345"
  %"$consume_2352" = sub i64 %"$gasrem_2348", 16
  store i64 %"$consume_2352", i64* @_gasrem, align 8
  %"$execptr_load_2353" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_107_2354" = alloca %Int256, align 8
  %"$$p_107_2355" = load %Int256, %Int256* %"$p_107", align 8
  store %Int256 %"$$p_107_2355", %Int256* %"$eq_$p_107_2354", align 8
  %"$eq_$ans_108_2356" = alloca %Int256, align 8
  %"$$ans_108_2357" = load %Int256, %Int256* %"$ans_108", align 8
  store %Int256 %"$$ans_108_2357", %Int256* %"$eq_$ans_108_2356", align 8
  %"$eq_call_2358" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2353", %Int256* %"$eq_$p_107_2354", %Int256* %"$eq_$ans_108_2356")
  store %TName_Bool* %"$eq_call_2358", %TName_Bool** %"$res__109", align 8
  %"$gasrem_2360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2361" = icmp ugt i64 1, %"$gasrem_2360"
  br i1 %"$gascmp_2361", label %"$out_of_gas_2362", label %"$have_gas_2363"

"$out_of_gas_2362":                               ; preds = %"$have_gas_2351"
  call void @_out_of_gas()
  br label %"$have_gas_2363"

"$have_gas_2363":                                 ; preds = %"$out_of_gas_2362", %"$have_gas_2351"
  %"$consume_2364" = sub i64 %"$gasrem_2360", 1
  store i64 %"$consume_2364", i64* @_gasrem, align 8
  %"$BoolUtils.andb_191" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2365" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2366" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2365", 0
  %"$BoolUtils.andb_envptr_2367" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2365", 1
  %"$$res_106_2368" = load %TName_Bool*, %TName_Bool** %"$res_106", align 8
  %"$BoolUtils.andb_call_2369" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2366"(i8* %"$BoolUtils.andb_envptr_2367", %TName_Bool* %"$$res_106_2368")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2369", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8
  %"$BoolUtils.andb_192" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_191_2370" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8
  %"$$BoolUtils.andb_191_fptr_2371" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_2370", 0
  %"$$BoolUtils.andb_191_envptr_2372" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_2370", 1
  %"$$res__109_2373" = load %TName_Bool*, %TName_Bool** %"$res__109", align 8
  %"$$BoolUtils.andb_191_call_2374" = call %TName_Bool* %"$$BoolUtils.andb_191_fptr_2371"(i8* %"$$BoolUtils.andb_191_envptr_2372", %TName_Bool* %"$$res__109_2373")
  store %TName_Bool* %"$$BoolUtils.andb_191_call_2374", %TName_Bool** %"$BoolUtils.andb_192", align 8
  %"$$BoolUtils.andb_192_2375" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_192", align 8
  store %TName_Bool* %"$$BoolUtils.andb_192_2375", %TName_Bool** %"$res_110", align 8
  %"$gasrem_2376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2377" = icmp ugt i64 1, %"$gasrem_2376"
  br i1 %"$gascmp_2377", label %"$out_of_gas_2378", label %"$have_gas_2379"

"$out_of_gas_2378":                               ; preds = %"$have_gas_2363"
  call void @_out_of_gas()
  br label %"$have_gas_2379"

"$have_gas_2379":                                 ; preds = %"$out_of_gas_2378", %"$have_gas_2363"
  %"$consume_2380" = sub i64 %"$gasrem_2376", 1
  store i64 %"$consume_2380", i64* @_gasrem, align 8
  %"$p_111" = alloca %Int256, align 8
  %"$p2_2381" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2382" = extractvalue %Uint32 %"$p2_2381", 0
  %"$valueof_2383" = zext i32 %"$valueof_2382" to i64
  %"$gaslogof_2384" = uitofp i64 %"$valueof_2383" to double
  %"$gaslogof_2385" = fadd double %"$gaslogof_2384", 1.000000e+00
  %"$gaslogof_2386" = call double @llvm.log.f64(double %"$gaslogof_2385")
  %"$gaslogof_2387" = fptoui double %"$gaslogof_2386" to i64
  %"$gaslogof_2388" = add i64 %"$gaslogof_2387", 1
  %"$gasmul_2389" = mul i64 20, %"$gaslogof_2388"
  %"$gasmul_2390" = mul i64 %"$gasmul_2389", 4
  %"$gasrem_2391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2392" = icmp ugt i64 %"$gasmul_2390", %"$gasrem_2391"
  br i1 %"$gascmp_2392", label %"$out_of_gas_2393", label %"$have_gas_2394"

"$out_of_gas_2393":                               ; preds = %"$have_gas_2379"
  call void @_out_of_gas()
  br label %"$have_gas_2394"

"$have_gas_2394":                                 ; preds = %"$out_of_gas_2393", %"$have_gas_2379"
  %"$consume_2395" = sub i64 %"$gasrem_2391", %"$gasmul_2390"
  store i64 %"$consume_2395", i64* @_gasrem, align 8
  %"$execptr_load_2396" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2397" = alloca %Int256, align 8
  %"$t8_2398" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2398", %Int256* %"$pow_t8_2397", align 8
  %"$p2_2399" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2400" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2396", %Int256* %"$pow_t8_2397", %Uint32 %"$p2_2399")
  %"$pow_2402" = load %Int256, %Int256* %"$pow_call_2400", align 8
  store %Int256 %"$pow_2402", %Int256* %"$p_111", align 8
  %"$gasrem_2403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2404" = icmp ugt i64 1, %"$gasrem_2403"
  br i1 %"$gascmp_2404", label %"$out_of_gas_2405", label %"$have_gas_2406"

"$out_of_gas_2405":                               ; preds = %"$have_gas_2394"
  call void @_out_of_gas()
  br label %"$have_gas_2406"

"$have_gas_2406":                                 ; preds = %"$out_of_gas_2405", %"$have_gas_2394"
  %"$consume_2407" = sub i64 %"$gasrem_2403", 1
  store i64 %"$consume_2407", i64* @_gasrem, align 8
  %"$res_114" = alloca %TName_Bool*, align 8
  %"$gasrem_2408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2409" = icmp ugt i64 1, %"$gasrem_2408"
  br i1 %"$gascmp_2409", label %"$out_of_gas_2410", label %"$have_gas_2411"

"$out_of_gas_2410":                               ; preds = %"$have_gas_2406"
  call void @_out_of_gas()
  br label %"$have_gas_2411"

"$have_gas_2411":                                 ; preds = %"$out_of_gas_2410", %"$have_gas_2406"
  %"$consume_2412" = sub i64 %"$gasrem_2408", 1
  store i64 %"$consume_2412", i64* @_gasrem, align 8
  %"$ans_112" = alloca %Int256, align 8
  %"$gasrem_2413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2414" = icmp ugt i64 1, %"$gasrem_2413"
  br i1 %"$gascmp_2414", label %"$out_of_gas_2415", label %"$have_gas_2416"

"$out_of_gas_2415":                               ; preds = %"$have_gas_2411"
  call void @_out_of_gas()
  br label %"$have_gas_2416"

"$have_gas_2416":                                 ; preds = %"$out_of_gas_2415", %"$have_gas_2411"
  %"$consume_2417" = sub i64 %"$gasrem_2413", 1
  store i64 %"$consume_2417", i64* @_gasrem, align 8
  store %Int256 { i256 -10001 }, %Int256* %"$ans_112", align 8
  %"$gasrem_2418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2419" = icmp ugt i64 1, %"$gasrem_2418"
  br i1 %"$gascmp_2419", label %"$out_of_gas_2420", label %"$have_gas_2421"

"$out_of_gas_2420":                               ; preds = %"$have_gas_2416"
  call void @_out_of_gas()
  br label %"$have_gas_2421"

"$have_gas_2421":                                 ; preds = %"$out_of_gas_2420", %"$have_gas_2416"
  %"$consume_2422" = sub i64 %"$gasrem_2418", 1
  store i64 %"$consume_2422", i64* @_gasrem, align 8
  %"$res__113" = alloca %TName_Bool*, align 8
  %"$gasrem_2424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2425" = icmp ugt i64 16, %"$gasrem_2424"
  br i1 %"$gascmp_2425", label %"$out_of_gas_2426", label %"$have_gas_2427"

"$out_of_gas_2426":                               ; preds = %"$have_gas_2421"
  call void @_out_of_gas()
  br label %"$have_gas_2427"

"$have_gas_2427":                                 ; preds = %"$out_of_gas_2426", %"$have_gas_2421"
  %"$consume_2428" = sub i64 %"$gasrem_2424", 16
  store i64 %"$consume_2428", i64* @_gasrem, align 8
  %"$execptr_load_2429" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_111_2430" = alloca %Int256, align 8
  %"$$p_111_2431" = load %Int256, %Int256* %"$p_111", align 8
  store %Int256 %"$$p_111_2431", %Int256* %"$eq_$p_111_2430", align 8
  %"$eq_$ans_112_2432" = alloca %Int256, align 8
  %"$$ans_112_2433" = load %Int256, %Int256* %"$ans_112", align 8
  store %Int256 %"$$ans_112_2433", %Int256* %"$eq_$ans_112_2432", align 8
  %"$eq_call_2434" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2429", %Int256* %"$eq_$p_111_2430", %Int256* %"$eq_$ans_112_2432")
  store %TName_Bool* %"$eq_call_2434", %TName_Bool** %"$res__113", align 8
  %"$gasrem_2436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2437" = icmp ugt i64 1, %"$gasrem_2436"
  br i1 %"$gascmp_2437", label %"$out_of_gas_2438", label %"$have_gas_2439"

"$out_of_gas_2438":                               ; preds = %"$have_gas_2427"
  call void @_out_of_gas()
  br label %"$have_gas_2439"

"$have_gas_2439":                                 ; preds = %"$out_of_gas_2438", %"$have_gas_2427"
  %"$consume_2440" = sub i64 %"$gasrem_2436", 1
  store i64 %"$consume_2440", i64* @_gasrem, align 8
  %"$BoolUtils.andb_193" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2441" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2442" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2441", 0
  %"$BoolUtils.andb_envptr_2443" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2441", 1
  %"$$res_110_2444" = load %TName_Bool*, %TName_Bool** %"$res_110", align 8
  %"$BoolUtils.andb_call_2445" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2442"(i8* %"$BoolUtils.andb_envptr_2443", %TName_Bool* %"$$res_110_2444")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2445", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8
  %"$BoolUtils.andb_194" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_193_2446" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8
  %"$$BoolUtils.andb_193_fptr_2447" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2446", 0
  %"$$BoolUtils.andb_193_envptr_2448" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2446", 1
  %"$$res__113_2449" = load %TName_Bool*, %TName_Bool** %"$res__113", align 8
  %"$$BoolUtils.andb_193_call_2450" = call %TName_Bool* %"$$BoolUtils.andb_193_fptr_2447"(i8* %"$$BoolUtils.andb_193_envptr_2448", %TName_Bool* %"$$res__113_2449")
  store %TName_Bool* %"$$BoolUtils.andb_193_call_2450", %TName_Bool** %"$BoolUtils.andb_194", align 8
  %"$$BoolUtils.andb_194_2451" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_194", align 8
  store %TName_Bool* %"$$BoolUtils.andb_194_2451", %TName_Bool** %"$res_114", align 8
  %"$gasrem_2452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2453" = icmp ugt i64 1, %"$gasrem_2452"
  br i1 %"$gascmp_2453", label %"$out_of_gas_2454", label %"$have_gas_2455"

"$out_of_gas_2454":                               ; preds = %"$have_gas_2439"
  call void @_out_of_gas()
  br label %"$have_gas_2455"

"$have_gas_2455":                                 ; preds = %"$out_of_gas_2454", %"$have_gas_2439"
  %"$consume_2456" = sub i64 %"$gasrem_2452", 1
  store i64 %"$consume_2456", i64* @_gasrem, align 8
  %"$p_115" = alloca %Int256, align 8
  %"$p3_2457" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2458" = extractvalue %Uint32 %"$p3_2457", 0
  %"$valueof_2459" = zext i32 %"$valueof_2458" to i64
  %"$gaslogof_2460" = uitofp i64 %"$valueof_2459" to double
  %"$gaslogof_2461" = fadd double %"$gaslogof_2460", 1.000000e+00
  %"$gaslogof_2462" = call double @llvm.log.f64(double %"$gaslogof_2461")
  %"$gaslogof_2463" = fptoui double %"$gaslogof_2462" to i64
  %"$gaslogof_2464" = add i64 %"$gaslogof_2463", 1
  %"$gasmul_2465" = mul i64 20, %"$gaslogof_2464"
  %"$gasmul_2466" = mul i64 %"$gasmul_2465", 4
  %"$gasrem_2467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2468" = icmp ugt i64 %"$gasmul_2466", %"$gasrem_2467"
  br i1 %"$gascmp_2468", label %"$out_of_gas_2469", label %"$have_gas_2470"

"$out_of_gas_2469":                               ; preds = %"$have_gas_2455"
  call void @_out_of_gas()
  br label %"$have_gas_2470"

"$have_gas_2470":                                 ; preds = %"$out_of_gas_2469", %"$have_gas_2455"
  %"$consume_2471" = sub i64 %"$gasrem_2467", %"$gasmul_2466"
  store i64 %"$consume_2471", i64* @_gasrem, align 8
  %"$execptr_load_2472" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2473" = alloca %Int256, align 8
  %"$t8_2474" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2474", %Int256* %"$pow_t8_2473", align 8
  %"$p3_2475" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2476" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2472", %Int256* %"$pow_t8_2473", %Uint32 %"$p3_2475")
  %"$pow_2478" = load %Int256, %Int256* %"$pow_call_2476", align 8
  store %Int256 %"$pow_2478", %Int256* %"$p_115", align 8
  %"$gasrem_2479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2480" = icmp ugt i64 1, %"$gasrem_2479"
  br i1 %"$gascmp_2480", label %"$out_of_gas_2481", label %"$have_gas_2482"

"$out_of_gas_2481":                               ; preds = %"$have_gas_2470"
  call void @_out_of_gas()
  br label %"$have_gas_2482"

"$have_gas_2482":                                 ; preds = %"$out_of_gas_2481", %"$have_gas_2470"
  %"$consume_2483" = sub i64 %"$gasrem_2479", 1
  store i64 %"$consume_2483", i64* @_gasrem, align 8
  %"$res_118" = alloca %TName_Bool*, align 8
  %"$gasrem_2484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2485" = icmp ugt i64 1, %"$gasrem_2484"
  br i1 %"$gascmp_2485", label %"$out_of_gas_2486", label %"$have_gas_2487"

"$out_of_gas_2486":                               ; preds = %"$have_gas_2482"
  call void @_out_of_gas()
  br label %"$have_gas_2487"

"$have_gas_2487":                                 ; preds = %"$out_of_gas_2486", %"$have_gas_2482"
  %"$consume_2488" = sub i64 %"$gasrem_2484", 1
  store i64 %"$consume_2488", i64* @_gasrem, align 8
  %"$ans_116" = alloca %Int256, align 8
  %"$gasrem_2489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2490" = icmp ugt i64 1, %"$gasrem_2489"
  br i1 %"$gascmp_2490", label %"$out_of_gas_2491", label %"$have_gas_2492"

"$out_of_gas_2491":                               ; preds = %"$have_gas_2487"
  call void @_out_of_gas()
  br label %"$have_gas_2492"

"$have_gas_2492":                                 ; preds = %"$out_of_gas_2491", %"$have_gas_2487"
  %"$consume_2493" = sub i64 %"$gasrem_2489", 1
  store i64 %"$consume_2493", i64* @_gasrem, align 8
  store %Int256 { i256 10004000600040001 }, %Int256* %"$ans_116", align 8
  %"$gasrem_2494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2495" = icmp ugt i64 1, %"$gasrem_2494"
  br i1 %"$gascmp_2495", label %"$out_of_gas_2496", label %"$have_gas_2497"

"$out_of_gas_2496":                               ; preds = %"$have_gas_2492"
  call void @_out_of_gas()
  br label %"$have_gas_2497"

"$have_gas_2497":                                 ; preds = %"$out_of_gas_2496", %"$have_gas_2492"
  %"$consume_2498" = sub i64 %"$gasrem_2494", 1
  store i64 %"$consume_2498", i64* @_gasrem, align 8
  %"$res__117" = alloca %TName_Bool*, align 8
  %"$gasrem_2500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2501" = icmp ugt i64 16, %"$gasrem_2500"
  br i1 %"$gascmp_2501", label %"$out_of_gas_2502", label %"$have_gas_2503"

"$out_of_gas_2502":                               ; preds = %"$have_gas_2497"
  call void @_out_of_gas()
  br label %"$have_gas_2503"

"$have_gas_2503":                                 ; preds = %"$out_of_gas_2502", %"$have_gas_2497"
  %"$consume_2504" = sub i64 %"$gasrem_2500", 16
  store i64 %"$consume_2504", i64* @_gasrem, align 8
  %"$execptr_load_2505" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_115_2506" = alloca %Int256, align 8
  %"$$p_115_2507" = load %Int256, %Int256* %"$p_115", align 8
  store %Int256 %"$$p_115_2507", %Int256* %"$eq_$p_115_2506", align 8
  %"$eq_$ans_116_2508" = alloca %Int256, align 8
  %"$$ans_116_2509" = load %Int256, %Int256* %"$ans_116", align 8
  store %Int256 %"$$ans_116_2509", %Int256* %"$eq_$ans_116_2508", align 8
  %"$eq_call_2510" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2505", %Int256* %"$eq_$p_115_2506", %Int256* %"$eq_$ans_116_2508")
  store %TName_Bool* %"$eq_call_2510", %TName_Bool** %"$res__117", align 8
  %"$gasrem_2512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2513" = icmp ugt i64 1, %"$gasrem_2512"
  br i1 %"$gascmp_2513", label %"$out_of_gas_2514", label %"$have_gas_2515"

"$out_of_gas_2514":                               ; preds = %"$have_gas_2503"
  call void @_out_of_gas()
  br label %"$have_gas_2515"

"$have_gas_2515":                                 ; preds = %"$out_of_gas_2514", %"$have_gas_2503"
  %"$consume_2516" = sub i64 %"$gasrem_2512", 1
  store i64 %"$consume_2516", i64* @_gasrem, align 8
  %"$BoolUtils.andb_195" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2517" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2518" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2517", 0
  %"$BoolUtils.andb_envptr_2519" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2517", 1
  %"$$res_114_2520" = load %TName_Bool*, %TName_Bool** %"$res_114", align 8
  %"$BoolUtils.andb_call_2521" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2518"(i8* %"$BoolUtils.andb_envptr_2519", %TName_Bool* %"$$res_114_2520")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2521", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8
  %"$BoolUtils.andb_196" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_195_2522" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8
  %"$$BoolUtils.andb_195_fptr_2523" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2522", 0
  %"$$BoolUtils.andb_195_envptr_2524" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2522", 1
  %"$$res__117_2525" = load %TName_Bool*, %TName_Bool** %"$res__117", align 8
  %"$$BoolUtils.andb_195_call_2526" = call %TName_Bool* %"$$BoolUtils.andb_195_fptr_2523"(i8* %"$$BoolUtils.andb_195_envptr_2524", %TName_Bool* %"$$res__117_2525")
  store %TName_Bool* %"$$BoolUtils.andb_195_call_2526", %TName_Bool** %"$BoolUtils.andb_196", align 8
  %"$$BoolUtils.andb_196_2527" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_196", align 8
  store %TName_Bool* %"$$BoolUtils.andb_196_2527", %TName_Bool** %"$res_118", align 8
  %"$gasrem_2528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2529" = icmp ugt i64 1, %"$gasrem_2528"
  br i1 %"$gascmp_2529", label %"$out_of_gas_2530", label %"$have_gas_2531"

"$out_of_gas_2530":                               ; preds = %"$have_gas_2515"
  call void @_out_of_gas()
  br label %"$have_gas_2531"

"$have_gas_2531":                                 ; preds = %"$out_of_gas_2530", %"$have_gas_2515"
  %"$consume_2532" = sub i64 %"$gasrem_2528", 1
  store i64 %"$consume_2532", i64* @_gasrem, align 8
  %"$p_119" = alloca %Int256, align 8
  %"$p4_2533" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2534" = extractvalue %Uint32 %"$p4_2533", 0
  %"$valueof_2535" = zext i32 %"$valueof_2534" to i64
  %"$gaslogof_2536" = uitofp i64 %"$valueof_2535" to double
  %"$gaslogof_2537" = fadd double %"$gaslogof_2536", 1.000000e+00
  %"$gaslogof_2538" = call double @llvm.log.f64(double %"$gaslogof_2537")
  %"$gaslogof_2539" = fptoui double %"$gaslogof_2538" to i64
  %"$gaslogof_2540" = add i64 %"$gaslogof_2539", 1
  %"$gasmul_2541" = mul i64 20, %"$gaslogof_2540"
  %"$gasmul_2542" = mul i64 %"$gasmul_2541", 4
  %"$gasrem_2543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2544" = icmp ugt i64 %"$gasmul_2542", %"$gasrem_2543"
  br i1 %"$gascmp_2544", label %"$out_of_gas_2545", label %"$have_gas_2546"

"$out_of_gas_2545":                               ; preds = %"$have_gas_2531"
  call void @_out_of_gas()
  br label %"$have_gas_2546"

"$have_gas_2546":                                 ; preds = %"$out_of_gas_2545", %"$have_gas_2531"
  %"$consume_2547" = sub i64 %"$gasrem_2543", %"$gasmul_2542"
  store i64 %"$consume_2547", i64* @_gasrem, align 8
  %"$execptr_load_2548" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2549" = alloca %Int256, align 8
  %"$t8_2550" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2550", %Int256* %"$pow_t8_2549", align 8
  %"$p4_2551" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2552" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2548", %Int256* %"$pow_t8_2549", %Uint32 %"$p4_2551")
  %"$pow_2554" = load %Int256, %Int256* %"$pow_call_2552", align 8
  store %Int256 %"$pow_2554", %Int256* %"$p_119", align 8
  %"$gasrem_2555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2556" = icmp ugt i64 1, %"$gasrem_2555"
  br i1 %"$gascmp_2556", label %"$out_of_gas_2557", label %"$have_gas_2558"

"$out_of_gas_2557":                               ; preds = %"$have_gas_2546"
  call void @_out_of_gas()
  br label %"$have_gas_2558"

"$have_gas_2558":                                 ; preds = %"$out_of_gas_2557", %"$have_gas_2546"
  %"$consume_2559" = sub i64 %"$gasrem_2555", 1
  store i64 %"$consume_2559", i64* @_gasrem, align 8
  %"$res_122" = alloca %TName_Bool*, align 8
  %"$gasrem_2560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2561" = icmp ugt i64 1, %"$gasrem_2560"
  br i1 %"$gascmp_2561", label %"$out_of_gas_2562", label %"$have_gas_2563"

"$out_of_gas_2562":                               ; preds = %"$have_gas_2558"
  call void @_out_of_gas()
  br label %"$have_gas_2563"

"$have_gas_2563":                                 ; preds = %"$out_of_gas_2562", %"$have_gas_2558"
  %"$consume_2564" = sub i64 %"$gasrem_2560", 1
  store i64 %"$consume_2564", i64* @_gasrem, align 8
  %"$ans_120" = alloca %Int256, align 8
  %"$gasrem_2565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2566" = icmp ugt i64 1, %"$gasrem_2565"
  br i1 %"$gascmp_2566", label %"$out_of_gas_2567", label %"$have_gas_2568"

"$out_of_gas_2567":                               ; preds = %"$have_gas_2563"
  call void @_out_of_gas()
  br label %"$have_gas_2568"

"$have_gas_2568":                                 ; preds = %"$out_of_gas_2567", %"$have_gas_2563"
  %"$consume_2569" = sub i64 %"$gasrem_2565", 1
  store i64 %"$consume_2569", i64* @_gasrem, align 8
  store %Int256 { i256 10010004501200210025202100120004500100001 }, %Int256* %"$ans_120", align 8
  %"$gasrem_2570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2571" = icmp ugt i64 1, %"$gasrem_2570"
  br i1 %"$gascmp_2571", label %"$out_of_gas_2572", label %"$have_gas_2573"

"$out_of_gas_2572":                               ; preds = %"$have_gas_2568"
  call void @_out_of_gas()
  br label %"$have_gas_2573"

"$have_gas_2573":                                 ; preds = %"$out_of_gas_2572", %"$have_gas_2568"
  %"$consume_2574" = sub i64 %"$gasrem_2570", 1
  store i64 %"$consume_2574", i64* @_gasrem, align 8
  %"$res__121" = alloca %TName_Bool*, align 8
  %"$gasrem_2576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2577" = icmp ugt i64 16, %"$gasrem_2576"
  br i1 %"$gascmp_2577", label %"$out_of_gas_2578", label %"$have_gas_2579"

"$out_of_gas_2578":                               ; preds = %"$have_gas_2573"
  call void @_out_of_gas()
  br label %"$have_gas_2579"

"$have_gas_2579":                                 ; preds = %"$out_of_gas_2578", %"$have_gas_2573"
  %"$consume_2580" = sub i64 %"$gasrem_2576", 16
  store i64 %"$consume_2580", i64* @_gasrem, align 8
  %"$execptr_load_2581" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_119_2582" = alloca %Int256, align 8
  %"$$p_119_2583" = load %Int256, %Int256* %"$p_119", align 8
  store %Int256 %"$$p_119_2583", %Int256* %"$eq_$p_119_2582", align 8
  %"$eq_$ans_120_2584" = alloca %Int256, align 8
  %"$$ans_120_2585" = load %Int256, %Int256* %"$ans_120", align 8
  store %Int256 %"$$ans_120_2585", %Int256* %"$eq_$ans_120_2584", align 8
  %"$eq_call_2586" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2581", %Int256* %"$eq_$p_119_2582", %Int256* %"$eq_$ans_120_2584")
  store %TName_Bool* %"$eq_call_2586", %TName_Bool** %"$res__121", align 8
  %"$gasrem_2588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2589" = icmp ugt i64 1, %"$gasrem_2588"
  br i1 %"$gascmp_2589", label %"$out_of_gas_2590", label %"$have_gas_2591"

"$out_of_gas_2590":                               ; preds = %"$have_gas_2579"
  call void @_out_of_gas()
  br label %"$have_gas_2591"

"$have_gas_2591":                                 ; preds = %"$out_of_gas_2590", %"$have_gas_2579"
  %"$consume_2592" = sub i64 %"$gasrem_2588", 1
  store i64 %"$consume_2592", i64* @_gasrem, align 8
  %"$BoolUtils.andb_197" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2593" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2594" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2593", 0
  %"$BoolUtils.andb_envptr_2595" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2593", 1
  %"$$res_118_2596" = load %TName_Bool*, %TName_Bool** %"$res_118", align 8
  %"$BoolUtils.andb_call_2597" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2594"(i8* %"$BoolUtils.andb_envptr_2595", %TName_Bool* %"$$res_118_2596")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2597", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8
  %"$BoolUtils.andb_198" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_197_2598" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8
  %"$$BoolUtils.andb_197_fptr_2599" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2598", 0
  %"$$BoolUtils.andb_197_envptr_2600" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2598", 1
  %"$$res__121_2601" = load %TName_Bool*, %TName_Bool** %"$res__121", align 8
  %"$$BoolUtils.andb_197_call_2602" = call %TName_Bool* %"$$BoolUtils.andb_197_fptr_2599"(i8* %"$$BoolUtils.andb_197_envptr_2600", %TName_Bool* %"$$res__121_2601")
  store %TName_Bool* %"$$BoolUtils.andb_197_call_2602", %TName_Bool** %"$BoolUtils.andb_198", align 8
  %"$$BoolUtils.andb_198_2603" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_198", align 8
  store %TName_Bool* %"$$BoolUtils.andb_198_2603", %TName_Bool** %"$res_122", align 8
  %"$gasrem_2604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2605" = icmp ugt i64 1, %"$gasrem_2604"
  br i1 %"$gascmp_2605", label %"$out_of_gas_2606", label %"$have_gas_2607"

"$out_of_gas_2606":                               ; preds = %"$have_gas_2591"
  call void @_out_of_gas()
  br label %"$have_gas_2607"

"$have_gas_2607":                                 ; preds = %"$out_of_gas_2606", %"$have_gas_2591"
  %"$consume_2608" = sub i64 %"$gasrem_2604", 1
  store i64 %"$consume_2608", i64* @_gasrem, align 8
  %"$p_123" = alloca %Int256, align 8
  %"$p1_2609" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2610" = extractvalue %Uint32 %"$p1_2609", 0
  %"$valueof_2611" = zext i32 %"$valueof_2610" to i64
  %"$gaslogof_2612" = uitofp i64 %"$valueof_2611" to double
  %"$gaslogof_2613" = fadd double %"$gaslogof_2612", 1.000000e+00
  %"$gaslogof_2614" = call double @llvm.log.f64(double %"$gaslogof_2613")
  %"$gaslogof_2615" = fptoui double %"$gaslogof_2614" to i64
  %"$gaslogof_2616" = add i64 %"$gaslogof_2615", 1
  %"$gasmul_2617" = mul i64 20, %"$gaslogof_2616"
  %"$gasmul_2618" = mul i64 %"$gasmul_2617", 4
  %"$gasrem_2619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2620" = icmp ugt i64 %"$gasmul_2618", %"$gasrem_2619"
  br i1 %"$gascmp_2620", label %"$out_of_gas_2621", label %"$have_gas_2622"

"$out_of_gas_2621":                               ; preds = %"$have_gas_2607"
  call void @_out_of_gas()
  br label %"$have_gas_2622"

"$have_gas_2622":                                 ; preds = %"$out_of_gas_2621", %"$have_gas_2607"
  %"$consume_2623" = sub i64 %"$gasrem_2619", %"$gasmul_2618"
  store i64 %"$consume_2623", i64* @_gasrem, align 8
  %"$execptr_load_2624" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2625" = alloca %Int256, align 8
  %"$t9_2626" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2626", %Int256* %"$pow_t9_2625", align 8
  %"$p1_2627" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2628" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2624", %Int256* %"$pow_t9_2625", %Uint32 %"$p1_2627")
  %"$pow_2630" = load %Int256, %Int256* %"$pow_call_2628", align 8
  store %Int256 %"$pow_2630", %Int256* %"$p_123", align 8
  %"$gasrem_2631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2632" = icmp ugt i64 1, %"$gasrem_2631"
  br i1 %"$gascmp_2632", label %"$out_of_gas_2633", label %"$have_gas_2634"

"$out_of_gas_2633":                               ; preds = %"$have_gas_2622"
  call void @_out_of_gas()
  br label %"$have_gas_2634"

"$have_gas_2634":                                 ; preds = %"$out_of_gas_2633", %"$have_gas_2622"
  %"$consume_2635" = sub i64 %"$gasrem_2631", 1
  store i64 %"$consume_2635", i64* @_gasrem, align 8
  %"$res_126" = alloca %TName_Bool*, align 8
  %"$gasrem_2636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2637" = icmp ugt i64 1, %"$gasrem_2636"
  br i1 %"$gascmp_2637", label %"$out_of_gas_2638", label %"$have_gas_2639"

"$out_of_gas_2638":                               ; preds = %"$have_gas_2634"
  call void @_out_of_gas()
  br label %"$have_gas_2639"

"$have_gas_2639":                                 ; preds = %"$out_of_gas_2638", %"$have_gas_2634"
  %"$consume_2640" = sub i64 %"$gasrem_2636", 1
  store i64 %"$consume_2640", i64* @_gasrem, align 8
  %"$ans_124" = alloca %Int256, align 8
  %"$gasrem_2641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2642" = icmp ugt i64 1, %"$gasrem_2641"
  br i1 %"$gascmp_2642", label %"$out_of_gas_2643", label %"$have_gas_2644"

"$out_of_gas_2643":                               ; preds = %"$have_gas_2639"
  call void @_out_of_gas()
  br label %"$have_gas_2644"

"$have_gas_2644":                                 ; preds = %"$out_of_gas_2643", %"$have_gas_2639"
  %"$consume_2645" = sub i64 %"$gasrem_2641", 1
  store i64 %"$consume_2645", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_124", align 8
  %"$gasrem_2646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2647" = icmp ugt i64 1, %"$gasrem_2646"
  br i1 %"$gascmp_2647", label %"$out_of_gas_2648", label %"$have_gas_2649"

"$out_of_gas_2648":                               ; preds = %"$have_gas_2644"
  call void @_out_of_gas()
  br label %"$have_gas_2649"

"$have_gas_2649":                                 ; preds = %"$out_of_gas_2648", %"$have_gas_2644"
  %"$consume_2650" = sub i64 %"$gasrem_2646", 1
  store i64 %"$consume_2650", i64* @_gasrem, align 8
  %"$res__125" = alloca %TName_Bool*, align 8
  %"$gasrem_2652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2653" = icmp ugt i64 16, %"$gasrem_2652"
  br i1 %"$gascmp_2653", label %"$out_of_gas_2654", label %"$have_gas_2655"

"$out_of_gas_2654":                               ; preds = %"$have_gas_2649"
  call void @_out_of_gas()
  br label %"$have_gas_2655"

"$have_gas_2655":                                 ; preds = %"$out_of_gas_2654", %"$have_gas_2649"
  %"$consume_2656" = sub i64 %"$gasrem_2652", 16
  store i64 %"$consume_2656", i64* @_gasrem, align 8
  %"$execptr_load_2657" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_123_2658" = alloca %Int256, align 8
  %"$$p_123_2659" = load %Int256, %Int256* %"$p_123", align 8
  store %Int256 %"$$p_123_2659", %Int256* %"$eq_$p_123_2658", align 8
  %"$eq_$ans_124_2660" = alloca %Int256, align 8
  %"$$ans_124_2661" = load %Int256, %Int256* %"$ans_124", align 8
  store %Int256 %"$$ans_124_2661", %Int256* %"$eq_$ans_124_2660", align 8
  %"$eq_call_2662" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2657", %Int256* %"$eq_$p_123_2658", %Int256* %"$eq_$ans_124_2660")
  store %TName_Bool* %"$eq_call_2662", %TName_Bool** %"$res__125", align 8
  %"$gasrem_2664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2665" = icmp ugt i64 1, %"$gasrem_2664"
  br i1 %"$gascmp_2665", label %"$out_of_gas_2666", label %"$have_gas_2667"

"$out_of_gas_2666":                               ; preds = %"$have_gas_2655"
  call void @_out_of_gas()
  br label %"$have_gas_2667"

"$have_gas_2667":                                 ; preds = %"$out_of_gas_2666", %"$have_gas_2655"
  %"$consume_2668" = sub i64 %"$gasrem_2664", 1
  store i64 %"$consume_2668", i64* @_gasrem, align 8
  %"$BoolUtils.andb_199" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2669" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2670" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2669", 0
  %"$BoolUtils.andb_envptr_2671" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2669", 1
  %"$$res_122_2672" = load %TName_Bool*, %TName_Bool** %"$res_122", align 8
  %"$BoolUtils.andb_call_2673" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2670"(i8* %"$BoolUtils.andb_envptr_2671", %TName_Bool* %"$$res_122_2672")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2673", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8
  %"$BoolUtils.andb_200" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_199_2674" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8
  %"$$BoolUtils.andb_199_fptr_2675" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2674", 0
  %"$$BoolUtils.andb_199_envptr_2676" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2674", 1
  %"$$res__125_2677" = load %TName_Bool*, %TName_Bool** %"$res__125", align 8
  %"$$BoolUtils.andb_199_call_2678" = call %TName_Bool* %"$$BoolUtils.andb_199_fptr_2675"(i8* %"$$BoolUtils.andb_199_envptr_2676", %TName_Bool* %"$$res__125_2677")
  store %TName_Bool* %"$$BoolUtils.andb_199_call_2678", %TName_Bool** %"$BoolUtils.andb_200", align 8
  %"$$BoolUtils.andb_200_2679" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_200", align 8
  store %TName_Bool* %"$$BoolUtils.andb_200_2679", %TName_Bool** %"$res_126", align 8
  %"$gasrem_2680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2681" = icmp ugt i64 1, %"$gasrem_2680"
  br i1 %"$gascmp_2681", label %"$out_of_gas_2682", label %"$have_gas_2683"

"$out_of_gas_2682":                               ; preds = %"$have_gas_2667"
  call void @_out_of_gas()
  br label %"$have_gas_2683"

"$have_gas_2683":                                 ; preds = %"$out_of_gas_2682", %"$have_gas_2667"
  %"$consume_2684" = sub i64 %"$gasrem_2680", 1
  store i64 %"$consume_2684", i64* @_gasrem, align 8
  %"$p_127" = alloca %Int256, align 8
  %"$p2_2685" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2686" = extractvalue %Uint32 %"$p2_2685", 0
  %"$valueof_2687" = zext i32 %"$valueof_2686" to i64
  %"$gaslogof_2688" = uitofp i64 %"$valueof_2687" to double
  %"$gaslogof_2689" = fadd double %"$gaslogof_2688", 1.000000e+00
  %"$gaslogof_2690" = call double @llvm.log.f64(double %"$gaslogof_2689")
  %"$gaslogof_2691" = fptoui double %"$gaslogof_2690" to i64
  %"$gaslogof_2692" = add i64 %"$gaslogof_2691", 1
  %"$gasmul_2693" = mul i64 20, %"$gaslogof_2692"
  %"$gasmul_2694" = mul i64 %"$gasmul_2693", 4
  %"$gasrem_2695" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2696" = icmp ugt i64 %"$gasmul_2694", %"$gasrem_2695"
  br i1 %"$gascmp_2696", label %"$out_of_gas_2697", label %"$have_gas_2698"

"$out_of_gas_2697":                               ; preds = %"$have_gas_2683"
  call void @_out_of_gas()
  br label %"$have_gas_2698"

"$have_gas_2698":                                 ; preds = %"$out_of_gas_2697", %"$have_gas_2683"
  %"$consume_2699" = sub i64 %"$gasrem_2695", %"$gasmul_2694"
  store i64 %"$consume_2699", i64* @_gasrem, align 8
  %"$execptr_load_2700" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2701" = alloca %Int256, align 8
  %"$t9_2702" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2702", %Int256* %"$pow_t9_2701", align 8
  %"$p2_2703" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2704" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2700", %Int256* %"$pow_t9_2701", %Uint32 %"$p2_2703")
  %"$pow_2706" = load %Int256, %Int256* %"$pow_call_2704", align 8
  store %Int256 %"$pow_2706", %Int256* %"$p_127", align 8
  %"$gasrem_2707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2708" = icmp ugt i64 1, %"$gasrem_2707"
  br i1 %"$gascmp_2708", label %"$out_of_gas_2709", label %"$have_gas_2710"

"$out_of_gas_2709":                               ; preds = %"$have_gas_2698"
  call void @_out_of_gas()
  br label %"$have_gas_2710"

"$have_gas_2710":                                 ; preds = %"$out_of_gas_2709", %"$have_gas_2698"
  %"$consume_2711" = sub i64 %"$gasrem_2707", 1
  store i64 %"$consume_2711", i64* @_gasrem, align 8
  %"$res_130" = alloca %TName_Bool*, align 8
  %"$gasrem_2712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2713" = icmp ugt i64 1, %"$gasrem_2712"
  br i1 %"$gascmp_2713", label %"$out_of_gas_2714", label %"$have_gas_2715"

"$out_of_gas_2714":                               ; preds = %"$have_gas_2710"
  call void @_out_of_gas()
  br label %"$have_gas_2715"

"$have_gas_2715":                                 ; preds = %"$out_of_gas_2714", %"$have_gas_2710"
  %"$consume_2716" = sub i64 %"$gasrem_2712", 1
  store i64 %"$consume_2716", i64* @_gasrem, align 8
  %"$ans_128" = alloca %Int256, align 8
  %"$gasrem_2717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2718" = icmp ugt i64 1, %"$gasrem_2717"
  br i1 %"$gascmp_2718", label %"$out_of_gas_2719", label %"$have_gas_2720"

"$out_of_gas_2719":                               ; preds = %"$have_gas_2715"
  call void @_out_of_gas()
  br label %"$have_gas_2720"

"$have_gas_2720":                                 ; preds = %"$out_of_gas_2719", %"$have_gas_2715"
  %"$consume_2721" = sub i64 %"$gasrem_2717", 1
  store i64 %"$consume_2721", i64* @_gasrem, align 8
  store %Int256 { i256 10002 }, %Int256* %"$ans_128", align 8
  %"$gasrem_2722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2723" = icmp ugt i64 1, %"$gasrem_2722"
  br i1 %"$gascmp_2723", label %"$out_of_gas_2724", label %"$have_gas_2725"

"$out_of_gas_2724":                               ; preds = %"$have_gas_2720"
  call void @_out_of_gas()
  br label %"$have_gas_2725"

"$have_gas_2725":                                 ; preds = %"$out_of_gas_2724", %"$have_gas_2720"
  %"$consume_2726" = sub i64 %"$gasrem_2722", 1
  store i64 %"$consume_2726", i64* @_gasrem, align 8
  %"$res__129" = alloca %TName_Bool*, align 8
  %"$gasrem_2728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2729" = icmp ugt i64 16, %"$gasrem_2728"
  br i1 %"$gascmp_2729", label %"$out_of_gas_2730", label %"$have_gas_2731"

"$out_of_gas_2730":                               ; preds = %"$have_gas_2725"
  call void @_out_of_gas()
  br label %"$have_gas_2731"

"$have_gas_2731":                                 ; preds = %"$out_of_gas_2730", %"$have_gas_2725"
  %"$consume_2732" = sub i64 %"$gasrem_2728", 16
  store i64 %"$consume_2732", i64* @_gasrem, align 8
  %"$execptr_load_2733" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_127_2734" = alloca %Int256, align 8
  %"$$p_127_2735" = load %Int256, %Int256* %"$p_127", align 8
  store %Int256 %"$$p_127_2735", %Int256* %"$eq_$p_127_2734", align 8
  %"$eq_$ans_128_2736" = alloca %Int256, align 8
  %"$$ans_128_2737" = load %Int256, %Int256* %"$ans_128", align 8
  store %Int256 %"$$ans_128_2737", %Int256* %"$eq_$ans_128_2736", align 8
  %"$eq_call_2738" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2733", %Int256* %"$eq_$p_127_2734", %Int256* %"$eq_$ans_128_2736")
  store %TName_Bool* %"$eq_call_2738", %TName_Bool** %"$res__129", align 8
  %"$gasrem_2740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2741" = icmp ugt i64 1, %"$gasrem_2740"
  br i1 %"$gascmp_2741", label %"$out_of_gas_2742", label %"$have_gas_2743"

"$out_of_gas_2742":                               ; preds = %"$have_gas_2731"
  call void @_out_of_gas()
  br label %"$have_gas_2743"

"$have_gas_2743":                                 ; preds = %"$out_of_gas_2742", %"$have_gas_2731"
  %"$consume_2744" = sub i64 %"$gasrem_2740", 1
  store i64 %"$consume_2744", i64* @_gasrem, align 8
  %"$BoolUtils.andb_201" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2745" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2746" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2745", 0
  %"$BoolUtils.andb_envptr_2747" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2745", 1
  %"$$res_126_2748" = load %TName_Bool*, %TName_Bool** %"$res_126", align 8
  %"$BoolUtils.andb_call_2749" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2746"(i8* %"$BoolUtils.andb_envptr_2747", %TName_Bool* %"$$res_126_2748")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2749", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_201", align 8
  %"$BoolUtils.andb_202" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_201_2750" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_201", align 8
  %"$$BoolUtils.andb_201_fptr_2751" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_201_2750", 0
  %"$$BoolUtils.andb_201_envptr_2752" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_201_2750", 1
  %"$$res__129_2753" = load %TName_Bool*, %TName_Bool** %"$res__129", align 8
  %"$$BoolUtils.andb_201_call_2754" = call %TName_Bool* %"$$BoolUtils.andb_201_fptr_2751"(i8* %"$$BoolUtils.andb_201_envptr_2752", %TName_Bool* %"$$res__129_2753")
  store %TName_Bool* %"$$BoolUtils.andb_201_call_2754", %TName_Bool** %"$BoolUtils.andb_202", align 8
  %"$$BoolUtils.andb_202_2755" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_202", align 8
  store %TName_Bool* %"$$BoolUtils.andb_202_2755", %TName_Bool** %"$res_130", align 8
  %"$gasrem_2756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2757" = icmp ugt i64 1, %"$gasrem_2756"
  br i1 %"$gascmp_2757", label %"$out_of_gas_2758", label %"$have_gas_2759"

"$out_of_gas_2758":                               ; preds = %"$have_gas_2743"
  call void @_out_of_gas()
  br label %"$have_gas_2759"

"$have_gas_2759":                                 ; preds = %"$out_of_gas_2758", %"$have_gas_2743"
  %"$consume_2760" = sub i64 %"$gasrem_2756", 1
  store i64 %"$consume_2760", i64* @_gasrem, align 8
  %"$p_131" = alloca %Int256, align 8
  %"$p3_2761" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2762" = extractvalue %Uint32 %"$p3_2761", 0
  %"$valueof_2763" = zext i32 %"$valueof_2762" to i64
  %"$gaslogof_2764" = uitofp i64 %"$valueof_2763" to double
  %"$gaslogof_2765" = fadd double %"$gaslogof_2764", 1.000000e+00
  %"$gaslogof_2766" = call double @llvm.log.f64(double %"$gaslogof_2765")
  %"$gaslogof_2767" = fptoui double %"$gaslogof_2766" to i64
  %"$gaslogof_2768" = add i64 %"$gaslogof_2767", 1
  %"$gasmul_2769" = mul i64 20, %"$gaslogof_2768"
  %"$gasmul_2770" = mul i64 %"$gasmul_2769", 4
  %"$gasrem_2771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2772" = icmp ugt i64 %"$gasmul_2770", %"$gasrem_2771"
  br i1 %"$gascmp_2772", label %"$out_of_gas_2773", label %"$have_gas_2774"

"$out_of_gas_2773":                               ; preds = %"$have_gas_2759"
  call void @_out_of_gas()
  br label %"$have_gas_2774"

"$have_gas_2774":                                 ; preds = %"$out_of_gas_2773", %"$have_gas_2759"
  %"$consume_2775" = sub i64 %"$gasrem_2771", %"$gasmul_2770"
  store i64 %"$consume_2775", i64* @_gasrem, align 8
  %"$execptr_load_2776" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2777" = alloca %Int256, align 8
  %"$t9_2778" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2778", %Int256* %"$pow_t9_2777", align 8
  %"$p3_2779" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2780" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2776", %Int256* %"$pow_t9_2777", %Uint32 %"$p3_2779")
  %"$pow_2782" = load %Int256, %Int256* %"$pow_call_2780", align 8
  store %Int256 %"$pow_2782", %Int256* %"$p_131", align 8
  %"$gasrem_2783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2784" = icmp ugt i64 1, %"$gasrem_2783"
  br i1 %"$gascmp_2784", label %"$out_of_gas_2785", label %"$have_gas_2786"

"$out_of_gas_2785":                               ; preds = %"$have_gas_2774"
  call void @_out_of_gas()
  br label %"$have_gas_2786"

"$have_gas_2786":                                 ; preds = %"$out_of_gas_2785", %"$have_gas_2774"
  %"$consume_2787" = sub i64 %"$gasrem_2783", 1
  store i64 %"$consume_2787", i64* @_gasrem, align 8
  %"$res_134" = alloca %TName_Bool*, align 8
  %"$gasrem_2788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2789" = icmp ugt i64 1, %"$gasrem_2788"
  br i1 %"$gascmp_2789", label %"$out_of_gas_2790", label %"$have_gas_2791"

"$out_of_gas_2790":                               ; preds = %"$have_gas_2786"
  call void @_out_of_gas()
  br label %"$have_gas_2791"

"$have_gas_2791":                                 ; preds = %"$out_of_gas_2790", %"$have_gas_2786"
  %"$consume_2792" = sub i64 %"$gasrem_2788", 1
  store i64 %"$consume_2792", i64* @_gasrem, align 8
  %"$ans_132" = alloca %Int256, align 8
  %"$gasrem_2793" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2794" = icmp ugt i64 1, %"$gasrem_2793"
  br i1 %"$gascmp_2794", label %"$out_of_gas_2795", label %"$have_gas_2796"

"$out_of_gas_2795":                               ; preds = %"$have_gas_2791"
  call void @_out_of_gas()
  br label %"$have_gas_2796"

"$have_gas_2796":                                 ; preds = %"$out_of_gas_2795", %"$have_gas_2791"
  %"$consume_2797" = sub i64 %"$gasrem_2793", 1
  store i64 %"$consume_2797", i64* @_gasrem, align 8
  store %Int256 { i256 10008002400320016 }, %Int256* %"$ans_132", align 8
  %"$gasrem_2798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2799" = icmp ugt i64 1, %"$gasrem_2798"
  br i1 %"$gascmp_2799", label %"$out_of_gas_2800", label %"$have_gas_2801"

"$out_of_gas_2800":                               ; preds = %"$have_gas_2796"
  call void @_out_of_gas()
  br label %"$have_gas_2801"

"$have_gas_2801":                                 ; preds = %"$out_of_gas_2800", %"$have_gas_2796"
  %"$consume_2802" = sub i64 %"$gasrem_2798", 1
  store i64 %"$consume_2802", i64* @_gasrem, align 8
  %"$res__133" = alloca %TName_Bool*, align 8
  %"$gasrem_2804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2805" = icmp ugt i64 16, %"$gasrem_2804"
  br i1 %"$gascmp_2805", label %"$out_of_gas_2806", label %"$have_gas_2807"

"$out_of_gas_2806":                               ; preds = %"$have_gas_2801"
  call void @_out_of_gas()
  br label %"$have_gas_2807"

"$have_gas_2807":                                 ; preds = %"$out_of_gas_2806", %"$have_gas_2801"
  %"$consume_2808" = sub i64 %"$gasrem_2804", 16
  store i64 %"$consume_2808", i64* @_gasrem, align 8
  %"$execptr_load_2809" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_131_2810" = alloca %Int256, align 8
  %"$$p_131_2811" = load %Int256, %Int256* %"$p_131", align 8
  store %Int256 %"$$p_131_2811", %Int256* %"$eq_$p_131_2810", align 8
  %"$eq_$ans_132_2812" = alloca %Int256, align 8
  %"$$ans_132_2813" = load %Int256, %Int256* %"$ans_132", align 8
  store %Int256 %"$$ans_132_2813", %Int256* %"$eq_$ans_132_2812", align 8
  %"$eq_call_2814" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2809", %Int256* %"$eq_$p_131_2810", %Int256* %"$eq_$ans_132_2812")
  store %TName_Bool* %"$eq_call_2814", %TName_Bool** %"$res__133", align 8
  %"$gasrem_2816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2817" = icmp ugt i64 1, %"$gasrem_2816"
  br i1 %"$gascmp_2817", label %"$out_of_gas_2818", label %"$have_gas_2819"

"$out_of_gas_2818":                               ; preds = %"$have_gas_2807"
  call void @_out_of_gas()
  br label %"$have_gas_2819"

"$have_gas_2819":                                 ; preds = %"$out_of_gas_2818", %"$have_gas_2807"
  %"$consume_2820" = sub i64 %"$gasrem_2816", 1
  store i64 %"$consume_2820", i64* @_gasrem, align 8
  %"$BoolUtils.andb_203" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2821" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2822" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2821", 0
  %"$BoolUtils.andb_envptr_2823" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2821", 1
  %"$$res_130_2824" = load %TName_Bool*, %TName_Bool** %"$res_130", align 8
  %"$BoolUtils.andb_call_2825" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2822"(i8* %"$BoolUtils.andb_envptr_2823", %TName_Bool* %"$$res_130_2824")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2825", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_203", align 8
  %"$BoolUtils.andb_204" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_203_2826" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_203", align 8
  %"$$BoolUtils.andb_203_fptr_2827" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_203_2826", 0
  %"$$BoolUtils.andb_203_envptr_2828" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_203_2826", 1
  %"$$res__133_2829" = load %TName_Bool*, %TName_Bool** %"$res__133", align 8
  %"$$BoolUtils.andb_203_call_2830" = call %TName_Bool* %"$$BoolUtils.andb_203_fptr_2827"(i8* %"$$BoolUtils.andb_203_envptr_2828", %TName_Bool* %"$$res__133_2829")
  store %TName_Bool* %"$$BoolUtils.andb_203_call_2830", %TName_Bool** %"$BoolUtils.andb_204", align 8
  %"$$BoolUtils.andb_204_2831" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_204", align 8
  store %TName_Bool* %"$$BoolUtils.andb_204_2831", %TName_Bool** %"$res_134", align 8
  %"$gasrem_2832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2833" = icmp ugt i64 1, %"$gasrem_2832"
  br i1 %"$gascmp_2833", label %"$out_of_gas_2834", label %"$have_gas_2835"

"$out_of_gas_2834":                               ; preds = %"$have_gas_2819"
  call void @_out_of_gas()
  br label %"$have_gas_2835"

"$have_gas_2835":                                 ; preds = %"$out_of_gas_2834", %"$have_gas_2819"
  %"$consume_2836" = sub i64 %"$gasrem_2832", 1
  store i64 %"$consume_2836", i64* @_gasrem, align 8
  %"$p_135" = alloca %Int256, align 8
  %"$p4_2837" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2838" = extractvalue %Uint32 %"$p4_2837", 0
  %"$valueof_2839" = zext i32 %"$valueof_2838" to i64
  %"$gaslogof_2840" = uitofp i64 %"$valueof_2839" to double
  %"$gaslogof_2841" = fadd double %"$gaslogof_2840", 1.000000e+00
  %"$gaslogof_2842" = call double @llvm.log.f64(double %"$gaslogof_2841")
  %"$gaslogof_2843" = fptoui double %"$gaslogof_2842" to i64
  %"$gaslogof_2844" = add i64 %"$gaslogof_2843", 1
  %"$gasmul_2845" = mul i64 20, %"$gaslogof_2844"
  %"$gasmul_2846" = mul i64 %"$gasmul_2845", 4
  %"$gasrem_2847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2848" = icmp ugt i64 %"$gasmul_2846", %"$gasrem_2847"
  br i1 %"$gascmp_2848", label %"$out_of_gas_2849", label %"$have_gas_2850"

"$out_of_gas_2849":                               ; preds = %"$have_gas_2835"
  call void @_out_of_gas()
  br label %"$have_gas_2850"

"$have_gas_2850":                                 ; preds = %"$out_of_gas_2849", %"$have_gas_2835"
  %"$consume_2851" = sub i64 %"$gasrem_2847", %"$gasmul_2846"
  store i64 %"$consume_2851", i64* @_gasrem, align 8
  %"$execptr_load_2852" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2853" = alloca %Int256, align 8
  %"$t9_2854" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2854", %Int256* %"$pow_t9_2853", align 8
  %"$p4_2855" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2856" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2852", %Int256* %"$pow_t9_2853", %Uint32 %"$p4_2855")
  %"$pow_2858" = load %Int256, %Int256* %"$pow_call_2856", align 8
  store %Int256 %"$pow_2858", %Int256* %"$p_135", align 8
  %"$gasrem_2859" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2860" = icmp ugt i64 1, %"$gasrem_2859"
  br i1 %"$gascmp_2860", label %"$out_of_gas_2861", label %"$have_gas_2862"

"$out_of_gas_2861":                               ; preds = %"$have_gas_2850"
  call void @_out_of_gas()
  br label %"$have_gas_2862"

"$have_gas_2862":                                 ; preds = %"$out_of_gas_2861", %"$have_gas_2850"
  %"$consume_2863" = sub i64 %"$gasrem_2859", 1
  store i64 %"$consume_2863", i64* @_gasrem, align 8
  %"$res_138" = alloca %TName_Bool*, align 8
  %"$gasrem_2864" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2865" = icmp ugt i64 1, %"$gasrem_2864"
  br i1 %"$gascmp_2865", label %"$out_of_gas_2866", label %"$have_gas_2867"

"$out_of_gas_2866":                               ; preds = %"$have_gas_2862"
  call void @_out_of_gas()
  br label %"$have_gas_2867"

"$have_gas_2867":                                 ; preds = %"$out_of_gas_2866", %"$have_gas_2862"
  %"$consume_2868" = sub i64 %"$gasrem_2864", 1
  store i64 %"$consume_2868", i64* @_gasrem, align 8
  %"$ans_136" = alloca %Int256, align 8
  %"$gasrem_2869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2870" = icmp ugt i64 1, %"$gasrem_2869"
  br i1 %"$gascmp_2870", label %"$out_of_gas_2871", label %"$have_gas_2872"

"$out_of_gas_2871":                               ; preds = %"$have_gas_2867"
  call void @_out_of_gas()
  br label %"$have_gas_2872"

"$have_gas_2872":                                 ; preds = %"$out_of_gas_2871", %"$have_gas_2867"
  %"$consume_2873" = sub i64 %"$gasrem_2869", 1
  store i64 %"$consume_2873", i64* @_gasrem, align 8
  store %Int256 { i256 10020018009603360806534415361152051201024 }, %Int256* %"$ans_136", align 8
  %"$gasrem_2874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2875" = icmp ugt i64 1, %"$gasrem_2874"
  br i1 %"$gascmp_2875", label %"$out_of_gas_2876", label %"$have_gas_2877"

"$out_of_gas_2876":                               ; preds = %"$have_gas_2872"
  call void @_out_of_gas()
  br label %"$have_gas_2877"

"$have_gas_2877":                                 ; preds = %"$out_of_gas_2876", %"$have_gas_2872"
  %"$consume_2878" = sub i64 %"$gasrem_2874", 1
  store i64 %"$consume_2878", i64* @_gasrem, align 8
  %"$res__137" = alloca %TName_Bool*, align 8
  %"$gasrem_2880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2881" = icmp ugt i64 16, %"$gasrem_2880"
  br i1 %"$gascmp_2881", label %"$out_of_gas_2882", label %"$have_gas_2883"

"$out_of_gas_2882":                               ; preds = %"$have_gas_2877"
  call void @_out_of_gas()
  br label %"$have_gas_2883"

"$have_gas_2883":                                 ; preds = %"$out_of_gas_2882", %"$have_gas_2877"
  %"$consume_2884" = sub i64 %"$gasrem_2880", 16
  store i64 %"$consume_2884", i64* @_gasrem, align 8
  %"$execptr_load_2885" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_135_2886" = alloca %Int256, align 8
  %"$$p_135_2887" = load %Int256, %Int256* %"$p_135", align 8
  store %Int256 %"$$p_135_2887", %Int256* %"$eq_$p_135_2886", align 8
  %"$eq_$ans_136_2888" = alloca %Int256, align 8
  %"$$ans_136_2889" = load %Int256, %Int256* %"$ans_136", align 8
  store %Int256 %"$$ans_136_2889", %Int256* %"$eq_$ans_136_2888", align 8
  %"$eq_call_2890" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2885", %Int256* %"$eq_$p_135_2886", %Int256* %"$eq_$ans_136_2888")
  store %TName_Bool* %"$eq_call_2890", %TName_Bool** %"$res__137", align 8
  %"$gasrem_2892" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2893" = icmp ugt i64 1, %"$gasrem_2892"
  br i1 %"$gascmp_2893", label %"$out_of_gas_2894", label %"$have_gas_2895"

"$out_of_gas_2894":                               ; preds = %"$have_gas_2883"
  call void @_out_of_gas()
  br label %"$have_gas_2895"

"$have_gas_2895":                                 ; preds = %"$out_of_gas_2894", %"$have_gas_2883"
  %"$consume_2896" = sub i64 %"$gasrem_2892", 1
  store i64 %"$consume_2896", i64* @_gasrem, align 8
  %"$BoolUtils.andb_205" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2897" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2898" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2897", 0
  %"$BoolUtils.andb_envptr_2899" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2897", 1
  %"$$res_134_2900" = load %TName_Bool*, %TName_Bool** %"$res_134", align 8
  %"$BoolUtils.andb_call_2901" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2898"(i8* %"$BoolUtils.andb_envptr_2899", %TName_Bool* %"$$res_134_2900")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2901", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_205", align 8
  %"$BoolUtils.andb_206" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_205_2902" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_205", align 8
  %"$$BoolUtils.andb_205_fptr_2903" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_205_2902", 0
  %"$$BoolUtils.andb_205_envptr_2904" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_205_2902", 1
  %"$$res__137_2905" = load %TName_Bool*, %TName_Bool** %"$res__137", align 8
  %"$$BoolUtils.andb_205_call_2906" = call %TName_Bool* %"$$BoolUtils.andb_205_fptr_2903"(i8* %"$$BoolUtils.andb_205_envptr_2904", %TName_Bool* %"$$res__137_2905")
  store %TName_Bool* %"$$BoolUtils.andb_205_call_2906", %TName_Bool** %"$BoolUtils.andb_206", align 8
  %"$$BoolUtils.andb_206_2907" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_206", align 8
  store %TName_Bool* %"$$BoolUtils.andb_206_2907", %TName_Bool** %"$res_138", align 8
  %"$gasrem_2908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2909" = icmp ugt i64 1, %"$gasrem_2908"
  br i1 %"$gascmp_2909", label %"$out_of_gas_2910", label %"$have_gas_2911"

"$out_of_gas_2910":                               ; preds = %"$have_gas_2895"
  call void @_out_of_gas()
  br label %"$have_gas_2911"

"$have_gas_2911":                                 ; preds = %"$out_of_gas_2910", %"$have_gas_2895"
  %"$consume_2912" = sub i64 %"$gasrem_2908", 1
  store i64 %"$consume_2912", i64* @_gasrem, align 8
  %"$$res_138_2913" = load %TName_Bool*, %TName_Bool** %"$res_138", align 8
  store %TName_Bool* %"$$res_138_2913", %TName_Bool** %"$expr_211", align 8
  %"$$expr_211_2914" = load %TName_Bool*, %TName_Bool** %"$expr_211", align 8
  ret %TName_Bool* %"$$expr_211_2914"
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
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
  %"$exprval_2915" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2916" = bitcast %TName_Bool* %"$exprval_2915" to i8*
  %"$execptr_load_2917" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2917", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_244", i8* %"$memvoidcast_2916")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
