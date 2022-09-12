

; gas_remaining: 4001999
; ModuleID = 'Send'
source_filename = "Send"
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
%"$ParamDescr_301" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_302" = type { %ParamDescrString, i32, %"$ParamDescr_301"* }
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
@send.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_118" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_123" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_126" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_133" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_191" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_196" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_199" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_206" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_225" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_230" = unnamed_addr constant [3 x i8] c"foo"
@"$stringlit_233" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_240" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_303" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_304" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_305" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_301"] [%"$ParamDescr_301" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_303", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_301" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_304", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_301" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_305", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_306" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_307" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_308" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SendMsg_309" = unnamed_addr constant [3 x %"$ParamDescr_301"] [%"$ParamDescr_301" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_306", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_301" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_307", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_301" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_308", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_SendMsg_310" = unnamed_addr constant [7 x i8] c"SendMsg"
@"$tpname__amount_311" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_312" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_313" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_SendMsg2_314" = unnamed_addr constant [3 x %"$ParamDescr_301"] [%"$ParamDescr_301" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_311", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_301" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_312", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_301" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_313", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_SendMsg2_315" = unnamed_addr constant [8 x i8] c"SendMsg2"
@_transition_parameters = constant [2 x %"$TransDescr_302"] [%"$TransDescr_302" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_SendMsg_310", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_301"* getelementptr inbounds ([3 x %"$ParamDescr_301"], [3 x %"$ParamDescr_301"]* @"$tparams_SendMsg_309", i32 0, i32 0) }, %"$TransDescr_302" { %ParamDescrString { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$tname_SendMsg2_315", i32 0, i32 0), i32 8 }, i32 3, %"$ParamDescr_301"* getelementptr inbounds ([3 x %"$ParamDescr_301"], [3 x %"$ParamDescr_301"]* @"$tparams_SendMsg2_314", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 2

define internal %TName_List_Message* @"$fundef_3"(%"$$fundef_3_env_59"* %0, i8* %1) !dbg !3 {
entry:
  %"$msg_85" = alloca i8*, align 8
  store i8* %1, i8** %"$msg_85", align 8
  call void @llvm.dbg.declare(metadata i8** %"$msg_85", metadata !8, metadata !DIExpression()), !dbg !11
  %"$retval_4" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$retval_4", metadata !12, metadata !DIExpression()), !dbg !15
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
  call void @llvm.dbg.declare(metadata %TName_List_Message** %nil_msg, metadata !16, metadata !DIExpression()), !dbg !17
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
  store %TName_List_Message* %"$adtptr_72", %TName_List_Message** %nil_msg, align 8, !dbg !18
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
  store %TName_List_Message* %"$adtptr_83", %TName_List_Message** %"$retval_4", align 8, !dbg !19
  %"$$retval_4_84" = load %TName_List_Message*, %TName_List_Message** %"$retval_4", align 8
  ret %TName_List_Message* %"$$retval_4_84"
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !20 {
entry:
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 5, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %entry
  %"$consume_90" = sub i64 %"$gasrem_86", 5
  store i64 %"$consume_90", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !22
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %"$have_gas_89"
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %"$have_gas_89"
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_59"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8, !dbg !23
  ret void
}

define void @_deploy_ops() !dbg !24 {
entry:
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %entry
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  ret void
}

define internal void @"$SendMsg_104"(%Uint128 %_amount, [20 x i8]* %"$_origin_105", [20 x i8]* %"$_sender_106") !dbg !25 {
entry:
  %"$_sender_169" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_106", [20 x i8]** %"$_sender_169", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_169", metadata !26, metadata !DIExpression()), !dbg !28
  %"$_origin_168" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_105", [20 x i8]** %"$_origin_168", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_168", metadata !29, metadata !DIExpression()), !dbg !28
  %"$_amount_167" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_167", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_167", metadata !30, metadata !DIExpression()), !dbg !28
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_105", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_106", align 1
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 1, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %entry
  %"$consume_111" = sub i64 %"$gasrem_107", 1
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %msg1, metadata !32, metadata !DIExpression()), !dbg !33
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$have_gas_110"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$have_gas_110"
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  %"$msgobj_117_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_117_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_117_salloc_load", i64 125)
  %"$msgobj_117_salloc" = bitcast i8* %"$msgobj_117_salloc_salloc" to [125 x i8]*
  %"$msgobj_117" = bitcast [125 x i8]* %"$msgobj_117_salloc" to i8*
  store i8 3, i8* %"$msgobj_117", align 1
  %"$msgobj_fname_119" = getelementptr i8, i8* %"$msgobj_117", i32 1
  %"$msgobj_fname_120" = bitcast i8* %"$msgobj_fname_119" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_118", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_120", align 8
  %"$msgobj_td_121" = getelementptr i8, i8* %"$msgobj_117", i32 17
  %"$msgobj_td_122" = bitcast i8* %"$msgobj_td_121" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_122", align 8
  %"$msgobj_v_124" = getelementptr i8, i8* %"$msgobj_117", i32 25
  %"$msgobj_v_125" = bitcast i8* %"$msgobj_v_124" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_123", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_125", align 8
  %"$msgobj_fname_127" = getelementptr i8, i8* %"$msgobj_117", i32 41
  %"$msgobj_fname_128" = bitcast i8* %"$msgobj_fname_127" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_126", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_128", align 8
  %"$msgobj_td_129" = getelementptr i8, i8* %"$msgobj_117", i32 57
  %"$msgobj_td_130" = bitcast i8* %"$msgobj_td_129" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_130", align 8
  %"$msgobj_v_131" = getelementptr i8, i8* %"$msgobj_117", i32 65
  %"$msgobj_v_132" = bitcast i8* %"$msgobj_v_131" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_132", align 1
  %"$msgobj_fname_134" = getelementptr i8, i8* %"$msgobj_117", i32 85
  %"$msgobj_fname_135" = bitcast i8* %"$msgobj_fname_134" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_133", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_135", align 8
  %"$msgobj_td_136" = getelementptr i8, i8* %"$msgobj_117", i32 101
  %"$msgobj_td_137" = bitcast i8* %"$msgobj_td_136" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_137", align 8
  %"$msgobj_v_138" = getelementptr i8, i8* %"$msgobj_117", i32 109
  %"$msgobj_v_139" = bitcast i8* %"$msgobj_v_138" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_139", align 8
  store i8* %"$msgobj_117", i8** %msg1, align 8, !dbg !34
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_115"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %msgs1, metadata !35, metadata !DIExpression()), !dbg !36
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %"$send.one_msg_1" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$send.one_msg_1", metadata !37, metadata !DIExpression()), !dbg !38
  %"$send.one_msg_151" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_152" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_151", 0
  %"$send.one_msg_envptr_153" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_151", 1
  %"$msg1_154" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_155" = call %TName_List_Message* %"$send.one_msg_fptr_152"(i8* %"$send.one_msg_envptr_153", i8* %"$msg1_154"), !dbg !38
  store %TName_List_Message* %"$send.one_msg_call_155", %TName_List_Message** %"$send.one_msg_1", align 8, !dbg !38
  %"$$send.one_msg_1_156" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_1", align 8
  store %TName_List_Message* %"$$send.one_msg_1_156", %TName_List_Message** %msgs1, align 8, !dbg !38
  %"$msgs1_157" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$$msgs1_157_158" = bitcast %TName_List_Message* %"$msgs1_157" to i8*
  %"$_literal_cost_call_159" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", i8* %"$$msgs1_157_158")
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 %"$_literal_cost_call_159", %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_149"
  %"$consume_164" = sub i64 %"$gasrem_160", %"$_literal_cost_call_159"
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$execptr_load_165" = load i8*, i8** @_execptr, align 8
  %"$msgs1_166" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  call void @_send(i8* %"$execptr_load_165", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %TName_List_Message* %"$msgs1_166"), !dbg !39
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @SendMsg(i8* %0) !dbg !40 {
entry:
  %"$_amount_171" = getelementptr i8, i8* %0, i32 0
  %"$_amount_172" = bitcast i8* %"$_amount_171" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_172", align 8
  %"$_origin_173" = getelementptr i8, i8* %0, i32 16
  %"$_origin_174" = bitcast i8* %"$_origin_173" to [20 x i8]*
  %"$_sender_175" = getelementptr i8, i8* %0, i32 36
  %"$_sender_176" = bitcast i8* %"$_sender_175" to [20 x i8]*
  call void @"$SendMsg_104"(%Uint128 %_amount, [20 x i8]* %"$_origin_174", [20 x i8]* %"$_sender_176"), !dbg !41
  ret void
}

