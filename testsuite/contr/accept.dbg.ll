

; gas_remaining: 4002000
; ModuleID = 'Accept'
source_filename = "Accept"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_4" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_36" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_35"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_35" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_37"**, %"$TyDescrTy_ADTTyp_36"* }
%"$TyDescrTy_ADTTyp_Constr_37" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_41" = type { i32, %"$TyDescr_AddrFieldTyp_40"* }
%"$TyDescr_AddrFieldTyp_40" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_264" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_265" = type { %ParamDescrString, i32, %"$ParamDescr_264"* }
%"$$fundef_2_env_56" = type {}
%Uint128 = type { i128 }
%String = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_5" = global %"$TyDescrTy_PrimTyp_4" zeroinitializer
@"$TyDescr_Int32_6" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int32_Prim_5" to i8*) }
@"$TyDescr_Uint32_Prim_7" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 0 }
@"$TyDescr_Uint32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint32_Prim_7" to i8*) }
@"$TyDescr_Int64_Prim_9" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 1 }
@"$TyDescr_Int64_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int64_Prim_9" to i8*) }
@"$TyDescr_Uint64_Prim_11" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 1 }
@"$TyDescr_Uint64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint64_Prim_11" to i8*) }
@"$TyDescr_Int128_Prim_13" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 2 }
@"$TyDescr_Int128_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int128_Prim_13" to i8*) }
@"$TyDescr_Uint128_Prim_15" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 2 }
@"$TyDescr_Uint128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint128_Prim_15" to i8*) }
@"$TyDescr_Int256_Prim_17" = global %"$TyDescrTy_PrimTyp_4" { i32 0, i32 3 }
@"$TyDescr_Int256_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Int256_Prim_17" to i8*) }
@"$TyDescr_Uint256_Prim_19" = global %"$TyDescrTy_PrimTyp_4" { i32 1, i32 3 }
@"$TyDescr_Uint256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Uint256_Prim_19" to i8*) }
@"$TyDescr_String_Prim_21" = global %"$TyDescrTy_PrimTyp_4" { i32 2, i32 0 }
@"$TyDescr_String_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_String_Prim_21" to i8*) }
@"$TyDescr_Bnum_Prim_23" = global %"$TyDescrTy_PrimTyp_4" { i32 3, i32 0 }
@"$TyDescr_Bnum_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bnum_Prim_23" to i8*) }
@"$TyDescr_Message_Prim_25" = global %"$TyDescrTy_PrimTyp_4" { i32 4, i32 0 }
@"$TyDescr_Message_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Message_Prim_25" to i8*) }
@"$TyDescr_Event_Prim_27" = global %"$TyDescrTy_PrimTyp_4" { i32 5, i32 0 }
@"$TyDescr_Event_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Event_Prim_27" to i8*) }
@"$TyDescr_Exception_Prim_29" = global %"$TyDescrTy_PrimTyp_4" { i32 6, i32 0 }
@"$TyDescr_Exception_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Exception_Prim_29" to i8*) }
@"$TyDescr_Bystr_Prim_31" = global %"$TyDescrTy_PrimTyp_4" { i32 7, i32 0 }
@"$TyDescr_Bystr_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr_Prim_31" to i8*) }
@"$TyDescr_Bystr20_Prim_33" = global %"$TyDescrTy_PrimTyp_4" { i32 8, i32 20 }
@"$TyDescr_Bystr20_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_4"* @"$TyDescr_Bystr20_Prim_33" to i8*) }
@"$TyDescr_ADT_List_Message_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Message_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_Addr_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_41"* @"$TyDescr_AddrFields_55" to i8*) }
@"$TyDescr_List_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_54", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_35"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_35"*], [1 x %"$TyDescrTy_ADTTyp_Specl_35"*]* @"$TyDescr_List_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38"]
@"$TyDescr_ADT_Cons_45" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_45", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_48" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_37" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_48", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_37"*] [%"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_46", %"$TyDescrTy_ADTTyp_Constr_37"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_49"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_26"]
@"$TyDescr_List_Message_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_35" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_37"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_37"*], [2 x %"$TyDescrTy_ADTTyp_Constr_37"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_36"* @"$TyDescr_List_ADTTyp_43" }
@"$TyDescr_List_ADTTyp_m_specls_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_35"*] [%"$TyDescrTy_ADTTyp_Specl_35"* @"$TyDescr_List_Message_ADTTyp_Specl_52"]
@"$TyDescr_ADT_List_54" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_55" = unnamed_addr constant %"$TyDescr_AddrTyp_41" { i32 -1, %"$TyDescr_AddrFieldTyp_40"* null }
@accept.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@_creation_block = global i8* null
@"$stringlit_132" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_137" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_140" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_147" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_208" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_213" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_216" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_223" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_266" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_267" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_268" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_264"] [%"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_266", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_8" }, %"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_267", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }, %"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_268", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_24" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_269" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_270" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_271" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept1_272" = unnamed_addr constant [3 x %"$ParamDescr_264"] [%"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_269", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_270", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_271", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }]
@"$tname_Accept1_273" = unnamed_addr constant [7 x i8] c"Accept1"
@"$tpname__amount_274" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_275" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_276" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept2_277" = unnamed_addr constant [3 x %"$ParamDescr_264"] [%"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_274", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_275", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_276", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }]
@"$tname_Accept2_278" = unnamed_addr constant [7 x i8] c"Accept2"
@"$tpname__amount_279" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_280" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_281" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept3_282" = unnamed_addr constant [3 x %"$ParamDescr_264"] [%"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_279", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_280", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_264" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_281", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }]
@"$tname_Accept3_283" = unnamed_addr constant [7 x i8] c"Accept3"
@_transition_parameters = constant [3 x %"$TransDescr_265"] [%"$TransDescr_265" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept1_273", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_264"* getelementptr inbounds ([3 x %"$ParamDescr_264"], [3 x %"$ParamDescr_264"]* @"$tparams_Accept1_272", i32 0, i32 0) }, %"$TransDescr_265" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept2_278", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_264"* getelementptr inbounds ([3 x %"$ParamDescr_264"], [3 x %"$ParamDescr_264"]* @"$tparams_Accept2_277", i32 0, i32 0) }, %"$TransDescr_265" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept3_283", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_264"* getelementptr inbounds ([3 x %"$ParamDescr_264"], [3 x %"$ParamDescr_264"]* @"$tparams_Accept3_282", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 3

define internal %TName_List_Message* @"$fundef_2"(%"$$fundef_2_env_56"* %0, i8* %1) !dbg !4 {
entry:
  %"$retval_3" = alloca %TName_List_Message*, align 8
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 1, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %entry
  %"$consume_61" = sub i64 %"$gasrem_57", 1
  store i64 %"$consume_61", i64* @_gasrem, align 8
  %nil_msg = alloca %TName_List_Message*, align 8
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 1, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %"$have_gas_60"
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %"$have_gas_60"
  %"$consume_66" = sub i64 %"$gasrem_62", 1
  store i64 %"$consume_66", i64* @_gasrem, align 8
  %"$adtval_67_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_67_salloc" = call i8* @_salloc(i8* %"$adtval_67_load", i64 1)
  %"$adtval_67" = bitcast i8* %"$adtval_67_salloc" to %CName_Nil_Message*
  %"$adtgep_68" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_67", i32 0, i32 0
  store i8 1, i8* %"$adtgep_68", align 1
  %"$adtptr_69" = bitcast %CName_Nil_Message* %"$adtval_67" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_69", %TName_List_Message** %nil_msg, align 8, !dbg !8
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$have_gas_65"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$have_gas_65"
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  %"$nil_msg_75" = load %TName_List_Message*, %TName_List_Message** %nil_msg, align 8
  %"$adtval_76_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_76_salloc" = call i8* @_salloc(i8* %"$adtval_76_load", i64 17)
  %"$adtval_76" = bitcast i8* %"$adtval_76_salloc" to %CName_Cons_Message*
  %"$adtgep_77" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_76", i32 0, i32 0
  store i8 0, i8* %"$adtgep_77", align 1
  %"$adtgep_78" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_76", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_78", align 8
  %"$adtgep_79" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_76", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_75", %TName_List_Message** %"$adtgep_79", align 8
  %"$adtptr_80" = bitcast %CName_Cons_Message* %"$adtval_76" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_80", %TName_List_Message** %"$retval_3", align 8, !dbg !9
  %"$$retval_3_81" = load %TName_List_Message*, %TName_List_Message** %"$retval_3", align 8
  ret %TName_List_Message* %"$$retval_3_81"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !10 {
entry:
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %entry
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_2_env_56"*, i8*)* @"$fundef_2" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8, !dbg !12
  ret void
}

define void @_init_state() !dbg !13 {
entry:
  ret void
}

define internal void @"$Accept1_90"(%Uint128 %_amount, [20 x i8]* %"$_origin_91", [20 x i8]* %"$_sender_92") !dbg !14 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_91", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_92", align 1
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %entry
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %"$execptr_load_98" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_98"), !dbg !15
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_96"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  %"$execptr_load_104" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_104"), !dbg !16
  ret void
}

