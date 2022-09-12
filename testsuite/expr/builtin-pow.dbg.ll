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
%"$ParamDescr_2922" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_2923" = type { %ParamDescrString, i32, %"$ParamDescr_2922"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_2922"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_2923"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_209"(%"$$fundef_209_env_262"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$c_306" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$c_306", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_306", metadata !9, metadata !DIExpression()), !dbg !12
  %"$$fundef_209_env_b_276" = getelementptr inbounds %"$$fundef_209_env_262", %"$$fundef_209_env_262"* %0, i32 0, i32 0
  %"$b_envload_277" = load %TName_Bool*, %TName_Bool** %"$$fundef_209_env_b_276", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_277", %TName_Bool** %b, align 8
  %"$retval_210" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_210", metadata !13, metadata !DIExpression()), !dbg !14
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 2, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %entry
  %"$consume_282" = sub i64 %"$gasrem_278", 2
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$b_284" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_285" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_284", i32 0, i32 0
  %"$b_tag_286" = load i8, i8* %"$b_tag_285", align 1
  switch i8 %"$b_tag_286", label %"$empty_default_287" [
    i8 1, label %"$False_288"
    i8 0, label %"$True_298"
  ], !dbg !14

"$False_288":                                     ; preds = %"$have_gas_281"
  %"$b_289" = bitcast %TName_Bool* %"$b_284" to %CName_False*
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$False_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$False_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$adtval_295_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_295_salloc" = call i8* @_salloc(i8* %"$adtval_295_load", i64 1)
  %"$adtval_295" = bitcast i8* %"$adtval_295_salloc" to %CName_False*
  %"$adtgep_296" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_295", i32 0, i32 0
  store i8 1, i8* %"$adtgep_296", align 1
  %"$adtptr_297" = bitcast %CName_False* %"$adtval_295" to %TName_Bool*
  store %TName_Bool* %"$adtptr_297", %TName_Bool** %"$retval_210", align 8, !dbg !15
  br label %"$matchsucc_283"

"$True_298":                                      ; preds = %"$have_gas_281"
  %"$b_299" = bitcast %TName_Bool* %"$b_284" to %CName_True*
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$True_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$True_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_210", align 8, !dbg !18
  br label %"$matchsucc_283"

"$empty_default_287":                             ; preds = %"$have_gas_281"
  br label %"$matchsucc_283"

"$matchsucc_283":                                 ; preds = %"$have_gas_303", %"$have_gas_293", %"$empty_default_287"
  %"$$retval_210_305" = load %TName_Bool*, %TName_Bool** %"$retval_210", align 8
  ret %TName_Bool* %"$$retval_210_305"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_207"(%"$$fundef_207_env_263"* %0, %TName_Bool* %1) !dbg !20 {
entry:
  %"$b_275" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_275", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_275", metadata !21, metadata !DIExpression()), !dbg !22
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_209_cloval_272", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_208", align 8, !dbg !23
  %"$$retval_208_274" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_208", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_208_274"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !24 {
entry:
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 5, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %entry
  %"$consume_311" = sub i64 %"$gasrem_307", 5
  store i64 %"$consume_311", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !26
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 7, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_310"
  %"$consume_316" = sub i64 %"$gasrem_312", 7
  store i64 %"$consume_316", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !26
  %"$gasrem_317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_315"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_207_env_263"*, %TName_Bool*)* @"$fundef_207" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !27
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 196, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_320"
  %"$consume_329" = sub i64 %"$gasrem_325", 196
  store i64 %"$consume_329", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !26
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 20, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_328"
  %"$consume_334" = sub i64 %"$gasrem_330", 20
  store i64 %"$consume_334", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !26
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 12, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_333"
  %"$consume_339" = sub i64 %"$gasrem_335", 12
  store i64 %"$consume_339", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !26
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 2, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 2
  store i64 %"$consume_344", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !26
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !28 {
entry:
  %"$expr_211" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$expr_211", metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %entry
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %p1 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p1, metadata !31, metadata !DIExpression()), !dbg !33
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_348"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %p1, align 4, !dbg !30
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_353"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %p2 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p2, metadata !34, metadata !DIExpression()), !dbg !35
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %p2, align 4, !dbg !36
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_363"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %p3 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p3, metadata !37, metadata !DIExpression()), !dbg !38
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  store %Uint32 { i32 4 }, %Uint32* %p3, align 4, !dbg !39
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %p4 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p4, metadata !40, metadata !DIExpression()), !dbg !41
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_378"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  store %Uint32 { i32 10 }, %Uint32* %p4, align 4, !dbg !42
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_383"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %t1 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %t1, metadata !43, metadata !DIExpression()), !dbg !44
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %"$have_gas_388"
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %t1, align 4, !dbg !45
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_393"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %t2 = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %t2, metadata !46, metadata !DIExpression()), !dbg !48
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_398"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %t2, align 4, !dbg !49
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_403"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %t3 = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %t3, metadata !50, metadata !DIExpression()), !dbg !52
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %t3, align 8, !dbg !53
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %t4 = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %t4, metadata !54, metadata !DIExpression()), !dbg !56
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  store %Int64 { i64 -101 }, %Int64* %t4, align 8, !dbg !57
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %t5 = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %t5, metadata !58, metadata !DIExpression()), !dbg !60
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %t5, align 8, !dbg !61
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_433"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %t6 = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %t6, metadata !62, metadata !DIExpression()), !dbg !64
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_438"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  store %Int128 { i128 501 }, %Int128* %t6, align 8, !dbg !65
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_443"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  %t7 = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %t7, metadata !66, metadata !DIExpression()), !dbg !68
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_448"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  store %Uint256 { i256 10001 }, %Uint256* %t7, align 8, !dbg !69
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_453"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %t8 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %t8, metadata !70, metadata !DIExpression()), !dbg !72
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  store %Int256 { i256 -10001 }, %Int256* %t8, align 8, !dbg !73
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_463"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %t9 = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %t9, metadata !74, metadata !DIExpression()), !dbg !75
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  store %Int256 { i256 10002 }, %Int256* %t9, align 8, !dbg !76
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %"$have_gas_473"
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %res = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res, metadata !77, metadata !DIExpression()), !dbg !78
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_478"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %"$adtval_485_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_485_salloc" = call i8* @_salloc(i8* %"$adtval_485_load", i64 1)
  %"$adtval_485" = bitcast i8* %"$adtval_485_salloc" to %CName_True*
  %"$adtgep_486" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_485", i32 0, i32 0
  store i8 0, i8* %"$adtgep_486", align 1
  %"$adtptr_487" = bitcast %CName_True* %"$adtval_485" to %TName_Bool*
  store %TName_Bool* %"$adtptr_487", %TName_Bool** %res, align 8, !dbg !79
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_483"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  %p = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p, metadata !80, metadata !DIExpression()), !dbg !81
  %"$p1_493" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_494" = extractvalue %Uint32 %"$p1_493", 0
  %"$valueof_495" = zext i32 %"$valueof_494" to i64
  %"$gaslogof_496" = uitofp i64 %"$valueof_495" to double
  %"$gaslogof_497" = fadd double %"$gaslogof_496", 1.000000e+00
  %"$gaslogof_498" = call double @llvm.log.f64(double %"$gaslogof_497")
  %"$gaslogof_499" = fptoui double %"$gaslogof_498" to i64
  %"$gaslogof_500" = add i64 %"$gaslogof_499", 1
  %"$gasmul_501" = mul i64 20, %"$gaslogof_500"
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 %"$gasmul_501", %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_491"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_491"
  %"$consume_506" = sub i64 %"$gasrem_502", %"$gasmul_501"
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %"$t1_507" = load %Uint32, %Uint32* %t1, align 4
  %"$p1_508" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_509" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_507", %Uint32 %"$p1_508"), !dbg !82
  store %Uint32 %"$pow_call_509", %Uint32* %p, align 4, !dbg !82
  %"$gasrem_510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_511" = icmp ugt i64 1, %"$gasrem_510"
  br i1 %"$gascmp_511", label %"$out_of_gas_512", label %"$have_gas_513"

"$out_of_gas_512":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_513"

"$have_gas_513":                                  ; preds = %"$out_of_gas_512", %"$have_gas_505"
  %"$consume_514" = sub i64 %"$gasrem_510", 1
  store i64 %"$consume_514", i64* @_gasrem, align 8
  %"$res_6" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_6", metadata !83, metadata !DIExpression()), !dbg !84
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_513"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_513"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  %ans = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %ans, metadata !85, metadata !DIExpression()), !dbg !86
  %"$gasrem_520" = load i64, i64* @_gasrem, align 8
  %"$gascmp_521" = icmp ugt i64 1, %"$gasrem_520"
  br i1 %"$gascmp_521", label %"$out_of_gas_522", label %"$have_gas_523"

"$out_of_gas_522":                                ; preds = %"$have_gas_518"
  call void @_out_of_gas()
  br label %"$have_gas_523"

"$have_gas_523":                                  ; preds = %"$out_of_gas_522", %"$have_gas_518"
  %"$consume_524" = sub i64 %"$gasrem_520", 1
  store i64 %"$consume_524", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %ans, align 4, !dbg !87
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_523"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_523"
  %"$consume_529" = sub i64 %"$gasrem_525", 1
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %res_ = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res_, metadata !88, metadata !DIExpression()), !dbg !89
  %"$gasrem_530" = load i64, i64* @_gasrem, align 8
  %"$gascmp_531" = icmp ugt i64 4, %"$gasrem_530"
  br i1 %"$gascmp_531", label %"$out_of_gas_532", label %"$have_gas_533"

"$out_of_gas_532":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_533"

"$have_gas_533":                                  ; preds = %"$out_of_gas_532", %"$have_gas_528"
  %"$consume_534" = sub i64 %"$gasrem_530", 4
  store i64 %"$consume_534", i64* @_gasrem, align 8
  %"$execptr_load_535" = load i8*, i8** @_execptr, align 8
  %"$p_536" = load %Uint32, %Uint32* %p, align 4
  %"$ans_537" = load %Uint32, %Uint32* %ans, align 4
  %"$eq_call_538" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_535", %Uint32 %"$p_536", %Uint32 %"$ans_537"), !dbg !90
  store %TName_Bool* %"$eq_call_538", %TName_Bool** %res_, align 8, !dbg !90
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 1, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %"$have_gas_533"
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %"$have_gas_533"
  %"$consume_544" = sub i64 %"$gasrem_540", 1
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %"$BoolUtils.andb_139" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_545" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_546" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_545", 0
  %"$BoolUtils.andb_envptr_547" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_545", 1
  %"$res_548" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$BoolUtils.andb_call_549" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_546"(i8* %"$BoolUtils.andb_envptr_547", %TName_Bool* %"$res_548"), !dbg !91
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_549", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8, !dbg !91
  %"$BoolUtils.andb_140" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_140", metadata !92, metadata !DIExpression()), !dbg !91
  %"$$BoolUtils.andb_139_550" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_139", align 8
  %"$$BoolUtils.andb_139_fptr_551" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_550", 0
  %"$$BoolUtils.andb_139_envptr_552" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_139_550", 1
  %"$res__553" = load %TName_Bool*, %TName_Bool** %res_, align 8
  %"$$BoolUtils.andb_139_call_554" = call %TName_Bool* %"$$BoolUtils.andb_139_fptr_551"(i8* %"$$BoolUtils.andb_139_envptr_552", %TName_Bool* %"$res__553"), !dbg !91
  store %TName_Bool* %"$$BoolUtils.andb_139_call_554", %TName_Bool** %"$BoolUtils.andb_140", align 8, !dbg !91
  %"$$BoolUtils.andb_140_555" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_140", align 8
  store %TName_Bool* %"$$BoolUtils.andb_140_555", %TName_Bool** %"$res_6", align 8, !dbg !91
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_543"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  %"$p_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$p_7", metadata !93, metadata !DIExpression()), !dbg !94
  %"$p2_561" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_562" = extractvalue %Uint32 %"$p2_561", 0
  %"$valueof_563" = zext i32 %"$valueof_562" to i64
  %"$gaslogof_564" = uitofp i64 %"$valueof_563" to double
  %"$gaslogof_565" = fadd double %"$gaslogof_564", 1.000000e+00
  %"$gaslogof_566" = call double @llvm.log.f64(double %"$gaslogof_565")
  %"$gaslogof_567" = fptoui double %"$gaslogof_566" to i64
  %"$gaslogof_568" = add i64 %"$gaslogof_567", 1
  %"$gasmul_569" = mul i64 20, %"$gaslogof_568"
  %"$gasrem_570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_571" = icmp ugt i64 %"$gasmul_569", %"$gasrem_570"
  br i1 %"$gascmp_571", label %"$out_of_gas_572", label %"$have_gas_573"

"$out_of_gas_572":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_573"

"$have_gas_573":                                  ; preds = %"$out_of_gas_572", %"$have_gas_559"
  %"$consume_574" = sub i64 %"$gasrem_570", %"$gasmul_569"
  store i64 %"$consume_574", i64* @_gasrem, align 8
  %"$t1_575" = load %Uint32, %Uint32* %t1, align 4
  %"$p2_576" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_577" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_575", %Uint32 %"$p2_576"), !dbg !95
  store %Uint32 %"$pow_call_577", %Uint32* %"$p_7", align 4, !dbg !95
  %"$gasrem_578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_579" = icmp ugt i64 1, %"$gasrem_578"
  br i1 %"$gascmp_579", label %"$out_of_gas_580", label %"$have_gas_581"

"$out_of_gas_580":                                ; preds = %"$have_gas_573"
  call void @_out_of_gas()
  br label %"$have_gas_581"

"$have_gas_581":                                  ; preds = %"$out_of_gas_580", %"$have_gas_573"
  %"$consume_582" = sub i64 %"$gasrem_578", 1
  store i64 %"$consume_582", i64* @_gasrem, align 8
  %"$res_10" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_10", metadata !96, metadata !DIExpression()), !dbg !97
  %"$gasrem_583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_584" = icmp ugt i64 1, %"$gasrem_583"
  br i1 %"$gascmp_584", label %"$out_of_gas_585", label %"$have_gas_586"

"$out_of_gas_585":                                ; preds = %"$have_gas_581"
  call void @_out_of_gas()
  br label %"$have_gas_586"

"$have_gas_586":                                  ; preds = %"$out_of_gas_585", %"$have_gas_581"
  %"$consume_587" = sub i64 %"$gasrem_583", 1
  store i64 %"$consume_587", i64* @_gasrem, align 8
  %"$ans_8" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$ans_8", metadata !98, metadata !DIExpression()), !dbg !99
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_586"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_586"
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem, align 8
  store %Uint32 { i32 2 }, %Uint32* %"$ans_8", align 4, !dbg !100
  %"$gasrem_593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_594" = icmp ugt i64 1, %"$gasrem_593"
  br i1 %"$gascmp_594", label %"$out_of_gas_595", label %"$have_gas_596"

"$out_of_gas_595":                                ; preds = %"$have_gas_591"
  call void @_out_of_gas()
  br label %"$have_gas_596"

"$have_gas_596":                                  ; preds = %"$out_of_gas_595", %"$have_gas_591"
  %"$consume_597" = sub i64 %"$gasrem_593", 1
  store i64 %"$consume_597", i64* @_gasrem, align 8
  %"$res__9" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__9", metadata !101, metadata !DIExpression()), !dbg !102
  %"$gasrem_598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_599" = icmp ugt i64 4, %"$gasrem_598"
  br i1 %"$gascmp_599", label %"$out_of_gas_600", label %"$have_gas_601"

"$out_of_gas_600":                                ; preds = %"$have_gas_596"
  call void @_out_of_gas()
  br label %"$have_gas_601"

"$have_gas_601":                                  ; preds = %"$out_of_gas_600", %"$have_gas_596"
  %"$consume_602" = sub i64 %"$gasrem_598", 4
  store i64 %"$consume_602", i64* @_gasrem, align 8
  %"$execptr_load_603" = load i8*, i8** @_execptr, align 8
  %"$$p_7_604" = load %Uint32, %Uint32* %"$p_7", align 4
  %"$$ans_8_605" = load %Uint32, %Uint32* %"$ans_8", align 4
  %"$eq_call_606" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_603", %Uint32 %"$$p_7_604", %Uint32 %"$$ans_8_605"), !dbg !103
  store %TName_Bool* %"$eq_call_606", %TName_Bool** %"$res__9", align 8, !dbg !103
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 1, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_601"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_601"
  %"$consume_612" = sub i64 %"$gasrem_608", 1
  store i64 %"$consume_612", i64* @_gasrem, align 8
  %"$BoolUtils.andb_141" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_613" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_614" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_613", 0
  %"$BoolUtils.andb_envptr_615" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_613", 1
  %"$$res_6_616" = load %TName_Bool*, %TName_Bool** %"$res_6", align 8
  %"$BoolUtils.andb_call_617" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_614"(i8* %"$BoolUtils.andb_envptr_615", %TName_Bool* %"$$res_6_616"), !dbg !104
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_617", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8, !dbg !104
  %"$BoolUtils.andb_142" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_142", metadata !105, metadata !DIExpression()), !dbg !104
  %"$$BoolUtils.andb_141_618" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_141", align 8
  %"$$BoolUtils.andb_141_fptr_619" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_618", 0
  %"$$BoolUtils.andb_141_envptr_620" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_141_618", 1
  %"$$res__9_621" = load %TName_Bool*, %TName_Bool** %"$res__9", align 8
  %"$$BoolUtils.andb_141_call_622" = call %TName_Bool* %"$$BoolUtils.andb_141_fptr_619"(i8* %"$$BoolUtils.andb_141_envptr_620", %TName_Bool* %"$$res__9_621"), !dbg !104
  store %TName_Bool* %"$$BoolUtils.andb_141_call_622", %TName_Bool** %"$BoolUtils.andb_142", align 8, !dbg !104
  %"$$BoolUtils.andb_142_623" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_142", align 8
  store %TName_Bool* %"$$BoolUtils.andb_142_623", %TName_Bool** %"$res_10", align 8, !dbg !104
  %"$gasrem_624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_625" = icmp ugt i64 1, %"$gasrem_624"
  br i1 %"$gascmp_625", label %"$out_of_gas_626", label %"$have_gas_627"

"$out_of_gas_626":                                ; preds = %"$have_gas_611"
  call void @_out_of_gas()
  br label %"$have_gas_627"

"$have_gas_627":                                  ; preds = %"$out_of_gas_626", %"$have_gas_611"
  %"$consume_628" = sub i64 %"$gasrem_624", 1
  store i64 %"$consume_628", i64* @_gasrem, align 8
  %"$p_11" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$p_11", metadata !106, metadata !DIExpression()), !dbg !107
  %"$p3_629" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_630" = extractvalue %Uint32 %"$p3_629", 0
  %"$valueof_631" = zext i32 %"$valueof_630" to i64
  %"$gaslogof_632" = uitofp i64 %"$valueof_631" to double
  %"$gaslogof_633" = fadd double %"$gaslogof_632", 1.000000e+00
  %"$gaslogof_634" = call double @llvm.log.f64(double %"$gaslogof_633")
  %"$gaslogof_635" = fptoui double %"$gaslogof_634" to i64
  %"$gaslogof_636" = add i64 %"$gaslogof_635", 1
  %"$gasmul_637" = mul i64 20, %"$gaslogof_636"
  %"$gasrem_638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_639" = icmp ugt i64 %"$gasmul_637", %"$gasrem_638"
  br i1 %"$gascmp_639", label %"$out_of_gas_640", label %"$have_gas_641"

"$out_of_gas_640":                                ; preds = %"$have_gas_627"
  call void @_out_of_gas()
  br label %"$have_gas_641"

"$have_gas_641":                                  ; preds = %"$out_of_gas_640", %"$have_gas_627"
  %"$consume_642" = sub i64 %"$gasrem_638", %"$gasmul_637"
  store i64 %"$consume_642", i64* @_gasrem, align 8
  %"$t1_643" = load %Uint32, %Uint32* %t1, align 4
  %"$p3_644" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_645" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_643", %Uint32 %"$p3_644"), !dbg !108
  store %Uint32 %"$pow_call_645", %Uint32* %"$p_11", align 4, !dbg !108
  %"$gasrem_646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_647" = icmp ugt i64 1, %"$gasrem_646"
  br i1 %"$gascmp_647", label %"$out_of_gas_648", label %"$have_gas_649"

"$out_of_gas_648":                                ; preds = %"$have_gas_641"
  call void @_out_of_gas()
  br label %"$have_gas_649"

"$have_gas_649":                                  ; preds = %"$out_of_gas_648", %"$have_gas_641"
  %"$consume_650" = sub i64 %"$gasrem_646", 1
  store i64 %"$consume_650", i64* @_gasrem, align 8
  %"$res_14" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_14", metadata !109, metadata !DIExpression()), !dbg !110
  %"$gasrem_651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_652" = icmp ugt i64 1, %"$gasrem_651"
  br i1 %"$gascmp_652", label %"$out_of_gas_653", label %"$have_gas_654"

"$out_of_gas_653":                                ; preds = %"$have_gas_649"
  call void @_out_of_gas()
  br label %"$have_gas_654"

"$have_gas_654":                                  ; preds = %"$out_of_gas_653", %"$have_gas_649"
  %"$consume_655" = sub i64 %"$gasrem_651", 1
  store i64 %"$consume_655", i64* @_gasrem, align 8
  %"$ans_12" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$ans_12", metadata !111, metadata !DIExpression()), !dbg !112
  %"$gasrem_656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_657" = icmp ugt i64 1, %"$gasrem_656"
  br i1 %"$gascmp_657", label %"$out_of_gas_658", label %"$have_gas_659"

"$out_of_gas_658":                                ; preds = %"$have_gas_654"
  call void @_out_of_gas()
  br label %"$have_gas_659"

"$have_gas_659":                                  ; preds = %"$out_of_gas_658", %"$have_gas_654"
  %"$consume_660" = sub i64 %"$gasrem_656", 1
  store i64 %"$consume_660", i64* @_gasrem, align 8
  store %Uint32 { i32 16 }, %Uint32* %"$ans_12", align 4, !dbg !113
  %"$gasrem_661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_662" = icmp ugt i64 1, %"$gasrem_661"
  br i1 %"$gascmp_662", label %"$out_of_gas_663", label %"$have_gas_664"

"$out_of_gas_663":                                ; preds = %"$have_gas_659"
  call void @_out_of_gas()
  br label %"$have_gas_664"

"$have_gas_664":                                  ; preds = %"$out_of_gas_663", %"$have_gas_659"
  %"$consume_665" = sub i64 %"$gasrem_661", 1
  store i64 %"$consume_665", i64* @_gasrem, align 8
  %"$res__13" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__13", metadata !114, metadata !DIExpression()), !dbg !115
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 4, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_664"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_664"
  %"$consume_670" = sub i64 %"$gasrem_666", 4
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$execptr_load_671" = load i8*, i8** @_execptr, align 8
  %"$$p_11_672" = load %Uint32, %Uint32* %"$p_11", align 4
  %"$$ans_12_673" = load %Uint32, %Uint32* %"$ans_12", align 4
  %"$eq_call_674" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_671", %Uint32 %"$$p_11_672", %Uint32 %"$$ans_12_673"), !dbg !116
  store %TName_Bool* %"$eq_call_674", %TName_Bool** %"$res__13", align 8, !dbg !116
  %"$gasrem_676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_677" = icmp ugt i64 1, %"$gasrem_676"
  br i1 %"$gascmp_677", label %"$out_of_gas_678", label %"$have_gas_679"

"$out_of_gas_678":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_679"

"$have_gas_679":                                  ; preds = %"$out_of_gas_678", %"$have_gas_669"
  %"$consume_680" = sub i64 %"$gasrem_676", 1
  store i64 %"$consume_680", i64* @_gasrem, align 8
  %"$BoolUtils.andb_143" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_681" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_682" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_681", 0
  %"$BoolUtils.andb_envptr_683" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_681", 1
  %"$$res_10_684" = load %TName_Bool*, %TName_Bool** %"$res_10", align 8
  %"$BoolUtils.andb_call_685" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_682"(i8* %"$BoolUtils.andb_envptr_683", %TName_Bool* %"$$res_10_684"), !dbg !117
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_685", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8, !dbg !117
  %"$BoolUtils.andb_144" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_144", metadata !118, metadata !DIExpression()), !dbg !117
  %"$$BoolUtils.andb_143_686" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_143", align 8
  %"$$BoolUtils.andb_143_fptr_687" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_686", 0
  %"$$BoolUtils.andb_143_envptr_688" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_143_686", 1
  %"$$res__13_689" = load %TName_Bool*, %TName_Bool** %"$res__13", align 8
  %"$$BoolUtils.andb_143_call_690" = call %TName_Bool* %"$$BoolUtils.andb_143_fptr_687"(i8* %"$$BoolUtils.andb_143_envptr_688", %TName_Bool* %"$$res__13_689"), !dbg !117
  store %TName_Bool* %"$$BoolUtils.andb_143_call_690", %TName_Bool** %"$BoolUtils.andb_144", align 8, !dbg !117
  %"$$BoolUtils.andb_144_691" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_144", align 8
  store %TName_Bool* %"$$BoolUtils.andb_144_691", %TName_Bool** %"$res_14", align 8, !dbg !117
  %"$gasrem_692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_693" = icmp ugt i64 1, %"$gasrem_692"
  br i1 %"$gascmp_693", label %"$out_of_gas_694", label %"$have_gas_695"

"$out_of_gas_694":                                ; preds = %"$have_gas_679"
  call void @_out_of_gas()
  br label %"$have_gas_695"

"$have_gas_695":                                  ; preds = %"$out_of_gas_694", %"$have_gas_679"
  %"$consume_696" = sub i64 %"$gasrem_692", 1
  store i64 %"$consume_696", i64* @_gasrem, align 8
  %"$p_15" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$p_15", metadata !119, metadata !DIExpression()), !dbg !120
  %"$p4_697" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_698" = extractvalue %Uint32 %"$p4_697", 0
  %"$valueof_699" = zext i32 %"$valueof_698" to i64
  %"$gaslogof_700" = uitofp i64 %"$valueof_699" to double
  %"$gaslogof_701" = fadd double %"$gaslogof_700", 1.000000e+00
  %"$gaslogof_702" = call double @llvm.log.f64(double %"$gaslogof_701")
  %"$gaslogof_703" = fptoui double %"$gaslogof_702" to i64
  %"$gaslogof_704" = add i64 %"$gaslogof_703", 1
  %"$gasmul_705" = mul i64 20, %"$gaslogof_704"
  %"$gasrem_706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_707" = icmp ugt i64 %"$gasmul_705", %"$gasrem_706"
  br i1 %"$gascmp_707", label %"$out_of_gas_708", label %"$have_gas_709"

"$out_of_gas_708":                                ; preds = %"$have_gas_695"
  call void @_out_of_gas()
  br label %"$have_gas_709"

"$have_gas_709":                                  ; preds = %"$out_of_gas_708", %"$have_gas_695"
  %"$consume_710" = sub i64 %"$gasrem_706", %"$gasmul_705"
  store i64 %"$consume_710", i64* @_gasrem, align 8
  %"$t1_711" = load %Uint32, %Uint32* %t1, align 4
  %"$p4_712" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_713" = call %Uint32 @_pow_Uint32(%Uint32 %"$t1_711", %Uint32 %"$p4_712"), !dbg !121
  store %Uint32 %"$pow_call_713", %Uint32* %"$p_15", align 4, !dbg !121
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_709"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_709"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %"$res_18" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_18", metadata !122, metadata !DIExpression()), !dbg !123
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_717"
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$ans_16" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$ans_16", metadata !124, metadata !DIExpression()), !dbg !125
  %"$gasrem_724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_725" = icmp ugt i64 1, %"$gasrem_724"
  br i1 %"$gascmp_725", label %"$out_of_gas_726", label %"$have_gas_727"

"$out_of_gas_726":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_727"

"$have_gas_727":                                  ; preds = %"$out_of_gas_726", %"$have_gas_722"
  %"$consume_728" = sub i64 %"$gasrem_724", 1
  store i64 %"$consume_728", i64* @_gasrem, align 8
  store %Uint32 { i32 1024 }, %Uint32* %"$ans_16", align 4, !dbg !126
  %"$gasrem_729" = load i64, i64* @_gasrem, align 8
  %"$gascmp_730" = icmp ugt i64 1, %"$gasrem_729"
  br i1 %"$gascmp_730", label %"$out_of_gas_731", label %"$have_gas_732"

"$out_of_gas_731":                                ; preds = %"$have_gas_727"
  call void @_out_of_gas()
  br label %"$have_gas_732"

"$have_gas_732":                                  ; preds = %"$out_of_gas_731", %"$have_gas_727"
  %"$consume_733" = sub i64 %"$gasrem_729", 1
  store i64 %"$consume_733", i64* @_gasrem, align 8
  %"$res__17" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__17", metadata !127, metadata !DIExpression()), !dbg !128
  %"$gasrem_734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_735" = icmp ugt i64 4, %"$gasrem_734"
  br i1 %"$gascmp_735", label %"$out_of_gas_736", label %"$have_gas_737"

"$out_of_gas_736":                                ; preds = %"$have_gas_732"
  call void @_out_of_gas()
  br label %"$have_gas_737"

"$have_gas_737":                                  ; preds = %"$out_of_gas_736", %"$have_gas_732"
  %"$consume_738" = sub i64 %"$gasrem_734", 4
  store i64 %"$consume_738", i64* @_gasrem, align 8
  %"$execptr_load_739" = load i8*, i8** @_execptr, align 8
  %"$$p_15_740" = load %Uint32, %Uint32* %"$p_15", align 4
  %"$$ans_16_741" = load %Uint32, %Uint32* %"$ans_16", align 4
  %"$eq_call_742" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_739", %Uint32 %"$$p_15_740", %Uint32 %"$$ans_16_741"), !dbg !129
  store %TName_Bool* %"$eq_call_742", %TName_Bool** %"$res__17", align 8, !dbg !129
  %"$gasrem_744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_745" = icmp ugt i64 1, %"$gasrem_744"
  br i1 %"$gascmp_745", label %"$out_of_gas_746", label %"$have_gas_747"

"$out_of_gas_746":                                ; preds = %"$have_gas_737"
  call void @_out_of_gas()
  br label %"$have_gas_747"

"$have_gas_747":                                  ; preds = %"$out_of_gas_746", %"$have_gas_737"
  %"$consume_748" = sub i64 %"$gasrem_744", 1
  store i64 %"$consume_748", i64* @_gasrem, align 8
  %"$BoolUtils.andb_145" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_749" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_750" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_749", 0
  %"$BoolUtils.andb_envptr_751" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_749", 1
  %"$$res_14_752" = load %TName_Bool*, %TName_Bool** %"$res_14", align 8
  %"$BoolUtils.andb_call_753" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_750"(i8* %"$BoolUtils.andb_envptr_751", %TName_Bool* %"$$res_14_752"), !dbg !130
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_753", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8, !dbg !130
  %"$BoolUtils.andb_146" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_146", metadata !131, metadata !DIExpression()), !dbg !130
  %"$$BoolUtils.andb_145_754" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_145", align 8
  %"$$BoolUtils.andb_145_fptr_755" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_754", 0
  %"$$BoolUtils.andb_145_envptr_756" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_145_754", 1
  %"$$res__17_757" = load %TName_Bool*, %TName_Bool** %"$res__17", align 8
  %"$$BoolUtils.andb_145_call_758" = call %TName_Bool* %"$$BoolUtils.andb_145_fptr_755"(i8* %"$$BoolUtils.andb_145_envptr_756", %TName_Bool* %"$$res__17_757"), !dbg !130
  store %TName_Bool* %"$$BoolUtils.andb_145_call_758", %TName_Bool** %"$BoolUtils.andb_146", align 8, !dbg !130
  %"$$BoolUtils.andb_146_759" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_146", align 8
  store %TName_Bool* %"$$BoolUtils.andb_146_759", %TName_Bool** %"$res_18", align 8, !dbg !130
  %"$gasrem_760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_761" = icmp ugt i64 1, %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$have_gas_747"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$have_gas_747"
  %"$consume_764" = sub i64 %"$gasrem_760", 1
  store i64 %"$consume_764", i64* @_gasrem, align 8
  %"$p_19" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$p_19", metadata !132, metadata !DIExpression()), !dbg !133
  %"$p1_765" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_766" = extractvalue %Uint32 %"$p1_765", 0
  %"$valueof_767" = zext i32 %"$valueof_766" to i64
  %"$gaslogof_768" = uitofp i64 %"$valueof_767" to double
  %"$gaslogof_769" = fadd double %"$gaslogof_768", 1.000000e+00
  %"$gaslogof_770" = call double @llvm.log.f64(double %"$gaslogof_769")
  %"$gaslogof_771" = fptoui double %"$gaslogof_770" to i64
  %"$gaslogof_772" = add i64 %"$gaslogof_771", 1
  %"$gasmul_773" = mul i64 20, %"$gaslogof_772"
  %"$gasrem_774" = load i64, i64* @_gasrem, align 8
  %"$gascmp_775" = icmp ugt i64 %"$gasmul_773", %"$gasrem_774"
  br i1 %"$gascmp_775", label %"$out_of_gas_776", label %"$have_gas_777"

"$out_of_gas_776":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_777"

"$have_gas_777":                                  ; preds = %"$out_of_gas_776", %"$have_gas_763"
  %"$consume_778" = sub i64 %"$gasrem_774", %"$gasmul_773"
  store i64 %"$consume_778", i64* @_gasrem, align 8
  %"$t2_779" = load %Int32, %Int32* %t2, align 4
  %"$p1_780" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_781" = call %Int32 @_pow_Int32(%Int32 %"$t2_779", %Uint32 %"$p1_780"), !dbg !134
  store %Int32 %"$pow_call_781", %Int32* %"$p_19", align 4, !dbg !134
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 1, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$have_gas_777"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$have_gas_777"
  %"$consume_786" = sub i64 %"$gasrem_782", 1
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$res_22" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_22", metadata !135, metadata !DIExpression()), !dbg !136
  %"$gasrem_787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_788" = icmp ugt i64 1, %"$gasrem_787"
  br i1 %"$gascmp_788", label %"$out_of_gas_789", label %"$have_gas_790"

"$out_of_gas_789":                                ; preds = %"$have_gas_785"
  call void @_out_of_gas()
  br label %"$have_gas_790"

"$have_gas_790":                                  ; preds = %"$out_of_gas_789", %"$have_gas_785"
  %"$consume_791" = sub i64 %"$gasrem_787", 1
  store i64 %"$consume_791", i64* @_gasrem, align 8
  %"$ans_20" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$ans_20", metadata !137, metadata !DIExpression()), !dbg !138
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 1, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %"$have_gas_790"
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %"$have_gas_790"
  %"$consume_796" = sub i64 %"$gasrem_792", 1
  store i64 %"$consume_796", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$ans_20", align 4, !dbg !139
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 1, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %"$have_gas_795"
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %"$have_gas_795"
  %"$consume_801" = sub i64 %"$gasrem_797", 1
  store i64 %"$consume_801", i64* @_gasrem, align 8
  %"$res__21" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__21", metadata !140, metadata !DIExpression()), !dbg !141
  %"$gasrem_802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_803" = icmp ugt i64 4, %"$gasrem_802"
  br i1 %"$gascmp_803", label %"$out_of_gas_804", label %"$have_gas_805"

"$out_of_gas_804":                                ; preds = %"$have_gas_800"
  call void @_out_of_gas()
  br label %"$have_gas_805"

"$have_gas_805":                                  ; preds = %"$out_of_gas_804", %"$have_gas_800"
  %"$consume_806" = sub i64 %"$gasrem_802", 4
  store i64 %"$consume_806", i64* @_gasrem, align 8
  %"$execptr_load_807" = load i8*, i8** @_execptr, align 8
  %"$$p_19_808" = load %Int32, %Int32* %"$p_19", align 4
  %"$$ans_20_809" = load %Int32, %Int32* %"$ans_20", align 4
  %"$eq_call_810" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_807", %Int32 %"$$p_19_808", %Int32 %"$$ans_20_809"), !dbg !142
  store %TName_Bool* %"$eq_call_810", %TName_Bool** %"$res__21", align 8, !dbg !142
  %"$gasrem_812" = load i64, i64* @_gasrem, align 8
  %"$gascmp_813" = icmp ugt i64 1, %"$gasrem_812"
  br i1 %"$gascmp_813", label %"$out_of_gas_814", label %"$have_gas_815"

"$out_of_gas_814":                                ; preds = %"$have_gas_805"
  call void @_out_of_gas()
  br label %"$have_gas_815"

"$have_gas_815":                                  ; preds = %"$out_of_gas_814", %"$have_gas_805"
  %"$consume_816" = sub i64 %"$gasrem_812", 1
  store i64 %"$consume_816", i64* @_gasrem, align 8
  %"$BoolUtils.andb_147" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_817" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_818" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_817", 0
  %"$BoolUtils.andb_envptr_819" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_817", 1
  %"$$res_18_820" = load %TName_Bool*, %TName_Bool** %"$res_18", align 8
  %"$BoolUtils.andb_call_821" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_818"(i8* %"$BoolUtils.andb_envptr_819", %TName_Bool* %"$$res_18_820"), !dbg !143
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_821", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8, !dbg !143
  %"$BoolUtils.andb_148" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_148", metadata !144, metadata !DIExpression()), !dbg !143
  %"$$BoolUtils.andb_147_822" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_147", align 8
  %"$$BoolUtils.andb_147_fptr_823" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_822", 0
  %"$$BoolUtils.andb_147_envptr_824" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_147_822", 1
  %"$$res__21_825" = load %TName_Bool*, %TName_Bool** %"$res__21", align 8
  %"$$BoolUtils.andb_147_call_826" = call %TName_Bool* %"$$BoolUtils.andb_147_fptr_823"(i8* %"$$BoolUtils.andb_147_envptr_824", %TName_Bool* %"$$res__21_825"), !dbg !143
  store %TName_Bool* %"$$BoolUtils.andb_147_call_826", %TName_Bool** %"$BoolUtils.andb_148", align 8, !dbg !143
  %"$$BoolUtils.andb_148_827" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_148", align 8
  store %TName_Bool* %"$$BoolUtils.andb_148_827", %TName_Bool** %"$res_22", align 8, !dbg !143
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$have_gas_815"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$have_gas_815"
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  %"$p_23" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$p_23", metadata !145, metadata !DIExpression()), !dbg !146
  %"$p2_833" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_834" = extractvalue %Uint32 %"$p2_833", 0
  %"$valueof_835" = zext i32 %"$valueof_834" to i64
  %"$gaslogof_836" = uitofp i64 %"$valueof_835" to double
  %"$gaslogof_837" = fadd double %"$gaslogof_836", 1.000000e+00
  %"$gaslogof_838" = call double @llvm.log.f64(double %"$gaslogof_837")
  %"$gaslogof_839" = fptoui double %"$gaslogof_838" to i64
  %"$gaslogof_840" = add i64 %"$gaslogof_839", 1
  %"$gasmul_841" = mul i64 20, %"$gaslogof_840"
  %"$gasrem_842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_843" = icmp ugt i64 %"$gasmul_841", %"$gasrem_842"
  br i1 %"$gascmp_843", label %"$out_of_gas_844", label %"$have_gas_845"

"$out_of_gas_844":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_845"

"$have_gas_845":                                  ; preds = %"$out_of_gas_844", %"$have_gas_831"
  %"$consume_846" = sub i64 %"$gasrem_842", %"$gasmul_841"
  store i64 %"$consume_846", i64* @_gasrem, align 8
  %"$t2_847" = load %Int32, %Int32* %t2, align 4
  %"$p2_848" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_849" = call %Int32 @_pow_Int32(%Int32 %"$t2_847", %Uint32 %"$p2_848"), !dbg !147
  store %Int32 %"$pow_call_849", %Int32* %"$p_23", align 4, !dbg !147
  %"$gasrem_850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_851" = icmp ugt i64 1, %"$gasrem_850"
  br i1 %"$gascmp_851", label %"$out_of_gas_852", label %"$have_gas_853"

"$out_of_gas_852":                                ; preds = %"$have_gas_845"
  call void @_out_of_gas()
  br label %"$have_gas_853"

"$have_gas_853":                                  ; preds = %"$out_of_gas_852", %"$have_gas_845"
  %"$consume_854" = sub i64 %"$gasrem_850", 1
  store i64 %"$consume_854", i64* @_gasrem, align 8
  %"$res_26" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_26", metadata !148, metadata !DIExpression()), !dbg !149
  %"$gasrem_855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_856" = icmp ugt i64 1, %"$gasrem_855"
  br i1 %"$gascmp_856", label %"$out_of_gas_857", label %"$have_gas_858"

"$out_of_gas_857":                                ; preds = %"$have_gas_853"
  call void @_out_of_gas()
  br label %"$have_gas_858"

"$have_gas_858":                                  ; preds = %"$out_of_gas_857", %"$have_gas_853"
  %"$consume_859" = sub i64 %"$gasrem_855", 1
  store i64 %"$consume_859", i64* @_gasrem, align 8
  %"$ans_24" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$ans_24", metadata !150, metadata !DIExpression()), !dbg !151
  %"$gasrem_860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_861" = icmp ugt i64 1, %"$gasrem_860"
  br i1 %"$gascmp_861", label %"$out_of_gas_862", label %"$have_gas_863"

"$out_of_gas_862":                                ; preds = %"$have_gas_858"
  call void @_out_of_gas()
  br label %"$have_gas_863"

"$have_gas_863":                                  ; preds = %"$out_of_gas_862", %"$have_gas_858"
  %"$consume_864" = sub i64 %"$gasrem_860", 1
  store i64 %"$consume_864", i64* @_gasrem, align 8
  store %Int32 { i32 3 }, %Int32* %"$ans_24", align 4, !dbg !152
  %"$gasrem_865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_866" = icmp ugt i64 1, %"$gasrem_865"
  br i1 %"$gascmp_866", label %"$out_of_gas_867", label %"$have_gas_868"

"$out_of_gas_867":                                ; preds = %"$have_gas_863"
  call void @_out_of_gas()
  br label %"$have_gas_868"

"$have_gas_868":                                  ; preds = %"$out_of_gas_867", %"$have_gas_863"
  %"$consume_869" = sub i64 %"$gasrem_865", 1
  store i64 %"$consume_869", i64* @_gasrem, align 8
  %"$res__25" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__25", metadata !153, metadata !DIExpression()), !dbg !154
  %"$gasrem_870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_871" = icmp ugt i64 4, %"$gasrem_870"
  br i1 %"$gascmp_871", label %"$out_of_gas_872", label %"$have_gas_873"

"$out_of_gas_872":                                ; preds = %"$have_gas_868"
  call void @_out_of_gas()
  br label %"$have_gas_873"

"$have_gas_873":                                  ; preds = %"$out_of_gas_872", %"$have_gas_868"
  %"$consume_874" = sub i64 %"$gasrem_870", 4
  store i64 %"$consume_874", i64* @_gasrem, align 8
  %"$execptr_load_875" = load i8*, i8** @_execptr, align 8
  %"$$p_23_876" = load %Int32, %Int32* %"$p_23", align 4
  %"$$ans_24_877" = load %Int32, %Int32* %"$ans_24", align 4
  %"$eq_call_878" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_875", %Int32 %"$$p_23_876", %Int32 %"$$ans_24_877"), !dbg !155
  store %TName_Bool* %"$eq_call_878", %TName_Bool** %"$res__25", align 8, !dbg !155
  %"$gasrem_880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_881" = icmp ugt i64 1, %"$gasrem_880"
  br i1 %"$gascmp_881", label %"$out_of_gas_882", label %"$have_gas_883"

"$out_of_gas_882":                                ; preds = %"$have_gas_873"
  call void @_out_of_gas()
  br label %"$have_gas_883"

"$have_gas_883":                                  ; preds = %"$out_of_gas_882", %"$have_gas_873"
  %"$consume_884" = sub i64 %"$gasrem_880", 1
  store i64 %"$consume_884", i64* @_gasrem, align 8
  %"$BoolUtils.andb_149" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_885" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_886" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_885", 0
  %"$BoolUtils.andb_envptr_887" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_885", 1
  %"$$res_22_888" = load %TName_Bool*, %TName_Bool** %"$res_22", align 8
  %"$BoolUtils.andb_call_889" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_886"(i8* %"$BoolUtils.andb_envptr_887", %TName_Bool* %"$$res_22_888"), !dbg !156
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_889", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8, !dbg !156
  %"$BoolUtils.andb_150" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_150", metadata !157, metadata !DIExpression()), !dbg !156
  %"$$BoolUtils.andb_149_890" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_149", align 8
  %"$$BoolUtils.andb_149_fptr_891" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_890", 0
  %"$$BoolUtils.andb_149_envptr_892" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_149_890", 1
  %"$$res__25_893" = load %TName_Bool*, %TName_Bool** %"$res__25", align 8
  %"$$BoolUtils.andb_149_call_894" = call %TName_Bool* %"$$BoolUtils.andb_149_fptr_891"(i8* %"$$BoolUtils.andb_149_envptr_892", %TName_Bool* %"$$res__25_893"), !dbg !156
  store %TName_Bool* %"$$BoolUtils.andb_149_call_894", %TName_Bool** %"$BoolUtils.andb_150", align 8, !dbg !156
  %"$$BoolUtils.andb_150_895" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_150", align 8
  store %TName_Bool* %"$$BoolUtils.andb_150_895", %TName_Bool** %"$res_26", align 8, !dbg !156
  %"$gasrem_896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_897" = icmp ugt i64 1, %"$gasrem_896"
  br i1 %"$gascmp_897", label %"$out_of_gas_898", label %"$have_gas_899"

"$out_of_gas_898":                                ; preds = %"$have_gas_883"
  call void @_out_of_gas()
  br label %"$have_gas_899"

"$have_gas_899":                                  ; preds = %"$out_of_gas_898", %"$have_gas_883"
  %"$consume_900" = sub i64 %"$gasrem_896", 1
  store i64 %"$consume_900", i64* @_gasrem, align 8
  %"$p_27" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$p_27", metadata !158, metadata !DIExpression()), !dbg !159
  %"$p3_901" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_902" = extractvalue %Uint32 %"$p3_901", 0
  %"$valueof_903" = zext i32 %"$valueof_902" to i64
  %"$gaslogof_904" = uitofp i64 %"$valueof_903" to double
  %"$gaslogof_905" = fadd double %"$gaslogof_904", 1.000000e+00
  %"$gaslogof_906" = call double @llvm.log.f64(double %"$gaslogof_905")
  %"$gaslogof_907" = fptoui double %"$gaslogof_906" to i64
  %"$gaslogof_908" = add i64 %"$gaslogof_907", 1
  %"$gasmul_909" = mul i64 20, %"$gaslogof_908"
  %"$gasrem_910" = load i64, i64* @_gasrem, align 8
  %"$gascmp_911" = icmp ugt i64 %"$gasmul_909", %"$gasrem_910"
  br i1 %"$gascmp_911", label %"$out_of_gas_912", label %"$have_gas_913"

"$out_of_gas_912":                                ; preds = %"$have_gas_899"
  call void @_out_of_gas()
  br label %"$have_gas_913"

"$have_gas_913":                                  ; preds = %"$out_of_gas_912", %"$have_gas_899"
  %"$consume_914" = sub i64 %"$gasrem_910", %"$gasmul_909"
  store i64 %"$consume_914", i64* @_gasrem, align 8
  %"$t2_915" = load %Int32, %Int32* %t2, align 4
  %"$p3_916" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_917" = call %Int32 @_pow_Int32(%Int32 %"$t2_915", %Uint32 %"$p3_916"), !dbg !160
  store %Int32 %"$pow_call_917", %Int32* %"$p_27", align 4, !dbg !160
  %"$gasrem_918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_919" = icmp ugt i64 1, %"$gasrem_918"
  br i1 %"$gascmp_919", label %"$out_of_gas_920", label %"$have_gas_921"

"$out_of_gas_920":                                ; preds = %"$have_gas_913"
  call void @_out_of_gas()
  br label %"$have_gas_921"

"$have_gas_921":                                  ; preds = %"$out_of_gas_920", %"$have_gas_913"
  %"$consume_922" = sub i64 %"$gasrem_918", 1
  store i64 %"$consume_922", i64* @_gasrem, align 8
  %"$res_30" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_30", metadata !161, metadata !DIExpression()), !dbg !162
  %"$gasrem_923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_924" = icmp ugt i64 1, %"$gasrem_923"
  br i1 %"$gascmp_924", label %"$out_of_gas_925", label %"$have_gas_926"

"$out_of_gas_925":                                ; preds = %"$have_gas_921"
  call void @_out_of_gas()
  br label %"$have_gas_926"

"$have_gas_926":                                  ; preds = %"$out_of_gas_925", %"$have_gas_921"
  %"$consume_927" = sub i64 %"$gasrem_923", 1
  store i64 %"$consume_927", i64* @_gasrem, align 8
  %"$ans_28" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$ans_28", metadata !163, metadata !DIExpression()), !dbg !164
  %"$gasrem_928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_929" = icmp ugt i64 1, %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %"$have_gas_926"
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %"$have_gas_926"
  %"$consume_932" = sub i64 %"$gasrem_928", 1
  store i64 %"$consume_932", i64* @_gasrem, align 8
  store %Int32 { i32 81 }, %Int32* %"$ans_28", align 4, !dbg !165
  %"$gasrem_933" = load i64, i64* @_gasrem, align 8
  %"$gascmp_934" = icmp ugt i64 1, %"$gasrem_933"
  br i1 %"$gascmp_934", label %"$out_of_gas_935", label %"$have_gas_936"

"$out_of_gas_935":                                ; preds = %"$have_gas_931"
  call void @_out_of_gas()
  br label %"$have_gas_936"

"$have_gas_936":                                  ; preds = %"$out_of_gas_935", %"$have_gas_931"
  %"$consume_937" = sub i64 %"$gasrem_933", 1
  store i64 %"$consume_937", i64* @_gasrem, align 8
  %"$res__29" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__29", metadata !166, metadata !DIExpression()), !dbg !167
  %"$gasrem_938" = load i64, i64* @_gasrem, align 8
  %"$gascmp_939" = icmp ugt i64 4, %"$gasrem_938"
  br i1 %"$gascmp_939", label %"$out_of_gas_940", label %"$have_gas_941"

"$out_of_gas_940":                                ; preds = %"$have_gas_936"
  call void @_out_of_gas()
  br label %"$have_gas_941"

"$have_gas_941":                                  ; preds = %"$out_of_gas_940", %"$have_gas_936"
  %"$consume_942" = sub i64 %"$gasrem_938", 4
  store i64 %"$consume_942", i64* @_gasrem, align 8
  %"$execptr_load_943" = load i8*, i8** @_execptr, align 8
  %"$$p_27_944" = load %Int32, %Int32* %"$p_27", align 4
  %"$$ans_28_945" = load %Int32, %Int32* %"$ans_28", align 4
  %"$eq_call_946" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_943", %Int32 %"$$p_27_944", %Int32 %"$$ans_28_945"), !dbg !168
  store %TName_Bool* %"$eq_call_946", %TName_Bool** %"$res__29", align 8, !dbg !168
  %"$gasrem_948" = load i64, i64* @_gasrem, align 8
  %"$gascmp_949" = icmp ugt i64 1, %"$gasrem_948"
  br i1 %"$gascmp_949", label %"$out_of_gas_950", label %"$have_gas_951"

"$out_of_gas_950":                                ; preds = %"$have_gas_941"
  call void @_out_of_gas()
  br label %"$have_gas_951"

"$have_gas_951":                                  ; preds = %"$out_of_gas_950", %"$have_gas_941"
  %"$consume_952" = sub i64 %"$gasrem_948", 1
  store i64 %"$consume_952", i64* @_gasrem, align 8
  %"$BoolUtils.andb_151" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_953" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_954" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_953", 0
  %"$BoolUtils.andb_envptr_955" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_953", 1
  %"$$res_26_956" = load %TName_Bool*, %TName_Bool** %"$res_26", align 8
  %"$BoolUtils.andb_call_957" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_954"(i8* %"$BoolUtils.andb_envptr_955", %TName_Bool* %"$$res_26_956"), !dbg !169
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_957", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8, !dbg !169
  %"$BoolUtils.andb_152" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_152", metadata !170, metadata !DIExpression()), !dbg !169
  %"$$BoolUtils.andb_151_958" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_151", align 8
  %"$$BoolUtils.andb_151_fptr_959" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_958", 0
  %"$$BoolUtils.andb_151_envptr_960" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_151_958", 1
  %"$$res__29_961" = load %TName_Bool*, %TName_Bool** %"$res__29", align 8
  %"$$BoolUtils.andb_151_call_962" = call %TName_Bool* %"$$BoolUtils.andb_151_fptr_959"(i8* %"$$BoolUtils.andb_151_envptr_960", %TName_Bool* %"$$res__29_961"), !dbg !169
  store %TName_Bool* %"$$BoolUtils.andb_151_call_962", %TName_Bool** %"$BoolUtils.andb_152", align 8, !dbg !169
  %"$$BoolUtils.andb_152_963" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_152", align 8
  store %TName_Bool* %"$$BoolUtils.andb_152_963", %TName_Bool** %"$res_30", align 8, !dbg !169
  %"$gasrem_964" = load i64, i64* @_gasrem, align 8
  %"$gascmp_965" = icmp ugt i64 1, %"$gasrem_964"
  br i1 %"$gascmp_965", label %"$out_of_gas_966", label %"$have_gas_967"

"$out_of_gas_966":                                ; preds = %"$have_gas_951"
  call void @_out_of_gas()
  br label %"$have_gas_967"

"$have_gas_967":                                  ; preds = %"$out_of_gas_966", %"$have_gas_951"
  %"$consume_968" = sub i64 %"$gasrem_964", 1
  store i64 %"$consume_968", i64* @_gasrem, align 8
  %"$p_31" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$p_31", metadata !171, metadata !DIExpression()), !dbg !172
  %"$p4_969" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_970" = extractvalue %Uint32 %"$p4_969", 0
  %"$valueof_971" = zext i32 %"$valueof_970" to i64
  %"$gaslogof_972" = uitofp i64 %"$valueof_971" to double
  %"$gaslogof_973" = fadd double %"$gaslogof_972", 1.000000e+00
  %"$gaslogof_974" = call double @llvm.log.f64(double %"$gaslogof_973")
  %"$gaslogof_975" = fptoui double %"$gaslogof_974" to i64
  %"$gaslogof_976" = add i64 %"$gaslogof_975", 1
  %"$gasmul_977" = mul i64 20, %"$gaslogof_976"
  %"$gasrem_978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_979" = icmp ugt i64 %"$gasmul_977", %"$gasrem_978"
  br i1 %"$gascmp_979", label %"$out_of_gas_980", label %"$have_gas_981"

"$out_of_gas_980":                                ; preds = %"$have_gas_967"
  call void @_out_of_gas()
  br label %"$have_gas_981"

"$have_gas_981":                                  ; preds = %"$out_of_gas_980", %"$have_gas_967"
  %"$consume_982" = sub i64 %"$gasrem_978", %"$gasmul_977"
  store i64 %"$consume_982", i64* @_gasrem, align 8
  %"$t2_983" = load %Int32, %Int32* %t2, align 4
  %"$p4_984" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_985" = call %Int32 @_pow_Int32(%Int32 %"$t2_983", %Uint32 %"$p4_984"), !dbg !173
  store %Int32 %"$pow_call_985", %Int32* %"$p_31", align 4, !dbg !173
  %"$gasrem_986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_987" = icmp ugt i64 1, %"$gasrem_986"
  br i1 %"$gascmp_987", label %"$out_of_gas_988", label %"$have_gas_989"

"$out_of_gas_988":                                ; preds = %"$have_gas_981"
  call void @_out_of_gas()
  br label %"$have_gas_989"

"$have_gas_989":                                  ; preds = %"$out_of_gas_988", %"$have_gas_981"
  %"$consume_990" = sub i64 %"$gasrem_986", 1
  store i64 %"$consume_990", i64* @_gasrem, align 8
  %"$res_34" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_34", metadata !174, metadata !DIExpression()), !dbg !175
  %"$gasrem_991" = load i64, i64* @_gasrem, align 8
  %"$gascmp_992" = icmp ugt i64 1, %"$gasrem_991"
  br i1 %"$gascmp_992", label %"$out_of_gas_993", label %"$have_gas_994"

"$out_of_gas_993":                                ; preds = %"$have_gas_989"
  call void @_out_of_gas()
  br label %"$have_gas_994"

"$have_gas_994":                                  ; preds = %"$out_of_gas_993", %"$have_gas_989"
  %"$consume_995" = sub i64 %"$gasrem_991", 1
  store i64 %"$consume_995", i64* @_gasrem, align 8
  %"$ans_32" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$ans_32", metadata !176, metadata !DIExpression()), !dbg !177
  %"$gasrem_996" = load i64, i64* @_gasrem, align 8
  %"$gascmp_997" = icmp ugt i64 1, %"$gasrem_996"
  br i1 %"$gascmp_997", label %"$out_of_gas_998", label %"$have_gas_999"

"$out_of_gas_998":                                ; preds = %"$have_gas_994"
  call void @_out_of_gas()
  br label %"$have_gas_999"

"$have_gas_999":                                  ; preds = %"$out_of_gas_998", %"$have_gas_994"
  %"$consume_1000" = sub i64 %"$gasrem_996", 1
  store i64 %"$consume_1000", i64* @_gasrem, align 8
  store %Int32 { i32 59049 }, %Int32* %"$ans_32", align 4, !dbg !178
  %"$gasrem_1001" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1002" = icmp ugt i64 1, %"$gasrem_1001"
  br i1 %"$gascmp_1002", label %"$out_of_gas_1003", label %"$have_gas_1004"

"$out_of_gas_1003":                               ; preds = %"$have_gas_999"
  call void @_out_of_gas()
  br label %"$have_gas_1004"

"$have_gas_1004":                                 ; preds = %"$out_of_gas_1003", %"$have_gas_999"
  %"$consume_1005" = sub i64 %"$gasrem_1001", 1
  store i64 %"$consume_1005", i64* @_gasrem, align 8
  %"$res__33" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__33", metadata !179, metadata !DIExpression()), !dbg !180
  %"$gasrem_1006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1007" = icmp ugt i64 4, %"$gasrem_1006"
  br i1 %"$gascmp_1007", label %"$out_of_gas_1008", label %"$have_gas_1009"

"$out_of_gas_1008":                               ; preds = %"$have_gas_1004"
  call void @_out_of_gas()
  br label %"$have_gas_1009"

"$have_gas_1009":                                 ; preds = %"$out_of_gas_1008", %"$have_gas_1004"
  %"$consume_1010" = sub i64 %"$gasrem_1006", 4
  store i64 %"$consume_1010", i64* @_gasrem, align 8
  %"$execptr_load_1011" = load i8*, i8** @_execptr, align 8
  %"$$p_31_1012" = load %Int32, %Int32* %"$p_31", align 4
  %"$$ans_32_1013" = load %Int32, %Int32* %"$ans_32", align 4
  %"$eq_call_1014" = call %TName_Bool* @_eq_Int32(i8* %"$execptr_load_1011", %Int32 %"$$p_31_1012", %Int32 %"$$ans_32_1013"), !dbg !181
  store %TName_Bool* %"$eq_call_1014", %TName_Bool** %"$res__33", align 8, !dbg !181
  %"$gasrem_1016" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1017" = icmp ugt i64 1, %"$gasrem_1016"
  br i1 %"$gascmp_1017", label %"$out_of_gas_1018", label %"$have_gas_1019"

"$out_of_gas_1018":                               ; preds = %"$have_gas_1009"
  call void @_out_of_gas()
  br label %"$have_gas_1019"

"$have_gas_1019":                                 ; preds = %"$out_of_gas_1018", %"$have_gas_1009"
  %"$consume_1020" = sub i64 %"$gasrem_1016", 1
  store i64 %"$consume_1020", i64* @_gasrem, align 8
  %"$BoolUtils.andb_153" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1021" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1022" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1021", 0
  %"$BoolUtils.andb_envptr_1023" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1021", 1
  %"$$res_30_1024" = load %TName_Bool*, %TName_Bool** %"$res_30", align 8
  %"$BoolUtils.andb_call_1025" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1022"(i8* %"$BoolUtils.andb_envptr_1023", %TName_Bool* %"$$res_30_1024"), !dbg !182
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1025", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8, !dbg !182
  %"$BoolUtils.andb_154" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_154", metadata !183, metadata !DIExpression()), !dbg !182
  %"$$BoolUtils.andb_153_1026" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_153", align 8
  %"$$BoolUtils.andb_153_fptr_1027" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1026", 0
  %"$$BoolUtils.andb_153_envptr_1028" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_153_1026", 1
  %"$$res__33_1029" = load %TName_Bool*, %TName_Bool** %"$res__33", align 8
  %"$$BoolUtils.andb_153_call_1030" = call %TName_Bool* %"$$BoolUtils.andb_153_fptr_1027"(i8* %"$$BoolUtils.andb_153_envptr_1028", %TName_Bool* %"$$res__33_1029"), !dbg !182
  store %TName_Bool* %"$$BoolUtils.andb_153_call_1030", %TName_Bool** %"$BoolUtils.andb_154", align 8, !dbg !182
  %"$$BoolUtils.andb_154_1031" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_154", align 8
  store %TName_Bool* %"$$BoolUtils.andb_154_1031", %TName_Bool** %"$res_34", align 8, !dbg !182
  %"$gasrem_1032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1033" = icmp ugt i64 1, %"$gasrem_1032"
  br i1 %"$gascmp_1033", label %"$out_of_gas_1034", label %"$have_gas_1035"

"$out_of_gas_1034":                               ; preds = %"$have_gas_1019"
  call void @_out_of_gas()
  br label %"$have_gas_1035"

"$have_gas_1035":                                 ; preds = %"$out_of_gas_1034", %"$have_gas_1019"
  %"$consume_1036" = sub i64 %"$gasrem_1032", 1
  store i64 %"$consume_1036", i64* @_gasrem, align 8
  %"$p_35" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$p_35", metadata !184, metadata !DIExpression()), !dbg !185
  %"$p1_1037" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1038" = extractvalue %Uint32 %"$p1_1037", 0
  %"$valueof_1039" = zext i32 %"$valueof_1038" to i64
  %"$gaslogof_1040" = uitofp i64 %"$valueof_1039" to double
  %"$gaslogof_1041" = fadd double %"$gaslogof_1040", 1.000000e+00
  %"$gaslogof_1042" = call double @llvm.log.f64(double %"$gaslogof_1041")
  %"$gaslogof_1043" = fptoui double %"$gaslogof_1042" to i64
  %"$gaslogof_1044" = add i64 %"$gaslogof_1043", 1
  %"$gasmul_1045" = mul i64 20, %"$gaslogof_1044"
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 %"$gasmul_1045", %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %"$have_gas_1035"
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %"$have_gas_1035"
  %"$consume_1050" = sub i64 %"$gasrem_1046", %"$gasmul_1045"
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  %"$t3_1051" = load %Uint64, %Uint64* %t3, align 8
  %"$p1_1052" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1053" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1051", %Uint32 %"$p1_1052"), !dbg !186
  store %Uint64 %"$pow_call_1053", %Uint64* %"$p_35", align 8, !dbg !186
  %"$gasrem_1054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1055" = icmp ugt i64 1, %"$gasrem_1054"
  br i1 %"$gascmp_1055", label %"$out_of_gas_1056", label %"$have_gas_1057"

"$out_of_gas_1056":                               ; preds = %"$have_gas_1049"
  call void @_out_of_gas()
  br label %"$have_gas_1057"

"$have_gas_1057":                                 ; preds = %"$out_of_gas_1056", %"$have_gas_1049"
  %"$consume_1058" = sub i64 %"$gasrem_1054", 1
  store i64 %"$consume_1058", i64* @_gasrem, align 8
  %"$res_38" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_38", metadata !187, metadata !DIExpression()), !dbg !188
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 1, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1057"
  %"$consume_1063" = sub i64 %"$gasrem_1059", 1
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  %"$ans_36" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$ans_36", metadata !189, metadata !DIExpression()), !dbg !190
  %"$gasrem_1064" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1065" = icmp ugt i64 1, %"$gasrem_1064"
  br i1 %"$gascmp_1065", label %"$out_of_gas_1066", label %"$have_gas_1067"

"$out_of_gas_1066":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1067"

"$have_gas_1067":                                 ; preds = %"$out_of_gas_1066", %"$have_gas_1062"
  %"$consume_1068" = sub i64 %"$gasrem_1064", 1
  store i64 %"$consume_1068", i64* @_gasrem, align 8
  store %Uint64 { i64 1 }, %Uint64* %"$ans_36", align 8, !dbg !191
  %"$gasrem_1069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1070" = icmp ugt i64 1, %"$gasrem_1069"
  br i1 %"$gascmp_1070", label %"$out_of_gas_1071", label %"$have_gas_1072"

"$out_of_gas_1071":                               ; preds = %"$have_gas_1067"
  call void @_out_of_gas()
  br label %"$have_gas_1072"

"$have_gas_1072":                                 ; preds = %"$out_of_gas_1071", %"$have_gas_1067"
  %"$consume_1073" = sub i64 %"$gasrem_1069", 1
  store i64 %"$consume_1073", i64* @_gasrem, align 8
  %"$res__37" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__37", metadata !192, metadata !DIExpression()), !dbg !193
  %"$gasrem_1074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1075" = icmp ugt i64 4, %"$gasrem_1074"
  br i1 %"$gascmp_1075", label %"$out_of_gas_1076", label %"$have_gas_1077"

"$out_of_gas_1076":                               ; preds = %"$have_gas_1072"
  call void @_out_of_gas()
  br label %"$have_gas_1077"

"$have_gas_1077":                                 ; preds = %"$out_of_gas_1076", %"$have_gas_1072"
  %"$consume_1078" = sub i64 %"$gasrem_1074", 4
  store i64 %"$consume_1078", i64* @_gasrem, align 8
  %"$execptr_load_1079" = load i8*, i8** @_execptr, align 8
  %"$$p_35_1080" = load %Uint64, %Uint64* %"$p_35", align 8
  %"$$ans_36_1081" = load %Uint64, %Uint64* %"$ans_36", align 8
  %"$eq_call_1082" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1079", %Uint64 %"$$p_35_1080", %Uint64 %"$$ans_36_1081"), !dbg !194
  store %TName_Bool* %"$eq_call_1082", %TName_Bool** %"$res__37", align 8, !dbg !194
  %"$gasrem_1084" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1085" = icmp ugt i64 1, %"$gasrem_1084"
  br i1 %"$gascmp_1085", label %"$out_of_gas_1086", label %"$have_gas_1087"

"$out_of_gas_1086":                               ; preds = %"$have_gas_1077"
  call void @_out_of_gas()
  br label %"$have_gas_1087"

"$have_gas_1087":                                 ; preds = %"$out_of_gas_1086", %"$have_gas_1077"
  %"$consume_1088" = sub i64 %"$gasrem_1084", 1
  store i64 %"$consume_1088", i64* @_gasrem, align 8
  %"$BoolUtils.andb_155" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1089" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1090" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1089", 0
  %"$BoolUtils.andb_envptr_1091" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1089", 1
  %"$$res_34_1092" = load %TName_Bool*, %TName_Bool** %"$res_34", align 8
  %"$BoolUtils.andb_call_1093" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1090"(i8* %"$BoolUtils.andb_envptr_1091", %TName_Bool* %"$$res_34_1092"), !dbg !195
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1093", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8, !dbg !195
  %"$BoolUtils.andb_156" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_156", metadata !196, metadata !DIExpression()), !dbg !195
  %"$$BoolUtils.andb_155_1094" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_155", align 8
  %"$$BoolUtils.andb_155_fptr_1095" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1094", 0
  %"$$BoolUtils.andb_155_envptr_1096" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_155_1094", 1
  %"$$res__37_1097" = load %TName_Bool*, %TName_Bool** %"$res__37", align 8
  %"$$BoolUtils.andb_155_call_1098" = call %TName_Bool* %"$$BoolUtils.andb_155_fptr_1095"(i8* %"$$BoolUtils.andb_155_envptr_1096", %TName_Bool* %"$$res__37_1097"), !dbg !195
  store %TName_Bool* %"$$BoolUtils.andb_155_call_1098", %TName_Bool** %"$BoolUtils.andb_156", align 8, !dbg !195
  %"$$BoolUtils.andb_156_1099" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_156", align 8
  store %TName_Bool* %"$$BoolUtils.andb_156_1099", %TName_Bool** %"$res_38", align 8, !dbg !195
  %"$gasrem_1100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1101" = icmp ugt i64 1, %"$gasrem_1100"
  br i1 %"$gascmp_1101", label %"$out_of_gas_1102", label %"$have_gas_1103"

"$out_of_gas_1102":                               ; preds = %"$have_gas_1087"
  call void @_out_of_gas()
  br label %"$have_gas_1103"

"$have_gas_1103":                                 ; preds = %"$out_of_gas_1102", %"$have_gas_1087"
  %"$consume_1104" = sub i64 %"$gasrem_1100", 1
  store i64 %"$consume_1104", i64* @_gasrem, align 8
  %"$p_39" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$p_39", metadata !197, metadata !DIExpression()), !dbg !198
  %"$p2_1105" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1106" = extractvalue %Uint32 %"$p2_1105", 0
  %"$valueof_1107" = zext i32 %"$valueof_1106" to i64
  %"$gaslogof_1108" = uitofp i64 %"$valueof_1107" to double
  %"$gaslogof_1109" = fadd double %"$gaslogof_1108", 1.000000e+00
  %"$gaslogof_1110" = call double @llvm.log.f64(double %"$gaslogof_1109")
  %"$gaslogof_1111" = fptoui double %"$gaslogof_1110" to i64
  %"$gaslogof_1112" = add i64 %"$gaslogof_1111", 1
  %"$gasmul_1113" = mul i64 20, %"$gaslogof_1112"
  %"$gasrem_1114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1115" = icmp ugt i64 %"$gasmul_1113", %"$gasrem_1114"
  br i1 %"$gascmp_1115", label %"$out_of_gas_1116", label %"$have_gas_1117"

"$out_of_gas_1116":                               ; preds = %"$have_gas_1103"
  call void @_out_of_gas()
  br label %"$have_gas_1117"

"$have_gas_1117":                                 ; preds = %"$out_of_gas_1116", %"$have_gas_1103"
  %"$consume_1118" = sub i64 %"$gasrem_1114", %"$gasmul_1113"
  store i64 %"$consume_1118", i64* @_gasrem, align 8
  %"$t3_1119" = load %Uint64, %Uint64* %t3, align 8
  %"$p2_1120" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1121" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1119", %Uint32 %"$p2_1120"), !dbg !199
  store %Uint64 %"$pow_call_1121", %Uint64* %"$p_39", align 8, !dbg !199
  %"$gasrem_1122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1123" = icmp ugt i64 1, %"$gasrem_1122"
  br i1 %"$gascmp_1123", label %"$out_of_gas_1124", label %"$have_gas_1125"

"$out_of_gas_1124":                               ; preds = %"$have_gas_1117"
  call void @_out_of_gas()
  br label %"$have_gas_1125"

"$have_gas_1125":                                 ; preds = %"$out_of_gas_1124", %"$have_gas_1117"
  %"$consume_1126" = sub i64 %"$gasrem_1122", 1
  store i64 %"$consume_1126", i64* @_gasrem, align 8
  %"$res_42" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_42", metadata !200, metadata !DIExpression()), !dbg !201
  %"$gasrem_1127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1128" = icmp ugt i64 1, %"$gasrem_1127"
  br i1 %"$gascmp_1128", label %"$out_of_gas_1129", label %"$have_gas_1130"

"$out_of_gas_1129":                               ; preds = %"$have_gas_1125"
  call void @_out_of_gas()
  br label %"$have_gas_1130"

"$have_gas_1130":                                 ; preds = %"$out_of_gas_1129", %"$have_gas_1125"
  %"$consume_1131" = sub i64 %"$gasrem_1127", 1
  store i64 %"$consume_1131", i64* @_gasrem, align 8
  %"$ans_40" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$ans_40", metadata !202, metadata !DIExpression()), !dbg !203
  %"$gasrem_1132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1133" = icmp ugt i64 1, %"$gasrem_1132"
  br i1 %"$gascmp_1133", label %"$out_of_gas_1134", label %"$have_gas_1135"

"$out_of_gas_1134":                               ; preds = %"$have_gas_1130"
  call void @_out_of_gas()
  br label %"$have_gas_1135"

"$have_gas_1135":                                 ; preds = %"$out_of_gas_1134", %"$have_gas_1130"
  %"$consume_1136" = sub i64 %"$gasrem_1132", 1
  store i64 %"$consume_1136", i64* @_gasrem, align 8
  store %Uint64 { i64 100 }, %Uint64* %"$ans_40", align 8, !dbg !204
  %"$gasrem_1137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1138" = icmp ugt i64 1, %"$gasrem_1137"
  br i1 %"$gascmp_1138", label %"$out_of_gas_1139", label %"$have_gas_1140"

"$out_of_gas_1139":                               ; preds = %"$have_gas_1135"
  call void @_out_of_gas()
  br label %"$have_gas_1140"

"$have_gas_1140":                                 ; preds = %"$out_of_gas_1139", %"$have_gas_1135"
  %"$consume_1141" = sub i64 %"$gasrem_1137", 1
  store i64 %"$consume_1141", i64* @_gasrem, align 8
  %"$res__41" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__41", metadata !205, metadata !DIExpression()), !dbg !206
  %"$gasrem_1142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1143" = icmp ugt i64 4, %"$gasrem_1142"
  br i1 %"$gascmp_1143", label %"$out_of_gas_1144", label %"$have_gas_1145"

"$out_of_gas_1144":                               ; preds = %"$have_gas_1140"
  call void @_out_of_gas()
  br label %"$have_gas_1145"

"$have_gas_1145":                                 ; preds = %"$out_of_gas_1144", %"$have_gas_1140"
  %"$consume_1146" = sub i64 %"$gasrem_1142", 4
  store i64 %"$consume_1146", i64* @_gasrem, align 8
  %"$execptr_load_1147" = load i8*, i8** @_execptr, align 8
  %"$$p_39_1148" = load %Uint64, %Uint64* %"$p_39", align 8
  %"$$ans_40_1149" = load %Uint64, %Uint64* %"$ans_40", align 8
  %"$eq_call_1150" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1147", %Uint64 %"$$p_39_1148", %Uint64 %"$$ans_40_1149"), !dbg !207
  store %TName_Bool* %"$eq_call_1150", %TName_Bool** %"$res__41", align 8, !dbg !207
  %"$gasrem_1152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1153" = icmp ugt i64 1, %"$gasrem_1152"
  br i1 %"$gascmp_1153", label %"$out_of_gas_1154", label %"$have_gas_1155"

"$out_of_gas_1154":                               ; preds = %"$have_gas_1145"
  call void @_out_of_gas()
  br label %"$have_gas_1155"

"$have_gas_1155":                                 ; preds = %"$out_of_gas_1154", %"$have_gas_1145"
  %"$consume_1156" = sub i64 %"$gasrem_1152", 1
  store i64 %"$consume_1156", i64* @_gasrem, align 8
  %"$BoolUtils.andb_157" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1157" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1158" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1157", 0
  %"$BoolUtils.andb_envptr_1159" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1157", 1
  %"$$res_38_1160" = load %TName_Bool*, %TName_Bool** %"$res_38", align 8
  %"$BoolUtils.andb_call_1161" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1158"(i8* %"$BoolUtils.andb_envptr_1159", %TName_Bool* %"$$res_38_1160"), !dbg !208
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1161", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8, !dbg !208
  %"$BoolUtils.andb_158" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_158", metadata !209, metadata !DIExpression()), !dbg !208
  %"$$BoolUtils.andb_157_1162" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_157", align 8
  %"$$BoolUtils.andb_157_fptr_1163" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1162", 0
  %"$$BoolUtils.andb_157_envptr_1164" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_157_1162", 1
  %"$$res__41_1165" = load %TName_Bool*, %TName_Bool** %"$res__41", align 8
  %"$$BoolUtils.andb_157_call_1166" = call %TName_Bool* %"$$BoolUtils.andb_157_fptr_1163"(i8* %"$$BoolUtils.andb_157_envptr_1164", %TName_Bool* %"$$res__41_1165"), !dbg !208
  store %TName_Bool* %"$$BoolUtils.andb_157_call_1166", %TName_Bool** %"$BoolUtils.andb_158", align 8, !dbg !208
  %"$$BoolUtils.andb_158_1167" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_158", align 8
  store %TName_Bool* %"$$BoolUtils.andb_158_1167", %TName_Bool** %"$res_42", align 8, !dbg !208
  %"$gasrem_1168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1169" = icmp ugt i64 1, %"$gasrem_1168"
  br i1 %"$gascmp_1169", label %"$out_of_gas_1170", label %"$have_gas_1171"

"$out_of_gas_1170":                               ; preds = %"$have_gas_1155"
  call void @_out_of_gas()
  br label %"$have_gas_1171"

"$have_gas_1171":                                 ; preds = %"$out_of_gas_1170", %"$have_gas_1155"
  %"$consume_1172" = sub i64 %"$gasrem_1168", 1
  store i64 %"$consume_1172", i64* @_gasrem, align 8
  %"$p_43" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$p_43", metadata !210, metadata !DIExpression()), !dbg !211
  %"$p3_1173" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1174" = extractvalue %Uint32 %"$p3_1173", 0
  %"$valueof_1175" = zext i32 %"$valueof_1174" to i64
  %"$gaslogof_1176" = uitofp i64 %"$valueof_1175" to double
  %"$gaslogof_1177" = fadd double %"$gaslogof_1176", 1.000000e+00
  %"$gaslogof_1178" = call double @llvm.log.f64(double %"$gaslogof_1177")
  %"$gaslogof_1179" = fptoui double %"$gaslogof_1178" to i64
  %"$gaslogof_1180" = add i64 %"$gaslogof_1179", 1
  %"$gasmul_1181" = mul i64 20, %"$gaslogof_1180"
  %"$gasrem_1182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1183" = icmp ugt i64 %"$gasmul_1181", %"$gasrem_1182"
  br i1 %"$gascmp_1183", label %"$out_of_gas_1184", label %"$have_gas_1185"

"$out_of_gas_1184":                               ; preds = %"$have_gas_1171"
  call void @_out_of_gas()
  br label %"$have_gas_1185"

"$have_gas_1185":                                 ; preds = %"$out_of_gas_1184", %"$have_gas_1171"
  %"$consume_1186" = sub i64 %"$gasrem_1182", %"$gasmul_1181"
  store i64 %"$consume_1186", i64* @_gasrem, align 8
  %"$t3_1187" = load %Uint64, %Uint64* %t3, align 8
  %"$p3_1188" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1189" = call %Uint64 @_pow_Uint64(%Uint64 %"$t3_1187", %Uint32 %"$p3_1188"), !dbg !212
  store %Uint64 %"$pow_call_1189", %Uint64* %"$p_43", align 8, !dbg !212
  %"$gasrem_1190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1191" = icmp ugt i64 1, %"$gasrem_1190"
  br i1 %"$gascmp_1191", label %"$out_of_gas_1192", label %"$have_gas_1193"

"$out_of_gas_1192":                               ; preds = %"$have_gas_1185"
  call void @_out_of_gas()
  br label %"$have_gas_1193"

"$have_gas_1193":                                 ; preds = %"$out_of_gas_1192", %"$have_gas_1185"
  %"$consume_1194" = sub i64 %"$gasrem_1190", 1
  store i64 %"$consume_1194", i64* @_gasrem, align 8
  %"$res_46" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_46", metadata !213, metadata !DIExpression()), !dbg !214
  %"$gasrem_1195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1196" = icmp ugt i64 1, %"$gasrem_1195"
  br i1 %"$gascmp_1196", label %"$out_of_gas_1197", label %"$have_gas_1198"

"$out_of_gas_1197":                               ; preds = %"$have_gas_1193"
  call void @_out_of_gas()
  br label %"$have_gas_1198"

"$have_gas_1198":                                 ; preds = %"$out_of_gas_1197", %"$have_gas_1193"
  %"$consume_1199" = sub i64 %"$gasrem_1195", 1
  store i64 %"$consume_1199", i64* @_gasrem, align 8
  %"$ans_44" = alloca %Uint64, align 8
  call void @llvm.dbg.declare(metadata %Uint64* %"$ans_44", metadata !215, metadata !DIExpression()), !dbg !216
  %"$gasrem_1200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1201" = icmp ugt i64 1, %"$gasrem_1200"
  br i1 %"$gascmp_1201", label %"$out_of_gas_1202", label %"$have_gas_1203"

"$out_of_gas_1202":                               ; preds = %"$have_gas_1198"
  call void @_out_of_gas()
  br label %"$have_gas_1203"

"$have_gas_1203":                                 ; preds = %"$out_of_gas_1202", %"$have_gas_1198"
  %"$consume_1204" = sub i64 %"$gasrem_1200", 1
  store i64 %"$consume_1204", i64* @_gasrem, align 8
  store %Uint64 { i64 100000000 }, %Uint64* %"$ans_44", align 8, !dbg !217
  %"$gasrem_1205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1206" = icmp ugt i64 1, %"$gasrem_1205"
  br i1 %"$gascmp_1206", label %"$out_of_gas_1207", label %"$have_gas_1208"

"$out_of_gas_1207":                               ; preds = %"$have_gas_1203"
  call void @_out_of_gas()
  br label %"$have_gas_1208"

"$have_gas_1208":                                 ; preds = %"$out_of_gas_1207", %"$have_gas_1203"
  %"$consume_1209" = sub i64 %"$gasrem_1205", 1
  store i64 %"$consume_1209", i64* @_gasrem, align 8
  %"$res__45" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__45", metadata !218, metadata !DIExpression()), !dbg !219
  %"$gasrem_1210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1211" = icmp ugt i64 4, %"$gasrem_1210"
  br i1 %"$gascmp_1211", label %"$out_of_gas_1212", label %"$have_gas_1213"

"$out_of_gas_1212":                               ; preds = %"$have_gas_1208"
  call void @_out_of_gas()
  br label %"$have_gas_1213"

"$have_gas_1213":                                 ; preds = %"$out_of_gas_1212", %"$have_gas_1208"
  %"$consume_1214" = sub i64 %"$gasrem_1210", 4
  store i64 %"$consume_1214", i64* @_gasrem, align 8
  %"$execptr_load_1215" = load i8*, i8** @_execptr, align 8
  %"$$p_43_1216" = load %Uint64, %Uint64* %"$p_43", align 8
  %"$$ans_44_1217" = load %Uint64, %Uint64* %"$ans_44", align 8
  %"$eq_call_1218" = call %TName_Bool* @_eq_Uint64(i8* %"$execptr_load_1215", %Uint64 %"$$p_43_1216", %Uint64 %"$$ans_44_1217"), !dbg !220
  store %TName_Bool* %"$eq_call_1218", %TName_Bool** %"$res__45", align 8, !dbg !220
  %"$gasrem_1220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1221" = icmp ugt i64 1, %"$gasrem_1220"
  br i1 %"$gascmp_1221", label %"$out_of_gas_1222", label %"$have_gas_1223"

"$out_of_gas_1222":                               ; preds = %"$have_gas_1213"
  call void @_out_of_gas()
  br label %"$have_gas_1223"

"$have_gas_1223":                                 ; preds = %"$out_of_gas_1222", %"$have_gas_1213"
  %"$consume_1224" = sub i64 %"$gasrem_1220", 1
  store i64 %"$consume_1224", i64* @_gasrem, align 8
  %"$BoolUtils.andb_159" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1225" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1226" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1225", 0
  %"$BoolUtils.andb_envptr_1227" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1225", 1
  %"$$res_42_1228" = load %TName_Bool*, %TName_Bool** %"$res_42", align 8
  %"$BoolUtils.andb_call_1229" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1226"(i8* %"$BoolUtils.andb_envptr_1227", %TName_Bool* %"$$res_42_1228"), !dbg !221
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1229", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8, !dbg !221
  %"$BoolUtils.andb_160" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_160", metadata !222, metadata !DIExpression()), !dbg !221
  %"$$BoolUtils.andb_159_1230" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_159", align 8
  %"$$BoolUtils.andb_159_fptr_1231" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1230", 0
  %"$$BoolUtils.andb_159_envptr_1232" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_159_1230", 1
  %"$$res__45_1233" = load %TName_Bool*, %TName_Bool** %"$res__45", align 8
  %"$$BoolUtils.andb_159_call_1234" = call %TName_Bool* %"$$BoolUtils.andb_159_fptr_1231"(i8* %"$$BoolUtils.andb_159_envptr_1232", %TName_Bool* %"$$res__45_1233"), !dbg !221
  store %TName_Bool* %"$$BoolUtils.andb_159_call_1234", %TName_Bool** %"$BoolUtils.andb_160", align 8, !dbg !221
  %"$$BoolUtils.andb_160_1235" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_160", align 8
  store %TName_Bool* %"$$BoolUtils.andb_160_1235", %TName_Bool** %"$res_46", align 8, !dbg !221
  %"$gasrem_1236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1237" = icmp ugt i64 1, %"$gasrem_1236"
  br i1 %"$gascmp_1237", label %"$out_of_gas_1238", label %"$have_gas_1239"

"$out_of_gas_1238":                               ; preds = %"$have_gas_1223"
  call void @_out_of_gas()
  br label %"$have_gas_1239"

"$have_gas_1239":                                 ; preds = %"$out_of_gas_1238", %"$have_gas_1223"
  %"$consume_1240" = sub i64 %"$gasrem_1236", 1
  store i64 %"$consume_1240", i64* @_gasrem, align 8
  %"$p_47" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$p_47", metadata !223, metadata !DIExpression()), !dbg !224
  %"$p1_1241" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1242" = extractvalue %Uint32 %"$p1_1241", 0
  %"$valueof_1243" = zext i32 %"$valueof_1242" to i64
  %"$gaslogof_1244" = uitofp i64 %"$valueof_1243" to double
  %"$gaslogof_1245" = fadd double %"$gaslogof_1244", 1.000000e+00
  %"$gaslogof_1246" = call double @llvm.log.f64(double %"$gaslogof_1245")
  %"$gaslogof_1247" = fptoui double %"$gaslogof_1246" to i64
  %"$gaslogof_1248" = add i64 %"$gaslogof_1247", 1
  %"$gasmul_1249" = mul i64 20, %"$gaslogof_1248"
  %"$gasrem_1250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1251" = icmp ugt i64 %"$gasmul_1249", %"$gasrem_1250"
  br i1 %"$gascmp_1251", label %"$out_of_gas_1252", label %"$have_gas_1253"

"$out_of_gas_1252":                               ; preds = %"$have_gas_1239"
  call void @_out_of_gas()
  br label %"$have_gas_1253"

"$have_gas_1253":                                 ; preds = %"$out_of_gas_1252", %"$have_gas_1239"
  %"$consume_1254" = sub i64 %"$gasrem_1250", %"$gasmul_1249"
  store i64 %"$consume_1254", i64* @_gasrem, align 8
  %"$t4_1255" = load %Int64, %Int64* %t4, align 8
  %"$p1_1256" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1257" = call %Int64 @_pow_Int64(%Int64 %"$t4_1255", %Uint32 %"$p1_1256"), !dbg !225
  store %Int64 %"$pow_call_1257", %Int64* %"$p_47", align 8, !dbg !225
  %"$gasrem_1258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1259" = icmp ugt i64 1, %"$gasrem_1258"
  br i1 %"$gascmp_1259", label %"$out_of_gas_1260", label %"$have_gas_1261"

"$out_of_gas_1260":                               ; preds = %"$have_gas_1253"
  call void @_out_of_gas()
  br label %"$have_gas_1261"

"$have_gas_1261":                                 ; preds = %"$out_of_gas_1260", %"$have_gas_1253"
  %"$consume_1262" = sub i64 %"$gasrem_1258", 1
  store i64 %"$consume_1262", i64* @_gasrem, align 8
  %"$res_50" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_50", metadata !226, metadata !DIExpression()), !dbg !227
  %"$gasrem_1263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1264" = icmp ugt i64 1, %"$gasrem_1263"
  br i1 %"$gascmp_1264", label %"$out_of_gas_1265", label %"$have_gas_1266"

"$out_of_gas_1265":                               ; preds = %"$have_gas_1261"
  call void @_out_of_gas()
  br label %"$have_gas_1266"

"$have_gas_1266":                                 ; preds = %"$out_of_gas_1265", %"$have_gas_1261"
  %"$consume_1267" = sub i64 %"$gasrem_1263", 1
  store i64 %"$consume_1267", i64* @_gasrem, align 8
  %"$ans_48" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$ans_48", metadata !228, metadata !DIExpression()), !dbg !229
  %"$gasrem_1268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1269" = icmp ugt i64 1, %"$gasrem_1268"
  br i1 %"$gascmp_1269", label %"$out_of_gas_1270", label %"$have_gas_1271"

"$out_of_gas_1270":                               ; preds = %"$have_gas_1266"
  call void @_out_of_gas()
  br label %"$have_gas_1271"

"$have_gas_1271":                                 ; preds = %"$out_of_gas_1270", %"$have_gas_1266"
  %"$consume_1272" = sub i64 %"$gasrem_1268", 1
  store i64 %"$consume_1272", i64* @_gasrem, align 8
  store %Int64 { i64 1 }, %Int64* %"$ans_48", align 8, !dbg !230
  %"$gasrem_1273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1274" = icmp ugt i64 1, %"$gasrem_1273"
  br i1 %"$gascmp_1274", label %"$out_of_gas_1275", label %"$have_gas_1276"

"$out_of_gas_1275":                               ; preds = %"$have_gas_1271"
  call void @_out_of_gas()
  br label %"$have_gas_1276"

"$have_gas_1276":                                 ; preds = %"$out_of_gas_1275", %"$have_gas_1271"
  %"$consume_1277" = sub i64 %"$gasrem_1273", 1
  store i64 %"$consume_1277", i64* @_gasrem, align 8
  %"$res__49" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__49", metadata !231, metadata !DIExpression()), !dbg !232
  %"$gasrem_1278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1279" = icmp ugt i64 4, %"$gasrem_1278"
  br i1 %"$gascmp_1279", label %"$out_of_gas_1280", label %"$have_gas_1281"

"$out_of_gas_1280":                               ; preds = %"$have_gas_1276"
  call void @_out_of_gas()
  br label %"$have_gas_1281"

"$have_gas_1281":                                 ; preds = %"$out_of_gas_1280", %"$have_gas_1276"
  %"$consume_1282" = sub i64 %"$gasrem_1278", 4
  store i64 %"$consume_1282", i64* @_gasrem, align 8
  %"$execptr_load_1283" = load i8*, i8** @_execptr, align 8
  %"$$p_47_1284" = load %Int64, %Int64* %"$p_47", align 8
  %"$$ans_48_1285" = load %Int64, %Int64* %"$ans_48", align 8
  %"$eq_call_1286" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1283", %Int64 %"$$p_47_1284", %Int64 %"$$ans_48_1285"), !dbg !233
  store %TName_Bool* %"$eq_call_1286", %TName_Bool** %"$res__49", align 8, !dbg !233
  %"$gasrem_1288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1289" = icmp ugt i64 1, %"$gasrem_1288"
  br i1 %"$gascmp_1289", label %"$out_of_gas_1290", label %"$have_gas_1291"

"$out_of_gas_1290":                               ; preds = %"$have_gas_1281"
  call void @_out_of_gas()
  br label %"$have_gas_1291"

"$have_gas_1291":                                 ; preds = %"$out_of_gas_1290", %"$have_gas_1281"
  %"$consume_1292" = sub i64 %"$gasrem_1288", 1
  store i64 %"$consume_1292", i64* @_gasrem, align 8
  %"$BoolUtils.andb_161" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1293" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1294" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1293", 0
  %"$BoolUtils.andb_envptr_1295" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1293", 1
  %"$$res_46_1296" = load %TName_Bool*, %TName_Bool** %"$res_46", align 8
  %"$BoolUtils.andb_call_1297" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1294"(i8* %"$BoolUtils.andb_envptr_1295", %TName_Bool* %"$$res_46_1296"), !dbg !234
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1297", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8, !dbg !234
  %"$BoolUtils.andb_162" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_162", metadata !235, metadata !DIExpression()), !dbg !234
  %"$$BoolUtils.andb_161_1298" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_161", align 8
  %"$$BoolUtils.andb_161_fptr_1299" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1298", 0
  %"$$BoolUtils.andb_161_envptr_1300" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_161_1298", 1
  %"$$res__49_1301" = load %TName_Bool*, %TName_Bool** %"$res__49", align 8
  %"$$BoolUtils.andb_161_call_1302" = call %TName_Bool* %"$$BoolUtils.andb_161_fptr_1299"(i8* %"$$BoolUtils.andb_161_envptr_1300", %TName_Bool* %"$$res__49_1301"), !dbg !234
  store %TName_Bool* %"$$BoolUtils.andb_161_call_1302", %TName_Bool** %"$BoolUtils.andb_162", align 8, !dbg !234
  %"$$BoolUtils.andb_162_1303" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_162", align 8
  store %TName_Bool* %"$$BoolUtils.andb_162_1303", %TName_Bool** %"$res_50", align 8, !dbg !234
  %"$gasrem_1304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1305" = icmp ugt i64 1, %"$gasrem_1304"
  br i1 %"$gascmp_1305", label %"$out_of_gas_1306", label %"$have_gas_1307"

"$out_of_gas_1306":                               ; preds = %"$have_gas_1291"
  call void @_out_of_gas()
  br label %"$have_gas_1307"

"$have_gas_1307":                                 ; preds = %"$out_of_gas_1306", %"$have_gas_1291"
  %"$consume_1308" = sub i64 %"$gasrem_1304", 1
  store i64 %"$consume_1308", i64* @_gasrem, align 8
  %"$p_51" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$p_51", metadata !236, metadata !DIExpression()), !dbg !237
  %"$p2_1309" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1310" = extractvalue %Uint32 %"$p2_1309", 0
  %"$valueof_1311" = zext i32 %"$valueof_1310" to i64
  %"$gaslogof_1312" = uitofp i64 %"$valueof_1311" to double
  %"$gaslogof_1313" = fadd double %"$gaslogof_1312", 1.000000e+00
  %"$gaslogof_1314" = call double @llvm.log.f64(double %"$gaslogof_1313")
  %"$gaslogof_1315" = fptoui double %"$gaslogof_1314" to i64
  %"$gaslogof_1316" = add i64 %"$gaslogof_1315", 1
  %"$gasmul_1317" = mul i64 20, %"$gaslogof_1316"
  %"$gasrem_1318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1319" = icmp ugt i64 %"$gasmul_1317", %"$gasrem_1318"
  br i1 %"$gascmp_1319", label %"$out_of_gas_1320", label %"$have_gas_1321"

"$out_of_gas_1320":                               ; preds = %"$have_gas_1307"
  call void @_out_of_gas()
  br label %"$have_gas_1321"

"$have_gas_1321":                                 ; preds = %"$out_of_gas_1320", %"$have_gas_1307"
  %"$consume_1322" = sub i64 %"$gasrem_1318", %"$gasmul_1317"
  store i64 %"$consume_1322", i64* @_gasrem, align 8
  %"$t4_1323" = load %Int64, %Int64* %t4, align 8
  %"$p2_1324" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1325" = call %Int64 @_pow_Int64(%Int64 %"$t4_1323", %Uint32 %"$p2_1324"), !dbg !238
  store %Int64 %"$pow_call_1325", %Int64* %"$p_51", align 8, !dbg !238
  %"$gasrem_1326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1327" = icmp ugt i64 1, %"$gasrem_1326"
  br i1 %"$gascmp_1327", label %"$out_of_gas_1328", label %"$have_gas_1329"

"$out_of_gas_1328":                               ; preds = %"$have_gas_1321"
  call void @_out_of_gas()
  br label %"$have_gas_1329"

"$have_gas_1329":                                 ; preds = %"$out_of_gas_1328", %"$have_gas_1321"
  %"$consume_1330" = sub i64 %"$gasrem_1326", 1
  store i64 %"$consume_1330", i64* @_gasrem, align 8
  %"$res_54" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_54", metadata !239, metadata !DIExpression()), !dbg !240
  %"$gasrem_1331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1332" = icmp ugt i64 1, %"$gasrem_1331"
  br i1 %"$gascmp_1332", label %"$out_of_gas_1333", label %"$have_gas_1334"

"$out_of_gas_1333":                               ; preds = %"$have_gas_1329"
  call void @_out_of_gas()
  br label %"$have_gas_1334"

"$have_gas_1334":                                 ; preds = %"$out_of_gas_1333", %"$have_gas_1329"
  %"$consume_1335" = sub i64 %"$gasrem_1331", 1
  store i64 %"$consume_1335", i64* @_gasrem, align 8
  %"$ans_52" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$ans_52", metadata !241, metadata !DIExpression()), !dbg !242
  %"$gasrem_1336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1337" = icmp ugt i64 1, %"$gasrem_1336"
  br i1 %"$gascmp_1337", label %"$out_of_gas_1338", label %"$have_gas_1339"

"$out_of_gas_1338":                               ; preds = %"$have_gas_1334"
  call void @_out_of_gas()
  br label %"$have_gas_1339"

"$have_gas_1339":                                 ; preds = %"$out_of_gas_1338", %"$have_gas_1334"
  %"$consume_1340" = sub i64 %"$gasrem_1336", 1
  store i64 %"$consume_1340", i64* @_gasrem, align 8
  store %Int64 { i64 -101 }, %Int64* %"$ans_52", align 8, !dbg !243
  %"$gasrem_1341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1342" = icmp ugt i64 1, %"$gasrem_1341"
  br i1 %"$gascmp_1342", label %"$out_of_gas_1343", label %"$have_gas_1344"

"$out_of_gas_1343":                               ; preds = %"$have_gas_1339"
  call void @_out_of_gas()
  br label %"$have_gas_1344"

"$have_gas_1344":                                 ; preds = %"$out_of_gas_1343", %"$have_gas_1339"
  %"$consume_1345" = sub i64 %"$gasrem_1341", 1
  store i64 %"$consume_1345", i64* @_gasrem, align 8
  %"$res__53" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__53", metadata !244, metadata !DIExpression()), !dbg !245
  %"$gasrem_1346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1347" = icmp ugt i64 4, %"$gasrem_1346"
  br i1 %"$gascmp_1347", label %"$out_of_gas_1348", label %"$have_gas_1349"

"$out_of_gas_1348":                               ; preds = %"$have_gas_1344"
  call void @_out_of_gas()
  br label %"$have_gas_1349"

"$have_gas_1349":                                 ; preds = %"$out_of_gas_1348", %"$have_gas_1344"
  %"$consume_1350" = sub i64 %"$gasrem_1346", 4
  store i64 %"$consume_1350", i64* @_gasrem, align 8
  %"$execptr_load_1351" = load i8*, i8** @_execptr, align 8
  %"$$p_51_1352" = load %Int64, %Int64* %"$p_51", align 8
  %"$$ans_52_1353" = load %Int64, %Int64* %"$ans_52", align 8
  %"$eq_call_1354" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1351", %Int64 %"$$p_51_1352", %Int64 %"$$ans_52_1353"), !dbg !246
  store %TName_Bool* %"$eq_call_1354", %TName_Bool** %"$res__53", align 8, !dbg !246
  %"$gasrem_1356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1357" = icmp ugt i64 1, %"$gasrem_1356"
  br i1 %"$gascmp_1357", label %"$out_of_gas_1358", label %"$have_gas_1359"

"$out_of_gas_1358":                               ; preds = %"$have_gas_1349"
  call void @_out_of_gas()
  br label %"$have_gas_1359"

"$have_gas_1359":                                 ; preds = %"$out_of_gas_1358", %"$have_gas_1349"
  %"$consume_1360" = sub i64 %"$gasrem_1356", 1
  store i64 %"$consume_1360", i64* @_gasrem, align 8
  %"$BoolUtils.andb_163" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1361" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1362" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1361", 0
  %"$BoolUtils.andb_envptr_1363" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1361", 1
  %"$$res_50_1364" = load %TName_Bool*, %TName_Bool** %"$res_50", align 8
  %"$BoolUtils.andb_call_1365" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1362"(i8* %"$BoolUtils.andb_envptr_1363", %TName_Bool* %"$$res_50_1364"), !dbg !247
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1365", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8, !dbg !247
  %"$BoolUtils.andb_164" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_164", metadata !248, metadata !DIExpression()), !dbg !247
  %"$$BoolUtils.andb_163_1366" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_163", align 8
  %"$$BoolUtils.andb_163_fptr_1367" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1366", 0
  %"$$BoolUtils.andb_163_envptr_1368" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_163_1366", 1
  %"$$res__53_1369" = load %TName_Bool*, %TName_Bool** %"$res__53", align 8
  %"$$BoolUtils.andb_163_call_1370" = call %TName_Bool* %"$$BoolUtils.andb_163_fptr_1367"(i8* %"$$BoolUtils.andb_163_envptr_1368", %TName_Bool* %"$$res__53_1369"), !dbg !247
  store %TName_Bool* %"$$BoolUtils.andb_163_call_1370", %TName_Bool** %"$BoolUtils.andb_164", align 8, !dbg !247
  %"$$BoolUtils.andb_164_1371" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_164", align 8
  store %TName_Bool* %"$$BoolUtils.andb_164_1371", %TName_Bool** %"$res_54", align 8, !dbg !247
  %"$gasrem_1372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1373" = icmp ugt i64 1, %"$gasrem_1372"
  br i1 %"$gascmp_1373", label %"$out_of_gas_1374", label %"$have_gas_1375"

"$out_of_gas_1374":                               ; preds = %"$have_gas_1359"
  call void @_out_of_gas()
  br label %"$have_gas_1375"

"$have_gas_1375":                                 ; preds = %"$out_of_gas_1374", %"$have_gas_1359"
  %"$consume_1376" = sub i64 %"$gasrem_1372", 1
  store i64 %"$consume_1376", i64* @_gasrem, align 8
  %"$p_55" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$p_55", metadata !249, metadata !DIExpression()), !dbg !250
  %"$p3_1377" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1378" = extractvalue %Uint32 %"$p3_1377", 0
  %"$valueof_1379" = zext i32 %"$valueof_1378" to i64
  %"$gaslogof_1380" = uitofp i64 %"$valueof_1379" to double
  %"$gaslogof_1381" = fadd double %"$gaslogof_1380", 1.000000e+00
  %"$gaslogof_1382" = call double @llvm.log.f64(double %"$gaslogof_1381")
  %"$gaslogof_1383" = fptoui double %"$gaslogof_1382" to i64
  %"$gaslogof_1384" = add i64 %"$gaslogof_1383", 1
  %"$gasmul_1385" = mul i64 20, %"$gaslogof_1384"
  %"$gasrem_1386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1387" = icmp ugt i64 %"$gasmul_1385", %"$gasrem_1386"
  br i1 %"$gascmp_1387", label %"$out_of_gas_1388", label %"$have_gas_1389"

"$out_of_gas_1388":                               ; preds = %"$have_gas_1375"
  call void @_out_of_gas()
  br label %"$have_gas_1389"

"$have_gas_1389":                                 ; preds = %"$out_of_gas_1388", %"$have_gas_1375"
  %"$consume_1390" = sub i64 %"$gasrem_1386", %"$gasmul_1385"
  store i64 %"$consume_1390", i64* @_gasrem, align 8
  %"$t4_1391" = load %Int64, %Int64* %t4, align 8
  %"$p3_1392" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1393" = call %Int64 @_pow_Int64(%Int64 %"$t4_1391", %Uint32 %"$p3_1392"), !dbg !251
  store %Int64 %"$pow_call_1393", %Int64* %"$p_55", align 8, !dbg !251
  %"$gasrem_1394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1395" = icmp ugt i64 1, %"$gasrem_1394"
  br i1 %"$gascmp_1395", label %"$out_of_gas_1396", label %"$have_gas_1397"

"$out_of_gas_1396":                               ; preds = %"$have_gas_1389"
  call void @_out_of_gas()
  br label %"$have_gas_1397"

"$have_gas_1397":                                 ; preds = %"$out_of_gas_1396", %"$have_gas_1389"
  %"$consume_1398" = sub i64 %"$gasrem_1394", 1
  store i64 %"$consume_1398", i64* @_gasrem, align 8
  %"$res_58" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_58", metadata !252, metadata !DIExpression()), !dbg !253
  %"$gasrem_1399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1400" = icmp ugt i64 1, %"$gasrem_1399"
  br i1 %"$gascmp_1400", label %"$out_of_gas_1401", label %"$have_gas_1402"

"$out_of_gas_1401":                               ; preds = %"$have_gas_1397"
  call void @_out_of_gas()
  br label %"$have_gas_1402"

"$have_gas_1402":                                 ; preds = %"$out_of_gas_1401", %"$have_gas_1397"
  %"$consume_1403" = sub i64 %"$gasrem_1399", 1
  store i64 %"$consume_1403", i64* @_gasrem, align 8
  %"$ans_56" = alloca %Int64, align 8
  call void @llvm.dbg.declare(metadata %Int64* %"$ans_56", metadata !254, metadata !DIExpression()), !dbg !255
  %"$gasrem_1404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1405" = icmp ugt i64 1, %"$gasrem_1404"
  br i1 %"$gascmp_1405", label %"$out_of_gas_1406", label %"$have_gas_1407"

"$out_of_gas_1406":                               ; preds = %"$have_gas_1402"
  call void @_out_of_gas()
  br label %"$have_gas_1407"

"$have_gas_1407":                                 ; preds = %"$out_of_gas_1406", %"$have_gas_1402"
  %"$consume_1408" = sub i64 %"$gasrem_1404", 1
  store i64 %"$consume_1408", i64* @_gasrem, align 8
  store %Int64 { i64 104060401 }, %Int64* %"$ans_56", align 8, !dbg !256
  %"$gasrem_1409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1410" = icmp ugt i64 1, %"$gasrem_1409"
  br i1 %"$gascmp_1410", label %"$out_of_gas_1411", label %"$have_gas_1412"

"$out_of_gas_1411":                               ; preds = %"$have_gas_1407"
  call void @_out_of_gas()
  br label %"$have_gas_1412"

"$have_gas_1412":                                 ; preds = %"$out_of_gas_1411", %"$have_gas_1407"
  %"$consume_1413" = sub i64 %"$gasrem_1409", 1
  store i64 %"$consume_1413", i64* @_gasrem, align 8
  %"$res__57" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__57", metadata !257, metadata !DIExpression()), !dbg !258
  %"$gasrem_1414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1415" = icmp ugt i64 4, %"$gasrem_1414"
  br i1 %"$gascmp_1415", label %"$out_of_gas_1416", label %"$have_gas_1417"

"$out_of_gas_1416":                               ; preds = %"$have_gas_1412"
  call void @_out_of_gas()
  br label %"$have_gas_1417"

"$have_gas_1417":                                 ; preds = %"$out_of_gas_1416", %"$have_gas_1412"
  %"$consume_1418" = sub i64 %"$gasrem_1414", 4
  store i64 %"$consume_1418", i64* @_gasrem, align 8
  %"$execptr_load_1419" = load i8*, i8** @_execptr, align 8
  %"$$p_55_1420" = load %Int64, %Int64* %"$p_55", align 8
  %"$$ans_56_1421" = load %Int64, %Int64* %"$ans_56", align 8
  %"$eq_call_1422" = call %TName_Bool* @_eq_Int64(i8* %"$execptr_load_1419", %Int64 %"$$p_55_1420", %Int64 %"$$ans_56_1421"), !dbg !259
  store %TName_Bool* %"$eq_call_1422", %TName_Bool** %"$res__57", align 8, !dbg !259
  %"$gasrem_1424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1425" = icmp ugt i64 1, %"$gasrem_1424"
  br i1 %"$gascmp_1425", label %"$out_of_gas_1426", label %"$have_gas_1427"

"$out_of_gas_1426":                               ; preds = %"$have_gas_1417"
  call void @_out_of_gas()
  br label %"$have_gas_1427"

"$have_gas_1427":                                 ; preds = %"$out_of_gas_1426", %"$have_gas_1417"
  %"$consume_1428" = sub i64 %"$gasrem_1424", 1
  store i64 %"$consume_1428", i64* @_gasrem, align 8
  %"$BoolUtils.andb_165" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1429" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1430" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1429", 0
  %"$BoolUtils.andb_envptr_1431" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1429", 1
  %"$$res_54_1432" = load %TName_Bool*, %TName_Bool** %"$res_54", align 8
  %"$BoolUtils.andb_call_1433" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1430"(i8* %"$BoolUtils.andb_envptr_1431", %TName_Bool* %"$$res_54_1432"), !dbg !260
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1433", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8, !dbg !260
  %"$BoolUtils.andb_166" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_166", metadata !261, metadata !DIExpression()), !dbg !260
  %"$$BoolUtils.andb_165_1434" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_165", align 8
  %"$$BoolUtils.andb_165_fptr_1435" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1434", 0
  %"$$BoolUtils.andb_165_envptr_1436" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_165_1434", 1
  %"$$res__57_1437" = load %TName_Bool*, %TName_Bool** %"$res__57", align 8
  %"$$BoolUtils.andb_165_call_1438" = call %TName_Bool* %"$$BoolUtils.andb_165_fptr_1435"(i8* %"$$BoolUtils.andb_165_envptr_1436", %TName_Bool* %"$$res__57_1437"), !dbg !260
  store %TName_Bool* %"$$BoolUtils.andb_165_call_1438", %TName_Bool** %"$BoolUtils.andb_166", align 8, !dbg !260
  %"$$BoolUtils.andb_166_1439" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_166", align 8
  store %TName_Bool* %"$$BoolUtils.andb_166_1439", %TName_Bool** %"$res_58", align 8, !dbg !260
  %"$gasrem_1440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1441" = icmp ugt i64 1, %"$gasrem_1440"
  br i1 %"$gascmp_1441", label %"$out_of_gas_1442", label %"$have_gas_1443"

"$out_of_gas_1442":                               ; preds = %"$have_gas_1427"
  call void @_out_of_gas()
  br label %"$have_gas_1443"

"$have_gas_1443":                                 ; preds = %"$out_of_gas_1442", %"$have_gas_1427"
  %"$consume_1444" = sub i64 %"$gasrem_1440", 1
  store i64 %"$consume_1444", i64* @_gasrem, align 8
  %"$p_59" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$p_59", metadata !262, metadata !DIExpression()), !dbg !263
  %"$p1_1445" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1446" = extractvalue %Uint32 %"$p1_1445", 0
  %"$valueof_1447" = zext i32 %"$valueof_1446" to i64
  %"$gaslogof_1448" = uitofp i64 %"$valueof_1447" to double
  %"$gaslogof_1449" = fadd double %"$gaslogof_1448", 1.000000e+00
  %"$gaslogof_1450" = call double @llvm.log.f64(double %"$gaslogof_1449")
  %"$gaslogof_1451" = fptoui double %"$gaslogof_1450" to i64
  %"$gaslogof_1452" = add i64 %"$gaslogof_1451", 1
  %"$gasmul_1453" = mul i64 20, %"$gaslogof_1452"
  %"$gasmul_1454" = mul i64 %"$gasmul_1453", 2
  %"$gasrem_1455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1456" = icmp ugt i64 %"$gasmul_1454", %"$gasrem_1455"
  br i1 %"$gascmp_1456", label %"$out_of_gas_1457", label %"$have_gas_1458"

"$out_of_gas_1457":                               ; preds = %"$have_gas_1443"
  call void @_out_of_gas()
  br label %"$have_gas_1458"

"$have_gas_1458":                                 ; preds = %"$out_of_gas_1457", %"$have_gas_1443"
  %"$consume_1459" = sub i64 %"$gasrem_1455", %"$gasmul_1454"
  store i64 %"$consume_1459", i64* @_gasrem, align 8
  %"$t5_1460" = load %Uint128, %Uint128* %t5, align 8
  %"$p1_1461" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1462" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1460", %Uint32 %"$p1_1461"), !dbg !264
  store %Uint128 %"$pow_call_1462", %Uint128* %"$p_59", align 8, !dbg !264
  %"$gasrem_1463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1464" = icmp ugt i64 1, %"$gasrem_1463"
  br i1 %"$gascmp_1464", label %"$out_of_gas_1465", label %"$have_gas_1466"

"$out_of_gas_1465":                               ; preds = %"$have_gas_1458"
  call void @_out_of_gas()
  br label %"$have_gas_1466"

"$have_gas_1466":                                 ; preds = %"$out_of_gas_1465", %"$have_gas_1458"
  %"$consume_1467" = sub i64 %"$gasrem_1463", 1
  store i64 %"$consume_1467", i64* @_gasrem, align 8
  %"$res_62" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_62", metadata !265, metadata !DIExpression()), !dbg !266
  %"$gasrem_1468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1469" = icmp ugt i64 1, %"$gasrem_1468"
  br i1 %"$gascmp_1469", label %"$out_of_gas_1470", label %"$have_gas_1471"

"$out_of_gas_1470":                               ; preds = %"$have_gas_1466"
  call void @_out_of_gas()
  br label %"$have_gas_1471"

"$have_gas_1471":                                 ; preds = %"$out_of_gas_1470", %"$have_gas_1466"
  %"$consume_1472" = sub i64 %"$gasrem_1468", 1
  store i64 %"$consume_1472", i64* @_gasrem, align 8
  %"$ans_60" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$ans_60", metadata !267, metadata !DIExpression()), !dbg !268
  %"$gasrem_1473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1474" = icmp ugt i64 1, %"$gasrem_1473"
  br i1 %"$gascmp_1474", label %"$out_of_gas_1475", label %"$have_gas_1476"

"$out_of_gas_1475":                               ; preds = %"$have_gas_1471"
  call void @_out_of_gas()
  br label %"$have_gas_1476"

"$have_gas_1476":                                 ; preds = %"$out_of_gas_1475", %"$have_gas_1471"
  %"$consume_1477" = sub i64 %"$gasrem_1473", 1
  store i64 %"$consume_1477", i64* @_gasrem, align 8
  store %Uint128 { i128 1 }, %Uint128* %"$ans_60", align 8, !dbg !269
  %"$gasrem_1478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1479" = icmp ugt i64 1, %"$gasrem_1478"
  br i1 %"$gascmp_1479", label %"$out_of_gas_1480", label %"$have_gas_1481"

"$out_of_gas_1480":                               ; preds = %"$have_gas_1476"
  call void @_out_of_gas()
  br label %"$have_gas_1481"

"$have_gas_1481":                                 ; preds = %"$out_of_gas_1480", %"$have_gas_1476"
  %"$consume_1482" = sub i64 %"$gasrem_1478", 1
  store i64 %"$consume_1482", i64* @_gasrem, align 8
  %"$res__61" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__61", metadata !270, metadata !DIExpression()), !dbg !271
  %"$gasrem_1484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1485" = icmp ugt i64 8, %"$gasrem_1484"
  br i1 %"$gascmp_1485", label %"$out_of_gas_1486", label %"$have_gas_1487"

"$out_of_gas_1486":                               ; preds = %"$have_gas_1481"
  call void @_out_of_gas()
  br label %"$have_gas_1487"

"$have_gas_1487":                                 ; preds = %"$out_of_gas_1486", %"$have_gas_1481"
  %"$consume_1488" = sub i64 %"$gasrem_1484", 8
  store i64 %"$consume_1488", i64* @_gasrem, align 8
  %"$execptr_load_1489" = load i8*, i8** @_execptr, align 8
  %"$$p_59_1490" = load %Uint128, %Uint128* %"$p_59", align 8
  %"$$ans_60_1491" = load %Uint128, %Uint128* %"$ans_60", align 8
  %"$eq_call_1492" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1489", %Uint128 %"$$p_59_1490", %Uint128 %"$$ans_60_1491"), !dbg !272
  store %TName_Bool* %"$eq_call_1492", %TName_Bool** %"$res__61", align 8, !dbg !272
  %"$gasrem_1494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1495" = icmp ugt i64 1, %"$gasrem_1494"
  br i1 %"$gascmp_1495", label %"$out_of_gas_1496", label %"$have_gas_1497"

"$out_of_gas_1496":                               ; preds = %"$have_gas_1487"
  call void @_out_of_gas()
  br label %"$have_gas_1497"

"$have_gas_1497":                                 ; preds = %"$out_of_gas_1496", %"$have_gas_1487"
  %"$consume_1498" = sub i64 %"$gasrem_1494", 1
  store i64 %"$consume_1498", i64* @_gasrem, align 8
  %"$BoolUtils.andb_167" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1499" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1500" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1499", 0
  %"$BoolUtils.andb_envptr_1501" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1499", 1
  %"$$res_58_1502" = load %TName_Bool*, %TName_Bool** %"$res_58", align 8
  %"$BoolUtils.andb_call_1503" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1500"(i8* %"$BoolUtils.andb_envptr_1501", %TName_Bool* %"$$res_58_1502"), !dbg !273
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1503", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8, !dbg !273
  %"$BoolUtils.andb_168" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_168", metadata !274, metadata !DIExpression()), !dbg !273
  %"$$BoolUtils.andb_167_1504" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_167", align 8
  %"$$BoolUtils.andb_167_fptr_1505" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1504", 0
  %"$$BoolUtils.andb_167_envptr_1506" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_167_1504", 1
  %"$$res__61_1507" = load %TName_Bool*, %TName_Bool** %"$res__61", align 8
  %"$$BoolUtils.andb_167_call_1508" = call %TName_Bool* %"$$BoolUtils.andb_167_fptr_1505"(i8* %"$$BoolUtils.andb_167_envptr_1506", %TName_Bool* %"$$res__61_1507"), !dbg !273
  store %TName_Bool* %"$$BoolUtils.andb_167_call_1508", %TName_Bool** %"$BoolUtils.andb_168", align 8, !dbg !273
  %"$$BoolUtils.andb_168_1509" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_168", align 8
  store %TName_Bool* %"$$BoolUtils.andb_168_1509", %TName_Bool** %"$res_62", align 8, !dbg !273
  %"$gasrem_1510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1511" = icmp ugt i64 1, %"$gasrem_1510"
  br i1 %"$gascmp_1511", label %"$out_of_gas_1512", label %"$have_gas_1513"

"$out_of_gas_1512":                               ; preds = %"$have_gas_1497"
  call void @_out_of_gas()
  br label %"$have_gas_1513"

"$have_gas_1513":                                 ; preds = %"$out_of_gas_1512", %"$have_gas_1497"
  %"$consume_1514" = sub i64 %"$gasrem_1510", 1
  store i64 %"$consume_1514", i64* @_gasrem, align 8
  %"$p_63" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$p_63", metadata !275, metadata !DIExpression()), !dbg !276
  %"$p2_1515" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1516" = extractvalue %Uint32 %"$p2_1515", 0
  %"$valueof_1517" = zext i32 %"$valueof_1516" to i64
  %"$gaslogof_1518" = uitofp i64 %"$valueof_1517" to double
  %"$gaslogof_1519" = fadd double %"$gaslogof_1518", 1.000000e+00
  %"$gaslogof_1520" = call double @llvm.log.f64(double %"$gaslogof_1519")
  %"$gaslogof_1521" = fptoui double %"$gaslogof_1520" to i64
  %"$gaslogof_1522" = add i64 %"$gaslogof_1521", 1
  %"$gasmul_1523" = mul i64 20, %"$gaslogof_1522"
  %"$gasmul_1524" = mul i64 %"$gasmul_1523", 2
  %"$gasrem_1525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1526" = icmp ugt i64 %"$gasmul_1524", %"$gasrem_1525"
  br i1 %"$gascmp_1526", label %"$out_of_gas_1527", label %"$have_gas_1528"

"$out_of_gas_1527":                               ; preds = %"$have_gas_1513"
  call void @_out_of_gas()
  br label %"$have_gas_1528"

"$have_gas_1528":                                 ; preds = %"$out_of_gas_1527", %"$have_gas_1513"
  %"$consume_1529" = sub i64 %"$gasrem_1525", %"$gasmul_1524"
  store i64 %"$consume_1529", i64* @_gasrem, align 8
  %"$t5_1530" = load %Uint128, %Uint128* %t5, align 8
  %"$p2_1531" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1532" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1530", %Uint32 %"$p2_1531"), !dbg !277
  store %Uint128 %"$pow_call_1532", %Uint128* %"$p_63", align 8, !dbg !277
  %"$gasrem_1533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1534" = icmp ugt i64 1, %"$gasrem_1533"
  br i1 %"$gascmp_1534", label %"$out_of_gas_1535", label %"$have_gas_1536"

"$out_of_gas_1535":                               ; preds = %"$have_gas_1528"
  call void @_out_of_gas()
  br label %"$have_gas_1536"

"$have_gas_1536":                                 ; preds = %"$out_of_gas_1535", %"$have_gas_1528"
  %"$consume_1537" = sub i64 %"$gasrem_1533", 1
  store i64 %"$consume_1537", i64* @_gasrem, align 8
  %"$res_66" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_66", metadata !278, metadata !DIExpression()), !dbg !279
  %"$gasrem_1538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1539" = icmp ugt i64 1, %"$gasrem_1538"
  br i1 %"$gascmp_1539", label %"$out_of_gas_1540", label %"$have_gas_1541"

"$out_of_gas_1540":                               ; preds = %"$have_gas_1536"
  call void @_out_of_gas()
  br label %"$have_gas_1541"

"$have_gas_1541":                                 ; preds = %"$out_of_gas_1540", %"$have_gas_1536"
  %"$consume_1542" = sub i64 %"$gasrem_1538", 1
  store i64 %"$consume_1542", i64* @_gasrem, align 8
  %"$ans_64" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$ans_64", metadata !280, metadata !DIExpression()), !dbg !281
  %"$gasrem_1543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1544" = icmp ugt i64 1, %"$gasrem_1543"
  br i1 %"$gascmp_1544", label %"$out_of_gas_1545", label %"$have_gas_1546"

"$out_of_gas_1545":                               ; preds = %"$have_gas_1541"
  call void @_out_of_gas()
  br label %"$have_gas_1546"

"$have_gas_1546":                                 ; preds = %"$out_of_gas_1545", %"$have_gas_1541"
  %"$consume_1547" = sub i64 %"$gasrem_1543", 1
  store i64 %"$consume_1547", i64* @_gasrem, align 8
  store %Uint128 { i128 1000 }, %Uint128* %"$ans_64", align 8, !dbg !282
  %"$gasrem_1548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1549" = icmp ugt i64 1, %"$gasrem_1548"
  br i1 %"$gascmp_1549", label %"$out_of_gas_1550", label %"$have_gas_1551"

"$out_of_gas_1550":                               ; preds = %"$have_gas_1546"
  call void @_out_of_gas()
  br label %"$have_gas_1551"

"$have_gas_1551":                                 ; preds = %"$out_of_gas_1550", %"$have_gas_1546"
  %"$consume_1552" = sub i64 %"$gasrem_1548", 1
  store i64 %"$consume_1552", i64* @_gasrem, align 8
  %"$res__65" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__65", metadata !283, metadata !DIExpression()), !dbg !284
  %"$gasrem_1554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1555" = icmp ugt i64 8, %"$gasrem_1554"
  br i1 %"$gascmp_1555", label %"$out_of_gas_1556", label %"$have_gas_1557"

"$out_of_gas_1556":                               ; preds = %"$have_gas_1551"
  call void @_out_of_gas()
  br label %"$have_gas_1557"

"$have_gas_1557":                                 ; preds = %"$out_of_gas_1556", %"$have_gas_1551"
  %"$consume_1558" = sub i64 %"$gasrem_1554", 8
  store i64 %"$consume_1558", i64* @_gasrem, align 8
  %"$execptr_load_1559" = load i8*, i8** @_execptr, align 8
  %"$$p_63_1560" = load %Uint128, %Uint128* %"$p_63", align 8
  %"$$ans_64_1561" = load %Uint128, %Uint128* %"$ans_64", align 8
  %"$eq_call_1562" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1559", %Uint128 %"$$p_63_1560", %Uint128 %"$$ans_64_1561"), !dbg !285
  store %TName_Bool* %"$eq_call_1562", %TName_Bool** %"$res__65", align 8, !dbg !285
  %"$gasrem_1564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1565" = icmp ugt i64 1, %"$gasrem_1564"
  br i1 %"$gascmp_1565", label %"$out_of_gas_1566", label %"$have_gas_1567"

"$out_of_gas_1566":                               ; preds = %"$have_gas_1557"
  call void @_out_of_gas()
  br label %"$have_gas_1567"

"$have_gas_1567":                                 ; preds = %"$out_of_gas_1566", %"$have_gas_1557"
  %"$consume_1568" = sub i64 %"$gasrem_1564", 1
  store i64 %"$consume_1568", i64* @_gasrem, align 8
  %"$BoolUtils.andb_169" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1569" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1570" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1569", 0
  %"$BoolUtils.andb_envptr_1571" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1569", 1
  %"$$res_62_1572" = load %TName_Bool*, %TName_Bool** %"$res_62", align 8
  %"$BoolUtils.andb_call_1573" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1570"(i8* %"$BoolUtils.andb_envptr_1571", %TName_Bool* %"$$res_62_1572"), !dbg !286
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1573", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8, !dbg !286
  %"$BoolUtils.andb_170" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_170", metadata !287, metadata !DIExpression()), !dbg !286
  %"$$BoolUtils.andb_169_1574" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_169", align 8
  %"$$BoolUtils.andb_169_fptr_1575" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1574", 0
  %"$$BoolUtils.andb_169_envptr_1576" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_169_1574", 1
  %"$$res__65_1577" = load %TName_Bool*, %TName_Bool** %"$res__65", align 8
  %"$$BoolUtils.andb_169_call_1578" = call %TName_Bool* %"$$BoolUtils.andb_169_fptr_1575"(i8* %"$$BoolUtils.andb_169_envptr_1576", %TName_Bool* %"$$res__65_1577"), !dbg !286
  store %TName_Bool* %"$$BoolUtils.andb_169_call_1578", %TName_Bool** %"$BoolUtils.andb_170", align 8, !dbg !286
  %"$$BoolUtils.andb_170_1579" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_170", align 8
  store %TName_Bool* %"$$BoolUtils.andb_170_1579", %TName_Bool** %"$res_66", align 8, !dbg !286
  %"$gasrem_1580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1581" = icmp ugt i64 1, %"$gasrem_1580"
  br i1 %"$gascmp_1581", label %"$out_of_gas_1582", label %"$have_gas_1583"

"$out_of_gas_1582":                               ; preds = %"$have_gas_1567"
  call void @_out_of_gas()
  br label %"$have_gas_1583"

"$have_gas_1583":                                 ; preds = %"$out_of_gas_1582", %"$have_gas_1567"
  %"$consume_1584" = sub i64 %"$gasrem_1580", 1
  store i64 %"$consume_1584", i64* @_gasrem, align 8
  %"$p_67" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$p_67", metadata !288, metadata !DIExpression()), !dbg !289
  %"$p3_1585" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1586" = extractvalue %Uint32 %"$p3_1585", 0
  %"$valueof_1587" = zext i32 %"$valueof_1586" to i64
  %"$gaslogof_1588" = uitofp i64 %"$valueof_1587" to double
  %"$gaslogof_1589" = fadd double %"$gaslogof_1588", 1.000000e+00
  %"$gaslogof_1590" = call double @llvm.log.f64(double %"$gaslogof_1589")
  %"$gaslogof_1591" = fptoui double %"$gaslogof_1590" to i64
  %"$gaslogof_1592" = add i64 %"$gaslogof_1591", 1
  %"$gasmul_1593" = mul i64 20, %"$gaslogof_1592"
  %"$gasmul_1594" = mul i64 %"$gasmul_1593", 2
  %"$gasrem_1595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1596" = icmp ugt i64 %"$gasmul_1594", %"$gasrem_1595"
  br i1 %"$gascmp_1596", label %"$out_of_gas_1597", label %"$have_gas_1598"

"$out_of_gas_1597":                               ; preds = %"$have_gas_1583"
  call void @_out_of_gas()
  br label %"$have_gas_1598"

"$have_gas_1598":                                 ; preds = %"$out_of_gas_1597", %"$have_gas_1583"
  %"$consume_1599" = sub i64 %"$gasrem_1595", %"$gasmul_1594"
  store i64 %"$consume_1599", i64* @_gasrem, align 8
  %"$t5_1600" = load %Uint128, %Uint128* %t5, align 8
  %"$p3_1601" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1602" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1600", %Uint32 %"$p3_1601"), !dbg !290
  store %Uint128 %"$pow_call_1602", %Uint128* %"$p_67", align 8, !dbg !290
  %"$gasrem_1603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1604" = icmp ugt i64 1, %"$gasrem_1603"
  br i1 %"$gascmp_1604", label %"$out_of_gas_1605", label %"$have_gas_1606"

"$out_of_gas_1605":                               ; preds = %"$have_gas_1598"
  call void @_out_of_gas()
  br label %"$have_gas_1606"

"$have_gas_1606":                                 ; preds = %"$out_of_gas_1605", %"$have_gas_1598"
  %"$consume_1607" = sub i64 %"$gasrem_1603", 1
  store i64 %"$consume_1607", i64* @_gasrem, align 8
  %"$res_70" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_70", metadata !291, metadata !DIExpression()), !dbg !292
  %"$gasrem_1608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1609" = icmp ugt i64 1, %"$gasrem_1608"
  br i1 %"$gascmp_1609", label %"$out_of_gas_1610", label %"$have_gas_1611"

"$out_of_gas_1610":                               ; preds = %"$have_gas_1606"
  call void @_out_of_gas()
  br label %"$have_gas_1611"

"$have_gas_1611":                                 ; preds = %"$out_of_gas_1610", %"$have_gas_1606"
  %"$consume_1612" = sub i64 %"$gasrem_1608", 1
  store i64 %"$consume_1612", i64* @_gasrem, align 8
  %"$ans_68" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$ans_68", metadata !293, metadata !DIExpression()), !dbg !294
  %"$gasrem_1613" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1614" = icmp ugt i64 1, %"$gasrem_1613"
  br i1 %"$gascmp_1614", label %"$out_of_gas_1615", label %"$have_gas_1616"

"$out_of_gas_1615":                               ; preds = %"$have_gas_1611"
  call void @_out_of_gas()
  br label %"$have_gas_1616"

"$have_gas_1616":                                 ; preds = %"$out_of_gas_1615", %"$have_gas_1611"
  %"$consume_1617" = sub i64 %"$gasrem_1613", 1
  store i64 %"$consume_1617", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000 }, %Uint128* %"$ans_68", align 8, !dbg !295
  %"$gasrem_1618" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1619" = icmp ugt i64 1, %"$gasrem_1618"
  br i1 %"$gascmp_1619", label %"$out_of_gas_1620", label %"$have_gas_1621"

"$out_of_gas_1620":                               ; preds = %"$have_gas_1616"
  call void @_out_of_gas()
  br label %"$have_gas_1621"

"$have_gas_1621":                                 ; preds = %"$out_of_gas_1620", %"$have_gas_1616"
  %"$consume_1622" = sub i64 %"$gasrem_1618", 1
  store i64 %"$consume_1622", i64* @_gasrem, align 8
  %"$res__69" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__69", metadata !296, metadata !DIExpression()), !dbg !297
  %"$gasrem_1624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1625" = icmp ugt i64 8, %"$gasrem_1624"
  br i1 %"$gascmp_1625", label %"$out_of_gas_1626", label %"$have_gas_1627"

"$out_of_gas_1626":                               ; preds = %"$have_gas_1621"
  call void @_out_of_gas()
  br label %"$have_gas_1627"

"$have_gas_1627":                                 ; preds = %"$out_of_gas_1626", %"$have_gas_1621"
  %"$consume_1628" = sub i64 %"$gasrem_1624", 8
  store i64 %"$consume_1628", i64* @_gasrem, align 8
  %"$execptr_load_1629" = load i8*, i8** @_execptr, align 8
  %"$$p_67_1630" = load %Uint128, %Uint128* %"$p_67", align 8
  %"$$ans_68_1631" = load %Uint128, %Uint128* %"$ans_68", align 8
  %"$eq_call_1632" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1629", %Uint128 %"$$p_67_1630", %Uint128 %"$$ans_68_1631"), !dbg !298
  store %TName_Bool* %"$eq_call_1632", %TName_Bool** %"$res__69", align 8, !dbg !298
  %"$gasrem_1634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1635" = icmp ugt i64 1, %"$gasrem_1634"
  br i1 %"$gascmp_1635", label %"$out_of_gas_1636", label %"$have_gas_1637"

"$out_of_gas_1636":                               ; preds = %"$have_gas_1627"
  call void @_out_of_gas()
  br label %"$have_gas_1637"

"$have_gas_1637":                                 ; preds = %"$out_of_gas_1636", %"$have_gas_1627"
  %"$consume_1638" = sub i64 %"$gasrem_1634", 1
  store i64 %"$consume_1638", i64* @_gasrem, align 8
  %"$BoolUtils.andb_171" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1639" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1640" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1639", 0
  %"$BoolUtils.andb_envptr_1641" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1639", 1
  %"$$res_66_1642" = load %TName_Bool*, %TName_Bool** %"$res_66", align 8
  %"$BoolUtils.andb_call_1643" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1640"(i8* %"$BoolUtils.andb_envptr_1641", %TName_Bool* %"$$res_66_1642"), !dbg !299
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1643", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8, !dbg !299
  %"$BoolUtils.andb_172" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_172", metadata !300, metadata !DIExpression()), !dbg !299
  %"$$BoolUtils.andb_171_1644" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_171", align 8
  %"$$BoolUtils.andb_171_fptr_1645" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1644", 0
  %"$$BoolUtils.andb_171_envptr_1646" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_171_1644", 1
  %"$$res__69_1647" = load %TName_Bool*, %TName_Bool** %"$res__69", align 8
  %"$$BoolUtils.andb_171_call_1648" = call %TName_Bool* %"$$BoolUtils.andb_171_fptr_1645"(i8* %"$$BoolUtils.andb_171_envptr_1646", %TName_Bool* %"$$res__69_1647"), !dbg !299
  store %TName_Bool* %"$$BoolUtils.andb_171_call_1648", %TName_Bool** %"$BoolUtils.andb_172", align 8, !dbg !299
  %"$$BoolUtils.andb_172_1649" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_172", align 8
  store %TName_Bool* %"$$BoolUtils.andb_172_1649", %TName_Bool** %"$res_70", align 8, !dbg !299
  %"$gasrem_1650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1651" = icmp ugt i64 1, %"$gasrem_1650"
  br i1 %"$gascmp_1651", label %"$out_of_gas_1652", label %"$have_gas_1653"

"$out_of_gas_1652":                               ; preds = %"$have_gas_1637"
  call void @_out_of_gas()
  br label %"$have_gas_1653"

"$have_gas_1653":                                 ; preds = %"$out_of_gas_1652", %"$have_gas_1637"
  %"$consume_1654" = sub i64 %"$gasrem_1650", 1
  store i64 %"$consume_1654", i64* @_gasrem, align 8
  %"$p_71" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$p_71", metadata !301, metadata !DIExpression()), !dbg !302
  %"$p4_1655" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_1656" = extractvalue %Uint32 %"$p4_1655", 0
  %"$valueof_1657" = zext i32 %"$valueof_1656" to i64
  %"$gaslogof_1658" = uitofp i64 %"$valueof_1657" to double
  %"$gaslogof_1659" = fadd double %"$gaslogof_1658", 1.000000e+00
  %"$gaslogof_1660" = call double @llvm.log.f64(double %"$gaslogof_1659")
  %"$gaslogof_1661" = fptoui double %"$gaslogof_1660" to i64
  %"$gaslogof_1662" = add i64 %"$gaslogof_1661", 1
  %"$gasmul_1663" = mul i64 20, %"$gaslogof_1662"
  %"$gasmul_1664" = mul i64 %"$gasmul_1663", 2
  %"$gasrem_1665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1666" = icmp ugt i64 %"$gasmul_1664", %"$gasrem_1665"
  br i1 %"$gascmp_1666", label %"$out_of_gas_1667", label %"$have_gas_1668"

"$out_of_gas_1667":                               ; preds = %"$have_gas_1653"
  call void @_out_of_gas()
  br label %"$have_gas_1668"

"$have_gas_1668":                                 ; preds = %"$out_of_gas_1667", %"$have_gas_1653"
  %"$consume_1669" = sub i64 %"$gasrem_1665", %"$gasmul_1664"
  store i64 %"$consume_1669", i64* @_gasrem, align 8
  %"$t5_1670" = load %Uint128, %Uint128* %t5, align 8
  %"$p4_1671" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1672" = call %Uint128 @_pow_Uint128(%Uint128 %"$t5_1670", %Uint32 %"$p4_1671"), !dbg !303
  store %Uint128 %"$pow_call_1672", %Uint128* %"$p_71", align 8, !dbg !303
  %"$gasrem_1673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1674" = icmp ugt i64 1, %"$gasrem_1673"
  br i1 %"$gascmp_1674", label %"$out_of_gas_1675", label %"$have_gas_1676"

"$out_of_gas_1675":                               ; preds = %"$have_gas_1668"
  call void @_out_of_gas()
  br label %"$have_gas_1676"

"$have_gas_1676":                                 ; preds = %"$out_of_gas_1675", %"$have_gas_1668"
  %"$consume_1677" = sub i64 %"$gasrem_1673", 1
  store i64 %"$consume_1677", i64* @_gasrem, align 8
  %"$res_74" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_74", metadata !304, metadata !DIExpression()), !dbg !305
  %"$gasrem_1678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1679" = icmp ugt i64 1, %"$gasrem_1678"
  br i1 %"$gascmp_1679", label %"$out_of_gas_1680", label %"$have_gas_1681"

"$out_of_gas_1680":                               ; preds = %"$have_gas_1676"
  call void @_out_of_gas()
  br label %"$have_gas_1681"

"$have_gas_1681":                                 ; preds = %"$out_of_gas_1680", %"$have_gas_1676"
  %"$consume_1682" = sub i64 %"$gasrem_1678", 1
  store i64 %"$consume_1682", i64* @_gasrem, align 8
  %"$ans_72" = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$ans_72", metadata !306, metadata !DIExpression()), !dbg !307
  %"$gasrem_1683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1684" = icmp ugt i64 1, %"$gasrem_1683"
  br i1 %"$gascmp_1684", label %"$out_of_gas_1685", label %"$have_gas_1686"

"$out_of_gas_1685":                               ; preds = %"$have_gas_1681"
  call void @_out_of_gas()
  br label %"$have_gas_1686"

"$have_gas_1686":                                 ; preds = %"$out_of_gas_1685", %"$have_gas_1681"
  %"$consume_1687" = sub i64 %"$gasrem_1683", 1
  store i64 %"$consume_1687", i64* @_gasrem, align 8
  store %Uint128 { i128 1000000000000000000000000000000 }, %Uint128* %"$ans_72", align 8, !dbg !308
  %"$gasrem_1688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1689" = icmp ugt i64 1, %"$gasrem_1688"
  br i1 %"$gascmp_1689", label %"$out_of_gas_1690", label %"$have_gas_1691"

"$out_of_gas_1690":                               ; preds = %"$have_gas_1686"
  call void @_out_of_gas()
  br label %"$have_gas_1691"

"$have_gas_1691":                                 ; preds = %"$out_of_gas_1690", %"$have_gas_1686"
  %"$consume_1692" = sub i64 %"$gasrem_1688", 1
  store i64 %"$consume_1692", i64* @_gasrem, align 8
  %"$res__73" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__73", metadata !309, metadata !DIExpression()), !dbg !310
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
  %"$$p_71_1700" = load %Uint128, %Uint128* %"$p_71", align 8
  %"$$ans_72_1701" = load %Uint128, %Uint128* %"$ans_72", align 8
  %"$eq_call_1702" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_1699", %Uint128 %"$$p_71_1700", %Uint128 %"$$ans_72_1701"), !dbg !311
  store %TName_Bool* %"$eq_call_1702", %TName_Bool** %"$res__73", align 8, !dbg !311
  %"$gasrem_1704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1705" = icmp ugt i64 1, %"$gasrem_1704"
  br i1 %"$gascmp_1705", label %"$out_of_gas_1706", label %"$have_gas_1707"

"$out_of_gas_1706":                               ; preds = %"$have_gas_1697"
  call void @_out_of_gas()
  br label %"$have_gas_1707"

"$have_gas_1707":                                 ; preds = %"$out_of_gas_1706", %"$have_gas_1697"
  %"$consume_1708" = sub i64 %"$gasrem_1704", 1
  store i64 %"$consume_1708", i64* @_gasrem, align 8
  %"$BoolUtils.andb_173" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1709" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1710" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1709", 0
  %"$BoolUtils.andb_envptr_1711" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1709", 1
  %"$$res_70_1712" = load %TName_Bool*, %TName_Bool** %"$res_70", align 8
  %"$BoolUtils.andb_call_1713" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1710"(i8* %"$BoolUtils.andb_envptr_1711", %TName_Bool* %"$$res_70_1712"), !dbg !312
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1713", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8, !dbg !312
  %"$BoolUtils.andb_174" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_174", metadata !313, metadata !DIExpression()), !dbg !312
  %"$$BoolUtils.andb_173_1714" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_173", align 8
  %"$$BoolUtils.andb_173_fptr_1715" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1714", 0
  %"$$BoolUtils.andb_173_envptr_1716" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_173_1714", 1
  %"$$res__73_1717" = load %TName_Bool*, %TName_Bool** %"$res__73", align 8
  %"$$BoolUtils.andb_173_call_1718" = call %TName_Bool* %"$$BoolUtils.andb_173_fptr_1715"(i8* %"$$BoolUtils.andb_173_envptr_1716", %TName_Bool* %"$$res__73_1717"), !dbg !312
  store %TName_Bool* %"$$BoolUtils.andb_173_call_1718", %TName_Bool** %"$BoolUtils.andb_174", align 8, !dbg !312
  %"$$BoolUtils.andb_174_1719" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_174", align 8
  store %TName_Bool* %"$$BoolUtils.andb_174_1719", %TName_Bool** %"$res_74", align 8, !dbg !312
  %"$gasrem_1720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1721" = icmp ugt i64 1, %"$gasrem_1720"
  br i1 %"$gascmp_1721", label %"$out_of_gas_1722", label %"$have_gas_1723"

"$out_of_gas_1722":                               ; preds = %"$have_gas_1707"
  call void @_out_of_gas()
  br label %"$have_gas_1723"

"$have_gas_1723":                                 ; preds = %"$out_of_gas_1722", %"$have_gas_1707"
  %"$consume_1724" = sub i64 %"$gasrem_1720", 1
  store i64 %"$consume_1724", i64* @_gasrem, align 8
  %"$p_75" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$p_75", metadata !314, metadata !DIExpression()), !dbg !315
  %"$p1_1725" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_1726" = extractvalue %Uint32 %"$p1_1725", 0
  %"$valueof_1727" = zext i32 %"$valueof_1726" to i64
  %"$gaslogof_1728" = uitofp i64 %"$valueof_1727" to double
  %"$gaslogof_1729" = fadd double %"$gaslogof_1728", 1.000000e+00
  %"$gaslogof_1730" = call double @llvm.log.f64(double %"$gaslogof_1729")
  %"$gaslogof_1731" = fptoui double %"$gaslogof_1730" to i64
  %"$gaslogof_1732" = add i64 %"$gaslogof_1731", 1
  %"$gasmul_1733" = mul i64 20, %"$gaslogof_1732"
  %"$gasmul_1734" = mul i64 %"$gasmul_1733", 2
  %"$gasrem_1735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1736" = icmp ugt i64 %"$gasmul_1734", %"$gasrem_1735"
  br i1 %"$gascmp_1736", label %"$out_of_gas_1737", label %"$have_gas_1738"

"$out_of_gas_1737":                               ; preds = %"$have_gas_1723"
  call void @_out_of_gas()
  br label %"$have_gas_1738"

"$have_gas_1738":                                 ; preds = %"$out_of_gas_1737", %"$have_gas_1723"
  %"$consume_1739" = sub i64 %"$gasrem_1735", %"$gasmul_1734"
  store i64 %"$consume_1739", i64* @_gasrem, align 8
  %"$t6_1740" = load %Int128, %Int128* %t6, align 8
  %"$p1_1741" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_1742" = call %Int128 @_pow_Int128(%Int128 %"$t6_1740", %Uint32 %"$p1_1741"), !dbg !316
  store %Int128 %"$pow_call_1742", %Int128* %"$p_75", align 8, !dbg !316
  %"$gasrem_1743" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1744" = icmp ugt i64 1, %"$gasrem_1743"
  br i1 %"$gascmp_1744", label %"$out_of_gas_1745", label %"$have_gas_1746"

"$out_of_gas_1745":                               ; preds = %"$have_gas_1738"
  call void @_out_of_gas()
  br label %"$have_gas_1746"

"$have_gas_1746":                                 ; preds = %"$out_of_gas_1745", %"$have_gas_1738"
  %"$consume_1747" = sub i64 %"$gasrem_1743", 1
  store i64 %"$consume_1747", i64* @_gasrem, align 8
  %"$res_78" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_78", metadata !317, metadata !DIExpression()), !dbg !318
  %"$gasrem_1748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1749" = icmp ugt i64 1, %"$gasrem_1748"
  br i1 %"$gascmp_1749", label %"$out_of_gas_1750", label %"$have_gas_1751"

"$out_of_gas_1750":                               ; preds = %"$have_gas_1746"
  call void @_out_of_gas()
  br label %"$have_gas_1751"

"$have_gas_1751":                                 ; preds = %"$out_of_gas_1750", %"$have_gas_1746"
  %"$consume_1752" = sub i64 %"$gasrem_1748", 1
  store i64 %"$consume_1752", i64* @_gasrem, align 8
  %"$ans_76" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$ans_76", metadata !319, metadata !DIExpression()), !dbg !320
  %"$gasrem_1753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1754" = icmp ugt i64 1, %"$gasrem_1753"
  br i1 %"$gascmp_1754", label %"$out_of_gas_1755", label %"$have_gas_1756"

"$out_of_gas_1755":                               ; preds = %"$have_gas_1751"
  call void @_out_of_gas()
  br label %"$have_gas_1756"

"$have_gas_1756":                                 ; preds = %"$out_of_gas_1755", %"$have_gas_1751"
  %"$consume_1757" = sub i64 %"$gasrem_1753", 1
  store i64 %"$consume_1757", i64* @_gasrem, align 8
  store %Int128 { i128 1 }, %Int128* %"$ans_76", align 8, !dbg !321
  %"$gasrem_1758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1759" = icmp ugt i64 1, %"$gasrem_1758"
  br i1 %"$gascmp_1759", label %"$out_of_gas_1760", label %"$have_gas_1761"

"$out_of_gas_1760":                               ; preds = %"$have_gas_1756"
  call void @_out_of_gas()
  br label %"$have_gas_1761"

"$have_gas_1761":                                 ; preds = %"$out_of_gas_1760", %"$have_gas_1756"
  %"$consume_1762" = sub i64 %"$gasrem_1758", 1
  store i64 %"$consume_1762", i64* @_gasrem, align 8
  %"$res__77" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__77", metadata !322, metadata !DIExpression()), !dbg !323
  %"$gasrem_1764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1765" = icmp ugt i64 8, %"$gasrem_1764"
  br i1 %"$gascmp_1765", label %"$out_of_gas_1766", label %"$have_gas_1767"

"$out_of_gas_1766":                               ; preds = %"$have_gas_1761"
  call void @_out_of_gas()
  br label %"$have_gas_1767"

"$have_gas_1767":                                 ; preds = %"$out_of_gas_1766", %"$have_gas_1761"
  %"$consume_1768" = sub i64 %"$gasrem_1764", 8
  store i64 %"$consume_1768", i64* @_gasrem, align 8
  %"$execptr_load_1769" = load i8*, i8** @_execptr, align 8
  %"$$p_75_1770" = load %Int128, %Int128* %"$p_75", align 8
  %"$$ans_76_1771" = load %Int128, %Int128* %"$ans_76", align 8
  %"$eq_call_1772" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1769", %Int128 %"$$p_75_1770", %Int128 %"$$ans_76_1771"), !dbg !324
  store %TName_Bool* %"$eq_call_1772", %TName_Bool** %"$res__77", align 8, !dbg !324
  %"$gasrem_1774" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1775" = icmp ugt i64 1, %"$gasrem_1774"
  br i1 %"$gascmp_1775", label %"$out_of_gas_1776", label %"$have_gas_1777"

"$out_of_gas_1776":                               ; preds = %"$have_gas_1767"
  call void @_out_of_gas()
  br label %"$have_gas_1777"

"$have_gas_1777":                                 ; preds = %"$out_of_gas_1776", %"$have_gas_1767"
  %"$consume_1778" = sub i64 %"$gasrem_1774", 1
  store i64 %"$consume_1778", i64* @_gasrem, align 8
  %"$BoolUtils.andb_175" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1779" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1780" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1779", 0
  %"$BoolUtils.andb_envptr_1781" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1779", 1
  %"$$res_74_1782" = load %TName_Bool*, %TName_Bool** %"$res_74", align 8
  %"$BoolUtils.andb_call_1783" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1780"(i8* %"$BoolUtils.andb_envptr_1781", %TName_Bool* %"$$res_74_1782"), !dbg !325
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1783", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8, !dbg !325
  %"$BoolUtils.andb_176" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_176", metadata !326, metadata !DIExpression()), !dbg !325
  %"$$BoolUtils.andb_175_1784" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_175", align 8
  %"$$BoolUtils.andb_175_fptr_1785" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1784", 0
  %"$$BoolUtils.andb_175_envptr_1786" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_175_1784", 1
  %"$$res__77_1787" = load %TName_Bool*, %TName_Bool** %"$res__77", align 8
  %"$$BoolUtils.andb_175_call_1788" = call %TName_Bool* %"$$BoolUtils.andb_175_fptr_1785"(i8* %"$$BoolUtils.andb_175_envptr_1786", %TName_Bool* %"$$res__77_1787"), !dbg !325
  store %TName_Bool* %"$$BoolUtils.andb_175_call_1788", %TName_Bool** %"$BoolUtils.andb_176", align 8, !dbg !325
  %"$$BoolUtils.andb_176_1789" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_176", align 8
  store %TName_Bool* %"$$BoolUtils.andb_176_1789", %TName_Bool** %"$res_78", align 8, !dbg !325
  %"$gasrem_1790" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1791" = icmp ugt i64 1, %"$gasrem_1790"
  br i1 %"$gascmp_1791", label %"$out_of_gas_1792", label %"$have_gas_1793"

"$out_of_gas_1792":                               ; preds = %"$have_gas_1777"
  call void @_out_of_gas()
  br label %"$have_gas_1793"

"$have_gas_1793":                                 ; preds = %"$out_of_gas_1792", %"$have_gas_1777"
  %"$consume_1794" = sub i64 %"$gasrem_1790", 1
  store i64 %"$consume_1794", i64* @_gasrem, align 8
  %"$p_79" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$p_79", metadata !327, metadata !DIExpression()), !dbg !328
  %"$p2_1795" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_1796" = extractvalue %Uint32 %"$p2_1795", 0
  %"$valueof_1797" = zext i32 %"$valueof_1796" to i64
  %"$gaslogof_1798" = uitofp i64 %"$valueof_1797" to double
  %"$gaslogof_1799" = fadd double %"$gaslogof_1798", 1.000000e+00
  %"$gaslogof_1800" = call double @llvm.log.f64(double %"$gaslogof_1799")
  %"$gaslogof_1801" = fptoui double %"$gaslogof_1800" to i64
  %"$gaslogof_1802" = add i64 %"$gaslogof_1801", 1
  %"$gasmul_1803" = mul i64 20, %"$gaslogof_1802"
  %"$gasmul_1804" = mul i64 %"$gasmul_1803", 2
  %"$gasrem_1805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1806" = icmp ugt i64 %"$gasmul_1804", %"$gasrem_1805"
  br i1 %"$gascmp_1806", label %"$out_of_gas_1807", label %"$have_gas_1808"

"$out_of_gas_1807":                               ; preds = %"$have_gas_1793"
  call void @_out_of_gas()
  br label %"$have_gas_1808"

"$have_gas_1808":                                 ; preds = %"$out_of_gas_1807", %"$have_gas_1793"
  %"$consume_1809" = sub i64 %"$gasrem_1805", %"$gasmul_1804"
  store i64 %"$consume_1809", i64* @_gasrem, align 8
  %"$t6_1810" = load %Int128, %Int128* %t6, align 8
  %"$p2_1811" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_1812" = call %Int128 @_pow_Int128(%Int128 %"$t6_1810", %Uint32 %"$p2_1811"), !dbg !329
  store %Int128 %"$pow_call_1812", %Int128* %"$p_79", align 8, !dbg !329
  %"$gasrem_1813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1814" = icmp ugt i64 1, %"$gasrem_1813"
  br i1 %"$gascmp_1814", label %"$out_of_gas_1815", label %"$have_gas_1816"

"$out_of_gas_1815":                               ; preds = %"$have_gas_1808"
  call void @_out_of_gas()
  br label %"$have_gas_1816"

"$have_gas_1816":                                 ; preds = %"$out_of_gas_1815", %"$have_gas_1808"
  %"$consume_1817" = sub i64 %"$gasrem_1813", 1
  store i64 %"$consume_1817", i64* @_gasrem, align 8
  %"$res_82" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_82", metadata !330, metadata !DIExpression()), !dbg !331
  %"$gasrem_1818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1819" = icmp ugt i64 1, %"$gasrem_1818"
  br i1 %"$gascmp_1819", label %"$out_of_gas_1820", label %"$have_gas_1821"

"$out_of_gas_1820":                               ; preds = %"$have_gas_1816"
  call void @_out_of_gas()
  br label %"$have_gas_1821"

"$have_gas_1821":                                 ; preds = %"$out_of_gas_1820", %"$have_gas_1816"
  %"$consume_1822" = sub i64 %"$gasrem_1818", 1
  store i64 %"$consume_1822", i64* @_gasrem, align 8
  %"$ans_80" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$ans_80", metadata !332, metadata !DIExpression()), !dbg !333
  %"$gasrem_1823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1824" = icmp ugt i64 1, %"$gasrem_1823"
  br i1 %"$gascmp_1824", label %"$out_of_gas_1825", label %"$have_gas_1826"

"$out_of_gas_1825":                               ; preds = %"$have_gas_1821"
  call void @_out_of_gas()
  br label %"$have_gas_1826"

"$have_gas_1826":                                 ; preds = %"$out_of_gas_1825", %"$have_gas_1821"
  %"$consume_1827" = sub i64 %"$gasrem_1823", 1
  store i64 %"$consume_1827", i64* @_gasrem, align 8
  store %Int128 { i128 501 }, %Int128* %"$ans_80", align 8, !dbg !334
  %"$gasrem_1828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1829" = icmp ugt i64 1, %"$gasrem_1828"
  br i1 %"$gascmp_1829", label %"$out_of_gas_1830", label %"$have_gas_1831"

"$out_of_gas_1830":                               ; preds = %"$have_gas_1826"
  call void @_out_of_gas()
  br label %"$have_gas_1831"

"$have_gas_1831":                                 ; preds = %"$out_of_gas_1830", %"$have_gas_1826"
  %"$consume_1832" = sub i64 %"$gasrem_1828", 1
  store i64 %"$consume_1832", i64* @_gasrem, align 8
  %"$res__81" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__81", metadata !335, metadata !DIExpression()), !dbg !336
  %"$gasrem_1834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1835" = icmp ugt i64 8, %"$gasrem_1834"
  br i1 %"$gascmp_1835", label %"$out_of_gas_1836", label %"$have_gas_1837"

"$out_of_gas_1836":                               ; preds = %"$have_gas_1831"
  call void @_out_of_gas()
  br label %"$have_gas_1837"

"$have_gas_1837":                                 ; preds = %"$out_of_gas_1836", %"$have_gas_1831"
  %"$consume_1838" = sub i64 %"$gasrem_1834", 8
  store i64 %"$consume_1838", i64* @_gasrem, align 8
  %"$execptr_load_1839" = load i8*, i8** @_execptr, align 8
  %"$$p_79_1840" = load %Int128, %Int128* %"$p_79", align 8
  %"$$ans_80_1841" = load %Int128, %Int128* %"$ans_80", align 8
  %"$eq_call_1842" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1839", %Int128 %"$$p_79_1840", %Int128 %"$$ans_80_1841"), !dbg !337
  store %TName_Bool* %"$eq_call_1842", %TName_Bool** %"$res__81", align 8, !dbg !337
  %"$gasrem_1844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1845" = icmp ugt i64 1, %"$gasrem_1844"
  br i1 %"$gascmp_1845", label %"$out_of_gas_1846", label %"$have_gas_1847"

"$out_of_gas_1846":                               ; preds = %"$have_gas_1837"
  call void @_out_of_gas()
  br label %"$have_gas_1847"

"$have_gas_1847":                                 ; preds = %"$out_of_gas_1846", %"$have_gas_1837"
  %"$consume_1848" = sub i64 %"$gasrem_1844", 1
  store i64 %"$consume_1848", i64* @_gasrem, align 8
  %"$BoolUtils.andb_177" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1849" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1850" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1849", 0
  %"$BoolUtils.andb_envptr_1851" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1849", 1
  %"$$res_78_1852" = load %TName_Bool*, %TName_Bool** %"$res_78", align 8
  %"$BoolUtils.andb_call_1853" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1850"(i8* %"$BoolUtils.andb_envptr_1851", %TName_Bool* %"$$res_78_1852"), !dbg !338
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1853", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8, !dbg !338
  %"$BoolUtils.andb_178" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_178", metadata !339, metadata !DIExpression()), !dbg !338
  %"$$BoolUtils.andb_177_1854" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_177", align 8
  %"$$BoolUtils.andb_177_fptr_1855" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1854", 0
  %"$$BoolUtils.andb_177_envptr_1856" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_177_1854", 1
  %"$$res__81_1857" = load %TName_Bool*, %TName_Bool** %"$res__81", align 8
  %"$$BoolUtils.andb_177_call_1858" = call %TName_Bool* %"$$BoolUtils.andb_177_fptr_1855"(i8* %"$$BoolUtils.andb_177_envptr_1856", %TName_Bool* %"$$res__81_1857"), !dbg !338
  store %TName_Bool* %"$$BoolUtils.andb_177_call_1858", %TName_Bool** %"$BoolUtils.andb_178", align 8, !dbg !338
  %"$$BoolUtils.andb_178_1859" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_178", align 8
  store %TName_Bool* %"$$BoolUtils.andb_178_1859", %TName_Bool** %"$res_82", align 8, !dbg !338
  %"$gasrem_1860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1861" = icmp ugt i64 1, %"$gasrem_1860"
  br i1 %"$gascmp_1861", label %"$out_of_gas_1862", label %"$have_gas_1863"

"$out_of_gas_1862":                               ; preds = %"$have_gas_1847"
  call void @_out_of_gas()
  br label %"$have_gas_1863"

"$have_gas_1863":                                 ; preds = %"$out_of_gas_1862", %"$have_gas_1847"
  %"$consume_1864" = sub i64 %"$gasrem_1860", 1
  store i64 %"$consume_1864", i64* @_gasrem, align 8
  %"$p_83" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$p_83", metadata !340, metadata !DIExpression()), !dbg !341
  %"$p3_1865" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_1866" = extractvalue %Uint32 %"$p3_1865", 0
  %"$valueof_1867" = zext i32 %"$valueof_1866" to i64
  %"$gaslogof_1868" = uitofp i64 %"$valueof_1867" to double
  %"$gaslogof_1869" = fadd double %"$gaslogof_1868", 1.000000e+00
  %"$gaslogof_1870" = call double @llvm.log.f64(double %"$gaslogof_1869")
  %"$gaslogof_1871" = fptoui double %"$gaslogof_1870" to i64
  %"$gaslogof_1872" = add i64 %"$gaslogof_1871", 1
  %"$gasmul_1873" = mul i64 20, %"$gaslogof_1872"
  %"$gasmul_1874" = mul i64 %"$gasmul_1873", 2
  %"$gasrem_1875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1876" = icmp ugt i64 %"$gasmul_1874", %"$gasrem_1875"
  br i1 %"$gascmp_1876", label %"$out_of_gas_1877", label %"$have_gas_1878"

"$out_of_gas_1877":                               ; preds = %"$have_gas_1863"
  call void @_out_of_gas()
  br label %"$have_gas_1878"

"$have_gas_1878":                                 ; preds = %"$out_of_gas_1877", %"$have_gas_1863"
  %"$consume_1879" = sub i64 %"$gasrem_1875", %"$gasmul_1874"
  store i64 %"$consume_1879", i64* @_gasrem, align 8
  %"$t6_1880" = load %Int128, %Int128* %t6, align 8
  %"$p3_1881" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_1882" = call %Int128 @_pow_Int128(%Int128 %"$t6_1880", %Uint32 %"$p3_1881"), !dbg !342
  store %Int128 %"$pow_call_1882", %Int128* %"$p_83", align 8, !dbg !342
  %"$gasrem_1883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1884" = icmp ugt i64 1, %"$gasrem_1883"
  br i1 %"$gascmp_1884", label %"$out_of_gas_1885", label %"$have_gas_1886"

"$out_of_gas_1885":                               ; preds = %"$have_gas_1878"
  call void @_out_of_gas()
  br label %"$have_gas_1886"

"$have_gas_1886":                                 ; preds = %"$out_of_gas_1885", %"$have_gas_1878"
  %"$consume_1887" = sub i64 %"$gasrem_1883", 1
  store i64 %"$consume_1887", i64* @_gasrem, align 8
  %"$res_86" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_86", metadata !343, metadata !DIExpression()), !dbg !344
  %"$gasrem_1888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1889" = icmp ugt i64 1, %"$gasrem_1888"
  br i1 %"$gascmp_1889", label %"$out_of_gas_1890", label %"$have_gas_1891"

"$out_of_gas_1890":                               ; preds = %"$have_gas_1886"
  call void @_out_of_gas()
  br label %"$have_gas_1891"

"$have_gas_1891":                                 ; preds = %"$out_of_gas_1890", %"$have_gas_1886"
  %"$consume_1892" = sub i64 %"$gasrem_1888", 1
  store i64 %"$consume_1892", i64* @_gasrem, align 8
  %"$ans_84" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$ans_84", metadata !345, metadata !DIExpression()), !dbg !346
  %"$gasrem_1893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1894" = icmp ugt i64 1, %"$gasrem_1893"
  br i1 %"$gascmp_1894", label %"$out_of_gas_1895", label %"$have_gas_1896"

"$out_of_gas_1895":                               ; preds = %"$have_gas_1891"
  call void @_out_of_gas()
  br label %"$have_gas_1896"

"$have_gas_1896":                                 ; preds = %"$out_of_gas_1895", %"$have_gas_1891"
  %"$consume_1897" = sub i64 %"$gasrem_1893", 1
  store i64 %"$consume_1897", i64* @_gasrem, align 8
  store %Int128 { i128 63001502001 }, %Int128* %"$ans_84", align 8, !dbg !347
  %"$gasrem_1898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1899" = icmp ugt i64 1, %"$gasrem_1898"
  br i1 %"$gascmp_1899", label %"$out_of_gas_1900", label %"$have_gas_1901"

"$out_of_gas_1900":                               ; preds = %"$have_gas_1896"
  call void @_out_of_gas()
  br label %"$have_gas_1901"

"$have_gas_1901":                                 ; preds = %"$out_of_gas_1900", %"$have_gas_1896"
  %"$consume_1902" = sub i64 %"$gasrem_1898", 1
  store i64 %"$consume_1902", i64* @_gasrem, align 8
  %"$res__85" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__85", metadata !348, metadata !DIExpression()), !dbg !349
  %"$gasrem_1904" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1905" = icmp ugt i64 8, %"$gasrem_1904"
  br i1 %"$gascmp_1905", label %"$out_of_gas_1906", label %"$have_gas_1907"

"$out_of_gas_1906":                               ; preds = %"$have_gas_1901"
  call void @_out_of_gas()
  br label %"$have_gas_1907"

"$have_gas_1907":                                 ; preds = %"$out_of_gas_1906", %"$have_gas_1901"
  %"$consume_1908" = sub i64 %"$gasrem_1904", 8
  store i64 %"$consume_1908", i64* @_gasrem, align 8
  %"$execptr_load_1909" = load i8*, i8** @_execptr, align 8
  %"$$p_83_1910" = load %Int128, %Int128* %"$p_83", align 8
  %"$$ans_84_1911" = load %Int128, %Int128* %"$ans_84", align 8
  %"$eq_call_1912" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1909", %Int128 %"$$p_83_1910", %Int128 %"$$ans_84_1911"), !dbg !350
  store %TName_Bool* %"$eq_call_1912", %TName_Bool** %"$res__85", align 8, !dbg !350
  %"$gasrem_1914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1915" = icmp ugt i64 1, %"$gasrem_1914"
  br i1 %"$gascmp_1915", label %"$out_of_gas_1916", label %"$have_gas_1917"

"$out_of_gas_1916":                               ; preds = %"$have_gas_1907"
  call void @_out_of_gas()
  br label %"$have_gas_1917"

"$have_gas_1917":                                 ; preds = %"$out_of_gas_1916", %"$have_gas_1907"
  %"$consume_1918" = sub i64 %"$gasrem_1914", 1
  store i64 %"$consume_1918", i64* @_gasrem, align 8
  %"$BoolUtils.andb_179" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1919" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1920" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1919", 0
  %"$BoolUtils.andb_envptr_1921" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1919", 1
  %"$$res_82_1922" = load %TName_Bool*, %TName_Bool** %"$res_82", align 8
  %"$BoolUtils.andb_call_1923" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1920"(i8* %"$BoolUtils.andb_envptr_1921", %TName_Bool* %"$$res_82_1922"), !dbg !351
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1923", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8, !dbg !351
  %"$BoolUtils.andb_180" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_180", metadata !352, metadata !DIExpression()), !dbg !351
  %"$$BoolUtils.andb_179_1924" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_179", align 8
  %"$$BoolUtils.andb_179_fptr_1925" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1924", 0
  %"$$BoolUtils.andb_179_envptr_1926" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_179_1924", 1
  %"$$res__85_1927" = load %TName_Bool*, %TName_Bool** %"$res__85", align 8
  %"$$BoolUtils.andb_179_call_1928" = call %TName_Bool* %"$$BoolUtils.andb_179_fptr_1925"(i8* %"$$BoolUtils.andb_179_envptr_1926", %TName_Bool* %"$$res__85_1927"), !dbg !351
  store %TName_Bool* %"$$BoolUtils.andb_179_call_1928", %TName_Bool** %"$BoolUtils.andb_180", align 8, !dbg !351
  %"$$BoolUtils.andb_180_1929" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_180", align 8
  store %TName_Bool* %"$$BoolUtils.andb_180_1929", %TName_Bool** %"$res_86", align 8, !dbg !351
  %"$gasrem_1930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1931" = icmp ugt i64 1, %"$gasrem_1930"
  br i1 %"$gascmp_1931", label %"$out_of_gas_1932", label %"$have_gas_1933"

"$out_of_gas_1932":                               ; preds = %"$have_gas_1917"
  call void @_out_of_gas()
  br label %"$have_gas_1933"

"$have_gas_1933":                                 ; preds = %"$out_of_gas_1932", %"$have_gas_1917"
  %"$consume_1934" = sub i64 %"$gasrem_1930", 1
  store i64 %"$consume_1934", i64* @_gasrem, align 8
  %"$p_87" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$p_87", metadata !353, metadata !DIExpression()), !dbg !354
  %"$p4_1935" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_1936" = extractvalue %Uint32 %"$p4_1935", 0
  %"$valueof_1937" = zext i32 %"$valueof_1936" to i64
  %"$gaslogof_1938" = uitofp i64 %"$valueof_1937" to double
  %"$gaslogof_1939" = fadd double %"$gaslogof_1938", 1.000000e+00
  %"$gaslogof_1940" = call double @llvm.log.f64(double %"$gaslogof_1939")
  %"$gaslogof_1941" = fptoui double %"$gaslogof_1940" to i64
  %"$gaslogof_1942" = add i64 %"$gaslogof_1941", 1
  %"$gasmul_1943" = mul i64 20, %"$gaslogof_1942"
  %"$gasmul_1944" = mul i64 %"$gasmul_1943", 2
  %"$gasrem_1945" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1946" = icmp ugt i64 %"$gasmul_1944", %"$gasrem_1945"
  br i1 %"$gascmp_1946", label %"$out_of_gas_1947", label %"$have_gas_1948"

"$out_of_gas_1947":                               ; preds = %"$have_gas_1933"
  call void @_out_of_gas()
  br label %"$have_gas_1948"

"$have_gas_1948":                                 ; preds = %"$out_of_gas_1947", %"$have_gas_1933"
  %"$consume_1949" = sub i64 %"$gasrem_1945", %"$gasmul_1944"
  store i64 %"$consume_1949", i64* @_gasrem, align 8
  %"$t6_1950" = load %Int128, %Int128* %t6, align 8
  %"$p4_1951" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_1952" = call %Int128 @_pow_Int128(%Int128 %"$t6_1950", %Uint32 %"$p4_1951"), !dbg !355
  store %Int128 %"$pow_call_1952", %Int128* %"$p_87", align 8, !dbg !355
  %"$gasrem_1953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1954" = icmp ugt i64 1, %"$gasrem_1953"
  br i1 %"$gascmp_1954", label %"$out_of_gas_1955", label %"$have_gas_1956"

"$out_of_gas_1955":                               ; preds = %"$have_gas_1948"
  call void @_out_of_gas()
  br label %"$have_gas_1956"

"$have_gas_1956":                                 ; preds = %"$out_of_gas_1955", %"$have_gas_1948"
  %"$consume_1957" = sub i64 %"$gasrem_1953", 1
  store i64 %"$consume_1957", i64* @_gasrem, align 8
  %"$res_90" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_90", metadata !356, metadata !DIExpression()), !dbg !357
  %"$gasrem_1958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1959" = icmp ugt i64 1, %"$gasrem_1958"
  br i1 %"$gascmp_1959", label %"$out_of_gas_1960", label %"$have_gas_1961"

"$out_of_gas_1960":                               ; preds = %"$have_gas_1956"
  call void @_out_of_gas()
  br label %"$have_gas_1961"

"$have_gas_1961":                                 ; preds = %"$out_of_gas_1960", %"$have_gas_1956"
  %"$consume_1962" = sub i64 %"$gasrem_1958", 1
  store i64 %"$consume_1962", i64* @_gasrem, align 8
  %"$ans_88" = alloca %Int128, align 8
  call void @llvm.dbg.declare(metadata %Int128* %"$ans_88", metadata !358, metadata !DIExpression()), !dbg !359
  %"$gasrem_1963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1964" = icmp ugt i64 1, %"$gasrem_1963"
  br i1 %"$gascmp_1964", label %"$out_of_gas_1965", label %"$have_gas_1966"

"$out_of_gas_1965":                               ; preds = %"$have_gas_1961"
  call void @_out_of_gas()
  br label %"$have_gas_1966"

"$have_gas_1966":                                 ; preds = %"$out_of_gas_1965", %"$have_gas_1961"
  %"$consume_1967" = sub i64 %"$gasrem_1963", 1
  store i64 %"$consume_1967", i64* @_gasrem, align 8
  store %Int128 { i128 996270472039138140011255001 }, %Int128* %"$ans_88", align 8, !dbg !360
  %"$gasrem_1968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1969" = icmp ugt i64 1, %"$gasrem_1968"
  br i1 %"$gascmp_1969", label %"$out_of_gas_1970", label %"$have_gas_1971"

"$out_of_gas_1970":                               ; preds = %"$have_gas_1966"
  call void @_out_of_gas()
  br label %"$have_gas_1971"

"$have_gas_1971":                                 ; preds = %"$out_of_gas_1970", %"$have_gas_1966"
  %"$consume_1972" = sub i64 %"$gasrem_1968", 1
  store i64 %"$consume_1972", i64* @_gasrem, align 8
  %"$res__89" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__89", metadata !361, metadata !DIExpression()), !dbg !362
  %"$gasrem_1974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1975" = icmp ugt i64 8, %"$gasrem_1974"
  br i1 %"$gascmp_1975", label %"$out_of_gas_1976", label %"$have_gas_1977"

"$out_of_gas_1976":                               ; preds = %"$have_gas_1971"
  call void @_out_of_gas()
  br label %"$have_gas_1977"

"$have_gas_1977":                                 ; preds = %"$out_of_gas_1976", %"$have_gas_1971"
  %"$consume_1978" = sub i64 %"$gasrem_1974", 8
  store i64 %"$consume_1978", i64* @_gasrem, align 8
  %"$execptr_load_1979" = load i8*, i8** @_execptr, align 8
  %"$$p_87_1980" = load %Int128, %Int128* %"$p_87", align 8
  %"$$ans_88_1981" = load %Int128, %Int128* %"$ans_88", align 8
  %"$eq_call_1982" = call %TName_Bool* @_eq_Int128(i8* %"$execptr_load_1979", %Int128 %"$$p_87_1980", %Int128 %"$$ans_88_1981"), !dbg !363
  store %TName_Bool* %"$eq_call_1982", %TName_Bool** %"$res__89", align 8, !dbg !363
  %"$gasrem_1984" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1985" = icmp ugt i64 1, %"$gasrem_1984"
  br i1 %"$gascmp_1985", label %"$out_of_gas_1986", label %"$have_gas_1987"

"$out_of_gas_1986":                               ; preds = %"$have_gas_1977"
  call void @_out_of_gas()
  br label %"$have_gas_1987"

"$have_gas_1987":                                 ; preds = %"$out_of_gas_1986", %"$have_gas_1977"
  %"$consume_1988" = sub i64 %"$gasrem_1984", 1
  store i64 %"$consume_1988", i64* @_gasrem, align 8
  %"$BoolUtils.andb_181" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_1989" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_1990" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1989", 0
  %"$BoolUtils.andb_envptr_1991" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_1989", 1
  %"$$res_86_1992" = load %TName_Bool*, %TName_Bool** %"$res_86", align 8
  %"$BoolUtils.andb_call_1993" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_1990"(i8* %"$BoolUtils.andb_envptr_1991", %TName_Bool* %"$$res_86_1992"), !dbg !364
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_1993", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8, !dbg !364
  %"$BoolUtils.andb_182" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_182", metadata !365, metadata !DIExpression()), !dbg !364
  %"$$BoolUtils.andb_181_1994" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_181", align 8
  %"$$BoolUtils.andb_181_fptr_1995" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_1994", 0
  %"$$BoolUtils.andb_181_envptr_1996" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_181_1994", 1
  %"$$res__89_1997" = load %TName_Bool*, %TName_Bool** %"$res__89", align 8
  %"$$BoolUtils.andb_181_call_1998" = call %TName_Bool* %"$$BoolUtils.andb_181_fptr_1995"(i8* %"$$BoolUtils.andb_181_envptr_1996", %TName_Bool* %"$$res__89_1997"), !dbg !364
  store %TName_Bool* %"$$BoolUtils.andb_181_call_1998", %TName_Bool** %"$BoolUtils.andb_182", align 8, !dbg !364
  %"$$BoolUtils.andb_182_1999" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_182", align 8
  store %TName_Bool* %"$$BoolUtils.andb_182_1999", %TName_Bool** %"$res_90", align 8, !dbg !364
  %"$gasrem_2000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2001" = icmp ugt i64 1, %"$gasrem_2000"
  br i1 %"$gascmp_2001", label %"$out_of_gas_2002", label %"$have_gas_2003"

"$out_of_gas_2002":                               ; preds = %"$have_gas_1987"
  call void @_out_of_gas()
  br label %"$have_gas_2003"

"$have_gas_2003":                                 ; preds = %"$out_of_gas_2002", %"$have_gas_1987"
  %"$consume_2004" = sub i64 %"$gasrem_2000", 1
  store i64 %"$consume_2004", i64* @_gasrem, align 8
  %"$p_91" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$p_91", metadata !366, metadata !DIExpression()), !dbg !367
  %"$p1_2005" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2006" = extractvalue %Uint32 %"$p1_2005", 0
  %"$valueof_2007" = zext i32 %"$valueof_2006" to i64
  %"$gaslogof_2008" = uitofp i64 %"$valueof_2007" to double
  %"$gaslogof_2009" = fadd double %"$gaslogof_2008", 1.000000e+00
  %"$gaslogof_2010" = call double @llvm.log.f64(double %"$gaslogof_2009")
  %"$gaslogof_2011" = fptoui double %"$gaslogof_2010" to i64
  %"$gaslogof_2012" = add i64 %"$gaslogof_2011", 1
  %"$gasmul_2013" = mul i64 20, %"$gaslogof_2012"
  %"$gasmul_2014" = mul i64 %"$gasmul_2013", 4
  %"$gasrem_2015" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2016" = icmp ugt i64 %"$gasmul_2014", %"$gasrem_2015"
  br i1 %"$gascmp_2016", label %"$out_of_gas_2017", label %"$have_gas_2018"

"$out_of_gas_2017":                               ; preds = %"$have_gas_2003"
  call void @_out_of_gas()
  br label %"$have_gas_2018"

"$have_gas_2018":                                 ; preds = %"$out_of_gas_2017", %"$have_gas_2003"
  %"$consume_2019" = sub i64 %"$gasrem_2015", %"$gasmul_2014"
  store i64 %"$consume_2019", i64* @_gasrem, align 8
  %"$execptr_load_2020" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2021" = alloca %Uint256, align 8
  %"$t7_2022" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2022", %Uint256* %"$pow_t7_2021", align 8
  %"$p1_2023" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2024" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2020", %Uint256* %"$pow_t7_2021", %Uint32 %"$p1_2023"), !dbg !368
  %"$pow_2026" = load %Uint256, %Uint256* %"$pow_call_2024", align 8
  store %Uint256 %"$pow_2026", %Uint256* %"$p_91", align 8, !dbg !368
  %"$gasrem_2027" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2028" = icmp ugt i64 1, %"$gasrem_2027"
  br i1 %"$gascmp_2028", label %"$out_of_gas_2029", label %"$have_gas_2030"

"$out_of_gas_2029":                               ; preds = %"$have_gas_2018"
  call void @_out_of_gas()
  br label %"$have_gas_2030"

"$have_gas_2030":                                 ; preds = %"$out_of_gas_2029", %"$have_gas_2018"
  %"$consume_2031" = sub i64 %"$gasrem_2027", 1
  store i64 %"$consume_2031", i64* @_gasrem, align 8
  %"$res_94" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_94", metadata !369, metadata !DIExpression()), !dbg !370
  %"$gasrem_2032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2033" = icmp ugt i64 1, %"$gasrem_2032"
  br i1 %"$gascmp_2033", label %"$out_of_gas_2034", label %"$have_gas_2035"

"$out_of_gas_2034":                               ; preds = %"$have_gas_2030"
  call void @_out_of_gas()
  br label %"$have_gas_2035"

"$have_gas_2035":                                 ; preds = %"$out_of_gas_2034", %"$have_gas_2030"
  %"$consume_2036" = sub i64 %"$gasrem_2032", 1
  store i64 %"$consume_2036", i64* @_gasrem, align 8
  %"$ans_92" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$ans_92", metadata !371, metadata !DIExpression()), !dbg !372
  %"$gasrem_2037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2038" = icmp ugt i64 1, %"$gasrem_2037"
  br i1 %"$gascmp_2038", label %"$out_of_gas_2039", label %"$have_gas_2040"

"$out_of_gas_2039":                               ; preds = %"$have_gas_2035"
  call void @_out_of_gas()
  br label %"$have_gas_2040"

"$have_gas_2040":                                 ; preds = %"$out_of_gas_2039", %"$have_gas_2035"
  %"$consume_2041" = sub i64 %"$gasrem_2037", 1
  store i64 %"$consume_2041", i64* @_gasrem, align 8
  store %Uint256 { i256 1 }, %Uint256* %"$ans_92", align 8, !dbg !373
  %"$gasrem_2042" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2043" = icmp ugt i64 1, %"$gasrem_2042"
  br i1 %"$gascmp_2043", label %"$out_of_gas_2044", label %"$have_gas_2045"

"$out_of_gas_2044":                               ; preds = %"$have_gas_2040"
  call void @_out_of_gas()
  br label %"$have_gas_2045"

"$have_gas_2045":                                 ; preds = %"$out_of_gas_2044", %"$have_gas_2040"
  %"$consume_2046" = sub i64 %"$gasrem_2042", 1
  store i64 %"$consume_2046", i64* @_gasrem, align 8
  %"$res__93" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__93", metadata !374, metadata !DIExpression()), !dbg !375
  %"$gasrem_2048" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2049" = icmp ugt i64 16, %"$gasrem_2048"
  br i1 %"$gascmp_2049", label %"$out_of_gas_2050", label %"$have_gas_2051"

"$out_of_gas_2050":                               ; preds = %"$have_gas_2045"
  call void @_out_of_gas()
  br label %"$have_gas_2051"

"$have_gas_2051":                                 ; preds = %"$out_of_gas_2050", %"$have_gas_2045"
  %"$consume_2052" = sub i64 %"$gasrem_2048", 16
  store i64 %"$consume_2052", i64* @_gasrem, align 8
  %"$execptr_load_2053" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_91_2054" = alloca %Uint256, align 8
  %"$$p_91_2055" = load %Uint256, %Uint256* %"$p_91", align 8
  store %Uint256 %"$$p_91_2055", %Uint256* %"$eq_$p_91_2054", align 8
  %"$eq_$ans_92_2056" = alloca %Uint256, align 8
  %"$$ans_92_2057" = load %Uint256, %Uint256* %"$ans_92", align 8
  store %Uint256 %"$$ans_92_2057", %Uint256* %"$eq_$ans_92_2056", align 8
  %"$eq_call_2058" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2053", %Uint256* %"$eq_$p_91_2054", %Uint256* %"$eq_$ans_92_2056"), !dbg !376
  store %TName_Bool* %"$eq_call_2058", %TName_Bool** %"$res__93", align 8, !dbg !376
  %"$gasrem_2060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2061" = icmp ugt i64 1, %"$gasrem_2060"
  br i1 %"$gascmp_2061", label %"$out_of_gas_2062", label %"$have_gas_2063"

"$out_of_gas_2062":                               ; preds = %"$have_gas_2051"
  call void @_out_of_gas()
  br label %"$have_gas_2063"

"$have_gas_2063":                                 ; preds = %"$out_of_gas_2062", %"$have_gas_2051"
  %"$consume_2064" = sub i64 %"$gasrem_2060", 1
  store i64 %"$consume_2064", i64* @_gasrem, align 8
  %"$BoolUtils.andb_183" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2065" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2066" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2065", 0
  %"$BoolUtils.andb_envptr_2067" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2065", 1
  %"$$res_90_2068" = load %TName_Bool*, %TName_Bool** %"$res_90", align 8
  %"$BoolUtils.andb_call_2069" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2066"(i8* %"$BoolUtils.andb_envptr_2067", %TName_Bool* %"$$res_90_2068"), !dbg !377
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2069", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8, !dbg !377
  %"$BoolUtils.andb_184" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_184", metadata !378, metadata !DIExpression()), !dbg !377
  %"$$BoolUtils.andb_183_2070" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_183", align 8
  %"$$BoolUtils.andb_183_fptr_2071" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_2070", 0
  %"$$BoolUtils.andb_183_envptr_2072" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_183_2070", 1
  %"$$res__93_2073" = load %TName_Bool*, %TName_Bool** %"$res__93", align 8
  %"$$BoolUtils.andb_183_call_2074" = call %TName_Bool* %"$$BoolUtils.andb_183_fptr_2071"(i8* %"$$BoolUtils.andb_183_envptr_2072", %TName_Bool* %"$$res__93_2073"), !dbg !377
  store %TName_Bool* %"$$BoolUtils.andb_183_call_2074", %TName_Bool** %"$BoolUtils.andb_184", align 8, !dbg !377
  %"$$BoolUtils.andb_184_2075" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_184", align 8
  store %TName_Bool* %"$$BoolUtils.andb_184_2075", %TName_Bool** %"$res_94", align 8, !dbg !377
  %"$gasrem_2076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2077" = icmp ugt i64 1, %"$gasrem_2076"
  br i1 %"$gascmp_2077", label %"$out_of_gas_2078", label %"$have_gas_2079"

"$out_of_gas_2078":                               ; preds = %"$have_gas_2063"
  call void @_out_of_gas()
  br label %"$have_gas_2079"

"$have_gas_2079":                                 ; preds = %"$out_of_gas_2078", %"$have_gas_2063"
  %"$consume_2080" = sub i64 %"$gasrem_2076", 1
  store i64 %"$consume_2080", i64* @_gasrem, align 8
  %"$p_95" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$p_95", metadata !379, metadata !DIExpression()), !dbg !380
  %"$p2_2081" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2082" = extractvalue %Uint32 %"$p2_2081", 0
  %"$valueof_2083" = zext i32 %"$valueof_2082" to i64
  %"$gaslogof_2084" = uitofp i64 %"$valueof_2083" to double
  %"$gaslogof_2085" = fadd double %"$gaslogof_2084", 1.000000e+00
  %"$gaslogof_2086" = call double @llvm.log.f64(double %"$gaslogof_2085")
  %"$gaslogof_2087" = fptoui double %"$gaslogof_2086" to i64
  %"$gaslogof_2088" = add i64 %"$gaslogof_2087", 1
  %"$gasmul_2089" = mul i64 20, %"$gaslogof_2088"
  %"$gasmul_2090" = mul i64 %"$gasmul_2089", 4
  %"$gasrem_2091" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2092" = icmp ugt i64 %"$gasmul_2090", %"$gasrem_2091"
  br i1 %"$gascmp_2092", label %"$out_of_gas_2093", label %"$have_gas_2094"

"$out_of_gas_2093":                               ; preds = %"$have_gas_2079"
  call void @_out_of_gas()
  br label %"$have_gas_2094"

"$have_gas_2094":                                 ; preds = %"$out_of_gas_2093", %"$have_gas_2079"
  %"$consume_2095" = sub i64 %"$gasrem_2091", %"$gasmul_2090"
  store i64 %"$consume_2095", i64* @_gasrem, align 8
  %"$execptr_load_2096" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2097" = alloca %Uint256, align 8
  %"$t7_2098" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2098", %Uint256* %"$pow_t7_2097", align 8
  %"$p2_2099" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2100" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2096", %Uint256* %"$pow_t7_2097", %Uint32 %"$p2_2099"), !dbg !381
  %"$pow_2102" = load %Uint256, %Uint256* %"$pow_call_2100", align 8
  store %Uint256 %"$pow_2102", %Uint256* %"$p_95", align 8, !dbg !381
  %"$gasrem_2103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2104" = icmp ugt i64 1, %"$gasrem_2103"
  br i1 %"$gascmp_2104", label %"$out_of_gas_2105", label %"$have_gas_2106"

"$out_of_gas_2105":                               ; preds = %"$have_gas_2094"
  call void @_out_of_gas()
  br label %"$have_gas_2106"

"$have_gas_2106":                                 ; preds = %"$out_of_gas_2105", %"$have_gas_2094"
  %"$consume_2107" = sub i64 %"$gasrem_2103", 1
  store i64 %"$consume_2107", i64* @_gasrem, align 8
  %"$res_98" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_98", metadata !382, metadata !DIExpression()), !dbg !383
  %"$gasrem_2108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2109" = icmp ugt i64 1, %"$gasrem_2108"
  br i1 %"$gascmp_2109", label %"$out_of_gas_2110", label %"$have_gas_2111"

"$out_of_gas_2110":                               ; preds = %"$have_gas_2106"
  call void @_out_of_gas()
  br label %"$have_gas_2111"

"$have_gas_2111":                                 ; preds = %"$out_of_gas_2110", %"$have_gas_2106"
  %"$consume_2112" = sub i64 %"$gasrem_2108", 1
  store i64 %"$consume_2112", i64* @_gasrem, align 8
  %"$ans_96" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$ans_96", metadata !384, metadata !DIExpression()), !dbg !385
  %"$gasrem_2113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2114" = icmp ugt i64 1, %"$gasrem_2113"
  br i1 %"$gascmp_2114", label %"$out_of_gas_2115", label %"$have_gas_2116"

"$out_of_gas_2115":                               ; preds = %"$have_gas_2111"
  call void @_out_of_gas()
  br label %"$have_gas_2116"

"$have_gas_2116":                                 ; preds = %"$out_of_gas_2115", %"$have_gas_2111"
  %"$consume_2117" = sub i64 %"$gasrem_2113", 1
  store i64 %"$consume_2117", i64* @_gasrem, align 8
  store %Uint256 { i256 10001 }, %Uint256* %"$ans_96", align 8, !dbg !386
  %"$gasrem_2118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2119" = icmp ugt i64 1, %"$gasrem_2118"
  br i1 %"$gascmp_2119", label %"$out_of_gas_2120", label %"$have_gas_2121"

"$out_of_gas_2120":                               ; preds = %"$have_gas_2116"
  call void @_out_of_gas()
  br label %"$have_gas_2121"

"$have_gas_2121":                                 ; preds = %"$out_of_gas_2120", %"$have_gas_2116"
  %"$consume_2122" = sub i64 %"$gasrem_2118", 1
  store i64 %"$consume_2122", i64* @_gasrem, align 8
  %"$res__97" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__97", metadata !387, metadata !DIExpression()), !dbg !388
  %"$gasrem_2124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2125" = icmp ugt i64 16, %"$gasrem_2124"
  br i1 %"$gascmp_2125", label %"$out_of_gas_2126", label %"$have_gas_2127"

"$out_of_gas_2126":                               ; preds = %"$have_gas_2121"
  call void @_out_of_gas()
  br label %"$have_gas_2127"

"$have_gas_2127":                                 ; preds = %"$out_of_gas_2126", %"$have_gas_2121"
  %"$consume_2128" = sub i64 %"$gasrem_2124", 16
  store i64 %"$consume_2128", i64* @_gasrem, align 8
  %"$execptr_load_2129" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_95_2130" = alloca %Uint256, align 8
  %"$$p_95_2131" = load %Uint256, %Uint256* %"$p_95", align 8
  store %Uint256 %"$$p_95_2131", %Uint256* %"$eq_$p_95_2130", align 8
  %"$eq_$ans_96_2132" = alloca %Uint256, align 8
  %"$$ans_96_2133" = load %Uint256, %Uint256* %"$ans_96", align 8
  store %Uint256 %"$$ans_96_2133", %Uint256* %"$eq_$ans_96_2132", align 8
  %"$eq_call_2134" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2129", %Uint256* %"$eq_$p_95_2130", %Uint256* %"$eq_$ans_96_2132"), !dbg !389
  store %TName_Bool* %"$eq_call_2134", %TName_Bool** %"$res__97", align 8, !dbg !389
  %"$gasrem_2136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2137" = icmp ugt i64 1, %"$gasrem_2136"
  br i1 %"$gascmp_2137", label %"$out_of_gas_2138", label %"$have_gas_2139"

"$out_of_gas_2138":                               ; preds = %"$have_gas_2127"
  call void @_out_of_gas()
  br label %"$have_gas_2139"

"$have_gas_2139":                                 ; preds = %"$out_of_gas_2138", %"$have_gas_2127"
  %"$consume_2140" = sub i64 %"$gasrem_2136", 1
  store i64 %"$consume_2140", i64* @_gasrem, align 8
  %"$BoolUtils.andb_185" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2141" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2142" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2141", 0
  %"$BoolUtils.andb_envptr_2143" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2141", 1
  %"$$res_94_2144" = load %TName_Bool*, %TName_Bool** %"$res_94", align 8
  %"$BoolUtils.andb_call_2145" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2142"(i8* %"$BoolUtils.andb_envptr_2143", %TName_Bool* %"$$res_94_2144"), !dbg !390
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2145", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8, !dbg !390
  %"$BoolUtils.andb_186" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_186", metadata !391, metadata !DIExpression()), !dbg !390
  %"$$BoolUtils.andb_185_2146" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_185", align 8
  %"$$BoolUtils.andb_185_fptr_2147" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_2146", 0
  %"$$BoolUtils.andb_185_envptr_2148" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_185_2146", 1
  %"$$res__97_2149" = load %TName_Bool*, %TName_Bool** %"$res__97", align 8
  %"$$BoolUtils.andb_185_call_2150" = call %TName_Bool* %"$$BoolUtils.andb_185_fptr_2147"(i8* %"$$BoolUtils.andb_185_envptr_2148", %TName_Bool* %"$$res__97_2149"), !dbg !390
  store %TName_Bool* %"$$BoolUtils.andb_185_call_2150", %TName_Bool** %"$BoolUtils.andb_186", align 8, !dbg !390
  %"$$BoolUtils.andb_186_2151" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_186", align 8
  store %TName_Bool* %"$$BoolUtils.andb_186_2151", %TName_Bool** %"$res_98", align 8, !dbg !390
  %"$gasrem_2152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2153" = icmp ugt i64 1, %"$gasrem_2152"
  br i1 %"$gascmp_2153", label %"$out_of_gas_2154", label %"$have_gas_2155"

"$out_of_gas_2154":                               ; preds = %"$have_gas_2139"
  call void @_out_of_gas()
  br label %"$have_gas_2155"

"$have_gas_2155":                                 ; preds = %"$out_of_gas_2154", %"$have_gas_2139"
  %"$consume_2156" = sub i64 %"$gasrem_2152", 1
  store i64 %"$consume_2156", i64* @_gasrem, align 8
  %"$p_99" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$p_99", metadata !392, metadata !DIExpression()), !dbg !393
  %"$p3_2157" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2158" = extractvalue %Uint32 %"$p3_2157", 0
  %"$valueof_2159" = zext i32 %"$valueof_2158" to i64
  %"$gaslogof_2160" = uitofp i64 %"$valueof_2159" to double
  %"$gaslogof_2161" = fadd double %"$gaslogof_2160", 1.000000e+00
  %"$gaslogof_2162" = call double @llvm.log.f64(double %"$gaslogof_2161")
  %"$gaslogof_2163" = fptoui double %"$gaslogof_2162" to i64
  %"$gaslogof_2164" = add i64 %"$gaslogof_2163", 1
  %"$gasmul_2165" = mul i64 20, %"$gaslogof_2164"
  %"$gasmul_2166" = mul i64 %"$gasmul_2165", 4
  %"$gasrem_2167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2168" = icmp ugt i64 %"$gasmul_2166", %"$gasrem_2167"
  br i1 %"$gascmp_2168", label %"$out_of_gas_2169", label %"$have_gas_2170"

"$out_of_gas_2169":                               ; preds = %"$have_gas_2155"
  call void @_out_of_gas()
  br label %"$have_gas_2170"

"$have_gas_2170":                                 ; preds = %"$out_of_gas_2169", %"$have_gas_2155"
  %"$consume_2171" = sub i64 %"$gasrem_2167", %"$gasmul_2166"
  store i64 %"$consume_2171", i64* @_gasrem, align 8
  %"$execptr_load_2172" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2173" = alloca %Uint256, align 8
  %"$t7_2174" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2174", %Uint256* %"$pow_t7_2173", align 8
  %"$p3_2175" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2176" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2172", %Uint256* %"$pow_t7_2173", %Uint32 %"$p3_2175"), !dbg !394
  %"$pow_2178" = load %Uint256, %Uint256* %"$pow_call_2176", align 8
  store %Uint256 %"$pow_2178", %Uint256* %"$p_99", align 8, !dbg !394
  %"$gasrem_2179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2180" = icmp ugt i64 1, %"$gasrem_2179"
  br i1 %"$gascmp_2180", label %"$out_of_gas_2181", label %"$have_gas_2182"

"$out_of_gas_2181":                               ; preds = %"$have_gas_2170"
  call void @_out_of_gas()
  br label %"$have_gas_2182"

"$have_gas_2182":                                 ; preds = %"$out_of_gas_2181", %"$have_gas_2170"
  %"$consume_2183" = sub i64 %"$gasrem_2179", 1
  store i64 %"$consume_2183", i64* @_gasrem, align 8
  %"$res_102" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_102", metadata !395, metadata !DIExpression()), !dbg !396
  %"$gasrem_2184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2185" = icmp ugt i64 1, %"$gasrem_2184"
  br i1 %"$gascmp_2185", label %"$out_of_gas_2186", label %"$have_gas_2187"

"$out_of_gas_2186":                               ; preds = %"$have_gas_2182"
  call void @_out_of_gas()
  br label %"$have_gas_2187"

"$have_gas_2187":                                 ; preds = %"$out_of_gas_2186", %"$have_gas_2182"
  %"$consume_2188" = sub i64 %"$gasrem_2184", 1
  store i64 %"$consume_2188", i64* @_gasrem, align 8
  %"$ans_100" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$ans_100", metadata !397, metadata !DIExpression()), !dbg !398
  %"$gasrem_2189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2190" = icmp ugt i64 1, %"$gasrem_2189"
  br i1 %"$gascmp_2190", label %"$out_of_gas_2191", label %"$have_gas_2192"

"$out_of_gas_2191":                               ; preds = %"$have_gas_2187"
  call void @_out_of_gas()
  br label %"$have_gas_2192"

"$have_gas_2192":                                 ; preds = %"$out_of_gas_2191", %"$have_gas_2187"
  %"$consume_2193" = sub i64 %"$gasrem_2189", 1
  store i64 %"$consume_2193", i64* @_gasrem, align 8
  store %Uint256 { i256 10004000600040001 }, %Uint256* %"$ans_100", align 8, !dbg !399
  %"$gasrem_2194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2195" = icmp ugt i64 1, %"$gasrem_2194"
  br i1 %"$gascmp_2195", label %"$out_of_gas_2196", label %"$have_gas_2197"

"$out_of_gas_2196":                               ; preds = %"$have_gas_2192"
  call void @_out_of_gas()
  br label %"$have_gas_2197"

"$have_gas_2197":                                 ; preds = %"$out_of_gas_2196", %"$have_gas_2192"
  %"$consume_2198" = sub i64 %"$gasrem_2194", 1
  store i64 %"$consume_2198", i64* @_gasrem, align 8
  %"$res__101" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__101", metadata !400, metadata !DIExpression()), !dbg !401
  %"$gasrem_2200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2201" = icmp ugt i64 16, %"$gasrem_2200"
  br i1 %"$gascmp_2201", label %"$out_of_gas_2202", label %"$have_gas_2203"

"$out_of_gas_2202":                               ; preds = %"$have_gas_2197"
  call void @_out_of_gas()
  br label %"$have_gas_2203"

"$have_gas_2203":                                 ; preds = %"$out_of_gas_2202", %"$have_gas_2197"
  %"$consume_2204" = sub i64 %"$gasrem_2200", 16
  store i64 %"$consume_2204", i64* @_gasrem, align 8
  %"$execptr_load_2205" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_99_2206" = alloca %Uint256, align 8
  %"$$p_99_2207" = load %Uint256, %Uint256* %"$p_99", align 8
  store %Uint256 %"$$p_99_2207", %Uint256* %"$eq_$p_99_2206", align 8
  %"$eq_$ans_100_2208" = alloca %Uint256, align 8
  %"$$ans_100_2209" = load %Uint256, %Uint256* %"$ans_100", align 8
  store %Uint256 %"$$ans_100_2209", %Uint256* %"$eq_$ans_100_2208", align 8
  %"$eq_call_2210" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2205", %Uint256* %"$eq_$p_99_2206", %Uint256* %"$eq_$ans_100_2208"), !dbg !402
  store %TName_Bool* %"$eq_call_2210", %TName_Bool** %"$res__101", align 8, !dbg !402
  %"$gasrem_2212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2213" = icmp ugt i64 1, %"$gasrem_2212"
  br i1 %"$gascmp_2213", label %"$out_of_gas_2214", label %"$have_gas_2215"

"$out_of_gas_2214":                               ; preds = %"$have_gas_2203"
  call void @_out_of_gas()
  br label %"$have_gas_2215"

"$have_gas_2215":                                 ; preds = %"$out_of_gas_2214", %"$have_gas_2203"
  %"$consume_2216" = sub i64 %"$gasrem_2212", 1
  store i64 %"$consume_2216", i64* @_gasrem, align 8
  %"$BoolUtils.andb_187" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2217" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2218" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2217", 0
  %"$BoolUtils.andb_envptr_2219" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2217", 1
  %"$$res_98_2220" = load %TName_Bool*, %TName_Bool** %"$res_98", align 8
  %"$BoolUtils.andb_call_2221" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2218"(i8* %"$BoolUtils.andb_envptr_2219", %TName_Bool* %"$$res_98_2220"), !dbg !403
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2221", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8, !dbg !403
  %"$BoolUtils.andb_188" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_188", metadata !404, metadata !DIExpression()), !dbg !403
  %"$$BoolUtils.andb_187_2222" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_187", align 8
  %"$$BoolUtils.andb_187_fptr_2223" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_2222", 0
  %"$$BoolUtils.andb_187_envptr_2224" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_187_2222", 1
  %"$$res__101_2225" = load %TName_Bool*, %TName_Bool** %"$res__101", align 8
  %"$$BoolUtils.andb_187_call_2226" = call %TName_Bool* %"$$BoolUtils.andb_187_fptr_2223"(i8* %"$$BoolUtils.andb_187_envptr_2224", %TName_Bool* %"$$res__101_2225"), !dbg !403
  store %TName_Bool* %"$$BoolUtils.andb_187_call_2226", %TName_Bool** %"$BoolUtils.andb_188", align 8, !dbg !403
  %"$$BoolUtils.andb_188_2227" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_188", align 8
  store %TName_Bool* %"$$BoolUtils.andb_188_2227", %TName_Bool** %"$res_102", align 8, !dbg !403
  %"$gasrem_2228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2229" = icmp ugt i64 1, %"$gasrem_2228"
  br i1 %"$gascmp_2229", label %"$out_of_gas_2230", label %"$have_gas_2231"

"$out_of_gas_2230":                               ; preds = %"$have_gas_2215"
  call void @_out_of_gas()
  br label %"$have_gas_2231"

"$have_gas_2231":                                 ; preds = %"$out_of_gas_2230", %"$have_gas_2215"
  %"$consume_2232" = sub i64 %"$gasrem_2228", 1
  store i64 %"$consume_2232", i64* @_gasrem, align 8
  %"$p_103" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$p_103", metadata !405, metadata !DIExpression()), !dbg !406
  %"$p4_2233" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2234" = extractvalue %Uint32 %"$p4_2233", 0
  %"$valueof_2235" = zext i32 %"$valueof_2234" to i64
  %"$gaslogof_2236" = uitofp i64 %"$valueof_2235" to double
  %"$gaslogof_2237" = fadd double %"$gaslogof_2236", 1.000000e+00
  %"$gaslogof_2238" = call double @llvm.log.f64(double %"$gaslogof_2237")
  %"$gaslogof_2239" = fptoui double %"$gaslogof_2238" to i64
  %"$gaslogof_2240" = add i64 %"$gaslogof_2239", 1
  %"$gasmul_2241" = mul i64 20, %"$gaslogof_2240"
  %"$gasmul_2242" = mul i64 %"$gasmul_2241", 4
  %"$gasrem_2243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2244" = icmp ugt i64 %"$gasmul_2242", %"$gasrem_2243"
  br i1 %"$gascmp_2244", label %"$out_of_gas_2245", label %"$have_gas_2246"

"$out_of_gas_2245":                               ; preds = %"$have_gas_2231"
  call void @_out_of_gas()
  br label %"$have_gas_2246"

"$have_gas_2246":                                 ; preds = %"$out_of_gas_2245", %"$have_gas_2231"
  %"$consume_2247" = sub i64 %"$gasrem_2243", %"$gasmul_2242"
  store i64 %"$consume_2247", i64* @_gasrem, align 8
  %"$execptr_load_2248" = load i8*, i8** @_execptr, align 8
  %"$pow_t7_2249" = alloca %Uint256, align 8
  %"$t7_2250" = load %Uint256, %Uint256* %t7, align 8
  store %Uint256 %"$t7_2250", %Uint256* %"$pow_t7_2249", align 8
  %"$p4_2251" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2252" = call %Uint256* @_pow_Uint256(i8* %"$execptr_load_2248", %Uint256* %"$pow_t7_2249", %Uint32 %"$p4_2251"), !dbg !407
  %"$pow_2254" = load %Uint256, %Uint256* %"$pow_call_2252", align 8
  store %Uint256 %"$pow_2254", %Uint256* %"$p_103", align 8, !dbg !407
  %"$gasrem_2255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2256" = icmp ugt i64 1, %"$gasrem_2255"
  br i1 %"$gascmp_2256", label %"$out_of_gas_2257", label %"$have_gas_2258"

"$out_of_gas_2257":                               ; preds = %"$have_gas_2246"
  call void @_out_of_gas()
  br label %"$have_gas_2258"

"$have_gas_2258":                                 ; preds = %"$out_of_gas_2257", %"$have_gas_2246"
  %"$consume_2259" = sub i64 %"$gasrem_2255", 1
  store i64 %"$consume_2259", i64* @_gasrem, align 8
  %"$res_106" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_106", metadata !408, metadata !DIExpression()), !dbg !409
  %"$gasrem_2260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2261" = icmp ugt i64 1, %"$gasrem_2260"
  br i1 %"$gascmp_2261", label %"$out_of_gas_2262", label %"$have_gas_2263"

"$out_of_gas_2262":                               ; preds = %"$have_gas_2258"
  call void @_out_of_gas()
  br label %"$have_gas_2263"

"$have_gas_2263":                                 ; preds = %"$out_of_gas_2262", %"$have_gas_2258"
  %"$consume_2264" = sub i64 %"$gasrem_2260", 1
  store i64 %"$consume_2264", i64* @_gasrem, align 8
  %"$ans_104" = alloca %Uint256, align 8
  call void @llvm.dbg.declare(metadata %Uint256* %"$ans_104", metadata !410, metadata !DIExpression()), !dbg !411
  %"$gasrem_2265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2266" = icmp ugt i64 1, %"$gasrem_2265"
  br i1 %"$gascmp_2266", label %"$out_of_gas_2267", label %"$have_gas_2268"

"$out_of_gas_2267":                               ; preds = %"$have_gas_2263"
  call void @_out_of_gas()
  br label %"$have_gas_2268"

"$have_gas_2268":                                 ; preds = %"$out_of_gas_2267", %"$have_gas_2263"
  %"$consume_2269" = sub i64 %"$gasrem_2265", 1
  store i64 %"$consume_2269", i64* @_gasrem, align 8
  store %Uint256 { i256 10010004501200210025202100120004500100001 }, %Uint256* %"$ans_104", align 8, !dbg !412
  %"$gasrem_2270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2271" = icmp ugt i64 1, %"$gasrem_2270"
  br i1 %"$gascmp_2271", label %"$out_of_gas_2272", label %"$have_gas_2273"

"$out_of_gas_2272":                               ; preds = %"$have_gas_2268"
  call void @_out_of_gas()
  br label %"$have_gas_2273"

"$have_gas_2273":                                 ; preds = %"$out_of_gas_2272", %"$have_gas_2268"
  %"$consume_2274" = sub i64 %"$gasrem_2270", 1
  store i64 %"$consume_2274", i64* @_gasrem, align 8
  %"$res__105" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__105", metadata !413, metadata !DIExpression()), !dbg !414
  %"$gasrem_2276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2277" = icmp ugt i64 16, %"$gasrem_2276"
  br i1 %"$gascmp_2277", label %"$out_of_gas_2278", label %"$have_gas_2279"

"$out_of_gas_2278":                               ; preds = %"$have_gas_2273"
  call void @_out_of_gas()
  br label %"$have_gas_2279"

"$have_gas_2279":                                 ; preds = %"$out_of_gas_2278", %"$have_gas_2273"
  %"$consume_2280" = sub i64 %"$gasrem_2276", 16
  store i64 %"$consume_2280", i64* @_gasrem, align 8
  %"$execptr_load_2281" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_103_2282" = alloca %Uint256, align 8
  %"$$p_103_2283" = load %Uint256, %Uint256* %"$p_103", align 8
  store %Uint256 %"$$p_103_2283", %Uint256* %"$eq_$p_103_2282", align 8
  %"$eq_$ans_104_2284" = alloca %Uint256, align 8
  %"$$ans_104_2285" = load %Uint256, %Uint256* %"$ans_104", align 8
  store %Uint256 %"$$ans_104_2285", %Uint256* %"$eq_$ans_104_2284", align 8
  %"$eq_call_2286" = call %TName_Bool* @_eq_Uint256(i8* %"$execptr_load_2281", %Uint256* %"$eq_$p_103_2282", %Uint256* %"$eq_$ans_104_2284"), !dbg !415
  store %TName_Bool* %"$eq_call_2286", %TName_Bool** %"$res__105", align 8, !dbg !415
  %"$gasrem_2288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2289" = icmp ugt i64 1, %"$gasrem_2288"
  br i1 %"$gascmp_2289", label %"$out_of_gas_2290", label %"$have_gas_2291"

"$out_of_gas_2290":                               ; preds = %"$have_gas_2279"
  call void @_out_of_gas()
  br label %"$have_gas_2291"

"$have_gas_2291":                                 ; preds = %"$out_of_gas_2290", %"$have_gas_2279"
  %"$consume_2292" = sub i64 %"$gasrem_2288", 1
  store i64 %"$consume_2292", i64* @_gasrem, align 8
  %"$BoolUtils.andb_189" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2293" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2294" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2293", 0
  %"$BoolUtils.andb_envptr_2295" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2293", 1
  %"$$res_102_2296" = load %TName_Bool*, %TName_Bool** %"$res_102", align 8
  %"$BoolUtils.andb_call_2297" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2294"(i8* %"$BoolUtils.andb_envptr_2295", %TName_Bool* %"$$res_102_2296"), !dbg !416
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2297", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8, !dbg !416
  %"$BoolUtils.andb_190" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_190", metadata !417, metadata !DIExpression()), !dbg !416
  %"$$BoolUtils.andb_189_2298" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_189", align 8
  %"$$BoolUtils.andb_189_fptr_2299" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_2298", 0
  %"$$BoolUtils.andb_189_envptr_2300" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_189_2298", 1
  %"$$res__105_2301" = load %TName_Bool*, %TName_Bool** %"$res__105", align 8
  %"$$BoolUtils.andb_189_call_2302" = call %TName_Bool* %"$$BoolUtils.andb_189_fptr_2299"(i8* %"$$BoolUtils.andb_189_envptr_2300", %TName_Bool* %"$$res__105_2301"), !dbg !416
  store %TName_Bool* %"$$BoolUtils.andb_189_call_2302", %TName_Bool** %"$BoolUtils.andb_190", align 8, !dbg !416
  %"$$BoolUtils.andb_190_2303" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_190", align 8
  store %TName_Bool* %"$$BoolUtils.andb_190_2303", %TName_Bool** %"$res_106", align 8, !dbg !416
  %"$gasrem_2304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2305" = icmp ugt i64 1, %"$gasrem_2304"
  br i1 %"$gascmp_2305", label %"$out_of_gas_2306", label %"$have_gas_2307"

"$out_of_gas_2306":                               ; preds = %"$have_gas_2291"
  call void @_out_of_gas()
  br label %"$have_gas_2307"

"$have_gas_2307":                                 ; preds = %"$out_of_gas_2306", %"$have_gas_2291"
  %"$consume_2308" = sub i64 %"$gasrem_2304", 1
  store i64 %"$consume_2308", i64* @_gasrem, align 8
  %"$p_107" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$p_107", metadata !418, metadata !DIExpression()), !dbg !419
  %"$p1_2309" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2310" = extractvalue %Uint32 %"$p1_2309", 0
  %"$valueof_2311" = zext i32 %"$valueof_2310" to i64
  %"$gaslogof_2312" = uitofp i64 %"$valueof_2311" to double
  %"$gaslogof_2313" = fadd double %"$gaslogof_2312", 1.000000e+00
  %"$gaslogof_2314" = call double @llvm.log.f64(double %"$gaslogof_2313")
  %"$gaslogof_2315" = fptoui double %"$gaslogof_2314" to i64
  %"$gaslogof_2316" = add i64 %"$gaslogof_2315", 1
  %"$gasmul_2317" = mul i64 20, %"$gaslogof_2316"
  %"$gasmul_2318" = mul i64 %"$gasmul_2317", 4
  %"$gasrem_2319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2320" = icmp ugt i64 %"$gasmul_2318", %"$gasrem_2319"
  br i1 %"$gascmp_2320", label %"$out_of_gas_2321", label %"$have_gas_2322"

"$out_of_gas_2321":                               ; preds = %"$have_gas_2307"
  call void @_out_of_gas()
  br label %"$have_gas_2322"

"$have_gas_2322":                                 ; preds = %"$out_of_gas_2321", %"$have_gas_2307"
  %"$consume_2323" = sub i64 %"$gasrem_2319", %"$gasmul_2318"
  store i64 %"$consume_2323", i64* @_gasrem, align 8
  %"$execptr_load_2324" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2325" = alloca %Int256, align 8
  %"$t8_2326" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2326", %Int256* %"$pow_t8_2325", align 8
  %"$p1_2327" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2328" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2324", %Int256* %"$pow_t8_2325", %Uint32 %"$p1_2327"), !dbg !420
  %"$pow_2330" = load %Int256, %Int256* %"$pow_call_2328", align 8
  store %Int256 %"$pow_2330", %Int256* %"$p_107", align 8, !dbg !420
  %"$gasrem_2331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2332" = icmp ugt i64 1, %"$gasrem_2331"
  br i1 %"$gascmp_2332", label %"$out_of_gas_2333", label %"$have_gas_2334"

"$out_of_gas_2333":                               ; preds = %"$have_gas_2322"
  call void @_out_of_gas()
  br label %"$have_gas_2334"

"$have_gas_2334":                                 ; preds = %"$out_of_gas_2333", %"$have_gas_2322"
  %"$consume_2335" = sub i64 %"$gasrem_2331", 1
  store i64 %"$consume_2335", i64* @_gasrem, align 8
  %"$res_110" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_110", metadata !421, metadata !DIExpression()), !dbg !422
  %"$gasrem_2336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2337" = icmp ugt i64 1, %"$gasrem_2336"
  br i1 %"$gascmp_2337", label %"$out_of_gas_2338", label %"$have_gas_2339"

"$out_of_gas_2338":                               ; preds = %"$have_gas_2334"
  call void @_out_of_gas()
  br label %"$have_gas_2339"

"$have_gas_2339":                                 ; preds = %"$out_of_gas_2338", %"$have_gas_2334"
  %"$consume_2340" = sub i64 %"$gasrem_2336", 1
  store i64 %"$consume_2340", i64* @_gasrem, align 8
  %"$ans_108" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$ans_108", metadata !423, metadata !DIExpression()), !dbg !424
  %"$gasrem_2341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2342" = icmp ugt i64 1, %"$gasrem_2341"
  br i1 %"$gascmp_2342", label %"$out_of_gas_2343", label %"$have_gas_2344"

"$out_of_gas_2343":                               ; preds = %"$have_gas_2339"
  call void @_out_of_gas()
  br label %"$have_gas_2344"

"$have_gas_2344":                                 ; preds = %"$out_of_gas_2343", %"$have_gas_2339"
  %"$consume_2345" = sub i64 %"$gasrem_2341", 1
  store i64 %"$consume_2345", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_108", align 8, !dbg !425
  %"$gasrem_2346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2347" = icmp ugt i64 1, %"$gasrem_2346"
  br i1 %"$gascmp_2347", label %"$out_of_gas_2348", label %"$have_gas_2349"

"$out_of_gas_2348":                               ; preds = %"$have_gas_2344"
  call void @_out_of_gas()
  br label %"$have_gas_2349"

"$have_gas_2349":                                 ; preds = %"$out_of_gas_2348", %"$have_gas_2344"
  %"$consume_2350" = sub i64 %"$gasrem_2346", 1
  store i64 %"$consume_2350", i64* @_gasrem, align 8
  %"$res__109" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__109", metadata !426, metadata !DIExpression()), !dbg !427
  %"$gasrem_2352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2353" = icmp ugt i64 16, %"$gasrem_2352"
  br i1 %"$gascmp_2353", label %"$out_of_gas_2354", label %"$have_gas_2355"

"$out_of_gas_2354":                               ; preds = %"$have_gas_2349"
  call void @_out_of_gas()
  br label %"$have_gas_2355"

"$have_gas_2355":                                 ; preds = %"$out_of_gas_2354", %"$have_gas_2349"
  %"$consume_2356" = sub i64 %"$gasrem_2352", 16
  store i64 %"$consume_2356", i64* @_gasrem, align 8
  %"$execptr_load_2357" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_107_2358" = alloca %Int256, align 8
  %"$$p_107_2359" = load %Int256, %Int256* %"$p_107", align 8
  store %Int256 %"$$p_107_2359", %Int256* %"$eq_$p_107_2358", align 8
  %"$eq_$ans_108_2360" = alloca %Int256, align 8
  %"$$ans_108_2361" = load %Int256, %Int256* %"$ans_108", align 8
  store %Int256 %"$$ans_108_2361", %Int256* %"$eq_$ans_108_2360", align 8
  %"$eq_call_2362" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2357", %Int256* %"$eq_$p_107_2358", %Int256* %"$eq_$ans_108_2360"), !dbg !428
  store %TName_Bool* %"$eq_call_2362", %TName_Bool** %"$res__109", align 8, !dbg !428
  %"$gasrem_2364" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2365" = icmp ugt i64 1, %"$gasrem_2364"
  br i1 %"$gascmp_2365", label %"$out_of_gas_2366", label %"$have_gas_2367"

"$out_of_gas_2366":                               ; preds = %"$have_gas_2355"
  call void @_out_of_gas()
  br label %"$have_gas_2367"

"$have_gas_2367":                                 ; preds = %"$out_of_gas_2366", %"$have_gas_2355"
  %"$consume_2368" = sub i64 %"$gasrem_2364", 1
  store i64 %"$consume_2368", i64* @_gasrem, align 8
  %"$BoolUtils.andb_191" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2369" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2370" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2369", 0
  %"$BoolUtils.andb_envptr_2371" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2369", 1
  %"$$res_106_2372" = load %TName_Bool*, %TName_Bool** %"$res_106", align 8
  %"$BoolUtils.andb_call_2373" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2370"(i8* %"$BoolUtils.andb_envptr_2371", %TName_Bool* %"$$res_106_2372"), !dbg !429
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2373", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8, !dbg !429
  %"$BoolUtils.andb_192" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_192", metadata !430, metadata !DIExpression()), !dbg !429
  %"$$BoolUtils.andb_191_2374" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_191", align 8
  %"$$BoolUtils.andb_191_fptr_2375" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_2374", 0
  %"$$BoolUtils.andb_191_envptr_2376" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_191_2374", 1
  %"$$res__109_2377" = load %TName_Bool*, %TName_Bool** %"$res__109", align 8
  %"$$BoolUtils.andb_191_call_2378" = call %TName_Bool* %"$$BoolUtils.andb_191_fptr_2375"(i8* %"$$BoolUtils.andb_191_envptr_2376", %TName_Bool* %"$$res__109_2377"), !dbg !429
  store %TName_Bool* %"$$BoolUtils.andb_191_call_2378", %TName_Bool** %"$BoolUtils.andb_192", align 8, !dbg !429
  %"$$BoolUtils.andb_192_2379" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_192", align 8
  store %TName_Bool* %"$$BoolUtils.andb_192_2379", %TName_Bool** %"$res_110", align 8, !dbg !429
  %"$gasrem_2380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2381" = icmp ugt i64 1, %"$gasrem_2380"
  br i1 %"$gascmp_2381", label %"$out_of_gas_2382", label %"$have_gas_2383"

"$out_of_gas_2382":                               ; preds = %"$have_gas_2367"
  call void @_out_of_gas()
  br label %"$have_gas_2383"

"$have_gas_2383":                                 ; preds = %"$out_of_gas_2382", %"$have_gas_2367"
  %"$consume_2384" = sub i64 %"$gasrem_2380", 1
  store i64 %"$consume_2384", i64* @_gasrem, align 8
  %"$p_111" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$p_111", metadata !431, metadata !DIExpression()), !dbg !432
  %"$p2_2385" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2386" = extractvalue %Uint32 %"$p2_2385", 0
  %"$valueof_2387" = zext i32 %"$valueof_2386" to i64
  %"$gaslogof_2388" = uitofp i64 %"$valueof_2387" to double
  %"$gaslogof_2389" = fadd double %"$gaslogof_2388", 1.000000e+00
  %"$gaslogof_2390" = call double @llvm.log.f64(double %"$gaslogof_2389")
  %"$gaslogof_2391" = fptoui double %"$gaslogof_2390" to i64
  %"$gaslogof_2392" = add i64 %"$gaslogof_2391", 1
  %"$gasmul_2393" = mul i64 20, %"$gaslogof_2392"
  %"$gasmul_2394" = mul i64 %"$gasmul_2393", 4
  %"$gasrem_2395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2396" = icmp ugt i64 %"$gasmul_2394", %"$gasrem_2395"
  br i1 %"$gascmp_2396", label %"$out_of_gas_2397", label %"$have_gas_2398"

"$out_of_gas_2397":                               ; preds = %"$have_gas_2383"
  call void @_out_of_gas()
  br label %"$have_gas_2398"

"$have_gas_2398":                                 ; preds = %"$out_of_gas_2397", %"$have_gas_2383"
  %"$consume_2399" = sub i64 %"$gasrem_2395", %"$gasmul_2394"
  store i64 %"$consume_2399", i64* @_gasrem, align 8
  %"$execptr_load_2400" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2401" = alloca %Int256, align 8
  %"$t8_2402" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2402", %Int256* %"$pow_t8_2401", align 8
  %"$p2_2403" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2404" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2400", %Int256* %"$pow_t8_2401", %Uint32 %"$p2_2403"), !dbg !433
  %"$pow_2406" = load %Int256, %Int256* %"$pow_call_2404", align 8
  store %Int256 %"$pow_2406", %Int256* %"$p_111", align 8, !dbg !433
  %"$gasrem_2407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2408" = icmp ugt i64 1, %"$gasrem_2407"
  br i1 %"$gascmp_2408", label %"$out_of_gas_2409", label %"$have_gas_2410"

"$out_of_gas_2409":                               ; preds = %"$have_gas_2398"
  call void @_out_of_gas()
  br label %"$have_gas_2410"

"$have_gas_2410":                                 ; preds = %"$out_of_gas_2409", %"$have_gas_2398"
  %"$consume_2411" = sub i64 %"$gasrem_2407", 1
  store i64 %"$consume_2411", i64* @_gasrem, align 8
  %"$res_114" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_114", metadata !434, metadata !DIExpression()), !dbg !435
  %"$gasrem_2412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2413" = icmp ugt i64 1, %"$gasrem_2412"
  br i1 %"$gascmp_2413", label %"$out_of_gas_2414", label %"$have_gas_2415"

"$out_of_gas_2414":                               ; preds = %"$have_gas_2410"
  call void @_out_of_gas()
  br label %"$have_gas_2415"

"$have_gas_2415":                                 ; preds = %"$out_of_gas_2414", %"$have_gas_2410"
  %"$consume_2416" = sub i64 %"$gasrem_2412", 1
  store i64 %"$consume_2416", i64* @_gasrem, align 8
  %"$ans_112" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$ans_112", metadata !436, metadata !DIExpression()), !dbg !437
  %"$gasrem_2417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2418" = icmp ugt i64 1, %"$gasrem_2417"
  br i1 %"$gascmp_2418", label %"$out_of_gas_2419", label %"$have_gas_2420"

"$out_of_gas_2419":                               ; preds = %"$have_gas_2415"
  call void @_out_of_gas()
  br label %"$have_gas_2420"

"$have_gas_2420":                                 ; preds = %"$out_of_gas_2419", %"$have_gas_2415"
  %"$consume_2421" = sub i64 %"$gasrem_2417", 1
  store i64 %"$consume_2421", i64* @_gasrem, align 8
  store %Int256 { i256 -10001 }, %Int256* %"$ans_112", align 8, !dbg !438
  %"$gasrem_2422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2423" = icmp ugt i64 1, %"$gasrem_2422"
  br i1 %"$gascmp_2423", label %"$out_of_gas_2424", label %"$have_gas_2425"

"$out_of_gas_2424":                               ; preds = %"$have_gas_2420"
  call void @_out_of_gas()
  br label %"$have_gas_2425"

"$have_gas_2425":                                 ; preds = %"$out_of_gas_2424", %"$have_gas_2420"
  %"$consume_2426" = sub i64 %"$gasrem_2422", 1
  store i64 %"$consume_2426", i64* @_gasrem, align 8
  %"$res__113" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__113", metadata !439, metadata !DIExpression()), !dbg !440
  %"$gasrem_2428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2429" = icmp ugt i64 16, %"$gasrem_2428"
  br i1 %"$gascmp_2429", label %"$out_of_gas_2430", label %"$have_gas_2431"

"$out_of_gas_2430":                               ; preds = %"$have_gas_2425"
  call void @_out_of_gas()
  br label %"$have_gas_2431"

"$have_gas_2431":                                 ; preds = %"$out_of_gas_2430", %"$have_gas_2425"
  %"$consume_2432" = sub i64 %"$gasrem_2428", 16
  store i64 %"$consume_2432", i64* @_gasrem, align 8
  %"$execptr_load_2433" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_111_2434" = alloca %Int256, align 8
  %"$$p_111_2435" = load %Int256, %Int256* %"$p_111", align 8
  store %Int256 %"$$p_111_2435", %Int256* %"$eq_$p_111_2434", align 8
  %"$eq_$ans_112_2436" = alloca %Int256, align 8
  %"$$ans_112_2437" = load %Int256, %Int256* %"$ans_112", align 8
  store %Int256 %"$$ans_112_2437", %Int256* %"$eq_$ans_112_2436", align 8
  %"$eq_call_2438" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2433", %Int256* %"$eq_$p_111_2434", %Int256* %"$eq_$ans_112_2436"), !dbg !441
  store %TName_Bool* %"$eq_call_2438", %TName_Bool** %"$res__113", align 8, !dbg !441
  %"$gasrem_2440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2441" = icmp ugt i64 1, %"$gasrem_2440"
  br i1 %"$gascmp_2441", label %"$out_of_gas_2442", label %"$have_gas_2443"

"$out_of_gas_2442":                               ; preds = %"$have_gas_2431"
  call void @_out_of_gas()
  br label %"$have_gas_2443"

"$have_gas_2443":                                 ; preds = %"$out_of_gas_2442", %"$have_gas_2431"
  %"$consume_2444" = sub i64 %"$gasrem_2440", 1
  store i64 %"$consume_2444", i64* @_gasrem, align 8
  %"$BoolUtils.andb_193" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2445" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2446" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2445", 0
  %"$BoolUtils.andb_envptr_2447" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2445", 1
  %"$$res_110_2448" = load %TName_Bool*, %TName_Bool** %"$res_110", align 8
  %"$BoolUtils.andb_call_2449" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2446"(i8* %"$BoolUtils.andb_envptr_2447", %TName_Bool* %"$$res_110_2448"), !dbg !442
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2449", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8, !dbg !442
  %"$BoolUtils.andb_194" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_194", metadata !443, metadata !DIExpression()), !dbg !442
  %"$$BoolUtils.andb_193_2450" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_193", align 8
  %"$$BoolUtils.andb_193_fptr_2451" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2450", 0
  %"$$BoolUtils.andb_193_envptr_2452" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_193_2450", 1
  %"$$res__113_2453" = load %TName_Bool*, %TName_Bool** %"$res__113", align 8
  %"$$BoolUtils.andb_193_call_2454" = call %TName_Bool* %"$$BoolUtils.andb_193_fptr_2451"(i8* %"$$BoolUtils.andb_193_envptr_2452", %TName_Bool* %"$$res__113_2453"), !dbg !442
  store %TName_Bool* %"$$BoolUtils.andb_193_call_2454", %TName_Bool** %"$BoolUtils.andb_194", align 8, !dbg !442
  %"$$BoolUtils.andb_194_2455" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_194", align 8
  store %TName_Bool* %"$$BoolUtils.andb_194_2455", %TName_Bool** %"$res_114", align 8, !dbg !442
  %"$gasrem_2456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2457" = icmp ugt i64 1, %"$gasrem_2456"
  br i1 %"$gascmp_2457", label %"$out_of_gas_2458", label %"$have_gas_2459"

"$out_of_gas_2458":                               ; preds = %"$have_gas_2443"
  call void @_out_of_gas()
  br label %"$have_gas_2459"

"$have_gas_2459":                                 ; preds = %"$out_of_gas_2458", %"$have_gas_2443"
  %"$consume_2460" = sub i64 %"$gasrem_2456", 1
  store i64 %"$consume_2460", i64* @_gasrem, align 8
  %"$p_115" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$p_115", metadata !444, metadata !DIExpression()), !dbg !445
  %"$p3_2461" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2462" = extractvalue %Uint32 %"$p3_2461", 0
  %"$valueof_2463" = zext i32 %"$valueof_2462" to i64
  %"$gaslogof_2464" = uitofp i64 %"$valueof_2463" to double
  %"$gaslogof_2465" = fadd double %"$gaslogof_2464", 1.000000e+00
  %"$gaslogof_2466" = call double @llvm.log.f64(double %"$gaslogof_2465")
  %"$gaslogof_2467" = fptoui double %"$gaslogof_2466" to i64
  %"$gaslogof_2468" = add i64 %"$gaslogof_2467", 1
  %"$gasmul_2469" = mul i64 20, %"$gaslogof_2468"
  %"$gasmul_2470" = mul i64 %"$gasmul_2469", 4
  %"$gasrem_2471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2472" = icmp ugt i64 %"$gasmul_2470", %"$gasrem_2471"
  br i1 %"$gascmp_2472", label %"$out_of_gas_2473", label %"$have_gas_2474"

"$out_of_gas_2473":                               ; preds = %"$have_gas_2459"
  call void @_out_of_gas()
  br label %"$have_gas_2474"

"$have_gas_2474":                                 ; preds = %"$out_of_gas_2473", %"$have_gas_2459"
  %"$consume_2475" = sub i64 %"$gasrem_2471", %"$gasmul_2470"
  store i64 %"$consume_2475", i64* @_gasrem, align 8
  %"$execptr_load_2476" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2477" = alloca %Int256, align 8
  %"$t8_2478" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2478", %Int256* %"$pow_t8_2477", align 8
  %"$p3_2479" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2480" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2476", %Int256* %"$pow_t8_2477", %Uint32 %"$p3_2479"), !dbg !446
  %"$pow_2482" = load %Int256, %Int256* %"$pow_call_2480", align 8
  store %Int256 %"$pow_2482", %Int256* %"$p_115", align 8, !dbg !446
  %"$gasrem_2483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2484" = icmp ugt i64 1, %"$gasrem_2483"
  br i1 %"$gascmp_2484", label %"$out_of_gas_2485", label %"$have_gas_2486"

"$out_of_gas_2485":                               ; preds = %"$have_gas_2474"
  call void @_out_of_gas()
  br label %"$have_gas_2486"

"$have_gas_2486":                                 ; preds = %"$out_of_gas_2485", %"$have_gas_2474"
  %"$consume_2487" = sub i64 %"$gasrem_2483", 1
  store i64 %"$consume_2487", i64* @_gasrem, align 8
  %"$res_118" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_118", metadata !447, metadata !DIExpression()), !dbg !448
  %"$gasrem_2488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2489" = icmp ugt i64 1, %"$gasrem_2488"
  br i1 %"$gascmp_2489", label %"$out_of_gas_2490", label %"$have_gas_2491"

"$out_of_gas_2490":                               ; preds = %"$have_gas_2486"
  call void @_out_of_gas()
  br label %"$have_gas_2491"

"$have_gas_2491":                                 ; preds = %"$out_of_gas_2490", %"$have_gas_2486"
  %"$consume_2492" = sub i64 %"$gasrem_2488", 1
  store i64 %"$consume_2492", i64* @_gasrem, align 8
  %"$ans_116" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$ans_116", metadata !449, metadata !DIExpression()), !dbg !450
  %"$gasrem_2493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2494" = icmp ugt i64 1, %"$gasrem_2493"
  br i1 %"$gascmp_2494", label %"$out_of_gas_2495", label %"$have_gas_2496"

"$out_of_gas_2495":                               ; preds = %"$have_gas_2491"
  call void @_out_of_gas()
  br label %"$have_gas_2496"

"$have_gas_2496":                                 ; preds = %"$out_of_gas_2495", %"$have_gas_2491"
  %"$consume_2497" = sub i64 %"$gasrem_2493", 1
  store i64 %"$consume_2497", i64* @_gasrem, align 8
  store %Int256 { i256 10004000600040001 }, %Int256* %"$ans_116", align 8, !dbg !451
  %"$gasrem_2498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2499" = icmp ugt i64 1, %"$gasrem_2498"
  br i1 %"$gascmp_2499", label %"$out_of_gas_2500", label %"$have_gas_2501"

"$out_of_gas_2500":                               ; preds = %"$have_gas_2496"
  call void @_out_of_gas()
  br label %"$have_gas_2501"

"$have_gas_2501":                                 ; preds = %"$out_of_gas_2500", %"$have_gas_2496"
  %"$consume_2502" = sub i64 %"$gasrem_2498", 1
  store i64 %"$consume_2502", i64* @_gasrem, align 8
  %"$res__117" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__117", metadata !452, metadata !DIExpression()), !dbg !453
  %"$gasrem_2504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2505" = icmp ugt i64 16, %"$gasrem_2504"
  br i1 %"$gascmp_2505", label %"$out_of_gas_2506", label %"$have_gas_2507"

"$out_of_gas_2506":                               ; preds = %"$have_gas_2501"
  call void @_out_of_gas()
  br label %"$have_gas_2507"

"$have_gas_2507":                                 ; preds = %"$out_of_gas_2506", %"$have_gas_2501"
  %"$consume_2508" = sub i64 %"$gasrem_2504", 16
  store i64 %"$consume_2508", i64* @_gasrem, align 8
  %"$execptr_load_2509" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_115_2510" = alloca %Int256, align 8
  %"$$p_115_2511" = load %Int256, %Int256* %"$p_115", align 8
  store %Int256 %"$$p_115_2511", %Int256* %"$eq_$p_115_2510", align 8
  %"$eq_$ans_116_2512" = alloca %Int256, align 8
  %"$$ans_116_2513" = load %Int256, %Int256* %"$ans_116", align 8
  store %Int256 %"$$ans_116_2513", %Int256* %"$eq_$ans_116_2512", align 8
  %"$eq_call_2514" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2509", %Int256* %"$eq_$p_115_2510", %Int256* %"$eq_$ans_116_2512"), !dbg !454
  store %TName_Bool* %"$eq_call_2514", %TName_Bool** %"$res__117", align 8, !dbg !454
  %"$gasrem_2516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2517" = icmp ugt i64 1, %"$gasrem_2516"
  br i1 %"$gascmp_2517", label %"$out_of_gas_2518", label %"$have_gas_2519"

"$out_of_gas_2518":                               ; preds = %"$have_gas_2507"
  call void @_out_of_gas()
  br label %"$have_gas_2519"

"$have_gas_2519":                                 ; preds = %"$out_of_gas_2518", %"$have_gas_2507"
  %"$consume_2520" = sub i64 %"$gasrem_2516", 1
  store i64 %"$consume_2520", i64* @_gasrem, align 8
  %"$BoolUtils.andb_195" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2521" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2522" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2521", 0
  %"$BoolUtils.andb_envptr_2523" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2521", 1
  %"$$res_114_2524" = load %TName_Bool*, %TName_Bool** %"$res_114", align 8
  %"$BoolUtils.andb_call_2525" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2522"(i8* %"$BoolUtils.andb_envptr_2523", %TName_Bool* %"$$res_114_2524"), !dbg !455
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2525", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8, !dbg !455
  %"$BoolUtils.andb_196" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_196", metadata !456, metadata !DIExpression()), !dbg !455
  %"$$BoolUtils.andb_195_2526" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_195", align 8
  %"$$BoolUtils.andb_195_fptr_2527" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2526", 0
  %"$$BoolUtils.andb_195_envptr_2528" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_195_2526", 1
  %"$$res__117_2529" = load %TName_Bool*, %TName_Bool** %"$res__117", align 8
  %"$$BoolUtils.andb_195_call_2530" = call %TName_Bool* %"$$BoolUtils.andb_195_fptr_2527"(i8* %"$$BoolUtils.andb_195_envptr_2528", %TName_Bool* %"$$res__117_2529"), !dbg !455
  store %TName_Bool* %"$$BoolUtils.andb_195_call_2530", %TName_Bool** %"$BoolUtils.andb_196", align 8, !dbg !455
  %"$$BoolUtils.andb_196_2531" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_196", align 8
  store %TName_Bool* %"$$BoolUtils.andb_196_2531", %TName_Bool** %"$res_118", align 8, !dbg !455
  %"$gasrem_2532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2533" = icmp ugt i64 1, %"$gasrem_2532"
  br i1 %"$gascmp_2533", label %"$out_of_gas_2534", label %"$have_gas_2535"

"$out_of_gas_2534":                               ; preds = %"$have_gas_2519"
  call void @_out_of_gas()
  br label %"$have_gas_2535"

"$have_gas_2535":                                 ; preds = %"$out_of_gas_2534", %"$have_gas_2519"
  %"$consume_2536" = sub i64 %"$gasrem_2532", 1
  store i64 %"$consume_2536", i64* @_gasrem, align 8
  %"$p_119" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$p_119", metadata !457, metadata !DIExpression()), !dbg !458
  %"$p4_2537" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2538" = extractvalue %Uint32 %"$p4_2537", 0
  %"$valueof_2539" = zext i32 %"$valueof_2538" to i64
  %"$gaslogof_2540" = uitofp i64 %"$valueof_2539" to double
  %"$gaslogof_2541" = fadd double %"$gaslogof_2540", 1.000000e+00
  %"$gaslogof_2542" = call double @llvm.log.f64(double %"$gaslogof_2541")
  %"$gaslogof_2543" = fptoui double %"$gaslogof_2542" to i64
  %"$gaslogof_2544" = add i64 %"$gaslogof_2543", 1
  %"$gasmul_2545" = mul i64 20, %"$gaslogof_2544"
  %"$gasmul_2546" = mul i64 %"$gasmul_2545", 4
  %"$gasrem_2547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2548" = icmp ugt i64 %"$gasmul_2546", %"$gasrem_2547"
  br i1 %"$gascmp_2548", label %"$out_of_gas_2549", label %"$have_gas_2550"

"$out_of_gas_2549":                               ; preds = %"$have_gas_2535"
  call void @_out_of_gas()
  br label %"$have_gas_2550"

"$have_gas_2550":                                 ; preds = %"$out_of_gas_2549", %"$have_gas_2535"
  %"$consume_2551" = sub i64 %"$gasrem_2547", %"$gasmul_2546"
  store i64 %"$consume_2551", i64* @_gasrem, align 8
  %"$execptr_load_2552" = load i8*, i8** @_execptr, align 8
  %"$pow_t8_2553" = alloca %Int256, align 8
  %"$t8_2554" = load %Int256, %Int256* %t8, align 8
  store %Int256 %"$t8_2554", %Int256* %"$pow_t8_2553", align 8
  %"$p4_2555" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2556" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2552", %Int256* %"$pow_t8_2553", %Uint32 %"$p4_2555"), !dbg !459
  %"$pow_2558" = load %Int256, %Int256* %"$pow_call_2556", align 8
  store %Int256 %"$pow_2558", %Int256* %"$p_119", align 8, !dbg !459
  %"$gasrem_2559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2560" = icmp ugt i64 1, %"$gasrem_2559"
  br i1 %"$gascmp_2560", label %"$out_of_gas_2561", label %"$have_gas_2562"

"$out_of_gas_2561":                               ; preds = %"$have_gas_2550"
  call void @_out_of_gas()
  br label %"$have_gas_2562"

"$have_gas_2562":                                 ; preds = %"$out_of_gas_2561", %"$have_gas_2550"
  %"$consume_2563" = sub i64 %"$gasrem_2559", 1
  store i64 %"$consume_2563", i64* @_gasrem, align 8
  %"$res_122" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_122", metadata !460, metadata !DIExpression()), !dbg !461
  %"$gasrem_2564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2565" = icmp ugt i64 1, %"$gasrem_2564"
  br i1 %"$gascmp_2565", label %"$out_of_gas_2566", label %"$have_gas_2567"

"$out_of_gas_2566":                               ; preds = %"$have_gas_2562"
  call void @_out_of_gas()
  br label %"$have_gas_2567"

"$have_gas_2567":                                 ; preds = %"$out_of_gas_2566", %"$have_gas_2562"
  %"$consume_2568" = sub i64 %"$gasrem_2564", 1
  store i64 %"$consume_2568", i64* @_gasrem, align 8
  %"$ans_120" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$ans_120", metadata !462, metadata !DIExpression()), !dbg !463
  %"$gasrem_2569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2570" = icmp ugt i64 1, %"$gasrem_2569"
  br i1 %"$gascmp_2570", label %"$out_of_gas_2571", label %"$have_gas_2572"

"$out_of_gas_2571":                               ; preds = %"$have_gas_2567"
  call void @_out_of_gas()
  br label %"$have_gas_2572"

"$have_gas_2572":                                 ; preds = %"$out_of_gas_2571", %"$have_gas_2567"
  %"$consume_2573" = sub i64 %"$gasrem_2569", 1
  store i64 %"$consume_2573", i64* @_gasrem, align 8
  store %Int256 { i256 10010004501200210025202100120004500100001 }, %Int256* %"$ans_120", align 8, !dbg !464
  %"$gasrem_2574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2575" = icmp ugt i64 1, %"$gasrem_2574"
  br i1 %"$gascmp_2575", label %"$out_of_gas_2576", label %"$have_gas_2577"

"$out_of_gas_2576":                               ; preds = %"$have_gas_2572"
  call void @_out_of_gas()
  br label %"$have_gas_2577"

"$have_gas_2577":                                 ; preds = %"$out_of_gas_2576", %"$have_gas_2572"
  %"$consume_2578" = sub i64 %"$gasrem_2574", 1
  store i64 %"$consume_2578", i64* @_gasrem, align 8
  %"$res__121" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__121", metadata !465, metadata !DIExpression()), !dbg !466
  %"$gasrem_2580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2581" = icmp ugt i64 16, %"$gasrem_2580"
  br i1 %"$gascmp_2581", label %"$out_of_gas_2582", label %"$have_gas_2583"

"$out_of_gas_2582":                               ; preds = %"$have_gas_2577"
  call void @_out_of_gas()
  br label %"$have_gas_2583"

"$have_gas_2583":                                 ; preds = %"$out_of_gas_2582", %"$have_gas_2577"
  %"$consume_2584" = sub i64 %"$gasrem_2580", 16
  store i64 %"$consume_2584", i64* @_gasrem, align 8
  %"$execptr_load_2585" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_119_2586" = alloca %Int256, align 8
  %"$$p_119_2587" = load %Int256, %Int256* %"$p_119", align 8
  store %Int256 %"$$p_119_2587", %Int256* %"$eq_$p_119_2586", align 8
  %"$eq_$ans_120_2588" = alloca %Int256, align 8
  %"$$ans_120_2589" = load %Int256, %Int256* %"$ans_120", align 8
  store %Int256 %"$$ans_120_2589", %Int256* %"$eq_$ans_120_2588", align 8
  %"$eq_call_2590" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2585", %Int256* %"$eq_$p_119_2586", %Int256* %"$eq_$ans_120_2588"), !dbg !467
  store %TName_Bool* %"$eq_call_2590", %TName_Bool** %"$res__121", align 8, !dbg !467
  %"$gasrem_2592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2593" = icmp ugt i64 1, %"$gasrem_2592"
  br i1 %"$gascmp_2593", label %"$out_of_gas_2594", label %"$have_gas_2595"

"$out_of_gas_2594":                               ; preds = %"$have_gas_2583"
  call void @_out_of_gas()
  br label %"$have_gas_2595"

"$have_gas_2595":                                 ; preds = %"$out_of_gas_2594", %"$have_gas_2583"
  %"$consume_2596" = sub i64 %"$gasrem_2592", 1
  store i64 %"$consume_2596", i64* @_gasrem, align 8
  %"$BoolUtils.andb_197" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2597" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2598" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2597", 0
  %"$BoolUtils.andb_envptr_2599" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2597", 1
  %"$$res_118_2600" = load %TName_Bool*, %TName_Bool** %"$res_118", align 8
  %"$BoolUtils.andb_call_2601" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2598"(i8* %"$BoolUtils.andb_envptr_2599", %TName_Bool* %"$$res_118_2600"), !dbg !468
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2601", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8, !dbg !468
  %"$BoolUtils.andb_198" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_198", metadata !469, metadata !DIExpression()), !dbg !468
  %"$$BoolUtils.andb_197_2602" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_197", align 8
  %"$$BoolUtils.andb_197_fptr_2603" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2602", 0
  %"$$BoolUtils.andb_197_envptr_2604" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_197_2602", 1
  %"$$res__121_2605" = load %TName_Bool*, %TName_Bool** %"$res__121", align 8
  %"$$BoolUtils.andb_197_call_2606" = call %TName_Bool* %"$$BoolUtils.andb_197_fptr_2603"(i8* %"$$BoolUtils.andb_197_envptr_2604", %TName_Bool* %"$$res__121_2605"), !dbg !468
  store %TName_Bool* %"$$BoolUtils.andb_197_call_2606", %TName_Bool** %"$BoolUtils.andb_198", align 8, !dbg !468
  %"$$BoolUtils.andb_198_2607" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_198", align 8
  store %TName_Bool* %"$$BoolUtils.andb_198_2607", %TName_Bool** %"$res_122", align 8, !dbg !468
  %"$gasrem_2608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2609" = icmp ugt i64 1, %"$gasrem_2608"
  br i1 %"$gascmp_2609", label %"$out_of_gas_2610", label %"$have_gas_2611"

"$out_of_gas_2610":                               ; preds = %"$have_gas_2595"
  call void @_out_of_gas()
  br label %"$have_gas_2611"

"$have_gas_2611":                                 ; preds = %"$out_of_gas_2610", %"$have_gas_2595"
  %"$consume_2612" = sub i64 %"$gasrem_2608", 1
  store i64 %"$consume_2612", i64* @_gasrem, align 8
  %"$p_123" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$p_123", metadata !470, metadata !DIExpression()), !dbg !471
  %"$p1_2613" = load %Uint32, %Uint32* %p1, align 4
  %"$valueof_2614" = extractvalue %Uint32 %"$p1_2613", 0
  %"$valueof_2615" = zext i32 %"$valueof_2614" to i64
  %"$gaslogof_2616" = uitofp i64 %"$valueof_2615" to double
  %"$gaslogof_2617" = fadd double %"$gaslogof_2616", 1.000000e+00
  %"$gaslogof_2618" = call double @llvm.log.f64(double %"$gaslogof_2617")
  %"$gaslogof_2619" = fptoui double %"$gaslogof_2618" to i64
  %"$gaslogof_2620" = add i64 %"$gaslogof_2619", 1
  %"$gasmul_2621" = mul i64 20, %"$gaslogof_2620"
  %"$gasmul_2622" = mul i64 %"$gasmul_2621", 4
  %"$gasrem_2623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2624" = icmp ugt i64 %"$gasmul_2622", %"$gasrem_2623"
  br i1 %"$gascmp_2624", label %"$out_of_gas_2625", label %"$have_gas_2626"

"$out_of_gas_2625":                               ; preds = %"$have_gas_2611"
  call void @_out_of_gas()
  br label %"$have_gas_2626"

"$have_gas_2626":                                 ; preds = %"$out_of_gas_2625", %"$have_gas_2611"
  %"$consume_2627" = sub i64 %"$gasrem_2623", %"$gasmul_2622"
  store i64 %"$consume_2627", i64* @_gasrem, align 8
  %"$execptr_load_2628" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2629" = alloca %Int256, align 8
  %"$t9_2630" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2630", %Int256* %"$pow_t9_2629", align 8
  %"$p1_2631" = load %Uint32, %Uint32* %p1, align 4
  %"$pow_call_2632" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2628", %Int256* %"$pow_t9_2629", %Uint32 %"$p1_2631"), !dbg !472
  %"$pow_2634" = load %Int256, %Int256* %"$pow_call_2632", align 8
  store %Int256 %"$pow_2634", %Int256* %"$p_123", align 8, !dbg !472
  %"$gasrem_2635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2636" = icmp ugt i64 1, %"$gasrem_2635"
  br i1 %"$gascmp_2636", label %"$out_of_gas_2637", label %"$have_gas_2638"

"$out_of_gas_2637":                               ; preds = %"$have_gas_2626"
  call void @_out_of_gas()
  br label %"$have_gas_2638"

"$have_gas_2638":                                 ; preds = %"$out_of_gas_2637", %"$have_gas_2626"
  %"$consume_2639" = sub i64 %"$gasrem_2635", 1
  store i64 %"$consume_2639", i64* @_gasrem, align 8
  %"$res_126" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_126", metadata !473, metadata !DIExpression()), !dbg !474
  %"$gasrem_2640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2641" = icmp ugt i64 1, %"$gasrem_2640"
  br i1 %"$gascmp_2641", label %"$out_of_gas_2642", label %"$have_gas_2643"

"$out_of_gas_2642":                               ; preds = %"$have_gas_2638"
  call void @_out_of_gas()
  br label %"$have_gas_2643"

"$have_gas_2643":                                 ; preds = %"$out_of_gas_2642", %"$have_gas_2638"
  %"$consume_2644" = sub i64 %"$gasrem_2640", 1
  store i64 %"$consume_2644", i64* @_gasrem, align 8
  %"$ans_124" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$ans_124", metadata !475, metadata !DIExpression()), !dbg !476
  %"$gasrem_2645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2646" = icmp ugt i64 1, %"$gasrem_2645"
  br i1 %"$gascmp_2646", label %"$out_of_gas_2647", label %"$have_gas_2648"

"$out_of_gas_2647":                               ; preds = %"$have_gas_2643"
  call void @_out_of_gas()
  br label %"$have_gas_2648"

"$have_gas_2648":                                 ; preds = %"$out_of_gas_2647", %"$have_gas_2643"
  %"$consume_2649" = sub i64 %"$gasrem_2645", 1
  store i64 %"$consume_2649", i64* @_gasrem, align 8
  store %Int256 { i256 1 }, %Int256* %"$ans_124", align 8, !dbg !477
  %"$gasrem_2650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2651" = icmp ugt i64 1, %"$gasrem_2650"
  br i1 %"$gascmp_2651", label %"$out_of_gas_2652", label %"$have_gas_2653"

"$out_of_gas_2652":                               ; preds = %"$have_gas_2648"
  call void @_out_of_gas()
  br label %"$have_gas_2653"

"$have_gas_2653":                                 ; preds = %"$out_of_gas_2652", %"$have_gas_2648"
  %"$consume_2654" = sub i64 %"$gasrem_2650", 1
  store i64 %"$consume_2654", i64* @_gasrem, align 8
  %"$res__125" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__125", metadata !478, metadata !DIExpression()), !dbg !479
  %"$gasrem_2656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2657" = icmp ugt i64 16, %"$gasrem_2656"
  br i1 %"$gascmp_2657", label %"$out_of_gas_2658", label %"$have_gas_2659"

"$out_of_gas_2658":                               ; preds = %"$have_gas_2653"
  call void @_out_of_gas()
  br label %"$have_gas_2659"

"$have_gas_2659":                                 ; preds = %"$out_of_gas_2658", %"$have_gas_2653"
  %"$consume_2660" = sub i64 %"$gasrem_2656", 16
  store i64 %"$consume_2660", i64* @_gasrem, align 8
  %"$execptr_load_2661" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_123_2662" = alloca %Int256, align 8
  %"$$p_123_2663" = load %Int256, %Int256* %"$p_123", align 8
  store %Int256 %"$$p_123_2663", %Int256* %"$eq_$p_123_2662", align 8
  %"$eq_$ans_124_2664" = alloca %Int256, align 8
  %"$$ans_124_2665" = load %Int256, %Int256* %"$ans_124", align 8
  store %Int256 %"$$ans_124_2665", %Int256* %"$eq_$ans_124_2664", align 8
  %"$eq_call_2666" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2661", %Int256* %"$eq_$p_123_2662", %Int256* %"$eq_$ans_124_2664"), !dbg !480
  store %TName_Bool* %"$eq_call_2666", %TName_Bool** %"$res__125", align 8, !dbg !480
  %"$gasrem_2668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2669" = icmp ugt i64 1, %"$gasrem_2668"
  br i1 %"$gascmp_2669", label %"$out_of_gas_2670", label %"$have_gas_2671"

"$out_of_gas_2670":                               ; preds = %"$have_gas_2659"
  call void @_out_of_gas()
  br label %"$have_gas_2671"

"$have_gas_2671":                                 ; preds = %"$out_of_gas_2670", %"$have_gas_2659"
  %"$consume_2672" = sub i64 %"$gasrem_2668", 1
  store i64 %"$consume_2672", i64* @_gasrem, align 8
  %"$BoolUtils.andb_199" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2673" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2674" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2673", 0
  %"$BoolUtils.andb_envptr_2675" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2673", 1
  %"$$res_122_2676" = load %TName_Bool*, %TName_Bool** %"$res_122", align 8
  %"$BoolUtils.andb_call_2677" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2674"(i8* %"$BoolUtils.andb_envptr_2675", %TName_Bool* %"$$res_122_2676"), !dbg !481
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2677", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8, !dbg !481
  %"$BoolUtils.andb_200" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_200", metadata !482, metadata !DIExpression()), !dbg !481
  %"$$BoolUtils.andb_199_2678" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_199", align 8
  %"$$BoolUtils.andb_199_fptr_2679" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2678", 0
  %"$$BoolUtils.andb_199_envptr_2680" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_199_2678", 1
  %"$$res__125_2681" = load %TName_Bool*, %TName_Bool** %"$res__125", align 8
  %"$$BoolUtils.andb_199_call_2682" = call %TName_Bool* %"$$BoolUtils.andb_199_fptr_2679"(i8* %"$$BoolUtils.andb_199_envptr_2680", %TName_Bool* %"$$res__125_2681"), !dbg !481
  store %TName_Bool* %"$$BoolUtils.andb_199_call_2682", %TName_Bool** %"$BoolUtils.andb_200", align 8, !dbg !481
  %"$$BoolUtils.andb_200_2683" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_200", align 8
  store %TName_Bool* %"$$BoolUtils.andb_200_2683", %TName_Bool** %"$res_126", align 8, !dbg !481
  %"$gasrem_2684" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2685" = icmp ugt i64 1, %"$gasrem_2684"
  br i1 %"$gascmp_2685", label %"$out_of_gas_2686", label %"$have_gas_2687"

"$out_of_gas_2686":                               ; preds = %"$have_gas_2671"
  call void @_out_of_gas()
  br label %"$have_gas_2687"

"$have_gas_2687":                                 ; preds = %"$out_of_gas_2686", %"$have_gas_2671"
  %"$consume_2688" = sub i64 %"$gasrem_2684", 1
  store i64 %"$consume_2688", i64* @_gasrem, align 8
  %"$p_127" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$p_127", metadata !483, metadata !DIExpression()), !dbg !484
  %"$p2_2689" = load %Uint32, %Uint32* %p2, align 4
  %"$valueof_2690" = extractvalue %Uint32 %"$p2_2689", 0
  %"$valueof_2691" = zext i32 %"$valueof_2690" to i64
  %"$gaslogof_2692" = uitofp i64 %"$valueof_2691" to double
  %"$gaslogof_2693" = fadd double %"$gaslogof_2692", 1.000000e+00
  %"$gaslogof_2694" = call double @llvm.log.f64(double %"$gaslogof_2693")
  %"$gaslogof_2695" = fptoui double %"$gaslogof_2694" to i64
  %"$gaslogof_2696" = add i64 %"$gaslogof_2695", 1
  %"$gasmul_2697" = mul i64 20, %"$gaslogof_2696"
  %"$gasmul_2698" = mul i64 %"$gasmul_2697", 4
  %"$gasrem_2699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2700" = icmp ugt i64 %"$gasmul_2698", %"$gasrem_2699"
  br i1 %"$gascmp_2700", label %"$out_of_gas_2701", label %"$have_gas_2702"

"$out_of_gas_2701":                               ; preds = %"$have_gas_2687"
  call void @_out_of_gas()
  br label %"$have_gas_2702"

"$have_gas_2702":                                 ; preds = %"$out_of_gas_2701", %"$have_gas_2687"
  %"$consume_2703" = sub i64 %"$gasrem_2699", %"$gasmul_2698"
  store i64 %"$consume_2703", i64* @_gasrem, align 8
  %"$execptr_load_2704" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2705" = alloca %Int256, align 8
  %"$t9_2706" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2706", %Int256* %"$pow_t9_2705", align 8
  %"$p2_2707" = load %Uint32, %Uint32* %p2, align 4
  %"$pow_call_2708" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2704", %Int256* %"$pow_t9_2705", %Uint32 %"$p2_2707"), !dbg !485
  %"$pow_2710" = load %Int256, %Int256* %"$pow_call_2708", align 8
  store %Int256 %"$pow_2710", %Int256* %"$p_127", align 8, !dbg !485
  %"$gasrem_2711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2712" = icmp ugt i64 1, %"$gasrem_2711"
  br i1 %"$gascmp_2712", label %"$out_of_gas_2713", label %"$have_gas_2714"

"$out_of_gas_2713":                               ; preds = %"$have_gas_2702"
  call void @_out_of_gas()
  br label %"$have_gas_2714"

"$have_gas_2714":                                 ; preds = %"$out_of_gas_2713", %"$have_gas_2702"
  %"$consume_2715" = sub i64 %"$gasrem_2711", 1
  store i64 %"$consume_2715", i64* @_gasrem, align 8
  %"$res_130" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_130", metadata !486, metadata !DIExpression()), !dbg !487
  %"$gasrem_2716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2717" = icmp ugt i64 1, %"$gasrem_2716"
  br i1 %"$gascmp_2717", label %"$out_of_gas_2718", label %"$have_gas_2719"

"$out_of_gas_2718":                               ; preds = %"$have_gas_2714"
  call void @_out_of_gas()
  br label %"$have_gas_2719"

"$have_gas_2719":                                 ; preds = %"$out_of_gas_2718", %"$have_gas_2714"
  %"$consume_2720" = sub i64 %"$gasrem_2716", 1
  store i64 %"$consume_2720", i64* @_gasrem, align 8
  %"$ans_128" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$ans_128", metadata !488, metadata !DIExpression()), !dbg !489
  %"$gasrem_2721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2722" = icmp ugt i64 1, %"$gasrem_2721"
  br i1 %"$gascmp_2722", label %"$out_of_gas_2723", label %"$have_gas_2724"

"$out_of_gas_2723":                               ; preds = %"$have_gas_2719"
  call void @_out_of_gas()
  br label %"$have_gas_2724"

"$have_gas_2724":                                 ; preds = %"$out_of_gas_2723", %"$have_gas_2719"
  %"$consume_2725" = sub i64 %"$gasrem_2721", 1
  store i64 %"$consume_2725", i64* @_gasrem, align 8
  store %Int256 { i256 10002 }, %Int256* %"$ans_128", align 8, !dbg !490
  %"$gasrem_2726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2727" = icmp ugt i64 1, %"$gasrem_2726"
  br i1 %"$gascmp_2727", label %"$out_of_gas_2728", label %"$have_gas_2729"

"$out_of_gas_2728":                               ; preds = %"$have_gas_2724"
  call void @_out_of_gas()
  br label %"$have_gas_2729"

"$have_gas_2729":                                 ; preds = %"$out_of_gas_2728", %"$have_gas_2724"
  %"$consume_2730" = sub i64 %"$gasrem_2726", 1
  store i64 %"$consume_2730", i64* @_gasrem, align 8
  %"$res__129" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__129", metadata !491, metadata !DIExpression()), !dbg !492
  %"$gasrem_2732" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2733" = icmp ugt i64 16, %"$gasrem_2732"
  br i1 %"$gascmp_2733", label %"$out_of_gas_2734", label %"$have_gas_2735"

"$out_of_gas_2734":                               ; preds = %"$have_gas_2729"
  call void @_out_of_gas()
  br label %"$have_gas_2735"

"$have_gas_2735":                                 ; preds = %"$out_of_gas_2734", %"$have_gas_2729"
  %"$consume_2736" = sub i64 %"$gasrem_2732", 16
  store i64 %"$consume_2736", i64* @_gasrem, align 8
  %"$execptr_load_2737" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_127_2738" = alloca %Int256, align 8
  %"$$p_127_2739" = load %Int256, %Int256* %"$p_127", align 8
  store %Int256 %"$$p_127_2739", %Int256* %"$eq_$p_127_2738", align 8
  %"$eq_$ans_128_2740" = alloca %Int256, align 8
  %"$$ans_128_2741" = load %Int256, %Int256* %"$ans_128", align 8
  store %Int256 %"$$ans_128_2741", %Int256* %"$eq_$ans_128_2740", align 8
  %"$eq_call_2742" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2737", %Int256* %"$eq_$p_127_2738", %Int256* %"$eq_$ans_128_2740"), !dbg !493
  store %TName_Bool* %"$eq_call_2742", %TName_Bool** %"$res__129", align 8, !dbg !493
  %"$gasrem_2744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2745" = icmp ugt i64 1, %"$gasrem_2744"
  br i1 %"$gascmp_2745", label %"$out_of_gas_2746", label %"$have_gas_2747"

"$out_of_gas_2746":                               ; preds = %"$have_gas_2735"
  call void @_out_of_gas()
  br label %"$have_gas_2747"

"$have_gas_2747":                                 ; preds = %"$out_of_gas_2746", %"$have_gas_2735"
  %"$consume_2748" = sub i64 %"$gasrem_2744", 1
  store i64 %"$consume_2748", i64* @_gasrem, align 8
  %"$BoolUtils.andb_201" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2749" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2750" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2749", 0
  %"$BoolUtils.andb_envptr_2751" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2749", 1
  %"$$res_126_2752" = load %TName_Bool*, %TName_Bool** %"$res_126", align 8
  %"$BoolUtils.andb_call_2753" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2750"(i8* %"$BoolUtils.andb_envptr_2751", %TName_Bool* %"$$res_126_2752"), !dbg !494
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2753", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_201", align 8, !dbg !494
  %"$BoolUtils.andb_202" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_202", metadata !495, metadata !DIExpression()), !dbg !494
  %"$$BoolUtils.andb_201_2754" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_201", align 8
  %"$$BoolUtils.andb_201_fptr_2755" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_201_2754", 0
  %"$$BoolUtils.andb_201_envptr_2756" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_201_2754", 1
  %"$$res__129_2757" = load %TName_Bool*, %TName_Bool** %"$res__129", align 8
  %"$$BoolUtils.andb_201_call_2758" = call %TName_Bool* %"$$BoolUtils.andb_201_fptr_2755"(i8* %"$$BoolUtils.andb_201_envptr_2756", %TName_Bool* %"$$res__129_2757"), !dbg !494
  store %TName_Bool* %"$$BoolUtils.andb_201_call_2758", %TName_Bool** %"$BoolUtils.andb_202", align 8, !dbg !494
  %"$$BoolUtils.andb_202_2759" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_202", align 8
  store %TName_Bool* %"$$BoolUtils.andb_202_2759", %TName_Bool** %"$res_130", align 8, !dbg !494
  %"$gasrem_2760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2761" = icmp ugt i64 1, %"$gasrem_2760"
  br i1 %"$gascmp_2761", label %"$out_of_gas_2762", label %"$have_gas_2763"

"$out_of_gas_2762":                               ; preds = %"$have_gas_2747"
  call void @_out_of_gas()
  br label %"$have_gas_2763"

"$have_gas_2763":                                 ; preds = %"$out_of_gas_2762", %"$have_gas_2747"
  %"$consume_2764" = sub i64 %"$gasrem_2760", 1
  store i64 %"$consume_2764", i64* @_gasrem, align 8
  %"$p_131" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$p_131", metadata !496, metadata !DIExpression()), !dbg !497
  %"$p3_2765" = load %Uint32, %Uint32* %p3, align 4
  %"$valueof_2766" = extractvalue %Uint32 %"$p3_2765", 0
  %"$valueof_2767" = zext i32 %"$valueof_2766" to i64
  %"$gaslogof_2768" = uitofp i64 %"$valueof_2767" to double
  %"$gaslogof_2769" = fadd double %"$gaslogof_2768", 1.000000e+00
  %"$gaslogof_2770" = call double @llvm.log.f64(double %"$gaslogof_2769")
  %"$gaslogof_2771" = fptoui double %"$gaslogof_2770" to i64
  %"$gaslogof_2772" = add i64 %"$gaslogof_2771", 1
  %"$gasmul_2773" = mul i64 20, %"$gaslogof_2772"
  %"$gasmul_2774" = mul i64 %"$gasmul_2773", 4
  %"$gasrem_2775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2776" = icmp ugt i64 %"$gasmul_2774", %"$gasrem_2775"
  br i1 %"$gascmp_2776", label %"$out_of_gas_2777", label %"$have_gas_2778"

"$out_of_gas_2777":                               ; preds = %"$have_gas_2763"
  call void @_out_of_gas()
  br label %"$have_gas_2778"

"$have_gas_2778":                                 ; preds = %"$out_of_gas_2777", %"$have_gas_2763"
  %"$consume_2779" = sub i64 %"$gasrem_2775", %"$gasmul_2774"
  store i64 %"$consume_2779", i64* @_gasrem, align 8
  %"$execptr_load_2780" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2781" = alloca %Int256, align 8
  %"$t9_2782" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2782", %Int256* %"$pow_t9_2781", align 8
  %"$p3_2783" = load %Uint32, %Uint32* %p3, align 4
  %"$pow_call_2784" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2780", %Int256* %"$pow_t9_2781", %Uint32 %"$p3_2783"), !dbg !498
  %"$pow_2786" = load %Int256, %Int256* %"$pow_call_2784", align 8
  store %Int256 %"$pow_2786", %Int256* %"$p_131", align 8, !dbg !498
  %"$gasrem_2787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2788" = icmp ugt i64 1, %"$gasrem_2787"
  br i1 %"$gascmp_2788", label %"$out_of_gas_2789", label %"$have_gas_2790"

"$out_of_gas_2789":                               ; preds = %"$have_gas_2778"
  call void @_out_of_gas()
  br label %"$have_gas_2790"

"$have_gas_2790":                                 ; preds = %"$out_of_gas_2789", %"$have_gas_2778"
  %"$consume_2791" = sub i64 %"$gasrem_2787", 1
  store i64 %"$consume_2791", i64* @_gasrem, align 8
  %"$res_134" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_134", metadata !499, metadata !DIExpression()), !dbg !500
  %"$gasrem_2792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2793" = icmp ugt i64 1, %"$gasrem_2792"
  br i1 %"$gascmp_2793", label %"$out_of_gas_2794", label %"$have_gas_2795"

"$out_of_gas_2794":                               ; preds = %"$have_gas_2790"
  call void @_out_of_gas()
  br label %"$have_gas_2795"

"$have_gas_2795":                                 ; preds = %"$out_of_gas_2794", %"$have_gas_2790"
  %"$consume_2796" = sub i64 %"$gasrem_2792", 1
  store i64 %"$consume_2796", i64* @_gasrem, align 8
  %"$ans_132" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$ans_132", metadata !501, metadata !DIExpression()), !dbg !502
  %"$gasrem_2797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2798" = icmp ugt i64 1, %"$gasrem_2797"
  br i1 %"$gascmp_2798", label %"$out_of_gas_2799", label %"$have_gas_2800"

"$out_of_gas_2799":                               ; preds = %"$have_gas_2795"
  call void @_out_of_gas()
  br label %"$have_gas_2800"

"$have_gas_2800":                                 ; preds = %"$out_of_gas_2799", %"$have_gas_2795"
  %"$consume_2801" = sub i64 %"$gasrem_2797", 1
  store i64 %"$consume_2801", i64* @_gasrem, align 8
  store %Int256 { i256 10008002400320016 }, %Int256* %"$ans_132", align 8, !dbg !503
  %"$gasrem_2802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2803" = icmp ugt i64 1, %"$gasrem_2802"
  br i1 %"$gascmp_2803", label %"$out_of_gas_2804", label %"$have_gas_2805"

"$out_of_gas_2804":                               ; preds = %"$have_gas_2800"
  call void @_out_of_gas()
  br label %"$have_gas_2805"

"$have_gas_2805":                                 ; preds = %"$out_of_gas_2804", %"$have_gas_2800"
  %"$consume_2806" = sub i64 %"$gasrem_2802", 1
  store i64 %"$consume_2806", i64* @_gasrem, align 8
  %"$res__133" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__133", metadata !504, metadata !DIExpression()), !dbg !505
  %"$gasrem_2808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2809" = icmp ugt i64 16, %"$gasrem_2808"
  br i1 %"$gascmp_2809", label %"$out_of_gas_2810", label %"$have_gas_2811"

"$out_of_gas_2810":                               ; preds = %"$have_gas_2805"
  call void @_out_of_gas()
  br label %"$have_gas_2811"

"$have_gas_2811":                                 ; preds = %"$out_of_gas_2810", %"$have_gas_2805"
  %"$consume_2812" = sub i64 %"$gasrem_2808", 16
  store i64 %"$consume_2812", i64* @_gasrem, align 8
  %"$execptr_load_2813" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_131_2814" = alloca %Int256, align 8
  %"$$p_131_2815" = load %Int256, %Int256* %"$p_131", align 8
  store %Int256 %"$$p_131_2815", %Int256* %"$eq_$p_131_2814", align 8
  %"$eq_$ans_132_2816" = alloca %Int256, align 8
  %"$$ans_132_2817" = load %Int256, %Int256* %"$ans_132", align 8
  store %Int256 %"$$ans_132_2817", %Int256* %"$eq_$ans_132_2816", align 8
  %"$eq_call_2818" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2813", %Int256* %"$eq_$p_131_2814", %Int256* %"$eq_$ans_132_2816"), !dbg !506
  store %TName_Bool* %"$eq_call_2818", %TName_Bool** %"$res__133", align 8, !dbg !506
  %"$gasrem_2820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2821" = icmp ugt i64 1, %"$gasrem_2820"
  br i1 %"$gascmp_2821", label %"$out_of_gas_2822", label %"$have_gas_2823"

"$out_of_gas_2822":                               ; preds = %"$have_gas_2811"
  call void @_out_of_gas()
  br label %"$have_gas_2823"

"$have_gas_2823":                                 ; preds = %"$out_of_gas_2822", %"$have_gas_2811"
  %"$consume_2824" = sub i64 %"$gasrem_2820", 1
  store i64 %"$consume_2824", i64* @_gasrem, align 8
  %"$BoolUtils.andb_203" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2825" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2826" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2825", 0
  %"$BoolUtils.andb_envptr_2827" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2825", 1
  %"$$res_130_2828" = load %TName_Bool*, %TName_Bool** %"$res_130", align 8
  %"$BoolUtils.andb_call_2829" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2826"(i8* %"$BoolUtils.andb_envptr_2827", %TName_Bool* %"$$res_130_2828"), !dbg !507
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2829", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_203", align 8, !dbg !507
  %"$BoolUtils.andb_204" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_204", metadata !508, metadata !DIExpression()), !dbg !507
  %"$$BoolUtils.andb_203_2830" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_203", align 8
  %"$$BoolUtils.andb_203_fptr_2831" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_203_2830", 0
  %"$$BoolUtils.andb_203_envptr_2832" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_203_2830", 1
  %"$$res__133_2833" = load %TName_Bool*, %TName_Bool** %"$res__133", align 8
  %"$$BoolUtils.andb_203_call_2834" = call %TName_Bool* %"$$BoolUtils.andb_203_fptr_2831"(i8* %"$$BoolUtils.andb_203_envptr_2832", %TName_Bool* %"$$res__133_2833"), !dbg !507
  store %TName_Bool* %"$$BoolUtils.andb_203_call_2834", %TName_Bool** %"$BoolUtils.andb_204", align 8, !dbg !507
  %"$$BoolUtils.andb_204_2835" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_204", align 8
  store %TName_Bool* %"$$BoolUtils.andb_204_2835", %TName_Bool** %"$res_134", align 8, !dbg !507
  %"$gasrem_2836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2837" = icmp ugt i64 1, %"$gasrem_2836"
  br i1 %"$gascmp_2837", label %"$out_of_gas_2838", label %"$have_gas_2839"

"$out_of_gas_2838":                               ; preds = %"$have_gas_2823"
  call void @_out_of_gas()
  br label %"$have_gas_2839"

"$have_gas_2839":                                 ; preds = %"$out_of_gas_2838", %"$have_gas_2823"
  %"$consume_2840" = sub i64 %"$gasrem_2836", 1
  store i64 %"$consume_2840", i64* @_gasrem, align 8
  %"$p_135" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$p_135", metadata !509, metadata !DIExpression()), !dbg !510
  %"$p4_2841" = load %Uint32, %Uint32* %p4, align 4
  %"$valueof_2842" = extractvalue %Uint32 %"$p4_2841", 0
  %"$valueof_2843" = zext i32 %"$valueof_2842" to i64
  %"$gaslogof_2844" = uitofp i64 %"$valueof_2843" to double
  %"$gaslogof_2845" = fadd double %"$gaslogof_2844", 1.000000e+00
  %"$gaslogof_2846" = call double @llvm.log.f64(double %"$gaslogof_2845")
  %"$gaslogof_2847" = fptoui double %"$gaslogof_2846" to i64
  %"$gaslogof_2848" = add i64 %"$gaslogof_2847", 1
  %"$gasmul_2849" = mul i64 20, %"$gaslogof_2848"
  %"$gasmul_2850" = mul i64 %"$gasmul_2849", 4
  %"$gasrem_2851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2852" = icmp ugt i64 %"$gasmul_2850", %"$gasrem_2851"
  br i1 %"$gascmp_2852", label %"$out_of_gas_2853", label %"$have_gas_2854"

"$out_of_gas_2853":                               ; preds = %"$have_gas_2839"
  call void @_out_of_gas()
  br label %"$have_gas_2854"

"$have_gas_2854":                                 ; preds = %"$out_of_gas_2853", %"$have_gas_2839"
  %"$consume_2855" = sub i64 %"$gasrem_2851", %"$gasmul_2850"
  store i64 %"$consume_2855", i64* @_gasrem, align 8
  %"$execptr_load_2856" = load i8*, i8** @_execptr, align 8
  %"$pow_t9_2857" = alloca %Int256, align 8
  %"$t9_2858" = load %Int256, %Int256* %t9, align 8
  store %Int256 %"$t9_2858", %Int256* %"$pow_t9_2857", align 8
  %"$p4_2859" = load %Uint32, %Uint32* %p4, align 4
  %"$pow_call_2860" = call %Int256* @_pow_Int256(i8* %"$execptr_load_2856", %Int256* %"$pow_t9_2857", %Uint32 %"$p4_2859"), !dbg !511
  %"$pow_2862" = load %Int256, %Int256* %"$pow_call_2860", align 8
  store %Int256 %"$pow_2862", %Int256* %"$p_135", align 8, !dbg !511
  %"$gasrem_2863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2864" = icmp ugt i64 1, %"$gasrem_2863"
  br i1 %"$gascmp_2864", label %"$out_of_gas_2865", label %"$have_gas_2866"

"$out_of_gas_2865":                               ; preds = %"$have_gas_2854"
  call void @_out_of_gas()
  br label %"$have_gas_2866"

"$have_gas_2866":                                 ; preds = %"$out_of_gas_2865", %"$have_gas_2854"
  %"$consume_2867" = sub i64 %"$gasrem_2863", 1
  store i64 %"$consume_2867", i64* @_gasrem, align 8
  %"$res_138" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res_138", metadata !512, metadata !DIExpression()), !dbg !513
  %"$gasrem_2868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2869" = icmp ugt i64 1, %"$gasrem_2868"
  br i1 %"$gascmp_2869", label %"$out_of_gas_2870", label %"$have_gas_2871"

"$out_of_gas_2870":                               ; preds = %"$have_gas_2866"
  call void @_out_of_gas()
  br label %"$have_gas_2871"

"$have_gas_2871":                                 ; preds = %"$out_of_gas_2870", %"$have_gas_2866"
  %"$consume_2872" = sub i64 %"$gasrem_2868", 1
  store i64 %"$consume_2872", i64* @_gasrem, align 8
  %"$ans_136" = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %"$ans_136", metadata !514, metadata !DIExpression()), !dbg !515
  %"$gasrem_2873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2874" = icmp ugt i64 1, %"$gasrem_2873"
  br i1 %"$gascmp_2874", label %"$out_of_gas_2875", label %"$have_gas_2876"

"$out_of_gas_2875":                               ; preds = %"$have_gas_2871"
  call void @_out_of_gas()
  br label %"$have_gas_2876"

"$have_gas_2876":                                 ; preds = %"$out_of_gas_2875", %"$have_gas_2871"
  %"$consume_2877" = sub i64 %"$gasrem_2873", 1
  store i64 %"$consume_2877", i64* @_gasrem, align 8
  store %Int256 { i256 10020018009603360806534415361152051201024 }, %Int256* %"$ans_136", align 8, !dbg !516
  %"$gasrem_2878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2879" = icmp ugt i64 1, %"$gasrem_2878"
  br i1 %"$gascmp_2879", label %"$out_of_gas_2880", label %"$have_gas_2881"

"$out_of_gas_2880":                               ; preds = %"$have_gas_2876"
  call void @_out_of_gas()
  br label %"$have_gas_2881"

"$have_gas_2881":                                 ; preds = %"$out_of_gas_2880", %"$have_gas_2876"
  %"$consume_2882" = sub i64 %"$gasrem_2878", 1
  store i64 %"$consume_2882", i64* @_gasrem, align 8
  %"$res__137" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$res__137", metadata !517, metadata !DIExpression()), !dbg !518
  %"$gasrem_2884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2885" = icmp ugt i64 16, %"$gasrem_2884"
  br i1 %"$gascmp_2885", label %"$out_of_gas_2886", label %"$have_gas_2887"

"$out_of_gas_2886":                               ; preds = %"$have_gas_2881"
  call void @_out_of_gas()
  br label %"$have_gas_2887"

"$have_gas_2887":                                 ; preds = %"$out_of_gas_2886", %"$have_gas_2881"
  %"$consume_2888" = sub i64 %"$gasrem_2884", 16
  store i64 %"$consume_2888", i64* @_gasrem, align 8
  %"$execptr_load_2889" = load i8*, i8** @_execptr, align 8
  %"$eq_$p_135_2890" = alloca %Int256, align 8
  %"$$p_135_2891" = load %Int256, %Int256* %"$p_135", align 8
  store %Int256 %"$$p_135_2891", %Int256* %"$eq_$p_135_2890", align 8
  %"$eq_$ans_136_2892" = alloca %Int256, align 8
  %"$$ans_136_2893" = load %Int256, %Int256* %"$ans_136", align 8
  store %Int256 %"$$ans_136_2893", %Int256* %"$eq_$ans_136_2892", align 8
  %"$eq_call_2894" = call %TName_Bool* @_eq_Int256(i8* %"$execptr_load_2889", %Int256* %"$eq_$p_135_2890", %Int256* %"$eq_$ans_136_2892"), !dbg !519
  store %TName_Bool* %"$eq_call_2894", %TName_Bool** %"$res__137", align 8, !dbg !519
  %"$gasrem_2896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2897" = icmp ugt i64 1, %"$gasrem_2896"
  br i1 %"$gascmp_2897", label %"$out_of_gas_2898", label %"$have_gas_2899"

"$out_of_gas_2898":                               ; preds = %"$have_gas_2887"
  call void @_out_of_gas()
  br label %"$have_gas_2899"

"$have_gas_2899":                                 ; preds = %"$out_of_gas_2898", %"$have_gas_2887"
  %"$consume_2900" = sub i64 %"$gasrem_2896", 1
  store i64 %"$consume_2900", i64* @_gasrem, align 8
  %"$BoolUtils.andb_205" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_2901" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_2902" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2901", 0
  %"$BoolUtils.andb_envptr_2903" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_2901", 1
  %"$$res_134_2904" = load %TName_Bool*, %TName_Bool** %"$res_134", align 8
  %"$BoolUtils.andb_call_2905" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_2902"(i8* %"$BoolUtils.andb_envptr_2903", %TName_Bool* %"$$res_134_2904"), !dbg !520
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_2905", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_205", align 8, !dbg !520
  %"$BoolUtils.andb_206" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_206", metadata !521, metadata !DIExpression()), !dbg !520
  %"$$BoolUtils.andb_205_2906" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_205", align 8
  %"$$BoolUtils.andb_205_fptr_2907" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_205_2906", 0
  %"$$BoolUtils.andb_205_envptr_2908" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_205_2906", 1
  %"$$res__137_2909" = load %TName_Bool*, %TName_Bool** %"$res__137", align 8
  %"$$BoolUtils.andb_205_call_2910" = call %TName_Bool* %"$$BoolUtils.andb_205_fptr_2907"(i8* %"$$BoolUtils.andb_205_envptr_2908", %TName_Bool* %"$$res__137_2909"), !dbg !520
  store %TName_Bool* %"$$BoolUtils.andb_205_call_2910", %TName_Bool** %"$BoolUtils.andb_206", align 8, !dbg !520
  %"$$BoolUtils.andb_206_2911" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_206", align 8
  store %TName_Bool* %"$$BoolUtils.andb_206_2911", %TName_Bool** %"$res_138", align 8, !dbg !520
  %"$gasrem_2912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2913" = icmp ugt i64 1, %"$gasrem_2912"
  br i1 %"$gascmp_2913", label %"$out_of_gas_2914", label %"$have_gas_2915"

"$out_of_gas_2914":                               ; preds = %"$have_gas_2899"
  call void @_out_of_gas()
  br label %"$have_gas_2915"

"$have_gas_2915":                                 ; preds = %"$out_of_gas_2914", %"$have_gas_2899"
  %"$consume_2916" = sub i64 %"$gasrem_2912", 1
  store i64 %"$consume_2916", i64* @_gasrem, align 8
  %"$$res_138_2917" = load %TName_Bool*, %TName_Bool** %"$res_138", align 8
  store %TName_Bool* %"$$res_138_2917", %TName_Bool** %"$expr_211", align 8, !dbg !522
  %"$$expr_211_2918" = load %TName_Bool*, %TName_Bool** %"$expr_211", align 8
  ret %TName_Bool* %"$$expr_211_2918"
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
  %"$exprval_2919" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_2920" = bitcast %TName_Bool* %"$exprval_2919" to i8*
  %"$execptr_load_2921" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_2921", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_246", i8* %"$memvoidcast_2920")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin-pow.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_209", linkageName: "$fundef_209", scope: !4, file: !4, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocalVariable(name: "c", scope: !3, file: !4, line: 7, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 7, column: 8, scope: !3)
!13 = !DILocalVariable(name: "$retval_210", scope: !3, file: !4, line: 8, type: !10)
!14 = !DILocation(line: 8, column: 5, scope: !3)
!15 = !DILocation(line: 9, column: 16, scope: !16)
!16 = distinct !DILexicalBlock(scope: !17, file: !4, line: 9, column: 7)
!17 = distinct !DILexicalBlock(scope: !3, file: !4, line: 8, column: 5)
!18 = !DILocation(line: 10, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !17, file: !4, line: 10, column: 7)
!20 = distinct !DISubprogram(name: "$fundef_207", linkageName: "$fundef_207", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DILocalVariable(name: "b", scope: !20, file: !4, line: 6, type: !10)
!22 = !DILocation(line: 6, column: 8, scope: !20)
!23 = !DILocation(line: 8, column: 5, scope: !20)
!24 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !25, file: !25, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!25 = !DIFile(filename: ".", directory: ".")
!26 = !DILocation(line: 0, scope: !24)
!27 = !DILocation(line: 7, column: 3, scope: !24)
!28 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !8)
!29 = !DILocalVariable(name: "$expr_211", scope: !28, file: !2, line: 1, type: !10)
!30 = !DILocation(line: 1, column: 10, scope: !28)
!31 = !DILocalVariable(name: "p1", scope: !28, file: !2, line: 1, type: !32)
!32 = !DIBasicType(name: "Uint32", size: 4)
!33 = !DILocation(line: 1, column: 5, scope: !28)
!34 = !DILocalVariable(name: "p2", scope: !28, file: !2, line: 2, type: !32)
!35 = !DILocation(line: 2, column: 5, scope: !28)
!36 = !DILocation(line: 2, column: 10, scope: !28)
!37 = !DILocalVariable(name: "p3", scope: !28, file: !2, line: 3, type: !32)
!38 = !DILocation(line: 3, column: 5, scope: !28)
!39 = !DILocation(line: 3, column: 10, scope: !28)
!40 = !DILocalVariable(name: "p4", scope: !28, file: !2, line: 4, type: !32)
!41 = !DILocation(line: 4, column: 5, scope: !28)
!42 = !DILocation(line: 4, column: 10, scope: !28)
!43 = !DILocalVariable(name: "t1", scope: !28, file: !2, line: 6, type: !32)
!44 = !DILocation(line: 6, column: 5, scope: !28)
!45 = !DILocation(line: 6, column: 10, scope: !28)
!46 = !DILocalVariable(name: "t2", scope: !28, file: !2, line: 7, type: !47)
!47 = !DIBasicType(name: "Int32", size: 4)
!48 = !DILocation(line: 7, column: 5, scope: !28)
!49 = !DILocation(line: 7, column: 10, scope: !28)
!50 = !DILocalVariable(name: "t3", scope: !28, file: !2, line: 8, type: !51)
!51 = !DIBasicType(name: "Uint64", size: 8)
!52 = !DILocation(line: 8, column: 5, scope: !28)
!53 = !DILocation(line: 8, column: 10, scope: !28)
!54 = !DILocalVariable(name: "t4", scope: !28, file: !2, line: 9, type: !55)
!55 = !DIBasicType(name: "Int64", size: 8)
!56 = !DILocation(line: 9, column: 5, scope: !28)
!57 = !DILocation(line: 9, column: 10, scope: !28)
!58 = !DILocalVariable(name: "t5", scope: !28, file: !2, line: 10, type: !59)
!59 = !DIBasicType(name: "Uint128", size: 16)
!60 = !DILocation(line: 10, column: 5, scope: !28)
!61 = !DILocation(line: 10, column: 10, scope: !28)
!62 = !DILocalVariable(name: "t6", scope: !28, file: !2, line: 11, type: !63)
!63 = !DIBasicType(name: "Int128", size: 16)
!64 = !DILocation(line: 11, column: 5, scope: !28)
!65 = !DILocation(line: 11, column: 10, scope: !28)
!66 = !DILocalVariable(name: "t7", scope: !28, file: !2, line: 12, type: !67)
!67 = !DIBasicType(name: "Uint256", size: 32)
!68 = !DILocation(line: 12, column: 5, scope: !28)
!69 = !DILocation(line: 12, column: 10, scope: !28)
!70 = !DILocalVariable(name: "t8", scope: !28, file: !2, line: 13, type: !71)
!71 = !DIBasicType(name: "Int256", size: 32)
!72 = !DILocation(line: 13, column: 5, scope: !28)
!73 = !DILocation(line: 13, column: 10, scope: !28)
!74 = !DILocalVariable(name: "t9", scope: !28, file: !2, line: 14, type: !71)
!75 = !DILocation(line: 14, column: 5, scope: !28)
!76 = !DILocation(line: 14, column: 10, scope: !28)
!77 = !DILocalVariable(name: "res", scope: !28, file: !2, line: 16, type: !10)
!78 = !DILocation(line: 16, column: 5, scope: !28)
!79 = !DILocation(line: 16, column: 11, scope: !28)
!80 = !DILocalVariable(name: "p", scope: !28, file: !2, line: 20, type: !32)
!81 = !DILocation(line: 20, column: 5, scope: !28)
!82 = !DILocation(line: 20, column: 9, scope: !28)
!83 = !DILocalVariable(name: "$res_6", scope: !28, file: !2, line: 21, type: !10)
!84 = !DILocation(line: 21, column: 5, scope: !28)
!85 = !DILocalVariable(name: "ans", scope: !28, file: !2, line: 22, type: !32)
!86 = !DILocation(line: 22, column: 7, scope: !28)
!87 = !DILocation(line: 22, column: 13, scope: !28)
!88 = !DILocalVariable(name: "res_", scope: !28, file: !2, line: 23, type: !10)
!89 = !DILocation(line: 23, column: 7, scope: !28)
!90 = !DILocation(line: 23, column: 14, scope: !28)
!91 = !DILocation(line: 24, column: 3, scope: !28)
!92 = !DILocalVariable(name: "$BoolUtils.andb_140", scope: !28, file: !2, line: 24, type: !10)
!93 = !DILocalVariable(name: "$p_7", scope: !28, file: !2, line: 27, type: !32)
!94 = !DILocation(line: 27, column: 5, scope: !28)
!95 = !DILocation(line: 27, column: 9, scope: !28)
!96 = !DILocalVariable(name: "$res_10", scope: !28, file: !2, line: 28, type: !10)
!97 = !DILocation(line: 28, column: 5, scope: !28)
!98 = !DILocalVariable(name: "$ans_8", scope: !28, file: !2, line: 29, type: !32)
!99 = !DILocation(line: 29, column: 7, scope: !28)
!100 = !DILocation(line: 29, column: 13, scope: !28)
!101 = !DILocalVariable(name: "$res__9", scope: !28, file: !2, line: 30, type: !10)
!102 = !DILocation(line: 30, column: 7, scope: !28)
!103 = !DILocation(line: 30, column: 14, scope: !28)
!104 = !DILocation(line: 31, column: 3, scope: !28)
!105 = !DILocalVariable(name: "$BoolUtils.andb_142", scope: !28, file: !2, line: 31, type: !10)
!106 = !DILocalVariable(name: "$p_11", scope: !28, file: !2, line: 34, type: !32)
!107 = !DILocation(line: 34, column: 5, scope: !28)
!108 = !DILocation(line: 34, column: 9, scope: !28)
!109 = !DILocalVariable(name: "$res_14", scope: !28, file: !2, line: 35, type: !10)
!110 = !DILocation(line: 35, column: 5, scope: !28)
!111 = !DILocalVariable(name: "$ans_12", scope: !28, file: !2, line: 36, type: !32)
!112 = !DILocation(line: 36, column: 7, scope: !28)
!113 = !DILocation(line: 36, column: 13, scope: !28)
!114 = !DILocalVariable(name: "$res__13", scope: !28, file: !2, line: 37, type: !10)
!115 = !DILocation(line: 37, column: 7, scope: !28)
!116 = !DILocation(line: 37, column: 14, scope: !28)
!117 = !DILocation(line: 38, column: 3, scope: !28)
!118 = !DILocalVariable(name: "$BoolUtils.andb_144", scope: !28, file: !2, line: 38, type: !10)
!119 = !DILocalVariable(name: "$p_15", scope: !28, file: !2, line: 41, type: !32)
!120 = !DILocation(line: 41, column: 5, scope: !28)
!121 = !DILocation(line: 41, column: 9, scope: !28)
!122 = !DILocalVariable(name: "$res_18", scope: !28, file: !2, line: 42, type: !10)
!123 = !DILocation(line: 42, column: 5, scope: !28)
!124 = !DILocalVariable(name: "$ans_16", scope: !28, file: !2, line: 43, type: !32)
!125 = !DILocation(line: 43, column: 7, scope: !28)
!126 = !DILocation(line: 43, column: 13, scope: !28)
!127 = !DILocalVariable(name: "$res__17", scope: !28, file: !2, line: 44, type: !10)
!128 = !DILocation(line: 44, column: 7, scope: !28)
!129 = !DILocation(line: 44, column: 14, scope: !28)
!130 = !DILocation(line: 45, column: 3, scope: !28)
!131 = !DILocalVariable(name: "$BoolUtils.andb_146", scope: !28, file: !2, line: 45, type: !10)
!132 = !DILocalVariable(name: "$p_19", scope: !28, file: !2, line: 50, type: !47)
!133 = !DILocation(line: 50, column: 5, scope: !28)
!134 = !DILocation(line: 50, column: 9, scope: !28)
!135 = !DILocalVariable(name: "$res_22", scope: !28, file: !2, line: 51, type: !10)
!136 = !DILocation(line: 51, column: 5, scope: !28)
!137 = !DILocalVariable(name: "$ans_20", scope: !28, file: !2, line: 52, type: !47)
!138 = !DILocation(line: 52, column: 7, scope: !28)
!139 = !DILocation(line: 52, column: 13, scope: !28)
!140 = !DILocalVariable(name: "$res__21", scope: !28, file: !2, line: 53, type: !10)
!141 = !DILocation(line: 53, column: 7, scope: !28)
!142 = !DILocation(line: 53, column: 14, scope: !28)
!143 = !DILocation(line: 54, column: 3, scope: !28)
!144 = !DILocalVariable(name: "$BoolUtils.andb_148", scope: !28, file: !2, line: 54, type: !10)
!145 = !DILocalVariable(name: "$p_23", scope: !28, file: !2, line: 57, type: !47)
!146 = !DILocation(line: 57, column: 5, scope: !28)
!147 = !DILocation(line: 57, column: 9, scope: !28)
!148 = !DILocalVariable(name: "$res_26", scope: !28, file: !2, line: 58, type: !10)
!149 = !DILocation(line: 58, column: 5, scope: !28)
!150 = !DILocalVariable(name: "$ans_24", scope: !28, file: !2, line: 59, type: !47)
!151 = !DILocation(line: 59, column: 7, scope: !28)
!152 = !DILocation(line: 59, column: 13, scope: !28)
!153 = !DILocalVariable(name: "$res__25", scope: !28, file: !2, line: 60, type: !10)
!154 = !DILocation(line: 60, column: 7, scope: !28)
!155 = !DILocation(line: 60, column: 14, scope: !28)
!156 = !DILocation(line: 61, column: 3, scope: !28)
!157 = !DILocalVariable(name: "$BoolUtils.andb_150", scope: !28, file: !2, line: 61, type: !10)
!158 = !DILocalVariable(name: "$p_27", scope: !28, file: !2, line: 64, type: !47)
!159 = !DILocation(line: 64, column: 5, scope: !28)
!160 = !DILocation(line: 64, column: 9, scope: !28)
!161 = !DILocalVariable(name: "$res_30", scope: !28, file: !2, line: 65, type: !10)
!162 = !DILocation(line: 65, column: 5, scope: !28)
!163 = !DILocalVariable(name: "$ans_28", scope: !28, file: !2, line: 66, type: !47)
!164 = !DILocation(line: 66, column: 7, scope: !28)
!165 = !DILocation(line: 66, column: 13, scope: !28)
!166 = !DILocalVariable(name: "$res__29", scope: !28, file: !2, line: 67, type: !10)
!167 = !DILocation(line: 67, column: 7, scope: !28)
!168 = !DILocation(line: 67, column: 14, scope: !28)
!169 = !DILocation(line: 68, column: 3, scope: !28)
!170 = !DILocalVariable(name: "$BoolUtils.andb_152", scope: !28, file: !2, line: 68, type: !10)
!171 = !DILocalVariable(name: "$p_31", scope: !28, file: !2, line: 71, type: !47)
!172 = !DILocation(line: 71, column: 5, scope: !28)
!173 = !DILocation(line: 71, column: 9, scope: !28)
!174 = !DILocalVariable(name: "$res_34", scope: !28, file: !2, line: 72, type: !10)
!175 = !DILocation(line: 72, column: 5, scope: !28)
!176 = !DILocalVariable(name: "$ans_32", scope: !28, file: !2, line: 73, type: !47)
!177 = !DILocation(line: 73, column: 7, scope: !28)
!178 = !DILocation(line: 73, column: 13, scope: !28)
!179 = !DILocalVariable(name: "$res__33", scope: !28, file: !2, line: 74, type: !10)
!180 = !DILocation(line: 74, column: 7, scope: !28)
!181 = !DILocation(line: 74, column: 14, scope: !28)
!182 = !DILocation(line: 75, column: 3, scope: !28)
!183 = !DILocalVariable(name: "$BoolUtils.andb_154", scope: !28, file: !2, line: 75, type: !10)
!184 = !DILocalVariable(name: "$p_35", scope: !28, file: !2, line: 80, type: !51)
!185 = !DILocation(line: 80, column: 5, scope: !28)
!186 = !DILocation(line: 80, column: 9, scope: !28)
!187 = !DILocalVariable(name: "$res_38", scope: !28, file: !2, line: 81, type: !10)
!188 = !DILocation(line: 81, column: 5, scope: !28)
!189 = !DILocalVariable(name: "$ans_36", scope: !28, file: !2, line: 82, type: !51)
!190 = !DILocation(line: 82, column: 7, scope: !28)
!191 = !DILocation(line: 82, column: 13, scope: !28)
!192 = !DILocalVariable(name: "$res__37", scope: !28, file: !2, line: 83, type: !10)
!193 = !DILocation(line: 83, column: 7, scope: !28)
!194 = !DILocation(line: 83, column: 14, scope: !28)
!195 = !DILocation(line: 84, column: 3, scope: !28)
!196 = !DILocalVariable(name: "$BoolUtils.andb_156", scope: !28, file: !2, line: 84, type: !10)
!197 = !DILocalVariable(name: "$p_39", scope: !28, file: !2, line: 87, type: !51)
!198 = !DILocation(line: 87, column: 5, scope: !28)
!199 = !DILocation(line: 87, column: 9, scope: !28)
!200 = !DILocalVariable(name: "$res_42", scope: !28, file: !2, line: 88, type: !10)
!201 = !DILocation(line: 88, column: 5, scope: !28)
!202 = !DILocalVariable(name: "$ans_40", scope: !28, file: !2, line: 89, type: !51)
!203 = !DILocation(line: 89, column: 7, scope: !28)
!204 = !DILocation(line: 89, column: 13, scope: !28)
!205 = !DILocalVariable(name: "$res__41", scope: !28, file: !2, line: 90, type: !10)
!206 = !DILocation(line: 90, column: 7, scope: !28)
!207 = !DILocation(line: 90, column: 14, scope: !28)
!208 = !DILocation(line: 91, column: 3, scope: !28)
!209 = !DILocalVariable(name: "$BoolUtils.andb_158", scope: !28, file: !2, line: 91, type: !10)
!210 = !DILocalVariable(name: "$p_43", scope: !28, file: !2, line: 94, type: !51)
!211 = !DILocation(line: 94, column: 5, scope: !28)
!212 = !DILocation(line: 94, column: 9, scope: !28)
!213 = !DILocalVariable(name: "$res_46", scope: !28, file: !2, line: 95, type: !10)
!214 = !DILocation(line: 95, column: 5, scope: !28)
!215 = !DILocalVariable(name: "$ans_44", scope: !28, file: !2, line: 96, type: !51)
!216 = !DILocation(line: 96, column: 7, scope: !28)
!217 = !DILocation(line: 96, column: 13, scope: !28)
!218 = !DILocalVariable(name: "$res__45", scope: !28, file: !2, line: 97, type: !10)
!219 = !DILocation(line: 97, column: 7, scope: !28)
!220 = !DILocation(line: 97, column: 14, scope: !28)
!221 = !DILocation(line: 98, column: 3, scope: !28)
!222 = !DILocalVariable(name: "$BoolUtils.andb_160", scope: !28, file: !2, line: 98, type: !10)
!223 = !DILocalVariable(name: "$p_47", scope: !28, file: !2, line: 103, type: !55)
!224 = !DILocation(line: 103, column: 5, scope: !28)
!225 = !DILocation(line: 103, column: 9, scope: !28)
!226 = !DILocalVariable(name: "$res_50", scope: !28, file: !2, line: 104, type: !10)
!227 = !DILocation(line: 104, column: 5, scope: !28)
!228 = !DILocalVariable(name: "$ans_48", scope: !28, file: !2, line: 105, type: !55)
!229 = !DILocation(line: 105, column: 7, scope: !28)
!230 = !DILocation(line: 105, column: 13, scope: !28)
!231 = !DILocalVariable(name: "$res__49", scope: !28, file: !2, line: 106, type: !10)
!232 = !DILocation(line: 106, column: 7, scope: !28)
!233 = !DILocation(line: 106, column: 14, scope: !28)
!234 = !DILocation(line: 107, column: 3, scope: !28)
!235 = !DILocalVariable(name: "$BoolUtils.andb_162", scope: !28, file: !2, line: 107, type: !10)
!236 = !DILocalVariable(name: "$p_51", scope: !28, file: !2, line: 110, type: !55)
!237 = !DILocation(line: 110, column: 5, scope: !28)
!238 = !DILocation(line: 110, column: 9, scope: !28)
!239 = !DILocalVariable(name: "$res_54", scope: !28, file: !2, line: 111, type: !10)
!240 = !DILocation(line: 111, column: 5, scope: !28)
!241 = !DILocalVariable(name: "$ans_52", scope: !28, file: !2, line: 112, type: !55)
!242 = !DILocation(line: 112, column: 7, scope: !28)
!243 = !DILocation(line: 112, column: 13, scope: !28)
!244 = !DILocalVariable(name: "$res__53", scope: !28, file: !2, line: 113, type: !10)
!245 = !DILocation(line: 113, column: 7, scope: !28)
!246 = !DILocation(line: 113, column: 14, scope: !28)
!247 = !DILocation(line: 114, column: 3, scope: !28)
!248 = !DILocalVariable(name: "$BoolUtils.andb_164", scope: !28, file: !2, line: 114, type: !10)
!249 = !DILocalVariable(name: "$p_55", scope: !28, file: !2, line: 117, type: !55)
!250 = !DILocation(line: 117, column: 5, scope: !28)
!251 = !DILocation(line: 117, column: 9, scope: !28)
!252 = !DILocalVariable(name: "$res_58", scope: !28, file: !2, line: 118, type: !10)
!253 = !DILocation(line: 118, column: 5, scope: !28)
!254 = !DILocalVariable(name: "$ans_56", scope: !28, file: !2, line: 119, type: !55)
!255 = !DILocation(line: 119, column: 7, scope: !28)
!256 = !DILocation(line: 119, column: 13, scope: !28)
!257 = !DILocalVariable(name: "$res__57", scope: !28, file: !2, line: 120, type: !10)
!258 = !DILocation(line: 120, column: 7, scope: !28)
!259 = !DILocation(line: 120, column: 14, scope: !28)
!260 = !DILocation(line: 121, column: 3, scope: !28)
!261 = !DILocalVariable(name: "$BoolUtils.andb_166", scope: !28, file: !2, line: 121, type: !10)
!262 = !DILocalVariable(name: "$p_59", scope: !28, file: !2, line: 126, type: !59)
!263 = !DILocation(line: 126, column: 5, scope: !28)
!264 = !DILocation(line: 126, column: 9, scope: !28)
!265 = !DILocalVariable(name: "$res_62", scope: !28, file: !2, line: 127, type: !10)
!266 = !DILocation(line: 127, column: 5, scope: !28)
!267 = !DILocalVariable(name: "$ans_60", scope: !28, file: !2, line: 128, type: !59)
!268 = !DILocation(line: 128, column: 7, scope: !28)
!269 = !DILocation(line: 128, column: 13, scope: !28)
!270 = !DILocalVariable(name: "$res__61", scope: !28, file: !2, line: 129, type: !10)
!271 = !DILocation(line: 129, column: 7, scope: !28)
!272 = !DILocation(line: 129, column: 14, scope: !28)
!273 = !DILocation(line: 130, column: 3, scope: !28)
!274 = !DILocalVariable(name: "$BoolUtils.andb_168", scope: !28, file: !2, line: 130, type: !10)
!275 = !DILocalVariable(name: "$p_63", scope: !28, file: !2, line: 133, type: !59)
!276 = !DILocation(line: 133, column: 5, scope: !28)
!277 = !DILocation(line: 133, column: 9, scope: !28)
!278 = !DILocalVariable(name: "$res_66", scope: !28, file: !2, line: 134, type: !10)
!279 = !DILocation(line: 134, column: 5, scope: !28)
!280 = !DILocalVariable(name: "$ans_64", scope: !28, file: !2, line: 135, type: !59)
!281 = !DILocation(line: 135, column: 7, scope: !28)
!282 = !DILocation(line: 135, column: 13, scope: !28)
!283 = !DILocalVariable(name: "$res__65", scope: !28, file: !2, line: 136, type: !10)
!284 = !DILocation(line: 136, column: 7, scope: !28)
!285 = !DILocation(line: 136, column: 14, scope: !28)
!286 = !DILocation(line: 137, column: 3, scope: !28)
!287 = !DILocalVariable(name: "$BoolUtils.andb_170", scope: !28, file: !2, line: 137, type: !10)
!288 = !DILocalVariable(name: "$p_67", scope: !28, file: !2, line: 140, type: !59)
!289 = !DILocation(line: 140, column: 5, scope: !28)
!290 = !DILocation(line: 140, column: 9, scope: !28)
!291 = !DILocalVariable(name: "$res_70", scope: !28, file: !2, line: 141, type: !10)
!292 = !DILocation(line: 141, column: 5, scope: !28)
!293 = !DILocalVariable(name: "$ans_68", scope: !28, file: !2, line: 142, type: !59)
!294 = !DILocation(line: 142, column: 7, scope: !28)
!295 = !DILocation(line: 142, column: 13, scope: !28)
!296 = !DILocalVariable(name: "$res__69", scope: !28, file: !2, line: 143, type: !10)
!297 = !DILocation(line: 143, column: 7, scope: !28)
!298 = !DILocation(line: 143, column: 14, scope: !28)
!299 = !DILocation(line: 144, column: 3, scope: !28)
!300 = !DILocalVariable(name: "$BoolUtils.andb_172", scope: !28, file: !2, line: 144, type: !10)
!301 = !DILocalVariable(name: "$p_71", scope: !28, file: !2, line: 147, type: !59)
!302 = !DILocation(line: 147, column: 5, scope: !28)
!303 = !DILocation(line: 147, column: 9, scope: !28)
!304 = !DILocalVariable(name: "$res_74", scope: !28, file: !2, line: 148, type: !10)
!305 = !DILocation(line: 148, column: 5, scope: !28)
!306 = !DILocalVariable(name: "$ans_72", scope: !28, file: !2, line: 149, type: !59)
!307 = !DILocation(line: 149, column: 7, scope: !28)
!308 = !DILocation(line: 149, column: 13, scope: !28)
!309 = !DILocalVariable(name: "$res__73", scope: !28, file: !2, line: 150, type: !10)
!310 = !DILocation(line: 150, column: 7, scope: !28)
!311 = !DILocation(line: 150, column: 14, scope: !28)
!312 = !DILocation(line: 151, column: 3, scope: !28)
!313 = !DILocalVariable(name: "$BoolUtils.andb_174", scope: !28, file: !2, line: 151, type: !10)
!314 = !DILocalVariable(name: "$p_75", scope: !28, file: !2, line: 156, type: !63)
!315 = !DILocation(line: 156, column: 5, scope: !28)
!316 = !DILocation(line: 156, column: 9, scope: !28)
!317 = !DILocalVariable(name: "$res_78", scope: !28, file: !2, line: 157, type: !10)
!318 = !DILocation(line: 157, column: 5, scope: !28)
!319 = !DILocalVariable(name: "$ans_76", scope: !28, file: !2, line: 158, type: !63)
!320 = !DILocation(line: 158, column: 7, scope: !28)
!321 = !DILocation(line: 158, column: 13, scope: !28)
!322 = !DILocalVariable(name: "$res__77", scope: !28, file: !2, line: 159, type: !10)
!323 = !DILocation(line: 159, column: 7, scope: !28)
!324 = !DILocation(line: 159, column: 14, scope: !28)
!325 = !DILocation(line: 160, column: 3, scope: !28)
!326 = !DILocalVariable(name: "$BoolUtils.andb_176", scope: !28, file: !2, line: 160, type: !10)
!327 = !DILocalVariable(name: "$p_79", scope: !28, file: !2, line: 163, type: !63)
!328 = !DILocation(line: 163, column: 5, scope: !28)
!329 = !DILocation(line: 163, column: 9, scope: !28)
!330 = !DILocalVariable(name: "$res_82", scope: !28, file: !2, line: 164, type: !10)
!331 = !DILocation(line: 164, column: 5, scope: !28)
!332 = !DILocalVariable(name: "$ans_80", scope: !28, file: !2, line: 165, type: !63)
!333 = !DILocation(line: 165, column: 7, scope: !28)
!334 = !DILocation(line: 165, column: 13, scope: !28)
!335 = !DILocalVariable(name: "$res__81", scope: !28, file: !2, line: 166, type: !10)
!336 = !DILocation(line: 166, column: 7, scope: !28)
!337 = !DILocation(line: 166, column: 14, scope: !28)
!338 = !DILocation(line: 167, column: 3, scope: !28)
!339 = !DILocalVariable(name: "$BoolUtils.andb_178", scope: !28, file: !2, line: 167, type: !10)
!340 = !DILocalVariable(name: "$p_83", scope: !28, file: !2, line: 170, type: !63)
!341 = !DILocation(line: 170, column: 5, scope: !28)
!342 = !DILocation(line: 170, column: 9, scope: !28)
!343 = !DILocalVariable(name: "$res_86", scope: !28, file: !2, line: 171, type: !10)
!344 = !DILocation(line: 171, column: 5, scope: !28)
!345 = !DILocalVariable(name: "$ans_84", scope: !28, file: !2, line: 172, type: !63)
!346 = !DILocation(line: 172, column: 7, scope: !28)
!347 = !DILocation(line: 172, column: 13, scope: !28)
!348 = !DILocalVariable(name: "$res__85", scope: !28, file: !2, line: 173, type: !10)
!349 = !DILocation(line: 173, column: 7, scope: !28)
!350 = !DILocation(line: 173, column: 14, scope: !28)
!351 = !DILocation(line: 174, column: 3, scope: !28)
!352 = !DILocalVariable(name: "$BoolUtils.andb_180", scope: !28, file: !2, line: 174, type: !10)
!353 = !DILocalVariable(name: "$p_87", scope: !28, file: !2, line: 177, type: !63)
!354 = !DILocation(line: 177, column: 5, scope: !28)
!355 = !DILocation(line: 177, column: 9, scope: !28)
!356 = !DILocalVariable(name: "$res_90", scope: !28, file: !2, line: 178, type: !10)
!357 = !DILocation(line: 178, column: 5, scope: !28)
!358 = !DILocalVariable(name: "$ans_88", scope: !28, file: !2, line: 179, type: !63)
!359 = !DILocation(line: 179, column: 7, scope: !28)
!360 = !DILocation(line: 179, column: 13, scope: !28)
!361 = !DILocalVariable(name: "$res__89", scope: !28, file: !2, line: 180, type: !10)
!362 = !DILocation(line: 180, column: 7, scope: !28)
!363 = !DILocation(line: 180, column: 14, scope: !28)
!364 = !DILocation(line: 181, column: 3, scope: !28)
!365 = !DILocalVariable(name: "$BoolUtils.andb_182", scope: !28, file: !2, line: 181, type: !10)
!366 = !DILocalVariable(name: "$p_91", scope: !28, file: !2, line: 186, type: !67)
!367 = !DILocation(line: 186, column: 5, scope: !28)
!368 = !DILocation(line: 186, column: 9, scope: !28)
!369 = !DILocalVariable(name: "$res_94", scope: !28, file: !2, line: 187, type: !10)
!370 = !DILocation(line: 187, column: 5, scope: !28)
!371 = !DILocalVariable(name: "$ans_92", scope: !28, file: !2, line: 188, type: !67)
!372 = !DILocation(line: 188, column: 7, scope: !28)
!373 = !DILocation(line: 188, column: 13, scope: !28)
!374 = !DILocalVariable(name: "$res__93", scope: !28, file: !2, line: 189, type: !10)
!375 = !DILocation(line: 189, column: 7, scope: !28)
!376 = !DILocation(line: 189, column: 14, scope: !28)
!377 = !DILocation(line: 190, column: 3, scope: !28)
!378 = !DILocalVariable(name: "$BoolUtils.andb_184", scope: !28, file: !2, line: 190, type: !10)
!379 = !DILocalVariable(name: "$p_95", scope: !28, file: !2, line: 193, type: !67)
!380 = !DILocation(line: 193, column: 5, scope: !28)
!381 = !DILocation(line: 193, column: 9, scope: !28)
!382 = !DILocalVariable(name: "$res_98", scope: !28, file: !2, line: 194, type: !10)
!383 = !DILocation(line: 194, column: 5, scope: !28)
!384 = !DILocalVariable(name: "$ans_96", scope: !28, file: !2, line: 195, type: !67)
!385 = !DILocation(line: 195, column: 7, scope: !28)
!386 = !DILocation(line: 195, column: 13, scope: !28)
!387 = !DILocalVariable(name: "$res__97", scope: !28, file: !2, line: 196, type: !10)
!388 = !DILocation(line: 196, column: 7, scope: !28)
!389 = !DILocation(line: 196, column: 14, scope: !28)
!390 = !DILocation(line: 197, column: 3, scope: !28)
!391 = !DILocalVariable(name: "$BoolUtils.andb_186", scope: !28, file: !2, line: 197, type: !10)
!392 = !DILocalVariable(name: "$p_99", scope: !28, file: !2, line: 200, type: !67)
!393 = !DILocation(line: 200, column: 5, scope: !28)
!394 = !DILocation(line: 200, column: 9, scope: !28)
!395 = !DILocalVariable(name: "$res_102", scope: !28, file: !2, line: 201, type: !10)
!396 = !DILocation(line: 201, column: 5, scope: !28)
!397 = !DILocalVariable(name: "$ans_100", scope: !28, file: !2, line: 202, type: !67)
!398 = !DILocation(line: 202, column: 7, scope: !28)
!399 = !DILocation(line: 202, column: 13, scope: !28)
!400 = !DILocalVariable(name: "$res__101", scope: !28, file: !2, line: 203, type: !10)
!401 = !DILocation(line: 203, column: 7, scope: !28)
!402 = !DILocation(line: 203, column: 14, scope: !28)
!403 = !DILocation(line: 204, column: 3, scope: !28)
!404 = !DILocalVariable(name: "$BoolUtils.andb_188", scope: !28, file: !2, line: 204, type: !10)
!405 = !DILocalVariable(name: "$p_103", scope: !28, file: !2, line: 207, type: !67)
!406 = !DILocation(line: 207, column: 5, scope: !28)
!407 = !DILocation(line: 207, column: 9, scope: !28)
!408 = !DILocalVariable(name: "$res_106", scope: !28, file: !2, line: 208, type: !10)
!409 = !DILocation(line: 208, column: 5, scope: !28)
!410 = !DILocalVariable(name: "$ans_104", scope: !28, file: !2, line: 209, type: !67)
!411 = !DILocation(line: 209, column: 7, scope: !28)
!412 = !DILocation(line: 209, column: 13, scope: !28)
!413 = !DILocalVariable(name: "$res__105", scope: !28, file: !2, line: 210, type: !10)
!414 = !DILocation(line: 210, column: 7, scope: !28)
!415 = !DILocation(line: 210, column: 14, scope: !28)
!416 = !DILocation(line: 211, column: 3, scope: !28)
!417 = !DILocalVariable(name: "$BoolUtils.andb_190", scope: !28, file: !2, line: 211, type: !10)
!418 = !DILocalVariable(name: "$p_107", scope: !28, file: !2, line: 216, type: !71)
!419 = !DILocation(line: 216, column: 5, scope: !28)
!420 = !DILocation(line: 216, column: 9, scope: !28)
!421 = !DILocalVariable(name: "$res_110", scope: !28, file: !2, line: 217, type: !10)
!422 = !DILocation(line: 217, column: 5, scope: !28)
!423 = !DILocalVariable(name: "$ans_108", scope: !28, file: !2, line: 218, type: !71)
!424 = !DILocation(line: 218, column: 7, scope: !28)
!425 = !DILocation(line: 218, column: 13, scope: !28)
!426 = !DILocalVariable(name: "$res__109", scope: !28, file: !2, line: 219, type: !10)
!427 = !DILocation(line: 219, column: 7, scope: !28)
!428 = !DILocation(line: 219, column: 14, scope: !28)
!429 = !DILocation(line: 220, column: 3, scope: !28)
!430 = !DILocalVariable(name: "$BoolUtils.andb_192", scope: !28, file: !2, line: 220, type: !10)
!431 = !DILocalVariable(name: "$p_111", scope: !28, file: !2, line: 223, type: !71)
!432 = !DILocation(line: 223, column: 5, scope: !28)
!433 = !DILocation(line: 223, column: 9, scope: !28)
!434 = !DILocalVariable(name: "$res_114", scope: !28, file: !2, line: 224, type: !10)
!435 = !DILocation(line: 224, column: 5, scope: !28)
!436 = !DILocalVariable(name: "$ans_112", scope: !28, file: !2, line: 225, type: !71)
!437 = !DILocation(line: 225, column: 7, scope: !28)
!438 = !DILocation(line: 225, column: 13, scope: !28)
!439 = !DILocalVariable(name: "$res__113", scope: !28, file: !2, line: 226, type: !10)
!440 = !DILocation(line: 226, column: 7, scope: !28)
!441 = !DILocation(line: 226, column: 14, scope: !28)
!442 = !DILocation(line: 227, column: 3, scope: !28)
!443 = !DILocalVariable(name: "$BoolUtils.andb_194", scope: !28, file: !2, line: 227, type: !10)
!444 = !DILocalVariable(name: "$p_115", scope: !28, file: !2, line: 230, type: !71)
!445 = !DILocation(line: 230, column: 5, scope: !28)
!446 = !DILocation(line: 230, column: 9, scope: !28)
!447 = !DILocalVariable(name: "$res_118", scope: !28, file: !2, line: 231, type: !10)
!448 = !DILocation(line: 231, column: 5, scope: !28)
!449 = !DILocalVariable(name: "$ans_116", scope: !28, file: !2, line: 232, type: !71)
!450 = !DILocation(line: 232, column: 7, scope: !28)
!451 = !DILocation(line: 232, column: 13, scope: !28)
!452 = !DILocalVariable(name: "$res__117", scope: !28, file: !2, line: 233, type: !10)
!453 = !DILocation(line: 233, column: 7, scope: !28)
!454 = !DILocation(line: 233, column: 14, scope: !28)
!455 = !DILocation(line: 234, column: 3, scope: !28)
!456 = !DILocalVariable(name: "$BoolUtils.andb_196", scope: !28, file: !2, line: 234, type: !10)
!457 = !DILocalVariable(name: "$p_119", scope: !28, file: !2, line: 237, type: !71)
!458 = !DILocation(line: 237, column: 5, scope: !28)
!459 = !DILocation(line: 237, column: 9, scope: !28)
!460 = !DILocalVariable(name: "$res_122", scope: !28, file: !2, line: 238, type: !10)
!461 = !DILocation(line: 238, column: 5, scope: !28)
!462 = !DILocalVariable(name: "$ans_120", scope: !28, file: !2, line: 239, type: !71)
!463 = !DILocation(line: 239, column: 7, scope: !28)
!464 = !DILocation(line: 239, column: 13, scope: !28)
!465 = !DILocalVariable(name: "$res__121", scope: !28, file: !2, line: 240, type: !10)
!466 = !DILocation(line: 240, column: 7, scope: !28)
!467 = !DILocation(line: 240, column: 14, scope: !28)
!468 = !DILocation(line: 241, column: 3, scope: !28)
!469 = !DILocalVariable(name: "$BoolUtils.andb_198", scope: !28, file: !2, line: 241, type: !10)
!470 = !DILocalVariable(name: "$p_123", scope: !28, file: !2, line: 246, type: !71)
!471 = !DILocation(line: 246, column: 5, scope: !28)
!472 = !DILocation(line: 246, column: 9, scope: !28)
!473 = !DILocalVariable(name: "$res_126", scope: !28, file: !2, line: 247, type: !10)
!474 = !DILocation(line: 247, column: 5, scope: !28)
!475 = !DILocalVariable(name: "$ans_124", scope: !28, file: !2, line: 248, type: !71)
!476 = !DILocation(line: 248, column: 7, scope: !28)
!477 = !DILocation(line: 248, column: 13, scope: !28)
!478 = !DILocalVariable(name: "$res__125", scope: !28, file: !2, line: 249, type: !10)
!479 = !DILocation(line: 249, column: 7, scope: !28)
!480 = !DILocation(line: 249, column: 14, scope: !28)
!481 = !DILocation(line: 250, column: 3, scope: !28)
!482 = !DILocalVariable(name: "$BoolUtils.andb_200", scope: !28, file: !2, line: 250, type: !10)
!483 = !DILocalVariable(name: "$p_127", scope: !28, file: !2, line: 253, type: !71)
!484 = !DILocation(line: 253, column: 5, scope: !28)
!485 = !DILocation(line: 253, column: 9, scope: !28)
!486 = !DILocalVariable(name: "$res_130", scope: !28, file: !2, line: 254, type: !10)
!487 = !DILocation(line: 254, column: 5, scope: !28)
!488 = !DILocalVariable(name: "$ans_128", scope: !28, file: !2, line: 255, type: !71)
!489 = !DILocation(line: 255, column: 7, scope: !28)
!490 = !DILocation(line: 255, column: 13, scope: !28)
!491 = !DILocalVariable(name: "$res__129", scope: !28, file: !2, line: 256, type: !10)
!492 = !DILocation(line: 256, column: 7, scope: !28)
!493 = !DILocation(line: 256, column: 14, scope: !28)
!494 = !DILocation(line: 257, column: 3, scope: !28)
!495 = !DILocalVariable(name: "$BoolUtils.andb_202", scope: !28, file: !2, line: 257, type: !10)
!496 = !DILocalVariable(name: "$p_131", scope: !28, file: !2, line: 260, type: !71)
!497 = !DILocation(line: 260, column: 5, scope: !28)
!498 = !DILocation(line: 260, column: 9, scope: !28)
!499 = !DILocalVariable(name: "$res_134", scope: !28, file: !2, line: 261, type: !10)
!500 = !DILocation(line: 261, column: 5, scope: !28)
!501 = !DILocalVariable(name: "$ans_132", scope: !28, file: !2, line: 262, type: !71)
!502 = !DILocation(line: 262, column: 7, scope: !28)
!503 = !DILocation(line: 262, column: 13, scope: !28)
!504 = !DILocalVariable(name: "$res__133", scope: !28, file: !2, line: 263, type: !10)
!505 = !DILocation(line: 263, column: 7, scope: !28)
!506 = !DILocation(line: 263, column: 14, scope: !28)
!507 = !DILocation(line: 264, column: 3, scope: !28)
!508 = !DILocalVariable(name: "$BoolUtils.andb_204", scope: !28, file: !2, line: 264, type: !10)
!509 = !DILocalVariable(name: "$p_135", scope: !28, file: !2, line: 267, type: !71)
!510 = !DILocation(line: 267, column: 5, scope: !28)
!511 = !DILocation(line: 267, column: 9, scope: !28)
!512 = !DILocalVariable(name: "$res_138", scope: !28, file: !2, line: 268, type: !10)
!513 = !DILocation(line: 268, column: 5, scope: !28)
!514 = !DILocalVariable(name: "$ans_136", scope: !28, file: !2, line: 269, type: !71)
!515 = !DILocation(line: 269, column: 7, scope: !28)
!516 = !DILocation(line: 269, column: 13, scope: !28)
!517 = !DILocalVariable(name: "$res__137", scope: !28, file: !2, line: 270, type: !10)
!518 = !DILocation(line: 270, column: 7, scope: !28)
!519 = !DILocation(line: 270, column: 14, scope: !28)
!520 = !DILocation(line: 271, column: 3, scope: !28)
!521 = !DILocalVariable(name: "$BoolUtils.andb_206", scope: !28, file: !2, line: 271, type: !10)
!522 = !DILocation(line: 276, column: 1, scope: !28)
