

; gas_remaining: 4002000
; ModuleID = 'Send'
source_filename = "Send"
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
%"$ParamDescr_281" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_282" = type { %ParamDescrString, i32, %"$ParamDescr_281"* }
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
@send.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@_creation_block = global i8* null
@"$stringlit_104" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_109" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_112" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_119" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_174" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_179" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_182" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_189" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_208" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_213" = unnamed_addr constant [3 x i8] c"foo"
@"$stringlit_216" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_223" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %_TyDescrTy_Typ* @"$TyDescr_Event_28", %_TyDescrTy_Typ* @"$TyDescr_Int64_10", %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34", %_TyDescrTy_Typ* @"$TyDescr_Uint256_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_8", %_TyDescrTy_Typ* @"$TyDescr_Uint64_12", %_TyDescrTy_Typ* @"$TyDescr_Bnum_24", %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ* @"$TyDescr_Exception_30", %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ* @"$TyDescr_Int256_18", %_TyDescrTy_Typ* @"$TyDescr_Int128_14", %_TyDescrTy_Typ* @"$TyDescr_Bystr_32", %_TyDescrTy_Typ* @"$TyDescr_Message_26", %_TyDescrTy_Typ* @"$TyDescr_Int32_6"]
@_tydescr_table_length = constant i32 17
@"$pname__scilla_version_283" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_284" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_285" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_281"] [%"$ParamDescr_281" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_283", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_8" }, %"$ParamDescr_281" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_284", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_34" }, %"$ParamDescr_281" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_285", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_24" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_286" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_287" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_288" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SendMsg_289" = unnamed_addr constant [3 x %"$ParamDescr_281"] [%"$ParamDescr_281" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_286", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_281" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_287", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_281" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_288", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }]
@"$tname_SendMsg_290" = unnamed_addr constant [7 x i8] c"SendMsg"
@"$tpname__amount_291" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_292" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_293" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SendMsg2_294" = unnamed_addr constant [3 x %"$ParamDescr_281"] [%"$ParamDescr_281" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_291", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_16" }, %"$ParamDescr_281" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_292", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }, %"$ParamDescr_281" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_293", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_42" }]
@"$tname_SendMsg2_295" = unnamed_addr constant [8 x i8] c"SendMsg2"
@_transition_parameters = constant [2 x %"$TransDescr_282"] [%"$TransDescr_282" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_SendMsg_290", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_281"* getelementptr inbounds ([3 x %"$ParamDescr_281"], [3 x %"$ParamDescr_281"]* @"$tparams_SendMsg_289", i32 0, i32 0) }, %"$TransDescr_282" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_SendMsg2_295", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_281"* getelementptr inbounds ([3 x %"$ParamDescr_281"], [3 x %"$ParamDescr_281"]* @"$tparams_SendMsg2_294", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

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
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_2_env_56"*, i8*)* @"$fundef_2" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8, !dbg !12
  ret void
}

define void @_init_state() !dbg !13 {
entry:
  ret void
}

