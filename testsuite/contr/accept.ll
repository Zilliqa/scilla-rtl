

; gas_remaining: 4001999
; ModuleID = 'Accept'
source_filename = "Accept"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_275" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_276" = type { %ParamDescrString, i32, %"$ParamDescr_275"* }
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
@"$stringlit_143" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_148" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_151" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_158" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_219" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_224" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_227" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_234" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_277" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_278" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_279" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_275"] [%"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_277", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_278", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_279", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_280" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_281" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_282" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept1_283" = unnamed_addr constant [3 x %"$ParamDescr_275"] [%"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_280", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_281", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_282", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Accept1_284" = unnamed_addr constant [7 x i8] c"Accept1"
@"$tpname__amount_285" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_286" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_287" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept2_288" = unnamed_addr constant [3 x %"$ParamDescr_275"] [%"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_285", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_286", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_287", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Accept2_289" = unnamed_addr constant [7 x i8] c"Accept2"
@"$tpname__amount_290" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_291" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_292" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept3_293" = unnamed_addr constant [3 x %"$ParamDescr_275"] [%"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_290", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_291", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_275" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_292", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_Accept3_294" = unnamed_addr constant [7 x i8] c"Accept3"
@_transition_parameters = constant [3 x %"$TransDescr_276"] [%"$TransDescr_276" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept1_284", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_275"* getelementptr inbounds ([3 x %"$ParamDescr_275"], [3 x %"$ParamDescr_275"]* @"$tparams_Accept1_283", i32 0, i32 0) }, %"$TransDescr_276" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept2_289", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_275"* getelementptr inbounds ([3 x %"$ParamDescr_275"], [3 x %"$ParamDescr_275"]* @"$tparams_Accept2_288", i32 0, i32 0) }, %"$TransDescr_276" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept3_294", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_275"* getelementptr inbounds ([3 x %"$ParamDescr_275"], [3 x %"$ParamDescr_275"]* @"$tparams_Accept3_293", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 3

define internal %TName_List_Message* @"$fundef_3"(%"$$fundef_3_env_57"* %0, i8* %1) {
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
  store %TName_List_Message* %"$adtptr_70", %TName_List_Message** %nil_msg, align 8
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
  store %TName_List_Message* %"$adtptr_81", %TName_List_Message** %"$retval_4", align 8
  %"$$retval_4_82" = load %TName_List_Message*, %TName_List_Message** %"$retval_4", align 8
  ret %TName_List_Message* %"$$retval_4_82"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_57"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  ret void
}

define void @_deploy_ops() {
entry:
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %entry
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  ret void
}

define internal void @"$Accept1_101"(%Uint128 %_amount, [20 x i8]* %"$_origin_102", [20 x i8]* %"$_sender_103") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_102", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_103", align 1
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %entry
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$execptr_load_109" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_109")
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_107"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %"$execptr_load_115" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_115")
  ret void
}

declare void @_accept(i8*)

define void @Accept1(i8* %0) {
entry:
  %"$_amount_117" = getelementptr i8, i8* %0, i32 0
  %"$_amount_118" = bitcast i8* %"$_amount_117" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_118", align 8
  %"$_origin_119" = getelementptr i8, i8* %0, i32 16
  %"$_origin_120" = bitcast i8* %"$_origin_119" to [20 x i8]*
  %"$_sender_121" = getelementptr i8, i8* %0, i32 36
  %"$_sender_122" = bitcast i8* %"$_sender_121" to [20 x i8]*
  call void @"$Accept1_101"(%Uint128 %_amount, [20 x i8]* %"$_origin_120", [20 x i8]* %"$_sender_122")
  ret void
}