declare void @_accept(i8*)

define void @Accept1(i8* %0) !dbg !17 {
entry:
  %"$_amount_106" = getelementptr i8, i8* %0, i32 0
  %"$_amount_107" = bitcast i8* %"$_amount_106" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_107", align 8
  %"$_origin_108" = getelementptr i8, i8* %0, i32 16
  %"$_origin_109" = bitcast i8* %"$_origin_108" to [20 x i8]*
  %"$_sender_110" = getelementptr i8, i8* %0, i32 36
  %"$_sender_111" = bitcast i8* %"$_sender_110" to [20 x i8]*
  call void @"$Accept1_90"(%Uint128 %_amount, [20 x i8]* %"$_origin_109", [20 x i8]* %"$_sender_111"), !dbg !18
  ret void
}

define internal void @"$Accept2_112"(%Uint128 %_amount, [20 x i8]* %"$_origin_113", [20 x i8]* %"$_sender_114") !dbg !19 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_113", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_114", align 1
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %entry
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %"$execptr_load_120" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_120"), !dbg !20
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_118"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %"$msgobj_131_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_131_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_131_salloc_load", i64 125)
  %"$msgobj_131_salloc" = bitcast i8* %"$msgobj_131_salloc_salloc" to [125 x i8]*
  %"$msgobj_131" = bitcast [125 x i8]* %"$msgobj_131_salloc" to i8*
  store i8 3, i8* %"$msgobj_131", align 1
  %"$msgobj_fname_133" = getelementptr i8, i8* %"$msgobj_131", i32 1
  %"$msgobj_fname_134" = bitcast i8* %"$msgobj_fname_133" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_132", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_134", align 8
  %"$msgobj_td_135" = getelementptr i8, i8* %"$msgobj_131", i32 17
  %"$msgobj_td_136" = bitcast i8* %"$msgobj_td_135" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_136", align 8
  %"$msgobj_v_138" = getelementptr i8, i8* %"$msgobj_131", i32 25
  %"$msgobj_v_139" = bitcast i8* %"$msgobj_v_138" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_137", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_139", align 8
  %"$msgobj_fname_141" = getelementptr i8, i8* %"$msgobj_131", i32 41
  %"$msgobj_fname_142" = bitcast i8* %"$msgobj_fname_141" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_140", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_142", align 8
  %"$msgobj_td_143" = getelementptr i8, i8* %"$msgobj_131", i32 57
  %"$msgobj_td_144" = bitcast i8* %"$msgobj_td_143" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ** %"$msgobj_td_144", align 8
  %"$msgobj_v_145" = getelementptr i8, i8* %"$msgobj_131", i32 65
  %"$msgobj_v_146" = bitcast i8* %"$msgobj_v_145" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_146", align 1
  %"$msgobj_fname_148" = getelementptr i8, i8* %"$msgobj_131", i32 85
  %"$msgobj_fname_149" = bitcast i8* %"$msgobj_fname_148" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_147", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_149", align 8
  %"$msgobj_td_150" = getelementptr i8, i8* %"$msgobj_131", i32 101
  %"$msgobj_td_151" = bitcast i8* %"$msgobj_td_150" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_151", align 8
  %"$msgobj_v_152" = getelementptr i8, i8* %"$msgobj_131", i32 109
  %"$msgobj_v_153" = bitcast i8* %"$msgobj_v_152" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_153", align 8
  store i8* %"$msgobj_131", i8** %msg1, align 8, !dbg !21
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_129"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$accept.one_msg_0" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_165" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_166" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_165", 0
  %"$accept.one_msg_envptr_167" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_165", 1
  %"$msg1_168" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_169" = call %TName_List_Message* %"$accept.one_msg_fptr_166"(i8* %"$accept.one_msg_envptr_167", i8* %"$msg1_168"), !dbg !22
  store %TName_List_Message* %"$accept.one_msg_call_169", %TName_List_Message** %"$accept.one_msg_0", align 8, !dbg !22
  %"$$accept.one_msg_0_170" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_0", align 8
  store %TName_List_Message* %"$$accept.one_msg_0_170", %TName_List_Message** %msgs, align 8, !dbg !22
  %"$msgs_171" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_171_172" = bitcast %TName_List_Message* %"$msgs_171" to i8*
  %"$_literal_cost_call_173" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs_171_172")
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 %"$_literal_cost_call_173", %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_163"
  %"$consume_178" = sub i64 %"$gasrem_174", %"$_literal_cost_call_173"
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$execptr_load_179" = load i8*, i8** @_execptr, align 8
  %"$msgs_180" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_179", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs_180"), !dbg !23
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @Accept2(i8* %0) !dbg !24 {
entry:
  %"$_amount_182" = getelementptr i8, i8* %0, i32 0
  %"$_amount_183" = bitcast i8* %"$_amount_182" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_183", align 8
  %"$_origin_184" = getelementptr i8, i8* %0, i32 16
  %"$_origin_185" = bitcast i8* %"$_origin_184" to [20 x i8]*
  %"$_sender_186" = getelementptr i8, i8* %0, i32 36
  %"$_sender_187" = bitcast i8* %"$_sender_186" to [20 x i8]*
  call void @"$Accept2_112"(%Uint128 %_amount, [20 x i8]* %"$_origin_185", [20 x i8]* %"$_sender_187"), !dbg !25
  ret void
}