define internal void @"$SendMsg_90"(%Uint128 %_amount, [20 x i8]* %"$_origin_91", [20 x i8]* %"$_sender_92") !dbg !14 {
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
  %msg1 = alloca i8*, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$msgobj_103_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_103_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_103_salloc_load", i64 125)
  %"$msgobj_103_salloc" = bitcast i8* %"$msgobj_103_salloc_salloc" to [125 x i8]*
  %"$msgobj_103" = bitcast [125 x i8]* %"$msgobj_103_salloc" to i8*
  store i8 3, i8* %"$msgobj_103", align 1
  %"$msgobj_fname_105" = getelementptr i8, i8* %"$msgobj_103", i32 1
  %"$msgobj_fname_106" = bitcast i8* %"$msgobj_fname_105" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_104", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_106", align 8
  %"$msgobj_td_107" = getelementptr i8, i8* %"$msgobj_103", i32 17
  %"$msgobj_td_108" = bitcast i8* %"$msgobj_td_107" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_108", align 8
  %"$msgobj_v_110" = getelementptr i8, i8* %"$msgobj_103", i32 25
  %"$msgobj_v_111" = bitcast i8* %"$msgobj_v_110" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_109", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_111", align 8
  %"$msgobj_fname_113" = getelementptr i8, i8* %"$msgobj_103", i32 41
  %"$msgobj_fname_114" = bitcast i8* %"$msgobj_fname_113" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_112", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_114", align 8
  %"$msgobj_td_115" = getelementptr i8, i8* %"$msgobj_103", i32 57
  %"$msgobj_td_116" = bitcast i8* %"$msgobj_td_115" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ** %"$msgobj_td_116", align 8
  %"$msgobj_v_117" = getelementptr i8, i8* %"$msgobj_103", i32 65
  %"$msgobj_v_118" = bitcast i8* %"$msgobj_v_117" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_118", align 1
  %"$msgobj_fname_120" = getelementptr i8, i8* %"$msgobj_103", i32 85
  %"$msgobj_fname_121" = bitcast i8* %"$msgobj_fname_120" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_119", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_121", align 8
  %"$msgobj_td_122" = getelementptr i8, i8* %"$msgobj_103", i32 101
  %"$msgobj_td_123" = bitcast i8* %"$msgobj_td_122" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_123", align 8
  %"$msgobj_v_124" = getelementptr i8, i8* %"$msgobj_103", i32 109
  %"$msgobj_v_125" = bitcast i8* %"$msgobj_v_124" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_125", align 8
  store i8* %"$msgobj_103", i8** %msg1, align 8, !dbg !15
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_101"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %"$send.one_msg_0" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_137" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_138" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_137", 0
  %"$send.one_msg_envptr_139" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_137", 1
  %"$msg1_140" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_141" = call %TName_List_Message* %"$send.one_msg_fptr_138"(i8* %"$send.one_msg_envptr_139", i8* %"$msg1_140"), !dbg !16
  store %TName_List_Message* %"$send.one_msg_call_141", %TName_List_Message** %"$send.one_msg_0", align 8, !dbg !16
  %"$$send.one_msg_0_142" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_0", align 8
  store %TName_List_Message* %"$$send.one_msg_0_142", %TName_List_Message** %msgs1, align 8, !dbg !16
  %"$msgs1_143" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$$msgs1_143_144" = bitcast %TName_List_Message* %"$msgs1_143" to i8*
  %"$_literal_cost_call_145" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs1_143_144")
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 %"$_literal_cost_call_145", %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_135"
  %"$consume_150" = sub i64 %"$gasrem_146", %"$_literal_cost_call_145"
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %"$execptr_load_151" = load i8*, i8** @_execptr, align 8
  %"$msgs1_152" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  call void @_send(i8* %"$execptr_load_151", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs1_152"), !dbg !17
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @SendMsg(i8* %0) !dbg !18 {
entry:
  %"$_amount_154" = getelementptr i8, i8* %0, i32 0
  %"$_amount_155" = bitcast i8* %"$_amount_154" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_155", align 8
  %"$_origin_156" = getelementptr i8, i8* %0, i32 16
  %"$_origin_157" = bitcast i8* %"$_origin_156" to [20 x i8]*
  %"$_sender_158" = getelementptr i8, i8* %0, i32 36
  %"$_sender_159" = bitcast i8* %"$_sender_158" to [20 x i8]*
  call void @"$SendMsg_90"(%Uint128 %_amount, [20 x i8]* %"$_origin_157", [20 x i8]* %"$_sender_159"), !dbg !19
  ret void
}

define internal void @"$SendMsg2_160"(%Uint128 %_amount, [20 x i8]* %"$_origin_161", [20 x i8]* %"$_sender_162") !dbg !20 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_161", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_162", align 1
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %entry
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %"$msgobj_173_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_173_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_173_salloc_load", i64 125)
  %"$msgobj_173_salloc" = bitcast i8* %"$msgobj_173_salloc_salloc" to [125 x i8]*
  %"$msgobj_173" = bitcast [125 x i8]* %"$msgobj_173_salloc" to i8*
  store i8 3, i8* %"$msgobj_173", align 1
  %"$msgobj_fname_175" = getelementptr i8, i8* %"$msgobj_173", i32 1
  %"$msgobj_fname_176" = bitcast i8* %"$msgobj_fname_175" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_174", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_176", align 8
  %"$msgobj_td_177" = getelementptr i8, i8* %"$msgobj_173", i32 17
  %"$msgobj_td_178" = bitcast i8* %"$msgobj_td_177" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_22", %_TyDescrTy_Typ** %"$msgobj_td_178", align 8
  %"$msgobj_v_180" = getelementptr i8, i8* %"$msgobj_173", i32 25
  %"$msgobj_v_181" = bitcast i8* %"$msgobj_v_180" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_179", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_181", align 8
  %"$msgobj_fname_183" = getelementptr i8, i8* %"$msgobj_173", i32 41
  %"$msgobj_fname_184" = bitcast i8* %"$msgobj_fname_183" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_182", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_184", align 8
  %"$msgobj_td_185" = getelementptr i8, i8* %"$msgobj_173", i32 57
  %"$msgobj_td_186" = bitcast i8* %"$msgobj_td_185" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Addr_42", %_TyDescrTy_Typ** %"$msgobj_td_186", align 8
  %"$msgobj_v_187" = getelementptr i8, i8* %"$msgobj_173", i32 65
  %"$msgobj_v_188" = bitcast i8* %"$msgobj_v_187" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_188", align 1
  %"$msgobj_fname_190" = getelementptr i8, i8* %"$msgobj_173", i32 85
  %"$msgobj_fname_191" = bitcast i8* %"$msgobj_fname_190" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_189", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_191", align 8
  %"$msgobj_td_192" = getelementptr i8, i8* %"$msgobj_173", i32 101
  %"$msgobj_td_193" = bitcast i8* %"$msgobj_td_192" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_16", %_TyDescrTy_Typ** %"$msgobj_td_193", align 8
  %"$msgobj_v_194" = getelementptr i8, i8* %"$msgobj_173", i32 109
  %"$msgobj_v_195" = bitcast i8* %"$msgobj_v_194" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_195", align 8
  store i8* %"$msgobj_173", i8** %msg1, align 8, !dbg !21
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %"$have_gas_171"
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
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
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_213", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_215", align 8
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
  store i8* %"$msgobj_207", i8** %msg2, align 8, !dbg !22
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_205"
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_234"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %"$send.one_msg_1" = alloca %TName_List_Message*, align 8
  %"$send.one_msg_241" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_242" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_241", 0
  %"$send.one_msg_envptr_243" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_241", 1
  %"$msg1_244" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_245" = call %TName_List_Message* %"$send.one_msg_fptr_242"(i8* %"$send.one_msg_envptr_243", i8* %"$msg1_244"), !dbg !23
  store %TName_List_Message* %"$send.one_msg_call_245", %TName_List_Message** %"$send.one_msg_1", align 8, !dbg !23
  %"$$send.one_msg_1_246" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_1", align 8
  store %TName_List_Message* %"$$send.one_msg_1_246", %TName_List_Message** %msgs1, align 8, !dbg !23
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_239"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 1, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_250"
  %"$consume_256" = sub i64 %"$gasrem_252", 1
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %"$msg2_257" = load i8*, i8** %msg2, align 8
  %"$msgs1_258" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_259_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_259_salloc" = call i8* @_salloc(i8* %"$adtval_259_load", i64 17)
  %"$adtval_259" = bitcast i8* %"$adtval_259_salloc" to %CName_Cons_Message*
  %"$adtgep_260" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_259", i32 0, i32 0
  store i8 0, i8* %"$adtgep_260", align 1
  %"$adtgep_261" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_259", i32 0, i32 1
  store i8* %"$msg2_257", i8** %"$adtgep_261", align 8
  %"$adtgep_262" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_259", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_258", %TName_List_Message** %"$adtgep_262", align 8
  %"$adtptr_263" = bitcast %CName_Cons_Message* %"$adtval_259" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_263", %TName_List_Message** %msgs2, align 8, !dbg !24
  %"$msgs2_264" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_264_265" = bitcast %TName_List_Message* %"$msgs2_264" to i8*
  %"$_literal_cost_call_266" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", i8* %"$$msgs2_264_265")
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 %"$_literal_cost_call_266", %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_255"
  %"$consume_271" = sub i64 %"$gasrem_267", %"$_literal_cost_call_266"
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %"$execptr_load_272" = load i8*, i8** @_execptr, align 8
  %"$msgs2_273" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_272", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_38", %TName_List_Message* %"$msgs2_273"), !dbg !25
  ret void
}

