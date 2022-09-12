

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
%"$ParamDescr_287" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_288" = type { %ParamDescrString, i32, %"$ParamDescr_287"* }
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
@"$stringlit_149" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_154" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_157" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_164" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_228" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_233" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_236" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_243" = unnamed_addr constant [7 x i8] c"_amount"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %_TyDescrTy_Typ* @"$TyDescr_Event_29", %_TyDescrTy_Typ* @"$TyDescr_Int64_11", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ* @"$TyDescr_Uint256_21", %_TyDescrTy_Typ* @"$TyDescr_Uint32_9", %_TyDescrTy_Typ* @"$TyDescr_Uint64_13", %_TyDescrTy_Typ* @"$TyDescr_Bnum_25", %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ* @"$TyDescr_Exception_31", %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ* @"$TyDescr_Int256_19", %_TyDescrTy_Typ* @"$TyDescr_Int128_15", %_TyDescrTy_Typ* @"$TyDescr_Bystr_35", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_33", %_TyDescrTy_Typ* @"$TyDescr_Message_27", %_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@_tydescr_table_length = constant i32 18
@"$pname__scilla_version_289" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_290" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_291" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_287"] [%"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_289", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_9" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_290", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_291", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_25" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_292" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_293" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_294" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept1_295" = unnamed_addr constant [3 x %"$ParamDescr_287"] [%"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_292", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_293", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_294", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_Accept1_296" = unnamed_addr constant [7 x i8] c"Accept1"
@"$tpname__amount_297" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_298" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_299" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept2_300" = unnamed_addr constant [3 x %"$ParamDescr_287"] [%"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_297", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_298", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_299", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_Accept2_301" = unnamed_addr constant [7 x i8] c"Accept2"
@"$tpname__amount_302" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_303" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_304" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_Accept3_305" = unnamed_addr constant [3 x %"$ParamDescr_287"] [%"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_302", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_17" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_303", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }, %"$ParamDescr_287" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_304", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_45" }]
@"$tname_Accept3_306" = unnamed_addr constant [7 x i8] c"Accept3"
@_transition_parameters = constant [3 x %"$TransDescr_288"] [%"$TransDescr_288" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept1_296", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_287"* getelementptr inbounds ([3 x %"$ParamDescr_287"], [3 x %"$ParamDescr_287"]* @"$tparams_Accept1_295", i32 0, i32 0) }, %"$TransDescr_288" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept2_301", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_287"* getelementptr inbounds ([3 x %"$ParamDescr_287"], [3 x %"$ParamDescr_287"]* @"$tparams_Accept2_300", i32 0, i32 0) }, %"$TransDescr_288" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tname_Accept3_306", i32 0, i32 0), i32 7 }, i32 3, %"$ParamDescr_287"* getelementptr inbounds ([3 x %"$ParamDescr_287"], [3 x %"$ParamDescr_287"]* @"$tparams_Accept3_305", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 3

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
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_3_env_59"*, i8*)* @"$fundef_3" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8, !dbg !23
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

define internal void @"$Accept1_104"(%Uint128 %_amount, [20 x i8]* %"$_origin_105", [20 x i8]* %"$_sender_106") !dbg !25 {
entry:
  %"$_sender_121" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_106", [20 x i8]** %"$_sender_121", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_121", metadata !26, metadata !DIExpression()), !dbg !28
  %"$_origin_120" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_105", [20 x i8]** %"$_origin_120", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_120", metadata !29, metadata !DIExpression()), !dbg !28
  %"$_amount_119" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_119", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_119", metadata !30, metadata !DIExpression()), !dbg !28
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
  %"$execptr_load_112" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_112"), !dbg !32
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_110"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_110"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %"$execptr_load_118" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_118"), !dbg !33
  ret void
}

declare void @_accept(i8*)

