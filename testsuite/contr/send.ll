

; gas_remaining: 4001999
; ModuleID = 'Send'
source_filename = "Send"
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
%"$ParamDescr_287" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_288" = type { %ParamDescrString, i32, %"$ParamDescr_287"* }
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
@send.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_110" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_115" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_118" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_125" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_180" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_185" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_188" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_195" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_214" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_219" = unnamed_addr constant [3 x i8] c"foo"
@"$stringlit_222" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_229" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_289" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_290" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_291" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_287"] [%"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_289", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_290", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_291", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_292" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_293" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_294" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SendMsg_295" = unnamed_addr constant [3 x %"$ParamDescr_287"] [%"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_292", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_293", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_294", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_SendMsg_296" = unnamed_addr constant [7 x i8] c"SendMsg"
@"$tpname__amount_297" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_298" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_299" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SendMsg2_300" = unnamed_addr constant [3 x %"$ParamDescr_287"] [%"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_297", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_298", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_299", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_43" }]
@"$tname_SendMsg2_301" = unnamed_addr constant [8 x i8] c"SendMsg2"
@_transition_parameters = constant [2 x %"$TransDescr_288"] [%"$TransDescr_288" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_SendMsg_296", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_287"* getelementptr inbounds ([3 x %"$ParamDescr_287"], [3 x %"$ParamDescr_287"]* @"$tparams_SendMsg_295", i32 0, i32 0) }, %"$TransDescr_288" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_SendMsg2_301", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_287"* getelementptr inbounds ([3 x %"$ParamDescr_287"], [3 x %"$ParamDescr_287"]* @"$tparams_SendMsg2_300", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

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
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_57"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  ret void
}

define void @_init_state() {
entry:
  ret void
}