define void @SendMsg2(i8* %0) !dbg !26 {
entry:
  %"$_amount_275" = getelementptr i8, i8* %0, i32 0
  %"$_amount_276" = bitcast i8* %"$_amount_275" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_276", align 8
  %"$_origin_277" = getelementptr i8, i8* %0, i32 16
  %"$_origin_278" = bitcast i8* %"$_origin_277" to [20 x i8]*
  %"$_sender_279" = getelementptr i8, i8* %0, i32 36
  %"$_sender_280" = bitcast i8* %"$_sender_279" to [20 x i8]*
  call void @"$SendMsg2_160"(%Uint128 %_amount, [20 x i8]* %"$_origin_278", [20 x i8]* %"$_sender_280"), !dbg !27
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "send.scilla", directory: "codegen/contr")
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
!14 = distinct !DISubprogram(name: "SendMsg", linkageName: "SendMsg", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 14, column: 10, scope: !14)
!16 = !DILocation(line: 15, column: 11, scope: !14)
!17 = !DILocation(line: 16, column: 3, scope: !14)
!18 = distinct !DISubprogram(name: "SendMsg", linkageName: "SendMsg", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!19 = !DILocation(line: 13, column: 12, scope: !18)
!20 = distinct !DISubprogram(name: "SendMsg2", linkageName: "SendMsg2", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!21 = !DILocation(line: 20, column: 10, scope: !20)
!22 = !DILocation(line: 21, column: 10, scope: !20)
!23 = !DILocation(line: 22, column: 11, scope: !20)
!24 = !DILocation(line: 23, column: 11, scope: !20)
!25 = !DILocation(line: 24, column: 3, scope: !20)
!26 = distinct !DISubprogram(name: "SendMsg2", linkageName: "SendMsg2", scope: !2, file: !2, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!27 = !DILocation(line: 19, column: 12, scope: !26)