define internal void @"$Accept3_188"(%Uint128 %_amount, [20 x i8]* %"$_origin_189", [20 x i8]* %"$_sender_190") !dbg !26 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_189", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_190", align 1
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %entry
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %"$execptr_load_196" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_196"), !dbg !27
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_194"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$have_gas_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$msgobj_207_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_207_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_207_salloc_load", i64 125)
  %"$msgobj_207_salloc" = bitcast i8* %"$msgobj_207_salloc_salloc" to [125 x i8]*
  %"$msgobj_207" = bitcast [125 x i8]* %"$msgobj_207_salloc" to i8*
  store i8 3, i8* %"$msgobj_207", align 1
  %"$msgobj_fname_209" = getelementptr i8, i8* %"$msgobj_207", i32 1
  %"$msgobj_fname_210" = bitcast i8* %"$msgobj_fname_209" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_208", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_210", align 8
  %"$msgobj_td_211" = getelementptr i8, i8* %"$msgobj_207", i32 17
  %"$msgobj_td_212" = bitcast i8* %"$msgobj_td_211" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_212", align 8
  %"$msgobj_v_214" = getelementptr i8, i8* %"$msgobj_207", i32 25
  %"$msgobj_v_215" = bitcast i8* %"$msgobj_v_214" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_213", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_215", align 8
  %"$msgobj_fname_217" = getelementptr i8, i8* %"$msgobj_207", i32 41
  %"$msgobj_fname_218" = bitcast i8* %"$msgobj_fname_217" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_216", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_218", align 8
  %"$msgobj_td_219" = getelementptr i8, i8* %"$msgobj_207", i32 57
  %"$msgobj_td_220" = bitcast i8* %"$msgobj_td_219" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ** %"$msgobj_td_220", align 8
  %"$msgobj_v_221" = getelementptr i8, i8* %"$msgobj_207", i32 65
  %"$msgobj_v_222" = bitcast i8* %"$msgobj_v_221" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_222", align 1
  %"$msgobj_fname_224" = getelementptr i8, i8* %"$msgobj_207", i32 85
  %"$msgobj_fname_225" = bitcast i8* %"$msgobj_fname_224" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_223", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_225", align 8
  %"$msgobj_td_226" = getelementptr i8, i8* %"$msgobj_207", i32 101
  %"$msgobj_td_227" = bitcast i8* %"$msgobj_td_226" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_227", align 8
  %"$msgobj_v_228" = getelementptr i8, i8* %"$msgobj_207", i32 109
  %"$msgobj_v_229" = bitcast i8* %"$msgobj_v_228" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_229", align 8
  store i8* %"$msgobj_207", i8** %msg1, align 8, !dbg !28
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_205"
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_234"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %"$accept.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_241" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_242" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_241", 0
  %"$accept.one_msg_envptr_243" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_241", 1
  %"$msg1_244" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_245" = call %TName_List_Message* %"$accept.one_msg_fptr_242"(i8* %"$accept.one_msg_envptr_243", i8* %"$msg1_244"), !dbg !29
  store %TName_List_Message* %"$accept.one_msg_call_245", %TName_List_Message** %"$accept.one_msg_1", align 8, !dbg !29
  %"$$accept.one_msg_1_246" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_1", align 8
  store %TName_List_Message* %"$$accept.one_msg_1_246", %TName_List_Message** %msgs, align 8, !dbg !29
  %"$msgs_247" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_247_248" = bitcast %TName_List_Message* %"$msgs_247" to i8*
  %"$_literal_cost_call_249" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs_247_248")
  %"$gasrem_250" = load i64, i64* @_gasrem, align 8
  %"$gascmp_251" = icmp ugt i64 %"$_literal_cost_call_249", %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_239"
  %"$consume_254" = sub i64 %"$gasrem_250", %"$_literal_cost_call_249"
  store i64 %"$consume_254", i64* @_gasrem, align 8
  %"$execptr_load_255" = load i8*, i8** @_execptr, align 8
  %"$msgs_256" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_255", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs_256"), !dbg !30
  ret void
}