define internal void @"$SendMsg_96"(%Uint128 %_amount, [20 x i8]* %"$_origin_97", [20 x i8]* %"$_sender_98") {
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
  %msg1 = alloca i8*, align 8
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$msgobj_109_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_109_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_109_salloc_load", i64 125)
  %"$msgobj_109_salloc" = bitcast i8* %"$msgobj_109_salloc_salloc" to [125 x i8]*
  %"$msgobj_109" = bitcast [125 x i8]* %"$msgobj_109_salloc" to i8*
  store i8 3, i8* %"$msgobj_109", align 1
  %"$msgobj_fname_111" = getelementptr i8, i8* %"$msgobj_109", i32 1
  %"$msgobj_fname_112" = bitcast i8* %"$msgobj_fname_111" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_110", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_112", align 8
  %"$msgobj_td_113" = getelementptr i8, i8* %"$msgobj_109", i32 17
  %"$msgobj_td_114" = bitcast i8* %"$msgobj_td_113" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_114", align 8
  %"$msgobj_v_116" = getelementptr i8, i8* %"$msgobj_109", i32 25
  %"$msgobj_v_117" = bitcast i8* %"$msgobj_v_116" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_115", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_117", align 8
  %"$msgobj_fname_119" = getelementptr i8, i8* %"$msgobj_109", i32 41
  %"$msgobj_fname_120" = bitcast i8* %"$msgobj_fname_119" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_118", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_120", align 8
  %"$msgobj_td_121" = getelementptr i8, i8* %"$msgobj_109", i32 57
  %"$msgobj_td_122" = bitcast i8* %"$msgobj_td_121" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_122", align 8
  %"$msgobj_v_123" = getelementptr i8, i8* %"$msgobj_109", i32 65
  %"$msgobj_v_124" = bitcast i8* %"$msgobj_v_123" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_124", align 1
  %"$msgobj_fname_126" = getelementptr i8, i8* %"$msgobj_109", i32 85
  %"$msgobj_fname_127" = bitcast i8* %"$msgobj_fname_126" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_125", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_127", align 8
  %"$msgobj_td_128" = getelementptr i8, i8* %"$msgobj_109", i32 101
  %"$msgobj_td_129" = bitcast i8* %"$msgobj_td_128" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_129", align 8
  %"$msgobj_v_130" = getelementptr i8, i8* %"$msgobj_109", i32 109
  %"$msgobj_v_131" = bitcast i8* %"$msgobj_v_130" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_131", align 8
  store i8* %"$msgobj_109", i8** %msg1, align 8
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_107"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %"$send.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_143" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_144" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_143", 0
  %"$send.one_msg_envptr_145" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_143", 1
  %"$msg1_146" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_147" = call %TName_List_Message* %"$send.one_msg_fptr_144"(i8* %"$send.one_msg_envptr_145", i8* %"$msg1_146")
  store %TName_List_Message* %"$send.one_msg_call_147", %TName_List_Message** %"$send.one_msg_1", align 8
  %"$$send.one_msg_1_148" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_1", align 8
  store %TName_List_Message* %"$$send.one_msg_1_148", %TName_List_Message** %msgs1, align 8
  %"$msgs1_149" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$$msgs1_149_150" = bitcast %TName_List_Message* %"$msgs1_149" to i8*
  %"$_literal_cost_call_151" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", i8* %"$$msgs1_149_150")
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 %"$_literal_cost_call_151", %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_141"
  %"$consume_156" = sub i64 %"$gasrem_152", %"$_literal_cost_call_151"
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$execptr_load_157" = load i8*, i8** @_execptr, align 8
  %"$msgs1_158" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  call void @_send(i8* %"$execptr_load_157", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %TName_List_Message* %"$msgs1_158")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @SendMsg(i8* %0) {
entry:
  %"$_amount_160" = getelementptr i8, i8* %0, i32 0
  %"$_amount_161" = bitcast i8* %"$_amount_160" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_161", align 8
  %"$_origin_162" = getelementptr i8, i8* %0, i32 16
  %"$_origin_163" = bitcast i8* %"$_origin_162" to [20 x i8]*
  %"$_sender_164" = getelementptr i8, i8* %0, i32 36
  %"$_sender_165" = bitcast i8* %"$_sender_164" to [20 x i8]*
  call void @"$SendMsg_96"(%Uint128 %_amount, [20 x i8]* %"$_origin_163", [20 x i8]* %"$_sender_165")
  ret void
}

define internal void @"$SendMsg2_166"(%Uint128 %_amount, [20 x i8]* %"$_origin_167", [20 x i8]* %"$_sender_168") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_167", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_168", align 1
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %entry
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$msgobj_179_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_179_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_179_salloc_load", i64 125)
  %"$msgobj_179_salloc" = bitcast i8* %"$msgobj_179_salloc_salloc" to [125 x i8]*
  %"$msgobj_179" = bitcast [125 x i8]* %"$msgobj_179_salloc" to i8*
  store i8 3, i8* %"$msgobj_179", align 1
  %"$msgobj_fname_181" = getelementptr i8, i8* %"$msgobj_179", i32 1
  %"$msgobj_fname_182" = bitcast i8* %"$msgobj_fname_181" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_180", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_182", align 8
  %"$msgobj_td_183" = getelementptr i8, i8* %"$msgobj_179", i32 17
  %"$msgobj_td_184" = bitcast i8* %"$msgobj_td_183" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_184", align 8
  %"$msgobj_v_186" = getelementptr i8, i8* %"$msgobj_179", i32 25
  %"$msgobj_v_187" = bitcast i8* %"$msgobj_v_186" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_185", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_187", align 8
  %"$msgobj_fname_189" = getelementptr i8, i8* %"$msgobj_179", i32 41
  %"$msgobj_fname_190" = bitcast i8* %"$msgobj_fname_189" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_188", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_190", align 8
  %"$msgobj_td_191" = getelementptr i8, i8* %"$msgobj_179", i32 57
  %"$msgobj_td_192" = bitcast i8* %"$msgobj_td_191" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_35", %_TyDescrTy_Typ** %"$msgobj_td_192", align 8
  %"$msgobj_v_193" = getelementptr i8, i8* %"$msgobj_179", i32 65
  %"$msgobj_v_194" = bitcast i8* %"$msgobj_v_193" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_194", align 1
  %"$msgobj_fname_196" = getelementptr i8, i8* %"$msgobj_179", i32 85
  %"$msgobj_fname_197" = bitcast i8* %"$msgobj_fname_196" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_195", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_197", align 8
  %"$msgobj_td_198" = getelementptr i8, i8* %"$msgobj_179", i32 101
  %"$msgobj_td_199" = bitcast i8* %"$msgobj_td_198" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_199", align 8
  %"$msgobj_v_200" = getelementptr i8, i8* %"$msgobj_179", i32 109
  %"$msgobj_v_201" = bitcast i8* %"$msgobj_v_200" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_201", align 8
  store i8* %"$msgobj_179", i8** %msg1, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_177"
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
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
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_219", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_221", align 8
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
  store i8* %"$msgobj_213", i8** %msg2, align 8
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 1, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_211"
  %"$consume_241" = sub i64 %"$gasrem_237", 1
  store i64 %"$consume_241", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_240"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$send.one_msg_2" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_247" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_248" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_247", 0
  %"$send.one_msg_envptr_249" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_247", 1
  %"$msg1_250" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_251" = call %TName_List_Message* %"$send.one_msg_fptr_248"(i8* %"$send.one_msg_envptr_249", i8* %"$msg1_250")
  store %TName_List_Message* %"$send.one_msg_call_251", %TName_List_Message** %"$send.one_msg_2", align 8
  %"$$send.one_msg_2_252" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_2", align 8
  store %TName_List_Message* %"$$send.one_msg_2_252", %TName_List_Message** %msgs1, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_245"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_256"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %"$msg2_263" = load i8*, i8** %msg2, align 8
  %"$msgs1_264" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_265_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_265_salloc" = call i8* @_salloc(i8* %"$adtval_265_load", i64 17)
  %"$adtval_265" = bitcast i8* %"$adtval_265_salloc" to %CName_Cons_Message*
  %"$adtgep_266" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_265", i32 0, i32 0
  store i8 0, i8* %"$adtgep_266", align 1
  %"$adtgep_267" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_265", i32 0, i32 1
  store i8* %"$msg2_263", i8** %"$adtgep_267", align 8
  %"$adtgep_268" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_265", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_264", %TName_List_Message** %"$adtgep_268", align 8
  %"$adtptr_269" = bitcast %CName_Cons_Message* %"$adtval_265" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_269", %TName_List_Message** %msgs2, align 8
  %"$msgs2_270" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_270_271" = bitcast %TName_List_Message* %"$msgs2_270" to i8*
  %"$_literal_cost_call_272" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", i8* %"$$msgs2_270_271")
  %"$gasrem_273" = load i64, i64* @_gasrem, align 8
  %"$gascmp_274" = icmp ugt i64 %"$_literal_cost_call_272", %"$gasrem_273"
  br i1 %"$gascmp_274", label %"$out_of_gas_275", label %"$have_gas_276"

"$out_of_gas_275":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_276"

"$have_gas_276":                                  ; preds = %"$out_of_gas_275", %"$have_gas_261"
  %"$consume_277" = sub i64 %"$gasrem_273", %"$_literal_cost_call_272"
  store i64 %"$consume_277", i64* @_gasrem, align 8
  %"$execptr_load_278" = load i8*, i8** @_execptr, align 8
  %"$msgs2_279" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_278", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_39", %TName_List_Message* %"$msgs2_279")
  ret void
}

define void @SendMsg2(i8* %0) {
entry:
  %"$_amount_281" = getelementptr i8, i8* %0, i32 0
  %"$_amount_282" = bitcast i8* %"$_amount_281" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_282", align 8
  %"$_origin_283" = getelementptr i8, i8* %0, i32 16
  %"$_origin_284" = bitcast i8* %"$_origin_283" to [20 x i8]*
  %"$_sender_285" = getelementptr i8, i8* %0, i32 36
  %"$_sender_286" = bitcast i8* %"$_sender_285" to [20 x i8]*
  call void @"$SendMsg2_166"(%Uint128 %_amount, [20 x i8]* %"$_origin_284", [20 x i8]* %"$_sender_286")
  ret void
}