define internal void @"$Accept2_123"(%Uint128 %_amount, [20 x i8]* %"$_origin_124", [20 x i8]* %"$_sender_125") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_124", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_125", align 1
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %entry
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %"$execptr_load_131" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_131")
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_129"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %"$msgobj_142_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_142_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_142_salloc_load", i64 125)
  %"$msgobj_142_salloc" = bitcast i8* %"$msgobj_142_salloc_salloc" to [125 x i8]*
  %"$msgobj_142" = bitcast [125 x i8]* %"$msgobj_142_salloc" to i8*
  store i8 3, i8* %"$msgobj_142", align 1
  %"$msgobj_fname_144" = getelementptr i8, i8* %"$msgobj_142", i32 1
  %"$msgobj_fname_145" = bitcast i8* %"$msgobj_fname_144" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_143", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_145", align 8
  %"$msgobj_td_146" = getelementptr i8, i8* %"$msgobj_142", i32 17
  %"$msgobj_td_147" = bitcast i8* %"$msgobj_td_146" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_147", align 8
  %"$msgobj_v_149" = getelementptr i8, i8* %"$msgobj_142", i32 25
  %"$msgobj_v_150" = bitcast i8* %"$msgobj_v_149" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_148", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_150", align 8
  %"$msgobj_fname_152" = getelementptr i8, i8* %"$msgobj_142", i32 41
  %"$msgobj_fname_153" = bitcast i8* %"$msgobj_fname_152" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_151", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_153", align 8
  %"$msgobj_td_154" = getelementptr i8, i8* %"$msgobj_142", i32 57
  %"$msgobj_td_155" = bitcast i8* %"$msgobj_td_154" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_155", align 8
  %"$msgobj_v_156" = getelementptr i8, i8* %"$msgobj_142", i32 65
  %"$msgobj_v_157" = bitcast i8* %"$msgobj_v_156" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_157", align 1
  %"$msgobj_fname_159" = getelementptr i8, i8* %"$msgobj_142", i32 85
  %"$msgobj_fname_160" = bitcast i8* %"$msgobj_fname_159" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_158", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_160", align 8
  %"$msgobj_td_161" = getelementptr i8, i8* %"$msgobj_142", i32 101
  %"$msgobj_td_162" = bitcast i8* %"$msgobj_td_161" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_162", align 8
  %"$msgobj_v_163" = getelementptr i8, i8* %"$msgobj_142", i32 109
  %"$msgobj_v_164" = bitcast i8* %"$msgobj_v_163" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_164", align 8
  store i8* %"$msgobj_142", i8** %msg1, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_140"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$accept.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_176" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_177" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_176", 0
  %"$accept.one_msg_envptr_178" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_176", 1
  %"$msg1_179" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_180" = call %TName_List_Message* %"$accept.one_msg_fptr_177"(i8* %"$accept.one_msg_envptr_178", i8* %"$msg1_179")
  store %TName_List_Message* %"$accept.one_msg_call_180", %TName_List_Message** %"$accept.one_msg_1", align 8
  %"$$accept.one_msg_1_181" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_1", align 8
  store %TName_List_Message* %"$$accept.one_msg_1_181", %TName_List_Message** %msgs, align 8
  %"$msgs_182" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_182_183" = bitcast %TName_List_Message* %"$msgs_182" to i8*
  %"$_literal_cost_call_184" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", i8* %"$$msgs_182_183")
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 %"$_literal_cost_call_184", %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_174"
  %"$consume_189" = sub i64 %"$gasrem_185", %"$_literal_cost_call_184"
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$execptr_load_190" = load i8*, i8** @_execptr, align 8
  %"$msgs_191" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_190", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %TName_List_Message* %"$msgs_191")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @Accept2(i8* %0) {
entry:
  %"$_amount_193" = getelementptr i8, i8* %0, i32 0
  %"$_amount_194" = bitcast i8* %"$_amount_193" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_194", align 8
  %"$_origin_195" = getelementptr i8, i8* %0, i32 16
  %"$_origin_196" = bitcast i8* %"$_origin_195" to [20 x i8]*
  %"$_sender_197" = getelementptr i8, i8* %0, i32 36
  %"$_sender_198" = bitcast i8* %"$_sender_197" to [20 x i8]*
  call void @"$Accept2_123"(%Uint128 %_amount, [20 x i8]* %"$_origin_196", [20 x i8]* %"$_sender_198")
  ret void
}