define void @Accept1(i8* %0) !dbg !34 {
entry:
  %"$_amount_123" = getelementptr i8, i8* %0, i32 0
  %"$_amount_124" = bitcast i8* %"$_amount_123" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_124", align 8
  %"$_origin_125" = getelementptr i8, i8* %0, i32 16
  %"$_origin_126" = bitcast i8* %"$_origin_125" to [20 x i8]*
  %"$_sender_127" = getelementptr i8, i8* %0, i32 36
  %"$_sender_128" = bitcast i8* %"$_sender_127" to [20 x i8]*
  call void @"$Accept1_104"(%Uint128 %_amount, [20 x i8]* %"$_origin_126", [20 x i8]* %"$_sender_128"), !dbg !35
  ret void
}

define internal void @"$Accept2_129"(%Uint128 %_amount, [20 x i8]* %"$_origin_130", [20 x i8]* %"$_sender_131") !dbg !36 {
entry:
  %"$_sender_200" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_131", [20 x i8]** %"$_sender_200", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_200", metadata !37, metadata !DIExpression()), !dbg !38
  %"$_origin_199" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_130", [20 x i8]** %"$_origin_199", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_199", metadata !39, metadata !DIExpression()), !dbg !38
  %"$_amount_198" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_198", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_198", metadata !40, metadata !DIExpression()), !dbg !38
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_130", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_131", align 1
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %entry
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %"$execptr_load_137" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_137"), !dbg !41
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_135"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %msg1, metadata !42, metadata !DIExpression()), !dbg !43
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$msgobj_148_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_148_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_148_salloc_load", i64 125)
  %"$msgobj_148_salloc" = bitcast i8* %"$msgobj_148_salloc_salloc" to [125 x i8]*
  %"$msgobj_148" = bitcast [125 x i8]* %"$msgobj_148_salloc" to i8*
  store i8 3, i8* %"$msgobj_148", align 1
  %"$msgobj_fname_150" = getelementptr i8, i8* %"$msgobj_148", i32 1
  %"$msgobj_fname_151" = bitcast i8* %"$msgobj_fname_150" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_149", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_151", align 8
  %"$msgobj_td_152" = getelementptr i8, i8* %"$msgobj_148", i32 17
  %"$msgobj_td_153" = bitcast i8* %"$msgobj_td_152" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_153", align 8
  %"$msgobj_v_155" = getelementptr i8, i8* %"$msgobj_148", i32 25
  %"$msgobj_v_156" = bitcast i8* %"$msgobj_v_155" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_154", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_156", align 8
  %"$msgobj_fname_158" = getelementptr i8, i8* %"$msgobj_148", i32 41
  %"$msgobj_fname_159" = bitcast i8* %"$msgobj_fname_158" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_157", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_159", align 8
  %"$msgobj_td_160" = getelementptr i8, i8* %"$msgobj_148", i32 57
  %"$msgobj_td_161" = bitcast i8* %"$msgobj_td_160" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_161", align 8
  %"$msgobj_v_162" = getelementptr i8, i8* %"$msgobj_148", i32 65
  %"$msgobj_v_163" = bitcast i8* %"$msgobj_v_162" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_163", align 1
  %"$msgobj_fname_165" = getelementptr i8, i8* %"$msgobj_148", i32 85
  %"$msgobj_fname_166" = bitcast i8* %"$msgobj_fname_165" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_164", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_166", align 8
  %"$msgobj_td_167" = getelementptr i8, i8* %"$msgobj_148", i32 101
  %"$msgobj_td_168" = bitcast i8* %"$msgobj_td_167" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_168", align 8
  %"$msgobj_v_169" = getelementptr i8, i8* %"$msgobj_148", i32 109
  %"$msgobj_v_170" = bitcast i8* %"$msgobj_v_169" to %Uint128*
  store %Uint128 %_amount, %Uint128* %"$msgobj_v_170", align 8
  store i8* %"$msgobj_148", i8** %msg1, align 8, !dbg !44
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_146"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %msgs, metadata !45, metadata !DIExpression()), !dbg !46
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %"$accept.one_msg_1" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$accept.one_msg_1", metadata !47, metadata !DIExpression()), !dbg !48
  %"$accept.one_msg_182" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_183" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_182", 0
  %"$accept.one_msg_envptr_184" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_182", 1
  %"$msg1_185" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_186" = call %TName_List_Message* %"$accept.one_msg_fptr_183"(i8* %"$accept.one_msg_envptr_184", i8* %"$msg1_185"), !dbg !48
  store %TName_List_Message* %"$accept.one_msg_call_186", %TName_List_Message** %"$accept.one_msg_1", align 8, !dbg !48
  %"$$accept.one_msg_1_187" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_1", align 8
  store %TName_List_Message* %"$$accept.one_msg_1_187", %TName_List_Message** %msgs, align 8, !dbg !48
  %"$msgs_188" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_188_189" = bitcast %TName_List_Message* %"$msgs_188" to i8*
  %"$_literal_cost_call_190" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", i8* %"$$msgs_188_189")
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 %"$_literal_cost_call_190", %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_180"
  %"$consume_195" = sub i64 %"$gasrem_191", %"$_literal_cost_call_190"
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %"$execptr_load_196" = load i8*, i8** @_execptr, align 8
  %"$msgs_197" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_196", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %TName_List_Message* %"$msgs_197"), !dbg !49
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @Accept2(i8* %0) !dbg !50 {
entry:
  %"$_amount_202" = getelementptr i8, i8* %0, i32 0
  %"$_amount_203" = bitcast i8* %"$_amount_202" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_203", align 8
  %"$_origin_204" = getelementptr i8, i8* %0, i32 16
  %"$_origin_205" = bitcast i8* %"$_origin_204" to [20 x i8]*
  %"$_sender_206" = getelementptr i8, i8* %0, i32 36
  %"$_sender_207" = bitcast i8* %"$_sender_206" to [20 x i8]*
  call void @"$Accept2_129"(%Uint128 %_amount, [20 x i8]* %"$_origin_205", [20 x i8]* %"$_sender_207"), !dbg !51
  ret void
}