define internal void @"$SendMsg2_177"(%Uint128 %_amount, [20 x i8]* %"$_origin_178", [20 x i8]* %"$_sender_179") !dbg !42 {
entry:
  %"$_sender_293" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_179", [20 x i8]** %"$_sender_293", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_293", metadata !43, metadata !DIExpression()), !dbg !44
  %"$_origin_292" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_178", [20 x i8]** %"$_origin_292", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_292", metadata !45, metadata !DIExpression()), !dbg !44
  %"$_amount_291" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_291", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_291", metadata !46, metadata !DIExpression()), !dbg !44
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_178", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_179", align 1
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %entry
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %msg1, metadata !47, metadata !DIExpression()), !dbg !48
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_183"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$msgobj_190_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_190_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_190_salloc_load", i64 125)
  %"$msgobj_190_salloc" = bitcast i8* %"$msgobj_190_salloc_salloc" to [125 x i8]*
  %"$msgobj_190" = bitcast [125 x i8]* %"$msgobj_190_salloc" to i8*
  store i8 3, i8* %"$msgobj_190", align 1
  %"$msgobj_fname_192" = getelementptr i8, i8* %"$msgobj_190", i32 1
  %"$msgobj_fname_193" = bitcast i8* %"$msgobj_fname_192" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_191", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_193", align 8
  %"$msgobj_td_194" = getelementptr i8, i8* %"$msgobj_190", i32 17
  %"$msgobj_td_195" = bitcast i8* %"$msgobj_td_194" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_195", align 8
  %"$msgobj_v_197" = getelementptr i8, i8* %"$msgobj_190", i32 25
  %"$msgobj_v_198" = bitcast i8* %"$msgobj_v_197" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_196", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_198", align 8
  %"$msgobj_fname_200" = getelementptr i8, i8* %"$msgobj_190", i32 41
  %"$msgobj_fname_201" = bitcast i8* %"$msgobj_fname_200" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_199", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_201", align 8
  %"$msgobj_td_202" = getelementptr i8, i8* %"$msgobj_190", i32 57
  %"$msgobj_td_203" = bitcast i8* %"$msgobj_td_202" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_203", align 8
  %"$msgobj_v_204" = getelementptr i8, i8* %"$msgobj_190", i32 65
  %"$msgobj_v_205" = bitcast i8* %"$msgobj_v_204" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_205", align 1
  %"$msgobj_fname_207" = getelementptr i8, i8* %"$msgobj_190", i32 85
  %"$msgobj_fname_208" = bitcast i8* %"$msgobj_fname_207" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_206", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_208", align 8
  %"$msgobj_td_209" = getelementptr i8, i8* %"$msgobj_190", i32 101
  %"$msgobj_td_210" = bitcast i8* %"$msgobj_td_209" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_210", align 8
  %"$msgobj_v_211" = getelementptr i8, i8* %"$msgobj_190", i32 109
  %"$msgobj_v_212" = bitcast i8* %"$msgobj_v_211" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_212", align 8
  store i8* %"$msgobj_190", i8** %msg1, align 8, !dbg !49
  %"$gasrem_214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_215" = icmp ugt i64 1, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_188"
  %"$consume_218" = sub i64 %"$gasrem_214", 1
  store i64 %"$consume_218", i64* @_gasrem, align 8
  %msg2 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %msg2, metadata !50, metadata !DIExpression()), !dbg !51
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_217"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_217"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$msgobj_224_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_224_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_224_salloc_load", i64 125)
  %"$msgobj_224_salloc" = bitcast i8* %"$msgobj_224_salloc_salloc" to [125 x i8]*
  %"$msgobj_224" = bitcast [125 x i8]* %"$msgobj_224_salloc" to i8*
  store i8 3, i8* %"$msgobj_224", align 1
  %"$msgobj_fname_226" = getelementptr i8, i8* %"$msgobj_224", i32 1
  %"$msgobj_fname_227" = bitcast i8* %"$msgobj_fname_226" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_225", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_227", align 8
  %"$msgobj_td_228" = getelementptr i8, i8* %"$msgobj_224", i32 17
  %"$msgobj_td_229" = bitcast i8* %"$msgobj_td_228" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_229", align 8
  %"$msgobj_v_231" = getelementptr i8, i8* %"$msgobj_224", i32 25
  %"$msgobj_v_232" = bitcast i8* %"$msgobj_v_231" to %String*
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_230", i32 0, i32 0), i32 3 }, %String* %"$msgobj_v_232", align 8
  %"$msgobj_fname_234" = getelementptr i8, i8* %"$msgobj_224", i32 41
  %"$msgobj_fname_235" = bitcast i8* %"$msgobj_fname_234" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_233", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_235", align 8
  %"$msgobj_td_236" = getelementptr i8, i8* %"$msgobj_224", i32 57
  %"$msgobj_td_237" = bitcast i8* %"$msgobj_td_236" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_237", align 8
  %"$msgobj_v_238" = getelementptr i8, i8* %"$msgobj_224", i32 65
  %"$msgobj_v_239" = bitcast i8* %"$msgobj_v_238" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_239", align 1
  %"$msgobj_fname_241" = getelementptr i8, i8* %"$msgobj_224", i32 85
  %"$msgobj_fname_242" = bitcast i8* %"$msgobj_fname_241" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_240", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_242", align 8
  %"$msgobj_td_243" = getelementptr i8, i8* %"$msgobj_224", i32 101
  %"$msgobj_td_244" = bitcast i8* %"$msgobj_td_243" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_244", align 8
  %"$msgobj_v_245" = getelementptr i8, i8* %"$msgobj_224", i32 109
  %"$msgobj_v_246" = bitcast i8* %"$msgobj_v_245" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_246", align 8
  store i8* %"$msgobj_224", i8** %msg2, align 8, !dbg !52
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_222"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %msgs1 = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %msgs1, metadata !53, metadata !DIExpression()), !dbg !54
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$send.one_msg_2" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$send.one_msg_2", metadata !55, metadata !DIExpression()), !dbg !56
  %"$send.one_msg_258" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @send.one_msg, align 8
  %"$send.one_msg_fptr_259" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_258", 0
  %"$send.one_msg_envptr_260" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$send.one_msg_258", 1
  %"$msg1_261" = load i8*, i8** %msg1, align 8
  %"$send.one_msg_call_262" = call %TName_List_Message* %"$send.one_msg_fptr_259"(i8* %"$send.one_msg_envptr_260", i8* %"$msg1_261"), !dbg !56
  store %TName_List_Message* %"$send.one_msg_call_262", %TName_List_Message** %"$send.one_msg_2", align 8, !dbg !56
  %"$$send.one_msg_2_263" = load %TName_List_Message*, %TName_List_Message** %"$send.one_msg_2", align 8
  store %TName_List_Message* %"$$send.one_msg_2_263", %TName_List_Message** %msgs1, align 8, !dbg !56
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_256"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %msgs2 = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %msgs2, metadata !57, metadata !DIExpression()), !dbg !58
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_267"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$msg2_274" = load i8*, i8** %msg2, align 8
  %"$msgs1_275" = load %TName_List_Message*, %TName_List_Message** %msgs1, align 8
  %"$adtval_276_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_276_salloc" = call i8* @_salloc(i8* %"$adtval_276_load", i64 17)
  %"$adtval_276" = bitcast i8* %"$adtval_276_salloc" to %CName_Cons_Message*
  %"$adtgep_277" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_276", i32 0, i32 0
  store i8 0, i8* %"$adtgep_277", align 1
  %"$adtgep_278" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_276", i32 0, i32 1
  store i8* %"$msg2_274", i8** %"$adtgep_278", align 8
  %"$adtgep_279" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_276", i32 0, i32 2
  store %TName_List_Message* %"$msgs1_275", %TName_List_Message** %"$adtgep_279", align 8
  %"$adtptr_280" = bitcast %CName_Cons_Message* %"$adtval_276" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_280", %TName_List_Message** %msgs2, align 8, !dbg !59
  %"$msgs2_281" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  %"$$msgs2_281_282" = bitcast %TName_List_Message* %"$msgs2_281" to i8*
  %"$_literal_cost_call_283" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", i8* %"$$msgs2_281_282")
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 %"$_literal_cost_call_283", %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_272"
  %"$consume_288" = sub i64 %"$gasrem_284", %"$_literal_cost_call_283"
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$execptr_load_289" = load i8*, i8** @_execptr, align 8
  %"$msgs2_290" = load %TName_List_Message*, %TName_List_Message** %msgs2, align 8
  call void @_send(i8* %"$execptr_load_289", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %TName_List_Message* %"$msgs2_290"), !dbg !60
  ret void
}

