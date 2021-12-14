

; gas_remaining: 4001999
; ModuleID = 'Accept'
source_filename = "Accept"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_37" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_36"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_36" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_38"**, %"$TyDescrTy_ADTTyp_37"* }
%"$TyDescrTy_ADTTyp_Constr_38" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_42" = type { i32, %"$TyDescr_AddrFieldTyp_41"* }
%"$TyDescr_AddrFieldTyp_41" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_270" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_271" = type { %ParamDescrString, i32, %"$ParamDescr_270"* }
%"$$fundef_3_env_57" = type {}
%Uint128 = type { i128 }
%String = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_6" = global %"$TyDescrTy_PrimTyp_5" zeroinitializer
@"$TyDescr_Int32_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int32_Prim_6" to i8*) }
@"$TyDescr_Uint32_Prim_8" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 0 }
@"$TyDescr_Uint32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint32_Prim_8" to i8*) }
@"$TyDescr_Int64_Prim_10" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 1 }
@"$TyDescr_Int64_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int64_Prim_10" to i8*) }
@"$TyDescr_Uint64_Prim_12" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 1 }
@"$TyDescr_Uint64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint64_Prim_12" to i8*) }
@"$TyDescr_Int128_Prim_14" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 2 }
@"$TyDescr_Int128_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int128_Prim_14" to i8*) }
@"$TyDescr_Uint128_Prim_16" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 2 }
@"$TyDescr_Uint128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint128_Prim_16" to i8*) }
@"$TyDescr_Int256_Prim_18" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 3 }
@"$TyDescr_Int256_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int256_Prim_18" to i8*) }
@"$TyDescr_Uint256_Prim_20" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 3 }
@"$TyDescr_Uint256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint256_Prim_20" to i8*) }
@"$TyDescr_String_Prim_22" = global %"$TyDescrTy_PrimTyp_5" { i32 2, i32 0 }
@"$TyDescr_String_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_String_Prim_22" to i8*) }
@"$TyDescr_Bnum_Prim_24" = global %"$TyDescrTy_PrimTyp_5" { i32 3, i32 0 }
@"$TyDescr_Bnum_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bnum_Prim_24" to i8*) }
@"$TyDescr_Message_Prim_26" = global %"$TyDescrTy_PrimTyp_5" { i32 4, i32 0 }
@"$TyDescr_Message_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Message_Prim_26" to i8*) }
@"$TyDescr_Event_Prim_28" = global %"$TyDescrTy_PrimTyp_5" { i32 5, i32 0 }
@"$TyDescr_Event_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Event_Prim_28" to i8*) }
@"$TyDescr_Exception_Prim_30" = global %"$TyDescrTy_PrimTyp_5" { i32 6, i32 0 }
@"$TyDescr_Exception_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Exception_Prim_30" to i8*) }
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_Bystr20_Prim_34" = global %"$TyDescrTy_PrimTyp_5" { i32 8, i32 20 }
@"$TyDescr_Bystr20_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr20_Prim_34" to i8*) }
@"$TyDescr_ADT_List_Message_39" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Message_ADTTyp_Specl_53" to i8*) }
@"$TyDescr_Addr_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_42"* @"$TyDescr_AddrFields_56" to i8*) }
@"$TyDescr_List_ADTTyp_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_37" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_55", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_36"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_36"*], [1 x %"$TyDescrTy_ADTTyp_Specl_36"*]* @"$TyDescr_List_ADTTyp_m_specls_54", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_45" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39"]
@"$TyDescr_ADT_Cons_46" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_46", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_48" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_49" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_38" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_49", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_48", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_38"*] [%"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_47", %"$TyDescrTy_ADTTyp_Constr_38"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_50"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_52" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_27"]
@"$TyDescr_List_Message_ADTTyp_Specl_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_36" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_52", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_38"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_38"*], [2 x %"$TyDescrTy_ADTTyp_Constr_38"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_37"* @"$TyDescr_List_ADTTyp_44" }
@"$TyDescr_List_ADTTyp_m_specls_54" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_36"*] [%"$TyDescrTy_ADTTyp_Specl_36"* @"$TyDescr_List_Message_ADTTyp_Specl_53"]
@"$TyDescr_ADT_List_55" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_56" = unnamed_addr constant %"$TyDescr_AddrTyp_42" { i32 -1, %"$TyDescr_AddrFieldTyp_41"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@accept.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_138" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_143" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_146" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_153" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_214" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_219" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_222" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_229" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_272" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_273" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_274" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_270"] [%"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_272", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_273", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_274", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_275" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_276" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_277" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept1_278" = unnamed_addr constant [3 x %"$ParamDescr_270"] [%"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_275", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_276", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_277", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Accept1_279" = unnamed_addr constant [7 x i8] c"Accept1"
@"$tpname__amount_280" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_281" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_282" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept2_283" = unnamed_addr constant [3 x %"$ParamDescr_270"] [%"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_280", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_281", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_282", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Accept2_284" = unnamed_addr constant [7 x i8] c"Accept2"
@"$tpname__amount_285" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_286" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_287" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept3_288" = unnamed_addr constant [3 x %"$ParamDescr_270"] [%"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_285", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_286", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_270" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_287", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Accept3_289" = unnamed_addr constant [7 x i8] c"Accept3"
@_transition_parameters = constant [3 x %"$TransDescr_271"] [%"$TransDescr_271" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept1_279", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_270"* getelementptr inbounds ([3 x %"$ParamDescr_270"], [3 x %"$ParamDescr_270"]* @"$tparams_Accept1_278", i32 0, i32 0) }, %"$TransDescr_271" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept2_284", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_270"* getelementptr inbounds ([3 x %"$ParamDescr_270"], [3 x %"$ParamDescr_270"]* @"$tparams_Accept2_283", i32 0, i32 0) }, %"$TransDescr_271" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept3_289", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_270"* getelementptr inbounds ([3 x %"$ParamDescr_270"], [3 x %"$ParamDescr_270"]* @"$tparams_Accept3_288", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 3

define internal %TName_List_Message* @"$fundef_3"(%"$$fundef_3_env_57"* %0, i8* %1) !dbg !4 {
entry:
  %"$retval_4" = alloca %TName_List_Message*, align 8
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %entry
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  %nil_msg = alloca %TName_List_Message*, align 8
  %"$gasrem_63" = load i64, i64* @_gasrem, align 8
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %"$have_gas_61"
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem, align 8
  %"$adtval_68_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_68_salloc" = call i8* @_salloc(i8* %"$adtval_68_load", i64 1)
  %"$adtval_68" = bitcast i8* %"$adtval_68_salloc" to %CName_Nil_Message*
  %"$adtgep_69" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_68", i32 0, i32 0
  store i8 1, i8* %"$adtgep_69", align 1
  %"$adtptr_70" = bitcast %CName_Nil_Message* %"$adtval_68" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_70", %TName_List_Message** %nil_msg, align 8, !dbg !8
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %"$have_gas_66"
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem, align 8
  %"$nil_msg_76" = load %TName_List_Message*, %TName_List_Message** %nil_msg, align 8
  %"$adtval_77_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_77_salloc" = call i8* @_salloc(i8* %"$adtval_77_load", i64 17)
  %"$adtval_77" = bitcast i8* %"$adtval_77_salloc" to %CName_Cons_Message*
  %"$adtgep_78" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_77", i32 0, i32 0
  store i8 0, i8* %"$adtgep_78", align 1
  %"$adtgep_79" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_77", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_79", align 8
  %"$adtgep_80" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_77", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_76", %TName_List_Message** %"$adtgep_80", align 8
  %"$adtptr_81" = bitcast %CName_Cons_Message* %"$adtval_77" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_81", %TName_List_Message** %"$retval_4", align 8, !dbg !9
  %"$$retval_4_82" = load %TName_List_Message*, %TName_List_Message** %"$retval_4", align 8
  ret %TName_List_Message* %"$$retval_4_82"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !10 {
entry:
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 5, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %entry
  %"$consume_87" = sub i64 %"$gasrem_83", 5
  store i64 %"$consume_87", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !12
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_57"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8, !dbg !13
  ret void
}

define void @_init_state() !dbg !14 {
entry:
  ret void
}

define internal void @"$Accept1_96"(%Uint128 %_amount, [20 x i8]* %"$_origin_97", [20 x i8]* %"$_sender_98") !dbg !15 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_97", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_98", align 1
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %entry
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  %"$execptr_load_104" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_104"), !dbg !16
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_102"
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  %"$execptr_load_110" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_110"), !dbg !17
  ret void
}

declare void @_accept(i8*)

define void @Accept1(i8* %0) !dbg !18 {
entry:
  %"$_amount_112" = getelementptr i8, i8* %0, i32 0
  %"$_amount_113" = bitcast i8* %"$_amount_112" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_113", align 8
  %"$_origin_114" = getelementptr i8, i8* %0, i32 16
  %"$_origin_115" = bitcast i8* %"$_origin_114" to [20 x i8]*
  %"$_sender_116" = getelementptr i8, i8* %0, i32 36
  %"$_sender_117" = bitcast i8* %"$_sender_116" to [20 x i8]*
  call void @"$Accept1_96"(%Uint128 %_amount, [20 x i8]* %"$_origin_115", [20 x i8]* %"$_sender_117"), !dbg !19
  ret void
}

define internal void @"$Accept2_118"(%Uint128 %_amount, [20 x i8]* %"$_origin_119", [20 x i8]* %"$_sender_120") !dbg !20 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_119", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_120", align 1
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %entry
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %"$execptr_load_126" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_126"), !dbg !21
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_124"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %"$msgobj_137_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_137_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_137_salloc_load", i64 125)
  %"$msgobj_137_salloc" = bitcast i8* %"$msgobj_137_salloc_salloc" to [125 x i8]*
  %"$msgobj_137" = bitcast [125 x i8]* %"$msgobj_137_salloc" to i8*
  store i8 3, i8* %"$msgobj_137", align 1
  %"$msgobj_fname_139" = getelementptr i8, i8* %"$msgobj_137", i32 1
  %"$msgobj_fname_140" = bitcast i8* %"$msgobj_fname_139" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_138", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_140", align 8
  %"$msgobj_td_141" = getelementptr i8, i8* %"$msgobj_137", i32 17
  %"$msgobj_td_142" = bitcast i8* %"$msgobj_td_141" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_142", align 8
  %"$msgobj_v_144" = getelementptr i8, i8* %"$msgobj_137", i32 25
  %"$msgobj_v_145" = bitcast i8* %"$msgobj_v_144" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_143", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_145", align 8
  %"$msgobj_fname_147" = getelementptr i8, i8* %"$msgobj_137", i32 41
  %"$msgobj_fname_148" = bitcast i8* %"$msgobj_fname_147" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_146", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_148", align 8
  %"$msgobj_td_149" = getelementptr i8, i8* %"$msgobj_137", i32 57
  %"$msgobj_td_150" = bitcast i8* %"$msgobj_td_149" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_150", align 8
  %"$msgobj_v_151" = getelementptr i8, i8* %"$msgobj_137", i32 65
  %"$msgobj_v_152" = bitcast i8* %"$msgobj_v_151" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_152", align 1
  %"$msgobj_fname_154" = getelementptr i8, i8* %"$msgobj_137", i32 85
  %"$msgobj_fname_155" = bitcast i8* %"$msgobj_fname_154" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_153", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_155", align 8
  %"$msgobj_td_156" = getelementptr i8, i8* %"$msgobj_137", i32 101
  %"$msgobj_td_157" = bitcast i8* %"$msgobj_td_156" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_157", align 8
  %"$msgobj_v_158" = getelementptr i8, i8* %"$msgobj_137", i32 109
  %"$msgobj_v_159" = bitcast i8* %"$msgobj_v_158" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_159", align 8
  store i8* %"$msgobj_137", i8** %msg1, align 8, !dbg !22
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_135"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %"$accept.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_171" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_172" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_171", 0
  %"$accept.one_msg_envptr_173" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_171", 1
  %"$msg1_174" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_175" = call %TName_List_Message* %"$accept.one_msg_fptr_172"(i8* %"$accept.one_msg_envptr_173", i8* %"$msg1_174"), !dbg !23
  store %TName_List_Message* %"$accept.one_msg_call_175", %TName_List_Message** %"$accept.one_msg_1", align 8, !dbg !23
  %"$$accept.one_msg_1_176" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_1", align 8
  store %TName_List_Message* %"$$accept.one_msg_1_176", %TName_List_Message** %msgs, align 8, !dbg !23
  %"$msgs_177" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_177_178" = bitcast %TName_List_Message* %"$msgs_177" to i8*
  %"$_literal_cost_call_179" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", i8* %"$$msgs_177_178")
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 %"$_literal_cost_call_179", %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_169"
  %"$consume_184" = sub i64 %"$gasrem_180", %"$_literal_cost_call_179"
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$execptr_load_185" = load i8*, i8** @_execptr, align 8
  %"$msgs_186" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_185", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %TName_List_Message* %"$msgs_186"), !dbg !24
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @Accept2(i8* %0) !dbg !25 {
entry:
  %"$_amount_188" = getelementptr i8, i8* %0, i32 0
  %"$_amount_189" = bitcast i8* %"$_amount_188" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_189", align 8
  %"$_origin_190" = getelementptr i8, i8* %0, i32 16
  %"$_origin_191" = bitcast i8* %"$_origin_190" to [20 x i8]*
  %"$_sender_192" = getelementptr i8, i8* %0, i32 36
  %"$_sender_193" = bitcast i8* %"$_sender_192" to [20 x i8]*
  call void @"$Accept2_118"(%Uint128 %_amount, [20 x i8]* %"$_origin_191", [20 x i8]* %"$_sender_193"), !dbg !26
  ret void
}

define internal void @"$Accept3_194"(%Uint128 %_amount, [20 x i8]* %"$_origin_195", [20 x i8]* %"$_sender_196") !dbg !27 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_195", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_196", align 1
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %entry
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$execptr_load_202" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_202"), !dbg !28
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_200"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_200"
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_206"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %"$msgobj_213_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_213_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_213_salloc_load", i64 125)
  %"$msgobj_213_salloc" = bitcast i8* %"$msgobj_213_salloc_salloc" to [125 x i8]*
  %"$msgobj_213" = bitcast [125 x i8]* %"$msgobj_213_salloc" to i8*
  store i8 3, i8* %"$msgobj_213", align 1
  %"$msgobj_fname_215" = getelementptr i8, i8* %"$msgobj_213", i32 1
  %"$msgobj_fname_216" = bitcast i8* %"$msgobj_fname_215" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_214", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_216", align 8
  %"$msgobj_td_217" = getelementptr i8, i8* %"$msgobj_213", i32 17
  %"$msgobj_td_218" = bitcast i8* %"$msgobj_td_217" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_218", align 8
  %"$msgobj_v_220" = getelementptr i8, i8* %"$msgobj_213", i32 25
  %"$msgobj_v_221" = bitcast i8* %"$msgobj_v_220" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_219", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_221", align 8
  %"$msgobj_fname_223" = getelementptr i8, i8* %"$msgobj_213", i32 41
  %"$msgobj_fname_224" = bitcast i8* %"$msgobj_fname_223" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_222", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_224", align 8
  %"$msgobj_td_225" = getelementptr i8, i8* %"$msgobj_213", i32 57
  %"$msgobj_td_226" = bitcast i8* %"$msgobj_td_225" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_226", align 8
  %"$msgobj_v_227" = getelementptr i8, i8* %"$msgobj_213", i32 65
  %"$msgobj_v_228" = bitcast i8* %"$msgobj_v_227" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_228", align 1
  %"$msgobj_fname_230" = getelementptr i8, i8* %"$msgobj_213", i32 85
  %"$msgobj_fname_231" = bitcast i8* %"$msgobj_fname_230" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_229", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_231", align 8
  %"$msgobj_td_232" = getelementptr i8, i8* %"$msgobj_213", i32 101
  %"$msgobj_td_233" = bitcast i8* %"$msgobj_td_232" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_233", align 8
  %"$msgobj_v_234" = getelementptr i8, i8* %"$msgobj_213", i32 109
  %"$msgobj_v_235" = bitcast i8* %"$msgobj_v_234" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_235", align 8
  store i8* %"$msgobj_213", i8** %msg1, align 8, !dbg !29
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 1, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_211"
  %"$consume_241" = sub i64 %"$gasrem_237", 1
  store i64 %"$consume_241", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_240"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$accept.one_msg_2" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_247" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_248" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_247", 0
  %"$accept.one_msg_envptr_249" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_247", 1
  %"$msg1_250" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_251" = call %TName_List_Message* %"$accept.one_msg_fptr_248"(i8* %"$accept.one_msg_envptr_249", i8* %"$msg1_250"), !dbg !30
  store %TName_List_Message* %"$accept.one_msg_call_251", %TName_List_Message** %"$accept.one_msg_2", align 8, !dbg !30
  %"$$accept.one_msg_2_252" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_2", align 8
  store %TName_List_Message* %"$$accept.one_msg_2_252", %TName_List_Message** %msgs, align 8, !dbg !30
  %"$msgs_253" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_253_254" = bitcast %TName_List_Message* %"$msgs_253" to i8*
  %"$_literal_cost_call_255" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", i8* %"$$msgs_253_254")
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 %"$_literal_cost_call_255", %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_245"
  %"$consume_260" = sub i64 %"$gasrem_256", %"$_literal_cost_call_255"
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %"$execptr_load_261" = load i8*, i8** @_execptr, align 8
  %"$msgs_262" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_261", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %TName_List_Message* %"$msgs_262"), !dbg !31
  ret void
}