define internal void @"$Accept3_208"(%Uint128 %_amount, [20 x i8]* %"$_origin_209", [20 x i8]* %"$_sender_210") !dbg !52 {
entry:
  %"$_sender_279" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_210", [20 x i8]** %"$_sender_279", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_279", metadata !53, metadata !DIExpression()), !dbg !54
  %"$_origin_278" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_209", [20 x i8]** %"$_origin_278", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_278", metadata !55, metadata !DIExpression()), !dbg !54
  %"$_amount_277" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_277", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_277", metadata !56, metadata !DIExpression()), !dbg !54
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_209", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_210", align 1
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 1, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %entry
  %"$consume_215" = sub i64 %"$gasrem_211", 1
  store i64 %"$consume_215", i64* @_gasrem, align 8
  %"$execptr_load_216" = load i8*, i8** @_execptr, align 8
  call void @_accept(i8* %"$execptr_load_216"), !dbg !57
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_214"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_214"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %msg1 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %msg1, metadata !58, metadata !DIExpression()), !dbg !59
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_220"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %"$msgobj_227_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_227_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_227_salloc_load", i64 125)
  %"$msgobj_227_salloc" = bitcast i8* %"$msgobj_227_salloc_salloc" to [125 x i8]*
  %"$msgobj_227" = bitcast [125 x i8]* %"$msgobj_227_salloc" to i8*
  store i8 3, i8* %"$msgobj_227", align 1
  %"$msgobj_fname_229" = getelementptr i8, i8* %"$msgobj_227", i32 1
  %"$msgobj_fname_230" = bitcast i8* %"$msgobj_fname_229" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_228", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_230", align 8
  %"$msgobj_td_231" = getelementptr i8, i8* %"$msgobj_227", i32 17
  %"$msgobj_td_232" = bitcast i8* %"$msgobj_td_231" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_23", %_TyDescrTy_Typ** %"$msgobj_td_232", align 8
  %"$msgobj_v_234" = getelementptr i8, i8* %"$msgobj_227", i32 25
  %"$msgobj_v_235" = bitcast i8* %"$msgobj_v_234" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_233", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_235", align 8
  %"$msgobj_fname_237" = getelementptr i8, i8* %"$msgobj_227", i32 41
  %"$msgobj_fname_238" = bitcast i8* %"$msgobj_fname_237" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_236", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_238", align 8
  %"$msgobj_td_239" = getelementptr i8, i8* %"$msgobj_227", i32 57
  %"$msgobj_td_240" = bitcast i8* %"$msgobj_td_239" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_37", %_TyDescrTy_Typ** %"$msgobj_td_240", align 8
  %"$msgobj_v_241" = getelementptr i8, i8* %"$msgobj_227", i32 65
  %"$msgobj_v_242" = bitcast i8* %"$msgobj_v_241" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_242", align 1
  %"$msgobj_fname_244" = getelementptr i8, i8* %"$msgobj_227", i32 85
  %"$msgobj_fname_245" = bitcast i8* %"$msgobj_fname_244" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_243", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_245", align 8
  %"$msgobj_td_246" = getelementptr i8, i8* %"$msgobj_227", i32 101
  %"$msgobj_td_247" = bitcast i8* %"$msgobj_td_246" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_17", %_TyDescrTy_Typ** %"$msgobj_td_247", align 8
  %"$msgobj_v_248" = getelementptr i8, i8* %"$msgobj_227", i32 109
  %"$msgobj_v_249" = bitcast i8* %"$msgobj_v_248" to %Uint128*
  store %Uint128 { i128 100 }, %Uint128* %"$msgobj_v_249", align 8
  store i8* %"$msgobj_227", i8** %msg1, align 8, !dbg !60
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_225"
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %msgs = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %msgs, metadata !61, metadata !DIExpression()), !dbg !62
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_254"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %"$accept.one_msg_2" = alloca %TName_List_Message*, align 8
  call void @llvm.dbg.declare(metadata %TName_List_Message** %"$accept.one_msg_2", metadata !63, metadata !DIExpression()), !dbg !64
  %"$accept.one_msg_261" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @accept.one_msg, align 8
  %"$accept.one_msg_fptr_262" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_261", 0
  %"$accept.one_msg_envptr_263" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$accept.one_msg_261", 1
  %"$msg1_264" = load i8*, i8** %msg1, align 8
  %"$accept.one_msg_call_265" = call %TName_List_Message* %"$accept.one_msg_fptr_262"(i8* %"$accept.one_msg_envptr_263", i8* %"$msg1_264"), !dbg !64
  store %TName_List_Message* %"$accept.one_msg_call_265", %TName_List_Message** %"$accept.one_msg_2", align 8, !dbg !64
  %"$$accept.one_msg_2_266" = load %TName_List_Message*, %TName_List_Message** %"$accept.one_msg_2", align 8
  store %TName_List_Message* %"$$accept.one_msg_2_266", %TName_List_Message** %msgs, align 8, !dbg !64
  %"$msgs_267" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  %"$$msgs_267_268" = bitcast %TName_List_Message* %"$msgs_267" to i8*
  %"$_literal_cost_call_269" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", i8* %"$$msgs_267_268")
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 %"$_literal_cost_call_269", %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_259"
  %"$consume_274" = sub i64 %"$gasrem_270", %"$_literal_cost_call_269"
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %"$execptr_load_275" = load i8*, i8** @_execptr, align 8
  %"$msgs_276" = load %TName_List_Message*, %TName_List_Message** %msgs, align 8
  call void @_send(i8* %"$execptr_load_275", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_41", %TName_List_Message* %"$msgs_276"), !dbg !65
  ret void
}