define void @SendMsg2(i8* %0) !dbg !61 {
entry:
  %"$_amount_295" = getelementptr i8, i8* %0, i32 0
  %"$_amount_296" = bitcast i8* %"$_amount_295" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_296", align 8
  %"$_origin_297" = getelementptr i8, i8* %0, i32 16
  %"$_origin_298" = bitcast i8* %"$_origin_297" to [20 x i8]*
  %"$_sender_299" = getelementptr i8, i8* %0, i32 36
  %"$_sender_300" = bitcast i8* %"$_sender_299" to [20 x i8]*
  call void @"$SendMsg2_177"(%Uint128 %_amount, [20 x i8]* %"$_origin_298", [20 x i8]* %"$_sender_300"), !dbg !62
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "send.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 7, type: !4, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "msg", scope: !3, file: !2, line: 6, type: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Message", baseType: !10, size: 8, align: 8, dwarfAddressSpace: 0)
!10 = !DIBasicType(name: "Message", size: 8)
!11 = !DILocation(line: 6, column: 8, scope: !3)
!12 = !DILocalVariable(name: "$retval_4", scope: !3, file: !2, line: 7, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "List (Message)", baseType: !14, size: 8, align: 8, dwarfAddressSpace: 0)
!14 = !DIBasicType(name: "List (Message)", size: 8)
!15 = !DILocation(line: 7, column: 3, scope: !3)
!16 = !DILocalVariable(name: "nil_msg", scope: !3, file: !2, line: 7, type: !13)
!17 = !DILocation(line: 7, column: 7, scope: !3)
!18 = !DILocation(line: 7, column: 17, scope: !3)
!19 = !DILocation(line: 8, column: 3, scope: !3)
!20 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !21, file: !21, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!21 = !DIFile(filename: ".", directory: ".")
!22 = !DILocation(line: 0, scope: !20)
!23 = !DILocation(line: 7, column: 3, scope: !20)
!24 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !21, file: !21, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!25 = distinct !DISubprogram(name: "SendMsg", linkageName: "SendMsg", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!26 = !DILocalVariable(name: "_sender", scope: !25, file: !2, line: 13, type: !27)
!27 = !DIBasicType(name: "ByStr20 with end", size: 20)
!28 = !DILocation(line: 13, column: 12, scope: !25)
!29 = !DILocalVariable(name: "_origin", scope: !25, file: !2, line: 13, type: !27)
!30 = !DILocalVariable(name: "_amount", scope: !25, file: !2, line: 13, type: !31)
!31 = !DIBasicType(name: "Uint128", size: 16)
!32 = !DILocalVariable(name: "msg1", scope: !25, file: !2, line: 14, type: !9)
!33 = !DILocation(line: 14, column: 3, scope: !25)
!34 = !DILocation(line: 14, column: 10, scope: !25)
!35 = !DILocalVariable(name: "msgs1", scope: !25, file: !2, line: 15, type: !13)
!36 = !DILocation(line: 15, column: 3, scope: !25)
!37 = !DILocalVariable(name: "$send.one_msg_1", scope: !25, file: !2, line: 15, type: !13)
!38 = !DILocation(line: 15, column: 11, scope: !25)
!39 = !DILocation(line: 16, column: 3, scope: !25)
!40 = distinct !DISubprogram(name: "SendMsg", linkageName: "SendMsg", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!41 = !DILocation(line: 13, column: 12, scope: !40)
!42 = distinct !DISubprogram(name: "SendMsg2", linkageName: "SendMsg2", scope: !2, file: !2, line: 19, type: !4, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!43 = !DILocalVariable(name: "_sender", scope: !42, file: !2, line: 19, type: !27)
!44 = !DILocation(line: 19, column: 12, scope: !42)
!45 = !DILocalVariable(name: "_origin", scope: !42, file: !2, line: 19, type: !27)
!46 = !DILocalVariable(name: "_amount", scope: !42, file: !2, line: 19, type: !31)
!47 = !DILocalVariable(name: "msg1", scope: !42, file: !2, line: 20, type: !9)
!48 = !DILocation(line: 20, column: 3, scope: !42)
!49 = !DILocation(line: 20, column: 10, scope: !42)
!50 = !DILocalVariable(name: "msg2", scope: !42, file: !2, line: 21, type: !9)
!51 = !DILocation(line: 21, column: 3, scope: !42)
!52 = !DILocation(line: 21, column: 10, scope: !42)
!53 = !DILocalVariable(name: "msgs1", scope: !42, file: !2, line: 22, type: !13)
!54 = !DILocation(line: 22, column: 3, scope: !42)
!55 = !DILocalVariable(name: "$send.one_msg_2", scope: !42, file: !2, line: 22, type: !13)
!56 = !DILocation(line: 22, column: 11, scope: !42)
!57 = !DILocalVariable(name: "msgs2", scope: !42, file: !2, line: 23, type: !13)
!58 = !DILocation(line: 23, column: 3, scope: !42)
!59 = !DILocation(line: 23, column: 11, scope: !42)
!60 = !DILocation(line: 24, column: 3, scope: !42)
!61 = distinct !DISubprogram(name: "SendMsg2", linkageName: "SendMsg2", scope: !2, file: !2, line: 19, type: !4, scopeLine: 19, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!62 = !DILocation(line: 19, column: 12, scope: !61)