define internal void @"$Accept3_199"(%Uint128 %_amount, [20 x i8]* %"$_origin_200", [20 x i8]* %"$_sender_201") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_200", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_201", align 1
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %entry
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$execptr_load_207" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_207")
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_205"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_211"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %"$msgobj_218_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_218_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_218_salloc_load", i64 125)
  %"$msgobj_218_salloc" = bitcast i8* %"$msgobj_218_salloc_salloc" to [125 x i8]*
  %"$msgobj_218" = bitcast [125 x i8]* %"$msgobj_218_salloc" to i8*
  store i8 3, i8* %"$msgobj_218", align 1
  %"$msgobj_fname_220" = getelementptr i8, i8* %"$msgobj_218", i32 1
  %"$msgobj_fname_221" = bitcast i8* %"$msgobj_fname_220" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_219", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_221", align 8
  %"$msgobj_td_222" = getelementptr i8, i8* %"$msgobj_218", i32 17
  %"$msgobj_td_223" = bitcast i8* %"$msgobj_td_222" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_223", align 8
  %"$msgobj_v_225" = getelementptr i8, i8* %"$msgobj_218", i32 25
  %"$msgobj_v_226" = bitcast i8* %"$msgobj_v_225" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_224", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_226", align 8
  %"$msgobj_fname_228" = getelementptr i8, i8* %"$msgobj_218", i32 41
  %"$msgobj_fname_229" = bitcast i8* %"$msgobj_fname_228" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_227", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_229", align 8
  %"$msgobj_td_230" = getelementptr i8, i8* %"$msgobj_218", i32 57
  %"$msgobj_td_231" = bitcast i8* %"$msgobj_td_230" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_231", align 8
  %"$msgobj_v_232" = getelementptr i8, i8* %"$msgobj_218", i32 65
  %"$msgobj_v_233" = bitcast i8* %"$msgobj_v_232" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_233", align 1
  %"$msgobj_fname_235" = getelementptr i8, i8* %"$msgobj_218", i32 85
  %"$msgobj_fname_236" = bitcast i8* %"$msgobj_fname_235" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_234", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_236", align 8
  %"$msgobj_td_237" = getelementptr i8, i8* %"$msgobj_218", i32 101
  %"$msgobj_td_238" = bitcast i8* %"$msgobj_td_237" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_238", align 8
  %"$msgobj_v_239" = getelementptr i8, i8* %"$msgobj_218", i32 109
  %"$msgobj_v_240" = bitcast i8* %"$msgobj_v_239" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_240", align 8
  store i8* %"$msgobj_218", i8** %msg1, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_216"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_245"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %"$accept.one_msg_2" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_252" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_253" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_252", 0
  %"$accept.one_msg_envptr_254" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_252", 1
  %"$msg1_255" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_256" = call %TName_List_Message* %"$accept.one_msg_fptr_253"(i8* %"$accept.one_msg_envptr_254", i8* %"$msg1_255")
  store %TName_List_Message* %"$accept.one_msg_call_256", %TName_List_Message** %"$accept.one_msg_2", align 8
  %"$$accept.one_msg_2_257" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_2", align 8
  store %TName_List_Message* %"$$accept.one_msg_2_257", %TName_List_Message** %msgs, align 8
  %"$msgs_258" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_258_259" = bitcast %TName_List_Message* %"$msgs_258" to i8*
  %"$_literal_cost_call_260" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", i8* %"$$msgs_258_259")
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 %"$_literal_cost_call_260", %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_250"
  %"$consume_265" = sub i64 %"$gasrem_261", %"$_literal_cost_call_260"
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %"$execptr_load_266" = load i8*, i8** @_execptr, align 8
  %"$msgs_267" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_266", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %TName_List_Message* %"$msgs_267")
  ret void
}

define void @Accept3(i8* %0) {
entry:
  %"$_amount_269" = getelementptr i8, i8* %0, i32 0
  %"$_amount_270" = bitcast i8* %"$_amount_269" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_270", align 8
  %"$_origin_271" = getelementptr i8, i8* %0, i32 16
  %"$_origin_272" = bitcast i8* %"$_origin_271" to [20 x i8]*
  %"$_sender_273" = getelementptr i8, i8* %0, i32 36
  %"$_sender_274" = bitcast i8* %"$_sender_273" to [20 x i8]*
  call void @"$Accept3_199"(%Uint128 %_amount, [20 x i8]* %"$_origin_272", [20 x i8]* %"$_sender_274")
  ret void
}