define void @Accept3(i8* %0) !dbg !66 {
entry:
  %"$_amount_281" = getelementptr i8, i8* %0, i32 0
  %"$_amount_282" = bitcast i8* %"$_amount_281" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_282", align 8
  %"$_origin_283" = getelementptr i8, i8* %0, i32 16
  %"$_origin_284" = bitcast i8* %"$_origin_283" to [20 x i8]*
  %"$_sender_285" = getelementptr i8, i8* %0, i32 36
  %"$_sender_286" = bitcast i8* %"$_sender_285" to [20 x i8]*
  call void @"$Accept3_208"(%Uint128 %_amount, [20 x i8]* %"$_origin_284", [20 x i8]* %"$_sender_286"), !dbg !67
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "accept.scilla", directory: "codegen/contr")
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
!25 = distinct !DISubprogram(name: "Accept1", linkageName: "Accept1", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!26 = !DILocalVariable(name: "_sender", scope: !25, file: !2, line: 13, type: !27)
!27 = !DIBasicType(name: "ByStr20 with end", size: 20)
!28 = !DILocation(line: 13, column: 12, scope: !25)
!29 = !DILocalVariable(name: "_origin", scope: !25, file: !2, line: 13, type: !27)
!30 = !DILocalVariable(name: "_amount", scope: !25, file: !2, line: 13, type: !31)
!31 = !DIBasicType(name: "Uint128", size: 16)
!32 = !DILocation(line: 14, column: 3, scope: !25)
!33 = !DILocation(line: 15, column: 3, scope: !25)
!34 = distinct !DISubprogram(name: "Accept1", linkageName: "Accept1", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!35 = !DILocation(line: 13, column: 12, scope: !34)
!36 = distinct !DISubprogram(name: "Accept2", linkageName: "Accept2", scope: !2, file: !2, line: 18, type: !4, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!37 = !DILocalVariable(name: "_sender", scope: !36, file: !2, line: 18, type: !27)
!38 = !DILocation(line: 18, column: 12, scope: !36)
!39 = !DILocalVariable(name: "_origin", scope: !36, file: !2, line: 18, type: !27)
!40 = !DILocalVariable(name: "_amount", scope: !36, file: !2, line: 18, type: !31)
!41 = !DILocation(line: 19, column: 3, scope: !36)
!42 = !DILocalVariable(name: "msg1", scope: !36, file: !2, line: 20, type: !9)
!43 = !DILocation(line: 20, column: 3, scope: !36)
!44 = !DILocation(line: 20, column: 10, scope: !36)
!45 = !DILocalVariable(name: "msgs", scope: !36, file: !2, line: 21, type: !13)
!46 = !DILocation(line: 21, column: 3, scope: !36)
!47 = !DILocalVariable(name: "$accept.one_msg_1", scope: !36, file: !2, line: 21, type: !13)
!48 = !DILocation(line: 21, column: 10, scope: !36)
!49 = !DILocation(line: 22, column: 3, scope: !36)
!50 = distinct !DISubprogram(name: "Accept2", linkageName: "Accept2", scope: !2, file: !2, line: 18, type: !4, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!51 = !DILocation(line: 18, column: 12, scope: !50)
!52 = distinct !DISubprogram(name: "Accept3", linkageName: "Accept3", scope: !2, file: !2, line: 25, type: !4, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!53 = !DILocalVariable(name: "_sender", scope: !52, file: !2, line: 25, type: !27)
!54 = !DILocation(line: 25, column: 12, scope: !52)
!55 = !DILocalVariable(name: "_origin", scope: !52, file: !2, line: 25, type: !27)
!56 = !DILocalVariable(name: "_amount", scope: !52, file: !2, line: 25, type: !31)
!57 = !DILocation(line: 26, column: 3, scope: !52)
!58 = !DILocalVariable(name: "msg1", scope: !52, file: !2, line: 27, type: !9)
!59 = !DILocation(line: 27, column: 3, scope: !52)
!60 = !DILocation(line: 27, column: 10, scope: !52)
!61 = !DILocalVariable(name: "msgs", scope: !52, file: !2, line: 28, type: !13)
!62 = !DILocation(line: 28, column: 3, scope: !52)
!63 = !DILocalVariable(name: "$accept.one_msg_2", scope: !52, file: !2, line: 28, type: !13)
!64 = !DILocation(line: 28, column: 10, scope: !52)
!65 = !DILocation(line: 29, column: 3, scope: !52)
!66 = distinct !DISubprogram(name: "Accept3", linkageName: "Accept3", scope: !2, file: !2, line: 25, type: !4, scopeLine: 25, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!67 = !DILocation(line: 25, column: 12, scope: !66)
