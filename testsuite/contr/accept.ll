

; gas_remaining: 4001999
; ModuleID = 'Accept'
source_filename = "Accept"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_44" = type { i32, %"$TyDescr_AddrFieldTyp_43"* }
%"$TyDescr_AddrFieldTyp_43" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_277" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_278" = type { %ParamDescrString, i32, %"$ParamDescr_277"* }
%"$$fundef_3_env_59" = type {}
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
@"$TyDescr_ReplicateContr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_ReplicateContr_Prim_32" to i8*) }
@"$TyDescr_Bystr_Prim_34" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_34" to i8*) }
@"$TyDescr_Bystr20_Prim_36" = global %"$TyDescrTy_PrimTyp_5" { i32 8, i32 20 }
@"$TyDescr_Bystr20_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr20_Prim_36" to i8*) }
@"$TyDescr_ADT_List_Message_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Message_ADTTyp_Specl_55" to i8*) }
@"$TyDescr_Addr_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_58" to i8*) }
@"$TyDescr_List_ADTTyp_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_57", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_List_ADTTyp_m_specls_56", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_47" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41"]
@"$TyDescr_ADT_Cons_48" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_48", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_51" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_51", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_53" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_49", %"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_52"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_54" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_27"]
@"$TyDescr_List_Message_ADTTyp_Specl_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_40"*], [2 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_List_ADTTyp_46" }
@"$TyDescr_List_ADTTyp_m_specls_56" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_List_Message_ADTTyp_Specl_55"]
@"$TyDescr_ADT_List_57" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_58" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 -3, %"$TyDescr_AddrFieldTyp_43"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@accept.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_145" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_150" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_153" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_160" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_221" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_226" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_229" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_236" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_279" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_280" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_281" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_277"] [%"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_279", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_280", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_281", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_282" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_283" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_284" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept1_285" = unnamed_addr constant [3 x %"$ParamDescr_277"] [%"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_282", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_283", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_284", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_Accept1_286" = unnamed_addr constant [7 x i8] c"Accept1"
@"$tpname__amount_287" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_288" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_289" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept2_290" = unnamed_addr constant [3 x %"$ParamDescr_277"] [%"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_287", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_288", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_289", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_Accept2_291" = unnamed_addr constant [7 x i8] c"Accept2"
@"$tpname__amount_292" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_293" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_294" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept3_295" = unnamed_addr constant [3 x %"$ParamDescr_277"] [%"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_292", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_293", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_277" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_294", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_Accept3_296" = unnamed_addr constant [7 x i8] c"Accept3"
@_transition_parameters = constant [3 x %"$TransDescr_278"] [%"$TransDescr_278" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept1_286", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_277"* getelementptr inbounds ([3 x %"$ParamDescr_277"], [3 x %"$ParamDescr_277"]* @"$tparams_Accept1_285", i32 0, i32 0) }, %"$TransDescr_278" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept2_291", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_277"* getelementptr inbounds ([3 x %"$ParamDescr_277"], [3 x %"$ParamDescr_277"]* @"$tparams_Accept2_290", i32 0, i32 0) }, %"$TransDescr_278" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept3_296", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_277"* getelementptr inbounds ([3 x %"$ParamDescr_277"], [3 x %"$ParamDescr_277"]* @"$tparams_Accept3_295", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 3

define internal %TName_List_Message* @"$fundef_3"(%"$$fundef_3_env_59"* %0, i8* %1) {
entry:
  %"$retval_4" = alloca %TName_List_Message*, align 8
  %"$gasrem_60" = load i64, i64* @_gasrem, align 8
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %entry
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem, align 8
  %nil_msg = alloca %TName_List_Message*, align 8
  %"$gasrem_65" = load i64, i64* @_gasrem, align 8
  %"$gascmp_66" = icmp ugt i64 1, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %"$have_gas_63"
  %"$consume_69" = sub i64 %"$gasrem_65", 1
  store i64 %"$consume_69", i64* @_gasrem, align 8
  %"$adtval_70_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_70_salloc" = call i8* @_salloc(i8* %"$adtval_70_load", i64 1)
  %"$adtval_70" = bitcast i8* %"$adtval_70_salloc" to %CName_Nil_Message*
  %"$adtgep_71" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_70", i32 0, i32 0
  store i8 1, i8* %"$adtgep_71", align 1
  %"$adtptr_72" = bitcast %CName_Nil_Message* %"$adtval_70" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_72", %TName_List_Message** %nil_msg, align 8
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 1, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %"$have_gas_68"
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %"$have_gas_68"
  %"$consume_77" = sub i64 %"$gasrem_73", 1
  store i64 %"$consume_77", i64* @_gasrem, align 8
  %"$nil_msg_78" = load %TName_List_Message*, %TName_List_Message** %nil_msg, align 8
  %"$adtval_79_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_79_salloc" = call i8* @_salloc(i8* %"$adtval_79_load", i64 17)
  %"$adtval_79" = bitcast i8* %"$adtval_79_salloc" to %CName_Cons_Message*
  %"$adtgep_80" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_79", i32 0, i32 0
  store i8 0, i8* %"$adtgep_80", align 1
  %"$adtgep_81" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_79", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_81", align 8
  %"$adtgep_82" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_79", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_78", %TName_List_Message** %"$adtgep_82", align 8
  %"$adtptr_83" = bitcast %CName_Cons_Message* %"$adtval_79" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_83", %TName_List_Message** %"$retval_4", align 8
  %"$$retval_4_84" = load %TName_List_Message*, %TName_List_Message** %"$retval_4", align 8
  ret %TName_List_Message* %"$$retval_4_84"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_85" = load i64, i64* @_gasrem, align 8
  %"$gascmp_86" = icmp ugt i64 5, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %entry
  %"$consume_89" = sub i64 %"$gasrem_85", 5
  store i64 %"$consume_89", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  %"$gasrem_90" = load i64, i64* @_gasrem, align 8
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_59"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  ret void
}

define void @_deploy_ops() {
entry:
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %entry
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  ret void
}

define internal void @"$Accept1_103"(%Uint128 %_amount, [20 x i8]* %"$_origin_104", [20 x i8]* %"$_sender_105") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_104", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_105", align 1
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %entry
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$execptr_load_111" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_111")
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$have_gas_109"
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %"$execptr_load_117" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_117")
  ret void
}