define void @Accept3(i8* %0) !dbg !31 {
entry:
  %"$_amount_258" = getelementptr i8, i8* %0, i32 0
  %"$_amount_259" = bitcast i8* %"$_amount_258" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_259", align 8
  %"$_origin_260" = getelementptr i8, i8* %0, i32 16
  %"$_origin_261" = bitcast i8* %"$_origin_260" to [20 x i8]*
  %"$_sender_262" = getelementptr i8, i8* %0, i32 36
  %"$_sender_263" = bitcast i8* %"$_sender_262" to [20 x i8]*
  call void @"$Accept3_188"(%Uint128 %_amount, [20 x i8]* %"$_origin_261", [20 x i8]* %"$_sender_263"), !dbg !32
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "accept.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_2", linkageName: "$fundef_2", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 7, column: 17, scope: !4)
!9 = !DILocation(line: 8, column: 3, scope: !4)
!10 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DIFile(filename: ".", directory: ".")
!12 = !DILocation(line: 7, column: 3, scope: !10)
!13 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = distinct !DISubprogram(name: "Accept1", linkageName: "Accept1", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 14, column: 3, scope: !14)
!16 = !DILocation(line: 15, column: 3, scope: !14)
!17 = distinct !DISubprogram(name: "Accept1", linkageName: "Accept1", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 13, column: 12, scope: !17)
!19 = distinct !DISubprogram(name: "Accept2", linkageName: "Accept2", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 19, column: 3, scope: !19)
!21 = !DILocation(line: 20, column: 10, scope: !19)
!22 = !DILocation(line: 21, column: 10, scope: !19)
!23 = !DILocation(line: 22, column: 3, scope: !19)
!24 = distinct !DISubprogram(name: "Accept2", linkageName: "Accept2", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DILocation(line: 18, column: 12, scope: !24)
!26 = distinct !DISubprogram(name: "Accept3", linkageName: "Accept3", scope: !2, file: !2, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!27 = !DILocation(line: 26, column: 3, scope: !26)
!28 = !DILocation(line: 27, column: 10, scope: !26)
!29 = !DILocation(line: 28, column: 10, scope: !26)
!30 = !DILocation(line: 29, column: 3, scope: !26)
!31 = distinct !DISubprogram(name: "Accept3", linkageName: "Accept3", scope: !2, file: !2, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!32 = !DILocation(line: 25, column: 12, scope: !31)