define void @Accept3(i8* %0) !dbg !32 {
entry:
  %"$_amount_264" = getelementptr i8, i8* %0, i32 0
  %"$_amount_265" = bitcast i8* %"$_amount_264" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_265", align 8
  %"$_origin_266" = getelementptr i8, i8* %0, i32 16
  %"$_origin_267" = bitcast i8* %"$_origin_266" to [20 x i8]*
  %"$_sender_268" = getelementptr i8, i8* %0, i32 36
  %"$_sender_269" = bitcast i8* %"$_sender_268" to [20 x i8]*
  call void @"$Accept3_194"(%Uint128 %_amount, [20 x i8]* %"$_origin_267", [20 x i8]* %"$_sender_269"), !dbg !33
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "accept.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 7, column: 17, scope: !4)
!9 = !DILocation(line: 8, column: 3, scope: !4)
!10 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DIFile(filename: ".", directory: ".")
!12 = !DILocation(line: 0, scope: !10)
!13 = !DILocation(line: 7, column: 3, scope: !10)
!14 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = distinct !DISubprogram(name: "Accept1", linkageName: "Accept1", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 14, column: 3, scope: !15)
!17 = !DILocation(line: 15, column: 3, scope: !15)
!18 = distinct !DISubprogram(name: "Accept1", linkageName: "Accept1", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DILocation(line: 13, column: 12, scope: !18)
!20 = distinct !DISubprogram(name: "Accept2", linkageName: "Accept2", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 19, column: 3, scope: !20)
!22 = !DILocation(line: 20, column: 10, scope: !20)
!23 = !DILocation(line: 21, column: 10, scope: !20)
!24 = !DILocation(line: 22, column: 3, scope: !20)
!25 = distinct !DISubprogram(name: "Accept2", linkageName: "Accept2", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!26 = !DILocation(line: 18, column: 12, scope: !25)
!27 = distinct !DISubprogram(name: "Accept3", linkageName: "Accept3", scope: !2, file: !2, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!28 = !DILocation(line: 26, column: 3, scope: !27)
!29 = !DILocation(line: 27, column: 10, scope: !27)
!30 = !DILocation(line: 28, column: 10, scope: !27)
!31 = !DILocation(line: 29, column: 3, scope: !27)
!32 = distinct !DISubprogram(name: "Accept3", linkageName: "Accept3", scope: !2, file: !2, line: 25, type: !5, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 25, column: 12, scope: !32)