declare void @_accept(i8*)

define void @Accept1(i8* %0) {
entry:
  %"$_amount_119" = getelementptr i8, i8* %0, i32 0
  %"$_amount_120" = bitcast i8* %"$_amount_119" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_120", align 8
  %"$_origin_121" = getelementptr i8, i8* %0, i32 16
  %"$_origin_122" = bitcast i8* %"$_origin_121" to [20 x i8]*
  %"$_sender_123" = getelementptr i8, i8* %0, i32 36
  %"$_sender_124" = bitcast i8* %"$_sender_123" to [20 x i8]*
  call void @"$Accept1_103"(%Uint128 %_amount, [20 x i8]* %"$_origin_122", [20 x i8]* %"$_sender_124")
  ret void
}

define internal void @"$Accept2_125"(%Uint128 %_amount, [20 x i8]* %"$_origin_126", [20 x i8]* %"$_sender_127") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_126", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_127", align 1
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %entry
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %"$execptr_load_133" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_133")
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 1, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_131"
  %"$consume_138" = sub i64 %"$gasrem_134", 1
  store i64 %"$consume_138", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  %"$msgobj_144_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_144_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_144_salloc_load", i64 125)
  %"$msgobj_144_salloc" = bitcast i8* %"$msgobj_144_salloc_salloc" to [125 x i8]*
  %"$msgobj_144" = bitcast [125 x i8]* %"$msgobj_144_salloc" to i8*
  store i8 3, i8* %"$msgobj_144", align 1
  %"$msgobj_fname_146" = getelementptr i8, i8* %"$msgobj_144", i32 1
  %"$msgobj_fname_147" = bitcast i8* %"$msgobj_fname_146" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_145", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_147", align 8
  %"$msgobj_td_148" = getelementptr i8, i8* %"$msgobj_144", i32 17
  %"$msgobj_td_149" = bitcast i8* %"$msgobj_td_148" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_149", align 8
  %"$msgobj_v_151" = getelementptr i8, i8* %"$msgobj_144", i32 25
  %"$msgobj_v_152" = bitcast i8* %"$msgobj_v_151" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_150", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_152", align 8
  %"$msgobj_fname_154" = getelementptr i8, i8* %"$msgobj_144", i32 41
  %"$msgobj_fname_155" = bitcast i8* %"$msgobj_fname_154" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_153", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_155", align 8
  %"$msgobj_td_156" = getelementptr i8, i8* %"$msgobj_144", i32 57
  %"$msgobj_td_157" = bitcast i8* %"$msgobj_td_156" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_157", align 8
  %"$msgobj_v_158" = getelementptr i8, i8* %"$msgobj_144", i32 65
  %"$msgobj_v_159" = bitcast i8* %"$msgobj_v_158" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_159", align 1
  %"$msgobj_fname_161" = getelementptr i8, i8* %"$msgobj_144", i32 85
  %"$msgobj_fname_162" = bitcast i8* %"$msgobj_fname_161" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_160", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_162", align 8
  %"$msgobj_td_163" = getelementptr i8, i8* %"$msgobj_144", i32 101
  %"$msgobj_td_164" = bitcast i8* %"$msgobj_td_163" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_164", align 8
  %"$msgobj_v_165" = getelementptr i8, i8* %"$msgobj_144", i32 109
  %"$msgobj_v_166" = bitcast i8* %"$msgobj_v_165" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_166", align 8
  store i8* %"$msgobj_144", i8** %msg1, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_142"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %"$have_gas_171"
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  %"$accept.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_178" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_179" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_178", 0
  %"$accept.one_msg_envptr_180" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_178", 1
  %"$msg1_181" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_182" = call %TName_List_Message* %"$accept.one_msg_fptr_179"(i8* %"$accept.one_msg_envptr_180", i8* %"$msg1_181")
  store %TName_List_Message* %"$accept.one_msg_call_182", %TName_List_Message** %"$accept.one_msg_1", align 8
  %"$$accept.one_msg_1_183" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_1", align 8
  store %TName_List_Message* %"$$accept.one_msg_1_183", %TName_List_Message** %msgs, align 8
  %"$msgs_184" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_184_185" = bitcast %TName_List_Message* %"$msgs_184" to i8*
  %"$_literal_cost_call_186" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", i8* %"$$msgs_184_185")
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 %"$_literal_cost_call_186", %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_176"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_176"
  %"$consume_191" = sub i64 %"$gasrem_187", %"$_literal_cost_call_186"
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$execptr_load_192" = load i8*, i8** @_execptr, align 8
  %"$msgs_193" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_192", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %TName_List_Message* %"$msgs_193")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @Accept2(i8* %0) {
entry:
  %"$_amount_195" = getelementptr i8, i8* %0, i32 0
  %"$_amount_196" = bitcast i8* %"$_amount_195" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_196", align 8
  %"$_origin_197" = getelementptr i8, i8* %0, i32 16
  %"$_origin_198" = bitcast i8* %"$_origin_197" to [20 x i8]*
  %"$_sender_199" = getelementptr i8, i8* %0, i32 36
  %"$_sender_200" = bitcast i8* %"$_sender_199" to [20 x i8]*
  call void @"$Accept2_125"(%Uint128 %_amount, [20 x i8]* %"$_origin_198", [20 x i8]* %"$_sender_200")
  ret void
}

define internal void @"$Accept3_201"(%Uint128 %_amount, [20 x i8]* %"$_origin_202", [20 x i8]* %"$_sender_203") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_202", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_203", align 1
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %entry
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$execptr_load_209" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_209")
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_207"
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_213"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %"$msgobj_220_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_220_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_220_salloc_load", i64 125)
  %"$msgobj_220_salloc" = bitcast i8* %"$msgobj_220_salloc_salloc" to [125 x i8]*
  %"$msgobj_220" = bitcast [125 x i8]* %"$msgobj_220_salloc" to i8*
  store i8 3, i8* %"$msgobj_220", align 1
  %"$msgobj_fname_222" = getelementptr i8, i8* %"$msgobj_220", i32 1
  %"$msgobj_fname_223" = bitcast i8* %"$msgobj_fname_222" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_221", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_223", align 8
  %"$msgobj_td_224" = getelementptr i8, i8* %"$msgobj_220", i32 17
  %"$msgobj_td_225" = bitcast i8* %"$msgobj_td_224" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_225", align 8
  %"$msgobj_v_227" = getelementptr i8, i8* %"$msgobj_220", i32 25
  %"$msgobj_v_228" = bitcast i8* %"$msgobj_v_227" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_226", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_228", align 8
  %"$msgobj_fname_230" = getelementptr i8, i8* %"$msgobj_220", i32 41
  %"$msgobj_fname_231" = bitcast i8* %"$msgobj_fname_230" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_229", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_231", align 8
  %"$msgobj_td_232" = getelementptr i8, i8* %"$msgobj_220", i32 57
  %"$msgobj_td_233" = bitcast i8* %"$msgobj_td_232" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_233", align 8
  %"$msgobj_v_234" = getelementptr i8, i8* %"$msgobj_220", i32 65
  %"$msgobj_v_235" = bitcast i8* %"$msgobj_v_234" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_235", align 1
  %"$msgobj_fname_237" = getelementptr i8, i8* %"$msgobj_220", i32 85
  %"$msgobj_fname_238" = bitcast i8* %"$msgobj_fname_237" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_236", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_238", align 8
  %"$msgobj_td_239" = getelementptr i8, i8* %"$msgobj_220", i32 101
  %"$msgobj_td_240" = bitcast i8* %"$msgobj_td_239" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_240", align 8
  %"$msgobj_v_241" = getelementptr i8, i8* %"$msgobj_220", i32 109
  %"$msgobj_v_242" = bitcast i8* %"$msgobj_v_241" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_242", align 8
  store i8* %"$msgobj_220", i8** %msg1, align 8
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_218"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$accept.one_msg_2" = alloca %TName_List_Message*, align 8
  %"$accept.one_msg_254" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_255" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_254", 0
  %"$accept.one_msg_envptr_256" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_254", 1
  %"$msg1_257" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_258" = call %TName_List_Message* %"$accept.one_msg_fptr_255"(i8* %"$accept.one_msg_envptr_256", i8* %"$msg1_257")
  store %TName_List_Message* %"$accept.one_msg_call_258", %TName_List_Message** %"$accept.one_msg_2", align 8
  %"$$accept.one_msg_2_259" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_2", align 8
  store %TName_List_Message* %"$$accept.one_msg_2_259", %TName_List_Message** %msgs, align 8
  %"$msgs_260" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_260_261" = bitcast %TName_List_Message* %"$msgs_260" to i8*
  %"$_literal_cost_call_262" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", i8* %"$$msgs_260_261")
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 %"$_literal_cost_call_262", %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_252"
  %"$consume_267" = sub i64 %"$gasrem_263", %"$_literal_cost_call_262"
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$execptr_load_268" = load i8*, i8** @_execptr, align 8
  %"$msgs_269" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_268", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %TName_List_Message* %"$msgs_269")
  ret void
}

define void @Accept3(i8* %0) {
entry:
  %"$_amount_271" = getelementptr i8, i8* %0, i32 0
  %"$_amount_272" = bitcast i8* %"$_amount_271" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_272", align 8
  %"$_origin_273" = getelementptr i8, i8* %0, i32 16
  %"$_origin_274" = bitcast i8* %"$_origin_273" to [20 x i8]*
  %"$_sender_275" = getelementptr i8, i8* %0, i32 36
  %"$_sender_276" = bitcast i8* %"$_sender_275" to [20 x i8]*
  call void @"$Accept3_201"(%Uint128 %_amount, [20 x i8]* %"$_origin_274", [20 x i8]* %"$_sender_276")
  ret void
}
